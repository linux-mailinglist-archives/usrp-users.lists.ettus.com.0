Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1795D128ED4
	for <lists+usrp-users@lfdr.de>; Sun, 22 Dec 2019 17:16:38 +0100 (CET)
Received: from [::1] (port=55206 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ij3uH-0005UB-4k; Sun, 22 Dec 2019 11:16:37 -0500
Received: from mail-oln040092253093.outbound.protection.outlook.com
 ([40.92.253.93]:21052 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1ij3uC-0005KY-P1
 for usrp-users@lists.ettus.com; Sun, 22 Dec 2019 11:16:33 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjghjpX+yuY79FCH4Hstn0JfTyXShrVMN4LzK1Ahh6nfLInzpss41u6jOgTTaDKpV2/RM6XwDXHe4Exjtdx54KKub1RNrfT/7aeHgrCs+7UZZ5tl2tNoBybWv9HduOKyqu6VczrkeI6RAmcBVyJlcSi+1KE4FS5qb4NaO8W0DX/+ja01XnOfMBZzvDqMFa260bSapdO4aiiaGSqG5L5FLfdrkeZAyEkhfZMRLYks6l16Y/ngqvYESSosqcRaU0ex374S/gqcxiuJMdy0kRXTHFkSHlOWdh+qfgGA3diFhqPrYn4s0IJdELpCpzp4EJ81jNz0O7s5XkhrXDm3FFad9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gT84ehJpyvlIRi0719s2WZSEMbzaUx8mygv7ZkMQT70=;
 b=Gkg5yNnXvsAqDIFRfiZz3dp28SPtyQAb00FzIO5cOCJnIG3jmM4j2h4NhG9M9A1lF7diI1gIu1KXS45fO0muqkjKJI/wdXs4niyO0i1U8PDY2WXFjlklkoU5U/ODXuJEoCDGOF+mM2w+zITN7p3bhMxnWkA/2DnRkRVyzkYga71hgJUCtETDGJALOnMmVgZJTsa9IdDSlkZYuHu4lsg7S07nRB9wTsZiedQ8gue7DpEEcoPMQSCpzrxnTai5Z5YFmzEiuvlvnombU2npx/B2Grn9CxMFEoj/1Iu56V7qRAjhq3z9C4uy943iow/0gBJ2QT0HIgYCcFeVyvARD/0hJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gT84ehJpyvlIRi0719s2WZSEMbzaUx8mygv7ZkMQT70=;
 b=CGrOc8uGRdFAe5WXsh+NLjZ3LmCE1Tx7Lh4KhsJwhtLwSOu+ZfhgzrFRSnHN9esfQH/xQ+R6wRtEPzKJRZxCLwdPE/QiF9BpXhUoYayILyqOwWNZOCnEv0u/4grnwqgXoTaVmlSbhudLyvvJWz/EMdsHTfqOEBZH5MUonp0aknhaukQPStHetLvVAUeSW/ZrdHJzsAt5WsBKR1qKVOmm+UXISE2F66v+8k3NPzgcreo+XyLJkMF+6GuMk/uWWn2fKhtuyqdmZ41FqXpbJZzFm1vYS6sgBNT/Jp/3dA5u9HmWmCMrxbNuznSaaWusjJSLdCnrU8S9H+gGk0lo/2bzvA==
Received: from SG2APC01FT026.eop-APC01.prod.protection.outlook.com
 (10.152.250.60) by SG2APC01HT228.eop-APC01.prod.protection.outlook.com
 (10.152.250.233) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Sun, 22 Dec
 2019 16:15:49 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM (10.152.250.53) by
 SG2APC01FT026.mail.protection.outlook.com (10.152.250.190) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 16:15:49 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921]) by BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921%7]) with mapi id 15.20.2559.017; Sun, 22 Dec 2019
 16:15:48 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd error
Thread-Index: AQHVuOKvYn/9f3QiwES8Sbxnhcdh+g==
Date: Sun, 22 Dec 2019 16:15:48 +0000
Message-ID: <BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0684CE86F1C27859EFD020C63829A5B3A693C2A93E3FC1D5956545A51A3F5E82;
 UpperCasedChecksum:4C06FDB7F3D1B20B7E1C19329563CE6CE6C2A8B14453F59C5A8122C3CDD39C40;
 SizeAsReceived:6643; Count:42
x-tmn: [OTmk+cOX1mE/BPn4+4U4bES4QbuzcvEj]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: acd125bd-1955-48d6-b42e-08d786fa352d
x-ms-traffictypediagnostic: SG2APC01HT228:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j802vwm22zWc3PvZyoccmGk5NDBomwOKb1Iccg2oL6VRmcFAlFtijsJ2vnvv+rhYbzWhfZSHnNi2gxbQX5BhtEUAM63usA/R3bF0tCLEkCJr7ICMRVRt8x0BspWtvH64yqtexEcFlnYV7x53rTWt81fPaoMTFmspaRjcEbMrgvlIuzaRcr19rcywGb7gz9go
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: acd125bd-1955-48d6-b42e-08d786fa352d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2019 16:15:48.1862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT228
Subject: [USRP-users] uhd error
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Content-Type: multipart/mixed; boundary="===============5851688334830027829=="
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

--===============5851688334830027829==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB3944A65A50C00946F7389A26882F0BMXPR01MB3944INDP_"

--_000_BMXPR01MB3944A65A50C00946F7389A26882F0BMXPR01MB3944INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

Does anyone have a idea why the following error occurs
terminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: [0/Radio_1] sr_write() failed: Enviro=
nmentError: IOError: Block ctrl (CE_02_Port_50) no response packet - Assert=
ionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D lon=
g unsigned int]
  at /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_iface.cpp:142

Aborted (core dumped)

I am using uhd-3.14.1.1 with NI USRP 2955.

Regards
Snehasish

--_000_BMXPR01MB3944A65A50C00946F7389A26882F0BMXPR01MB3944INDP_
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
<div style=3D"font-family: Calibri,Helvetica,sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello <br>
<br>
Does anyone have a idea why the following error occurs<br>
<span>terminate called after throwing an instance of 'uhd::io_error'<br>
</span>
<div>&nbsp; what(): &nbsp;EnvironmentError: IOError: [0/Radio_1] sr_write()=
 failed: EnvironmentError: IOError: Block ctrl (CE_02_Port_50) no response =
packet - AssertionError: bool(buff)<br>
</div>
<div>&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bo=
ol, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; =
uint64_t =3D long unsigned int]<br>
</div>
<div>&nbsp; at /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_ifa=
ce.cpp:142<br>
</div>
<div><br>
</div>
<div>Aborted (core dumped)<br>
</div>
<span></span><br>
I am using uhd-3.14.1.1 with NI USRP 2955.<br>
<br>
Regards<br>
Snehasish<br>
</div>
</body>
</html>

--_000_BMXPR01MB3944A65A50C00946F7389A26882F0BMXPR01MB3944INDP_--


--===============5851688334830027829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5851688334830027829==--

