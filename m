Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A8C298265
	for <lists+usrp-users@lfdr.de>; Sun, 25 Oct 2020 16:51:27 +0100 (CET)
Received: from [::1] (port=59284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kWiIj-0004My-La; Sun, 25 Oct 2020 11:51:21 -0400
Received: from mail-oln040092010074.outbound.protection.outlook.com
 ([40.92.10.74]:5444 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <itchangeworld@hotmail.com>)
 id 1kWiIf-0004Hh-KT
 for usrp-users@lists.ettus.com; Sun, 25 Oct 2020 11:51:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NnfK1YhMb7FKGRuDKyaQB1BvVkbdL6lLTpMStDkJpKARH3qWZAy3AXR5Vt2iHdBOS5RaGHpjFkXp4Eyh4VRPEQmG09HbdxkDk6SBk/J92j7cWLY4zKY0Gre88Ui1ENAUDbqjzYdm51zZIGiUoGLXUYFhkEv3/xNFhpMrDeR6XZgZyQUfpFWbllTRkZnYIc9i0xLmaTPgxlYJ4QHMpzPks2WI1HBwIgE0UwuCrc+ldGRQ/fyzNxC0w6BcEjNuvrULBrk7lVeTiI+0mf3JV9wAEetwNUtQ78qUrVfWvxYdpOWxworQ9/QwgdaMymTX6/IfPjrJIwkiNGYEVTyCXPjSJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eMJeiHO58vt2S38csU0/MKiEwnc6Ixbg1BZjGQFP4A=;
 b=KxWcHmKqZJV8Yyia1JdwTCHziunOjbnOtAQ56nO+x3ZEqCBIcu7xTsjZgzV107Qj7ow7E+MyUYiL9dB468WHqJXFoAOFyjKN/EEUG7N6WEeYOdo5GX0somm2SLDhjpQtyHkydOQo9t5DwOXSIhfwaBhJyGK6Lw7B0QzOzjbA0E1DXPHfENI8aQwS4Xxyu2YPvuH3DWcMF7HMf80jhKG1epGHlYLQu5PspCWXl5cY2B/qmJ68PI1CUIswRTNM3s/O+9MnrKcw3Z/oMXE4ipuV7kGWv2EvDBghIsEkAIrNZWxGCynasJDO5qqL9wn1yHWGcBsjW+MFVF/SKk2xdL4XKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eMJeiHO58vt2S38csU0/MKiEwnc6Ixbg1BZjGQFP4A=;
 b=q/axKhszS5HJnnhPYnaKsSSQ5sLXVwFP8AIeLnLsSFDI/q4lCkkBUjmrN17rPrZemxBII5JzEDEQrIWhfHZGJhFCimeGTFhFjxoMfjoaumhOSGnswKpRlFwrn+GTsfOEq5yxgJX1AT54wzB8qPmpLAqnBjzGGOx22pTX3Ctnb+IeuOmAwbApSQEaAuoXFMTC554mXbPpLUJbnJ3WzteyCZYRRpKOs0gstiFKF7lzG5LQUaLXBcjDg0GickwQ1p0tpxEkI7s+JUVWxILnK9sKGh7gH0sJ0Kch0DYcopJeLvX33s7b4bUHPLc7BYjLf9bKiZp7Ak34gHarWRqtQ4yaXQ==
Received: from DM6NAM04FT055.eop-NAM04.prod.protection.outlook.com
 (2a01:111:e400:7ea3::41) by
 DM6NAM04HT228.eop-NAM04.prod.protection.outlook.com (2a01:111:e400:7ea3::430)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.21; Sun, 25 Oct
 2020 15:50:35 +0000
Received: from BYAPR01MB4375.prod.exchangelabs.com (2a01:111:e400:7ea3::40) by
 DM6NAM04FT055.mail.protection.outlook.com (2a01:111:e400:7ea3::102)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.21 via Frontend
 Transport; Sun, 25 Oct 2020 15:50:35 +0000
Received: from BYAPR01MB4375.prod.exchangelabs.com
 ([fe80::283b:b6f1:9e86:1fed]) by BYAPR01MB4375.prod.exchangelabs.com
 ([fe80::283b:b6f1:9e86:1fed%3]) with mapi id 15.20.3499.018; Sun, 25 Oct 2020
 15:50:35 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC: Radio doesnot work in Tx Mode for E310
Thread-Index: AQHWqt/jmMPrwy/aO02zcXaqULkx1A==
Date: Sun, 25 Oct 2020 15:50:35 +0000
Message-ID: <BYAPR01MB437580416D38F27E8CF70672B6180@BYAPR01MB4375.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F9847BF9842CB91B0165DCBA81D94CD4D798995144DDC914A8281030B5AC0CFB;
 UpperCasedChecksum:92F67923328618542ABF4377DB8ED42CC464BDDA387AD1B8A227B1FAF7E1AAD3;
 SizeAsReceived:6660; Count:41
x-tmn: [xag5MtnyYsUVOEcodH5qpKb9qt2Gc3lF]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f742f894-d52c-4a9a-78cf-08d878fdb69a
x-ms-traffictypediagnostic: DM6NAM04HT228:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9AMYjX0bcxCjYb/ac7eZAgwU+Z7TVpFsvvqdOsmiaK1bQid8tOzrGbgal/AYVGjSWFY7SMEMYxuZs93O2849lIia4QGAl3REAWEDOdkx2pP/2O0T21+xXpzYx8ynT37XHjJVRvxvYItbRROVmDV3gJfI7JBDJUkFYURO0KeVCpqx9lSBdYZyzY8RiQWLYW2plY9gQQ4aOa17cakAbszK2apSDlTDeZ9WQV3W2fUPxfsRvdP26e7A5PNQDBkt3Q83
x-ms-exchange-antispam-messagedata: VboddckXvbpXyLz6UXKKYu7VvWfcM2Hf5O+3dvA5b9A9xLcMVWpaMMK7cNfiZ/odZgchMw9pFCTHW8fIAVtq+uOpuleVfAGJP4J9RG1wZwQiLBahru7t+YcTgAZD3b2VQRFx9D9e2D0bM6xzx5MMFA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM04FT055.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f742f894-d52c-4a9a-78cf-08d878fdb69a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2020 15:50:35.3174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM04HT228
Subject: [USRP-users] RFNOC: Radio doesnot work in Tx Mode for E310
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
From: itchangeworld--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "itchangeworld@hotmail.com" <itchangeworld@hotmail.com>
Content-Type: multipart/mixed; boundary="===============6688802273086633081=="
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

--===============6688802273086633081==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BYAPR01MB437580416D38F27E8CF70672B6180BYAPR01MB4375prod_"

--_000_BYAPR01MB437580416D38F27E8CF70672B6180BYAPR01MB4375prod_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCklzIHRoZXJlIGFueWJvZHkga25vdyBob3cgdG8gbWFrZSB0aGUgUkZOT0M6UmFk
aW8gbW9kdWxlIHByb3Blcmx5IHdvcmsgaW4gIFRYIG1vZGUgd2l0aCBnci1ldHR1cyBmb3IgYSBF
MzEwIHRlcm1pbmFsPw0KDQpJIGhhdmUgdHJpZWQgYWxsIHRoZSByZWxhdGVkIGV4YW1wbGUgZmxv
d2dyYXBoIGFuZCBtYWRlIHNvbWUgbW9kaWZpY2F0aW9ucywgaW5jbHVkaW5nIGFsdGVybmF0aW5n
IHRoZSBzb3VyY2UgZnJvbSBhbmFsb2c6c2lnbmFsIHNvdXJjZSB0byBSRk5PQzpTaWdHZW4sIHcv
byBGSUZPLCB3L28gRFVDLCBldGMuIEkgYWxzbyBtYWRlIHRoZSBtb2RpZmljYXRpb24gYWNjb3Jk
aW5nIHRvIGh0dHBzOi8vY29ydmlkLmlvLzIwMTcvMDQvMjIvc3R1cGlkLXJmbm9jLXRyaWNrcy1s
b29wYmFjay8uICBUaGUgVFggbGlnaHQgaW5kaWNhdG9yIHN0aWxsIGtlZXBzIGRhcmsuDQoNClRo
ZSBleGFtcGxlIGZvc3Bob3Igd29ya3MgcHJvcGVybHksIHNvIHRoYXQgUkZOT0M6IFJhZGlvIGlz
IE9LIGluIHRoZSBSWCBNb2RlLg0KDQpNeSBjb25maWd1cmF0aW9ucyBhcmUgYXMgZm9sbG93cy4g
RTMxMCBpcyB1cC10by1kYXRlLiBVSEQgdmVyc2lvbiBpcyAzLjE0LjEgYW5kIHRoZSBPUyBpcyBV
YnVudHUgMTguMDQuDQoNCkFueSBzdWdnZXN0aW9ucyB3aWxsIGJlIGFwcHJlY2lhdGUuDQoNCkph
c29uIFN1ZW4NCg0K

--_000_BYAPR01MB437580416D38F27E8CF70672B6180BYAPR01MB4375prod_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">Hello,
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">Is there anyb=
ody know how to make the RFNOC:Radio module properly work in&nbsp; TX mode =
with gr-ettus for a E310 terminal?
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">I have tried =
all the related example flowgraph and made some modifications, including al=
ternating the source from analog:signal
 source to RFNOC:SigGen, w/o FIFO, w/o DUC, etc. I also made the modificati=
on according to
<a href=3D"https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/"><spa=
n style=3D"color:blue">https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loo=
pback/</span></a>.&nbsp; The TX light indicator still keeps dark.&nbsp;
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">The example f=
osphor works properly, so that RFNOC: Radio is OK in the RX Mode.
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">My configurat=
ions are as follows. E310 is up-to-date. UHD version is 3.14.1 and the OS i=
s Ubuntu 18.04.<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">Any suggestio=
ns will be appreciate.
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0cm 0cm 0.0001pt; text-align: justi=
fy; font-size: 10.5pt; font-family: =B5=C8=CF=DF;text-align:left;mso-pagina=
tion:widow-orphan" align=3D"left">
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
mso-fareast-font-family:=0A=
=CB=CE=CC=E5;color:black;mso-font-kerning:0pt" lang=3D"EN-US">Jason Suen<o:=
p>&nbsp;</o:p></span></p>
<br>
</body>
</html>

--_000_BYAPR01MB437580416D38F27E8CF70672B6180BYAPR01MB4375prod_--


--===============6688802273086633081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6688802273086633081==--

