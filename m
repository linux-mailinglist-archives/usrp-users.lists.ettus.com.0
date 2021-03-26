Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE61E34AD1A
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 18:09:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96187383DB7
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 13:09:10 -0400 (EDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30114.outbound.protection.outlook.com [40.107.3.114])
	by mm2.emwd.com (Postfix) with ESMTPS id A2ABF383D8B
	for <usrp-users@lists.ettus.com>; Fri, 26 Mar 2021 13:09:01 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rl15HYvqvr9lVa2yzB3DMe5n195801QJCZKMTpHTHhUTt+rfK/a1+mjw7ogZCham4pRR53K4uOGujTOh971XpiKWpiFlePJT8wuhqTaWp8yrPwKCg+OZ18cnIk7D/pzi4PGNcF2VAfhEE6X67eXYlWVB+ZtijxdQhQ5ZEzPmNW460PfJb8CcStiJVCJck5OGYEdEa91ibSNMG5VgWyUXIcW4PzlY8s1FtfhlPqNJ8elOeJpwnN3+/9WV69/FTaDmL/FwwUF6+gzhxhbF+0WBfuvUwce866PauFMt2cjE+ctz0gWzh3iaWovSJFnpKSj5aNyAqcktVy5HI+Eig9B7Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4bD/UYmzgqc2BCbB7d/BdTyaLmV4zuCBv1JARikDJCA=;
 b=lAQFxphpXklLqeAMq5f7YlXxM32umKp7OIUERUSNJxo+3rO4ZM4rp2WAbzhNjZiawdqioX19Q0OUx0GlxrkwgKebMGKQYxGC9/S8d7AWe2F/vWLXhdEn2NIeko7C5l67aus37h+2F94WYSQUc/7WV58RBHlIOdxrVSn+MntWHkDD8XpVJ8jzV8qaILB2IS0cPD0L1fUmTj+LoANm9uPspmd/sXpzgzdkmG8LRpc5Nawy1hlpBb8P3IINE+5YSTrevcCGPsMmlGAze0tGOy/VPQ6J8Yf+PGh920OHIvSWMcbtL0uBv2njtqqz9ElJ/rU0uT/iKlfg5XBvgPdA9+H7hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4bD/UYmzgqc2BCbB7d/BdTyaLmV4zuCBv1JARikDJCA=;
 b=Ceb5KjPdY8HiWn7NPeqwgtxJ97f5Sxd3lh8AFzvpsHKNP/D79CXgY7gRUVnS0wGzgke454pEbTjT9HcNh5cKDW15Yl5PTp9iLnz5sR9MH25Qf7axYqd4YCyaH+tyCzhK38tUZk3Qf7IVqvPM0CTe57SobdQCXIyjm9dkH0EmGmg=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1205.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2eb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25; Fri, 26 Mar
 2021 17:09:00 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%6]) with mapi id 15.20.3977.026; Fri, 26 Mar 2021
 17:09:00 +0000
Date: Fri, 26 Mar 2021 18:08:59 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210326170859.z7556qox4usoevrq@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <icnEO10mb8djlxYxZkhSnFMe9f23G6665vICAtTJJ8@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <icnEO10mb8djlxYxZkhSnFMe9f23G6665vICAtTJJ8@lists.ettus.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM8P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::13) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM8P189CA0008.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24 via Frontend Transport; Fri, 26 Mar 2021 17:08:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a7dff3c-c96b-4f92-1125-08d8f079d944
X-MS-TrafficTypeDiagnostic: AS8P190MB1205:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB120538E062DC95D367FDA911F0619@AS8P190MB1205.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SQhSPo2NbeKkcMNHDCk9i9bQquSNjg9XYF8UunDdsSZAEKk6sp8mBuMNrgdYv6Gqzb+m+CrdCjr9HDU0rif32Ei2ELw43u6HhgQbwauHosjHa2VjFyU0XsrtMZBQLzi3kaeWBeLls2IUM3QkMp2r3m6X3IK4+OZc9M4EHXFm0xZ1sJmMstPMmgjsTF8IKFbzT2JoHxUazANd6eRvS2e+oJjWhoeUjvZWYng6SiS8fhWSVPRMJ0+x0JFVZVV7WfLmIenTd+27JkDl9VWByDuHIhctv363S2SHyMEcrSVj0nV9lPrJD3uuIo/f9P8lj4/rPR21c6EeEmXCtUywx5pT/0Z/PGM7zHv6jtfi8lFzpoFRffA/kFUwB+2VUv3h/jo5kbzkDoxjbbXsWKdrbTvXC68kaadptHxtx3sB1OrwYzY++dwQ1TaZXBSq9cb7sxWXZKn+xTe7xztqWwaFWge5MOwSiBam6AaXnuJMUVv8zfTJdwkB5rzlyq4MxjJ1FDPbVV+ik7ad6tOBBCCGJBKtZvPDFiAMquBmzMFD14RQ2El2FEO8OU6a74VtfrIH5vHmvEeOSJofxPOPI5PD1ftNz7i3yWe2sV51pJkAQH8wFkfhkSk7xK8f7U3qXG8VG63BpBLwYfJRMy3u7aJ7bZwDr3bFGw1timwvEZyRVjH3yNQiNsGxZHiHmgrSg9D4UgBxXTK7DK0CK70sfnOm4IiLFSWCWDOI2xImgnqR0G0A0RU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(346002)(366004)(136003)(396003)(376002)(39850400004)(53546011)(6916009)(2906002)(186003)(26005)(66946007)(66556008)(52116002)(66476007)(6496006)(86362001)(956004)(33716001)(38100700001)(6486002)(16526019)(5660300002)(478600001)(1076003)(4744005)(8936002)(966005)(8676002)(786003)(9686003)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?GD9mOeqktLFnL2o9q1OAbOmHtbvlzsSSu27Nuac+bOhHLxMwS3xXE+wCF7?=
 =?iso-8859-1?Q?tVn9suXny3K9sqQKxOgAQlFWoTok7NcSPVn62FSZzmoKOdoKInXmDfrCKk?=
 =?iso-8859-1?Q?ELMWSAnBRu6m/7AQjrGfCVeLskHfVfyjs+HPCFVtjrpcfvyO//z9mo7z0/?=
 =?iso-8859-1?Q?Emg0ns0jTo7AMVxRySzX9UrxShajJaIGWJbKiTOat607uJymCLMHurGRiK?=
 =?iso-8859-1?Q?fOm1F0j11viy4IwKZnbTFpMnGdsXC0ANTdfkqi0w3TN7+V0ZFEdihuBifo?=
 =?iso-8859-1?Q?MQ6KqrgVAvktvgmaX6/FsepgfR2Z1WUq29AdH9kUnRtFSPalbhVQ+LyPUD?=
 =?iso-8859-1?Q?CFJqOqgBAC+Bg0s8wYvhafXbi+9XM/9Yw/OW+Rhp2UMVZM3CgJH8M1m6F5?=
 =?iso-8859-1?Q?ykPMiKyU+A7mbezWefSB9ZwiVfEltwVW1WAQkO7S8s7TEGiJkUbq6eXQqg?=
 =?iso-8859-1?Q?Qio2B0p+gUSTelnC2v+ugL5g22Xha49Spji021NsMIOAEZt3rFzLygH2Z1?=
 =?iso-8859-1?Q?AiwWmfq7IF1hbO42eL7oKC2OLTK+2HD0IJdu4kQiN8nM9U+Qx1sf/pGkvG?=
 =?iso-8859-1?Q?rYtiXlTl/k3i/mLht2QHeScWVXrYrMLgIHB+r+Z+vP0j4sPCiWfP3iQwcD?=
 =?iso-8859-1?Q?1AtYJTP3Ec/pcYK7loEN8T6rgEq9bvRjKN/qRiG/NI0D4vierAgdx+0p0e?=
 =?iso-8859-1?Q?BX6FpvE39eUsofKeYHzCQltaYhNtpPecJYSACtRlq6pb70tAmm78uXM1TH?=
 =?iso-8859-1?Q?HBvoYRF8g07J4XvzefKkBAN83RwjubBbCT3tL/w+QFdFT4xnEFpyZL69jC?=
 =?iso-8859-1?Q?jh6jrgkjR/D458Oz2KSwDp3Y8gw87uqL1sxbGKZOkczBakPi+A90O8ghUV?=
 =?iso-8859-1?Q?vUQJpdjduAg7S02Gujj4gTeVL9a55LOVgNxAAZnm5x047b5gACdhIiVfTo?=
 =?iso-8859-1?Q?NzZvvEKudDwIScV/MfwODyArWv75UEs1uEsBPe0Mt+hOk5kf1xHyGHYPoB?=
 =?iso-8859-1?Q?WW8TN6zgMxSTBGoR2QVQTyF6g7G0I5ul6mSIR/kBiMt7DYpfkw3prwUFCn?=
 =?iso-8859-1?Q?+jQfbMiXnaGjOhSxSK8kQ/97oVIHJJCEGGV/G5pg3zdg/iPCTxlVBzSR7c?=
 =?iso-8859-1?Q?Jr0Xm4ruKxJpQDyYR39hoi5oMN6k8N4+JyYDjMSkaWFJAbQ5bW58YaLxKW?=
 =?iso-8859-1?Q?u+bSYf3qjLMvGF/1IMJfaMvXlvOSS9ftcu5+j2pLkmRU4GRiNAUs3G1g/0?=
 =?iso-8859-1?Q?6UfczEiIMJD1NRETPJLHSO0EmEzXwFjYBZW6RvlZQFtxyFOew3Cr4rDOSl?=
 =?iso-8859-1?Q?Eq6e0ya1/pIwok8NJBHU3QjqtBw8OhPkWOw7I+3jg1EtOSEilkrp12p/vL?=
 =?iso-8859-1?Q?hOMD1V2Kam?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7dff3c-c96b-4f92-1125-08d8f079d944
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2021 17:09:00.1095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PgCOoF6ZOlBFkSEZ1KVxk2TmNmMV6dkJ/3imkUExde4+s/QLd49Xj1jLR4BGMcZVJ55ZqCLVCVhpD4qg7f6G6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1205
Message-ID-Hash: Z3UF2PEGMGYQAYMFCECZTIL5ZPF6XTOY
X-Message-ID-Hash: Z3UF2PEGMGYQAYMFCECZTIL5ZPF6XTOY
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cant search archive
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z3UF2PEGMGYQAYMFCECZTIL5ZPF6XTOY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Christopher,

On 26/03/21 16:29, christopher_beaudoin@uml.edu wrote:
> Is anyone else encountering errors from the website when searching throug=
h the archives?

If you mean mailing list archives, see this:
https://lists.ettus.com/empathy/thread/MMLLWUGPGIX2XZDAJB7HRS5I6SO6UES3

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
