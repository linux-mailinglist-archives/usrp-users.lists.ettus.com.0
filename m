Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D93F3799
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2019 19:51:57 +0100 (CET)
Received: from [::1] (port=46020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSmsr-0004mr-Mu; Thu, 07 Nov 2019 13:51:53 -0500
Received: from secgw1.intern.tuwien.ac.at ([128.130.30.71]:34834)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel.neunteufel@tuwien.ac.at>)
 id 1iSmso-0004fz-3y
 for usrp-users@lists.ettus.com; Thu, 07 Nov 2019 13:51:50 -0500
Received: from totemomail (localhost [127.0.0.1])
 by secgw1.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id xA7Ip80V012452
 for <usrp-users@lists.ettus.com>; Thu, 7 Nov 2019 19:51:08 +0100
Received: from localhost ([127.0.0.1])
 by totemomail (Totemo SMTP Server) with SMTP ID 956
 for <usrp-users@lists.ettus.com>;
 Thu, 7 Nov 2019 19:51:08 +0100 (CET)
Received: from edge13b.intern.tuwien.ac.at (edge13b.intern.tuwien.ac.at
 [IPv6:2001:629:1005:30::67])
 by secgw1.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id xA7Ip8e1012439
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK)
 for <usrp-users@lists.ettus.com>; Thu, 7 Nov 2019 19:51:08 +0100
Received: from mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) by
 edge13b.intern.tuwien.ac.at (2001:629:1005:30::67) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 7 Nov 2019 19:51:08 +0100
Received: from mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) by
 mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 7 Nov 2019 19:51:08 +0100
Received: from mbx13b.intern.tuwien.ac.at ([fe80::f0e9:7c2:196e:5846]) by
 mbx13b.intern.tuwien.ac.at ([fe80::f0e9:7c2:196e:5846%20]) with mapi id
 15.00.1497.000; Thu, 7 Nov 2019 19:51:07 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: TwinRX RX1 LO1 occasionally at wrong frequency
Thread-Index: AQHVlZw0sw0BkcMIjkeMj62SWLx4Nw==
Date: Thu, 7 Nov 2019 18:51:07 +0000
Message-ID: <1573152667302.33446@tuwien.ac.at>
Accept-Language: en-US, de-AT
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [128.130.30.11]
MIME-Version: 1.0
Subject: [USRP-users] TwinRX RX1 LO1 occasionally at wrong frequency
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Neunteufel, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Neunteufel, Daniel" <daniel.neunteufel@tuwien.ac.at>
Content-Type: multipart/mixed; boundary="===============8272165680778766727=="
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

--===============8272165680778766727==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_157315266730233446tuwienacat_"

--_000_157315266730233446tuwienacat_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm using two X310, each with two TwinRX daughterboards, connected to a hos=
t via two 10Gbit SFP+ links per X310. The host machine runs UHD 3.14.1.1 us=
ing DPDK on ubuntu 18.04.

When applying a CW (2.44 GHz) signal at the input of all 8 ports and runnin=
g rx_samples_to_file for all channels, occasionally, the obtained IQ data d=
oes not contain the applied signal. This happens randomly, in about 50 % of=
 the cases, only on the TwinRX RX1 channels and only on three out of four T=
winRX daughterboards.

I tried to debug the problem and it turns out that in those cases the LO1 o=
f the affected channels cannot be observed at 3.69 GHz as expected, but rat=
her around 3.25 GHz.
The UHD API, however, claims that everything is in best order when reading =
back the LO values. Inserting delays after setting the frequency values as =
recommended does not help, either.
All LO sources are set to "internal".

Any ideas what could be the issue here? Thanks!

Regards,
Daniel



--_000_157315266730233446tuwienacat_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} @font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri",sans-serif}=0A=
a:link, span.MsoHyperlink=0A=
	{color:#0563C1;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:#954F72;=0A=
	text-decoration:underline}=0A=
span.EmailStyle17=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:windowtext}=0A=
span.SpellE=0A=
	{}=0A=
.MsoChpDefault=0A=
	{font-family:"Calibri",sans-serif}=0A=
@page WordSection1=0A=
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}=0A=
div.WordSection1=0A=
	{}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">Hi all,</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">I&#8217;m using two =
X310, each with two
<span class=3D"SpellE">TwinRX</span> daughterboards, connected to a host vi=
a two 10Gbit SFP&#43; links per X310. The host machine runs UHD 3.14.1.1 us=
ing DPDK on<span style=3D"" lang=3D"EN-US">&nbsp;ubuntu 18.04.</span><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">When applying a CW (=
<span style=3D"" lang=3D"EN-US">2.44 GHz</span>) signal at the input of all=
 8 ports and running rx_samples_to_file for all channels, occasionally, the=
 obtained IQ data does not contain the applied
 signal. This happens randomly, in about 50 % of the cases, only<span style=
=3D"" lang=3D"EN-US">&nbsp;on the TwinRX RX1 channels&nbsp;and only&nbsp;on=
 three out of four TwinRX daughterboards.</span><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">I tried to debug the=
 problem and it turns out that in&nbsp;those cases the LO1 of the affected =
channels cannot be observed at 3.69 GHz as expected, but rather around 3.25=
 GHz.<br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">The UHD API, however=
, claims that everything is in best order when reading back the LO values. =
Inserting delays after setting the frequency values as recommended does not=
 help, either.<br>
All LO sources are set to &quot;internal&quot;.<br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">Any&nbsp;ideas what&=
nbsp;could be the issue here? Thanks!<br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span style=3D"" lang=3D"EN-US">Regards,<br>
Daniel <br>
<br>
</span></p>
<p class=3D"MsoNormal"><br>
<span style=3D"" lang=3D"EN-US"></span></p>
</div>
</body>
</html>

--_000_157315266730233446tuwienacat_--


--===============8272165680778766727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8272165680778766727==--

