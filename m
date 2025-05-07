Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1519AADF26
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 14:29:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1A12386131
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 08:29:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746620971; bh=4/hoRX+vZDT+xe5teazPQzgFdIHOJhiK5d+KI0QNKBM=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=SKEMfHfaMXThPF2uxYCNJBDPRFT3k/ORoOnKRLIhIm9gNj5nVyouTzHQx/fJRHu4Z
	 G00VrP2uiBQDAytTW9On0bdW1z+VahTZmwT+kF8MEXyQ+JQ+CCFnvletSgZNyfYFTo
	 40cJKw8y7VCwx3zRfZVx6EbmuA9OKMnJ2BIQp2lSOcgMsv5LQUx33QHmNJXmjrsA0e
	 WjEDrGwtBPYqFxgQOxwt/vg9h8fFtSv8qxqXybb1MnEPXi41Q0POrXutJCCzbaO2YW
	 CVhjelKtC80/5Y8ZFnOvLlVvWpatG9rTk12JySzXXnCzVmS/ZLCErEyL1b6j5u/H9Z
	 On93l64gfVe1Q==
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021072.outbound.protection.outlook.com [52.101.70.72])
	by mm2.emwd.com (Postfix) with ESMTPS id 59C36385BD1
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 08:28:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=surrey.ac.uk header.i=@surrey.ac.uk header.b="O+LJluEk";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GkoYiR0F0pCfVNlbvjTdZljEimCGBmiyFmtX+NC/OXENd+qVTTQ7sBpFAGBmlFyrvLTUxkNqypGd7IwxdMhE5LWVXWXCS4cPtI76gxzooRxC2hSPaAWKl32u9z/I1l3CNSLg9zeFI2z7hP4bxPzwNEs985xXAu765bgyabeDiu7TKdKi+A3fBydqqhuaSNmi92LR2w3Wy8ic5bGXF87SMaWELHUlnUmFGZhhvB5sz5UpsCJ+0dqlaUKcqH0hGRQTnb/v7SdR2Zi3KkCUd4K4/tgzbdokae2OuNn3h7LXwkok33LWkUVTPA1408tybUtfk81pLZ8dP3QmJ3aRWtsHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lkXW9YZSq5ocX9KKBF7tERzYrTlhYHxVLB9abk9UTw=;
 b=hzTJM6LKHCewibl2VCS0nKO1JDFzMO/429MGRfnv/f9JMXMRO7aJObUi76oTw/PHP2XjMAL+gKaKI+dSZs8HLC3oS3FzAjPSpS1Ve/lLOzIdEhsRPF3nKlPkTt+gJMo09vApo/jsYj+Dw7hKL5/OjI8hU2e4fojH2ha95HsEzJ/d5YrTaVQEG1VVIqPaGuH+UibLPh/MBDrVEHFJMxxm8sI/iAhHdmh3yEV8LfwTswlJM76xqA4C2FjP94JcrQwM9ZUTFveH/NtcsUcmh6FuV3VTy5hEDLqFwfYN/1gai075kRp8JXVpbuKQLLE5FyESVsy7TDYvdeDeWna8xcEOkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=surrey.ac.uk; dmarc=pass action=none header.from=surrey.ac.uk;
 dkim=pass header.d=surrey.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=surrey.ac.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2lkXW9YZSq5ocX9KKBF7tERzYrTlhYHxVLB9abk9UTw=;
 b=O+LJluEk/Qi/36XJFG7GAGnKQUtxUD3BqMZlBtFp2pGnvbUrtoDR+QCADXgaflJ2XfD159Y2NRjr73Q8SJCc7A4/GOsElP8suDk2nnmXmtvDvXWW94cAoS0+WAlHBieUkP8vFbpODcuAOvdxIKJ5ev6ILZntdVs39q0ZkVENkK4OFd29adDH3qzmEQp/HOhgCoUGeQKAjpKBhPDVXK0sjKcR5wbw4SQSYqWDylPx/xIvB8Ba1Hnkjvt1oIdiZfSkeocEQ3re354hb+18PDsHYP/QMmOteEb6tluiNrSsTZfX7VrG8XjDpiAqGLhnUdEL1t2LqDLAU9Ttu7zgg8dpvg==
Received: from AM9PR06MB7826.eurprd06.prod.outlook.com (2603:10a6:20b:3ac::23)
 by DB9PR06MB7898.eurprd06.prod.outlook.com (2603:10a6:10:26a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 12:28:30 +0000
Received: from AM9PR06MB7826.eurprd06.prod.outlook.com
 ([fe80::a074:ab89:d778:b980]) by AM9PR06MB7826.eurprd06.prod.outlook.com
 ([fe80::a074:ab89:d778:b980%4]) with mapi id 15.20.8699.024; Wed, 7 May 2025
 12:28:29 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Subdevice Selection from RFNoC Rx Radio Block
Thread-Index: AQHbv0gp4wQZbNoeuEKF0USdNLeVZA==
Date: Wed, 7 May 2025 12:28:29 +0000
Message-ID: 
 <AM9PR06MB78260D6DCD90A3FDB377BF5AAB88A@AM9PR06MB7826.eurprd06.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=surrey.ac.uk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR06MB7826:EE_|DB9PR06MB7898:EE_
x-ms-office365-filtering-correlation-id: 614c72f5-d9b6-4017-5118-08dd8d62ac97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?DQ6UjWih4kRdAEa8/jDUj/Kdmkej+/hbWWMoRiph7YIxbEd1JeJVVjT84U?=
 =?iso-8859-1?Q?JFOsTb3zqTnGkSMVoSPupKDhDszHxO4RYo5kfMiMOl4Fa437FyphRjZGL+?=
 =?iso-8859-1?Q?/SLVYRCgMzgHE7t/U86oFmmqRuw51wWG7iWUJfK3GSFgKLeXRym0u1bxWw?=
 =?iso-8859-1?Q?tJH3lSVFp9phS7Ulml+gXvQz7NQnYd6p8Jbato0sKtTl0hGBLWO4hSk88I?=
 =?iso-8859-1?Q?W3oIYEhwglkX4Gb3lbSQf73GXWIkmJU8zs/bNM/jEIj/fU52UlBKj0k2go?=
 =?iso-8859-1?Q?1bPX5wRR24rpXwOnx33BD5+G7XRmgiLVzP7O6MdixSF48s2CZU5Llqktta?=
 =?iso-8859-1?Q?pTGeN2xUIoVIeTQUBDYHY+w2bgNk9PWgkv38CbNNAjimyyXTND/XPHZeV4?=
 =?iso-8859-1?Q?asKacGrBp1UofNdNxokK463SsOLkIkuxalhdApepKFGxztEFEKYtW4KipV?=
 =?iso-8859-1?Q?+fpkl1qcsJd2Hj9ym97GmVHlAKXwFUVYy+iariYRKThdcVjcIgYPOS7Af5?=
 =?iso-8859-1?Q?cdRPQ2sm5i/20sJgAHg9Z1cMtcvxasUJU6qj0erEXIsoE2teANpQc/bLjI?=
 =?iso-8859-1?Q?oQPYwh+ait/LElCoMFe4GM0fmMmJb2dAI8owpoimtCNmtpoGd9vxQeFyI8?=
 =?iso-8859-1?Q?lIRxO1DoHeWwr85cEmZgi+b7FxjKWZ9iqp/T9KhgmzkecyVHR9zv2AJmBp?=
 =?iso-8859-1?Q?samY4WPgWrL+c8oz+HiCO0pWJ4GuKWxgePdETJazBUJ/2Jg2HvpcCmCFbW?=
 =?iso-8859-1?Q?pXgs2lG6P0On6FLSyBc6k0Bs4QYCRx5ZmYbLDCDPFH37o/QQ/PdRCOmMFe?=
 =?iso-8859-1?Q?EXhVEAQzZan9ut2IQSmIGWNWV6hEt+FdxjHWOPnUfjyYkwTaR2LianSvmd?=
 =?iso-8859-1?Q?cyt12MLU+7ZZ9wi/xHwail7OqgCfj1m99DINgwmaJ6oQjCppcmQ5BSxTgR?=
 =?iso-8859-1?Q?TIYtEhtAwAPFzbuqGSGOk0Y7pzp0+bnKpDBPwPfMJkZkmyks0xtIqkijda?=
 =?iso-8859-1?Q?i9px9OLyLtH4Dh+g4KJ8QrT1xnY7uK2AA1kfzJI3C5NPyFUFeEx8JtcS72?=
 =?iso-8859-1?Q?q2zcvAmzE8r6bsFCqk0CLienAE53MMTQF1X4rflYnr9JBdAAdnj8NenBPK?=
 =?iso-8859-1?Q?mf9wmOb6fwliuwyuUBX0pLhevfUbLGhMyeanf2+hwt+FO0cPulgnx4IcE9?=
 =?iso-8859-1?Q?k3w/+gRWFNKpKxcMjpOqH4Q/yavFQJWR84w+oKScusKNpyOxiwA1KiMO0x?=
 =?iso-8859-1?Q?6eBzjF9PtL5zEqxseoqldD5kk7Us51PctGtubmlN+5hvuIl7Opk80Y31zL?=
 =?iso-8859-1?Q?J7+ngQehWtQjKzVgdBwtzgbq6tefglj3Ho+uDHmhvqO9Lf0nNyAWQR9sQ+?=
 =?iso-8859-1?Q?kfThnHpBQJb/6x1Jl1VpHf/mFko3zvkr46auN09T5gW3KIa+p8wfjfyTb5?=
 =?iso-8859-1?Q?chu9lvpX8Tv57mH+YuTtj4sOtNd4jheag/lmJxmNznyXzOM2wN+0OY/Md7?=
 =?iso-8859-1?Q?rEFuRLH05/A0XUHV0UoYA7IMuFBqOjQ5XBqHefk1AYxw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR06MB7826.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?DcXbz4KZaxDMNRrjh5cGRYq/9T9ViWqReD7k+0wOUxROMZXkkeGBCB1zW3?=
 =?iso-8859-1?Q?TV8lCcMVJhkGSknE0MqOuUr+ASmXpc5LD/F+5oAlbXGfulH983BXjTBhS6?=
 =?iso-8859-1?Q?DCdsF/ZZ14YPU0qImn5f7i8Y9yLtrSHe3FmsLBe/D06Arkx895Vy+qvJPf?=
 =?iso-8859-1?Q?ZcpeGEsSxkR/zgC2mZtmwPYAZKTPOauJu6yL1iTT/QIi1phsS1dCrDLqFB?=
 =?iso-8859-1?Q?S4hHVHQZFcilysFO9IXSfgmJdLnUckq9+63wYP8mA0gPvkZBaLloRD5NMF?=
 =?iso-8859-1?Q?3USuhE7b/4sune88Bod5SJ+CZ/2Xi1Mr+kYtBApElKowQMjXXM4/fOsUAQ?=
 =?iso-8859-1?Q?TxQnuZ3YE3Y2k7ETj+3+B+ktXssbQhMPIOeef0NCWoDBuw8wRtQLa4+gju?=
 =?iso-8859-1?Q?Y4LmfpuygAbbU5RIf1gFMIJ7IPZ86uMEd+YjPAbck2XKkc6xSCYbInmD97?=
 =?iso-8859-1?Q?RgTAEgnlqZTmPLg1S6xKP7NmfTqQ9XjpUf6iVpI2kr35JETMFzmi+nYF8X?=
 =?iso-8859-1?Q?+T//SZh5YHAQ33Q+oTDUNTHPPNWTK00dhBZrEzBOOWDWN0R7RlTKYOmaDL?=
 =?iso-8859-1?Q?SMzuA+ZaGxQLtMcjHqzuxmcWEMB7btPHj8H9xssa8LiZb/aj7oZOKpRCGy?=
 =?iso-8859-1?Q?t1SbreF2+N0BmLvctiUmsTV/EIgge8kLY3dvBfZ9JrYcyMED55WmKQxL6z?=
 =?iso-8859-1?Q?315mYq3vXiAIz9GSSdpa5ba+Rla8TEeNwSS+31/s4ayHBwo7lRlgti0niD?=
 =?iso-8859-1?Q?SxHYt6XbYaPECYd4ZVi5xnonPUbtifr2vFlp8HI5No1UH+04QWCJiZBYxw?=
 =?iso-8859-1?Q?ZptMa1ppjQamx/mHfqfKsau+rcb3KZ33zW7Q00JQpb/NIWZgxZJbcgzy+x?=
 =?iso-8859-1?Q?8So2IyainYQR6l3+0qcULuDANqaSuZeABBInLTfesitcmoDIGBFIYJYXO6?=
 =?iso-8859-1?Q?WBwLxdTGkN6GmjIbo4Xr6IE1XnW8+J20TRlbL6MGDx6bZ+gYJS+SfRhE6z?=
 =?iso-8859-1?Q?3fWeZ3QAj0UVPoent2tkJtIUEn5H5LoobDN0XDay4zpylf78k1haY8DVvj?=
 =?iso-8859-1?Q?DSHz9tneWCzkpluep+O8s83Sfu3GK06xxicPhAj+Y5GurUbBLhCZZy8HTe?=
 =?iso-8859-1?Q?0NDP/olZ1TPnu5TRsSfXKEUKVWXW272yV+vSw9WpyuWNBX9i7dlCUfuu4l?=
 =?iso-8859-1?Q?Iq7al1rgEuR72+Pa7D95BMDBoI7jMO9MK7Ur9fFMstk6A5j0iLzc9Wn67/?=
 =?iso-8859-1?Q?BihoGerkiPofWQy1tHHtvNkLYeCqooqP1eb81iifTVNYInwiP10F5xtMh/?=
 =?iso-8859-1?Q?ms57t2BDj8pTCkwv9lXO4kZNYRDkKO9DjTuk+pfN/rpsnn+m+5ZZw6eAjQ?=
 =?iso-8859-1?Q?kG8omu8LIEVh1FDMSsnx/NH31Sc818VIc1wcr8W0JnqvbRckIqZZwDLmML?=
 =?iso-8859-1?Q?j7iO79L7zDCmPbGfG9LAzA9nF1uuGOxVGDOwOVPnT9TI3kekColnS0S3iF?=
 =?iso-8859-1?Q?CYXSgRYllpHN4MPBUvKIUYP1O0pPl8uKuNL9KlWPfXbf1rFJoYMNoGthS5?=
 =?iso-8859-1?Q?ldbFN/alCLM6HayYsYhjBMmtF+TY9XN6E7VxkKGwpU40P4CETeycv4iV6B?=
 =?iso-8859-1?Q?Ct0AGOoU3aKSe90/isnS280ZaomEDcK2Sf?=
MIME-Version: 1.0
X-OriginatorOrg: surrey.ac.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR06MB7826.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 614c72f5-d9b6-4017-5118-08dd8d62ac97
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2025 12:28:29.8309
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b902693-1074-40aa-9e21-d89446a2ebb5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +f7ZHtDy0FFeeQcXYLS0FBySftUTxoBJn2gRm1F2spV1r1jbLMq1Oi84O1J4cGpEx4bZoMwpORau4g/fKdpmSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7898
Message-ID-Hash: OAWLQTVFATD4T3S2NNB42RYKVV2VCOAK
X-Message-ID-Hash: OAWLQTVFATD4T3S2NNB42RYKVV2VCOAK
X-MailFrom: sam.lane@surrey.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Subdevice Selection from RFNoC Rx Radio Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7LXGHDDRJ4KU4DKZLAJZ6TPLIUNNQQ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Sam Lane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Lane <sam.lane@surrey.ac.uk>
Content-Type: multipart/mixed; boundary="===============3733307613828759343=="

--===============3733307613828759343==
Content-Language: en-GB
Content-Type: multipart/related;
	boundary="_004_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_";
	type="multipart/alternative"

--_004_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_
Content-Type: multipart/alternative;
	boundary="_000_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_"

--_000_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

Continuing from my issue on Github:

Changing between frontends using the "USRP Source" block is straightforward=
 using the ChX Subdev Spec box in GNURadio. This only works however for a U=
SRP immediately exporting its samples to GNURadio.
Having created an RFNoC flowgraph with multiple custom blocks and the RFNoC=
 Rx Radio block I am unable to change which subdev the block connects to. I=
t always seems to default to A:0, whereas I need to connect to A:1.
How would i go about this? I've trawled documentation & source code, though=
 could do with some external input as i'm not making headway.
I've tried Martins suggestion of

"Subdev specs are basically obsolete with RFNoC. To choose A:1, you simply =
connect port 1 (instead of port 0) of your radio block. If you want to swit=
ch to B:0/1, then set 'instance select' to 1 instead of 0."

The USRP N300 I have access to has A:0 RF0 (RX2, TX/RX) and A:1 RF1 (RX2, T=
X/RX). I can access A:1 RF1 (RX2, TX/RX) using a GNURadio USRP Source. That=
s fine.

However I cant leave one of the ports open in RFNoC, GNURadio complains.

My image is set up with 1x Radio IP which seems to be able to connect to ei=
ther of the frontends when using the USRP source, but I cant seem to make i=
t choose the other frontend.

Changing my device or instance ID from anything other than 0 (or -1, for fi=
rst available i assume) crashes me with "Cannot find Radio/Device 1/0 {or 0=
/1}". Which makes sense given that im not trying to specify a particular RF=
NoC block, but rather which frontend this block should interact with. I sus=
pect I may need a block arg, just have no clue what it may be... Suggestion=
s please!!

[cid:70dce445-dbf1-46c0-bd63-f28021269bb1]

Thanks & Kind Regards,
Sam

--_000_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi all,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Continuing from my issue on Github:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; text-align: left; te=
xt-indent: 0px; margin-top: 0px; margin-bottom: 16px; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
Changing between frontends using the &quot;USRP Source&quot; block is strai=
ghtforward using the ChX Subdev Spec box in GNURadio. This only works howev=
er for a USRP immediately exporting its samples to GNURadio.</div>
<div class=3D"elementToProof" style=3D"direction: ltr; text-align: left; te=
xt-indent: 0px; margin-top: 0px; margin-bottom: 16px; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
Having created an RFNoC flowgraph with multiple custom blocks and the RFNoC=
 Rx Radio block I am unable to change which subdev the block connects to. I=
t always seems to default to A:0, whereas I need to connect to A:1.<br>
How would i go about this? I've trawled documentation &amp; source code, th=
ough could do with some external input as i'm not making headway.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I've tried Martins suggestion of&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&quot;Subdev specs are basically obsolete with RFNoC. To choose A:1, you si=
mply connect port 1 (instead of port 0) of your radio block. If you want to=
 switch to B:0/1, then set 'instance select' to 1 instead of 0.&quot;&nbsp;=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
The USRP N300 I&nbsp;have access to has A:0 RF0 (RX2, TX/RX) and A:1 RF1 (R=
X2, TX/RX). I can access A:1 RF1 (RX2, TX/RX) using a GNURadio USRP Source.=
 Thats fine.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
However I cant leave one of the ports open in RFNoC, GNURadio complains.</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
My image is set up with 1x Radio IP which seems to be able to connect to ei=
ther of the frontends when using the USRP source, but I cant seem to make i=
t choose the other frontend.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Changing my device or instance ID from anything other than 0 (or -1, for fi=
rst available i assume) crashes me with &quot;Cannot find Radio/Device 1/0 =
{or 0/1}&quot;. Which makes sense given that im not trying to specify a par=
ticular RFNoC block, but rather which frontend
 this block should interact with. I suspect I may need a block arg, just ha=
ve no clue what it may be... Suggestions please!!<br>
<br>
<img id=3D"image_0" width=3D"361" height=3D"256" size=3D"43189" contenttype=
=3D"image/png" style=3D"width: 361px; height: 256px; max-width: 782px;" dat=
a-outlook-trace=3D"F:1|T:1" src=3D"cid:70dce445-dbf1-46c0-bd63-f28021269bb1=
"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks &amp; Kind Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Sam&nbsp;</div>
</body>
</html>

--_000_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_--

--_004_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_
Content-Type: image/png; name="image.png"
Content-Description: image.png
Content-Disposition: inline; filename="image.png"; size=43189;
	creation-date="Wed, 07 May 2025 12:14:52 GMT";
	modification-date="Wed, 07 May 2025 12:14:52 GMT"
Content-ID: <70dce445-dbf1-46c0-bd63-f28021269bb1>
Content-Transfer-Encoding: base64

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
P01r335ERET0HBjA3KtokQUnH4VxARJeGr3AmUTpnevatWHOIIcwUJPuow3wXtpB9UlN3iE9td0h
u7S4dhJ8rtXh/dY6sihoC1E6XRbKE7Zl9YhX5acJTZ6+1Km9DupU269Lu+xor9Wwosn5LY5/UfCn
deNfJtsxW63aj4iIiJ4GA5i7lc82ZsDNcm7SxQ+B2JnsOnc1a8N0JaSdpv7Ezt6YC2Rrc2yfA9QM
Lo8WWTB1dLu8Y23hYzv9roD00rp1kXyuK/vdDX6vJd4x0ABAw6DcG28nCy6MsZ2tSyMgDyxQKd4H
0LBb1LG56nXQvP1atwuwK98Yp+vtSAmZ7afZ+c2D4CPrv+RatB8RERE9DwYw9yzr4MEYw5Y2ZumK
lXvT75bWhmnbHy8MGp+NB1COCX0/egGUD+d7iNl2wDgQO2Y50EnmGJkOYs1FkG832N8umU/hxAqG
G2T7nmH4PW08hmPP3n4DjF/XcA6Vl3xiGSso1SKdq1aC+ciErwZwg92ge98cVWaGk/hIe/ndZowr
XgeiRfu1bZdMWj7S9XZcF+44myhir7z68yvetN0TFPEG7eAkDE3bj4iIiJ7JHy8vL39W37wYYSMM
LChnf9Ykomcl7BCBBXbMiYiIiBrgExiiH3Xm0xciIiKiJ8MAhuhHRZjoen1aHhERERHtYQBDRERE
RER347pjYIiIiIiIiM7AJzBERERERHQ3GMAQEREREdHduG4AI2yEmw2ydReJiIiIiIhauW4AQ0RE
REREdAYGMEREREREdDcYwBARERER0d1gAENERERERHeDAQwREREREd0NBjBERERERHQ3GMAQERER
EdHdYABDRERERER3gwEMERERERHdDQYwRERERER0NxjAEBERERHR3WAAQ0REREREd4MBDBERERER
3Q0GMEREREREdDcYwBARERER0d344+Xl5c/qmxcjbISBBeXomETVDx+BhLdxYVTfJiIiImogftg+
ElF/rhvAEBERERERnYEpZEREREREdDcYwBARERER0d24bgAjbISbDTxZ/YCIiIiIiOi06wYwD0nC
22ywYVRGRERERHRxDGDOJOwxDCj4C04ZQkRERER0aQxgziLwPtAAtcZnUv2MiIiIiIj6xgDmHPID
lgbEyzkYvxARERERXR4DmM4E7LEBKB/MHiMiIiIiug4GMF3x6QsRERER0dUxgOlIDg0AMVZ8+kJE
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

--_004_AM9PR06MB78260D6DCD90A3FDB377BF5AAB88AAM9PR06MB7826eurp_--

--===============3733307613828759343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3733307613828759343==--
