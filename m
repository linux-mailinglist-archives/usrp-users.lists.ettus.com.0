Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C7D874A1F
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 09:52:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07E46385236
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 03:52:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709801565; bh=LaXxYoHge9JeZn9tsgRnn4HiT+Hhq2qoC6cypH1p+0M=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FefjaAYl//RH+Kffej8TyiRd5FlXBlTm6fYMQDFvzU2D7nGIMe2m32xREmXCrvGk6
	 Bgy8swdRgUaqywBWJlj+dEL2DuGfe61FLG7LvULddTJL6lLldoWA3MAripVVAWct5c
	 ccAsw3ltWUDJQG6xBmzijf6+6xk5qB9P4O7xUn9o8MR+9hzaDrR2PZJJL17+Tlugne
	 jsaBqGdSAg2csQ/9r1nJ6DTyoBVmMLjhwZYKUGbfga3Z9VnqNHDnPBuFCOKvhydNjv
	 haCwQyb8dfJmgTkXwzLHqgZtoEPTWDrKK2DG+/I4JkevZrfOt/2fkXXx4bAs4ngC59
	 GN/zRebgk7GCQ==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2097.outbound.protection.outlook.com [40.107.105.97])
	by mm2.emwd.com (Postfix) with ESMTPS id A45B2385108
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 03:52:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="QLZ+Q1du";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYjtCpH53hMe4ikfSqfFB4Yq8tPB0WjNMg6GlWd8XPoeL1Omhp7AuTujJKKfd3gf/1U1fUgar2cRhH83s3rhH42PDMntavjZ361sRDqm/FWDTXBi8vJiEdqolRfWOwALjgNniO5zKDutv/QORti/rdXzNRl2TyIid+/uskgGE22OlY1WuGl8VEBP8kJ5EQxXHcT5ftttfIrO18OsEyb1ptPInzfuN6d0Yb8N3nxqNZvvC0Oz08P/WthAf3C+EJOkmz1dkovz9pDwBpHpQo0oI13nmqXKU1JK+KREYQlyY8kj63e+ryC/yPdDQ/jRvId35Y6+NV6szeogLqBm21KssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSyIuOmbauFbq41n45wvJ+JBm5T+8SgYVHBqxxsKAQ0=;
 b=BLeldppt3VOD0v7Yuh0mqKcoRBpayDvGkaIqVpvufV1ddUIuZD9nFxaWV6odWue5W9S+7D3/UKnasbTDOOQ5AuQdNGBnrvNgk15FUnw8bL7LyATmQMPaxBK2aNPKNFHelGGZ3EJUyHOrLbe23Jw75sGaeGstGsjVJATRGQnenlRBp7Ma9UAjdOUOaVCK04U/WsZHBeAniP2fCon3xvvlCSskMdudnGsDAXWZy1fhX5ccXWPFKP9IjcQozf/WxnE7QjNQSzz6lhuIm1CDvQaKN8RzanopODAWM0F0DU4L8fD85hTudChR+o+VVyIO7bKhTVHmKheIEdAq5l/dRtpt/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rSyIuOmbauFbq41n45wvJ+JBm5T+8SgYVHBqxxsKAQ0=;
 b=QLZ+Q1duM33coEw974vmQYmnpss9pH3hmEgzQ4EcFtMnLWuENQpgRUB4kZ6gM6h0vkKwRA7mp+wUfu9l1g06NZ6rH8yYRazNzpq13dSkTDf1ftsiNew/VjDa8z9+C3hbUOe22L519GPP7q+aZEFASaatx8Zxzv41T/FAYa0jfXU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM0P190MB0625.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:199::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.26; Thu, 7 Mar 2024 08:52:02 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4%7]) with mapi id 15.20.7339.035; Thu, 7 Mar 2024
 08:52:02 +0000
Date: Thu, 7 Mar 2024 09:52:00 +0100
To: pav.vieira@gmail.com
Message-ID: <wchjtavhpj73g4k3ulfjfyfqkokluxpodbrgytzgvoipmwyp3k@awtxn4hyhtc2>
Mail-Followup-To: pav.vieira@gmail.com, usrp-users@lists.ettus.com
References: <DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs@lists.ettus.com>
X-ClientProxiedBy: AM0PR10CA0058.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::38) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AM0P190MB0625:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b68250c-c788-477f-613b-08dc3e83db4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2MAhX/nBrPnz+AmZ3p+nAhIrItIYzufHBAYeplrhdxLZgDqt0qR++iFfbGI8zJFSFz64g+1+uYRfZO6tIwnN3MDo6/jRJ20wnvzDdM7aLoPxtiLYKWQjqsdN8D/XBcZ4dqsCCgJJStdmdZzVZ8yugGO3oKA8r5zCInYcgJnzXb8rt3212ho4fcLwd1qDZUtkSRLGDJq10nJQVoxHc8ibKq+1fA7kIPrxDovpUEum+epK8O2Sql/ivwPWD2EU/Ki1VJYRvOGZcSpZ8n2JUFTOiJJASyw4oxUiWBKwPRHqNMIZBtN4cINcwY/vy/TAFOaEuxrW8G4SqPMjYeMaAiqhShEY/U/VGFoRWDhcfL/Tx4Ls1eX0JQOrXQJtQfPT40oOvAfUA50eLrp/Dys1fyBAqsmf9xIjWTzQXAyaTLZm4UH83AmAgh5DbFswLTvUsCOS0/+ZPGegjAOKaI9IhkWdJ1ItkJEOhJ4idPnc9+jGxVXKJ7zzTkKjZZzB1WXWLh/lDBeCrGwA5SRjP0pLfPQwnRJzGgVV+T4r8Lo/H8N8kFFHPJ8h9O61vKBNDL2K01p5/5ez/t14R3yG/FxEAum2F/uvO7JtlS1ngD+s4tOC82IxLDq1Cjq9slYgS144mkhtN7fE+VOMBETIUu64iQaxz0DwYYLNG0UENOCPxIIf9rg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?GQqp/l/+vnypenP6hPn32UMWeSJamx03i6aqoNvENh628b/9kqjxozUpzS?=
 =?iso-8859-1?Q?c5xv89L5DdL+BCdKiw7mPgwHF21C45gQAx06usigmZmk7GqbCh/zZInmpR?=
 =?iso-8859-1?Q?cCPVEYwtbZLA9LNQbjLgcE3sbF/3xzJLj0OGPgZsVPuqYka8vFfZgQ67yL?=
 =?iso-8859-1?Q?GsQpLgqCH0TH/ZTbilxCKEia4JuhiLbSaG72qHrsO1Xbr+FVCYjFmxnl9M?=
 =?iso-8859-1?Q?H+UiE8AivJeqFCPJpx+rbOU3kUZFnDViSynCBjrn6Uqz9TVghMVwUPHZC7?=
 =?iso-8859-1?Q?8XjLEifqw+5eJi85Buc9CHs+acStosCPz9nv/cFBCPVLcbY1C2ijg13fXG?=
 =?iso-8859-1?Q?zmPyY49ludt7v5Rt3MjB6tgl1i9pTmcXKbHJImDTFQZwv68GwKsjLWtWjE?=
 =?iso-8859-1?Q?6/6n0VUMcAWLLzgjdt6hAMp29YIoRzdDZmlzA+Ch4E5ifQ8iSPwF9dcj5d?=
 =?iso-8859-1?Q?6sJhErplqikr1IS5NEEELTnIlI5mZUzf1luF7PfFJtmZZoE01NrtW+ft+D?=
 =?iso-8859-1?Q?/COKKehw96Ey690iL17+WyUrVx/o6jE55j0nV1RwkrWg0ai4hmJa27Y3iP?=
 =?iso-8859-1?Q?KdLB+qGCvay/zfSU+oh5ngPMc53snvF5Hk5q5Cymzrbws3/+mwvoQviQ9f?=
 =?iso-8859-1?Q?IQsU95/XTKrSVkgOzKW40DuQdxMMZz0pUEW5WG3ELg6HXxhSBydw0mXYWN?=
 =?iso-8859-1?Q?dEg48GX0VupWFIRVKEr5BcIpYM9RqChQo+1+fFOFF8DPXX5Ze1xkddeqd4?=
 =?iso-8859-1?Q?wYfR+/CO2xngMhnwKF3UCpGNCZFKUk1S6YvFfdl8y5A+2d/CBtSbg+vMeF?=
 =?iso-8859-1?Q?NiRFbD5ABCaI8qP7tirPy0eGwZTXM31v/PSX92vfG+LRsWj8kq1S4iWWx3?=
 =?iso-8859-1?Q?JZZ5Xu37rOzZx+KbDM9szYs5Tu0p33v3nB0FBJeO4qQHcUwnUGvlFPk9tX?=
 =?iso-8859-1?Q?ADTEazLe5/Rk6EO5/fcRO5MlpQFjeA6P0/dkV7KHXZRkDmJZKMGQ539nM9?=
 =?iso-8859-1?Q?3XwgpvndsgoztZCjHp0sq8+X5t+k/yQiPY8hGRKX6RggDpwKxwi9lXkynV?=
 =?iso-8859-1?Q?qmAmxdUSqmbPNCcj9zyrHpAEqVm1utgQOwY79PgG387KdD+9/1tOqLti4s?=
 =?iso-8859-1?Q?Wh6H3As4duNGjw4WihCZX8etHRO6HVpoQYS9TLX+VDhxoehnRmY64bbNGH?=
 =?iso-8859-1?Q?9Fd3Ap5O0pv/Hr2hdC9i5T+quFLYhoWt21qghyAWzhiNL/+igdXSWsvA5M?=
 =?iso-8859-1?Q?FokjUL0rki/xePdkZTm+4V6H7yObjt19TgtbsZXSCJxR3FIkM/9vH/PC8p?=
 =?iso-8859-1?Q?Uzpmv5w1N2dZmlRk7NQWq7L7WRpBa8/LMTseKrMcnBAOQ+3QovqsDnMKjG?=
 =?iso-8859-1?Q?q+hLLNOfCTUQVwWFl8TJ9YUo9Aas96dUdTCd9NlddkzdrEqVDukm6LMr03?=
 =?iso-8859-1?Q?VfXsIbSliNc4dcP6LEuRmCXzMtJNuCYse+VUgqMO3nZ6uXaSx8dHpImo1W?=
 =?iso-8859-1?Q?qYjMnb2ERZlkXUnBWBL7U+Oyor0Rkd9i8cjxhMtQqtjnpWlYLh0nH9qHZ9?=
 =?iso-8859-1?Q?2QhIW+sIq6cEVUNxITwaNsk+QgV7cDqliBLSkd3PeDP1SqfFVxNfoO5yiW?=
 =?iso-8859-1?Q?YP3d6FqPhl3blHwLXhvS5WgGeCFqh7v1hdVcq9+Tin9Pwl3uZuRfBohRjH?=
 =?iso-8859-1?Q?DSyZRQBnUn2xFzCISgD/Su+4Yxwdxc1gXo0vylVTn+kBs+j7ZpBLHAeLyd?=
 =?iso-8859-1?Q?a5Tg=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b68250c-c788-477f-613b-08dc3e83db4f
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 08:52:02.2688
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u2ZzBa20DZvpMTmwQAJQeaqRR12Dlf/4tS/VdU3owj+VLoBW6qbL9OYsS6sXMjTufAxDtFB/AJ14byFbEGNQoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0625
Message-ID-Hash: SFK7ILP24Z6VF2PQ2DOJOLNIMQ4P5C3F
X-Message-ID-Hash: SFK7ILP24Z6VF2PQ2DOJOLNIMQ4P5C3F
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFK7ILP24Z6VF2PQ2DOJOLNIMQ4P5C3F/>
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

Hello Pedro,

On 2024-03-06 22:02 +0000, pav.vieira@gmail.com wrote:
> I'd like to know if you managed to obtain information about the calibrati=
on process?

I did not.
However, Rob also mentioned that the ports should be left unconnected.
I would recommend to stick with what is written
in the official documentation.

Kind regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
