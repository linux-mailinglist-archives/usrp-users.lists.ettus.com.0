Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAC2F2830
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 07:05:46 +0100 (CET)
Received: from [::1] (port=33388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzCoI-0006C7-Kq; Tue, 12 Jan 2021 01:05:42 -0500
Received: from mail-db8eur05on2127.outbound.protection.outlook.com
 ([40.107.20.127]:11104 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kzCoE-00067X-SQ
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 01:05:38 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JzPIWSjGFo+5aHOcvnB3Blr9UNOYi1Np0sL5A27gd4sqGo/t/2iW7LmHuhEYzhbyfujkIlIhi86rWaOMhoiLE8BD0mjbp7m5LFRwlM0w2ht3LjwiyF9wj8y1VULvKbOIHEvJDfUdvP6AM2/FyBGOvhC/OTVFtJ5ptEztrO6nxp++8g7zCitYAEVFEnS8rDQawSt+kaUJwzQD6qR2tuv81d08FWEyZlqdiLQphYLXoVlzuWGEjtS47X5bn34v/V+ioJ0YRs5/AfBttUym+YQv6DmVp+ff+w+bm0mWc+BG4AlZ50emAI8AFZ0y0f+hmQ4Lm4KBvAXvB7kc2amPOPEtIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jDKM8Qd2TWgX8ZMyOLytJm8DsaXCVbj+tnS9YMVhBnY=;
 b=dyXY6gpzGngtiO6kwH0O58aON5k6Xljl65tpFf3Hszf/ep5e89woWqkaBy7gRyKn6BbsfZRlE5xH+fR2Kbm+YIabZ9TZRi2jlNJjLkZhoQK0Pf2gbVyd2VXbjJCQ0wQ9ZEHdYKInfG2A6/300BwZpX02V+css9JvUi6fzLHjpPIJH9GmAQgB0FDt/1+4z0x+KnpPcEhAHVhEt2ZNcx6BRwf7lqP39BtOTLxT/D9VRp28s1Mfz/mpswd3em7hgC7rr6e/vsjRKRZ9qT5vFE37+Q3bAxxQocaG1qwij81Mr8+lCQ2Lz3E0aNHNwy+m6EhmgG79G0ZSjuGZwH6nTa9hug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jDKM8Qd2TWgX8ZMyOLytJm8DsaXCVbj+tnS9YMVhBnY=;
 b=Fxu52xtoBALla4l6Be4Ip7uNSeN2Dt1SrNCKM3xeTNY4bpwPDQABxGpHApL5wC8CENPSRf55Rwt7+bo1fGJ8mvBsRPwZ4PS15ZXtdcJGqblsnLeaC+dO638brOsjUmJr0xkXLlcHcvpaoi5tXrytX9L97dxkhE2G8ddiKYWqyoE=
Authentication-Results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0308.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:17::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Tue, 12 Jan
 2021 06:04:57 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Tue, 12 Jan 2021
 06:04:56 +0000
Date: Tue, 12 Jan 2021 07:04:55 +0100
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210112060455.n3qol2fr5w7nbuob@barbe>
Mail-Followup-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
 <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:eaad:ea25:bc7e:ad03]
X-ClientProxiedBy: AM9P195CA0028.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::33) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:eaad:ea25:bc7e:ad03) by
 AM9P195CA0028.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:21f::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6 via Frontend Transport; Tue, 12 Jan 2021 06:04:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ba2a44a-c07c-44ce-f117-08d8b6bffcc2
X-MS-TrafficTypeDiagnostic: AM5P190MB0308:
X-Microsoft-Antispam-PRVS: <AM5P190MB0308EC94D49B022DDCC5E423F0AA0@AM5P190MB0308.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uSA/8kwZYWktpMJGZAVs5a78CjRM0N6zASt+WO1iDcjkjTrQg9CruhGb1MRIi1crPVYa/0EIABJqrpnqqAFu9LDZUU0C9rsYYxGU1+ImjR/5tya00e6UIUVGOYS9mExFt7GFgmzn6ThOsVhDcu4GjZ8a8xz+vcYRUIpsBR6ONoYJ6fWl6MJu+/uc4yH4pDb6Ys0uizBzgh7i/ViYg3vzYsOlBoWt2uQApGlR/FYIisaOu4zeQBxWKbsDL4x4qrqc9E1s9ZQuvXB4bgk0gGyvqiMn+GRResvB9JLtQ6hgRMzElbWEXZXpXYu2FC/16l7S4pURoK9LVVO0AGclQcInfJQf58Z8LLJUunFj9DA/uYREsj0EHkNY5jPuXDfMJSo+10kWE9Isx/AGUoQTVw5uEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(39850400004)(346002)(376002)(136003)(396003)(366004)(33716001)(66476007)(478600001)(66946007)(9686003)(66556008)(4326008)(2906002)(6486002)(53546011)(86362001)(52116002)(6916009)(83380400001)(316002)(5660300002)(1076003)(8676002)(786003)(8936002)(4744005)(6496006)(186003)(16526019);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?rUDoD8msV7xWk3woxTCKTednJiEqpipfE5W2cGyzP0S1zJWLQ3vuNfDkWT?=
 =?iso-8859-1?Q?MTITZW0vqSorTt6FeQcXi2Ag797qNpw9UEsHW7U5tH+6hdzWEBau5z9Fls?=
 =?iso-8859-1?Q?qv1d16s6UFcgX9wP6oL62if1HI+L6u9vZFcWp1lYWnskQ2hav2sHveu53Q?=
 =?iso-8859-1?Q?w1I55cRB7INKAr9Lng7lmvstpIiNhdBqdr8VN/dpHhxRma1+zLEK72a+cu?=
 =?iso-8859-1?Q?q/BB5afoZcGtUfAIjrrtxoeFF8WAVtrKwAk8nIO+ZyE4nbUOucIfFpTRmr?=
 =?iso-8859-1?Q?mo1T77U+0XVyxZa/VXXtMY+T1hEByAx/MauTEYJwTAUYU4lSPtU+rh1YVr?=
 =?iso-8859-1?Q?XcqXhwCAy4lDK58gEHhW7d7utpiKGz5Hllh42etddxLot34vMumDpn3H1Y?=
 =?iso-8859-1?Q?uTT94ugDZQt0wps6GLbmszzXgRyqX6R28Cxm4ceg8O5RvOk7TEIQRqlcYc?=
 =?iso-8859-1?Q?b5Sci3n2zfjeJT7o7UTGHckjeNfXpy/Q1vxcwMsDJMPd8vRCnuX0zSk+cc?=
 =?iso-8859-1?Q?IIy8DnuTT9TGZjwlDZA8E5+rn0W91hEj5kOr6qLwYpJgz3L/ZEQeZbprKD?=
 =?iso-8859-1?Q?WT1X1tSd8ZGW9oStqdeCcW9IuWiDIQolCzvtAXLfCwbpdg9xwDkw2lqg2B?=
 =?iso-8859-1?Q?fw4paxj32jHBkxivtgu6REWYIkphofLbXEMBKyz6sJG3xNkIIGe8rqJNBS?=
 =?iso-8859-1?Q?Grc4x538RS47tJgMG5bgL6S04Q8xgWfFWd4Cya7QF3j9NLfvboG9QQ3yz8?=
 =?iso-8859-1?Q?wHqvjbYOr/5fF3uk77/p49WAryLJetqH6k8/agJht5K630n4uzOu6oJYkm?=
 =?iso-8859-1?Q?ya1/qT5HjKenlGSJiViAsCtmiExx88L2pEbUyP/4CeSuLP45UVj2/6l2NC?=
 =?iso-8859-1?Q?vWzK+ZZ6N2aTfmjDhAMC9OfsH/EfEbz/Gb0OgvheyfpjThM2yoQAAV3zLE?=
 =?iso-8859-1?Q?PAEkJEpYSdteiEWKt8R3YBX71uMzWUCK+zTITEbnVkGYKAjwgCWSqTLxCV?=
 =?iso-8859-1?Q?kHg2/iRmuBveSMF27FYAZGhLOKXKaOuadDcN0CUrB/sF2EjECntSir7yOH?=
 =?iso-8859-1?Q?qMtVMplobhm3WQX3QEMcnxlADYTvRTNTU22oX16wjUT5?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2021 06:04:56.7642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ba2a44a-c07c-44ce-f117-08d8b6bffcc2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aA20WcBqfI0cbR5x7KgHP3WzMSBypNXz4+sQGjAy+456dtmAk933F0xXIj6ltOTBT689qPx0tHxfxQgpzwgVng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0308
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

On 11/01/21 21:40, Jonathon Pendlum wrote:
> Hi Cedric,

Hi Jonathon,

> Does the issue go away if you comment out test.start_tb(...) and all
> instances of test.start_test(...) and test.end_test() in the testbench?

If I comment out test.{start,end}_tb, it fails with:
"Fatal: The connected block has an incompatible backend interface".
The testbench is unusable in this case (whatever the GUI value).

If I comment out test.{start,end}_test, it prints:
"Fatal: No test running",
but proceed to run the full testbench (without reporting test status).
With GUI=3D1, I get the same error message than previously:
"FATAL_ERROR: Vivado Simulator kernel has discovered
an exceptional condition from which it cannot recover"

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
