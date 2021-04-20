Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C7B365BEF
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 17:14:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A57D4384170
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 11:14:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="TF61tlub";
	dkim-atps=neutral
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50104.outbound.protection.outlook.com [40.107.5.104])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A0FD383E61
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 11:13:42 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjtXdtI8eAmPbI6axHlAbswa76H2dsRQjCFPPoOi+cZ5IwJq0kqC3XdpHuZ/2UjipBsSE5tKjFU0qd2n4eAtmphhBGAG+Yqg071wGhiq3W+q4+k1hMA/Z2RAZzbpDzspBE+P5eftNSE6znoAmAiewlfsN6YtTwjHdabUmYL76vSQWSQd6iyjoJGSvsy5hYDW/9gbdDbxGSQ27CnIBCvxUEKIGdqm6jemO7uskkBWXjWNkkxaOTc+lcjsh3g0Heuyho57qAOSMaJb85PTwWgWU9DRpHSH0fZlrMiidw9n54OWLkvP0+d3YA0BJEgDoyQ2/v2V60eeJyMldCY1ZFJ64w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a9ALI5hw+Sp2SvP+PRAYG9cAe6a0EbBleBNGPRmO3Jo=;
 b=XbAsxtnUt2kWcuyI5KaCWt5C2CJ9PxuXR3qrvcpb481yTNeQOGqcy2TtZzRLYUN+2Gyrd8Iqi7zj92hjTTzv5iGx54aEwEKeI8jdM/aCpJJQsVEZhO722AtA5smQlyoMTpWtTpjIyTWjj0sNGW5V96igSMQYjVmguZpVTqejjyi4XmLbp0PVEoTBzzatJpjEuUEMHpgQFoO/gQ2QkDfFtpEJQPTiaWs2lfumMRtBhID3IcQ19moMg7l2kkooQ2xQOYXalJ1YVwpt4HpTtxDEGswDpSDyhPCKyCHZozIvdASbPe/W+SXfmQOPc5xMz79vqIi/0uJOoQqiSINcTnSY6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a9ALI5hw+Sp2SvP+PRAYG9cAe6a0EbBleBNGPRmO3Jo=;
 b=TF61tlubHp0a5sAvajn2F13ZSfUQ2Dbv03cLhE5JIzqlnkLuv26ivd7Phm3TjLuzfUK0S8ArHv243o2wHoitr1eWH9yI3E9o6H7GLe3naaEeSidp/hqv8ZDAiYiu/BFgDVvBzzJbCNhYy5ExmAw813XwEjxiulip0lg2jzSmACs=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1399.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3f0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Tue, 20 Apr
 2021 15:13:41 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%8]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 15:13:40 +0000
Date: Tue, 20 Apr 2021 17:13:40 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210420151340.mrvuxdh25wvtd6oz@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
 <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com>
 <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com>
 <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe>
 <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
 <20210420131921.g6dloxbg7o7valro@barbe>
 <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR02CA0204.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::11) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR02CA0204.eurprd02.prod.outlook.com (2603:10a6:20b:28f::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20 via Frontend Transport; Tue, 20 Apr 2021 15:13:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9adc2487-a9dc-48f6-7b8b-08d9040ee151
X-MS-TrafficTypeDiagnostic: AS8P190MB1399:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1399956816C8F2176114E436F0489@AS8P190MB1399.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1JW8lUyshq4rJWCSI/MJqkY/0pibEYiDKgsa1I01LvVcZnRB7vsdbW+G/x6AiEqcraHVXjpmO6RmWOshuWZbbYD41ibPEaGIFD2EGKo7r5qRHmYbxyimpehQFDkoHgMh5BNMkqzMJxBVqgExSZLL9fr90R9zG8j6Mx482UzpROVbpmaAQxbDV2Rxkj9wU4Q8RHLTn2i4h0omT2fe8t+WnHse8SLREfON3uo7rkBAp1L+6a8rEmPHlAfM6QKDC8qx/A+JHrvlYrqPcCQdSvOVe2SwSgBJGaxHV0R6xWhfx+f0pfYJ/oZL44mPVOcZDiY0g1ex4NoQERADeYnjgUhaLq7YZfuhdv9+Jb50N6cyfzCXcpmAXyqDqU2V1IGO3dyzbVSknhyzhR/JSLCexEwREhxezcRaGlRPK744y6yCMfLz82nf59RI5HNHPRs4IZF1p8OBzsjjBpaO/oVrwgUCTVvEGcQMa04mNU3EL4MLTddRtMqtp5TkuHlirGJm2g/e5AaQ2QFU/UqiXTgLIb8FU1MgtsrHRRE/Oqgs3pm/YjwHAIHTfAxfV+gWR1pkvBdadCguTQnBxXhvcIxq0uER7umDwpWIpMKeUnkncb8lTRguoUjqoMC3BH71b1ztu/puBJ3p0AuYujGXKWc6akzCulR15MNpDOPEzneQxm3HYaI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(136003)(396003)(346002)(366004)(39860400002)(376002)(316002)(6916009)(33716001)(6496006)(786003)(38350700002)(1076003)(956004)(52116002)(66556008)(8676002)(66946007)(16526019)(53546011)(26005)(66476007)(8936002)(5660300002)(186003)(2906002)(83380400001)(38100700002)(6486002)(86362001)(478600001)(9686003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?0ZuL4gQg6H4qBTsq7o6z9WQCbkPLvtTZfZoAy2/vstjPxFprPbjHVQ0w9S?=
 =?iso-8859-1?Q?+BngNsHu9uYMVC6ypiEIQ+l4LUNrscZelbpBJgknuPXF0dEnrL8YpIgUS2?=
 =?iso-8859-1?Q?EVAcIHP24Ct/sPD/nrNHGckoReL9Q/7qg485JPvQVh32gAVRMGzz9ghj6/?=
 =?iso-8859-1?Q?jF48wW1Dh3ZyFbeQ+e5hXp78qiStHUwkAR54fYvCIAhALchGghi/yF78qD?=
 =?iso-8859-1?Q?/pdOZHU1oHsYUE4lboEDZBE9vuJW5z2BlwSaQk25ldNPV2dkQGkZlunTh/?=
 =?iso-8859-1?Q?FXrc12fHHbfCEZrEk18JroOSyr5wY+b6IeMXG6LpZ1DXoTQEh5pqmUIqrA?=
 =?iso-8859-1?Q?Zeh7xyiG083UtsLeN9RJA4nhf5VkKdfTKPhIxWVT9PrNEeMPdHzVmiRt45?=
 =?iso-8859-1?Q?CdPvqA7Ha7mKZ1Jrpn7AjY7744yBrfamLWQzeGAZIeldvu1LlvhSwjgyP8?=
 =?iso-8859-1?Q?IdCkHNYiJ0T+Pyi8/EDogrwCVAxbothGyVcLiunTfYXmZr4QG+3B+hF4N6?=
 =?iso-8859-1?Q?tLXKcirEqTda0+qcPfVt1mCQbgM34OAFwPVD/1JL6LcERXWubSBOPdkM7C?=
 =?iso-8859-1?Q?HOYewlwEF6g4ctWmA2XaeSBlMrHPPIdoHy9lYRN+Riwg8wQB5a2Yw3bohB?=
 =?iso-8859-1?Q?9oBdx/h5bxrej2AWFBFmrQfgt/QquL1GnXow2va+nQ4OhrJCilsnkaOLqL?=
 =?iso-8859-1?Q?5DriMRCD4wv7aETlMMD19PLFOp3oaeFvieviovs1nHwXgrO2BkrhNZUG/k?=
 =?iso-8859-1?Q?S5eRELp7KdlOoD1CcIj0SX0OMLje/aJASUO0m7rxVroXhQCB37quiyUfFi?=
 =?iso-8859-1?Q?n4jjjbU8KzlxiTbORQC4O61MtP/ecM6ag6iKmxnZHEcMlwbdyMAVZRlpkR?=
 =?iso-8859-1?Q?v+WV0vVEqiwKmTWjUpkgSbrIGmXkAe266OMrm8iJXuVV3slOc36J2nDumo?=
 =?iso-8859-1?Q?6Sv/5uDatrHBPXCxLVttkE9EMtqEYBGSz6PsxMYZioriQx6UQJJADh12YA?=
 =?iso-8859-1?Q?ejaxVMQaTbzpfYI0/uJeoYSXRde+fwzohw64j9tRRK93fGuTUxosRrq0Ak?=
 =?iso-8859-1?Q?JJrd0qxs1WN11QXpXl2bts18Ddjc8WO11L1Sa9CQwsElSczYP1PgMYMcrw?=
 =?iso-8859-1?Q?Xt4+/Ba57vuZUr2q/08OmgP+brlv2Etw5O848awp+ERSTWaJlwGg+nomDP?=
 =?iso-8859-1?Q?MIV2wNgViICegRXym26FSPrX7IAEa+ogMKhcD9q6mWsnhj4mlIRoaImBkm?=
 =?iso-8859-1?Q?3RuZBrbmCXqFgoOv02a7F+YAsV+g9aLNT0jGfbFOaGT9T4wSHfyphEjzmK?=
 =?iso-8859-1?Q?RmoP+asKGThxpaGlTXLVlnMYUPG1CIkz/3pFQh4K5UxxQu4d52vtaNZfAG?=
 =?iso-8859-1?Q?xFDLPIQxcw?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9adc2487-a9dc-48f6-7b8b-08d9040ee151
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 15:13:40.8182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GH8DOS5+vJTMPlw6oQM5v2sjmuFHabpX6VYTGG6Av6SIezKg73AEnk76u+uxC1AHc9pE2omp2dvA0ltIXUZag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1399
Message-ID-Hash: 546AAT7UKHB5RLOW5L46JHSGPNGVOAX6
X-Message-ID-Hash: 546AAT7UKHB5RLOW5L46JHSGPNGVOAX6
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/546AAT7UKHB5RLOW5L46JHSGPNGVOAX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Brendan,

On 21/04/21 00:01, Brendan Horsfield wrote:
>> I do not get this part. What do you mean by "reinstalled"?
>> Did you installed GNU Radio from source or from Ubuntu Software?
>> If you download the source, build and install it (following GNU Radio
>> wiki),
>> then you cannot install it using Ubuntu Software (or apt) afterwards.
>> It is one or the other, not both.
>=20
> Hmm.  I have been assuming all this time that GNU Radio Companion is an
> optional GUI front end for GNU Radio, which must be installed separately.
>=20
> In my case, I definitely installed GNU Radio from source.  However, when
> that was finished, I then went into Ubuntu Software and installed GNU Rad=
io
> Companion, which placed an icon on my toolbar (which is how I launch the
> application).  I am guessing this was the wrong thing to do?

Yep, wrong way.
gnuradio-companion is provided by gnuradio. It is not separated.
Most of the time,
doing "from source" installs everything under /usr/local/,
while "from binaries" installs everything under /usr/.
If you install both, you end up with 2 versions.
Best case scenario is one is masking the other.
Worst case scenario is clash between the two.

> FYI -- If I open a terminal and type "gnuradio-companion", the GUI never
> launches, and all I get is the following error message:
>=20
> $ gnuradio-companion
> <<< Welcome to GNU Radio Companion 3.9.0.0 >>>
>=20
> Block paths:
> /usr/local/share/gnuradio/grc/blocks
>=20
> Loading:
> "/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file.grc"
> >>> Converting from XML
> /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't
> resolve package from __spec__ or __package__, falling back on __name__ and
> __path__
>   return f(*args, **kwds)
> >>> Done
>=20
> Loading:
> "/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.grc"
> >>> Converting from XML
> Segmentation fault (core dumped)

I do not know why it segfaults.
If it does not solve by itself after solving the other parts,
you could try GNU Radio 3.8 or ask on GNU Radio ML.

> To answer your other questions:
>=20
> If I type "/sbin/ldconfig -p | grep -F libuhd", here is what I get:
> libuhd.so.4.0.0 (libc6,x86-64) =3D> /usr/local/lib/libuhd.so.4.0.0
> libuhd.so.3.15.0 (libc6,x86-64) =3D>
> /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0
> libuhd.so.003.010.003 (libc6,x86-64) =3D>
> /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003
> libuhd.so (libc6,x86-64) =3D> /usr/local/lib/libuhd.so
>=20
> Finally, when I type dpkg -S "(libuhd.so.003.010.003
> "/usr/lib/x86_64-linux-gnu")", I get the response
> dpkg-query: no path found matching pattern *(libuhd.so.003.010.003
> /usr/lib/x86_64-linux-gnu)*

Sorry if I was not clear, use:
dpkg -S "libuhd.so.003.010.003"

or:
dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"

I do not feed the fullpath to "dpkg -S" because with the /usr/ merge,
dpkg can be confused.

Could you do the same for libuhd.so.3.15.0?

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
