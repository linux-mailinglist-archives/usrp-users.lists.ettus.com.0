Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1D9124955
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 15:21:23 +0100 (CET)
Received: from [::1] (port=36898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihaCX-0003jF-JX; Wed, 18 Dec 2019 09:21:21 -0500
Received: from mail-mw2nam10olkn2047.outbound.protection.outlook.com
 ([40.92.42.47]:6388 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1ihaCU-0003cz-7C
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 09:21:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1am8Z3ZdPre9rfy46XUOtVVp492jl8z78ATuMLdk+yTu96fnfyMvpyB3Ga75qSfxptrpCjf2TqzzafDWFonwWWzVeC9O0DDWbfN2YlhkDxAt2r3tIsfdJUDRzF/TGpj9lSfrUQFiW+gSq5k5IPGDBmnPBMDX+r/I303j0g66Qwby7KJPZVGYgJX5C2RYCqH/cNVaR67aI/02r8v7XsUx4Ci7Lo0bRG75HWb9koX/+3ODeSNcXJujFPHFxt+6hpi+4OOc5xtE2JVi68isvJaEqT1caf2chIugRe25oCZ9RidgTZIXo+4a8Wms9l0dBbOT0jin9D3WoZdm06kKHCdlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8zOxG7/frQewEjbhqktHgFW5XXwIn8Ng/2H/Y9Dg3g=;
 b=hMUtyROeR1oHT2EqnEnP3v2N8Zt5qgll0wVGlPYda950GdgTxSK0I1h5lbs28HHoTrDKDxqZd7dcFCLyREsKjSiome/LTQvVSz0mK4nBJiCg0SGHqXeZww3EBbWr5XN0XTCU/IRhBY1VH82623/W490OUkfJuhdBc951Y4iXfzaqluNp+5959J/qUjWFUjdnEhmm1YaLh2KqOGgmxrEBvq3Ig4O7fy7r2L6Tso3q4ocQAKE8eJQzqoOJ0xc1ollyW/s6DtJT7ohT/VdOOYkFAfocjIUyhpnkfqeDYCMc9yOX6Rt4OqxjzlG/4y+rIbBaSBpEvQTEdvNHVWEv5K+WbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8zOxG7/frQewEjbhqktHgFW5XXwIn8Ng/2H/Y9Dg3g=;
 b=iAUh53evwW2eJickDhYh9M7nfiSYZymfGx49LugeBZASopbd/oEj28h7iRZCfOCRdMKo058+gaaJg4XKxWOH3BEjF4UYCgb/LE1i/2xnDAj+6B5M7cS/QHsT4pOEVHS0HbpKO9yrCT4DVh2g7MCYN8JC3u888xlzzTmNX9Nb9Etki3WAA0XTukzMTTWMCkHzB2hPcC8phTxmimd5g2X7csPYQ6vmvS1aP22LucDAZ16UqsCRm/3vvFQ81BIbGK8Bc9kbK2A1WwJYvZdCXfdYq2fsQ7U21DI7AP0vs1GITMMF5dQeOygExRTMNjliCV6qAOe3CqIqmOb18QqYc4OZOg==
Received: from BN7NAM10FT028.eop-nam10.prod.protection.outlook.com
 (10.13.156.59) by BN7NAM10HT198.eop-nam10.prod.protection.outlook.com
 (10.13.157.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Wed, 18 Dec
 2019 14:20:36 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.156.56) by
 BN7NAM10FT028.mail.protection.outlook.com (10.13.156.237) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Wed, 18 Dec 2019 14:20:36 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 14:20:36 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Versions for N310
Thread-Index: AQHVsCK6zJwc/JwUtEO7wQ37U3w346e/+Iov
Date: Wed, 18 Dec 2019 14:20:36 +0000
Message-ID: <BN6PR19MB1635BAF8C16835F453E8E02BA4530@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <BN6PR19MB1635ACC0BE31FA7420204D29A45A0@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1635ACC0BE31FA7420204D29A45A0@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6D7086E70E6AC2817CC41234C7958B628F65FB1B31E733CAD200587C74280AAF;
 UpperCasedChecksum:288C7C33FB0D67F0A0D4C860B9C7C7A0E868C76710BE72CECF604E0968B4257D;
 SizeAsReceived:6900; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [RFubKX4wFZRZ+AP4/a31Ge1830cRKaWk]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: de81c2b0-96b3-4dfc-5af1-08d783c5734b
x-ms-traffictypediagnostic: BN7NAM10HT198:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ou0D8ZgaYPvAIvBk0mNs5NS9sItp1QvQnZo7VGJrD6+8n0xsXy9nSPG4e9sUOxEZYHfBLfzJVWYTQ4G+yJ270WNBr54mugVSU26HvW72gLamM+QCv2bHPVQbcKS4feBvOcEV0nh8pZWL60qQVJNF5pbcOcTgpYxiFDCfF3UXPJAFUPAnxG6ZP2ILW7iZuk0U
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: de81c2b0-96b3-4dfc-5af1-08d783c5734b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 14:20:36.1109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7NAM10HT198
Subject: Re: [USRP-users] UHD Versions for N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============6920224858062789990=="
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

--===============6920224858062789990==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635BAF8C16835F453E8E02BA4530BN6PR19MB1635namp_"

--_000_BN6PR19MB1635BAF8C16835F453E8E02BA4530BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Just to kind of close out this thread since there wasn't an answer, I ended=
 up installing the following version to a Virtualbox VM so I didn't mess up=
 my X310 environment I currently have.  The VM host version shows:

$ uhd_config_info --version
UHD 3.14.1.HEAD-0-g0347a6d8

I updated my SD card by using the "$ dd" method, then updated the image usi=
ng the Mender method.  The N310 now has:

# uhd_config_info --version
UHD 3.14.1.1-0-g0347a6d8

Seemed to get the N310 up and running, although I'm not positive that's wha=
t I really wanted yet.  I'll have additional questions on another thread--I=
 have no shortage of questions...

Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jeff S v=
ia USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, December 11, 2019 7:04 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD Versions for N310

For an X310, I am currently using:

$ uhd_config_info --version
UHD 4.0.0.rfnoc-devel-702-geec24d7b

I would like to update my N310 to the same version  as my X310 so I can use=
 it in Network mode like the X310 without having multiple versions of UHD. =
 Since I've had some version configuration issues in the past, I thought I'=
d get a jump on it and ask before trying.

Will the above version work for my N310?

Thx.
Jeff

--_000_BN6PR19MB1635BAF8C16835F453E8E02BA4530BN6PR19MB1635namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Just to kind of close out this thread since there wasn't an answer, I ended=
 up installing the following version to a Virtualbox VM so I didn't mess up=
 my X310 environment I currently have.&nbsp; The VM host version shows:<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ uhd_config_info --version</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
UHD 3.14.1.HEAD-0-g0347a6d8</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I updated my SD card by using the &quot;$ dd&quot; method, then updated the=
 image using the Mender method.&nbsp; The N310 now has:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"=
># uhd_config_info --version</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"=
>UHD 3.14.1.1-0-g0347a6d8</div>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Seemed to get the N310 up and running, although I'm not positive that's wha=
t I really wanted yet.&nbsp; I'll have additional questions on another thre=
ad--I have no shortage of questions...</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Jeff S via USRP-users &lt;u=
srp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, December 11, 2019 7:04 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] UHD Versions for N310</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
For an X310, I am currently using:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>$ uhd_config_info --version<br>
</span><span>UHD 4.0.0.rfnoc-devel-702-geec24d7b</span></div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I would like to update my N310 to the same version&nbsp; as my X310 so I ca=
n use it in Network mode like the X310 without having multiple versions of =
UHD.&nbsp; Since I've had some version configuration issues in the past, I =
thought I'd get a jump on it and ask before
 trying.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Will the above version work for my N310?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thx.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB1635BAF8C16835F453E8E02BA4530BN6PR19MB1635namp_--


--===============6920224858062789990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6920224858062789990==--

