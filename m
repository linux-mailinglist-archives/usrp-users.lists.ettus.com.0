Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F68F3E5BF0
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 15:40:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6391A3844BE
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 09:40:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="Mx4Xzx7c";
	dkim-atps=neutral
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2099.outbound.protection.outlook.com [40.107.237.99])
	by mm2.emwd.com (Postfix) with ESMTPS id A71CC383FD7
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 09:39:33 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nECEAXAeairHWCd3z80IEJIFUGu9nV6pxML1ueBo9PVivBnPvaK5HPsC9c1yza+CnD2OSUTudzUD5f+65aTOSEY2A0WRMwhgE649vF7eIv3mca0KfEGZSX7Xkq8YDkOqi0eonHbZ72ivHY5IwAx+F+Xc1YZld+ULREw6X7hfKAAZBDIZ2KfyAvwLf+fVJ9QATMBlTkqlWssEBkRCk3s/z2OpQLv5wjXaKdbqm95dQdVw6BwssT48pZmGZd4jsIiCINFes/yCtgVwzkGNsmlw62FILSvqSjkK2rk02NjO81Hj9Vhv0d8HblL5Q8Ir+BOaYa48cM5U/DWJqgt4lRm+Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dfav2ssImZVjxtkr/CNFpT7kVYz4f5NXq1oSsumRhOs=;
 b=MHmGA4x/aUucShkDz04aK3QTuUmkMAJEcwwFdx5NB26gfdM8iumQA5m+89MC8f50tC5haPh7EDtXkeEac5c5ADwkP2ohWn6oVy3aY2uT30t2OAW1MZUYoVvvDsSnqJRCXaZ3uVjVQ2nNpdMHoeie1pqFlJaRnDG8P9YC2/iHnp6nYB4QeMzuyDnqqklh8cS5Zns4bioDqlJXUlTXgDCZww8OCHE5R915m2bOiq7gLx/eGIpk2U6V+4R4qDm78XqmQT7x4fxX1CcYy/D6VZaFTa2grlfaZksFJESdQ344LQTQzZplEkDGf3RKONF9UAbpbCpjK4KXrZ7pvvL63c10Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dfav2ssImZVjxtkr/CNFpT7kVYz4f5NXq1oSsumRhOs=;
 b=Mx4Xzx7cmF3snUoH7GPCWXUwIFZD+4mON9rI4moi86n3yfhhy5s/nstuF1kyCIfg6v+VA2cdUJEQdS4j2fj5GfcRfR+b+8/7hD1U8SO1YxZ6sVtcPPkfPM6XW67dxtnDP3gCp7fJQLhg9bOdRNPDXQ77uJYTOgx9Fpf387qbVZk=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN7PR05MB5809.namprd05.prod.outlook.com (2603:10b6:408:37::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.7; Tue, 10 Aug
 2021 13:39:30 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21%6]) with mapi id 15.20.4415.014; Tue, 10 Aug 2021
 13:39:30 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: 
 AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4gAAPkoCAAwlFUYAAARnwgAAjZAiAAKtLgIAAoRu1
Date: Tue, 10 Aug 2021 13:39:29 +0000
Message-ID: 
 <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com>
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com>
 <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a75e0ced-94cd-4ef6-075c-08d95c0447a4
x-ms-traffictypediagnostic: BN7PR05MB5809:
x-microsoft-antispam-prvs: 
 <BN7PR05MB5809688DFFEE82415A7D4713D5F79@BN7PR05MB5809.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SLvY4Il5y7esJz4UvK0rRIHEAoccjEjD1mTvGzwuy6gMcNmRueeTrZT69AEGHTd6dQeL62BIpGsZvBLsxIJZHQddjsjEKJVoteGeWHHbTlO6N+Fv0M3rg708J7QfxjhhHPEVOASlUZ1CAZ54XM33IaBiQQnPEa4T4euN6XIlfYCdyTD+ymHjZ5QrxPtDPOMJZ2KeobparTpWRHRc2XkcyaJ1EBiDXYfroGBTew8AWJY7ZBZ4aY4BpnPL1aKjKsBKyzphYJucaSFWDPoPxRXvnxz7w8XFVc1b91HQUuxDzV9VPLvc7WI9oAwHKXsxPSx+MaHY+G05RjIK7//28cbt/opiXucfpq7uYqExj5yxAXJ+7I7NtWbl8dJWem23gF3gl3lWg7gYOZ0n+BpQL+yz5rMspp2m+HKm1o8vrDbwWM+X86YvktaEz+eIM+ERAKEeRgyhO2ugEkMg7Zbd4Hi++hb+rCZbvwcbguHBSNSorE+PfOxXvWy5xXdFnBPSukvlblMpWusB/7ZOc48ZQP3F1kPoCKt9fuy09iKsgoA86IZTV0jkeUJzT0vWswFNUXhuJJB0KQDvSTTc3Jm749JNZbZovI0zKElOFtjipfwpBFgmuKsamBKzqbjzz3lWP161ekwupNQf3VedZQb7/dMSRUOGTcmrO5pt+rumbQNJaPWNwNGaw6Ecq5L+pCBrKea18FGpB0dlp3DEDHk5829LIQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(376002)(42606007)(346002)(39830400003)(396003)(38070700005)(76116006)(52536014)(122000001)(6916009)(66946007)(64756008)(38100700002)(4326008)(186003)(66446008)(91956017)(5660300002)(19627405001)(26005)(6506007)(71200400001)(316002)(8676002)(53546011)(7696005)(8936002)(478600001)(83380400001)(54906003)(9686003)(55016002)(2906002)(66556008)(86362001)(66476007)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?tVBxleEqUhWf/GHQbupyEKgwH71gRGCLRXzanfjwgHhk0UX2iwG81JwUN9XX?=
 =?us-ascii?Q?tPjN2XMV1wFKTrh1yZUQhbV4e8Rhlbevp13FGWVvDaKAZ/vqU8LjAavOwptj?=
 =?us-ascii?Q?FG0b2V1JaR1iIk8TNsX1NTEVayTwguf6BgclEadWYf3r86KPqx/91WSo4/q4?=
 =?us-ascii?Q?sgq+uTkKqKYz9tnY3yRQZeDwWpUWGbLHk18YGH7/SZ6WmFFMPJmEtrfNg0o7?=
 =?us-ascii?Q?rR3xD/V0kosxTX5iW3Nc2vqAEvXj4OxvTLhAAMYXtsSK3tfaxztQZsVW1MQ4?=
 =?us-ascii?Q?9+hjj8KHZDnFTnxZZIDgP7JjdYAXNv78yPHVzFGvrt9yE93tiLODasA+N351?=
 =?us-ascii?Q?gZy4F9xDcfzIX3kSMn5sWx/1/RC6JehcSIHLUp4kA76Z3V2CvjyOqt3fBLZa?=
 =?us-ascii?Q?v5YJmUFzS9GNin6uacdEqoBW/Lsa3XGLHMhXZapaSWW/zLUmmlipUshwDe7E?=
 =?us-ascii?Q?AbV+QwaZTPh2mKscH2jQOrZ4sKjUN00YQgG3++XKaEjWGtyqkcWe5HjpC6Yl?=
 =?us-ascii?Q?fx58Oon7JDeQDzv0Ds5knnAr+2RSMyuuZ1VXAyVFgIs2UjI0JAxe+TZ+Ivjk?=
 =?us-ascii?Q?I+ryeFcvYvLqQXtantQ437D8Hj33FaL/tgnGakVERzdxkxL7Ky//Q6qVUK+v?=
 =?us-ascii?Q?Th/hCEf2PTHOIucIHi8VHhiUGOCbPpmRtXlijVkMZ4nkAUfm0G1iF7NELCyj?=
 =?us-ascii?Q?Jfxi+lasuFkeH387jZo4jwA+kCumog+FaDT+ie2lU1t12B2NizdRyETmHo/Z?=
 =?us-ascii?Q?OOLfyW9fBS9hDfKKPZaycXHL4KvgZIXu4yHuI0SdiDqsBkHW63nCw/eBVcA7?=
 =?us-ascii?Q?53rRkFeJ6BjVq6z4ksMe8D0EUXvVQNtFRLPAeVttGD1nx+B6CIUd100HQJoU?=
 =?us-ascii?Q?SlSVy00sk+KeaadMXbIJ5Q1qfnf3I7KA+ZN2aNFBG58l6E4V5APF/nEXmNQA?=
 =?us-ascii?Q?OXDQEpoLj8S2CrH18ZL4OM52aGyEK4kRDNjL41aoaIF+F1Uue6NF0ZfCY/NH?=
 =?us-ascii?Q?1TJp0KoEf3G7QG8NfKpdmJdfHGAsWIdBQcvx/fojziCvKnJ1rb1cX5sIRI8S?=
 =?us-ascii?Q?WPeiM3EO+GXq1V8lGZmO3WMAWBzx14YQZ6fXxmcoxeiPL3YwytjnosfVfvpH?=
 =?us-ascii?Q?YNLP/0UjxET8+NfrVqrWHfLJyjSiGCqfJfBGy8VqMSWdMYj61UeUGMNF4d+/?=
 =?us-ascii?Q?JpdPbVucuDJv+dxxYs4/XPBJ6DzNvFucGTXaAoYht5+9j2xzQXBE1ZmpGFv9?=
 =?us-ascii?Q?7YZ0Sb0opioJIFtKoJd5+83dGEpnf6nk/8XdPUeIRlKwlPbvkg7lbYdunOud?=
 =?us-ascii?Q?BTU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a75e0ced-94cd-4ef6-075c-08d95c0447a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 13:39:29.8953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OeNjxbTuDIjFy8BSQifkGs4RPeqDJam0GLNQr+7C17e517g6nGUbH1AXo8WCVxqX/1mufm2J4hyTWu5mlevwzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR05MB5809
Message-ID-Hash: ZELUKQT5DUHIZCK3RNHN754KF4QFV7NQ
X-Message-ID-Hash: ZELUKQT5DUHIZCK3RNHN754KF4QFV7NQ
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AYZCYXQYU426EIEO5FI2PX6OGMYDFSZA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6456582816805825065=="

--===============6456582816805825065==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB4500466BB13226803348260AD5F79BN7PR05MB4500namp_"

--_000_BN7PR05MB4500466BB13226803348260AD5F79BN7PR05MB4500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

No - only intention would be to receive for 10 seconds and save data. What =
would you suggest?

Thanks,
Jonathan
________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Monday, August 9, 2021 6:01 PM
To: Jonathan Tobin <Tobin@augustusaero.com>
Cc: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin <Tobin@augustusaero.com<mailt=
o:Tobin@augustusaero.com>> wrote:
Just as an additional update - I was able to test with UHD 4.1 and there is=
 no issue - seems to be something with UHD 3.15 then.

Just chiming in here to ensure you understand that your test of receiving 6=
25M samples using that particular program will keep all those samples in me=
mory for all the channels while you receive.

In other words, 10GB of RAM (625M samples * 4 bytes/sample/channel * 4 chan=
nels) will be used just to hold your received signal.

Is this what you really intend to do?

The error you received before was a 32-bit/4GB limit I am pretty sure (2684=
35455*4*4 =3D 4294967280 ~=3D 2^32).

Brian

--_000_BN7PR05MB4500466BB13226803348260AD5F79BN7PR05MB4500namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Brian,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
No - only intention would&nbsp;be&nbsp;to receive for 10 seconds and save d=
ata. What would you suggest?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jonathan</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Brian Padalino &lt;bp=
adalino@gmail.com&gt;<br>
<b>Sent:</b> Monday, August 9, 2021 6:01 PM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;<br>
<b>Cc:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin &lt;<a href=
=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com</a>&gt; wrote:<br=
>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just as an additional update - I was able to test with UHD 4.1 and there is=
 no issue - seems to be something with UHD 3.15 then.</div>
</div>
</blockquote>
<div><br>
</div>
<div>Just chiming in here to ensure you understand that your test of receiv=
ing 625M samples using that particular program will keep all those samples =
in memory for all the channels while you receive.</div>
<div><br>
</div>
<div>In other words, 10GB of RAM (625M samples * 4 bytes/sample/channel * 4=
 channels) will be used just to hold your received signal.</div>
<div><br>
</div>
<div>Is this what you really intend to do?</div>
<div><br>
</div>
<div>The error you received before was a 32-bit/4GB limit I am pretty sure =
(268435455*4*4 =3D&nbsp;4294967280 ~=3D 2^32).</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN7PR05MB4500466BB13226803348260AD5F79BN7PR05MB4500namp_--

--===============6456582816805825065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6456582816805825065==--
