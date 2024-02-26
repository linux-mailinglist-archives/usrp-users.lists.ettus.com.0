Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D300B866FA7
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 11:01:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C907384D05
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 05:01:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708941673; bh=YDlj/Z81UnMFSWnCyGoBnfFT7c+i+b6MZBwwOOzEugU=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FIZBFpU4gNmy1ujkMeSkhSNyZ33ZWTdQ7V6+EOEVq5lS7lSGf2oa1xZdmX8+f36BE
	 BWW0lLM7YIl+OsGq/GjXRbw2nGEuymHhSQITuEAhVmTQ5K6zDgSUlYub4P/SaLGoES
	 SNj4hC/ZcHyfMDDzK3M74dAksCzWc3k0PYVIBOJXc/TyV37Qwn59TfliKJnY7uO23J
	 CyFNmUYtdSHjhC1LtPxUnKmZuUYTkg+9kjySFKj9afqfLMJGfQaPPHZpZV8bZHGUSt
	 yExrqsBaa9Nmgp/0cB2GAFtOH6CARJQ9/DngYxr0AYu2yMM0fMCA3q6uNTsxydoauj
	 x0P5v+qD89Nug==
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2113.outbound.protection.outlook.com [40.107.104.113])
	by mm2.emwd.com (Postfix) with ESMTPS id DEFAA384B29
	for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 05:00:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="JWpPXssw";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IiaSNO56rSzgrnwj1lMcQWtOd7/qF8S//kl9QXZADNvo08mVedkFoNalA790WPLsjZsXUQQoWRXwuu+i2IukIi447OSMxhyS11YdEuOuqntRmCmWo8ILZdLl+y7TMfZo4gbqrehixkQUqHlopvHAbd1++QhdsR7XFcSpEs/foLUs040rjfWA9E2/qNAIiQYPYngSFz1RIYwucynvcT/RDJg1tuUvgYGNojTX+skrvDIJ8Vp7viLmCKAzEpoxwTLV8QYuAp8HeUD58iAEFMzYyiQ1VltUeUhE0gLrBUqhCvususchNypsabBtSWGmJiqGyVij8gVO9dfNhbv+sc81ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IEHUsF/PLmwmO+uJs9IP0tTe/yVl7m5BtP8POtmlc00=;
 b=Oa5IE9mAI5Hwbfob5dOvn+zIl1BTF2Pelvmvz6ztHZE9bDeMTQZEzRoOgp9TCj+3w5BjlZ6FBiRyxPMKHOkQBSavP4dnHiHVkDvwzi3OuzVpy+1gb0/RalfVA/vQfTMBAPgQmx6EOZuTPHxkBQj/guy81gNKUj0m3fkBbBTr4FmAtbb+A+U4h12tN+Ae4zzZTW7ByCjh9ukhr53zzvrqa8iF8z6JHPu8ddTYy11kQ/IEiVcDKidF/WdwFc0X6rPb8EoTWVx6qUKrDp+8WQsINJ/T5FcASsrY7DsUkX7AehjZXMvr0iSmA5sedV62/OyFN1fIlEM6/Sx/1C1vbV2ZLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IEHUsF/PLmwmO+uJs9IP0tTe/yVl7m5BtP8POtmlc00=;
 b=JWpPXssw0Bn0jnImpqmPviIrrwIw4YJPtNDxR5OkK5p4bPqhzzi9Iey0/eD+QUrZZYhtiGGtt6C72zG1oUQCFljV6olcu5EkRRfIUARZNOkmUJdk4tXIfaRuZFGCRU9qjmaPOINGc9oHOt/3IOKAGGbhbcv+HAOe6Z+p0oySwc0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PAXP190MB1719.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:281::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7316.34; Mon, 26 Feb 2024 10:00:36 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4%7]) with mapi id 15.20.7316.023; Mon, 26 Feb 2024
 10:00:36 +0000
Date: Mon, 26 Feb 2024 11:00:34 +0100
To: zhou <hwzhou@yahoo.com>
Message-ID: <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
Mail-Followup-To: zhou <hwzhou@yahoo.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
 <1464756341.27900.1708721099612@mail.yahoo.com>
Content-Disposition: inline
In-Reply-To: <1464756341.27900.1708721099612@mail.yahoo.com>
X-ClientProxiedBy: AS4PR09CA0015.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::20) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|PAXP190MB1719:EE_
X-MS-Office365-Filtering-Correlation-Id: cac5ade2-3b98-4746-47d1-08dc36b1c756
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	m2Xj0cBbqEnJy0UVS61d4cMjQj497nK5Z3Zxr5XkYZide1gQs1mHQ/zMaHpw7BKElLFM1A4va7rafc4vAtyXDcZWuiK5D3NXu+AtD/Xi/aFCAZ2yhEoIKCeZJdP5syTq+GfShsOGqgkUG3BiAAukO9ypJhyFqphejFX+fu/iX6c0ilbbU5tIOTHVviMNooWhzTZNTLVctjAswzOAgDGTSHwZ1R+v4H6CE7Kid9NWlZQ55zixrUu8RoBNDeyz51rpfFc5IHNY11DQVnqBTvjaZYytbA8i0ftKOz1GKMtbVKWxAqG+uI0glpAjQLSc9Dbbzj/HGEkcF0+EFgNfmNocvbomBEl1BKI0dTRCLLHY5Mzexb+oVXiSmuHEuQ0m42K2h0XRq/GNSv5m4BKcaMYPI2khEuvtDoV2FCb1PITxW3nS6mz2PYj1glNk71rgW28LUI/w62iUpCaNvL8yBAZ4+MLTLJET8ECfxr7e9CZ/vMxTfJI3JrpMTZY6ZOP674ePrimrYOS+H/39TtfaAuj7aUXGBA3RDetby8O8rBh2fmSh9LfaonrpB2Kr/oltaZbUxytEkHXSR1LkBJs866uilv/Lx2Z+rwpdm06fVqWYjTh7nblroG2WGUi5OBi0+BnT+tjiFUYQomY9fL29UNecmw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(230273577357003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?50mPZt7lkL0G316wVaQq+cDXdoWMQasF1PAIK3EXEKaj+HVI55YBmu0e8d?=
 =?iso-8859-1?Q?3cpjtj0lRGunUUCP7r/MSwoupAEAta/xmCpyLZgLYxAQfmW1S5M1gJvj//?=
 =?iso-8859-1?Q?o5K2ITew+YKCKqwK5PghgKYvTItkbJ6NnXYfxwouaGQzE72PMfaDjRS+Uk?=
 =?iso-8859-1?Q?BPYpVDYGHyLMzJ7LvCwwJJUW9BYS4R7JaRHKFy/6X+stUHy2EKy1qVPGy6?=
 =?iso-8859-1?Q?qCl5idxFo4Pu5OYe019YV5XIUEYd2pUvBbcHpuKJj/Bhku4xAeuQTaNPGV?=
 =?iso-8859-1?Q?Qy4vafCUcMI9g+MC3UpjjBsISFTJmRlSoXdWxSXhJ8vJaUTTLlLxdTuII/?=
 =?iso-8859-1?Q?1Oay+Uj7jaLsghJ/Lv3hPwnfATE3GwLJktwm9nNvFCQSdphU7Of0fqWNbg?=
 =?iso-8859-1?Q?h5mfNLZBsl2w2wrm3hbBKo17kl1zuf9vz5s2TudcCIhTT66ff1rZxVw4aH?=
 =?iso-8859-1?Q?Lp9PzloMPeI5/KDJB3J/WxzVPDE66E6gRywyglhSgA+0fSw/2bxJ+V4SDS?=
 =?iso-8859-1?Q?0er8p5F7JXttCQNTxI/DrlemJTM+9ocRNljFe4/AfPyo7F36VimBPRk2ej?=
 =?iso-8859-1?Q?SKHbnZi3DPMpL4TqRZdKcffvtUb6mDTA8BPh0EeqjU6kY/CP1EVDGOGshK?=
 =?iso-8859-1?Q?/PcDQgGS4a0FV8eb9Z6LjONovYlPqfVT6d7wtFqN/Rwp9GkdWPnQsv9S4Y?=
 =?iso-8859-1?Q?muyyvCCw2Cq+RWRWLkf9Fzg9z6cApBVw7esiS5JGK9hygTvmRr+6uKzwGR?=
 =?iso-8859-1?Q?vW2c/eo8lzXdIDL2XVOr1fOk2jea+TYSL91MDWXNWfB45UiZOsEvSABHJU?=
 =?iso-8859-1?Q?gDfvng4IAAW+BgVwcY4ze/IU4R4VMIUXteWqYVU9TsDfX2iRLzJvKgsnaT?=
 =?iso-8859-1?Q?PjOafdL7E2BLVCx2ewQHpQOGSEZmel2j/3PaWar4Gjzvb3543UaCXF5KQD?=
 =?iso-8859-1?Q?fUG8R/vIo8Ly8W6QM/+go+lRYnR9REyIuSu/ZrQT8zSd5WwjCQKEBFUeEv?=
 =?iso-8859-1?Q?M1RyX1pcrDH9k5ortDdIqaPERr5D4g0a9nxMjKoe1g9W8l9C2fniBigpt5?=
 =?iso-8859-1?Q?tEK+TvJgQHrV8jyjmlNHuePu68+DXAb1jEu5mlrHujiC5FRUecdqad+D1H?=
 =?iso-8859-1?Q?ywvMAgp9KxJkUbWGtvkt7aPR/GmSluWN6g2vu6x8Tgy6UZwK3QGT+4oKyc?=
 =?iso-8859-1?Q?CTbNhb9eiryViysC8zE+nElzA5fy2n2GOH8U6eEJcHVdYXbHbVvy36zkaT?=
 =?iso-8859-1?Q?UrXFd5wWFe16xQe92hWOuVesn84ERbaSo1WCbuKfXX5igHLWv0i3R10cx4?=
 =?iso-8859-1?Q?ICBBKHrMMPNBKVLJbc3CATkv6Ks/f7vZBwjvgx9y0Tmp++stGidrtmvfbE?=
 =?iso-8859-1?Q?14SvOv6ndB7nF7mDFkmCyPdhRx9o66QFQHPyfluUBQjt5VEbfNSTw5BC3o?=
 =?iso-8859-1?Q?RAaoVujYFYKU9aqBD50i0sbM2Do/VGw7H+zrKHqeq8RTPWM0gfPx0uLFXa?=
 =?iso-8859-1?Q?lFK0KQKpbCRX+jj35WDHRIhjQjd0rvFnJk/Ane/pshnETq5TixkBpHszmI?=
 =?iso-8859-1?Q?TcgB+/JIvsXaU+GCv9FSNDMAN7JDaixxJvV0uOkPIsE6AhlR/Z13Rj4AKe?=
 =?iso-8859-1?Q?VQFBrbFQ1MfhVhMwWO4xE2ltnHtxv/jXPIrwRDedYbv8ClDe3jEpt/Np0d?=
 =?iso-8859-1?Q?jTEgxdzRSAqu77xtu7a4kpnBpJ1pC+e8fODRGQflHxCyB1JwrwjKerobR5?=
 =?iso-8859-1?Q?2aGQ=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: cac5ade2-3b98-4746-47d1-08dc36b1c756
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 10:00:36.2594
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qd5E5qXSp9Md4FPMrhuswPbquPzt0XQkajpfm8UEk+q2vyQhuvVWR8FFu47gQ2eM13M2C/sJUrEz86WEwhicgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP190MB1719
Message-ID-Hash: 27TLT3BI3WR2T5V646TZYFAF4W4N5TVM
X-Message-ID-Hash: 27TLT3BI3WR2T5V646TZYFAF4W4N5TVM
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/27TLT3BI3WR2T5V646TZYFAF4W4N5TVM/>
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

Hello zhou,

On 2024-02-23 20:44 +0000, zhou via USRP-users wrote:
> It could be DC leakage. Try to run the calibration commands. For X310, yo=
u need to loopback connect Tx and Rx antennas with 30dB attenuators.

Do we need to loopback connect the antenna ports?
From the docs [1]:
UHD software installs the calibration utilities [...].
Disconnect any external hardware from the RF antenna ports[...].

[1] https://files.ettus.com/manual/page_calibration.html#calibration_self_u=
tils

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
