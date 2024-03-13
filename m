Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 872D987A82A
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 14:19:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ABFB384F2F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 09:19:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710335946; bh=IYOJWkcxVw0eUMBdu35sekUveEe8Ta3R8OVr/6PA2rk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=P+f8L0aJUvK2yfx2NsHhMiAhWJYDQjA6yEQ4A5w5NFmwV177q+AsiFdzop8CQQM/R
	 SrT6KN/s/4KHB2pVMpTwtBCW7jKFS4HT4iA9VI3RT9+mrPTJGBusGbAZG/DiQ49Clu
	 pmsKZZRnxlk/hGd2UgZv4Ixk5As2cIeLC9NL0Uc1pGzgkzxOjthGkuU4OP8xxiATsW
	 +RR1oF2HJ/jIxj08a85BNmiRFS/EvimoDq2xVJlfR+diBrPaUj2gcAoJXbYw0HsnBM
	 zWEwI6r+JH0mBJU08J49edSln/boV50afMV6sux1xmUYQwWa7fpXpUfaU+mRwe4u+e
	 1fENJeFEpOE7g==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05olkn2072.outbound.protection.outlook.com [40.92.89.72])
	by mm2.emwd.com (Postfix) with ESMTPS id B6B97384F1B
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 09:18:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="Q1KgklRH";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDHO988ZKQHlZu4itiFVTegHW2pzB6ycNE/nr8q7csGBxjWqlEjsNYn7eu8xs+p02lroO7wBIfo9UA8RFTe7QEWcCXgiAdXvM27crCoV2Mov3bvQWBaNutekgYeYh599CHiJOjKSQyVqRmxbBVJZvqyC93JUHa7ui9c7Vy4jIj2BkXteVlEyRk43H1ghya+fwHjKiLyCgz1rGreAsSbIE/L93xBGgpqICvo766BcEqnG5O0DTweDCzO1z4SVWmlgNKW2MY5b+hYcVZdl805035W02HqSg/2Q1cj/TyJhTyHUS79AQOWwYoGrkuBZ71flroLl8WRot4098GUFhJQC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knJHsku/QPwPSaXdZ6FaMvgou40TNJc3JP0ntbGl0NE=;
 b=GtCTmSuqHJVHA9dZXAAbgjOevjw1FBAespyI0tpvQowg2WE6JxlhnGpq6397jx+QVBciv2tN8cc8FcfOozcOpZi0WG0N38WQB5K3rgd6SC1Xb5n94uimd6y6SiSGc/e5l0KQaPIJeP1eYhtfGKscAW4fEOo5twBkaXv+rl1pIoLLwcnWaCAZqBt2z/+w6SDESfKnrgNshj/ygOVTlisyo9rwxf3lpBwYaaN8Zix211m8okt00McztRZEvpCbbf4OjmUu7kP+h8HS3u+uLrv5TDxbwfzkg3UBqQ9reFEtRxLIg1k9VDW5t6Za3P9qldT6GrBwWW2w5bq3dV1l+K1I3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knJHsku/QPwPSaXdZ6FaMvgou40TNJc3JP0ntbGl0NE=;
 b=Q1KgklRH/34AbDH3MJ1Cz1Cg1seHgGAQu9+bE7xVrY7jUPFKfui283OReQnqqganr0+Yh9xBlsKnFLjWHa5OgbwQLhqp6xQEMSl6QJd6D4k3NM9W6wZRxrvwmowySBMbbqP0yYutxZm/fDh6X3OmSvILOEciVTTX4sc9+1/goXlg8EDROBrF7kjX1Db3baKo7G9PV81EarAnanPK7TQUv+zjRjLxsl7LB3poLOhP+K3TLfJnYDUWUgx/UqAxkFKaele0Yt0m+sBFeGvsgWtDffI8uwX6uWzGw0TAoKkGliQcAgpO8rAC9nYmxa30wYqXBrWizm3bKUGlYprmuerFCw==
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:358::8)
 by AM8P192MB0978.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1e9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.36; Wed, 13 Mar
 2024 13:18:25 +0000
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b]) by PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b%4]) with mapi id 15.20.7362.035; Wed, 13 Mar 2024
 13:18:25 +0000
From: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210: synchronise USRP Sink & USRP Source blocks in GNU RC
Thread-Index: AQHadUXvcNFWd4pDWEqwVLtrqhov/w==
Date: Wed, 13 Mar 2024 13:18:25 +0000
Message-ID: 
 <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
Accept-Language: nl-BE, en-US
Content-Language: nl-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0WPR7mTcxnfEGy0t4dJXDVzvR/q3p8II]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWP192MB2150:EE_|AM8P192MB0978:EE_
x-ms-office365-filtering-correlation-id: 6800b51d-75b6-4806-9bfb-08dc4360106e
x-ms-exchange-slblob-mailprops: 
 9IecXKUgicDyadF/9QYgeQisirINYHF+GHt4RI/BJz5HQPYttGquhBnkhCVcOXK/+xfnn4LGYt2qhZswskU1fJ7qQI7YAwzmNvdjcPXeD52TZK1y5jefhMt1DxNwlFCdupmco8TiPjOOvfFaT0Tb7MEA2uBcV7WTjdmvTb7r4IaRx5scUXDbvbfDz7E1W14HuFX3MZKF1KixtN1kgCmRX3cVOChyiR/IDPiEUdeCOa2q7oZlI15dXCON+tJeSXFizX+Oq34LLFtxORNbtZ4JrqXAF3hz0+TYbUCzaaZfBbq5tyDpy3fcwRsJA5edYXGuZymf9mgdjq0b89/mqsm1i2lP/IBjjNtAsKxKjH0KFNoEPM9D4VXD9H6dK5rRqyhyuWPGywzaSmEaHGGn3FguY+ThpW2J2ukd4gHXch3iOtfQ8da99cOXtBhOeJpcnZdQyWkvjmj7LNwWnTzhqRmj4EutwfIDVeWofbwsEANoEpXcjGRJTjUY2WguXZEfqkSNpx/08iuMNGzYpvyVMCy2Tq01XBGMe/MQ/EZkDLrfTdcih/2/g5r8QdHRUIt5F9IHGevXUPKfmsNLLB80TzMsSglN3PsCaSOcM4b6BDZYiGADtxkSsJuWgD9HamXY5b9/RBB8JqxBkVMJU9MLwQ+lL6nV9o86ahgMzjltS43e54LS/jR+EYf6MmgFHxEe8fWnmmbtVqQt026KuapOTjYujI0dXfUyjqguvBW9hUUVRMaFs3sPtKt27A==
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pcJ3k11T6Whk5rsjwOQY4/DRBCZTlPMj2nZV/bOHrCrxziQ+dhEcTalXbWqfZu9EDFBVzfI/t5o5dOJPL4ah6y4rOvoLbhVIimMsCYBL2ApCQhgi9LlmCPwPMZ+z9xZgi8S1CVDTFO9dcM1cWfUU5RTqsN0MiJL0BIllIfqPwy9lMshyWL6DaKQ4TWNe2pySV1W0WV6/szGa8rxncbr2Wp9zRtQsXp331pBDia8pOBph24Vc6ZZx+PhF/5iGkv+USI3CrkCItwGZmjSTnmxCIiTdaZlCVqiXuifosP/XpWG4BtjVCvjO3jCJ5aFIUkK73x5bM+hyO4+DG4TR7ZXJU/YsXFD47rrC3xr9cFDBVEqznRMUEh9Rdn2VbSak0MKvJzCmRNC8mejAPX1K1kOqd693KGaJRYaMoxQBJf3rPMZKvyD6jCO8UAAMi1ToJTvZI9+tM3ZDMQFaU0Vj15rhXn8icZc4MWGBAebEd50kSdsFQMlOr3GE0DSO+K6asLVpNiHe4MlsdUtO36oVURH56fhobff2MGhmMAnhonTMcHmgTQlTEfjVrqIbx4cqhqdg
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?1DADDWvCN3cjp2x6JJIiNL/cm7NW2Y8sdSxhC6cZmZEXigF+Fn+JDAtMf/WB?=
 =?us-ascii?Q?Qu9zkWwbLcgeDTx2XUiNqI5DA7lr336ROua74BLn6XchI7+dtLCw/m/Jh7ue?=
 =?us-ascii?Q?9ZKRL76vpPKPGFaTObtQf/xBy+LMsYUTBehjUp+sYbqFkGEmx+BBXa/2E5wx?=
 =?us-ascii?Q?H5dPKa0kE+ofVPzOSQNpGJ4K/vtHmiR/7/VE0lu+LoOP/A6FgaqkGyzpdG/v?=
 =?us-ascii?Q?T9jUtIsWGXF7MmdIiAXxkuXkOlFKGoPbUa/uMWh+xmf39eKZPW9iy69QtH2r?=
 =?us-ascii?Q?+vcT1mrXBqZol7T4NF7wEHG3+iIxpDBx8WlQJvvhfkZw9+Ejhw9HHGXvGjnH?=
 =?us-ascii?Q?wcc3Xaz6PvpxZzW1kPCCj4c3oG4LgRlAPuLktjhZhqHktsRYZ5XYiV20QvtF?=
 =?us-ascii?Q?bDHHeRdnEiphTBNelUq3M+d3yDRe54m9MjtA+MVauT2NBMkuz4ypTMSnn/KF?=
 =?us-ascii?Q?Ltybm/syhigqzCmhNLxM3qlnBV9KtFPH4/+/HTQSIHJ72EBxwTSXG40PEVvT?=
 =?us-ascii?Q?imIw52UcbrGteuvnaVzR0yXAq29ESEsB/xLd3emHdBMuWhnq3HevJAVBWcLA?=
 =?us-ascii?Q?p36NJordG2lK0LFQGMo/RSQS11f6Xfh8JpMGgXYF3uUjwEgmAwW69o4guoyj?=
 =?us-ascii?Q?w/R3Oc4zdT2Uhuye20kaA83fWOog1uM59/nUCby7afmMVhBE93Z/ea0wD7J5?=
 =?us-ascii?Q?4DR2wuS3UIt7iKwmgwxsGUZdPSeH6qZz0p4n12d3MYdf9cKHlN7S6mfxo4gK?=
 =?us-ascii?Q?wVu4fIu28qGkg98CScaE/oEFVyIGruNWK6c/n+KQacnD3y1PGKMzsquhnqv+?=
 =?us-ascii?Q?DzPc8IcPynmtfLH3l514L2TtZDYWZup0386cWJD82FEQfVo+sPNbA42hGsDA?=
 =?us-ascii?Q?5q14LlJE3yzoIenk7tjlo+2TxzoSaItAiizdttJulQ+SNXbdbxug+nm8Mfy2?=
 =?us-ascii?Q?ctZ6Rnt0Ce8Tn21gVbNYpj9qbYbehCwpT2F90yCvVvHSYlpNKCMrQYBk92/H?=
 =?us-ascii?Q?0C7hflQ7gFnR+jhM1a4ZMkJy9UMLxOTHZYtsCTqg+FjyAkXUgU3+5PcsWITq?=
 =?us-ascii?Q?X1G33Low9kSP/Sl5fhJccKi+dgGXGU+Yczbdt0kI8A6NT4ErewL386No59sc?=
 =?us-ascii?Q?kTNYENlWpBGOsJ3ZP7yT+lQ22lgyjZwBiRceIGRGbOH3OncVKQfMquCe1uI+?=
 =?us-ascii?Q?btfc0S2yEoLqfKOpY9FnT/s68NjUkwFVseADSZr6vldMywfPT4PVv2JfTYtx?=
 =?us-ascii?Q?511DfBtlQbdslN033/O42Qc/X2n6e7zdNFyzyYroXQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6800b51d-75b6-4806-9bfb-08dc4360106e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 13:18:25.1217
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P192MB0978
Message-ID-Hash: 3BWJHSBQPBEVGLHF5VTGKA3QDAES2C42
X-Message-ID-Hash: 3BWJHSBQPBEVGLHF5VTGKA3QDAES2C42
X-MailFrom: tim.vancauwenbergh@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210: synchronise USRP Sink & USRP Source blocks in GNU RC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MLD2PLUQPMXYPX3M4CMX5WFEI3FTYLLP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5825220639851901015=="

--===============5825220639851901015==
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_PAWP192MB21509697372FC12333801419992A2PAWP192MB2150EURP_"

--_000_PAWP192MB21509697372FC12333801419992A2PAWP192MB2150EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear

I am using a B210 in a loopback configuration to achieve delay measurements=
.
Currently, a basic software setup is made in GNU Radio Companion, consistin=
g of a UHD: USRP Sink block (TX) and an UHD: USRP Source block (RX).

I generate a pulse every few milliseconds. When starting the flow, there is=
 a clear delay between the transmitted pulse and the received pulse when vi=
sualised in a QT GUI Time sink. I suppose this is due to the delay between =
providing a sample to the USRP sink block and the actual transmission + the=
 delay on the receiver side.


Is there a method to make sure both sink and source blocks start at exactly=
 the same time or at least can be visually synced? The delay seems to vary =
every time the flowgraph is run. In this loopback configuration, the delay =
between TX and RX should be 0. When adding a lengthy cable it should no lon=
ger match.

In the sink and source blocks I have set the sync setting to PC Clock on ne=
xt PPS, and left the start time at its default.

Any ideas how to get a good sync?

Best regards,

Tim Vancauwenbergh

--_000_PAWP192MB21509697372FC12333801419992A2PAWP192MB2150EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto">Dear</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I am using a B210 in a loopback configuration to achieve =
delay measurements.</div>
<div dir=3D"auto">Currently, a basic software setup is made in GNU Radio Co=
mpanion, consisting of a UHD: USRP Sink block (TX) and an UHD: USRP Source =
block (RX).</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I generate a pulse every few milliseconds. When starting =
the flow, there is a clear delay between the transmitted pulse and the rece=
ived pulse when visualised in a QT GUI Time sink. I suppose this is due to =
the delay between providing a sample
 to the USRP sink block and the actual transmission + the delay on the rece=
iver side.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Is there a method to make sure both sink and source block=
s start at exactly the same time or at least can be visually synced? The de=
lay seems to vary every time the flowgraph is run.<span style=3D"font-size:=
 12pt;">&nbsp;In this loopback configuration,
 the delay between TX and RX should be 0. When adding a lengthy cable it sh=
ould no longer match.</span></div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">In the sink and source blocks I have set the sync setting=
 to PC Clock on next PPS, and left the start time at its default.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Any ideas how to get a good sync?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Best regards,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Tim Vancauwenbergh</div>
</body>
</html>

--_000_PAWP192MB21509697372FC12333801419992A2PAWP192MB2150EURP_--

--===============5825220639851901015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5825220639851901015==--
