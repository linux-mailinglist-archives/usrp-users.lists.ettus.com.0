Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC6B4BBA43
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 14:45:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90434384924
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 08:45:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="SE0CKEcm";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2104.outbound.protection.outlook.com [40.107.20.104])
	by mm2.emwd.com (Postfix) with ESMTPS id D230F3845A0
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 08:44:19 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFieqK7k1YTYWO0U5cLBZjr1hy4Dij9elpWAjMgftIuqGo0Q96oSqnHAEB8k3+WeucxtvevVRsgKLoQH8vxYqmL8HdHVtR4NGt85eu8j7+TFzRDE/6Fw9YoKr4/yx2TY6ePOjlacb/e7bEtwoja8la6DGTnQh1T7unz5cIHjMYBff2Tm3mmG92PQ16ifrxPi1rElv+hmw3Yl56QPs9oIGtEwomJ0fJVVf7P9NZbDDvyFkUX+Y6MsK9YOg8gpNUgvHfi+a35ug2xtaABs/KaKkqKJ5F5MO3i9NHymB3LDO+pV42ha3YaJlnTk0lNDfyy4wVekzcSIBiyPp2bT4aKd+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R1UwBAshIldS2cSkBnPeRVoxsmk48SyMAlFZMdeNpdA=;
 b=CBtW0k8uMh4vqFKVcFuHO34PhO93ZAWIzNRu9UySo7ytyM+70LRD/k9q3+C+V5vfZXbVuaSaNXmGUqoASFXHyn1WhsSvl+wL1lZJwJMmyc1XdsLgU+6EkVjzZi4Z4yUzJJ2kVZ9wbIpxkdjbHAUGvSH7VjxLl5rFMDis55F0HuvHlSI+bLgjfxEtj56wAHZRt/7PvLr5dlwSnO+6kuHNCDiKWygBPn9xYQA1hf1XbRVTERARLgloEA1NeW1zM3JbneLpvMS2krXS9aSGp97jzdLgld1kUkfjt6MtPTvBubZwXpxE6goh1HDY/CPXBOExNXxlEs9gmO+n9MK/IEmkBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1UwBAshIldS2cSkBnPeRVoxsmk48SyMAlFZMdeNpdA=;
 b=SE0CKEcm5JvTE6DHpw+RorUnmiYb6HQmUEJ3r29IApMrSXzn2mrU0+TwpcNp8d4C5QYcTpwJeCBCgljnlPiupSsF+EBZB7iqOLdh4lzXxSMRc5uAZGpM2gAAs4OvUcAZ0LTmB8u09twsv2iEt8feCpEInRNG/dBvnqsKcuodm+w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1189.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Fri, 18 Feb
 2022 13:44:18 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::9930:3526:4b08:9530]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::9930:3526:4b08:9530%7]) with mapi id 15.20.4995.022; Fri, 18 Feb 2022
 13:44:18 +0000
Date: Fri, 18 Feb 2022 14:44:16 +0100
To: sp h <stackprogramer@gmail.com>
Message-ID: <20220218134416.vbqfwvueqa7cjm4i@barbe>
Mail-Followup-To: sp h <stackprogramer@gmail.com>,
	usrp-users@lists.ettus.com
References: <CAA=S3Pt2bDbj6K8WGi1dh1=nxdGtgibAuB9UYP376kB4t_iDqQ@mail.gmail.com>
 <CAA=S3PuTzTAd99ts8RbpONSKrXRDq9d-RP9EtfZbdJVbttGXqw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAA=S3PuTzTAd99ts8RbpONSKrXRDq9d-RP9EtfZbdJVbttGXqw@mail.gmail.com>
X-ClientProxiedBy: PR3P191CA0044.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:55::19) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8454b517-c9f3-4886-b32c-08d9f2e4c281
X-MS-TrafficTypeDiagnostic: AS8P190MB1189:EE_
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1189B3E01862E461985C24BDF0379@AS8P190MB1189.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ft/ChVejtCbpsb6dPPflmSXyEcV/Tf1vSNQu+7AcDQc2+x+0WGVdJiOu3bpyjUUospDUJ93Ur4A36BgbG5I3pW+RT3lF6mB8U2aFqQqKpED8xpPMQEuH2XJS544MZHzUcPni0oG+Ao0haRg2o5BnicfEHN2hp//GqQ+yTw8R/UE5yPBSkzt2KeH6Q9u5SmgOx8ocE9V+1QIVwrAvjgsYvIcOBIv0T5fh+NPBiLdbPhRGA6Y5CrocwhFxV9y2vW56RmExKUia/megi0dysbXL5CLFBdRZw/hutwFLGVhalPyTe6t2sr6Q8LDdGmhkP0+uAmItXNkOLygQeH/lYXJRkHtT6N4utHBu2FLhfwEV3mY01aW06s8BO2Z1ZYCx2rFz3xhT+/FCc+5TKSAYxG3l/4C4a/Jh7nGiLR3qyCwxQqz23fNop3EkXY5DkKUS9nX/w5TSRsnHUOTDUB/6p2FePpDzSUM8t30em0Nvon9y3CHDGE8KEGk/WStpc84xjPsezGrtVr7aFXIwVE2deaqkw04sF0Bqh0KHidFJK1iFtsjOTRqmyzxxKtyVVu5okyFuJT+U/PWtJk9Hj4ncWe1Kf2B5Qh+KirEoaaIi/tIEykJHt12D61waRQJTSeg48ez8GpiMNOV2oFa/87z6hF1FxQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(186003)(5660300002)(4326008)(83380400001)(316002)(52116002)(786003)(508600001)(33716001)(6916009)(38100700002)(6486002)(8936002)(8676002)(66946007)(66476007)(86362001)(53546011)(66556008)(66574015)(6506007)(9686003)(6512007)(1076003)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?3PBL3UE0Y6ZcNaBOYfE6npS1Yd+ZRkZktiBt55sbrWAd76C1z1oh1TO747?=
 =?iso-8859-1?Q?FfdrGotADaKTpuAe/2TwLzVGx6S7MBJMNoOST8Ff2Txb4R2QGltd0FH8yo?=
 =?iso-8859-1?Q?AxoQSZkQxELAxeD2DHK/GMbHCp4UxFSCeNUJb30pbskOqdpN3vz+9zpe1W?=
 =?iso-8859-1?Q?WdnsUp/m3QJhm6/SkwCYpFiikGe8fmZAs644LiLjIzWcJIWZUK4bWCYedO?=
 =?iso-8859-1?Q?UIee700V1byuRnaRzyRNo6B2TcR2FOUtKLI+aHahCjidteUChP04jjzjF2?=
 =?iso-8859-1?Q?c+cBXQSbmTghHxTaMxHORFnk8/nD1KrFbUHEdde4qsVcOhqPsPfFZM0iJQ?=
 =?iso-8859-1?Q?PtCDLLoX2iNcu3heFGV5bZ+aI7DMLSt6NAjDe5cVaUFBrAMEiE48n39awe?=
 =?iso-8859-1?Q?lD6iFOoAD7hHA4NB1F+hSQsq3JduoOkmMPOFotxSMvpeeBdBtpl97ARwL/?=
 =?iso-8859-1?Q?8sg7tdRliVYqPhf0tdrhIoyW5rx8DcZ1RVRChlT5LfovkC995ttmfBaser?=
 =?iso-8859-1?Q?vSKLZxMz+aZgewzHngT5NUfgf9ADhdwIx24zNK89suzVOePHASdwQftUCP?=
 =?iso-8859-1?Q?Nyv319hEkPXSM/Y0GxHo4up/JwzH5o2S0VqcNqElpdx2sNqAxwzVwe/0mX?=
 =?iso-8859-1?Q?Nw7eaEHmvLa1l6HWYK951uGlNp2WEJLbdwX4Ru5Li81R5WHDC357l5jpD3?=
 =?iso-8859-1?Q?QN8XeYDHOdNy2aaB3hvOJuxbDvVfWU9hbeJQvYLdpDdvaM14K0JUFYo4Lp?=
 =?iso-8859-1?Q?bHIDtmAd1ILHpX7b92TWj2hD6uZmiuavuzYqZ8+x+FvPsKwBNAlC9rnGAM?=
 =?iso-8859-1?Q?oqAioeADGfvFKx2WGn5jEPoKdu5ez3GvloXJ617zVUwitgQxSIzmgUbCmM?=
 =?iso-8859-1?Q?xlZPk5h+KUTa5cUWZsMEM8WxRIWh3YB17qvoEZCCZHaLnV/mdyS7UXx/1+?=
 =?iso-8859-1?Q?KJJxxJCea2a5PeDpbi9zfL39VMulDztzkaLtXtr1uvLR2QB90g+TRyCZjK?=
 =?iso-8859-1?Q?yFpRECLdRWWbwgod+az/LhdzFc9xG06I5qJJjgd693fqb46NRxoKIEODKa?=
 =?iso-8859-1?Q?mH6RHj0KJnOXkYhfNJo8cjUaw1BcryrCC9S1sjJpALfVmxjS/kBmSTTad7?=
 =?iso-8859-1?Q?48yQTKIZqUFnyxFDevvjUtNsrY96RK7NrIWrOugmB/gHeLCBbvtUDtdPmI?=
 =?iso-8859-1?Q?PIjotGmTbsZALvHAgp6PSBlNZVSx+VxQaXrcTKW1ezhLWtKW5XprWFdS5l?=
 =?iso-8859-1?Q?AD8dVacFbmgXkNHJkoKAse7tEKbnB4/xnQcOlql1Ahm5gpwLldIu3+8LS7?=
 =?iso-8859-1?Q?9RRxl63XynycKJU0J6Jqk8HJeFRdvtYMInNdXa9a0qp+FVddHfOuQntZjv?=
 =?iso-8859-1?Q?BXnV+hm8CoH9QOvJFcNVpwqQpBhXckJHudypEG6B41Yvi2BWRUdmDRLZxS?=
 =?iso-8859-1?Q?Fe91v+oLBz+YuLKTy8LL0drA2PbEoXFLfHUqzdlz0sYEL+Efq5ZcoyJLL6?=
 =?iso-8859-1?Q?VyRiPOuJsDhvD7wEkCwKF+l9B+GiSvkAMiNbs1tTT6DY+1bPvXt2zJQteM?=
 =?iso-8859-1?Q?X5J/dR96mtYRoudWP68UvOui0FEptIXP5LTXr6BN+N0kiRWeY8LN6aPd1u?=
 =?iso-8859-1?Q?Ew+RWuPu8fGfulDW4Ly40rfdGxfM7t/xt08qaDRIst9HTbBA0qYBRHnpV9?=
 =?iso-8859-1?Q?XO952fuuyowCyXP/jBf6R6xLg1pBQc21laFBBDKoE2lniSmXIbvQkg3kKx?=
 =?iso-8859-1?Q?SJguWkf+qCdswvqBboogsdos4=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8454b517-c9f3-4886-b32c-08d9f2e4c281
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2022 13:44:18.1099
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: njqyXd50BwFifodzsffIgGpRSLCYNVSxp8ZEjrTrxANUBAFIL+CC670xvvnPphgv0TOa9fBln31wNpuTwPU8JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1189
Message-ID-Hash: H2ITBYOPXXOK5X2SP2TR3GCTEEOELPKF
X-Message-ID-Hash: H2ITBYOPXXOK5X2SP2TR3GCTEEOELPKF
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to create the RFNOC block gain for other RFNOC image cores...Default is for X310, but I want to be x300?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2ITBYOPXXOK5X2SP2TR3GCTEEOELPKF/>
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

On 18/02/22 12:51, sp h wrote:
> On Sun, Feb 13, 2022 at 10:51 AM sp h <stackprogramer@gmail.com> wrote:
> > How to create the RFNOC block gain for other RFNOC image cores...Default
> > is for X310, but I want to be x300?
> > When I created a new RFNOC module with the below commands, the RFNNOC
> > image core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).
> > $rfnocmodtool newmod transceiver
> > $cd rfnoc-transceiver
> > $ rfnocmodtool add gain
> >
> > *You can icores folder list, you are seeing that default is x310, with
> > which command I can change to other RFNOC like x300 and son ...*
> > thnaks in advance
> >
> > $:~/fnoc-transceiver/rfnoc/icores$ ls
> > CMakeLists.txt                  x310_rfnoc_image_core.vh
> > gain_x310_rfnoc_image_core.yml  x310_static_router.hex
> > x310_rfnoc_image_core.v
>
> Does anyone have not any idea? thanks in advance

I think the x300 and x310 are very close FPGA-wise,
so modifying "device" from "x310" to "x300"
and "default_target" from "X310_HG" to "X300_HG"
in the .yml could be enough.

--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
