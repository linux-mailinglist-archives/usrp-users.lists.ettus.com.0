Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C852F4915
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 11:58:53 +0100 (CET)
Received: from [::1] (port=48874 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzdrV-0001m3-6z; Wed, 13 Jan 2021 05:58:49 -0500
Received: from mail-eopbgr70134.outbound.protection.outlook.com
 ([40.107.7.134]:36102 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kzdrR-0001dg-54
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 05:58:45 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlhundJ43m6mFNpKBalia9ghptj9DH4gwLd5sy8J8j+lkYxPCrEOVoYz6DUKMEIMp5y2XgtGko+ZwbXJVVLoGrM93aLStXwgvnVx5M+TYL38FNTW2FbnFk4HzRgbYjBr7+Sq6nv/0YfENtfQ6nyPlOxlMxZ/lGAeHJvfMK5GyNa0zD1OIRggiofj2eO6r8xpwjtxsG0TDPQP+8sOSls7xHLvCKdv/CQoq4UZjmsv7+z/whRC8CrFcW0C9FeRBL1IYAz8P++FDn/FBZf/rwE9vcoEPTJy8nadNd6m+U51x70UGN4UTP3Q6Pu5L8bNi2qgactloh5rb4DF1zyVkrDeLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLtIQChuA6lQtVW84f59Afmx9V7AKGX8u9W2UYxYO+I=;
 b=XYbB19vFAxEXwRFcWAoqkl2BCveaHFvBXw5Ty7LyTxDYpYsqn0JfQ0OxqqRZYvjqIJMZR8vxydMRcFlUJHEyqYGmS6uIphhkMKmgA3VyLZu9GEw4vcA/hAqTa0A85k+MIoYRNmywAr50tazgqJU6z4h/vf/BoC792y1UefOirvoekmPdsafEZomPbOrv9XcWYb8uLJ8MR6zI6DS8i1QkdUQa65OQKl4/cMWeh96ElXveYB1g+91FuW2kri328/gLWZw/KTDfca39ENv3ul/i8fAOECSuLdJiy50b5D1AUSyCN4zGE98TEdjDtruLDayjPXWvD/2UFR4sS2X1ru9K7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLtIQChuA6lQtVW84f59Afmx9V7AKGX8u9W2UYxYO+I=;
 b=TxcPqBXpV8CtPpjvcL9Bh+6aHMRoIjCFhfgOGEWN7mszsLEUtayk4HXf9VkJnuXvJ6tzwkyWc7tALU60csHtqr9gK7XnTqoBTScbHmsmjBVprzBFOjpo1VExbdds/gfUne6XtG3uHjtt0E9Jv+bglsbHPfXXjfMH3KAYDsFI9Gk=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0561.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:20::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 10:58:02 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Wed, 13 Jan 2021
 10:58:02 +0000
Date: Wed, 13 Jan 2021 11:58:01 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210113105801.efaoc4ulzfhd4niq@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
 <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
 <20210112060455.n3qol2fr5w7nbuob@barbe>
 <CAL7q81uKXjDC=YcZ-2KXrhxN-zL6BU71P83+7KW=q9MEMBgaXQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAL7q81uKXjDC=YcZ-2KXrhxN-zL6BU71P83+7KW=q9MEMBgaXQ@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:f833:5c0:9ea4:cf3b]
X-ClientProxiedBy: AM0PR02CA0129.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::26) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:f833:5c0:9ea4:cf3b) by
 AM0PR02CA0129.eurprd02.prod.outlook.com (2603:10a6:20b:28c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend
 Transport; Wed, 13 Jan 2021 10:58:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aaa66b56-9580-476f-ff87-08d8b7b2193c
X-MS-TrafficTypeDiagnostic: AM5P190MB0561:
X-Microsoft-Antispam-PRVS: <AM5P190MB0561572C9668B3FE0367F8A7F0A90@AM5P190MB0561.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0FzBC+ya7xxm1ZdG4xX8tV4PKGN4tTULyAhlXIwbAXXc8D2YSdxX28tpmhJHxtl3H6xW1Y5mK/WZaUU3K3P/Jm94O02UunACuKjaHJypUFb6VAGqtxKfXVtNqYuzdGTbwjbWv2ivj7xLR0ArR6bxHychZp+7lVsCcbrKr7OmUwVARgh8jnNflgXJCjaJebkyFn7p16e6q9q4pVJG677EOg1nHD1OEquwr6q4xxpakszPuRh4d69ZyymjTJuRUaVQzeX12DfIbzwpnyiRaGAOQWM0FaF/VYMyV4HudwUsgTpyrG7JLYU+BsmSGM6ppQOh0sqwu7UAvL74HqTXTkWEGRyiMYVQpiRkch+FanmYFAb6kyNpZerskUWcjfr2OlIHDevP98/QUPEsPn3BVEUIQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(376002)(39860400002)(396003)(346002)(366004)(83380400001)(316002)(6486002)(4744005)(1076003)(8676002)(786003)(2906002)(52116002)(86362001)(6496006)(16526019)(186003)(9686003)(6916009)(5660300002)(66946007)(8936002)(478600001)(66476007)(33716001)(53546011)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?YdDiPenIuq+edxCXFCTUKD28Ki/8YV9FpEh/FGDFrxik+1tCOaGyhUDHvq?=
 =?iso-8859-1?Q?SNP28fVxWMTk5WCK3G79ZjnEkX6sLd01WREXZrRceqjuxBqqphyTFGaNSG?=
 =?iso-8859-1?Q?la0TWJ3lK/JGWhImgUAR2m6vOWui5IjtYffadQWPu28g80p4YuSZG3hYG7?=
 =?iso-8859-1?Q?rsV63bIvUaP4W9Ts/4ImPHmFtJYn26Rdwq66CFmf+3HYfJa69wY5L6W5O6?=
 =?iso-8859-1?Q?l6LHuA0Okk97n6gHAQwoZQuZaHMeJKMlMpMQH9Lu84SC4VQyrm7jXL/CKB?=
 =?iso-8859-1?Q?GjI+ud4PnVSs4+qXZuQaOK5vjsPzGKHKy4wv7AI8l42D9dK84SULI2xnXz?=
 =?iso-8859-1?Q?5ZjMfTLxJjeCH+dH7x3Kue1aw77qFNBVLB5812iymCBVzowrR0ureN75hn?=
 =?iso-8859-1?Q?cFy07Yo7NASKC2n16+syHCrg4+AVg0tSbOcaFuW4E7QZO52S7nJle3wzKW?=
 =?iso-8859-1?Q?8AQwnF7MrxIwMZZPd06bLibx9Vntok6TLZ/CS3iyRl/Kw5GFlKUFk6qr3S?=
 =?iso-8859-1?Q?NEMKp7FON42o9C3JM5CNPPOxPFkJCWVg0ApTDZDv290LpgXAT+exFZlkYZ?=
 =?iso-8859-1?Q?RPqqo/zRXXL/W3BkGia3hkDOEbYdRpNmXM7upv5cZPeujE/b2mcTNeyNio?=
 =?iso-8859-1?Q?VMYP+PKjyppvSWA+GhnOcFDO/X6+HvcTJhCX+Go0ZV7P1YStqvfHXZNG1z?=
 =?iso-8859-1?Q?B3uk+8qrWYSW7s+4piOkCYq/4SnAXPfwgqtuqqvUMd63sxZZHRZnsxPBa3?=
 =?iso-8859-1?Q?Izd+V8/z9xHy4sjJx88yDQ9rX/nqJrJ6UpWdnDVaMzfvIU82QpgV/Fu4Ka?=
 =?iso-8859-1?Q?hxTuyle6JDvGfa9ptwrJo5YghpqHqUyjR90+NQqhFgABhjPb7P9xYwdJL/?=
 =?iso-8859-1?Q?pJdEXxRhoFBUxFp88kgliHUKtlGCCtYMjBgVJDFo2WmwuncDf91YT6hH8O?=
 =?iso-8859-1?Q?r8/yv9m7+Yb6UAUYZlZTRm8EBSzzrMoeHKXoxf6bMHd7+OnmfvXn9dkaPD?=
 =?iso-8859-1?Q?Y98PmLIIj6WCSXzSMiR3ds0AceJDs0jaXenzkK6c6uG0dY39iwSPHd+wa8?=
 =?iso-8859-1?Q?sJlgaAn3uIqkkc8ioO+uw3FJVrdKCzjoHmhNS1lT2cCz?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 10:58:02.7847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa66b56-9580-476f-ff87-08d8b7b2193c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b4CrF6whbScN/Eg4e7hLExEFz3ljv117Xi3pk2ijeoHGzyMxTEd3/xCLFhupskv+6AYkWXWIB7ZRqBLYrRpwvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0561
Subject: Re: [USRP-users] UHD 4.0 RFNoC testbench throws fatal error with
 GUI xsim
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

On 12/01/21 13:42, Jonathon Pendlum via USRP-users wrote:
> Hi Cedric,

Hi Jonathon,

> "Fatal: The connected block has an incompatible backend interface".
> =

> =

> Try adding a short delay, such as #1 or @posedge( at the start of the
> testbench to get past this.

Thanks for the workaround, it works!
However, it has some side effects.

Doing

//test.start_tb
#1
...
//test.end_tb

or

test.start_tb
...
//test.end_tb

give the same result.
Indeed, the issue is with test.end_tb finishing the simulation.
It is fine in cli, but not in GUI, since Vivado is generating waves.

Commenting out test.end_tb solves the issue with GUI mode,
but then the simulation does not stop in cli mode after
all tests are completed (it only stops after 10ms).
Furthermore, I loose the summary at the end (time elapsed,
#passed/failed tests, etc.)

Is there a way to reconcile both modes (cli & GUI) without editing
my testbench every time I need to switch between these two modes?

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
