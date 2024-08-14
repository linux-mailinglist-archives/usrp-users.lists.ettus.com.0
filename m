Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 706C3951165
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 03:07:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A158385613
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 21:07:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723597672; bh=yILl6rYrLu0i8D6rhnrkWLjOG+fF7SgKD2VnkV5yqZE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=akVlQKNU4yZwptXz2afAcxQW8nGFy2JVmr+sDIYuzRKafJBDiJScF68NBDtCiL9Ou
	 B1OQqsfvm+YztQ7hoCv1zhIUp6I2YUlRj5gQL/STYmt/7Ny3YnSt57L3W0HbQDvo8V
	 6Kc8D5+SqZjecvAfjzz0JpJLYrA6AELGifWa1wvt6tt6JPtkES6AetIN36tMy0CcWa
	 swRiQFsDhwXLbUCrOieXVng9Ao4o7/rWDyrcYc5+2+SNbVEI7hjABrEzk4kJ80koM8
	 e9wbqRxS76X74bernES6CXkuwQGf1MgN14mv0XW+oK/6jOmrexxOyJvXG5tB/2uz+y
	 U5dPqaaKgEehA==
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11020072.outbound.protection.outlook.com [52.101.61.72])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FEF2380F45
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 21:07:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=VirginiaTech.onmicrosoft.com header.i=@VirginiaTech.onmicrosoft.com header.b="pkmhH5Jd";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JE/2c6IQpq4Orz2TGE8CT4L1zmQMFo5uxX5fvDUl7qYsg7c0alf/UNVsm256767kknb8gXAOmcqU1qUe2Z0IhO7WCpQkFjUCbDsBE1LQ4+Jmk+kNyRpJ5T8Y567uwi0kbU6GY0GVH0p04V8jb95f3Z0LLEEtXeXyEHnqa/V/Z2oNarTlZNzGiiF5XUVXwLOROVpjiPJhtL/es8Cqk45qFyfHIENnhBshYbTuoUPvt9n5W7QBOuW/T1CJr8V+O6c2PsIxYSYQFI7KXCkUR0JOnUniwjdZCDIZ4CQcRSgy7rKEmIYZ4KXt2deM5GmJYpaWY02IVElkjckAqmFIFP8ySQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/s9Z7xdaDE/lzTbYnOuPeDA2MSirwPGZesGG/W5H4/k=;
 b=jfQx5C5pzqo5+RZN10F4aVVr3/+V0gHjmo4Jh4VdgBWf/nbKqjsD6sfK3pUHWie5+7oH6KBSO7FBTdOYMsb/izA3hqdpNv27WuVeZkBD2N9D/QSFCL4Ep+CGVZqUUu/DRb5Pfd7ZReChsXPTVRQdvNZ9Zl5F5JULXH8bFZc2/yl7Ly4Hsy1qBIT6Sch11w1rhadcPh99tWYhHWVG8KmAbCRosa7ZLquerj6FDwFsNs6F+OXPXna8i5mqaVg4cLd/ruaq4Vz6DD3kbUm99BaP6g5iPed80pEUTZYlV/mAqfKCzkgWXyqYfg2I89pdFBbTG0T68ab71b4c4JX2SeSdzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vt.edu; dmarc=pass action=none header.from=vt.edu; dkim=pass
 header.d=vt.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=VirginiaTech.onmicrosoft.com; s=selector1-VirginiaTech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/s9Z7xdaDE/lzTbYnOuPeDA2MSirwPGZesGG/W5H4/k=;
 b=pkmhH5JdLlxg/ySspAxqZFu/PJF5cvKMGsMUck2EX/fr1DWa16LgGP9N9DwROkPFWhzae7LY0Hp1evPCpSTsQ15TZSg2sVomZdI3LZkDWLMDLLEdXhviO8n570lNVGa6KOHNtg6tOq19AaLLVfQsz9RZVQGmEIOngbO2KyJR3Tw=
Received: from PH0PR05MB7768.namprd05.prod.outlook.com (2603:10b6:510:2b::17)
 by DS7PR05MB7383.namprd05.prod.outlook.com (2603:10b6:5:2d3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.23; Wed, 14 Aug
 2024 01:07:34 +0000
Received: from PH0PR05MB7768.namprd05.prod.outlook.com
 ([fe80::22fa:6669:775c:8362]) by PH0PR05MB7768.namprd05.prod.outlook.com
 ([fe80::22fa:6669:775c:8362%4]) with mapi id 15.20.7849.021; Wed, 14 Aug 2024
 01:07:34 +0000
From: "Sathish, Aditya" <saditya@vt.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: SPP, Burst Transmission and RFNoC AXI Data Signals
Thread-Index: Adrt5cj8X+WI4f75Twm8qSarie+tEA==
Date: Wed, 14 Aug 2024 01:07:34 +0000
Message-ID: 
 <PH0PR05MB7768BDFDB65F74626766C36CD1872@PH0PR05MB7768.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vt.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR05MB7768:EE_|DS7PR05MB7383:EE_
x-ms-office365-filtering-correlation-id: 9298bcb7-9c95-42a8-fafc-08dcbbfd7aea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?QqBkqXDxqAdyzedolEkvMgqljL4WWTDzfBNRa2QtoKtYgxTtnC2q6/5KU8mU?=
 =?us-ascii?Q?GMEs0ptySXxuSTLPBmz59A3bOaYLqTWtlE0UdiLFQPfVZFab8EVUU6yTRLjT?=
 =?us-ascii?Q?r4pP14xFcBPySB2J3BaHHlqka7MliNfIWcv/uQ3tqXh4jXeSrOxpX3BaQIiu?=
 =?us-ascii?Q?aMEh08BLwEuqZI4AR7vVGUCQ0ddyfXp1q3YIvh2IWQ9DAo2bby56c5ogVNBi?=
 =?us-ascii?Q?chsRsWc59IZXj9eR4E21g5fQ91n9xpEEFlsTM/Pkxzrmo8TbBMFDyPd0DD/L?=
 =?us-ascii?Q?eK6yOPL2+0+eqh3ccoxQRUB5r66Z9682tKJKhzi42gHxXTbPKO87IzHDkr8z?=
 =?us-ascii?Q?CuSl+YzyWiQ6OiZnUrrx76XTLzpTreg/3GLFBp5CHV2JdvHCQ+0wycwQUQ2v?=
 =?us-ascii?Q?Qwyf6at2NpnolUKHijiWJZVne34lYZfUDcmt9n2wxba2lLAjXQTjXCt5avfY?=
 =?us-ascii?Q?WjyNbu6kqNdoIfnXDl36gWdzyBmQupIWkaOktPLg09jq15UyO7+Yr5uTakPk?=
 =?us-ascii?Q?YGIrzEuCFqYyxvWGiDPaCVNwMarutJTM8OgGETxsXkRkCDvNiPmjqOlpIq8y?=
 =?us-ascii?Q?nmF+zcQI38qMNE+yGklIASfdC0QaWu5ibqnJlDwj0ksWsdKDMGcibK0SibVz?=
 =?us-ascii?Q?1KZEiXRkWMtGiD6KiFrQHRhBJamcwQ0A5bQumNocc/zyN+jzzvGPf05rLVkh?=
 =?us-ascii?Q?81wtnw8GvIZ3N5KqUmOqF9PNm/oLwRIwOM5RcfDN97NFT1QZuymuz0Y3kAEa?=
 =?us-ascii?Q?W8pxU8r4t2z8PGyBmFLWa7AEhrhLAE34VwnQEXSDWNrD3R6T2Zvc16aGk1/Y?=
 =?us-ascii?Q?c7ekj8yDCNZGmbxYJdMZtdy2KAg2wgg+EgHX4uO/U5ikUP9TQuJEBWHFcDtL?=
 =?us-ascii?Q?yKz84q0B5hZ5djnAxDCG9kHYe9C9DrTkptSFcfGwEgJwTAK21GvWIpwAVLyy?=
 =?us-ascii?Q?xqrUNYF0BAts40UZzXpBLOPznWxzBUDVTsNieEFqc8Htgr0EB4DkgX/h3F1z?=
 =?us-ascii?Q?ryacWor3QJo3+BHmitRbkCmfMGfHEjTqRve+wRCllE0ZUW2/wLsfluO2CZAn?=
 =?us-ascii?Q?ucMPUHcgxixvO3eVEEh+NKcemcJ+rdn1JumwIDyT08lTXQD8zEKE3DFvJjQE?=
 =?us-ascii?Q?hOzYMx6+FUB60y/INzF7/VBKgfK7h4XWr+0fDUXiFETYYTcL1622XKuOtSVe?=
 =?us-ascii?Q?GZTg//8wUHCiurOLhiDA+rfZuNqr3OkL49XX0lMUzV+kf375NV2jbUVNHT63?=
 =?us-ascii?Q?W8Gza6Dm2SkTFBYJ66r6LB+iHb8GM9UJLp3koVHd74omt/D1iU0JNyJ5GaLH?=
 =?us-ascii?Q?yyMVcVDSF+KxK/2UgXtcEuruJNx6zxi9xSaiWDnQzELZF8y9vhUPC9GkikWA?=
 =?us-ascii?Q?6iO5jsg=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR05MB7768.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Q6ZI241pZcbC1cHjziMJuyK2089sBJqjIxTnZJ0xQyWGdZokiHH+7FLJv5kc?=
 =?us-ascii?Q?TBQDCRf8v0mk1+UDUw/SnhqfvxCCakOS/mD1FUQ6UbdZ59+6Ud/XglE2hiGi?=
 =?us-ascii?Q?taEFfNXGruVPHM4SuTldfTZwlG16CwIAUu1Fw2eh/JuFwDMja7Yp5WRP0GvG?=
 =?us-ascii?Q?Za472Ee8cOay61IyRkyWcjD2T4eDL4G05yyh+YZrq8Tm9CE5WofwbeZw4K0T?=
 =?us-ascii?Q?eSdLDUKmkOk87RuM9/7iRC73uVpt5LDWs+5ku+6p2/6D+chUKfPRGHdMhiAm?=
 =?us-ascii?Q?2i8EUiR8P5lvh8nNv/nNuU+WBMN33OzcdG0b1PZs0dAQ0Iw3QY/VL8DqDULP?=
 =?us-ascii?Q?LkJWZ4T2c2a85p8iBFowAn/QKHlXKtNVdXtsJ93OZVMHABf9bkdGU8Ak2Jdi?=
 =?us-ascii?Q?OqIn1WbJiLSQl/k8W9Jge77FaLbJxTZ3BfvH9xAlSd9KNEKiKHnw4fRnhv8k?=
 =?us-ascii?Q?Cc7waUcyRqW8Huh+3P2+sr+tvYJUEvrUZmzNPkGlWrTTOSbwVNiiRdPOYfgm?=
 =?us-ascii?Q?m341POomVUbtVZMy4XKpMuLh9UHziLw90iQJN5nlHL7eLEx6SmW+psNytJpa?=
 =?us-ascii?Q?3rWXaT9+Jld1gn1KtekxLpLtGb7vLiGi+x4ut/MPrLdNEt5Y1mGGiyZunxZt?=
 =?us-ascii?Q?xMLt3/DLX8+E2xujfetaHXEQzzZYvTQUuCARYAD3aQSD8PieAemtrB7Bfb66?=
 =?us-ascii?Q?p+IQzMK9cQjfVPulGbilaghkaFWbAG6pCRXIBaZDcp/hDBSBib5CQV9PMGVR?=
 =?us-ascii?Q?RJgrVQoyMMVERN4CuEu3RlENNNli4zLYELIAWhYqczT7GYisdSXWu7KQ0a8Z?=
 =?us-ascii?Q?ZDmLIqYuShgUkfT4JebLh+je7ktGYdu66tGJdWJtDad+De87A6dvqiysO/Ej?=
 =?us-ascii?Q?HzphFFYS1ch+GUQInwmce2HqG8EmPxtAJL1nPxkeWqxWZAshhThmAIsvkAoM?=
 =?us-ascii?Q?w3wXG0M3Jm3HpQyiElbEkZzDDMt0HL2QMINwSUEYxVNl1rWwhgCr+On3a0E/?=
 =?us-ascii?Q?WlJv8byEP0A8mzuionSLNJg3j34YbHR/3y/Zn9CmFhYNxoofdpF9NMs8Gjpd?=
 =?us-ascii?Q?XtSq5bucSr0NUvZgRE9nO9ySUCLbdgdJMlIgf4ssnnNi17GAVEvPYcyqI+LZ?=
 =?us-ascii?Q?n+BrxccdEXgkvMp3Xb1xNX5ejCWHFlATTQxv+8XOVsJRdEd0WAeBUAkFozUB?=
 =?us-ascii?Q?3XQx6Mc/gNgreK/0tm6AjglmDpeVmXqG0PUjIweJmuL5nOW7YwxDHC2Os0kn?=
 =?us-ascii?Q?+XZtFMBTexX9QDimiinecaa1yE3Qt96cyOWX+DDajxjBgjaiQeakl15KmNvZ?=
 =?us-ascii?Q?Z7nxBjruOHlRYteQ3QGThMITlnl15LKoI1QxMIOc2q/Z1oJA3YiUF6casHek?=
 =?us-ascii?Q?hAj8DptLcwZSo4K6OrKiRWCq2EY+cmoFnGvmnLr/DBrWfPzxYT0sCRnpPHnk?=
 =?us-ascii?Q?1kFUO+CR0+YSt0H1cfp1SCJhQI0QdNYnH95bsYuogCWScJTNJvHHi9KIduGi?=
 =?us-ascii?Q?mfapvoY2/1WKEkai6GqRhmIvnZcrpIiVZg+C3bCjZxUhMyy02KDcsDzAinoX?=
 =?us-ascii?Q?bRe8MkBab2YhI4sP7wM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: vt.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR05MB7768.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9298bcb7-9c95-42a8-fafc-08dcbbfd7aea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 01:07:34.3065
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 60956884-10ad-40fa-863d-4f32c1e3a37a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zS7ikYlYHzs5CEyuV2rKu04IDyjRzveLeLmJ9jAM4beRCoDGZHy/2MIUk+qhungf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR05MB7383
Message-ID-Hash: EEXEPPU4VQJBMAZP2OQ6AR2NGLEX47M4
X-Message-ID-Hash: EEXEPPU4VQJBMAZP2OQ6AR2NGLEX47M4
X-MailFrom: saditya@vt.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SPP, Burst Transmission and RFNoC AXI Data Signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWA5RK7SI4MRGVEHSBR7THFVS7VVCH5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7943465144758638906=="

--===============7943465144758638906==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR05MB7768BDFDB65F74626766C36CD1872PH0PR05MB7768namp_"

--_000_PH0PR05MB7768BDFDB65F74626766C36CD1872PH0PR05MB7768namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have setup an application that is constantly reading a Tx FIFO and sendin=
g burst transmissions with a SPP of S samples per packet. I want to modify =
my incoming signals in my RFNoC block, but I am having a hard time understa=
nding how the samples will enter my RFNoC block through the AXI data wires.=
 Will the tlast be asserted after S samples or will it be asserted after th=
e entire burst is completed?

--_000_PH0PR05MB7768BDFDB65F74626766C36CD1872PH0PR05MB7768namp_
Content-Type: text/html; charset="us-ascii"
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have setup an application that is constantly readi=
ng a Tx FIFO and sending burst transmissions with a SPP of
<i>S</i> samples per packet. I want to modify my incoming signals in my RFN=
oC block, but I am having a hard time understanding how the samples will en=
ter my RFNoC block through the AXI data wires. Will the tlast be asserted a=
fter S samples or will it be asserted
 after the entire burst is completed?<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH0PR05MB7768BDFDB65F74626766C36CD1872PH0PR05MB7768namp_--

--===============7943465144758638906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7943465144758638906==--
