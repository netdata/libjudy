define([[BODY_HTML]],[[
  <!--- BEGIN First Tables -->
  <td valign="top" width="98%">
  <table align="left" border="0" cellspacing="15" cellpadding="0" width="100%" summary="Center Table">

<tr>
   <td width="15"></td>
   <td align="Left" valign="top">
   <img src="/graphics/intro_bnr.jpg" name="Judy Introduction" alt="Judy Introduction"></td>
</tr>

<tr>
<td width="15"></td>
<td>
	<p>
	  <h3>What is Judy?</h3>
	   Judy is a C library that provides a state-of-the-art core technology
	   that implements a sparse dynamic array. Judy arrays are declared
	   simply with a null pointer. A Judy array consumes memory only when it
	   is populated, yet can grow to take advantage of all available memory
	   if desired.
	  </p>

	  Judy's key benefits are scalability, high performance, and memory
	  efficiency. A Judy array is extensible and can scale up to a very
	  large number of elements, bounded only by machine memory. Since Judy
	  is designed as an unbounded array, the size of a Judy array is not
	  pre-allocated but grows and shrinks dynamically with the array
	  population.
	  </p><p> 

	  Judy combines scalability with ease of use. The Judy API is accessed
	  with simple insert, retrieve, and delete calls that do not require
	  extensive programming. Tuning and configuring are not required (in
	  fact not even possible). In addition, sort, search, count, and
	  sequential access capabilities are built into Judy's design.
	  </p><p> 

	  Judy can be used whenever a developer needs dynamically sized arrays,
	  associative arrays or a simple-to-use interface that requires no
	  rework for expansion or contraction.
	  </p><p> 

	  Judy can replace many common data structures, such as arrays, sparse
	  arrays, hash tables, B-trees, binary trees, linear lists, skiplists,
	  other sort and search algorithms, and counting functions.
	  </p><p> 
	  
	  <h3>Detailed Descriptions</h3>
	  <ul>
	     <li><A href="/doc/10minutes.htm">A 10 minute technical description</A>
	     </li>
	     <li><A href="/doc/shop_interm.pdf">A 3 hour technical description</A>, slightly out of date, and very corny.
	     </li>
	   </ul>
	  
	  <h3>Author</h3>
	  Judy was invented by Doug Baskins (dougbaskins .AT, yahoo.com) and
	  implemented by Hewlett-Packard.  (Note:  Judy is named for the
	  inventor's sister, after discarding many proposed names.)
	  </p><p> 

	  </td>
  </tr>

  </table>
  </td>
  </tr>
  <!-- END First Tables -->
</table>
]])
