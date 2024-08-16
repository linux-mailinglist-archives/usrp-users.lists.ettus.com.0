Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A209954E4D
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2024 17:57:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4D273854B0
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2024 11:57:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723823865; bh=U609nV5UwO5z58/9FEgEKFHmH0PDnm3gDTIgYO8bnC8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=wjbp83RCHw4OoUj42NkULdkPvplCzHk5wKG5V5ltwbBj0bumpQMU6KbfjkQaUu2Jc
	 OIzp71p+qiXFsMW3BHOYd2G5d62hbOakFqnNw2tlIrao3vSKqNoNgLItW+/g7jCdY6
	 K89IIC1TbbMK7RG/ovKweTesLJ3HBGQwFpeaZvWoMYuMz5z2Xeisk0/jwfC3289HPQ
	 FwY6T961mS8o4cLDT8qrBhlNIVjbSFxM8/5CZQlluYrrqDi/lfmr2mAuOXnAuv5QuG
	 p1pkCHi+LeJmSl+3WSoqR0xImyt2EbZMUHwlv//pW9Z1ILk1WH4iK6Vvy5jfBCnXMj
	 rbxhdV80XSrkw==
Received: from UHIL19PA52.eemsg.mail.mil (ueur19pa51.eemsg.mail.mil [214.24.27.198])
	by mm2.emwd.com (Postfix) with ESMTPS id 9117F384C48
	for <usrp-users@lists.ettus.com>; Fri, 16 Aug 2024 11:57:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=spaceforce.mil header.i=@spaceforce.mil header.b="b8EFmdiy";
	dkim-atps=neutral
X-CSE-ConnectionGUID: 5ScYNqRcRUmYO061GIkwaQ==
X-CSE-MsgGUID: aG1+gxrJQUikXsKG/0Kc/Q==
X-EEMSG-check-017: 82568902|UEUR19PA51_Out05.csd.disa.mil
Received: from unknown (HELO USG01-DM2-obe.outbound.protection.office365.us) ([140.17.146.13])
  by UHIL19PA52.eemsg.mail.mil with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2024 15:57:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5501; d=microsoft.com; cv=none;
 b=X/YpVMeiqS+SAQeOBbeiBEw558ABKxC3MgfaI4hWO4RZnkLKABhQnQlrBczZ4H/pzzYaW8Av08Eq1G1qle177HnZgvOidCYIOsZjLPJKaHd2dNWCeLHruQ5mHA7j9Xsh0aerKEiHymO8PWVbU3dX7d2FoKHyHMXBJN9Cmxh+qX/S1Q8xs2YiWHv5XZrbExuVliBghCoLznYezZ8/+HeKqFocdSoFOQ5apX7idWVwzb6C/85Aq+WhgpJZwkp7vGjQixmA9eGQmCMRMo3cfsxb4/otvIw38Ks9Q8fMnJ56QGZPO5hAzNsH09rb9SO4cK/03YY29+02xlNFp4yWPP3QDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5501;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFxzmPRvqn6It16iep1z83JZvM+pDV+Eqm9k0aJ0c9M=;
 b=XbG2F4WRG7Bg0kDlWhcw60cQsc0taJAzoW843LjvjwXFB0grdBCnLpjDEGkna8cyVgCMRDnAzPcL19EDag6/CuQy+0+l8Vo1PbxQEALFFiV1FcV4L8tKYIC7dEL/YoMl+4YxgN1HT7qqlqnORDetI4kg4cgPoMyJbfFr3vmC4VVR+byohK10FHPqRRu3bdfuYgEBRD+/F1e4BkgVsuSyARCCk/5sNIlrU5ngGM2sEuLHsrK7ifi4Fbx4ywMWnQgRbc5mrvLIdF60uAGxj9zIt5O7/TAt3zYllQcwX6aLdozvQmpKMfja0TEGdbzkd3yljV/ZHFJ0QeUziUbfY8fBtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spaceforce.mil; dmarc=pass action=none
 header.from=spaceforce.mil; dkim=pass header.d=spaceforce.mil; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spaceforce.mil;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFxzmPRvqn6It16iep1z83JZvM+pDV+Eqm9k0aJ0c9M=;
 b=b8EFmdiy2eBePjc2pnjfARoYqOqNybsLrkh+o9T3h66ZcvXA4nNlUnxk3a9J2/ASD2hO7AlJBpYND5wqZpfKUJGwl2j/ssQHhnupP8DMOBu8XrsSRtxeYkm/URzMTeyLenM89jj13MUwtnRhiv4v6DskGw6yp2Vi5XBg7AWHNb5BubvdJp0LYauARxi/T7t+3293e4D/LVlLtkSNJTAke89Xw+PYZ68ZgAo9fn3shCEvFCf1v/n5XRDx7QasN1cHhlNIULIvBF70OMdQBgH/Jd1I1SB2tuSuq9QClNNwVICexmXCTMN3ah/2T4QO6TAeHXG4W6GxHR1l4cfIeOC79g==
Received: from CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM (2001:489a:200:5c2::10)
 by CY1P111MB0629.NAMP111.PROD.OUTLOOK.COM (2001:489a:200:529::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Fri, 16 Aug
 2024 15:57:23 +0000
Received: from CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM
 ([fe80::a1e0:f163:a362:59b5]) by CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM
 ([fe80::a1e0:f163:a362:59b5%6]) with mapi id 15.20.7784.017; Fri, 16 Aug 2024
 15:57:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E810 and DPDK
Thread-Index: Adrv9EMd3u3rdbVQRYm3EJ9/1FnOtg==
Date: Fri, 16 Aug 2024 15:57:23 +0000
Message-ID: 
 <CY1P111MB1638A8A5D7CAB591306CACBFC481A@CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=spaceforce.mil;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY1P111MB1638:EE_|CY1P111MB0629:EE_
x-ms-office365-filtering-correlation-id: 7678f5b4-48bf-4096-dac1-08dcbe0c1e3a
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?w1qG9sSIg0j2WTK47dqc1IOibsknxxhRUdMPljN2mzDk09riiTY25h52qtcu?=
 =?us-ascii?Q?Gcst+FIHsnF5+yWDDvMGyY21g8wb8A3E/60XeCkfyIJ7JdB30/0iaFxhIibG?=
 =?us-ascii?Q?3nAg6o8VzzZmDFOYNXsxgciiGywoV+d9UH2XvD/l/4O59an8ZQQk9dYurnCg?=
 =?us-ascii?Q?v1vWwIdCZkDs9/SVwOtaym4IFU7Chs13pI57Ins6cx6giLSh3G6Wxj2v0MZM?=
 =?us-ascii?Q?Ir2L3X3gLZE8U367viwXYjM/VB+0zJTxtvVqr0N5TMYuIJDzhx7LM4MQI5HW?=
 =?us-ascii?Q?NAAj/ZmY8XV/WzemBQp2iCZE6+she3JP1vMxoCZwEtG/Cqd/28gPSamKMpAH?=
 =?us-ascii?Q?n6CHm+sXiLBBADtgT8NhK8QE8XbCXLANuYEBGMboG4MGLXOXvY7bN97uxfJK?=
 =?us-ascii?Q?qaaJxfPQmgOxxIUZnmaup+UObexRfr75BzcB3aKJR6RRdxKfWpmLJ8DmOzJz?=
 =?us-ascii?Q?RXsS0aJe8M6n1BUdxnDAFT3VnUQJC6ffXsGT53YWORp2d3UrXTIgT9Vowatd?=
 =?us-ascii?Q?Afco2l0Mvp4h8w0HTMo6J75fmDUMqztU+UqduLl2x5W3CTY8TkbAj/ECgG0S?=
 =?us-ascii?Q?r6ie7YJt1lihKPWa6tidJl9hUnB0xj7zTTEO9gNw8X9CogRiyZWuJFmsW+Uu?=
 =?us-ascii?Q?VbsqkxvITPeSZ2DVkwZuZaGLhibFls1GHPxnSnczMMRLf4EODSim0igARkJ1?=
 =?us-ascii?Q?Xg7ppE8uckVzH8PvYPtMWHoj4KNvxkBf6LJqcAj6RK4oDRP5xB+VB3yKei+8?=
 =?us-ascii?Q?CEzcwG+fqTVj5tHGurH5GocVg2SmJudxelFsWzMIimKG7pa1U6Bane9xwebz?=
 =?us-ascii?Q?jMHmWEhsOhh0hE37FeVz4396tduaMLAPOOtLFkwEDMna2VTySbCMTLvxw5lK?=
 =?us-ascii?Q?w0kpH2PZzX638fOx0OMpX64hl7T+nA3AgvvsdqacQMAz36CAcDSodPUaBJZa?=
 =?us-ascii?Q?x/KzyIyao8grO2lZNmkOMsKKI5ciV5RiXX2c50YyxEOXysr5zXynyGQZy72Y?=
 =?us-ascii?Q?dwqG61dwr5Bv/HX3X8Oq1AEFo8FS2AePdL4QgTQDI6++E6V7TI/7QlTuf5MQ?=
 =?us-ascii?Q?xG7Rn6xkWrJTjK+X+frxaKtLl4Y9HybdfVVVXATVqNAQvSXyTCK/SdSeIDrx?=
 =?us-ascii?Q?OXmO/0FJNIWa8veau84v/LR89rHd7H6RbyP34wNMJ7lSUw1EvPQy12ivaqyn?=
 =?us-ascii?Q?aVbawSwfvnYr5amyLJFN1iTRg1sjRa9HHKn3MpN/dzjQOqGpfh+1yqo610pS?=
 =?us-ascii?Q?ZdCpvJ38H3ezn62h5ECyHvokdB4IwliwywflxekzlpSP8+DbP9bs5NoWiZb6?=
 =?us-ascii?Q?YAn7lrK945gZwZduYcKq3Q1OF4/01PfCqIDTY7aFV7sFRX6Kfjd28AShiWN/?=
 =?us-ascii?Q?16oilM8HIR48XP88G7CHsv96ZkbvYKOBApbhphT9PUzDoQ8YMA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/oxt2wLb5jptB8I10y/JY7Ih0B0dGvw0FeT2ofnDGfb4X0Gpu6NUz/VEagIW?=
 =?us-ascii?Q?rnqS/b0kdx6PsdrSKFlFFnoCED3ah98UElSUJVI23sR+gfn04yv/HkNbCURY?=
 =?us-ascii?Q?ySdcUlmHbJ7vuofWrlVaMw1iRizYDHrwEHxqjYeGKa8U+5IFfxzNtCkUn/j6?=
 =?us-ascii?Q?RnI02uJtM0jeEbrTk1wFMjiZF5YfG2DKgFihIzxEltaYxHGb9WzLSc73i9Vb?=
 =?us-ascii?Q?jmH1Ma/TL26AEM37B4x58QpXIeVM0H6yFLH8VvRYREcKr9y4Efq5+pTdDQJb?=
 =?us-ascii?Q?K5SFuYGZXU+/5qQ+d2ItdBRwOmgEuQvyNBSeOZmGKtMm7H4cQfoTiRqb8LK4?=
 =?us-ascii?Q?hWki6gtRolGkjqkvng9wnYJElLG/ARgX564Ivx8EfVOMYU68S58Z4HN02w/3?=
 =?us-ascii?Q?J0XGMCWtiAwgWjGcPDspzkSihyrGokhzJDkdXXpYu1c7YGbiS6CSAZA2vfAy?=
 =?us-ascii?Q?pbSH5/fh5R0eftsM1IH8RKrurf5pIe6iHLNi8P1zfv2PRS8RgtjqlxLc0V3D?=
 =?us-ascii?Q?zaKEWXvG6Zwmy9+7Cgm3yjce2Nq5GlsQYOvSLJzGVqxeOq7t0GwSTKNDEJBe?=
 =?us-ascii?Q?0dhGSAw+vvQSz5B0cBbPXwQj2rUPqw0+P/iuwGMZxvrepMZKBxDHRnP6HhRs?=
 =?us-ascii?Q?Fqfd2jfNlJNvIeGqA9g2r6wrtfH6X8qVJZZFu2RbDKpe87eQkI2dZrGGm3LD?=
 =?us-ascii?Q?HgTcPCLCg+XxAFxgSsTGEnbh1EYxKz0myIznkzXnU+VPSJkP3I/fNS0QSDBR?=
 =?us-ascii?Q?jal8nhKhRdqpJ6W558z6eI8qUW3y+l6zG6mf+81L+wLnrrVd+sQIugrL+gEc?=
 =?us-ascii?Q?z1FYFjYsGkhZPU+RIyXSwY4QVWiWqPHu3HOoFQosD4ZjKdwgk2DeA9ZkTn9U?=
 =?us-ascii?Q?aYXrO11C2B/3q9uJkwTy7KFukBLrnQrFZkl3CMxvIxBk3WeZ/+B9cqQ9Uin2?=
 =?us-ascii?Q?eZjVAwVUVDcwXhVd4CfPh0c+LtIw4TT5cKopUIQMGcSgvgGmkiLoQKnzvxbc?=
 =?us-ascii?Q?6O9ypc4nSVzoFdfPVixnCM5XSbKpwAOUvVHSBQqTeg5O63n5h0L0I3IdCa/T?=
 =?us-ascii?Q?SwXonyTQdfIfne+pWzWBo1XdeOTvAYxTNKgVZw5W5E2HHxsprybSCFlj3DIq?=
 =?us-ascii?Q?xHafqbAap08kK9p6cpuHSgN3ZHnpEbwliN1ULyoiRGkL8wvZPDGfWX5E0TBz?=
 =?us-ascii?Q?ZvZe5jdotP2zt+AQeHJqq2Xd6ykfh2HqMWz9mKdpMEtfUUrIHXr0CcRGRwMd?=
 =?us-ascii?Q?yhJcUim8DNdGG/aOQ92+d3aTtT1sHl8NNQmsMkgY7aV6YXe4xt/xwa140q7k?=
 =?us-ascii?Q?gZUFFNxy3c/LiCa0AC6W+doFkr0WsKmaDT15b2u/2hUV9PEHxBti72Xt8M/J?=
 =?us-ascii?Q?OGumlzjnksL+3YpjZuTDrW/WgxbDMbQ0L+sWtmILzjXKSCGAYYg3NG6ALttV?=
 =?us-ascii?Q?8MRRCY6Zn+m0NSfPJ7+SMOvED6sbB5G9BenIzfVIVRiX3VFqjhuhtmjxVvzK?=
 =?us-ascii?Q?PKsbNdee2I8v/pmGBSQu7l2EpPpkoPUaqsSPKsxHA+9IlP3mO394sPlUcA?=
 =?us-ascii?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: spaceforce.mil
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7678f5b4-48bf-4096-dac1-08dcbe0c1e3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2024 15:57:23.5428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8331b18d-2d87-48ef-a35f-ac8818ebf9b4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P111MB0629
Message-ID-Hash: AE5OF64ZYF266HHK3AC47QGSKDPAUJSK
X-Message-ID-Hash: AE5OF64ZYF266HHK3AC47QGSKDPAUJSK
X-MailFrom: mark.takatz.ctr@spaceforce.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E810 and DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/56UTZSZZPUDWXNGH5PO5IJC5RPACYRVB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "TAKATZ, MARK J CTR USSF SSC SMC/SZR via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "TAKATZ, MARK J CTR USSF SSC SMC/SZR" <mark.takatz.ctr@spaceforce.mil>
Content-Type: multipart/mixed; boundary="===============7921070166808431372=="

--===============7921070166808431372==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P111MB1638A8A5D7CAB591306CACBFC481ACY1P111MB1638NAMP_"

--_000_CY1P111MB1638A8A5D7CAB591306CACBFC481ACY1P111MB1638NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Has anyone gotten DPDK to work with the X410 and an E810 NIC?

My current setup: Ubuntu 2204, Ettux X410 (UC_200 FPGA), E810CDAQ2, default=
 ice driver. Using dpdk-devbind.py to bind the NIC to the vfio-pci driver (=
which Ettus says is required for the 520/710 NICs) completely removes the p=
ort from the list under ifconfig/ip addr. DPDK documentation indicates that=
 I should be able to use the ice driver itself, but the 810 does not show u=
p as an available option when running any application and documentation for=
 making it available is... sparse. Oddly, when I had the Mellanox driver lo=
aded, it found the on-board NIC that I'm not using (it's only 25 GB), then =
failed.

Thanks,

Mark

--_000_CY1P111MB1638A8A5D7CAB591306CACBFC481ACY1P111MB1638NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Has anyone gotten DPDK to work with the X410 and an =
E810 NIC?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My current setup: Ubuntu 2204, Ettux X410 (UC_200 FP=
GA), E810CDAQ2, default ice driver. Using dpdk-devbind.py to bind the NIC t=
o the vfio-pci driver (which Ettus says is required for the 520/710 NICs) c=
ompletely removes the port from the
 list under ifconfig/ip addr. DPDK documentation indicates that I should be=
 able to use the ice driver itself, but the 810 does not show up as an avai=
lable option when running any application and documentation for making it a=
vailable is&#8230; sparse. Oddly, when
 I had the Mellanox driver loaded, it found the on-board NIC that I&#8217;m=
 not using (it&#8217;s only 25 GB), then failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY1P111MB1638A8A5D7CAB591306CACBFC481ACY1P111MB1638NAMP_--

--===============7921070166808431372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7921070166808431372==--
