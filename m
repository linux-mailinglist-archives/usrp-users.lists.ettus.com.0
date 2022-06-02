Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8926453B793
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 13:02:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11EA63847D0
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 07:02:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654167722; bh=VUcuad0MQdBhcr6zOIPbTVCRK7N/k3yVfAl/xQO9u9g=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LZ0+WD7k2cCsmod8wepCvHzOGSm22BP4dZ3W4JQr2poVxHDmwBC3kT0lNtSuRmZUu
	 pbXfcg1x9DhF2r7wOuBFXcQIHKhiU52Ysf/9qQ5N9CW4Sdhn+X2tsMzVtBj84ftk/r
	 9zciZvBegO+L1WV8fYSFeUsJaBPeK4sF0xOKeJGEMuVmW+fGgd4Z99Hc+r2XKXIjGu
	 jrkymckKhmaeDrdf0V7u7zaBAAytxadA+42DRnir4ZKsd95JiM2ZdmQV+AwNsvR/W2
	 KQ7dSzvyB9vHyY5acJqYjEovHM/f3wnHXxckdR6hUCi1XdCiHt4ELuDAy/lulXxIUS
	 aghfwm6QAtW6g==
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140097.outbound.protection.outlook.com [40.107.14.97])
	by mm2.emwd.com (Postfix) with ESMTPS id E3C4738460F
	for <usrp-users@lists.ettus.com>; Thu,  2 Jun 2022 07:00:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="qOp2gj/L";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnSnIVTE6fM4d+V1WvCZM84cwyhpxRWx9FZh4wx2ylkjCXdLFkYZGsJmeEDuI1IHkZQEz6Wyh8pvPomyAsrcZpuvu2hgr+gO7Lrbf3HSF7EOmrAorInyLqtWmxFtJll0eUNgnOg16Sfo8crG6dnB6Q6ug1kSFgTN19gkMXOoS6ZFUYONEuCS8FFubiWj6pfRaPrebZrP9rnjoureEm8tlpPLNbq+UJSXOISZXReZSWJmBsmO7sWSwQDolnGyNtz1EuwJp8aInypUR9M90U6RrPgQtT+MWrcvyqZOCqRvzr76MWZa0AUvzEC4PeEQ3PxIX3HFkmMC4Gzn1kG0FQxk9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TqGd4qe9x082WLEboCRBh7nLG3GEAcxoTNlF5GL3MvQ=;
 b=jLm3sWIlwxNY5id6X1DiYcrYVXZnJv8b6KVOUa+zZKtGIN7r4fK7rp1CaClE8uEklnKjKLISy2ZQFQByDiNgZ6oY33iB+gjx/zssZv1U464VrpYhFcA6Fv5MAefea/HB2FzAwuoM+tTTTzF15OQCc5cPNMcyQTFvHNRI4jEKJcezgnirCPwqr7yAuES2n0NHA8ri0YWlGf1YfbX/A3q6ha2ZMMuIK1B431UjAqR883/yi/2EVJZVu0VTj1FeeRqMdZ2+H3W+JlfOXoDL198Qd3yFbtfrWTLSIzx4DIekcdzLi+gRM5C+I+MHTVV8jDX2tVd6QpWel9mrXG95r2vHuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqGd4qe9x082WLEboCRBh7nLG3GEAcxoTNlF5GL3MvQ=;
 b=qOp2gj/L+MbXwxsYO5KBp4Ulr9SV6fJQr4KGA2u1pAKpGdzUnkxNo7bGWMJXGvLEFZYgm7Fq5uK2fhDSxqLSOpM+Zcd5hy598Hh78j3tmCwDA5Xx0ECcFkiXffuLUKRHrNDNbmj7eBgmxW79uDfqSDEXd7EPSPa7AEh8AMfGXH0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AS4P190MB1806.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:4b5::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.13; Thu, 2 Jun 2022 11:00:56 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::698c:52f:302:314d]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::698c:52f:302:314d%5]) with mapi id 15.20.5293.019; Thu, 2 Jun 2022
 11:00:56 +0000
Date: Thu, 2 Jun 2022 13:00:54 +0200
To: Achilleas Anastasopoulos <anastas@umich.edu>
Message-ID: <20220602110054.7p3tj3sxz23bp5cw@barbe>
Mail-Followup-To: Achilleas Anastasopoulos <anastas@umich.edu>,
	usrp-users@lists.ettus.com
References: <CAErymBhzsCT=X3u-=iYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAErymBhzsCT=X3u-=iYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.gmail.com>
X-ClientProxiedBy: PAZP264CA0037.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fc::7) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2cc17420-2346-4ff1-eb8c-08da44872b1c
X-MS-TrafficTypeDiagnostic: AS4P190MB1806:EE_
X-Microsoft-Antispam-PRVS: 
	<AS4P190MB1806AD45A89C95F636818F9EF0DE9@AS4P190MB1806.EURP190.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XhcPRUyD1E2jk2YzCiV6A2chddR+tIwK1kVXEKyOqSNDBdOWMl4lFMZnsJEHILdar4Ry6nlBgINWXZYnJTRmG/tUDXElLxIGhyIaMrofUCirFaxeVd0wVHCuzRwGRoixYG2LzBFMgXDtw1kVvSOCT3t+XrwWf0W3mV8SQSQS2FJP8z4iayOUQrebgD4cIZFcm/7YmiZnfPac7NwPSvpiTXTbaSCqW2fk1Oa9frAo63UcQv/D2yYjqAWVS7gsmXZBVGkW7RilxP+beQPQhDMT/x8iepNRYE5ZcV/9oyHPZuQ+qb54M5YRR0BH51GtwQcn4vP7x/qSNh2abFasj6Ou0T8w/wStIXKTA3zuqvvxqGn4zmalPEGxmwYlDaYSJ4WIdeHHvVCHPyokvvxPxbGhbQvcN7UZwmRcWB4S0BM+iNerINBJVSUQjLCJVEVtTDvdacvskmMHBzWpM1oE32gM9C3UudLno2Plnyu4zQ6SDZAZV/8/tJ6YxR3aZZhuqyYIsqOdHABlz+f6MperCJcKWCreYGJvSFD6QSb2tkKUQGRAkvPXyNhbU0MoVCpCDYumfk+MS84dmW0X8PFWJJ/1FzEYg62/4PWEzy+MrvA06fjGeos3Py+anb8RXd6sXP4b62zOaUwyTfe032pPjcQcAcrueK7XEj6bMmr51l3IqAFOp8oHwll6nKBgIse1g9vJHvZC4Qe6Dh4xEdEHt37LHLcjnX6N5ywU+jOrpZAYAF8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(7916004)(4636009)(366004)(5660300002)(186003)(66946007)(8676002)(4326008)(2906002)(66574015)(66476007)(66556008)(1076003)(38100700002)(8936002)(83380400001)(33716001)(6512007)(6506007)(9686003)(86362001)(966005)(6486002)(508600001)(52116002)(6916009)(316002)(53546011)(786003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?vYephQJE3GN9ldaXdItJbW+GTVMMbjwnsPZSA65x/bjUCYhJAo8MYSqgX/?=
 =?iso-8859-1?Q?WxlppLXCMunlaCUqU5rXjyrlyop0UGISQpbYEfEyT1tkDwTWkLSbXOb7ie?=
 =?iso-8859-1?Q?6G7cY2Bokll+Tn8s/4NiC5/Otozxpx8Uhd2M2zWqZMACD0uRKYsmMgRtlR?=
 =?iso-8859-1?Q?QGFWIz4ID8decwau1X1PEh1ZlE+17v6tDta+Zp4BRum4umk6H/VSsK4XkK?=
 =?iso-8859-1?Q?t7mDo/1c89owzjYG/u589PTHEeF/C2OAl1qbB0VXi4vySWHHaSYdRax8fm?=
 =?iso-8859-1?Q?Wmwlo4eWudQ9rCLVJQqFysSCs9lBS7ycf3tPLXFMOCsPiBbGeVkf7YNfGK?=
 =?iso-8859-1?Q?oiUlZ3R66OenK0A1jhJzhle9frXd4rw3af2NR+TTeHbdcXCxfKz28OYZnw?=
 =?iso-8859-1?Q?IB1+0ujPL8DwpFb3YeD6H5/PIJaKjaOgaeaV1xjZl1Vd7c4hikyGkYyGKo?=
 =?iso-8859-1?Q?zOyWYrzfqmkL3d/f3AouvzHIEtENylvAezTLSXq2+kx1BgY0Og2WTl0KJh?=
 =?iso-8859-1?Q?P8nlz3zffJR4n3DNK+5+3l07cfooVf63zrcizxoX3fh2K6QfPfbEQmhV8x?=
 =?iso-8859-1?Q?VOkBrWmxiclXzvC+/d7qtzNK0pH30uCB6ICGlg/Aot7bTEaocBdiwcouSe?=
 =?iso-8859-1?Q?nGGUaw6093i/bUoxidIY1D39KqUHZE3h/tNz2BtH5YfcYWtie4/bA7xyV6?=
 =?iso-8859-1?Q?2qoigyagiKYjELw9dS90EkbQGWJJPPNGMGIHJSOp4ge/GhwfR9NH964MDt?=
 =?iso-8859-1?Q?rw3MAp5bQrgof6sOkaJmtCpFRF0Y3z1QNB7qY8NoHOqIMRca8EOZfrUWPa?=
 =?iso-8859-1?Q?TaldAKsIILCgiPezvYh0cxYl3CmoCEemNNYLsL/J0JpbIo6NlJlkErPbwh?=
 =?iso-8859-1?Q?CAlD1sqslI8FuA1mGHBxc02fc92fZTwT/c5NF4JixSukyeAz4JSsajeQzi?=
 =?iso-8859-1?Q?Yys6KJ14EYQa+Eq91zu9opkOaTo5GJoHp4FSR0Bba+MaGlwWs8j699GSTY?=
 =?iso-8859-1?Q?gtgMUAnO06Frl0dbgjlMhLFA2llqJfxJdiaeWb6zzOwb3JHopQdn5boqvx?=
 =?iso-8859-1?Q?UbNpwIhkp9YTsrReRp1OeTIZkg5YTWmDG3gAHY64NCseTlzjDDZgwr/NS6?=
 =?iso-8859-1?Q?ylXUx4LXrsg9vmbjfYXM3tkdtBNnhuB//HTbEcOSFoGLakYUgzyuednOU4?=
 =?iso-8859-1?Q?9jZhJ7KQkhXFiiMEDFDIVoegHZ+SEL4BnWoc+cxnlIgtu9EV+1JvYbnrB4?=
 =?iso-8859-1?Q?bw7c28L68Sx/8jAhU9ZI4jGC6loj9yVf0CPPXExVJiLblicGmOl3i+Iux7?=
 =?iso-8859-1?Q?bJFUKo/JfWuIS0ZWBpuHpwhehgW14TqWGdr+PuBHEvf7tW+Scu3sqW1jIr?=
 =?iso-8859-1?Q?5U8oqDSj0rOPQxWVr92BOTMzUlsFKJ1PcWYQba1LQ2feEPDPUeD87KNa6B?=
 =?iso-8859-1?Q?nOSycabTfD2EoW6RUUTfOquDTCXQrlfRtQtm7jV4ShM5LUux15EZt05Eo2?=
 =?iso-8859-1?Q?f5cWv7/ZrzLJvr22cMSc97SyrTnYrygWAfswuEuUvCMklJHMhEDtCSH9US?=
 =?iso-8859-1?Q?1eu9h6wPiro/f2u/rMy8sNFtF6MVOFkBqZ/g3oX7tAmhAbiLVQSKsY3Hmt?=
 =?iso-8859-1?Q?yBJXVp10uYTBz5BbIgz15rQtjGUGH1WaIECRiRmb+ssnb3mseDUgnPlOUx?=
 =?iso-8859-1?Q?Gyufe8lYLhoqA8YZX66mTw5gOBig5pRlXUzJc5Y0euVGk2MgM5udZAcIO+?=
 =?iso-8859-1?Q?QHKr1Yld4DbiRm+CtVAHSmKKuk5P4bngtSDL9x3/2/7ybnjhwfxcVye9qC?=
 =?iso-8859-1?Q?eUXv7Qcokdme1BjS2eRYAg6qCbkQNlyGJBjN3yEMlV/rxKARKo6LX5e2Tj?=
 =?iso-8859-1?Q?4d?=
X-MS-Exchange-AntiSpam-MessageData-1: q2ohCx17BzyWEoPal34hsoH+6cEroEyR8ZE=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc17420-2346-4ff1-eb8c-08da44872b1c
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 11:00:56.2654
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Nm1dTcS3gxj96yRg3ZACFjSDTyfj65+WscfEZBoeFmnjvtGuL+0teHqygiLeYyBcZQghZjtQucyor2azCZJpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P190MB1806
Message-ID-Hash: KCDTSRULB3RNQMOQPMGNNTURFV7BL4Q3
X-Message-ID-Hash: KCDTSRULB3RNQMOQPMGNNTURFV7BL4Q3
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem updating uhd library on Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KCDTSRULB3RNQMOQPMGNNTURFV7BL4Q3/>
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

Hi Achilleas,

On 01/06/22 12:31, Achilleas Anastasopoulos wrote:
> I am working with gnuradio and usrps on an ubuntu 20.04
>=20
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description:    Ubuntu 20.04.4 LTS
> Release:        20.04
> Codename:       focal
>=20
> I usually update my uhd libraries from ettus binaries as described here:
> https://files.ettus.com/manual/page_install.html
>=20
> $ sudo add-apt-repository ppa:ettusresearch/uhd
> $ sudo apt-get update
> $ sudo apt-get install libuhd-dev libuhd4.1.0 uhd-host
>=20
> Then I usually build gnuradio from source (I am currently in v3.8).
> I DO NOT install gnuradio from repositories!
>=20
> Today I tried to update the uhd libraries.
> [...]
> $ sudo apt-get install libuhd4.1.0
> [...]
> Now I am trying to install the "uhd-host" library:
>=20
> $ sudo apt-get install uhd-host
> [...]
> *The following additional packages will be installed:  libuhd4.2.0
> [...]
> *******I do not understand why it asks to install also the
> libuhd4.2.0 library.

The UHD version from the PPA for focal is 4.2, not 4.1.
The issue here is that you first installed an outdated version
of the library before installing uhd-host (libuhd4.1.0).
You should have installed libuhd4.2.0 instead.

> If I do that, then I get the following errors:
>=20
>  Y
> Selecting previously unselected package libuhd4.2.0:amd64.
> (Reading database ... 269464 files and directories currently installed.)
> Preparing to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
> Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
> dpkg: error processing archive
> /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb
> (--unpack):
>  trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs', which is also
> in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~focal1
> Selecting previously unselected package python3-ruamel.yaml.
> Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...
> Unpacking python3-ruamel.yaml (0.15.89-3build1) ...
> Selecting previously unselected package uhd-host.
> Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
> Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...
> Errors were encountered while processing:
>  /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)

Yeah, for some reason,
dpkg/apt does not consider libuhd4.1.0 and libuhd4.2.0 being
two version of the same package (libuhd).
I think that a known issue (or feature?) on Ettus side.

> Alternatively if I try to remove "libuhd4.1.0" and install the latest
> "libuhd4.2.0"
> [...]
> Now I can easily install the "uhd-host" library
> [...]
> BUT, when I try to install the "libuhd-dev" library I get the following
> which
> I suspect wants to install the entire gnuradio system from the repository,
> which as I said in the beginning I do not want, since I am usually buildi=
ng
> it from source.
>=20
> $ sudo apt-get install libuhd-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> The following additional packages will be installed:
>   freeglut3 gnuradio gnuradio-dev
> [...]
>   libuhd3.15.0
> [...]
> Can anyone help with this?

IMO, that's a dependency issue.
libuhd-dev has gnuradio-dev as recommended package,
and AFAIR, apt installs recommended package by default.
Apt tries to solve the deps+recommend for libuhd-dev_4.2 (from the PPA),
but it cannot find a compatible gnuradio-dev package
(the only gnuradio-dev package it can find is from the Ubuntu focal repo,
which is built upon UHD 3.15.0).
So apt tries the libuhd-dev package with a lower priority,
i.e. the one from Ubuntu focal repo.

Maybe this will work:
sudo apt-get install --no-install-recommends libuhd-dev
or
sudo apt-get isntall libuhd-dev gnuradio-dev-

--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
