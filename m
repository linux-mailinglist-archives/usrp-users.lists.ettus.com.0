Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B48CB7CFA36
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 15:02:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA194385A92
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 09:02:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697720541; bh=ihXRsNFUQTz9ISubUe3GTE+aGZTdvBX6vlQNWfGxBm4=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=BjiVMqZMJpCBGcdwynHo/fCoJ2AGZjuxDEKqnHT2yBqtdnwmCkq3lL8TmGOaXolC6
	 RN+zas7eW/UwFdmZWvcwLsEbnGRlVUxFo35in9yG32H1jA7XnbkQ1NtTJ28pJDTTyV
	 tsxTCavnekQoNhGKc9sR9uJxssvXSzqBbl84U9hOws6JBXdZfdnRhyMazwSst4th7l
	 6+pyAYa90PunQJygZ1V4Dr9AgugkWXaUl6uRISyn5mGl/7T+D13cOE9SmzYZq6dg4F
	 sBDYp3IYPVuS64EtpFUHZXyL3XcCWVJp3xgBX9+u8Tw6d4CQMF0XYIbLS4izHmTAzZ
	 JsGSHe/4MTprg==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2126.outbound.protection.outlook.com [40.107.6.126])
	by mm2.emwd.com (Postfix) with ESMTPS id E253F385351
	for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 09:01:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=inetum.com header.i=@inetum.com header.b="JcPIqTpZ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdL4kJ9xmKnTPx7kfrEbYXmJIqrXymSQflYOWglH+EpaARKBkVuOhfkKV4zQ+SU8nP4sp92HnzGJzi/HUQa2/KRc3ypyy12ZA1HTdJ/W9rSb99nQjJo8gkOgQMvHwpH9j9NI//14TfZpJ29abP2XE8zifaT9B3r9S8fZ7+fPiQWzuw6tzFwfyMuILXS2Q2sVYPf2qAIhNyloedOB88Rl8WGx8wg4Ego4vNG7SpEZJPHqKA6Vq2iE9wT/I8TYF3XxdQeIDDDoe4kD2QIAoiEubvTqLEJyDf3Wi6fv+wtxhtce5co9LO+pEpJNuQaOVodUE01GGsOwDzhc6XHCrIQK3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3I7aOMUTHaY7pL3/H24f6BvTHomD+sWRs4xFBslGi68=;
 b=J0dOAQ/VJwAFO8yQUSVIG8qupPdK7DrIXPyBJGkIytDH3QdHOWUW0cUQ85yMDIRAzbUFSccEWVRWJuxHqdSlGSbF7fOZRRnYwa1P8LGAT3blu6FF4Ykd0SbWv3a0IN3D+GcyPOUG2rZArd43c/eabrMzTFFpIkLiPqWkMYpM1c0DZj/Tx8NUwL5blse4EMXpoB/06j3Nvi5hYnhEoRRrE3aTAwFmqrICAWdUWBulSWphpBWoj7ujXlSTKOotob57OY6OgDKW1Sp/I3ijPfbE82+EcsJmufQuCA/J0zH8XdvrddcugMA7k57fNtogNVWeFG/oBXQnEA9VY8jZk4UeJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=inetum.com; dmarc=pass action=none header.from=inetum.com;
 dkim=pass header.d=inetum.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inetum.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3I7aOMUTHaY7pL3/H24f6BvTHomD+sWRs4xFBslGi68=;
 b=JcPIqTpZGbIe2UksVb/6rYasyrwr5GIfUmKbusCLL9N9jO9ydRH5BZA1YTHYcv4EibZWxc8mlF+yR4NRVAKavbO/V9sloe7iRg8tEKQcaCPm1q/Xfl83BBNxXI6UmOxlyiVshK/4Paxk83GCxXefgvzC+XWUGwpe++oK6bdjPLtz9600B65p5j42ZYiMQLEynSYA6TSX7aJHaixCxTnn9g8IeSlVp0vTxCs+k/etYgt0i2wHqIl4A5flF7BkpJn8sDwaGwlAJcEV4g30n/m1YAtZdoCUttLPbX8+RDn7KoVAsrre8Zf9mAR8wB4y6FEiNYv766rA6ut8JyQRma8kvQ==
Received: from AS8PR05MB8849.eurprd05.prod.outlook.com (2603:10a6:20b:424::21)
 by VE1PR05MB7455.eurprd05.prod.outlook.com (2603:10a6:800:1ac::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Thu, 19 Oct
 2023 13:01:25 +0000
Received: from AS8PR05MB8849.eurprd05.prod.outlook.com
 ([fe80::16b4:d9be:1a8:c120]) by AS8PR05MB8849.eurprd05.prod.outlook.com
 ([fe80::16b4:d9be:1a8:c120%7]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 13:01:25 +0000
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Inetum company (Spain) technical support: Ettus
 USRP X440 & USRP X410 SDRs
Thread-Index: AdoCc043SBTi4UyJS6uAD4V4g3t6dwAGDSkAAAAxzxA=
Date: Thu, 19 Oct 2023 13:01:25 +0000
Message-ID: 
 <AS8PR05MB8849318C940184BF39B188A8EDD4A@AS8PR05MB8849.eurprd05.prod.outlook.com>
References: 
 <AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05.prod.outlook.com>
 <d096a93a-c827-41d6-b561-c1ebc21f8760@ettus.com>
In-Reply-To: <d096a93a-c827-41d6-b561-c1ebc21f8760@ettus.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_ActionId=5e3fe0b1-2d12-4fa1-a3fe-84b3a2c7029b;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_ContentBits=0;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_Enabled=true;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_Method=Standard;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_Name=External;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_SetDate=2023-10-19T13:00:52Z;MSIP_Label_6c04a875-6eb2-484b-a14b-e2519851b720_SiteId=14cb4ab4-62b8-45a2-a944-e225383ee1f9;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=inetum.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR05MB8849:EE_|VE1PR05MB7455:EE_
x-ms-office365-filtering-correlation-id: a97804a9-d6f4-4d24-d058-08dbd0a38091
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gpEKY+bMau70zL5t8dRDlIuBgmdNoEmSJRIFU1G3LABApADYyJUXH7P3F7k1IQKkHo/tJ0YatC823O4Br2qSfsU2Z0g7Yyw/c3EQi3X8NNGepBh4zePP0ANA1lH9EQB99LO/t+AyFUuLrSc4TUlt+fLhwITa4VShawG0XVxboXVeoiHqTPCsXvPpkKtAcuZBfnGRID1xClewsHSEkndxOHrs6RGltrtKFyzqw8spvxJbpeqoQoeKE/abvkJb1xouTyiPW6qnryY5aG0uD/ZHEEEc7zm70EYmXxV7xfsS4sn3oISlBuwAOioTnG3Gjk0bownWlSTUsBfgAHRKCnkfenEJ13LMSvpG0hD3E6tuLHjoBI0OlBoTzF71Tdh0I0KVl8oOgwx7VciB0UGv73GvEmdCFZiEGv1LjpxagQIfVXm+buIwYFJLz6Zp/9x10VLmHkpl+o8apyfkpSlYlwzjj2xwvoXy1Mf+2sPrjMHVogtWxfc/zl18wrnV2m/ulEZ5d11hl6nXhJ/Q6MWFOdy3VG/dTRaLm9JRhdWoIBSB6JlrD/i8/l81ofhPSRAUliHxqgF00V3mSkck/rMv7iNORKg+uYSzgfCxpSraRuAw1OU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR05MB8849.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(366004)(136003)(396003)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(2906002)(66899024)(55016003)(5660300002)(64756008)(66476007)(76116006)(66946007)(66446008)(8936002)(66556008)(110136005)(966005)(316002)(71200400001)(19627235002)(478600001)(8676002)(33656002)(41300700001)(166002)(52536014)(86362001)(38100700002)(38070700005)(53546011)(7696005)(6506007)(122000001)(66574015)(83380400001)(26005)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?2aW/0PCVbge6d7QJZMWa+6pNygGadwzQO+8OWHkq/LPnmWOY8q6tAFMdNh?=
 =?iso-8859-1?Q?iXIIBa/pxHqllqFz1ry+kGgD/0XswEKGkV54PI9NX7gLOLETqHfmpj6fLy?=
 =?iso-8859-1?Q?9huoeR6bAxmvv9tbQeiuIeB+jysNUFqH1vBg42Zn1TMYd3GRt6Q0AfGjFV?=
 =?iso-8859-1?Q?+ojjGLW2SdV/gKVe/kXspJOxk0aMQ3OVWZDkChljsEfT0WK2LRyQkfVDwv?=
 =?iso-8859-1?Q?1ulPwbwXuBiKr8GSq2bovACVYJ5R6jA6NQ67D8HXneLohuUy/0VtLpWJg/?=
 =?iso-8859-1?Q?A08sWRRJeuEGTKOYyYeLpVAXLDwpcrIUStYGqbAq9/eCQ1DtNeyLERuTTW?=
 =?iso-8859-1?Q?W+2MY5PhnVC+rrVWnxpfgtz9o3FhSE9b0iHYeMu5FLXHtk42972nav84DN?=
 =?iso-8859-1?Q?BkogxnRpGeATYugk44lI3Cjhqzj+pwGtp1MZEqu5j7Nwe8rh5aqoUF2AQ1?=
 =?iso-8859-1?Q?cYS/qdmwogDZyzY3VDjtxrAbYLBalOrwIl+TGJx2H4lS5JUgjt0BQaQ9qn?=
 =?iso-8859-1?Q?3ARPd6tbclot/WtHjXuZkDd6/MMDNc6kj45pQhUzkNn5mPaiIDvillW4Od?=
 =?iso-8859-1?Q?5rL7BLkjpijdyq86p5TRzysi8ZbYwdcPS5meRAVL+DuoMASr6ev/8K1DZN?=
 =?iso-8859-1?Q?B0Vv6XzH1u9INKX0ggtiaHJYp3VBG/Yqa4GD462EpF9aAJ+A71by699kWi?=
 =?iso-8859-1?Q?U2R+p3ia+4ClaXxKVscRAE/YGYwVUIOpQPttJocS0Rfg+8n7j4iBfpXdT9?=
 =?iso-8859-1?Q?nWOsaN9umKkaDNT5aYAOGP/TCuSnk5fu2QTEhpzcKIvAZBjbmTcMtWOENj?=
 =?iso-8859-1?Q?gMupkpivX3hGQWsf7mkT0p2fzvuzeDQRUodW6XRsqCJ+iWIMVC/NDSJw9Q?=
 =?iso-8859-1?Q?KaN4vIAU5ly1d2xP+u8TSP2/KAksUhO0p6QRE6IKNPhq07C6VCb4Bs0Dxx?=
 =?iso-8859-1?Q?CWkiDRwoffYQy1/wAsyN0OkdvWZeWwN5NCwVarkfvxB1AjFqCDnZliYFly?=
 =?iso-8859-1?Q?Dl6moz7tlXmDjzDwKWvnHSYoKWx3JZd+84EjypM/lv+fQT/1Ya9Qaluyo3?=
 =?iso-8859-1?Q?Kww0hEVHWoYqFLJgMgvXbm9Ly8TqcTas0La1EgNRLr29u52cCd23qT0098?=
 =?iso-8859-1?Q?2yKH4oxzvMA73dBqWCnVSaGCz4nh/OqaBQ/FbqfG1TQ6B7KQZOb+OZAy6c?=
 =?iso-8859-1?Q?r1eDK+gEAd/sex37MlTxhvYFguoE+TUuj/sdHnlFpBFUaS0W8x2FkbhoFn?=
 =?iso-8859-1?Q?kKfR3KMiKEGMqPQwdbYfOzZaS/yZHfFErKf4GxO3lKh33LXG8fKGGOO8rp?=
 =?iso-8859-1?Q?NTIHoqSIftYUtPm58BQU5Lvk8NwZxYAAvMG/WpGCWfVvOvgb7VBBCy9ljI?=
 =?iso-8859-1?Q?GZWPsSN8UZiT15ZsPmJM1a2MTHkGc7uJ5Agj0CmWqisVwCcWiPNEwXjzba?=
 =?iso-8859-1?Q?IL7LmJs4zbpSm3cidH7LIDlyqKDkUvyW/Xa6GP/tm8VPhYTNeBEM0xtlhp?=
 =?iso-8859-1?Q?+IpEpGV4jBhhUgNZosSOIY/Dy3mcYHhvjl470GjJ4NWJYoktPFlrN9guTW?=
 =?iso-8859-1?Q?+5qP/8kgP9btjRpjQsX4fbGzVspXpUZobENmz6hh4p1pqiZ8QvfIOu+AL3?=
 =?iso-8859-1?Q?T4q2QElfe79pA18Yhc51o6VXAnl2MvTCzx?=
MIME-Version: 1.0
X-OriginatorOrg: inetum.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR05MB8849.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a97804a9-d6f4-4d24-d058-08dbd0a38091
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 13:01:25.8056
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 14cb4ab4-62b8-45a2-a944-e225383ee1f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fZWnHSNxtnm0nEbKidu4Reonu0nawRrQmwIIbd5F3kshT/fw8B5nVriq0qNkV7qfbhOFHSc2Kig4xf3H5uuE1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7455
Message-ID-Hash: AZ2ZA3CPISCHRTPUTRN2YY45B43VPQM2
X-Message-ID-Hash: AZ2ZA3CPISCHRTPUTRN2YY45B43VPQM2
X-MailFrom: pablo.mico@inetum.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inetum company (Spain) technical support: Ettus USRP X440 & USRP X410 SDRs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4SS3AFCYBQI75HUERW6OP2IXDYHQAMQN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mico-Soler Pablo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mico-Soler Pablo <pablo.mico@inetum.com>
Content-Type: multipart/mixed; boundary="===============1087172067751277444=="

--===============1087172067751277444==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AS8PR05MB8849318C940184BF39B188A8EDD4AAS8PR05MB8849eurp_"

--_000_AS8PR05MB8849318C940184BF39B188A8EDD4AAS8PR05MB8849eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,
Thank you very much for the information.
Everything is clear now.

Best,

Pablo

De: Marcus M=FCller <marcus.mueller@ettus.com>
Enviado el: jueves, 19 de octubre de 2023 14:55
Para: usrp-users@lists.ettus.com; Mico-Soler Pablo <pablo.mico@inetum.com>
Asunto: Re: [USRP-users] Inetum company (Spain) technical support: Ettus US=
RP X440 & USRP X410 SDRs

No suele recibir correos electr=F3nicos de marcus.mueller@ettus.com<mailto:=
marcus.mueller@ettus.com>. Por qu=E9 esto es importante<https://aka.ms/Lear=
nAboutSenderIdentification>

Dear Pablo,

welcome to the usrp-users community! Let's quickly answer your questions in=
-text:
On 19.10.23 12:03, Mico-Soler Pablo via USRP-users wrote:
Regarding X440, ETTUS USRP X440 (8 TX AND 8 RX, 1.6 GHZ BW, 30 MHZ TO 4 GHZ=
 SDR, GPSDO):

  1.  If each channel has a bandwidth up 1.6GHz, why the total instantaneou=
s bandwidth is 3.2GHz if it has 8 channels (1.6GHz*8channels > 3.2GHz)?

The digital architecture just doesn't allow us to do that. The accumulated =
internal data rate becomes challenging. (Just to illustrate: 1.6 GS/s =B7 8=
 =3D 12.8 GS/s, at 16 bit per I and Q, so 32 bit per sample, that'd be 409.=
6 Gbit/s; you couldn't even get that into or out of the device using the in=
terfaces supplied)

  1.  Regarding "IF-Bandwidth combination limitations apply due to Nyquist =
zones and gaps",

     *   If we tune CH1 at 830MHz, are we going to be able to detect all th=
e spectrum from 30-1630MHz?
Yes, but beware that you need to supply your own front-end with the X440! O=
therwise, you'll observe 30-1630 MHz, superimposed with what's 1630-3230 MH=
z and up until the (not extremely sharp) ca 4GHz cut off, what's in 3230-48=
30 MHz, too.


     *   If we tune CH2 at 2430MHz, are we going to be able to detect all t=
he spectrum from 1630-3230MHz?
     *   If we tune CH3 at 4000MHz, are we going to be able to detect all t=
he spectrum from 3230-4000MHz?

Yes! Remember, though, that you're seeing all these bands as aliased into b=
aseband (see above), so you need to sufficiently filter your analog signal,=
 and that will have some transition bandwidth.

  1.  Which the real maximum channel BW?
1600 MHz

Is it possible to decrease the minimum frequency down to 20MHz?

We don't have measurements for that. The analog signal processing of what i=
s fed into the ADCs has a lower cutoff, and we qualified the product down t=
o 30 MHz, not 20 MHz. That doesn't mean you won't see what's at 20 MHz, but=
 that we can't make any guarantees about that.

Also, broadband matching is hard, so I'd confer with whatever team supplies=
 that input on how far down they really need to go.

  1.  Is it possible to increase the maximum frequency up to 6GHz?
Same answer as above.

Could you provide the USRP X440 datasheet to see their RF/Digital performan=
ce parameters?
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html




Regarding X410, ETTUS USRP X410 (4 TX/RX Channels, 400 MHz BW, Zynq US+ RFS=
oC ZU28DR)

  1.  Is it possible to configure RX0 as an extra receiver channel, so inst=
ead of having 4 receiving channels [RF0 (RX1), RF1 (RX1)] & [RF0 (RX1), RF1=
 (RX1)] (Fig 1), we could have 8 receiving channels (Fig 2)?
Not really, no. https://files.ettus.com/manual/page_zbx.html Not enough ADC=
s!

If previous question is not possible, do you have in your roadmap to develo=
p an X410 version with 8 channels?

I'll have to pass on that, as product strategy isn't what I'm involved with=
. You'd probably be better served with 2=D7 X410, from a computational poin=
t of view, probably.

Best regards,

Marcus


--_000_AS8PR05MB8849318C940184BF39B188A8EDD4AAS8PR05MB8849eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"Source Sans Pro";
	panose-1:2 11 5 3 3 4 3 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
h2
	{mso-style-priority:9;
	mso-style-link:"T=EDtulo 2 Car";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:18.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.Ttulo2Car
	{mso-style-name:"T=EDtulo 2 Car";
	mso-style-priority:9;
	mso-style-link:"T=EDtulo 2";
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;
	mso-fareast-language:ES;
	font-weight:bold;}
span.EstiloCorreo23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:444037872;
	mso-list-template-ids:1374733202;}
@list l1
	{mso-list-id:590819083;
	mso-list-template-ids:-974748936;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1389844774;
	mso-list-template-ids:-1252101010;}
@list l3
	{mso-list-id:1476606364;
	mso-list-template-ids:-2017919698;}
@list l3:level1
	{mso-level-start-at:7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4
	{mso-list-id:1562137480;
	mso-list-template-ids:-1525914000;}
@list l4:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l5
	{mso-list-id:1661736607;
	mso-list-template-ids:796031514;}
@list l6
	{mso-list-id:1768503454;
	mso-list-template-ids:-1477573050;}
@list l6:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much for the inf=
ormation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Everything is clear now.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Pablo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-ligatures:none;mso-fareast-lan=
guage:ES">De:</span></b><span style=3D"mso-ligatures:none;mso-fareast-langu=
age:ES"> Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;
<br>
<b>Enviado el:</b> jueves, 19 de octubre de 2023 14:55<br>
<b>Para:</b> usrp-users@lists.ettus.com; Mico-Soler Pablo &lt;pablo.mico@in=
etum.com&gt;<br>
<b>Asunto:</b> Re: [USRP-users] Inetum company (Spain) technical support: E=
ttus USRP X440 &amp; USRP X410 SDRs<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">No suele recibir correos electr=F3nicos de
<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>. <=
a href=3D"https://aka.ms/LearnAboutSenderIdentification">
Por qu=E9 esto es importante</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<p>Dear Pablo,<o:p></o:p></p>
<p>welcome to the usrp-users community! Let's quickly answer your questions=
 in-text:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 19.10.23 12:03, Mico-Soler Pablo via USRP-users w=
rote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-ligatures:none">Re=
garding X440, ETTUS USRP X440 (8 TX AND 8 RX, 1.6 GHZ BW, 30 MHZ TO 4 GHZ S=
DR, GPSDO):</span><span lang=3D"EN-US" style=3D"mso-ligatures:none;mso-fare=
ast-language:ES">
</span><span style=3D"mso-ligatures:none;mso-fareast-language:ES"><o:p></o:=
p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level1 =
lfo3"><span lang=3D"EN-US">If each channel has a bandwidth up 1.6GHz, why t=
he total instantaneous bandwidth is 3.2GHz if it has 8 channels (1.6GHz*8ch=
annels &gt; 3.2GHz)?</span><o:p></o:p></li></ol>
</blockquote>
<p>The digital architecture just doesn't allow us to do that. The accumulat=
ed internal data rate becomes challenging. (Just to illustrate: 1.6 GS/s =
=B7 8 =3D 12.8 GS/s, at 16 bit per I and Q, so 32 bit per sample, that'd be=
 409.6 Gbit/s; you couldn't even get that
 into or out of the device using the interfaces supplied)<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level1 =
lfo3"><span lang=3D"EN-US">Regarding &#8220;<i>IF-Bandwidth combination lim=
itations apply due to Nyquist zones and gaps&#8221;</i>,</span><o:p></o:p><=
/li></ol>
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level2 =
lfo3"><span lang=3D"EN-US">If we tune CH1 at 830MHz, are we going to be abl=
e to detect all the spectrum from 30-1630MHz?</span><o:p></o:p></li></ol>
</ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES">Yes, but beware that you need to supply your own front-end with the =
X440! Otherwise, you'll observe 30&#8211;1630 MHz, superimposed with what's=
 1630&#8211;3230 MHz and up until the (not extremely
 sharp) ca 4GHz cut off, what's in 3230&#8211;4830 MHz, too. <br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level2 =
lfo3"><span lang=3D"EN-US">If we tune CH2 at 2430MHz, are we going to be ab=
le to detect all the spectrum from 1630-3230MHz?</span><o:p></o:p></li><li =
class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level2 lfo3=
"><span lang=3D"EN-US">If we tune CH3 at 4000MHz, are we going to be able t=
o detect all the spectrum from 3230-4000MHz?</span><o:p></o:p></li></ol>
</ol>
</blockquote>
<p>Yes! Remember, though, that you're seeing all these bands as aliased int=
o baseband (see above), so you need to sufficiently filter your analog sign=
al, and that will have some transition bandwidth.<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<ol style=3D"margin-top:0cm" start=3D"3" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level1 =
lfo3"><span lang=3D"EN-US">Which the real maximum channel BW?</span><o:p></=
o:p></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES">1600 MHz<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-ligatures:none;mso=
-fareast-language:ES">Is it possible to decrease the minimum frequency down=
 to 20MHz?</span><span style=3D"mso-ligatures:none;mso-fareast-language:ES"=
><o:p></o:p></span></p>
</blockquote>
<p>We don't have measurements for that. The analog signal processing of wha=
t is fed into the ADCs has a lower cutoff, and we qualified the product dow=
n to 30 MHz, not 20 MHz. That doesn't mean you won't see what's at 20 MHz, =
but that we can't make any guarantees
 about that.<o:p></o:p></p>
<p>Also, broadband matching is hard, so I'd confer with whatever team suppl=
ies that input on how far down they really need to go.<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<ol style=3D"margin-top:0cm" start=3D"4" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level1 =
lfo3"><span lang=3D"EN-US">Is it possible to increase the maximum frequency=
 up to 6GHz?</span><o:p></o:p></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES">Same answer as above.<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-ligatures:none;mso=
-fareast-language:ES">Could you provide the USRP X440 datasheet to see thei=
r RF/Digital performance parameters?</span><span lang=3D"EN-US" style=3D"ms=
o-ligatures:none;mso-fareast-language:ES">
</span><span style=3D"mso-ligatures:none;mso-fareast-language:ES"><o:p></o:=
p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES"><a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-spec=
s/page/specs.html">https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-spe=
cs/page/specs.html</a><br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoListParagraph"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p>=
</p>
<h2 style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:11.25pt;=
margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-fareast-language:EN-US;f=
ont-weight:normal">Regarding
</span><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-fareast-language:=
EN-US">X410, ETTUS USRP X410 (4 TX/RX Channels, 400 MHz BW, Zynq US+ RFSoC =
ZU28DR)</span><o:p></o:p></h2>
<ol style=3D"margin-top:0cm" start=3D"5" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l4 level1 =
lfo3"><span lang=3D"EN-US" style=3D"font-family:&quot;Source Sans Pro&quot;=
,sans-serif;color:#333333">Is it possible to configure RX0 as an extra rece=
iver channel, so instead of having 4 receiving channels
<span style=3D"background:yellow;mso-highlight:yellow">[RF0 (RX1), RF1 (RX1=
)]</span> &amp;
<span style=3D"background:lime;mso-highlight:lime">[RF0 (RX1), RF1 (RX1)]</=
span> (Fig 1), we could have 8 receiving channels (Fig 2)?</span><o:p></o:p=
></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES">Not really, no.
<a href=3D"https://files.ettus.com/manual/page_zbx.html">https://files.ettu=
s.com/manual/page_zbx.html</a> Not enough ADCs!<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Sans Pro&quot;,sans-serif;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:ES">If previous question is not possible, do you have in your roadm=
ap to develop an X410 version with 8 channels?</span><span lang=3D"EN-US" s=
tyle=3D"mso-ligatures:none;mso-fareast-language:ES">
</span><span style=3D"mso-ligatures:none;mso-fareast-language:ES"><o:p></o:=
p></span></p>
</blockquote>
<p>I'll have to pass on that, as product strategy isn't what I'm involved w=
ith. You'd probably be better served with 2=D7 X410, from a computational p=
oint of view, probably.<o:p></o:p></p>
<p>Best regards,<o:p></o:p></p>
<p>Marcus<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:ES"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_AS8PR05MB8849318C940184BF39B188A8EDD4AAS8PR05MB8849eurp_--

--===============1087172067751277444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1087172067751277444==--
