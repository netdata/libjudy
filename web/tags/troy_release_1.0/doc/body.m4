define([[BODY_HTML]],[[
  <!--- BEGIN First Tables -->
  <td valign="top" width="98%">
  <table align="left" border="0" cellspacing="15" cellpadding="0" width="100%" summary="Center Table">

<tr>
   <td width="15"></td>
   <td align="Left" valign="top">
   <img src="/graphics/doc_bnr.jpg" name="Judy Documentation" alt="Judy Documentation"></td>
</tr>

<tr>
<td width="15"></td>
<td>
	<p>
	  <h3>Synopsis</h3>
	  <PRE>
	  <A href="Judy1_3x.htm">Judy1</A>  - maps an <B>Index</B> (word) to a <B>bit</B>
	  <A href="JudyL_3x.htm">JudyL</A>  - maps an <B>Index</B> (word) to a <B>Value</B> (word/pointer)
	  <A href="JudySL_3x.htm">JudySL</A> - maps an <B>Index</B> (null terminated string) to a <B>Value</B>
	  <A href="JudyHS_3x.htm">JudyHS</A> - maps an <B>Index</B> (array-of-bytes) of <B>Length</B> to a <B>Value</B>
	   </PRE>
	  </p><p> 

	  <h3>Description</h3>
	  The Judy family of functions supports fully dynamic arrays.  These
	  arrays may be indexed by a 32- or 64-bit word (depending on processor
	  word size), a null terminated string or an array-of-bytes plus length.
	  A dynamic array (sparsely populated) can also be thought of as a
	  <I>mapping function</I> or <I>associative memory</I>.
	  <p>

	  A <B>Word_t</B> is a <I>typedef unsigned long int </I> in
	  <B>Judy.h</B> and must be the same size as <I>sizeof(void *)</I> I.E.
	  a pointer.
	  <p>

	  <A href="Judy1_3x.htm">Judy1</A> functions: <B>Index</B> is a
	  <B>Word_t</B> and <B>Value</B> is just a <B>bit</B> or simply a flag
	  that <B>Index</B> is present or missing from the array.  This can be
	  thought of as a huge bitmap.
	  <p>

	  <A href="JudyL_3x.htm">JudyL</A> functions: <B>Index</B> is a
	  <B>Word_t</B> and <B>Value</B> is a <B>Word_t</B>.  This makes
	  <B>JudyL</B> a pure word-to-word/pointer mapper.  <B>JudySL</B> and
	  <B>JudyHL</B> are based on this property of <B>JudyL</B>.
	  <p> 

	  <A href="JudySL_3x.htm">JudySL</A> functions: <B>Index</B> is a
	  null-terminated string and <B>Value</B> is a <B>Word_t</B>.
	  <p>

	  <A href="JudyHS_3x.htm">JudyHS</A> functions:  <B>Index</B> is an
	  array-of-bytes of length:  <B>Length</B>.  <B>Value</B> is a
	  <B>Word_t</B>.  This new addition (May 2004) to Judy is a hybird using
	  the best features of hashing and Judy methods.  The author believes
	  <B>JudyHS</B> is a good replacement for a hashing method when resizing
	  the hash table is done during population growth.  A correctly tuned
	  hash method with a <B>static</B> hash table size and population is
	  unbeatable for speed.  However, <B>JudyHS</B> will perform better than
	  a hashing method with smaller and larger populations than the optimum
	  hash table size.  <B>JudyHS</B> does not have a degenerate performance
	  case where knowledge of the hash algorithm can be exploited.  (I.E.
	  JudyHS does not use a linked list to handle hash collisions, it uses a
	  tree of <B>JudyL</B> arrays and a virtual hash table size of 4
	  billion).
	  <p>

	  Judy arrays are both <B>speed-</B> and <B>memory-efficient</B>, with
	  no tuning or configuration required, across a wide range of index set
	  types (sequential, periodic, clustered, random).  Judy's speed and
	  memory usage are typically better than other data storage models such
	  as skiplists, linked lists, binary, ternary, b-trees, or even hashing,
	  and improves with very large data sets.
	  <p> 
	  
	  A Judy array is created merely by defining a null pointer and then
	  storing (inserting) the first element into the array under that
	  pointer.  The memory used by a Judy array is nearly proportional to
	  the population (number of elements).
	  <p> 

	  Judy has two Application Program Interfaces (APIs):  a C macro
	  interface, and a function call interface.  Because the macro forms are
	  sometimes faster and have a simpler error handling interface than the
	  equivalent functions, they are the preferred way of using the Judy
	  functions.  
	  <p>

	  Since an initial (empty) Judy array is represented by a null pointer,
	  it is possible to construct an array of Judy arrays.  In other words,
	  a Judy array's <B>Values</B> (except Judy1) can be pointers to other
	  Judy arrays.  This makes it very simple to construct an array with an
	  arbitrary number of dimensions or <B>Index</B> sizes.  (JudySL and
	  JudyHS are implemented using JudyL this way).

	  <p>
	  <h3>Detailed Description:</h3>
	  <ul>
	     <li><A href="/doc/10minutes.htm">A 10 minute technical description</A>
	     </li>
	     <li><A href="/doc/shop_interm.pdf">A 3 hour technical description</A>, slightly out of date, and very corny.
	     </li>
	   </ul>

	</td>

  </tr>

  </table>
  </td>
  </tr>
  <!-- END First Tables -->
</table>
]])
