Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D714A3F99
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 10:58:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 425D2384615
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 04:58:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=Netline2019.onmicrosoft.com header.i=@Netline2019.onmicrosoft.com header.b="00EnlUPp";
	dkim-atps=neutral
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150139.outbound.protection.outlook.com [40.107.15.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 30A7E38402E
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 04:57:40 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1v6mbclO7kBJiR/TGniPBlECqHJ8+lvQeeNeT92Iq0y1G1WdXL78+bfPPdnLPjBWuDbZ3zezxDqi/qSRrELm73LoHIkNgo9tpuJz3oRS+1uwVW3B3fpXQ6v/v6ywQp1nZQ7OilIDr8tfYW1ksH90Nw1B8YpsncBWNnMgpUDpUjE8lSYknHs+zbttJzUXJLSp66F79aii9+wTuxxrFuY8BRQRnXDYHDcItUFAwO6nJfuXAebiFFUpI5eTW8m8AA32Hb3r42nhxubSKBItsLgxi2clD100mGHX6ENTV52ELRFMo3YGy4TcpbusJ4LXoccxnTmCKRR7Et8fas1E3tXQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SQcnxQlzdMk30F2/qTJtVEqiHsywD39JJxQ4oZFhu7k=;
 b=CmIXCHxx6vbDWtVAJs5LSdPprFWjxgfb8kUAtNwF5zBK6MFhyRyDyF2FbNW/tZT6KafUDiyzwwcG5tmoBKMQDi+rJs1ezGjoBog/nTE3uW7LhYEwE7u9b8hEDMP17Dd42YlKdHl6MOGCxBRG9gd39SMci41tTcGwh93E9YAsOEayUUGvLKLilZqLv0AHo2x5pYrTdSdwu85TGa0ol51HB706NkTTIyF701Jp+QK6IXKPoW7Qh9OMXuNpLuVIU7kvZ3zCA9wImghsJDnqo8961DvidjrNM9/byTC78IdrRfQK/fmbrdWl6wF8CW+M3mTv+OgIcdsSwt3UkOTzjoDxyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Netline2019.onmicrosoft.com; s=selector1-Netline2019-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SQcnxQlzdMk30F2/qTJtVEqiHsywD39JJxQ4oZFhu7k=;
 b=00EnlUPpHfJr10kJiz4/mWQAgTlRVvzOKMg9ws0z2YkOOAZBMZrLSAeYS8ng9rRMd9f1wbLNncaOoOT59kzO6w9EDDbTrKB7q3wgCkOuo5i+k8z3b5TEMMx65ghNfoXCNSkUFW2nDbitqc9OKt6ueEFTe3Z2+dKnKyLxvHJalYU=
Received: from DB8P194MB0631.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:147::15)
 by AS8P194MB1558.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:359::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Mon, 31 Jan
 2022 09:57:38 +0000
Received: from DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
 ([fe80::b871:e8ac:6b23:667a]) by DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
 ([fe80::b871:e8ac:6b23:667a%7]) with mapi id 15.20.4930.021; Mon, 31 Jan 2022
 09:57:38 +0000
From: Dmitry Kupchinetsky <Dmitryk@netlinetech.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: test
Thread-Index: AdgWiO9vAwOeE3CNQ2e1/tBc3/uLNQ==
Date: Mon, 31 Jan 2022 09:57:37 +0000
Message-ID: 
 <DB8P194MB06311A35E68BF36C97610887AA259@DB8P194MB0631.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=netlinetech.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a147414-fd10-4d4d-420a-08d9e4a01ce4
x-ms-traffictypediagnostic: AS8P194MB1558:EE_
x-microsoft-antispam-prvs: 
 <AS8P194MB15589C1C49E895CBC371204FAA259@AS8P194MB1558.EURP194.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cWOvvNPX0oWhhGHP4XIryajpgc8ZwwUPedEKCk0DHS9MuqsBTJuWgSt0smQLdg7pCsjV5/tT6yA3yC3mhmZQ11sFf2UZh1Qd+B87TnulfznbzatYx3vnFLjBLt3cGjNVb6Cc+9E9eZ0lYOK/4QIgZFlhHyIamBAH1WSAmGCq1turtuCrO+Oya5iK3DgRrDDYXT7etI8aHXKSXG8jYjBbt9Bs8UM7/gpNuaUtbL4tYfq6rk+K1IFOX14Oe7eJO1nfcG+RdDPEad0LqIYwvecZ0g5Shrf2LOJiqxNYz+4FlqUI26LlkWNdd5S57L6kEzajPCQkA0P4e0zeVjbaJGyAkPzzYqMeifHw48YRfE+2+bEVMgNWhHj7cTfELBh+4jqB7OXofr78sQOvNMrH2Ojh6CVWIJpzRq80erO9/bKHEqzVI+s9V7LAByk6oSTgADpivcjdf3VygoCS+NcmVcpSSFTNuDRp97hbNbK7ucKTSQw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8P194MB0631.EURP194.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(396003)(346002)(376002)(136003)(39830400003)(6506007)(71200400001)(7696005)(186003)(26005)(508600001)(55016003)(33656002)(83380400001)(9686003)(3480700007)(6916009)(122000001)(5660300002)(86362001)(38070700005)(52536014)(38100700002)(7116003)(8936002)(8676002)(66556008)(66476007)(64756008)(66446008)(76116006)(66946007)(2906002)(4744005)(316002)(220243001)(20210929001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?zaAQkdjmTL9dYo1XD2I9LTjIcHcsaWgl7jdah0oB9UMgcERNouiaIPTXS9yZ?=
 =?us-ascii?Q?F7NKU7Dd/HC1yFRusWFaUzaK6atC6kYxD2kpw2ieE7drdooAjY3eXFpBD7Dw?=
 =?us-ascii?Q?5jLFW0q9XTnj25toztGnKMCSu5A9GTCmHsF0BKMvJztucbf6sdZloLqrZAza?=
 =?us-ascii?Q?tnD/njnsXgTPMsBNqyQ6/pMqgwM1p4ZS730oLlg3Ayh7+yE4YQ2gQhWV7j6l?=
 =?us-ascii?Q?006bjmbW+UlBbnuZU6es/T5mEB5N4hOP+YLwURXi0BGDsOJiXXboyHaxz6W/?=
 =?us-ascii?Q?AQ7YJ+rvAQTCaqEhak6X9LZM0T0lOXkPe6KaIWalxo5gsi+PM0KrNHfCDZu7?=
 =?us-ascii?Q?GgFguRcX4VpZXJS5ezj/H6JcTM82DYtHobwFKAsPqGM613Pue4G+i+Ms8f0j?=
 =?us-ascii?Q?HEYS2D6vYGzbav3EeYyYTjLVeOQaMaZMoT0iOE4vepv+M7FFgYsW4KY3iOkR?=
 =?us-ascii?Q?jIdwkjN800r0DnrFfGlj94QNO2r0ZTZnaYxNLCTdW3nkNj7V3YRwIRkIm2Gd?=
 =?us-ascii?Q?iNxwqpm3MVdi3pVmbICmE/pl3MAtrH1lOs6Bq8IARz+ZMGcMi7Hh1/g0lSna?=
 =?us-ascii?Q?m3D7wiFnKLNSrDQhixbnT5LSyiqdvXG3u9jogGLz68BZLt58FMTb0/uZ1hLF?=
 =?us-ascii?Q?/vSM/CfsXnm0cc4Ipu6fbkJCbkqE0h1NCo3NMymSOTieSyJlLv7+4VpfjIa5?=
 =?us-ascii?Q?ziubhLDeU16nklsASYIKZn79xzV9lnEWysgmqsfZ4mfjKpr7FgzVszxvk/kU?=
 =?us-ascii?Q?RFRB3iZAiEUEuc10rMDDVxXqWVPW7qkrb85c0KbspJ8d76sKHjZBO20J4dX3?=
 =?us-ascii?Q?ZHd3TAt89Q4AWy8sZPNlNAGscq5HPif5I7HW+4rf2boTqHmkKniS69gkThIb?=
 =?us-ascii?Q?iTRwYZM0+qLA/RJ9ujs3gIPSR6uOKWZvsgwIfj8cJrmzv0yAOSHRi7gN6SV4?=
 =?us-ascii?Q?BpXG2mnQisGz5cGep54WDrpGWIuNrGbE4Pg92KYXOM/tWQyiQdHesmiIrulA?=
 =?us-ascii?Q?UAa+Pa9Vfupup4GarzWa0W7mFJeHpueppt6sAv5YX1toYSkyuQqjFb6vef8G?=
 =?us-ascii?Q?8xIDN3whp66+rgb8Qaph55A1xVLpyJcBFHXtEERLWFgXqerTgbzfqJsCZBXX?=
 =?us-ascii?Q?7mn93fTaJbDFpwNe8r1MYaBmi3ebZ5ub17kcpRCt/dLZinlzT7b6JBOfToHB?=
 =?us-ascii?Q?Ov6pc8KffoVgJjT662E+vddyb8BmN5Z4NdYlCWaTzazydQdvL9hQOKsWg13D?=
 =?us-ascii?Q?oBCSK4bVDP7ct3Wt1H/n3pfblgz4OROXcRJCmFvLf37NCF9C1kJUHSZRk6w9?=
 =?us-ascii?Q?4huKVT4itDHI1myGPC4s8+B/JW3rFIiUP0XMEGBxEq9j9egyp1xtO6b+Bcii?=
 =?us-ascii?Q?pqTbONghowtHcWLwF1kjtEEZCdPXdKfF/UY7hlBSvK0JiJL84uveEHp5Yd9c?=
 =?us-ascii?Q?Iqghrsad+d8cvple5cr6f2wAoQjeYLt7s42yMlKqOVdRWTSP6597A3rs+ncr?=
 =?us-ascii?Q?DL+Ahc1Sa5EaioFmdrigwtHBJUeZDM2JQf35sAM0DSRU21u6OPfcUKD+ayoP?=
 =?us-ascii?Q?BAG55y3B3ZUXf/j/vfCe/3R8+VI9L0/sgCWPtNoHJpCUfoRVcgfEpl6DPXgp?=
 =?us-ascii?Q?DZFEFfkFSg6Yir252NOceQ0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: netlinetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a147414-fd10-4d4d-420a-08d9e4a01ce4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 09:57:37.8873
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8305e2c-ed75-4c6e-b53e-8ba0db504e52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ILL9jiVPvjJnxHqzGNJrW8mGt8tXRw4bVgWM3KwmpFeq9EsgImspJYwB57sV/tNB3BxtucO+LAa5HsaXwwHVtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P194MB1558
Message-ID-Hash: JBZJ3WKHUOKCBHJAVYRDD233B43ZW6K6
X-Message-ID-Hash: JBZJ3WKHUOKCBHJAVYRDD233B43ZW6K6
X-MailFrom: Dmitryk@netlinetech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] test
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QKIZBS76AVQSVF6IFYRBH7BM7TU2GC7M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7902560892563244171=="

--===============7902560892563244171==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB8P194MB06311A35E68BF36C97610887AA259DB8P194MB0631EURP_"

--_000_DB8P194MB06311A35E68BF36C97610887AA259DB8P194MB0631EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

TEST
This e-mail and any attachments thereto (the "Message") contains proprietar=
y, business sensitive, confidential or otherwise protected by law informati=
on. If you are not the intended recipient of this Message, you are hereby n=
otified that any review, dissemination, distribution, taking of any action =
in reliance upon or copying of this Message is strictly prohibited. If you =
have received this Message in error, please notify the sender by replying t=
o this message or by telephone and permanently delete the original and copy=
 of this Message. Electronic messages are not secure or error free and can =
contain viruses or may be delayed, and the sender is not liable for any of =
these occurrences. Thank you.

--_000_DB8P194MB06311A35E68BF36C97610887AA259DB8P194MB0631EURP_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:right;
	direction:rtl;
	unicode-bidi:embed;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" dir=3D"RTL"><span dir=3D"LTR">TEST</span><span lang=
=3D"HE" style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></spa=
n></p>
</div>
This e-mail and any attachments thereto (the &#8220;Message&#8221;) contain=
s proprietary, business sensitive, confidential or otherwise protected by l=
aw information. If you are not the intended recipient of this Message, you =
are hereby notified that any review, dissemination,
 distribution, taking of any action in reliance upon or copying of this Mes=
sage is strictly prohibited. If you have received this Message in error, pl=
ease notify the sender by replying to this message or by telephone and perm=
anently delete the original and
 copy of this Message. Electronic messages are not secure or error free and=
 can contain viruses or may be delayed, and the sender is not liable for an=
y of these occurrences. Thank you.
</body>
</html>

--_000_DB8P194MB06311A35E68BF36C97610887AA259DB8P194MB0631EURP_--

--===============7902560892563244171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7902560892563244171==--
