Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A881497653
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 00:29:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFF14384632
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 18:29:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=lboro.ac.uk header.i=@lboro.ac.uk header.b="OsPGoC9S";
	dkim-atps=neutral
Received: from mta-1.lboro.ac.uk (mta-1.lut.ac.uk [158.125.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E4DB3844C9
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 18:28:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lboro.ac.uk
	; s=lboro-1; h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID
	:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=PNH/vaX7zfnAxvKCkq3+7uqx2ISyiHGAYvXBXaTM/eE=; b=OsPGoC9Skz+HZ6/7rTHdS8GUsu
	5oEzxGamKwpc3ak69rF8uy8rT8sfX1qgF+eOZQvRsqA2c/JWkF3ET/cQqvy3cR2I1bwULFLs3mUFd
	mToom5Pc5sViM+4Lcp8hDmHga96wxnuNDF435ZR88np57nvAvpgNzyoa80/hfQ3oNgScbx+WX+oZv
	mJF6seJGsyIR0vCJ00QY2D27vq6Ut5vUdyNuWy+k/0omBxrtnmCXl3+1l1AFBsvpLPuloDnEijfUD
	RB0suYmVpbZ+Umz1I2FQKCVqIryNzgcYcD7/e0qTj/+8OE4DKt44POsTJULhpc1TV9PsFaZ7LvozL
	wOCRhY0w==;
Received: from itsex-4.lboro.ac.uk ([158.125.160.15] helo=itsex-4.lunet.lboro.ac.uk)
	by mta-1.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1nBmHM-0005cN-Ad
	for usrp-users@lists.ettus.com; Sun, 23 Jan 2022 23:28:14 +0000
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-4.lunet.lboro.ac.uk (2001:630:301:d314:90c6:812d:223a:24f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2375.17; Sun, 23
 Jan 2022 23:28:12 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e01::200) by itsex-2.lunet.lboro.ac.uk
 (2001:630:301:d314::160:17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2375.17 via
 Frontend Transport; Sun, 23 Jan 2022 23:28:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jp/UH4JB6KTLeH5qKrLDaBf+djNpqmI2UEu71nuyhwjkA5lm4zuPj9IX9vBd4aJjgCEOD0MY82gQcqOOJIJT9H8H/oEXs4LDnIImUlFcKsu6cXwpCD4UeLf+v1eo0zh1ZscNJ9jdqGTQf5ekgav1s1EMKjbc0MkGlruoZnff1XVPIttws1rKOsm383/SJh2AvkePHRcokN+rUg+MYsGxachj69Q1AvgPV2nC09Yk/lQ9F/eXwFjg6MiTZhIkETZb+/rMkDQSGqAsb6Qonlitza9gJHwVmKqbEfntJwc1GqoDJjhbjDRix8PqA8iOi8rrmfR1dPClHbxceaeq4PizlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNH/vaX7zfnAxvKCkq3+7uqx2ISyiHGAYvXBXaTM/eE=;
 b=aNVyXPcnOqU99IVYOyI6EhB8hQ1tDMnYH9qetAFdc6szx3346eSZ9yjDJ/XBGhNHFJMXEyk4uRISNQkXRrp0yYmHAPheMZ9h+QAaoB5FvP+I1f10by8M8PtWioBmasycyM8adubRU8f9EQDcbzlHJHz7ZTLB/x8BiMzZ62aSTlhVFodDSfG0R8hkzJs/+OsoMqRj93B/hsU+ICFHOWZu1Z/5/XK3KE54s9y+eAYWm6yeIUV9gyw2xqFWvMswjCJWpgWTwkK/gdCXTE58FJOXpIXtc6HffhYgPTudsQAJeavrbwaa0zCO9Gas4BF49mie8iKPaB1nYhAmfi3dXQBU7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by VI1PR04MB3103.eurprd04.prod.outlook.com (2603:10a6:802:a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.17; Sun, 23 Jan
 2022 23:28:10 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b%4]) with mapi id 15.20.4909.017; Sun, 23 Jan 2022
 23:28:10 +0000
From: Ming You <M.You@lboro.ac.uk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Regarding Phase Noise of N321
Thread-Index: AQHYEKz+/5Z2VScrlU+kJfaBqu42vw==
Date: Sun, 23 Jan 2022 23:28:10 +0000
Message-ID: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6d5fb149-880f-f623-a179-01a9e8f5fff0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cca25497-3da7-4214-6329-08d9dec804e8
x-ms-traffictypediagnostic: VI1PR04MB3103:EE_
x-microsoft-antispam-prvs: <VI1PR04MB3103BAE3DCCB51915497A675BA5D9@VI1PR04MB3103.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pUI5YDTur2Qbk1ht/Wep2UC4hH75wofPuqSIGTTYxOURxh20tz4ffPAUWq3PjlyZn7UgyCJGdoPFgv/yqZAS+I73FyW3+E4Z/iAAyhpOrtQJ+Cg0sBotbZhmyiFntGV1ZdVcV99FEQH6gZ6sSBn0/LP0Uz7h0a/SRRIcs2A4hp+1pifnllw5XPBJIw5dhPviIgLEUzH0Rr1sOIG2sGKMtiBu1UYmVzxPk6WwQHauwx15ClqNnAPrJnc3cEzyHrR74Jy9iqC42NdA8fnVtMv6OPSvfNQy6chbxSX8PS1YGRuiQrxsp2xS6SwGP+fxClKkYBApM0yDjg3Rp/qdmn24weEpBDXiowMsRpflULc8Udww3Uw5+SYAfuQTav8Nu8W5rUvSrKnZKCy8PFNuAwv0JkrrWAvzFKHWFoEhv7caOBW2hvjXWdfvqluLS3HjPEVjIXMl0AFZSErY4jrFx1zMLlDBOL0c8XK7vnbn2z9g1yydgGetSIdyzrMmli3+lrSd+pontutlKasO3iXr3S9slZcXQHzKYjz0KKt4NwZnSoDDFqCa26O4SVX6mkIU4YJAVlBKJ+2oMpk3TLRUUvZT/enhjpU0h3JxGE7kmgxXqNqfoAMqZiwUV+zyJegsFoELdNe5n8aQUCCSaqbXQPvjYv6A5a4ZiNTiXMVy/uCVEqCfzomNQvoTRTeiAdxm3fgLudLmZtRpB7zTjt6T7Pg3hMDTr2VKrWSE6pDZokMUbZsQDatlztwgHwFRrACxrt3nlklScQ/qYGrF9ddmdANp1s8fNNKX/euzLerViYSDOiA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66476007)(64756008)(66946007)(66556008)(66446008)(26005)(6506007)(38100700002)(55236004)(52536014)(966005)(508600001)(122000001)(71200400001)(5660300002)(9686003)(316002)(76116006)(91956017)(186003)(8936002)(86362001)(55016003)(38070700005)(6916009)(83380400001)(8676002)(33656002)(7696005)(2906002)(786003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?03ngx6qW0HRhK9rJnuJZEJweZ9+QpNTKct9xwyG+OTK2vxRz6nrl0ql8dp?=
 =?iso-8859-1?Q?t2NXN3Z3Mdzcm3PebUw977WZc3Hel0cpEXnHF0UFlOhP5FGW+fTPbNWKT4?=
 =?iso-8859-1?Q?XqCt5SAQfiCkc/sEVpTs2HGuc3Yj/bekXs5xJ/XVowQyqMyDLyQBeA8ZG+?=
 =?iso-8859-1?Q?F3dChOugSpMGbw0JOhvSiDKC5lVlPvl1H2wbzfjsCj6FbvYeBuQ4nVdXt3?=
 =?iso-8859-1?Q?TzXuimp43kDKvRwzDiAgTZJIMM4yNDyil5viEhY2zK+36GTBN2OLnzHpS9?=
 =?iso-8859-1?Q?qM9F/LD2evIDAOR0bsjiQO4bMumgVez5Zpyp3UDl3gRanewTzWKASoWGEt?=
 =?iso-8859-1?Q?ACNHgx7yB2mzjGipN/mYMC8Nh7zJEFzV37PrXoWGjUxMOaphtQkNHeVKHU?=
 =?iso-8859-1?Q?7ebdv0ghkAkEx7fzuHnswEHkPoQtjydDLp6QmN/r7rIgXtZTTIFz6toi4S?=
 =?iso-8859-1?Q?bxkLh48SZF36MR26TanuPKlXfXwPtz/Rmc1E9mQP9TQUAYxVvq2oBcTjF4?=
 =?iso-8859-1?Q?+VA/wKwz7iCQDxDvE3lpPagQjId/hTL9f5lRCxbVJckqLL6nx1SLJ/J586?=
 =?iso-8859-1?Q?f97FuZINYr5MZ75G8gWEOqLH6DR//eFCuN05wx7EyrXqZr68M1vZTd39m8?=
 =?iso-8859-1?Q?xgKnpHdC4HqivP5bNGIXWPGJT7lHUaDQFrboDbgGcWfTG2oJ7Ms5IGtKDN?=
 =?iso-8859-1?Q?SGKRM+nAiFtXKENkp7UuVtuALuYl4BqmD7klzyQ6+AI4TA0dTXhmvC1dWB?=
 =?iso-8859-1?Q?c+ZyK46uWziUddbHvmqmEvEG5zqImXr541l8N4++GZ0mvjIWWg6IfKE4Bi?=
 =?iso-8859-1?Q?c8zAG+JN8htf24ieDqwII4yM3mKIcSjq1iUgFT8yFrOHUOIA3B6KEX6EWI?=
 =?iso-8859-1?Q?YefWLHjxqd13sfKdCi/mM8meIx7M/Xb4M9fJNwfHr/sHjjjbinsk8+PmmO?=
 =?iso-8859-1?Q?XRCukvGLf9FRZUgiMU00AntmATeVhqOZ/Z3YMo1vJ7caef7TjezxKmZkV/?=
 =?iso-8859-1?Q?UPkRZzBZ3Y8VZu/rDYoFYF36FK4lbcqozDUNW9RHr56pOOmsl/4nrRKSeg?=
 =?iso-8859-1?Q?wp/0SKHcJUlA+oWA9C1ZvR5CyJ/bB0irdIRsKAM1w8qkfdH0+AkVNikKXO?=
 =?iso-8859-1?Q?+s4XUKEHk1fOHPmJMlVEjiuvg+c7zVtzm3mCFvWWsLH8Vg7flfgpgmnMvw?=
 =?iso-8859-1?Q?oMDIdlHjf6D39YHvKP94+kk9KnCP+pDIIAhtPhWp0IGIgVtBDgCxnFw8pm?=
 =?iso-8859-1?Q?fo/c/akv5BOWDu+MHDHj4Mxj9hovCCdTiMOHQTp4uRjlOig1rjthIWFimU?=
 =?iso-8859-1?Q?i6WaI/6C0ubnKFa7eaxoOfIAxheVjJxuh00TXqWKfd3mNHZbsBe7XJjurd?=
 =?iso-8859-1?Q?MdsY7V6Rcl2LR6e20DQ11yh6IUhEBDWKqJR8BCHkXbAA3HN3tbnyTTNgEa?=
 =?iso-8859-1?Q?iAgc0juA9wKcQ8Bqq3ALbHUoZJf3W2UdNEfXQAQHbbw4qk/yVcSyoMtTIW?=
 =?iso-8859-1?Q?eOoOewe1Zo4AUmQoYz5AldktTWEEDjysHeW9PaezOMAUy/ysr1ry6vcVKQ?=
 =?iso-8859-1?Q?KZ7SdenqDnoEnihWctDTydW1Ab03W1Zh1u0RElHd6kBWMEkTkwFkmqyChD?=
 =?iso-8859-1?Q?CKMQ01pO0ftj9CVdr6FR5e822yaBPgqNyoVsOJcarYf/ASpAg47wYecQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca25497-3da7-4214-6329-08d9dec804e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2022 23:28:10.3831
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8jN1aV+cYk73ES7toksshVphshAOJOZLO2n4axdtNd2C3Kjv2xjAzcH5nuP8OeuIwarSCuIW1QbDs5JcW8qeBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3103
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: c3a4cac3c354ed0800b0a8476b9afcc5
X-Lboro-Creds: scanned on mta-1.lboro.ac.uk
Message-ID-Hash: FITPV2DXB6CGUP4SW5NUYG6BPT4BTHVY
X-Message-ID-Hash: FITPV2DXB6CGUP4SW5NUYG6BPT4BTHVY
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FITPV2DXB6CGUP4SW5NUYG6BPT4BTHVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi USRP-user list,

I am writing to see if there could be some help/information regarding N321 synchronisation between multiple devices/phase noise, and/or any suggestions to properly set the N321 to external REF and PPS with CDA-2990.

I am using CDA-2990 as the external REF and PPS source, and I am sure the configuration is no problem as I happen to have a pair of X310, which shows an extreme stable phase lock as expected. By controlling the variables (i.e., only swap the x310 with N321), while everything else kept the same (cables, antennas, grc files in gnuradio), it is strange to see that N321 is not stable with the phase (seemingly not locked to the external ref). 

For the grc, I was repeatedly sending the same sequence of waveform, and using CDA-2990 as external REF and PPS source to sync. between rx and tx. With X310, I was able to observe that the constellation is robust and not changing much, this is expected, so the problem should not be with the signals.

Another observation is that the frequency bands I am testing is 900MHz. Increasing the freq. to 1.7GHz will result in worse phase performance in N321, comparing to the 900MHz case. Any idea or known issues/bugs with such observations?

I've also followed the instructions in https://files.ettus.com/manual/page_usrp_n3xx.html , and add the enable_gps=False as /etc/uhdmpm.conf on the N321, as well as device arguments in the .grc.  

For your convenience, here are some basic background information about the UHD/GNURadio environment I am using:

GNURadio  v3.8.2.0-111-g6aad98a6
UHD_4.0.0.0-104-g8f273305

The images for the X310 and N321 are the default HG images comes with the UHD version above.

Any comments or suggestions will be much appreciated.

Thanks,
Ming


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
