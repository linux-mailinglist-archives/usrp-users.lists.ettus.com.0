Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C3C5EC38A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 15:04:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16F88380C96
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 09:04:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664283867; bh=9lHm9BRYV3mq6DAbjx8GZkmtoksZjfnJxF4azzdcGLk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uJCyLlDAJpFkgNRLWr0DGSQmtje9Jb/sfGYPiASdQFmYul0Urx93heBgp6dv+jvf7
	 e7/Jjhsk58ECh+GtwGFtoTh9EDiT5OYZ7VgeORrzQvnKTJaPOSn9oR3nqb5EsRLakN
	 KFS2Xmcu+vZwjrTqg1/JDP8zh0RGf94PBNs6dEV/u8SrQhWa1StJq05N5EVSEJ1EbR
	 wDd1Ss2zywJdch2BJluYJbjO5xjP5pdMAzZaWTSenJWPHEKcG8fmx+3v0mBFsKMwwl
	 ueFbeSB8A6FLsK8XX+MrHzSQW12oLk1KA7oSqV/QD4rn5WwuPR1bE0ojkLnUYpQkxw
	 jt7/25QNxozXQ==
Received: from na01-obe.outbound.protection.outlook.com (mail-eastusazon11010007.outbound.protection.outlook.com [52.101.51.7])
	by mm2.emwd.com (Postfix) with ESMTPS id 51FE6383D62
	for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 09:01:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=minersutep.onmicrosoft.com header.i=@minersutep.onmicrosoft.com header.b="Le7TqNGi";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4YHSK51cLOpnOdbVoWmb3GPM9hN+CdThzdoyGfBXlUnlcVUtcr2Mb/COsJAkSFJFmzRC2UFACXjPfsO4GwJrgb6hMQaGmqLkU7zc+cc4tK34cTcDNfSnHyqv/gyCNUQ2qks0GzgvV8lCOgdk77oS2qqiVB8vtWbgISeHQCDh2h1Sqb3CwXW+gm0SNPG1gvRiKqba3WQpClA99TNl0BCG4HzIENRPW4l8mGf9e/yu8zWTnqAqfs/+5n9IrRttkhjGBocOKLliRcnHHuFTqJwetuBNRGrk0LwrAdPxPJb06YZdLeWnR7BkgheWR5BvZF0L3OvisH/HMVJukgF/iX2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgaScPtMEKCesvc1B1AaPyaGmnOym1Zd23RYx9mRxj4=;
 b=FolufxVSiSdoaVSYqEkZOi3TcrMNjIwlSnb0XqtQvgbsBj5cYQdpjNotFajEiFduX4DWH+mDgd1C9Rcn5IUTm7+Ou0O2Qvlr5X9u2JDcjdJHl9TyVVBNhSJYv9w5xjP8/pwkmPmR2sOC0uD39TMOwfRkPcPthuZgyMCjG8quHkPF0ggMCEnCmb2hDB4aT2cG+qTnvr+XIxRbWoJzguYz7wrMcCWpbdx7/y6rskcl9WWBYIL6pke9fMJwjFLUVRS8o+1RDtMkS1/HheUCPKOCWfk7acGkJd8+6t9Jj9aXG+5vHxSJ0/WbRtA7xoe/kO9zlnz6Gx4y2KgRyEYBaAaLXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=miners.utep.edu; dmarc=pass action=none
 header.from=miners.utep.edu; dkim=pass header.d=miners.utep.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minersutep.onmicrosoft.com; s=selector2-minersutep-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fgaScPtMEKCesvc1B1AaPyaGmnOym1Zd23RYx9mRxj4=;
 b=Le7TqNGiwMjzkId10ME1fUbfeX+GBEbYaV1B3dgQpWmbl/ZP5gTnUVSfMwXq2KdTezy2MwHqLl3LxEwGpzTMS1eqxDaAIxqNyIWaRoFpRXhggtneXQXrMqiCNf6N1bRosoFDNiVoFtgr3mqr8Ja0BiW0dgqFOCb55dpoXljRQgk=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by SA1PR05MB8611.namprd05.prod.outlook.com
 (2603:10b6:806:1c4::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.7; Tue, 27 Sep
 2022 13:01:46 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47%3]) with mapi id 15.20.5676.014; Tue, 27 Sep 2022
 13:01:46 +0000
From: "Avila, Jose A" <jaavila5@miners.utep.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP-users Digest, Vol 145, Issue 55
Thread-Index: AQHYz+iPi5xo5pZGjUyrea3e4OilQq3zQf2i
Date: Tue, 27 Sep 2022 13:01:46 +0000
Message-ID: 
 <SN4PR0501MB3919A812E3D5A4D5A900E05DD9559@SN4PR0501MB3919.namprd05.prod.outlook.com>
References: <166400467343.21418.7214555839691419559@mm2.emwd.com>
In-Reply-To: <166400467343.21418.7214555839691419559@mm2.emwd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=miners.utep.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|SA1PR05MB8611:EE_
x-ms-office365-filtering-correlation-id: e71afaba-04f0-483d-6a04-08daa0886ee9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ex2nS2h0bKy2GpIpM9uMPIRZb0KmxjqWMvO+FZrH0oeDUwx6bQAb3/MtODF3A0FR72FICRiLmvWB2eGeQ8/fXQXzjZLceII9J/mYCMk8mwDFNb89RYJJGP4oQktC7TKql65Sh6cIjenqHa+PyBNrnGAyCc4Vd17iGaWvOzURQ5uKIIjtJlb8BhdM/Ogh/MYC2bD007a0KGWkgd9KgVO91ULVV2bUQGsFE78IZEkwmS2VTHIUS6WpLSo4gA4t6XEYy+lH3bfLsxxd+IpzvaGLl0lx4L+2QpxrR7IIBDdiMhTXqn5GbSE9LfGCic+PK/ByGpLE4yhEdU7FWmUdMhZwFBplB23ptN5Tg10H6wYW/CtIN2TMvGF4lCOGxOGHdnuzZ8CA3gtjnIcvg63tYRZP39W0HOji5cVAHSq5teIxH4EDWlfZh+hKcE6InK+5GqXJ2d01WTkF84uNcEAkv8E/bwo295njyndVd8RjLncSGRghbfMjE1Er9+Uu192lrIhwxwWPDrVk1+pCDOQza3XtEVDbdorTKZCWJyfB6U5O/QEkmIqPwFDKHbyYiw8wF3c/jJ9iSXlHujcf4Nxmd7opgABz3vFqdXErdkmLeaHG87Tz554dlhUHg0OeYF954jsgdyK2BZkrEywxaX4MKzemeZCT/rJx+k8useC+wigMjJbDHrAoqxtWUxD4MUACiAmuwWjEbb0Z1V8IsaN9gxI67gIsMv5A3Lhw6icLYZyMV+2rBBuYHcciGNWZWeqvO3gS
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(786003)(316002)(66899015)(6916009)(33656002)(91956017)(76116006)(122000001)(45080400002)(71200400001)(66946007)(5660300002)(52536014)(8936002)(478600001)(38100700002)(66556008)(66476007)(66446008)(64756008)(8676002)(75432002)(41300700001)(41320700001)(186003)(38070700005)(83380400001)(55016003)(86362001)(9686003)(7696005)(6506007)(26005)(53546011)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?aC3x4SWx7HeM2KxiMeLHVB821Ayv8BTHfFtjdMUjQZjW3uNeKSXOTixIcNQq?=
 =?us-ascii?Q?2rOHRWFH3OFHXmVXI08Ahd15pqToTGteAeqLOY02SX2zHsmgN4Ix4rYJbUwj?=
 =?us-ascii?Q?sjGRLHGrSoJDmHADQ7kbPl8wdjHZ7nnIp5kfqFvT2/ygKZEOHZFq4jlVMA4h?=
 =?us-ascii?Q?C9P1qcr+rEA7ej2969BkLm8cLCIHTDi9PGFA0KVF8kCAMmW70zX/2lpc60n4?=
 =?us-ascii?Q?7XEgtM55xprJ0KTi/PT6/TFicTiL5NY2yjtQY4OhTHrvCz5TTKpTXtQq+RKO?=
 =?us-ascii?Q?hGB+rNNMNFuJN8UcNBWOXJDuYP/mwBNXKpT23Lf8C4yIcrS6MNzc1FRakJEO?=
 =?us-ascii?Q?Qs5SS9nHL2xhBrdjtkQ8LrWIdjYkB6DtuIfwuGCGAYZjG10PqJBTEm+58hQG?=
 =?us-ascii?Q?GceMXsKySHBrXL9omj39yeNK2p4WEtrETS4hqioe3kxm18EfRJnBaxMXeSOt?=
 =?us-ascii?Q?b48pF9SWzXNgEQkwxFNYSpvL2NgnN2BKqWi1a97XmqDPEamTuZlYzU4q6I6/?=
 =?us-ascii?Q?YtXr2wZBfO2vHi0kW5+ySjNPT14nTDSXPFaRZu4TwVQMJX+guxbrNUJkqrR6?=
 =?us-ascii?Q?crQ769XRUX+TLE04m3rZZZyhQpzxw2D6K6GAOpot3FkS/ZFfBYGMcNQulXi8?=
 =?us-ascii?Q?6v+tRYZ/H+5yph7/NrayLqZhfOm/AauHsGhCEGX6U6W5f1Si0FAS/WHmlkSF?=
 =?us-ascii?Q?9BQ5RXKBaQZDDRcXKdG3FpTU0GQAFpbsD1J2kovappDz7jGGMGignWvVYWq4?=
 =?us-ascii?Q?jvISj4bMGdadE8oIxNzszGONlyFmZ39kHDT5W2In/pOeANO/cbt/mvvn40Jq?=
 =?us-ascii?Q?7sOF/wrg4EIfXk5B++Z2aYrb5EUsMZsrKnZR3Z1W3rlFHI9TqRa3BCJcFUZX?=
 =?us-ascii?Q?HpL3JlMB/rdsdQ/vcRmEhICQ8xB0DxK0Y+b5LUsHe8Hei3l8dk5jWBfpgxxn?=
 =?us-ascii?Q?HYs3WJFlHJXOsmfEaK6sD7YQ05auNZeqz4ubWVBkRHm/k7y5QZDugzEDnFvy?=
 =?us-ascii?Q?jAm9jHJ104oabXe8I5txzD1gWPSpdx6cdgKb2NxdLkUQyDBCDLkBbjt32MBA?=
 =?us-ascii?Q?cGhtritHCy5cRqtRwCPZ5/nekR/2rwID87g5EL4i5t+StBOQ1PFXNUj+aaXf?=
 =?us-ascii?Q?85ljIFgC8ZRmlNfYADhPov3+yMdmsjLm0akBe0fqgJ19zJc3Ur597RqAAx1a?=
 =?us-ascii?Q?8iTgV/YUyngMb+VGxEK2loNoyeBd/x0P7Lto3qU72B2YML1hHf3g7PkIHxHy?=
 =?us-ascii?Q?AVlQ5TzEk4YxIX72gaFNtgQ1Rw2MJL7417OtTqVDwlYCBMf3lWbrZNzvrL0+?=
 =?us-ascii?Q?g9YU44MrKQ9pbg+lU2OMHc75EeI+BFWjQFo46BqHQik/TRNkeoEEXYdHuynQ?=
 =?us-ascii?Q?XJJNemrKmPPJ7I6l3XKDrR8WlFFA9PKHG1Cm9m8/vSosZJZTYnOLUm1lsykd?=
 =?us-ascii?Q?H4sqeaC7sQdgMdcwd1M0KdyoiVxD1eaL//Sm8Hn14lyshj9yqu5LJ2yTCJ0Q?=
 =?us-ascii?Q?vGnklmTh+Xwo6jQvPcPYYEhlcmiIbna+kWQDALL+Twd9Fl4VDCE79qoi4Frc?=
 =?us-ascii?Q?g8RA4ZE/VKFBj3g3nzN0i9DII3IlxZGW8s30uN5JBtq00AkmI6mkoe+3G+Z+?=
 =?us-ascii?Q?hQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: miners.utep.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0501MB3919.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71afaba-04f0-483d-6a04-08daa0886ee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 13:01:46.2665
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 857c21d2-1a16-43a4-90cf-d57f3fab9d2f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSF2i4ivgWeA36YNf4mx1J592c0HukpDPOy13CeM6ErghjHrb7AeUrpgAloF4W8Tnu2y76RaKMn8Vsbxfb6aDe1RuGW15hbsKLyNzl0WIP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR05MB8611
Message-ID-Hash: KYBY4H57PBA4JC46Z2JZJ5RV65AASAEX
X-Message-ID-Hash: KYBY4H57PBA4JC46Z2JZJ5RV65AASAEX
X-MailFrom: jaavila5@miners.utep.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-users Digest, Vol 145, Issue 55
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7Z3WLGYYQRNE6L76UJGTHJJYBUFSL56J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9181094420013327879=="

--===============9181094420013327879==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN4PR0501MB3919A812E3D5A4D5A900E05DD9559SN4PR0501MB3919_"

--_000_SN4PR0501MB3919A812E3D5A4D5A900E05DD9559SN4PR0501MB3919_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Using the UBX board on the x310 and the lo leakage is the same amplitude if=
 not higher than the signal being played with rfnoc samples from file.


________________________________
From: usrp-users-request@lists.ettus.com <usrp-users-request@lists.ettus.co=
m>
Sent: Saturday, September 24, 2022 3:31:13 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: USRP-users Digest, Vol 145, Issue 55

Send USRP-users mailing list submissions to
        usrp-users@lists.ettus.com

To subscribe or unsubscribe via email, send a message with subject or
body 'help' to
        usrp-users-request@lists.ettus.com

You can reach the person managing the list at
        usrp-users-owner@lists.ettus.com

When replying, please edit your Subject line so it is more specific
than "Re: Contents of USRP-users digest..."

Today's Topics:

   1. X310 calibration (Avila, Jose A)
   2. Re: X310 calibration (Marcus D. Leech)


----------------------------------------------------------------------

Message: 1
Date: Fri, 23 Sep 2022 17:36:37 +0000
From: "Avila, Jose A" <jaavila5@miners.utep.edu>
Subject: [USRP-users] X310 calibration
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID:  <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919
        .namprd05.prod.outlook.com>
Content-Type: multipart/alternative;    boundary=3D"_000_SN4PR0501MB3919
        23D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_"

I have noticeable lo leakage when running the cpp rfnoc replay samples from=
 file. So I ran the calibration functions but it doesn't seem to be using t=
he created files since I did not notice a difference. Is there a function c=
all or setting in cpp I need to add? I thought it would be automatic. Using=
 uhd 4.2 with X310.
-------------- next part --------------
A message part incompatible with plain text digests has been removed ...
Name: not available
Type: text/html
Size: 477 bytes
Desc: not available

------------------------------

Message: 2
Date: Fri, 23 Sep 2022 14:16:48 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: [USRP-users] Re: X310 calibration
To: usrp-users@lists.ettus.com
Message-ID: <fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com>
Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed

On 2022-09-23 13:36, Avila, Jose A wrote:
> I have noticeable lo leakage when running the cpp rfnoc replay samples
> from file. So I ran the calibration functions but it doesn't seem to
> be using the created files since I did not notice a difference. Is
> there a function call or setting in cpp I need to add? I thought it
> would be automatic. Using uhd 4.2 with X310.
>
Which daughtercards are you using?

I'll note that most of the DC-offset compensation is done in a
daughtercard-independent way and doesn't rely on the
   CAL functions as far as I know--there's a continuous "DC offset
removal" function in the FPGA.

When you say "noticeable" what is the magnitude we're talking about?



------------------------------

Subject: Digest Footer

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


------------------------------

End of USRP-users Digest, Vol 145, Issue 55
*******************************************

--_000_SN4PR0501MB3919A812E3D5A4D5A900E05DD9559SN4PR0501MB3919_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>
<div dir=3D"ltr">Using the UBX board on the x310 and the lo leakage is the =
same amplitude if not higher than the signal being played with rfnoc sample=
s from file.</div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
<div style=3D"direction:ltr" dir=3D"ltr"><br>
</div>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> usrp-users-request@li=
sts.ettus.com &lt;usrp-users-request@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, September 24, 2022 3:31:13 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> USRP-users Digest, Vol 145, Issue 55</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Send USRP-users mailing list submissions to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users@lists.ettus.com<br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body 'help' to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users-request@lists.ettus.c=
om<br>
<br>
You can reach the person managing the list at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users-owner@lists.ettus.com=
<br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
Today's Topics:<br>
<br>
&nbsp;&nbsp; 1. X310 calibration (Avila, Jose A)<br>
&nbsp;&nbsp; 2. Re: X310 calibration (Marcus D. Leech)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Fri, 23 Sep 2022 17:36:37 +0000<br>
From: &quot;Avila, Jose A&quot; &lt;jaavila5@miners.utep.edu&gt;<br>
Subject: [USRP-users] X310 calibration<br>
To: &quot;usrp-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettus.com&g=
t;<br>
Message-ID:&nbsp; &lt;SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3=
919<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .namprd05.prod.outlook.com&gt;<b=
r>
Content-Type: multipart/alternative;&nbsp;&nbsp;&nbsp; boundary=3D&quot;_00=
0_SN4PR0501MB3919<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23D92DB5B6B7A2F84EE5D9519SN4PR05=
01MB3919_&quot;<br>
<br>
I have noticeable lo leakage when running the cpp rfnoc replay samples from=
 file. So I ran the calibration functions but it doesn't seem to be using t=
he created files since I did not notice a difference. Is there a function c=
all or setting in cpp I need to
 add? I thought it would be automatic. Using uhd 4.2 with X310.<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: not available<br>
Type: text/html<br>
Size: 477 bytes<br>
Desc: not available<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Fri, 23 Sep 2022 14:16:48 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;patchvonbraun@gmail.com&gt;<br>
Subject: [USRP-users] Re: X310 calibration<br>
To: usrp-users@lists.ettus.com<br>
Message-ID: &lt;fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com&gt;<br>
Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed<br>
<br>
On 2022-09-23 13:36, Avila, Jose A wrote:<br>
&gt; I have noticeable lo leakage when running the cpp rfnoc replay samples=
 <br>
&gt; from file. So I ran the calibration functions but it doesn't seem to <=
br>
&gt; be using the created files since I did not notice a difference. Is <br=
>
&gt; there a function call or setting in cpp I need to add? I thought it <b=
r>
&gt; would be automatic. Using uhd 4.2 with X310.<br>
&gt;<br>
Which daughtercards are you using?<br>
<br>
I'll note that most of the DC-offset compensation is done in a <br>
daughtercard-independent way and doesn't rely on the<br>
&nbsp;&nbsp; CAL functions as far as I know--there's a continuous &quot;DC =
offset <br>
removal&quot; function in the FPGA.<br>
<br>
When you say &quot;noticeable&quot; what is the magnitude we're talking abo=
ut?<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 145, Issue 55<br>
*******************************************<br>
</div>
</span></font></div>
</body>
</html>

--_000_SN4PR0501MB3919A812E3D5A4D5A900E05DD9559SN4PR0501MB3919_--

--===============9181094420013327879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9181094420013327879==--
