Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3C76EEB43
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 02:08:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 500E038499C
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 20:08:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682467733; bh=SVoHRZXGJ6bf8uIV57aAQNvJT7dVsZGlKQ/f1zYNb1s=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vw4NChDeosKsxRI4NB9FajUnJ3IF1RKYAUCdcDJa+n6ja/THVx1bhApF7JayjHxyv
	 l1MS0hvDubQJsdIZSHJRPp1PCZaKloO5bSNjBgKiamdt8D3pBT2pQy+Dwf0S6WAOmO
	 kstbnQtRMoebq8rY5emP4rD4JINKPW8uiEzcqedKZKSodzJIhZhUyQtyjZM1kb/WmY
	 r5Tp4rLJe9U3AZsY338wXUd3TzizPSHyOn19l8kR/wVh3L7wo/N/tKQ9FNqe9EumdD
	 2Ex/ZSFPfWEipFpIepGNREl1/ZmKHjLjeZ8r+we0YkjD0jZzH9GU9BK1+A1jF8FFzo
	 tYe/aFbnBqMCg==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0053.outbound.protection.office365.us [23.103.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E1DF384919
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 20:08:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="jPePku9O";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=r3vCQTFDiZZiiV4csd4QvnFLj7I25mj5DAeMF+v9NiH/Hk1dGdpoTxziUGe6w+4Hg5wibyswIEQd7s+PLg80UsPJHOBhy+/llZ3H9a3VfsaMROkHNigQ++IkXeJP9hXgqAcCTVAU6d0Zm8gfWQwbnwEZsLpZUrVrCqUSp7CUhbFjdwKH3OiQ7d9J/9zsAwuF9V72tMxMmCOtXNgOTqfPafIZ2xUOU24ZYvIYA5GFsE5kmqelNRlQT3gr/5geGrly+3uSt7MicXxzhC6+S6nJitZ214EUljHvZwMrysAx7pBo1ugYFcm73IDrRJow1EK6bxaMda+6Uic0IWYZATKjFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdB+7CEvQjLbWT+9m+XcNF4olwMvEH6QM75uyPGc7Gw=;
 b=UJRxlihkgYktZ774v71kEr3nkKaAflo/Op1Mtxb+K3CVV0s9ywWVhg1UPdg/K+gHN7aJyF3X879oytkDU/HTtWVw/aLca6k8/4203MOcDv1bb3aJVf51m6BZNHsW1IPcILXPZTalpLrBVkR5JnfSDi9mL1ys0CQ5KTO+Hqlj7oESx9HwWlDNJIgx/72eaXvP/UmVQ20BE0BxMIi4tp3kuM9b+OySMKJz/XlYX8AKB/x/r+R+vwoPfy0pFV86kKvIya4MSqz0fKKT6rcggN6BInZ+pB0+yS4b6IUVSa04qBFeXSW2L9Ft/wo/x/z2RgEcOs7qhEW2kjJl7K45yUfgZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gdB+7CEvQjLbWT+9m+XcNF4olwMvEH6QM75uyPGc7Gw=;
 b=jPePku9Om2XKJMCsVUj+15JjwWwxTWX1C6dKmuEgp8klze9I+qsBcbiImk27PQz01eG0Urv2qBQwZwKyNRMXdSLi0EI//Bn0Ryk1bSaCcqMdM6ZAtIxiGEWDoMwQH0G/Z4O1edjm7l/lmFrhlRXlSXkKao0V5wMQGgBnCwXQ0sJpf4ShsDdoyo+ENxOFdahjzyZx5TEwMGZO0VRLsQNqe3X1QrFvVjF+hExeTRw6bJXPQfmJ3Fs5Ia795dgg4EiMtjoDGi7TYE4e4nEFmvKyAq/Mrn3hVWHrdxDjcZveKCzh8dOI4zqV4FkZiYKlcK6BFIS+VtkJHM3jxD4EspUIAA==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1702.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:178::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 00:08:27 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::9045:b7fc:4342:d5a8]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::9045:b7fc:4342:d5a8%6]) with mapi id 15.20.6319.034; Wed, 26 Apr 2023
 00:08:27 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jim Schatzman <james.schatzman@futurelabusa.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: configuring X410 USRP to work with higher
  sampling frequency/band width
Thread-Index: AQHZd8iedQS4JO8dsECWYVlf3S9TP688o01g
Date: Wed, 26 Apr 2023 00:08:27 +0000
Message-ID: 
 <BN2P110MB17470D370144734DEC8B8E01B7659@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
 <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
 <ZEgALNgcA3A7TRfW@l1.fu-lab.com>
 <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
 <20230425225037.9FD7C4D935@mail.futurelabusa.com>
In-Reply-To: <20230425225037.9FD7C4D935@mail.futurelabusa.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1702:EE_
x-ms-office365-filtering-correlation-id: 2a82ea3d-2216-4d79-581a-08db45ea5bfd
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tK6Py4Y6adNrmxkpZ6gsT7theBCy905AwI4kdY0sDsG6zuACoiTGXLCLVIEE2m7dUM+Yh8hxgPat59z+71G7sYoU3CMKpk9n3cFGEsoj3cN1QmAe/BTwkoZsLZrqHCWAhiJFKdyaXCnspRJYpOR4fi8qsA75+v0YeYjUdAs/PBva3b3dVVzbJqdd5+1pOaj9c3oquow1pM/Sg8ryTR7WLn6357cd+fT3N6OK+alFqpaM+Ki+nVn2isYn7M+1PAu8oeKrVs2XzSAbH4ebSyqOxU82JjuZpK7KBrhPyiWV3t3dSJZ98MDXrdnZbVtXl7AepQNXaTcOAv7zDeYouMvGYED7nnezH2YJabAkSNbMecIX7AZnWJQBdKNU5hz5vuLYPTMQYLGnX1waMLIufiiJ3Rytvb7msuraf0gMi9I+bgOIh3D+AVSp27PP5zW002Tm5NM7R/h24t8RlpvEVvALvuCvoX1wub1La7in91IlYsk7yARq1bT6byRQT70D8jUMSk5kolbxYvHYCl2Zt+RGRY5ihO1Ltx0RkbfBMu9F2hBMyX39urX9F0Oq8l6lw/ItC69MMdp6t5ejtbFkXoQ4a30Rs0FA4PZko3utez4goc0QPtagmC7aZ7wXlnvywqVx
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(39830400003)(136003)(366004)(451199021)(966005)(38100700002)(122000001)(6506007)(9686003)(53546011)(55016003)(186003)(8936002)(83380400001)(33656002)(2906002)(8676002)(5660300002)(52536014)(41320700001)(508600001)(7696005)(71200400001)(38070700005)(110136005)(4326008)(66556008)(76116006)(41300700001)(66446008)(64756008)(66946007)(86362001)(66476007)(66899021)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Iy0IJDt3TWUTuXer8jA1OeetnmwrgL86KOrDDdTfqyd1Yri5ZwAI1Eww1+?=
 =?iso-8859-1?Q?gDT1whtQK7t9XEsMKbUHzhRbh1sQiPEhzLBA1CVzh54nO99+SJpGzVFJwT?=
 =?iso-8859-1?Q?vBLPLR80189ulXR5KwlxOixKfXT8LFsjGhuvCh8BlU8rMTr/IndpC9YANB?=
 =?iso-8859-1?Q?AFgkQv+D0s3qD3yoIVF4j7NRaE14wfRNpjkbX4RwbsU/d8UYCc/+7Uh6Fb?=
 =?iso-8859-1?Q?J+zTzQ4Lxx+tdmkSULf4s5wTrBextaXmqWUP4vG6gudtTVs511iRkuhAKN?=
 =?iso-8859-1?Q?lFrWdzq5fOwItj9tOPaxQfP1wnm31tXqTGoS0Lg7OUYkhLx8rtyNzk7K+q?=
 =?iso-8859-1?Q?O0p35yvXb+IBX/mJ+cS3U1QoBvySN/zS5lTQECQzQsUvHqD69bJpQ9erfE?=
 =?iso-8859-1?Q?JIW3xaFZLDjyXh79xcetVOs2pDkxPDB+ystH+9293IyHOIdPVVX4iiti2v?=
 =?iso-8859-1?Q?VFK/DB/WbDLD22eMAO9Wedzmkf226gUjznCQYBgO8KiVdgSMdywqJxPQ+E?=
 =?iso-8859-1?Q?owoi0fWAfWUX/RQCC3KB9u/jSxuw+i7sTiZprr4Z4VtvYosqA4gIHvTCbj?=
 =?iso-8859-1?Q?EFbIH+3g6x1scFWJ2MbDhCCJyNhI309aijKNASmIDH3W+AJ5NGy8jlor5L?=
 =?iso-8859-1?Q?LB/ExmF6J5u88NmOj2Alo8Uiw3SbrbOqzJWkvkoDtB5by4e5b7ahsPnsNF?=
 =?iso-8859-1?Q?qugQ3B5nVrWOzp+Hf6lQMsMJMH6oLdwE+WekLlmxhwHw87SsDl4LsC1Pq9?=
 =?iso-8859-1?Q?EZSfhfYqRkMZlU1In+t0wG7IwI6lO80wyJe0FvtpJCCjEhjwy8AzLByosp?=
 =?iso-8859-1?Q?hxPs+yWRDcmaaUMYOTW4HwE/JFjPzKaaFfA8pv182BrgUxLYP/siwlV2zw?=
 =?iso-8859-1?Q?/oMxc/7rLmayzZAI5VJppScUeLUqw2ocfWxquZYw9uTZvy8jc+PLS4FDwb?=
 =?iso-8859-1?Q?FE/wC86yXkgqaYXmtohIH2IOFX0uEg+gTg2ccj1h/j9aWHnanl+KEXutmC?=
 =?iso-8859-1?Q?0IeMmEdW2KBWnFi49AIhOQugpTeD62YcVLceLxpsu1oSC3RUJL50akP86I?=
 =?iso-8859-1?Q?l5r8RGrjMZG7ClQsTIb43PXfNev/glEAmKEpzLz/VCmuEKTXYZLHM6tNZ7?=
 =?iso-8859-1?Q?9+etaM8iCRL+OrlHhJQXvv2JIEWFF32x3Hqjs95fp9+diiPcCLdcT7/6mh?=
 =?iso-8859-1?Q?niv+shLplckUNF2Dqei0Fytgdu5O+rZ8pwpykIzAhCWtZjGpY6IfJkRRtB?=
 =?iso-8859-1?Q?2nsH8VTBGJyh5wG0HzX+2My7zMKmKQFgwhcOWOT7vkAFrFAHfMMLpu1ex8?=
 =?iso-8859-1?Q?6tkOrcaMQ+hPUeFhzNi2bMQPNXNAXby2tCLTIclZWxnaXlqfMqUZhcY91B?=
 =?iso-8859-1?Q?6rbp7hKZDSu9xyaRRx2w9FZIazWVjMXnJ7Ll8LrC/tN/63pxzM2axdFZnp?=
 =?iso-8859-1?Q?NfJJQ30A4lwAuWm5sx/r9AUz9Kp3MwauBzmpOTBIQXbdDWdh1lGuMokX+r?=
 =?iso-8859-1?Q?vjAmLb/LK8Gfj9rA5Rc/fxfijZmobPwwjhaQLlqFihXC7vCmXNTQOWyF0z?=
 =?iso-8859-1?Q?tSHN8QVRydVJzILfAZUR+QVc6Qx16aHDY6KPEkPB6c5tNxNoWOgCRNimrX?=
 =?iso-8859-1?Q?ZlqzbwAwKHLrefAYY27G7fVmaZRiMR6NDw?=
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a82ea3d-2216-4d79-581a-08db45ea5bfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2023 00:08:27.0737
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1702
Message-ID-Hash: MOM4KOGHLJLNYD4YB3G66VXS446LUZCC
X-Message-ID-Hash: MOM4KOGHLJLNYD4YB3G66VXS446LUZCC
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher  sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VY5MXETNFAGHHFYZQGKQTJVIHXEIBH35/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

I've also struggled against stubborn TX underrun issues and have had some s=
uccess using dedicated CPU cores to make large improvements. My configurati=
on is quite different than yours, but perhaps this'll be a helpful lead.

I have a custom multithreaded application that manages four E320 radios fro=
m a single server using the UHD multi_usrp API. I stream continuously and s=
imultaneously from all four radios in both directions at 10 Msps (each dire=
ction on a different radio channel). The host server is a Dell R340 with 12=
 cores, 64GB RAM, and a quad-port PCIe network card that has direct 1GbE li=
nks to the SFP+ port on each of the E320 radios. It runs Ubuntu Server 20.0=
4 (no desktop environment). My application threads' loops that handle the s=
treamers are pretty lean, and any file I/O is done to a ramdisk partition.

Initially I tried elevating my TX thread to RTPRIO and increased the number=
 of UHD transport frames, but still couldn't reach an hour of runtime witho=
ut an underrun. Although I had plenty of unused compute capacity, switching=
 my TX thread to use an isolated core ended up making a big difference. I s=
peculate that occasionally something was just holding my ready-state thread=
 from getting on the CPU in time.

I'm using both the "isolcpus" and "nohz_full" kernel boot parameters. None =
of the default Ubuntu kernels ship with support for nohz_full (not even the=
 lowlatency kernel), so I need to rebuild the kernel with CONFIG_NO_HZ_FULL=
 enabled. The isolcpus parameter prevents the kernel from using the core fo=
r its normal userspace process scheduler. The nohz_full parameter further o=
ffloads most kernel work from being done on the core (principally system ti=
ck handling, thus the name, but it also keeps most other kernel load off th=
e core).

In my application I assign my TX thread to this dedicated core using a call=
 to "uhd::set_thread_affinity({core_number})". After this change, I was abl=
e to run all four radios continuously for a little over 9 hours until an un=
derrun occurred. Using system logs, I was able to determine that underrun o=
ccurred precisely when an overnight Ubuntu cron job launched to update pack=
ages, which caused systemd to restart some things. I've since disabled that=
 cron job and intend to do another long test soon, but I haven't had a chan=
ce to circle back to it recently.

I found this to be a useful primer: https://www.suse.com/c/cpu-isolation-in=
troduction-part-1/

Hope this in some way helps,
David


> -----Original Message-----
> From: Jim Schatzman <james.schatzman@futurelabusa.com>
> Sent: Tuesday, April 25, 2023 6:51 PM
> To: Marcus D. Leech <patchvonbraun@gmail.com>
> Cc: usrp-users@lists.ettus.com
> Subject: [USRP-users] Re: configuring X410 USRP to work with higher
> sampling frequency/band width
>=20
> Re. "the Linux in the Zynq is out of the picture." That is interesting. Y=
es, my
> comment was based on the radio's Linux OS reporting dropped UDP packets
> for the 10 Gbit interface.  It sounds like you are saying that has nothin=
g to do
> with UDP packets on the interface. Confusing...
>=20
> If there really are no dropped packets then an underrun seems to imply th=
at
> the radio thinks it is not getting data from the host in the required tim=
ely
> manner.
>=20
> If the radio is dropping packets then it seems that could be the explanat=
ion
> for the underrun condition, although we have no idea why the radio would
> be dropping UDP packets.
>=20
> At the time this underrun occurs, we find no evidence of an issue on the =
host
> side.
> a) There is nothing in the host Linux system log indicating that anything
> loggable occured at or around the time of the undderrun.
> b) The modified host application specifically monitors for the condition =
that it
> does not have data available at the time data is to be send to the radio.=
 This
> condition never occurs.
>=20
>=20
>=20
>=20
>=20
> At 10:34 AM 4/25/2023, Marcus D. Leech wrote:
> >On 25/04/2023 12:30, James Schatzman wrote:
> >>I don't know if this is new information but we have observed some
> >>additional behaviors:
> >>
> >>1) The radio reports dropped UDP packets. Why is it dropping them?
> >How are you determining this?=C2  For streaming, the Linux in the Zynq is
> entirely out of the picture.
> >
> >>
> >>2) At least part of the time, the radio's fan kicks into high speed
> >>seemingingly at the same moment that the under-run occurs. I have no
> >>information about how it controls the fan so this is mysterious.
> >That is an interesting tidbit, but I honestly don't know what it means.
> >
> >
> >>
> >>Jim
> >>
> >>
> >>On Tue, Apr 25, 2023 at 12:20:45PM -0400, Marcus D. Leech wrote:
> >>>On 25/04/2023 10:34, Jim Schatzman wrote:
> >>>>We have been working with N310 and N321 radios. It seems very
> difficult to get long term continuous operation without under-runs even at
> the seemingly very low data rate of 12.5 Msps.
> >>>>
> >>>>Currently we are trying various firmware versions, changing buffer
> sizes, etc., but so far nothing has gotten the radios to work consistentl=
y for
> several hours without under-runs. One run might go for 3 hours without
> failure. The next attempt under-runs after 10 minutes. It is very erratic=
. Our
> next attempt will be to implement an input FIFO.
> >>>>
> >>>>The configurations have direct connections between a fast host
> (Ubuntu with unnecessary services including Network Manager disabled or
> removed), and the radio with 10 Gbit and frame size of 9000. Without using
> jumbo frames the behavior was far worse.
> >>>>
> >>>>Any other ideas??
> >>>>
> >>>>Thanks-
> >>>>Jim
> >>>>
> >>>Something you could try in terms of isolating root cause is to use
> >>>the "benchmark_rate" example application, and  =C2  configure it using
> >>>the --duration option for a very long run and use --tx_rate to cause
> >>>it to only do a TX test.
> >>>
> >>>_______________________________________________
> >>>USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe
> >>>send an email to usrp-users-leave@lists.ettus.com
> >_______________________________________________ USRP-users
> mailing list
> >-- usrp-users@lists.ettus.com To unsubscribe send an email to
> >usrp-users-leave@lists.ettus.com </x-flowed>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send=
 an
> email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
