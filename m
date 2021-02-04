Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A36D30FF28
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 22:18:49 +0100 (CET)
Received: from [::1] (port=43030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7m1U-0003yQ-8A; Thu, 04 Feb 2021 16:18:44 -0500
Received: from p-impout006aa.msg.pkvw.co.charter.net ([47.43.26.137]:49101
 helo=p-impout006.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l7m1P-0003sY-SQ
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 16:18:39 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 7m0klqST3FiZV7m0klROwU; Thu, 04 Feb 2021 21:17:58 +0000
X-Authority-Analysis: v=2.3 cv=XINOtjpE c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=ayC55rCoAAAA:8 a=etiEgX_XAAAA:8 a=i_61sIWshuap2EYAifQA:9
 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=C8OKbDQ4r4POQOdTF_kA:9
 a=Drha6wBD-PZgQiLu:21 a=_W_S_7VecoQA:10 a=B_RyunTPg8udlmYm5Cu2:22
 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <f3cb42d69c7e7e98139f99203cc03c470f79c865@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Thu, 04 Feb 2021 21:17:58 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLsNK5VlA4cIzSvC9DL2EpsqP0+N0ILl+0DVnWNLJiSI4EbbdI9EHzV+x+Ax1x3fdXVCWkpZWk17epHkbvcQ5gHkvhiR2dU1+XG9K+tkYuRwUk6K97OT
 CcR3mzdfVrs8VPmclC722K9h7lsZ6MKgfZQl0D/lFjJRfS1y3ur4DGinesEpjIVI1cyZv0jt1Tw2FZZSRTgfPoo2MFhMQnL2edE=
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
Content-Type: multipart/mixed; boundary="===============0559911729623252385=="
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

--===============0559911729623252385==
Content-Type: multipart/alternative;
 boundary="=_d79ecd0d11c17a2ccc6934fe4efd6a48"

--=_d79ecd0d11c17a2ccc6934fe4efd6a48
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I can help with that. It doesn't. :-) The serial port just displays=0Aso=
me garbage characters at bootup.=0AI think I've got this figured out. I=
 went back through the=0Ainstructions, but grabbed the v3.15.0.0 tag for=
 UHD, instead. Then, I=0Adiscovered that I could get an sdimg and an SDK=
 for that version using=0Athe uhd_image_downloader tool. =0AI rebuilt th=
e 3.15 UHD and cross-compiled for arm, and I burned the=0A3.15 sdimg to=
 my SD card. Everything seems to work as expected, now.=0AStill have a w=
ays to go before my development environment is fully set=0Aup, but I thi=
nk I'm well on my way now.=0AGood luck with the move!=0AThanks,Dennis=0A=
=0A=09-----------------------------------------From: "Marcus D. Leech"=
 =0A=0ATo: dtrask1@tampabay.rr.com=0ACc: "usrp-users@lists.ettus.com"=0A=
Sent: Thursday February 4 2021 2:49:25PM=0ASubject: Re: [USRP-users] Err=
or Testing UHD Build on E310 with=0Auhd_usrp_probe=0A=0A On 02/04/2021 1=
2:12 PM, dtrask1@tampabay.rr.com wrote:=0A  Good info. Thanks. I am atte=
mpting to burn a new image to the SD=0Acard. I downloaded =0A[1]https://=
files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg=
_default-v3.14.1.1.zip=0A[2] which contains usrp_e320_fs.sdimg. Will thi=
s work to boot my e310?=0A=0A Dennis =0A  I'm going to say "almost certa=
inly YES". I haven't had a chance to=0Atry that image, and my lab is cur=
rently in a state of flux--we're=0Amoving=0A to a new location and every=
thing is in turmoil, so I can't burn that=0Aimage myself right now.=0A=
=0A=09----------------------------------------- From: "Marcus D. Leech"=
=0A To: dtrask1@tampabay.rr.com=0A Cc: "usrp-users@lists.ettus.com"=0A S=
ent: Wednesday February 3 2021 9:25:58PM=0A Subject: Re: [USRP-users] Er=
ror Testing UHD Build on E310 with=0Auhd_usrp_probe=0A=0A On 02/02/2021=
 04:20 PM, dtrask1@tampabay.rr.com wrote:=0A > From the root directory o=
f the radio, I did: find . -name=0A"ld-linux*"=0A >=0A > That command pr=
oduced no results, either.=0A >=0A > If I am following the instructions=
=0A > at  =0A[3]https://kb.ettus.com/Software_Development_on_the_E3xx_US=
RP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,=0A[4]=0A > s=
hould I expect to find this library under=0A > /home/root/newinstall/usr=
/lib? Or should it be on the image=0Ainstalled=0A > on the SD card under=
 /lib?=0A >=0A > I have followed the above instructions to the letter, e=
xcept for=0Aone=0A > change. After I cloned gr-ettus, I made sure to che=
ckout the=0Amaint-3.7=0A > branch, to match the gnuradio version. Howeve=
r, I don't believe=0Athis=0A > should have any affect on the UHD cross-c=
ompile, should it?=0A >=0A >=0A So, here is what I have on my E310:=0A=
=0A root@plood:~# find /lib -name *ld-*=0A /lib/ld-2.21.so=0A /lib/.debu=
g/ld-2.21.so=0A /lib/ld-linux-armhf.so.3=0A=0A I think your E310 filesys=
tem may not be quite correct.=0A=0A=0A=0ALinks:=0A------=0A[1]=0Ahttps:/=
/files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdim=
g_default-v3.14.1.1.zip=0A[2]=0Ahttps://files.ettus.com/binaries/cache/e=
3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip=0A[3]=0Ah=
ttps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,=0A[4]=0Ahttps://kb.ettus.com/=
Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/=
_gr-ettus_from_Source,=0A

--=_d79ecd0d11c17a2ccc6934fe4efd6a48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I can help with that. It doesn't. :-) The serial port just d=
isplays some garbage characters at bootup.<div><br></div><div>I think I'=
ve got this figured out. I went back through the instructions, but grabb=
ed the v3.15.0.0 tag for UHD, instead. Then, I discovered that I could g=
et an sdimg and an SDK for that version using the uhd_image_downloader t=
ool.&nbsp;</div><div><br></div><div>I rebuilt the 3.15 UHD and cross-com=
piled for arm, and I burned the 3.15 sdimg to my SD card. Everything see=
ms to work as expected, now.</div><div><br></div><div>Still have a ways=
 to go before my development environment is fully set up, but I think I'=
m well on my way now.</div><div><br></div><div>Good luck with the move!<=
/div><div><br></div><div>Thanks,</div><div>Dennis</div><div><br><br><div=
 class=3D"reply-new-signature"></div><p>--------------------------------=
---------</p>From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>To: dt=
rask1@tampabay.rr.com<br>Cc: "usrp-users@lists.ettus.com"<br>Sent: Thurs=
day February 4 2021 2:49:25PM<br>Subject: Re: [USRP-users] Error Testing=
 UHD Build on E310 with uhd_usrp_probe<br><br>=0A<div class=3D"moz-cite-=
prefix">On 02/04/2021 12:12 PM, <a class=3D"moz-txt-link-abbreviated">dt=
rask1@tampabay.rr.com</a>=0Awrote:<br></div>=0A<blockquote>=0AGood info.=
 Thanks. I am attempting to burn a new image to the SD=0Acard. I downloa=
ded&nbsp;<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.=
com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.=
14.1.1.zip"></a><a href=3D"https://files.ettus.com/binaries/cache/e3xx/m=
eta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip">https://files=
.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_defa=
ult-v3.14.1.1.zip</a>=0Awhich contains&nbsp;usrp_e320_fs.sdimg. Will thi=
s work to boot my=0Ae310?=0A<div><br></div>=0A<div>Dennis</div>=0A<div><=
br></div>=0A</blockquote>=0AI'm going to say "almost certainly YES".&nbs=
p; I haven't had a=0Achance to try that image, and my lab is currently i=
n a state of=0Aflux--we're moving<br>=0A&nbsp; to a new location and eve=
rything is in turmoil, so I can't=0Aburn that image myself right now.<br=
><br><br><blockquote>=0A<div>=0A<p>-------------------------------------=
----</p>=0AFrom: "Marcus D. Leech"<br>=0ATo: <a class=3D"moz-txt-link-ab=
breviated">dtrask1@tampabay.rr.com</a><br>=0ACc: <a class=3D"moz-txt-lin=
k-rfc2396E">"usrp-users@lists.ettus.com"</a><br>=0A=0ASent: Wednesday Fe=
bruary 3 2021 9:25:58PM<br>=0ASubject: Re: [USRP-users] Error Testing UH=
D Build on E310 with=0Auhd_usrp_probe<br><br>=0AOn 02/02/2021 04:20 PM,=
 <a class=3D"moz-txt-link-abbreviated">dtrask1@tampabay.rr.com</a>=0Awro=
te:<br>=0A&gt; From the root directory of the radio, I did: find . -name=
=0A"ld-linux*"<br>=0A&gt;<br>=0A&gt; That command produced no results, e=
ither.<br>=0A&gt;<br>=0A&gt; If I am following the instructions<br>=0A&g=
t; at <a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_U=
SRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,">=0A</a><a=
 href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bu=
ilding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,">https://kb.ettus.c=
om/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radi=
o_/_gr-ettus_from_Source,</a><br>=0A=0A&gt; should I expect to find this=
 library under<br>=0A&gt; /home/root/newinstall/usr/lib? Or should it be=
 on the image=0Ainstalled<br>=0A&gt; on the SD card under /lib?<br>=0A&g=
t;<br>=0A&gt; I have followed the above instructions to the letter, exce=
pt=0Afor one<br>=0A&gt; change. After I cloned gr-ettus, I made sure to=
 checkout the=0Amaint-3.7<br>=0A&gt; branch, to match the gnuradio versi=
on. However, I don't=0Abelieve this<br>=0A&gt; should have any affect on=
 the UHD cross-compile, should=0Ait?<br>=0A&gt;<br>=0A&gt;<br>=0ASo, her=
e is what I have on my E310:<br><br>=0Aroot@plood:~# find /lib -name *ld=
-*<br>=0A/lib/ld-2.21.so<br>=0A/lib/.debug/ld-2.21.so<br>=0A/lib/ld-linu=
x-armhf.so.3<br><br>=0AI think your E310 filesystem may not be quite cor=
rect.<br><br></div>=0A</blockquote>=0A<br></patchvonbraun@gmail.com></di=
v></body></html>

--=_d79ecd0d11c17a2ccc6934fe4efd6a48--



--===============0559911729623252385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0559911729623252385==--


