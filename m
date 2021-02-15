Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FC931BDE2
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 16:58:57 +0100 (CET)
Received: from [::1] (port=40416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBgGz-00057W-Ue; Mon, 15 Feb 2021 10:58:53 -0500
Received: from p-impout008aa.msg.pkvw.co.charter.net ([47.43.26.139]:48374
 helo=p-impout008.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lBgGv-00053B-Oy
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 10:58:49 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id BgGGlBgzUGwBgBgGGlmI86; Mon, 15 Feb 2021 15:58:08 +0000
X-Authority-Analysis: v=2.3 cv=WOgBoUkR c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=bpm26yrvxXUA:10 a=SKcGWsc0eaYA:10 a=PtaFgD6Vd1IfQfh-Yr4A:9
 a=QEXdDO2ut3YA:10 a=cTOZlAWa9lNZyh_6PnEA:9 a=wACPkX-9mZFiNr3a:21
 a=_W_S_7VecoQA:10
Message-Id: <5298a4eb4c73412a315df20f730a8bbf8824699c@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Mon, 15 Feb 2021 15:58:08 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfPeMHwQgBeYJ86c4RWjZj8BUe6fGJKWgiBuy9L2K3GngID9lhuvLLByIafIGvSGCCriCLosHinoQmg6ZKJmlID7U+tDifrRnZ7n1i5Mvcd0xZf+bBAOF
 16MbrxNk1xjrIspYrJj8DFtx1JFaRaPq0PfVhprXIuvLR4moctPBcAi3rVhLYALdRDoe9pQofEw/iw==
Subject: [USRP-users] E310 3.15 SDK Missing local_lim.h?
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
Content-Type: multipart/mixed; boundary="===============3786437410426638609=="
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

--===============3786437410426638609==
Content-Type: multipart/alternative;
 boundary="=_5cc578440caca84a3031f4b3f5a0f01b"

--=_5cc578440caca84a3031f4b3f5a0f01b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I use IBM Rational Rhapsody for embedded software development. It=0Aincl=
udes a framework that must be cross-compiled for the target=0Aarchitectu=
re. When I attempt to cross-compile for the E310 using the=0A3.15 SDK, t=
he compile fails pretty quickly with this error:=0Amake -C oxf -f linuxo=
xf.mak CFG=3Doxf LIB_PREFIX=3Dlinux=0ACPU=3Darm-oe-linux-musleabi PATH_S=
EP=3D/ DEFAULT_CPP_FLAGS=3D"-g=0A-march=3Darmv7-a -mthumb -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9=0A-mmusl=0A--sysroot=3D/home/labuser=
/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi"=0Aallmake[1]: En=
tering directory=0A'/home/labuser/RhapsodyModels/Share_8_4_linux/LangCpp=
/oxf'arm-oe-linux-musleabi-gcc=0A-g -march=3Darmv7-a -mthumb -mfpu=3Dneo=
n -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=0A-mmusl=0A--sysroot=3D/home/labu=
ser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi=0A-I.. -I../os=
config/Linux -DUSE_IOSTREAM -c=0Alinuxos.cpplinuxos.cpp:50:10: fatal err=
or: bits/local_lim.h: No such=0Afile or directory #include  ^~~~~~~~~~~~=
~~~~~~compilation=0Aterminated.linuxoxf.mak:42: recipe for target 'linux=
os.o'=0Afailedmake[1]: *** [linuxos.o] Error 1make[1]: Leaving directory=
=0A'/home/labuser/RhapsodyModels/Share_8_4_linux/LangCpp/oxf'uhdbuild.ma=
k:20:=0Arecipe for target 'oxflibs' failedmake: *** [oxflibs] Error 2=0A=
=0ASo, it seems that the SDK is missing local_lim.h, which would normall=
y=0Abe in /usr/include/bits/. I have searched through the SDK distributi=
on=0Aand can't find it. =0AAny advice on how to resolve this?=0ADennis=
=0A

--=_5cc578440caca84a3031f4b3f5a0f01b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I use IBM Rational Rhapsody for embedded software developmen=
t. It includes a framework that must be cross-compiled for the target ar=
chitecture. When I attempt to cross-compile for the E310 using the 3.15=
 SDK, the compile fails pretty quickly with this error:<div><br></div><d=
iv><div>make -C oxf -f linuxoxf.mak CFG=3Doxf LIB_PREFIX=3Dlinux CPU=3Da=
rm-oe-linux-musleabi PATH_SEP=3D/ DEFAULT_CPP_FLAGS=3D"-g -march=3Darmv7=
-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mmusl --sy=
sroot=3D/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musle=
abi" all</div><div>make[1]: Entering directory '/home/labuser/RhapsodyMo=
dels/Share_8_4_linux/LangCpp/oxf'</div><div>arm-oe-linux-musleabi-gcc -g=
 -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a9 -mmusl --sysroot=3D/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi&nbsp; -I.. -I../osconfig/Linux -DUSE_IOSTREAM&nbsp; &=
nbsp; -c linuxos.cpp</div><div>linuxos.cpp:50:10: fatal error: bits/loca=
l_lim.h: No such file or directory</div><div>&nbsp;#include &lt;bits/loc=
al_lim.h&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~~~~~=
~~~~</div><div>compilation terminated.</div><div>linuxoxf.mak:42: recipe=
 for target 'linuxos.o' failed</div><div>make[1]: *** [linuxos.o] Error=
 1</div><div>make[1]: Leaving directory '/home/labuser/RhapsodyModels/Sh=
are_8_4_linux/LangCpp/oxf'</div><div>uhdbuild.mak:20: recipe for target=
 'oxflibs' failed</div><div>make: *** [oxflibs] Error 2</div></div><div>=
<br></div><div><br></div><div>So, it seems that the SDK is missing local=
_lim.h, which would normally be in /usr/include/bits/. I have searched t=
hrough the SDK distribution and can't find it.&nbsp;</div><div><br></div=
><div>Any advice on how to resolve this?</div><div><br></div><div>Dennis=
</div><div><br></div></body></html>

--=_5cc578440caca84a3031f4b3f5a0f01b--



--===============3786437410426638609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3786437410426638609==--


