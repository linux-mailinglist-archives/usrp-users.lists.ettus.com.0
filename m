Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 968D62F50A5
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 18:08:33 +0100 (CET)
Received: from [::1] (port=52030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzjdG-00083N-Qz; Wed, 13 Jan 2021 12:08:30 -0500
Received: from mail-eopbgr70101.outbound.protection.outlook.com
 ([40.107.7.101]:25634 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kzjdC-0007v1-NF
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 12:08:26 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CWi/vGHuzjv7Bx4YPYxBoKEp38FLhbgsvR8MLLgTZN6yXvG6FMeyaun9HCrB35vcWAAm0o/a0WIca28mBs3IdXjHtVEgbHfeZ80YBSfGyHZj586QuzPf37ite21pyHpdicGyhXhMx9BfyXpbe33T/HW3F5+I+ibx0ub1UHQpDPvAHvzIg9/VoUM6Dk9/4V7K7vNCUaqHt9j17Jq/69AUcAv1K43P2+CC0QymrkysFHCCPKfBQOuKYtAwmKIZsLxrAFPWMB/ROw6xTDXIGdnVq/IsAmW+PEqRF2UaEKiBQUYh/ktYI1NSq5SpTiS3hsUz8AMShRyx5FNXNgkdqUhyWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2XLu7Tv90SAG3ubnSCvHv9P9iJpsS0hN0WUQnreAUk=;
 b=nExUMkmr7YkACRy7ZlBmT0vg4nKdyR/o0hMYtbeLDVzKlaAJY65RB8RgxSD3WvrceGrIbjIJdUt15nI2O34R/vM01h8Dlo9wxPN+RpfWKn2hFMgaVi536rEZh0EjOrX99dyRKEXGSNIRHMeuOOU9j/RgJ2RWP0RoZuM8hRws/mVsUWi62wnBDaqm9hElFBPf/YWwzPbDMDZu7n/G4FkEc+MwN0zf55ewVucJFd20UwGOqFpGk1C54hv7KUnq/61tENdqMyEXZz7qlBrqWRvWePtk3XXomI+hO6qD9xAmYWJLbrRmqR9HJZJUht1+EYEWFvlc8rkv41Z9nL4X7Uh9Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2XLu7Tv90SAG3ubnSCvHv9P9iJpsS0hN0WUQnreAUk=;
 b=QUXpRJken6RlwFQpnQG2inbjOe5XZexewfblDcb4l1cLuiNYTNB9jyb+0/UYQeN34LQO5Dr8yLa/eocDAS5Ub16QCoi8lcTG7L1Lf5B1f01lNDePG0+XUe3nEzJh/1cA3tpIo/9orrPcrDYRP7QhIv30P9rG60AA1maX9xJn2YY=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1319.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Wed, 13 Jan
 2021 17:07:44 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Wed, 13 Jan 2021
 17:07:44 +0000
Date: Wed, 13 Jan 2021 18:07:43 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210113170743.a4g6pzdgch3ioeno@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
 <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
 <20210112060455.n3qol2fr5w7nbuob@barbe>
 <CAL7q81uKXjDC=YcZ-2KXrhxN-zL6BU71P83+7KW=q9MEMBgaXQ@mail.gmail.com>
 <20210113105801.efaoc4ulzfhd4niq@barbe>
 <CAFche=joUG25SjrysffTNGHjzqd3DAU5hWJg38ZR8wYa7wK+og@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAFche=joUG25SjrysffTNGHjzqd3DAU5hWJg38ZR8wYa7wK+og@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:e5cf:2b70:1b1f:890d]
X-ClientProxiedBy: PR0P264CA0097.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::13) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:e5cf:2b70:1b1f:890d) by
 PR0P264CA0097.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.8 via Frontend Transport; Wed, 13 Jan 2021 17:07:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 408aedc9-918f-4e90-ceca-08d8b7e5bebe
X-MS-TrafficTypeDiagnostic: AS8P190MB1319:
X-Microsoft-Antispam-PRVS: <AS8P190MB131927FDCBAE28C112BD6E66F0A90@AS8P190MB1319.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uIx+dOXC9v8Ya/iAROipBFH0o4KkOeLWW4af7M81FNYV9XiZbMId7nMSrlozZkgJfXAgfKdNjLTtXBZHba8B5Bs0nZ9s/m9PDYzjkWkhn5tXPyTj7IS20c7JdPXKKleAR3RAfP0wDuQzAYwIkwPvPX/RQwvpqshVZzwed34kNeq7TnvAHb+0o/fJvmr0fVLZ/iVRdgrrh7TaTg+xgVHe+AJZV2c8gMxaGG0C1uKfr/ay4Gjn1V9vQEudrweJEOYBtNLLlPFbTaak2KiKFl1Ng3Z0rhbOcMj372kz269S4OYykEy8jgn5NxEEOz1ASKDKfhnmPKh9l2Ex3SLzwZjf0Cpv314wmfrXn4tKXqfmJucQvJ6GO76dB1Ep8/3v8PgHs/T5o70dj6GCUgl9dNSSbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(786003)(316002)(8936002)(5660300002)(6916009)(33716001)(52116002)(4744005)(1076003)(2906002)(9686003)(6496006)(478600001)(86362001)(186003)(16526019)(8676002)(66556008)(66946007)(66476007)(6486002)(53546011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?tzb4mSAXUBOSCLMMv7WyOsTJuwlrpEHK1zFWXrPuCx+ME/+1j6ys9Jbtit?=
 =?iso-8859-1?Q?jAZPqtBe63j1C3KqAMCcf2W3b1dyp2xSi+fV7ytUwAXm8Vur34AowgZA2R?=
 =?iso-8859-1?Q?Y2u2vtQdJ3n86d5/xhkjgBCyyhKAyZrD0qT0s6zroyH1emYk1c190xAwrf?=
 =?iso-8859-1?Q?kf9c8QUAqmtd+r5FbThaB21ctQbqgn64kTXG6u755B+SOy26/cejj6oDeX?=
 =?iso-8859-1?Q?boOBtKYG52Fmyi7mFaTgZpsMzvfsBVoziy0MiyuX2Qg8dFHpS3R14O7Xdf?=
 =?iso-8859-1?Q?2WBAFrJ1Rm5A5hJmKWQ1KZ2uFku9xqQI69CWct9Au/+45d4nZUgPhxkT4l?=
 =?iso-8859-1?Q?9TXDn3ZO/FGlhUFAx59t1Q7LDVR1cI0aJqwRMvPpd9++EcfSM4hwL/tEkE?=
 =?iso-8859-1?Q?cD0S74aUEZz55A+QXgcFsWxz3XEDa/pwhSsDgYiOR18yePQFHpXkO182vs?=
 =?iso-8859-1?Q?C0DUNZAcG9zr4NtrjndCud5Gx9peFcw34ZHZVU/gVQ/aVOTlujEJUp3B1B?=
 =?iso-8859-1?Q?S1yDae3i5K6jYL3Feje0YS2N/8QzoUKZ6nQieSL1HiTcFXCSwPTy/Q/8vD?=
 =?iso-8859-1?Q?4iT2IdIHj6V2M8UkYeMwAxotxM256Fbp44gRarIIWrL6sa0DxWnrEfv8s9?=
 =?iso-8859-1?Q?cVVD3+IPqzdOyjZzPnMs2LsMKsGp8GezgKBZOnmfD3gzope3NZWnsgAcUp?=
 =?iso-8859-1?Q?BPFtS0OkPCeXz6XM+xMAtKBOVlKz1c9AyGc0aSPSl5zZWeI86/z1l36VSy?=
 =?iso-8859-1?Q?J5PkOOwbfznIXxCvTCoNwtJUIZu9hs68HMZssJlyhqbo0ZcToXusGO7nx6?=
 =?iso-8859-1?Q?cpTrZn/oSkRlt6nIu+VuULDDVQsQ1ON9A4cuEWnDacaL3MvaL9YCIqmlUy?=
 =?iso-8859-1?Q?/NbB+FOIiIFMEszHNlKjI2LUVxEenfCljF2TWv37DR8V+1Eb111bZhpUOV?=
 =?iso-8859-1?Q?PYlcvKHmMlYkjrUDKV6w42ossFC6+oZor2VHr3NNFQXvaTKNrGk5Mqkvo2?=
 =?iso-8859-1?Q?sudupkP76SPe9rAUjqq88oevCz2BZ7lDnwUD+A9qUsmEIsmra/YSxzkQBS?=
 =?iso-8859-1?Q?ssBt10CjZauvc2lmD4HNlyobSKB4rplh+o01HhX0pzpk?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 17:07:44.8106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 408aedc9-918f-4e90-ceca-08d8b7e5bebe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +IF6wtt3sdHRcSp75sLj3F4gthBmgYEc/8CBGo9yBaJRTJqBYlh0XBnbx47e/LLi+wjkyUNA4inKNdVDpxvV4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1319
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

Hi Wade,

On 13/01/21 10:00, Wade Fife wrote:
> On Wed, Jan 13, 2021 at 4:58 AM C=E9dric Hannotier via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > Is there a way to reconcile both modes (cli & GUI) without editing
> > my testbench every time I need to switch between these two modes?
>
> You can probably just call $finish() instead of test.end_tb() to stop the
> simulation in both CLI and GUI modes. If you want the summary at the end,
> take a look at what end_tb() does in PkgTestExec.sv.

Indeed!
After reading PkgTestExec.sv, I found something that reconcile both:

test.start_tb()
...
test.end_tb(0) // will not call $finish()
$finish()

Thanks!
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
