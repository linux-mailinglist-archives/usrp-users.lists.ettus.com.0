Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0111338C88E
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 15:43:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2344385BA0
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 09:43:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="O8PmmPZI";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2134.outbound.protection.outlook.com [40.107.20.134])
	by mm2.emwd.com (Postfix) with ESMTPS id 928B83853D8
	for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 09:42:24 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQ7SSoBpRkSfwQTWPIYwBV7ZJK7OHwy4wzLyQJjCibJI7a9AqF2i1d9fpWv4fMaVDm9jEOWJqcc+KDk77tTCb6/vStF4WLldGLSXzr4irjx95KaujiUyN03Whm/aR+MDUjYn/mtnyKE5+nTwQaGfZMKgrGDOz/mpHkHgok5VIQT43TfTaDWATQK/IuUf1NzPUzCFr7dsb4pAueC2lQLPPOdmdjXuwjiJPirXCyn/hvF+pApifRPMsZev+mvmCU28kEAK19RZNZr/MgdUvx+uhexMeEEr/6F9AU7ekKtAE9bCjn+ylsjbhsx6Q/dtPfb0jEU2zd8/GM1AtArQ81DrWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+agh5wTFNJV7KH3P9yYlETpG44Zp3WCU1WNSQQEQNg=;
 b=Ts+CYcreraqPsyYEGtduR/lSTRm+G09CAwnSFSHDok+wpSSwDjFMojycOnuP9mXmJ1lnAbVnXumpkVMWVVvzqU9fORFLfRWTFUsh2ONOMC/da+BgdhsD26DwSYaTEqcx5JX2UxYZhDkFXeBkd4Z+9SzQv1zizc+LUmSo6pu0+ULOBMgWbEmlLQrfy4hWV/KwDLiukDDJgAj0KTohst1Ib/IZB71deyESWB/18dvfmdJyx7G7IcTV5HXV44QS81W3Eu4wso+uwzK4BqGz6AvE6w57wocRMp3c5vBuW/OoySmPoZXrT4pIsoxqOZQA+h63vFNpE3p4NxnOLZQjl3ttcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+agh5wTFNJV7KH3P9yYlETpG44Zp3WCU1WNSQQEQNg=;
 b=O8PmmPZIrqqp8Fx6Cp4+5sJugHJa0wMaBuTFJ6NbMpEgDSgTlKahQsGXMA5CPfNleUBwzn0HiuqjgDMS0lJkNQLeD3f8zIqTskNUww4b+ydU+JXGwgGc7FwBnLh446dXR6DuohYmfGdYmuYhuXwGFjwujBgw2MZzq4gni0q5svA=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1158.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2b7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 13:42:23 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%5]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 13:42:23 +0000
Date: Fri, 21 May 2021 15:42:21 +0200
To: USRP-users@lists.ettus.com
Message-ID: <20210521134221.jnh5mms6iuhoghos@barbe>
Mail-Followup-To: USRP-users@lists.ettus.com
References: <20210521094441.yvoqqxrqv7ioh23v@barbe>
 <157DBD65-B914-4138-9752-C21735C0AF8E@gmail.com>
Content-Disposition: inline
In-Reply-To: <157DBD65-B914-4138-9752-C21735C0AF8E@gmail.com>
X-Originating-IP: [164.15.244.33]
X-ClientProxiedBy: AM0PR04CA0025.eurprd04.prod.outlook.com
 (2603:10a6:208:122::38) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.244.33) by AM0PR04CA0025.eurprd04.prod.outlook.com (2603:10a6:208:122::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 13:42:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85412713-c63d-4e0b-61f0-08d91c5e431b
X-MS-TrafficTypeDiagnostic: AS8P190MB1158:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB11588EE95B3B4EA8D1B386BEF0299@AS8P190MB1158.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ca6JFNIR0OEdEJNhXwj8Do8JJ2AtWqwr48NeWFqeclLXcjtiA5rUkVhHEUHGcqEyzSgqmHvOrR0z0UmHdXOf1A5L851LnCXx0Tbvi5xpLRlRaB2W7hvdqQM1yHkVdCeCo8YnSsTn9AtOKbt/3zlt/M2vsvrMP2qGTrtQKAGwUdBvWr9kACQ1RDkZ+h6athIRf+1BR1b9ofVYuRRNl7uvqvuRiaJRyfFkK5SFyoJW0czck6tiovhcxId/LTk7dD6YOyHSe7lBIirI048O6gqK2ZO2f7c5FdXmylqALncqQU6RboY3iSPz5QIEdLytaOpP59unJrXn9alswVrB6vQl2/UUH4cyNh0sUH3Gva8YVejMFnNq3OA7nKUgTlPlw2Sh0L7Wws5Pw7TTXo/IYPKEPkosrlr6LsZEIa3dYRj5d5nK+AfNRt3U2Ub7TfGlWS5ss6RAQckY2xyNtwPOq2IH03MvPjgZXPO+j4ml9ULbySzyDExxPbHjREujKGEd4n8YCfxL0Qh3H5BxDZF+YhWA3qddl8EPBsmxQ2x5f2hg7QksTW9vhs9g0rgBcvVUa5Re5IN8fBrNoCi7kcRVpxJB7gYlSJx0rFNzDG8t5wRRRsjbakYU6Rb5NAqvXOd4WTLtcr47FQZ/yBW4OesCsEcXWoLC1ZVKL8ztIciGDduX8ls=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(39860400002)(376002)(136003)(366004)(346002)(396003)(6916009)(38350700002)(8936002)(38100700002)(83380400001)(786003)(86362001)(6486002)(186003)(16526019)(316002)(956004)(5660300002)(1076003)(2906002)(52116002)(53546011)(6496006)(8676002)(4744005)(478600001)(26005)(66556008)(9686003)(66476007)(33716001)(66946007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?1WdEBOv6BncT85bBV9B8I/FF384Th447naqSo5Wdvu3mYZUwz5fcoKkEH4?=
 =?iso-8859-1?Q?BP/odLQrV3imOUYCCAYLzLgiyzY5nTV8qSDssudfCx4n73FfXlFgEQN0k+?=
 =?iso-8859-1?Q?S5vwOfnXbc8ScR2Yfp1DSZJyswY/u23wKMpEJtBxekgxbmZlCxzvuC5Gt0?=
 =?iso-8859-1?Q?Mo94tQg48aWxTS9/ACBRIq+wxgj/0qWBQZLp4TmWbBBRON2U+DrUkEXN7J?=
 =?iso-8859-1?Q?E53wauCz5eZ2RkpuYmbJB+5tGEwmCQv4yCv5+tsJ4H4sbe8OtN2MEZr52/?=
 =?iso-8859-1?Q?DsWl2R14jM2JT4wkp5l5V3WXAuzzcNaVYcvU6pUufSwuTHPgvG2pK/+lAW?=
 =?iso-8859-1?Q?ReBwzQJSuQjV6feCHO4xf/z02E7sXUqiucfIYxk8DMM5DC3qyIXKR9sXH3?=
 =?iso-8859-1?Q?DImVo+EtUUqxg09Yv5qUqA0Er13nWVTh1wEPsJhuBZf1wnRaZLoYKVPkSz?=
 =?iso-8859-1?Q?Eqh/HS6TGZjJVEhtg3xPkWKPOzrM6hKlSFh85pPtsxUYjkoLtAgFetVUqk?=
 =?iso-8859-1?Q?9a5lke4X/1qwiaHrkbsBT51gL5MG5sci8dCWUb67MlHjK4TyfWAxh8UO2T?=
 =?iso-8859-1?Q?Vnff9THDDfLip4gdKb9AfU9BTK87+Re6Rsl5cHZw0/AxQ6UsTmOuWeYkJF?=
 =?iso-8859-1?Q?rrMZlR94N8oPbW1LyjyKWvtanjslAPYWLKbvY1DRz+Wh92cbNDwzhcbw/l?=
 =?iso-8859-1?Q?kZNAA1xqTvAO1CzIWyL/h0n0RiFYozMQZDWiqDvpxVaDmefPEdcYWqAe8Z?=
 =?iso-8859-1?Q?e9YoWrnR7tmY1ZnznUvnXPACc+bcTRGaYOvSZwr5KJv1CgFSFQBTVgIvl8?=
 =?iso-8859-1?Q?PzW8AGftLhCYXR5V3yP+IavxhktavTLjF7o/YUaoQUkzaMMqO4Za7YB9Fs?=
 =?iso-8859-1?Q?0QKliTOhQRjGsG+5SNpCj7cNXi2xpdQR0M9T+K/0l9BHMl5LfghVVH8oh1?=
 =?iso-8859-1?Q?V6dgni9bo2ieoeMFtLN8oKlFfS8MrCmhhLkCAogm+yh5nlR5RX+dBo+YmD?=
 =?iso-8859-1?Q?tdkFMOQP2aQM/Y76Ucmk8VSwY80GaOAl4Ys+j8lEdUGsFy137h/2C6+tlm?=
 =?iso-8859-1?Q?GAvwISJTdWLQGsIAKE0t1XZmwntY4p3FhiSJrhTZIvEZCcaXVqBMZlRcTv?=
 =?iso-8859-1?Q?VEEYUpmaMtOmLaLQQeXL8Gm0MBDxgwo8vq15HCci9y9KmYiPOYmRvYVEdw?=
 =?iso-8859-1?Q?ccr8UjlCAiiCxuDtgKJGVwKjfDRw7Uy3VhT3MEC4KJJuIC47Chk9cEVMQU?=
 =?iso-8859-1?Q?yKm5SD9wCHsChDKBpkBwGc4fmdB/rT9lvlJwt47qyTVzN4rFNzhtm1Rs85?=
 =?iso-8859-1?Q?6akCRfu8gWRMrusUoTvJhhayjkpI7heecSJU9DRzAy3aZtAy5Haxg++++d?=
 =?iso-8859-1?Q?/j/midfiq6?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 85412713-c63d-4e0b-61f0-08d91c5e431b
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 13:42:22.9530
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtrA4ClKXmnD2HJ1fmgBbYtEUI5fEgBC/ovq5y7iM1TqC5s1XpLnzzhpShyHVQHOVDxdX8z8Id+V39vx5RqosA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1158
Message-ID-Hash: 7IC4GPGTTEZA3KCTRGTCDS2MZ6TFGMOF
X-Message-ID-Hash: 7IC4GPGTTEZA3KCTRGTCDS2MZ6TFGMOF
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 died
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IC4GPGTTEZA3KCTRGTCDS2MZ6TFGMOF/>
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

Hi Marcus

On 21/05/21 09:00, Marcus D Leech wrote:
> Have you tried disconnecting the batteries to see if it will start withou=
t them?
I did not. I would have to unscrew and open the enclosure.
And since I do not know the policy of Ettus & NI,
I would like to avoid the unpleasant:
"your warranty is void since you opened the device".

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
