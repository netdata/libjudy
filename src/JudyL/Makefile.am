INCLUDES =  -I. -I.. -I../JudyCommon/ -I$(top_srcdir)/src -I$(top_srcdir)/src/JudyCommon -I$(top_srcdir)/src/JudyL
AM_CFLAGS = -DJUDYL @WARN_CFLAGS@ 

noinst_LTLIBRARIES = libJudyL.la libnext.la libprev.la libcount.la libinline.la

libJudyL_la_SOURCES = JudyLCascade.c JudyLTables.c JudyLCount.c JudyLCreateBranch.c JudyLDecascade.c JudyLDel.c JudyLFirst.c JudyLFreeArray.c JudyLGet.c JudyLInsArray.c JudyLIns.c JudyLInsertBranch.c JudyLMallocIF.c JudyLMemActive.c JudyLMemUsed.c 

libnext_la_SOURCES = JudyLNext.c JudyLNextEmpty.c
libnext_la_CFLAGS = $(AM_CFLAGS) -DJUDYNEXT

libprev_la_SOURCES = JudyLPrev.c JudyLPrevEmpty.c
libprev_la_CFLAGS = $(AM_CFLAGS) -DJUDYPREV

libcount_la_SOURCES = JudyLByCount.c
libcount_la_CFLAGS = $(AM_CFLAGS) -DNOSMARTJBB -DNOSMARTJBU -DNOSMARTJLB

libinline_la_SOURCES = j__udyLGet.c
libinline_la_CFLAGS = $(AM_CFLAGS) -DJUDYGETINLINE

JudyLTables.c: JudyLTablesGen.c
	$(CC) $(INCLUDES) $(AM_CFLAGS) @CFLAGS@ -o JudyLTablesGen JudyLTablesGen.c; ./JudyLTablesGen 

JudyLByCount.c:   $(top_srcdir)/src/JudyCommon/JudyByCount.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyByCount.c      		JudyLByCount.c   

JudyLCascade.c:$(top_srcdir)/src/JudyCommon/JudyCascade.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyCascade.c       	JudyLCascade.c

JudyLCount.c:$(top_srcdir)/src/JudyCommon/JudyCount.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyCount.c        		JudyLCount.c

JudyLCreateBranch.c:$(top_srcdir)/src/JudyCommon/JudyCreateBranch.c 
	cp -f $(top_srcdir)/src/JudyCommon/JudyCreateBranch.c 		JudyLCreateBranch.c

JudyLDecascade.c:$(top_srcdir)/src/JudyCommon/JudyDecascade.c    
	cp -f $(top_srcdir)/src/JudyCommon/JudyDecascade.c    		JudyLDecascade.c

JudyLDel.c:$(top_srcdir)/src/JudyCommon/JudyDel.c       
	cp -f $(top_srcdir)/src/JudyCommon/JudyDel.c          		JudyLDel.c

JudyLFirst.c:$(top_srcdir)/src/JudyCommon/JudyFirst.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyFirst.c        		JudyLFirst.c

JudyLFreeArray.c:$(top_srcdir)/src/JudyCommon/JudyFreeArray.c    
	cp -f $(top_srcdir)/src/JudyCommon/JudyFreeArray.c    		JudyLFreeArray.c

JudyLGet.c:$(top_srcdir)/src/JudyCommon/JudyGet.c       
	cp -f $(top_srcdir)/src/JudyCommon/JudyGet.c          		JudyLGet.c

j__udyLGet.c:$(top_srcdir)/src/JudyCommon/JudyGet.c 
	cp -f $(top_srcdir)/src/JudyCommon/JudyGet.c          		j__udyLGet.c

JudyLInsArray.c:$(top_srcdir)/src/JudyCommon/JudyInsArray.c     
	cp -f $(top_srcdir)/src/JudyCommon/JudyInsArray.c     		JudyLInsArray.c

JudyLIns.c:$(top_srcdir)/src/JudyCommon/JudyIns.c      
	cp -f $(top_srcdir)/src/JudyCommon/JudyIns.c          		JudyLIns.c

JudyLInsertBranch.c:$(top_srcdir)/src/JudyCommon/JudyInsertBranch.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyInsertBranch.c 		JudyLInsertBranch.c

JudyLMallocIF.c:$(top_srcdir)/src/JudyCommon/JudyMallocIF.c     
	cp -f $(top_srcdir)/src/JudyCommon/JudyMallocIF.c     		JudyLMallocIF.c

JudyLMemActive.c:$(top_srcdir)/src/JudyCommon/JudyMemActive.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyMemActive.c    		JudyLMemActive.c

JudyLMemUsed.c:$(top_srcdir)/src/JudyCommon/JudyMemUsed.c   
	cp -f $(top_srcdir)/src/JudyCommon/JudyMemUsed.c      		JudyLMemUsed.c

JudyLNext.c:$(top_srcdir)/src/JudyCommon/JudyPrevNext.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNext.c     		JudyLNext.c

JudyLPrev.c:$(top_srcdir)/src/JudyCommon/JudyPrevNext.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNext.c     		JudyLPrev.c

JudyLNextEmpty.c:$(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c		JudyLNextEmpty.c

JudyLPrevEmpty.c:$(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyPrevNextEmpty.c		JudyLPrevEmpty.c

JudyLTablesGen.c:$(top_srcdir)/src/JudyCommon/JudyTables.c
	cp -f $(top_srcdir)/src/JudyCommon/JudyTables.c       	 	JudyLTablesGen.c

DISTCLEANFILES = .deps Makefile 

CLEANFILES = JudyLByCount.c  \
	     JudyLCascade.c \
	     JudyLCount.c \
	     JudyLCreateBranch.c \
	     JudyLDecascade.c \
	     JudyLDel.c \
	     JudyLFirst.c \
	     JudyLFreeArray.c \
	     JudyLGet.c \
	     j__udyLGet.c \
	     JudyLInsArray.c \
	     JudyLIns.c \
	     JudyLInsertBranch.c \
	     JudyLMallocIF.c \
	     JudyLMemActive.c \
	     JudyLMemUsed.c \
	     JudyLNext.c \
	     JudyLPrev.c \
	     JudyLNextEmpty.c \
	     JudyLPrevEmpty.c \
	     JudyLTablesGen.c \
	     JudyLTables.c \
	     JudyLTablesGen \
	     .libs \
	     *.o \
	     *.lo \
	     *.la 
