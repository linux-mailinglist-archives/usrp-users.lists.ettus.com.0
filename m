Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 701FC31D7E2
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 12:06:53 +0100 (CET)
Received: from [::1] (port=60638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCKfU-0005Li-Cl; Wed, 17 Feb 2021 06:06:52 -0500
Received: from mail-am6eur05on2108.outbound.protection.outlook.com
 ([40.107.22.108]:60545 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lCKfP-00050J-UX
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 06:06:48 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OaGyfKywt9vsVWtN+04a9P7mofmRGyfOaEwoubBDQWcD3+OSfABDC/CF3yzFoDGieyJrBxRBIYbb6vlMw8DKGmVxiQUHnIK/YyYylTuSYMfKRBmSI3Y0kdqqwJ1zP88xwXDZhAx1sKesVsvsuYY1ib4Pv781JtY4M6pe8JA8UMNT8Nfz+z3efP1t5Lt90ZUp2EFENUEc+fmh+8dbantE06d7n329h9rTMNAS2hJ6RjH4gAqD92/c1ziAe3KknnSg4M9Gwb/hFzwialuSkQBU2SViv/VMmmDohdAoygMzzJYenJTTA0B+OvE5d64G3k3yxR7Gwm8k71BGVdPlEBLSCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKQoCSx9V4hHGjVQbYJDZydDTfewm3Cgq9SrJA6njHc=;
 b=mOmOaghTORkamk+uk4wr5BLfS5qigmBKZnkbuLeNZTVULa3aKxtS+kIjiSBc6y0Evk76UzQGz/I1n8P0XYDCmQkQgYI7tTmZVWNq6YyJRaAHPbiPQqzRv5ujj6pDLj4Wbljw2v0vw2PivHosNZ1Sy/Ix+r51zY6RHDM9CYdl0BzAScuS4GiRatFFiRqS3i38poWG3UShhzASIYhxZUwImxt5n3jZhVHgEaNvNTm4to2uMpIeP/JtyvjT6aYf4XbBxAIUeCmE4K11J52kpVWx/eemCyYxKsvj+8jmh/lKDj8puKTPRrstLVVwz6+LU+PHqaiwzY1e/MPlSDx0QVEaBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKQoCSx9V4hHGjVQbYJDZydDTfewm3Cgq9SrJA6njHc=;
 b=fS23OqJqpar0TtbkpTQNhJAC1zdRhzYSDfSGQ9eZEWkKfWE+VGfRpVe0HTAInZe2ZprlE/YvWKk9BJ61FThKeeLpWzkvXVvzElrXsHMi+Y0kWq0t7QZ4Fz6gDXW86aUgUo3gq9Kcjen76d1yLBrnW68Vk9aqjb0fuqtScfMpI8s=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0401.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:17::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.28; Wed, 17 Feb
 2021 11:06:05 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Wed, 17 Feb 2021
 11:06:03 +0000
Date: Wed, 17 Feb 2021 12:06:02 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210217110602.esxs2qcwdtyzegtn@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [2a02:1811:371b:2300:1ca:a281:4e15:784c]
X-ClientProxiedBy: AM0PR02CA0084.eurprd02.prod.outlook.com
 (2603:10a6:208:154::25) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:1ca:a281:4e15:784c) by
 AM0PR02CA0084.eurprd02.prod.outlook.com (2603:10a6:208:154::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Wed, 17 Feb 2021 11:06:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 54daec60-f8cd-48d1-8103-08d8d3340431
X-MS-TrafficTypeDiagnostic: AM5P190MB0401:
X-Microsoft-Antispam-PRVS: <AM5P190MB0401654825AE6AD00EEBC178F0869@AM5P190MB0401.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yL5AE69WBBAht7BvpfIW8gaEYK/869QxM9Ej6qXAtrmS0fStBxf227dCqsJ/8On2QwwA7pMO4czCsZ1/oPIJwKNXnngo0QYn6/3xBRTP2hDTvqfc7Vf7Zo9lUc7qwRBi0mYj//Rw5dgNLKBrwSdMxGF61mMHWnLuXxzSW9t+Z+wvnXwMz7RiAmtZ4Xi9bWKeXYYuhzAR0Uvi9JM8Xl/LWMZtJRJon02i8OJrPbZ6W8dKTLHIqsxoxhgeQ292w65c6+33u0Ez/qHxsflYZJWzKmTJxG6fQILX35YHAMd0FiQtol8/B+iuLu9pR41+ZGZRhRVIMJmmHF/T9dauyXHcxhf2HzpBLcXJbGIOOnipkVhJForpq9n7fnoQVgr7bQyva2FRyPjBPYdAjO12Giu9ke+wacO8PJ0utA4pit/FRtvoiEU9lN42j2EKhKg/+UQHQSRSQVGEoRainWoSa/LEA89g8QwiDNSJLhnwYsVB9YLruq0MIk6zs2ZV4FlLpPDZVOiw27H8GZhobDuW1NP5HQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(366004)(376002)(136003)(396003)(39860400002)(346002)(66946007)(478600001)(6486002)(4744005)(316002)(8676002)(1076003)(186003)(8936002)(16526019)(33716001)(5660300002)(786003)(52116002)(6496006)(2906002)(83380400001)(66476007)(66556008)(86362001)(9686003)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?wDeXz9+cj16LZFqZ9mgkwhc5p5Yy6Wo1GGxIavRZojDCqRm9pUIvwrtg04?=
 =?iso-8859-1?Q?Bl35csD0N7V8C2bV3bZsNV7wTa2XGPtAqUOx21Sb9KOhZBHWhg9FL+XJK+?=
 =?iso-8859-1?Q?KVYzipDYio/s6rLZTaHmDWMgQ9WLHs4O3UzHtJsmYxN7QRK7N/IthvF9+N?=
 =?iso-8859-1?Q?JUOrup1fWHHrUuDMAdZY7B5J40l5U+htNSgXUifjtK88ZAB6pfAbIIkUg8?=
 =?iso-8859-1?Q?y6Z+M5u/Jfnnsp/pHJUD8TKbvYNwKoI4oionVZwfCQC2g+7EpLIWLFG4UF?=
 =?iso-8859-1?Q?IU//fZH6JSTlUQ2JeBs8Wrf/lxDGUw+i3s4HJdZ4lmQZ1a95lM2JPQz1o1?=
 =?iso-8859-1?Q?RL+SGmEGIYowiaWuLZz+DE0eLr1LIM5o9ulmpCkP2QPYgcMB/cDTbk3Q/8?=
 =?iso-8859-1?Q?QNF0wUHa1+9KwIblToZXsP1hQz6e+Vn/rRD4HUKWmanzHu2JRcDzSOGejJ?=
 =?iso-8859-1?Q?L5LKDDfwFc5akVj45aKIoYnN6V12b15nMsZS6WvMi3Sd1ZZdGpMuFPW21w?=
 =?iso-8859-1?Q?UDAFaAYzo+16oylGoBCwR89NlIekKukLHJtn58PYAGmA1qKl4aX0CD2lq/?=
 =?iso-8859-1?Q?QhfzKJPm9Se2feP8WF1ufrqf9Ot51UeiTnjPZwFSazvPchibv+2Hj8q9lM?=
 =?iso-8859-1?Q?TGoweXB8QDRmLrysQXCilVDrqNohE+hIbcaV/w99u2bh9iHsL8tIphCf/g?=
 =?iso-8859-1?Q?4jFmobqzwLHIo06Vp0Yipwb+Se8vjQ0B/9WMonB9W4LwsV8YxSnre7tNGQ?=
 =?iso-8859-1?Q?tfyNykh49jos5BZi7gePnwRIQVhD4fkJKAk5gFRpSUrgd4/tSHFlEZlECM?=
 =?iso-8859-1?Q?KaqnB1azNwJxZT/Xc0Gxd0DC4iH5SgkbfHtI83kEtPrINPjbaooVnfu+CB?=
 =?iso-8859-1?Q?RJ8h9uIuqLVdpnLQcAtEWJ3vMD5QaCuTfoMD456el08CGpLstEO1kHaqTF?=
 =?iso-8859-1?Q?/cVJ8eN6PuWSizQFVoyG4S8WeZKSTRx7b14nkKeMQuGkKihaXNZ17mJ550?=
 =?iso-8859-1?Q?Y4rZ4S6LVYae4daTiis/sGDUe9/taYO+O2cQmE4+WEDNVsqBrdU1YaFeA0?=
 =?iso-8859-1?Q?rptn3Z/tyMtgGPsyHrkcu2SHdyxxKhRJoqXfJ+TZO0KIR1pTXxcOiuRn3c?=
 =?iso-8859-1?Q?3M78FTeiZH1Fporl24W8xkpfxPYyJ0UF0j6w9SR9gA0ppjUy6e3KFrUsUP?=
 =?iso-8859-1?Q?GxkSnCzN3FZ04kU2aUNgzqOOHZyGOkSPE6vw8iW6yM8ZqFWtGhh1T8RzgV?=
 =?iso-8859-1?Q?EytLD54+Xkcel7bZGyeIPNoA9GSkvlQALoPGKjY/6e+bWMci1lVbZBPTdQ?=
 =?iso-8859-1?Q?6a+cU6FgBe4CWrDo54716wzYIC0a8LIR9oYh6rXnly9Z48RQNjfveX2R1/?=
 =?iso-8859-1?Q?MDh4yYdwfwRWQSFugWMZ+CMA7IJbiQjmSKjwzs5pM6tpmVzp8/5zP7R/eP?=
 =?iso-8859-1?Q?FWj0AuSXGy1gVQg/?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 54daec60-f8cd-48d1-8103-08d8d3340431
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2021 11:06:03.6950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+KE0ApWPajnhtJytk0uoAMKtaI/9DEs+Pn9o3egDpDcKIWiaAYsamPiozgm7D40OQ5mfS8Q/vhPP81kszVwZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0401
Subject: [USRP-users] User register on X300 UHD 3.9
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

On USRP2, there was a concept of user registers,
i.e. memory allocated in FPGA for the user, using user_settings,
that the user can set in C++, using the UHD C++ API set_user_register.

I am trying to reproduce such behaviour on X300 using UHD 3.9 LTS (i.e pre-=
RFNOC).
I am solely interested in setting registers in custom FPGA logic
dynamically using C++.

Does anyone know how to do it?

Best regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
