Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A220431ED34
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 18:24:39 +0100 (CET)
Received: from [::1] (port=45608 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCn2Z-0007Cg-RM; Thu, 18 Feb 2021 12:24:35 -0500
Received: from mail-eopbgr70124.outbound.protection.outlook.com
 ([40.107.7.124]:56442 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lCn2V-000784-Ka
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 12:24:31 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mg2+wiaclBw7srI05l0/jjl9GsclYz7OpztEKyiFMeJLK7zcdzCAlMmHJ4SJKCXzs6Hrm2Zbcw3Ri482LIcoF7hkjTteuHTinizrRkqIW4QWdH2N2svnWMV10SFv3eW58SN5oFaRZtfF6ee/5cvryIREC3AiTYF5XTI785KwabCWkw5k/RRvH4rkPr4e6EFRxaUHFpkH5Yt4i6TVXAxV5e6nlTSL4GyHF1XMuK4wV+NcEUf6OqgrUNCgWf3iN7nPBWVvP5pWAdCKZR69T6K8AawsU6qwv0vWEPyDTo+EPsUV0sJLsxE348USFpU97lUMQhe4ZzEUtdFhLXXvFvmElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uH2vdnG7oHGdHVFC4ZaOojJ8FqygWSf19KkcQMuf8EQ=;
 b=CJl6EsKSckUFuxLiNAy6xYBZD/sRKEIsS8tv1QfE1PQP2Wi67cts7VrNkW6nkY7nFV2t+kaZEY+dhAnlkoaI6XLCER7/jYhc989BJGzZKleTvJg7OrRuPl0MSrYBivTWljD4xL+enHpn0ZltexSzS/C2UuL4YjJfRQwSCvC0kTXfYW24r6c7LePWIn9j473+gmYmuTnBkPa6E4awGOedgS2hh9JIuK0mTifX8+WN75dvXmxJmvEZ6dsK0cvlp6z3U4B3VNUdsqgwUmnr8SUDCx6JOMfILqgomIEkCI6FGODbujwPYJy3EUBSWwv61T93EibzbJMoS0z4H793pAa+Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uH2vdnG7oHGdHVFC4ZaOojJ8FqygWSf19KkcQMuf8EQ=;
 b=wFlB+RhP+Stt/8Z+badhPzis/CRSpLJpKFVZ2AcC2QZpeaf+NpLd4Ppivx1jfki6S91gd40hbwdefVJ7f06zCGkkj7zhkbnCfRP2tduO5OgaLrLwjUXVLl3jHZkWlpC47JtKt0rJM1FVEmrta+Tp8iOvfRHpe1Dfo5dJ1sFm6B4=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0259.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:22::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Thu, 18 Feb
 2021 17:23:49 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Thu, 18 Feb 2021
 17:23:49 +0000
Date: Thu, 18 Feb 2021 18:23:48 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210218172348.5xjhxl3b3g5ptjnd@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR01CA0115.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::20) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR01CA0115.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Thu, 18 Feb 2021 17:23:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c29a1d24-7420-4fe3-23ea-08d8d431f438
X-MS-TrafficTypeDiagnostic: AM5P190MB0259:
X-Microsoft-Antispam-PRVS: <AM5P190MB02599FC3817A0A9E97236EB5F0859@AM5P190MB0259.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F7ZVSNXSY1ugu3NJ/3yyRP1wCXmJl95fteh7CDY/geXKhkyj1w/DWzHmVHN4RZRUrpG060dnAO7PzjdjEQY8If+CWIbmQ5TYVl+r3+nYZqg+tdV5JQyKNbLWdMMp5N8wrjcaSSdL0zZ1BlNDtMwAVVka5WLk/qgP4U0qDYC2ahnlEREPlulrXdylzzrw+OprBuZh9KatEQN0IkgVuFpW16BXPabiUa9c5M6ppRk+SgOgKJCtLy40GJB7AM/ysfG9gXyIRdbKNrr8TDtBHPrvglB/L/YtjCa5nde9h9G0L/T2kzd54OjxHlh7WGiE0RCZGxae0Wrg00TLgF+z8W81Brm34beso6Umy1Sq0AS6R/pUhxOfZ/mf02+RSfVW3bP7P65+aKykMHiwPQUGfoaZaAYKFo660nu9qlHVkryOHCFKOO8GwcKYBSLQqUlbtGUW7f2y40GrZXd7nDRcuSlt8Lig3WrVdQwCJWAwY2JOy8qVkKSJvGZKQ0331S65HhJQnHblrt7Pkxq+J+b+D7L/+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(376002)(346002)(366004)(39860400002)(136003)(8936002)(66946007)(4744005)(6916009)(6486002)(53546011)(26005)(86362001)(33716001)(66476007)(52116002)(6496006)(5660300002)(8676002)(186003)(66556008)(16526019)(83380400001)(1076003)(316002)(786003)(956004)(9686003)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?I+p/SPdyQ27t7mmaB6HO1rCUUxfxnEpnUoJ+vBu0h1wClYTOWLqlFuvJdw?=
 =?iso-8859-1?Q?PRwPtTYK1ep/m990tw4LWTSBtq38Nv+k1ayygVHzlWeA8SWZNsRO8dIYAR?=
 =?iso-8859-1?Q?J8VPSl6cdSAL+dVSqskGM+alD0l7OZeFUr/gV3oEOnbAP8mY93DL3BfY1+?=
 =?iso-8859-1?Q?PxIv1H/eTfzQfwmrInieaHNF9L6bSxGno8ecCg/xDhkx9anumpTN37FDhW?=
 =?iso-8859-1?Q?aC58BFZH+Kcbjx40Mgl8cphX1VdmiXzyWH8qYctrUKSacb7HQXzfN2FExz?=
 =?iso-8859-1?Q?Dl1Ss5S1JZqXQ435CU6YZtjqlq+Y4lUnlUgbt8t0SzCF+wqSn3S8BnuPee?=
 =?iso-8859-1?Q?HF9eWY2v85QcDuQEK7GF2xflloB5BL+bpnOW13fkNaflibp+VlkIkfqYje?=
 =?iso-8859-1?Q?XcQEfonF6k6P/vO5wUghWSBkLxpoJvYwKClpf22YKH8reecCbfEj/U+pw1?=
 =?iso-8859-1?Q?kTprWgVWrslUUtnMJXvRvp+/P8hVsZ5NJaeJ8G2ov6IXS33dbcl1g4Pg6W?=
 =?iso-8859-1?Q?MMd/zKYaYOXIxyxPrTiWh7O4rWgQVZTjufJhwJ2ZKO/We4gi8YUzt3UIkH?=
 =?iso-8859-1?Q?GGC72EqH42+8IbqZ51yyy2ftchvQAP8WI9UopH/KjQBcMj4uG9KgRbOoTw?=
 =?iso-8859-1?Q?zKmgZgu+11gX6u95UgvR0S6al9hn4SazERbpQMkWTf+vhIop4nK58e1dun?=
 =?iso-8859-1?Q?yXhalXwA0EVF2MUrxPQSLvl3k51dmnBGNuudQoRBp/e/L7t6Kl+KTJwfvc?=
 =?iso-8859-1?Q?ntzxqtJ4t43nWHoD6kFAcDQmm1rDyzxuBcBUqLF8HLq4bR2kct9lhE3Bj/?=
 =?iso-8859-1?Q?aGlGknp04MJxLHVLO9kbmp1rBORfFPKwABSwibWWlb+WFLlwGsmflbpfKh?=
 =?iso-8859-1?Q?rWxyQUj1a5hPzGSQ5LVgMiQszXceHx7Gnut2ERrEPdo0HBsiTlurmAO7bL?=
 =?iso-8859-1?Q?7faqGWcCJgTMqH6/POke0S45yyus749+Jtt4nfMkQ5XjY7Hrc++Vbg+OVg?=
 =?iso-8859-1?Q?zGGTcomQU96D2sAD9MjyDe27W3iTJgxmLydDVvvhlNmH/g3cIwJElne8Mm?=
 =?iso-8859-1?Q?mJxlAu9jU4yymx/AecmzjhI9InHpV/yaYcorESFOSz9owq3WLX2ytuUlWP?=
 =?iso-8859-1?Q?wk2pAFy+Ryj+DlOQXxJ5xzqQ9wBLKCEgASVVjhdw+JAF2mW8dkwXvk2qN8?=
 =?iso-8859-1?Q?3tQLHNxlf87pvURDsUfyPB7LFWpHSsUao0y8ohzlMYE0j7VazjdSPIrkWS?=
 =?iso-8859-1?Q?Jt9cN0HGQsJa+j4WueUhfy9D5R+Eqqwf6foVNznAj6xutCwaLSvk/ku/vz?=
 =?iso-8859-1?Q?NsXm82U2W+zQ+5iGcDy3alCyGsAumJ5SHP9tiqecEenO/bKVI5vo0wPXTO?=
 =?iso-8859-1?Q?xRJiXl2rSG?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: c29a1d24-7420-4fe3-23ea-08d8d431f438
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 17:23:49.4774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AeHCIp8sMvAFs+JnWfQcMufZKkCi99F2QQ8/3TETTDXNtHoDSvjd0hTzQkQMjrLt1rhJ5x4LTE5IJaREjXdKDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0259
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

On 18/02/21 10:57, Rob Kossler via USRP-users wrote:
> Following our previous discussion on the topic of building the controllers
> in-tree or out-of-tree, I was able to successfully build my controllers
> out-of-tree and they seem to work fine (with my custom application).

OOT blocks with OOT controllers were able to forward issue_stream_command a=
ction?
Do you know what you have done differently from our previous discussion?

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
