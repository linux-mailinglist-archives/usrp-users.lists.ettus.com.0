Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 019FF3028F6
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 18:33:51 +0100 (CET)
Received: from [::1] (port=33904 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l45kI-0008JW-IX; Mon, 25 Jan 2021 12:33:46 -0500
Received: from mail-eopbgr80113.outbound.protection.outlook.com
 ([40.107.8.113]:32334 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l45kE-0008DQ-Th
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 12:33:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZDCKF9F8OcqcoQXzdguAtMvRVzH5SgZOYjUbLobHS0MZFOZcvrvEsLV5JonY8YmfoGA9WS61+AahSFQFHML/AMG4+pAtZcDdmkOKc4xERmpmsvylgY4u7g1KYUHnQQwj7yT/uFGbRMekZWphVXr/PUJOIasq7KbkdJlKHbp9hGJzTV9z0EDqq5zBX1CO+PlMYEiouiues1Uhf8X08H8n4eQBJUsI7LNkZjj1sJTXLCW/FfqQ++er6H4MNsmBOxWX8L7AkPoKrvKL6uofexdRWPiHwpnEJy5pTBr17KGgBZ7Y3Xa8VVoF6Fa3e23EJjv7NkouddxSbET9iqMZ7SR08Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XlPbRO1bz/BgFKFD6uDXszr4qdf1M2ndmHZERCEYiNQ=;
 b=HjURIHf/PbLQvH1moldOJK1StngV25WAbHGh8s6qbXtFMyq+l6wgk66ggZUAxMTRVRcNJlmSiuxyL9uRWNDyBFZs9i5Qm7uLHT5LQkjyg40Un9y2DaDmRRz9l5NzrdDXxdHf+8/+MejsXyqD8MguNxS4tWd3m4+drQUbwg6a1DG2lvx48VuhHQ1+WQpgi6DfEwEwVKdckVb+MGeoh2e42GkD54D7VCEl4mkckJg5JyuTRtUd86jhiCa61i6JUl6s3hEw1a33uyTe3mmTREpkaxu4q/2P4K8RGRNNSOWz3m03YtzyN+f/tKuEyge2e3TVzYRGIeeo7IHPq5CniErU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XlPbRO1bz/BgFKFD6uDXszr4qdf1M2ndmHZERCEYiNQ=;
 b=2axRrM7Eh/40YjcHbrPVgT6QM1bfmB0r5AoTb08Jy/yA4iarc5zh79JgLKLFzTowTbPiFFVMTjWNMQHJWvVm7kN9qggbeZocLNl0iVcRuuULtGcicB9cVJyjssMQYZRnf7KmfTCiUNrPK53Stl8Vp5FRrZpFI6XTmzGOR7wIC70=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1383.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2b4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12; Mon, 25 Jan
 2021 17:33:00 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.019; Mon, 25 Jan 2021
 17:33:00 +0000
Date: Mon, 25 Jan 2021 18:32:59 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210125173259.2dw25idii7hfqlfx@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
 <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
 <20210122150220.ooerbxb22ndwefh6@barbe>
 <CAB__hTQ_uqCHC5PN5wNWy=vvm5Z-fDDuqD1JMq4L3ksMh342Hg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTQ_uqCHC5PN5wNWy=vvm5Z-fDDuqD1JMq4L3ksMh342Hg@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:effd:6a28:d407:fc6]
X-ClientProxiedBy: AM0PR04CA0003.eurprd04.prod.outlook.com
 (2603:10a6:208:122::16) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:effd:6a28:d407:fc6) by
 AM0PR04CA0003.eurprd04.prod.outlook.com (2603:10a6:208:122::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Mon, 25 Jan 2021 17:33:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d82c4519-c172-4f33-831f-08d8c15742ee
X-MS-TrafficTypeDiagnostic: AS8P190MB1383:
X-Microsoft-Antispam-PRVS: <AS8P190MB1383B52769B75F8CA8117938F0BD0@AS8P190MB1383.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BATwaCJiBOq5QMmoEB5iBqtHpMMZbUTew9pGEuFCQkXJIc3KpKbH3Yi65zciHOcyEpj9ELzgwNxFuDLYtL8hqQqT2zH2ExypPaONvzjtqNfUbxCuKiovMDlM7RyWk3CRkTLuZVWBU1xhJB6erXC428B2E9OS20hX8q/UPBnWnALkXynqxHAGbSIGTb64umK9LLvQ6foaD7d8UpgwUo+2Dpg2R6euE6Xn/Ct32Al8nLnUJONuGvRaplsvfb+ytA+NWU6HsbHHvfIKo0t+bY43XUedMQd6WorKzp4dXB9kEjGCYqI4nDMGKOc0wtfPcNwVs0N8ikig726p7h9l58/TjPdnc5EYj1OLnCux0ol4teYjkpXq5IjifmSdKS1JUzz/1vpH1oR4jVDqRCfGdFFsDSdQPqB6adUcxOCE7hSQPAF5kpAFSxbDo9JbZe910XdM6L2D1pUVPTXc07zxCjIG/N4o5XgVwLGZGlD6vTa29WSoWC4Fzg5DJnbwFJ5Tj6sPHAcHUP56Od2X+u4Mc3bBjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(136003)(366004)(346002)(396003)(39850400004)(376002)(6916009)(786003)(2906002)(52116002)(83380400001)(316002)(53546011)(186003)(16526019)(66574015)(86362001)(6496006)(33716001)(8676002)(66556008)(66946007)(66476007)(478600001)(9686003)(5660300002)(1076003)(8936002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?XPrshZDtH7vHHO/elGKgTLpc0dneBbLzN/sEzd4jvYM9E73uyf8vNFMKK0?=
 =?iso-8859-1?Q?26L7toMGVJKqszknaKiqqfyZGKV6oNkRxKo+l/c77xi3EFqg9G6JkvyxSq?=
 =?iso-8859-1?Q?dfyhobGtu29q37rcrltRaF1ZH8Iiu4qbdD3bzSN4pHfU43Q4LpEA+Rf8vz?=
 =?iso-8859-1?Q?okvuVtpdL/PJ5K+6ouofLMVFOIlbysbCevi+H/wGn+lUw9bXYMo6RzpZHJ?=
 =?iso-8859-1?Q?pzdQYVUTsWd1bCBTxEit89T7IxcHAViKfWIrPybeLCms1P8uQFmSHeJp0W?=
 =?iso-8859-1?Q?6X5SCRKzvjAjViqfzKKg6rKwdenNoEuVMCYP+bwcyeQx+d4A7EhKUSiiOR?=
 =?iso-8859-1?Q?GqSd7pmL2mZ3S5pp/JTCvS1UnRx0XuQypebSoxebaYYh7+VlMCp2MQPm7P?=
 =?iso-8859-1?Q?G+RTPn9PiHLQqWHuURLCdwMkptKCt9TO/7DBLsNV2WA5zrkfon0k9p0eL3?=
 =?iso-8859-1?Q?9wB8jNFVap4LxvPuscjN8yp7oY+7eN/9c5rR1eFyxmWB1cZKwH9fYS4XLe?=
 =?iso-8859-1?Q?UOgLUGcJPHWJN539NADaO93+nxH59SlfHhjXAiyDNotaTGx20+X99ABiDj?=
 =?iso-8859-1?Q?cjpFPHeozZYT2VQVrFop8n7fzWU08R4YjSkt8UqInFbbMXPUoM51sfaV6G?=
 =?iso-8859-1?Q?SJBjLlQ1tAvnJXzZ3f57s0pXFCWE0yVHfVW1I2ggoIlgdqTPeCVZv/pPJN?=
 =?iso-8859-1?Q?x8nJ0rH4uohM984sERDUccFuX6/Q6umDSHCcC7QtntRQnOhY7vy5AQVFgg?=
 =?iso-8859-1?Q?kvYVlRYCMjzJs9lO1hq2js/2aUK7oUzgiPAuDl9elsv8F1QjpwKyibNffS?=
 =?iso-8859-1?Q?thLfJx+McPSp4FdmLd3thPgwhw6ZVmjHIWropNcvwokZXVwwuSe57RQ3Sc?=
 =?iso-8859-1?Q?p0zd834AyA9XKKXJL57cp4vAw1+rwIF9hZB4iVdW73M30UvmES6Vts1jEl?=
 =?iso-8859-1?Q?Jc40UjsPGMZDtM6PPxNP5ssIOI+c+kweWfCfdACxgSmMuLLt3i0nEsv7LG?=
 =?iso-8859-1?Q?yxfPW+rWy4mTmnewEFhR8zyg3fI3zzgVrTXRIvWPUXhJtqgD+w0DqkRU6p?=
 =?iso-8859-1?Q?Af+FmRQYiBc3HfvNV+OtY6z1vMYwXMpjPCwjlutHAUkkRve0KRyl4Br6aV?=
 =?iso-8859-1?Q?PdkJqJnkXPy8KFNBfg8BgU+Joo71bEJk0g9rI3xPS55w/n+0em?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d82c4519-c172-4f33-831f-08d8c15742ee
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2021 17:33:00.5364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GBb6Ittzkpv1xsJAcfC+iBHhm5dL+7jTtyCLtTZodRt6JTGe5oQ6EOXp7oGKKfNBYT2KXMcSle/mzZLL0Z9Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1383
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

Dear Aaron and Rob,

On 22/01/21 14:15, Rob Kossler wrote:
> > On 21/01/21 22:49, Rob Kossler wrote:
> > > Also, regarding building in-tree, are you opposed to building in-tree=
 as even
> > > a temporary test case?  It's not too difficult to do.  I am not
> > > talking about the
> > > FPGA code - just the block controller HPP / CPP.
> >
> > I am not, especially as a temporary solution.
> > I just fear the possible implicated burden in the long run
> > compared to OOT when propagating those blocks to multiple hosts.
> > Do you have documentation on how to properly build
> > the block controller cpp/hpp in-tree?
> >
> > I guess I'll have to rebuild the whole UHD?
> > I was just pulling binaries provided by my distribution.
> =

> Based on Aaron's other email, it sounds like your plan of running
> without a custom block controller should work and that the default
> block controller should forward actions (I'm guessing that
> issue_stream_cmd is an action but not positive).  So, maybe we're on
> the wrong path.  But, if you are able to run ddc->issue_stream_cmd()
> rather than rx_stream->issue_stream_cmd() and get better results, then
> that is a good sign that the issue_stream_cmd is never making it to
> the DDC.

It works if I issue the stream_cmd via the ddc_ctrl instead of rx_stream.
So it seems that the gain block does not forward the action.
I have no idea why it does not.

The only issue with using ddc is that I have to issue on both ddc and
specify the port.

> If you decide you want to build an in-tree custom controller, here are
> my thoughts. Yes, you would need to build UHD from source. But, after
> building once, you could add additional blocks without rebuilding the
> whole UHD.  My procedure is the following:
> - copy the HPP into host/include/uhd/rfnoc/
> - update the CMakeLists.txt file in that folder to incorporate my new file
> - copy the CPP into host/lib/rfnoc/
> - update the CMakeLists.txt file in that folder to incorporate my new file
> - run make -jN from the host/build/ folder (it will notice the changes
> to CMakeLists and build just your files & re-link the UHD library)

I did for testing, and it works.

So the action is propagated by the gain block iif the controller is
built with UHD and hence recognized by uhd_usrp_probe.
Building the controller as OOT makes the block unrecognized and
hence falls back to name 'Block' and controller 'noc_block_base',
that does not seem to forward issue_stream_cmd.

All of this is quite inconvenient (for me).
Do you know if there is an internal roadmap to fix this?

Thanks to both of you for your help!
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
