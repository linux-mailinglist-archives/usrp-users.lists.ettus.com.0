Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF4431923C
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 19:30:11 +0100 (CET)
Received: from [::1] (port=58722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAGjA-000787-8V; Thu, 11 Feb 2021 13:30:08 -0500
Received: from p-impout003aa.msg.pkvw.co.charter.net ([47.43.26.134]:46224
 helo=p-impout003.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lAGj5-00072X-PL
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 13:30:03 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id AGiQlcH0n5iY2AGiQlpXer; Thu, 11 Feb 2021 18:29:22 +0000
X-Authority-Analysis: v=2.3 cv=Tr6Yewfh c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=QPn51b99NEKW6LTPJ7UA:9
 a=QEXdDO2ut3YA:10 a=lawkwmP8F99VxoOkiUYA:9 a=Sypht4nciLdqMSRk:21
 a=_W_S_7VecoQA:10
Message-Id: <2261a9568f445a8385c11b8eb0af02e64aacb840@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Thu, 11 Feb 2021 18:29:21 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfDw5Qpj9KHBWwswFREBmMyEjtVGk5Ba91fJSIfwdSyMebXvjVcyIDKivQKmpPjJNxnczLdYK3cGmrxeciGyzbVexuzorYuHnlK9mt2eFBv2LXSVTGONc
 F/L73xOePws1s8rjTVrmxPtah3R7l3OWNHKkZEFOq/7DKZrwvL/n9IFfg4YNZXW3roGfkIFl6Te0gQ==
Subject: [USRP-users] SWIG Error Cross-compiling gr-ettus
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
Content-Type: multipart/mixed; boundary="===============4061200182336665432=="
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

--===============4061200182336665432==
Content-Type: multipart/alternative;
 boundary="=_2bc7c136b17aee1fbb5a113082436ae6"

--=_2bc7c136b17aee1fbb5a113082436ae6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have cross-compiled UHD v3.15.0.0 and gnuradio maint-3.8 for the=0AE31=
0. When I try to setup the cross-compile of gr-ettus maint-3.8, I=0Aget=
 a series of errors related to SWIG. Any idea how to work around=0Athis?=
=0AMy cmake command is:=0Acmake=0A-DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/g=
nuradio/cmake/Toolchains/oe-sdk_cross.cmake=0A-DCMAKE_INSTALL_PREFIX=3D/=
usr ..=0AAnd here are the errors:=0A=0ACMake Error at=0A/home/labuser/rf=
noc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnurad=
io/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating generator=
 expression:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stac=
k (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9=
t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(=
SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2h=
f-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig=
_add_library) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): Error ev=
aluating generator expression:=0A $=0A Target "gnuradio::runtime_swig" n=
ot found.Call Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe=
/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/Use=
SWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sy=
sroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig=
.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=
=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_c=
ommand): Error evaluating generator expression:=0A $=0A Target "gnuradio=
::runtime_swig" not found.Call Stack (most recent=0Acall first):=0A/home=
/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/c=
make/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/la=
buser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmak=
e/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/co=
rtexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:4=
18=0A(add_custom_command): Error evaluating generator expression:=0A $=
=0A Target "gnuradio::runtime_swig" not found.Call Stack (most recent=0A=
call first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linu=
x-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_T=
O_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swi=
g/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/r=
fnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnura=
dio/GrMiscUtils.cmake:127=0A(add_dependencies): The dependency target "g=
nuradio::runtime_swig" of=0Atarget "_ettus_swig_doc_tag" does not exist.=
Call Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake=
:65=0A(GR_GEN_TARGET_DEPS)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2h=
f-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:112=0A(GR_S=
WIG_MAKE_DOCS) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/GrSwig.cmake:144=0A(target_include_directories): E=
rror evaluating generator expression:=0A $=0A Target "gnuradio::runtime_=
swig" not found.Call Stack (most recent=0Acall first): swig/CMakeLists.t=
xt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroo=
ts/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cma=
ke:144=0A(target_include_directories): Error evaluating generator expres=
sion:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (most=
 recent=0Acall first): swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake=
 Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):=
 Error evaluating generator expression:=0A $=0A Target "gnuradio::runtim=
e_swig" not found.Call Stack (most recent=0Acall first):=0A/home/labuser=
/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnu=
radio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rf=
noc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnurad=
io/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:54 (GR_SWIG=
_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2h=
f-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add=
_custom_command): Error evaluating generator expression:=0A $=0A Target=
 "gnuradio::runtime_swig" not found.Call Stack (most recent=0Acall first=
):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi=
/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLi=
sts.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/s=
ysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSW=
IG.cmake:418=0A(add_custom_command): Error evaluating generator expressi=
on:=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (most r=
ecent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_=
SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_libr=
ary) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating g=
enerator expression:=0A $=0A Target "gnuradio::runtime_swig" not found.C=
all Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cor=
texa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=
=0A(swig_add_library) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): E=
rror evaluating generator expression:=0A $=0A Target "gnuradio::runtime_=
swig" not found.Call Stack (most recent=0Acall first):=0A/home/labuser/r=
fnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnura=
dio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfno=
c/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio=
/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists.txt:54 (GR_SWIG_M=
AKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_c=
ustom_command): Error evaluating generator expression:=0A $=0A Target "g=
nuradio::runtime_swig" not found.Call Stack (most recent=0Acall first):=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A=
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/=
lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library) swig/CMakeLists=
.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labuser/rfnoc/oe/sysr=
oots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.=
cmake:418=0A(add_custom_command): Error evaluating generator expression:=
=0A $=0A Target "gnuradio::runtime_swig" not found.Call Stack (most rece=
nt=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOU=
RCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-li=
nux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library=
) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0ACMake Error at=0A/home/labu=
ser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/=
gnuradio/UseSWIG.cmake:418=0A(add_custom_command): Error evaluating gene=
rator expression:=0A $=0A Target "gnuradio::runtime_swig" not found.Call=
 Stack (most recent=0Acall first):=0A/home/labuser/rfnoc/oe/sysroots/cor=
texa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:55=
9=0A(SWIG_ADD_SOURCE_TO_MODULE)=0A/home/labuser/rfnoc/oe/sysroots/cortex=
a9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A=
(swig_add_library) swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=0A=0A

--=_2bc7c136b17aee1fbb5a113082436ae6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have cross-compiled UHD v3.15.0.0 and gnuradio maint-3.8 f=
or the E310. When I try to setup the cross-compile of gr-ettus maint-3.8=
, I get a series of errors related to SWIG. Any idea how to work around=
 this?<div><br></div><div>My cmake command is:<div><br></div><div>cmake=
 -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_c=
ross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr ..</div><div><br></div><div>And=
 here are the errors:<br><div><br></div><div><div>CMake Error at /home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><div>&nbsp; Err=
or evaluating generator expression:</div><div><br></div><div>&nbsp; &nbs=
p; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTO=
RIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig"=
 not found.</div><div>Call Stack (most recent call first):</div><div>&nb=
sp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/=
usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</di=
v><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</di=
v><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div>=
<div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=
 (add_custom_command):</div><div>&nbsp; Error evaluating generator expre=
ssion:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnura=
dio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div>=
<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><div>Call St=
ack (most recent call first):</div><div>&nbsp; /home/labuser/rfnoc/oe/sy=
sroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWI=
G.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuser/r=
fnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnura=
dio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMakeLists=
.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake Err=
or at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleab=
i/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><d=
iv>&nbsp; Error evaluating generator expression:</div><div><br></div><di=
v>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_IN=
CLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::=
runtime_swig" not found.</div><div>Call Stack (most recent call first):<=
/div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-li=
nux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_T=
O_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add=
_library)</div><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><d=
iv><br></div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/s=
ysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSW=
IG.cmake:418 (add_custom_command):</div><div>&nbsp; Error evaluating gen=
erator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PR=
OPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><di=
v><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=
<div>Call Stack (most recent call first):</div><div>&nbsp; /home/labuser=
/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnu=
radio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /ho=
me/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib=
/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swi=
g/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><d=
iv>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-musleabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127 (add_dependen=
cies):</div><div>&nbsp; The dependency target "gnuradio::runtime_swig" o=
f target</div><div>&nbsp; "_ettus_swig_doc_tag" does not exist.</div><di=
v>Call Stack (most recent call first):</div><div>&nbsp; /home/labuser/rf=
noc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnurad=
io/GrSwig.cmake:65 (GR_GEN_TARGET_DEPS)</div><div>&nbsp; /home/labuser/r=
fnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnura=
dio/GrSwig.cmake:112 (GR_SWIG_MAKE_DOCS)</div><div>&nbsp; swig/CMakeList=
s.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake Er=
ror at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-muslea=
bi/usr/lib/cmake/gnuradio/GrSwig.cmake:144 (target_include_directories):=
</div><div>&nbsp; Error evaluating generator expression:</div><div><br><=
/div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTE=
RFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gn=
uradio::runtime_swig" not found.</div><div>Call Stack (most recent call=
 first):</div><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><di=
v><br></div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sy=
sroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig=
.cmake:144 (target_include_directories):</div><div>&nbsp; Error evaluati=
ng generator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TAR=
GET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</d=
iv><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.=
</div><div>Call Stack (most recent call first):</div><div>&nbsp; swig/CM=
akeLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>C=
Make Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):=
</div><div>&nbsp; Error evaluating generator expression:</div><div><br><=
/div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTE=
RFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gn=
uradio::runtime_swig" not found.</div><div>Call Stack (most recent call=
 first):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-n=
eon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD=
_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=
 (swig_add_library)</div><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAK=
E)</div><div><br></div><div><br></div><div>CMake Error at /home/labuser/=
rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnur=
adio/UseSWIG.cmake:418 (add_custom_command):</div><div>&nbsp; Error eval=
uating generator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt=
;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt=
;</div><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not fo=
und.</div><div>Call Stack (most recent call first):</div><div>&nbsp; /ho=
me/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib=
/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>=
&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-muslea=
bi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>=
&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><b=
r></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf=
-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_cu=
stom_command):</div><div>&nbsp; Error evaluating generator expression:</=
div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::run=
time_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nb=
sp; Target "gnuradio::runtime_swig" not found.</div><div>Call Stack (mos=
t recent call first):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/c=
ortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:=
559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/=
sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSw=
ig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMake Error at /=
home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/l=
ib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</div><div>&nbs=
p; Error evaluating generator expression:</div><div><br></div><div>&nbsp=
; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_D=
IRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnuradio::runtime=
_swig" not found.</div><div>Call Stack (most recent call first):</div><d=
iv>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODUL=
E)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_librar=
y)</div><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><div><br>=
</div><div><br></div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmak=
e:418 (add_custom_command):</div><div>&nbsp; Error evaluating generator=
 expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY=
:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br>=
</div><div>&nbsp; Target "gnuradio::runtime_swig" not found.</div><div>C=
all Stack (most recent call first):</div><div>&nbsp; /home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/=
UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake=
/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMak=
eLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></div><div>CMa=
ke Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):</=
div><div>&nbsp; Error evaluating generator expression:</div><div><br></d=
iv><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERF=
ACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp; Target "gnur=
adio::runtime_swig" not found.</div><div>Call Stack (most recent call fi=
rst):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SO=
URCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cortexa=
9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (sw=
ig_add_library)</div><div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</=
div><div><br></div><div><br></div><div>CMake Error at /home/labuser/rfno=
c/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio=
/UseSWIG.cmake:418 (add_custom_command):</div><div>&nbsp; Error evaluati=
ng generator expression:</div><div><br></div><div>&nbsp; &nbsp; $&lt;TAR=
GET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</d=
iv><div><br></div><div>&nbsp; Target "gnuradio::runtime_swig" not found.=
</div><div>Call Stack (most recent call first):</div><div>&nbsp; /home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbs=
p; /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)</div><div>&nbs=
p; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div><div><br></div><div><br></=
div><div>CMake Error at /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neo=
n-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom=
_command):</div><div>&nbsp; Error evaluating generator expression:</div>=
<div><br></div><div>&nbsp; &nbsp; $&lt;TARGET_PROPERTY:gnuradio::runtime=
_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div><div><br></div><div>&nbsp;=
 Target "gnuradio::runtime_swig" not found.</div><div>Call Stack (most r=
ecent call first):</div><div>&nbsp; /home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=
 (SWIG_ADD_SOURCE_TO_MODULE)</div><div>&nbsp; /home/labuser/rfnoc/oe/sys=
roots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.=
cmake:137 (swig_add_library)</div><div>&nbsp; swig/CMakeLists.txt:54 (GR=
_SWIG_MAKE)</div><div><br></div><div><br></div></div></div></div></body>=
</html>

--=_2bc7c136b17aee1fbb5a113082436ae6--



--===============4061200182336665432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4061200182336665432==--


