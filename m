Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 463412ED603
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jan 2021 18:50:03 +0100 (CET)
Received: from [::1] (port=44632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxZQ7-00048h-Op; Thu, 07 Jan 2021 12:49:59 -0500
Received: from mail-eopbgr40131.outbound.protection.outlook.com
 ([40.107.4.131]:55431 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kxZQ3-00043z-K6
 for usrp-users@lists.ettus.com; Thu, 07 Jan 2021 12:49:55 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/pURpdMR9V6vNJ0AApK1buSjznnRtgr6R9dLWHVulI7+BXymRgjvv+0GdGjoL9pzQ/lFm86fNeVoTtWhKUNCdVSnWTqcAMfhW7NUmf6qpxLQS0TAiGuJVJn6mqSmDwEpenhzM3G93MjEiaCa0lgjpELmKcMdrz+kOS5eh7zXA1F5oZzhAW9k+IGxP2pa2QbUhIcmHU3/yz9NruK6Z7vk7XiSPd4Xe6/ZgBk7Cu2kf12aT/xk49Tq3DnT0sPfp4HRM0Tsn1prXCm460HgWPWh+S0nQu15Z98pCWF5V52pwTlP7YW+3Z7iTGoMND1J3OwTa2ZyNfggRiMXDTjV28gDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OjOO3FC3uo550kSjg5PwZ9BSyMSC+ocqy8SUlLAxQNE=;
 b=Hd7NJ+W3Dq4dxaVnQLgSLlKflpDNX8iZ+5hv2hLhhmVQIXzIxoFoe0VVKma+5WQFKMjsl/+CIOumHLDuMgHRL68lDGnUNKhSV4lQXQeCBlOiyg1x+uq3fqWQ/az2G0Y1IY3YyvbD8fAYnpX6pk+UnqNRFvrD+gD4zcAaMqdECYlNYoFMM7Cx1tQXZPnxe6y+MKNqrh2yq/gy1PaWJRQ21qY0HlxUl3omo4ceKzNYsu+bfjSrlOkSBouPhEO1tBbWQRt9PaeIyPnGPA5Pv+jWgOyj+7vlXLGtj3/O5x5k+Ey6n33/RVbXUi0jFUQXeuJ/kGOBBCoUdizOO9VSXamSvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OjOO3FC3uo550kSjg5PwZ9BSyMSC+ocqy8SUlLAxQNE=;
 b=0peuds5NmPfdrQUQ7ExCPFZlPWcTobHL6fx6IiS24I6goitmag1LlaQRXhpymtSmbhFOCq8wjA/5mFgRRSWFJL0y3ZP+e4AjNJ73YkeF3LrHdqnk/2YT1J/3OIPsoAz+maxxY6acSduObFK9jC16+AIP7rwmCjB2MRrCjfSSL/Q=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1142.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2ee::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 17:49:13 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Thu, 7 Jan 2021
 17:49:13 +0000
Date: Thu, 7 Jan 2021 18:49:11 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210107174911.gjgjjt5rff43rrp2@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [2a02:1811:371b:2300:b6de:3442:2ba1:7fb]
X-ClientProxiedBy: PR0P264CA0135.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::27) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:b6de:3442:2ba1:7fb) by
 PR0P264CA0135.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3721.23 via Frontend Transport; Thu, 7 Jan 2021 17:49:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 137430be-8c0c-4c7a-e8db-08d8b3348b74
X-MS-TrafficTypeDiagnostic: AS8P190MB1142:
X-Microsoft-Antispam-PRVS: <AS8P190MB1142999BCEE51D37BED5263AF0AF0@AS8P190MB1142.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7cwOD9eFlbepMMoffg3h4Bm/LBgIPFs4bLyTTwjeRflQWVyfuh9uLfdFm2iWS6m01UW0CH/H3cJe5mhq5gzmXH910ScxQ3eA9b6JVZQc2RfrV4wG5voerRsFwvNiAHDjGgLQm8oiec7duUD37lSD9G/csPewcEGzLC2HzXX5Pczpe9QzuzZFMCMdH20LwdBjxSpDFAS7oajfV8F1iqgJ9hAsGgo3+8NyJsnzgLLzRWmEMybugXBKsTW+HQ5vXVbGTz5K6CazZSCN4BOo6d4FCk3RFOI+KcKriLXJxZJoRK3V9OirEdZrJWqlMvB45bM2dWsKTNHoIf8bOQaQyBrgGa0fWW0MxrM1rZ1lX35lDEtPiqt74rDy8IYC7G2ZhAFgI/u1wu0Vg0VoKGM4fgX01muDi0K4t0MDWpAaSn5J1Vu+WzpVFg4GL7Zak+tl8UqxaKofy5L03y6E3sxuZvywuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(396003)(39850400004)(346002)(376002)(136003)(366004)(66556008)(4744005)(66476007)(66946007)(186003)(16526019)(5660300002)(1076003)(33716001)(8676002)(316002)(786003)(478600001)(52116002)(966005)(6916009)(6496006)(86362001)(8936002)(6486002)(9686003)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?4wROel9TO2sbE9Cq/HnnpzgiFROAbtpuux2BXe8OaqMf4tmiq4kYfZc43y?=
 =?iso-8859-1?Q?/ujGQN9eC3Dld1R3fLXh6H5ADfhPV0DdTcV9RLRCHRPvS3as6FIkgXTASH?=
 =?iso-8859-1?Q?a+LUfwXqZg8Ig9wWAyjO0rTEDDkqV9uxJ3cmUZgF88One7qfxSFQZA9f1B?=
 =?iso-8859-1?Q?GFyaboOU64UfWX9Q9kRNP2Su8BkJCtCpQquotkDLeYHbTivD+UIWugyhVn?=
 =?iso-8859-1?Q?Ox7YsG4Zs7r5MimlaVZIFND5FxhQPm5tCh0/7lhlXWoa+/2N1yH18FY+FM?=
 =?iso-8859-1?Q?gRHbwJetcuhndUyFsGCayzstU3pcpRrd5pc1XQbhF9Bp9NhxT3tebqbtza?=
 =?iso-8859-1?Q?HH3lWqFQS8vgay9vqq5yb9hkwtHW0O+YWBSXVBXn3J6P0tFlvc6J1HSTC+?=
 =?iso-8859-1?Q?2xgPhQ0nkZh6vTHM2A/dnh69nuC9D5AcP+luiqjU36rS7nRC4t+y5pRImy?=
 =?iso-8859-1?Q?ykF16M4B5PTJE/aO0wxQ8JGQF784YeDHUKjD3SR/rraIf6VvCwIW1ZOVf1?=
 =?iso-8859-1?Q?dxoSkiy1YbDEXFDeOGaOi5SL4bTfvssHgwldjrU7+AbSmBhr63Lc5zeE0I?=
 =?iso-8859-1?Q?EWsuJn1hlkpUtQbZ+sm76n4U5xIjxnEKXEjhbk5/WwIFmRiJox20fD28+1?=
 =?iso-8859-1?Q?sWhZZbWxcnwKDe1fQcG+ZK4rXedR5Ylbi23mVxmv2Fby2Zy20W6QBI9TT5?=
 =?iso-8859-1?Q?L7E+z7qK+6qle5ltzZv2mquFrn5szto7wKV8pBN+2nnTpfxTDjpe9z18h0?=
 =?iso-8859-1?Q?hmlvJ384EMLD4oa1XXFm2vtlfJ0DsbRBoJaUXf99NczrGweSY0uowYHgT6?=
 =?iso-8859-1?Q?1v9jOYDbS2yh7Z2Ek5XZYe5EmNE/pEbuUeItvnMDHIHoMTTSd31jvvMvEl?=
 =?iso-8859-1?Q?ZKNn1Pnl/aIDTgUhR7x+4TR/QQDhMWQ/7abPeNwoT65uCMjOtcJOOzhzwY?=
 =?iso-8859-1?Q?jHELyyrsCkFfZszkHbGqZNZTJ6sdmBw0AJDih0tp8slKc+YJotUgnLR2gr?=
 =?iso-8859-1?Q?IvDQMBvw6i/MGL35A9RMVBC4fhBdbM6oGiEIIbNamLxQI+fiVLHNAcO00l?=
 =?iso-8859-1?Q?j5zITxL40JqiMDbvKKuPKBSe4sD7HJ4nLNdbvSDsw0xP?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 17:49:13.0847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 137430be-8c0c-4c7a-e8db-08d8b3348b74
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2afPqY39p4sAkKxVhfat/0RRsQjRC/47BFb5DgfiBPIECelLyh+CckHMeITADB+GP+xhMVGXx5Omh5WoLdRKjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1142
Subject: [USRP-users] UHD 4.0 RFNoC testbench throws fatal error with GUI
 xsim
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

I have an issue with a testbench for a custom RFNoC block.
The testbench template is taken from host/example/rfnoc-example
and generated with rfnoc_create_verilog.py,
as stated in the wiki [1].

Running "make testbenches" completes without issue.
However, running the testbench with GUI ("make testbenches GUI=3D1")
failed with "FATAL_ERROR: Vivado Simulator kernel has discovered
an exceptional condition from which it cannot recover" during the wave
generation (1%), making the soft unusable.
Files: Block [2], testbench [3], log [4].
Version: UHD 4.0, Vivado 2019.1.

I would like to simulate signal waveforms to check latency/timing.

Any idea how to fix or to check latency/timing?

[1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_Y=
our_Block_Using_the_ModTool
[2] https://paste.debian.net/hidden/5fa3b59e/
[3] https://paste.debian.net/hidden/281ffb17/
[4] https://paste.debian.net/hidden/db686780/

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
