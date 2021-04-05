Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A639E35420F
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 14:40:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79B6A383D7D
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 08:40:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="GH66mPXV";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254072.outbound.protection.outlook.com [40.92.254.72])
	by mm2.emwd.com (Postfix) with ESMTPS id 77F2C383D07
	for <usrp-users@lists.ettus.com>; Mon,  5 Apr 2021 08:39:42 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJ6lPl762hKlU/1nAdthN39ramaNUSxXBfjN8Yhq/fUkeNKgg3h3kuci9xXYpOINt5yVD7ci8qUCAIOREyHpIPjCOrQ/5VCHid6enxC2vbIKXP0jiAx0Q91GN4+RJSuID8o0L3neFAmMO90irTXNNZp/WA9My0sp2iL7Pr9yJMj5ig6ElhptFU6727b6dwncfxoPPALsz+2WUMsECCM2825OZDc5aXqMSZUVK8mdcMwvBaKs1goeFcUJYxq5Uj8p/qq17lYBCWkCAsXL2x5Nc9Gozuy6Ucpu10BOFaOxscQo9kMc1D+ELc4qQ1wSaBuXpzPaCXu3sBgd36h8JQjOhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j8OywZHftUp1koBXp6fpXNsrrAmszWpf0KT/8Paxa+Q=;
 b=OMSjIOjirOGYOe72azfgunJw4GE533xXwANRYiMlq1F1NPCqG7u8jlls2wirYCvjV9ZQNinXjh4knT09/Wo4Qow0dG8yBvrJ+De9QO9zxoEkMs0kEXGvDMORt9CEE5aJzqr8sraTd3fYWpNbuyWW6wWKWTz71Yo98g6hbo9FjxhhaTZXdvk1tX/2ofWXMRVJDEeKd7un1S6i5hjznHU7nEHl3KBFimJKD5zZ5HtSMcT0zWnM2GluoMHb5zObyeaHx+xriL77Zaimu1UYHFhxxdeuidBz1K5lnhwGOglFN41T+F9L2ohVihPFxnlDQDs8CCmpkil3OEQgdXlfyVpyEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j8OywZHftUp1koBXp6fpXNsrrAmszWpf0KT/8Paxa+Q=;
 b=GH66mPXVcJGaBLFVkhKv3n3puGyh1UY4lOsfBCPTFRxsNwFzspkIDoZ1fnJG7221kaHYkk02hKen047GhhVs1IphG+X3I6B8H8rHSA6ptFF9aDk4roFROlLScWL1qdB02QUoGlT+apGT7lWnfmURGHCp0t43EGA6GAQaLXLiQvIq0RA9lSe8iEzCnkSlrHpzR6UJIAA9VytxBK1+v+v45QvmA4XPR6SSPe8vTvWGXDVQ61vAo0MG1u2q1hke/sZ//y+AMIpUswqc0t4Q6cag1TM6GsAAdxExSijopxG3x1aSChsivOmRTCSMQVUsJ5lGvmPnyuYsb+rILuKDbsT8Qw==
Received: from SG2APC01FT033.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::46) by
 SG2APC01HT019.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::314)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Mon, 5 Apr
 2021 12:39:39 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM (10.152.250.55) by
 SG2APC01FT033.mail.protection.outlook.com (10.152.250.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.28 via Frontend Transport; Mon, 5 Apr 2021 12:39:39 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1de6:5d4d:36ac:2b7a]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1de6:5d4d:36ac:2b7a%6]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 12:39:38 +0000
From: Snehasish Kar <snehasish.cse@LIVE.COM>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: troubleshooting  pcie link card
Thread-Index: AQHXKhhm39HytzrBgUyTFcVgPeL4cQ==
Date: Mon, 5 Apr 2021 12:39:38 +0000
Message-ID: 
 <BMXPR01MB2469029ADD6C27D6096B9D5988779@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:23B2CE5A1B5FB6F93EFEF52DED8CF4F768403957F522AAB792DC362E9C680C46;UpperCasedChecksum:6A3B3E00608B0DCFEC8B00700C7CF02415A5EE5914EC6317BF7C892D3A6A3C74;SizeAsReceived:6615;Count:41
x-tmn: [zB4UH3pFWmglcpNlmQwoiUSSNs9rUhI6]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 0fd32256-d17e-4907-06a0-08d8f82fe083
x-ms-traffictypediagnostic: SG2APC01HT019:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CAyxsh9dedGTHhi+8NtcNgKagE0BGJMCVFs5XASJUSL3HTj/qZ8MFyNaKMYBybkPKnfO5wLjvWs2A5nUdUQiPNddAupGZc7zdEibFGDlrU3HBRdCMwUpagaLPK6icjyWtrZ6x7oMT4OyNOx46rSJaUdzrnsPBeZrtA4UqQ4PAH8FTfs2SgPWW5rr4+oHtLZ+SLHfEDOBuLrJeuB6ozxWZHfHTTor0Cu2DoPVw68+7dU2qh1fsOztocxZMIsNIwDCX7zF2xD86Z6sPuYwf2lbR+jL/ULmFFLfzrPoHG/3iv8JHzgT6SMGH2z//WxXDcEyniS+tKLHA3seZi7es8zpW8/kYtIplpNEvljUH7JUfMrd8kmOG8stCsnozjSaEYupQxwZ3bYtFYFoLmGn0ZOCIA==
x-ms-exchange-antispam-messagedata: 
 nw0qCRCRXyrQSbDAG48/aVBNpUWehm81cp8XV42whU82X6dNcF6LkngxivGf1DPQvrvFH1x34iTVxbP223s4WRK2YoiZyOz4hH5CYRmjKvgMMUN0oe49J/JIbkJ7jHXd6EuERRjQg3Bwnz0d2s8Hvw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT033.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fd32256-d17e-4907-06a0-08d8f82fe083
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2021 12:39:38.6270
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT019
Message-ID-Hash: OVAVYKSIEBZVXDQMNW3EQYYFAI6WTBHN
X-Message-ID-Hash: OVAVYKSIEBZVXDQMNW3EQYYFAI6WTBHN
X-MailFrom: snehasish.cse@LIVE.COM
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] troubleshooting  pcie link card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JGR3G6OVZYXVYBRPTFF4VNYVVOE4EV77/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4038827122025993499=="

--===============4038827122025993499==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB2469029ADD6C27D6096B9D5988779BMXPR01MB2469INDP_"

--_000_BMXPR01MB2469029ADD6C27D6096B9D5988779BMXPR01MB2469INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

I need some help in troubleshooting pcie link card. I can see orange LED gl=
owing in the card and even on giving the command lspci, I am not able to se=
e the card in the list. Please help me with the troubleshooting.

Regards

Snehasish

--_000_BMXPR01MB2469029ADD6C27D6096B9D5988779BMXPR01MB2469INDP_
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
Hello <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I need some help in troubleshooting pcie link card. I can see orange LED gl=
owing in the card and even on giving the command lspci, I am not able to se=
e the card in the list. Please help me with the troubleshooting.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Snehasish<br>
</div>
</body>
</html>

--_000_BMXPR01MB2469029ADD6C27D6096B9D5988779BMXPR01MB2469INDP_--

--===============4038827122025993499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4038827122025993499==--
