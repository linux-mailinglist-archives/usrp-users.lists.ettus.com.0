Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D3A2AF67
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 18:53:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 096DF385B6F
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 12:53:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738864418; bh=YkvMLhzAgp7P5FzdQdz4dtlhiHqG6K56miCQNYan3jc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=kRrWvyjKmi4s0JvUPDvYx+x5zCDHKCUZzcp/UMKvBCbPjSqtaSxoMBAQXosqXOA/w
	 FlsB/0lzQv8nVp8Rff00tPG7aiZaX3YTEWBeChtehN6JdsVcay7Ze4gVWEYuTNUKMF
	 rEEU/eoPPrjkImIJ+5cyegP4XWWBhUTw2qJtIefDxHa3xMZn7nXfkEA4Xd2fqZLGPR
	 isO9AS51huLxcCi8DZiU8es8oBz3c3KWsTrmcLJ+RcPr4/jDnN+kFuqOYCz8iEj+9U
	 KYxq6RMMfIyWu4al8nzc/EiL7KrXHEetBvXrAMjsptBjNdLQqpWXgeiRE4i3diwOV5
	 D7TX4Pa9DJUgA==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2128.outbound.protection.outlook.com [40.107.223.128])
	by mm2.emwd.com (Postfix) with ESMTPS id E8FD1384FFF
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 12:52:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=embeddedlab.onmicrosoft.com header.i=@embeddedlab.onmicrosoft.com header.b="DD/3Shtm";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MfIpAqXGHrQ3rg5YCq2d6gXKH9ZT71AB9HUGhlkYTGvz9nbI6W6jES0rD0zHE8qZF8U6ui0rMKjoNk3mBY/F//gBitKcqABFCj1XGev6pTb4kpnpDF4TFliUYF/7iN/QOUXLhDUKdlTwKisG5UtFVKWrEGXlCbOuDwToGY276mmPFBT+GnWUUMjFzSAov98ZabqwvTnTu59H0tzBL22GVMQ7KnS35I7rWAgY7NpJwMi0wJUzD94yzXUVLbrtzgyd08KLYyYuL3gSNxEXgqyUAZoHT9eh8aEm9P+B83jgB+Ux+2QSEbYXSNNemB6umyR0jq7MPL/wjWaZ48cZDmoWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEg0ccuy2/CUsdoU5RKMRxxKCVy3tB8jro9bzSfL+Wk=;
 b=DRnN0eA82tJcRHCCEplST0tjeAoPePi4F9Ls6onY/PGSra3FUuTgDHPhTnDgBkvoAn7Vn9xJ9E0ucA6aYh8RwbLmt3Z8sSM3n0ODhpN5E09pDfmyeoZTGEJdfXkbqmjPU82ZexmzzB/hEZklvVKeBudyAiMcsTJqmJAHmL3e++dL25SNcCg493+RqePH1IOgUv17PE+UCxtq+8MxIZxKKIu9ayvHJbPMhAHcETcKBrk3nVStH3LmodzzYpFLzWQaFA1VFeiMabSFIhQ/fa0ZQS9LrlUXlaH9By384t/Lw78RG1vzqg5o6t4YJfxC5/rIuN+Op5BgnWeVSA4OvDRKyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=embedded.ufcg.edu.br; dmarc=pass action=none
 header.from=embedded.ufcg.edu.br; dkim=pass header.d=embedded.ufcg.edu.br;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=embeddedlab.onmicrosoft.com; s=selector1-embeddedlab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dEg0ccuy2/CUsdoU5RKMRxxKCVy3tB8jro9bzSfL+Wk=;
 b=DD/3ShtmH+swCcqW74pO4cLCib5M8RouWzGxWeCFnpdktbzrpNzOsuBuyab0RDTK4ZFMgjots3pdefayNvXoPv4aCM1wm5aCFg1YJh6Jd3I259lzo5yw5ISHTucqedDpG7f5kpOZV5Ejws502tmRR8v/n90bZi2qAOZvJTS38Yp9IsoDO/xVTHUwV4xpoId8mMVGW1Lf12dBH5r9/4y42BghNN8pQsB9QBjVf6eq5Gl1Y7BAP3dcwMrzDNzKZLaTO8rgb1y71BwDwdxOXVgB6vbfU5HKJeOg4QkuCzhfQrx9NT5eEUKPWcvIfB+2GQK2XwAVtDExjLP7R3ZpkSH+3Q==
Received: from CPWPR80MB7022.lamprd80.prod.outlook.com (2603:10d6:103:1dd::14)
 by RO2PR80MB6277.lamprd80.prod.outlook.com (2603:10d6:10:68::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.13; Thu, 6 Feb
 2025 17:52:54 +0000
Received: from CPWPR80MB7022.lamprd80.prod.outlook.com
 ([fe80::3a8c:2a9b:b465:c53b]) by CPWPR80MB7022.lamprd80.prod.outlook.com
 ([fe80::3a8c:2a9b:b465:c53b%4]) with mapi id 15.20.8422.011; Thu, 6 Feb 2025
 17:52:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error when running Benchmark on USRP X440: RfnocError -
 OpTimeout
Thread-Index: AQHbeL+oL5CZv77+JEaXiwh719IFvA==
Date: Thu, 6 Feb 2025 17:52:54 +0000
Message-ID: 
 <CPWPR80MB7022DBE39F16D7D4E29B68F590F62@CPWPR80MB7022.lamprd80.prod.outlook.com>
Accept-Language: pt-BR, en-US
Content-Language: pt-BR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=embedded.ufcg.edu.br;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CPWPR80MB7022:EE_|RO2PR80MB6277:EE_
x-ms-office365-filtering-correlation-id: ea19f03e-a8cf-4f81-4c08-08dd46d7154e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|31052699003|366016|41320700013|1800799024|39142699003|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?mR1Qrh2jHsl56EvIgPQ/rpzXEKb2zaBGlArlQsyJQJy0fru0F7/SOjEs7L?=
 =?iso-8859-1?Q?x3/s/Cr2mf4ld1ITT42GR/myjYzw2e2GcH5LzRyrTvJBp5tgzKsy5ghzLB?=
 =?iso-8859-1?Q?D8nBCYKcc7hQv68QEWTkuq2YvZyP3KvhYa94TGSBkj8mQb18IkqsNN4y3x?=
 =?iso-8859-1?Q?b2ELrS4tyb4ar5dUER72nHwOfolleexNBOU7kZPqQf1sp48xOC/snhzuii?=
 =?iso-8859-1?Q?pPzCd9N8SbSM4KW1dLXansLm6OYe4uRxdl3SCJ2Dn9Gk36rousclO7hh99?=
 =?iso-8859-1?Q?tWw7b20cOK9xLFo4NyYgLe/yX6wsRgOVYkJrxiXUuoyFntf/seqn5imVx8?=
 =?iso-8859-1?Q?GKCO3Rp0gJr/BF5TJ/n2THKMhqS5ND8Man9idelGx+FIt3OR7QO2NTUJaQ?=
 =?iso-8859-1?Q?DwjkTPBJXhPdA9k0aIdWZ+PS/Stet5rJZFfgdp6D4Gtcz7mo32AD3mzlxq?=
 =?iso-8859-1?Q?UZnhdeMESXKSamR61JWljQC7TjMBrZvyOhItofy8h+5dyjOmq2+R7sbe1K?=
 =?iso-8859-1?Q?8HpeLEaw8LjG3z4gKKUNnUfRZHL9tCuZP/qQaZkKKgsebjHJb7tvw9g0X4?=
 =?iso-8859-1?Q?OmU8uHwaJaarWiKcZWFkyoYcUCRDCfpRjR2kCeAhuzHDY2aeyJ1Qdx7YdD?=
 =?iso-8859-1?Q?UshJvkfFgpXt/RDhyHjP7X7NkqnpgvUjo13LzHVioNldSqTwnLLWks3v7O?=
 =?iso-8859-1?Q?OQvL+0L0+8Y2LLNzTrqBT7jBRC7o4TWbdda31Qnv9KfaBAzqps8M7VZ/MK?=
 =?iso-8859-1?Q?il2JrfSzPGMJyKkYdVuhSRwjs4YgegjDm1qAlfXRQ2Dk8dIwSLidZteG87?=
 =?iso-8859-1?Q?T2Ry1RmuJNAcy/CaSzMHCgH3B5JArZQ5ZnCqy2i4APJVma2anR3v/omgvC?=
 =?iso-8859-1?Q?Kc9obM5tClbtqcNxiWtE4AKIgwQ/D1NH87JrBLimQrjHe3ncCLPtJt0wSv?=
 =?iso-8859-1?Q?CcAERbu40ZpDjGCNFi4HcZqStijlWpAkovMd5/+DRacnsGbOzqCk5pQ7Pr?=
 =?iso-8859-1?Q?DjTKJu2awgjCm370SKc11+UXL5WHuGVF68kIrNdzUnKvltBWTgRoEyhRqo?=
 =?iso-8859-1?Q?hH2kpOE3/H9886ZNrQyLlk3f/I1AlBHdHTQPBRsdcr/2vTazT0mIZSMSoA?=
 =?iso-8859-1?Q?iY4Ua/RQQqB0Tjny1R0PCjv2R+unn05BN2NXqIFvDNIGRNn1mRYxMywsSS?=
 =?iso-8859-1?Q?lq0dmC/Y+kR9RXfjemeGd48qsivnkPaMoqep4EtyRm0PVWDpjZzIFH+nAl?=
 =?iso-8859-1?Q?/bE17hqHjmFDj/uOz21hTsMGSCuMcjbqkPgBb0Cr32mCUC7g7G6DggwPjs?=
 =?iso-8859-1?Q?e/wGVcmYNTGClJYRozDW2ITZwnFa5TlzzTKv2l0S+S+KJibJT6hzyLLNmF?=
 =?iso-8859-1?Q?ifGJKYK0NW9SKTzZzQuwhpdJQWwfVYHn5hfqishbQmcL4OzfeY8gnA0H4w?=
 =?iso-8859-1?Q?0i6Kg5WRQ4YdKmB2wKFknDM4qEYIy84vr+pgvdVl/BR3ogOou6856BnTLh?=
 =?iso-8859-1?Q?hhVSM7vE2QMS3Nee/eTgnb?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CPWPR80MB7022.lamprd80.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(31052699003)(366016)(41320700013)(1800799024)(39142699003)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?HWUdHA6r6raI/Yapo+iA7zVA1DgRFiJnqO58etIDExvuqFuP8SGfLtKMHh?=
 =?iso-8859-1?Q?9vpNrn0HhDdzZQgnNLJloUD95Vn84u7pgTld5qa7Y/V4L4joIGii5ktX8T?=
 =?iso-8859-1?Q?nGxg2xMTyok7HR+5GVT5Y+YVX6LUUKMJARLBNT/jC0Uae1TfL72g+yq9Wh?=
 =?iso-8859-1?Q?34eVbdPXZlSmr6xfI9iylyufep9nsVyGST8K6r3FaMM9a1iPqxPNclt0kd?=
 =?iso-8859-1?Q?5TE3Ib2iWTin8fyi+KwlQliJKwU2qgPMtho3Kco2NBFQxdlId43rBoS18Y?=
 =?iso-8859-1?Q?bQKLQkgHw3NcjvMnGlSV3dLNv80/qk9AGN7a6bgXn7wNTXocAHbNyDTLZA?=
 =?iso-8859-1?Q?czLE1g72HpZwfZR16a7xy1PJi9nzJJ//LAqnsUWqGKj2bqMSrNOVHPTE9c?=
 =?iso-8859-1?Q?ewg8NW81sV502YdjvT8Y4y5oWDfb+bI5Bb2xLahTEAyd6TaeHMAqJDfUeP?=
 =?iso-8859-1?Q?MFvXeM0HnADSzay7LSB1lEV6YUyyA3li8rmBDW56R8l4r09kBDIHCCqNpI?=
 =?iso-8859-1?Q?SwRTg3UDUMuxC/7hPQKUjaNm5K0F/eq7w8CzuI/E+NIDpFgz1iO68FIdcb?=
 =?iso-8859-1?Q?Zbe3CMU/yJvlF2ipjFA3/yi5AISi9ag5/k5e3P+QOrF7Fv4UvlRPJqJ6pW?=
 =?iso-8859-1?Q?nzjUmaX69O6UPoFmnOjPkj3jJZRDeJCjZgP7fvx5f2NX9JXFIUuYXSVXVZ?=
 =?iso-8859-1?Q?WgOw/XryeksUofGscxmdE3hGTwdDDnsy6Fk0iZ2k0UKQQxH3GWLyJUPnwD?=
 =?iso-8859-1?Q?DJYBsgi1U6/9yiVnCV2axqQxQarW9uKME2flcF+87qEzpgc7gEqEeJUswt?=
 =?iso-8859-1?Q?4Q6k2ixCany1L0YWc1zVdWCLjP3Fk14cXj/zuTiKIipBvq2cBc4T38WxpM?=
 =?iso-8859-1?Q?+rdx5b/WDZpRz+Y9654uS4KF09ov/AVlzB5UlHHebenHGmv0CDYSQBEoRW?=
 =?iso-8859-1?Q?Nx3alV2pVwAv0Z8QqviRPSS+zLVjK0m4Nt9veGnHnhMH9fxkRAfEWd3l8N?=
 =?iso-8859-1?Q?HBsYiQ5npPDAJHPIHDOGXBGxN3V28m7LF7EFm6KQvp4d29nuGeGRpbbJX+?=
 =?iso-8859-1?Q?MfdbmVEQ9dUPndFmKOuB+dSd6Gc8OeXNVSZZyMe7ofi58YuhK2t09YxpMx?=
 =?iso-8859-1?Q?XlZYP/bMkoezrjcuwnBOPjz/blMqxsbaPaG6w/oRQvLpEL44xwz4pASaca?=
 =?iso-8859-1?Q?sL1+5LU7BPtpceVJLTjwSszD6TzGogPWuNPXFI8FUbZVpJcGRq9c+nhYb7?=
 =?iso-8859-1?Q?s+ulYbZ2LA0Ar1XgZjZ7l32TkMobUBrw/8Rmd33NOhkKB5SdhGrnbQ062V?=
 =?iso-8859-1?Q?BjUxmBe7weIeqtdFDhzOhpc81g8eMTqr3qTJjo5oV6KLQaMqskKV4WqC8d?=
 =?iso-8859-1?Q?peC2zCp6/N1MmUTBNHsIScbxaePmQHNIrAbUs+N0YGiYKEv1gUdt4Ugk94?=
 =?iso-8859-1?Q?FgQTVaaDiGtxUcPTrc9qlX3wNdQS5IyV7fvHY7vIT8Lip6LphiKuLExoLi?=
 =?iso-8859-1?Q?PjJPEgNsRbp9Fr+uzmBySzkiWo4a+sCPk+gEU2/FkKYXSqSxbviyOSLTPp?=
 =?iso-8859-1?Q?XVR39bYBEqTX+ZXDORPXnrAfOPG5AT5obKkIW8qVMHz49T4tqIOeMGuEvE?=
 =?iso-8859-1?Q?Oxt+MThf/ajm8di+gF5Xt+3ssVXDjHcLMlhhLpz0DtxWY2u9wD06iU7w?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: embedded.ufcg.edu.br
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CPWPR80MB7022.lamprd80.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea19f03e-a8cf-4f81-4c08-08dd46d7154e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2025 17:52:54.5611
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be197db6-2e7d-4fff-ad17-bc8384874bb5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XA6qm6MrDenGZHkuPCvGN6xaXhVdIWAs/B5lBZCuAkuuJ21Ra/RaYHNRYsw944u9rIYIk2tR9oQrmFmPgA41ZzyWESB3Qa5VaeoQyVaX5u1XZsfgwFTegX7RUXByw3Hz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: RO2PR80MB6277
Message-ID-Hash: AIYALI34AY4PFGSOYX25O7UXWUFX7DFW
X-Message-ID-Hash: AIYALI34AY4PFGSOYX25O7UXWUFX7DFW
X-MailFrom: rilbert.silva@embedded.ufcg.edu.br
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L266IYRU57DHAWCWGSUWOHRHXDO6ORO4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rilbert Lima da Silva via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rilbert Lima da Silva <rilbert.silva@embedded.ufcg.edu.br>
Content-Type: multipart/mixed; boundary="===============2869324209653112080=="

--===============2869324209653112080==
Content-Language: pt-BR
Content-Type: multipart/alternative;
	boundary="_000_CPWPR80MB7022DBE39F16D7D4E29B68F590F62CPWPR80MB7022lamp_"

--_000_CPWPR80MB7022DBE39F16D7D4E29B68F590F62CPWPR80MB7022lamp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are encountering an issue when trying to run the benchmark directly on t=
he USRP X440. During the test execution, we receive the following error:

RfnocError: OpTimeout: Control operation timed out waiting for ACK.

This error occurs during the benchmark process and prevents the operation f=
rom completing successfully.

We would appreciate it if anyone has encountered this issue or has any sugg=
estions on how to resolve it. Any guidance or recommendations to fix the is=
sue, such as adjusting response times or system configurations, would be gr=
eatly appreciated.

We look forward to your feedback and thank you in advance for your help.

root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate 368.=
64e6 --tx_rate 368.64e6
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5=
ed1872
[00:00:00.029550] Creating the usrp device with: ...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F=
,fpga=3DX4_400,claimed=3DFalse
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx440,clock_source=3Din=
ternal,time_source=3Dinternal,initializing=3DTrue'.
Using Device: Single USRP:
  Device: X400-Series Device
  Mboard 0: x440
  RX Channel: 0
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: 0
  RX Channel: 1
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: 1
  RX Channel: 2
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: 2
  RX Channel: 3
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: 3
  RX Channel: 4
    RX DSP: n/a
    RX Dboard: B
    RX Subdev: 0
  RX Channel: 5
    RX DSP: n/a
    RX Dboard: B
    RX Subdev: 1
  RX Channel: 6
    RX DSP: n/a
    RX Dboard: B
    RX Subdev: 2
  RX Channel: 7
    RX DSP: n/a
    RX Dboard: B
    RX Subdev: 3
  TX Channel: 0
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: 0
  TX Channel: 1
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: 1
  TX Channel: 2
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: 2
  TX Channel: 3
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: 3
  TX Channel: 4
    TX DSP: n/a
    TX Dboard: B
    TX Subdev: 0
  TX Channel: 5
    TX DSP: n/a
    TX Dboard: B
    TX Subdev: 1
  TX Channel: 6
    TX DSP: n/a
    TX Dboard: B
    TX Subdev: 2
  TX Channel: 7
    TX DSP: n/a
    TX Dboard: B
    TX Subdev: 3

[00:00:04.785436687] Setting device timestamp to 0...
[00:00:04.796748855] Testing receive rate 368.640000 Msps on 1 channels
Setting TX spp to 352
[00:00:04.808455794] Testing transmit rate 368.640000 Msps on 1 channels
OUUUUUUterminate called after throwing an instance of 'uhd::op_timeout'
[12746.728959] audit: type=3D1701 audit(1738862989.543:15): auid=3D42949672=
95 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=3D1080 comm=3D"bmark_=
rx_stream" exe=3D"/usr/lib/uhd/examples/benchmark_rate" sig=3D6 res=3D1
  what():  RfnocError: OpTimeout: Control operation timed out waiting for A=
CK
Aborted
root@ni-x4xx-342597F:/usr/lib/uhd/examples#


--_000_CPWPR80MB7022DBE39F16D7D4E29B68F590F62CPWPR80MB7022lamp_
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
We are encountering an issue when trying to run the benchmark directly on t=
he USRP X440. During the test execution, we receive the following error:</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
RfnocError: OpTimeout: Control operation timed out waiting for ACK.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
This error occurs during the benchmark process and prevents the operation f=
rom completing successfully.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
We would appreciate it if anyone has encountered this issue or has any sugg=
estions on how to resolve it. Any guidance or recommendations to fix the is=
sue, such as adjusting response times or system configurations, would be gr=
eatly appreciated.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
We look forward to your feedback and thank you in advance for your help.</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate 368.=
64e6 --tx_rate 368.64e6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5=
ed1872</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[00:00:00.029550] Creating the usrp device with: ...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F=
,fpga=3DX4_400,claimed=3DFalse</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[WARNING] [MPM.RPCServer] A timeout event occured!</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx440,clock_source=3Din=
ternal,time_source=3Dinternal,initializing=3DTrue'.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Using Device: Single USRP:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; Device: X400-Series Device</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; Mboard 0: x440</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 4</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 5</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 6</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RX Channel: 7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; RX Subdev: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 4</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 5</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 6</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; TX Channel: 7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX DSP: n/a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Dboard: B</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; TX Subdev: 3</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[00:00:04.785436687] Setting device timestamp to 0...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[00:00:04.796748855] Testing receive rate 368.640000 Msps on 1 channels</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Setting TX spp to 352</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[00:00:04.808455794] Testing transmit rate 368.640000 Msps on 1 channels</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
OUUUUUUterminate called after throwing an instance of 'uhd::op_timeout'</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
[12746.728959] audit: type=3D1701 audit(1738862989.543:15): auid=3D42949672=
95 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=3D1080 comm=3D&quot;b=
mark_rx_stream&quot; exe=3D&quot;/usr/lib/uhd/examples/benchmark_rate&quot;=
 sig=3D6 res=3D1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; what(): &nbsp;RfnocError: OpTimeout: Control operation timed out wai=
ting for ACK</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Aborted</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
root@ni-x4xx-342597F:/usr/lib/uhd/examples#</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_CPWPR80MB7022DBE39F16D7D4E29B68F590F62CPWPR80MB7022lamp_--

--===============2869324209653112080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2869324209653112080==--
