define([[BODY_HTML]],[[
  <!--- BEGIN First Tables -->
  <td valign="top" width="98%">
  <table align="left" border="0" cellspacing="15" cellpadding="0" width="100%" summary="Center Table">

<tr>
   <td width="15"></td>
   <td align="Left" valign="top">
   <img src="/graphics/news_bnr.jpg" name="Judy News" alt="Judy News"></td>
</tr>

<tr>
<td width="15"></td>
<td>
	<p>
	  <h3>1.0.0 Version (September 2004)</h3>
	  <ul>
	     	<li>Complete Autoconfisication of Judy + layout restructuring</li>
		<li>Removed previous build environment</li>
		<li>Change INSTALL_IT back to INSTALL</li>
	 </ul>

	<h3>0.1.6 Version (June 2004), never really relased and merges into 1.0.0</h3>
	<ul>
		<li>See src/sh_build in case of 'make' failures</li>
		<li>The is an endian-neutral version I.E. (jp_DcdPop0 deleted)</li>
		<li>Should not require any special platform specific compile flags</li>
		<li>Includes JudyHS*() -- very fast, scalable string version</li>
		<li>JudyHS*() is still preliminary and may need additional functionality.</li>
		<li>See test/manual/StringCompare.c for comparing different 'string' ADT's</li>
		<li>Deleted files: JudyMalloc.h, JudySL.h, JudySearch*</li> <li>All malloc() and free() is done thru interface routines in
		JudyMalloc.c</li>
		<li>Judy.h should work on all platforms that conform to ISO standards.</li>
		<li>After trying on many platforms, <stdint.h> was changed to <inttypes.h></li>
		<li>jbgraph has some 'bash/ksh' isms that need to be removed.</li>
		<li>See test/manual/testjbgraph for plotting performance graphs</li>
		<li>'libtools' stuff is in unknown shape.</li> <li>Does not "mangle" the root pointer (so old valgrind is not
		confused)</li>
		<li>Conform to standard "C"</li>
		<li>Change INSTALL to INSTALL_IT because it confused "make install"</li>
		<li>To he man pages need work to clean up the .html to be portable</li>
		<li>Plus hundreds of changes to make the source more portable.</li>
	</ul>
	</td>
  </tr>

  </table>
  </td>
  </tr>
  <!-- END First Tables -->
</table>
]])
