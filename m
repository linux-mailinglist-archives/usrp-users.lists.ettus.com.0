Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93018310C5C
	for <lists+usrp-users@lfdr.de>; Fri,  5 Feb 2021 15:01:11 +0100 (CET)
Received: from [::1] (port=49850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l81fX-0005VD-FB; Fri, 05 Feb 2021 09:01:07 -0500
Received: from mail-eopbgr40108.outbound.protection.outlook.com
 ([40.107.4.108]:17780 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l81fT-0005Px-Fs
 for usrp-users@lists.ettus.com; Fri, 05 Feb 2021 09:01:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W9iM/Ad/OzujjOqhOhvP25EVuEWIYDpbjSyYKwqV8Fd87D3jRGGTICA7gcCf/oPFt7QpdaAgiORKF9CAHEuLRmFVTfrjMEYMVOi6X8b7l6cvpRVSNXNjllrGU5AIQi2RGYlMeuW+31hwJO3Qa3j+J0xOJ036d80D1oIaiVMC53ia/RS0ms06CQyKSv5+jymgZVCoY5OgfKjIqaSrr3PLyamTEPLViPiD2ZieTxmZLzKsnYwDTXsxrlQ24eVMnoGAN4GWR1UsLe1GtNB/tA5D3XWLmlFMuYaWzZ9652ke8vVZeKerVwvIEOY50uQRcx+VE6vGw7TDivdtiI8uZ3KdnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Elx7cBh+tEgB7BKiu2gU+XboU/FU4Vnxa4wR29Tx4w=;
 b=GsyiED3LseZsTvDdFmT7LBd85x9bKtsXxZ7LTZ4ppcnYKzj5dcgfSnoBoyTqemHisFU+g4rMG45OEZ9KFMiyzH8HI64Gsl/nV8ovLV1ppO07unr7oRIMKbVkPm6+ak5O2gBpb0k2UBgePA7ZYiYbjOTtvJGg+VQBVjTwgJiUPlQfCGaLah45WO7d86i8w8zKnO6RTU/AJqTrTyV54fCL7FDS+EvEJP+Tir7UxaTbeFKMHNwHVtn0h8OW7WaAGYi4l2qtmvvgdEW9O0V9tnpT9XrVY3IPpSzxJXEY4WoHAzVSpglUsNyMttfj5vtSHJRAobXtVZsmD9ZLHIXgzhSaYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Elx7cBh+tEgB7BKiu2gU+XboU/FU4Vnxa4wR29Tx4w=;
 b=GXScRHr9wigyOSwDWcybRV7PVtB0oeHRczy1cApE3LAAM2NX8BENPialK/kw/6Pgv/MnT8VVk6JxD0W9b34c6eqC9Ra7vHDuDF3dAMvAaGipChdIKAhaUBlFgyTNQRXmEKALGHsS6+BCW+QQckAlyxBV4h6+69CSGsM+JgBJXhA=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0742.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:122::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Fri, 5 Feb
 2021 14:00:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3825.019; Fri, 5 Feb 2021
 14:00:21 +0000
Date: Fri, 5 Feb 2021 15:00:19 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210205140019.6guqs6lvotibkquy@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:5a91:d0da:9189:b709]
X-ClientProxiedBy: AM0PR02CA0149.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::16) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:5a91:d0da:9189:b709) by
 AM0PR02CA0149.eurprd02.prod.outlook.com (2603:10a6:20b:28d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend
 Transport; Fri, 5 Feb 2021 14:00:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d16d376c-45c7-40f3-2ae2-08d8c9de6070
X-MS-TrafficTypeDiagnostic: AM7P190MB0742:
X-Microsoft-Antispam-PRVS: <AM7P190MB07428BE6F4448863743A2DE5F0B29@AM7P190MB0742.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K/Re78gwZYZSLEQ/ZEWnJ01aMfEy8ebJpBfxF6uRaMSoGHaBsCTU3AxF46JXPL20Pr7RQnq2tT4YlOXZAb9SSI5UlYLcCfEbaZyKa2rzg9vOp1HQWtrkCl1vgAUAhRutG9goWV/cjTGklgu/AXys71iszCR9bUDepW7IMB+TISXbNmBIldwzRSFPJKyCoaCEJicA8zfDnfPUNOlULSUxOFeTEWcKqh129d78OzQprCacb+RHJokxDDClNaUIaRmLYO8oofPaJ+PwfoFZHb1K2KvxGN5YAJ4TfvfuWAmr0Q1OPmsR1KF7LN2wFjYxdZltLzpS8KPgM/b5wE0x7y3344Bt4fXxO4cSjqLYj5LH6w2+G2wHSt0XftenolCIdk7iNl+3KOPF+ivuOWXyCns65FfLfpyF57EL6teI5uquRRe/gTtINm5aSEXrRM1fqzmZSFSON11w7u0joT5LFsZFWVLGhcAs/CEOhN1kpQL8oXWqyb7Zboy17nFpns2mUFKWzGdgyUYe8pKkiHhjjuQZAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(346002)(366004)(136003)(376002)(39860400002)(8676002)(2906002)(53546011)(5660300002)(6486002)(558084003)(83380400001)(33716001)(9686003)(1076003)(66946007)(6496006)(316002)(786003)(52116002)(186003)(6916009)(86362001)(16526019)(66476007)(478600001)(8936002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?VlI2taJ1UZfJHEgtRidpW+qlZ/BhatdW5JCV0vj4MiR1G2lzGoHxb3WDMI?=
 =?iso-8859-1?Q?avyr0rLRo63dP14FrUqDhNxwhJIviEqc08Jkb2ega4B1liOnKsyugUHQPU?=
 =?iso-8859-1?Q?v9+JPtRtPJeva4KhKMrV6efDcnTcMruEuxCXUk5iQ8A5AID//GIMofQfQD?=
 =?iso-8859-1?Q?4WOmA5ml5DIjLJyCyHM8b0l4oThXpuSVDzY8Do4H6SYE+eferEZqPJPxhP?=
 =?iso-8859-1?Q?Y6nFliO8RjgKnY34WGwSfMqxL15IKCgrzcasHss6VnPOIZM8JBspE7hGIj?=
 =?iso-8859-1?Q?PvuPC6SoXyR5aokZMB9CX0QvWZqP5ifFJBjCUZXmaoFdPrY789tDgE5155?=
 =?iso-8859-1?Q?gM4MFlafyjt8tlyJaWGmbvdJ8iMdogEnscutnHy4QReKayEpQBpZlGbcNM?=
 =?iso-8859-1?Q?EunJQFNQ7V3Grpn8KnwS24laU+UqqOSY7msc5Vov1amQiTlr3LSxR6Eh9a?=
 =?iso-8859-1?Q?7J8U6rvfVpCKyHHVfo1TNwH2Y4Z3DlgD/5+/QNbC7VSeyeVnkUVTIeipvP?=
 =?iso-8859-1?Q?kiYzdYzHQUORN5fsqNOhVOMVmfyl9/z2KpkgKaINywI7Hgtj15HXZk9DWA?=
 =?iso-8859-1?Q?kYIAqKZKIKGVIUcoKy35hwXigjvfcWwDC+TMgMMaJtyqEw+j9dPqQmcKry?=
 =?iso-8859-1?Q?9RgJJeJWBqQtlm5AN0ap+mP9Qfx1OWXkjJFR9rdfUQVfZTsRANzrjgnmDQ?=
 =?iso-8859-1?Q?1y8MRw+43quB9RNfQL7CE7hkikw9oE8p7fM85lgZF1u6+RC4rpvXR89P9K?=
 =?iso-8859-1?Q?Ql6llJ290723X2ALlfNVKXJ3DWsvCT6TYEDFXDc6A+Zqub0q+rlQNYxXfz?=
 =?iso-8859-1?Q?OlSkURMydqYX+GCwA7wo3sRKSxbQB7O0cXVYjmugSARgjU3r1NiLCtasex?=
 =?iso-8859-1?Q?Z+Wwvpf5ZdO/95z2ru8cfmMZ0feejdn3bWXyBJ8GPjprUOzAM4qz8vMjqW?=
 =?iso-8859-1?Q?NHIzUzFY5+rAkcGbtTwyNbEBs5/dtDVgXgeuhZds2UoQR1/He9LtwR2SFu?=
 =?iso-8859-1?Q?VFP/GBKd6ToxqBcpYezHkOXaxQdPfMv2SFSU3+I0e8Fsj3kgpxA83qsLCz?=
 =?iso-8859-1?Q?XLtP/KqHqgcHmtyKR3sHOVptgFe+JdyQG99dcp6cCcioCf+3GRIdivTzoJ?=
 =?iso-8859-1?Q?aqf1ct3q2iMXgYPh2iXmxR6PofGFdfOEJMMqyKlZvxTQd7rpHB8IPFmqEC?=
 =?iso-8859-1?Q?6NFaG2wkFqOyRU8SVwGJFxiR5XylqibVZPrzTaDQW5F48yQz5Bemph5EV4?=
 =?iso-8859-1?Q?kNor1M/G3fW/jmakrM946jYujWPAA9EjAZ9S3ffQzm4Z8b2l8ZxjY87H5s?=
 =?iso-8859-1?Q?C/ILK9AsFGEqtca4BD12BurH9H0wgbLKAQz67wdkQJHLwMAwg74JIB5xJw?=
 =?iso-8859-1?Q?ZiZmK/FhBEyCawv9C7EqGkvOv18YqM4auKrVIHEm5txhmzO0wXv1YAAxK0?=
 =?iso-8859-1?Q?7dsKhobib+uWH+aV?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d16d376c-45c7-40f3-2ae2-08d8c9de6070
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2021 14:00:21.4266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eZt6BHxoSBY28sKLbqnK9ByN3FFvEhzv/fDokBZNaanxuIX6OOiHUXLQPPp+38yCE4Zz47hvKNCQKGZT45CzEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0742
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

Dear Wade,

On 22/01/21 11:21, Wade Fife wrote:
> Yes, I have done it. I'll share an example with you. Putting your IP
> in-tree is also an option.

Thank you very much for the example, it worked!

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
