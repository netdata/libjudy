%define name    Judy
%define version 1.0.1
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
#%doc README AUTHORS INSTALL COPYING ChangeLog /doc/ext/Judy_3.htm /doc/ext/Judy1_3.htm /doc/ext/Judy1_funcs_3.htm /doc/ext/JudyHS_3.htm /doc/ext/JudyHS_funcs_3.htm /doc/ext/JudyL_3.htm /doc/ext/JudyL_funcs_3.htm /doc/ext/JudySL_3.htm /doc/ext/JudySL_funcs_3.htm 
%doc README AUTHORS INSTALL COPYING ChangeLog 
/usr/include/Judy.h
/usr/lib/libJudy.a
/usr/lib/libJudy.la
/usr/lib/libJudy.so
/usr/lib/libJudy.so.1
/usr/lib/libJudy.so.1.0.1
/usr/share/man/man3/J1BC.3.gz
/usr/share/man/man3/J1C.3.gz
/usr/share/man/man3/J1F.3.gz
/usr/share/man/man3/J1FA.3.gz
/usr/share/man/man3/J1FE.3.gz
/usr/share/man/man3/J1L.3.gz
/usr/share/man/man3/J1LE.3.gz
/usr/share/man/man3/J1MU.3.gz
/usr/share/man/man3/J1N.3.gz
/usr/share/man/man3/J1NE.3.gz
/usr/share/man/man3/J1P.3.gz
/usr/share/man/man3/J1PE.3.gz
/usr/share/man/man3/J1S.3.gz
/usr/share/man/man3/J1T.3.gz
/usr/share/man/man3/J1U.3.gz
/usr/share/man/man3/JHSD.3.gz
/usr/share/man/man3/JHSFA.3.gz
/usr/share/man/man3/JHSG.3.gz
/usr/share/man/man3/JHSI.3.gz
/usr/share/man/man3/JLBC.3.gz
/usr/share/man/man3/JLC.3.gz
/usr/share/man/man3/JLD.3.gz
/usr/share/man/man3/JLF.3.gz
/usr/share/man/man3/JLFA.3.gz
/usr/share/man/man3/JLFE.3.gz
/usr/share/man/man3/JLG.3.gz
/usr/share/man/man3/JLI.3.gz
/usr/share/man/man3/JLL.3.gz
/usr/share/man/man3/JLLE.3.gz
/usr/share/man/man3/JLMU.3.gz
/usr/share/man/man3/JLN.3.gz
/usr/share/man/man3/JLNE.3.gz
/usr/share/man/man3/JLP.3.gz
/usr/share/man/man3/JLPE.3.gz
/usr/share/man/man3/JSLD.3.gz
/usr/share/man/man3/JSLF.3.gz
/usr/share/man/man3/JSLFA.3.gz
/usr/share/man/man3/JSLG.3.gz
/usr/share/man/man3/JSLI.3.gz
/usr/share/man/man3/JSLL.3.gz
/usr/share/man/man3/JSLN.3.gz
/usr/share/man/man3/JSLP.3.gz
/usr/share/man/man3/Judy1.3.gz
/usr/share/man/man3/Judy1ByCount.3.gz
/usr/share/man/man3/Judy1Count.3.gz
/usr/share/man/man3/Judy1First.3.gz
/usr/share/man/man3/Judy1FirstEmpty.3.gz
/usr/share/man/man3/Judy1FreeArray.3.gz
/usr/share/man/man3/Judy1_funcs.3.gz
/usr/share/man/man3/Judy1Last.3.gz
/usr/share/man/man3/Judy1LastEmpty.3.gz
/usr/share/man/man3/Judy1MemUsed.3.gz
/usr/share/man/man3/Judy1Next.3.gz
/usr/share/man/man3/Judy1NextEmpty.3.gz
/usr/share/man/man3/Judy1Prev.3.gz
/usr/share/man/man3/Judy1PrevEmpty.3.gz
/usr/share/man/man3/Judy1Set.3.gz
/usr/share/man/man3/Judy1Test.3.gz
/usr/share/man/man3/Judy1Unset.3.gz
/usr/share/man/man3/Judy.3.gz
/usr/share/man/man3/JudyHS.3.gz
/usr/share/man/man3/JudyHSDel.3.gz
/usr/share/man/man3/JudyHSFreeArray.3.gz
/usr/share/man/man3/JudyHS_funcs.3.gz
/usr/share/man/man3/JudyHSGet.3.gz
/usr/share/man/man3/JudyHSIns.3.gz
/usr/share/man/man3/JudyL.3.gz
/usr/share/man/man3/JudyLByCount.3.gz
/usr/share/man/man3/JudyLCount.3.gz
/usr/share/man/man3/JudyLDel.3.gz
/usr/share/man/man3/JudyLFirst.3.gz
/usr/share/man/man3/JudyLFirstEmpty.3.gz
/usr/share/man/man3/JudyLFreeArray.3.gz
/usr/share/man/man3/JudyL_funcs.3.gz
/usr/share/man/man3/JudyLGet.3.gz
/usr/share/man/man3/JudyLIns.3.gz
/usr/share/man/man3/JudyLLast.3.gz
/usr/share/man/man3/JudyLLastEmpty.3.gz
/usr/share/man/man3/JudyLMemUsed.3.gz
/usr/share/man/man3/JudyLNext.3.gz
/usr/share/man/man3/JudyLNextEmpty.3.gz
/usr/share/man/man3/JudyLPrev.3.gz
/usr/share/man/man3/JudyLPrevEmpty.3.gz
/usr/share/man/man3/JudySL.3.gz
/usr/share/man/man3/JudySLDel.3.gz
/usr/share/man/man3/JudySLFirst.3.gz
/usr/share/man/man3/JudySLFreeArray.3.gz
/usr/share/man/man3/JudySL_funcs.3.gz
/usr/share/man/man3/JudySLGet.3.gz
/usr/share/man/man3/JudySLIns.3.gz
/usr/share/man/man3/JudySLLast.3.gz
/usr/share/man/man3/JudySLNext.3.gz
/usr/share/man/man3/JudySLPrev.3.gz


# %{buildroot}/src/obj/.libs/*
# %{buildroot}/src/Judy.h
# %{buildroot}/doc/man/man3/*

%changelog
* Tue Dec 14 2004 Troy Heber <troy.heber@hp.com> 
- Rolling to version 1.0.1
* Fri Sep 10 2004 Troy Heber <troy.heber@hp.com> 
- first Judy RPM release for Opteron. 
