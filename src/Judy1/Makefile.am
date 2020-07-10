INCLUDES =  -I. -I.. -I../JudyCommon/ -I$(top_srcdir)/src -I$(top_srcdir)/src/JudyCommon -I$(top_srcdir)/src/Judy1
AM_CFLAGS = -DJUDY1 @WARN_CFLAGS@ 

noinst_LTLIBRARIES = libJudy1.la libnext.la libprev.la libcount.la libinline.la

libJudy1_la_SOURCES = Judy1Test.c Judy1Tables.c Judy1Set.c Judy1SetArray.c Judy1Unset.c Judy1Cascade.c Judy1Count.c Judy1CreateBranch.c Judy1Decascade.c Judy1First.c Judy1FreeArray.c Judy1InsertBranch.c Judy1MallocIF.c Judy1MemActive.c Judy1MemUsed.c 

libnext_la_SOURCES = Judy1Next.c Judy1NextEmpty.c 
libnext_la_CFLAGS = $(AM_CFLAGS) -DJUDYNEXT

libprev_la_SOURCES = Judy1Prev.c Judy1PrevEmpty.c 
libprev_la_CFLAGS = $(AM_CFLAGS) -DJUDYPREV

libcount_la_SOURCES = Judy1ByCount.c
libcount_la_CFLAGS = $(AM_CFLAGS) -DNOSMARTJBB -DNOSMARTJBU -DNOSMARTJLB

libinline_la_SOURCES = j__udy1Test.c
libinline_la_CFLAGS = $(AM_CFLAGS) -DJUDYGETINLINE

Judy1Tables.c: Judy1TablesGen.c
	$(CC) $(INCLUDES) $(AM_CFLAGS) @CFLAGS@ -o Judy1TablesGen Judy1TablesGen.c; ./Judy1TablesGen

Judy1ByCount.c:$(top_srcdir)/src/JudyCommon/JudyByCount.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyByCount.c      		Judy1ByCount.c   

Judy1Cascade.c:$(top_srcdir)/src/JudyCommon/JudyCascade.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyCascade.c      		Judy1Cascade.c

Judy1Count.c:$(top_srcdir)/src/JudyCommon/JudyCount.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyCount.c        		Judy1Count.c

Judy1CreateBranch.c:$(top_srcdir)/src/JudyCommon/JudyCreateBranch.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyCreateBranch.c 		Judy1CreateBranch.c

Judy1Decascade.c:$(top_srcdir)/src/JudyCommon/JudyDecascade.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyDecascade.c    		Judy1Decascade.c

Judy1Unset.c:$(top_srcdir)/src/JudyCommon/JudyDel.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyDel.c          		Judy1Unset.c

Judy1First.c:$(top_srcdir)/src/JudyCommon/JudyFirst.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyFirst.c        		Judy1First.c

Judy1FreeArray.c:$(top_srcdir)/src/JudyCommon/JudyFreeArray.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyFreeArray.c    		Judy1FreeArray.c

Judy1Test.c:$(top_srcdir)/src/JudyCommon/JudyGet.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyGet.c          		Judy1Test.c

j__udy1Test.c:$(top_srcdir)/src/JudyCommon/JudyGet.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyGet.c          		j__udy1Test.c

Judy1SetArray.c:$(top_srcdir)/src/JudyCommon/JudyInsArray.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyInsArray.c     		Judy1SetArray.c

Judy1Set.c:$(top_srcdir)/src/JudyCommon/JudyIns.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyIns.c          		Judy1Set.c

Judy1InsertBranch.c:$(top_srcdir)/src/JudyCommon/JudyInsertBranch.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyInsertBranch.c 		Judy1InsertBranch.c

Judy1MallocIF.c:$(top_srcdir)/src/JudyCommon/JudyMallocIF.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyMallocIF.c     		Judy1MallocIF.c

Judy1MemActive.c:$(top_srcdir)/src/JudyCommon/JudyMemActive.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyMemActive.c    		Judy1MemActive.c

Judy1MemUsed.c:$(top_srcdir)/src/JudyCommon/JudyMemUsed.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyMemUsed.c      		Judy1MemUsed.c

Judy1Next.c:$(top_srcdir)/src/JudyCommon/JudyPrevNext.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNext.c     		Judy1Next.c

Judy1Prev.c:$(top_srcdir)/src/JudyCommon/JudyPrevNext.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNext.c     		Judy1Prev.c

Judy1NextEmpty.c:$(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c		Judy1NextEmpty.c

Judy1PrevEmpty.c:$(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c		Judy1PrevEmpty.c

Judy1TablesGen.c:$(top_srcdir)/src/JudyCommon/JudyTables.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyTables.c	        Judy1TablesGen.c

DISTCLEANFILES = .deps Makefile 

CLEANFILES = Judy1ByCount.c \
	     Judy1Cascade.c \
	     Judy1Count.c \
	     Judy1CreateBranch.c \
	     Judy1Decascade.c \
	     Judy1Unset.c \
	     Judy1First.c \
	     Judy1FreeArray.c \
	     Judy1Test.c \
	     j__udy1Test.c \
	     Judy1SetArray.c \
	     Judy1Set.c \
	     Judy1InsertBranch.c \
	     Judy1MallocIF.c \
	     Judy1MemActive.c \
	     Judy1MemUsed.c \
	     Judy1Next.c \
	     Judy1Prev.c \
	     Judy1NextEmpty.c \
	     Judy1PrevEmpty.c \
	     Judy1TablesGen.c \
	     Judy1Tables.c \
	     .libs \
	     Judy1TablesGen \
	     *.o \
	     *.lo \
	     *.la
