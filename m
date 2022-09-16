Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D25BA6EA
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 08:38:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BD15380AB8
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 02:38:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663310308; bh=zSwqgalJrU92f3dMS2smR0ifk8GfTH/Uro9YxP421T0=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uPIPJTQDkoAK4gDUtuN6LUHAZfTlPGchyp7qYMoD0Y95pRgoRAFqJd6LcJ6lsT7LD
	 nCI1pnVzp2sO/D3/VedMeDeX2MQCBdo96zzdqupvOiViSp9k5gxiEsCvRhLKwtlC8e
	 UynE7QNEok0fwNH6ffeDosgicwHO2M1NExwowXENLe681yspW+uV2ezmUAoqSbHtJv
	 Sqkns/rVzo1jUeAhPUZmVsfCn7jPZqGhb1ZCnPRX8eJ5WFKUrup7drazLemtkwNuo2
	 kEpNSpEJ99+jNgqUReGrbiR5txQ3T6XeRxQE+DAtoTmFCIDQYpbhpXUQGyQPdTfOYm
	 JVwtr/X9TE/lg==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2068.outbound.protection.outlook.com [40.107.222.68])
	by mm2.emwd.com (Postfix) with ESMTPS id DB3CF3817EC
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 02:36:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0yeXo/pbAPKw36Il3sVn3Zm6VizCZ5o30E7VI3D72pAGi/sEKlBy/HvMGQfzvPoRg+g1YzsP0PGc3h5PCu3IBvZqyPSkw9SxCRzx67SbemKkSxdqdKtIADSUDYzgOH2wbazrdidXO9NVc0oW4NpXih5bq89a9nxJ0cxenfvWYfZ6ZMR0L0IuCE66MsGAOD4lmCs3g38dfFHw/6scovIhZPaQUno4ahpIopTBkzT0ZcCKK/ip1YpFdvBGdY09zbve/7vc2dtAh3PxLrhGN8UC+8mmXyliNIlqhb4wnxLjP1gd4ywEgkZ8MoZ1hboHNYtXans361mAQQqUVSN3Va0rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/9w09xKxa7spKt623aflCuM19IHKwJJt4Co7PxGa2U=;
 b=ItLOwYsE+vs0WML2ZofBek7T5Kp9kVHQB96VtTzIaVq4UiUnqvm8ztIbCJj+tkMS4lxQMToFCC3Mwb5JoIF3W9vbCRkKZEXTui3auxh11TVN0cCrCGQNa1UiPVpS78e67VCVPCdJvTMMRkqH7ULLDgceTuUAvBdkFOK/Ij8+tTDzyNayt4u13VJ+gfIVFrAMMKUGGMJN/o5vsbDie5p7j57tr9iQUa4Ce3SdmwnKmPzX7kbOdHRwOWWxASML1Ei//q/rs/SFeQnGzUuOAIiWbJ9rQra8HZX9G8kJFctQC2sHlTjW9RYH825UeR6JUIWT0uC+RQ7ibC5tAmzrUTH7bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by PN0PR01MB6461.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:72::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Fri, 16 Sep
 2022 06:36:34 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d%5]) with mapi id 15.20.5612.022; Fri, 16 Sep 2022
 06:36:34 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: To enable WIFI in USRP B210
Thread-Index: AQHYyZY7yx30zt48jU2c/zBtxcvgRA==
Date: Fri, 16 Sep 2022 06:36:34 +0000
Message-ID: 
 <BMXPR01MB3558F05CF7F75F22F461AA1ED6489@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|PN0PR01MB6461:EE_
x-ms-office365-filtering-correlation-id: ec77e599-36a1-4745-9f20-08da97adcca4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZCTV0/VPvMKR/O4BfNR2m44rXe3s+x5a14Jx/iFIqogoxow/BdqBrkbQ/wxiWds7ouH3VoVpQTdoRwHwi1MR+EE1zedVDJSUMOQt3eF/StnW80DwChlX8crNbfg7C3+oItMLLPcSe3qDYRRihZOtNPBD1l69wLonD7zrERbcAuhKzbBJR3TTC2LBOjGcMW9QDUCKLweyQACHEFXRUyYjNK/QqVqcH796BOHVXG4yWIURNJR3PBPvgypvLcVs3JY4L/79V0oQuCbiCSimiop/M4z/OybcFBWGRXFr85hIWNX7I6dQhagD73nFtxn9xJ1I7D5voGCBXVpRlGniCfTb2WK/uzmN4ApQekxjhSQ5Jf3q0CprpgNSqzlps3XEQlWwz1Y2JqNyI+GnIHbiF2BXGjCugGjtfWmMr+wyFl2hFSoU1/zEbRo2tM7VfyNGwbCCbjl0eWDyJe3rrqsQSHWI/3m/kN/wlcGgtShfTB4z/pZ+SBNP5kJfliNAMO23pIc65lHMLuj/IK6RoBrh3WuX//TNAlsVV1Odm3q/vOyy3/iWLUS0D9zWZSLna4KhsnlPzz8Q7PljAAVsXvhplEQvHpGsdmBQnYopRgP/ljh++LlZaWpQFwDF8+l+lB3uAhUrBkeSIVOsdx1uhzl7AJHHkf0rcc4s9ZzsejPfuoAqGr+dtLNMNz5GVizh0MxpR9O/xw+j48zOCH9r/PVdDfyCaXzEIcu26y+4UfneBu5R2ZOVC4zaR8mLYGnulH8ZgGDzQByzo5qbqZRb4SMjQ5f8Tg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(396003)(346002)(376002)(136003)(39850400004)(366004)(451199015)(66946007)(52536014)(66476007)(66556008)(64756008)(66446008)(8936002)(38100700002)(122000001)(38070700005)(33656002)(5660300002)(4744005)(2906002)(26005)(76116006)(9686003)(186003)(6506007)(83380400001)(55016003)(71200400001)(41300700001)(478600001)(7696005)(8676002)(6916009)(316002)(86362001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?S6/lVqD/Q6eZE8FspBVow9PfM/kaZoCe91IuVbweUNi75s1LY0QFnsrJty?=
 =?iso-8859-1?Q?/9boy7Ify+81I48hkRD+vCMhANQ79ht3EAP03xYOk3c5AugIaq3l6YhSDG?=
 =?iso-8859-1?Q?PjJlOy+BE/hUqc5H0qk+aBubb2lnV6FHOW529dX56oDusOpv0gFMso8xZG?=
 =?iso-8859-1?Q?l8FoQoVvnxcXd5lpNl/TacSt3LcMYT6PIhMioxDKR5qmfgOeVfkqTEUJu1?=
 =?iso-8859-1?Q?re63qH6kAx83H51N8eNmzUnpiS0QB33+JR7tIoH9Nq18FvIUxha8My7Bbr?=
 =?iso-8859-1?Q?3G2tel7cBRUn9jgV5jNZQWo2h6u8u/Tt8BUQs754ZxMMrWe+1sNqYw1/qH?=
 =?iso-8859-1?Q?nn3zBprVtfJNDd51GDKY2oB//9eZpBFSNgzkfM6/LDEgt2cdpqbr8yog1q?=
 =?iso-8859-1?Q?Wg4Cf7Tqds5tnAIuXQ7+4IH8+D8GP9cXUxR4g2lLSXQR1CpMGhaK0TtHYX?=
 =?iso-8859-1?Q?vzEyYGahUVJNc67UN6N/BL2ywVa4udFRoPCCdG2IoimnbaQVqWA/vkdafI?=
 =?iso-8859-1?Q?mX09AN2ksuPRfeCBczNOWir72Wg9BUfl9EZ9PFh9O39g0ZSWvdN6NKiZco?=
 =?iso-8859-1?Q?jdppNCbf5K8d2YRyq2lFTtGanH87WsCYkfzZ1O8JI0qicU64i20U9pRLI3?=
 =?iso-8859-1?Q?YSRXYDFH9LjmIqj+V3QlFF/+lgMc1uVm0AZ0oUEOXYKEL9tPZKE/4/jJWs?=
 =?iso-8859-1?Q?xHzeQ1G5eG1rNx3iPAt7QvTBAIOqOaLO0dCyZA4tMCb0unZI3xEM6BmWDB?=
 =?iso-8859-1?Q?1QZKuiyys1wVPn6Q/LBpoLGTZ4E/NkXrNE8WUpJxKh2QZE/qY7xC+VVa9V?=
 =?iso-8859-1?Q?/z4UwvxXXHIgGgiFpvJnXwC60rzql5d1MkHv/eB8FBJ41zzZLHN2RFNrHa?=
 =?iso-8859-1?Q?YLJ9SCUPvCnmEDikly2GXBH8FMuO/0B/YnStjRmuDmXZTUdeoLsfs3PTbz?=
 =?iso-8859-1?Q?fr5KZtVWBn/3g8qBOeKhAKtOFR7jijGXGqlHp+AyKDcqf/pQOmbwYJi7Yj?=
 =?iso-8859-1?Q?R/7evOdrBlTXD4Qv0ZE2ZVHkDxMtHec7If6sacUknA+mudjMu+SUPMIrfH?=
 =?iso-8859-1?Q?NAVjWnbK5gek3a7/6U8bibdZ5Im/6WT3W5AOuLfzeYsq/Ro2QXgI6WHWk4?=
 =?iso-8859-1?Q?RT+J25FBEhzJVxPMID+Rgl8U3oHqiF5Ne8TIH2lO1Fib+6oR551hf6rKeD?=
 =?iso-8859-1?Q?4vlvNeNSw2ZKXyvdEmBZp+lak+3+0BeJovj9kyizt5nuA7VQdIbvJn/yrT?=
 =?iso-8859-1?Q?lrKzb2SwcfyeF4HK8n19VeJx7KwZB8WHD9xIl/NTOjOBKLR3z4A7xtMJkr?=
 =?iso-8859-1?Q?NelvXIB4rrAd+Kp/zAuD96ftRTrnKvhO7SY4n2CHaC1Syw/BvTGCeOp5Re?=
 =?iso-8859-1?Q?JBwID3SZTX+dc5N4V6l2D0ya6ZrD37SuizysHDiNllcAakTDnl7dF/BwUT?=
 =?iso-8859-1?Q?LhTuflHSpUwv+01ryZB5yV8OsdUJ96IaLWoK4KwVovDb+GPpTnDb0xwyUP?=
 =?iso-8859-1?Q?wiwEd4wFlUgqCQqyQTFRrj//4wKece/eZizt4rTrTGawywxu/qpdm2UEGw?=
 =?iso-8859-1?Q?JwEcl/979mo47CGiR2GoJGcCcgkUuYdHx0Mw+xwmWriqd/uSYUpJswpJJV?=
 =?iso-8859-1?Q?Fbj8uxT/f+ZUd5y+aE0KjJjPRCI6pKaJcU2aFLjqJoNGu/59zkW93Byg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ec77e599-36a1-4745-9f20-08da97adcca4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 06:36:34.4354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4WgEGCMHYAV32ErI/eA+sLIWe4HPb/mRqhyDgStqabkzAeR6X//QZoXn4OpWH0ZOKJCr+9kq2crA0ND1k0/VTnWj9mWhffNxQFj4U95D7Y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB6461
Message-ID-Hash: NCCQSEPOEK3BRNSBSKIAHSFC2TCYOZIS
X-Message-ID-Hash: NCCQSEPOEK3BRNSBSKIAHSFC2TCYOZIS
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] To enable WIFI in USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Y5JJAKKITMCOEMCX3QA45CLIU4BXVJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4058135670718782119=="

--===============4058135670718782119==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB3558F05CF7F75F22F461AA1ED6489BMXPR01MB3558INDP_"

--_000_BMXPR01MB3558F05CF7F75F22F461AA1ED6489BMXPR01MB3558INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

HI all,

I am new about our product.

I want to know, how to enable WIFI by using usrp B210 board . Please forwar=
d me any link available .

Any daughterboard required
Regards,
Sivaneshkumar K
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB3558F05CF7F75F22F461AA1ED6489BMXPR01MB3558INDP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
HI all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am new about our product.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I want to know, how to enable WIFI by using usrp B210 board . Please forwar=
d me any link available .</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Any daughterboard required <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Sivaneshkumar K<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_BMXPR01MB3558F05CF7F75F22F461AA1ED6489BMXPR01MB3558INDP_--

--===============4058135670718782119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4058135670718782119==--
