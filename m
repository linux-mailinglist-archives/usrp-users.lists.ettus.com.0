Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5258AC676
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 10:14:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 357993857B4
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 04:14:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713773646; bh=3cEi3lWJFITN+QRrm46YNAcIFvlx2rnCkHoQxZaUijY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jLFxaSrtZzpvQuIfexRD8hYfybYVqLVWRgRz5N65LvOEsJTVo6KcQlmqPiNRBPb4p
	 dHB+280K4WlMVO030iX5rLqWEp617y90FLiuTxh8DrRITFUtcXY2fzFp+aGuepRb5M
	 2JBFT88GHou+AudmXKIezpSAS9SL17rNJN968mNa05Z7roxrwYWPpZ2Xus7+Fbu2Dl
	 Q2tGb1T1wnHYh75m/TrOweHdKOQ+mJQX0r6MOwc1twr0pz6oKMgoCjGRiCnhYqGh4S
	 pv3KO4Wd36SLgwYhQMNE0D/8jYT06PmDxb1CNCNxnRGxvxz2F7hIsh+Rfm4QP30fsE
	 fBG0/3Fg6/1qw==
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (mail-be0deu01on2110.outbound.protection.outlook.com [40.107.127.110])
	by mm2.emwd.com (Postfix) with ESMTPS id 28F5938562A
	for <usrp-users@lists.ettus.com>; Mon, 22 Apr 2024 04:13:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="HNvSOZt9";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OnqufAB4hNmt9mi7Aq44GBkkAfroI+0XKQFJggW/5/eGQu8sKeFmA9/wBeCLgmzNpKcszobkuFOE+SABwMg2+kbt4Z+DHvILT4dglb+LFw7KrkCi5tRKNkFSoKblatWZYpr0q1eaBqMmxF1WEia+PVMWPq6WHIzn9+1z7FwJQlozKPZ5b2zZ30uWuCqf5K5dSQW9MnPin0aae6NoTwZ+9uQ40iFpGgszWKkhAs3GYgRa7qNDa2EWdqeDzMPrvNAak138rUoAeO/95e+cN4y0RCnOYsaf9ZyM4Vvi/TWHRLjc6gb7m15e3PsXTTotoSCT9uCLk/1i/EpmXyFv/88bEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAXUvUwiM6X8WVZr3q5/rz/czDExDUmlFFq4zdDSkVE=;
 b=FUBetEIGCeQ07wXPREBFgU3IH7ukdpGaDf/HGeJK8XkCy5w3VSjsp1gl6+S/6/0aU8ZRIwEk44PLDgulh9Il6qEzskI7AFR8RKv3/ZdJZWtFlRi8m4ZKlBg97eWZ/iLN4pgeTrFIb2ex61IYc/nCQpVRFD0nt/CgJwvc3yxSal/GUL+kDgs0G6r/IJWYCT8qk7UBfGPI9H05JQSsDskaxOmS0JTVMuRSOiD5MtezKAqQoNyz3u4nArwM4pyTCBNJ+IS1B75YOKnHQtWUby6QKh2Vwugdzom5oBtvVUR/OV3r5ekBeucIw1ut7u1qYgZzFnQpGLXyhFnfhuN8sHwiJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LAXUvUwiM6X8WVZr3q5/rz/czDExDUmlFFq4zdDSkVE=;
 b=HNvSOZt97KhH2hUxgkY1FyW7uoV9xZIyqfi/ogY7Thygm+yrpLu9P9hLIIDlaTcnAo2s79rh/57GVc4iuuCH21Oa9PX84wKKxDZ8+6iCUJZUTlTGDxrSRQMO2NbTs08najJxIyPN3JAcvY+B7cCSSRAZrao3YeO1HaVWRFxjitQ=
Received: from FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:3b::14)
 by BEZP281MB2833.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:70::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 08:13:36 +0000
Received: from FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM
 ([fe80::9f0a:eda6:8e24:7d7c]) by FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM
 ([fe80::9f0a:eda6:8e24:7d7c%5]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 08:13:36 +0000
From: =?Windows-1252?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: Lars Amsel <lars.amsel@ni.com>, "Chapman, Christian - 0664 - MITLL"
	<Christian.Chapman@ll.mit.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: Transmitting on both X300 channels without streaming samples
Thread-Index: AdqR0XUuU7CBF8e5QPe+8RY7OngB/wAyCzRmAHx+Hbw=
Date: Mon, 22 Apr 2024 08:13:36 +0000
Message-ID: 
 <FR2P281MB23326974D9DECF991BCCD66690122@FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM>
References: 
 <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
 <DM8PR04MB7848A9206F2A6C0349723592E6122@DM8PR04MB7848.namprd04.prod.outlook.com>
In-Reply-To: 
 <DM8PR04MB7848A9206F2A6C0349723592E6122@DM8PR04MB7848.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2P281MB2332:EE_|BEZP281MB2833:EE_
x-ms-office365-filtering-correlation-id: 258bbb2d-12d3-429c-c39a-08dc62a41c34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?wMQV0I70hZ40zz2bhD/AVQcC6Tm73luzIOoTZ27j4NHWy2Cqv4ljOiqK?=
 =?Windows-1252?Q?zQBbwf7XrVxH8YuycEnIL3QdRmourl3IBRuoC50wMPcxa3pgFvQXlFFG?=
 =?Windows-1252?Q?/zC45xlAwjxMduWoGDicAU45bXluaU5KlcD47HFVxI45hbm+rcxw9pyk?=
 =?Windows-1252?Q?SAQ1IDGVAgJpeJS4eGsCedNX94MlsJ+VuHmmJNd84YbZ7Cwwt6lAEfhE?=
 =?Windows-1252?Q?A/pIScbloJOpNOsxh5H4ImbGpJyZCFR5j1fR1t4m4PZWaOSC0QZm1xiQ?=
 =?Windows-1252?Q?WmXbfLkqCIBbs+5NsBnKxz33Vq+xQ5J5Y0USw1Yi0WF0va+VyCykSC9e?=
 =?Windows-1252?Q?27AI9nGtW6AH4ekcfYvkHJju5BW9ZpISAOm0D4QY/R4cA/yBh2fUv0b7?=
 =?Windows-1252?Q?sA2bgtzLRwjQzVVAhLettvihS4z5VuoUREbWqPUXZ4ezjUKHND7cb5c6?=
 =?Windows-1252?Q?5dm0lpG7sXhvlHecpUD3/YuC3PIiRNK4AyI68HBWqZ6gUGN9GciysXIi?=
 =?Windows-1252?Q?JxVzinc6dt4dOa/XSC4Ij15unBTYSUsrTsfEgJ5mX3aM1/B9/1iMTR8l?=
 =?Windows-1252?Q?z6SGM3Z2vu9Iw+DyJ/1IpKY0mAWExw/+p5TFlkscljOFdQlX8odKJHtB?=
 =?Windows-1252?Q?SQIZYGV0KX03uwVYcvA7IHQB326zdh2wB3djzEErX7zvZCbJ51Vmt5pU?=
 =?Windows-1252?Q?lcNjP5YN5s/4dcaPQT7GdGmeQUzuweaGga3yf7qKJGLzlYik7B7uFmei?=
 =?Windows-1252?Q?1n5dxIakTqPBHv8D+uSiVT8mMB0VJlSahcmlBkITOTtqR9Z14cbIrKLR?=
 =?Windows-1252?Q?/ev1GVeJF1a6pg7/J+0N1BZhQcKi8rbVx3MiOthF8VTmsNWGSuHLT7tZ?=
 =?Windows-1252?Q?W047Bay6PNJwMxeFqXbhK0gr440Monx2Smxd2GHFETR0uZxl9mPiTzsv?=
 =?Windows-1252?Q?bG5vKJ00YEpAemABzY42gnwtUE25vBZIV/xBp6meKh/nt3QzPM27lnys?=
 =?Windows-1252?Q?zfuKwyMf5nNPf5HMNmS0coQiqHUnD4R1L8C1MGqHLGnICTCxQUTui3um?=
 =?Windows-1252?Q?/+o/UAU/0mdUHPdzggfVrQ/aGGdb18soGVHNTAWXV4+kAZuSjtYH7HxA?=
 =?Windows-1252?Q?oorra2Dw2rVCSIHnlrARBmzb9wd4g6FxC0o3b8vC39CkLioKuFZZPKin?=
 =?Windows-1252?Q?ZaGZWK3VDeAZpw0pjNiT5uHF6xUBwyeaNliyjj4NOmNbea6Eqxij2uDh?=
 =?Windows-1252?Q?iAyiklqMBAkSMjpEE6bWT+Ox4TIhIvfpb8sTGMzL61eKnvE5sgUGADNZ?=
 =?Windows-1252?Q?l5j/oMWiwuoVskDbtB8DiOASUHw7LnIXueBiKbyK/tJFfroQ44XPgJ3A?=
 =?Windows-1252?Q?QvqDEjBgg88jrg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?tsEm97UbamIQVMNgBDOspTF4jucnC7btfPSWE1ALqsKQWxQ6isVVxeUt?=
 =?Windows-1252?Q?Fij0jAXuLfMG1npba/7TdenSoycUvMw8A1D555iwQupJKEurL7Xj7bBy?=
 =?Windows-1252?Q?uhRb8T1VnZLuLvblHoIwwRozEjZEdeKH9M4gcU/BriB1dzKZqrk5mkUi?=
 =?Windows-1252?Q?5qy7WjQX4y1ox7/nLmSzJYDSgeltvcll+HiwiYJXdyX59xrzT0UQTLpV?=
 =?Windows-1252?Q?DnR0uuv0Q5r64D5shOXjxzQdJ0coU8nSotYxbnXWwFVP8rh35+Jg52j1?=
 =?Windows-1252?Q?Mc/+0uDm3osAIGkMn4WVw3ya7Uon40LBt/2BvXTcfPXXFqlxsLcyRl/5?=
 =?Windows-1252?Q?F4lYTfD+Qd91enKx0JgY4UvG4ESF9NjKQSuOr3O5rvU7CBLGU5Z6RHTc?=
 =?Windows-1252?Q?5Qp6LK9fD4Ubsfg8+dy0kE4A+RueqWm0J9ESmy2xr28tz7931QAWl6Id?=
 =?Windows-1252?Q?3HdduIKJRPRgxfw4ywauQmvCpYueySQSi4r75ZAlg4c3s5SUoWJicLxr?=
 =?Windows-1252?Q?hR/KOs7HAcD/c9SkRTcPXa+IQQMmXdQM4fkfrF4HWw9pLZlpHEn3MOiP?=
 =?Windows-1252?Q?7CivoLNJCkCmNFVsU2a4XhTVRFwZ78kuBlIY2bE1h5kAjF3bNcsZWovy?=
 =?Windows-1252?Q?54hnPxkaqvRPpvaDv38zkMn9RTdG4/S0aU6McNmlkv7nS1F0Zz1aHwU1?=
 =?Windows-1252?Q?LxRJpj1vWUmSE9HI7d2aGOAVz79NQT1AjWYRFbLRCgLQ3A7aVpwd2jOl?=
 =?Windows-1252?Q?AsnwmEE3NFpGJz2yuztXR8UiplwiBDV9xPKphHm+FGASQkUyu/tzPBSU?=
 =?Windows-1252?Q?fweVeCzVrnb1z5ukhywtopFtnAXcrdRAiR7NHVjLonE39ogI0hnKmwSR?=
 =?Windows-1252?Q?CSlX2L+jZISkeZeVgaDRWf6tZGBcuI7+4Oe3bFode1mQxbwOpSkOd1DT?=
 =?Windows-1252?Q?NyHkoBCi4ksgqocjgFhHSqdDPc+C8wtSkrXeHq8b4o4V5/XVQbfthRP1?=
 =?Windows-1252?Q?2btk+9ukeYh03HnOdLglO9B/gCaPbpsT4rGQcSja3jPfoReOo0hm+UdR?=
 =?Windows-1252?Q?utYeZvgUcw0/4LunYp0G+qx+yYPAP1qFx5jrAPbyuHK6DaxdTLsHGwtm?=
 =?Windows-1252?Q?qWPP8Mk4M0qrKiyr7zn2dCkg2QfOcMPmZxvCtjPY1XUAdDltxnd5SKq7?=
 =?Windows-1252?Q?R27Q6JpKK3gpuK/NJPobWaVebTp6A5gzZaCqg0CARS8UwO/UpL+vSdeH?=
 =?Windows-1252?Q?NSxbXzetkgCv5IEWqPLvmG1r2DkAPIXPw2UQIJSIVRcg2qdz9PZE6bSG?=
 =?Windows-1252?Q?LNt91tt1gP7HuwsNoWkQijEvMExidsxxYrJ0foAl1ESDscz5ESwlJEZD?=
 =?Windows-1252?Q?UGM0Qa8VqCV5xgjBvenMWK/1QmkU2s4farUEG1JFavs/IU5Dgh/Fx6PE?=
 =?Windows-1252?Q?w97L9hGmvzEZVABexUGfA2S/+EvhgNM0B216738V7JyhJNH+p51Swov9?=
 =?Windows-1252?Q?9ZF3kkcp0YjnFZvNHfSYar0+vUbvaBNDhcTzLNtomcgL+vDolZ4Y0NB/?=
 =?Windows-1252?Q?KQJdxCzASo1O8oGiDh0nCMQgHruEaqky/c2QHAE8PM0ptruuSBkzSt5H?=
 =?Windows-1252?Q?8XINJ4f4TrP5jWpcDkjSnIpNuz9KF8vVsjn47r2eKJ6JaD6IBtOMAqFb?=
 =?Windows-1252?Q?pRw9sGNhVazj75d5ovZpup9synxF6hcWEcVniQX9Z2LBx9adLFgyk0n9?=
 =?Windows-1252?Q?b7ao5I1xDo6h8dLn+1Q=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2P281MB2332.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 258bbb2d-12d3-429c-c39a-08dc62a41c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2024 08:13:36.6530
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBDkHn5SrxxepdieK+DclUr+rNDljgcdVE7wfpXbs+pr9/2eVqV8eqlO834lBGVH1kdng8dYvOM8XKHp/uXKGeOxCWqaFd0rt08qf7XqIojLiUrhu12oWlCqEoOJkAEI4cxIm8xwVujwlceVxVeiiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB2833
Message-ID-Hash: 6R4SBWSIQVI4BZMMZ5PW25XR4GNOLDW5
X-Message-ID-Hash: 6R4SBWSIQVI4BZMMZ5PW25XR4GNOLDW5
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitting on both X300 channels without streaming samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZGWZXMYS6NFQXOTSFPUBYSSMYY37TQF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3570060202977710552=="

--===============3570060202977710552==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_";
	type="multipart/alternative"

--_005_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_
Content-Type: multipart/alternative;
	boundary="_000_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_"

--_000_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

regarding your approach, I have developed a library [1] on top of UHD4.5 wh=
ich can do exactly this, but would need some small modifications. The libra=
ry allows to stream data slowly into the FPGA's replay block DRAM and then =
stream it from the DRAM to the Radio with full sample rate. Also, the other=
 way is possible (i.e. record from radio to DRAM, and then afterwards slowl=
y to the host). Depending on the amount of RAM and sample rate, several sec=
onds of data can be transmitted, also periodically.

Currently, the number of TX samples is artificially limited to 200k [2] (a =
limitation I faced at X410), but this should not be an issue for X310. The =
documentation for the library is focussed on X410, but I have tested it usi=
ng NI-2974, which is essentially a combination of X310 and a normal PC. So,=
 maybe you can give it a try. What you need to do is perform the steps for =
installing the Server [3] (without `make install`) and then start the serve=
r manually with `python start_usrp_server.py --uhd-ip <your-x310-ip> --usrp=
-type x310`. If you want to give it a try, I can try to help you setting up=
 the library.

Maximilian Matthe

[1] https://github.com/Barkhausen-Institut/usrp_uhd_wrapper
[2] https://github.com/Barkhausen-Institut/usrp_uhd_wrapper/blob/b63752734f=
103d7f3744947efdad927c0d33c36c/uhd_wrapper/lib/usrp.hpp#L64
[3]


Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667

________________________________
From: Lars Amsel <lars.amsel@ni.com>
Sent: Monday, April 22, 2024 9:42 AM
To: Chapman, Christian - 0664 - MITLL <Christian.Chapman@ll.mit.edu>; usrp-=
users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Transmitting on both X300 channels without stream=
ing samples


Christian,



you did not mention what version of UHD you are using, so I assume you use =
something recent. UHD has a replay block that is shipped with the default i=
mages (if the USRP has sufficient resources), see here: https://kb.ettus.co=
m/Using_the_RFNoC_Replay_Block_in_UHD_4. So your X300 is able to do it.



The replay block always manages all the memory, and you are free to divide =
the available memory into portions for different tasks. So you could split =
it in half, download two TX signals to each half and then play one to each =
radio. Beside the good introduction linked above, you might also want to ta=
ke a look at the Python TX waveform example https://github.com/EttusResearc=
h/uhd/blob/master/host/examples/python/tx_waveforms.py. This example (with =
the -dram option) contains most of what you need. The necessary extension w=
ould be to download two signals and do two play calls to play each signal t=
o one of the radios. You might want to  use a timed command here to ensure =
both signals start at the same time.



Regards



Lars



[NI]<https://www.ni.com/r/zf03uz>







Lars Amsel
Principal Software Engineer
SW Discipline

+49351206931427<tel:+49351206931427>  |  ni.com<https://www.ni.com/>

[National Instruments is now NI.]






INTERNAL - NI CONFIDENTIAL

________________________________

From: Chapman, Christian - 0664 - MITLL <Christian.Chapman@ll.mit.edu>
Sent: Thursday, 18 April 2024 23:08
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Transmitting on both X300 channels without streaming =
samples



You don't often get email from christian.chapman@ll.mit.edu. Learn why this=
 is important<https://aka.ms/LearnAboutSenderIdentification>

Hi, I=92m interested in using an X300 to repeat several 100 ms of >100 MHz =
samples, a different signal on both channels, and my host computer can=92t =
stream samples into the X300 continuously.

It would seem the RFNoC replay block could serve this need, but according t=
o a thread from Thomas Harder on a very similar question[1] some firmware c=
hange is required.

Thomas seems to have settled on the approach I can=92t use: his samples are=
 streamed continuously via 10G Ethernet.

If I understand properly, Rob Kossler=92s txarb block can serve this need, =
but I can=92t find it published it anywhere. Do I have to recreate somethin=
g similar to do what I need?

More broadly, has anyone done this and/or have simpler solutions appeared i=
n the last few years?



[1]: transmitting on two channels with replay block, msg09472



Thank you,

Christian

National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: Schweriner Str. 1, 01067 Dresden, Germany=
 | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: P=
rof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gesellschaf=
terdelegation: Jan Gerken

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi Christian,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
regarding your approach, I have developed a library [1] on top of UHD4.5 wh=
ich can do exactly this, but would need some small modifications. The libra=
ry allows to stream data slowly into the FPGA's replay block DRAM and then =
stream it from the DRAM to the Radio
 with full sample rate. Also, the other way is possible (i.e. record from r=
adio to DRAM, and then afterwards slowly to the host). Depending on the amo=
unt of RAM and sample rate, several seconds of data can be transmitted, als=
o periodically.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Currently, the number of TX samples is artificially limited to 200k [2] (a =
limitation I faced at X410), but this should not be an issue for X310. The =
documentation for the library is focussed on X410, but I have tested it usi=
ng NI-2974, which is essentially
 a combination of X310 and a normal PC. So, maybe you can give it a try. Wh=
at you need to do is perform the steps for installing the Server [3] (witho=
ut `make install`) and then start the server manually with `python start_us=
rp_server.py --uhd-ip &lt;your-x310-ip&gt;
 --usrp-type x310`. If you want to give it a try, I can try to help you set=
ting up the library.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Maximilian Matthe</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
[1] <a href=3D"https://github.com/Barkhausen-Institut/usrp_uhd_wrapper" id=
=3D"LPlnk737203">
https://github.com/Barkhausen-Institut/usrp_uhd_wrapper</a></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
[2] <a href=3D"https://github.com/Barkhausen-Institut/usrp_uhd_wrapper/blob=
/b63752734f103d7f3744947efdad927c0d33c36c/uhd_wrapper/lib/usrp.hpp#L64" id=
=3D"LPlnk186058">
https://github.com/Barkhausen-Institut/usrp_uhd_wrapper/blob/b63752734f103d=
7f3744947efdad927c0d33c36c/uhd_wrapper/lib/usrp.hpp#L64</a></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
[3]</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sa=
ns-serif" dir=3D"ltr" id=3D"divtagdefaultwrapper">
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Maximilian Matthe</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Head of Engineering Lab</=
p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">maximilian.matthe@barkhau=
seninstitut.org</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Lars Amsel &lt;lars.a=
msel@ni.com&gt;<br>
<b>Sent:</b> Monday, April 22, 2024 9:42 AM<br>
<b>To:</b> Chapman, Christian - 0664 - MITLL &lt;Christian.Chapman@ll.mit.e=
du&gt;; usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: Transmitting on both X300 channels without=
 streaming samples</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Aptos}
@font-face
	{font-family:"Segoe UI"}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
span.x_EmailStyle19
	{font-family:"Times New Roman",serif;
	color:black}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:70.85pt 70.85pt 2.0cm 70.85pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-wo=
rd">
<div class=3D"x_WordSection1">
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">Christian,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">you did=
 not mention what version of UHD you are using, so I assume you use somethi=
ng recent. UHD has a replay block that is shipped with the default images (=
if the USRP has sufficient resources),
 see here: <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_=
UHD_4">https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4</a>. So y=
our X300 is able to do it.
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">&nbsp;<=
/span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">The rep=
lay block always manages all the memory, and you are free to divide the ava=
ilable memory into portions for different tasks. So you could split it in h=
alf, download two TX signals to each half
 and then play one to each radio. Beside the good introduction linked above=
, you might also want to take a look at the Python TX waveform example
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/p=
ython/tx_waveforms.py">
https://github.com/EttusResearch/uhd/blob/master/host/examples/python/tx_wa=
veforms.py</a>. This example (with the -dram option) contains most of what =
you need. The necessary extension would be to download two signals and do t=
wo play calls to play each signal
 to one of the radios. You might want to &nbsp;use a timed command here to =
ensure both signals start at the same time.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">&nbsp;<=
/span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">Regards=
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">&nbsp;<=
/span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">Lars</s=
pan></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"color:black">&nbsp;<=
/span></p>
</div>
<div id=3D"x_Signature">
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" width=3D"450" style=3D"width:337.5pt; border-collapse:collapse">
<tbody>
<tr>
<td width=3D"450" style=3D"width:337.5pt; padding:0cm 0cm 0cm 0cm">
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" width=3D"450" style=3D"width:337.5pt; border-collapse:collapse">
<tbody>
<tr>
<td width=3D"450" valign=3D"top" style=3D"width:337.5pt; padding:0cm 0cm 0c=
m 0cm">
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" width=3D"450" style=3D"width:337.5pt; border-collapse:collapse">
<tbody>
<tr style=3D"height:75.0pt">
<td width=3D"100" valign=3D"top" style=3D"width:75.0pt; padding:0cm 0cm 0cm=
 0cm; height:75.0pt">
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" width=3D"100" style=3D"width:75.0pt; border-collapse:collapse">
<tbody>
<tr style=3D"height:60.0pt">
<td width=3D"80" style=3D"width:60.0pt; padding:0cm 0cm 0cm 0cm; height:60.=
0pt">
<p align=3D"center" style=3D"text-align:center"><a href=3D"https://www.ni.c=
om/r/zf03uz"><span style=3D"font-size:1.0pt; font-family:&quot;Calibri&quot=
;,sans-serif; color:black; text-decoration:none"><img border=3D"0" width=3D=
"80" height=3D"80" id=3D"x_Picture_x0020_1" alt=3D"NI" style=3D"width:.8333=
in; height:.8333in" data-outlook-trace=3D"F:1|T:1" src=3D"cid:c5f89e5e-3baf=
-48a8-a353-fd11c0c0f896"></span></a></p>
</td>
<td width=3D"20" style=3D"width:15.0pt; padding:0cm 0cm 0cm 0cm; height:60.=
0pt">
<p><span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-seri=
f">&nbsp;</span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"80" style=3D"width:60.0pt; padding:0cm 0cm 0cm 0cm; height:15.=
0pt">
<p><span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-seri=
f">&nbsp;</span></p>
</td>
<td width=3D"20" style=3D"width:15.0pt; padding:0cm 0cm 0cm 0cm; height:15.=
0pt">
<p><span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-seri=
f">&nbsp;</span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"350" valign=3D"top" style=3D"width:262.5pt; padding:0cm 0cm 0c=
m 0cm; height:75.0pt">
<p style=3D"margin-bottom:4.5pt"><b><span lang=3D"EN-US" style=3D"font-size=
:10.0pt; font-family:&quot;Arial&quot;,sans-serif">Lars Amsel</span></b><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif">&nbsp;<br>
Principal Software Engineer<br>
SW Discipline</span><span lang=3D"EN-US"></span></p>
<p><span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-seri=
f; color:black"><a href=3D"tel:+49351206931427"><span style=3D"color:black"=
>+49351206931427</span></a></span><span style=3D"font-size:10.0pt; font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;|&nbsp;
<span style=3D"color:black"><a href=3D"https://www.ni.com/" title=3D"https:=
//www.ni.com"><span style=3D"color:black">ni.com</span></a></span></span></=
p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr style=3D"height:59.25pt">
<td width=3D"542" valign=3D"top" style=3D"width:406.5pt; padding:0cm 0cm 0c=
m 0cm; height:59.25pt">
<p><span style=3D"font-size:1.0pt"><img border=3D"0" width=3D"266" height=
=3D"38" id=3D"x_Picture_x0020_2" alt=3D"National Instruments=0A=
is now NI." style=3D"width:2.7708in; height:.3958in" data-outlook-trace=3D"=
F:1|T:1" src=3D"cid:c68a155d-4b64-4925-8947-0f8c2833cf3a"></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center"><br=
>
<p align=3D"Left" style=3D"font-family:Calibri; font-size:10pt; color:#0000=
00; margin:5pt; font-style:normal; font-weight:normal; text-decoration:none=
">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;=
 font-family:&quot;Calibri&quot;,sans-serif; color:black">From:</span></b><=
span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibri&qu=
ot;,sans-serif; color:black">&nbsp;Chapman, Christian - 0664 - MITLL
 &lt;Christian.Chapman@ll.mit.edu&gt;<br>
<b>Sent:</b>&nbsp;Thursday, 18 April 2024 23:08<br>
<b>To:</b>&nbsp;usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&g=
t;<br>
<b>Subject:</b>&nbsp;[USRP-users] Transmitting on both X300 channels withou=
t streaming samples</span><span lang=3D"EN-US">
</span></p>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
</div>
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpaddin=
g=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%; border-collaps=
e:collapse; display:table; border-spacing:0px; box-sizing:border-box">
<tbody>
<tr>
<td width=3D"1" style=3D"width:.75pt; background:#A6A6A6; padding:5.25pt 1.=
5pt 5.25pt 1.5pt">
</td>
<td width=3D"100%" style=3D"width:100.0%; background:#EAEAEA; padding:5.25p=
t 3.75pt 5.25pt 11.25pt">
<p class=3D"x_MsoNormal" style=3D""><span lang=3D"EN-US" style=3D"font-size=
:9.0pt; font-family:&quot;Segoe UI&quot;,sans-serif; color:#212121">You don=
't often get email from christian.chapman@ll.mit.edu.
</span><span style=3D"font-size:9.0pt; font-family:&quot;Segoe UI&quot;,san=
s-serif; color:#212121"><a href=3D"https://aka.ms/LearnAboutSenderIdentific=
ation">Learn why this is important</a></span></p>
</td>
<td width=3D"75" style=3D"width:56.25pt; background:#EAEAEA; padding:5.25pt=
 3.75pt 5.25pt 3.75pt">
</td>
</tr>
</tbody>
</table>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">Hi, I=92m interested in using an X300 to repeat several=
 100 ms of &gt;100 MHz samples, a different signal on both channels, and my=
 host computer can=92t stream samples into the X300 continuously.</span></p=
>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">It would seem the RFNoC replay block could serve this n=
eed, but according to a thread from Thomas Harder on a very similar questio=
n[1] some firmware change is required.</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">Thomas seems to have settled on the approach I can=92t =
use: his samples are streamed continuously via 10G Ethernet.</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">If I understand properly, Rob Kossler=92s txarb block c=
an serve this need, but I can=92t find it published it anywhere. Do I have =
to recreate something similar to do what I need?</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">More broadly, has anyone done this and/or have simpler =
solutions appeared in the last few years?</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">&nbsp;</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">[1]: transmitting on two channels with replay block, ms=
g09472</span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt; font-family:&quot;Calibr=
i&quot;,sans-serif">&nbsp;</span></p>
<p><span style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-se=
rif">Thank you,</span></p>
<p><span style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-se=
rif">Christian</span></p>
</div>
National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em. </div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: Schweriner Str. 1, 01067 Dresden, Germany | Registergericht: Amtsgeric=
ht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettweis, Dr=
. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Jan Gerken <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_--

--_005_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_
Content-Type: image/png; name="Outlook-NI.png"
Content-Description: Outlook-NI.png
Content-Disposition: inline; filename="Outlook-NI.png"; size=1704;
	creation-date="Fri, 19 Apr 2024 20:40:10 GMT";
	modification-date="Mon, 22 Apr 2024 08:03:47 GMT"
Content-ID: <c5f89e5e-3baf-48a8-a353-fd11c0c0f896>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAYAAACLz2ctAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAJOgAACToAYJjBRwAAAY9SURBVHhe7d1LaFxlGMbxM2euTUsDUtvipd5B
tLgQLO3Chbg0FbW6caM7NyLuXUrtQlEEFVcuBUVrQd1V0IrgBbxSFEpB68JUadXmNpmr3/d+3zeC
FsmcSXxOJ/9feXyttMmZ8OT1THJyplJ9//AwA0TyOAEJCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCgip
qS/gcLi++b9d7BgKxb+t8CZLhQ0Iqal9xfT0oAari+Ff/BqYRCXOQT/MvBZmtRFnPYxK+oOTGcTj
Habjn1StZSOvheNcn6OcHBsQUlO7AfvLv9vsHnzG5kqva3NQ8EyoknbGcGDjy4WzNt+YP2nz1TNf
2Ey7Ja+HjTPuphltvl47zHuetvnn6pLNcc3GzXf/t2/bPDb/vc1q3NhqbEBITe8GXDpnc3jfszZX
O3Gj2D8nV8/D5241nQNWwu8fP/mezZdPn7BZac3azNd4bjjagN3lMA8ettluh9+Pq1XfYvPQN2/Z
PBo39ui4xdiAkJr+AtoXwYZZ3+2+9UzbPRv2WewsW5Y7S5aX9s5ZThx4zDJsX7D4zZa221j8X3G5
2DGsJf6s1858w4ehdNiAkKKAE6q4czufuKiyxfai5c4d11ne3feIJW3C9OcQUEBIUcB1ljZiOjec
u+IWy6Grb7cMeqsWBBQQUhRwg6RN6L9+5/P63nstWb9nKfyseMpQQEhRwA3WGw4sjcYWy107b7IM
Bz3LZkcBIUUBN1g6F8x6HcvDu2+1ZINuyCZHASFVugL2B/2Q7krBtC2Zv57Op1a1zNSalq0F06hU
LUV1BwPL/u27Le5BhmxybEBIleZ6QL/1vOtnwvVzT+7Zb3OpX/Q8KTyshXRd3ehrbuNdo7wSz9Me
2nmzzTtmr7TZGcafDVmjerxe8Od4ZfONH71gM6/P2LTzROdf1wPOhesBlwpeEb01Xpn9wNdHbb5z
lusBgZHybED/HQLn7sv22Dx+4FGbWWfcDRgfTit8hleOPWXTPdI4x/wpDX8+6by4d87mE9ekzeye
1Y4hbcBfOmGzXfvh8zbZgIBQ6QrYHbpni/4nz3puE7j4TTNOFnsh8UJg9wzYfaZbmpbqmEl/r5G7
Z8Euk/L7rRT/yykJNiCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCk
KGDZTfkFhBQQUhSwZPxPhthPh8TN91v7gqVWqVimDQWEFAUsmdG9ZOIq/OT8T5ZJ78xQVhQQUhSw
rKpNy5EfP7VUGk2Lv8PD33d5uPRRQEhRwJLK86rl83OnLT/8MW/ZUq1ZpgUFhBQFLKnRs+HGVsu+
z16zVOutEPcU2cedEdqvSxUFhBQFLLmqOw/0WeitWm77+BVLqzkTUqlZLtVnxxQQUiUuYPhmaPrM
Xms2XrHjSr+KSnfr+m7hrGXXB89Zzrut6LOtuc2SvmMSv5GSDre02ICQKl0Bm+58xydruENz2dZy
n9kFYo/MHl3aBZOtglm3fXzszqsuF3uf/5WmO1/zudw9o/UpKm3CX7srll3Hj1ge/OpNy6mV85b0
qgBZ030sXcr69UM2IKRKc4/odG/kZrzm7aq4JfzrrBVRz8Pn1qmVBZt5fLvpXsxr1Y/vf0e8p/J2
f7dVZ9xXuqyEM7Ksb7dtzbIz8V7Refzv4x5X4s8vvUF63bn4du3rh84Nre025/1rpjhL8dUIqgXf
33pjA0KqNBswGd0lvuDm+6c83p2+6IZJ0iZ0BxZmYeE4im7kteqn40zHHT8OZdl8CRsQUqXbgNhc
2ICQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooAQyrK/AAKzFtHKVJyKAAAAAElFTkSuQmCC

--_005_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_
Content-Type: image/png; name="Outlook-National I.png"
Content-Description: Outlook-National I.png
Content-Disposition: inline; filename="Outlook-National I.png"; size=13664;
	creation-date="Fri, 19 Apr 2024 20:40:10 GMT";
	modification-date="Mon, 22 Apr 2024 08:03:47 GMT"
Content-ID: <c68a155d-4b64-4925-8947-0f8c2833cf3a>
Content-Transfer-Encoding: base64

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

--_005_FR2P281MB23326974D9DECF991BCCD66690122FR2P281MB2332DEUP_--

--===============3570060202977710552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3570060202977710552==--
