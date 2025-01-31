Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 207A1A2422C
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 18:46:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7FBA386099
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 12:46:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738345584; bh=7H2Ztp7Io3/mt4xx8uxozBQJJIS2HwIG6pcc+adsSGA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=M+orrX9pd0rD5dq1l2NnFHu2oDNQn4rDyZhpG4rMrubPQzxi1GM9jHMEeKHuPpikK
	 /uSzwLhCwo3vEM+R5IbfgkWZJjaI5HQgEQ6IkbbUZdl75mZbPpsIan/JMbsCoSO6Ns
	 PvMjkMMuSZTnem43KoBQ1jBL735sv4lZ962mIXuKNcT+K8wPoFI8Q5iidUVAeWEm3T
	 5ZRolE4/+2HqdS279ClkB+XiLGVWH6Nmxf27lfuZQLpJ7ofa7BbLwF0tJfM7b7obp6
	 zGu1J7Jt9stOLs8Py5ShjThMGGe5HuwwSRm5HITeNJleESv8xW2z7R3UfTVGKs356q
	 /275+eCJxSDdg==
Received: from mx07-002d3c02.pphosted.com (mx07-002d3c02.pphosted.com [66.159.232.237])
	by mm2.emwd.com (Postfix) with ESMTPS id 32383385A87
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 12:46:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=bham.ac.uk header.i=@bham.ac.uk header.b="Evl8fWje";
	dkim=pass (2048-bit key; unprotected) header.d=bham.ac.uk header.i=@bham.ac.uk header.b="0ZtL2epC";
	dkim=pass (1024-bit key; unprotected) header.d=bham.onmicrosoft.com header.i=@bham.onmicrosoft.com header.b="U2W2SLDW";
	dkim-atps=neutral
Received: from pps.filterd (m0413768.ppops.net [127.0.0.1])
	by mx07-002d3c02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50VHf4uq029058
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 17:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bham.ac.uk; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	selpp-tld-bham1; bh=455L01ajZu0+UqE0BRC9YPdpMpyUAmJmyyEuNtyvq2U=; b=
	Evl8fWjexToQ3T6V45tFc4e+d6sBp7b8QGxs+0wTzCntSjIUT7laIz/y7P1iiI1N
	fJZ6zPJqkGNKY3/G2x/OEBjkAY7rbvklNXObzxMs7nZf4nDRYPOBJDZyra6g/Sgl
	aPcuUJuft/D1vQIzM/k6kOFlPvKR/fbc/D3mZUvfuq3iCnRuuP96LN0HUqSh9a0a
	Kkk57YvW4Vek6VV3WhO2sxv+anmLTyTbmfPdFfFZiI+njj4bDMVfXkaLI/uf3MbN
	j+EP6EPkIzDlpRylp9Nq2zAbqTUSCy8F2ZnJXp5wMLOH6G7gbLPx6oHf7zalsm8C
	rwyzMFgIteuA1ZwrWcjCXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bham.ac.uk; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	selpp-general-bham1; bh=455L01ajZu0+UqE0BRC9YPdpMpyUAmJmyyEuNtyv
	q2U=; b=0ZtL2epCC9JyUqrWlq9343LVDknSHjRcDf5fBzSah6uLFta9j/oVj670
	U73dK3vAxS4cTM6YRvsomLISaZlfgezUI/lwr9NqGfHHn0N5w7v0/8JNOoO2q64C
	X/mICeM13d1RJgAxqrMyYpk/jj5PTKv0JRv293ibAWiJ0KM7JZwznMXtm4OrbR23
	gPbVECwFtGsxYTa/37ndHxD9Nh3tM36EzMdly/slQdiEMLxGYUN5+xERthAn5CHm
	tN4SQpyRY+mGnSySUXgWi9zhIBlpRfkxg9p29f2wflkHznAIDTHonJkkXUWYTgy8
	vhbe6zTWCxuUkMhiAhbAQ4tiIO2VRw==
Received: from sun60.bham.ac.uk (sun60.bham.ac.uk [147.188.128.137])
	by mx07-002d3c02.pphosted.com (PPS) with ESMTPS id 44gf6y8ccj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 17:46:09 +0000 (GMT)
Received: from [147.188.128.127] (helo=bham.ac.uk)
	by sun60.bham.ac.uk with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.97.1)
	(envelope-from <d.white.4@bham.ac.uk>)
	id 1tdv5k-0000000020H-Gl2x
	for usrp-users@lists.ettus.com;
	Fri, 31 Jan 2025 17:46:08 +0000
Received: from mail-ukwestazlp17010001.outbound.protection.outlook.com ([40.93.68.1] helo=CWXP265CU008.outbound.protection.outlook.com)
	by bham.ac.uk (envelope-from
	<d.white.4@bham.ac.uk>)
	with esmtps (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.97.1)
	id 1tdv5k-0000000073S-9y0P
	for usrp-users@lists.ettus.com
	using interface mh1.bham.ac.uk;
	Fri, 31 Jan 2025 17:46:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sC2ngbuWlHvxk38rowEtE8SgJ94TTxZdIj9B1IlrBFcWfxSArxa02hdrSwRlYi0h+AnV3cybMewg5n2m4bxKRkj8pGBF517b5SijVBxs7BBQ7BS4tzvFNjeHOvpDu2Nn8e3K7YGan/+3t9zZRQOX3QZmX0ZLd0fDzpH+6iBP627aFaL9RKznem+u1l3Zvn75wyiJ9kyo8tBZYFjxbaJpj8quW7F8wnFttxiSIUlZRwYPi+6ImIDFarx+fEO7qInYY0t3qLF57FEdQSK68IbriQJkqioGPgkyMVjpgVuI4LoEbyRe1gOeMkyqRK2k0nhbboipnwuRTnjUD32XDoRG8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=455L01ajZu0+UqE0BRC9YPdpMpyUAmJmyyEuNtyvq2U=;
 b=LHAlrPy9VWl6lnVwkk8rtyPGWb4ta+kuAqhHfX5JHZMF3nduyd/Lrl6EgEHab1Pue5u5LoP3LqDyO/nGYhO60kBd9XjtvFUs1m5U361ViuDf+w4cjWmkTibF0o6qUPy4Y+J08NRUW3Vql+tSxv+pykJEj5o1EVPrqld4756OEBwotWV7pSZB5qpL23xyl859aYxxpI8KhHOiiV6lJm7cEHpx3zlhui5N5GKP8lx13Mvagwzedyz8O2drgcPW6eQquGQumA+LOMacRwg5bZYsp9GtVS3OaGdMR29fnsNwdnuBBNjcGKLCSvTiqWhdFt33sYAMjl9FsbaDOxGS80e3Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bham.ac.uk; dmarc=pass action=none header.from=bham.ac.uk;
 dkim=pass header.d=bham.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bham.onmicrosoft.com;
 s=selector2-bham-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=455L01ajZu0+UqE0BRC9YPdpMpyUAmJmyyEuNtyvq2U=;
 b=U2W2SLDWyjp6ZO+GgUt79XLh7FdsBN9Fsl5t5+5yHfHqnsAPnSNjDO7X6hRJsFXWkL7Dp2Np7oIySlpZHsA2SIiW3Da6n35tPSTLnAhtJsaL19MmeCYY1aTlUqksGAYQx8w7AVbQyvup890YfI2nJkU5ZMqgEBDh4UFkBfuQvew=
Received: from CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:12e::6)
 by LO4P265MB7062.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:34c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Fri, 31 Jan
 2025 17:46:07 +0000
Received: from CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM
 ([fe80::73f3:b00b:64d2:bc96]) by CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM
 ([fe80::73f3:b00b:64d2:bc96%6]) with mapi id 15.20.8398.021; Fri, 31 Jan 2025
 17:46:07 +0000
From: Daniel White <d.white.4@bham.ac.uk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440 uhd_find_devices unsuccessful with 1G Ethernet
Thread-Index: AQHbcle3ByhUD5vevEGnOgh9je3KdQ==
Date: Fri, 31 Jan 2025 17:46:07 +0000
Message-ID: 
 <LO4P265MB4162C069DD81CD359004D22AD7EE2@LO4P265MB4162.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CWLP265MB4175:EE_|LO4P265MB7062:EE_
x-ms-office365-filtering-correlation-id: a948c240-2585-44d3-3092-08dd421f243d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|8096899003|38070700018|13003099007;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?glAqacO5MkGs3ANOWdIDIZaBI9jfZe3+54qkFU5XIWL6+saVnuR2rUhHGo?=
 =?iso-8859-1?Q?iijoqL3kU3FdfQtfdfvit6eHnPMzgPbS2VQhFqlaRk5oT47VQqvJHuU6Qm?=
 =?iso-8859-1?Q?3Vlk+XAso1YegIzC810wgHmQw+yzrupTsteybGvrJKeoL1Tm18w6QhtOvI?=
 =?iso-8859-1?Q?CJmq/lhoO3phmQ0GGW+s657Dn27qAfvmnevTzO612KsqaLOtD0aDm8K7+k?=
 =?iso-8859-1?Q?n2uvqO2HaCzGWn+2N/1iH1DkAAVJNM1iLwesp9M8wSRfSs7IQYQaicXFNX?=
 =?iso-8859-1?Q?mbTAdHX64YYQdIN/SxS2cKFh5HWXzWpJnmUuMwoGO7Ve57/VdCw7ZRYSG6?=
 =?iso-8859-1?Q?ED0xU0v7AVrrMNZMzTQIgfexFF25rAcAP7S/RfwP0b7bKFk8zXnWx9l2ZW?=
 =?iso-8859-1?Q?yOAPTJey88pBGrVUoGDKh5KSdFaL7oh/Yf6Xn3cJX8IbQ/8C4a0UyLTDXN?=
 =?iso-8859-1?Q?D1wSaLXFs70/HY9Np0fWUwcdscxsK/EgvyNFJcpgg6ZvS/JtdgNJxSWFBS?=
 =?iso-8859-1?Q?bETuh4ZfUbofxv1TwKvtb6Iaav1GFqdCqt28TlM4TpaIlCvCZEhhnEN4np?=
 =?iso-8859-1?Q?roLmfn0OUz8l+UYHVbFJa/G53JhZra5ArF2v1zblJnPLUvGTr5RN3DTivs?=
 =?iso-8859-1?Q?DaTJZStKwG7DdGIIPJGbzPXhHvW4lbTjh0n5GA7VKbN84sVPYrfJqHjwrn?=
 =?iso-8859-1?Q?3E3XDWZG9XADPTZnZmHsOSSP+zrECyFgaLtuwPlWjVVw8H3lpJRGkooz7n?=
 =?iso-8859-1?Q?6biwmM7xGRu0aYNgTgCmsPx5MlsIwGPJ2tiWlQF7dOeIz3vMGFGVx2kMQ9?=
 =?iso-8859-1?Q?IOfWK3XyrKwebCZMpmSSlMHIEoXQZse1Edljt3JbfN2sDa1zmGzzLdGagc?=
 =?iso-8859-1?Q?ec6nfo3M6tYdYfZmOwq4Hs5EMhYoqW61m0vjCUSRiwkhDF3v0k8aUKpuPi?=
 =?iso-8859-1?Q?NwEzexsKfVeMpRH8J7XQ3uHkxEKt4cxMmUoPg0fDp24s9lm3GXhzdBTF3B?=
 =?iso-8859-1?Q?XihUTgHJ00rqGpOMUd8lBq4OHkeuGOeluFspQO9x5w4rhmKXkyp3qmPXf+?=
 =?iso-8859-1?Q?d2c4zliA8q6a7z26pz94mmIvFuDEW2nVazLLlMIe/yv+KP0ACPWtneieAo?=
 =?iso-8859-1?Q?2G+mM9LyXq6hoBjb5B7ngmSKNNfidHtJuxgWt2WIHtnb5SHdFnz6a6YUdb?=
 =?iso-8859-1?Q?6+tAP2JhS8oqev1e1kU1XpH5HLHIZjzJLQ0W/9y1vN8VOacz+0vu/rKLjy?=
 =?iso-8859-1?Q?NXTTM31P7rtg2vQ7Xtb/bwpYHnMUMqtR8RwdlZkD+ly6dCCyfplCU6mC9F?=
 =?iso-8859-1?Q?d8bV3hDXdGa90L2FemOjPbs1pfgIY/IXGn/8/7W42O1sVhynJS3osB+kJA?=
 =?iso-8859-1?Q?zdk1cfod5AloxbZcVLeJKeuqszramHUrTCGiC8FbQnpn4eLKEbKrE6jglJ?=
 =?iso-8859-1?Q?hJCB1w+bAuxVVmDM?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(38070700018)(13003099007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?F909JQ1RCwhjTi3f0LxOm6iC5GvHaOxE5yTIcDIKltlk39btCtoFkcTm2/?=
 =?iso-8859-1?Q?Gag0P6GlJOd2i4MWgNj8e8bTGf9U4LoBL7C7lsbf2YRnu8bWjjO09GwYlT?=
 =?iso-8859-1?Q?ACrETruuq1hy404/fboH6JpmdZ0FGCn5FVCY41jZz06cJ/irK/NgWOtXFi?=
 =?iso-8859-1?Q?OB1uwQk4b/sUqI3xnldqIRaf0oOUuKuJJBY3bfZYDaoj3PIHpfIfTAig7P?=
 =?iso-8859-1?Q?gcLLZAvgaFgVq5gtIDmxNYrTxAQnGQrUmPwDtgtI2SB1e3JT97ONBdJqGE?=
 =?iso-8859-1?Q?B9jPY79bgX0W7llPh7Tzj2fL/IbfiOnXZJv7AbkfyK0sojZaDFEbYYdo+T?=
 =?iso-8859-1?Q?AN502Az3xpof7OCPyiX04stoY4No4Cd0xENa38gLAyAUqSpxkbN7jAEsfh?=
 =?iso-8859-1?Q?gXJtlRh2afx3AoZF6xYhL9z7ld1EWABwOOFsc+6hbaDI9iIZzEopx+FxVN?=
 =?iso-8859-1?Q?vVDsghPr5BenTldSQ9FfcFTF1Lr01tmvWdwwI17HumTgY0mZJykF+n9SoI?=
 =?iso-8859-1?Q?hPbN0j9kuK+aTC/B/u/De7gaoy8kgyNSMIL7SwnCWImh3gqS/qm80QoQFC?=
 =?iso-8859-1?Q?aoVxEMrXKuIBHO7PK/Cf+hn3Hl1kBLMpspcDPZT920/EILNprm2meikocg?=
 =?iso-8859-1?Q?z2uMsshZeJVNSJqcUtT3GPYP5itft6aLaqlW1YfLjKjF5aG4WaO0pXjM+A?=
 =?iso-8859-1?Q?RgTWZgB5OH5S8QAIOiORbReNNmgtw1nE3ACDAQQgZpsM2t8oM3+8JGr3g5?=
 =?iso-8859-1?Q?fFA6GoEPBTKjuWyq+UKi0RkPc3Qw88601Bb8MXmKWDnvygIKsQcfPS5/1V?=
 =?iso-8859-1?Q?zybmoRFvf7Xet7L2R1CsUy2yjAv7BdIeYoWN4g7fo9u2HI+CYA8loGlmkG?=
 =?iso-8859-1?Q?sJxEnQyZOGj6bgKclBvUWutSCcn/wcUaceazIQS4ZqTkZvPefdk9uDK4eR?=
 =?iso-8859-1?Q?uMvlz6JUZjR/CyN9+7UAbP3T0OO1ytmTFiMJ2nkaZxM5lGnn4J6v2/lPxT?=
 =?iso-8859-1?Q?A8pQ7Zll70b9CuvPj/6dCZ+b1guNgQdBGEpcrClgl9neSZxvmT41ALln6Y?=
 =?iso-8859-1?Q?IoVmgEgL73PkQXvDTEeNtACvtCvTwKWsS0Dnu+pIKHkHsIBeU16rbT9KS2?=
 =?iso-8859-1?Q?MBWfJH/M+Zxa3DuMSngFKboYwj4FlAYRfk4lQrb3u05bRJQOjd34hGqHT2?=
 =?iso-8859-1?Q?pWAi+OR9RaRgBzfFrfQu55RiGHGM9hB+5+wANSr93gGJALW9xFLV2VyGl/?=
 =?iso-8859-1?Q?8x5t0UlRJ9tNTX91co5NeLdAtJ6Endp6ZAhlwSk/s4tQjA8NYl2mxDktUP?=
 =?iso-8859-1?Q?9KGvj2WgnJ22ia1ZmAnXWgvVaVyZAoadZHNUYjUOMxmlQWpcym3DWtuFth?=
 =?iso-8859-1?Q?3P71L39nWhwyiV2YGocK6gsEvV2P/bg96hgm87h+5wKYz7bI4RcW/C3ctu?=
 =?iso-8859-1?Q?5eIicFaE5M+7dph/hHdhSEx0szBrdRu6CcEFJByzPFHwpmxVkjqiVE3fFY?=
 =?iso-8859-1?Q?fOudFp971PjCj8hcR/vrbx+1yXelzOUOgdBxv+2tKdSmr8n/fP0UunaGQK?=
 =?iso-8859-1?Q?PTFaFY2xaCG5oCtP5NCJ6VStQrLC1U/J/Qjsb9K57uacdkhi8yfWt2Dd5V?=
 =?iso-8859-1?Q?wrkJ6M9ZEq5RcYdwcC4ddud780mt0vTazt?=
MIME-Version: 1.0
X-OriginatorOrg: bham.ac.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a948c240-2585-44d3-3092-08dd421f243d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 17:46:07.5383
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b024cacf-dede-4241-a15c-3c97d553e9f3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: blv/NaWt4RH2lVP3Xd9CGJpHhshO9NxZbtv6DAQ+CMAnlQnUK6KYu9wW+FENE+lUsIslxXJo3bYyPVePBsdOCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO4P265MB7062
X-BHAM-SendViaRouter: yes
X-BHAM-M365-in: yes
X-Proofpoint-ORIG-GUID: YktEvqUBtoH6biqhVX2lBriWwkth9-PR
X-Proofpoint-GUID: YktEvqUBtoH6biqhVX2lBriWwkth9-PR
Message-ID-Hash: XCVKW2F7VH4QPJO4THIDPFW3BPH4WQYM
X-Message-ID-Hash: XCVKW2F7VH4QPJO4THIDPFW3BPH4WQYM
X-MailFrom: d.white.4@bham.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 uhd_find_devices unsuccessful with 1G Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXWTROSIGUTFOWWZSLA2DB2FPT4CNNWU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6948781604105897513=="

--===============6948781604105897513==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LO4P265MB4162C069DD81CD359004D22AD7EE2LO4P265MB4162GBRP_"

--_000_LO4P265MB4162C069DD81CD359004D22AD7EE2LO4P265MB4162GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear USRP-Users,

I am trying to establish a connection from my laptop (ThinkPad P53) to an X=
440, initially,  via 1G ethernet cable, but uhd_find_devices, or uhd_usrp_p=
robe fail despite bring able to ping the device.

  *
Preamble

I have a USRP-2954 and have had no problem operating this, via the same 1G =
ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu 22.04 a=
nd 24.04.1 with both building from source and directly apt installing the b=
inaries, able to find success with uhd_find_devices afterwards.

A difference between the USRP-2954 and X440 is that the USRP-2954 uses a fi=
xed IP address (192.168.40.2) where are Eth0 on the X440 is configured to u=
se a DHCP-assigned IP address. For a while I have experimented with network=
 settings on the host laptop, with varying levels of insight gained, but ne=
ver able to get a response recognised from uhd_find_devices with the X440.

  *
Ubuntu 24.04.1 | apt install libuhd-dev uhd-host

After installation and verification, and expecting uhd_find_devices to work=
 with 1G Ethernet connection, it fails.

I attempted permutating ubuntu network settings to establish a connection. =
Only with the 'shared to other computers' option does ubuntu declare a conn=
ection has been established. From this, with wireshark I can confirm commun=
ication from the X440 via its serial number and mac address, and find its i=
p address (10.42.0.159).
I can ping the device with 'shared to other computers' or with a fixed addr=
ess set on the computer as 10.42.0.1. I cannot however ssh into the device,=
 or get a valid response from uhd_find_devices / uhd_usrp_probe with known =
arguments queried.

Connecting the laptop to the 'PS to USB' usb-c port, I expect to see a new =
usb device recognised on the laptop with lsusb, lsblk, ls -lash /dev/tty*, =
but never does the number of connections change after powering cycling the =
device while connected in this way. This was my hope through after finding =
https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-fo=
r-USRP-X440-RJ45-ethernet/td-p/4354614

  *
Ubuntu 24.04.1 | building 4.7.0.0 from source

I installed all dependencies in both https://files.ettus.com/manual/page_bu=
ild_guide.html (only without libcurses5 and libcurses5-dev) and https://kb.=
ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_G=
NU_Radio)_on_Linux (24.04 version).

In the cmake stage, I notice that it failed to find modules gevent, mprpc, =
pyudev and pyroute2. Previously I had included this (aside mprpc) with simi=
lar outcome.

After completing the build, I can ping the device successfully (ICMP Echo p=
ing request and reply) with fixed ip set, but attempting uhd_usrp_probe wit=
h this yeilds Destination unreachable.

  *
Additional notes

With each attempt I turn firewall off, via ufw and iptables, as I am on a c=
losed network.

From the Ettus's X440 Getting Started Guide, "Note that if you are operatin=
g the device in Network Mode, the version of UHD running on the host comput=
er and the USRP X4x0 must match".
With this I need to make sure the UHD versions are matching. However with n=
o way found so far to access the X440 to check its UHD version, I have trie=
d all versions since 4.5.0.0 not including release candidates.
I will be doing this with release candidates with Ubuntu 20 in the mean tim=
e, and will update if I have success with this.

  *
Summary

Cannot connect to X440 via 1G ethernet, aside ping responses with fixed ip =
address.
Cannot recognise the X440 as a usb device required to access the filesystem=
s directly on the device.

To establish a connection from this as a starting point via networking conf=
iguration, are there any suggestions?
To restart the setup from a fresh ubuntu installation, is there anything I =
should change that may improve my chances? It is possible I have missed som=
e crucial dependencies for the X440 specifically?

I have saved all logs for the build process and can share these.

Scenere thanks for any and all guidance,
Dan

--_000_LO4P265MB4162C069DD81CD359004D22AD7EE2LO4P265MB4162GBRP_
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
Dear USRP-Users,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I am trying to establish a connection from my laptop (ThinkPad P53) to an X=
440, initially,&nbsp; via 1G ethernet cable, but uhd_find_devices, or uhd_u=
srp_probe fail despite bring able to ping the device.</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" style=
=3D"list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div class=3D"elementToProof"><u>Preamble</u>&nbsp;</div>
</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I have a USRP-2954 and have had no problem operating this, via the same 1G =
ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu 22.04 a=
nd 24.04.1 with both building from source and directly apt installing the b=
inaries, able to find success with
 uhd_find_devices afterwards.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
A difference between the USRP-2954 and X440 is that the USRP-2954 uses a fi=
xed IP address (192.168.40.2) where are Eth0 on the X440 is configured to u=
se a DHCP-assigned IP address. For a while I have experimented with network=
 settings on the host laptop, with
 varying levels of insight gained, but never able to get a response recogni=
sed from uhd_find_devices with the X440.</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" style=
=3D"list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div class=3D"elementToProof"><u>Ubuntu 24.04.1 | apt install libuhd-dev uh=
d-host</u></div>
</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
After installation and verification, and expecting uhd_find_devices to work=
 with 1G Ethernet connection, it fails.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I attempted permutating ubuntu network settings to establish a connection. =
Only with the 'shared to other computers' option does ubuntu declare a conn=
ection has been established. From this, with wireshark I can confirm commun=
ication from the X440 via its serial
 number and mac address, and find its ip address (10.42.0.159).</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I can ping the device with 'shared to other computers' or with a fixed addr=
ess set on the computer as 10.42.0.1. I cannot however ssh into the device,=
 or get a valid response from uhd_find_devices / uhd_usrp_probe with known =
arguments queried.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Connecting the laptop to the 'PS to USB' usb-c port, I expect to see a new =
usb device recognised on the laptop with lsusb, lsblk<b>,
</b>ls -lash /dev/tty*, but never does the number of connections change aft=
er powering cycling the device while connected in this way. This was my hop=
e through after finding
<a href=3D"https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp=
-devices-for-USRP-X440-RJ45-ethernet/td-p/4354614" id=3D"LPlnk579076" class=
=3D"OWAAutoLink">
https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-fo=
r-USRP-X440-RJ45-ethernet/td-p/4354614</a>&nbsp;&nbsp;</div>
<div id=3D"Signature">
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" style=
=3D"text-align: left; list-style-type: disc; flex-direction: column; displa=
y: flex;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); align-=
self: start;">
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px;">
<u>Ubuntu 24.04.1 | building 4.7.0.0 from source</u></div>
</li></ul>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);">
I installed all dependencies in both <a href=3D"https://files.ettus.com/man=
ual/page_build_guide.html" id=3D"LPlnk" class=3D"OWAAutoLink" style=3D"marg=
in: 0px; text-align: left;">
https://files.ettus.com/manual/page_build_guide.html</a>&nbsp;(only without=
 libcurses5 and libcurses5-dev) and
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"LPlnk759959">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux</a>&nbsp;(24.04 version).</div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);">
In the cmake stage, I notice that it failed to find modules gevent, mprpc, =
pyudev and pyroute2. Previously I had included this (aside mprpc) with simi=
lar outcome.&nbsp;</div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);">
After completing the build, I can ping the device successfully (ICMP Echo p=
ing request and reply) with fixed ip set, but attempting uhd_usrp_probe wit=
h this yeilds Destination unreachable.&nbsp;</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" style=
=3D"text-align: left; list-style-type: disc; flex-direction: column; displa=
y: flex;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); align-=
self: start; margin-right: 0px; margin-left: 0px;">
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px;">
<u>Additional notes</u></div>
</li></ul>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
With each attempt I turn firewall off, via ufw and iptables, as I am on a c=
losed network.</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
From the Ettus's X440 Getting Started Guide, &quot;<i>Note that if you are =
operating the device in Network Mode, the version of UHD running on the hos=
t computer and the USRP X4x0 must match</i>&quot;.&nbsp;</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
With this I need to make sure the UHD versions are matching. However with n=
o way found so far to access the X440 to check its UHD version, I have trie=
d all versions since 4.5.0.0 not including release candidates.</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I will be doing this with release candidates with Ubuntu 20 in the mean tim=
e, and will update if I have success with this.</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" style=
=3D"text-align: left; list-style-type: disc; flex-direction: column; displa=
y: flex;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); align-=
self: start;">
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px;">
<u>Summary</u></div>
</li></ul>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Cannot connect to X440 via 1G ethernet, aside ping responses with fixed ip =
address.</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Cannot recognise the X440 as a usb device required to access the filesystem=
s directly on the device.</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
To establish a connection from this as a starting point via networking conf=
iguration, are there any suggestions?</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
To restart the setup from a fresh ubuntu installation, is there anything I =
should change that may improve my chances? It is possible I have missed som=
e crucial dependencies for the X440 specifically?</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I have saved all logs for the build process and can share these.</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Scenere thanks for any and all guidance,</div>
<div style=3D"text-align: left; text-indent: 0px; margin-top: 0px; margin-b=
ottom: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Ca=
libri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Dan</div>
</div>
</body>
</html>

--_000_LO4P265MB4162C069DD81CD359004D22AD7EE2LO4P265MB4162GBRP_--

--===============6948781604105897513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6948781604105897513==--
