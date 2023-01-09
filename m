Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF76661FE8
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 09:21:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13823384023
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 03:21:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673252505; bh=cObyiQZu1jfttStJEmnJNV1elJsQllGKi6OJoVDbn7I=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=K7x0g9n4TxPXOkeQ3czmWB2EyNQ46mhAjnPw7gL7NE6tXCw/9S5cbmUaZ9aYJx1Id
	 6EeiqL+x2wTw45b7sBA+o2OGKCeTkji+4/fT4SLEu2NeTMRYCByCRwjQdc9iYws40E
	 OrJcEOSHBuy2S2NeiHbB+fPJiobpv//RdqzRWYRFNgO/lP5e7mS6f2hq62IbRTLajk
	 rzkc65rdxJkZpethsWbhQJXx5tG3FBxu+mti0kA4OVt71c7fooA3sjojfpBK7uKziA
	 XFCskaazpp64ZBpr5urxF+2EhFc/vzF9y7AbSVYawaDSe58EidKfOcnZUuG19fizV1
	 qhoQvy0P15YSA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2100.outbound.protection.outlook.com [40.107.8.100])
	by mm2.emwd.com (Postfix) with ESMTPS id DA1BE383F6B
	for <usrp-users@lists.ettus.com>; Mon,  9 Jan 2023 03:21:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="RhpYpaPU";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9q4ml0RlSNz6TeOVXCm29jtASPc0nCr5sly8rMtwGZbpaJ4FIJwuvzGbR3M4fWoKT0mdGHLI6wLDOZvq0RgLss3LVpJ+9/E6LYLnupMZYWhlqsR4gujLp/u3xstgl0yOT8L/0GbAKgyT/AAijlTcQp42kdttzGTZxeE2PpAJRHFRcwS3MmY0+jXz9WFJ2Yr+VbJxunHdBEiEHBgtIQ4uj9ROLmmTU8Q69yO6vbb4MNjk97UXOfxOVLP3ztO2fkriWaPiH4ScxXosB2OGgUpNr+6/yudYa4o7E0RZPete3v4cdpKCfT4C05R9jPVcBSKX/fpWdwFT9Pq6Xjj367+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pikPJ55PNNI9iBRfI1gT+GnMlsoxOyt8L9X2cAUc9NQ=;
 b=TGdG5EgWYPTGrN3OcwFy+2EcYo62Xp9I64IZoQ48YOlTDNqMb8+2NaqXhEv11i8Cyt3xotykop3EUf1m7OEyaj6zcDaMlQwdSg6HS2dlTHmkhAIH55kS0ggFhDI/DswbBNobozQQBramPPX3K4WpjhxhetZTCvY5xlUby1IBrcyOED7VhFfyneguzZfespCCDQHNLpXtFeyjc8ZZYns1Ao6oPEjL8BxE1qUhIy7qMWdKgCqq1IBsX4R8LtJFzi5kngCAcx6MlH0nY8qGxvV1725bXRQpD+YuozFf2vfdF2HnFzeqWd+m+wqfMvLF/tz27eITdESLl6DXaHBg6fmCOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pikPJ55PNNI9iBRfI1gT+GnMlsoxOyt8L9X2cAUc9NQ=;
 b=RhpYpaPU+8c8QEBBU/e4AUn01g2QYXMsvVnoCtYuw2WzrnHjmSMuIVFYVry0NIIxpk8RkbJevuM9RN1ILD3EMws2Tro0gwDN9jguoutJXQAXNdQgXtI9QU6SaL+LUD4BjIJl577hrsaEnPKCXnYstFA2VNrVTvcxqCZyUHxamWU=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by DU2P250MB0288.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:27d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 08:21:35 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::9c21:4214:5578:7ede]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::9c21:4214:5578:7ede%3]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 08:21:35 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] RfNoc Equivalent of get/set_master_clock_rate
Thread-Index: AQHZIabTCKjYALwyjk6ycxsTNV2qzK6RhnQAgAQ8p/E=
Date: Mon, 9 Jan 2023 08:21:35 +0000
Message-ID: 
 <GV1P250MB078568774EB8133DBD99A20390FE9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
References: 
 <GV1P250MB0785CAC2260FCF243F59BAEE90FB9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
 <CAEXYVK4uH7RW5WxqSAvHcB1eJAw_Y4jf13j6t05SO-SuNczBVw@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK4uH7RW5WxqSAvHcB1eJAw_Y4jf13j6t05SO-SuNczBVw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|DU2P250MB0288:EE_
x-ms-office365-filtering-correlation-id: 76e1d69d-531f-421e-9900-08daf21a859e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Cl4pQGJdB3+IPyItCwZ8eUQ4YYayeN5Ja9t+P0Qjke9dmqwTSUED8HL+Vf9AVlj+KUCxjiDgsLiuSAR+kdHoEtWi6KLgPwC8xCgtxuDKT+srUaniPAaQ6YFoHkgrWmBuMwBbo3jWYEUo734WuNbUgDEFO4IxvQ3gX+Zb6QNTXKwdDCSmXHuZGCLTc/pyySFN4TGcGhXC1y33wxpCQiHltx5MSF8Oex3dR0CoXhhYZ+BihAapGOi4uCj9a1qT11QQ9eYddRcGrqKJaWiwaofMgkqZuU++ei4gi7YnS6y2sEDKqKvjcFnWzRW+Ptp36ZizdLfumXDkh6ByD4j6Yc2lHbQ9MBM21BZEaqO7R3PAIE1i3HJR6oQUcrcExTpgT8yeTN0DMPfvvFXzVSMl2dDbvrl/uSBcSb/NbE0YPBkSZ/24b/pYhHpE3Xst8z4b3GNuMZQJmG48kl1n42hgwyCskc8A3URT5i0KNl+t1krspPgDoKpCudlkB5h4hMAIAZMRJcYQ+Y+GWrg/ffAOBj4UDYVy9NOoGmiQ2/yw3r9px4KoLbrK42GlL1Byim+rfCDyk+eNa5I/J3ba0M9HqTesvFoku2Q6m3hLL1i16En9YmR7E5JuSodUD8UlgdIG9OgGEj+fRSyORZl3nEczv0vSvE2I1ZR0pF6EojubMbHv9PfQmHcQdc2/3HWE0NHFPN1escxqVlsV7vfwesjaUI8bK5yRl00q1Ij09dQL7vDV4Zg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(6029001)(396003)(366004)(346002)(39830400003)(376002)(136003)(451199015)(76116006)(4326008)(66446008)(316002)(64756008)(66476007)(66946007)(8676002)(6916009)(66556008)(91956017)(7696005)(38070700005)(71200400001)(2906002)(5660300002)(8936002)(52536014)(41300700001)(66574015)(166002)(86362001)(478600001)(83380400001)(53546011)(966005)(6506007)(33656002)(122000001)(55016003)(186003)(9686003)(15974865002)(38100700002)(26005)(66899015)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sM12Rr6lFfPjkqMJB8LfHmHrVi5xVPczOSZA4bN/iNjCZ34Kmcf61/pp4z?=
 =?iso-8859-1?Q?Fb+cEERJEOMVOa960zV7XuW7fMn/JcepEHTzxnJ3W7u5PyC0GalGBbgAXK?=
 =?iso-8859-1?Q?DTSJonwVEdmhK6hpXGzKOt9xrqeVn/fyzJd7+zpTuTRL6x26/S+NOM72Zs?=
 =?iso-8859-1?Q?fVg5kvttDJzp+GGqaEgnHKYSmMypOO3Z38GEH7hD7Gk1AXkyYTAN0/zwgy?=
 =?iso-8859-1?Q?hMbZqkPUknDWzflBIdblpZniCg+E2MjfPODm5iBno3mC3rlog72X5EnWlm?=
 =?iso-8859-1?Q?npNFFit6j9//6vxeiQO/csd6NIWEHPErWt84BCfu2cHkLxCKAdxi7LE3xm?=
 =?iso-8859-1?Q?hY1HLtSNq616IYVM+Dv+5U4bIQ8KEdvtd7YDMCkAJAx4u/DO5kH1IKGGnF?=
 =?iso-8859-1?Q?xMtcT7ZBg3l+a1A99Rt4bXUKSNHMZc+OMaTTSmCWRgqkPkjnnm8n3bD3SL?=
 =?iso-8859-1?Q?X5hldvnl0yeNn2l5EcdwB7EnO97AQ0RgZ5OSF5m3ZZxY3Fmod5T6wbXYiV?=
 =?iso-8859-1?Q?S2qlADG5Pvy67AKFeeZW8O0NREcMG2axv/7ICWB388Ydjebbql2gDHcu+S?=
 =?iso-8859-1?Q?qhCDLe5VVUxtsXRn0H8lkwgns9QnxO+TPcJxwFqDwtjATT+9OPX0iymsRk?=
 =?iso-8859-1?Q?xiSMer/ko8/S5uKok6LBVd659jm5K1EdaliTVlc3H/H7qR7CRBgthVa1hc?=
 =?iso-8859-1?Q?c2Eh+axf3Wl1gTYS28LVp6lZXsexThPMzlGg3HJVHFjAK9wEmNkIzcgtls?=
 =?iso-8859-1?Q?R/jDTmj+Bm8JHJ4KCDrU5haa30rboxh3ocbZoXzuQGVw4SXsDx5uT999q9?=
 =?iso-8859-1?Q?d+kDHAJjoIllsUly4EE3Fcg8gJcBQ72T6o5FrCGar+eNjRZ7c2knPZNY3X?=
 =?iso-8859-1?Q?1RJtD85mVnunSeiO6ymrzC94EkYgMr6TXQs4F/SvbAUCXrCQ+ZCViPqIr0?=
 =?iso-8859-1?Q?tOWmztFUB1KIWaRziHdUq2Vpuv7bG15tHlBWYkyD7q92ihHKP+UCCfT8bb?=
 =?iso-8859-1?Q?gHgMtuX0518kgzajedmqMZsn5JteAV62AdHstaQ9DdSwvJFwyPXwM6Zebf?=
 =?iso-8859-1?Q?YTTEjzWm36XaKu1U2XyXMiglQ2l8AECBbZ/1dag137z024haJwnv73GDB9?=
 =?iso-8859-1?Q?X+0Q9U/vzxsMg/TlvmxjAtMU/GQ4nMt3K9IvPjIg/Buf8L9tLNAVPIyG+m?=
 =?iso-8859-1?Q?4iibg5mhhnmhqZgJyPkuNwlQqbQnseY1WF1Xy10C7HNRNFA3iJ6jnpdvgx?=
 =?iso-8859-1?Q?izAvpXEOyN0T/Jyz2N8SmrZa838TCY6Sqdiftbi4J034F3rM8W8sbrlIy1?=
 =?iso-8859-1?Q?yPa0nG7x5wCQAzAvZNcNMm9z8UfGFZP9dYRVkYZIJY2mqPT70y/4CUfG7k?=
 =?iso-8859-1?Q?xMaazwF1YObjfBoSrl6JqqinG7x/NEvYiVOaoHAG6C6kGvz67bdhzsOons?=
 =?iso-8859-1?Q?OEugghaEVB8UIVwcSEVgHScI5/nEmPc+f9+UAU4tFYKVdlmdL7k98GyMDG?=
 =?iso-8859-1?Q?acwLm0RNj26tCLLIPUePQjevGeaqb15vsGB69O2LSOujf0ehCbzCzqiZIy?=
 =?iso-8859-1?Q?rV0t3yOGvnrjCstqk31pAjyZ6LJTDIWO41gcxC8T+GkD3WgQjukiBjHjCq?=
 =?iso-8859-1?Q?4JKKTAxyiFt+od7MYOxCoA5fP7Nl05R3+yxTE50JtYmq6+TA5yEKeO7Yi0?=
 =?iso-8859-1?Q?KIa/xBKBCHUf9vTDafo=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 76e1d69d-531f-421e-9900-08daf21a859e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2023 08:21:35.0555
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xh7Vx+IPhRzcZSdsT57Ac8yF31eObJcT1FIgQ1lr/zi4ImHFBDfbyTjlLH3ot0uy9nXYODH5iS7KVn+TArh2yjz9yX57FyPDg3/k43x8MGtoEBa+m/zhbXTcBpN35v7inVDU/QlCXCzF/dEXF13+JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2P250MB0288
Message-ID-Hash: NHAFKBSJR7V4JCBGOQNOBGBQ5BLHRDNB
X-Message-ID-Hash: NHAFKBSJR7V4JCBGOQNOBGBQ5BLHRDNB
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfNoc Equivalent of get/set_master_clock_rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVW3AZF3QOG6X56ZOETVWQ6Q6NX7K44I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4939572686252598976=="

--===============4939572686252598976==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB078568774EB8133DBD99A20390FE9GV1P250MB0785EURP_"

--_000_GV1P250MB078568774EB8133DBD99A20390FE9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you! this was the information I was looking for and according to my t=
ests, using these methods works well.



Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667

________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Friday, January 6, 2023 4:38 PM
To: Maximilian Matth=E9 <maximilian.matthe@barkhauseninstitut.org>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RfNoc Equivalent of get/set_master_clock_rate

On Fri, Jan 6, 2023 at 3:20 AM Maximilian Matth=E9 <maximilian.matthe@barkh=
auseninstitut.org<mailto:maximilian.matthe@barkhauseninstitut.org>> wrote:
Hello,

the multi_usrp class has methods get_master_clock_rate, set_master_clock_ra=
te and get_master_clock_rate_range, see
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd75=
80630b2baa4e4c90df3a36d9f0

Is there an equivalent in the RfNoC world, i.e. getting/setting the master =
clock rate with either the graph or a block control from the device? Search=
 through the UHD RfNoc documentation did not show up any results.

Looking through the multi_usrp_rfnoc.cpp file, here are the calls you're lo=
oking for:

  https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7=
d52e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L708

... which operate on a radio_control object:

  https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7=
d52e43dfe/host/include/uhd/rfnoc/radio_control.hpp#L45

So you should just be able to ask for the controller block and issue the ca=
lls, I believe.

Brian


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzende der Gesel=
lschafterdelegation: Dr. Undine Kr=E4tzig

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_GV1P250MB078568774EB8133DBD99A20390FE9GV1P250MB0785EURP_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">Thank you! this was the information I was looking for a=
nd according to my tests, using these
 methods works well.</span></div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof"><br>
</span></div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Brian Padalino &lt;bp=
adalino@gmail.com&gt;<br>
<b>Sent:</b> Friday, January 6, 2023 4:38 PM<br>
<b>To:</b> Maximilian Matth=E9 &lt;maximilian.matthe@barkhauseninstitut.org=
&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RfNoc Equivalent of get/set_master_clock_r=
ate</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jan 6, 2023 at 3:20 AM Maximilian Matth=E9 &lt;<a =
href=3D"mailto:maximilian.matthe@barkhauseninstitut.org">maximilian.matthe@=
barkhauseninstitut.org</a>&gt; wrote:<br>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg6916895755288260022">
<div dir=3D"ltr">
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-si=
ze:12pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">Hello,</span>=
</div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-si=
ze:12pt; color:rgb(0,0,0); background-color:rgb(255,255,255)"><br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-si=
ze:12pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">the multi_usr=
p class has methods get_master_clock_rate, set_master_clock_rate and get_ma=
ster_clock_rate_range, see<br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-si=
ze:12pt; color:rgb(0,0,0); background-color:rgb(255,255,255)"><a href=3D"ht=
tps://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd7580=
630b2baa4e4c90df3a36d9f0" id=3D"x_m_1565142977517041712LPNoLPOWALinkPreview=
" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1mult=
i__usrp.html#aeefd7580630b2baa4e4c90df3a36d9f0</a><br>
</span></div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Is there an equivalent in the RfNoC world, i.e. getting/setting the master =
clock rate with either the graph or a block control from the device? Search=
 through the UHD RfNoc documentation did not show up any results.</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Looking through the multi_usrp_rfnoc.cpp file, here are the calls you'=
re looking for:</div>
<div><br>
</div>
<div>&nbsp;&nbsp;<a href=3D"https://github.com/EttusResearch/uhd/blob/dfccf=
cefe555cb10d1d419e5d7fb9b7d52e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L708=
">https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7=
d52e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L708</a></div>
<div><br>
</div>
<div>... which operate on a radio_control object:</div>
<div><br>
</div>
<div>&nbsp;&nbsp;<a href=3D"https://github.com/EttusResearch/uhd/blob/dfccf=
cefe555cb10d1d419e5d7fb9b7d52e43dfe/host/include/uhd/rfnoc/radio_control.hp=
p#L45">https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7=
fb9b7d52e43dfe/host/include/uhd/rfnoc/radio_control.hpp#L45</a></div>
<div><br>
</div>
<div>So you should just be able to ask for the controller block and issue t=
he calls, I believe.</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
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
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzende der Gesellschafterdelegation:
 Dr. Undine Kr=E4tzig <br>
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

--_000_GV1P250MB078568774EB8133DBD99A20390FE9GV1P250MB0785EURP_--

--===============4939572686252598976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4939572686252598976==--
