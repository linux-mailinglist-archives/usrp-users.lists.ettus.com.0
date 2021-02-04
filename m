Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CB730F93C
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 18:13:23 +0100 (CET)
Received: from [::1] (port=41364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7iBx-0004eH-15; Thu, 04 Feb 2021 12:13:17 -0500
Received: from p-impout003aa.msg.pkvw.co.charter.net ([47.43.26.134]:56378
 helo=p-impout003.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l7iBs-0004V0-AI
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 12:13:12 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 7iBClNcZV5iY27iBDlUqaC; Thu, 04 Feb 2021 17:12:31 +0000
X-Authority-Analysis: v=2.3 cv=Tr6Yewfh c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=bpm26yrvxXUA:10 a=etiEgX_XAAAA:8 a=ayC55rCoAAAA:8 a=TLaYecCx2tqwX8Y-vN4A:9
 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=mr7xOIcHwEndssnmRPEA:9
 a=QKf3Jb_yvfdXrL7w:21 a=_W_S_7VecoQA:10 a=MLbIUA-Bjd6y1alW9qBG:22
 a=B_RyunTPg8udlmYm5Cu2:22
Message-Id: <c8e4246ff9817392e080758fedf65d9d342dff3a@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Thu, 04 Feb 2021 17:12:30 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfM73y/P/g97cGHCkwqynLc0ZM5kEIWj8QKLCM99ApIM7lJL4Bjuz5vRV8YI+hYrt/mMesP2/K/XdOp80ogulyBKyyeO8F2IbDopoKx4Qfu+u9Ov/lMgY
 ghAaR9WnQx/WQ+d4izloFeFTOGTmprcLOTn99Qk4I3B58hBTeKJtvYXFlPYijCy7DKMueiYWoK9OJdXeVJ+zvH3u5ehKxqRXELo=
Subject: Re: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe
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
Content-Type: multipart/mixed; boundary="===============7596535235958641505=="
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

--===============7596535235958641505==
Content-Type: multipart/alternative;
 boundary="=_8d3aa71e7309574d0a314c4d6713bdf0"

--=_8d3aa71e7309574d0a314c4d6713bdf0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good info. Thanks. I am attempting to burn a new image to the SD card.=
=0AI downloaded=0Ahttps://files.ettus.com/binaries/cache/e3xx/meta-ettus=
-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip=0Awhich contains usrp_e=
320_fs.sdimg. Will this work to boot my e310?=0ADennis=0A=0A=09---------=
--------------------------------From: "Marcus D. Leech" =0A=0ATo: dtrask=
1@tampabay.rr.com=0ACc: "usrp-users@lists.ettus.com"=0ASent: Wednesday F=
ebruary 3 2021 9:25:58PM=0ASubject: Re: [USRP-users] Error Testing UHD B=
uild on E310 with=0Auhd_usrp_probe=0A=0A On 02/02/2021 04:20 PM, dtrask1=
@tampabay.rr.com wrote:=0A > From the root directory of the radio, I did=
: find . -name=0A"ld-linux*"=0A >=0A > That command produced no results,=
 either.=0A >=0A > If I am following the instructions=0A > at=0Ahttps://=
kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_=
/_GNU_Radio_/_gr-ettus_from_Source,=0A[1]=0A > should I expect to find t=
his library under=0A > /home/root/newinstall/usr/lib? Or should it be on=
 the image=0Ainstalled=0A > on the SD card under /lib?=0A >=0A > I have=
 followed the above instructions to the letter, except for=0Aone=0A > ch=
ange. After I cloned gr-ettus, I made sure to checkout the=0Amaint-3.7=
=0A > branch, to match the gnuradio version. However, I don't believe=0A=
this=0A > should have any affect on the UHD cross-compile, should it?=0A=
 >=0A >=0A So, here is what I have on my E310:=0A=0A root@plood:~# find=
 /lib -name *ld-*=0A /lib/ld-2.21.so=0A /lib/.debug/ld-2.21.so=0A /lib/l=
d-linux-armhf.so.3=0A=0A I think your E310 filesystem may not be quite c=
orrect.=0A=0A=0A=0ALinks:=0A------=0A[1]=0Ahttps://kb.ettus.com/Software=
_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettu=
s_from_Source,=0A

--=_8d3aa71e7309574d0a314c4d6713bdf0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Good info. Thanks. I am attempting to burn a new image to th=
e SD card. I downloaded&nbsp;https://files.ettus.com/binaries/cache/e3xx=
/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip which contai=
ns&nbsp;usrp_e320_fs.sdimg. Will this work to boot my e310?<div><br></di=
v><div>Dennis</div><div><br><div class=3D"reply-new-signature"></div><p>=
-----------------------------------------</p>From: "Marcus D. Leech" <pa=
tchvonbraun@gmail.com><br>To: dtrask1@tampabay.rr.com<br>Cc: "usrp-users=
@lists.ettus.com"<br>Sent: Wednesday February 3 2021 9:25:58PM<br>Subjec=
t: Re: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe<=
br><br>=0AOn 02/02/2021 04:20 PM, dtrask1@tampabay.rr.com wrote:<br>=0A&=
gt; From the root directory of the radio, I did: find . -name=0A"ld-linu=
x*"<br>=0A&gt;<br>=0A&gt; That command produced no results, either.<br>=
=0A&gt;<br>=0A&gt; If I am following the instructions<br>=0A&gt; at <a h=
ref=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buil=
ding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,">https://kb.ettus.com=
/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_=
/_gr-ettus_from_Source,</a><br>=0A=0A&gt; should I expect to find this l=
ibrary under<br>=0A&gt; /home/root/newinstall/usr/lib? Or should it be o=
n the image=0Ainstalled<br>=0A&gt; on the SD card under /lib?<br>=0A&gt;=
<br>=0A&gt; I have followed the above instructions to the letter, except=
=0Afor one<br>=0A&gt; change. After I cloned gr-ettus, I made sure to ch=
eckout the=0Amaint-3.7<br>=0A&gt; branch, to match the gnuradio version.=
 However, I don't=0Abelieve this<br>=0A&gt; should have any affect on th=
e UHD cross-compile, should=0Ait?<br>=0A&gt;<br>=0A&gt;<br>=0ASo, here i=
s what I have on my E310:<br><br>=0Aroot@plood:~# find /lib -name *ld-*<=
br>=0A/lib/ld-2.21.so<br>=0A/lib/.debug/ld-2.21.so<br>=0A/lib/ld-linux-a=
rmhf.so.3<br><br>=0AI think your E310 filesystem may not be quite correc=
t.<br><br></patchvonbraun@gmail.com></div></body></html>

--=_8d3aa71e7309574d0a314c4d6713bdf0--



--===============7596535235958641505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7596535235958641505==--


