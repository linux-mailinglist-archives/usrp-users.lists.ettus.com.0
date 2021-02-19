Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 850C531F835
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 12:20:53 +0100 (CET)
Received: from [::1] (port=53000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD3q6-00012I-MU; Fri, 19 Feb 2021 06:20:50 -0500
Received: from mail-db8eur05on2098.outbound.protection.outlook.com
 ([40.107.20.98]:12129 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lD3q2-0000xh-IJ
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 06:20:46 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFzzUQHY9FGtNuVWe0mC+yi1VmKxJl2WxH7E2aFE16ueOZxzrNZeUecfLLTYA0tFSYCa/kay1U7J2kRmh8dOAlkXlxrYqTfPY62LxotNJez6GTN8fxbl8meKajG+czCyfcivDRbnzroyyncRyrxh9k/NQcgyCnDNc70HRbxf3xDLnd4ll5SawBboenW1Yebb4YLTHIR1Jp1t30om+MS3HZO/5MovNyv4Dk8hRsRdjgU6Us+Y5D8okpDV6/4yTx4ZcMPvVovu20YhpbjuvBO9mP5WZ/1pppWNF3WV9TGA4sgdttoDNNryjy+sdnN1FKPphVczKemxpbcAWHGWC9AZng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qWrHrX2CAGsyrgQiu85/CVzKfqkF/Ivy5Gsepa1bI8A=;
 b=fL+cr73ZbtjbCbMaNcC1Tb5yLmJLlRQuDOBafT72Nuv/nTxjUM3Bipd2YPg5OwtnAwAW4WdN9F3TuEsRkFP5xSRURWCdXZj8zkpzF0GFku/ZkDMOXF02dxWvoYFVAYW8KJKTvHkugIkw/WmEKrZrZ54248cfQuRp6Hwh7q7+uY0xiLdapsxTpisdjY4D4DNZx+1Fs+JThnMWcraRT4hVCyk/JNL0z7LOPwfs8MD3gMZpvhCeN+TBrMWQ86U7hgM20nW+wyprgRrvlSkvmtNyeqSpoyQqL1xCxAPD0wRDAxRVoGlHLweK5aXBTwHZUcqoTABfWuKXBOZ6rldiZyItJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qWrHrX2CAGsyrgQiu85/CVzKfqkF/Ivy5Gsepa1bI8A=;
 b=udE11WJ6fJ74v9ABS3GiMQNaFPm8lgDVv/+svTINJ/G6Uhte79EVxQM/8eVKrUaMuM02D/9KAU/rFeLAQI25T0UQDcd4ybDjcWCgjsXyKgunH7BMNM0d0721InYbZVm7yY/8LnDxqm/hBTqZhzo5SEtWpTSLfynfnxLoXeSteKY=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0760.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:114::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Fri, 19 Feb
 2021 11:20:04 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Fri, 19 Feb 2021
 11:20:04 +0000
Date: Fri, 19 Feb 2021 12:20:03 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210219112003.z2mthwtk3xjkrmdl@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
 <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:6e16:c032:6d2d:86da]
X-ClientProxiedBy: AM0PR08CA0004.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::17) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:6e16:c032:6d2d:86da) by
 AM0PR08CA0004.eurprd08.prod.outlook.com (2603:10a6:208:d2::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 11:20:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d71e7f09-5e85-478d-8732-08d8d4c84e06
X-MS-TrafficTypeDiagnostic: AM7P190MB0760:
X-Microsoft-Antispam-PRVS: <AM7P190MB076009FDD9AAC41BAC54FA0DF0849@AM7P190MB0760.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EiC4y/+AV4WhstuaLPO+j/Rn/PrksZbOu9+A43U+TghZuIJLWs0oU1+afkqxPokIecIyG5WJXrb9rJHqEcc/ZRBcePg797ctjWB0vpK4HfsXjvh02EeSD/HC0E54ExX/fL8fdMgnYXtXwDBlEv8OBrgLkh18yY3acHMJZyVTtTnZXx6u+M7kRas65g5n8V5+9ttYlWcr+TigFsvVSwOuFcOF3Spr5ewcPAvOvrAkttz8LMIL81n21CLUwy6+zLvQKgfeshEYw5VLt8O35sk0qc93Iux8HfuXNRTJc1zcLPD9t+9wo6dDEvutWvZ5IJAJVulK01krRo/N5F8O9JFuyEILj58rFV0Opw2mxDv8pezN3F5OdXshq/G2o8ASVNBxBWFk78ZWHRNkwbnyjGS3Dqv6oBS22w9Z/m6WY1BNaPb6+9IVVGuJh2/3KE/y+JvLN1ewCrJ2tSr4n1Ko2SwxFzV2xFNP91ZZkKlbyRE9YFJi+htXDk7t5q91fg+dk/L4on9UrzKM+N1K8BJUN0PIDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(346002)(136003)(39860400002)(366004)(376002)(396003)(8676002)(6486002)(16526019)(53546011)(66946007)(1076003)(45080400002)(186003)(478600001)(66476007)(786003)(316002)(66556008)(4744005)(33716001)(9686003)(2906002)(8936002)(6916009)(83380400001)(6496006)(86362001)(52116002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?FBeyaO3ek4+MVCHEPKzYo5XP64O8LlyCMu3Pg8r6E/dc0d3bb09k/vmWLC?=
 =?iso-8859-1?Q?QQFfYR70BrOhNisShZmXe3bb7gYSQL9wJMoJSviXiTHhc3h01QBzroL1aI?=
 =?iso-8859-1?Q?ERiyWQ3OIpJrEQACCaJT05i0Qs57YS7WrDo1q5npg1vpz3zHJalNeM4fYy?=
 =?iso-8859-1?Q?+5NnvHJM2Y1dkNhU0IGb8qXafOLtw4UThuU0vBsCjUemsFLne3ShVqOSVI?=
 =?iso-8859-1?Q?qnjj5yigEpGqJC44L9bYXAufh7S0Y9Q66TI1MwRxIX5n/Tm+acYEMDDNkA?=
 =?iso-8859-1?Q?c0Ff/2GDLZMl1F0ebU7snFOZA5RaOmGZtnrrIQp0uR0Ywku+i1Z3pOKuNn?=
 =?iso-8859-1?Q?KHmTDyGq511xRy5BJ8RwK2LSp8Aue5AbGvFaOGx0ic8gXDoquCcGF7QD3l?=
 =?iso-8859-1?Q?CNt6SU2d+pZyU2WixyB+ZfFJkzJTxWgr23883ZizzNpahat7iYCxKJrf45?=
 =?iso-8859-1?Q?E9r7qpU9bI6BvRlAFfjZyiV1RE/7UZ34EJICKfPF1Nzw7d2KFtkOtihuFo?=
 =?iso-8859-1?Q?1zz2hYZcmqqGXzrFf8RgL9y+zzOo9tfrjGc8UCHtc4prAF/zkO1L7Mj2nf?=
 =?iso-8859-1?Q?a07zcqcECIv6HFEV/G+7dUvzGy3I6hkklSHN8Rm/j40ne30Y3xQvz3uDEm?=
 =?iso-8859-1?Q?gwuphsPPHVv69xJE/7e2thsiJVGOXz1OiPAgBKaEpbouFPJDwKaiDAkrcp?=
 =?iso-8859-1?Q?I+r90bvfdQjLvE9YoBK3S++vyw1YPNkhUzftg25HXGFkgiGGp8L2M+k0Ez?=
 =?iso-8859-1?Q?gitInFlvKueRqJHGEoAcmPjs2GFJQzmRPShcE/vxht6XWUBUN6Q6wOeMOp?=
 =?iso-8859-1?Q?LSsnnGhd6HpmTTxoKVOnLYg9jDQlzv/OGhoR9hCx2E8iXbfIkIkzFXVo17?=
 =?iso-8859-1?Q?b/+SmS3LPl1pUrHQCNxUibGvChr6lgRBKo+dlRhKQ3l2AFQ/Qv9Bd3J2aS?=
 =?iso-8859-1?Q?VIkjKBWqQK6U9bnopfxFMu/sCg4D5iIabNYoj60jpFru5rECmny01n4Jio?=
 =?iso-8859-1?Q?0rN7kfyy0zTKR62X63rz/8VePlX99a9K6r1ajI1uGLw/QYYHfeLJX5hWS/?=
 =?iso-8859-1?Q?KNq0cCbMt4aqqGaAC9AUp+Y+T3St8X86DhLZRUS/mKspfZqv5vy6ymNmAH?=
 =?iso-8859-1?Q?HybCQltE11NQKJdFr7JTQ4lzYt9YHhgnkMX6G0H4RPYUDwG02h6FgLZesS?=
 =?iso-8859-1?Q?MSfBVHcGEfl6UR5oqT4Sc+YI2VDniHPBsZnCdT0QbjlAjtIYxoZ+PoyTjs?=
 =?iso-8859-1?Q?cqxTgX3UcBY4lWNA0veNDfauh+OZscLq0gA+IB5yGK5T7A+iYkwEf/OD2w?=
 =?iso-8859-1?Q?sKHh/eG1IUbhYrhB7kI7tAsah+CbanJL6fOcmTXdtoBosH1eAoK8HqA9LL?=
 =?iso-8859-1?Q?JVrbM45GM3FCksG/uLNbdm3u907ch3o3USyOnPreyNfgaye5mbp3Xlg+r2?=
 =?iso-8859-1?Q?ZiU5U7qwk1n5m3f2?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d71e7f09-5e85-478d-8732-08d8d4c84e06
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 11:20:04.2883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lzt1GOhqeWyh+WxHjmWJZW+vjlHHqML+Si5YlwbLjb0myauT/uLlxQyFY8m74Aaozc9cA4EcT16Kq6y+ERQUbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0760
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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

Hi Rob,

On 18/02/21 17:32, Rob Kossler wrote:
> I previously did not have the link options correct for building OOT.  If
> you look in the CMakeLists.txt file in the Ettus rfnoc example apps folde=
r,
> you will see a link option "-Wl,--no-as-needed".  I didn't look into it
> thoroughly, but without that option, the OOT blocks do not get linked in
> (or at least their code to register themselves at startup never executes).
> Once I added this linker option to my custom app, the OOT blocks register
> fine and behave normally.

But #406 uses the Ettus rfnoc example block, which provides this link optio=
n,
and Ettus rfnoc example block was not forwarding the action.
Could you check that the OOT Ettus example block is able to forward the act=
ion on your side?

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
