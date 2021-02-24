Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E32D323F18
	for <lists+usrp-users@lfdr.de>; Wed, 24 Feb 2021 15:13:14 +0100 (CET)
Received: from [::1] (port=51432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEuud-0000rQ-3a; Wed, 24 Feb 2021 09:13:11 -0500
Received: from mail-eopbgr70104.outbound.protection.outlook.com
 ([40.107.7.104]:31015 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lEuuZ-0000nw-IZ
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 09:13:07 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8IWAE2J5NZUjHu8WmmxOak1Nxr6pMmFmSEs6Gx5BfH2gVc8psTx6pw/crWWEXczYrpeoGbbFBV4v46yeS80tMsp5Bwt5tPL03GFGdYnktk2zoig9XHdpHFm9mEiPDos3/CtmxxSXFuHO1llXGsrjrMRzp1lWZRS69mQGpEDcPQY2tj6u6u0y9XSkqLkwZMRK4ZFp8gMJvXx5opwKYhHGDF1LNpYt/EPNLDtipXW4j/9k/u1ONk2UsveHXCJThHS8140dKCIZzYorWEtSY2BRgtILRUV5tcW0rz04V+50EanGgtaWK4eFykziosXYJxQKMm3aMPAAgS2a4I4jW/30g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNBUUkzF2UufRlD2505khQhrLmB8stHkYqTQjloWLLo=;
 b=Zpw+iMgYD5mSXFWVjLetHWEC4Mde8U3AcymvZ1fBJJt5XEAFeHA+gNZrePSSzGOpIze3DKMYOHI24XWs9kMeoPG3po3D1axicUx4kPyc3qar/jGfT/mtnAndQRq+6HKUDVwwWz2Qu6j/M6LCAE5DnzDg9VwQwnvIbLCCH74xd8uyb+n6W+ylz5UyDTG+YZT4uMFnAO/lNoBMozEU7TCg1BUni47RJ9GaXSw8ha1QRehAbwdwoQGJm5lEB2Q8aGrl1ba3v+3gtqTlZWDG2x3933YkDWkJd1KtYDTZ3Jm7prk342eaeVFUJSTUTVhCiq7MmS70+AhMLYkHX997kUvdKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNBUUkzF2UufRlD2505khQhrLmB8stHkYqTQjloWLLo=;
 b=D3q+uMsscJxBC6aR7+6uxZhq0UeEtXYYnrxS5Z7xdejwpx5G+6pG/iRjEmXBUtBIN7KRUM1jjSkFgQ6Obhmq2ZTFWSDDX9gQIYzYv1fu5n8YKDiGgBtHmiagrkbwseXCloB4DUom9wyzmCEV+4D0nAbGArWJulXfpzWCBFKd4QE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0290.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:24::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Wed, 24 Feb
 2021 14:12:17 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%5]) with mapi id 15.20.3890.019; Wed, 24 Feb 2021
 14:12:16 +0000
Date: Wed, 24 Feb 2021 15:12:15 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210224141215.duuxzinpiai72m7c@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210217110602.esxs2qcwdtyzegtn@barbe>
 <648438d4-77c5-4177-f498-9356c435988f@ettus.com>
 <20210218092702.n43u6zpuagkgrazz@barbe>
Content-Disposition: inline
In-Reply-To: <20210218092702.n43u6zpuagkgrazz@barbe>
X-Originating-IP: [2a02:1811:371b:2300:2930:ac83:3fcc:1f09]
X-ClientProxiedBy: PR2P264CA0048.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:101:1::36) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:2930:ac83:3fcc:1f09) by
 PR2P264CA0048.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:1::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.31 via Frontend Transport; Wed, 24 Feb 2021 14:12:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 214c831a-aa9a-41a2-2d2b-08d8d8ce30b5
X-MS-TrafficTypeDiagnostic: AM5P190MB0290:
X-Microsoft-Antispam-PRVS: <AM5P190MB029057555AA6951DE1CB9ABDF09F9@AM5P190MB0290.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t3+eHntqQZnhNmOhJNmO18iEreHxw9zpLedJln6hTAEyoa6JVvwzzVOQ+qXHGuk+FGYa2M/N0GPa4FWKgR/hCgjspQ7OWxYrN42xAZV27+D9RmX+ukYAm9k/25YJv9SqRqEOMCSJUq+XhTt6VTbF2iMtEu2VcJCg0xxAWXnmxXxMPu4FtfhPKcGkIcYctl2kowHp0oCFbV0i4I8j/IlPSRWIQ3kOEi4Fu+8w1XedxfcqIheMGqsO24MIvmLizMGhBNZRxGQayzuWqbRyqBFcz3e200sXNaGJW8gtmQUxxt4sGYdlvRz2n1z0pPXYFgb0PQsnRX8t4liDsKkXgo3yRwoU447Y8VBPyLj1v7wk3ysjeLt3Krd837WoXuHi65m6l/XshI/cTk8nK6Js4JtrqBXjPLGXLcbBXnOeSfNG3p2SJOWkUR0xE+bO13WkhUAP7/ixl+k5Yfy87WHtnsFjSRrJamir31vrKkLdrcposLZ1qjAj/uIeJEJTRNc8boyzZTl8K6WI0gMLkVCXplw4ng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(396003)(366004)(39860400002)(346002)(376002)(6916009)(66556008)(8676002)(66476007)(33716001)(66946007)(86362001)(52116002)(186003)(478600001)(2906002)(1076003)(786003)(16526019)(6486002)(53546011)(5660300002)(6496006)(8936002)(9686003)(4744005)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?XLpNCqtLWCPKa+IlLuNXEx28UENUHefwlui4tbxb3TBQLqSfEFCZ/n9GHa?=
 =?iso-8859-1?Q?Gm8YTIs4/pyLhuDiBvznUhjCPUb61hUgPUqKFtg+cxa9rtyFKKmPSs8P2A?=
 =?iso-8859-1?Q?Lq/SnVhaxg2ZqjqiczkJh4tYcNcDxmjgE2x2/fy1ZCp+3OgRepaxEplLO7?=
 =?iso-8859-1?Q?kwWaTPt+xvmus8YPXs/O+LetGk/xUSciAqc2c3wlRAhDN8w1tzFHX2DVgB?=
 =?iso-8859-1?Q?TseJacxmfsvTmaHKV5trWRd/raC/ORFTAtZgtTEdtiRYro4mpgiGVckAam?=
 =?iso-8859-1?Q?u71eYd2OIOQg6G4CyF1hLJrMhwoIiZdpiqcwPfbXDeWJJ5CQqsQhrL8UWa?=
 =?iso-8859-1?Q?+zRrjEkmMF5AXq3OR9HH7JQLtAye5Vl3yHzeT8/yE6gZdK16dBzgv/uIdk?=
 =?iso-8859-1?Q?yrzQ7Mvi3fWBZW8J8PXg73xVLqg9QS4fXHA7p7+I7+xMZiOXoJm8PM5XMk?=
 =?iso-8859-1?Q?nhdcr2J1MQ9TZdDh9/QuhSHeSJ1OqOpot+1CDpu2V+8/BG1rfoEGyAV9DK?=
 =?iso-8859-1?Q?fBwYOB6O/LqD5MBQIt28xDfFpESyRqamHCXGYK+EQNHpCvcJ+7touMeZ/n?=
 =?iso-8859-1?Q?ApjsIjlAAn8daDnfirr8PwMk9kjE3wH7YE+g9Nsf8nMZQqWe8g1656y6L8?=
 =?iso-8859-1?Q?UYB0HWqqE9FkoTiZ5OBi9gupO3x+xI0+PAtZs06irBBcBCYI9DWVAGTbT6?=
 =?iso-8859-1?Q?x+ScHaz/Bvymirecm2RkzsH3tX11CMBdTKAFuq35BwXm+oxlnfQpq3Jrwf?=
 =?iso-8859-1?Q?U/dzG1ZM0VSt3b84DgAe4r2s33h53RYR6vntVzjfM+hI3qIDAdGl56jvcb?=
 =?iso-8859-1?Q?/2Slp/JM1H0/vabWUA9HH6KG2/LcYZGyavpZuqF449iGjpieXBHeHhQAre?=
 =?iso-8859-1?Q?OBAOLfZ4N6yYWQgd9hsEuv1fJ/Z414ZVt/Qyj2seefigxZP7ntVgOBt7+i?=
 =?iso-8859-1?Q?9S6YKZPuJ+WCAVbat60kewPBnETIWJh6vZ5FGBzvE36m+yuwD9yBrKTNWR?=
 =?iso-8859-1?Q?n77HDiBdeGv3Bzdhe7/OeiL3U1QadjOrl9qdDy3FJ++f1SWOOsf64mSOCW?=
 =?iso-8859-1?Q?QjwGBrqSlEsf27bwstc98PBczafDTULoKU/oWDWY4mY7ayuXPWAroOTkcK?=
 =?iso-8859-1?Q?1yyJHhJW9gjkCHPGiCDmgSWVBoE8z926JNggUyswLdLzIk+By48hK11u/i?=
 =?iso-8859-1?Q?gyltBQWCVe4BmqKlcIpuU0gEE1ZjkhPAvFCLxN4W4+K4/+Wkf3KMainot7?=
 =?iso-8859-1?Q?xL/ihKQNBfS/ANoNlFNd/re5Hw8Q3LbtBGbB99ZTQ7brGbASz+doZM5/bV?=
 =?iso-8859-1?Q?MTyz46KYhQTnO5038MRJ8XZLZVKqomT94ajAuexhYjeVkXU+ALOLfbpQbZ?=
 =?iso-8859-1?Q?se1SQD0k6td8aislWlH7L8FpIgPxGHhZUlzmoc5hO0WCKO+oZCtb/HqSh0?=
 =?iso-8859-1?Q?sP20IrbcZ2eWibtd?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 214c831a-aa9a-41a2-2d2b-08d8d8ce30b5
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 14:12:16.7456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KgODUVF90os/dczO1GXkTS64dyAyl2itZpVu9gdZlV2s32EA2g4wjPz7EUFJaaxH+a8AcVgpqT0AlEQ+KNshWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0290
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

On 18/02/21 10:27, C=E9dric Hannotier via USRP-users wrote:
> On 17/02/21 18:39, Marcus M=FCller via USRP-users wrote:
> > Then, you'll have to add a setter / getter in C++ UHD. That boils down =
to adding a coercer
> > and getter to the property_tree. Copy existing code and modify the read=
/write address
> > appropriately to address your settings_register!
> =

> Ok, that is the part that I did not get.
> I tried out with set_user_register but it failed.
> Do you know where I can find documentation
> for adding setter/getter to the "property_tree"?

Does anyone know how to do that or can redirect me to documentation?

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
