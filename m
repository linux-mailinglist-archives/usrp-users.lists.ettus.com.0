Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 475422F6F03
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 00:37:48 +0100 (CET)
Received: from [::1] (port=38912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0CBV-0000eC-3K; Thu, 14 Jan 2021 18:37:45 -0500
Received: from mail-db8eur05on2093.outbound.protection.outlook.com
 ([40.107.20.93]:46084 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l0CBQ-0000YI-Nc
 for usrp-users@lists.ettus.com; Thu, 14 Jan 2021 18:37:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XV2yDWQKMlj2g6Y14NFnfsccMgPsYuYRj8jFiiCn/vxz6dwy0eu2//exLacElNkv8OlFmFKa5khpzSfJRfJCqQr3NTQuW8ZwAHQT4FIWOOiGmRY1KIaOxSZP7fD4udVCIZpXSOdyf12+kSAkS+/y0p4l5RAZWhj999DTr/5aA4b+S4FsVHsbYldgfdjGuLY7NfaEoyLqEtbI/vvnZE/Odcb/PwSQ1NRbi7oK8umOgy3qrgSh4amjsuF1/z3//mwfRUFG40hQNfmVijY22epAjOpRUViywC1/NZzlwjxUahMDNtXl05RRbG5TW5j9r1bFfQjaa1w3g3cPiRoEKwjJuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qs552K3SePmPfFfvFY+VZEIvtZJuVM8EeYOCqunppxY=;
 b=nUgkeZ4WLAMcnaDZAkLlvsc/sTuvBjcERXWxamhjbTO+S8j4ye2zqLUDX/X91ThJ8RGhQAFxH1REKmjkOZx48kOOT8RR9rFUQKpvPyj8lB3Ub5LWm620tOOe04CEwfmUGoFyJYo1WPri74wEOulSfVM08ZJDzhDcpvvtB4/ZEjDOQb7vL/5i9aJx1Up89BDIjpegHdsiAkLaOibAA7VFVTvwoZgMqhGE51vgPg4FQhct8fv2rYV2dqjD4Yzwbyk/ktSqBCOWIVFmlcbpLZi1u2z1JA5nV2kxkPyW30aOpIpc6PKhOcjPqA7pjf1PdoWewcMz3VSRDS+KniRpclP++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qs552K3SePmPfFfvFY+VZEIvtZJuVM8EeYOCqunppxY=;
 b=REqHSzIGRgHsXJfP/ChU561/PlD19kmGVTyUoI/+nQGd3p/pO9IGfc6S920+1MupdiQ8Z4Z4tB2rQkSsS1Jo+nx+/kNmClFscQ2BKZ7e+S7BzQ6WqHL6n9mLfTFeil/LvMswaw7w9GTRuZFGzoXMNU6npjaYlBPmo9fN2rzHq0k=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1061.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Thu, 14 Jan
 2021 23:36:59 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Thu, 14 Jan 2021
 23:36:59 +0000
Date: Fri, 15 Jan 2021 00:36:57 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210114233657.pjmcmwburnh3gja3@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [2a02:1811:371b:2300:58fb:3bff:2e0d:f23d]
X-ClientProxiedBy: PR3P189CA0099.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:b5::14) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:58fb:3bff:2e0d:f23d) by
 PR3P189CA0099.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:b5::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.9 via Frontend Transport; Thu, 14 Jan 2021 23:36:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e87e84f-8556-408f-e521-08d8b8e54963
X-MS-TrafficTypeDiagnostic: AS8P190MB1061:
X-Microsoft-Antispam-PRVS: <AS8P190MB106190F5ECE6BA241C22B886F0A80@AS8P190MB1061.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gZMH6EEzV5rXtCS9cTU6Ou+kovS5NzdTv2lCSdMbrmjlzAfZJUkwk+V59RPxA38pTivFc5mv3lbACC8r2z+UpZgH3u9ox6qFERJCenN/DtUOPnBUnVCWyGqdeNIKRFTcbibuiMHbNrrdnQh+R6D5gGHwdDvsiHYM8u/KtnzQxrqTerJ731pKUfF5mBKo8JJsa0Dz1RNrQZUqrSdscAiQI82RPD5aun2GNzuFjpl0CNDiYTMeabfrx63pMSSdbQSXUAkzdwNPDEeysxsPGLvdt7cC/srd05ZZeL2L6RokkfTfodTyGBaVbhUd3f3wvb6lPxEnA2sF0AmctOGo2VnE06LTLTpuHUDUrXidpVPKw+m1SpTAgAbn+jjMsGESga4Gy0W0OOv50sWwC283SEKxrn6BKjQH0B33woXIbzMDIIPoFkHSjhG7VZvjFA5iPW8K0xASpwh4YAzAD2nPcSO3Gw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(2906002)(66574015)(66476007)(66946007)(66556008)(9686003)(16526019)(6486002)(6496006)(966005)(6916009)(186003)(4744005)(5660300002)(52116002)(1076003)(478600001)(86362001)(786003)(33716001)(316002)(8676002)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?/qonpcKeCSeWfVlEnnFPSDEIQCyO1azmvCD5yCFsUiRU2slJwUQoRxHe7q?=
 =?iso-8859-1?Q?ceiptWLCYwKHwtw8cYCARV+e5YKZ+NJejlZ2MmvwLWjMs2JFv7po4K9d/B?=
 =?iso-8859-1?Q?WqtyWvaWJ0oIYTvnWcop9go6Jkl0y7IVWQfoMeCwaM82el/JVDJDeI3jzZ?=
 =?iso-8859-1?Q?i0uEpYh//RIe69E9k2N2kIxOjwyFEHVdddaMzzas8UrE/5zVTmHJQCjm4q?=
 =?iso-8859-1?Q?x3ojSxEJMuUOaiSeNv9RzQbt8xo9Szmn/Hc1KKAN/45ajd1de3Vo9/U3kX?=
 =?iso-8859-1?Q?AC4OLDQeQPEsakS/x/qxAM8H/q2c1XC0CpDqtNZwTt/nc7K3PgE231J/9F?=
 =?iso-8859-1?Q?ticAzOCOPGKQ1GRf50W+43SlCrE6J80tM6DCbEW9dX+n+AlZ8GSNFQzxcq?=
 =?iso-8859-1?Q?5MimQMNcu6HIA+1wmQXmfQmmbx5xIIqmi1/4S6vzzSVIQW0nh540nFnHjh?=
 =?iso-8859-1?Q?+wUoFuPuRk86k8+g+/qoiqZhBJQa9BVepMTh5TfOWw7bqrekqUHr1Uy5DU?=
 =?iso-8859-1?Q?FJra48Vn7G2f/TEAYMfPi5o02M2RGp9mtV43wV1NJ3Kp+LveAJlPXeyDY7?=
 =?iso-8859-1?Q?wHPrRko5+AIJhOkljuqS3KZSrYBjwnHCmj2YqBnupAhhpe6cMHI9RmcJ4B?=
 =?iso-8859-1?Q?3XK8sN7VjBj8FhuJUjBnMQfGJHZeOiodIQWW0bdDpZtV2CQKhj/IzHmz1J?=
 =?iso-8859-1?Q?k96F54r4ARosG+apIOwbgX9dbvHUlizoWvWwWfDUHyxy+RETkvXknmPIzl?=
 =?iso-8859-1?Q?9ZjVisXJzGQjzi0X4g1pa0crg9iSCsbL6imGco8VdY76eca7GZUn3trY8O?=
 =?iso-8859-1?Q?L7N1D2JugQ5qguX+WqKgSPXW+mx/B6TSVm9tPGe3B7YvqWYxTM6lFsHYKE?=
 =?iso-8859-1?Q?LdIvCDD/9iaE+i00sKqVVLZ8ibTorDIx9jHLChxpr30BHGqy6CZi1uM7cO?=
 =?iso-8859-1?Q?pRPuYl2Nd7u2E6v90l97Pa4a8jN3jUtdU4koSaNEVpmDgzxbX8xjNcSUUz?=
 =?iso-8859-1?Q?lnfHZzi0l2N9O8AQAfJubX+viJj1UIB7JXzpyo+r9xI25WRyAujPA50lPS?=
 =?iso-8859-1?Q?y/0LimWeSdQhOLh7HOgHf60SpACEmkGtM9i7T/R7ndKG?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2021 23:36:58.9955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e87e84f-8556-408f-e521-08d8b8e54963
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: er0gThLGzZwy0A+IeUq05Wg/BF0o49BeV+GvhLS+zpzLjZFIF/jedKLEPXwy87ZJwqn2eTs2Z0JIPuT3KQ674Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1061
Subject: [USRP-users] UHD4.0 rfnoc-example gain block not recognized
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

After following [1] (testing OOT gain block from example code),
uhd_usrp_probe outputs:

[...]
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0x=
ffff
[...]
|   |   * 0/Block#0
|   |   * 0/DDC#0
[...]

and in C++:

auto gain_blocks =3D
graph->find_blocks<rfnoc::example::gain_block_control>("");

is empty, while:

rfnoc::example::gain_block_control::sptr gain_ctrl =3D
graph->get_block<rfnoc::example::gain_block_control>("0/Block#0");

failed with:

"Error: LookupError:
This device does not have a block of type
rfnoc::example::gain_block_control with ID: 0/Block#0"

Does anyone know what am I missing?

[1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Out-of-tree_=
Modules

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
