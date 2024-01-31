Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3298440E9
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 14:44:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8983F385544
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 08:44:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706708661; bh=Z1II6RBzAuddUU7ytTAbQr6iy6nFEwMcXiJa1NhX0Hc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g7dQ8yyHWgTc+FyKldNJ+W//m06g/RbZ1/ABQxw++tmCFvv7P8GDhwX9bzbtgIcuy
	 shYdDgm9BO/CMbBhxo+fjqeVyMVFVEWLZI5MOKr5O+BhZ7mEw7fDAFOPOMPZon/vLA
	 RbC9PyFRZ9q0gpkTl8Hh9x/MaSceBsobVk7d+XnZ6nV7D6nzuV3OWnhbEFujFLKzAC
	 p4M/KA1Z4XwPCsHcIJ/w2tyipI86+E6SX8f5UrHsxhmGGm0xMxf56qdJliQZTEGGxf
	 fsP5PiuSX+GFOPTuMtrzlv2sISkKRuWKrQDAhxbw2IHvFe9WLnEnQVOvS21EOySx3T
	 Nt7hhH2V7LUDA==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2109.outbound.protection.outlook.com [40.107.6.109])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E5CE380C80
	for <usrp-users@lists.ettus.com>; Wed, 31 Jan 2024 08:43:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=dfkide.onmicrosoft.com header.i=@dfkide.onmicrosoft.com header.b="jsEOP13j";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aw8HDBaiPbBcM4XUAwVhlkZi3YuMFNj73WajuuzR8Zp0DGv7lvw4TTG1HWKfoKw/bzXcrTEQNJbpz5F9xk7BEVJah2XeJ395wO9qeQVHmBRUb3wWZ9hdyotJ6ixinUWZSXH5Wvj6LZYXB671TGoeheuIS9MgEI557au9gls3D4yhZ7rE6I68J6B+noyDypc/7CYHLeelewEbDIv8teFPBQQ2znIfbOV1uLz5DTMsVi4MxKettMxPTR0rzAuWA/3cND6yQ5w5PBG8UB5MBfif8seoNTCr0T3NKOAiBZjeE2+1J5vxzq3nNSr0YxK6Q90LT+YTI0Bor6tLJGcQwW76DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnE/qURWAWu+RLu8TtSVPJwz+lhkWFMAUESGYmiMlFk=;
 b=Hrgu5TcnnQsRWw5n5lOGskb7QlE56950K04MSPHj65o8ds0SIf1rTylpYhgZ0idtMDjnl1ATKxgUelRLtfC00bjQSKV+R4d0xSsuMtXFLeHWQii72mCMzgdYZfO96axm23EwF4ojfCE8JYmd5wyiTvxDi04C6oGskMPIMg6cZS2ChsIymLrOSTOc/FbsPxqj/BVjmzNpNGUvKPUj3z9xdH0oQ+bEP8OM2I+7cdfb40HDKe0HVp+RkxpJ76qgnINYw1UigWH//LJ3YEu7/lerfGK8fKABPU9sSxGeRQCKeK0WPtQv8yc10GRSoQ9upEF6i7XRsHHOFRxmgZo6rbLdxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dfki.de; dmarc=pass action=none header.from=dfki.de; dkim=pass
 header.d=dfki.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dfkide.onmicrosoft.com; s=selector2-dfkide-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LnE/qURWAWu+RLu8TtSVPJwz+lhkWFMAUESGYmiMlFk=;
 b=jsEOP13j1CALFIdV2nT5MXvZlTJElpuzx0O3ti4ZdfOwBSmNq0vR5MPtitXPRRzfaQMm2Jz7NmPz38/tZ/sdDv7REi/oJwQX7kVKFuSNdxktSB402kvC+hlou/YUwJ9gnt5kLJG6kVo5d/2qyWcf7YpX7ZBBeIxAfzr1J9/k9/E=
Received: from AM8PR06MB7138.eurprd06.prod.outlook.com (2603:10a6:20b:1d7::19)
 by VI1PR06MB6829.eurprd06.prod.outlook.com (2603:10a6:800:18d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.23; Wed, 31 Jan
 2024 13:43:19 +0000
Received: from AM8PR06MB7138.eurprd06.prod.outlook.com
 ([fe80::5235:f8ee:d089:8f2a]) by AM8PR06MB7138.eurprd06.prod.outlook.com
 ([fe80::5235:f8ee:d089:8f2a%6]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 13:43:18 +0000
From: Till Ruppert <till.ruppert@dfki.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Detecting overruns with USRP N321/N320 and refarch-multich
 examples at 200 MHz sample rate
Thread-Index: AdpUS2S0r2Vgx2AfS8eMoy1jCil8Iw==
Date: Wed, 31 Jan 2024 13:43:18 +0000
Message-ID: 
 <AM8PR06MB7138A772918962574E98B8BB827C2@AM8PR06MB7138.eurprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dfki.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR06MB7138:EE_|VI1PR06MB6829:EE_
x-ms-office365-filtering-correlation-id: 9b798ed0-b46e-46ad-dc75-08dc2262956a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qS5AVcFSj/q1Mz+NREVdE7P1QoHpuDC+al2zxeqKGKlIStv9+okXWmevJfM+ImHeTASAzYGjov1nVKuIDvG3i97HERSaxtzDz+lXvVlOX4ULbd3uWnKNQ2npqYHSHusZVif2NQWlHt8BnEyGMKLHKs2N4jdbgevwbL1aazfZqS9GDn0BM3DllZf3UX2VzEeW9blKSZo8xZx4B4w1dJeEnQ7iNTTgQnfWyKYJKnm33OtZsIC5LOzisQrMn6hzyHskkF8aWF0kyLzZJn2Pv2g8Z7f5xLMKJoBxS+iyIv+wwGtm4kzzKy/ued8aebRRBQdFG3YxNW3zrLOJ2MylFm28OgThGNRq8qXyJYrhvYLzvfl6vAsoRBpjylMAMWQSI358sBvZnkj31qYhL76TSCmhB+J3EVZZux9eZEZiSaMdFrzgElEENdGqmjYd1SLBNbNDgdRMB/pvqhaHl0tHK1S+BF973eNCfe9KLXuZKI7t5wz41mGhI8X0wCIIwDb8V9yOtVV71guhXelN7ogKb+8OGtBa+EWjLqE2bllNLBwvz/GfmFX6/280leMP1Ou3/T3jzS+jJqT2rJapORdX1fPmvpAweyCUB4ouqjw7ggDXRRB6oKHCyx24qCvqrCO3qMbm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR06MB7138.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(346002)(366004)(396003)(376002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(26005)(55016003)(41300700001)(478600001)(38070700009)(64756008)(786003)(6916009)(66446008)(316002)(66556008)(66476007)(7696005)(9686003)(6506007)(83380400001)(71200400001)(38100700002)(122000001)(66946007)(5660300002)(33656002)(2906002)(44832011)(8936002)(4744005)(76116006)(86362001)(19627235002)(8676002)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?OyjLW64HiwKARoCkbCB5U3gh9jX7ereRqKjefii3IaN4FDD/toN44TInPKKI?=
 =?us-ascii?Q?Qwqi1tyMvIhfaPTV9HN8fERFoWkr0cEitdLxpFOkXziODvBFUWk3VLf8ExaW?=
 =?us-ascii?Q?ZYBNvALLlwm0LxGlrRXyaN/rVnBHtP7w82UM/V3ZMtyiweE3XXIX0zuTnu1i?=
 =?us-ascii?Q?6q7lQt8TnC9S+oHAQF0clPsAJ9ZofOf9g5kG6vQoS/LMV/kkveX08KB3phab?=
 =?us-ascii?Q?Bg/3QGlvB1GvKilD4P7GBLTGI8hxnFt91w83NgtU5rvIecX2qk/I1U1jcwyT?=
 =?us-ascii?Q?O3254KhMA1AUDzbA10q4YAAvaSElXKuZAsAUWcB3zqzn9bd4YwhvfikV1VwO?=
 =?us-ascii?Q?tIx22343U6wPvmayYbOLNiMTRhp6ioNnLmTq3GTq5atAYCj9fQtMzoh7SCPt?=
 =?us-ascii?Q?kKxkDXhToS+urZWHeuampNEq7F//Tz39osoEaZ5BMhe4EsoJCus90R7Q1DqP?=
 =?us-ascii?Q?+1ZNd/+gqGW4n9q2NgeEWyxGkyXgVspdKopiWQ5uWGrAb2tTymVLrOJVAk74?=
 =?us-ascii?Q?EVAHtBhMmTlmXHvSxEJ/KtR4fxaK3w1pfkUmqXXY94YE1D8H4mWnuI41lf5I?=
 =?us-ascii?Q?n8dd2v3r4LwUIHnc6vlcsvNsrtoTCInea82mCT4Ku+K53KYC4bfJi4LsigCR?=
 =?us-ascii?Q?6D3oVsuE5pvelfI6gOPDimoAxe8pcv2FZ+oyWdUp7rB1bEpR9JIiZi5RdURN?=
 =?us-ascii?Q?yZaeVLEkZU9IWtYsA+ZVA9d1SDoytzwrJ5Lsm7lB87mfed8aQuaYlP8QnLmf?=
 =?us-ascii?Q?NvuBQHPDohTGObiPio73iMavNkG+JoTCOS+Ej74MlXUnOlW1NnSZXId81Gjp?=
 =?us-ascii?Q?l1Jb3UQU2Oy/GgWFlKjV6HtQPRvUicimhuMZ7qQhoejOcqaRGxPCp6zdyaT/?=
 =?us-ascii?Q?y/908ip4Yhje39/RKLlaiw2Pgnh5QTOnYXCxs2KY2ylbdq5ZObwi+57LI/oR?=
 =?us-ascii?Q?ctEtnpm9FwS1ZsD5Xi6J6sUa31nVP8Ob3eYPVp7qKDhgy+FidL/f/x34jggh?=
 =?us-ascii?Q?W8F13x/xAfPhknJy1nmJChOn4zzxFHTw06fZoeDW2gVNUwdERLa7Py9xa56K?=
 =?us-ascii?Q?VCP1McXREWw+/zKcCdRRsB3fyWCYrQ2nL6w//K5CowBo9vVls1Ff8srcZGWQ?=
 =?us-ascii?Q?ibcy+G6tr/BbaUGRhuwOLHrlFFEntZ4OvGWR1sg3vC5IdPRs0uURxJpLj1Pm?=
 =?us-ascii?Q?IaQcOSiWYmG+F6ah0wAI7H9LlAYs3pjzirSAHUytXFuTOx/QeK9x/gkZ+VPa?=
 =?us-ascii?Q?clEoVGYUlxIHKYK6BLNm+y+UJZVNkbExH6DCdMLEu9tI2+n4xhCouMsko8JH?=
 =?us-ascii?Q?d9afhwpo1DU6/ixmnzPIEhDAcl9U40MahyBgK9Vs3Xx+amKRlERaTrfGRD9J?=
 =?us-ascii?Q?7j2wWM3eWUJwB0V66LzIUT48NQ/922PwqXvDOgcjNpfYoNRXZFVOieyHAnyg?=
 =?us-ascii?Q?RKeJ0JAfM2tFjp+/JPh7M4f9spJCfQSp98rxhdSzPM3fzq+kPmf9C1nU5aUo?=
 =?us-ascii?Q?fOgCub0w02c4V0v/J3qesKXEMPq657ILQwJd8asYsjCSSXhdfRtOox+juV0c?=
 =?us-ascii?Q?4KLfv01SLcl2jQwQdnA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dfki.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR06MB7138.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b798ed0-b46e-46ad-dc75-08dc2262956a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 13:43:18.8528
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 61a9f1bd-7ea0-4068-b231-bb4a6bfcb700
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DH+WLxZCMbAMFC9FYZljuNMoVQX1mk3e1zUuOzVPfqE5gbbIxsMoHddhb6khvjyF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6829
Message-ID-Hash: L24ZRRQ57CDA2YWEFHM6PSRU3BMDBZFU
X-Message-ID-Hash: L24ZRRQ57CDA2YWEFHM6PSRU3BMDBZFU
X-MailFrom: till.ruppert@dfki.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Detecting overruns with USRP N321/N320 and refarch-multich examples at 200 MHz sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NRREY2R5FC625YU4XVM77EYZCW4S6BE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7459211970474688917=="

--===============7459211970474688917==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8PR06MB7138A772918962574E98B8BB827C2AM8PR06MB7138eurp_"

--_000_AM8PR06MB7138A772918962574E98B8BB827C2AM8PR06MB7138eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

just wanted to ask if anyone has tried the example codes from refarch-multi=
ch with 200 MHz sample rate.
My experience with it is that overruns are detected even though I only set =
two receive channels.
I also tried it with DPDK, but that doesn't change anything.
I'm just surprised that benchmark_rate works without an overrun.
If anyone knows anything about this or has any suggestions, I would be plea=
sed to hear from you.

Best regards
Till

--_000_AM8PR06MB7138A772918962574E98B8BB827C2AM8PR06MB7138eurp_
Content-Type: text/html; charset="us-ascii"
Content-ID: <D6663D6D1416334A9EAFCF5486BC1890@1>
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">just wanted to ask if anyone ha=
s tried the example codes from refarch-multich with 200 MHz sample rate.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My experience with it is that o=
verruns are detected even though I only set two receive channels.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I also tried it with DPDK, but =
that doesn't change anything.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I'm just surprised that benchma=
rk_rate works without an overrun.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If anyone knows anything about =
this or has any suggestions, I would be pleased to hear from you.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Till <o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM8PR06MB7138A772918962574E98B8BB827C2AM8PR06MB7138eurp_--

--===============7459211970474688917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7459211970474688917==--
