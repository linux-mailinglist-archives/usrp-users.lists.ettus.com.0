Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5B231DE29
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 18:30:24 +0100 (CET)
Received: from [::1] (port=35638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCQec-0000vU-NF; Wed, 17 Feb 2021 12:30:22 -0500
Received: from mail-vi1eur05on2131.outbound.protection.outlook.com
 ([40.107.21.131]:24641 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lCQeY-0000mg-R8
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 12:30:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PVT/Q1GfGU6QmMgX6nFUp1T+6ZkbUdNY2Lx7CfvfVTYuIrm+yDEVPKjZLnppLqwvOj5A8KtkRe85UIDFRzcZUugbmfCJkc2dzKlWmd/5ozTN8ibxqgU6ck32U+lmjWfQrarkepSjg4mkD7Jbu/lgj5apgZFp8u6wey93pEBqQWZzPZuY+yFRP+kYon7zkLZICk80+i+9b++F4Q2nkmw/ocZBV785E2fTfxVzHHzBI3cWiFS03DE6hOsB8WV0aofSzrnSGwh7FPC2LeF6kqxIknyME7W25+zAW36FE+K5NYppn/Ojz86WNakKNFlaCCszOdCh98CwaxTPFBlznQBpWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Mt2uOthLtQkfKL5csegU9ZflAHBMy7VEwQFbA0nGVc=;
 b=C7k4J+DfIdZwcI9joSfFNaDvDE56EWk6YOmgANjdVlb4hGQ8IRKFEJ4tB21B9fICVJl/nXfVR/qzmSVOxCLJUa5q8nEAnvr5GNJ7zYZv7hG+gp5b1VDe/pQxPISkHQ6Ttl07uMLi8o9i8zxMDi7WYFyMU7N8Z2kadxfpMvKpvItrXP7BYEURBy6IXp47hEdR05N1iBAAXKvZC7u6SICPAxes/EOl74dHBID7hDfefJMWtiKlOAzWQ/vY/APEyksB/XowdhBmU+dWOV3czAhewEKQQqz3Ly9qde8o8IkjnH0uWpKGsVySMnljPncxFFLVnIuGDqGqRjbg/ZF1ei/akg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Mt2uOthLtQkfKL5csegU9ZflAHBMy7VEwQFbA0nGVc=;
 b=iY4KCmTDG5I7N2rz5qBkDM6XotVtj0KhENcEM3gMvVPHR8cAE+hnjMpDOzRsjWgDJE53NGPOKDr6bPkHSUCNuHpiMikG8JgKNbK6/SNGH6Vt8olYitJa9vJJ40kuM+1xKAJCQYEbfSD0bzm2tv+EUDYzK8vFMA+b9v8LnZLSQqc=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0599.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:120::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.26; Wed, 17 Feb
 2021 17:29:37 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Wed, 17 Feb 2021
 17:29:36 +0000
Date: Wed, 17 Feb 2021 18:29:35 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210217172935.joprwj3f6rwdu3jo@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: PR3P189CA0048.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::23) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 PR3P189CA0048.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:53::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Wed, 17 Feb 2021 17:29:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6683cf1e-b60e-4fcb-aeb0-08d8d3699926
X-MS-TrafficTypeDiagnostic: AM7P190MB0599:
X-Microsoft-Antispam-PRVS: <AM7P190MB0599386C26E1422B50B05578F0869@AM7P190MB0599.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q7xqfB4LNHdWnZXVkHyRHEnAeOoY14+VWJ/xxQZqjiFL+2vrKstsdYv8uR3p7N1MQxepzYlk/p7D6OtJabgD3EeJt1t0eEhBDV+RuFleo+P8tk0/RU8HGOsq1aljUwFfIRD/FTh38KLz4dyMHhtPNW5Bsrw7GC9N4Grj8NKs6pB6ybWz3YamU+T51KrWw92Jd+S//PheTdwuZZC4Dnmm0kj245XM8ZDU2Yb+1FYoFZ+CdFLz+47BHrqYq6O/JBdzEoSf6dhU2lUvWkAm7OZqXHcuM9H7gRMb/CmXmitKt5iJOYRYTV2ds6/U39/9VTnwr1dWhsCXIT5Lu2hpZhdwR1TNQAFzEPJvmoQBKbKtvKsdZJzXBnqydOnl4kAIyuD6D1ieoOF6jUpy41qk4ui1Ink9jZmif7O27Lh6AMYO2h9PpKTV/9GiVPCoUJEoNmflSEQ1nI8szszl7f1U81VVqEbYb5QusGAaTt/+h29VPfTJbC+8qFDhTYEPHT8vCCk1hI1eWZz2ws1PmyY8etD9exu2pqdjfaBtzUOzCX/4ZQlOO+jYwBQ+F3IoRhmp43BOJf2VwukFWwpk16y65ZSqUNQ/dciPvCQvRhjvMO6rHl4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(346002)(366004)(376002)(396003)(136003)(39860400002)(66946007)(956004)(83380400001)(8936002)(4744005)(316002)(966005)(786003)(16526019)(1076003)(5660300002)(8676002)(26005)(33716001)(66556008)(9686003)(6486002)(2906002)(6496006)(52116002)(86362001)(6916009)(186003)(66476007)(478600001)(53546011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?f06Ya1St+DPWgBTRnX95avFDHqSDhI0U+TUwwezZ6a38CzwF2ERuRz0v4l?=
 =?iso-8859-1?Q?rGgLfkFNfmfmZdkhwVfraaWDwjmY3IviwvKKBOHg4nyhNPgf3mRcj+EbQh?=
 =?iso-8859-1?Q?Q8zZrIJLv+5WRGrnAu4ClUbjTx8sikFWIcAdcFkpPltwaI3m+juY/lmBsm?=
 =?iso-8859-1?Q?JSNUAPPOXA/0NEiNuU+db9MheqLFjMHib5L0uAfy0Hob0SIHqQ3xtujukM?=
 =?iso-8859-1?Q?h1zABaKC/cveU9yqClr7Cwi+Kzch6pEvjQrZcjpyqAl3ofQDQHwXc/c0Mr?=
 =?iso-8859-1?Q?vYdLkmyBTXbrE3wYZcePffm096sEzdpW/1B+8jfzyq/5s1aTsWMrEWz8PV?=
 =?iso-8859-1?Q?028bjxFvYUhR+MLLb8HaCLZjAHxfbAohYHVfc4OyFq/ihZdi9C2Yv7Mg3I?=
 =?iso-8859-1?Q?g5VujcdzqeY6Cwj6uYball+zL9YEU3pprnc0RhQ7SScmEHW9wcr4ItKXbV?=
 =?iso-8859-1?Q?DPjPQiJz3RgHp8pvSQNWZYeVI6oNK5oblfHu3U2m8dWdRKjB2SjVk9qD9r?=
 =?iso-8859-1?Q?rdKBwx9QOpG34nKwMQg+YJgaDPr9r5Vl47ej8yB6/24xFl9eOCeSVtDtvR?=
 =?iso-8859-1?Q?D9BrcC6D8boJR71FwaYpUXYcvCwUJQurWZ7x8yH1DWDgm6WoXH0pPDJgCG?=
 =?iso-8859-1?Q?jhprNmjmlXVjqXJfsnf1vnzRGSrmc3OUQdpfT6xOMCVeQvakdnjgtqYu0q?=
 =?iso-8859-1?Q?6+krJRkIJ4O+HZMgBxnNBjodn9lQbPQtToKP+hQKSahim6aatnjc0ObQ5c?=
 =?iso-8859-1?Q?C2p/yZdaZCexVM+iqZAROQI70pQCzMv/7Eegh39kt2/o0+jopX1gYVV5pW?=
 =?iso-8859-1?Q?eR0AxQXdTwJFupu/6JL3cRAG3TDhTigkQ+oaYvWO/9vke0+XLB1ALI7UxJ?=
 =?iso-8859-1?Q?ZeZgZylvcH0GDY8by7y7s5XNob0wcfQ7FBuw178uHy0YdJe+4o4qdBa0te?=
 =?iso-8859-1?Q?p8qvIAY5epYkmrrXkTnFVbRVsk3HduoUQHj8NWNY0Fg5uEGdG5Vfr/Eqkq?=
 =?iso-8859-1?Q?VQWY9di7S54iwmnL4ohoWy0fj6hVMrarTo4E8JWow3zqoj06AZyfIqkoo7?=
 =?iso-8859-1?Q?6ViSodZ/OMnUStPkAlou2j+kh3w8EllKPAt6QK/MgPngpNhjXWhr14NA/Y?=
 =?iso-8859-1?Q?EDiA2uYEZtpsnQZQbzyJ8ig80dmavO5g4Pk6ZyAAMrpsu/VXO2hhIWNyHK?=
 =?iso-8859-1?Q?TivN8fDIFymMKuKCbE9Ft04DarM8jZQ1f7P0PcXnXBulckUYwl/mJLqIb4?=
 =?iso-8859-1?Q?R8pMffimGxJ+zDoP0ZRz4UU4ydhsqei4lHVBasmvrmb/HQxiyEPTnKwE60?=
 =?iso-8859-1?Q?nw/VD/8cI94wW4SrrSA/g8qyFthLNIt04CGVsRP/xrUUS+/02x7uYMOmjn?=
 =?iso-8859-1?Q?ovtehx+Ctm?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 6683cf1e-b60e-4fcb-aeb0-08d8d3699926
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2021 17:29:36.8516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DT4It9BbatrQDAkZH247FukVkZvM2CKEAEApHYUyUVaVE/EzzcKNDLKfdxWmt20oygUegmkKpE+I3laO41ZBPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0599
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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

On 17/02/21 15:35, Mark D via USRP-users wrote:
> I'm working with an E320 using UHD 4.0.
> [...]
> However if I reconfigure the GNU radio to "RFNoC RX Radio"->"RFNoC Digita=
l Down Converter"->"RFNoC Gain"->"RFNoC Rx Streamer"->"QT GUI Time Sink" th=
e system no longer works.
> =

> The Time Sink appears but the GNU Radio console is saying rfnoc_rx_stream=
er0 - UHD.recv() call timed out. Removing the gain block from the GNU radio=
 design restores operation, so it appears that the gain block is in some wa=
y blocking the streaming data.
> =

> I've also rebuilt the FPGA with the gain block connected between the DDC =
and Stream Endpoint but the results are the same. I've tried reverting the =
gain block code back to that generated rfnocmodtool, which just loops the c=
ontext and payload data straight through.

Have you tried a lower SPP (eg. 256)?
AFAIR, I had trouble with higher SPP for some blocks.

Otherwise,
it seems similar to https://github.com/EttusResearch/uhd/issues/406

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
