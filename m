Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B191300674
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 16:03:10 +0100 (CET)
Received: from [::1] (port=33294 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2xxr-0003tv-6i; Fri, 22 Jan 2021 10:03:07 -0500
Received: from mail-eopbgr140138.outbound.protection.outlook.com
 ([40.107.14.138]:12259 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l2xxn-0003pV-7x
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 10:03:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FDDXd90KpHvioCyUsQzocxldTVpLtGMgpq6anUbRbPgTv3P/dRJHEYQqJPG9zpDRvUuGC4zds+JFhZFFGbEFREXUUZnadK1dp30f+91FOHyX6hCY+FO1Y5xnLGlDL0ezahecHazIzEB0bSadIThaGddyU+PnJAT3Cg7VrEbNY6NlezaRtl+LTTcqZPVHwzzKcoS52hsD59DMsygUxKjY92fM/rCZeH/Jj9H4M9anLLbG+JPZvcAqcXG0akEh9RSFMbmaEyuy1mT1HDnFQAbDEooEnp6g4Vwm07EbB6ngTjmhWAWnf4XffW58ckoGbPC9aV6nEf478hI+w4hyyR5abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfyHToi9CMZIPPdA2vQPSB/Bv+DccUgcYVE6Vd4cSGg=;
 b=IeYRVROifokiFdKFJ09dRM7DZLHUBwSV4bU1MTgdxo30i78vVrkG3SYJ+JHKHTe+n+68Lm6VNrimId7B4zNKmTu531wwLcCsesnq/93APzUu12lwk3Do3m0iCOLZ5hhSHzUByJqB14IV+kkJkW4VbghI16d1tG/mIklurkx0BdXS978LPzyLmppnknSwAC6c1re69cfLk3f/Ghjm29ZY8Lk6faWTEcrEyAQFd0QO7Tmc3PKSmfAMOYLakgaS2S20L15U/g0HVeJHiRt4VFS+8licEsRccm9d11rx6SrNqZqM1EJGtbeOCIOETQPINK9YbfpzlzUtpcDwx6US3P/BRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfyHToi9CMZIPPdA2vQPSB/Bv+DccUgcYVE6Vd4cSGg=;
 b=xUueY3yHSQr+6cQYSD1uiWMDE4WuTCQv4pXnqhu3Z9v3lfVZa0MlbdfwvfHwABxC2SRpQVNf7fPTcju3pgk3gxqgJOUOG5NGvcUda0KFFtb+PmWqDYxFu43qKN38u2Cx9YiU0lLeeu16Wz1tLC+jNkyxADzDPHherfIXKL4DmyY=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0693.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:118::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Fri, 22 Jan
 2021 15:02:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.013; Fri, 22 Jan 2021
 15:02:21 +0000
Date: Fri, 22 Jan 2021 16:02:20 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210122150220.ooerbxb22ndwefh6@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
 <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:d35:f3bc:c81e:cf64]
X-ClientProxiedBy: AM0PR03CA0100.eurprd03.prod.outlook.com
 (2603:10a6:208:69::41) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:d35:f3bc:c81e:cf64) by
 AM0PR03CA0100.eurprd03.prod.outlook.com (2603:10a6:208:69::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.12 via Frontend Transport; Fri, 22 Jan 2021 15:02:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fcfd5a64-1d4a-43d5-ece5-08d8bee6b7cd
X-MS-TrafficTypeDiagnostic: AM7P190MB0693:
X-Microsoft-Antispam-PRVS: <AM7P190MB0693CFC9FCC9EA94BB7CA178F0A00@AM7P190MB0693.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0I08wQ6XPkgTEV3yRL0hpaRYE+A3oQ69/DMi+0KVbMLpuBIxc6CRromO8h0mwGXyoSfZlYgkJPMk3ewr9G57VruVQlDboI/QUC8tDbfp9U4d1XeqX2MOJFX7IP1kMTsPK3DPtiVeb9JYgN7EpdPV3bbZyHs6OCSdU0slflJZ6+6V1FM0MnXQ39plfbUAJAtSHjyYCZnT5lGc1g+h29fqkqZ9as/RI93JqAw7BvAtu8EVZMIZsIUPnmVE6pulux12Fh2UvPNFiP93pMyeGTVHOp8vzAi3cC+9OWV0VC6C+SJegLKPglDJVGAdAGH9hUzoHrJK9lZ7RPW34LN6BcZh+VVxffcTRgWV/aF4dTviOIfkYyebQhbBdbc0tOdXVXVHlfwTf7JRmZZwzMuGoCSXOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(9686003)(6486002)(6916009)(186003)(8676002)(86362001)(33716001)(8936002)(53546011)(6496006)(83380400001)(52116002)(2906002)(16526019)(66574015)(66556008)(66476007)(66946007)(786003)(316002)(478600001)(5660300002)(4744005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?z+o8M+Bml2Ky/ccEZamMOWP6hDupQ2uifnInkXv40RXji42J1t0fA44kB7?=
 =?iso-8859-1?Q?16fQ2EmD3fLpV9xMbwPcR+YyjtM8uWhB0aBcguYYNdpn+o2US6xxPwCCIk?=
 =?iso-8859-1?Q?iCl4EZPUIp1z/B68Bce1aUSKA1Cv7/NW1Ghi9sa0grdUZE7PyRaLmcX2D6?=
 =?iso-8859-1?Q?DAklOewOMzU8kQqLRiZRs7wOAlro93ItWNODnT8y5o+NAs9zc/ObLHYsRN?=
 =?iso-8859-1?Q?v/+IIBkwkF9fKvnDbuDRYd59tV/1gp0jWPqe4r3fwbugqPl5uY57rL7YAb?=
 =?iso-8859-1?Q?jPQI1AY+QOJsl63uuNr3CUPLp8HkvuJseT2vf0xH5w7JB5LU26P/plb0gE?=
 =?iso-8859-1?Q?XpZDshfJObmZKZUlcJ3aRZaVmWeUnyRMIKTVOHql39YlcbiRSkBAZqvTSb?=
 =?iso-8859-1?Q?jYBHXCN0qOomEHrue8XploSM+Nerexx8grPYUyHfRLkLq9GSWgSWmsBemt?=
 =?iso-8859-1?Q?hrqZ6mRLCnYFi9iqw8sN2Ek5h20kXgvkkN/OReTBl5x38x7Fq+ZOL+yvoN?=
 =?iso-8859-1?Q?Gdzyt56JfmrnhN6+qzTngzzFRYCXec5bYW0FEtjnhsXxWv9rh5+BHwbSj4?=
 =?iso-8859-1?Q?XmQn4bMo8ztrA3ywavq3aoPan5RHLrdHYW4NLOYYF4CRijFSRQG+qyBZsE?=
 =?iso-8859-1?Q?herTjKFJ1mWiYTP6Hr+iU1s5ewNuC/L+Vx2Sity9w60EXf62fI6MXoJkkx?=
 =?iso-8859-1?Q?6v2SmUbUfzzMtOo2R11l9587W3u1PqKtStyKy6cnFv3L64Tx8rR9RYxa9K?=
 =?iso-8859-1?Q?uCbu0ZIP5dLUxcDMcaITN4/NpLFJ/3JwcxvVHfQsxvUrYnv70sQzgopQB+?=
 =?iso-8859-1?Q?FCs5s3u70mIYyC6AgKA3A02r/SL0MTCSqJUSa7bL0lm8GjBQ2xsrP33981?=
 =?iso-8859-1?Q?8eEP3+Rpy9wRQEonUifeunBzBL8mKDC3xzXfNTomdCBA+8A2t+1eDtAmYc?=
 =?iso-8859-1?Q?2mSfI7IgtP0RzaVBEsIfY96wmmIlEb6lQDr+dof+QXEQxWWp45JTVE8bXh?=
 =?iso-8859-1?Q?i203fSQ+ID5GiNAY5cwqwyQmJZu6IA5o3/j7BzzLiBqgcHjt9J4KXn5G0B?=
 =?iso-8859-1?Q?4cLE6/og9sQgUhkxrWDyvu2H2shaUsCgfYsdmGgOqCG8FgAgEHIerdzJeB?=
 =?iso-8859-1?Q?64iiE0G6qzuqjxsB7sRY9xPnpxLTxA6CUJEJWzl/RQQPhXC5A0?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: fcfd5a64-1d4a-43d5-ece5-08d8bee6b7cd
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2021 15:02:21.0636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ylbvl/22JCQ3Ia3N3B9QEUuZt6kXlSeH40IuJcIbZYlSwmahAvfjC5P/YanvqG3o6mh5aa0xVObdWdS42UcFTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0693
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

Hi Rob,

Thanks for your assistance.

On 21/01/21 22:49, Rob Kossler wrote:
> Also, regarding building in-tree, are you opposed to building in-tree as =
even
> a temporary test case?  It's not too difficult to do.  I am not
> talking about the
> FPGA code - just the block controller HPP / CPP.

I am not, especially as a temporary solution.
I just fear the possible implicated burden in the long run
compared to OOT when propagating those blocks to multiple hosts.
Do you have documentation on how to properly build
the block controller cpp/hpp in-tree?

I guess I'll have to rebuild the whole UHD?
I was just pulling binaries provided by my distribution.

-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
