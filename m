Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 433FB28D16E
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 17:43:40 +0200 (CEST)
Received: from [::1] (port=48414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSMSg-0000v4-5O; Tue, 13 Oct 2020 11:43:38 -0400
Received: from mail-dm6nam12olkn2103.outbound.protection.outlook.com
 ([40.92.22.103]:51040 helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1kSMSc-0000nz-36
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 11:43:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZlE1cw/UfJS1YOTPUrMCbpOynclsEjsX3yFZVwi5jC+1TVG8aLGfLNyxB3a6f0Z2ac3JIUkGkmCyCd+n/37C4GpHc/dmoFtTnpIE/Y9qU1Nveft10Z8RPREWIN4/lck8vZMXtQUH0gHV3gc23B1SiMSek27SGK4dj1WaOvv2mfuEQqQzQ/heX71MMiG31cLRO4GD9ItgySMqvzwd8ON2AdKEIFHamNfgjyoa2lpPLioj8h6VJcBqVxydvzUmM1MSNvWknsFpba6sFyQZV3Xo5K4XY+dcpHyzJTQ1vTZV3EREC6ZhVmw+dAcy7jI/VYNLku8QIMwT+qp+9dw7eWtig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdOzi9gHrMJCUFBECoIS2V2TFMmO6kExysZhf74cJQg=;
 b=bPIcOCUY3Dp1k3sp014OzFcuPGxS8joE9SclFkz7Kh+YaVT6r9ywAYArlDKNOWfwG0psQi1DpoFuYWI9C0H0AhTy5tK6cpvxKasjmKnYlr+niRBEYcswpr8CbtBZo6PwcD4pIiQJMx0RhiKJ+CQ53InLmhKYfkxieWxOauOQs1TekJbxqxr9RM6tUYMWSDypCghjrTlZnf0Y2+ULNnmA0h6pFvBcAJ4SyXTjrYP39/4s+6/N2PfSHQnhk3ICbO/o3/XE4v4v6dL4d1ZKn25bx0iqkdiCgrNI04yJFTWiHr4ViQWEW9ZqKiDDycCRR6fbi4TpcP4oiZXRJUZzJviiwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdOzi9gHrMJCUFBECoIS2V2TFMmO6kExysZhf74cJQg=;
 b=mSmFOTwR5ZfKi46bgS3CibY+BTZa0Ue+aPZXYqHWXbD1C0dDcQyf7zHrMznaly8Rk5bYY89LSYDCXvkmDjQ8pFy6slspVWayuhmKtVxDkVANnQO5J4N8mAjHnf2sHShCioUf3AQCbgt3cZHsLpz0nztF9DSydf1xF2VWeHNllFgKPEMiwHoQ4X8JWDY13HwKV2A9PtY9XelS8VJvqRGb2OdHRuzi/UV0H3L32FkGEXjKhufwLnPWL+IoLkZzstBN6ywabGmDSdkuL6Jxr8vq9DyB4oQflJYI6jAvZQXeSGfbL5cwMBWU3QCqBGDjkoBHUtXiuCn3UISZ9B6E/id7kg==
Received: from DM6NAM12FT015.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4c) by
 DM6NAM12HT057.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::227)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.11; Tue, 13 Oct
 2020 15:42:52 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 (2a01:111:e400:fc64::40) by DM6NAM12FT015.mail.protection.outlook.com
 (2a01:111:e400:fc64::387) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.11 via Frontend
 Transport; Tue, 13 Oct 2020 15:42:52 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::21a1:f9df:d858:f054]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::21a1:f9df:d858:f054%6]) with mapi id 15.20.3455.031; Tue, 13 Oct 2020
 15:42:52 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: SFP+ to RJ45 Adapter
Thread-Index: AQHWoXbiuspza82mlEynHjCHwQQQug==
Date: Tue, 13 Oct 2020 15:42:52 +0000
Message-ID: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:792482F66B4A3579F47C997EE7EE09A4A28165D8A05270B7049A8E18B58E93DE;
 UpperCasedChecksum:2FD52360A3A27AB985BC50BF29184FF830D55DAA9CD9417C475F0C3801D3C29F;
 SizeAsReceived:6581; Count:41
x-tmn: [f2OlAtQsxDP1+wvxGoSJvnyXtoDaedkF]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 2e7c45a1-a7a3-48c4-c2fe-08d86f8ea57b
x-ms-traffictypediagnostic: DM6NAM12HT057:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ArrfhlUQaChS2KexCXJ9xDrNy9M6/ud5/vAgevNzG3PjxsTr9NBeaISBju1OcbzjBIsOWAVujSAjceCLxtcGsZXFmW7I1qqywjkyKiuIbCAUykp4qCv6GVWimquX0FdzDrkbHNhxvyqKUsdGeTQOt8DV6tUDdJv/gJjPtHEJr7eCbQTkzZUf9MX5mmyZq2j8gd2hbFXK3EgzGiJwGLx0Nw==
x-ms-exchange-antispam-messagedata: KwhIL1+ABdgIaizbFUcEZhv8GpY4xyF6cHjUJNT0oNjlVkEauPXZBPcbfkYXSYg+5TDj23HWp2qGLAatAspe/48u0LTGoPsO6PrI5mfflGdEw48ylQhGb2i+XQeafzwifY3x8EFv40f99Pq18EetOA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT015.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e7c45a1-a7a3-48c4-c2fe-08d86f8ea57b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 15:42:52.4646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT057
Subject: [USRP-users] SFP+ to RJ45 Adapter
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============4747799861653998884=="
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

--===============4747799861653998884==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB26682C0D9A7271A482546057A4040DM6PR19MB2668namp_"

--_000_DM6PR19MB26682C0D9A7271A482546057A4040DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.

Has anyone done this?  And, is there a particular SFP+ to RJ45 which works =
well?  All I see on the Ettus website is the recommendation for using the t=
erminated cable and PC network adapter.

Thanks,
Jeff

--_000_DM6PR19MB26682C0D9A7271A482546057A4040DM6PR19MB2668namp_
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
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Has anyone done this?&nbsp; And, is there a particular SFP+ to RJ45 which w=
orks well?&nbsp; All I see on the Ettus website is the recommendation for u=
sing the terminated cable and PC network adapter.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,<br>
Jeff<br>
</div>
</body>
</html>

--_000_DM6PR19MB26682C0D9A7271A482546057A4040DM6PR19MB2668namp_--


--===============4747799861653998884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4747799861653998884==--

