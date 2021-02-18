Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 083FA31E7FF
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 10:27:59 +0100 (CET)
Received: from [::1] (port=41936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCfbJ-0002O9-IO; Thu, 18 Feb 2021 04:27:57 -0500
Received: from mail-eopbgr70112.outbound.protection.outlook.com
 ([40.107.7.112]:52910 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lCfbF-0002Hm-Cg
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 04:27:53 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V9ILGOAhM9XcBlMM5BCgzJdw1As++a3evzvjzdeRY+zXkXDmo0C3YNpdQeFBcfhUH1HlM5TLWiSaGD3+NLszCNCXLKVopbeeCYNVLLvM6fuLG92Nmo/nh/byzzg2jHVzoBdwshpo1mWFo3xCpvJEj3UeOchkHBaUxzhrlgnO1U+GMFgYfURItZwi77AjACnbAj9fHgCsJf4ry85amTf/JYvVlrP94xOKfgUyDRiap+1suz4m0qYERzAclev8LlNhlzMJnrLXysAB0s6bRD4lIEFT10tzF66UFp1cEF7ImDk62+0D3suGBCA5qiHr/XsOM47wM7i612Jv3TdkFY+NuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vUTQjjUrm4TDU3o7AlyEVyGKl8Ens0/r/RyKfwFHu10=;
 b=KppLRLQZ93iLLEhaJmiFX+soXBkhDTNyx91zjzWoPsX7Py+Nj66vXjedzW8lzEDXdP7SQIrSQ0I2bFR2Dyk5SqMj2Csuz97FQsQ92hvxmGA8A8MnZNvgK/xpY8BAUHdB4PY3Kwr2rovWtEfcw3Pi8CDaIhHJ3iEw7tVuDE/+IFqxR+R1MNgDMp02KDhU92gqgfC7YnwmL2Mxs4ZD3ykj+9xRvx10+izuDGJ6vEnMl5B8d24Pbu25IdqjcMinaEuLzc91i3KlEEJZCBae3b+Gi0wWkmZ3cxFmjVOsOhXq/rOIMy5UFncG/7PX4rkrwdl5xhkQ49bk3xHjFWBcX3BwNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vUTQjjUrm4TDU3o7AlyEVyGKl8Ens0/r/RyKfwFHu10=;
 b=1c2ZsMh8f2GOum/spdByKQujLFNY1o7ai4tighvO1yJHneXl4SMPc0dZz47ksxqaZ/DYtCDVrqRCLXpxaLqLRlBLh6oNsYD/kXvdpScHwDii2kXOZqJIJMX4lxYBkY/361vC/MT/dxs15LfgNwKeBP+yJ4ddrtcOKYbbWpoDkW0=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0386.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:1f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Thu, 18 Feb
 2021 09:27:02 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Thu, 18 Feb 2021
 09:27:02 +0000
Date: Thu, 18 Feb 2021 10:27:02 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210218092702.n43u6zpuagkgrazz@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210217110602.esxs2qcwdtyzegtn@barbe>
 <648438d4-77c5-4177-f498-9356c435988f@ettus.com>
Content-Disposition: inline
In-Reply-To: <648438d4-77c5-4177-f498-9356c435988f@ettus.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR01CA0175.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::44) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR01CA0175.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Thu, 18 Feb 2021 09:27:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9fc4f1b7-ef4c-47e2-eb75-08d8d3ef598f
X-MS-TrafficTypeDiagnostic: AM5P190MB0386:
X-Microsoft-Antispam-PRVS: <AM5P190MB03861D3B6420452503D317F7F0859@AM5P190MB0386.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Jy+3a2axDrQQ0qXXbiOqgAQfnvbQL83CUaY7U86SBxZfZrZlF6nJtHreOA2pER3R3pU3ouswJ2+tO/4Y+N1zMasEjSw7yXuXPBKK1Uf6yxlnBE2COaPcuMzDf8tkrb6GTJ9D/H2Y68vC9nRK9USNbfqwuJBYOVchAW3RG4c7e6Dwe7O/qO5uEF0FKmYr3SW0us6mf0/ArIEXyPjaChsfrnrZzeHndiT0GziYyS9RDKOY+foBd+OzaHYI3EqtIDh077fK47Hpw9qlkQhkDSmeMLgHCLvcyz8V/QJH55DGWilGfvcDhvGvXqW4hJi7GptHY/ZfKfDtagT5U0kYNQSW5hwd9L1rSCRL2YNxF9sU3aNF4K3dHPIsv1ASdsrsXKxaszgWI29smWDGzbrbG0cYDdlcyE1s19djgqE2ypDU+112Z0EHVvhEgsOA0sgbj8O+8hqlXB6pmBRx/jlLrHb03/4K/ypEeErRor013Iu39ItWVTY5yCmXvFlK7u5txkLl3TWcRyhwNrrq/LxYfxn+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(396003)(366004)(39860400002)(376002)(346002)(136003)(26005)(316002)(6496006)(8936002)(5660300002)(86362001)(53546011)(6916009)(786003)(9686003)(186003)(66946007)(33716001)(6486002)(83380400001)(52116002)(1076003)(956004)(478600001)(8676002)(2906002)(66556008)(66574015)(16526019)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?9sRQjHrJyQ6z0WB/9LYkjDDCKpeqUo1zYt9um4pL9I17H4rkFKfCvlqrGT?=
 =?iso-8859-1?Q?UVAHUJcDg/rOvBWSPUGCenNlHIryN+X6hYpZ7YvB3gF1kpqcKRz1ixuUay?=
 =?iso-8859-1?Q?X047j1phE2HrlRj2fg4aIyRH5fWaI6zyV7bKYn+7JiUbxzmd9DqyYSzSDv?=
 =?iso-8859-1?Q?r6zdK57cNdD41zRxNrGfZtCs8SGKRjw+qmayT0IXXInKYbMl9GfQSOkzBC?=
 =?iso-8859-1?Q?KeQExBV0MEZKnBGeljF46BZFL0G7r1OewXbq2WShS9mQYQv1TFRyqlk6uB?=
 =?iso-8859-1?Q?hF7uISvE2k+2WdD9u2IZosSdMoHCrq4xuVzoAUa2Dd4OR8DT2ctXJbcaie?=
 =?iso-8859-1?Q?YAQKDBOhyBy6+jLbbRkLmnz84vd1Esjz/XCM/z4Qm08P8IDhwF997tR4Lc?=
 =?iso-8859-1?Q?pj0BOFP0d7XCItivdo1Q4DzAS46tCiCyMswfzhx/ATZDMjXMuKnwKYfbfI?=
 =?iso-8859-1?Q?ZSg6hnLc1uuxTdGoPV958+6fwXmaLpnMdIpry8DhxYJrhYUd6PGYCe0PZd?=
 =?iso-8859-1?Q?EW/ReMd0iSL1aXHFPjnd6QQQMoktX6VUhW9UcUnY5joU60SguoHdZaXB4X?=
 =?iso-8859-1?Q?rm6f+64yrrJcydkPags1CeoNyx2ODgTsESWTv44batzmDRqo06NDndKwTv?=
 =?iso-8859-1?Q?/kB94Zrb2Q50sXoOM2VHw3qC4xUJJZaOpAZML8R/Z+46E13fZSftiuwwg8?=
 =?iso-8859-1?Q?BapAk9i4HNzvyYXiJa7vb7A6UQcJJhKj1TBdBT+IhElAwfuRbvo+OD4N65?=
 =?iso-8859-1?Q?hqUH5c5C4LnsDaEARXJAOVC5mn2YFYehDc/Y0KzA3hlGwmX2P12O4fwNgQ?=
 =?iso-8859-1?Q?BqndG3DyXRh2Ct34oFQf1bICjEKAlxu+RxC67BKV5c64nfLoD2TofkdcJD?=
 =?iso-8859-1?Q?G3ROWkBK45T2YQ5nPMU5LP4wWsi7u8gw/nhp3Dw6QHfHWqtiZ+ztA8hybm?=
 =?iso-8859-1?Q?vUY+tF+L4+wdROp0OL/bCWZUO1gDYkjBOzBULFdD6IBDQJULtmHmJvVDrd?=
 =?iso-8859-1?Q?mvGXhre6G8IgrvhQS1tBEGkKdOVJc+Wkl9IkKQWhHAoRV0rrJ1ToLG4I9p?=
 =?iso-8859-1?Q?7DHFr7z28CM7eu549Bph2qnYU5nY4Wn6VvMygoF7XfU8l7PmN6kXJMoQj9?=
 =?iso-8859-1?Q?NyjY4HWVCjFGByUrl7JhErreJkZKl7hyv1Ya/Ycoh51bN2JW7Xh9nSJf5s?=
 =?iso-8859-1?Q?qi1Xw8lV5jbem33t0TbNumGsTPZotz3zo2zwABjCkU5EmJol6yxtzFuLO8?=
 =?iso-8859-1?Q?E1g5eF2ynPRPIpiK2/lySLpa463zUnVCQVzIguzqIF4BYVQ3irkULe519e?=
 =?iso-8859-1?Q?1ydBOFCqT5SrAd6SNt2A+C7RYclcpKzhn2rrmFpKjf7NKIlPQ44YQECc8d?=
 =?iso-8859-1?Q?c4oAYBJa53?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc4f1b7-ef4c-47e2-eb75-08d8d3ef598f
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 09:27:02.8911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5vy3/0vmIPyQ5mBAYowDonJTqu0oZDjwEmIuoCrXvTdUbbsjDFvCFRea5tT1RHcVwvMBzTcPD0JvlKipouhjLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0386
Subject: Re: [USRP-users] User register on X300 UHD 3.9
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

Hi Marcus,

On 17/02/21 18:39, Marcus M=FCller via USRP-users wrote:
> not that hard: you need an instance of settings_register, which you conne=
ct to the
> appropriate settings bus.

Would you mean 'setting_reg' instead?
There is no instance of 'settings_register' in the fpga-src/usrp3 tree.

> It's probably easiest if you look through the FPGA code matching your ver=
sion of UHD
> (check out the UHD source repository, `git checkout` the tag that corresp=
onds to the UHD
> release you're using, and `git submodule update --init` to get the fpga-s=
rc submodule at
> the correct state!). Look for existing instances of settings_registers, f=
or example in the
> radio cores. Add yours there, picking an unoccupied address, and connect =
it appropriately.

Yes, that is what I did. I instantiated a setting_reg in my logic and
attached inputs (set_stb, set_data, etc.) with the ones from the radio.

> Then, you'll have to add a setter / getter in C++ UHD. That boils down to=
 adding a coercer
> and getter to the property_tree. Copy existing code and modify the read/w=
rite address
> appropriately to address your settings_register!

Ok, that is the part that I did not get.
I tried out with set_user_register but it failed.
Do you know where I can find documentation
for adding setter/getter to the "property_tree"?

> Generally, what you want to do sounds ... medium-sensible. What's the pur=
pose of all this?
> If it's just to read/write GPIO, there's an API for that :)

The purpose is to be able to change a threshold value in my FPGA logic.

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
