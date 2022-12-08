Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D48646EA9
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 12:34:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66AB838429B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 06:34:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670499274; bh=FBgq9fE4/sf1UttbyGbQha1pGAKrSATI6Ganx+XofNw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I4IpIxlXGmECaL4dYHwsf73FmwEiSoKL1MyQkEW1LG4qtOILK/E2RzR6eJF9XIiZ8
	 41jbNuAayIaplaz/KjP+cDb0iveUGXUW1HjCzLDRXTQFDjS+zRX0XlrgEFu6+svQil
	 soqX5oGKqbraAUaxPQ62T2hv46wgKfae1pT+DTJvsxhTQjIQifpdkX00/0qWrnWzFm
	 VeCvoyDvfNS/BmtIf9KtKQ86CUOmQqpxr8osyKickeaQnackptsDtCzGsRo+3M/T22
	 MF6evsv/Ps81MMylQGFu2H5cwxc7lAAPEKpA1r3z1sVpMHpuRImasUDDBYCJxr5TIn
	 1bdCrt+YhlSiw==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11olkn2056.outbound.protection.outlook.com [40.92.19.56])
	by mm2.emwd.com (Postfix) with ESMTPS id E138A384139
	for <usrp-users@lists.ettus.com>; Thu,  8 Dec 2022 06:33:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="LIQ7izS8";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PcxpeD+6nMgGDbR37jWA31zJnYMaEjBN/KBpRrSVGXPCT8wItpzL0qj/GWJzZnRBoRu+Z/IEtcCnWGcdSR9O+OULbiG17eR1rRrd/Gl8LgXGHzRrUjWOOMb+8qYCmcOw4ccjhwAkrX/vCmexXRb/JGnYyOgP+Owe5k2vguYrQGSr/BSqfNvXcWutAdT+ir1++Fge5arT4fwLBSMDYWiJeyjzlwbMz5POKKJV0afQ7Qf4AFD/7hAwxZgNY1hLJ3L7sHyDvUXkL2LHwSAhi9JXtkWgbxDFIOZSXvn+o+SNDJxZBlJf6LTIvrI7SxgInkuchSsR4j3ef06qu47JNCkwMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BtFDnl6axG9Chmuit5c/x55oJCOE/jp8DjeVQj6SGKs=;
 b=jWhp2NOlQ3kHqFaMUjWBx2+pxJUnnYByX5oVitDmNeTUTA8wC57kxJ4DFqidA2+LWJx57k08BS6voN7vhE3wwPkf0KQ8wMJQOnT5Fb99n8buEoWZo6ldno89/MJ5jWuFdLG0k5ye0fRAWxxp7e/1KL4pGw0X8pg/RtqMe1NmVfQROzjnZIDY5qvnUwtWJ1Ke5E4qxmQM6VTDnh255BVPrXadSALk04i1qHi267oG3cS7oqq8bMbN85Lq5bLFJuF6IwfJJJY+JJJBR/qG+1OQ5ySeb9FqFJt6hhc/9VboMdHUahlsk4YMt9RsyrUJUoNWhI4k61usLACg5QP+aacq9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtFDnl6axG9Chmuit5c/x55oJCOE/jp8DjeVQj6SGKs=;
 b=LIQ7izS8cMW0NM/Bpez0F4dc+lmZnSj8179OP5ImyLfIOTQqyM45FyVevFCuhDXzONrm4KPtq6P/VtRijNB+FvWJVYdwIjKjnpsrJjVzEhVSpA8qT629nhplgls5uJa2tASnzxWB7nbvTR9EcbeIyq3VdmaWDl6PEqbyxz4aFx2hyqF88T/vPi2npaNvgm2wnU8r24OE4KT9ca9VKLhFVZ0tdEktPYxspo83QfDDeC6Iq/idsjQ6s7Mb3PAoUNwHy0x382QA3f9uC29/ss+n3tmMBW/Tdmt3HJP75bn+y1ral3FNS54PG6C78YiWtEiVT6ufvUiSFp/ej5fPUvXbyg==
Received: from MW4PR13MB5505.namprd13.prod.outlook.com (2603:10b6:303:180::15)
 by CO1PR13MB4984.namprd13.prod.outlook.com (2603:10b6:303:f8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 11:33:36 +0000
Received: from MW4PR13MB5505.namprd13.prod.outlook.com
 ([fe80::7b4e:12dd:79c3:96cd]) by MW4PR13MB5505.namprd13.prod.outlook.com
 ([fe80::7b4e:12dd:79c3:96cd%9]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 11:33:36 +0000
From: Jeff S <e070832@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 GPIO Latency
Thread-Index: AdkK+MZmtb1oP3w3SpWqHI1v+Rv6jQ==
Date: Thu, 8 Dec 2022 11:33:36 +0000
Message-ID: 
 <MW4PR13MB55054A97A1A8AB37A19DB265A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [wukG6/Ce8yYwRFcPRaV7awlBycZXcAjg]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR13MB5505:EE_|CO1PR13MB4984:EE_
x-ms-office365-filtering-correlation-id: 9a45d7f3-cd88-4553-ac1a-08dad9100bba
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XKLBAuk2zkP36m4Hir1yIG11cYXgSvYAIQijHe/DV7N7pOmqMYb6hZLXVhGzZldVZ0S6xRY7ZTONmcP+3wEnvqIlyQ7m6VISJvuoTI0qYIihy7XZfiHuqocBDHTkByljqLWltsV622ebVK81OGOGrFuTVsUXjnQ3967NUIusPZr+0Mt3LWq7Xx2S+ZFH+WkFuuQsNXcE2wsDvYGNIy5h350gA/1t2nxlf7zZ3F1MW6tSiirg9DrGa82fVFAPei2xkGp2dDWoIWoXYATOrA4q8DPs4GkfL727isumKrF38yKl5ZiVoVCKEcN8WhuymZ/31zAodqigUHmok4XxNJ1GoW6AFXzm/RfwBjstJ3rEViIPsHOKA7Nytr8UCkQOnQ8ocZGIy91lJ1j+Dz1MUq/apz/wZjmJK3LE12tVCx3OBGML3tryZ2hejmF0aWNYg5oV/R6zAwKYXGSisAudof4vENyJb/lyDO9asxqTq98ZaIFLt/eDdLgB0iJobZDESc5tNYIU/ymAzSO28hyHSbNwY1sh04Ep3ihZ7SoX3yKzaghSVZkAZld2kUZy1fd6osPD5OzTEUfWCRvcdXqnTDQ7Jhc3F0OAff2y4rnGfQ+dHWI=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ofwwkmF9lFQIiCzUG/O1F3tU/HhWMtC9zNGIRFmnIRCEmoyANx4l+2btzjr8?=
 =?us-ascii?Q?+N8sMNXZqXS9P9iWxFV3dsJttMx1kCe7Rb+XdVnGO+qu/zCMn3k5sblwRzT6?=
 =?us-ascii?Q?alJaCzR9oqyFGnVbPHNY2K6Zg50b9JAl94Nzd1Crj+LILQKkG5bNEA4nTevb?=
 =?us-ascii?Q?huzO75xOSKY4UHL5Jx82Ret/dvES0E8U6h4Hph68ehVfyEqaHJwwLm4eo8T2?=
 =?us-ascii?Q?tJgkp+1a8pQhkkleDYmVHVJdZSOoxS/6v3djZpwzL5PGUbWBmopNGWLOOgD1?=
 =?us-ascii?Q?ZONZT0NYkEzklUm9OxLpPO4s6ielztiOe9HLd1hIxGuU7/7TLK2gEc357+FP?=
 =?us-ascii?Q?DqWsGDE8oVilJas29+axQtxSdy2g1WJ/H9TK5Cd17zUsAWKwnlJAX40iCGex?=
 =?us-ascii?Q?nhnu8+yqkZgVxdqkNv2HpXAEhonW8BtSJmMaV3zqYQLpOgONY5q/lJn2O2i6?=
 =?us-ascii?Q?h1zHd18WpKRF6HHRUYnkIBwHKHrNA7U7JAoe2+WplzcYwxSuEAyPMxacUGzI?=
 =?us-ascii?Q?mgyyHatZnasjsLiyrCqkWRPWH43cr8vkIwX24rwAl8UgvHS6McC/bTmy/N1f?=
 =?us-ascii?Q?xmuMBAceKA9VbvbEKcKP+HMUwGjJj6OPxYRyYfVhrxGxgLBkGbBLmasacQjC?=
 =?us-ascii?Q?gt9EXXuE+cJBXNBoL4/GjEMG7nYHVvLgY3AkdUxv3T5YKPEO4GZZboWKq1OP?=
 =?us-ascii?Q?LzaP8z7j7MY8O4nyeyDt9/GVmLxKw0tVOA6+KIMTlz4lWdZmUVz9dC9oDJxf?=
 =?us-ascii?Q?/e0ADWdGC9Vy5ME5i2y/4h5/UPD/Rso4cM5ZpfpPW8L4+Ul+zEXLGKJ32rDF?=
 =?us-ascii?Q?M5qgY3MD2gV+iYnP/Orb+6+xIMpGXOJTAqJF0Uv8kl5/a1Nl5iUiKiiS7X+s?=
 =?us-ascii?Q?IKlLdyJS0zcxakuk9GJFDPBylaR4dSkapi7j30kTgn3A+MrrlIUwiLpxWqog?=
 =?us-ascii?Q?Ie7TXJdxFbM5/htmqvJFqjlnj4n8Lg/SJxXnGpcdE8c6K9/gorbFSN0FkCcx?=
 =?us-ascii?Q?sWLDs6xFtK//dWsYHz7q5V7I6abu6CHCKOC2fLOPE4MwsKdFTfw7aHoidSmb?=
 =?us-ascii?Q?ZieWPbaHM5ksFqwU5QJ74r7g5wq5UdCbt4laX3EdVBMiNP3Iqnu/kiJ0lOLp?=
 =?us-ascii?Q?CoTH55axeR0uTt7AXdRCJAze2SDd9exDlblXgAet6n69fzHDQlGCAzZOjSJh?=
 =?us-ascii?Q?Z4XJtxl/aEvD86aatOQJaR3BZM07D4VRkKXRMJgYiL8KBlRg21xpL6DLyLFG?=
 =?us-ascii?Q?Lko7gTP662/DiO0dXyox?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4778-2-msonline-outlook-da780.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR13MB5505.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a45d7f3-cd88-4553-ac1a-08dad9100bba
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 11:33:36.5365
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB4984
Message-ID-Hash: ILIRUD27NXN3JN4VPVSUM24NPR722ONM
X-Message-ID-Hash: ILIRUD27NXN3JN4VPVSUM24NPR722ONM
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 GPIO Latency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7HYKY5W5HZCILPFTISTYYET2AYPUQ2FJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2559526838104829249=="

--===============2559526838104829249==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW4PR13MB55054A97A1A8AB37A19DB265A41D9MW4PR13MB5505namp_"

--_000_MW4PR13MB55054A97A1A8AB37A19DB265A41D9MW4PR13MB5505namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've been working on a software keying loop with the GPIO on an X310, and I=
 measured the latency for setting a GPIO pin output wrapped back into a GPI=
O input to be around 5 ms on average.  This was done by setting a pin manua=
lly, and then immediately polling the input pin to see how long before it s=
witched states.

I haven't had anyone who could look at the FPGA side of the X310 yet, but I=
 was wondering if it would be even possible to implement something in the F=
PGA like the ATR functionality, except it would allow for a keying loop (a =
Clear to Send GPIO output wrapping to a Request to Send GPIO input) and pre=
vent transmission until the condition was true.  I'm hoping that would sign=
ificantly decrease the latency (less than 1 ms, hopefully) if I don't have =
to bother polling the pin.

Right now I'm using:  UHD 4.0, and GNU Radio 3.9.5.

Thanks and regards,
Jeff


--_000_MW4PR13MB55054A97A1A8AB37A19DB265A41D9MW4PR13MB5505namp_
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
	{margin:0in;
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
<p class=3D"MsoNormal">I&#8217;ve been working on a software keying loop wi=
th the GPIO on an X310, and I measured the latency for setting a GPIO pin o=
utput wrapped back into a GPIO input to be around 5 ms on average.&nbsp; Th=
is was done by setting a pin manually, and then
 immediately polling the input pin to see how long before it switched state=
s.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I haven&#8217;t had anyone who could look at the FPG=
A side of the X310 yet, but I was wondering if it would be even possible to=
 implement something in the FPGA like the ATR functionality, except it woul=
d allow for a keying loop (a Clear to Send
 GPIO output wrapping to a Request to Send GPIO input) and prevent transmis=
sion until the condition was true.&nbsp; I&#8217;m hoping that would signif=
icantly decrease the latency (less than 1 ms, hopefully) if I don&#8217;t h=
ave to bother polling the pin.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Right now I&#8217;m using:&nbsp; UHD 4.0, and GNU Ra=
dio 3.9.5.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MW4PR13MB55054A97A1A8AB37A19DB265A41D9MW4PR13MB5505namp_--

--===============2559526838104829249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2559526838104829249==--
