define([[BODY_HTML]],[[
  <!--- BEGIN First Tables -->
  <td valign="top" width="98%">
  <table align="left" border="0" cellspacing="15" cellpadding="0" width="100%" summary="Center Table">

<tr>
   <td width="15"></td>
   <td align="Left" valign="top">
   <img src="/graphics/glossary_bnr.jpg" name="Judy Glossary" alt="Judy Glossary"></td>
</tr>

<tr>
 <td width="15"></td>
 <td>

 <h3>Judy Glossary</h3>
 <p>
    The follow list of terms was originally written in May 2000, based on Judy
    III and early Judy IV, without reference to outside academic source.
   
    There is no guarantee that our definitions agree with consensus (academic)
    usage... 
  <p>
    
    <br><br><b>Abstract data type (ADT)</b>: Any data structure that can hold a
    variety of specific "key" datatypes, such as integers or characters. It's
    the relationship between the keys, not the type of the keys, that defines
    the ADT. We also use ADT to refer to cases in which a data structure
    hasvariable parts (nodes) to adapt to the data being stored. 
    
    <br><br><b>Adjacent (Neighbor)</b>: In a data structure (ADT) such as
    Judy1/JudyL, Indexes (or keys) are stored in numerically sorted order. The
    numerically closest (less and/or greater) to the one specified is the
    adjacent or neighbor key. In JudySL, Indexes (null terminated string keys)
    are stored in lexicography (dictionary) sorted order. The likelihood of a
    neighbor being stored physically close in memory is very high. During
    neighbor searches, access times are usually very fast, because the path
    leading to them is typically in cache memory (from the previous access).

    <br><br><b>ADT</b>: See Abstract Data Type.

    <br><br><b>Amortization</b>: In a tree hierarchy, especially one with a high
    fan-out (256 in Judy1/L), it is possible to waste memory to obtain better
    performance in the higher levels of the tree. The wasted memory is
    "amortized" over the high population in the lower levels. This memory is
    normally insignificant relative to the whole tree structure.

    <br><br><b>API</b>: Application Programming Interface, a specification of
    the signatures of a collection of useful methods or functions and possibly
    global variables.

    <br><br><b>Bitmap branch [node]</b>: A Bitmap Branch is one of the three (3)
    types of branches (nodes) used in Judy1 /L. A bitmap branch is a compressed
    (memory efficient) structure of a node that has 256 virtual pointers (may or
    may not be present). A bitmap of 256 bits is used to mark the expanses that
    have a population and thus a pointer to lower levels of the tree. In the
    design of Judy, there is only one (1) of these nodes in any path down the
    tree to a leaf node and it is the node nearest the leaf. When the
    population of Indexes below a bitmap branch reaches a point where the memory
    used  can be effectively amortized, it is converted to an "Uncompressed
    Branch".

    <br><br><b>Bitmap leaf [node]</b>: When the expanse of a leaf node is 256, a
    bitmap leaf is a very fast structure that does not require searching.  It
    needs 32 bytes (256 bits) of memory to support up to 256 Indexes.  It is
    used when the population of that expanse exceeds about 24 Indexes.

    <br><br><b>Branch [node]</b>: A non-leaf node in a Judy tree other than a
    JPM node. This term is used as a noun, although this is a bit weird at first
    (but it is used this way in academic papers too), in order to give a more
    specific name to this type of node. Note that Judy branches contain more
    than just pointers (addresses); they contain JPs (Judy Pointers), which are a
    type of "rich pointer" that associates information with the address.


    <br><br><b>Branch width (fanout)</b>: The number of possible (virtual) or
    actual pointers in a branch (the number of subtrees) which is related to,
    but not identical to, the branch's memory size in words or bytes. A branch
    node divides an expanse into a collection of subexpanses, each with one
    associated pointer, some of which can be null (if the subexpanse is
    unpopulated). A linear orbitmap branch has an actual fanout (width) lower
    than its virtual width, whereas a Judy uncompressed branch has virtual fan
    out = actual fanout = 256.

    <br><br><b>By-expanse</b>: Dividing an index set into subsets, as in a
    hierarchical data structure, by partitioning the indexes according to a
    prearranged series of subexpanses, also referred to in some literature as "a
    priori" storage. A digital tree is a by-expanse tree. In practical terms
    by-expanse storage means subdividing evenly, and with the same fanout at
    each level, in fact using whole numbers of bits (2^N fanout at each branch
    node). Judy divides index sets by-expanse with a very wide digit sizeof 8
    bits (256 fanout). By-expanse trees are by nature unbalanced, but can also
    have predictable depth for fixed-size keys.

    <br><br><b>By-population</b>: Dividing an index set into subsets, as in a
    hierarchical data structure, by partitioning the indexes according to which
    indexes are present. A binary storage tree is a by-population tree. The
    partitioning rules are prearranged as is true for by-expanse storage, but
    tend to be more about tree balancing than about locality of modifications,
    meaning the partitioning ofany newly inserted indexes depends more on the
    index set already stored than about the value of the new index itself.

    <br><br><b>Cache fill</b>: See CPU Cache Fill.

    <br><br><b>Cache line</b>: See CPU Cache Line.

    <br><br><b>Cascade</b>: During insertion of an index, this is when a leaf
    data structure overflows and more nodes must be added to a tree (or in some
    cases the leaf's indexes can be compressed into a lower-level leaf under a
    narrow pointer). A decascade (coalesce) is when the opposite occurs during
    an index deletion. Cascading results from changing an index set into one of
    its adjacents -- in the Judy context, by inserting or deleting one index.
  
    <br><br><b>Compressed branch</b>: A linear or bitmap branch.

    <br><br><b>Compressed leaf</b>: A bitmap leaf; also used to refer to index
    compression in lower-level leaves, where in the already-decoded (at higher
    levels) leading digits are not present.

    <br><br><b>Counting tree</b>: A tree where each branch node records the
    number of indexes stored under it, or equivalently, as in Judy1 and JudyL,
    where each pointer in the branch node has associated a count of the indexes
    stored under or in the branch or leaf pointed at by the pointer. These
    counts can be used to rapidly determine the number of valid indexes in any
    range or expanse, that is, between any pair of indexes. They are also useful
    internally when inserting, deleting, or searching for previous or next
    indexes. Alternatively, each node or pointer could have associated a count
    which is a total of the application's values associated with each index in
    its index set. This can be useful in certain applications for determining
    index value density instead of index density. Note: Wider digital branches,
    even if otherwise efficient (meaning few null pointers), cause more work,
    and possibly more cache fills, while gathering counts, since every pointer
    in the wide branch must be visited.

    <br><br><b>Cache fill</b> (cache line fill): Needing to go to main memory
    (RAM), as the result of a cache miss, for one or more bytes not currently in
    any cache line; results in filling a cacheline; takes 30-150 times longer
    than a cache hit. Note that sometimes a cache fill results in a disk
    (buffer) cache miss and fill (swap in), by reading from mass storage, which
    is even more expensive. In this document, "cache" refers to CPU cache lines
    and does not even consider diskcache.
    
    <br><br><b>Cache line</b>: A block of memory local to a CPU chip that caches
    the same-sized block from the computer's main memory. This is analogous to
    using a buffer cache to minimize disk I/O, but is implemented in hardware.
    Cache lines are size-aligned and typically 16 words in size in
    modern processors. Often there are hidden constraints on them, such as they
    can only map to certain offsets in memory.
    
    <br><br><b>Decascade</b>: See Cascade.

    <br><br><b>Decoded index bits/bytes/digits</b>: The most-significant
    bits/bytes/digits of an index that were already used, while traversing the
    tree, to do address calculations in higher-level branch nodes.
    
    <br><br><b>Density</b>: A population divided by its expanse.

    <br><br><b>Digit</b>: A key, or a field, or portion of a key, that is used
    to address through a branch node in a digital tree. For Judy each digit is
    one byte (eight bits), "very wide" as digital trees go.

    <br><br><b>Digital tree = trie</b>: A tree data structure in which each node
    divides its expanse uniformly into N same-sized subexpanses, each with its
    own pointer to a next-lower node. In a pure digital tree the indexes need
    not be stored in the tree. They are used (piecemeal, digit-by-digit) to
    address into each node's array of pointers. Hence N is typically a power of
    2, so integer numbers of bits are "decoded" from the index while traversing
    down the tree. An ordinary array can be thought of as a one-level trie where
    the entire index is used in a single addressing calculation. Note that N
    need not be the same for every node in a trie, if there's a way to determine
    the appropriate N for each node. For Judy, N = 256 (8 bits) at every level,
    but compressed branches have an actual fanout that is less than their
    virtual fanout. 

    <br><br><b>Dynamic range</b>: The population (size) or population-type
    (distribution of keys or indexes) over which an algorithm or data structure
    works well (untuned or with tuning). Judy has a wide dynamic range. Most
    ADTs work well only overspecific, "tuned" or designed-in (limited) dynamic
    ranges.

    <br><br><b>Expanse</b>: The range of possible indexes (keys) that can be
    stored under one pointer (root or lower) in a tree structure. For example, a
    root pointer to a 32-bit Judy array has an expanse of 0 .. 2^32 - 1.

    <br><br><b>Fanout</b>: See Branch Width.

    <br><br><b>Fixed-size index</b>: A key to an array-like data structure which
    is always the same size, in practice one machine word in size. Judy1 and
    JudyL support fixed-size, one-word indexes only. Judy grew out of a need to
    solve this problem efficiently, although in the academic literature only
    variable-size index problems seem to be considered interesting. Ironically a
    meta-trie consisting of JudyL arrays as very-wide branch nodes can be used
    to support variable-size keys quite nicely. 

    <br><br><b>Grow-in-place</b>: Allocating memory in chunks that are often
    larger than the actual bytes required, by rounding up to a lesser number of
    different memory chunk sizes, means there is often somepadding present in a
    given node. Thus the node can be modified in place during an insert
    operation, and it can also shrink in place during a deletion without having
    to be reallocated to a smaller size.

    <br><br><b>Horizontal compression</b>: See Index Compression.

    <br><br><b>Hybrid data structures</b>: Using different ADTs at different
    levels or for different nodes in a tree data structure. This means switching
    to a different ADT while traversing the tree as the expanseand/or population
    shrinks, to best represent the population's indexes with the fewest cache
    fills and the least amount of memory.
    
    <br><br><b>Hysteresis</b>: Leaving a system (in this case a Judy data
    structure) in a previous state even when it could be modified to a new
    state, with the result that the present state depends on the "direction"
    (such as insertion or deletion) from which it was approached. Any
    application that deletes indexes is likely to perform a series of insertions
    and deletions, often within a relatively small expanse ofindexes. Hence it
    might be faster on average to not revise the data structure to the optimal
    form for each new index set (after each operation). Especially upon deletion
    followed by insertion, it can result in superior performance if decascades
    are postponed. The risk with hysteresis is that random or pathological
    sequences of insertions and deletions can result in a greatly suboptimal
    data structure -- and it's difficult to identify them or rule them out. Judy
    presently makes use of limited hysteresis (one index at most) in some cases
    of deletion.

    <br><br><b>Immediate indexes</b>: Similar to how a machine instruction can
    contain an immediate (constant) rather than indirect (variable) value, if
    the population in a Judy expanse is low enough (perhaps just one index),
    depending on the data structure (memory space associated with each pointer
    in a branch), the population's indexes can be stored locally in a JP rather
    than in a separate leaf node under the JP, saving one indirection and
    possibly some memory. This requires encoding into the JP the special case of
    immediate indexes.

    <br><br><b>Index</b>: A key to an array or to an array-like API.
    
    <br><br><b>Index compression = horizontal compression</b>: At any level in a
    tree data structure, all indexes in the current population (index set within
    the current expanse) might have one or more most-significant bits (MSB) in
    common. These common bits can be stored just once in multi-index shortcut
    leaves, in a variety of possible "compression schemes", such as: q Storing
    the first valid index in full and the others as relative offsets, either
    from the first, or from each previous. q Storing the common bits only once,
    and for each valid index, only the bits that might differ. This is the same
    as relative offsets, all from the first value, which is a base value not
    necessarily equal to any one of the indexes. In practice, due to machine
    instruction efficiencies, common MSBs are compressed only in units of whole
    bytes. For example, in a 32 bit system, there might be 0, 1, 2, or 3 common
    bytes, and thus 1, 2, 3, or 4 varying bytes, in the indexes in a leaf. At a
    low enough level in the tree, say where 3 bytes were already decoded, only 1
    byte can vary. Furthermore, Judy does not bother with the kinds of complex
    compression schemes described above because we think the extra CPU time
    involved would out weigh the space savings. Judy does have the ability to
    compress a collection of indexes to a lower-level leaf, which has a greater
    capacity, under a narrow pointer, which skips 1 or more common leading
    bytes, if all of the indexes in the expanse are in the narrower leaf's
    expanse.
    
    <br><br><b>Index set</b>: Given a data structure capable of holding 0..N
    indexes (keys, elements), any one [sub]set of those 0..N indexes is an index
    set. For a given expanse, each possible population's set of indexes is one
    index set. It must be possible to store and distinguish every unique index
    set inthe data structure, regardless of the sequence of insert/delete
    operations used to arrive at that indexset, or else the data structure is
    not very useful. Of course, Judy arrays pass this test.

    <br><br><b>Index</b>: A key value to an ADT that appears array-like at the
    application interface. Since Judy appears array-like, keys into Judy ADTs are
    referred to as indexes.

    <br><br><b>Informational pointer</b>: See JP.

    <br><br><b>Iteration</b>: A procedure where a series of operations is
    repeated. 

    <br><br><b>JP</b>: Judy Pointer, a two-word object that populates branch
    nodes, also referred to... as a "rich pointer" or "informational pointer". A
    JP contains an address field, except when the JP is null (represents an
    unpopulated subexpanse) or contains immediate indexes, plus other
    descriptivefields such as <i>Decode</i> bytes, <i>Population</i> count, and
    <i>Type</i>. 

    <br><br><b>JPM</b>: Judy population/memory node, at most one per tree (Judy
    array), used when the array/tree population is too large to fit in a
    root-level leaf and hence is large enough to amortize the memory needed for
    the JPM. A root pointer points to a JPM which contains a top-level JP which
    in turn points to a top-level branch node. The JPM contains additional
    fields that make tree management faster and easier. 

    <br><br><b>Judy array</b>: An ADT that acts much like an ordinary array, but
    which appears unbounded (exceptby the expanse of the index) and is allocated
    by the first store/insert into the array. Judy arrays are hybrid digital
    trees consisting of a variety of branch and leaf node ADTs. Judy indexes can
    be inserted, retrieved, deleted, and searched in sorted order.

    <br><br><b>Judy pointer</b>: See JP.

    <br><br><b>Judy population/memory node</b>: See JPM.

    <br><br><b>Judy tree</b>: The internal data structure used to implement the
    data stored in what is presented externally as a Judy array.

    <br><br><b>Judy1</b>: Bit array that maps a long word index to Boolean
    (true/false).

    <br><br><b>JudyL</b>: Word array that maps a long word index to a long word
    value.

    <br><br><b>JudySL</b>: Word array with string index; map string index to
    long word value. Built as a meta-trie using JudyL arrays as extremely wide
    branch nodes. (Includes the use of JLAP_INVALID in JudyL value areas
    (subsidiary root pointers) to "escape" to shortcut leaves for unique string
    suffixes, a critical though subtle feature.)

    <br><br><b>Key</b>: A data value (bitstring) used to look up related data
    values in a data structure that holds a collection of keys. See also Index.

    <br><br><b>Level compression = vertical compression</b>: In the academic
    sense this means skipping levels in the tree when a branch node would
    otherwise have a fanout of 1. Read about Patricia tries for an example. Judy
    does this using narrow pointers.

    <br><br><b>Linear branch [node]</b>: A Judy non-leaf branch node for a
    low-fanout population. Linear branches are constrained to one cache line =
    16 words, hence hold 1..7 JPs out of a virtual fanoutof 256. Populated
    subexpanses are listed by-population (1 byte/digit each), along with a
    corresponding list of JPs.

    <br><br><b>Linear leaf [node]</b>: A multi-index leaf (a terminal node) that
    holds a population too large to fit in an immediate index JP but small
    enough to fit in 2 cache lines (for JudyL, 4 cache lines including value
    areas). By convention a root-level leaf is referred to separately, and a
    linear leaf is always below the root level. Note that a linear leaf is never
    large enough to be fully populated, that is, tohold 256 indexes. 
    
    <br><br><b>Locality</b>: Designing a data structure so a single insertion or
    deletion has the least wide-ranging effects on average and/or in the worst
    case. Ideally, every index set's optimal data structure is very similar to
    every adjacent index set's optimal data structure, implying excellent
    average and worst-case locality. If this cannot be achieved, at least
    instances of poor locality should be relatively rare.

    <br><br><b>LSB</b>: Least Significant Bytes/Bits.

    <br><br><b>Memory manager</b>: Any dynamic multi-node data structure like
    Judy requires an underlying memory manager from which it can obtain chunks
    of memory, and to which it can possibly free(return) them. To minimize
    wasted memory and reduce the frequency and cost of pathological cases due to
    memory fragmenting into small and non-reusable chunks, the data structure
    should use the minimum number of different sizes of memory chunks, maximize
    the frequency of reuse of freed memory chunks, and/or the memory manager
    itself should be smart and efficient about merging adjacent free chunks into
    larger ones for reuse. (The <i>malloc</i>(3C) library is an example of a
    memory manager.)

    <br><br><b>Meta-trie</b>: A hybrid digital tree (trie) whose branch nodes
    are in turn smaller tries. For example, a variable-size key trie might use
    fixed-size key tries like JudyL arrays as its branch nodes, especially given
    an "escape" mechanism like JLAP_INVALID to mark a JudyL value area as being
    other than a root pointer to a subsidiary JudyL array, such as a shortcut or
    multi-index leaf node.

    <br><br><b>MSB</b>: Most Significant Bytes/Bits.

    <br><br><b>Multi-index leaf</b>: If the population of an expanse in a trie
    is small enough, it can be more efficient to store the population's indexes
    in a multi-index leaf object rather than under additional trie nodes leading
    to single-index leaves.

    <br><br><b>Narrow pointer</b>: Suppose that high in a digital tree data
    structure there's a large expanse, with apopulation large enough to not fit
    in a single leaf node, but whose members are clustered closely enough to have
    lots of index compressibility due to common leading bits/bytes/digits. A
    narrow pointer is a way of simultaneously skipping levels and unoccupied
    expanses in the tree. Associated with the narrow pointer must be the common
    index bits being "decoded" via the pointer, unless the whole indexes are
    stored in the leaves. Judy1 and JudyL support only fixed-size indexes (1
    word each), so <i>Decode</i> bytes in the JPs in the branches describe the
    digits skipped by narrow pointers.

    <br><br><b>Neighbor</b>: In a sorted index set, the neighbor of any index
    (element) is the previous or next valid index in the index set. One of Judy's
    strengths is its ability to rapidly locate neighbors.

    <br><br><b>Opaqueness</b>: The property of hiding the internal details of a
    data structure or algorithm. Because Judy is very opaque, the application
    sees it purely as an array. Users don't need to know the array is implemented
    as a tree, or actually as an even more complex hybrid ADT.

    <br><br><b>Optimal data structure</b>: Given a set of unambiguous criteria,
    if they exist, by which to rank different data structures capable of holding
    the same index set, there should be exactly one best data structure to
    represent each possible index set. Ideally the implementation of each
    adjacency operation would then convert an optimal data structure (for one
    index set) into another optimal data structure (for its adjacent index set).
    It's possible to have no unambiguous criteria for optimizing data structures.
    For example, Judy seeks to simultaneously: q Minimize index access (get)
    time, both average and worst-case. q Minimize index insert/delete time,
    both average and worst-case. q Minimize memory consumed and thus maximize
    efficiency. q Be as simple as possible -- but we had to give this up in the
    transition from Judy III to Judy IV. We learned that a wide dynamic range
    plus high-performance (although still portable) software requires a lot of
    different data structures (tree nodes) to pick from, plus maximally in-line
    code with minimal functions, loops, etc. The optimal data structure for any
    index set depends sensitively on the tradeoffs chosen between conflicting
    criteria, and might not even be "computable". (It worries me that whenever
    this ambiguity or complexity exists we might overlook better data structures
    or algorithms.) Ironically, space and time need not always be in conflict.
    Using data compression techniques to save memory, at the cost of some CPU
    time to compress/decompress, can reduce the overall size of a data structure,
    hence average CPU cache fills, resulting in less overall time to access an
    index.

    <br><br><b>Outlier</b>: An index that falls within a given expanse but not
    within a narrow subexpanse of that expanse. For example, given indexes all
    beginning with 0x0102... in a leaf under a narrow pointer, an index beginning
    with 0x0103... would be an outlier under slot (digit) 0x01 of the top
    level branch. 

    <br><br><b>Parent [node]</b>: A branch that contains a pointer to some other
    node (a child node).

    <br><br><b>Pathology</b>: A pathological index set is one that brings out
    the worst-case behavior in a given algorithm and/or data structure. A
    pathological case is a sequence of insertions and deletions (or other
    adjacency operations) that result in a pathological index set and/or a
    suboptimal data structure, and/or which takes much longer to perform than
    the average.

     <br><br><b>Population</b>: The number of indexes that are stored in one
     expanse, or the indexes them selves (that is, the index set), depending on
     the context.

    <br><br><b>Positional lookup</b>: Data, such as pointers in a trie node,
    which are located via address calculations rather than by linear, binary, or
    any other type of search. Note that a positional lookup results in at most
    one cache fill -- so long as each data element itself does not cross cache
    line boundaries -- no matter how large the array or node in which the
    positional lookup is done.

    <br><br><b>Recursion</b>: When a function calls itself. 

    <br><br><b>Rich pointer</b>: See JP.

    <br><br><b>Root pointer</b>: A pointer to the top node of a tree structure.
    (Tree data structures are typically drawn upside down, with the root at the
    top and the leaves at the bottom.) 

    <br><br><b>Root-level leaf</b>: A simple linear list of whole indexes,
    possibly (in JudyL) with associated value areas, used for low-population
    Judy arrays (less than or equal to 31 indexes = 2 cache lines). The root
    pointer indicates the presence and type of the root-level leaf. A generic
    root-level leaf starts with a population count word. Small root-level leaves
    have their populations encoded in the root pointer to save memory.

    <br><br><b>Shortcut leaf</b>: By default, a full trie for a fixed-size index
    contains a fixed number of levels. If below a certain point there is only one
    index stored, that is, an expanse has a population of 1, it can be
    considerably more efficient to store that index in a non-trie leaf object
    directly below the last node containing 2 or more indexes in its expanse. A
    shortcut leaf must contain all of the remaining undecoded bits of the index
    it contains, since they are not encoded positionally in additional trie
    nodes. Shortcut leaves are mainly useful for variable-size key trees such as
    JudySL arrays, although multi-index leaves can be seen as a type of shortcut
    leaf too.

    <br><br><b>Sibling branch [node]</b>: A branch node with the same parent as
    another branch; a peer.

    <br><br><b>Sorted index set</b>: An index set whose members are uniquely
    sorted according to some rule, suchas numerically or lexicographically.

    <br><br><b>Tree data structure</b>: Most definitions of Binary and
    Digital/Tries tree data structures miss the fundamental difference. A
    typical Binary tree has nodes (or forks) that cut up the "population" in an
    attempt to keep the depth of the tree to a minimum. This requires a
    comparison test be done at every node to determine which branch (fork) to
    follow. A perfectly balanced binary tree has a very predictable depth
    proportional to (log(base 2) of) the population. In contrast, a
    Digital/Trie tree the population is cut up by "expanse". That is a portion
    of the Index/key is used (8 bits with Judy1/L) is used to determine which of
    the 256 nodes in the branch to follow. The maximum depth of a Judy1/L tree
    is (in 32 bit version) 32/8=4. In the past, digital trees have not been
    popular because of the astronomical amount of memory it takes to implement
    them. Judy solves that problem very well. Judy's data structures are
    tailored to support the population below an expanse (node) at any given
    time -- whether it be 256, 65536, or any possible 256^n expanse.

    <br><br><b>Trie</b>: See Digital Tree.

    <br><br><b>Unbounded array</b>: An array maps an index to a value. Normally
    an array is defined (at compiletime) or allocated (at run time) with some
    fixed size, such as abc[10], which in C means indexes 0..9 are valid. An
    unbounded array is one where the size of the array is only limited by the
    size of the index. On a 32-bit system, for Judy1 and JudyL, where the index
    is a native machine word,this means 32 bits, or indexes 0..2^32-1. For
    JudySL, this means any string you can fit in memory. So unbounded doesn't
    mean infinite, it means not arbitrarily bounded at less than the
    machine's limits.

    <br><br><b>Uncompressed branch node</b>: A simple array of 256 JPs,
    including null JPs for unpopulated subexpanses.

    <br><br><b>Valid/invalid [index]</b>: A valid index is one that appears in a
    index set; that is, it's set or stored in a Judy array. An invalid index is
    one that could appear in the index set but does not; that is, it's not
    currently stored in a Judy array. There are many synonyms for each word,
    such as: present/absent,set/unset, stored/free, full/empty.

    <br><br><b>Variable-size index</b>: A key to an array-like data structure
    that handles a variety of index sizes, or possibly unbounded sizes.
    Bitstrings and character strings are examples of variable-size keys.JudySL
    is an array-like API implemented as a meta-trie that supports character
    string indexes.

    <br><br><b>Vertical compression</b>: See Level Compression and Digital Tree.

    <br><br><b>Word</b>: A unit of memory that is the same size as a pointer to
    pointer to void, and/or an unsigned long, in native C; typically 32 or 64
    bits today. PA-RISC and IPF hardware support both 32-bit and 64-bit programs
    depending on compilation options.
   </td>
</tr>

</table>
</td>
</tr>
  <!-- END First Tables -->
</table>
]])
