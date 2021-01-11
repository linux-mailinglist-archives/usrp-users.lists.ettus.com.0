Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD392F1497
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 14:27:32 +0100 (CET)
Received: from [::1] (port=54432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyxEG-0005KU-3M; Mon, 11 Jan 2021 08:27:28 -0500
Received: from mail-vi1eur05on2114.outbound.protection.outlook.com
 ([40.107.21.114]:3808 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kyxEB-00056n-Nf
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 08:27:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpdH91+Qs/WpJONa4PQMO51XWuoyRGGQYlOcFtKkzaw1jy78ZxJsW0Ofs0iF4fL594tXHZg6nrxTRyqD9dzj3YXeuCS6HcA7h8KBXMFOSG+2yfPtxV9uS5glLBJKhptmtWnzimTuMVYwLmHB9FrkVPXGX6riEDRBfCivE/CTP07tn8jwXazZuKX34t5Hb+GxkdBkAASwBYGoQWmB3W9gt81bzIo/j5ksYhqIAV43hrLcUWMQs8bTNGettpKVzC7M19/KXwAHiMNWNqSQZk/bKRuJ4sMMwFY1aWboFf3AZLQ8KihfCvUwzTH1uvC9g6RmwC65d9QKSO/NX/3qsC6/6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bU25fOL5vbHExOg5g13c+Irh1C45xIltY5vZFxv3Z/A=;
 b=RkZcje61wwa8UQHB0fDqSbGMZZQNPn9QPq1I/S/keORy2Tu0zwADIT5N30bEoZsiJXQueNimihkPjxI3SAqYtS245u/UJjuLeTgh8BlC1Apz/NAcWfz+EOfsbaRhLVcS9Br4y7ugBPU3h0N0/8lTM47nC0whznsKXYdCMrb2zICEGy6uuruh5a1vbgJo0zr+NDsckLnlo7zWVF7oqscH+mNyzac/pGV6pu2pl1RELzUQCLlqkUetqiL8BweXv9MJbYQvTA3jTyuot8cFw/dcs2n1hY1UpWJUbkCS//bd0LiWfJedX/+kt1KEDMUXl9TIiQri497j/qrA4cYbDxIzPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bU25fOL5vbHExOg5g13c+Irh1C45xIltY5vZFxv3Z/A=;
 b=jFxspoihY9PnaplTkn8rYVOim+IfHMGk2MFC9/QOiuoS1Wy/tFUfLcXSmZ6cpnrYPAg73MXweqz5XuQHC7XEVtMo9/AJGtmH6O+2r7y1KIXGDR/ykrrLBT8k/UCezJFdx9b3IKq1JeqpQNEk5ORsG5neymIXaORA9Vu3Hbp2AL8=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1366.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 13:26:40 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Mon, 11 Jan 2021
 13:26:40 +0000
Date: Mon, 11 Jan 2021 14:26:38 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210111132638.ef7xc37dp2tmq5wl@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <1A0C1E24-F805-4627-8830-F3F87525CFCD@ulb.be>
 <CAFche=gs-7qDfLzUW5tds5ihgdLbV2_-vD6+=VaSsNBknBrh-w@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAFche=gs-7qDfLzUW5tds5ihgdLbV2_-vD6+=VaSsNBknBrh-w@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:7af8:9817:b114:ff99]
X-ClientProxiedBy: PR3P189CA0036.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::11) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:7af8:9817:b114:ff99) by
 PR3P189CA0036.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:53::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6 via Frontend Transport; Mon, 11 Jan 2021 13:26:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1118b0a2-b265-49ac-f353-08d8b63487e8
X-MS-TrafficTypeDiagnostic: AS8P190MB1366:
X-Microsoft-Antispam-PRVS: <AS8P190MB1366F836F0B4082B7768E5B0F0AB0@AS8P190MB1366.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rb2dPdOh0TnFUFP579R9g/C/BXLDu+Mn9qRlaTQbY8VyVe+UB83AMVMau+onRWIMjBGPlo2A8sJ7lnuefTmBT6ZzGJ1+bqnXkrO2lQ5qlxrPF16UXmJciQ3IdDsqW8PwlTmDc0KxtpZE4q/hiHs/piS4vRaN+BYxHVbUGOByWR0bm9BzY4JaC7Qm2aFu9h653aaNXIaGpVvbjyisul8vKB4xqfEhm/kXPGIJP3Zc9BL/nPfElbeX6yUZCLuQJ9XZkMZ+0FL0vb6WTT7oS0peh4QTEzsF+TQIzecIDWuLJgFd2o/cMg6tnccvJ6m87dg67eMSwi2DPG7YDSLcOsI0Le+suwF4upjKimL9wGOmqFZ0jzqfVwUH4lzpFd8qmQjVhE77//a3YCgABBoj01h4TA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(2906002)(52116002)(6486002)(8936002)(316002)(66476007)(786003)(16526019)(86362001)(6916009)(186003)(66946007)(66556008)(1076003)(53546011)(9686003)(8676002)(83380400001)(5660300002)(33716001)(478600001)(6496006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?YERzLMYWMV700PpGES1o7ESGRedZExkSm3W7SKGS5tkoqs/m/JFWKl5Dvl?=
 =?iso-8859-1?Q?o2ouRA2AictXeW1q6KXVEm7vIHt9sFkxtG7+IxAYeSe+y7cB05JDjJWtVV?=
 =?iso-8859-1?Q?nW5F9PLgDJPcLnmrLaHKDV17hWQioET9I6PITQpYOm8ruMVtsHKirjYi5w?=
 =?iso-8859-1?Q?zM8bbPvg6UuB1h73m26rM1numK9S56WrdB3p7NY6DrpXbtu4ANCe1/B55z?=
 =?iso-8859-1?Q?UkTV0gQ94jnGPZdUlrn9+bYDhX66FIa/OcYg9o70wG87yix0g2ALEMofNm?=
 =?iso-8859-1?Q?wo4ZMAFKx+RFC7lgNBIWtpgwek4j5s9gI8b81SGCpg/KowNkYtjMiOtOPM?=
 =?iso-8859-1?Q?qpT9gbdjRAr5OlbTEdsTucv6xXSqMKFeKuIfWB8GhUwxTs0TpKJwpWoCji?=
 =?iso-8859-1?Q?5XNtWBBM48TUnCFVTkVQp8+PdcNfAYSN3Li3jE6awQFADmQz4IYNxOh7Cb?=
 =?iso-8859-1?Q?I84wIrf4KsJF9GRpgWneIpfVCs4PXRLK7btMEQ9UbuVEl87i7Lew/v1NtA?=
 =?iso-8859-1?Q?hCOnmpv2kpCvnHdpp08ksdq4VpFBxhbVTXQLLcajmS1hNlN3M2hmr1Hw3c?=
 =?iso-8859-1?Q?JFAFcsGOkj4Wt8eq9qBrnHIcKf0panTlbF9QmulC3zRLm42s0/KJ/x3yKe?=
 =?iso-8859-1?Q?vbS1L4iekf5pfc3chB4DIwANd21qTTE/g8E+kyFKpCpVhxF237FrPQZV6R?=
 =?iso-8859-1?Q?Uw/e3o2GfQqm0eqHvg8aryZ46Sbtr8N67yR9M0MmbaZSOB1qhy3WVVzt4h?=
 =?iso-8859-1?Q?7dOOMyeuopUV6PWx+hsg4IVoyAQ8KlThNl250VGbJ9jcFCZ/PwZzs8zwj2?=
 =?iso-8859-1?Q?INPRM+PenYrIP3DlwWW1kEDN+TVd3QjjhEmCwqHEAOnUCsYpwhbOa84kki?=
 =?iso-8859-1?Q?dVm1kqLVNq4hZxEwDNIKSrnbg9pnLmsT6TPQ1D/jOkl9npr4DbZ6ccqQhd?=
 =?iso-8859-1?Q?v9eFAA4HnLvgOjvn/zXihJRJOjnlcZ8chEnO9WPehkpNqjsqJ5zldkuwdW?=
 =?iso-8859-1?Q?Agmxvd3U1igjzZ6h6COmY7mkB7kohJ6SLVDADRj0laiH3n/7Qrg4GNrVjk?=
 =?iso-8859-1?Q?CIeC6S9JL60THtmfiOx7YK8d1RAezy1R7HFwB0ZZW1Aj?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2021 13:26:40.6983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 1118b0a2-b265-49ac-f353-08d8b63487e8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SEbs/d9D07lrfvgues0xS9h/0LZpBUnNxk8FnnqPYwyUxHPhpScInGzzfF90eS0Vpr9fv/KVhUBHix8n/9QrrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1366
Subject: Re: [USRP-users] RFNoC Specification Questions
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

On 04/01/21 16:09, Wade Fife wrote:
> On Wed, Dec 23, 2020 at 12:37 AM C=E9dric Hannotier via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> [...]
> >  2. In AXI-Stream Data (2.3.3.3), I have no control over CHDR header.
> > What happens when the block drop samples (e.g. keep_one_in_n.v)?
> > Is the NoC Shell updating header field automatically (eg. length field)?
> >  2bis. What happends if I drop all samples of a packet?
> =

> When using AXI-Stream Data the length is automatically calculated,
> assuming SIDEBAND_AT_END is set to true (which is the default). If you dr=
op
> all samples, then you don't put anything into the NoC Shell, so no packet
> would be generated.
 =

The Spec. only tells:
"If SIDEBAND_AT_END is True then these signals must be valid on
the last transfer of each packet (i.e., when tlast is asserted)."

There is no mention of "automatically calculated" field.

Furthermore, signal derived from tuser (e.g. tlength, teov, etc.) are
described as "optional".
However, my testbench output *some*
"Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length
Time: 4575 ns  Iteration: 0  Process: /PkgChdrBfm/ChdrBfm(CHDR_W=3D64,USER_=
WIDTH=3D1)::get_chdr"
as long as tlength is not driven (but somehow the transaction is still ok).
This also applies when SIDEBAND_AT_END is False.

> >  5. In AXI-Stream Payload Context (2.3.3.2), it is stated:
> > "NIPC: The number of items delivered per cycle.
> > NIPC must 1 or a larger power of 2, such that ITEM_W * NIPC =3D CHDR_W."
> > Does it also apply for AXI-Stream Data (2.3.3.3)?
> > If not, what is the rule for that Data-Plane ?
> =

> Yes. In other words, NIPC sets the width of the tdata port. It's always
> NIPC items wide.
> =


But when you look at "host/include/uhd/rfnoc/blocks/keep_one_in_n.yml",
(NIPC * ITEM_W =3D 32) !=3D (CHDR_W =3D 64).
What am I missing?

> >  6. Is the nocscript meaning we have to rely on the UHD C++ RFNoC API to
> > interact with blocks and the c++ meaning we implement a custom C++ API?
> =

> I believe that sw_iface isn't implemented yet and I don't think this key
> is currently required. I think C++ refers to the RFNoC C++ API and nocsri=
pt
> refers to NoC-Script (a concept from UHD 3.x but not yet implemented in U=
DH
> 4).

Is there any documentation regarding NoCScript? =


> Correct, the "registers" and "properties" sections aren't implemented
> yet. These sections will allow the tools to generate hardware registers a=
nd
> software properties automatically in the future, making new blocks easier
> to create.
> =


Are you aware of a roadmap for this feature?

> I hope this helps!

It did! Thanks!

-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
