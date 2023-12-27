Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C46CC81EE45
	for <lists+usrp-users@lfdr.de>; Wed, 27 Dec 2023 11:40:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07DFA38508A
	for <lists+usrp-users@lfdr.de>; Wed, 27 Dec 2023 05:40:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703673647; bh=X8KFTyn/izQfgZOKSO1WUm0oQhH2u03a6kJ1tlhVp4c=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=MUz/eVJwwbdV78N9lcCas+iOqxBVrBmxkJ6KnNgm2FPOZ9at9VlgN4raN3KfP/0B6
	 /3yDMVLo09yCzUfK51Rlz0tPmkdK2KE6LulgZAmmYZLghOR3tLzJdZP0TqrLC5yhv3
	 RyJJZSQADfq/sRSiTVK1N0eJfyqCCGQNI3fWi7r+Z1/dFSe3BOL7Im1tMgofLtlIVT
	 oZv5kUsgBRtZyg9NYAWO5y1dXtys4tkZLdHUTbRA32LwuqkwTi0Kimly3eRx6m7BZn
	 ir3TtWeQNjeXXaBjU5m+ec3yHoff7RB9TRVi5+FMBYFoR32kMgmxZdyCWe48aEk1g4
	 11fQYVOApqzhQ==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2061.outbound.protection.outlook.com [40.107.222.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F382383E26
	for <usrp-users@lists.ettus.com>; Wed, 27 Dec 2023 05:39:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mobiveil.co.in header.i=@mobiveil.co.in header.b="MM9D+NXm";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1QRjDPMIIAMuiS1MrL8VtZ39UV/Fe37PIkG/n4FE9jYICkGUXWqCmQM4xwixzOzfGX98lC8w8t8/shzi2ZT071Rdg+4pGweoWX3hBxXga0wheMFgiNIvfZVj8nyoKH7DUgnFzlI+UJqL7gLl8vHfJ/b1dBzhVtT7OPMTLv9RISfAApy+K1oYdugByKVgjbYYf57Qe55gZIyVPcod2fwOJwg6noEpugSZthiM+LWhmcn2McjCqD53YLQuzXovZCBTqO9E2Avul7PITxE+DK+/LQvOHWi3bYo2D6UQXNwx7hrkFM9z3o5ev4Oiw3QTmSesJJR5kiCZAYsif8klu3PKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyoA3fTnEO1stIIhGUIXqchJLbabAVpq3ncjS057QpA=;
 b=Rg+dRQ4P7gZohVmfHQ5igeXIk15jWWq8BOm3DtEzXcwdZdr5dowTLx3ReCIbF7ZJwzyXmJezhwIgmuAvD9pu4NfatWHoV4gxy/RgXtSOUUaTAP3oBV6L2KHikJNWvmEh6R2o/djokvuAzMo7Nnl8pDQpCqPo+hgDZvE4lhiz9KnRsG33yi05m/4rYV/pfjrD5IRPSWKNOwJw6NWsJrTDm7u5S1VTF+U6ph+iGRlTP1rINsYPBgOGwO8yoPISxZef8oLk4DjX7MdUhKfZVUz8lvTpI96Bs/4A8rJMrpZyC4NOHnY95E62gOOrE9nCi7qPbCU83T6EkmKEnmoO3rWSIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobiveil.co.in;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyoA3fTnEO1stIIhGUIXqchJLbabAVpq3ncjS057QpA=;
 b=MM9D+NXmHlXKkr1VzV7QkAKD8pj1dukpQHTWcfzBdQfewCUPKoJKcX8ZjWd0TaCdcQoYiz0zKU6mt/2KHd5TblZoMtzA0s4F1vDWYu+gwSaoVJWf7zx8eg+f5w5swMlDExUZ8pCu9OWO9eVT+S7jJM/G5we8qPiTZrt8jiL+LUPMnpwv+GtEb4nCgCIUFROxhfMptw7mbytIiKdUtJXKFfQp6/aqaLcr+fyT+fMwvumRBaew2sOvxgN8ZqlL7WZ1WuRQ1EUWAFj4f5FZATAf+U/lwpPZlOBgvMwAaLkLxFppmIKOc8X8xKkuA4mBdrthANLcCQRpZcpk3lQeWrLEeQ==
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by MAZPR01MB6214.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:4d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 10:39:46 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a7ab:a187:ceac:fa3f]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a7ab:a187:ceac:fa3f%6]) with mapi id 15.20.7113.027; Wed, 27 Dec 2023
 10:39:46 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: WIFI Accesspoint for B210
Thread-Index: AQHaOLCo2neBbGtL2U6awl9Qcwnq2g==
Date: Wed, 27 Dec 2023 10:39:46 +0000
Message-ID: 
 <BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|MAZPR01MB6214:EE_
x-ms-office365-filtering-correlation-id: 3dce04eb-f954-44e8-8edd-08dc06c824fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bF/twU7ePT37vjYn0squcnbMhmzs+h8G8fLtVCezjWSflAdE3rLmGn5oOoDcYW28i/bZxJnTMj7O1m5aOy0nQEQxWQJualDT0Isso/9/QHBLl9iCC7SkiiCV+NMy4mEq+sRZQcv/A1bq1nQNr9982rE9FAG6uD1iriSxq8QUoMwrazpq/P8ET1u5n9xfk8jKNF34XOrtgNmmAZmZxby5OKKWjHRMddx9swgJoHkifckA6fotqn8XZ10AazEpxhMkXaTWel89eo0mUa1SJgJFJR8BB4cs/KpTeRNDUWTizN06H/BKUz480qtVn4yxEcBa4bfb4lAHj2W843rrIVDSGkAU6cbvzMIsHCSgrwAXIAuobJti144nfxaZm4mD1FZ+E6V4OLh0Q4F+hXvII7ky0Zr37V+/CdRyQwzd+2qb+YfEiGd6Qq1xduvuQP9YZMOOtwFoSBkYrHFP0bGWX58w4V5gsFR6F38IXHQrmHHvqW1AqbSFHknMPkW9s5ZRrZcY7NqbK664HbzUSclf6wgE1VgAB7be6Fzt1sBvpkOvuTMpA3RiuyusWYuuAlFlXed+DxMV+oBaBV/FoR+CIrOF3bcJjwvejy21NMOFiGrYn0Vxe1v1NuuJj5Rt3gQMEM42FnWI3bSNRiVSgmXx4rWq6a92ZNWQeGnDq5afJ8eca+4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(39840400004)(376002)(346002)(230473577357003)(230373577357003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38070700009)(83380400001)(64756008)(6916009)(66446008)(66556008)(316002)(66476007)(66946007)(76116006)(6506007)(52536014)(8676002)(8936002)(71200400001)(9686003)(7696005)(55236004)(478600001)(38100700002)(26005)(41300700001)(122000001)(5660300002)(2906002)(4744005)(19627405001)(33656002)(86362001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?51uPSHtSl6gT3CanTgaiIkFVgYBfGdSZCAUfH3C83vZCmeuZFPNitxqULQ?=
 =?iso-8859-1?Q?HHlZPTErRsVRTD+Oy+nhdlLGkhgWpm6+jT5RrhVxxPtycbs0DBFwvDavK+?=
 =?iso-8859-1?Q?McMEpanpA8U9Sx+OiqxrmKcf0eGa6iZQ+tUgKyH+RRj5T44pVrg/DY33Zx?=
 =?iso-8859-1?Q?HGw2p1xlvL25Font25XQXLikvNwci6wUcVpj7klEHA2NIYVpt95J807O8V?=
 =?iso-8859-1?Q?hxxjREtr68TjDE1vAAkH+OvbVtAGo5hH41r4Zqysh8ffOhyOO/ERM0xyf5?=
 =?iso-8859-1?Q?qPvLKitaEsPm2rTiU113PNDjgtBHqPlLnQga4olHpmPPzz2SIjNK5V/tNz?=
 =?iso-8859-1?Q?Ah+bQDZdm38vgoZT9ukwZ4JKM5v/IqaNhijQdcmn27CSoPCYTLabuYexDg?=
 =?iso-8859-1?Q?yOzy+EhU+hZz+v6ddYU+dQbhM23uTOhT7nkd+00yfKfMwQ2BNlUiC3ePC7?=
 =?iso-8859-1?Q?0eXCY1mQR5opOyGG1ww/k+Ted/7RxI5LjwqGI43O1WQApttCN5+A02l3BO?=
 =?iso-8859-1?Q?P/sv5GNfwtn1Zx/EzStLDtZKnxhgS4NaP8tfgSDKZfbqD4xFQ4aPzMCBFW?=
 =?iso-8859-1?Q?eiMM69CtRnRhm+Ei14tLt88Fc0Eldg0FsH+EsjeWJN8K/xcNqb16qgukxJ?=
 =?iso-8859-1?Q?tO+kEqsFOBRLfCF4buLoW0VMg0oitiMgfgekevhj07T+NE2/YYpcE07ucc?=
 =?iso-8859-1?Q?3Sy62M5owo9rcRBX/1Dsqu+D1gEI3in8Ccc9pNOW4Y+VMCzzeunEinX1QT?=
 =?iso-8859-1?Q?b3ppoBkTFseRCocNV1xNMNAOIiyANSPrZKftYNn9VvUp2Wz9s+8HrIhELf?=
 =?iso-8859-1?Q?DOs+cD5EMSYlex/hxeAAhbCP1MKvKvEH/HfRwvCEpI/k2HqbSUlEAMKkVW?=
 =?iso-8859-1?Q?MAguqEKhVszuTl77zBV+HhB2KSnv+M7OSSceTLh/mW89q1D1fSM1c/aheK?=
 =?iso-8859-1?Q?EoKt4+i2fe4oZ56rszGmEZRXHBaFeh1PCy5ODQVZ5jLT9jRvEzSDdh06lV?=
 =?iso-8859-1?Q?1HTaVf2m6xdmCrI/u3eeL7ZPx3p7Smdv83vEjFTWcOaH+F/Nj8eU268RIX?=
 =?iso-8859-1?Q?DQZ31oTWRKS3+oAdaRSGrryUf8axWM0zYk3OS0GJuOEAw6XZhB4gFx+9Z1?=
 =?iso-8859-1?Q?LfXdzXbAADR9VAF46xld9NuV+D7E0Cxl7GdFgaOib7FuutXr8DCdgp7WEL?=
 =?iso-8859-1?Q?wC/dIaQXepmYwQL/hS3COzf0mYseckmdCB19cyNDfoJXYixbBGMhPGnesu?=
 =?iso-8859-1?Q?1sqkdfV6fEA9+yF6B8OmHknEqEBuCYdrLxA+2hYsEtTL6FfC2c0IDk9zih?=
 =?iso-8859-1?Q?Ofi+uv1BTn0THxaAKSe0485h4XRInht1btUEgV/Aj0zIsa4K9lUXZb//Ne?=
 =?iso-8859-1?Q?bIDPAaQU7cfTzeSKodXxT2R4k3rvmOhLZJOUaPuj4zDKb/N3pafgMPJrt5?=
 =?iso-8859-1?Q?WVQG/QS8qCTFEs4NOOIRNGgvXJRIxs5HjXEZJHQiz4BsnZZeDd5hxmjfis?=
 =?iso-8859-1?Q?oiU4wZL+G/ZKR0u0NjSp/STCalnDCQ3FR0hgd2uLJkoMkagKNe2QAobS2K?=
 =?iso-8859-1?Q?KwtxMDa/SKtuUZcSH8KX2OBXogYjBh4AGa8cjqyMZiMQ9X2ok4iES5uEXz?=
 =?iso-8859-1?Q?az744Q7U/DcMKXu3lmTBw27S7sBf6sQbBz7uT++zYRTE5vTUv0y/pXiA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dce04eb-f954-44e8-8edd-08dc06c824fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 10:39:46.3584
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96cr6hBBAEarl1HxOAmZwxTBuntv+CATQxxj+Q1qD2ZNLs2jtmW/wM7HTH9L7a1WsNNl1ZYI88bXlI5C1nj7Vmlz7VedSmKRA5svetRekb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZPR01MB6214
Message-ID-Hash: NNDAJXAHCMZA7I3D5QJE7FDEA4X5E7XB
X-Message-ID-Hash: NNDAJXAHCMZA7I3D5QJE7FDEA4X5E7XB
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] WIFI Accesspoint for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5YGD5TOMO5264A7ECTLDLRZI34NZNDB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Sivanesh Kumar K via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
Content-Type: multipart/mixed; boundary="===============5075452045090724359=="

--===============5075452045090724359==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB35586505648133E016DAD48CD69FABMXPR01MB3558INDP_"

--_000_BMXPR01MB35586505648133E016DAD48CD69FABMXPR01MB3558INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi team,

I need to convert USRP b210 to access point to broadcast as a wifi signal w=
ithich is connected to 5G core via N3iwf.

please help me to give some document to how to convert USRP as an access po=
int.

Regards,
Sivaneshkumar K
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB35586505648133E016DAD48CD69FABMXPR01MB3558INDP_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi team,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I need to convert USRP b210 to access point to broadcast as a wifi signal w=
ithich is connected to 5G core via N3iwf.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
please help me to give some document to how to convert USRP as an access po=
int.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
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

--_000_BMXPR01MB35586505648133E016DAD48CD69FABMXPR01MB3558INDP_--

--===============5075452045090724359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5075452045090724359==--
