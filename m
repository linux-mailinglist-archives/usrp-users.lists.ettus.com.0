Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BFC2FE91F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 12:46:27 +0100 (CET)
Received: from [::1] (port=46930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2YPv-0000EL-Td; Thu, 21 Jan 2021 06:46:23 -0500
Received: from mail-eopbgr20139.outbound.protection.outlook.com
 ([40.107.2.139]:35077 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l2YPs-00008M-8A
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 06:46:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dU8Lei1oev6y2CKPR9PnlaWplfB1GNnpnPk4H6Sz31AKlDA2f6J3+8jTdYpvaTuV5egBnfmBKh03WT/SdO0XIXxWwhW/qSruxqESO95JTTjMvlaq3mdz+oSbjNlrf8St8MjWnKISzTCc/RtgSl0dfCSJ3eVi8EDBMkSlO3OiVMhsL3pjMcuQ4kGjKTDTyLhQXMraX7dq+zpE0pxEs9aN0YcX6lGA3zbIMR6tWdDp3IjvxqNDSa1sxaCjrYV2JwqZnxGyKdgWc6Gs0H/X0FRGMHzDUL3KCRUK5Qpnkl0LRQXoalY3ERDyQ1KMi8gCSbSXvmjac8MKW3W/gYdq2KagCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iJILFwDNb3XhRy/OszXTyRZKJ2EQ0ROH4PYhDbH5FIg=;
 b=KygpW6QW/h8t8f/LQApj7Me6IJs+bpy0SxM4RTBVCcgCqN9XR2siuL7+YeqS431qlRWTPiSU3K0eHd+Z62fnCjd7F9/04IgpRq9rCGjbVy+W5e5J9MDGpseQrj8ZUTdkYIg/u6RZoqzbI1D4rul7HPTwmVS4BZhFL/rrL1Ziv6YfAh0F+etxdpga01yt3d14OUXRFt1TbHSP01ZcbpNJh/8k2HBy2j1ieEh27E8GfXKsMM4+tlewDWZepdVFLgDh0UqCRZOkepby1H4pmfWsCI++Dw/wfKT+3BaQdiCZtFY3kriNsRDiwEcLnAW/1b8WJAh0WSMaTwvXz4RIfwbLwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iJILFwDNb3XhRy/OszXTyRZKJ2EQ0ROH4PYhDbH5FIg=;
 b=Dww0OT4ufLKHrDmFnQ2g22Z0R571UFQwDQ1kYhnSyb/SWDRYr9I+ASdFvjSScWH2wg/bXKaZl5cBXrEGkRqe4+mQ+KWrmC1IuXh8m3F7m5OIwnu37f7vWMSlHR05RzsWMFtOFFsbzVQueXMfCOd7Q3MoQm+OtYlPQrCvBpwyGSc=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1112.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Thu, 21 Jan
 2021 11:45:38 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 11:45:38 +0000
Date: Thu, 21 Jan 2021 12:45:37 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210121114537.wlcmuh2f34f5mowc@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210114233657.pjmcmwburnh3gja3@barbe>
 <CAL7q81sucmAEUzLSD1P8xp3xta3Lj=Y-hVF_cjh8kXoMU7tbrg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAL7q81sucmAEUzLSD1P8xp3xta3Lj=Y-hVF_cjh8kXoMU7tbrg@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:ecfc:3d22:1f91:100b]
X-ClientProxiedBy: AM4PR0302CA0004.eurprd03.prod.outlook.com
 (2603:10a6:205:2::17) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:ecfc:3d22:1f91:100b) by
 AM4PR0302CA0004.eurprd03.prod.outlook.com (2603:10a6:205:2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Thu, 21 Jan 2021 11:45:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 941b3b0d-f420-4eb4-7e37-08d8be021260
X-MS-TrafficTypeDiagnostic: AS8P190MB1112:
X-Microsoft-Antispam-PRVS: <AS8P190MB11122564758A9B8748A2D102F0A10@AS8P190MB1112.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9wjNy9kWgqK/Hjk/H1ZO/lYVcBYwaJtI1U1lCHjpmKfwlpFbtI+sQ37wxgENEGThx1fbQd3dKrwaH+JRbFDVYmx3oHpQu4ygd++XVxZCsBRjnwMFDr/rIz0EpK+HzkF34QUESWTpbVXlmUXkqF9+28cXWZAY0VU8befzTPrwsauEGLZ5SYz/DA40bO/bYSx4CLZTrAW9Hw2zUk5MgcdD6Fw6eLuiP4e7zRX82rYUlF97lcCj8dSObCMAeZgtzGJ+6O5v0hEE6VVS+EmUTaQDeJBc7S5tmn/JOyNLwz3EnUDTk5tHNy6RU6BBJwz7IMJXSNlpC+pnFFlMHpXn683kmiow1CV/479UCQJmHWzkOkq5VDvZ8zOMiCqcmmG4+F4Cm0bMsXY68X2B8l1adx4eWye78NfVfi+xtGJKFPoRlKIucld0ivoQuOMbpR+CkeEyvvRKo5T0W0aE/XfnLYGGgJ16u/IaNu+F1dQQoc1QoexoQutwzRYD3FITpzKP7owZTsYxgE9aqPftgFv4fiyVqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(376002)(346002)(136003)(396003)(39840400004)(4744005)(478600001)(86362001)(1076003)(9686003)(6486002)(2906002)(83380400001)(16526019)(786003)(316002)(8936002)(53546011)(66946007)(66556008)(186003)(6916009)(66476007)(8676002)(5660300002)(52116002)(33716001)(6496006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?4cM3qWWfoKe4O8mGdDLwylGFpIVYL4KceBmIaBaragzXSdOflycSXSISv8?=
 =?iso-8859-1?Q?qOsHo43E+we8KFziFAbg/9VMU9dUOfEYQFTSopuxnia3L0UN+A/v+j2Xkj?=
 =?iso-8859-1?Q?LU4M0DxNdZx7SECmFSFMJz1DZCYCTVSNo8NCF58J5HmOCunKlRJDubNeF3?=
 =?iso-8859-1?Q?94jCuMxvnYhZKlc+wM2zpi89DI53Det5KEtpV/Kum38DG+G1oDDYQBOU9n?=
 =?iso-8859-1?Q?TGwd91etEZWDJjgmbBaGGa8qP3jiu6345Rso1aKnyQO+VBsISti2OcxECQ?=
 =?iso-8859-1?Q?bshTVUEx5SLPNbbILxsEM8NjIPfuDC/InuDUzsavmxV1JZq8aUzTnzKFQC?=
 =?iso-8859-1?Q?x4Mx76mMW2W1SnjgrEwSChlWPxjLQLeB5wwBLjRdsgIipfjkD1EdQvryZx?=
 =?iso-8859-1?Q?BGObTr0ABwSPYX2yNW9EcKniLAdZfLnjT1ELxJqZD+d7Vx+wAPuGQfG+c2?=
 =?iso-8859-1?Q?volhfqDatGo0WSr8TDWPaIq1PpEKQQRrKe9TpgsQwfsTJXoemNoxaG29aX?=
 =?iso-8859-1?Q?3ywGs3Bfl+Y/9plrfr2O5paRWrlx9UT82257AFDTdvprbK1nvdzZcQswRV?=
 =?iso-8859-1?Q?nIISkhmIJPTFTdupcXYTYufVRTKS+48Im1rutu5Bvq7WwNvLl32X3LL21W?=
 =?iso-8859-1?Q?168eLypyIjPAc8DKLrjRU1y4rWh/PiSKeqLkoGbTCYPEUzevEHb2hfjAni?=
 =?iso-8859-1?Q?qESoXSov9B+wOCdz3J+3wB6wUka9VNdRxLSCMZmG5YCkHyuUEVb1obTozV?=
 =?iso-8859-1?Q?pA01GziKE5VPOjcNqo5LGp6HJhcVOm/qq+6xcpzTeM0AHgYASof8lAXtfH?=
 =?iso-8859-1?Q?XPZUOxUX1GFm29Wz0IwJCFmLLE0tQ6t0hFvRetVFv+MAKqKQVKHkh0OUdr?=
 =?iso-8859-1?Q?QAi84Fd16IyOnDzvs+ckAwsbVghsNYEtCJ284xBpuHj5/T3MjnkVM17X+J?=
 =?iso-8859-1?Q?GeVsbiqEp8BYGVxbDBam2ByCOUnwwNkTI2kAkO7HXYIDOzdHjF7qOwbAwN?=
 =?iso-8859-1?Q?8/063Cmlv7KoD5sEBPPLxpJsS1cIO+By0OlC8oR3hljOktDrzh0m7yzxVJ?=
 =?iso-8859-1?Q?GxRwOORG2x9B1EokeLUzC6peUtGn6ISsSkwpwhaOtX6Z?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 941b3b0d-f420-4eb4-7e37-08d8be021260
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 11:45:38.1994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gkhZXjuuWRr0OYsEOPDk6UPVDAF8I2OPfKYcUvZpwfAFdAxSBAd7yaHwqqDtwGxVC4T20DFEQ1YcZzBjb8oHdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1112
Subject: Re: [USRP-users] UHD4.0 rfnoc-example gain block not recognized
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

Hi Jonathon,

Thanks for the reply!

On 19/01/21 13:18, Jonathon Pendlum wrote:
> [...]. You can use "auto
> gain_blocks =3D graph->find_blocks<rfnoc::example::gain_block_control>(""=
);"
> to get your gain block.

As stated in my original mail:
> On Thu, Jan 14, 2021 at 6:37 PM C=E9dric Hannotier via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > [...]
> > auto gain_blocks =3D
> > graph->find_blocks<rfnoc::example::gain_block_control>("");
> >
> > is empty, [...]

meaning:
"auto gain_blocks =3D graph->find_blocks<rfnoc::example::gain_block_control=
>("");"
returns a vector of length 0.

-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
