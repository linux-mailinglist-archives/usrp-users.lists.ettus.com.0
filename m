Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46569323F4A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Feb 2021 15:55:39 +0100 (CET)
Received: from [::1] (port=51752 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEvZf-000554-JX; Wed, 24 Feb 2021 09:55:35 -0500
Received: from mail-eopbgr60130.outbound.protection.outlook.com
 ([40.107.6.130]:29057 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lEvZb-0004zL-Jy
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 09:55:31 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBspXMTjR4u3g1Q5vDNfPV8ql7bAFI7KQw5Jf74S9jr+xYOazpbrynOUTp8YK6UzZAZLr6JhSaUQwT7Th0kDaZBbKnh7goUDcvIXDePM4OxaI7bbgRXXaqI67+qLAOhXhtjByshZ4tPxSewYSzVs6bMLWMF+/KIHrDEibDheVp0BgCssCZ05E60hRlIK3Lc8qbM5NfRQWpTqS3Bz/vv6KSZtXTN0n9l22jm2jtWSkrMueGGgV0E7ObQf7982tDLgB5zObLWd9USAzi/Vj3THizDTE53tbqT71aCAQyY3AXgwmM3vP8fNo/ajT4DIC67da2mWmXaA4fKwzw9ZQpzckg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0ZRH/tQL+CZGqKQyhjE3VMKVJ9qWFJiA1k1rTm7BwU=;
 b=GB75Va/E4G9htZGN6Qo6JqqKoQXNFv9jZsYcGMCzgY99Vf3Hmnfc2Vyq/fdfaNNmLEDxdcsQDHtphnw01dikn0mk6cYgj+VQBIXYLWi6oY7GLD2SaF5M4lMDTt4xuGt224VmehYCufs27kFWkMewCnXlDLuwPuwAE9+mJ8sBDsVvtT3S+nfYWs8+V+sjtQxw+PM1guMWmZ4iPb3EGO3B0B/G0BaiWLor/j/SSsTFP+oppPwObSUOmfxfTl4jIhukxfIZcokIoRn4Ab5XSFzPNUK2ThHhqOaP+WGyR9K8qdZ3LuVM6oUgjvXPg+dA9oYr08EhGPQUoQxgbAj9DAaoRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0ZRH/tQL+CZGqKQyhjE3VMKVJ9qWFJiA1k1rTm7BwU=;
 b=ce2FAsE/F1xajJ7Hs+jA1sMdfASnoXiQO+yZ6eEz/pWOJcI8yJg1gt/BB6UR92FaiYZB4N+IrWcNQGdWG3Hn2Kbda4G4wrb6SlOyYREGUsO+BGF/N3UsDPeoanBDxTJ/Iv3F4opLHHnVhRYDppBPNGyfimLyR6991wNpZ9cyzBk=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1160.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2ed::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Wed, 24 Feb
 2021 14:54:49 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%5]) with mapi id 15.20.3890.019; Wed, 24 Feb 2021
 14:54:49 +0000
Date: Wed, 24 Feb 2021 15:54:48 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210224145448.zdhvcmkdewsnafnv@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
 <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
 <20210216091941.yaclsgbeh7spm4tt@barbe>
 <CAJZBg9WpiJ4rq-vLq1RCpfoi+rGBQM=kEE3Mkz98VzAyZccZOA@mail.gmail.com>
 <CAEXYVK5beXcuyjj1tD31ptiyecSM+4izRvcYrNpOAzk4oG-LVw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAEXYVK5beXcuyjj1tD31ptiyecSM+4izRvcYrNpOAzk4oG-LVw@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:2930:ac83:3fcc:1f09]
X-ClientProxiedBy: AM0PR02CA0025.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::38) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:2930:ac83:3fcc:1f09) by
 AM0PR02CA0025.eurprd02.prod.outlook.com (2603:10a6:208:3e::38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 14:54:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29f49f98-2d2a-4f98-6e77-08d8d8d4224c
X-MS-TrafficTypeDiagnostic: AS8P190MB1160:
X-Microsoft-Antispam-PRVS: <AS8P190MB11602E430A7865C8E420203BF09F9@AS8P190MB1160.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4dQCSvY6M9PQN/ByunDVgxDeE8XKz+bYFAQuT0WaNEWq9fxTj981AGZ3txKQKvCrU7rfwAT2aUbIreIByR/fvh7AayOE/UH7eXS6iCW07RcHD/+HTIx2OYGDY/SvvPkyx1pTMl0Xe1Q/HFDNq+WKl/6V+ysOniCbWB81XNiVcVKnEe5DM9LM9P1KUvtmA3tWqmF4xzCp+4D1ge6LVU6qBn7oN9SZPQs647iPcLWGywsudheBboXGqI029J67SX3d4UsxLQMFjfjvSThiHiqOFGnQRBgJkEz2Il1lagtwEsN6K8xJt9OBheaPFMZqhxn7J9d5LJuvqf8TWIRCcb1pseSpY0ihJCxeNrOS+kO5uUT9lQaxLMKR/OwFO5EWynEKtTP6zgLwMzxFnDDWpZfVpDOClKGDIQsrj4GHLyEwhbBcxxiMq8sNQPZ4QY387LVo4BhhzHDszk1u4KVbF8V5hjD76VuLQxazZCPltN6imQ/qHtJoo9C65bKTHJBs+GULEVBhEoAniji8qdO9TaAj8yYNiRaRwnCuAuVcPpnprvmETKcJH6wQwMWs5rv1Bv+7KUHfrO5L/UqL+8Tdpn9fyK3Q7rh+PbD+MEhWfJedv+A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(6486002)(5660300002)(6496006)(53546011)(786003)(52116002)(316002)(2906002)(33716001)(966005)(478600001)(186003)(16526019)(8676002)(66556008)(66476007)(9686003)(4744005)(6916009)(8936002)(3716004)(86362001)(1076003)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?SogUBaaEQm7QCaofULEujAv0+fLRGwwg6gDjeTsd4lrLW/2016GJfirNNn?=
 =?iso-8859-1?Q?XxJ+fcIa2C08DrYo0xSbfoQ+6ZuytcahVwV3T9h0AKM6Ua0jZljhswSFPZ?=
 =?iso-8859-1?Q?q/6H7r7k/AXqoJThm3PZfklR1iU1WraSaOfYW4ygwo81oaHxY4m8WxjDMt?=
 =?iso-8859-1?Q?sCPMmS6VuY0MaOzyAmIgPvpG3FkV97vvMurV9oIPe8CyX8/beZcPctm4mz?=
 =?iso-8859-1?Q?ZgNwe0GHHJPBH8RyQVNG6ZjUyFtz1rfC6BMTZNXNllPClRVC42/c8SlxuP?=
 =?iso-8859-1?Q?LXimgHipR+SFV8oKlUf9c9f1nFavd1LU7Iri6Q8eoHp7SgZXIMQDVcfm8i?=
 =?iso-8859-1?Q?Y/BUS9pdCVElEcp1Y8wZ7Ak0DbO+f1bVbz+UECfrhKPkc8nNAAeIgOUVKL?=
 =?iso-8859-1?Q?2f5mSUjYMJ/VcvDp0J55AwXv3hLdnvupBY3E8j7tyx7OBaq7LTO3qWC92N?=
 =?iso-8859-1?Q?Sua8z/bgXC8GtHE08Y6eaE8oErBMvmv8li9L2ZopObL58ZJe1Y9wyP7P6J?=
 =?iso-8859-1?Q?d7V4OURJXlCaQSkWe7E/y0O1dkDjYK3RaKTESajps0l4LDCIHVWg6QsSxG?=
 =?iso-8859-1?Q?1LbqPi3OoSzBrdjN+Ng1n9t/331iA79hdlQaVGko7c0xVdWbZlRw5AaCE8?=
 =?iso-8859-1?Q?TGHlwgyuGVJ6FmyUKBjDg+pDr11AtXMXtAJvHaa1a1gbYMj02YZ4FAl+p0?=
 =?iso-8859-1?Q?k4JtTTLe42AESC/QcPAgkDao/KWxVjObgPbaQI89SBNFndhPbO5cd99fRn?=
 =?iso-8859-1?Q?WAva2Kpjke/vdEB5/5F//OsBRT5I11aPd48ZOJjP3qJ9bRSSM8WTircpCg?=
 =?iso-8859-1?Q?VN1Ns91CI5S3nyBiKghEuqdVkKjEjQkWNwJxkAztbvlIOkVnmzKh+Ta/JJ?=
 =?iso-8859-1?Q?CmfEcECpSIuxsMXnahJmrkMZC7CjqNSpIfkU8PXLAqC/iRlSx0puVBcG49?=
 =?iso-8859-1?Q?QMnGqF0h8sLdR5te5JYhcT7+R3/m/UYAurFCJLo3DATiHH/kITklzCoOHH?=
 =?iso-8859-1?Q?fCzGNlveRWoJn8afJRZk5t4dgl4n2iAxfQd66kWrJkOhdHWZC0L25Gspm4?=
 =?iso-8859-1?Q?cpheqDh/3l5stJ6Azo3unl83SzlFaeN+c5jkIqklGfEblyyNqqoM5YuwTE?=
 =?iso-8859-1?Q?nBM/uXqHVusc+7hLk7U1QF+9oH/OSv1ttaX64M1mFXPQJ2cbsw10X/4G6t?=
 =?iso-8859-1?Q?tSLmZeq9lN6R4aJ6KmB7zCy+Tk9bnXLTmtugJ0gOo1EibGRLucaip6CwBQ?=
 =?iso-8859-1?Q?mmyAqzCWxaLyMpbDBcQBumovvWYHb5IkaK+ObevXWhM2hp094ttiSwq6yb?=
 =?iso-8859-1?Q?9UIEGXv0m6yGmrdmcr+8bFm8n8B73Y0FzwhS9Ye/CqgQIy6xcaTRj/tfVl?=
 =?iso-8859-1?Q?9mljMuvIeHIJU4Opei3mtEQ3A+0cfhQe1Nrvq3x6wWFZq6lXlYeEGbYu7H?=
 =?iso-8859-1?Q?vIk5AWowed13Ij24?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f49f98-2d2a-4f98-6e77-08d8d8d4224c
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 14:54:49.5743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: odCbbO3yRAKnBrvIvr+NsUimEuIfFFJUZ7IYBvFS5xn9hxaa9UEini+IPH+yrNeYgZ1ptfDHTbOIkHSqrs3pmw==
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

Hi Brian,

On 16/02/21 09:27, Brian Padalino wrote:
> For the sake of the mailing list, can someone post the example to a
> repository somewhere and link to it, so we aren't passing around secret
> helpful documents?

I have uploaded Wade's code there:
https://github.com/f380cedric/UHD4_RFNOC_OOT_IP

Ofc, it would be better to have a KB entry...

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
