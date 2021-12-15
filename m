Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF8C475C32
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 16:50:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE2B338539E
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 10:50:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=usask.ca header.i=@usask.ca header.b="Q7csFufK";
	dkim-atps=neutral
Received: from CAN01-TO1-obe.outbound.protection.outlook.com (mail-eopbgr670134.outbound.protection.outlook.com [40.107.67.134])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F41A385247
	for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 10:48:54 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqz4J2bqs/do6dUg5uIrA5W8yPnHJUskwVMzKPTHEJjy5gdwjnypqCcyIqa1GotJsCXsG5uJBkb22y8ItJRoTPutZySkHiuX4sEHecVebr9ywGVeyE4AYeHxzoHuTXRo3e4sDAZ+EWIOwbhoytQD3xkVMsFdrc49/MPze/jzISpvSZ9L63/2RC5opzMAu0DB9PuZXt1UPvh2lLwINmvF5VGUzeb+HvKEU3PTRG+Qha1ptPl4/ZOdopdC0GXRwHF4fKAMJOa2MFGYb09gkelGSShiZsWJVBxKt8QGDpIHKz/CDA/6TBbbEREdXaEKta4LU+4re2Nu9mRoVUFhXjOJlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+KmTrMLePnk4Nb/HMFCSKRJLR7EmKFc9DRGAYjptuo=;
 b=TWn5ZVW4LN7L+KJK9FbbrqjcL0Fqz7BTNf6Yq7j0a7DiwSOwn5vXUFkRlHRmm16Qmy6ZjD7+WX5LGKVyRWFV56G9d+uJ1BCSUpzhZjk4lm8KyT9J6h9EW2VrMOMn+H4uR3bZuIQU3w/nS8WD5ihQfcGCFT8CmZM5Cq4BzxnVIumm+BM5xrjE0TD0ThdlhlEjy2cdZ1gfflI7u5W2mTYAh/+HOfaK1i8YIXH9a3AW5LDwWB3D+BpojKeuAg/7pvg/i1CBJQo5GG+s8WCscaDWmMBBoNvNINHHWAhrzKbPJiBYhRBiHm+iNn9S8F35l2vG+/ZcVsRLcX46cezv3gsZOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=usask.ca; dmarc=pass action=none header.from=usask.ca;
 dkim=pass header.d=usask.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=usask.ca; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+KmTrMLePnk4Nb/HMFCSKRJLR7EmKFc9DRGAYjptuo=;
 b=Q7csFufKBCm8C/xw8q1gEDv7X8XobaZM0WXKvwBAANdaf2OYX03/QTMDDe9wnAZ77z751TLHnZab7yFv74JQ+iPSXrKR68a3+j4pCOIq9a1APsGeUkUHzKHZIcNN+K02ecmrfcE4JPqM4081mTgWpkBBqCwzbvQTOZTaPet/k8I=
Received: from YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1c::25) by YT2PR01MB6240.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:4d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.13; Wed, 15 Dec
 2021 15:48:53 +0000
Received: from YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::953e:bf4e:df:66ac]) by YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::953e:bf4e:df:66ac%6]) with mapi id 15.20.4801.014; Wed, 15 Dec 2021
 15:48:53 +0000
From: "Rohel, Remington" <remington.rohel@usask.ca>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Python equivalent of multi_usrp_clock
Thread-Index: AQHX8cWmzEkPXVi0sEWKI0gVe7D4XA==
Date: Wed, 15 Dec 2021 15:48:52 +0000
Message-ID: 
 <YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: bd3fb50c-5caa-e5be-3942-2aeeb5844d66
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=usask.ca;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18767148-48f5-4632-a291-08d9bfe2652d
x-ms-traffictypediagnostic: YT2PR01MB6240:EE_
x-microsoft-antispam-prvs: 
 <YT2PR01MB624001C6EBF9B9C0BA0A443594769@YT2PR01MB6240.CANPRD01.PROD.OUTLOOK.COM>
x-uofs-origin: Internal
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dDTsxXad/38e8H5XMET+XDL2CtYI0q1tJItu3XMaGRCoewOlarcBQffP/WcnVnDDgwk7bdWjtxYSCdeWrZOC9TcfOLRLg0UigJmPc+kamTJlAroNCgGH+vPiszGQEX6uZCuxp+BON2JgKYe6Z4nnx8VLaD/D2nzQyMhOe2+NpdmEVcRBH1WiZdBvkvOwtziDgACoc8ZyPowBcPMaHOWGnxKzfn4ouvwPKInPak+XPhByYjMlY+A/+m68daetrnUqxlefJkdyly/9I+KsQfa+jHrtGJFw8c9uvJbRcrgkCGtXapYIcDRVAveYsGw6EXN6CIsNjvkHH7/crR+uZTKc4sDB5FVUzlDeRY1OdxFUGDofI6+d6Eufpx+yWIbsshqOUjzcdumzR4ohlGJqngjc4tkGL7UiplDmDTTq2xEKGGwG2INoHzj0nudE8N2zxMVdlu/mLftO2xyZJfcwofUqPEHsoECoEZ8Yz1oUvbVkvg57pWB8YFFTLK4jI01Rf40l5sKKtdCXjzSuq5rq2byzjiH2eT4w4gJvpy9JHMw5WwOnfmtgj+i4pNiVjfLmCDohAmV5xtOAYM3YKu13+lOW42/vdeTNDZBeZ6xkg1eIWPPJy2o0M8u273dU3dMMG8MkZINrwO0FT5P1ofTubcpx3pSliwAQ+plY/sok9vLFHJzOeHHYIABcr3/vNVWxm3bl5Kgq+XyCqxZWG9+KLounVw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(6916009)(508600001)(66476007)(33656002)(8676002)(66446008)(83380400001)(4744005)(122000001)(38100700002)(52536014)(38070700005)(7696005)(26005)(66556008)(86362001)(91956017)(55016003)(186003)(76116006)(64756008)(19627405001)(5660300002)(316002)(71200400001)(9686003)(66946007)(2906002)(6506007)(8936002)(786003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mhgqNJnnemEUTTv5BT1BgNoXMwK7S5tzNcZouPxGWjLt+vpgTrKZVE58zK?=
 =?iso-8859-1?Q?pFY2esu3pP73uWDy7CReqPRKC/bJ2ZfM3EJcvvYCdSq6tdIzQct1QmVBke?=
 =?iso-8859-1?Q?aPDgqDtkw5K4y3Mkbzn8zBK/uRPuMQOAHov9Tefm7XBA+3D+LfmlAaOT4q?=
 =?iso-8859-1?Q?WubTWpPD+jfQWGvokZg95Nia9FbBN+ho7bIg6pHUIVHjfw5wdz+OSA+Ouu?=
 =?iso-8859-1?Q?rEcHTlOLOCbh1Bs5dm6SMkxVKpKmBQc2jhlhPqe54dyBtweHPa3Qj1T3S0?=
 =?iso-8859-1?Q?aN+gZYeYVKDG+2Ew2biS2Dol+WAScPVVRnvM39Yc3a6KNB6k5KYTqyeCWy?=
 =?iso-8859-1?Q?SmhdNbRA3SVFq9jSmtq/wfVBmLyKCHL1YDfr4EUZ20oAqTY/mjIDXne+hc?=
 =?iso-8859-1?Q?9z7QTgWezAqXy6qFI4N6DAcWGCgg6RPADrQJ6OB38TW8ATqEE3xV8lsZWQ?=
 =?iso-8859-1?Q?D5JbSSUPW9eEYKq786CylDMnPB+o5Wnfz24ymCPNNz0WbYyJmRnJiz0XfA?=
 =?iso-8859-1?Q?hKJ7MOkgEhcreH7TYy4XJj9rqcYQ5V+PadATugVQVCy77QhVGTDz//hL8H?=
 =?iso-8859-1?Q?gOBM2xrQ2aRuLqDjKQ+B1MG+A+UoRaCPGm8nX/l3zals5fq0HDAiS1CCgj?=
 =?iso-8859-1?Q?wdrCtrgPKeWobQx5R7/pN7rtSGUbQaLWpCzwZw1eNbUVBo5mgApGsn4yGD?=
 =?iso-8859-1?Q?Gm3QdyCnO9aueVPNyLmZpFYhRsMZSD1tS0ty2CusaR8cK6HYoKcp1cCXT0?=
 =?iso-8859-1?Q?XeeWr/3MB62w15lyBdenDag7BE8PkE8X7ooKnDqIVHIMRFdp/Jcjid4B04?=
 =?iso-8859-1?Q?d0JHe/lUD1DehZ0reE0BorjlAjvYXywIiYdaj0jaDFh7ttL7uha8XAs5VD?=
 =?iso-8859-1?Q?oQ6QisIWkntMayi4Brf4zxgavOibcso7SZA/DLUtqrcqtLJJt2xZ91kPzB?=
 =?iso-8859-1?Q?5+KIDdZXYT2efeMz3kHTSmf+tHsgvljxViOYFdIIQNfXGY/3kjrZ9qASzY?=
 =?iso-8859-1?Q?3q/H3BgZ5amyZseAnrBaHx69jFHL36JT8oAfpF3VGIWsIsmGdvflwnm29S?=
 =?iso-8859-1?Q?zSTx4tram4bXbTEPYp2Of+ByVN+L2qe7wqkAAs3wB2kQuCQJgJN5SL4/UQ?=
 =?iso-8859-1?Q?5Wp2FMqoa+/hll4XIKgcn07SI2qGQEXOl3tGfQ+4mRbreSsP1VGTH/rULy?=
 =?iso-8859-1?Q?NtuE3VQ7upd/EiLxVBaWw479bCu9TlWeTkiwAHNKV3bFeELIEmImsGfVBZ?=
 =?iso-8859-1?Q?0xE77jNJAAwW99l6yGZRACcy7dzlTB2HyEHnACAU5GNA9LWl3VPLRYCYF4?=
 =?iso-8859-1?Q?fxEkPv0n0ny54BtFAX9wFzhArMMVZ+6PcbjMe4G9QMLSAEECWkrUvrC4c8?=
 =?iso-8859-1?Q?lhPlhXfCNrAM6P7KF0QSbGSXzbiuD12Qo8eCkW7AnteAD3cMTwd9xyEGCq?=
 =?iso-8859-1?Q?6OTRQlMUHlv0ZZH7TCAAJQ10QRds2nSDBiBlEQ49R70olCr8CwEdJJK64Q?=
 =?iso-8859-1?Q?Y94RPeS2ZduBQ+A4ggaoLxow2eeOe/ExUXyoz7Xkv6eyl39nmiVfaTPIt4?=
 =?iso-8859-1?Q?7XLLoidcbpktoA/vBmzjqRB3oJo4LqDfrN110vZNtDNGcxkykw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: usask.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 18767148-48f5-4632-a291-08d9bfe2652d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 15:48:52.9740
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 24ab6cd0-487e-4722-9bc3-da9c4232776c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D7JYUXKf9TALQl44++Kjsi3sNLIYEa1abfMJwpNRSfYA4XMM+059UJUs+Es07kPo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT2PR01MB6240
Message-ID-Hash: H3B5DQOTZGYYAJGRP32SKKGTSE646GEF
X-Message-ID-Hash: H3B5DQOTZGYYAJGRP32SKKGTSE646GEF
X-MailFrom: remington.rohel@usask.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Python equivalent of multi_usrp_clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUV7Z3G7IEVFGL2Y6IXQ6SMREWOPTBC5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2983116850430741927=="

--===============2983116850430741927==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_YTOPR0101MB14019905FFD39868EFF8EAFE94769YTOPR0101MB1401_"

--_000_YTOPR0101MB14019905FFD39868EFF8EAFE94769YTOPR0101MB1401_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to convert a USRP driver program from C++ to Python, =
but I can't seem to find a Python equivalent to the uhd::usrp::multi_usrp_c=
lock class. For my setup, there are 16 N200s being synced by three Octocloc=
ks (one is an Octoclock-G which disciplines the other two, which in turn di=
scipline the N200s). With the C++ program, a multi_usrp_clock object was ma=
de using the three octoclocks, then used to set the time of the N200s (as a=
 multi_usrp object). The functions that were used from multi_usrp_clock wer=
e get_time() and get_sensor(<arg>) with <arg> being one of "gps_locked", "u=
sing_ref", or "gps_detected".

I've tried searching through my UHD build (versions 3.14 and 4.0), but ther=
e isn't a reference to multi_usrp_clock anywhere in the python modules. Any=
 help is appreciated.

Thanks,

Remington Rohel
Engineer-in-Training
SuperDARN Canada

--_000_YTOPR0101MB14019905FFD39868EFF8EAFE94769YTOPR0101MB1401_
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
: 12pt; color: rgb(0, 0, 0);">
Hello,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
I am currently trying to convert a USRP driver program from C++ to Python, =
but I can't seem to find a Python equivalent to the uhd::usrp::multi_usrp_c=
lock class. For my setup, there are 16 N200s being synced by three Octocloc=
ks (one is an Octoclock-G which
 disciplines the other two, which in turn discipline the N200s). With the C=
++ program, a multi_usrp_clock object was made using the three octoclocks, =
then used to set the time of the N200s (as a multi_usrp object). The functi=
ons that were used from multi_usrp_clock
 were get_time() and get_sensor(&lt;arg&gt;) with &lt;arg&gt; being one of =
&quot;gps_locked&quot;, &quot;using_ref&quot;, or &quot;gps_detected&quot;.=
<br>
<br>
I've tried searching through my UHD build (versions 3.14 and 4.0), but ther=
e isn't a reference to multi_usrp_clock anywhere in the python modules. Any=
 help is appreciated.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Remington Rohel</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Engineer-in-Training</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
SuperDARN Canada</div>
</body>
</html>

--_000_YTOPR0101MB14019905FFD39868EFF8EAFE94769YTOPR0101MB1401_--

--===============2983116850430741927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2983116850430741927==--
