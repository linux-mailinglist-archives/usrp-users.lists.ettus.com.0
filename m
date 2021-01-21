Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC722FF858
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 00:01:47 +0100 (CET)
Received: from [::1] (port=52200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2ixU-0000ch-RP; Thu, 21 Jan 2021 18:01:44 -0500
Received: from mail-eopbgr80115.outbound.protection.outlook.com
 ([40.107.8.115]:21766 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l2ixQ-0000Vf-Lt
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 18:01:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1+ngIOeDynXphQYTbFKzPPMrsUXIJR9cABu5YNVyza8GlGfdkBHPEICe8UbIU3pun1RKdJu4BrrVFXv7hccjHnrVmf1fiNoVVgycyXswbIpUv+JQNPO9QlaHFkEVyq8BgOtBuGC2EGngrTEMcLUfRJSpPKZMDTp10BTlNxT/geT3Vj/1UFM/CbgEjlP68J+uDCqXYvZr8DIAXPoHSX0gSs/C7MSiCenwG4+acde4QuOdPCFYdfFdfxvF5K6+g9jkgpuJrAa2ePpOM1OD9hmoXIFr/bkCCxMd0+FMhs7xQ+CGWgom5K2F+oDIDOthzzfTmAkiTfnMYgbbZLuilKNQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pFlpq+yHiB6ZUj3fpaA37TJEte2eJqV15VFIVQVFrY=;
 b=iFrcSlCZQZNhRxD78YsiOMfTqGhewbH2AN9Du/mrWcoFT5xJviBbmGnqxPGORDHCqKUaO6/b7bFqJwnZaorrPyM+TWFtQff5IXSGYf/GN4M2X1Xwd3OtOjAH3I3AiNiTGl11FOYN4Bk0myKhY4/BOZJAFx3oAkBXjheoPTz/kLI/YcTeEBN/hL8XAg/1cDF3Lp+0D3mg0Heb3FuNXiY9XZBs7gI86mz6bPBBUV7kg1tRv4C/hZ31tzv7clMjCrvs8aXEkP/H5th41Q1c/mXVdQgraHqdPFaezK7noBFzGzaMGBsd51KbzdWyVlJHmOJJ0eemE7ogXOZhBxsuGjJKlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pFlpq+yHiB6ZUj3fpaA37TJEte2eJqV15VFIVQVFrY=;
 b=RLhRj3J1w+IQDkIVn84iP22Gdm47aOKL997nsdFeSMnnBe3IEpxnRcwITPNcp5kqous7CwmrRyY7If4yT11dpqchZ1mg1G+wR2Bhr24qbmQRJyw0BRQiN6KODuJa5W9dpxK/JTwxBYPV9j7plKzwQBvqAbE/civKWpFxeflUZx8=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1160.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2ed::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Thu, 21 Jan
 2021 23:00:58 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 23:00:58 +0000
Date: Fri, 22 Jan 2021 00:00:57 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210121230057.aswz7r7zngpxbthy@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210108175838.vxaqctdxyaahty72@barbe>
Content-Disposition: inline
In-Reply-To: <20210108175838.vxaqctdxyaahty72@barbe>
X-Originating-IP: [2a02:1811:371b:2300:191a:95a4:11e8:fcdd]
X-ClientProxiedBy: PR3P192CA0043.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:57::18) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:191a:95a4:11e8:fcdd) by
 PR3P192CA0043.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:57::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.12 via Frontend Transport; Thu, 21 Jan 2021 23:00:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 08c0ae0c-8127-49a3-9d55-08d8be606a87
X-MS-TrafficTypeDiagnostic: AS8P190MB1160:
X-Microsoft-Antispam-PRVS: <AS8P190MB1160AF11B3785D38167FC207F0A10@AS8P190MB1160.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: In/dV1DYDft8DJ2Yrf8yzXTHyD1zyZfi9Bh4ronCouVyrChw1nSx2sIZ0Xs/9xZq5fvrBKVK8cOI9MxH/x2oXEeudqTkH0ocsLnbrbcCY5mxLgbVTz84MrVUIG/gb57ExWJLEyLNbAmOosPkPX05AxfYOfOm59aiVLUYnyH5NK2NtdJaIfPA6cUM+Gt1nfPY+ATrkEQKiSj4bahZCjGudoQhuUiAF2clAvraHs6LOmF3NyFTknfL9HBdJfGG9Bff377raRKQhX+v3rrebfJOW2A61XDguRtBEU5WQiuBVT8/A+TB7EViLij32TKXUOfDSeFlX4OqI5JkI8tB7t3gNtWTsh1VUoBxoVXgZwkFkw0e9KOsyJtDrmDHEJALTFmHXrEaw2RLL0R6fGK+9vB14reB7F3QK89ip3CLEOObIUqgR7mzAe/FSwOmMEHKVhMNa//xD+dq0i7dw7+12PlHKQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(2906002)(6916009)(33716001)(786003)(16526019)(966005)(52116002)(5660300002)(83380400001)(9686003)(316002)(478600001)(6496006)(8936002)(186003)(53546011)(1076003)(66556008)(86362001)(8676002)(66476007)(66946007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?VlH3mvVv2Igma9Dg82/rTA7JRbnO8lhy956/pxgeJNtqoXHbTw42FSP7tb?=
 =?iso-8859-1?Q?yrAzyvvrtcX5ZlQlFLQ22yrFKgM3zUlS1D0/7N03FIMqb1qYCwhAE+3XbV?=
 =?iso-8859-1?Q?dPeI9cAM0EiAWTVS/ulqPpzFMjUJ3NBRh6oV290g135l70+Y9e0GEWrsFX?=
 =?iso-8859-1?Q?5zFMEZwmueLj9LeIONdi93jEPOw51lAoYNS8nOWg9DVI2a76mCLeMM6QtO?=
 =?iso-8859-1?Q?CDkyc/aAnB3DU1BkO9TP7otBcXZiCpyRhZIBcUVj4tv/XIdVP9ojIqhxwR?=
 =?iso-8859-1?Q?7N5lVoTEEgTsBUuZPkl/rUvY2+DQmH4QH6Y6NgVivo/a9/mMkIXtPAoJgV?=
 =?iso-8859-1?Q?EzKgKv9r0zxNOeSIrE88/Eg3/tQLGbldG0AFmOMFyW+qDW7pydYZvbqJWE?=
 =?iso-8859-1?Q?1kd2PQ1ni3ymt5fYyxCjQVM1P+mKEjgdJ/PH3Eji2kj4jKCfOvecRW61HG?=
 =?iso-8859-1?Q?zp/ZVskfOZyWESNaMmKdRYO8n/ca/VhIpuik/c+jgt/Cqq+i6bdxKexA1h?=
 =?iso-8859-1?Q?4YGfyYZmBrWkM/uklLItfOudijjaX3gCF0Kb7lnqwqOEPjuV4J0HNPQcMk?=
 =?iso-8859-1?Q?3qNoZn/ZJY9nbanwjiMO09WEsYk9BTP1sboX9R8spd5Ayuyr+GX4l1E1C+?=
 =?iso-8859-1?Q?8CwVi2u4T9pNhUQctqLgpQWk20AYI0NkAOX+/7L/Y3bYN3VaG5NSd2HyGS?=
 =?iso-8859-1?Q?e3h6pYosyJnoBQydb5ZATArR2k1TvboqZTc2IjTQsS5ENblbe33ACpd7El?=
 =?iso-8859-1?Q?zyuKm9ctDRkjp7PxXYlPVfok8q0b0wJqtKFMpPPwgQkyqoNW1jB8hopnJr?=
 =?iso-8859-1?Q?FO7MZmhdehrZ87JDdFOzDgcfI73QscEt8Lra/vpSfGOMryw2B4f1bc4jk2?=
 =?iso-8859-1?Q?5fzzQsJFA9fX/pSrVpkgD84+vRAbggYFwrQ2VpNG4VcUHKruIQugg6CfG6?=
 =?iso-8859-1?Q?0f9Vu7IBA6Vte7El8Rp+walu3ZT+UjMSw+j1q2YbJzL9UTdgfCzc35wmXg?=
 =?iso-8859-1?Q?+bUXX5Z9qPc7rMVBjr+8B+k25GoLAaW8JwVNODzG9TQKjE7gCU4oXCvlpe?=
 =?iso-8859-1?Q?QlwSjf9atflyflufhmoWuWvLt3pBCZWxP2/GxO+sAbcx?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 08c0ae0c-8127-49a3-9d55-08d8be606a87
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 23:00:58.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSbAPWWBOi4TInRQa3plL4B6PXqkmTweG078I7C9nD0ve6FrCtdJNA4gr2eba3qP+QOiiJ5MCOVf+F+xzKem6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1160
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Dear all,

On 08/01/21 18:58, C=E9dric Hannotier via USRP-users wrote:
> Dear all,
> =

> I am following the RFNoC on UHD4.0 wiki [1],
> but there is no mention on how to add Xilinx IPs in the OOT.
> =

> When following [2],
> after copy-pasting from "host/example/rfnoc-example",
> and following [3] to setup basic shell env/script,
> how can I add for example IP "xilinx.com:ip:mult_gen:12.0"?
> =

> Furthermore, how do I add that IP "module wise" or "block wise",
> i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gain?
> =

> There is viv_create_ip [3], but it just creates the tree,
> it does not link that new IP with the current OOT tree.
> =

> [1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
> [2] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Y=
our_Own_OOT_Module
> [3] https://files.ettus.com/manual/md_usrp3_vivado_env_utils.html

Unfortunatly, I am still facing that issue.
Has anyone managed to add a Xilinx IP into an OOT RFNoC block?

-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
