Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DF83EA00E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 09:59:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFCF13841D8
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 03:59:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=connect.ust.hk header.i=@connect.ust.hk header.b="5qqK3GoN";
	dkim-atps=neutral
Received: from JPN01-TY1-obe.outbound.protection.outlook.com (mail-eopbgr1400133.outbound.protection.outlook.com [40.107.140.133])
	by mm2.emwd.com (Postfix) with ESMTPS id 9EA0D383FD2
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 03:58:34 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLWjHqLJpjSgJila4AM8JSfRCO9gQQM6UiLo7yR4aMXkVGdgNajia3avb1MMJ+1b7SdjHqYWsqsnPr4MEWFhAP7sLq62ADN0CjqAFT12lI0mLJFHnm4ks86rXGaXqYkBs14tDks+gPQcg3THyir3DePvsoHE97h4VWwD7X4qNCmFFOPwkdUl506Iofe4X6aTDajrMGtCZht3EGnuXh5Q3dnNxbEz/McJJM6fF8iehaQ/vEhWPXIgMWtJkeHp8vK28eylgwwPXEHIpv3Zf2ZN8R6UC52SDWDuCih3FozTNQqHMyUjnA+mygU+YuPsX+btLX1o5eoczynmtGPVJU6lFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IDOlGiGofaUsKrgQ+iXrC71nJKOmeOmeapcBb18UBy0=;
 b=RkoEYrncrYQKpuUgVnzoOjWXRh7Yd66VdJslnzp1+zcvYfsWDwTYlL8G9DEDH54fc+UPJtt69ic/sXHdbXE3VbyFGkl6C08BDqg3sd5JftzTo700q+q+DuK3xr9h7mZZrG/0B/tSKOsKbQo54RRntLxXqdgY3P4m4WIlnn/N6b2QPuMHpWtL2WaSL+GFoycPx8Rk+MJMkNUpJ1xbaE1UmqCYUPWEuMvEKxuHo/f5bRKOOAOppF7ivrrxX9HQURIeBiNfBgkwzj0wXxzAXUlsrPPFJz0ZOMHGUmTIoQ5ovW8O4s2c+pdjI7/XXJBNLyOK+g0dNa1XEEhC3qGLBoC9/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connect.ust.hk; dmarc=pass action=none
 header.from=connect.ust.hk; dkim=pass header.d=connect.ust.hk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=connect.ust.hk;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IDOlGiGofaUsKrgQ+iXrC71nJKOmeOmeapcBb18UBy0=;
 b=5qqK3GoNTO30SpKSF1sB8BldlM3pTNEpYjj2yopHv1hJ3jEEhf6NFy2U6iQMFsUZuZLOTHSci6jKq9pbVTYcsRRnTWce8kB9Aj46qCKUatIBCfR1bWvVkQmbzcboQBAscqVf6+5rLgLWdy8m5X1ZOAo6nXiyOGKDbDnutkPkhcw=
Received: from TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:8041::7)
 by TYAP286MB0746.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:85::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Thu, 12 Aug
 2021 07:58:32 +0000
Received: from TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
 ([fe80::bd40:b323:ff1c:9c1a]) by TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
 ([fe80::bd40:b323:ff1c:9c1a%7]) with mapi id 15.20.4415.017; Thu, 12 Aug 2021
 07:58:32 +0000
From: ZHOU Yuxuan <yzhoudo@connect.ust.hk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Printing "SSSSSS" when using USRP N210 with MIMO Cable
Thread-Index: AdePTz4GG9a9lMq0Tmu3UJGdH07izQ==
Date: Thu, 12 Aug 2021 07:58:31 +0000
Message-ID: 
 <TYAP286MB021751B0349A211B1AA9948F8FF99@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=connect.ust.hk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcac26ed-5be1-48b6-a032-08d95d66fa8a
x-ms-traffictypediagnostic: TYAP286MB0746:
x-microsoft-antispam-prvs: 
 <TYAP286MB074623062BE613B92308A45D8FF99@TYAP286MB0746.JPNP286.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /vqS0wydLQOR5volIw4cvMaGvSi3m8AcXRMyQ/9ShVK/2pomOLZMHFY2HUv+3OxzG5C5Ma1/XGyFCXXMAyQ6hZfKD33GP3yqt2dnQdXNKuc5VS3iwEk8/HgsurDPGBVari3QARZSrJuTCpzl9zSlvhtSa45QHeV8H1kiLvZyuUIRTQ6nA51dxRaHaNCx0awSivhxK8t0JkyLvjOcMG6TbvXt+hh0hoq30q2xbGGQdksbPTG1Mls98vVh8gMUNEFxKHnY4SwryglyIOSi6vKN2sZhKwfkZ546i5zOBcNK1Hq/grWNTELf0hNCNUeOppu+C9t1AwONvnwXsB3uACNBEbcAY258av0MudsjW21dUsmhZ+EJOl12IMa1xKNHlFlkZ8qDgsyqFt9ZPdJI99d4oSBnIV2M5D2XUdf7c8+XfxKdlia3eM3G+TfBCMDecnjTCuYyT47ar+hiJkco7bk0W2kw9nOIp1oDmYcRF+umo3aYy/bGNMxLGzpGJHXPkCoYEoN4n4S9lxXdkjTLY73kecxsdqeMU3wBAoIR3hqEFfds1gq87yD2S03qnE/wD6qv50o9hDjCQKry5EcrFjkUesjRRbC/xkEguA9UDxYKgC4zHxKtTx/2IfPmFo2rVTsGc8o9j2EeXfWvbTi9q84jIpMPUCFP7JRkZKcYvr6vWs37pvMd9XBDjFUYb+JqZl7z/RWXIUX4Tn2xsD831LDWsA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(39860400002)(346002)(136003)(396003)(55016002)(86362001)(186003)(26005)(52536014)(9686003)(7696005)(2906002)(5660300002)(71200400001)(8936002)(478600001)(4744005)(6916009)(38070700005)(6506007)(33656002)(8676002)(76116006)(66446008)(66556008)(122000001)(66946007)(316002)(786003)(38100700002)(66476007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?eIo+SYZ91xvLY+ohlPQUIkzw3uSk9uyFbd0b5TjgC/4M3UKTmHVBim9Zzl1B?=
 =?us-ascii?Q?C04lWz1pUj1sVRZs1VWtYEH6Z8B9ANgTmCtRz/LsyDxCYrC16atdhMW31kbV?=
 =?us-ascii?Q?trPCJOHoSePhRKCAIalMCCBXTshtAoEcN/i1rZDGYcXBpjhQqSE1eKOHXSOQ?=
 =?us-ascii?Q?42CH4ykVkjiwyZJZmovphNBwfsv1Dss64Nim+NMbXI9zWcR/3/BbJZp0F6vN?=
 =?us-ascii?Q?tuosGC3+5/1w0ihZDhTO1/XjplpsIEM+//MXUZw3+i+8EPmIcxFCum8cFO+E?=
 =?us-ascii?Q?1tcniJYQXo3jEJlyK+Uh3RZfKuJZksu1/j4Hh+Cv09FTG4qLx/5KtRUa2otk?=
 =?us-ascii?Q?w5Sx1MarQ7S2QRSYbjN10ra+GCLhUnd/RT3hwWLgBJElcmDNcSRLbYNUbohR?=
 =?us-ascii?Q?RmjzoHaNr9XkH8AKJXxuyRldTMMR5fs5n2VZoCY3lybDwrI/mCEQ1qUe//Zg?=
 =?us-ascii?Q?LvzF+/05TqpPJnV4z2WSFgjzYP+TX651LEqD1vZIVA5Vv8uGQujgRpod8jH2?=
 =?us-ascii?Q?dTOn7WD8px5itgFowmkin2zdzN2H0FYIu3UXMNJ18UyH9KmwYyXg30df0tve?=
 =?us-ascii?Q?czTBaSAM3Js/eJNWBpAEnTax+O1d6kIEWnrvgfO3E1REF6LQdZmVMWe7CkMO?=
 =?us-ascii?Q?dCEUBSTNH4xS9BS6n7Rqk+M5hwjLFpGG8gFJzM5Hqf6MVQnY/+GTFvj7Hzuv?=
 =?us-ascii?Q?t1vXX7INbkDCfpcwiHfi344VdqM/wgSBPDAv/64j2xumw6jDnP5SpYfHhPmD?=
 =?us-ascii?Q?E+tt0NF9TsVDQ6+9adKU6dplrXaV/nLDxnJHS2yOKcu0SzHhBr63Kksv9K24?=
 =?us-ascii?Q?umAJSB6L9zViwBDb/8KyTPsgtv51wnY5haDvT7aa6zuKQcnDWC3IgUgzQMVn?=
 =?us-ascii?Q?og2FWJ4E66euO4bGKq5URkbVAui9Pmj+6/U0kPcMPoOIXO1Ys5do7IVnHcRO?=
 =?us-ascii?Q?p8G9tHZaPcvm4HgnNz+Um5oXIp4w0EYDwCCK/dsFHfqEQ/TyoRdGoPFLEZjn?=
 =?us-ascii?Q?PSCGyPjS34C0Rg1oeCBOETuRSNQShc8HwttJs/l+y/UfW0WmyJ4f9257Ms8f?=
 =?us-ascii?Q?P7QrFT7EbN3/AaUM3QujEdsupHnkbsUzzn27AymyF2EFZaa6zjuuk26FN00Z?=
 =?us-ascii?Q?8VYqvqV5PS6h0YC8Ff+VfxrydfyyIdEeCyyQf151xvQPhcUXRTX//ymIsG1I?=
 =?us-ascii?Q?rh3oG2t4421qQEaFRidNnTtIaYFlh7+pgVa93ORFx2yB39FlFvxRjEwBF3a2?=
 =?us-ascii?Q?yrzbNZLudobwfE9ZgyA/iOVAvwo8L2793IjmtlqfzzSls4sXVpvHqvBvm4Oc?=
 =?us-ascii?Q?FaQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: connect.ust.hk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bcac26ed-5be1-48b6-a032-08d95d66fa8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2021 07:58:32.0136
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6c1d4152-39d0-44ca-88d9-b8d6ddca0708
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RY+gcPxAwYMGb0jyVj4oLzIuijR2qL1wKS624VcOKTp/4JbdKoJTS+6ZWVDI2Zn2SJEtw59OWGNoFs/DAwh/Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAP286MB0746
Message-ID-Hash: H74KCWXTLENNJZC67QRY6VKVT2MUY2D2
X-Message-ID-Hash: H74KCWXTLENNJZC67QRY6VKVT2MUY2D2
X-MailFrom: yzhoudo@connect.ust.hk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Printing "SSSSSS" when using USRP N210 with MIMO Cable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CN2PSHB352TCM5FEMUEPAKQKI2JHAJWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3862347080071655944=="

--===============3862347080071655944==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_TYAP286MB021751B0349A211B1AA9948F8FF99TYAP286MB0217JPNP_"

--_000_TYAP286MB021751B0349A211B1AA9948F8FF99TYAP286MB0217JPNP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using 2 USRP N210 with a Ethernet cable and a MIMO cable. But when I u=
sed it, it randomly print "SSSSSS" and "ERROR in recv pirate loop: ValueErr=
or: bad vrt header or invalid packet length." (again, randomly). The result=
 was that if I sent 1000 packets when the ERROR occurs, I will only receive=
d 300 or less packets, sometimes less than 10.

I have searched for the answer to that but it said it may caused by NAT. Ho=
wever I just directly connect it using my Win10 system and Gnuradio 3.7.

Do you guys have any experience about that?

Regards,
Kevin

--_000_TYAP286MB021751B0349A211B1AA9948F8FF99TYAP286MB0217JPNP_
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
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:\7B49\7EBF;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
/* Page Definitions */
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
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word;text-justify-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using 2 USRP N210 with a E=
thernet cable and a MIMO cable. But when I used it, it randomly print &#822=
0;SSSSSS&#8221; and &#8220;ERROR in recv pirate loop: ValueError: bad vrt h=
eader or invalid packet length.&#8221; (again, randomly). The
 result was that if I sent 1000 packets when the ERROR occurs, I will only =
received 300 or less packets, sometimes less than 10.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have searched for the answer =
to that but it said it may caused by NAT. However I just directly connect i=
t using my Win10 system and Gnuradio 3.7.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Do you guys have any experience=
 about that?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_TYAP286MB021751B0349A211B1AA9948F8FF99TYAP286MB0217JPNP_--

--===============3862347080071655944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3862347080071655944==--
