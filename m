Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 069137DE6FF
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 22:04:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 512A53858ED
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 17:04:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698872657; bh=d5laV59u8gpa3qjf/J/LLd5iUGL6BZjALOsEPSiodZI=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=NCLcPSCFWkzKS2fB4lKSfHHXjsyS5yPhfM07IuNv78F+u9ayu1P7MgVgfOaUOV5nq
	 pYZhfIxY90RP3ThH0oRPumpwNiT+TEFcB/kgmaGsid6W2oUwulNUHBz9stEwPtZBcC
	 x5tYDFvVAIGLb0jA1fioSVC2RZgfiNzNOny5cwspmC5gj3o/IQil8fCdB0Qf50apnN
	 UIcYxf8Dr5vnnIMpVJHFlNhnITVG4Xp6m2g9lWTRyhQMedj/nioexakKG30d1Nfhtc
	 tju5WNQdyKpL/+Z+SuBXwsUDJLByY4K8oMN1wcyChG5xrPemOTSKtFAGznLH6UzL9t
	 gCNhdLWuhifmA==
Received: from vadc01-egs02.gd-ms.com (vadc01-egs02.gd-ms.com [137.100.132.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E245E3857C7
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 17:03:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gd-ms.com header.i=@gd-ms.com header.b="ocfG4j9f";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=gd-ms.com; i=@gd-ms.com; q=dns/txt; s=esa;
  t=1698872631; x=1730408631;
  h=from:to:subject:date:message-id:mime-version;
  bh=ohC0LJC4NoA8h4WRiR8exBQseogmg/IjDruVDyU8hvQ=;
  b=ocfG4j9fMgMmflEo9+4cz76XVt8KYqIRO2kft2SwLZgjyQQT0jOm+uyd
   bmuPd6TlFQ63X9DRZYArvXoqSnELu0LxkupmbZi2IZ3ByZr7CNNzSvP4X
   eFy81pDNti03HqFY2+g78VMYXxYU8k9uldn9nUNEBjzS+2vIAgLptTAxT
   2b//TL4EBXc6ln02TBuCeJ14OjvvqL0EaQmVeL920XalKCoWW0xjMq0GC
   wRpKu3r6hHcDanBdaTj7Y3aCgCn1mw3l3j3HaWvM0Gttqfq+GJBXX6B86
   4BUIl99XkjyBuZRWPJMJ8gGie0w6e+uy94TVBl/Yuy+nFISPecCmsdKsp
   g==;
X-CSE-ConnectionGUID: ScoIY09aQCWdr2Xd1TooqQ==
X-CSE-MsgGUID: gVCOY7B4TQyGnyzJJLwl4w==
X-IronPort-AV: E=Sophos;i="6.03,269,1694750400";
   d="scan'208,217";a="56804467"
Received: from unknown (HELO eadc-e-fmsprd01.eadc-e.gd-ais.com) ([10.96.30.97])
  by vadc01-egs02.gd-ms.com with ESMTP; 01 Nov 2023 17:03:51 -0400
Received: from azr-v-mbx01.GD-MS.US (outlook-east.gd-ms.us [10.144.20.52])
	by eadc-e-fmsprd01.eadc-e.gd-ais.com (Postfix) with ESMTP id 6720AFB04FC
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 21:03:51 +0000 (UTC)
Received: from azr-v-mbx02.GD-MS.US (10.144.20.53) by azr-v-mbx01.GD-MS.US
 (10.144.20.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Wed, 1 Nov
 2023 17:03:50 -0400
Received: from USG02-CY1-obe.outbound.protection.office365.us (137.100.132.86)
 by smtp-relay.gd-ms.us (10.144.20.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 17:03:50 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Vwi2F7gzMDWkO5yoMWJdsnHiFmfUI/sW3uAzzZKbDU07veZJ9n2VyI8hz+PXyFHUA70Ts4yXlYtLrbmZfK+NA5iHsvleglF586lvVzbrvSx9YOrQ3y2nkklpuIbv9c0K7ySBNa+TvELBOv1PjJ5p9ftkpAiNLey7yafoc3f3bt063pvtmuuyO3Jgm4OPBWKsPKVfzbwgSIbmpoWJ4tWUxgkZv/evdcJIvmqZ48Q18iTPJY5aRx4Y1xVB2B1EdagxKk4Nx+pW1ofbzrOrfhTqalnJdR6OEUcJfWh/cCVIig4ymEd1Gznz6ruECO9HCUdKHmf0/Ss5RimBw4C2FlhgZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sYVapUbrwTaiPoOk4XaTfpU9g00FB33L0jL2si2ueFo=;
 b=inf76jqhJMIZhc8yRiFaC8vTSiPuwD5muZ/0U56Z4LtD7xhHWhhYXRRQQWEf4bK+srUC6lTZEWSOVLjHlUsC5arkt0Gefh80Q2IFOkoJZEGAIIRd03TlTtBjRylhASg3Gn7S/qN5hr/kEYC0o1bkYDr0ew43wSr4tDV+47h0FKy5tcjX/JeWd5i+MdXLwoQYRtrDQxgolalxtPTdcQOwXVjTdqimnYfvsTU8aaqonH/iRQcio3aLdDrPru0PZZfNRNayIS56WSexhNKPVHBnc6rEow72gu87nnKZPck4dPm5abdhAu63H2GATmChbb34Hi32sZrzdLwuxc2/Q0RpvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gd-ms.com; dmarc=pass action=none header.from=gd-ms.com;
 dkim=pass header.d=gd-ms.com; arc=none
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::12)
 by BN2P110MB1336.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.31; Wed, 1 Nov
 2023 21:03:49 +0000
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97]) by BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97%6]) with mapi id 15.20.6933.031; Wed, 1 Nov 2023
 21:03:49 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 gui
Thread-Index: AdoNBSGYZPpGbhvsT2yv/amYX/xocQ==
Date: Wed, 1 Nov 2023 21:03:48 +0000
Message-ID: <BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gd-ms.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB0948:EE_|BN2P110MB1336:EE_
x-ms-office365-filtering-correlation-id: 02c7e2eb-c9f7-4669-7b0d-08dbdb1e0b6c
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ojo3bO5Fxp3e2s2N6nC27uT3sGRrkhZBK/yHyf0Co+jkYk7TmvmfbjJqwruEYHp4GiAjgFQytE2JCn0VBox60EE+0ANs1LBE9OWCCE8Nds6HVaROeRuOgxE7425sa7N18zgfR1ovsI79AfINYIajgxJYXeyR1FTi6MyQtYgULZ6zZIUpqzkjXYLAhYGNy/B5JP2vOaURn5/SLnQV2v0l8YpqoKysz853dMXl8VSHUCJQOlkMerWIHz9JYpKXHvkMeNFlc16zUf2nSh3rxIAVbg7OSWXkkVkbUcUbBJ7rnZqIdvMCvXzBHusB+kZWUZBh7tlPbex2HOP/AU5hCAM988rmUqia+PHCW3QlT1Tg6Uqcy0nAoHBrbLwV/PQKzNYaTEa1m5CbdvPAaJXcedWN7Ln7oI9RE3vd+CIwAobeaLRxejBLD6phDGl4Iab79j0fDG9yc3C228Y2sCRpDLqQ0XzdwvLzBSNzgtsXSAqQGKA4oKnLq+1TaM/PvL555Os2QUBXrGFGPZ+2vqtAejwSiUZK9ybxPx48Y39tA/0boOFuRZkXrX8Cfo2jU8y9OpbX9T3JSBxBm0tDyeLzPbWPjth5QbKXxMXsywp6xzEcBcm/n2Wc/PwOXoXqcQ9q+Kpk
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(1800799009)(186009)(451199024)(9686003)(26005)(498600001)(6506007)(71200400001)(83380400001)(5660300002)(64756008)(7696005)(66476007)(76116006)(66446008)(8676002)(8936002)(6916009)(66946007)(66556008)(38070700009)(38100700002)(82960400001)(2906002)(122000001)(33656002)(86362001)(558084003)(52536014)(7116003)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: N7FDuBnHZgtvDMxidaopiKd9TkqpAWI3t6RtPwhxj9e7AeUidMCAw2+F+A48xB3lMMMmv30i1Vdg2qveY/vAbHZPdkLaHXK6ld8Iz//N0BJ+Lf3rMMFCEQaSGQsBUtytz6S4XQUnFlCHL9r6pl2axq63ddhWUGqfuu5mqDE5bbeh+O3he8mQa1+VAkKmgGVnimYBBMcfgYUL3QCUtkhLgbxIboOiDgb/bNAGAMczERAuKWdggNqYgnxXaMmOosthDqHC9RzvezJftrtd27H5kFp/IJFf9xo5BCKXaDuak52kJBbpmaVvY/btZ+loDIHz99Plps0zXYver5fu+ow+Z5SG0fzSJkJWKOs/L+3eASoWql74pKCzwdaDm9NrzHzQNVmJu3SkJTp7b4K1p3MpGVGbr51Tql6heMguYGRaQig=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c7e2eb-c9f7-4669-7b0d-08dbdb1e0b6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2023 21:03:48.9722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7c5a26cf-ddf0-400c-9703-4070b4e3a54d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1336
X-OriginatorOrg: gd-ms.com
X-Content-Scanned: Fidelis Mail
Message-ID-Hash: CCBJXUVLCAFT45JL456MC4ZJJKYYEGYB
X-Message-ID-Hash: CCBJXUVLCAFT45JL456MC4ZJJKYYEGYB
X-MailFrom: Alvin.Begaye@gd-ms.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 gui
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCBJXUVLCAFT45JL456MC4ZJJKYYEGYB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Alvin.Begaye--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>
Content-Type: multipart/mixed; boundary="===============4639174628154861518=="

--===============4639174628154861518==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB0948CE39707B3966A22ACAE5CAA7ABN2P110MB0948NAMP_"

--_000_BN2P110MB0948CE39707B3966A22ACAE5CAA7ABN2P110MB0948NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a GUI interface to the X410?   I noticed there are some gnuradio t=
ype programs when I ssh into it.  How are those executed?

Thank You!


  *   Alvin


--_000_BN2P110MB0948CE39707B3966A22ACAE5CAA7ABN2P110MB0948NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2128962966;
	mso-list-type:hybrid;
	mso-list-template-ids:-693752680 -930566796 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:"Times New Roman";
	color:windowtext;
	mso-ansi-font-weight:bold;
	mso-ansi-font-style:normal;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Is there a GUI interface to the X410?&nbsp;&nbsp; I =
noticed there are some gnuradio type programs when I ssh into it.&nbsp; How=
 are those executed?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank You!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"color:black;margin-left:0in;mso-lis=
t:l0 level1 lfo1;background:white;vertical-align:top">
<b><span style=3D"color:black">Alvin</span></b><i><o:p></o:p></i></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN2P110MB0948CE39707B3966A22ACAE5CAA7ABN2P110MB0948NAMP_--

--===============4639174628154861518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4639174628154861518==--
