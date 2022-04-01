Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9EA4EF85E
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 18:51:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 738D0384B37
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 12:51:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648831880; bh=+0tHmjcvvq4COYIt9njGNPakX4hnhF3YRHYVD9EvdBM=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FxtDB8XEnp7B6ai58sjGtL8rBTyvUSoGxMsgZ4ZUvsJNshjogVjt2vVQ7PSXyqzUu
	 6rVRTi0MHGnxFPjv4t7sdUBwaSkwTlA0xweXJF/cMpTxLwdPc6Db/9AIbg2jrj8Gpx
	 3u7n5qu93i3oCYw8KSMPU62ylX7uoGN+gKCfCHS+iCPb3iqIdxvr8HaZIO7Bm6A0JE
	 XxzzR2CRSBylgdlcR4CcixnFDdZswN1PbTN90DASLQbse5siLgtpNBqDdnamJcJzSa
	 Rw4A4wl9iSgHqu5R6R9SwlDdrePIHlfqiDTn2XbpIkMtiu0HOa5QljlD5DCD0jzcnY
	 vRMgsyKuVNmCw==
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130093.outbound.protection.outlook.com [40.107.13.93])
	by mm2.emwd.com (Postfix) with ESMTPS id 957C038482F
	for <usrp-users@lists.ettus.com>; Fri,  1 Apr 2022 12:50:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="XQdzPSn5";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGu94AYKzG2CBTyHXGHCgDH1zF4Mx/AwZHNv3paXyxFKVOMjxz6l/hGym6mtJWmUU2/LPHTc6DJzd7z26f1pbQjSOZ45z8kiOelIkObv+PvQJZGLbAFjmKFUQeHDzWuGqr2Vqzeb/uabI675o2wN9Xp9E0WQ6VPn90c7YtWbqCKbJJKlQSLDqIpbFOL+17kTZkJbKNPF3pl+ItyhU2grWqETK8cQULbH4CIBGuT7bg+L1KBjOgNZ2HiVPMv8AeF8DwuuT4+etmxGJGYcyOdcooQAI5T4LX17pY92d/8RiQR8xxMWxUqwYJM6PjlY1OflOy1wgmQxq8VyBwYoIb3oWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7VroJu5dfx4ROVooN3d8BlE1carWnvpy/FPB8C5ojMo=;
 b=ZCLWxqc4HnVCP2eF48fGdCHWHtHUzZjtc23LB7yi1OWnJcbv2aKUTGaNyBBmmC0jUWnz99kFePNLgfSDN+Rk345RmNUMcfrUZqJRLrAeqgAes1qogOZRDCUvbMtfOOwdqIkKRUoMUXjyGCu6/pjQF32hOZ3eIUlA8TbSa92deELdmPHDZzgQFQwvn7m37x4iV4O9+4Ld2isb6/pvCYx5eHHXPSZjCgd77hmoNkAwAT+CS/BkIVpkyy8LkZJLOlCMnonhFLpQQlyLhxHMwGjb+waC3BPP1xeZQnL7+cVjmI0MU72e9VkwaWPr4XfM2gOhyRnoJbSW1svh7AD/mDx/Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VroJu5dfx4ROVooN3d8BlE1carWnvpy/FPB8C5ojMo=;
 b=XQdzPSn50wQRk39u96rVyrHNNtCgqS8ZWhrAVrI21q7zxs2pV2aNkf9psWU5kpYtxTp01XHKO/G+6ZuhNU/Ecgx+oFdiOHIEKhHhgWdycmk/59OIeTnKnPbUGIZakFlJ63g1I287jSiDC/PpZbgOV0wat2EmU0azWnUz+c+FaTc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by DBAP190MB0853.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:1a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.25; Fri, 1 Apr
 2022 16:50:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::4418:caf8:a00d:5931]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::4418:caf8:a00d:5931%4]) with mapi id 15.20.5123.025; Fri, 1 Apr 2022
 16:50:20 +0000
Date: Fri, 1 Apr 2022 18:50:20 +0200
To: Rob Kossler <rkossler@nd.edu>
Message-ID: <20220401165020.kdzbyckz7xrxhk5o@barbe>
Mail-Followup-To: Rob Kossler <rkossler@nd.edu>,
	usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
X-ClientProxiedBy: AM9P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::17) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c770c721-bfc6-4b83-d635-08da13ffb547
X-MS-TrafficTypeDiagnostic: DBAP190MB0853:EE_
X-Microsoft-Antispam-PRVS: 
	<DBAP190MB08534C09DE2B4BDBDDB93211F0E09@DBAP190MB0853.EURP190.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7HvhVBcQdiXNwnlNwpz9bAtqClhNd6C0F65IjWRRTKq+cLoKLYXLFBTYHEN2dgQnAMfDpnxPHCDCl3vKbxk051fBWnAwqgkaguPkc6TW+AMgcT+lT83BeQoPSX/kR9TCw0O4Qu0iC9Pq4/crTBrLr8qIADTTzQYMdxkKX83r7XpxYqKLZd29Uu6Sqfc+0esJlTOkxAHqg82kc767ycqUuhEkokPE6Gc3IQJ1eGQo6LHXlHep59rCLXlOO1jqhoaQ8x6PcApAyuhtudkaqt+RZvtXafbqMM+qR9rp44GlDZy6zrgNW49Qj2XvyKgNXUHAuCXDmWe7rVM6S/YOJEW9qgLpwx/IOvFlE2KgdL9INwZeY3xgNymT+2sInB2Vq4BIqPf61FnkYLcXTqw8EhDkxdnfl7ns34Zuk+d6Uhb9w/Sfpe6zzOxUmfS4rGTbr0rLT6VXwahstJ27LA6aTBU8FLEB3DlZmfb648gBtEXQncVodqcjO0JWWa79OZtLMx/ZJx47D0mGMFyIVrX50RR7aLvRgzwxYbJPFZZM0UpTc80xmS3aWanp88g5zhBxOabzqyO7nYPA5mHGwAXZfINhmIsokVVIqgHDEbgaZyVrRisSG0av9d+UT7I8rp1Buutytk2yHlB5bFoiKIDA253KxyMzDwRBcjwKAAygKI8jz+eTO13DleuDoAyQeoliR9Nl/gDNXO9ui3VmzwrBh1i83w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(186003)(26005)(6916009)(6486002)(316002)(66556008)(4744005)(786003)(4326008)(66946007)(66476007)(1076003)(33716001)(66574015)(5660300002)(8676002)(6506007)(53546011)(52116002)(2906002)(508600001)(9686003)(6512007)(8936002)(86362001)(38350700002)(38100700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?jW6ZA079FFrJzsSmYHwAvEky4BYlZoA3a/V3wePs68HX5KCyTXwXmhhtcL?=
 =?iso-8859-1?Q?47Qxyj6g5ozgllTV1xbegG/PhNKVWuWOF7otaeRiSeBlUJhio1lDHRk8+S?=
 =?iso-8859-1?Q?fTpO9cPlq6x3okVcWJQPJKu4UwPcH5WtGbpWvFBbWaT648CLgPk7vull9g?=
 =?iso-8859-1?Q?kroHXOR04Vxu7zIpKEVjiQqkrkQ4JiBztbthqDwlBUilOiCc1F+Ozarj2o?=
 =?iso-8859-1?Q?E6Syrk9keSAsdvX6xZLDLIgtxqeeiuOIB8lSrlPgtPMaVVSotE/KIJ4X8S?=
 =?iso-8859-1?Q?5QjAw5hvpJRjWUNRjh0FD59E7F9Yh3fJy832ihudwI0HVESRLpeEBxA9vh?=
 =?iso-8859-1?Q?z5EqrB7pKdZkG9eZaF/3/ZizXilfaEvWbXy90K616Uw6eNDF3Ai32f20+y?=
 =?iso-8859-1?Q?Ysge4CYZvNfp/FuTAZ8dnF+n3UTSojIImEqfs6w3kXAdGaE/a5vQOgUx+O?=
 =?iso-8859-1?Q?WFuXSQws4TwIw9LsAxo5/G8dc2iFL7YGW8QdGglwkTYSQoeewGSycaG04n?=
 =?iso-8859-1?Q?8AZdVVSJnTjv+srUS8oS+veFzAMjwOM/Bo3G4RlwT5RrY398sfC7OjC/xR?=
 =?iso-8859-1?Q?o4OjPzKoWrNGtVbIt4mKqozEsTWGrximKdmcAPEeg124EyVXf34BhfPBi7?=
 =?iso-8859-1?Q?qOYLFt5eT6DExn9RF4hqq3u9Kor0HfZX+sUp1nJXsoNpCOxVGZUQFimZSo?=
 =?iso-8859-1?Q?U9umQCiKqBA1Lw3Ep8KaaIJKv6pDWmwSbMCFUN01GtUCirmmkywwgb2ZV0?=
 =?iso-8859-1?Q?H3FcSRqmoxdfJa9BlBuvnBJj79ODEOObnPGHHV3WEtbGiTZbNXg4iYlThr?=
 =?iso-8859-1?Q?kID9S7xFQzrv0V7LEa5ZUdDT/KMZa4TslgLJiSi15AlzBkMauJDt5L7Fhr?=
 =?iso-8859-1?Q?3Mu7cYSHgn46wpJ2s3/zjIYrDeqhs5uk/DSTv1qSnokayfK1eo7HfV4F64?=
 =?iso-8859-1?Q?2fF0msIaycQ3JbhjePnLzf/lMpzHXnhray46hReGH+Qe0XzB73az2XR523?=
 =?iso-8859-1?Q?fvwrcCCNB9CEJkf5eBU84KnaD1kkYN7QUNOUbymie4SueX6zn3vaclKpAY?=
 =?iso-8859-1?Q?ZukxAElCzdYIqplCIOLYGGPUAf/yrcg4huxMD600qIad4FoUuE1hn4Xdon?=
 =?iso-8859-1?Q?nJKLq4eFSKlISU4R/U3ixCY4Eq8mprh8LFpw9R6rXWK5VQe7L6AagYMWju?=
 =?iso-8859-1?Q?otdvAswCDa0vazZweJNJ3hQOW8oHRehE9TPZ+2hO8V6m+S2D2Iw2d68nzd?=
 =?iso-8859-1?Q?F6HpxnHkjoZpLmf+qr1bHhDe9iYoFyx4bEGpy20SeYvmzCToyFoXfT/O1n?=
 =?iso-8859-1?Q?QelM0ZeHLcKW3Y00EysmJfJML3dO2816GZ2oNlAJmp2SyfWb+l5q3FmPxR?=
 =?iso-8859-1?Q?C15xXMkUPsVJoUZcgez+9cJPNOPI6Qm/iutmxFGA7QqNBI17+zX9pMqBQZ?=
 =?iso-8859-1?Q?j65ngFhR3pZko3WzxxZFrcC9qpv8O7XN+iVaHXE5O0dRzKPp01xWXJiaWY?=
 =?iso-8859-1?Q?frCAuG62DWhO4c1HDvSu9YMl/pLveVlekr1OAbZAAA6T+QBsvPPfW9KIXc?=
 =?iso-8859-1?Q?PYZuVNCBsk3ZyP7r3R3fuhQYVWiTznbLyIgLj9zJ9VVwEQHLlj9TyfW7Es?=
 =?iso-8859-1?Q?t9cS/g5nnnd0E6AHlmW8oIlrNjK7odeoXBH6qRC5dMZsQcg0J1qxWMkgYX?=
 =?iso-8859-1?Q?3U/SElwfhn0smIlDTMVCYV9TPQLEGV9aKka+Re2TwAUzP3LejlCCWr2qHU?=
 =?iso-8859-1?Q?j+KYHme8QCIirvqayaCVByOhT7MrfL0Hu0ZsZNa4WO/wf9c0fgZZUoCJo1?=
 =?iso-8859-1?Q?Swf72qTTBJ58a992ar0ACCEK4tTRTnw=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: c770c721-bfc6-4b83-d635-08da13ffb547
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2022 16:50:20.6795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DCjr/H0D7RWc+SPLsAIbwJKnTZ/fK3uaymqJKvnrcsW7Ryoy4TiM3GNVw5MMuc1yZNdeyhItZ2TaudghoFTQuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAP190MB0853
Message-ID-Hash: IYIW6CUDQMO7HLKCIJMW54I5BFBO55M6
X-Message-ID-Hash: IYIW6CUDQMO7HLKCIJMW54I5BFBO55M6
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYIW6CUDQMO7HLKCIJMW54I5BFBO55M6/>
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

Hi Rob,

On 01/04/22 10:40, Rob Kossler wrote:
> I am trying to copy some large files (~500MB) from the N310 to the host.
> The transfer rate I get using scp or sshfs (mounting in either direction)
> is about 12MB/s. Given that the interface itself can do >100MB/s, I'm
> wondering if there is a faster method. One thing I tried was to setup a R=
AM
> file system on both the N310 and the host and copy from one RAM file syst=
em
> to the other. But, still no better than 12 MB/s. Any ideas on faster
> transfers?

Could it be the N310's CPU that cannot encrypt faster than 12 MB/s?
There should be a process with almost 100% CPU in "top -o +%CPU" in that ca=
se.
If this is the case and it is a direct connection,
you could drop the need of encryption to speed up the transfer
(eg. python -m http.server, tar + nc).

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
