Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B8631C25A
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 20:19:08 +0100 (CET)
Received: from [::1] (port=42128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBjOe-0003mZ-FZ; Mon, 15 Feb 2021 14:19:00 -0500
Received: from p-impout003aa.msg.pkvw.co.charter.net ([47.43.26.134]:51819
 helo=p-impout003.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lBjOa-0003gb-Qp
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 14:18:56 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id BjNulSlPpGLZxBjNvlqDd7; Mon, 15 Feb 2021 19:18:15 +0000
X-Authority-Analysis: v=2.3 cv=FpV7AFjq c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=bpm26yrvxXUA:10 a=SKcGWsc0eaYA:10 a=etiEgX_XAAAA:8 a=NO4Ppze8k8aMEuIVmo8A:9
 a=QEXdDO2ut3YA:10 a=-JltqBCUGcOeWMmo-cQA:9 a=YrdnUwY2NZNmA_ZT:21
 a=_W_S_7VecoQA:10 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <48fd5ce556a9a9e5fa4f0af103e9292523ea9652@webmail>
To: "'dtrask1@tampabay.rr.com'" <dtrask1@tampabay.rr.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Mon, 15 Feb 2021 19:18:14 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfFgRru9R8+2F602YXrHcIiRVS63SSlMW0xpJ9OFT9xsSaU1DY/P2cdGHWtE/Gh4Nn/QrtHb0hWoi6yUmjpAOHC+1fm/8PXQqahCVNoFlBnykV/XXY+UX
 RCcD9CU/8jD8gSS4le/peiHFVYUznDRRZFmrnRigTvKzjZ+jlmbSiDWPSnZCmcd6Om8uc8DVk4ze52z1EPK+5iG8FTJcZ3mEl6Q=
Subject: Re: [USRP-users] E310 3.15 SDK Missing local_lim.h?
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
Content-Type: multipart/mixed; boundary="===============1522063068596629614=="
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

--===============1522063068596629614==
Content-Type: multipart/alternative;
 boundary="=_b3bc5b0fb8f18441e16aa1df68a510c0"

--=_b3bc5b0fb8f18441e16aa1df68a510c0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I was able to get around this by replacing...=0A#include =0Awith=0A#incl=
ude #include =0AAlso, I had to set a compile-time flag to disable suppor=
t of recursive=0Amutexes in the Rhapsody framework (-DOM_NO_RECURSIVE_MU=
TEX_SUPPORT),=0Aas PTHREAD_MUTEX_RECURSIVE_NP seems to not be defined in=
 the SDK.=0ADennis=0A=0A=09-----------------------------------------From=
: "Dennis Trask via=0AUSRP-users" =0ATo: "usrp-users@lists.ettus.com"=0A=
Cc: =0ASent: Monday February 15 2021 10:58:53AM=0ASubject: [USRP-users]=
 E310 3.15 SDK Missing local_lim.h?=0A=0A I use IBM Rational Rhapsody fo=
r embedded software development. It=0Aincludes a framework that must be=
 cross-compiled for the target=0Aarchitecture. When I attempt to cross-c=
ompile for the E310 using the=0A3.15 SDK, the compile fails pretty quick=
ly with this error: =0A  make -C oxf -f linuxoxf.mak CFG=3Doxf LIB_PREFI=
X=3Dlinux=0ACPU=3Darm-oe-linux-musleabi PATH_SEP=3D/ DEFAULT_CPP_FLAGS=
=3D"-g=0A-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9=0A-mmusl=0A--sysroot=3D/home/labuser/rfnoc/oe/sysroots/cort=
exa9t2hf-neon-oe-linux-musleabi"=0Aall make[1]: Entering directory=0A'/h=
ome/labuser/RhapsodyModels/Share_8_4_linux/LangCpp/oxf'=0Aarm-oe-linux-m=
usleabi-gcc -g -march=3Darmv7-a -mthumb -mfpu=3Dneon=0A-mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a9 -mmusl=0A--sysroot=3D/home/labuser/rfnoc/oe/sysroots=
/cortexa9t2hf-neon-oe-linux-musleabi=0A-I.. -I../osconfig/Linux -DUSE_IO=
STREAM -c linuxos.cpp=0Alinuxos.cpp:50:10: fatal error: bits/local_lim.h=
: No such file or=0Adirectory  #include   ^~~~~~~~~~~~~~~~~~ compilation=
 terminated.=0Alinuxoxf.mak:42: recipe for target 'linuxos.o' failed mak=
e[1]: ***=0A[linuxos.o] Error 1 make[1]: Leaving directory=0A'/home/labu=
ser/RhapsodyModels/Share_8_4_linux/LangCpp/oxf'=0Auhdbuild.mak:20: recip=
e for target 'oxflibs' failed make: ***=0A[oxflibs] Error 2  =0A=0A So,=
 it seems that the SDK is missing local_lim.h, which would=0Anormally be=
 in /usr/include/bits/. I have searched through the SDK=0Adistribution a=
nd can't find it.  =0A Any advice on how to resolve this? =0A Dennis =0A

--=_b3bc5b0fb8f18441e16aa1df68a510c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I was able to get around this by replacing...<div><br></div>=
<div>#include &lt;bits/local_lim.h&gt;</div><div><br></div><div>with</di=
v><div><br></div><div>#include &lt;linux/limits.h&gt;</div><div>#include=
 &lt;limits.h&gt;</div><div><br></div><div>Also, I had to set a compile-=
time flag to disable support of recursive mutexes in the Rhapsody framew=
ork (-DOM_NO_RECURSIVE_MUTEX_SUPPORT), as&nbsp;PTHREAD_MUTEX_RECURSIVE_N=
P seems to not be defined in the SDK.</div><div><br></div><div>Dennis</d=
iv><div><br><div><br><div class=3D"reply-new-signature"></div><p>-------=
----------------------------------</p>From: "Dennis Trask via USRP-users=
" <usrp-users@lists.ettus.com><br>To: "usrp-users@lists.ettus.com"<br>Cc=
: <br>Sent: Monday February 15 2021 10:58:53AM<br>Subject: [USRP-users]=
 E310 3.15 SDK Missing local_lim.h?<br><br>=0AI use IBM Rational Rhapsod=
y for embedded software development. It=0Aincludes a framework that must=
 be cross-compiled for the target=0Aarchitecture. When I attempt to cros=
s-compile for the E310 using=0Athe 3.15 SDK, the compile fails pretty qu=
ickly with this error:=0A<div><br></div>=0A<div>=0A<div>make -C oxf -f l=
inuxoxf.mak CFG=3Doxf LIB_PREFIX=3Dlinux=0ACPU=3Darm-oe-linux-musleabi P=
ATH_SEP=3D/ DEFAULT_CPP_FLAGS=3D"-g=0A-march=3Darmv7-a -mthumb -mfpu=3Dn=
eon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=0A-mmusl=0A--sysroot=3D/home/la=
buser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi"=0Aall</div>=
=0A<div>make[1]: Entering directory=0A'/home/labuser/RhapsodyModels/Shar=
e_8_4_linux/LangCpp/oxf'</div>=0A<div>arm-oe-linux-musleabi-gcc -g -marc=
h=3Darmv7-a -mthumb -mfpu=3Dneon=0A-mfloat-abi=3Dhard -mcpu=3Dcortex-a9=
 -mmusl=0A--sysroot=3D/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi&nbsp;=0A-I.. -I../osconfig/Linux -DUSE_IOSTREAM&nbsp;=
 &nbsp; -c=0Alinuxos.cpp</div>=0A<div>linuxos.cpp:50:10: fatal error: bi=
ts/local_lim.h: No such file=0Aor directory</div>=0A<div>&nbsp;#include=
 &lt;bits/local_lim.h&gt;</div>=0A<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; ^~~~~~~~~~~~~~~~~~</div>=0A<div>compilation terminated.</div>=0A<div>l=
inuxoxf.mak:42: recipe for target 'linuxos.o' failed</div>=0A<div>make[1=
]: *** [linuxos.o] Error 1</div>=0A<div>make[1]: Leaving directory=0A'/h=
ome/labuser/RhapsodyModels/Share_8_4_linux/LangCpp/oxf'</div>=0A<div>uhd=
build.mak:20: recipe for target 'oxflibs' failed</div>=0A<div>make: ***=
 [oxflibs] Error 2</div>=0A</div>=0A<div><br></div>=0A<div><br></div>=0A=
<div>So, it seems that the SDK is missing local_lim.h, which would=0Anor=
mally be in /usr/include/bits/. I have searched through the SDK=0Adistri=
bution and can't find it.&nbsp;</div>=0A<div><br></div>=0A<div>Any advic=
e on how to resolve this?</div>=0A<div><br></div>=0A<div>Dennis</div>=0A=
<div><br></div>=0A</usrp-users@lists.ettus.com></div></div></body></html=
>

--=_b3bc5b0fb8f18441e16aa1df68a510c0--



--===============1522063068596629614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1522063068596629614==--


