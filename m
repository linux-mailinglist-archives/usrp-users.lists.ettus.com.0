Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14058318D9C
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:52:02 +0100 (CET)
Received: from [::1] (port=56774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADK4-0005hp-7P; Thu, 11 Feb 2021 09:52:00 -0500
Received: from p-impout008aa.msg.pkvw.co.charter.net ([47.43.26.139]:52744
 helo=p-impout008.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lADJz-0005bP-KO
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 09:51:55 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id ADJKlylJfWkb1ADJKlmr7Q; Thu, 11 Feb 2021 14:51:14 +0000
X-Authority-Analysis: v=2.3 cv=X+cs11be c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=etiEgX_XAAAA:8 a=sw_E6Jdw8phHQVNGTsEA:9
 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=dw-SW8yTHuOe1iy_A44A:9
 a=p2RfLE_XOuEKFtUd:21 a=_W_S_7VecoQA:10 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <f7c20efdbf1bf6500ee98fb3bf1052cafb46989c@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'Rob Kossler'" <rkossler@nd.edu>,
 "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Thu, 11 Feb 2021 14:51:14 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfKKfK10U50YsdgW+81RyAnK3GOl+EoCdpWFef5jnz4o/uH2/uoQByEd4gi3PtivLIOdpZnnGqNJpF5FREIa5htP9Oznm082WcFuSvDvfZNe+1DWHee4g
 n7Th7gUy/wDWY4zQqWFBG3gcrLAqJjsGf2eKqLRo7jPJaMYF2ALNPaGY233ueiuPh7oblQrCBjofX3DCMgbSAuWD9+q4KbtZhoGZbvtiO3ORgxm4DO1um50M
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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
Content-Type: multipart/mixed; boundary="===============3028067204498179955=="
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

--===============3028067204498179955==
Content-Type: multipart/alternative;
 boundary="=_c711dd375764336069b10765d6ecc1dd"

--=_c711dd375764336069b10765d6ecc1dd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This worked for me.=0AThank you, Rob and Marcus!=0ADennis=0A=0A=09------=
-----------------------------------From: "Marcus D. Leech" =0A=0ATo: "Ro=
b Kossler"=0ACc: "usrp-users@lists.ettus.com"=0ASent: Wednesday February=
 10 2021 10:07:27PM=0ASubject: Re: [USRP-users] E310 with v4.0.0.0 Image=
: Configure Static=0AIP=0A=0A On 02/10/2021 10:01 AM, Rob Kossler wrote:=
=0A > I don't know about the E310, but on the N310, I found files in=0A=
 > /data/network which is where I needed to make changes such as=0Athese=
.=0A > Rob=0A Indeed, just programmed a V4.0.0.0 SG1 image onto my E310,=
 and the=0A eth0.network file is in /data/network. This probably has to=
 do with=0A the fact that it's a mender-based system.=0A=0A Changed the=
 eth0.network file under /data/network, rebooted, and the=0A address is=
 statically configured as desired.=0A=0A

--=_c711dd375764336069b10765d6ecc1dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>This worked for me.<div><br></div><div>Thank you, Rob and Ma=
rcus!</div><div><br></div><div>Dennis</div><div><br><br><div class=3D"re=
ply-new-signature"></div><p>-----------------------------------------</p=
>From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>To: "Rob Kossler"<=
br>Cc: "usrp-users@lists.ettus.com"<br>Sent: Wednesday February 10 2021=
 10:07:27PM<br>Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Confi=
gure Static IP<br><br>=0AOn 02/10/2021 10:01 AM, Rob Kossler wrote:<br>=
=0A&gt; I don't know about the E310, but on the N310, I found files=0Ain=
<br>=0A&gt; /data/network which is where I needed to make changes such a=
s=0Athese.<br>=0A&gt; Rob<br>=0AIndeed, just programmed a V4.0.0.0 SG1 i=
mage onto my E310, and=0Athe<br>=0Aeth0.network file is in /data/network=
. This probably has to do=0Awith<br>=0Athe fact that it's a mender-based=
 system.<br><br>=0AChanged the eth0.network file under /data/network, re=
booted, and=0Athe<br>=0Aaddress is statically configured as desired.<br>=
<br><br></patchvonbraun@gmail.com></div></body></html>

--=_c711dd375764336069b10765d6ecc1dd--



--===============3028067204498179955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3028067204498179955==--


