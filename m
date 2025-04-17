Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81756A923B5
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 19:16:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C687385CA8
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 13:16:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744910211; bh=uRg36DF7n9e7H6bm8hDh3oSfde8I49ku1oZxDGM4TdA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ya9EJgD/GH9JyBj5xG86ubmbK4euU3Wh7qWTNxO4YGtfHmtI8HhEONn1N1OXIuWer
	 g9AuTIlERnZ9CaMlz5lPo7g8mZAVg1O1nf/onz55sBwJT32rMeoiZjwHVvF6GVjoA+
	 CYEtITbzR05MqUpa/DTSLb2OG6Zs0vp57RG3/bbvNtaaS5HGafv6yjdBZXfLAQ7cr9
	 0JhGvDKPjgZlHJDGUsnn/MB6gZrqxjRpF/l29XBkFCqaRgMSZTzGRl5AuqSZUVkuW2
	 NCVrJjQo5aQ+bW3C//Ez5lZgBwSS1+Sxg6mzwdFjrsBpgNVssPLAZlhMr4HzQwCwLd
	 PcPyPLEhWlxug==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2134.outbound.protection.outlook.com [40.107.21.134])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E798385CA8
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 13:16:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=student.uclouvain.be header.i=@student.uclouvain.be header.b="rmNSzEb2";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dRHRKtx4akYm8czJ7buhfmP8EoGsNaZ0KgSfKkMdjoTVuJ/Mw2gDgmfosGxJCxpMV6heudyq28LJUwpP5beWtxj/LCAoXxjDLuZJ6VWFyX4O+NVqiE4+70Jh+HSRrpJL+JNL0f2L7PsRYp8dlpqRBxarS7vYwzmcHf48e68YjesAQgE8PlHSn1SE7vZL6k5oi0lw6HZZwexHcexDNv1L5JrzSLST/cfnzdaZKIvxfNWrr8YtNwUpmOL9EGJZCePJffjNMOwMS5f75FVQQj+4eIzp/dCxXAQWOev8d6O6Pe70srotKd0HO+upRmJmWYuXlDVXM0dBVbgy1uJYZGTnWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PU+5MwYmqaHcZa9hiTDf7+kRFqPUi+W8SKPlAX8U3ls=;
 b=tr1ipjNY3Zt7BrZpqzhmmWeLa0om0EvBem9kpyIZ3saiUJZI0ZwJO8rAFfEbl7G7DNl1WGAdH/gFVaisMTbTppqdj/Audxe20HsOI/+51ByfePvVa9S00pxBwSvxcB1Z1Jd1XuA/cf/87KL1NAYkWBm33bFQUGC34ObTiFJbiP+cBbJKeqZSJp4O6t/GybmSjRFPqPiK+w+7WRC6mADIZDRb1Q+X0YCe0GKYU2DzWLInjVwmdSPNmATynP51YQuVgc3CFK6zGx+H3t4d9/EGcGTLJANYyHAz8hAgbSTr65JNIWkcKxQZ09/mzgRLEiGUde1+mhe1Nrs1AxgW5mZdQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uclouvain.be; dmarc=pass action=none
 header.from=student.uclouvain.be; dkim=pass header.d=student.uclouvain.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uclouvain.be;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PU+5MwYmqaHcZa9hiTDf7+kRFqPUi+W8SKPlAX8U3ls=;
 b=rmNSzEb2BjY3ENvPsuBsBIeFIMYQtYU4jR+3088qvbsriu+Q/l+pGVvPoSxqLFZC01SfibBgNLcFbuooIIUsJmn81D17ddKZkoOKPkqKnlBSulyVFj0NWYERl7xiUrwgqU73ZcTBeN4gqd2vTQT1HIxweDcsG+kKixU9wBQ0ZRiUgQqjaeiuXnGWx5AtFPsY9vUU6YksvDVTmVR1s0HP43hgWblWiVTOyZNLUG9iJ5PSEszW7Q804wsweqZPBBYWZx+1ZkUC0WG5gfRt+Vu8tMHgbNcH437O6+41SRLnWmWpu9cedmx20cgt4Aps27p39go9CS3Ziz0DxpWgHjiLoQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.uclouvain.be;
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com (2603:10a6:10:2d1::9)
 by GVXPR03MB10828.eurprd03.prod.outlook.com (2603:10a6:150:21c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Thu, 17 Apr
 2025 17:16:15 +0000
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d]) by DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d%4]) with mapi id 15.20.8655.022; Thu, 17 Apr 2025
 17:16:15 +0000
Message-ID: <af8643b5-4f97-4290-b2cf-f3766a39f7b7@student.uclouvain.be>
Date: Thu, 17 Apr 2025 19:16:13 +0200
User-Agent: Mozilla Thunderbird
To: Rob Kossler <rkossler@nd.edu>
References: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
 <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com>
 <2337446d-6990-490a-bf2c-899f8f738f32@student.uclouvain.be>
 <CAB__hTRP0s1DpWcLXXQZAS2uQVF3--m0knXVqhNHSC2Zu5eabQ@mail.gmail.com>
From: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Content-Language: fr, en-US
In-Reply-To: <CAB__hTRP0s1DpWcLXXQZAS2uQVF3--m0knXVqhNHSC2Zu5eabQ@mail.gmail.com>
X-ClientProxiedBy: ZR2P278CA0042.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::13) To DU2PR03MB7862.eurprd03.prod.outlook.com
 (2603:10a6:10:2d1::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR03MB7862:EE_|GVXPR03MB10828:EE_
X-MS-Office365-Filtering-Correlation-Id: ca26d5dd-19ec-4088-7906-08dd7dd38f37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|4022899009|376014|1800799024|10070799003|7053199007|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UElNWFgwRDVwTDVXTDVZdGMxVjZablRHMFJENkd3d1Q5Z0tPTjkwbDRIaENB?=
 =?utf-8?B?Q0pTYzkzM1FTSFVnLzM4T3NnMGZGMmNIWHdtWTgvaHZZdXRZT3d3U3hSeUZ0?=
 =?utf-8?B?Z0xpV0xmKzhTS21ROFY2c3lNRUZ6Z3M0Q2dXZVdNNiszc0hpcDJaM1NYMFVm?=
 =?utf-8?B?TE9BTUZHaWRyRnREdThzUzJzbDRSeThXbkVFWURGU2pTQjFuRTZEZCtjS212?=
 =?utf-8?B?WnF1MUEraU5SSmRHT3Vub1hSV1ptbWFlQ3pVZXNKYy9nSWdlRHprVXpnTmx1?=
 =?utf-8?B?Q2p5WDJyR0VkdzJyR3RKQWJLOXZhbENwcEQwT1YwanRGZjNmbHkvV1htVkti?=
 =?utf-8?B?NlpJODdIQ0d2K0lDL0lGVTh2WUoyNS90eWVFZU9kWmZ3SnpzTFR2OGFYcWor?=
 =?utf-8?B?RVFEd0oxYVNVWG1kYm9ON1lQeWJMbEQycDdlS283TUVnc0JEL282dERaVDBx?=
 =?utf-8?B?alpRNUhuWFhiZTQrWXRQY2xlRFFveEJBd3RkYTNhT294cHB0WFQ5YjJXeDZH?=
 =?utf-8?B?aTNNODBERVdFNzhjSGpmRjRpYjhXTUw2RXRRMkNzS2V2enZ4Zi94YWZvY2Vj?=
 =?utf-8?B?c01MU0hxRUtpRzdVWHB3WGFRbGZzMHowaENScmpGRGRZTmtKd0c1Y2Y2Tmx1?=
 =?utf-8?B?bEttdTZpNXJPaXM4dGVjRy9YRGozaTZjUTRQTnpva0VtdXV3emJSZTAzalEw?=
 =?utf-8?B?M0N2RjdSdG4zbEQ3VWlDZ000YTE3bTNRcjZHNVZYckFqZktyY2NybjJDSTFO?=
 =?utf-8?B?enRLV2g0QVN5RXJTa05MbHFNMWIrSG5qL3pjMzZyMDVWNVl1N0JHclV5ZnhQ?=
 =?utf-8?B?RktiKy9rZnFDZ2xudTMzWHVaZW1seUNiNnRKOEFRYmxOL0ZBWEtBL2tNTHNi?=
 =?utf-8?B?aGppcVRaM05RajNEK2RrZW1XanJWVkV3NTdNcWRHTlE5dE1obmhMR2FhWnlZ?=
 =?utf-8?B?S01Kc0J4NlVpNUVBc2o5RVhhRUV6ak1MbWZvUXFRZCtDQ1hyR3NIY2xUYytq?=
 =?utf-8?B?TXZFN284RTRoTCswYk91a1FsRGdKWVYrdlhhWHZaMXJDUy9ISm9GTWZOampS?=
 =?utf-8?B?UUZackpnWVRJcUJJNVBjTTB3SzVaaEpBanVaY1VobWhvR3V3cklFU0syL3g4?=
 =?utf-8?B?bVA2c21VdEFnNzZPN1JRZkM1d21nZkJOdUkxQU5TZHIyc0t3azlpVW8vTUY0?=
 =?utf-8?B?UDdQUnZOVzlaNnNKODM3QWo5Qi94eVZ6ZEZXQzVHU2FMVnZ1dExubUpRNmsz?=
 =?utf-8?B?c0s1MTF3eGhvUEx2aVhBZ1pna0ZtaFBORzFhaFE2MGgrbXgyUEthUTBUdzUz?=
 =?utf-8?B?cFdQQi9oZE4rUzBiUFJyV0pKUWdvc1phdHhJUUh1VGVYaW8rbXkvSDVub2xZ?=
 =?utf-8?B?dXpPK2lLS0VOQTVBaGprKzhvRWt6QlpDMXFmNUJhKy9rSC80c1M3MkE3eGo5?=
 =?utf-8?B?ZC9RVFpXSitaQzljOEEwTjJQMVJSZnlsNWxWb0R0dVB2TEgvbzhBdlhBTkVa?=
 =?utf-8?B?Y2hTdDFuUitqSk9VUjQ5VmV3TjRyOVlxQzR2NHptMnREUDZmQ2NOQ3Y0VkhD?=
 =?utf-8?B?bWlwc3RkVkZ1Q2pxL3ZJakQ4WkZTMmI2MEtLMEc2MmdXOWZQMUlEMWFvMGhL?=
 =?utf-8?B?Sm52bzd1alhpWGJHRW5qZEY1cTIrUWxJRThxdU9ubXcrSFFzK3RYVElYMGZy?=
 =?utf-8?B?L2lDMWhjd1k4a2VvK1NMVEJzU0RLZFJpeHhTRzhSQWVXNTB0U0NaVWlUYnpi?=
 =?utf-8?B?cm1UYjlGaVlIOVBBWkFsM1JFd2FxU29iZHBWSmY4T25uaDNXLythUFpoemsw?=
 =?utf-8?Q?5ytSOPjjd3fUncctJR28DHFR46eggW70+sft8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR03MB7862.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(4022899009)(376014)(1800799024)(10070799003)(7053199007)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a21JYjhveEVtQkdSQ0N3anBvSVJyL2RVYXVPTjhQTFgvUjdhSzBFa2xQTWQw?=
 =?utf-8?B?S0xhR2lzeEk4b3dhck9PaXROUy9Ma2VKOUFwa1paTUdLVk9JV3dBeHlOQXFh?=
 =?utf-8?B?REZKL0doNStaUlBzZHRpV1ovTno2OSt0QTZyM1YxRGZ1bHZWMlptRk8xQUxC?=
 =?utf-8?B?MHZ2MWhWaHowMlg5cGd5d0Fra1lvWnRUaURQamQ2dENWUk10ZzJQa0o2ZDNK?=
 =?utf-8?B?Y2ExckRjZmNSTmdaa3c2TWd6aVFZK294cGJNaHFudDdnT2NJT0NJeXBQcG9C?=
 =?utf-8?B?UFhPQUpBbUxEV1d6elprTUpIM1lKNEZvdXJYTWtKcFNzc0d3YTBzQUFMR3ZV?=
 =?utf-8?B?Zng0QjRmTmFGbkJ6Qy9OREpVRHV1eU5GamwvZDdOamNzc0hnNzloWGhLdlB0?=
 =?utf-8?B?M21VVzQyWlBwSStFOG5pWXVRY0NNUXAwZm54REF1azh5WGVpMnhzcHJWSXJN?=
 =?utf-8?B?R0hCcG9SQ0RjZjVmWklzeVk4NFowTmo2Nk1EMk5rczJEMHd3UzZJQ2IyUHNI?=
 =?utf-8?B?WXcyYmlyVlNqb0dUL09FNlh1Nm1qK0xWdWNmeDFDUGhNK29VdTNLbEJjR3Ro?=
 =?utf-8?B?alFJWUxBMU9FS2N0bnI1VGxqbmlaTzY3QndHckpWaCs3RXl0d0tsd3I1M0cx?=
 =?utf-8?B?QjI2aktIUzV1L1Q2QTNXdkd6WXhRdENaazRvQzJPWVRBVFVnUDYzelMvVmNl?=
 =?utf-8?B?TmNJbmVvZE9LKzZyZ0RCK3h1QzlXbDhpZU1QcUdlbzNzcDZ0bXVNc2dkN2dO?=
 =?utf-8?B?YnZqNXJ6RC9ZSnV3ZWRMcHREckpPSitXbkRDMjZPTzBxajNlQlJhNmpTSENP?=
 =?utf-8?B?WGFPZllBNk9BSUEwWGJmNlFta2JHS0lsb2pWK2lMYkVMZm42OUJ3c3NYWk9l?=
 =?utf-8?B?Q3JiTUJUK1JtV0NqYlR2ejNDeW9TU1YxdUFmbW9vUmZaUENJdEp2QjMyM2w0?=
 =?utf-8?B?U1g5TzQwNitEeHh3cDBtTGVINk41NGtXdlRrWUJOZUx4YXBwQUxjaXk0WDc5?=
 =?utf-8?B?Z3BKeWs3Q215TllQY0xtNWhTR2FpVVZDYkhXUFJPMlgxalU1VXppU2gvdWVU?=
 =?utf-8?B?Mm9xQTdKcGMwSkxOaHU2cEFpdE43TDJCM2doUmM3NTk3UFN1TjBza1FMSHNH?=
 =?utf-8?B?RS9HbTJnc2pWOEdlcFZXVUdRVjJpeVlsNUJvUTd2WXA1bXh3OG04c3lmMFlr?=
 =?utf-8?B?MjM1bmdFVHA2L3FtQ3NOQjdDTUxvbHVQODBEd281S0MzUmRaZXdDdDBQWHFu?=
 =?utf-8?B?bDFiZXg3MzZmQjFNeVYwZjVPSU5WenhBUXNmUkZnV1IwTnRxbE5QUWJIZXJC?=
 =?utf-8?B?VTZnbmcwRlZMQzF4MjNZU1duSFlLMk9oeXNXbnZaVmVpcWtEcG9VRVRnbTEy?=
 =?utf-8?B?RlIxRDRQUVNyQTQwaFhnN0tFS3ZhaURsQ3RSOENXZkdnT2tEZFJSZmZxSmpu?=
 =?utf-8?B?TnBCUDEvZnNPQXhnTWdMTlZhUHRGSmhOV2t2V3dvQ3Uyd21IRytoNm5YajRL?=
 =?utf-8?B?VEpDM3dXb0tPT0NTNVN0alR4UGxnTDFDNVMxeUtSUVdYUE44aGJSMnV2U2oy?=
 =?utf-8?B?aEtOVGhRMkVGc1llNWkyRGRpYU5OZFVWTDhSS3dqeTdNck1lTXhheFcvOEdS?=
 =?utf-8?B?QnRlR3lFUDJ2eHBVTnd6YTU2dzB4SXFCVDlNSmt4bm80SDhqSy94L3RWaitB?=
 =?utf-8?B?UTZsYU1VWEhNOURPRnlOdDZmd2wraW05M3Q0OTN3c2s4UVVRYk5JTWE4S1U0?=
 =?utf-8?B?d2F6bGQ1Q3J4TlliZStkSG5mK3ZNUzFQQVM4ZjNhZ0FBK29rTVAvamduZ2hv?=
 =?utf-8?B?bTVVb01CV3o1ZHJBT2JYcDUrVXlIcjVvNGR2eXEvWlI4TjYwMHl3UXhnS2pv?=
 =?utf-8?B?UmxyWkorOExDWklVc2lWRlZwSkM5SHhNREZtMHRFdyt3QlE4cC8yOE5wSnZN?=
 =?utf-8?B?ZkNVTU5hdGJuWlN0dkZsTkNKSlV0R0NsK2ZIUEkwZTUrMHFjSnJCS0FTcHZI?=
 =?utf-8?B?WFpnSWNzdmltTFFwTXVhNklhV2V1YUd2YzEvV2dNTE85QlB3WEs2U1NsRmFm?=
 =?utf-8?B?SDI1RHoyZlIrakIycFh4d0I2MGoyTHl1Q3djdk1ybllhcjdUcCtKS1hTYU9H?=
 =?utf-8?B?MzlFcWlWVTNJK3lJbGxDNGRlMDY4RG80am9pc2lnWmhPbE9Kczk3VXRqT1FN?=
 =?utf-8?B?cUp3K2lVVDYwczAzSWdNMFJQQ2RvcGZvSzJtd1RQUDFMVU9LbXlVUGZ0K2ZQ?=
 =?utf-8?Q?a957eIas3IXgF9N2lrlo9Uy8mAhiVNHCwMxNftN1H4=3D?=
X-OriginatorOrg: student.uclouvain.be
X-MS-Exchange-CrossTenant-Network-Message-Id: ca26d5dd-19ec-4088-7906-08dd7dd38f37
X-MS-Exchange-CrossTenant-AuthSource: DU2PR03MB7862.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 17:16:15.2356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ab090d4-fa2e-4ecf-bc7c-4127b4d582ec
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XCK81HkJqxnH5kyHBiiuOJV10QPK51Wv4UCxyPUSNZqUW1sAPL6BYXh1j7fv4zWiPCH6f5889XSTCJ3rlOWcTkaiceCc89WmMX7DcIraVeVUX8Hd4TOCGllRPYEGxtuX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR03MB10828
Message-ID-Hash: VZBQMYA44EUGRAQ2GJRJOJPBAIROYF4S
X-Message-ID-Hash: VZBQMYA44EUGRAQ2GJRJOJPBAIROYF4S
X-MailFrom: quentin.prieels@student.uclouvain.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VZBQMYA44EUGRAQ2GJRJOJPBAIROYF4S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1677597545082496020=="

--===============1677597545082496020==
Content-Type: multipart/alternative;
 boundary="------------Xze6lnoVC4pwKvOGutkDcM2R"
Content-Language: fr, en-US

--------------Xze6lnoVC4pwKvOGutkDcM2R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I just read a bit more about the "Sideband-At-End" signal, and it could=20
indeed be the issue. However, I don't see this signal (nor |tlength|,=20
|ttimestamp|, |has_time|, |teov|, or |teob|) in my current block=20
definition. This definition was auto-generated by /rfnoc_modtool/,=20
similar to the one in the gain example. Do you know how I can enable or=20
configure this Sideband-At-End in UHD 4.8?

You're also right =E2=80=94 I added a custom |is_last_sample| signal to m=
ark the=20
last sample of my OFDM frame, in case it doesn=E2=80=99t align with a tru=
e end=20
symbol in RFNoC.

If needed, here=E2=80=99s my current block definition:
https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/rfnoc=
/blocks/schmidl_cox.yml
Quentin

On 4/17/25 18:40, Rob Kossler wrote:
>
> =09
> Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir de rk=
ossler@nd.edu.=20
> Pourquoi c=E2=80=99est important <https://aka.ms/LearnAboutSenderIdenti=
fication>
> =09
>
> OK. The AXI-Stream Data (simple) interface is the easiest for this=20
> case in my opinion.=C2=A0 Are you using "Sideband-At-End" in order to h=
ave=20
> the "tlength" automatically calculated?
>
> You need to set "tlast" like you mentioned. This is critical and not=20
> always easy. Remember that the CHDR packet can only be about 2000=20
> samples whereas an OFDM packet might be longer. So, your idea about=20
> preserving the tlast from the input stream is probably needed.=C2=A0 Yo=
u=20
> also probably want to preserve teob from the input unless you are also=20
> detecting your own end of burst in which case you need logic to set=20
> this on the final packet and you need to set tlast on the last sample=20
> because the input packets will likely not have tlast set on this sample=
.
>
> Note that in the past I have used "axi_rate_change" in a block such as=20
> yours (my block was a pulse detection block based on power) because in=20
> addition to handling a true rate change (which you don't need), it=20
> also takes care of re-packetizing the data.=C2=A0 This allows your own=20
> logic to not worry about RFNoC packets.=C2=A0 But, switching to use thi=
s=20
> module might be more of a headache than just handling the RFNoC=20
> packets with your own logic.
>
> For the question you asked about=C2=A0receiving a new CHDR packet if an=
=20
> output packet has not been produced, I think the answer is Yes, this=20
> is no problem.
> Rob
>
> On Thu, Apr 17, 2025 at 12:16=E2=80=AFPM Quentin Prieels=20
> <quentin.prieels@student.uclouvain.be> wrote:
>
>     Hi Rob,
>
>     I'm not sure. I also tried forwarding the |tlast| signal of the
>     original |tdata| samples to force the system to send a CHDR
>     packet=E2=80=94even if my OFDM packet wasn't finished yet=E2=80=94b=
ut it doesn=E2=80=99t
>     seem to solve the issue.
>
>     Another question I=E2=80=99ve been asking myself is:/does RFNoC all=
ow a
>     block to receive a new incoming CHDR packet if it hasn=E2=80=99t ye=
t
>     produced an outgoing packet/?
>
>     I'm using the AXI-Stream Data (Simple) interface, so I assume the
>     NoC shell handles packet manipulation and length. I don't see
>     where I could modify this behavior...
>
>     If you have any ideas or insights, I=E2=80=99d be happy to investig=
ate
>     further.
>
>     Best regards,
>     Quentin
>
>     On 4/17/25 17:58, Rob Kossler wrote:
>
>>
>>     =09
>>     Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir =
de rkossler@nd.edu.
>>     Pourquoi c=E2=80=99est important
>>     <https://aka.ms/LearnAboutSenderIdentification>
>>     =09
>>
>>     Hi Quentin,
>>     Perhaps your issue is related to the 'length' parameter of the
>>     RFNoC packet?=C2=A0 If you are not correcting the packet length ba=
sed
>>     on the number of samples you are dropping, then you will get
>>     ill-formed packets coming out. Do you think that this could be
>>     the issue?
>>     Rob
>>
>>     On Thu, Apr 17, 2025 at 11:40=E2=80=AFAM Quentin Prieels
>>     <quentin.prieels@student.uclouvain.be> wrote:
>>
>>         Hello everyone,
>>
>>         I'm currently implementing a Schmidl & Cox OOT module on a
>>         USRP X310 as part of my master's thesis. (For those
>>         interested, the code is available here
>>         <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/l=
atency>
>>         (https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/l=
atency
>>         <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/l=
atency>).)
>>
>>         The purpose of this block is to detect the beginning of an
>>         OFDM frame =E2=80=94 specifically, just after the Schmidl & Co=
x
>>         preamble. I want the block to forward *only* the "valid"
>>         samples (i.e., those that are part of the actual OFDM frame).
>>         So when I call |rx_stream->recv()|, only actual data packets
>>         should be received by my UHD application.
>>
>>         My first idea was to control the |tvalid| signal of the
>>         AXI-Stream interface: setting it to |0| when the data was not
>>         a "valid" OFDM sample, and asserting it (|1|) only when the
>>         data was valid. However, this seems to cause some kind of
>>         deadlock. My UHD application always times out and receives no
>>         data. Interestingly, when I output zero-valued samples
>>         instead of deasserting the |tvalid| signal, I can see that my
>>         synchronization mechanism is working as expected. This
>>         suggests the issue likely lies in my use of AXI signals or a
>>         misunderstanding of the RFNoC protocol.
>>
>>         _Note_: my configured SPP (samples per packet, here 200) is
>>         smaller than the length of the actual OFDM frame, which
>>         consists of thousands of complex samples.
>>
>>         So here's my main question:
>>         Given a continuous stream of data (currently configured as
>>         packets with 200 samples each, where every packet is valid),
>>         how can I output *only a subset* of this stream =E2=80=94 a sp=
ecific
>>         sequence of continuous samples (potentially spread across
>>         multiple packets) =E2=80=94 such that only this valid subset i=
s
>>         received by the UHD application? Alternatively, how can I
>>         mark only part of the stream as valid for the receiver, while
>>         discarding the rest?
>>
>>         (For those interested in the code, this behavior corresponds
>>         to when |output_select| is set to |2'b01| in the following
>>         module: detector.sv
>>         <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/l=
atency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv>
>>         (https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/l=
atency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv
>>         <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/l=
atency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv>)
>>         , which controls forwarding of input data only when in the
>>         |FORWARDING| state.)
>>
>>         Thank you all for your help,
>>         Quentin
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
--------------Xze6lnoVC4pwKvOGutkDcM2R
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p data-start=3D"249" data-end=3D"543" class=3D""><font face=3D"Aptos">=
I
        just read a bit more about the &quot;Sideband-At-End&quot; signal, =
and it
        could indeed be the issue. However, I don't see this signal (nor
        <code data-start=3D"380" data-end=3D"389">tlength</code>, <code dat=
a-start=3D"391" data-end=3D"403">ttimestamp</code>, <code data-start=3D"405=
" data-end=3D"415">has_time</code>, <code data-start=3D"417" data-end=3D"42=
3">teov</code>, or <code data-start=3D"428" data-end=3D"434">teob</code>) i=
n my current
        block definition. This definition was auto-generated by <i>rfnoc_mo=
dtool</i>,
        similar to the one in the gain example. Do you know how I can
        enable or configure this Sideband-At-End in UHD 4.8?</font></p>
    <p data-start=3D"605" data-end=3D"765" class=3D""><font face=3D"Aptos">=
You're
        also right =E2=80=94 I added a custom <code data-start=3D"642" data=
-end=3D"658">is_last_sample</code> signal to mark the last
        sample of my OFDM frame, in case it doesn=E2=80=99t align with a tr=
ue
        end symbol in RFNoC.</font></p>
    <p data-start=3D"767" data-end=3D"916" class=3D""><font face=3D"Aptos">=
If
        needed, here=E2=80=99s my current block definition:<br data-start=
=3D"817" data-end=3D"820">
      </font>
      <font face=3D"Aptos"><a data-start=3D"820" data-end=3D"916" rel=3D"no=
opener" target=3D"_new" class=3D"moz-txt-link-freetext" href=3D"https://git=
hub.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/rfnoc/blocks/schmi=
dl_cox.yml">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/lat=
ency/rfnoc/blocks/schmidl_cox.yml</a><br>
        Quentin</font></p>
    <div class=3D"moz-cite-prefix">On 4/17/25 18:40, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAB__hTRP0s1DpWcLXXQZAS2uQVF3--m0=
knXVqhNHSC2Zu5eabQ@mail.gmail.com">
     =20
      <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%=
" style=3D" aspect-ratio: revert !important; background: revert !important;=
 block-size: revert !important; border: revert !important; bottom: revert !=
important; color: revert !important; color-scheme: revert !important; conte=
nt-visibility: revert !important; cursor: revert !important; direction: rev=
ert !important; display: revert !important; font-size: revert !important; h=
eight: revert !important; hyphens: revert !important; letter-spacing: rever=
t !important; line-height: revert !important; margin: revert !important; op=
acity: revert !important; order: revert !important; outline: revert !import=
ant; overflow: revert !important; padding: revert !important; position: rev=
ert !important; resize: revert !important; rotate: revert !important; scale=
: revert !important; tab-size: revert !important; table-layout: revert !imp=
ortant; text-align: revert !important; text-indent: revert !important; text=
-orientation: revert !important; text-overflow: revert !important; text-sha=
dow: revert !important; text-transform: revert !important; text-wrap: rever=
t !important; top: revert !important; transition: revert !important; user-s=
elect: revert !important; vertical-align: revert !important; visibility: re=
vert !important; white-space: revert !important; width: revert !important; =
word-break: revert !important; word-spacing: revert !important; writing-mod=
e: revert !important; zoom: revert !important; cellpadding: 0 !important; b=
order: 0 !important; cellspacing: 0 !important; display: table !important; =
width: 100% !important; table-layout: fixed !important; border-collapse: se=
perate !important; float: none !important; border-spacing: 0px 0px !importa=
nt; " align=3D"left">
        <tbody style=3D" aspect-ratio: revert !important; background: rever=
t !important; block-size: revert !important; border: revert !important; bot=
tom: revert !important; color: revert !important; color-scheme: revert !imp=
ortant; content-visibility: revert !important; cursor: revert !important; d=
irection: revert !important; display: revert !important; font-size: revert =
!important; height: revert !important; hyphens: revert !important; letter-s=
pacing: revert !important; line-height: revert !important; margin: revert !=
important; opacity: revert !important; order: revert !important; outline: r=
evert !important; overflow: revert !important; padding: revert !important; =
position: revert !important; resize: revert !important; rotate: revert !imp=
ortant; scale: revert !important; tab-size: revert !important; table-layout=
: revert !important; text-align: revert !important; text-indent: revert !im=
portant; text-orientation: revert !important; text-overflow: revert !import=
ant; text-shadow: revert !important; text-transform: revert !important; tex=
t-wrap: revert !important; top: revert !important; transition: revert !impo=
rtant; user-select: revert !important; vertical-align: revert !important; v=
isibility: revert !important; white-space: revert !important; width: revert=
 !important; word-break: revert !important; word-spacing: revert !important=
; writing-mode: revert !important; zoom: revert !important; display: block =
!important; ">
          <tr style=3D" aspect-ratio: revert !important; background: revert=
 !important; block-size: revert !important; border: revert !important; bott=
om: revert !important; color: revert !important; color-scheme: revert !impo=
rtant; content-visibility: revert !important; cursor: revert !important; di=
rection: revert !important; display: revert !important; font-size: revert !=
important; height: revert !important; hyphens: revert !important; letter-sp=
acing: revert !important; line-height: revert !important; margin: revert !i=
mportant; opacity: revert !important; order: revert !important; outline: re=
vert !important; overflow: revert !important; padding: revert !important; p=
osition: revert !important; resize: revert !important; rotate: revert !impo=
rtant; scale: revert !important; tab-size: revert !important; table-layout:=
 revert !important; text-align: revert !important; text-indent: revert !imp=
ortant; text-orientation: revert !important; text-overflow: revert !importa=
nt; text-shadow: revert !important; text-transform: revert !important; text=
-wrap: revert !important; top: revert !important; transition: revert !impor=
tant; user-select: revert !important; vertical-align: revert !important; vi=
sibility: revert !important; white-space: revert !important; width: revert =
!important; word-break: revert !important; word-spacing: revert !important;=
 writing-mode: revert !important; zoom: revert !important; ">
            <td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpad=
ding=3D"7px 2px 7px 2px" style=3D" aspect-ratio: revert !important; backgro=
und: revert !important; block-size: revert !important; border: revert !impo=
rtant; bottom: revert !important; color: revert !important; color-scheme: r=
evert !important; content-visibility: revert !important; cursor: revert !im=
portant; direction: revert !important; display: revert !important; font-siz=
e: revert !important; height: revert !important; hyphens: revert !important=
; letter-spacing: revert !important; line-height: revert !important; margin=
: revert !important; opacity: revert !important; order: revert !important; =
outline: revert !important; overflow: revert !important; padding: revert !i=
mportant; position: revert !important; resize: revert !important; rotate: r=
evert !important; scale: revert !important; tab-size: revert !important; ta=
ble-layout: revert !important; text-align: revert !important; text-indent: =
revert !important; text-orientation: revert !important; text-overflow: reve=
rt !important; text-shadow: revert !important; text-transform: revert !impo=
rtant; text-wrap: revert !important; top: revert !important; transition: re=
vert !important; user-select: revert !important; vertical-align: revert !im=
portant; visibility: revert !important; white-space: revert !important; wid=
th: revert !important; word-break: revert !important; word-spacing: revert =
!important; writing-mode: revert !important; zoom: revert !important; paddi=
ng: 7px 2px 7px 2px !important; background-color: #A6A6A6 !important; valig=
n: middle !important; width: 0px !important; ">
              <br>
            </td>
            <td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpa=
dding=3D"7px 5px 7px 15px" color=3D"#212121" style=3D" aspect-ratio: revert=
 !important; background: revert !important; block-size: revert !important; =
border: revert !important; bottom: revert !important; color: revert !import=
ant; color-scheme: revert !important; content-visibility: revert !important=
; cursor: revert !important; direction: revert !important; display: revert =
!important; font-size: revert !important; height: revert !important; hyphen=
s: revert !important; letter-spacing: revert !important; line-height: rever=
t !important; margin: revert !important; opacity: revert !important; order:=
 revert !important; outline: revert !important; overflow: revert !important=
; padding: revert !important; position: revert !important; resize: revert !=
important; rotate: revert !important; scale: revert !important; tab-size: r=
evert !important; table-layout: revert !important; text-align: revert !impo=
rtant; text-indent: revert !important; text-orientation: revert !important;=
 text-overflow: revert !important; text-shadow: revert !important; text-tra=
nsform: revert !important; text-wrap: revert !important; top: revert !impor=
tant; transition: revert !important; user-select: revert !important; vertic=
al-align: revert !important; visibility: revert !important; white-space: re=
vert !important; width: revert !important; word-break: revert !important; w=
ord-spacing: revert !important; writing-mode: revert !important; zoom: reve=
rt !important; width: 100% !important; background-color: #EAEAEA !important=
; padding: 7px 5px 7px 15px !important; font-family: wf_segoe-ui_normal, Se=
goe UI, Segoe WP, Tahoma, Arial, sans-serif !important; font-size: 12px !im=
portant; font-weight: normal !important; color: #212121 !important; text-al=
ign: left !important; word-wrap: break-word !important; ">
              <div style=3D" aspect-ratio: revert !important; background: r=
evert !important; block-size: revert !important; border: revert !important;=
 bottom: revert !important; color: revert !important; color-scheme: revert =
!important; content-visibility: revert !important; cursor: revert !importan=
t; direction: revert !important; display: revert !important; font-size: rev=
ert !important; height: revert !important; hyphens: revert !important; lett=
er-spacing: revert !important; line-height: revert !important; margin: reve=
rt !important; opacity: revert !important; order: revert !important; outlin=
e: revert !important; overflow: revert !important; padding: revert !importa=
nt; position: revert !important; resize: revert !important; rotate: revert =
!important; scale: revert !important; tab-size: revert !important; table-la=
yout: revert !important; text-align: revert !important; text-indent: revert=
 !important; text-orientation: revert !important; text-overflow: revert !im=
portant; text-shadow: revert !important; text-transform: revert !important;=
 text-wrap: revert !important; top: revert !important; transition: revert !=
important; user-select: revert !important; vertical-align: revert !importan=
t; visibility: revert !important; white-space: revert !important; width: re=
vert !important; word-break: revert !important; word-spacing: revert !impor=
tant; writing-mode: revert !important; zoom: revert !important; ">
                Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 =
partir de
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rkossl=
er@nd.edu">rkossler@nd.edu</a>. <a href=3D"https://aka.ms/LearnAboutSenderI=
dentification" style=3D"background: revert !important;color: revert !import=
ant;content-visibility: revert !important;direction: revert !important;disp=
lay: revert !important;font-size: revert !important;opacity: revert !import=
ant;rotate: revert !important;scale: revert !important;visibility: revert !=
important;" moz-do-not-send=3D"true">
                  Pourquoi c=E2=80=99est important</a> </div>
            </td>
            <td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"=
#EAEAEA" cellpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D" aspect=
-ratio: revert !important; background: revert !important; block-size: rever=
t !important; border: revert !important; bottom: revert !important; color: =
revert !important; color-scheme: revert !important; content-visibility: rev=
ert !important; cursor: revert !important; direction: revert !important; di=
splay: revert !important; font-size: revert !important; height: revert !imp=
ortant; hyphens: revert !important; letter-spacing: revert !important; line=
-height: revert !important; margin: revert !important; opacity: revert !imp=
ortant; order: revert !important; outline: revert !important; overflow: rev=
ert !important; padding: revert !important; position: revert !important; re=
size: revert !important; rotate: revert !important; scale: revert !importan=
t; tab-size: revert !important; table-layout: revert !important; text-align=
: revert !important; text-indent: revert !important; text-orientation: reve=
rt !important; text-overflow: revert !important; text-shadow: revert !impor=
tant; text-transform: revert !important; text-wrap: revert !important; top:=
 revert !important; transition: revert !important; user-select: revert !imp=
ortant; vertical-align: revert !important; visibility: revert !important; w=
hite-space: revert !important; width: revert !important; word-break: revert=
 !important; word-spacing: revert !important; writing-mode: revert !importa=
nt; zoom: revert !important; width: 75px !important; background-color: #EAE=
AEA !important; padding: 7px 5px 7px 5px !important; font-family: wf_segoe-=
ui_normal, Segoe UI, Segoe WP, Tahoma, Arial, sans-serif !important; font-s=
ize: 12px !important; font-weight: normal !important; color: #212121 !impor=
tant; text-align: left !important; word-wrap: break-word !important; align:=
 left !important; ">
              <br>
            </td>
          </tr>
        </tbody>
      </table>
      <div>
        <div dir=3D"ltr">
          <div>OK. The AXI-Stream Data (simple) interface is the easiest
            for this case in my opinion.&nbsp; Are you using
            &quot;Sideband-At-End&quot; in order to have the &quot;tlength&=
quot;
            automatically calculated?</div>
          <div><br>
          </div>
          <div>You need to set &quot;tlast&quot; like you mentioned. This i=
s
            critical and not always easy. Remember that the CHDR packet
            can only be about 2000 samples whereas an OFDM packet might
            be longer. So, your idea about preserving the tlast from the
            input stream is probably needed.&nbsp; You also probably want t=
o
            preserve teob from the input unless you are also detecting
            your own end of burst in which case you need logic to set
            this on the final packet and you need to set tlast on the
            last sample because the input packets will likely not have
            tlast set on this sample.</div>
          <div><br>
          </div>
          <div>Note that in the past I have used &quot;axi_rate_change&quot=
; in a
            block such as yours (my block was a pulse detection block
            based on power) because in addition to handling a true rate
            change (which you don't need), it also takes care of
            re-packetizing the data.&nbsp; This allows your own logic to no=
t
            worry about RFNoC packets.&nbsp; But, switching to use this
            module might be more of a headache than just handling the
            RFNoC packets with your own logic.&nbsp;</div>
          <div><br>
          </div>
          <div>For the question you asked about&nbsp;receiving a new CHDR
            packet if an output packet has not been produced, I think
            the answer is Yes, this is no problem.</div>
          <div>Rob</div>
          <br>
          <div class=3D"gmail_quote gmail_quote_container">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at
              12:16=E2=80=AFPM Quentin Prieels &lt;<a href=3D"mailto:quenti=
n.prieels@student.uclouvain.be" moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-freetext">quentin.prieels@student.uclouvain.be</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div>
                <p><font face=3D"Aptos">Hi Rob,</font></p>
                <p><font face=3D"Aptos">I'm not sure. I also tried
                    forwarding the <code>tlast</code> signal of the
                    original
                    <code>tdata</code> samples to force the system to
                    send a CHDR packet=E2=80=94even if my OFDM packet wasn'=
t
                    finished yet=E2=80=94but it doesn=E2=80=99t seem to sol=
ve the issue.</font></p>
                <p><font face=3D"Aptos">Another question I=E2=80=99ve been =
asking
                    myself is:<i> does RFNoC allow a block to receive a
                      new incoming CHDR packet if it hasn=E2=80=99t yet pro=
duced
                      an outgoing packet</i>?</font></p>
                <p><font face=3D"Aptos">I'm using the AXI-Stream Data
                    (Simple) interface, so I assume the NoC shell
                    handles packet manipulation and length. I don't see
                    where I could modify this behavior...</font></p>
                <p><font face=3D"Aptos">If you have any ideas or insights,
                    I=E2=80=99d be happy to investigate further.</font></p>
                <p><font face=3D"Aptos">Best regards,<br>
                    Quentin<br>
                  </font><br>
                  On 4/17/25 17:58, Rob Kossler wrote:</p>
                <blockquote type=3D"cite">
                  <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" style=3D"background:revert;color:revert;direction:revert;font=
-size:revert;height:revert;letter-spacing:revert;line-height:revert;margin:=
revert;opacity:revert;outline:revert;overflow:revert;padding:revert;text-al=
ign:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;=
text-transform:revert;vertical-align:revert;white-space:revert;word-break:r=
evert;word-spacing:revert;writing-mode:revert;zoom:revert;border:0px;displa=
y:table;width:100%;table-layout:fixed;float:none;border-spacing:0px" align=
=3D"left">
                    <tbody style=3D"background:revert;border:revert;color:r=
evert;direction:revert;font-size:revert;height:revert;letter-spacing:revert=
;line-height:revert;margin:revert;opacity:revert;outline:revert;overflow:re=
vert;padding:revert;table-layout:revert;text-align:revert;text-indent:rever=
t;text-orientation:revert;text-overflow:revert;text-transform:revert;vertic=
al-align:revert;white-space:revert;width:revert;word-break:revert;word-spac=
ing:revert;writing-mode:revert;zoom:revert;display:block">
                      <tr style=3D"background:revert;border:revert;color:re=
vert;direction:revert;display:revert;font-size:revert;height:revert;letter-=
spacing:revert;line-height:revert;margin:revert;opacity:revert;outline:reve=
rt;overflow:revert;padding:revert;table-layout:revert;text-align:revert;tex=
t-indent:revert;text-orientation:revert;text-overflow:revert;text-transform=
:revert;vertical-align:revert;white-space:revert;width:revert;word-break:re=
vert;word-spacing:revert;writing-mode:revert;zoom:revert">
                        <td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A=
6A6" cellpadding=3D"7px 2px 7px 2px" style=3D"background-image:revert;backg=
round-position:revert;background-size:revert;background-repeat:revert;backg=
round-origin:revert;background-clip:revert;border:revert;color:revert;direc=
tion:revert;display:revert;font-size:revert;height:revert;letter-spacing:re=
vert;line-height:revert;margin:revert;opacity:revert;outline:revert;overflo=
w:revert;table-layout:revert;text-align:revert;text-indent:revert;text-orie=
ntation:revert;text-overflow:revert;text-transform:revert;vertical-align:re=
vert;white-space:revert;word-break:revert;word-spacing:revert;writing-mode:=
revert;zoom:revert;padding:7px 2px;background-color:rgb(166,166,166);width:=
0px">
                          <br>
                        </td>
                        <td valign=3D"middle" width=3D"100%" bgcolor=3D"#EA=
EAEA" cellpadding=3D"7px 5px 7px 15px" color=3D"#212121" style=3D"backgroun=
d-image:revert;background-position:revert;background-size:revert;background=
-repeat:revert;background-origin:revert;background-clip:revert;border:rever=
t;direction:revert;display:revert;height:revert;letter-spacing:revert;line-=
height:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;t=
able-layout:revert;text-indent:revert;text-orientation:revert;text-overflow=
:revert;text-transform:revert;vertical-align:revert;white-space:revert;word=
-break:revert;word-spacing:revert;writing-mode:revert;zoom:revert;width:100=
%;background-color:rgb(234,234,234);padding:7px 5px 7px 15px;font-family:wf=
_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,san=
s-serif;font-size:12px;font-weight:normal;color:rgb(33,33,33);text-align:le=
ft">
                          <div style=3D"background:revert;border:revert;col=
or:revert;direction:revert;display:revert;font-size:revert;height:revert;le=
tter-spacing:revert;line-height:revert;margin:revert;opacity:revert;outline=
:revert;overflow:revert;padding:revert;table-layout:revert;text-align:rever=
t;text-indent:revert;text-orientation:revert;text-overflow:revert;text-tran=
sform:revert;vertical-align:revert;white-space:revert;width:revert;word-bre=
ak:revert;word-spacing:revert;writing-mode:revert;zoom:revert">
                            Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-=
mail =C3=A0 partir
                            de <a href=3D"mailto:rkossler@nd.edu" target=3D=
"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
                              rkossler@nd.edu</a>. <a href=3D"https://aka.m=
s/LearnAboutSenderIdentification" style=3D"background:revert;color:revert;d=
irection:revert;display:revert;font-size:revert;opacity:revert" target=3D"_=
blank" moz-do-not-send=3D"true">
                              Pourquoi c=E2=80=99est important</a> </div>
                        </td>
                        <td valign=3D"middle" align=3D"left" width=3D"75px"=
 bgcolor=3D"#EAEAEA" cellpadding=3D"7px 5px 7px 5px" color=3D"#212121" styl=
e=3D"background-image:revert;background-position:revert;background-size:rev=
ert;background-repeat:revert;background-origin:revert;background-clip:rever=
t;border:revert;direction:revert;display:revert;height:revert;letter-spacin=
g:revert;line-height:revert;margin:revert;opacity:revert;outline:revert;ove=
rflow:revert;table-layout:revert;text-indent:revert;text-orientation:revert=
;text-overflow:revert;text-transform:revert;vertical-align:revert;white-spa=
ce:revert;word-break:revert;word-spacing:revert;writing-mode:revert;zoom:re=
vert;width:75px;background-color:rgb(234,234,234);padding:7px 5px;font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif;font-size:12px;font-weight:normal;color:rgb(33,33,33);text-ali=
gn:left">
                          <br>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <div>
                    <div dir=3D"ltr">Hi Quentin,
                      <div>Perhaps your issue is related to the 'length'
                        parameter of the RFNoC packet?&nbsp; If you are not
                        correcting the packet length based on the number
                        of samples you are dropping, then you will get
                        ill-formed packets coming out. Do you think that
                        this could be the issue?</div>
                      <div>Rob</div>
                    </div>
                    <br>
                    <div class=3D"gmail_quote">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17,
                        2025 at 11:40=E2=80=AFAM Quentin Prieels &lt;<a hre=
f=3D"mailto:quentin.prieels@student.uclouvain.be" target=3D"_blank" moz-do-=
not-send=3D"true" class=3D"moz-txt-link-freetext">quentin.prieels@student.u=
clouvain.be</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                        <div>
                          <p><font face=3D"Aptos">Hello everyone,</font></p=
>
                          <p><font face=3D"Aptos">I'm currently
                              implementing a Schmidl &amp; Cox OOT
                              module on a USRP X310 as part of my
                              master's thesis. (For those interested,
                              the code is available
                              <a href=3D"https://github.com/quentinprieels/=
TFE25-462-rnfoc-ofdm/tree/latency" originalsrc=3D"https://github.com/quenti=
nprieels/TFE25-462-rnfoc-ofdm/tree/latency" target=3D"_blank" moz-do-not-se=
nd=3D"true">
                                here</a> (</font><font face=3D"Aptos"><a hr=
ef=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency" =
originalsrc=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/=
latency" target=3D"_blank" moz-do-not-send=3D"true">https://github.com/quen=
tinprieels/TFE25-462-rnfoc-ofdm/blob/latency</a>)</font><font face=3D"Aptos=
">.)</font></p>
                          <p><font face=3D"Aptos">The purpose of this
                              block is to detect the beginning of an
                              OFDM frame =E2=80=94 specifically, just after=
 the
                              Schmidl &amp; Cox preamble. I want the
                              block to forward
                              <strong>only</strong> the &quot;valid&quot; s=
amples
                              (i.e., those that are part of the actual
                              OFDM frame). So when I call
                              <code>rx_stream-&gt;recv()</code>, only
                              actual data packets should be received by
                              my UHD application.</font></p>
                          <font face=3D"Aptos">My first idea was to
                            control the <code>tvalid</code> signal of
                            the AXI-Stream interface: setting it to
                            <code>0</code> when the data was not a
                            &quot;valid&quot; OFDM sample, and asserting it=
 (<code>1</code>)
                            only when the data was valid. However, this
                            seems to cause some kind of deadlock. My UHD
                            application always times out and receives no
                            data. Interestingly, when I output
                            zero-valued samples instead of deasserting
                            the <code>tvalid</code> signal, I can see
                            that my synchronization mechanism is working
                            as expected. This suggests the issue likely
                            lies in my use of AXI signals or a
                            misunderstanding of the RFNoC protocol.<br>
                          </font>
                          <p><font face=3D"Aptos"><u>Note</u>: my
                              configured SPP (samples per packet, here
                              200) is smaller than the length of the
                              actual OFDM frame, which consists of
                              thousands of complex samples.</font></p>
                          <p><font face=3D"Aptos">So here's my main
                              question:<br>
                              Given a continuous stream of data
                              (currently configured as packets with 200
                              samples each, where every packet is
                              valid), how can I output
                              <strong>only a subset</strong> of this
                              stream =E2=80=94 a specific sequence of conti=
nuous
                              samples (potentially spread across
                              multiple packets) =E2=80=94 such that only th=
is
                              valid subset is received by the UHD
                              application? Alternatively, how can I mark
                              only part of the stream as valid for the
                              receiver, while discarding the rest?</font></=
p>
                          <p><font face=3D"Aptos">(For those interested in
                              the code, this behavior corresponds to
                              when
                              <code>output_select</code> is set to <code>2'=
b01</code>
                              in the following module: <a href=3D"https://g=
ithub.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_=
block_schmidl_cox/detector.sv" originalsrc=3D"https://github.com/quentinpri=
eels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/de=
tector.sv" target=3D"_blank" moz-do-not-send=3D"true">
                                detector.sv</a> (<a href=3D"https://github.=
com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_=
schmidl_cox/detector.sv" originalsrc=3D"https://github.com/quentinprieels/T=
FE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector=
.sv" target=3D"_blank" moz-do-not-send=3D"true">https://github.com/quentinp=
rieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/=
detector.sv</a>)
                              , which controls forwarding of input data
                              only when in the <code>FORWARDING</code>
                              state.)</font></p>
                          <p><font face=3D"Aptos">Thank you all for your
                              help,<br>
                              Quentin</font></p>
                          <p><br>
                          </p>
                          <br>
                        </div>
                        _______________________________________________<br>
                        USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"m=
oz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true"=
 class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a><br>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------Xze6lnoVC4pwKvOGutkDcM2R--

--===============1677597545082496020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1677597545082496020==--
