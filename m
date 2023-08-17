Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C8B77F04E
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 07:49:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FE03384B0D
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 01:49:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692251386; bh=JC45d5HBi1ACdQ3BS5ZXWKoqa63bllAFYWVTImVF+3w=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Hg6KMAyrJ8zajfhWJ1kLdXx8ale3FEbzVMqMBaEeSkoHkFomifmGtBCkHYmolwMc+
	 QsyxdkTF0ziGmIdukHf7MNKjbHzPO+/tvd5rWtjmfrJsolW7y17JhcVBRtufUrNQY/
	 H/NZbJx9lfhRdH4m4Zja/pYA2FUQyQPVFKWtGza7wIRWEZNxuCJnWH67bALoPcpUUa
	 8X/AuDYan/EjP8XuSfVqwGnUCbrIME7qfzDIRwNzUreUD+yWj6UOg/zAgiFZvs+k00
	 7ZvFCFqjqThL8m7Ury9MQVFYylgKVlAYgMlf937UDrcjX5XvhWULFK8LER0uwqZs/r
	 haB6M/UlhlJhA==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2064.outbound.protection.outlook.com [40.107.222.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 214E3383EA0
	for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 01:49:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iisc.ac.in header.i=@iisc.ac.in header.b="to9UF8EN";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZiNDGA9VR3rtNtd9KP8iZxe1I6+SR2iPxsZlEvTQ1rNXvjsXRxThpbtsyvcUbof6lJIRZ6i0AO+931nwDQIwaaRjww63tr8B1IfsjWoBZ1q6wMtccFcqO3W7tWG922UMMRYc6IhU78PWBqMzZ+xeE5yJIwklYokMZe3YNu7pE5uNuFgSVtAiIFmkHIrzXsxLFCK4JfUJKcS0Xiayi5KlXn7XRZE8+owunxtYETcP1nkrBhGHFm5+81soe7agRTkpzL1+/+EBOrs7wLcXMmtvwJcN/Dz6/59PC7kGOq6IJzpm+OOST92Crw0/UyTaqPMw6Z05QV/8IPWIuD++hM5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FTKB0MqisrXrqZTMv3VyEAji0Sg/PhP5UiMQ8Ly9VeA=;
 b=l6qf5t8Tv4ESX/rRayQwrSEkoHQT8OjfG+tjieGr6DBnb6mcX9pxRX1PPx8UHvnnYPIQrnc5bD/aokQAgZQylZifLGRWn2kpQ4G5VaN3PODgzSSJsSsK81dFc5oAQN8Y6KwAuv/6z1Q1lFJueQ+ST6MZcYVaN4qGOMhOjualVIlMK/UXHmMeGB+Q4OjBTFxXZNQxBpLYuHVhtDDh5o1RSSHcubaNd8NFXncwd3KKBiy3Ch9TP4Qy7AWlii19FQmt8BpdeHAmabSbGvxpej0yWdhFjCF3FWWWFYiW9Ak62eLXUxUshjUi2du5D0tISP9yoYlOMclenNXhhRAqp6la8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iisc.ac.in; dmarc=pass action=none header.from=iisc.ac.in;
 dkim=pass header.d=iisc.ac.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iisc.ac.in;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTKB0MqisrXrqZTMv3VyEAji0Sg/PhP5UiMQ8Ly9VeA=;
 b=to9UF8ENr81Uv/D0K7GFr0vz2TF7xQT+q3nMm8Ce9c9GstTUQEGWoaAuWt2jjBScDz/NmWWxi/ssDUG7x6nVCjDd1qW8E36H2I+pt13kId4izf+pq3snYKedsI3D+HAMZecSBn9QemlFVKLwAOeNNNyusVq4pky/rfkJbItRtnH6IXGSeeBoqRGegtaajaJJTK8XGAwbgP06xOuNLFBawI2Sq5pZw8P5M8Ark/MJuUK8SSwtrbmoTUWQUcIgV/hoZZJXi8itd7TCL/mJ/QIDEizv15TxkEvv7sitaWBn4PdYYgZ0x55b7IW+Wrc2FE/vLDEzebHzk68eBPPhwc+R1A==
Received: from MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:8e::13)
 by MAZPR01MB7827.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:24::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 05:49:05 +0000
Received: from MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1af3:a51:72ef:1e57]) by MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1af3:a51:72ef:1e57%6]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 05:49:05 +0000
To: =?iso-8859-1?Q?Francisco_Gallardo_l=F3pez?= <f.gallardo.lopez@gmail.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: USRP B210 not found and power cycle needed
Thread-Index: AQHZz4kWlZQENlr1QEeYSeJLzGlWi6/s2qsAgAEi2RY=
Date: Thu, 17 Aug 2023 05:49:05 +0000
Message-ID: 
 <MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AA@MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com>
 <5ae6a11b-aaa2-fa07-4de1-d83c8f57a433@gmail.com>
 <CAEtk-vVjMmc9A9P6c1P=mG849fN0C68qqx_Sm7P2LL+MEu2R9w@mail.gmail.com>
In-Reply-To: 
 <CAEtk-vVjMmc9A9P6c1P=mG849fN0C68qqx_Sm7P2LL+MEu2R9w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iisc.ac.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0PR01MB8035:EE_|MAZPR01MB7827:EE_
x-ms-office365-filtering-correlation-id: e5735edf-f121-4882-f4fa-08db9ee5aaae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Dy1Y58740jQiB/tuf9juD374c5r36GzBYzF10heNxJWgNHBzZLBmZ/OYmQZ6pBrMbUdh4E3TimHdqQaMx3U9udEXfae46JggPckyzAW6tQMxGoYf7seC/0z+QT4Mq2X83PsY64SOUEXrCU9dJZLXsLwbf2MWRv4mGvB8eZZezq51B0lcaQhkIVNPA62Pzug9ZxMxfu4Ewi8uAvkiBbzuBfIeH9QFkIIZRlzglxBj3JWOafMWwTMiduVFJIUwUyMgEM8JjYQwF9uFUhsvHDR7aPeeMW3LJ25BwqOftW4CuUZjJnhPAivjkVShkyeDXIaMUbf09R9z//Eezona4xMIPRLBx77dMADRLixPQDJNR/n0gBU2PeSAWk8a99FyhEiCmzQkVXmnrjTuDOsO1KtUZl3m1HvxZXnLL5/+SzD+3twGOFwBGkUaQv0VXzfQSGKTENm2yPWkD/g8kJCOfUGewiEFBr34ZocXR/x4NLE+isdrPn1nTjDE56/Pp5i1OsXFMcN3tWabl433Ey/AaC0rZ4bqF7DS2N+alEJqbiCVK7KCINdP8jWLRqQRsK6mF67pPjztRkROZxSjedBFSjKEVpH51C1zpfY0kw0uypxOibxeV4mSN+2UKHQsk7NmLM2c
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199024)(1800799009)(186009)(86362001)(33656002)(38070700005)(38100700002)(122000001)(19627405001)(55016003)(19627235002)(52536014)(5660300002)(110136005)(91956017)(66446008)(66476007)(66556008)(76116006)(66946007)(478600001)(64756008)(786003)(53546011)(316002)(71200400001)(6506007)(7696005)(9686003)(26005)(41300700001)(4326008)(8936002)(8676002)(66574015)(66899024)(2906002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?CFbFyIr30ErikltwnTdbk4AKuL//wCDCDjxje0HEJ1ygbswV+bG0fXoDmc?=
 =?iso-8859-1?Q?1nsn1+kVZY7WdGaxNj5c6Z0JuvVftuPxv9fa3PChEkPqLiNBhO1RCFV8IS?=
 =?iso-8859-1?Q?TShngrzsrm+ji181aTPvf13b4b7t/A3NwOHJLes06N3V7XNXOuW3sgdahD?=
 =?iso-8859-1?Q?A0WRTlev0mML6PMzLnMtUfvMUfconqFC+M9g4ixd97fGIqFeaXqmWDe1j5?=
 =?iso-8859-1?Q?+2F1NWKQjiKWnRIX6Ps/v3TUq6F+puBkyTaiRJy/uLnvDjHO7AKE9P0kLB?=
 =?iso-8859-1?Q?GVcBSMapPbyZqbSQLysrRw1sgf0tYZgy6LhltyZ+EZpU3/fgfPKNNGY5Ar?=
 =?iso-8859-1?Q?JUIuF5VQ46ll144fGKrGcXoMcc1AyyAkUBgHENH9ZyHNV7hLmjbTleutQ3?=
 =?iso-8859-1?Q?CXDXeoSSGc5id/4DAtxEELLyL5sN4q+xB07e7DK3ItppfFZwmPlsLTezYF?=
 =?iso-8859-1?Q?SUM7pcX92EX9wbh3k18ssRUgRwkMhua8bcBi3DKvUXV3a42nzWFTlj70lo?=
 =?iso-8859-1?Q?T/8qxrGFaR3Zt1Q6QBaoF3pyOU1hXzHZUnx/Iu3QhlKyszyKsf1EVg12Me?=
 =?iso-8859-1?Q?MqlNvqKFQXan6/oOTeuxl+ALyriB2MkkP+BrrnaJNPKzM9MtotqbkhUNk+?=
 =?iso-8859-1?Q?nLbOgvvV8C8bnVpWk/rcsnLoiaTPUb3tsCtheG5uZ6PCkILqOHK1O7pSr3?=
 =?iso-8859-1?Q?7ZIezGOVq0TsRs9MT7FwuB5JYM4jfo64EOQ1WGJsf4lf+8ymc8BAhlJFHv?=
 =?iso-8859-1?Q?35ZOepP5z+3ulrPu1mxxrPb1ApmEKBzBmmJYZ1eZI9u9XW1kDxkn+kx8SX?=
 =?iso-8859-1?Q?ntkzFltXo7YpOpoz1XqO31Khg9tz5Qm1Teuri+WxenhY1NeJG+EHi9y5En?=
 =?iso-8859-1?Q?jKzmYYuRswdaKTpjER2518v/lBWCrPni1ZFPWDhi6KQRAhT7hPKppHciv9?=
 =?iso-8859-1?Q?y8Zs2+nzTNkdPY3rQwTX8hColFOMleZ1tYavLurPSB+AovA6VH5YX7CeAD?=
 =?iso-8859-1?Q?7HcLA5v+SJ30k4eGEu2FsgmGzCGhwIwjlNZY7iS/IH51XBOpUusYV+oEUa?=
 =?iso-8859-1?Q?lj794GmYw/O4x6+MftSuq+GT7E5WA5WMqIQRFQ6VirWugsnmKWrNZJgD1t?=
 =?iso-8859-1?Q?06UP38stiUH171YJwiuqAoR2g0G3k6sFm5CawdbBp73ymFkK4+vSlEO5Gz?=
 =?iso-8859-1?Q?yWRa5T2zZNmeckac3+VDUuOqTbQSRctY6Kj3J0Lm5K4tqtzJi6Z+YZEm4v?=
 =?iso-8859-1?Q?KBiKfQ31nf7Z+ftnedgykuwNKsxhESwcA5hSbYUGvoWPjKgKcuxRbrHNgY?=
 =?iso-8859-1?Q?LMm7MKNc4R/S6amva7xafbWlU+aBPFdkKjrLWqPLWRw9PLiMAJ/HkvboUi?=
 =?iso-8859-1?Q?zbxJCrdFiHcu8BEYt8BUCfEA8enuXPrlqY6nbrHWFMk6XXH2c1s6pk5UZg?=
 =?iso-8859-1?Q?dfzPNDz1QElHM+3+PXqscZmkZBAJgYC7B5+PcK9dNM2fyMsDN0d7ga7cWb?=
 =?iso-8859-1?Q?g7VuY/w0WSk7z3pyf5cgDAqfaPJGXuAKPpKd0xVTd7snLSHIkOswZidU3/?=
 =?iso-8859-1?Q?tfgL2gZuyFneJHl6GV+2xWd0rSnr6VtO0n+V5AIjen5cdHP0HWoqaLPIuP?=
 =?iso-8859-1?Q?UjBTwHB/CZN9Eh632m61u1BvtNSSjpqJ4d?=
MIME-Version: 1.0
X-OriginatorOrg: iisc.ac.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e5735edf-f121-4882-f4fa-08db9ee5aaae
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 05:49:05.1256
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6f15cd97-f6a7-41e3-b2c5-ad4193976476
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paROcMdDj0CbDKNhRVzzI5KqmLOL+mlNkmqviafR582zR7uGgHQo3dImJfXFViDT2tkfWArRrUUqMotsE29Fuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZPR01MB7827
Message-ID-Hash: XKO3EFI3F5KQOT66E6WZHV6JDPHDUFW5
X-Message-ID-Hash: XKO3EFI3F5KQOT66E6WZHV6JDPHDUFW5
X-MailFrom: avenkataredd@iisc.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QXI7SQ7Y7NECFABWAVD3ZDKI4AB4CXH2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Venkatareddy Akumalla via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Venkatareddy Akumalla <avenkataredd@iisc.ac.in>
Content-Type: multipart/mixed; boundary="===============0447505910547381294=="

--===============0447505910547381294==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AAMA0PR01MB8035INDP_"

--_000_MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AAMA0PR01MB8035INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am not sure if this helps. Please run the following commands whenever you=
 experience this issue with B210 and let me know if this works.


cd /usr/local/lib/uhd/utils

sudo ./b2xx_fx3_utils --reset-device


______________________________
regards,
Venkatareddy

________________________________
From: Francisco Gallardo l=F3pez <f.gallardo.lopez@gmail.com>
Sent: Wednesday, August 16, 2023 17:56
To: Marcus D. Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed

External Email

Hi,

Actually, that is part of the problem. It happens sometimes, but not always=
.
I would say mainly when there is a power outage or similar, but not always.

For the sake of testing, I just rebooted the remote machine. This time it a=
ppears in both lsusb and uhd_find_devices upon reboot.

As said, I am not sure about the root cause. So it is complicated to tell.

When that happened last time, I did not check lsusb, but uhd_find_devices, =
and the system was not seeing the USRP. I guess lsusb would also not show t=
he device.

I will check the thread Eden pointed out.

Thanks
Fran



El mar, 15 ago 2023 a las 16:59, Marcus D. Leech (<patchvonbraun@gmail.com<=
mailto:patchvonbraun@gmail.com>>) escribi=F3:
On 15/08/2023 02:43, Francisco Gallardo l=F3pez wrote:
> Hi,
>
> We have a remote station with an USRP B210.
>
> We observed that sometimes the remote machine cannot find the USRP
> B210 (I think it has to do with uncontrolled power cycles, but I am
> not 100% sure about the root cause. The point is that sometimes it
> happens).
>
> The only way to sort it out is to disconnect the power supply and the
> USB cable from the USRP, and then the remote machine can detect it
> again. i.e. doing a complete power reboot to the USRP.
>
> It is not a killer because the problem is not always happening, but it
> is annoying because it implies sending somebody to disconnect and
> connect the USRP B210 cables.
>
> Is anybody experiencing a similar issue? Any idea how to fix it?
>
> The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.
>
> Thanks!
> Fran
>
I've seen this sporadically with B2xx over the years I've been using
them.  For example, on some hardware, the system cannot
   see the device on reboot, and you have to replug/power-cycle for the
system to even see it.

When this happens, does it show up in "lsusb" ?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AAMA0PR01MB8035INDP_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I am not sure if this helps. Please run the following commands whenever you=
 experience this issue with B210 and let me know if this works.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<div class=3D"OutlineElement Ltr SCXW246238804 BCX2">
<p class=3D"Paragraph SCXW246238804 BCX2" style=3D"font-weight:normal;text-=
align:left;text-indent:94px">
<span style=3D"font-size:12pt;line-height:21.85px;font-family:&quot;Liberat=
ion Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quot;, &quot;Liberatio=
n Serif_MSFontService&quot;, sans-serif" data-contrast=3D"auto" class=3D"Te=
xtRun SCXW246238804 BCX2" lang=3D"EN-IN"><span class=3D"NormalTextRun SCXW2=
46238804 BCX2 ContentPasted0">cd
 /</span><span class=3D"NormalTextRun SpellingErrorV2Themed SCXW246238804 B=
CX2 ContentPasted0">usr</span><span class=3D"NormalTextRun SCXW246238804 BC=
X2 ContentPasted0">/local/lib/</span><span class=3D"NormalTextRun SpellingE=
rrorV2Themed SCXW246238804 BCX2 ContentPasted0">uhd</span><span class=3D"No=
rmalTextRun SCXW246238804 BCX2 ContentPasted0">/utils</span></span><span cl=
ass=3D"EOP SCXW246238804 BCX2 ContentPasted0" style=3D"font-size:12pt;line-=
height:21.85px;font-family:&quot;Liberation Serif&quot;, &quot;Liberation S=
erif_EmbeddedFont&quot;, &quot;Liberation Serif_MSFontService&quot;, sans-s=
erif" data-ccp-props=3D"{&quot;134245417&quot;:true,&quot;201341983&quot;:0=
,&quot;335551550&quot;:1,&quot;335551620&quot;:1,&quot;335559738&quot;:0,&q=
uot;335559739&quot;:0,&quot;335559740&quot;:276}">&nbsp;</span></p>
</div>
<div class=3D"OutlineElement Ltr SCXW246238804 BCX2">
<p class=3D"Paragraph SCXW246238804 BCX2" style=3D"font-weight:normal;text-=
align:left;text-indent:94px">
<span style=3D"font-size:12pt;line-height:21.85px;font-family:&quot;Liberat=
ion Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quot;, &quot;Liberatio=
n Serif_MSFontService&quot;, sans-serif" data-contrast=3D"auto" class=3D"Te=
xtRun SCXW246238804 BCX2" lang=3D"EN-IN"><span class=3D"NormalTextRun Spell=
ingErrorV2Themed SCXW246238804 BCX2 ContentPasted0">sudo</span><span class=
=3D"NormalTextRun SCXW246238804 BCX2 ContentPasted0">
 ./b2xx_fx3_utils --reset-device</span></span><span class=3D"EOP SCXW246238=
804 BCX2 ContentPasted0" style=3D"font-size:12pt;line-height:21.85px;font-f=
amily:&quot;Liberation Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quo=
t;, &quot;Liberation Serif_MSFontService&quot;, sans-serif" data-ccp-props=
=3D"{&quot;134245417&quot;:true,&quot;201341983&quot;:0,&quot;335551550&quo=
t;:1,&quot;335551620&quot;:1,&quot;335559738&quot;:0,&quot;335559739&quot;:=
0,&quot;335559740&quot;:276}">&nbsp;</span></p>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
______________________________</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
regards,
<div>Venkatareddy</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Francisco Gallardo l=
=F3pez &lt;f.gallardo.lopez@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, August 16, 2023 17:56<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: USRP B210 not found and power cycle needed=
</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-size:10pt; font-family:sans-serif; color:#FF5733; font-s=
tyle:normal; font-weight:bold">
External Email</div>
<br>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi,
<div><br>
</div>
<div>Actually, that is part of the problem. It happens sometimes,&nbsp;but =
not always.&nbsp;</div>
<div>I would say mainly when there is a power outage or similar, but not al=
ways.</div>
<div><br>
</div>
<div>For the sake of testing, I just rebooted the remote machine. This time=
 it appears in both lsusb and&nbsp;uhd_find_devices upon reboot.&nbsp;</div=
>
<div><br>
</div>
<div>As said, I am not sure about the root cause. So it is complicated to t=
ell.</div>
<div><br>
</div>
<div>When that happened last time, I did not check lsusb, but uhd_find_devi=
ces, and the system was not seeing the USRP. I guess lsusb would also not s=
how the device.</div>
<div><br>
</div>
<div>I will check the thread Eden pointed out.&nbsp;</div>
<div><br>
</div>
<div>Thanks</div>
<div>Fran</div>
<div><br>
</div>
<div><br>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">El mar, 15 ago 2023 a las 16:59, Ma=
rcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt;) escribi=F3:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
On 15/08/2023 02:43, Francisco Gallardo l=F3pez wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; We have a remote station with an USRP B210.<br>
&gt;<br>
&gt; We observed that sometimes the remote machine cannot find the USRP <br=
>
&gt; B210 (I think it has to do with uncontrolled power cycles, but I am <b=
r>
&gt; not 100% sure about the root cause. The point is that sometimes it <br=
>
&gt; happens).<br>
&gt;<br>
&gt; The only way to sort it out is to disconnect the power supply and the =
<br>
&gt; USB cable from the USRP, and then the remote machine can detect it <br=
>
&gt; again. i.e. doing a complete power reboot to the USRP.<br>
&gt;<br>
&gt; It is not a killer because the problem is not always happening, but it=
 <br>
&gt; is annoying because it implies sending somebody to disconnect and <br>
&gt; connect the USRP B210 cables.<br>
&gt;<br>
&gt; Is anybody experiencing a similar issue? Any idea how to fix it?<br>
&gt;<br>
&gt; The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Fran<br>
&gt;<br>
I've seen this sporadically with B2xx over the years I've been using <br>
them.&nbsp; For example, on some hardware, the system cannot<br>
&nbsp;&nbsp; see the device on reboot, and you have to replug/power-cycle f=
or the <br>
system to even see it.<br>
<br>
When this happens, does it show up in &quot;lsusb&quot; ?<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AAMA0PR01MB8035INDP_--

--===============0447505910547381294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0447505910547381294==--
