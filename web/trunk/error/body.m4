define([[BODY_HTML]],[[
  <!--- BEGIN First Tables -->
  <td valign="top" width="98%">
  <table align="left" border="0" cellspacing="15" cellpadding="0" width="100%" summary="Center Table">

<tr>
   <td width="15"></td>
   <td align="Left" valign="top">
   <img src="/graphics/errors_bnr.jpg" name="Judy Error Handeling" alt="Judy
   Error Handeling"></td>
</tr>

<tr>
<td width="15"></td>
<td>
	<p>
	  <h3>Error Handling</h3>
A lot of thought (and time) went into making error handling in Judy
simple, while maintaining flexibility and capability.  Error handling is
a very boring subject even to write about.  So read this short section
and use the recommended second method.  It generates the fastest code,
uses the least amount of memory and requires you to write extra code
only for insert/deletes functions.  Also it is compatible with the other
two methods.  This method is for production code that may want to handle

<I>malloc()</I> fails differently than the Judy default.  If the Judy
default method of handling <I>malloc()</I> fails are OK, then use the
first method.
<P>
There are <I>two (2)</I> categories of Judy error returns, (or for any dynamic ADT):
<P>
1) User programming errors (bugs) such as memory corruption or
invalid pointers.
<BR>
2) Out-of-memory (<I>malloc()</I> failure) with <B>I</B>nsert
(<B>S</B>et) or <B>D</B>elete (<B>U</B>nset) when modifying a Judy
array.  Not all calls to insert and delete call <I>malloc()</I>, so they
may succeed even when a call to <I>malloc()</I> would fail.

<BR>
<P>
There are roughly <I>three (3)</I> methods of handling errors when using
the macros:
<DL>
<P>
<DT><B>1) Default Error Handling Method</B></DT>
<DD>
The default is to print error messages to <B>stderr</B>, for example:
<P>
<PRE>
File 'YourCfile.c', line 1234: JudyLIns(), JU_ERRNO_* == 2, ID == 321

</PRE>
This indicates that an error occurred in the <B>JudyLIns()</B> function
at line 321.  Line 1234 is the line in 'YourCfile.c' where the
<B>JLI()</B> call failed.  JU_ERRNO_* == 2 is equal to JU_ERRNO_NOMEM
(as defined in the <B>Judy.h</B> file).  The ID number indicates the
source line number in the function where the error originated.  Your
program then terminates with an <I>exit(1);</I>.  By default, both
categories of Judy error returns are printed this way.  (The 'ID == 321'
is for die hards that want more detail or for debugging Judy itself.)
<BR>
<P>
<DT><B>2) Disable Macro Error Handling</B> </DT>

<DD>
When your program is "bug free", the only errors returned should be
<I>malloc()</I> failures.  Therefore all error returns can be treated as
a <I>malloc()</I> failure.  By using the below <B>#define</B>, all
error testing and printing is turned off.  Additional code needs to be
added to the code that can have <I>malloc()</I> failures.  Judy was
designed to leave the same data in the array before the call if a
<I>malloc()</I> fail occurs.  (During testing of Judy, we found very few
<I>malloc()</I>/OS's that were bug free after a <I>malloc()</I> failure.
Sometimes it took weeks to discover because most systems go into a
paging frenzy before running out of memory).

<PRE>
#define JUDYERROR_NOTEST 1
</PRE>
(in your program code), or
<PRE>
cc -DJUDYERROR_NOTEST <I>sourcefile</I> -lJudy
</PRE>
(on your command line).
<PRE>
// This is an example of how to program using method two (2).
    
JLI(PValue, PLArray, Index);
if (PValue == PJERR) goto out_of_memory_handling;
...

JLD(RC_int, PLArray, Index);
if (RC_int == JERR) goto out_of_memory_handling;
...

J1S(RC_int, P1Array, Index);
if (RC_int == JERR) goto out_of_memory_handling;
...

J1U(RC_int, P1Array, Index);
if (RC_int == JERR) goto out_of_memory_handling;
...

</PRE>
Note:  Without 'JUDYERROR_NOTEST' defined, the 'goto
out_of_memory_handling' will never be executed and will be optimized out
by the compiler.  The default method will be used -- Macro will print
error information if an error occurs as explained above.
<P>
With 'JUDYERROR_NOTEST' defined, the 'goto out_of_memory_handling' will
be executed when an error occurs -- which should only happen when

<I>malloc()</I> fails.
<DT><B>3) User-Specified JUDYERROR() Macro Method</B> </DT>
<DD>
The <B>JUDYERROR()</B> macro (in <B>Judy.h</B>) provides flexibility for
handling error returns as needed to suit your program while still using
the Judy array macros instead of function calls.  You can use a
different <B>JUDYERROR()</B> macro to suit your needs.  The following
example is a possible alternative to the default. It is used to
distinguish between the two types of errors (described above), and
explicitly test for the remaining JU_ERRNO_NOMEM errors possible in your
program.
<P>

<PRE>
// This is an example of Judy macro API to continue when out of memory 
// and print and exit(1) when any other error occurs.

#ifndef JUDYERROR_NOTEST
#include &lt;stdio.h&gt;  // needed for fprintf()

// This is the macro that the Judy macro APIs use for return codes of -1:

#define JUDYERROR(CallerFile, CallerLine, JudyFunc, JudyErrno, JudyErrID) \
{                                                                         \
    if ((JudyErrno) != JU_ERRNO_NOMEM) /* ! a malloc() failure */         \
    {                                                                     \
        (void) fprintf(stderr, "File '%s', line %d: %s(), "               \
            "JU_ERRNO_* == %d, ID == %d\n",                               \
            CallerFile, CallerLine,                                       \
            JudyFunc, JudyErrno, JudyErrID);                              \
        exit(1);                                                          \
    }                                                                     \
}
#endif // JUDYERROR_NOTEST not defined
<BR>
</PRE>
This error handling macro must be included before the <B>#include &lt;Judy.h&gt;</B>
statement in your program.
</DL>
<!----------------->
<P>
	    </td>
  </tr>

  </table>
  </td>
  </tr>
  <!-- END First Tables -->
</table>
]])
