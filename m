Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA5C31FA34
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:00:19 +0100 (CET)
Received: from [::1] (port=54090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD6KO-0008Bm-Pn; Fri, 19 Feb 2021 09:00:16 -0500
Received: from p-impout005aa.msg.pkvw.co.charter.net ([47.43.26.136]:51568
 helo=p-impout005.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lD6KL-000837-7l
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 09:00:13 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id D6Jfl0r1KeKjED6Jflr1x7; Fri, 19 Feb 2021 13:59:32 +0000
X-Authority-Analysis: v=2.3 cv=ALzgjvLx c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=keNB5WY0uQqM_y6wh9AA:9
 a=QEXdDO2ut3YA:10 a=zQC54vRUmSvzHyxm_YYA:9 a=qjz7aPLteeT0iTVd:21
 a=_W_S_7VecoQA:10
Message-Id: <1d1dadb54b24b1d1c27f58b0b1ce4af99128dfdd@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Fri, 19 Feb 2021 13:59:31 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMN1R2zRI5b22AmuVHLkMajVEwSHARnNkyqsjgO8vbrhsNZRyhzen8VLPrb6WOyzJoTVEzXNGUYdUx7YRDHJYtNNXyg/Vy0XgoR2G/EQCG3ky1iGwfBw
 XprcdD1Sb3za/Q1cQXulGuH59l0DhsA4rdbo9Iy+JVDaDvY5oT06aaRGkIEJmDeTpboeuacbX/foBQ==
Subject: [USRP-users] gr-ettus Cross-Compile "Target
 'gnuradio::runtime_swig' not found."
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dennis Trask via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dtrask1@tampabay.rr.com
Content-Type: multipart/mixed; boundary="===============0679950595427637213=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0679950595427637213==
Content-Type: multipart/alternative;
 boundary="=_51eb822bf43f1f024e13ae8a9f5e48a4"

--=_51eb822bf43f1f024e13ae8a9f5e48a4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have UHD 4.0 and GnuRadio maint-3.8 built for Ubuntu 18.04 host and=0A=
cross-compiled for E310. I have also built gr-ettus maint-3.8-uhd4.0=0Af=
or the host, but when I try to run cmake to setup the cross-compile I=0A=
get the error in the subject line.=0AHere's the cmake command-line and o=
utput:=0Alabuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ cmake=0A-DC=
MAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross=
.cmake=0A-DCMAKE_INSTALL_PREFIX=3D/usr ..-- The CXX compiler identificat=
ion is=0AGNU 9.2.0-- The C compiler identification is GNU 9.2.0-- Check=
 for=0Aworking CXX compiler:=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oe=
sdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++--=0AChec=
k for working CXX compiler:=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oes=
dk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++=0A-- work=
s-- Detecting CXX compiler ABI info-- Detecting CXX compiler=0AABI info=
 - done-- Detecting CXX compile features-- Detecting CXX=0Acompile featu=
res - done-- Check for working C compiler:=0A/home/labuser/rfnoc/oe/sysr=
oots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueab=
i-gcc--=0ACheck for working C compiler:=0A/home/labuser/rfnoc/oe/sysroot=
s/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g=
cc=0A-- works-- Detecting C compiler ABI info-- Detecting C compiler ABI=
=0Ainfo - done-- Detecting C compile features-- Detecting C compile=0Afe=
atures - done-- Build type not specified: defaulting to release.--=0AFou=
nd LOG4CPP:=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-gnueabi/usr/lib/liblog4cpp.so--=0AFound PkgConfig:=0A/home/labuser/rfno=
c/oe/sysroots/x86_64-oesdk-linux/usr/bin/pkg-config=0A(found version "0.=
29.2") -- Checking for module 'gmp'-- No package=0A'gmp' found-- Found G=
MP:=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi=
/usr/lib/libgmpxx.so=0A-- Checking for module 'mpir >=3D 3.0'-- No packa=
ge 'mpir' found-- Could=0ANOT find MPIR (missing: MPIRXX_LIBRARY MPIR_LI=
BRARY MPIR_INCLUDE_DIR)=0A-- Found MPLIB:=0A/home/labuser/rfnoc/oe/sysro=
ots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/libgmpxx.so=0A-- Found Bo=
ost:=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueab=
i/usr/lib/cmake/Boost-1.71.0/BoostConfig.cmake=0A(found suitable version=
 "1.71.0", minimum required is "1.71.0") found=0Acomponents: date_time p=
rogram_options filesystem system regex thread=0Aunit_test_framework -- F=
ound VOLK: Volk::volk -- Found Git:=0A/usr/bin/git -- Extracting version=
 information from git describe...--=0AFound UHD:=0A/home/labuser/rfnoc/o=
e/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/libuhd.so=0A(Requi=
red is at least version "4.0") -- Found PythonLibs:=0A/home/labuser/rfno=
c/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/libpython2.7.so=
=0A(found suitable version "2.7.17", minimum required is "2") -- Found=
=0ADoxygen: /usr/bin/doxygen (found version "1.8.13") found components:=
=0Adoxygen missing components: dot-- PYTHON_EXECUTABLE not set - using=
=0Adefault python3-- Use -DPYTHON_EXECUTABLE=3D/path/to/python2 to build=
=0Afor python2.-- Found PythonInterp: /usr/bin/python2.7 (found version=
=0A"2.7.17") -- Found PythonLibs:=0A/home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-gnueabi/usr/lib/libpython2.7.so=0A(found suitable=
 exact version "2.7.17") -- Using install prefix:=0A/usr-- Building for=
 version: 3.8.0.0 / 3.8.0-- No C++ unit tests...=0Askipping-- User set p=
ython executable /usr/bin/python2.7-- -- Checking=0Afor module SWIG-- Fo=
und SWIG version 3.0.12.-- Found SWIG:=0A/usr/bin/swig3.0 -- Found Pytho=
nLibs:=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnue=
abi/usr/lib/libpython2.7.so=0A(found suitable version "2.7.17", minimum=
 required is "2") -- User set=0Apython executable /usr/bin/python2.7-- F=
ound PythonLibs:=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-gnueabi/usr/lib/libpython2.7.so=0A(found suitable exact version "2=
.7.17") -- User set python executable=0A/usr/bin/python2.7-- Configuring=
 doneCMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_=
command): Error evaluating generator expression:=0A $=0A Target "gnuradi=
o::runtime_swig" not found.Call Stack (most recent=0Acall first):=0A/hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/c=
make/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/la=
buser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake=
/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:58 (=
GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=
=0A(add_custom_command): Error evaluating generator expression:=0A $=0A=
 Target "gnuradio::runtime_swig" not found.Call Stack (most recent=0Acal=
l first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-g=
nueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MO=
DULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnuea=
bi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMa=
keLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/=
oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/Us=
eSWIG.cmake:418=0A(add_custom_command): Error evaluating generator expre=
ssion:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (mos=
t recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-n=
eon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_AD=
D_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_lib=
rary) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/=
labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating g=
enerator expression:=0A $=0A Target "gnuradio::runtime_swig" not found.C=
all Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:=
559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=
=0A(swig_add_library) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnu=
eabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127=0A(add_dependencies):=
 The dependency target "gnuradio::runtime_swig" of=0Atarget "_ettus_swig=
_doc_tag" does not exist.Call Stack (most recent=0Acall first):=0A/home/=
labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cma=
ke/gnuradio/GrSwig.cmake:65=0A(GR_GEN_TARGET_DEPS)=0A/home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/G=
rSwig.cmake:112=0A(GR_SWIG_MAKE_DOCS) swig/CMakeLists.txt:58 (GR_SWIG_MA=
KE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-n=
eon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_cus=
tom_command): Error evaluating generator expression:=0A $=0A Target "gnu=
radio::runtime_swig" not found.Call Stack (most recent=0Acall first):=0A=
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/l=
ib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/c=
make/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:=
58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:=
418=0A(add_custom_command): Error evaluating generator expression:=0A $=
=0A Target "gnuradio::runtime_swig" not found.Call Stack (most recent=0A=
call first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linu=
x-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO=
_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gn=
ueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/=
CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfn=
oc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio=
/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating generator ex=
pression:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (=
most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2h=
f-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG=
_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_=
library) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/ho=
me/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/=
cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): Error evaluatin=
g generator expression:=0A $=0A Target "gnuradio::runtime_swig" not foun=
d.Call Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroo=
ts/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cma=
ke:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/c=
ortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:13=
7=0A(swig_add_library) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake=
 Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-g=
nueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):=
 Error evaluating generator expression:=0A $=0A Target "gnuradio::runtim=
e_swig" not found.Call Stack (most recent=0Acall first):=0A/home/labuser=
/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnur=
adio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfn=
oc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio=
/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:58 (GR_SWIG_M=
AKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_cu=
stom_command): Error evaluating generator expression:=0A $=0A Target "gn=
uradio::runtime_swig" not found.Call Stack (most recent=0Acall first):=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/us=
r/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/=
home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/li=
b/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.t=
xt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroo=
ts/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cma=
ke:418=0A(add_custom_command): Error evaluating generator expression:=0A=
 $=0A Target "gnuradio::runtime_swig" not found.Call Stack (most recent=
=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE=
_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) sw=
ig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/=
rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnura=
dio/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating generator=
 expression:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stac=
k (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9=
t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(S=
WIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf=
-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_a=
dd_library) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A=
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/l=
ib/cmake/gnuradio/GrSwig.cmake:144=0A(target_include_directories): Error=
 evaluating generator expression:=0A $=0A Target "gnuradio::runtime_swig=
" not found.Call Stack (most recent=0Acall first): swig/CMakeLists.txt:5=
8 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/c=
ortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:14=
4=0A(target_include_directories): Error evaluating generator expression:=
=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (most rece=
nt=0Acall first): swig/CMakeLists.txt:58 (GR_SWIG_MAKE)=0A=0A-- Generati=
ng doneCMake Generate step failed. Build files cannot be=0Aregenerated c=
orrectly.=0A=0A

--=_51eb822bf43f1f024e13ae8a9f5e48a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have UHD 4.0 and GnuRadio maint-3.8 built for Ubuntu 18.04=
 host and cross-compiled for E310. I have also built gr-ettus maint-3.8-=
uhd4.0 for the host, but when I try to run cmake to setup the cross-comp=
ile I get the error in the subject line.<div><br></div><div>Here's the c=
make command-line and output:</div><div><br></div><div><div><div><div>la=
buser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ cmake -DCMAKE_TOOLCHAI=
N_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake -DCMAK=
E_INSTALL_PREFIX=3D/usr ..</div><div>-- The CXX compiler identification=
 is GNU 9.2.0</div><div>-- The C compiler identification is GNU 9.2.0</d=
iv><div>-- Check for working CXX compiler: /home/labuser/rfnoc/oe/sysroo=
ts/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-=
g++</div><div>-- Check for working CXX compiler: /home/labuser/rfnoc/oe/=
sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gn=
ueabi-g++ -- works</div><div>-- Detecting CXX compiler ABI info</div><di=
v>-- Detecting CXX compiler ABI info - done</div><div>-- Detecting CXX c=
ompile features</div><div>-- Detecting CXX compile features - done</div>=
<div>-- Check for working C compiler: /home/labuser/rfnoc/oe/sysroots/x8=
6_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc</=
div><div>-- Check for working C compiler: /home/labuser/rfnoc/oe/sysroot=
s/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g=
cc -- works</div><div>-- Detecting C compiler ABI info</div><div>-- Dete=
cting C compiler ABI info - done</div><div>-- Detecting C compile featur=
es</div><div>-- Detecting C compile features - done</div><div>-- Build t=
ype not specified: defaulting to release.</div><div>-- Found LOG4CPP: /h=
ome/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib=
/liblog4cpp.so</div><div>-- Found PkgConfig: /home/labuser/rfnoc/oe/sysr=
oots/x86_64-oesdk-linux/usr/bin/pkg-config (found version "0.29.2")&nbsp=
;</div><div>-- Checking for module 'gmp'</div><div>--&nbsp; &nbsp;No pac=
kage 'gmp' found</div><div>-- Found GMP: /home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/libgmpxx.so&nbsp;&nbsp;</div=
><div>-- Checking for module 'mpir &gt;=3D 3.0'</div><div>--&nbsp; &nbsp=
;No package 'mpir' found</div><div>-- Could NOT find MPIR (missing: MPIR=
XX_LIBRARY MPIR_LIBRARY MPIR_INCLUDE_DIR)&nbsp;</div><div>-- Found MPLIB=
: /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr=
/lib/libgmpxx.so&nbsp;&nbsp;</div><div>-- Found Boost: /home/labuser/rfn=
oc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/Boost-1.=
71.0/BoostConfig.cmake (found suitable version "1.71.0", minimum require=
d is "1.71.0") found components:&nbsp; date_time program_options filesys=
tem system regex thread unit_test_framework&nbsp;</div><div>-- Found VOL=
K: Volk::volk&nbsp;&nbsp;</div><div>-- Found Git: /usr/bin/git&nbsp;&nbs=
p;</div><div>-- Extracting version information from git describe...</div=
><div>-- Found UHD: /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-gnueabi/usr/lib/libuhd.so (Required is at least version "4.0")&nb=
sp;</div><div>-- Found PythonLibs: /home/labuser/rfnoc/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-gnueabi/usr/lib/libpython2.7.so (found suitable ve=
rsion "2.7.17", minimum required is "2")&nbsp;</div><div>-- Found Doxyge=
n: /usr/bin/doxygen (found version "1.8.13") found components:&nbsp; dox=
ygen missing components:&nbsp; dot</div><div>-- PYTHON_EXECUTABLE not se=
t - using default python3</div><div>-- Use -DPYTHON_EXECUTABLE=3D/path/t=
o/python2 to build for python2.</div><div>-- Found PythonInterp: /usr/bi=
n/python2.7 (found version "2.7.17")&nbsp;</div><div>-- Found PythonLibs=
: /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr=
/lib/libpython2.7.so (found suitable exact version "2.7.17")&nbsp;</div>=
<div>-- Using install prefix: /usr</div><div>-- Building for version: 3.=
8.0.0 / 3.8.0</div><div>-- No C++ unit tests... skipping</div><div>-- Us=
er set python executable /usr/bin/python2.7</div><div>--&nbsp;</div><div=
>-- Checking for module SWIG</div><div>-- Found SWIG version 3.0.12.</di=
v><div>-- Found SWIG: /usr/bin/swig3.0&nbsp;&nbsp;</div><div>-- Found Py=
thonLibs: /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnu=
eabi/usr/lib/libpython2.7.so (found suitable version "2.7.17", minimum r=
equired is "2")&nbsp;</div><div>-- User set python executable /usr/bin/p=
ython2.7</div><div>-- Found PythonLibs: /home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/libpython2.7.so (found suitab=
le exact version "2.7.17")&nbsp;</div><div>-- User set python executable=
 /usr/bin/python2.7</div><div>-- Configuring done</div><div>CMake Error=
 at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><div>=
&nbsp; Error evaluating generator expression:</div><div><br></div><div>&=
nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLU=
DE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::run=
time_swig" not found.</div><div>Call Stack (most recent call first):</di=
v><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MO=
DULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_libr=
ary)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><b=
r></div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroo=
ts/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cma=
ke:418 (add_custom_command):</div><div>&nbsp; Error evaluating generator=
 expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY=
:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br>=
</div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><div>C=
all Stack (most recent call first):</div><div>&nbsp; /home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/U=
seSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labu=
ser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/g=
nuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMakeL=
ists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake=
 Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnu=
eabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div=
><div>&nbsp; Error evaluating generator expression:</div><div><br></div>=
<div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE=
_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradi=
o::runtime_swig" not found.</div><div>Call Stack (most recent call first=
):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE=
_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2h=
f-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_ad=
d_library)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><=
div><br></div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/=
sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSW=
IG.cmake:418 (add_custom_command):</div><div>&nbsp; Error evaluating gen=
erator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PR=
OPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><di=
v><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=
<div>Call Stack (most recent call first):</div><div>&nbsp; /home/labuser=
/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnur=
adio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/c=
make/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/=
CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div=
>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-gnueabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127 (add_dependencie=
s):</div><div>&nbsp; The dependency target "gnuradio::runtime_swig" of t=
arget</div><div>&nbsp; "_ettus_swig_doc_tag" does not exist.</div><div>C=
all Stack (most recent call first):</div><div>&nbsp; /home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/G=
rSwig.cmake:65 (GR_GEN_TARGET_DEPS)</div><div>&nbsp; /home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/G=
rSwig.cmake:112 (GR_SWIG_MAKE_DOCS)</div><div>&nbsp; swig/CMakeLists.txt=
:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake Error a=
t /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr=
/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><div>&n=
bsp; Error evaluating generator expression:</div><div><br></div><div>&nb=
sp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE=
_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::runti=
me_swig" not found.</div><div>Call Stack (most recent call first):</div>=
<div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-g=
nueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODU=
LE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-o=
e-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_librar=
y)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><br>=
</div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:418 (add_custom_command):</div><div>&nbsp; Error evaluating generator e=
xpression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:g=
nuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></=
div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><div>Cal=
l Stack (most recent call first):</div><div>&nbsp; /home/labuser/rfnoc/o=
e/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/Use=
SWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuse=
r/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnu=
radio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMakeLis=
ts.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake E=
rror at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnuea=
bi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><=
div>&nbsp; Error evaluating generator expression:</div><div><br></div><d=
iv>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_I=
NCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio:=
:runtime_swig" not found.</div><div>Call Stack (most recent call first):=
</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_T=
O_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_=
library)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><di=
v><br></div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sy=
sroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG=
.cmake:418 (add_custom_command):</div><div>&nbsp; Error evaluating gener=
ator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROP=
ERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div>=
<br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><d=
iv>Call Stack (most recent call first):</div><div>&nbsp; /home/labuser/r=
fnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnurad=
io/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/=
labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cma=
ke/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CM=
akeLists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>C=
Make Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):<=
/div><div>&nbsp; Error evaluating generator expression:</div><div><br></=
div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTER=
FACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnu=
radio::runtime_swig" not found.</div><div>Call Stack (most recent call f=
irst):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neo=
n-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SO=
URCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa=
9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swi=
g_add_library)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</d=
iv><div><br></div><div><br></div><div>CMake Error at /home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/U=
seSWIG.cmake:418 (add_custom_command):</div><div>&nbsp; Error evaluating=
 generator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGE=
T_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div=
><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</=
div><div>Call Stack (most recent call first):</div><div>&nbsp; /home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/=
gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp;=
 /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/=
lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp;=
 swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div><br></di=
v><div>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_co=
mmand):</div><div>&nbsp; Error evaluating generator expression:</div><di=
v><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_sw=
ig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Tar=
get "gnuradio::runtime_swig" not found.</div><div>Call Stack (most recen=
t call first):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9=
t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWI=
G_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:=
137 (swig_add_library)</div><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_=
MAKE)</div><div><br></div><div><br></div><div>CMake Error at /home/labus=
er/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gn=
uradio/UseSWIG.cmake:418 (add_custom_command):</div><div>&nbsp; Error ev=
aluating generator expression:</div><div><br></div><div>&nbsp; &nbsp; $&=
lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&=
gt;</div><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not=
 found.</div><div>Call Stack (most recent call first):</div><div>&nbsp;=
 /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/=
lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><d=
iv>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnu=
eabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><di=
v>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><div>=
<br></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2=
hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144 (target=
_include_directories):</div><div>&nbsp; Error evaluating generator expre=
ssion:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnura=
dio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div>=
<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><div>Call St=
ack (most recent call first):</div><div>&nbsp; swig/CMakeLists.txt:58 (G=
R_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake Error at /hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/c=
make/gnuradio/GrSwig.cmake:144 (target_include_directories):</div><div>&=
nbsp; Error evaluating generator expression:</div><div><br></div><div>&n=
bsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUD=
E_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::runt=
ime_swig" not found.</div><div>Call Stack (most recent call first):</div=
><div>&nbsp; swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</div><div><br></div><=
div><br></div><div>-- Generating done</div><div>CMake Generate step fail=
ed.&nbsp; Build files cannot be regenerated correctly.</div></div></div>=
</div><div><br></div><div><br></div></body></html>

--=_51eb822bf43f1f024e13ae8a9f5e48a4--



--===============0679950595427637213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0679950595427637213==--


