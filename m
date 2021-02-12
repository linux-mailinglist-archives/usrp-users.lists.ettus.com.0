Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EBE31A0F8
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 15:56:53 +0100 (CET)
Received: from [::1] (port=39116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAZsJ-0001gS-LL; Fri, 12 Feb 2021 09:56:51 -0500
Received: from p-impout009aa.msg.pkvw.co.charter.net ([47.43.26.140]:40351
 helo=p-impout009.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lAZsF-0001Ye-CK
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 09:56:47 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id AZrZldbYHgxBoAZrZlRWB8; Fri, 12 Feb 2021 14:56:06 +0000
X-Authority-Analysis: v=2.3 cv=eddDgIMH c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=bpm26yrvxXUA:10 a=SKcGWsc0eaYA:10 a=etiEgX_XAAAA:8 a=Q-I6I9WScHed_Y8vVa4A:9
 a=QEXdDO2ut3YA:10 a=gdipQ6WrspL8naMSbgEA:9 a=-CkR5hrem4RBPopP:21
 a=_W_S_7VecoQA:10 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <68e236b30d38c258e0912a9a1e5fd0d736081ada@webmail>
To: "'Mike'" <mikerd1@verizon.net>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Fri, 12 Feb 2021 14:56:05 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfM813itOH41/A3VFiggu+Lntvjcx3XlqmcCt76oEd874ROeHLqt6ig9iP8aFjJOSeDbGW6qF9N2hEqbRMXOwuc+SFrsqssTsSsOrz1s3mWw/GnUb/5XN
 gaztyxx7R/C2AlzKpTsAd/zP+rff459zW4DyU3Ac16ytbdomPv5viIIU6iV1lpgxlUC1nptedevAkqTI9VvrERY69X7lmaLDG/s=
Subject: Re: [USRP-users] SWIG Error Cross-compiling gr-ettus
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
Content-Type: multipart/mixed; boundary="===============9109421320585647131=="
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

--===============9109421320585647131==
Content-Type: multipart/alternative;
 boundary="=_56524934c7cce7f97d2a68bb7b2dfc34"

--=_56524934c7cce7f97d2a68bb7b2dfc34
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, Mike. I will try reverting to gnuradio 3.7. =0AIf I am using gnu=
radio maint-3.7, should I also use gr-ettus=0Amaint-3.7?=0ADennis=0A=0A=
=09----------------------------------------- From: "Mike via USRP-users"=
=0A To: usrp-users@lists.ettus.com=0A Cc:=0A Sent: Friday February 12 20=
21 8:10:23AM=0A Subject: Re: [USRP-users] SWIG Error Cross-compiling gr-=
ettus=0A=0A=09Dennis, =0A=0A=09I'm certainly not the expert on this but=
 I think that UHD 3.15 is for=0Agnuradio 3.7 and UHD 4.x is for gnuradio=
 3.8. Also, it seems like you=0Awant to upgrade from Ubuntu 18.04LTS to=
 Ubuntu 20 when moving to gr=0A3.8 because of the migration to python3.=
 For now, that's why I'm still=0Aat UHD 3.15 and gr 3.7 (still running U=
buntu 18.04).=0A=0A=09That might be over simplifying it but I think that=
 is the general=0Aidea. =0A=0A=09Mike=0A On 2/11/21 1:29 PM, Dennis Tras=
k via USRP-users wrote:=0A I have cross-compiled UHD v3.15.0.0 and gnura=
dio maint-3.8 for the=0AE310. When I try to setup the cross-compile of g=
r-ettus maint-3.8, I=0Aget a series of errors related to SWIG. Any idea=
 how to work around=0Athis? =0A My cmake command is: =0A cmake=0A-DCMAKE=
_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cma=
ke=0A-DCMAKE_INSTALL_PREFIX=3D/usr .. =0A And here are the errors:=0A=0A=
  CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_co=
mmand):  Error evaluating generator expression: =0A  $ =0A  Target "gnur=
adio::runtime_swig" not found. Call Stack (most recent=0Acall first):=
 =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/=
usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=
 =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/=
usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)  swig/CMake=
Lists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc/=
oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/U=
seSWIG.cmake:418=0A(add_custom_command):  Error evaluating generator exp=
ression: =0A  $ =0A  Target "gnuradio::runtime_swig" not found. Call Sta=
ck (most recent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/cortex=
a9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=
=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortex=
a9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A=
(swig_add_library)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): =
 Error evaluating generator expression: =0A  $ =0A  Target "gnuradio::ru=
ntime_swig" not found. Call Stack (most recent=0Acall first): =0A/home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake=
/gnuradio/GrSwig.cmake:137=0A(swig_add_library)  swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:418=0A(add_custom_command):  Error evaluating generator expression: =0A=
  $ =0A  Target "gnuradio::runtime_swig" not found. Call Stack (most rec=
ent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_S=
OURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_libr=
ary)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/=
cmake/gnuradio/GrMiscUtils.cmake:127=0A(add_dependencies):  The dependen=
cy target "gnuradio::runtime_swig" of=0Atarget  "_ettus_swig_doc_tag" do=
es not exist. Call Stack (most recent=0Acall first): =0A/home/labuser/rf=
noc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnurad=
io/GrSwig.cmake:65=0A(GR_GEN_TARGET_DEPS) =0A/home/labuser/rfnoc/oe/sysr=
oots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.c=
make:112=0A(GR_SWIG_MAKE_DOCS)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=
 =0A=0A CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144=0A(target_i=
nclude_directories):  Error evaluating generator expression: =0A  $ =0A=
  Target "gnuradio::runtime_swig" not found. Call Stack (most recent=0Ac=
all first):  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/GrSwig.cmake:144=0A(target_include_directories): =
 Error evaluating generator expression: =0A  $ =0A  Target "gnuradio::ru=
ntime_swig" not found. Call Stack (most recent=0Acall first):  swig/CMak=
eLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/=
UseSWIG.cmake:418=0A(add_custom_command):  Error evaluating generator ex=
pression: =0A  $ =0A  Target "gnuradio::runtime_swig" not found. Call St=
ack (most recent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=
=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortex=
a9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A=
(swig_add_library)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): =
 Error evaluating generator expression: =0A  $ =0A  Target "gnuradio::ru=
ntime_swig" not found. Call Stack (most recent=0Acall first): =0A/home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake=
/gnuradio/GrSwig.cmake:137=0A(swig_add_library)  swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:418=0A(add_custom_command):  Error evaluating generator expression: =0A=
  $ =0A  Target "gnuradio::runtime_swig" not found. Call Stack (most rec=
ent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_S=
OURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_libr=
ary)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/hom=
e/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/=
cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):  Error evaluati=
ng generator expression: =0A  $ =0A  Target "gnuradio::runtime_swig" not=
 found. Call Stack (most recent=0Acall first): =0A/home/labuser/rfnoc/oe=
/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/Use=
SWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/s=
ysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwi=
g.cmake:137=0A(swig_add_library)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)=
 =0A=0A CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_cus=
tom_command):  Error evaluating generator expression: =0A  $ =0A  Target=
 "gnuradio::runtime_swig" not found. Call Stack (most recent=0Acall firs=
t): =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-muslea=
bi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE=
) =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi=
/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)  swig/CMak=
eLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc=
/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/=
UseSWIG.cmake:418=0A(add_custom_command):  Error evaluating generator ex=
pression: =0A  $ =0A  Target "gnuradio::runtime_swig" not found. Call St=
ack (most recent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=
=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortex=
a9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A=
(swig_add_library)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A CMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command): =
 Error evaluating generator expression: =0A  $ =0A  Target "gnuradio::ru=
ntime_swig" not found. Call Stack (most recent=0Acall first): =0A/home/l=
abuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cma=
ke/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE) =0A/home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake=
/gnuradio/GrSwig.cmake:137=0A(swig_add_library)  swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE) =0A=0A CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:418=0A(add_custom_command):  Error evaluating generator expression: =0A=
  $ =0A  Target "gnuradio::runtime_swig" not found. Call Stack (most rec=
ent=0Acall first): =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_S=
OURCE_TO_MODULE) =0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_libr=
ary)  swig/CMakeLists.txt:54 (GR_SWIG_MAKE) =0A=0A _____________________=
__________________________=0A USRP-users mailing list=0A "mailto:USRP-us=
ers@lists.ettus.com">USRP-users@lists.ettus.com=0A "http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com">=0A[1] [2] target=3D=0A=
 "_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com=0A[3]=0A =0A=0ALinks:=0A------=0A[1] http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com=0A[2] http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com=0A[3] http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com=0A

--=_56524934c7cce7f97d2a68bb7b2dfc34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks, Mike. I will try reverting to gnuradio 3.7.&nbsp;<di=
v><br></div><div>If I am using gnuradio maint-3.7, should I also use gr-=
ettus maint-3.7?<div><br></div><div>Dennis</div><div><br><br><div class=
=3D"reply-new-signature"></div>=0A<p>-----------------------------------=
------</p>=0AFrom: "Mike via USRP-users"<br>=0ATo: usrp-users@lists.ettu=
s.com<br>=0ACc:<br>=0ASent: Friday February 12 2021 8:10:23AM<br>=0ASubj=
ect: Re: [USRP-users] SWIG Error Cross-compiling gr-ettus<br><br><p>Denn=
is,</p>=0A<p>I'm certainly not the expert on this but I think that UHD 3=
.15=0Ais for gnuradio&nbsp; 3.7 and UHD 4.x is for gnuradio 3.8.&nbsp;=
=0AAlso, it seems like you want to upgrade from Ubuntu 18.04LTS to=0AUbu=
ntu 20 when moving to gr 3.8 because of the migration to=0Apython3.&nbsp=
; For now, that's why I'm still at UHD 3.15 and gr 3.7=0A(still running=
 Ubuntu 18.04).<br></p>=0A<p>That might be over simplifying it but I thi=
nk that is the=0Ageneral idea.</p>=0A<p>Mike<br></p>=0A<div class=3D"moz=
-cite-prefix">On 2/11/21 1:29 PM, Dennis Trask via=0AUSRP-users wrote:<b=
r></div>=0A<blockquote>I have cross-compiled UHD v3.15.0.0 and gnuradio=
=0Amaint-3.8 for the E310. When I try to setup the cross-compile of=0Agr=
-ettus maint-3.8, I get a series of errors related to SWIG. Any=0Aidea h=
ow to work around this?=0A<div><br></div>=0A<div>My cmake command is:=0A=
<div><br></div>=0A<div>cmake=0A-DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnur=
adio/cmake/Toolchains/oe-sdk_cross.cmake=0A-DCMAKE_INSTALL_PREFIX=3D/usr=
 ..</div>=0A<div><br></div>=0A<div>And here are the errors:<br><div><br>=
</div>=0A<div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/c=
ortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:=
418=0A(add_custom_command):</div>=0A<div>&nbsp; Error evaluating generat=
or expression:</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGE=
T_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div=
>=0A<div><br></div>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not fo=
und.</div>=0A<div>Call Stack (most recent call first):</div>=0A<div>&nbs=
p;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi=
/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)<=
/div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_li=
brary)</div>=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=
=0A<div><br></div>=0A<div><br></div>=0A<div>CMake Error at=0A/home/labus=
er/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/g=
nuradio/UseSWIG.cmake:418=0A(add_custom_command):</div>=0A<div>&nbsp; Er=
ror evaluating generator expression:</div>=0A<div><br></div>=0A<div>&nbs=
p; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUD=
E_DIRECTORIES&gt;</div>=0A<div><br></div>=0A<div>&nbsp; Target "gnuradio=
::runtime_swig" not found.</div>=0A<div>Call Stack (most recent call fir=
st):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_=
ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysro=
ots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cm=
ake:137=0A(swig_add_library)</div>=0A<div>&nbsp; swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<div>CMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):</=
div>=0A<div>&nbsp; Error evaluating generator expression:</div>=0A<div><=
br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_=
swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></div>=0A<div>&n=
bsp; Target "gnuradio::runtime_swig" not found.</div>=0A<div>Call Stack=
 (most recent call first):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/=
sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseS=
WIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/=
labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cm=
ake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</div>=0A<div>&nbsp; s=
wig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br>=
</div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t=
2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(a=
dd_custom_command):</div>=0A<div>&nbsp; Error evaluating generator expre=
ssion:</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPER=
TY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div=
><br></div>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</di=
v>=0A<div>Call Stack (most recent call first):</div>=0A<div>&nbsp;=0A/ho=
me/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib=
/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A=
<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</=
div>=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><b=
r></div>=0A<div><br></div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/o=
e/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/Gr=
MiscUtils.cmake:127=0A(add_dependencies):</div>=0A<div>&nbsp; The depend=
ency target "gnuradio::runtime_swig" of=0Atarget</div>=0A<div>&nbsp; "_e=
ttus_swig_doc_tag" does not exist.</div>=0A<div>Call Stack (most recent=
 call first):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:65=
=0A(GR_GEN_TARGET_DEPS)</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sys=
roots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.=
cmake:112=0A(GR_SWIG_MAKE_DOCS)</div>=0A<div>&nbsp; swig/CMakeLists.txt:=
54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<div>CMake=
 Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144=0A(target_include_direct=
ories):</div>=0A<div>&nbsp; Error evaluating generator expression:</div>=
=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio:=
:runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></div>=
=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=0A<div>C=
all Stack (most recent call first):</div>=0A<div>&nbsp; swig/CMakeLists.=
txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<div>C=
Make Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144=0A(target_include_di=
rectories):</div>=0A<div>&nbsp; Error evaluating generator expression:</=
div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnura=
dio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></d=
iv>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=0A<di=
v>Call Stack (most recent call first):</div>=0A<div>&nbsp; swig/CMakeLis=
ts.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<di=
v>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_co=
mmand):</div>=0A<div>&nbsp; Error evaluating generator expression:</div>=
=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio:=
:runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></div>=
=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=0A<div>C=
all Stack (most recent call first):</div>=0A<div>&nbsp;=0A/home/labuser/=
rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnur=
adio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</div>=0A<div=
>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A=
<div><br></div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/=
cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake=
:418=0A(add_custom_command):</div>=0A<div>&nbsp; Error evaluating genera=
tor expression:</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARG=
ET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</di=
v>=0A<div><br></div>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not f=
ound.</div>=0A<div>Call Stack (most recent call first):</div>=0A<div>&nb=
sp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleab=
i/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)=
</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_l=
ibrary)</div>=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=
=0A<div><br></div>=0A<div><br></div>=0A<div>CMake Error at=0A/home/labus=
er/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/g=
nuradio/UseSWIG.cmake:418=0A(add_custom_command):</div>=0A<div>&nbsp; Er=
ror evaluating generator expression:</div>=0A<div><br></div>=0A<div>&nbs=
p; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUD=
E_DIRECTORIES&gt;</div>=0A<div><br></div>=0A<div>&nbsp; Target "gnuradio=
::runtime_swig" not found.</div>=0A<div>Call Stack (most recent call fir=
st):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-=
neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_=
ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysro=
ots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cm=
ake:137=0A(swig_add_library)</div>=0A<div>&nbsp; swig/CMakeLists.txt:54=
 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<div>CMake E=
rror at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-mus=
leabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):</=
div>=0A<div>&nbsp; Error evaluating generator expression:</div>=0A<div><=
br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_=
swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></div>=0A<div>&n=
bsp; Target "gnuradio::runtime_swig" not found.</div>=0A<div>Call Stack=
 (most recent call first):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/=
sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseS=
WIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/=
labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cm=
ake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</div>=0A<div>&nbsp; s=
wig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br>=
</div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t=
2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(a=
dd_custom_command):</div>=0A<div>&nbsp; Error evaluating generator expre=
ssion:</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPER=
TY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div=
><br></div>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</di=
v>=0A<div>Call Stack (most recent call first):</div>=0A<div>&nbsp;=0A/ho=
me/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib=
/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A=
<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux=
-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</=
div>=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><b=
r></div>=0A<div><br></div>=0A<div>CMake Error at=0A/home/labuser/rfnoc/o=
e/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/Us=
eSWIG.cmake:418=0A(add_custom_command):</div>=0A<div>&nbsp; Error evalua=
ting generator expression:</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=
=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTO=
RIES&gt;</div>=0A<div><br></div>=0A<div>&nbsp; Target "gnuradio::runtime=
_swig" not found.</div>=0A<div>Call Stack (most recent call first):</div=
>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURC=
E_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=
=0A(swig_add_library)</div>=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWI=
G_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=0A<div>CMake Error at=
=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/u=
sr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_custom_command):</div>=0A=
<div>&nbsp; Error evaluating generator expression:</div>=0A<div><br></di=
v>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,IN=
TERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br></div>=0A<div>&nbsp; Ta=
rget "gnuradio::runtime_swig" not found.</div>=0A<div>Call Stack (most r=
ecent call first):</div>=0A<div>&nbsp;=0A/home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmak=
e:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A<div>&nbsp;=0A/home/labuser/=
rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnur=
adio/GrSwig.cmake:137=0A(swig_add_library)</div>=0A<div>&nbsp; swig/CMak=
eLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></div>=0A<div><br></div>=
=0A<div>CMake Error at=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418=0A(add_cus=
tom_command):</div>=0A<div>&nbsp; Error evaluating generator expression:=
</div>=0A<div><br></div>=0A<div>&nbsp; &nbsp;=0A$&lt;TARGET_PROPERTY:gnu=
radio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>=0A<div><br><=
/div>=0A<div>&nbsp; Target "gnuradio::runtime_swig" not found.</div>=0A<=
div>Call Stack (most recent call first):</div>=0A<div>&nbsp;=0A/home/lab=
user/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake=
/gnuradio/UseSWIG.cmake:559=0A(SWIG_ADD_SOURCE_TO_MODULE)</div>=0A<div>&=
nbsp;=0A/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musle=
abi/usr/lib/cmake/gnuradio/GrSwig.cmake:137=0A(swig_add_library)</div>=
=0A<div>&nbsp; swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>=0A<div><br></=
div>=0A<div><br></div>=0A</div>=0A</div>=0A</div>=0A<br><br>=0A_________=
______________________________________<br>=0AUSRP-users mailing list<br>=
<a class=3D"moz-txt-link-abbreviated" href=3D""></a>=0A"mailto:USRP-user=
s@lists.ettus.com"&gt;USRP-users@lists.ettus.com<br><a class=3D"moz-txt-=
link-freetext" href=3D""></a> "<a href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com"&gt;</a><a href=3D"http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com"></a>=0Atarget=3D<br>=0A"=
_blank"&gt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com</a><br></blockquote>=0A</div></div></body></html>

--=_56524934c7cce7f97d2a68bb7b2dfc34--



--===============9109421320585647131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9109421320585647131==--


