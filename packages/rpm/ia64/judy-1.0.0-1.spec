%define name    Judy
%define version 1.0.0
%define release 1


Name: 		%{name} 
Summary: 	A C library functions for creating and accessing dynamic arrays 
Version:        %{version} 
Release:        %{release} 
Source: 	%{name}-%{version}.tar.gz
URL:		http://judy.sf.net/
Group: 		Development/Libraries
License:        LGPL
BuildRoot: 	%{_tmppath}/%{name}-%{version}-%{release}-buildroot 


%description
Judy is a C library that provides a state-of-the-art core technology that
implements a sparse dynamic array. Judy arrays are declared simply with a null
pointer. A Judy array consumes memory only when it is populated, yet can grow
to take advantage of all available memory if desired.

Judy's key benefits are scalability, high performance, and memory efficiency. A
Judy array is extensible and can scale up to a very large number of elements,
bounded only by machine memory. Since Judy is designed as an unbounded array,
the size of a Judy array is not pre-allocated but grows and shrinks dynamically
with the array population.

%prep  
%setup 

%build
%configure --enable-64-bit
make

%install
rm -rf %{buildroot}
%makeinstall

%clean
rm -rf %{buildroot}

%post -p /sbin/ldconfig
%postun -p /sbin/ldconfig

%files
%defattr(-, root, root)
#%doc README AUTHORS INSTALL COPYING ChangeLog /doc/ext/Judy_3x.htm /doc/ext/Judy1_3x.htm /doc/ext/Judy1_funcs_3x.htm /doc/ext/JudyHS_3x.htm /doc/ext/JudyHS_funcs_3x.htm /doc/ext/JudyL_3x.htm /doc/ext/JudyL_funcs_3x.htm /doc/ext/JudySL_3x.htm /doc/ext/JudySL_funcs_3x.htm 
%doc README AUTHORS INSTALL COPYING ChangeLog 
/usr/include/Judy.h
/usr/lib/libJudy.a
/usr/lib/libJudy.la
/usr/lib/libJudy.so
/usr/lib/libJudy.so.1
/usr/lib/libJudy.so.1.0.0
/usr/share/man/man3/J1BC.3x.gz
/usr/share/man/man3/J1C.3x.gz
/usr/share/man/man3/J1F.3x.gz
/usr/share/man/man3/J1FA.3x.gz
/usr/share/man/man3/J1FE.3x.gz
/usr/share/man/man3/J1L.3x.gz
/usr/share/man/man3/J1LE.3x.gz
/usr/share/man/man3/J1MU.3x.gz
/usr/share/man/man3/J1N.3x.gz
/usr/share/man/man3/J1NE.3x.gz
/usr/share/man/man3/J1P.3x.gz
/usr/share/man/man3/J1PE.3x.gz
/usr/share/man/man3/J1S.3x.gz
/usr/share/man/man3/J1T.3x.gz
/usr/share/man/man3/J1U.3x.gz
/usr/share/man/man3/JHSD.3x.gz
/usr/share/man/man3/JHSFA.3x.gz
/usr/share/man/man3/JHSG.3x.gz
/usr/share/man/man3/JHSI.3x.gz
/usr/share/man/man3/JLBC.3x.gz
/usr/share/man/man3/JLC.3x.gz
/usr/share/man/man3/JLD.3x.gz
/usr/share/man/man3/JLF.3x.gz
/usr/share/man/man3/JLFA.3x.gz
/usr/share/man/man3/JLFE.3x.gz
/usr/share/man/man3/JLG.3x.gz
/usr/share/man/man3/JLI.3x.gz
/usr/share/man/man3/JLL.3x.gz
/usr/share/man/man3/JLLE.3x.gz
/usr/share/man/man3/JLMU.3x.gz
/usr/share/man/man3/JLN.3x.gz
/usr/share/man/man3/JLNE.3x.gz
/usr/share/man/man3/JLP.3x.gz
/usr/share/man/man3/JLPE.3x.gz
/usr/share/man/man3/JSLD.3x.gz
/usr/share/man/man3/JSLF.3x.gz
/usr/share/man/man3/JSLFA.3x.gz
/usr/share/man/man3/JSLG.3x.gz
/usr/share/man/man3/JSLI.3x.gz
/usr/share/man/man3/JSLL.3x.gz
/usr/share/man/man3/JSLN.3x.gz
/usr/share/man/man3/JSLP.3x.gz
/usr/share/man/man3/Judy1.3x.gz
/usr/share/man/man3/Judy1ByCount.3x.gz
/usr/share/man/man3/Judy1Count.3x.gz
/usr/share/man/man3/Judy1First.3x.gz
/usr/share/man/man3/Judy1FirstEmpty.3x.gz
/usr/share/man/man3/Judy1FreeArray.3x.gz
/usr/share/man/man3/Judy1_funcs.3x.gz
/usr/share/man/man3/Judy1Last.3x.gz
/usr/share/man/man3/Judy1LastEmpty.3x.gz
/usr/share/man/man3/Judy1MemUsed.3x.gz
/usr/share/man/man3/Judy1Next.3x.gz
/usr/share/man/man3/Judy1NextEmpty.3x.gz
/usr/share/man/man3/Judy1Prev.3x.gz
/usr/share/man/man3/Judy1PrevEmpty.3x.gz
/usr/share/man/man3/Judy1Set.3x.gz
/usr/share/man/man3/Judy1Test.3x.gz
/usr/share/man/man3/Judy1Unset.3x.gz
/usr/share/man/man3/Judy.3x.gz
/usr/share/man/man3/JudyHS.3x.gz
/usr/share/man/man3/JudyHSDel.3x.gz
/usr/share/man/man3/JudyHSFreeArray.3x.gz
/usr/share/man/man3/JudyHS_funcs.3x.gz
/usr/share/man/man3/JudyHSGet.3x.gz
/usr/share/man/man3/JudyHSIns.3x.gz
/usr/share/man/man3/JudyL.3x.gz
/usr/share/man/man3/JudyLByCount.3x.gz
/usr/share/man/man3/JudyLCount.3x.gz
/usr/share/man/man3/JudyLDel.3x.gz
/usr/share/man/man3/JudyLFirst.3x.gz
/usr/share/man/man3/JudyLFirstEmpty.3x.gz
/usr/share/man/man3/JudyLFreeArray.3x.gz
/usr/share/man/man3/JudyL_funcs.3x.gz
/usr/share/man/man3/JudyLGet.3x.gz
/usr/share/man/man3/JudyLIns.3x.gz
/usr/share/man/man3/JudyLLast.3x.gz
/usr/share/man/man3/JudyLLastEmpty.3x.gz
/usr/share/man/man3/JudyLMemUsed.3x.gz
/usr/share/man/man3/JudyLNext.3x.gz
/usr/share/man/man3/JudyLNextEmpty.3x.gz
/usr/share/man/man3/JudyLPrev.3x.gz
/usr/share/man/man3/JudyLPrevEmpty.3x.gz
/usr/share/man/man3/JudySL.3x.gz
/usr/share/man/man3/JudySLDel.3x.gz
/usr/share/man/man3/JudySLFirst.3x.gz
/usr/share/man/man3/JudySLFreeArray.3x.gz
/usr/share/man/man3/JudySL_funcs.3x.gz
/usr/share/man/man3/JudySLGet.3x.gz
/usr/share/man/man3/JudySLIns.3x.gz
/usr/share/man/man3/JudySLLast.3x.gz
/usr/share/man/man3/JudySLNext.3x.gz
/usr/share/man/man3/JudySLPrev.3x.gz


# %{buildroot}/src/obj/.libs/*
# %{buildroot}/src/Judy.h
# %{buildroot}/doc/man/man3/*

%changelog
* Fri Sep 10 2004 Troy Heber <troy.heber@hp.com> 
- first Judy RPM release for Opteron. 
