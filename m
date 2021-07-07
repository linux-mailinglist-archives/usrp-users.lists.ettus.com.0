Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C283BE852
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 14:50:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED8AE383E91
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 08:50:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="NMVv6LEs";
	dkim-atps=neutral
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2124.outbound.protection.outlook.com [40.107.22.124])
	by mm2.emwd.com (Postfix) with ESMTPS id A6CE5383E14
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 08:50:02 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9O+S7i6VGgkCt9rVveDT3harZ/zHVzbfXMwtWVa3n9gAevBcpJy302uREvjbo+Zo17w7UZW5DzcdTtzTI8oCYhhgDxw0LBKIjBp9QoEx+ZfbDBW1Qfzui4O73e/aJUu78uqMoFY/6ia/6oTXzbm5LHpGxkxR3+u5XHw2Rt+kn0OQbA4VpXsgTCuoXFRGzrLydQ0NWRV+48Qh3oX1rzlm7uCMR1AqZYmCKvC7Jx4l2m3DY3vf+BskPTfZolvaLM5Q7rmY03UHLK0Hvm06GqLfmO40fl0lJAPHgFBDhpYrOTqC1Fy3ZKoMxo1EKfBCORztU0y2iFmWL3BmBoQcnoyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PI3EGI4aJSx7cmTPyze1cf8Y/a3OmJ26VRn3bOq4eEQ=;
 b=JtAIdavu7KKkI21ckBl6rodCKKD57dVb7vdqthe4rGLxJ6YXg3Wm/mC4zeNXSExI2XCfrho/dRfTd8mMEJjb1gSNWymV4fXaoviOJZX6nuz9by48auuPYYjhVOumr3RLcRKrfGABevG62YLh3VjFyt5lkI+KnJCSE3tlb6sY8WeCFWXQeIdJgi+DBvCEvIZfbXd8ukgGAvx38PCixBLSPYDJKQSeUGHkaMlKY7+MS2XUnp7PySg5PIs06TtD+F/wG6PObukTbGufypaa/utfbu3UghUE5FKZWmj3b0AgCdLypi4/2fxLFx3ctNnAM83xchP2f7S+/iGNe4v3PI+5Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PI3EGI4aJSx7cmTPyze1cf8Y/a3OmJ26VRn3bOq4eEQ=;
 b=NMVv6LEsGHvIy3DA6xK1IUx1ELVjUm0f/dvju+LS7JXCephYymHJzJKk4p17HLY2sp6wpqvwVZt67eKDS0jIw1dNDDKb2g6uB0NP192Ir7QuUxPBtLYVzZmCctZWs1rvSwyxIZn2jJH//lh9RC7mJn0dZFgfgp1KYRwS2BaX+X8=
Authentication-Results: free.fr; dkim=none (message not signed)
 header.d=none;free.fr; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1429.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3fc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Wed, 7 Jul
 2021 12:50:00 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237%3]) with mapi id 15.20.4287.033; Wed, 7 Jul 2021
 12:50:00 +0000
Date: Wed, 7 Jul 2021 14:49:59 +0200
To: friedtj@free.fr
Message-ID: <20210707124959.5gbd2dfycsap5lcz@barbe>
Mail-Followup-To: friedtj@free.fr, usrp-users@lists.ettus.com
References: <811837388.29608215.1625652252148.JavaMail.root@zimbra9-e2.priv.proxad.net>
 <100428163.29631252.1625652473023.JavaMail.root@zimbra9-e2.priv.proxad.net>
Content-Disposition: inline
In-Reply-To: <100428163.29631252.1625652473023.JavaMail.root@zimbra9-e2.priv.proxad.net>
X-ClientProxiedBy: PR0P264CA0117.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::33) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:3354:b59:1b6b:b259) by PR0P264CA0117.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend Transport; Wed, 7 Jul 2021 12:50:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d7d22b8-976d-4626-c3fc-08d94145bb76
X-MS-TrafficTypeDiagnostic: AS8P190MB1429:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1429C42B120ADE1968B8069AF01A9@AS8P190MB1429.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b3K0TcLNkOqbNnhBlxHfDtRjieY8TVUVF79GADQo7tsxq/BU7+4No5BoiqdhsGpibVwphYpGku6R0UPdl3QhbkpH5orKuBrVHy7SkA2Bdlxy1ZhXE3bKZvTDtr2aLGpX8PUt8wbaPMFUrIpVNQI6W6C+OrVTKjYW8YPL7OIiP3UC1EsPjS0CiFmPia+9yK5YHRu2VD98fFKaYliGhp2uMpeFkjijqOw2W+2KxvQwMzxvakqB6k5tlxFPzRw6zrSgnq+sybPQ7Waoatt/rz0c1pJlSUFA0vxgGJT/y4e3e0F1f4KP+ySRphaqe8FWCN+m79FmXzMAoOYIon292oTjwWf3HG8WG9WPOmEp2sfS056ErH0nbviOPhvt+yDABphWvVlUlL3l78TWmRgznDuK2J5HL3BP/HIGacCra5xMZ2wJwjSDSCQ3F+PNZygZ0CaLqfFrLfQrD3AJvIuodtxHwIpKdEE/mwuq1QFya6ohUdgZRawJ1u7HyAQFGJF3wCB2r/r+0wujHKocvv4JJfGi1LATgA1uUOXgUhC9xbvAxy8/RERQBMEaI51TqmAhJKBlj2cEB8PNQ3cINs7ILOnC6RlRCrNgty9V1NCdXYkO3gR4za78cEykPrdV1yMNsFs2OSHpu2ZYndMwVNVcu8KYdOtXq2Bsd3Z5ExrFAdsCzzijuligm/JffhkDUvYmfARjeyunKzpBqPCx9Uqi3+/hd1oOVjzQXZZ529aPqBs5YGrgi/2P8y9qxc4jkMrfBGx1CQJ6YKWFDEETaw8/kAoXiFCwjiLd/JxLeHVWwXD4NG4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(39850400004)(396003)(136003)(366004)(376002)(346002)(66946007)(33716001)(6486002)(1076003)(66476007)(66556008)(9686003)(966005)(53546011)(6916009)(4326008)(2906002)(186003)(52116002)(8936002)(478600001)(5660300002)(6496006)(38100700002)(786003)(86362001)(4744005)(8676002)(316002)(15866825006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?xMUPP/ZW9TQZsq/whBCovNiqP5pNVtOf528UNSozYihWECcMwsW0QtkGMv?=
 =?iso-8859-1?Q?MIuuWs8PmN5pxBSrsKchiTSoaAXGfDpCoPMCSPxFfCijNBVa4tFUpNoGRG?=
 =?iso-8859-1?Q?xF55fj2vgSGNZIoumEm78ZZArqpvy7kKIOU+NQSWpMVVtw+/fp9vFNht3r?=
 =?iso-8859-1?Q?AyvFrdG6sJWcPokVYvdl2sJQZo0l6ffrqqzAzXLo1Z2x+G9EUzLFFLASn8?=
 =?iso-8859-1?Q?GP8Jvvi3pZc1APs5qd6QLhXe2VjsGyD9dEPsIQjfvx1OI6ywl6nMyWKbz3?=
 =?iso-8859-1?Q?FWTxhngLn+nZTk/e5zC/9duilctVKH4dVR/sZIeRqP5CJ+ftrKNrbbiAzC?=
 =?iso-8859-1?Q?cfquGrEYkzEpzAKhEUxISJcsYivkXwFemAJwXeGkxWGpm0BGV0nXVUkTbe?=
 =?iso-8859-1?Q?S282wf0fhuffv6eEfhQnw/AbVXFdf8KLuxSF7CLih8NOkaJznuH7gx0ywB?=
 =?iso-8859-1?Q?i/jmMkkAErLzYdmwawQq7MpUIitzW1SPsIRhqmcgG2D5k8z44+mglsIviI?=
 =?iso-8859-1?Q?3UMRX8kfNo0eFhJFW5FV6Ysd3Jg3N0VcmiRlUGnWXXgqHKMuxlKnqDCshf?=
 =?iso-8859-1?Q?s7dYz+NLNxmd5kGsuWqcG26HtnhnklhKBwZmvy9Axr5+gHa3HXA1FEdKwg?=
 =?iso-8859-1?Q?pUgxnD7VyFkpsdlLOm8Imfmf+6M8Xxvt3Wp1NjWBA01NYrSyDEFmkNaw3W?=
 =?iso-8859-1?Q?O1ayNs247DMTYkbJmQQHXVO6xo+5gaBEz9h838LSx5gYW+PhBiDN65q0uG?=
 =?iso-8859-1?Q?y5VEAImQT+Vb+GGDcO6GyzQR1DbSk2LPK9YJTjKdXEeP9IBEbE9ItDDw40?=
 =?iso-8859-1?Q?z4PYfKvJa1skrFiRRCWXL+gGkqGXVM5RI0D4zG+Bo/+XZJROUtVwdVfVxV?=
 =?iso-8859-1?Q?swbRpR/p4wtzS/OtUx/xdAGuXtkhtTIUZEAgJopU22QdRWcbNJARG/wgKz?=
 =?iso-8859-1?Q?l+DyoMIgsbd7zLjVkxpr1y0qOs0fl8GLKsMesb0MOAq+/QCwyayTItuswT?=
 =?iso-8859-1?Q?RHVy5yhIjVUM6bX9zNIAhffcZdJsQkOFrEzGJq8ufKJe+Foko4EpYg7AzF?=
 =?iso-8859-1?Q?Uj2bpApTJ6u6fvmLhXdcXOF3hPj7Pacx0KG7bgXLeE33bflOFl/5mKM+yj?=
 =?iso-8859-1?Q?7tewpULZxxf52HBt7lsGjbyyf1c8ExfMwKLMwGsRVR/sXI2Ofr78obGdop?=
 =?iso-8859-1?Q?UPjZjYiuIrK1cIgQoq1J7BkqNCwG7qKEBwv7aDXFRVLJVBPIA+0q9YDVlZ?=
 =?iso-8859-1?Q?sJUb72cmnJudrAvHA97gY5LWXLDEuWKWZT3TE9UsruIMBllCubcQ7AlX1S?=
 =?iso-8859-1?Q?wL6K0dORUBFsSSRrc3l8ub6gmsi0Y7lnOKkGNmqBfAQvROiNRSWkDT9z4/?=
 =?iso-8859-1?Q?MExxdi7lE89kOPi2fLdHpQFmnD7JhOHfQMMRMOGv4GvaiOwGvFzDi73Ek1?=
 =?iso-8859-1?Q?6HFbDa5ToXRQwvvw?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d7d22b8-976d-4626-c3fc-08d94145bb76
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2021 12:50:00.4990
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2yzdyAWO6UXTaNQGMN/KXNscwewZRH9/3hTCtwFrE1xfnawdTH7+ulqEwVaXc2G0hlMYDDHgQ0k2t8+fdktrbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1429
Message-ID-Hash: PWGYJCCIIP7MNPFLN437RVHHOIQOWDJT
X-Message-ID-Hash: PWGYJCCIIP7MNPFLN437RVHHOIQOWDJT
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 multichannel delayed start sequence ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PWGYJCCIIP7MNPFLN437RVHHOIQOWDJT/>
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

Hi Jean-Michel,

On 07/07/21 12:07, friedtj@free.fr wrote:
> why is the multichannel behaviour in a single receiver such as the B210 d=
ifferent from the single
> channel streaming? I can imagine the different behaviour for networked mu=
ltichannels USRP (e.g.=20
> X310) but how about the B210?

I think it is related to this topic:
https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?has=
h=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
