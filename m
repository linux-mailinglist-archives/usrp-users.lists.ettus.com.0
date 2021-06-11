Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E911D3A432F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 15:46:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEFCE38480F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 09:46:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="iruwtBLF";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id BE342383F65
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:45:42 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.172])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8FF342C0064;
	Fri, 11 Jun 2021 13:45:41 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2045.outbound.protection.outlook.com [104.47.51.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6B46B14008A;
	Fri, 11 Jun 2021 13:45:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2/8Sa4X407a11jFWjNw1j27lBVB08mBkjI1+pkauf8N3UZOLPcqY12TcLk4eOurAk3twysKDYXBz846x8v8tMie/5y7QwU5SbEKYl1USGKOb4KtAfPSnuBzH6BcVGVjI1dvepKGrsYaBeaGlVzp6p0753zpEr1Q7dFa8hGdgCMkhgpS0ter4iOJfGbNm2ZjEQjK4IXiQW8M9B+GFx+FX5RqRg595G6s9I7JTVY6+uyWt63o+LyZFxhymVO/Uy6ci2FrlFDj0iv4qPaq/jTFiFfKwAQhBxFHyVw2iaoOdg6vxXMS/tY2PGGU/UYmqyFOPCydFGQ8CgAQwiAmzVHumQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aULAAbG4/TNHlHilPSacRlEgEp9fRTCfR4+1Qa59dSo=;
 b=b/VZ4VgNhHCzJXK+eCDZbAKolaXfc+PxBuW5iNDH3AWV5PjGbT+mal/Ow1hPAG+4MKWSn+QHvmBh4wvCgsCmYVrc9XAHbEEtDSey3MbSP1TG71T6MPEhCnaw+I2ld8axtzks9APe88WdivU4TMrhe/e2k8h10CLEtI28EVbHN445IS7/75sFJir0OOkVcrwQKvMTpW/jzEiTp8CBRQMneJFGU/9Bp8YJnYKsts8gvSdNpXB+AvxbqLgOPlfv0w1uCykmqr+YuvT407Mu+CmOMQKB9A10Fo6L/UyrOzHINJwVskRpQaEtWzY0yL6/ktQo2HyWvGdyoY0apolOalTWkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aULAAbG4/TNHlHilPSacRlEgEp9fRTCfR4+1Qa59dSo=;
 b=iruwtBLF79mTiXOt8XYjVqT6YEKkCIXemcDypeBHVJZv7BHKyvd7xP+6ZETKNGmi3wLWXxr4x4D9d2g8IImr4qs09QWuO6FJ/UkD5Gr+doYAjx9InOFojIp/ui4apUxdScSGHgYUCZ60Et6w/8wcij+21Qb5GiLbp+tge6RTPcI=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3583.namprd12.prod.outlook.com (2603:10b6:208:c5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Fri, 11 Jun
 2021 13:45:40 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197%7]) with mapi id 15.20.4219.024; Fri, 11 Jun 2021
 13:45:39 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 1PPS input voltage
Thread-Index: AQHXXrsEFk6GKS0mUEmOl1kUojleFqsOyS4AgAAH0ACAAAD7Eg==
Date: Fri, 11 Jun 2021 13:45:39 +0000
Message-ID: 
 <MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com>,<60C3679C.8070900@gmail.com>
In-Reply-To: <60C3679C.8070900@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a49d4418-f47f-4f51-33b5-08d92cdf3338
x-ms-traffictypediagnostic: MN2PR12MB3583:
x-microsoft-antispam-prvs: 
 <MN2PR12MB35832B6CC247C1FFA71E9456B8349@MN2PR12MB3583.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7W1fEZSjVwlFyJ+YS5aQRhfqfsGASSFL1rMY1zTx5/iFj1kToN9fXbHmM/5yAiIa4THnVDUENms4ILVAqCRteNmYOsodYNBZhGKZjVoq9p10jhW6paiUTLTYGiVGTPjHP+of5DCY7melM+5HJy5cJlUxNLZKGjWmjcFAqdlmsldZ04CBX9vwXkipFpLFKl3tU0YYI3JMc4zUttltgE2Bp4iU+WLUlB239ozrsDgZzV6Th0pdPos5jESyfRBYgqfVzfLyqFYsp1Psyw1xSqC14nZh3gf+DzwhDwIRBwiWLNJAiqSayB4h1UIwax7KXGMsdYmOzYwhcIizEEM1Vk4zE+zeffin1f/wo5gLLKCn5PmoE8RiqeBnBkksfPj3Gx3B76HNaQf7EGMqiIk8Knz1k+eWiJq/aCR/O6lkJpzySTKNEN/GNzcpVEozNLAqnOHeN4h9rNZ1owIFa5DdUnlxiv5H2MzA8X7pMo4MNlu987paZ+bvNSkraCCxUmF/G5wBz/PFWDkZ4Xj+9ZiGz1qoVaZywkRcxV4//3O4E5gQG+9gDXBVXNDGxbzDDV93gHnc7u3Uuksvk7Tr3+UIr/S00fYmaLj8WCWI2ysIpacCYYZi7ToV22SpeKvJyxzBPDd4HbpxGxp0kyQeQP0YY4XaglzVEC7klMCYVabYdSx+ViMhvBL9e8EZXAgqTm77gFIua1Z9Dk2JfowQcDAf0K20yEyUVGe99n/wvKwJTMr+3ymNVG+oJJJhQU1jWexFGuXRuH4TvVBfiOLsMGn14Mveww==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(366004)(376002)(136003)(396003)(346002)(76116006)(122000001)(316002)(18265965003)(66476007)(8676002)(110136005)(66556008)(478600001)(64756008)(38100700002)(66946007)(26005)(9686003)(6506007)(53546011)(52536014)(33656002)(2906002)(7696005)(5660300002)(19627405001)(86362001)(83380400001)(186003)(8936002)(55016002)(71200400001)(166002)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?6UVsjn/NVD/z1FzF9txk2TCojWQviWf7QiN7ePp8xWR6vQWgtAs54wowGF?=
 =?iso-8859-1?Q?lKShbFJ9WX2PbirDQtSq0Rl8nwo/L4r1IvZSgtF37Z4Zd3C/waL6fS+ybo?=
 =?iso-8859-1?Q?/EXS/i5CrNF+3dc2OD3W7fmmiKSz2P+OIAlt3kylpKVZqGPWFaSBMflqgq?=
 =?iso-8859-1?Q?io6IDy7GoJfDnwI/sCl67XZVjqbls1xha29Wi2p5Ab9yzQZjybMd73qfJw?=
 =?iso-8859-1?Q?JT+Oa4Lp4273PYR1AB88CYQHGUIthibMZcJ4fTeIX1fGhEtb2zMc4Lrgnk?=
 =?iso-8859-1?Q?LgCgwrID2n5Q2JZWO2CTqOUdsb5/KR/YXVcTwBAHYF95EagUiGhjgDZ3eR?=
 =?iso-8859-1?Q?VTzB5f5NgQQusoecDv1TyZRbdUjVE2fovkOhHg1qByQpjHAO0DmxCNpXLy?=
 =?iso-8859-1?Q?blCc471JtU2SY6Hcv/eeW/I7LkjWt4ZKZEy2cIKKWfxMgAZN5n+MbJkBeH?=
 =?iso-8859-1?Q?GK24yI3+jn1QIzRj6BpAo9/l6HllWIDIh9Fi9opZ773SbawTw4jP1GTpgH?=
 =?iso-8859-1?Q?0G9CKXcG02UATSnrTODdNt4AB6REgTKRzy66TccpWqTFp5uO/7Tzu7ns9N?=
 =?iso-8859-1?Q?nqcQTXqt5OSqMM8JqYU7QQdsgmQhEFzffu6BAhc1Opcub23Ehtc2tZoF9y?=
 =?iso-8859-1?Q?NHYS71oid7ULLj9eYiKqXjBvQ0r3ndXGGfJvlP2X2sp8yQsvffkAzU/qTj?=
 =?iso-8859-1?Q?nwSzPQ5CXqPeyXJwT7AJFPWpvbu+0asyFJwX3ZuN96loDZu45E8LZOXBJb?=
 =?iso-8859-1?Q?quEG0LW0TIDPnEfCyKhxKCG/QP4eqdL7BEetGStot/VX4+maRh712wENV4?=
 =?iso-8859-1?Q?lmLChXBo8qr5/bwVWTZKaQhRWf3RsAnUhOL6M1sZHBjljQNcL0ePiN5V4h?=
 =?iso-8859-1?Q?dvdohAIYnXVGGRB4cFJV0i28QeQVC7oFukzSD40wFgCcLXdMqylAICtoAM?=
 =?iso-8859-1?Q?xmKX/on6wL68HYCOOqaTDzQMYWriBZKYRjRAsH93qaBb5NitKmf5PV4Sh0?=
 =?iso-8859-1?Q?0GzFppdqB4J0R/3MZPJWhghde8CpgL8g4gYE70wbaCs2/WrNh9ft3F2tGl?=
 =?iso-8859-1?Q?Nh5snfJowVlRHRw2ZeZgiiANX7tgxxoyIJzmC7ZEIrFJh7+/1vZfwZ1RGQ?=
 =?iso-8859-1?Q?CT4qU3kctFafwyMbfiQkU7vMeTbavBsKoMs4DffqWw/ccLo7vsyQfn2Fqw?=
 =?iso-8859-1?Q?D706UBJNHiClsHZdsOv5xRlwESpZr+8lOury+ylbzP/9VN9iD1DAyccrXz?=
 =?iso-8859-1?Q?HMYoLgkHtachgBJAWgB1uX62tFs983j7NiWyZcv+yEl39O3ddRIRsrqZm7?=
 =?iso-8859-1?Q?YO+Toa8n1ZhxI9nf9oZATbCuSlHbaKHTdyGkjPkNXQtShSPHgjbUy5uk9Q?=
 =?iso-8859-1?Q?VnA1nbePcm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a49d4418-f47f-4f51-33b5-08d92cdf3338
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 13:45:39.6067
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CLITetPM9VSbzHLqLj5Bw3Tg/NjGjxZb7Vpk4lx95K/JvstGicPhVlHp8u8NatdXx8M+rtwL+1fl2it/NW6Day0Xs72mPx+Oq2bUWlgMZCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3583
X-MDID: 1623419142-F92twflPjYT3
Message-ID-Hash: VDKIW5E2HRXVIAFY3S6DWA3XIEO6ZTE5
X-Message-ID-Hash: VDKIW5E2HRXVIAFY3S6DWA3XIEO6ZTE5
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WU43JHB3QR6Z37CQSTJCISPT54WIIORG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3258207676041638004=="

--===============3258207676041638004==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331229296F2D645E866AD0C4B8349MN2PR12MB3312namp_"

--_000_MN2PR12MB331229296F2D645E866AD0C4B8349MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Right -- the output of the Octoclock is 5V. I'm not seeing how the N320 can=
 accept that as an input. The knowledge base article says the N320 expects =
5Vpp at the 1pps input. But the schematics/parts data sheet for the input b=
uffer don't seem to support that . . . unless I'm missing something.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, June 11, 2021 9:39 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 1PPS input voltage

On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
> Hello Jim,
>
>
> hm, that knowledge base article must be wrong: The octoclock internally o=
nly has a 3.3V
> supply. But before I say something wrong here, let me check back.
>
>
> Best regards,
>
> Marcus
The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which
appear to have a 5V Vcc.

>
>
> On 11.06.21 14:17, Jim Palladino wrote:
>
>> Hello,
>>
>> We are planning on using an octoclock with several devices, including an=
 N320. The
>> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1pps=
 input.
>>
>> According to (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.=
ettus.com_N320_N321-29-3A&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_Cd=
pgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4BK=
KIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyN=
pHs&e=3D
>> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronization=
 requires a
>> square wave signal with the following a 5Vpp amplitude."
>>
>> If I look at the schematics for the N320, on page 15,
>> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_ima=
ges_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=
=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&e=3D) they show that the input
>> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the schema=
tics.
>>
>> According to the datasheet, the absolute maximum rating on the input is =
4.3V.
>> "https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_p=
df_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCW=
F4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv=
_Rx01Xg&e=3D"
>>
>> So, I'm not sure how the N320 can safely accept a 5V input (from the oct=
oclock or other
>> device).
>>
>> Thanks,
>> Jim
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_MN2PR12MB331229296F2D645E866AD0C4B8349MN2PR12MB3312namp_
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
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Right -- the output of the Octoclock is 5V. I'm not seeing how the N320 can=
 accept that as an input. The knowledge base article says the N320 expects =
5Vpp at the 1pps input. But the schematics/parts data sheet for the input b=
uffer don't seem to support that
 . . . unless I'm missing something.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Friday, June 11, 2021 9:39 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 1PPS input voltage</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 06/11/2021 09:11 AM, Marcus M=FCller wrote:<br>
&gt; Hello Jim,<br>
&gt;<br>
&gt;<br>
&gt; hm, that knowledge base article must be wrong: The octoclock internall=
y only has a 3.3V<br>
&gt; supply. But before I say something wrong here, let me check back.<br>
&gt;<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Marcus<br>
The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which <br>
appear to have a 5V Vcc.<br>
<br>
&gt;<br>
&gt;<br>
&gt; On 11.06.21 14:17, Jim Palladino wrote:<br>
&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; We are planning on using an octoclock with several devices, includ=
ing an N320. The<br>
&gt;&gt; octoclock outputs a 5V 1pps signal, but I'm confused about the N32=
0 1pps input.<br>
&gt;&gt;<br>
&gt;&gt; According to (<a href=3D""></a>https://urldefense.proofpoint.com/v=
2/url?u=3Dhttps-3A__kb.ettus.com_N320_N321-29-3A&amp;d=3DDwIF-g&amp;c=3DeuG=
ZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOv=
sPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=
=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&amp;e=3D<br>
&gt;&gt; &quot;PPS - Pulse Per Second Using a PPS signal for timestamp sync=
hronization requires a<br>
&gt;&gt; square wave signal with the following a 5Vpp amplitude.&quot;<br>
&gt;&gt;<br>
&gt;&gt; If I look at the schematics for the N320, on page 15,<br>
&gt;&gt; (<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A_=
_kb.ettus.com_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&a=
mp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI=
-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a=
8WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D">https://=
urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_images_f_f4_USR=
P-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jX=
rwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&a=
mp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3D6JTHdP9IoYFRQhn2=
4LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D</a>)
 they show that the input<br>
&gt;&gt; 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the =
schematics.<br>
&gt;&gt;<br>
&gt;&gt; According to the datasheet, the absolute maximum rating on the inp=
ut is 4.3V.<br>
&gt;&gt; &quot;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3D=
euGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHa=
uOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&am=
p;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D">https://urldefe=
nse.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_pdf_datasheet_nc7sv1=
57-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii=
MM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4B=
KKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTM=
v_Rx01Xg&amp;e=3D</a>&quot;<br>
&gt;&gt;<br>
&gt;&gt; So, I'm not sure how the N320 can safely accept a 5V input (from t=
he octoclock or other<br>
&gt;&gt; device).<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Jim<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<b=
r>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR12MB331229296F2D645E866AD0C4B8349MN2PR12MB3312namp_--

--===============3258207676041638004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3258207676041638004==--
