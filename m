Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EED88719CE
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 10:44:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B0C7384D59
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 04:44:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709631849; bh=+lRwwQ84ujqPkxnxG1YYWcDffgZO9aysq1q3+THdhao=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZThqTO/YeoYpIi3r4EWNYDHFcsVoCn1w6xNbxm74j4NsRfUYQsw/Qr/I2GrjTrGZ2
	 g94SEmpnjMEEX50qnaBoYvNpEu9CJ5G3oLm7Lovxp+BQqnp4B2+W2Tti0KYCaaNIs9
	 8iEmtN7hIRHtkKTqs0mHFXRHb1ddZGcRSwCn+WHoRshZX8O4fAebkR+UG3UBFyW9Yk
	 aa2AMvHAEQZlFeidF7Iee64b6yn0fg5S2GeupzGwfr7KqWGpB+T2B+Y0AlrsdpaOtH
	 96SCZfUc028b/1xbNF3DPSQYYLDngYt0PW6VLmuqhcSdgBZcyMWZVZ/75qfM7phc2k
	 lXpQhG4gBYSJw==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2099.outbound.protection.outlook.com [40.107.22.99])
	by mm2.emwd.com (Postfix) with ESMTPS id EA3B2384ACE
	for <usrp-users@lists.ettus.com>; Tue,  5 Mar 2024 04:43:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="NfSnQXzh";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+rNWTGkF5z6sKh5yAUxbPKAiHg8edbz9Ihkzguff5j5VF17nIAPbr2m1kBpx6aXsduIbSrlr3zfcb/jhTtiRpF7WlOSw30pclN+9Be/MujWuxrQtJNaPmQUf6y3NOsb6c4JCLS7vzMNsQIAF+cx5AmeKxCFO/DSy/k3LuR7pf+AX3GnlCkE1kUvHKa4SOO/6Kxl5SxojxIpG2hvI3wCAmLfyqojDD/nRFsLb0uPzliMXR5mYj2cY1QFTywJ5lFNrp8pQUNi7M4vbdhK9wulceBWVdSjHjVASRNhgtvmbMPqJ44xxRCZxr3H/CQ5pDfULg3uxTHCq5DyHwrgZ8sNJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knCLB58zMaTUTdCLQKUv38+m1hZ0rHkPIO6VMOQpFvg=;
 b=NMRB711Uy+FAucDpJgbelQAMXBZ3kzhojkwle7/Q4tMAepqx21bMWW7eG6j/hNDGxWl55t5yF08f3YY1CHxAwR09nuJwmATxEvMjCglb3oUINtW9CAM3X7Ys4woQXzWHITtXMSri9gfboq3/AOvMwd29f0+nXtzYD2uukKt0Ao3b4QJu6yaidvihilSYplPPkLRq9yjng95a4OecAOOFL7/b72myd7oK8aj+PvuYqpijSkCupFte7fPPu9P2Pb8HgeCeREplabI7vu2n7wJMzKMyfNgWVaEKG+J+tZIKpkSSx2tb4F7NzAFkQHuAU0RnW/VAdVbPndhdwfxOr/xuHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knCLB58zMaTUTdCLQKUv38+m1hZ0rHkPIO6VMOQpFvg=;
 b=NfSnQXzh+o0rSD7DEDja3zdJu7zbbm9bEU6LIxJh45jO9lO7FzBNu+nwOH/hozUs8wOOVrbhkS1b2QKmF6GuKp5m52ERg+08bTs0Onhglv33v/Pm8yin7/gL6Ptzx87CS8VjUoz1VmEnfxE0dKOdsM26Y+wT8K+j+r/kidmFfH0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM7P190MB0742.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:122::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.39; Tue, 5 Mar 2024 09:43:26 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4%7]) with mapi id 15.20.7339.035; Tue, 5 Mar 2024
 09:43:25 +0000
Date: Tue, 5 Mar 2024 10:43:24 +0100
To: pav.vieira@gmail.com
Message-ID: <nbyxsho653l7zdicq47vtmjxy2ryocmtyu3znw4a4ex4augemd@es2frdzrnmro>
Mail-Followup-To: pav.vieira@gmail.com, usrp-users@lists.ettus.com
References: <Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U@lists.ettus.com>
X-ClientProxiedBy: AS4P192CA0004.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5da::12) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AM7P190MB0742:EE_
X-MS-Office365-Filtering-Correlation-Id: 2867830f-bb01-46c5-ce06-08dc3cf8b464
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a/2+kn+Bjzowp7EoSn6JblWFmUZJ/grbqHt81jG7bVjL/L41OFHfI7w4Ck0tl2pQm/o3N573dSu1o32ZMfHzriJM50IPZ1pABOfy9ohcC6j9EFvQovKe/M/yzFQltf/ahjwzqRABmcYkmFzrfL0/6ve+/U6NhENkdwJe/5o7A6LXoYWuaTNp/ydpely6MJDZxx/Oy48JxjHSqxvVVonlKdfcgbelh7eJCWPrZJVnay7KSBftS4NpaZj6kkxfXMd57tVD0d64rT3SqPJ4BG/tMoLnTcJKrhQQQ0OaBG4hKt6uO98gTYpAHQp+mkm8TsRfhsn8UqaPmCKyAPoTk40i4RtnAfeysg4YFKyTXmUi2m0rJtK2cIu/w4aCrkU550LVHWcOQZ6+gg2APWKwm3LxeCVuUdWoGXA6QNZyU9We5bynlngH7w/GgH5kJEj4hYundjZlSoaA2i9BhVJEnwjEDGXiPHCC9OHb+jspkDUBHr5BuY2+HJa2bG6Qf/rjiVS9BzMa7Dhhmy5EzgVGVPIwvf9pn3l+jlJXLNVjMlirxuYyr6DFVDnsfch3rn3gBaU6BmQU8PF5vErnXm7Ez2PfMD+YEi7IWas3bA53oaMwLq3Y3LRmawx4B5ls4n5npY4r7EBTEggapgSEcEXblCIS8GOhpg4Gkn1sZZx+96JXUPU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?DkN7A/0S49VJS9YhdMysjOWNNLChDp6gzFG7y7ZdR9JuyRV6B32T2xK7ut?=
 =?iso-8859-1?Q?e71s85nnxchSqAsM+Q1R/HfMM9yX+aj5qzucNcOmNoQV6uWEvPc8XCKSth?=
 =?iso-8859-1?Q?QI+t0NLOxwtUoW7YbBrTNG3QIs/Rf2SVmSYultW7fXcUt6ulbQLO5JSCRh?=
 =?iso-8859-1?Q?IqBH6QPvycUdodiGyV2yR1fsuUSSqtdpi2N10cgyku0y7ktsNIMYKnmHTP?=
 =?iso-8859-1?Q?LFb9NRvtMkPJe94A/ffh2opKWIE5rDOHzunT3Op39MRWmBY3Azji9xIpfz?=
 =?iso-8859-1?Q?QZzRpfR5xXHg8BYRxnE+cZvZXVNrtvma6nnYyRTlZ7+Us+W6g4JBEm7CPc?=
 =?iso-8859-1?Q?ha2TKoIlsUszvNmQQ/CjRkylgBpE71ftSwDNTFTW4ZZKH8BRuICNCgSq85?=
 =?iso-8859-1?Q?pDNtn1UaRZ5fdpTag3JHjCJJ2s1tQm6m1P5QIM1xKsPqx+/e77fgE1tXs3?=
 =?iso-8859-1?Q?qQ7PQxwauA5SVp1LsnABpMkT8eiF6ghMlJ+GHWelNnH1U+vyboGS3lV5uA?=
 =?iso-8859-1?Q?am/vcoOaz4NKmsdQBpZZ97ej6076aETUZ0HGLILj2N36FCoNceKfLmBg+H?=
 =?iso-8859-1?Q?AoVE+gtgiyKseRlWRq2lVoxcu7ezxp2d3C5j01pMB2OgaJ+wusXEA2Dzq8?=
 =?iso-8859-1?Q?lC/7P0jNS5d5aUIp74CrZbYl76M+gIUAR+ZYtVnjhHT0qt75aLoxJiikcc?=
 =?iso-8859-1?Q?2Zqhpmu4Pv4AgwrYcsy4O7zE/d8wpl6U/xkLXT8BhgwS+JqmGhtWAzuaCI?=
 =?iso-8859-1?Q?rimxlN/zG5K0oo7Qykj0H/CoV7gAMG87XSPfOZBzJnjo+yUsSBW94ESUf4?=
 =?iso-8859-1?Q?zU2JMOvnGNh0pqNZBtZCTKHEw9efSRCH9TyEKZVCTR8zUZ+Tki7oYqILXY?=
 =?iso-8859-1?Q?MUf331fFvHTLtt932a/W2FLZCDr8yH/MMLEzN7YATNUCv4wxdp2UYLSGud?=
 =?iso-8859-1?Q?oPD9/+zhxQEVyQ+hDx3scArGlguatsXaE+7QgMxVirrO2MvbGACxZ80QgL?=
 =?iso-8859-1?Q?KqpGSDwLT2dtWrrXUwqRArwnx4oDmbIr1tWeiOEjlrUcaKUV/4GY9tt1UL?=
 =?iso-8859-1?Q?NSMUwY+WSagTEA9z4TSTTq/8B4AxJxCjWj3qIcbGYJ8S2wXLzbphL+brX0?=
 =?iso-8859-1?Q?ayIs7uZBaWujEn5fZmfaK8iJLlLi1LCi8cOX5AM2H7hZbQR3ztE3ArVeTh?=
 =?iso-8859-1?Q?/Ta3KKH0NEa8wtITM759YabCrLM1t9MYaDJ6vHkwu8odcI7vFjD2xtVqlM?=
 =?iso-8859-1?Q?3F8xqmSXevlag0yh3YjNOn0O8bqp0osc0l6iUpR6bs0E9OFK/6dDyto1cd?=
 =?iso-8859-1?Q?FXBNHyKTxMOQJCejP6nwi1Iq+tp30layLsXvOLnHOUjENzXuRjWNNn31NP?=
 =?iso-8859-1?Q?A9qUEtZjk4ZwNzkhvQ1NiWbVgKZ5ayf61nq2fAaQ1A+kRInB3dv3zPPG0z?=
 =?iso-8859-1?Q?dzCcDW653N089dGs12spLzv8NPdPxsCF3j7D8pAPRw7xk7j1uw1UZYWQBD?=
 =?iso-8859-1?Q?sI4bT4GYcrcKpCp6UL17xopSYsRfEacXptk2DrbXeMEi3BN8oItDQIZAzw?=
 =?iso-8859-1?Q?CK1/EPxSNHNmYKifZ/kik/niBN4da9+niybJk7imCaFELD67bSw7f+CmEi?=
 =?iso-8859-1?Q?/9opF1QNbzNJvyp+qrIIi5MfYZd4kKzN5ddK5Vq8o11xRNKjVW8cdtxagp?=
 =?iso-8859-1?Q?ALhg+1H1UK6RL079doLYQPfnOvH0umrjZWlpILMPmUiuqTDIXdLd5pg7JL?=
 =?iso-8859-1?Q?BWPQ=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2867830f-bb01-46c5-ce06-08dc3cf8b464
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 09:43:25.7731
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9fiaEl7Hovy6Q+KvBEzmnx+igLYJYJgPswSG5wKMFH4DK4ujBEQkwu19t5INezpCmNflC2XpDCZ5zSyGYOl+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0742
Message-ID-Hash: BRYSKUML3N7E26ZZVCOKUSSLYAMXKAKW
X-Message-ID-Hash: BRYSKUML3N7E26ZZVCOKUSSLYAMXKAKW
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRYSKUML3N7E26ZZVCOKUSSLYAMXKAKW/>
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

On 2024-03-01 17:51 +0000, pav.vieira@gmail.com wrote:
> in time... the NUMPY vector is of type complex 128 or complex 64.

"fc32" means complex<float> in C/C++. In NumPy, it means np.complex64.
When I load the .npy you provided, I get a np.float64 array.
I have never used the UHD Python API, so I am not sure how it
behaves when it receives np.float64 instead of np.complex64.
But to be sure, provide an array of the same type as the one you
specified in the StreamArgs.

If the structure of your float64 array is
[sample_00_real, sample_00_imag, sample_01_real, sample_01_imag,...],

then it should be safe to do:
sinal_ofdm =3D np.load(...).view(np.complex128)

and instead of "fc32" in the steamer args, write "fc64".

"sc16" means complex<short>. If the data you provide is of type
complex<float> but you specify "sc16" as the "CPU format",
then UHD will read the array as if it was complex<short>.
Note that it will not convert your complex<float> into a complex<short>
(by e.g. mapping -1.0f to SHRT_MIN and 1.0f to SHRT_MAX),
but will interpret the actual bytes as complex<short>.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
