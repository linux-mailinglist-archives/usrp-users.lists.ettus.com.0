Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E5C49876F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 19:00:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F069C384D09
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 13:00:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=lboro.ac.uk header.i=@lboro.ac.uk header.b="KIQt4BJM";
	dkim-atps=neutral
Received: from mta-1.lboro.ac.uk (mta-1.lut.ac.uk [158.125.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 855A63844E1
	for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 12:59:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lboro.ac.uk
	; s=lboro-1; h=MIME-Version:Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NH7eJ8qz5Jsyb1o+OJLhVnrMfcH4Em9WHfdCpLWWj8Q=; b=KIQt4BJMDfNjfYXFE6mFnOc9NW
	Hu1Khdugc7idLcMLqReuTeg9BpYe66ZNnkjBIUBw1N93t+fb1iva9ZisxDg4cWb30tzGEBGh7n2Lq
	xGdDZrU0xBI3zZLnYNxeaoyyfbMl5tlmppWIUYQzY09FHL6ObqJq2IkijIBDmYAiGXaTBTS67fJtT
	Crni/oiE0W4Y7XOJwh8HfZGwoepg4MzuEqszaXY0Be7ho/mkiiFYhSijAzZxPBsvrmemeT/zimxHC
	uaxrewcNGUuwyaOM04RUhksChwjBKs/KKhuDx8LieqLqOhWafWB8myiVOnwd80tbWtmXiM+o5gDpf
	xkK3wohg==;
Received: from itsex-1.lboro.ac.uk ([158.125.160.16] helo=itsex-1.lunet.lboro.ac.uk)
	by mta-1.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1nC3bs-0005nF-CI; Mon, 24 Jan 2022 17:58:45 +0000
Received: from itsex-4.lunet.lboro.ac.uk (2001:630:301:d314::160:15) by
 itsex-1.lunet.lboro.ac.uk (2001:630:301:d314:b8fc:8e06:90b0:b933) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2375.17; Mon, 24
 Jan 2022 17:58:13 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e1a::209) by itsex-4.lunet.lboro.ac.uk
 (2001:630:301:d314::160:15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2375.17 via
 Frontend Transport; Mon, 24 Jan 2022 17:58:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Byx46SUN6Q1qG7Ge5QeXc0zhipsH5azYg1AFw4obdepHRMT/KJchquCByqIathKMj1GDMB1+qiznPZPdAo5/Ie5GH3seWQ4fTDAlMrGEqupIQrl0bYhzYUMRGU3z/iy8CF0lkK5o4N4Cfy3v38UZqUU1mcQu07Ng63DSm2RclYirYU7S9RB/ZHMhP3blvfF2rOfq8kv3g4IlN4F+QYXBrwuKr5dxXQUq6X8NydfA8QCWd9Zrd1vwZwvbgKO1R0f5OQuse8u8LrnINE7PqZWHsUaKYmEOqkIgq5qnRVTPIaQSvMP/48YUx+kYLVHmR7GJqyqVIpfWu2QUsF4237QEQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NH7eJ8qz5Jsyb1o+OJLhVnrMfcH4Em9WHfdCpLWWj8Q=;
 b=bRX3AaJymBh9Yz2Qah2XpNRwA3g0I5l++snJfPPz5Nk/972rhCzH5jLiIyjqFQQzxWoooYs5avFt9ZiEPtRJsD/SIv1WUa296/owCs9g+gKtG+spsUD4zWEBUvcNO4b2k2ra38dsoI8NFq/wTTkMhd9i0B5gZmwWjb6PmcS+Dp/Wiilh/k36FNq2ungBx4DNg6gK4jE8QVpnPw6YLmpZVxSq5syMF/m28WZ3jiJDlFBs6diNQH6L+cw99KaROa8jP6Nc96eoiRxtlfMxtnmVw0cuFKFMlaN5qBFWXDWfoR9giTNhxUwN9OjHQ41rpaWijx9BC/fBqkpTL6psfgDKMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by PAXPR04MB8719.eurprd04.prod.outlook.com (2603:10a6:102:21e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.17; Mon, 24 Jan
 2022 17:58:12 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b%4]) with mapi id 15.20.4909.017; Mon, 24 Jan 2022
 17:58:12 +0000
From: Ming You <M.You@lboro.ac.uk>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Regarding Phase Noise of N321
Thread-Index: AQHYEKz+/5Z2VScrlU+kJfaBqu42v6xxSrQAgADFNh2AAGQ6AIAAADwT
Date: Mon, 24 Jan 2022 17:58:12 +0000
Message-ID: <VE1PR04MB66534ADB1818F20E3FC23E8BBA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
 <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <374574be-bb6c-f737-46f4-97d738178b4d@gmail.com>
In-Reply-To: <374574be-bb6c-f737-46f4-97d738178b4d@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: f4770739-9e07-23a4-2e49-b79a032233a0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7e20578-7164-4449-59f8-08d9df6316ca
x-ms-traffictypediagnostic: PAXPR04MB8719:EE_
x-microsoft-antispam-prvs: <PAXPR04MB871985A143BC8351012EA890BA5E9@PAXPR04MB8719.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jTI0+AdHfXeBRN9geeF8tRtoLRbpC0YVP2bIsyoROchR7wKyrmn+SFdwgINOyjIQipGXmZOgW/LZFTSJcr+fn6zr0LDBQzHcZUDzBt/pNUSWqOKhUVp6DHzmPG0q72YUht9nxK61bE1MbrOXTn1z4Ze800TyEJCwshmApO5dEXt1P4g/3dmdd3nBIG02Jz/kSx8v6Ptu5tuwvYG/f2PNc15pDzUlnMtXPv+iFJedJW2LzRAazw1TfrhJ7yNyosUS0e/WXYBfm6riOa8rYa3A2kbsSrfV13Pjm6HE3CkGrWKfPGvDG9T5Az/gkmFoN8BXvd5MISi9L0n1NCa+39t093XGOZd7W+KiJwoQctDfA02ourUkGmEPFanNXMKLXOFzAlAtlz+7b1A3DyGHJfDGNNZl4QmA0CgTPxqhUnOiYgELPOrEKGvJOn3JdiQ6G+Eomx/uHNe+SByA6PJuGsylY2HgU47klyOtMLFW6Mh7LUy6UVmgZwFoPTlvdxSaM4d+wz0a45v52pkUdzQF+l4laESE5VE3noZzjMnKdZ8XWoQj5YeLtVHUaOXqDcW0UwoSQGpOZug6zUCzj0r5YFEiNfz3LUBl08XI9d6DIAp7qyCNUlwCI1blse/rswz+mXASTMNvBpsbduyQcLqH+YBZYD0A01y0S/z6b9SxuVAHTBdktzM61XKOk5tEtx95b7CCpMXNe04mJD+StKMgXwdkOA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(786003)(83380400001)(6506007)(66556008)(64756008)(66446008)(66476007)(38100700002)(122000001)(66946007)(8676002)(508600001)(52536014)(110136005)(55016003)(86362001)(9686003)(53546011)(7696005)(26005)(55236004)(186003)(5660300002)(91956017)(2906002)(71200400001)(8936002)(316002)(76116006)(38070700005)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hip249JJStX83k4bfks6e0TDStQRhCOCLxmbSX27PMfR90v8kzvzPMfh0Ipb?=
 =?us-ascii?Q?RS0D5xDXsQU9WSCOdJf7pajJcXkelRq+YB+r8PkzinLbh43pIXftzUxA58px?=
 =?us-ascii?Q?pxP848lBg5ZTJOXe9Zj4ghX6XR7AXWVkD1SYI+D+7gEW7P57jyHTeVoyvtOS?=
 =?us-ascii?Q?WYtWbsSjxbcD7hLYIpeuggxjkcVrUU84v7YgBaQb+edKTpIFiNsQVwtosshW?=
 =?us-ascii?Q?8uNTvXpLYRKGm7EyRsiaCheAIHKsK7TLkmE7j0gZVBau8LhOa6KN1mrC8m7h?=
 =?us-ascii?Q?QYBWGNrXAMK47smbTaI6H2wDYKmvN0SmrsmC+bLqr8eyM8WUO4/yFGJNgyUQ?=
 =?us-ascii?Q?ZF3+BG95+KLr3zCiUrw4LsgVxa6xAqOWFBl3cn/imPf/3FlgVj+9TP8s8anR?=
 =?us-ascii?Q?6rOdJFJxDURlKfJD6pcadeo8MEq38jl0cXEM3KXouZ+F0gpWFvS7YbpLfSgn?=
 =?us-ascii?Q?c7zmNfA3Y6YhzA8iomk/b6gjcCxpbmU4mbRmvzv6ozPYHh8B8iDvi6lxMuEJ?=
 =?us-ascii?Q?GBjgMGgKS3OC9soXQHh+R7GmbOzKnq754y0KaPAoDw54qJqYUZYblC4t7Jjt?=
 =?us-ascii?Q?BSgV+FJln+Q7NVuzoEkf+TmB68AK5vpyEHiLcPiRSu6O8LzQbFWuawtAdx5U?=
 =?us-ascii?Q?b0wFOCr5T33xDe94fhkvHH9Vvk5Kp6OOgtLPlugRhXWWANXWG+K0TqCq+8QV?=
 =?us-ascii?Q?2N+v52GiY4JC7+o1K1qmwDm+gp407b4THjqh3HDFwE/yYApQZNpG8p/4TFlm?=
 =?us-ascii?Q?IpubP2I4Tc05srGYzy8YXJgMEt65gClnml3uYe2nxg55Zx0iS5ol6A1ui+Qf?=
 =?us-ascii?Q?oyZofFqZnBob1KF05roGgLaQCcRwBZE+OsHMEX6CiaCnY4Y5tBkqoKswEK4p?=
 =?us-ascii?Q?1qhEw3Rj5lMyOdZ04XNnf4RcZrmr7SGIDu+vH0fJQ62Y700XfwRoFLP6AVmj?=
 =?us-ascii?Q?RQg2InYATDu0wasB5TXfFwmXA0bISliXkv44ZnyrID1KDpy1gCFpUbCWQh8W?=
 =?us-ascii?Q?qBoSpzM9XeBu1isHPr42HR+qqQNTyPtc0iMo/aZw6NJBJ+2DVg6JeA3TzK0t?=
 =?us-ascii?Q?YR+VR97T28jpRZYFfsaTQOufjcuOXvf1SnTYU8xqqg1h1Wpy82QNarL0CqwK?=
 =?us-ascii?Q?u5Kk/VWwKJEYcANawhi7t60n13btjbzR6Z+x1TC+dxJ9Yl625YQFBcWSmvHd?=
 =?us-ascii?Q?o6uK6GibhZ4/dghyWZBMHvm9NojeguGZukEk78ShmfSCWNbSnrJVMOU07CDO?=
 =?us-ascii?Q?Ah8Xv6A0O9Ywe71R5rRhNYVvHrgdNG2l6nynME1lLeWfD0JLseVBJTiTRItU?=
 =?us-ascii?Q?CrRjCF+Q8gsVy6dy0BElAYb/kE3AXxCFZ2bL22UFPnllptOu/BNIGH42U++v?=
 =?us-ascii?Q?QTODjXHTg5LW3SKftFrx5Rq1J15wC89x/dzi4lWWO01oPjM5y9TTTxqwkVFP?=
 =?us-ascii?Q?eMmAPKAOnAQ5tBUOpI1PJcjXM7kl27LTRi4plUWlCTH/7hy4wFDAfjXGIPg1?=
 =?us-ascii?Q?tUewYvA6/H70FHGJH91xUPeO6NZtgIAofiTyYy/hrxwHEDadwexuS67MD6TS?=
 =?us-ascii?Q?Z36GOD2zQN3EdQLyugt4Y4nDo3fVAVkMLAjcRhbOABGpCclS59AC8M/Tz0ey?=
 =?us-ascii?Q?qA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7e20578-7164-4449-59f8-08d9df6316ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 17:58:12.6283
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQPH3KmP1IBfomdEszkEjDloKj2CrLYS12RPqZ9LaNU7Kku4/87WM4DaKzOGCzL+CpGSWJbO4p4mIRzG/i2iPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8719
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: 2a5a594a371ed9c5173a0cad55df3ea5
X-Lboro-Creds: scanned on mta-1.lboro.ac.uk
Message-ID-Hash: F2C5CAUWHW3G4KOUPR3FYGLBZII3C4HF
X-Message-ID-Hash: F2C5CAUWHW3G4KOUPR3FYGLBZII3C4HF
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F2C5CAUWHW3G4KOUPR3FYGLBZII3C4HF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Thanks for the prompt reply. I've tried tuning the amplitude with a wide range, that doesn't affect the observed problem. Reducing the amplitude might make the signal strength smaller, but it is the phase problem, so zoom-in will still see the same.

I've tried both cable and antennas (3 different kinds antennas), and for cable case I am using 30dB attenuation. This doesn't change the observation, they phenomenon is exactely the same.

I can confirm the CDA-2990 is producing 10MHz and 1PPS, as I have mentioned, the set up and everything works perfected with X310, it is just N321 as I am controlling the variables in the experiment.

The phase rotation (constellation at rx) is not with a fixed pattern, for 900MHz case, it is rotating back and then forward, this seems not locking firmly to me. For higher frequencies, some cases it is rotating back and then forward, sometimes it is just rotating a lot (that is hard to tell if ti is rotating to one direction or just back-forward). Again, the same setup with X310 just as robust as expected.

Thanks,
Ming

Thanks,
Ming

________________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: 24 January 2022 17:49
To: Ming You; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: Regarding Phase Noise of N321

** THIS MESSAGE ORIGINATED OUTSIDE LOUGHBOROUGH UNIVERSITY **

** Be wary of links or attachments, especially if the email is unsolicited or you don't recognise the sender's email address. **

On 2022-01-24 12:37, Ming You wrote:
> Hi Marcus,
>
> The X310 is actually fulfilled by USRP-2950, i.e., X310 and WBX and GPSDO.
>
> The graph has been attached, actually it is very simple, just send a triangle signal over one channels from the tx (for convenience, I've only attached one antenna to the one channel on tx side, so that it is a much clear constellation figure on rx side). The constellation for such case should be a quadrilateral shape. With X310(WBX), the constellation at both channels at rx is very robust (the shape is not moving much), but with N321, the constellation shape is apparently rotating with time, and if increasing frequency it might just rotate. That is what I am confused about the N321 phase lock performance even with external REF and PPS from CDA 2990.  It seems to me that there should be some "proper" configuration/tuning, if this is not a bug.
>
> Regarding the 3rd question on what I am measuring, from the above description you can get an idea what I mean --  I just want the N321 to have the same phase performance as X310, since the robust phase locking is critical to any experiment when multiple channels/usrps are involved.
>
> Also to mention that I've tried all supported N321 master clock, 200M, 245.76M and 250M, they don't help and problems are the same.
>
> Any idea or suggestions will be much appreciated.
>
> Thanks,
> Ming
>
>
What happens if you reduce  the baseband amplitude a little -- perhaps
to 0.85 or 0.9?

Are transmitting over cable or antennas?  If cable, do you have an
attenuator in place? If so, how much attenuation?

Are you able to confirm that the CDA-2990 is producing a 10MHz and 1PPS
signal?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
