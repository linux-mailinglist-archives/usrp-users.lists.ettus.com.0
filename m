Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF728D385A
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2024 15:49:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCBA43857CD
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2024 09:49:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716990596; bh=syGJnpXj/CLN5aFUKENCCxplewUYk1+yFPuk+orbBi0=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WyKN6Bm1luHoxlWZ4G4rhUtoSyTqjmk4XA1FllkuErjqLUgYrsEPjIEaf/Ebq+oOp
	 WmV2NLVPXWHVzYwrTLVQy8dUb5hZzoz6bNGRYqkGhZSEvHODm8Es9uAVw5y2Zwcyyc
	 qNW55zfeCNJW8ebBZIW5eBUn2GSZbRlc22i1dEix2o/AQND1JYyazb5xwBeQI4NQPu
	 pHXrgMy321/wXYY9Q43xHkmXTxLmHm/6A6O6bBFDKNas6K+G56KPYBp47p3rGHZqs4
	 X9VBxtMgFe1hOwYGUo+NSMO6K1JGJYcUof1nVWzkyt8ZVyfCwMx9HhlrutE2GWbMkq
	 cwmYw8Svvgvyw==
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2108.outbound.protection.outlook.com [40.107.7.108])
	by mm2.emwd.com (Postfix) with ESMTPS id AEEAC3857A4
	for <usrp-users@lists.ettus.com>; Wed, 29 May 2024 09:49:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="lKjknjJL";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SLG8WXRTdes05MPnXgbhxs7v/OwuAwPBDgyTVH5Cql95Lo3EHEmhVSPpQaPX0zgSiaNeHV+9242y3IXuYgKTP+dAkvtizgDwqQBxjG5GuWKW889t4kUIhMlOo3knDFt2sxIgl23JPePRDxOy7fZxIaqRxMWJTQFt76bYnKtFOlXvsuixK6L3YFYVk+vpFwO3tgs3HuJqwrO9B3xTeoPHF8T1kN8c0m8/Fz+iRGgCSeIRsEjoWqhx2BBOwDvau8pKSNHGsKl+Yg70KbJWm5oDP0wq0xZ4lXE4kejaoiYga4s/tvtAZ4sVAJO/INAWWrNxgVUJ0IF6Ii7dJ1t/l/zMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EqTW4haapDsn40Q4uTBQNTGd+E2cojXRDlHvjHEAq3o=;
 b=LwMX+cB8s+HJ9uAR3n+LRkjaR/q3b71eS6UOlpHIfArZu52TkaDbTpGsTibVp2/24DTOB9ObGBVwiBoj9ue9LaArKrt3P9hMjVWn8uB6LX4Nrgl1Wv2sweV+q8e1gz+kDwNc0a71zQsiWngjIhJcKfP0a2HH6/uhUwrNfrYNJv0Mrp3WTYNJamfI1A5Pxuz27a3HxjwC3smp67kIcb5/HrQpHuSncqQT/7hNM6F4iRZ0CGEvwwxRVnodzedQtrq2WOFGPrULxei/8pbz6iJy9807hJCnCJRa2674G9ZnVlQnSkFPuxvwg1IeH3FWeUO/DqL81lCivr6C4aDcfdJdyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqTW4haapDsn40Q4uTBQNTGd+E2cojXRDlHvjHEAq3o=;
 b=lKjknjJLqky3yV2rPwq+GYQ3fkVjqCqGg9Z4UPxhgM+YUR83RdfaOKJ90cheCdM5WH7HnifM19LGJRW7cOlB19l4DIuV4Aw0DhRkDTmWPB8hGklrX0DDhjrDxXKRWC1CGiQ/l/ESiZbmahRIUXoCSZTXf4khkIn1YtxelGRs8Ho=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PA4P190MB1216.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:10e::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.22; Wed, 29 May 2024 13:49:05 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957%4]) with mapi id 15.20.7611.025; Wed, 29 May 2024
 13:49:04 +0000
Date: Wed, 29 May 2024 15:49:03 +0200
To: usrp-users@lists.ettus.com
Message-ID: <7g4l4dc7eeisexvghhl5udr3claawxcyrtzzeoxx367i5jwzgg@vu4u6jnrhwyw>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0@lists.ettus.com>
X-ClientProxiedBy: AS4PR10CA0030.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::11) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|PA4P190MB1216:EE_
X-MS-Office365-Filtering-Correlation-Id: 12ead700-49ad-4480-c716-08dc7fe61abc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|52116005|1800799015|376005;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?nlzsFx2awRmymf4/E318chAgTkfyPDFuua6ssDjXc7H40LWG+Dq4VpMWCf?=
 =?iso-8859-1?Q?wf7jKQCKyvprGRk7SkkALK+Pm3n25TBu0+/vonPbkvj3mxBfkMAoJ/w/PG?=
 =?iso-8859-1?Q?MZv2Xp3onErg2supQD/AUJgRCi/b8fr6i93+BpR5RAf2omKjia9C+jJoW0?=
 =?iso-8859-1?Q?OSuWX7+yh5m+DGsSWZJiFTP9QFWMqQ6Ed9RAmWPx+WsNWRdwW4XynAsbRI?=
 =?iso-8859-1?Q?3f8+lxBZ+zWxxvdCDEeuPfLOl+CwNyI1VgxIfcOtqv3rZfFJ0gu/IlNem6?=
 =?iso-8859-1?Q?11U17152A5ia8jTm5iRWRx6/s83tRNdAPzaZGcVZQmxm80ZyZvlffOjpQN?=
 =?iso-8859-1?Q?0BLE/wK+SIKy0lW96bTt5b8mCZlNR7mETsrxCPptyd2djN8mgOH0D+XJF7?=
 =?iso-8859-1?Q?ctf+ZiifbXyNRtwQp0eguDI3dM3d2Z6Npl3ergzSL7dxoDVH6Yg+iBM9Vx?=
 =?iso-8859-1?Q?BvLYr1NIaOh544QaBZ+adlVv4yWKjvVVPpcMgHc+DQV+s8PL6IUC5dOP0v?=
 =?iso-8859-1?Q?31dbjb2pY7dWfbqwrxdLr2t0ih+SntXzEHPvhIKP7qEWDq/KB4iAJfS+78?=
 =?iso-8859-1?Q?eCtayMr45KXibCTu4fwXWXU8vmR9G0nq+c7DtBif/PWFJiu+atzU0xiSos?=
 =?iso-8859-1?Q?l/G95YepOBzlY2oHotsNtjMZRtfCY6wAgAk8O8EQ4htIagLweSh5oz8wBA?=
 =?iso-8859-1?Q?Bo161pSs6q+aXT21UYosf5vfm+k1d8jKw3keEbefiDh+Em1XDulbiRKsin?=
 =?iso-8859-1?Q?vxGNjwscp9giG2UsPqOZQoWiXVoxtB8qiyErX4PWuHHN2PH6LIlI8sAPWv?=
 =?iso-8859-1?Q?p3MKAKDcfeoyT0su3YSt3MaY4RPJOXh2dSTyqd6CpQf9Zz301kFD9y6TiH?=
 =?iso-8859-1?Q?vnR+lCEzKCng5RYUGoho2KGaDGUtZ0ksFKnuqapo97QH9h4q11ZzExkICg?=
 =?iso-8859-1?Q?+OyJ0kWfePU5WkSBhVKAjXRRR56j828b3iUmjj/4eG86kvh1dFyqLyHqSW?=
 =?iso-8859-1?Q?wnQ1r/q3xh4LKqTIf/PIpQOMriq/GCcZEuf9t5tJq8oe9+hWEd45QLngd2?=
 =?iso-8859-1?Q?u3Zi1nw2sVDHrpT+8wXMeiu5Mol7Lzd5WZY/lrpEVnx1sv3yjOz++JXujh?=
 =?iso-8859-1?Q?cc3P+IlY/N51yL1BsJqRIWuCvexaeairtyq8ux+8zXxhV+TYwxBEBTSn7z?=
 =?iso-8859-1?Q?VjfyvA+aGSpBouL8PdOynmBbdYzNW15XQAi8PKwR+L5TkiVnSVOhB0/ccV?=
 =?iso-8859-1?Q?0XIS/vVfxcoBF0giPPeMhFv9cvJsvaFCC5LpgDT9k=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?DsvHEjyG7t/GVZCD/qKXOjHFPkyipIHRzi1TeoBSwWjvQlARL1FjXOe9hO?=
 =?iso-8859-1?Q?06xhJc9x/3DkrsFgr4hH4X7SMrVyV9AI8QMhN7PBmEQbj+8MbTiow057Vi?=
 =?iso-8859-1?Q?UQslM7E/CHBAP/ja2HfpTR8aRPYvhJ6St2xzj0P8X42LMq3MKsGOtXMIXA?=
 =?iso-8859-1?Q?omjCmfdQkumjwS/qhsb7TmoZMedUwttAIv2ZNNaA9oRpcsEgatqov7sL6R?=
 =?iso-8859-1?Q?nrduxCA9vqtbnoaYFwHHYQbdAnkoemFBfAgSgyQbgpsX0KJ4XPNsZnjDo7?=
 =?iso-8859-1?Q?F/YyuECrvBb5JtK/+BuAmRaSs70ufxtPRQEePozLVoL3e+myJFCEIKOiOh?=
 =?iso-8859-1?Q?MCdPQ/3N1CdQzjJ/Wx3OxqCM8pSlwbdk6xsVM8Qui8dgkBwVR5RxMr3MuG?=
 =?iso-8859-1?Q?8U32XgiRhpjP2fSYVzyrlGbpaMDIjqlXUnvbLvpatp5W6RpC5urnSHzU/0?=
 =?iso-8859-1?Q?EsIRbg/CnrsPhz8SesKVU9RLHtryaiaqwxBI5XaTZQKD4jTP0VlZnWk9CR?=
 =?iso-8859-1?Q?I5z8mZDxxXrpRQuQVblMzWpb3t7zEkQ3DL4u2RTKUN7U8RpmHB8QNroLhR?=
 =?iso-8859-1?Q?k6+IRQv2dkDzdhutAX7BHvrAnlwe5muCnyuzX4YJXszqrCuUU7HKKOj6YM?=
 =?iso-8859-1?Q?Y8Q4INNewlDhVbRQapH3n3Nu0LGWZI8oCmokWpDDM0ywXSK6tbJG+hHllS?=
 =?iso-8859-1?Q?HPkw1TIBHe9UU7owJqsY/uXrrfqNpy+D0XbyICyAF1t8ppbptTkXrQfOrX?=
 =?iso-8859-1?Q?cVWpeaA3cPCuuc7inmvF1x6UrUaB3ivIyTuv5xiLRnBoAt6DEDEq4cuTqO?=
 =?iso-8859-1?Q?mqkjDI0IYIjm2iuuzS1FbBKffIr+N+XqvfBHXXlzJW3pvCv9JizDjGswRE?=
 =?iso-8859-1?Q?mMXkJd8PaxUUp45FQQIVxBGeMyIAI5v2Qt/4fOq7jHrbsCKRqVm0kU0y0r?=
 =?iso-8859-1?Q?+BYDTJVYiqRduwiQZ1ytLsAcXYi+M44dSsUvnGzo8T/mWunID5zjLLrAF8?=
 =?iso-8859-1?Q?O3RSZWfDQmmXC5o1B8wOAKyu5u+ERoB5A6Ozu7O5jrDLxgCXanxmqe2CKV?=
 =?iso-8859-1?Q?BvxTFBmcTiXk/2TlBiSgcZ0GaW7HNdryo2Ue9vfYQiCiaAOKn+MGBkxUZk?=
 =?iso-8859-1?Q?Zu8uJWWN2NCMppAMk0oz/N8sYLEweSZKzOyeRak4nlh7k0cHyxSg6Gykg7?=
 =?iso-8859-1?Q?s87HV1k6LHUvcKHyHHniKIkb/OtexmnsYE2mQSRQxip31ymOZGFwnPQ9hY?=
 =?iso-8859-1?Q?bZARIWDflOgpyP22LzqS+/N8ROc80kcEHfveYez48QLbuh9/5a8rAyH/RA?=
 =?iso-8859-1?Q?PC9Im79nfX9er8iW65YqRcrtKTFjbY7jvvp2jgkKMVCkEaKs2zsfVqMWOn?=
 =?iso-8859-1?Q?6CrHyrKT0yOreAOYuRQIz2Gi1zyheJMiUqopbdyXWW8cOT9aO36IxwgNQs?=
 =?iso-8859-1?Q?lkT+zYduwoB7CUJBaNkvB1hI976y6PwPEsKmF02OgS5I5Mf22Ui8u0zgaU?=
 =?iso-8859-1?Q?+ExrpyGKycDUDSDNBm6xsd4EBcQPLTuz0gpSDEYG+8J83wze5O9ivfgrLj?=
 =?iso-8859-1?Q?e8TLxVNzOBf2W/cFcggqcfdQ8PI3VhXn3hfXf6cVKTWNZIhcubVw6n3qbx?=
 =?iso-8859-1?Q?DI4AEKNxC9Pd+DO9xE8C8TzJQFc5c9REp+8ext+cQS6LtI0IOnPUX7YhAG?=
 =?iso-8859-1?Q?fVAtoS5mVxMNjaVcd//EZJljKJFiE01jX6tT2G+BEN+gJG4qMgox8ioMXZ?=
 =?iso-8859-1?Q?LEvA=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 12ead700-49ad-4480-c716-08dc7fe61abc
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 13:49:04.9268
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OGhi1pp+ItYBWgDwThbCO3DeRpJazQtx989zRZqTvbKRXY816ws4hcX65QaPO+I5kL63K/nxnXvnJI1Wt1buyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4P190MB1216
Message-ID-Hash: BC74BCHSB5KOJOOAXKX36E6XSOGDRPCX
X-Message-ID-Hash: BC74BCHSB5KOJOOAXKX36E6XSOGDRPCX
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd unable to find header files.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BC74BCHSB5KOJOOAXKX36E6XSOGDRPCX/>
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

Hello,

On 2024-05-29 11:32 +0000, je.amghar@gmail.com wrote:
> After developing a C++ program and placing it in
> **`/uhd/host/utils`**, I included it in **`CMakeLists.txt`**. However,
> when attempting to build the program using **`make`** within
> **`/uhd/host/build`**, UHD is reporting that it's unable to locate the
> C++ library I've used, specifically when including
> <libserial/SerialStream.h> and <libserial/SerialPort.h> (libserial
> library).\
> \
> How can I specify to UHD the location of the libraries I utilize in my
> programs?\

I think you have to add another `target_link_libraries` [1] in the CMakeLis=
ts,
or modify the one already there ([2] or [3], depending on which set you
included your file).
I.e. one of these two:
 - add `target_link_libraries(<filename_without_extension> serial)`
 - append `serial` in [2] or [3]

[1] https://cmake.org/cmake/help/latest/command/target_link_libraries.html
[2] https://github.com/EttusResearch/uhd/blob/041eef3472e0440730708053d47b1=
fb7b793c682/host/utils/CMakeLists.txt#L120
[3] https://github.com/EttusResearch/uhd/blob/041eef3472e0440730708053d47b1=
fb7b793c682/host/utils/CMakeLists.txt#L188

Best regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
