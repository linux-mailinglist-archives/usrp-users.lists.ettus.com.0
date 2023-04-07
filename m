Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3536DA90A
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 08:44:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85AA2384B7C
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 02:44:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680849861; bh=a1hv4BgJ5V5eXmzMyA42CjXFlwZmfvb14IedlWY1ReA=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FbsLTc8a1pPQ56SZxt9zqXHL/YQEibV5skj6tb9QAh14GTvpejGjvGt1d8jkIb03V
	 mDN+w+17gHw5kDMgEtb8zP4Yj2JfZQ47rPv3Aeippm0/t+hD+Wyblaqz+KkLse83Gr
	 zs+sfDElAD17X554Hm91iakFM6zrGqtR/ju/y3+iHKowjFQ1RhFHt+tGxlplJUiXDc
	 dpkOUEv0RTcg17s28DHQ2Xw6Uytnkolj5uJguZ8xKmZ5bHKnzCe/6AuC5V5rBVJnMj
	 K1R99IadzUE2hCxD4oOICHp5XsL9lpRtnPsF1r6Mnt3fvUbRnHPoWvqOQdbIunPmIJ
	 7uVNNoVBJ0Zqw==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2132.outbound.protection.outlook.com [40.107.22.132])
	by mm2.emwd.com (Postfix) with ESMTPS id B692B384B4F
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 02:43:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="GBTSZQ+A";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dBKzkeWZSJw0sYeqA42vFWduCTI+fOSxvr2hk9oD5q9JQ0J0aJENBYkcaSyQQA3poP+hhcF7y6+tuzO4kF3jMFgDgLuLSNMyCBwNX310qc89YnnHcN1BZ669pjRcQTrx9VoLl9N9/ALHJNvZIpsvVyyksYnevzk8V9xYxqL9Jh7QzxssDRgyX/Q+1UJdRprrc26bIkirnt0/zoiR9QsFBZxR+V9soRU5jUHu4mi7cadytEnx5a9SVnajsjEH6n+8IVRW5JW+3lhoq5d3M/egmYXySWkgTwhTNLMHps3zIjxJe0g+OLq5UILK3JZMDEl95YstQv52syvuspKDmiG30g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KX5JAn47UmnInladKgF4PN8KngSEXzUojEBQ7Qf/mrQ=;
 b=MKjc5TERPTe2ZuhP8h3NEUewe7IlYlx3K5W+LBoSs8iCYZ7vp+VlkB/YA8QlmZ/TnHOJzt6lLI/XHGr6dEVjhRuTXEE8t66Onk6md2CtCNld+dwsIChu2miHJByflPi0WZimgrZze051pBJ9flrGs0ef1FZaJ0FB3CcsmRh3dOzd62hK2rNMsV3vyDoU48mQnnHBDMIkPBah72M7+7RGt3d+sAHHm8wwI4y2AZvLbXuTVUc0jgj3tYE5N4rzv/fgt/Epd5pSIwYOiK0FcOhvQOH+OE9qLld7JPoMM41eUW/GVkBMUKaec9F6Ogcs93g6Pr+1gFcY90N60NWoQyD0Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KX5JAn47UmnInladKgF4PN8KngSEXzUojEBQ7Qf/mrQ=;
 b=GBTSZQ+A8o5ru9/HM2IPlOsn67I1RtoBA4qThTrvpOuRQTCVto1Pp5LXJjB1+CczG4FUCfomE8rmRzTbrRzrpO19kzzxe2K8avc/pRHQeuIqW1G7Dbts+B8jtg8sY1JXZrqx413S6CM6PtmAeLt0Ln4ct30rLySsjwFEztCvzz0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PRAP190MB1716.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:27a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6277.29; Fri, 7 Apr 2023 06:43:43 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432%6]) with mapi id 15.20.6277.031; Fri, 7 Apr 2023
 06:43:43 +0000
Date: Fri, 7 Apr 2023 08:43:41 +0200
To: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>
Message-ID: <20230407064341.54lvcqo4h7zknieq@barbe>
Mail-Followup-To: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>,
	usrp-users@lists.ettus.com
References: <CA+z47vTD1_Upe1EQbXKzmUQtedt_RkPLf3Rv8Z8jmZu3cj0i-A@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CA+z47vTD1_Upe1EQbXKzmUQtedt_RkPLf3Rv8Z8jmZu3cj0i-A@mail.gmail.com>
X-ClientProxiedBy: PA7P264CA0189.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:376::6) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|PRAP190MB1716:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b51674c-8562-4fde-50a1-08db37336df8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KUm6+U4gj0Wbwn0PS/m+j9MdsBC6VjmgrVSlUeo8+/u6Vlwblfdvh4mNv2qEnY2Rwr3FdE2VpWwBTnTwEbL1xR4f+TCRt5LCdrF7S1ldUcuG3YDHz1q2GC1vhB/qMQGr1wCKyNwBw2SdswCNdjyL8fAxQlxMMr5zjxECQlE87oCVpznaHrm0t2b5FbFq952eVPzTzHLrCNEhRwJ0G0Sgk6OLGqmTsTp4iOhysmvBc6RAt4GOkd6HLnCCvQt0R5BsC6OYHem0uwlEFZgWeQrj1tgoAtakWYTOh3/NBlNteVmnMloQVS6ytZ4n2QAJ7lKzUoiURI3EzuSXJXzIhGglZwAe2aktpgQx/O0DWoKeS4+nAfg78NMbFPOGd/n//u1fJjTqoI+zhLiQEXyZvn6H0bIDNRHCpSdFNWHehGSgp3WFMuFJuUzQzcJX8G/X0saevG4vQRW+zBCc7pwYsxeySbVtgXg7Uj7TqPaduYMa8DS9UBgTGJZAzkRMatNdNfG0UysNz542qWf32w4QShtdesX7wZO25gDLA4edOqTQLSr/mREj9bEcNdOBp7GlHpchySeVxT2j8VKU7lWk7zXfGz06fnzHcatJUwL7zjRKklo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(7916004)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199021)(33716001)(38350700002)(38100700002)(41320700001)(86362001)(6486002)(966005)(5660300002)(26005)(1076003)(9686003)(6506007)(186003)(6512007)(53546011)(2906002)(4326008)(478600001)(66476007)(8676002)(66556008)(316002)(52116002)(8936002)(6916009)(786003)(41300700001)(66946007)(66574015)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?2OFjsKiIwmLF7ohPOENO/aBp77Uh1XbUFvRxGUygJuseWXqzEYr0cEs/gy?=
 =?iso-8859-1?Q?q4s8Zvm1vaqTnBXRXQvJ6xAhizEE/QMzZbbQekhO7VicOyCGyUNC1ZaPr5?=
 =?iso-8859-1?Q?kI6663ixi6ljrzTE+JyEMcn3Rz3a/+nEoDAG1nEG6XVxDUOMYI0jY6n15/?=
 =?iso-8859-1?Q?avz31EBXSs7IApFh1xDuWML+MY0uqPFnYuVzF0oXcfyWd0L7+Mkk6ZIcEN?=
 =?iso-8859-1?Q?6PrM5DlkPFus/HHNtRvRODqgVz9+W2SdsV4OlLcjcvPQNUZvdk4IzVm39D?=
 =?iso-8859-1?Q?O7OsZJW9LbNRwxC616goR5E371dZZJpNUMpQcIdaUbPquLz+mIaUp4uVH6?=
 =?iso-8859-1?Q?jacbssMvEAg/xf96Rj9AcBrWs0B6vGYC8T7Tgu2FrN7ANnMFX7PBsEQfXj?=
 =?iso-8859-1?Q?REuzJFP2qxoySvEvMYmsnPA0a1S0PlGu56zJHyOIZfXEEgzZ30N4xUJYo/?=
 =?iso-8859-1?Q?RWBaosHCMeYk6WbkwQIC5KknCQMEVri+6zCT2gRvsIsoEUPq+DXJt49YDw?=
 =?iso-8859-1?Q?cuvcVIz0TUNzSJ4AVev52o30xY0xinotyabx1/MeeTXTWAU684hiDP6ujJ?=
 =?iso-8859-1?Q?o9vDFva9VZ1cLNHk0AIBl7+OCNjaFfaAAi5TSQR8oChr3oiHv6sma0eYI/?=
 =?iso-8859-1?Q?lqWJACEVIQZMqnu4dEMAzelDIDSXYSUNcQUVnUR8S3fVXzpMW2l8SpVccZ?=
 =?iso-8859-1?Q?jfrc/FEibihem+Mev482XH37bS2XnoXb2qbO0e6zlJW5GzKhVIkHBu7PRZ?=
 =?iso-8859-1?Q?2G1sarxOaEdZvNVWMFvHYWRyf9NirfNBCsUx5vCuM8N8vG1Xfc+ZTFCoof?=
 =?iso-8859-1?Q?IQ0EQjGbVm9Z3Nr7PFOk0uVO6sokEtokkAfKbpCLMTnQ/6rMfPClcJiYM6?=
 =?iso-8859-1?Q?tIsPnkAxMfJCkjfjTQ0bbRcfxSobK+pKE2gABacvxxyiqEnvCZ5LL9AgJK?=
 =?iso-8859-1?Q?MBJ629EPLBz5bnyMoB9b0WJbLXPbvA8m3F5WYwzS0WcF1ytQnq/d6e+t30?=
 =?iso-8859-1?Q?bXdz6AI6LPPsXVBJVHG02WWn0vMn9LS7sH1X91dzY8HgePBZF82wHY08q3?=
 =?iso-8859-1?Q?RTAgdShQSiyruvhUgp6deVf8GrIO8/duyYTaH6wx5AuN5u9pBxXEU8cL7e?=
 =?iso-8859-1?Q?9EvGVZ5/IVoZbdWy1BwUkcWAdUqVTJ9KuspDCJWQwNo4+DCIzbShjjdFPB?=
 =?iso-8859-1?Q?fulwyS5VzZvOjoxRw484EdO7vDl+Qe0RDHbuvxuL8skfJO4pnlOEiM8OSn?=
 =?iso-8859-1?Q?7gYDFBAhc4wi8EHh3BH/WqRDEw+YoKpxuxoKyNzqGf+ytjhCpkB+dAr/pA?=
 =?iso-8859-1?Q?Y/qKAWwKubpLsNPMFGyNlHQXSpIwok+ymxvq5I2IJ/6AKERMp0hD3d7YR0?=
 =?iso-8859-1?Q?AYaOnz1bVzFGfWSWfWRCLy+iPKadu8m9XhJuihTqs9lI7IcOUy5Gg2rF1+?=
 =?iso-8859-1?Q?GjXk6ufv+sKOOr9/nDYzU0GZtbGI7xugK5iyXoYw3hqoyaxHAfOAWM7JYB?=
 =?iso-8859-1?Q?tFfnxou3IyKN4HcYvpL91gUMZqp+OjCpD7jKKopGHVU3Yy6PVgnqbkb5/w?=
 =?iso-8859-1?Q?9IXtQsmGetur4hybwzhDPkdXzUT0Y2brKS5yrCg/2i8H/FYoavDrTCbMdt?=
 =?iso-8859-1?Q?FyD4onvBmERJqLQNpVrYU90PHlYa223BCt?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b51674c-8562-4fde-50a1-08db37336df8
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2023 06:43:43.2912
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5ZVH+caJm+VKbTexz6kiW2EOZoLRCm/ydQh8B8c0VqGdswcDDObJKB/cJVzl7BSJHDNL6RijZERQNiZ5hZMRIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PRAP190MB1716
Message-ID-Hash: 5Z3LRVYKFB6AWJF56JMRLLLQKPKGESOL
X-Message-ID-Hash: 5Z3LRVYKFB6AWJF56JMRLLLQKPKGESOL
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP doesn't want to connect to computer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5Z3LRVYKFB6AWJF56JMRLLLQKPKGESOL/>
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

Dear Azamat Nassipkaliyev,

On 2023-04-07 09:36 +0600, Azamat Nassipkaliyev wrote:
> I am relatively new to USRP. But I have an USRP X310 and GNU Radio
> installed on Ubuntu 20.04. It was perfectly connected and everything work=
ed
> before. But then GNU Radio gave a message that FPGA versions did not matc=
h.

You probably had a mismatch between UHD version on the host (PC)
and the FPGA firmware version on the USRP X310.
See the procedure in the following links to update the FPGA firmware:
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_load_fpga_imgs
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash

> I tried everything, but it wasn't solved, so I reinstalled Ubuntu, UHD and
> GNU Radio.
> But then when I connected the USRP to the computer through ethernet, the
> computer didn't "see it". The LEDs of ports 0 and 1 do not light up at al=
l.
> So does the port on the other end of the cable connected to the computer,
> no connection at all. I tried changing the cable, but still no change.

You probably lost your network configuration when reinstalling your OS.
The host NIC needs to be in the same subnetwork as the USRP
to communicate with it.
You will find information on setting up your network in the followings:
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_setup_network
https://files.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_ne=
tcfg

Kind regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
