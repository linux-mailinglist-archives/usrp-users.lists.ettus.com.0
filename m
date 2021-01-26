Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F4303D58
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 13:43:21 +0100 (CET)
Received: from [::1] (port=43516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4Ngh-00040C-RR; Tue, 26 Jan 2021 07:43:15 -0500
Received: from mail-vi1eur05on2124.outbound.protection.outlook.com
 ([40.107.21.124]:17918 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l4Nge-0003wl-69
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 07:43:12 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqWF1R+8xiX9CO+v5KdyaEYAmTH544bR8UWc3wRbqepUG+MY8RKLY1oaMb46dPCUUMjTQ+8xT3LLVYBqgQP4O1Un9x6Pc3chtfB9PmhCzZiP8dxYi1e7jhTOBpnQze1OqznPH6P7VDe4qsVD4lVd3A1tSbHQ2jSW2WUfJVlvDkGpFFGhuAi/EBY3H7nyZ7XXuKktAXKtZkfdJlNE3bcG/J8SMG4t2EWk0YeIJGGg6OHTSJ0j3wuug3BUbyVINpYZUgS66OxAdHol1XPWDBNOSRfbdbcvZb/bheWmXm08WTtR4BzsYx/aHGEENprQNJAdBby0bzumza2m8TiH0bSVmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0/JF7s08REUOz10LfzAdPk/LWaq8nvLxpSQ6/h98Dg=;
 b=RTN/6s77yMFtEqRhFSwbUKeuQtSaLeQaArtdZLkgtPwuPkn5q6RKLMg4+ERr4aX6sYyuJV9ts/YmHa3qNx21LnDQoQbR13NgSaOdrbo3Wtwd9/UCZm873StIFINpM++xsP6hUxm28D8JmIOrys1DXMOc1qgmbjw7Qp+V7Lh14gaqlko3B8S7C+7tYmdGHXjmqpPSjyyY7d/Fzj+FZRjaFnc/nMnQ7xsvybZm+rHBCLGlHgmJd96WukcnKfm/bX0f1fGUbbFElJitGrnDJaR01Bq/0FsO1e2GaHXWoBsNU+2/ULF2lY/eJao8kXn4mEC18QvdSxgsTGOUia+sc8qygQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0/JF7s08REUOz10LfzAdPk/LWaq8nvLxpSQ6/h98Dg=;
 b=Mbh/gxkeLpyV5sbHkW9PODKkAE5BfGDYrUaFA79QIjlgtQ9JHFDFm9G98chiS7U6nfsbnuf2pRITiGcDSN6YwhvuwQNY83nHqSuFOwPi8F/XDagNyEt5A68n3EINxfuAsX3rC7L+gps8NWGo4lpPocLQzawdo1MxTSF4tEHN3v8=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1224.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2eb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Tue, 26 Jan
 2021 12:42:30 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.019; Tue, 26 Jan 2021
 12:42:30 +0000
Date: Tue, 26 Jan 2021 13:42:29 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210126124229.honuhpcqt7yxdhoj@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
 <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
 <20210122150220.ooerbxb22ndwefh6@barbe>
 <CAB__hTQ_uqCHC5PN5wNWy=vvm5Z-fDDuqD1JMq4L3ksMh342Hg@mail.gmail.com>
 <20210125173259.2dw25idii7hfqlfx@barbe>
 <CAAg5+Mz4njATFwgEDD80zTUA7PA-6O+vpxN9Q4MhmrVpqbyJmQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAAg5+Mz4njATFwgEDD80zTUA7PA-6O+vpxN9Q4MhmrVpqbyJmQ@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:634c:b201:e963:3fab]
X-ClientProxiedBy: AM8P189CA0016.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::21) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:634c:b201:e963:3fab) by
 AM8P189CA0016.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.14 via Frontend Transport; Tue, 26 Jan 2021 12:42:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0aba7750-0521-4b85-c318-08d8c1f7d81b
X-MS-TrafficTypeDiagnostic: AS8P190MB1224:
X-Microsoft-Antispam-PRVS: <AS8P190MB122468DF61E40AAC4B6B22F7F0BC0@AS8P190MB1224.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bMCFxSEdHhOTDNqukXaz3YsJ52xG8bgDUZTiXe9qG82fcEniq1IwiY+sj//MxmQmA863XIpTAfGnoPKm6inv7pgwiuMg3k0t0nV7FXH4ZmeDXCE3qygYehm3PmY/vp/vzCwy+y4Ci/cwL40mICPzc479+hLgRdbaJqro7mo67mKjXXf+CaaTTjyyVaKo4Rt7deVLKR40j/c/HvT8yzlOCu/wsE+A+tnoWtdJbl/Af/GFa4FCPHhPb0KKv7d+cdCVaQQEzVuCiDnXDbHAp0pevRzlZJG9vlB3q69/lSt52myVmHnfgLxWY0rrlv4YOkQHLcElQ6gHvfKmXMS4+kJ1x1AhrjI0bbM3F2j/U0dcENee8edOQeHza2RYt0K4Nruyw07Vuu8ECvW9JGOSsvtPmM1MMydF3/uAnrpWLrS0lQsDyUTCR+9FOwIEHR4iIybdiRicor6GjQyG1UUVLPhEPsc09m0W73xHpzFWcimOVEB/4MMlLQ7uVW6caALBAfxaJDPkGpOatTIUrYFAdqhBGbAjLNNxUeurEHd43v/Emb6lryzdpMlElrV2qfwZulZD0F8vucqqnmD7bC3CyjTMtIlyPlkejK3lNeiYNedXyy0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(346002)(366004)(376002)(39860400002)(396003)(66476007)(4744005)(52116002)(66556008)(16526019)(186003)(66946007)(2906002)(53546011)(9686003)(786003)(5660300002)(6496006)(316002)(33716001)(1076003)(966005)(8936002)(83380400001)(66574015)(478600001)(86362001)(6486002)(8676002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?g1yv/cubtpE/M/XjXia0+rpPKgo4Av3ZdD6QwaNdTLui+UmyETn/RgsXX3?=
 =?iso-8859-1?Q?BvLTnVTmfAhjLiyQPecNF5uaMFhIfi5EX9UC1NOrVQPUd8emAGUWDE6MAC?=
 =?iso-8859-1?Q?FX2PhPCB29yKsePG5pamPt87mLdfoyFjZwlVRhBt5gZtfWpioWUqCO+fat?=
 =?iso-8859-1?Q?e+dKzGHXfxNoZz9IDYkjws+QcgwEgz1jM1Xz6aiZy9l1/7cQDmla26tV3w?=
 =?iso-8859-1?Q?S4/tgyn/hjFOIsmpCcfe9gXAI1D1cI3b/0Hh03Mby7JO1lxKf1GJ2DAlt/?=
 =?iso-8859-1?Q?OrJBCodefuGlw8IY9AEGbc5PnWt3haHvIodHgztEjh0XmScV4GC6JtlmRf?=
 =?iso-8859-1?Q?sr8LQu5unh+IgeZT1T+YSfC/jPuudmp5RmpfZDr1bcQ9AjFHsckWxflQJr?=
 =?iso-8859-1?Q?IYi0DLlShfwAgPKJUy8vLmeFxeAw4RrIep4zB1juekDpmcfpttU0vQOHKP?=
 =?iso-8859-1?Q?VJpNCNrDj/Q8Q/vwm6zEZiOMx2xdzrCpiqL6PsP5IfTfrDyu4KjgQRXUom?=
 =?iso-8859-1?Q?sk/MZEEw7zXAUe2G1bKwJ9FhA5iHGxxPi1TjzXs6qSBp8evWpF7Ny6244Q?=
 =?iso-8859-1?Q?vIiPPPh7l7luTwG9Z6pe4nZDWxNi+YWGXEtHWbIfu8NgMemCOZT/YDWFod?=
 =?iso-8859-1?Q?060yma92wqZgxZcDyrKbD9RRMXbLgUbH/kWsDgT+qJxCnCbKuCZ1qrQAoI?=
 =?iso-8859-1?Q?8UsJSHg8AsHr/RVULFSjf5EgnZ32MoIrUZxphzlAQdhEubf9J0rSACRx/7?=
 =?iso-8859-1?Q?QtWCdAOCmls8fy0jtAQFZkiOeWHA+D3QPdehMb4gbFvaDzvOAB2x8AryW9?=
 =?iso-8859-1?Q?1oKrKEPUJmTJs2MV1LGwBm9iQ36Tojs+fJ4Ps1lxTD3eQdkwzO4fHKwurQ?=
 =?iso-8859-1?Q?fB449LN7Pvh1VIYTzYSsPfJdvSRyBwpb8wT2N8tGyU2nyHkaLXTEmXZGc0?=
 =?iso-8859-1?Q?0cezNAp0YvvPZWn9MPCAT2lfzYlwDFkaQdcib72RU5d2/xaw71LXbQNp5t?=
 =?iso-8859-1?Q?a9R79e2U1rL6iEq7xQkjUn4nvfyZSvNDo/p6l/yrih7Ct6sz969fuepWVM?=
 =?iso-8859-1?Q?kqY+/DPkfZ57wldj8PWg3r4w3NHG8X1lj+SfIyl6sbFVmGeuds2ncfM2py?=
 =?iso-8859-1?Q?hDMPJ0s175pHkB75IqzDtZF+InzBc201aFuQkL59bkC2eSZ7u3?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aba7750-0521-4b85-c318-08d8c1f7d81b
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2021 12:42:30.1319 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yJmv936TejQTzkYz1Bft4mbR15h15ng6Tands4gijqklPbHV4Jp8hyr+YX+wvvPJlHKUO3Lu6RocIzphd+8DKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1224
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

On 25/01/21 12:37, Aaron Rossetto via USRP-users wrote:
> On Mon, Jan 25, 2021 at 11:33 AM C=E9dric Hannotier via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> =

> > So the action is propagated by the gain block iif the controller is
> > built with UHD and hence recognized by uhd_usrp_probe.
> > Building the controller as OOT makes the block unrecognized and
> > hence falls back to name 'Block' and controller 'noc_block_base',
> > that does not seem to forward issue_stream_cmd.
> > [...]
> =

> [...] I would like to
> encourage you to file an issue about this on the UHD issues page at
> https://github.com/EttusResearch/uhd/issues That way we can ensure
> that it is on our radar.

Ticket opened here: https://github.com/EttusResearch/uhd/issues/406

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
