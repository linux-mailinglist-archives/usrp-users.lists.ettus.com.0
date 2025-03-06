Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08838A54D87
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 15:21:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7F41385E7D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 09:21:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741270864; bh=1QXZ5V4ITa+CkAlAqEdOccobRFwVnvs+qkCApD57QGg=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BzWaqOQs2Cj4cTUiRSYQxyS2SGt8kttvCAo/MqxHJcJeizp+Ocgvkax1jG1rpQbE7
	 nr3s8yOk0lbYfaZTATDti5Eg4M8VVm2+9iCCEhuV6YoWCDTDdsm9qk9ogUBeEUKqav
	 NzN7np+koqpHKvNJnxf2SA2bC2D6OEnz7ZTta7/ZH1XOD7pdZs3gmwKyBF7JPH1tt/
	 VPkJxcaFpXHwGM7hYJnGUtt2kKRKuc8YsArsrQ8GYv/WHUp//dCfcbIX0rztU8wZsz
	 lbDVsiFu9DrmtLSpdjAUdTEBzoUNvltj6Y6DD7jFs4/1Yz9Ga8VN/Gn71MsEmKSkkO
	 iM5Ole5iLj1+A==
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2112.outbound.protection.outlook.com [40.107.247.112])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A7D0385E1F
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 09:20:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=student.uclouvain.be header.i=@student.uclouvain.be header.b="oKxtesSV";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tSzOMccMMmEvrdIfVzpTB6fbyU+aQbTvp00/vXo/YTFsBGyjKex//w2PDbfmoy0MLJ557+Z85oWw+Ftr1QMduq/zGDMeOhHcDf2txVap7sHqI2IZKCTvyodZhw7OZSiUNfTo6ldYbC0hiIb5u3qZOfpLuUwPD7Ur3YI16hoIgbOZaGXQMc7v4Lggp008twmLEnYZfL36nt1gEtxNFxsYLeya/dZTE1RyGQAA+HexB8A2DZHgaRtve/jqvrvhh2lER5z+Ov26cVCkkwIkaNc/UlXEceoxPr4eIlrXDNYFZW6lwZkqXRDKEX5f1tZVFSeZz3b54NzTK0hw84xapv+H7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMWgF9KHUqowbdP5VULhPBDz6amAKi3QpMxYUNmISq0=;
 b=lsarzncEi7nkBDm1+suVkz5rJxRxpGaDbTO950RoOni1sPu1DuX8suqNB6qgyvUoax5nsPbY/8TbP/+cQQfXOCb6IY4vKnuhXTBUF4UjbvCqyXgFVQJnpri7XaovgEyDBTaVZ22sqSDUFaC9QoEyXMHr1LcktnWeWCP8CAto3Q/w7R+dKlTLXvzEtZ4+BkRHjtUQbmR8hzJCIr2DxFpY3poWyaawQpAeXKDBThPh0R7HZjPyxSbaq2OuUmpvRle6mR7PwhuT52FaXP3UYqxnOWv9S1J1YoHTbIgIVUZ13wGyhI7+uwQCVOX3oCvnWBokRnz5+4zczaUU+wtWtoAACw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uclouvain.be; dmarc=pass action=none
 header.from=student.uclouvain.be; dkim=pass header.d=student.uclouvain.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uclouvain.be;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMWgF9KHUqowbdP5VULhPBDz6amAKi3QpMxYUNmISq0=;
 b=oKxtesSVka/UDXKoSCBzOU4EbsXD2vCnzKbcxE/kw6qJm49KlnvpAcCceZwDQ+efEi5hxUXAR8WAYHc+jPg8EoTIP4gViPDmytDe1CIL0ijMD6NQaACTL68yh8Y7wskg1OhyNYQ6DQw3VS4dmaqrmrSKLhgPai+rO48RSC1Kq3oEg/mJHInfEfCuPBkWScyCoiWP3dC+MAz6IcDVb6zq9mfLBUKsOq/Bk6vYA+Rx1RpAlVCY+DQokG7P4Hs8VKwXJLNlA/69D6lE7tShFMRu3vGyWvgiZm8VrJMpTceQNLAu5If7sHo61/O8ys+eKCLjclzuJZhVZaDfwmI5MAOQTQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.uclouvain.be;
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com (2603:10a6:10:2d1::9)
 by AM9PR03MB7236.eurprd03.prod.outlook.com (2603:10a6:20b:260::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Thu, 6 Mar
 2025 14:20:00 +0000
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d]) by DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d%4]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 14:20:00 +0000
Message-ID: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
Date: Thu, 6 Mar 2025 15:19:59 +0100
User-Agent: Mozilla Thunderbird
Content-Language: fr, en-US
From: Quentin Prieels <quentin.prieels@student.uclouvain.be>
To: usrp-users@lists.ettus.com
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To DU2PR03MB7862.eurprd03.prod.outlook.com
 (2603:10a6:10:2d1::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR03MB7862:EE_|AM9PR03MB7236:EE_
X-MS-Office365-Filtering-Correlation-Id: 14dbd57b-9dee-4d2a-17b9-08dd5cb9face
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|10070799003|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cVgwVTFvYWRqUUp1MWhoZmU5L3BSckZFY09JeTRaNzl4dU83dmJBbHBpbkVS?=
 =?utf-8?B?dXB4Qm9KS0UyM3E5dmpYWFdXTmdYL2ZvLzJkVnVoTVhhc3R4eDVkRW16WStl?=
 =?utf-8?B?U3g2bXFoa1c4cEo1RG9nQUF0WEkyM3J1SXR5ZjkxcGMrMTVTWDhXdGVNOFA1?=
 =?utf-8?B?cGg1b3k5cHdEdnFhdEZWdWJxSjNZYWZwZDhUUHJmQm43eVRIMVM2OGR2UXlR?=
 =?utf-8?B?aXZVOEIvZHhoalZSbWRUMDJoMThodGpkU3J4SnJEV1BSOGhGSEN2cmkyT0NI?=
 =?utf-8?B?MjZ4MWE3QVFNb0NQdGF5TkhIZWVDVDJsb0NhMzd0VnY4d2habGRNbzZtNjNq?=
 =?utf-8?B?aGR2aGF6VU5ZbTU0aldsNXRvRy91ZnRnejE2ZEZudmdQUXJyNlhpMnIzeGlr?=
 =?utf-8?B?RmhVbXMzazlCRVNPT2dUN3lqbEd2WjJzRi94RGVLL3ZndW5zNWdHN1NLTEtk?=
 =?utf-8?B?RFRsM2FWR3BTTXdkc3FLQm9wVU5YcDdVL0luTTNBMW5FcGRkNkdwZUNkU25n?=
 =?utf-8?B?ZjdXUTRJZFVSZFQ0THB2TmFKdjdzbG5zZEFSeFRpTHBuZVdFK3VtUFpKaVls?=
 =?utf-8?B?QXVBZHZjS1ZsSWhqQjA2YXQ2cUxqeTl2NWkxTGVlN3N4SnUralFWYXR3MklS?=
 =?utf-8?B?aHZDQ2JwOXVvQ2cySWlvY2hqcFJmK1cyZFl2aHlyd2U2UGsxQnlwYjUyZTI4?=
 =?utf-8?B?anZuYnExdTZrWklzTDlDZFRDc0FYaEpSTDBpTnJkM2kxUlBuU2tlMFlBaXdV?=
 =?utf-8?B?b2w4V2NzUkgzQWdqTnR3ekd1UXA2YjFxQ2diNndwakhuSXRqbTlRNFpaQjdv?=
 =?utf-8?B?bS8vNnNZNjVEbkl6TjNWczdFbVB3cVNORkJhVDc4QkZIY0tQZFRHNjRZSEhT?=
 =?utf-8?B?VnJWcWZsWjFqM0dnRE5ad0hlUytDZ25jN0grYVhuTHgwWlRWK0x6TGkzeS9F?=
 =?utf-8?B?OEJvSXQ3R1ovVk96NzE3V01wd3dQNHpXZ0lpQkgyTGZJNkhXSTV6QVpvUFlp?=
 =?utf-8?B?VnFkdFpiTW9DS2IxdzVTRExJdDJkZGRuMHozK0xzaDFUWm1NTnoxTmJVaFBm?=
 =?utf-8?B?MjVxODVYSTNoOWZoSENhVSs1RXdTVHlDUWtNNDlaOXhOTjVDcnd0UExHMlA5?=
 =?utf-8?B?ZzJDR0RtZXZiMTFGN3ZFUm5XOU9ZWmlwNmRpRTFGdzYzbHRiR0ROOFVUOTdV?=
 =?utf-8?B?YldmSEdSUVVsM01tMVY3d2V2R0NLTkl4T0hoYTVOL1VpUm5IR3pYQVBzcklM?=
 =?utf-8?B?cGc1NExJVXVyRTZYd3RWQjFvOUg2eVliY1ltb3h4d3lXL1k0UDFualJiN3Qr?=
 =?utf-8?B?eWFZVlRYaXNML29zdEF5M1V1S2NKWmp0emlSNUdGbnJIcjhKdCtsN09pMTM1?=
 =?utf-8?B?R3hwM1ovYXJsT0FSMHlaMlhyTTQxWnpxWGpvcnFja1lOVjIyMHBUQk1kZWZv?=
 =?utf-8?B?VXZOWjJpc1Iyb1pwZitkY2pIYmRURHNoYlU2RzU2eWVXSTJMVW1tNmIrREFN?=
 =?utf-8?B?bjlqcFhKOFZlY1lFN2prUG9GcXhxZDh3THpqWnIrMTkwSnhXWHBFck16Qm9U?=
 =?utf-8?B?bUlZbHF1K3EyOWRGTDlzTUR3WDhhSFg5RDVZWUFGZzJXWHhidUIycTlwNjZM?=
 =?utf-8?B?ZWNFaUx0N3pERmUwZ05yUzA3aVZseTlFVnVhTWxONE1hcmpDejFrM0ZLQTlP?=
 =?utf-8?B?VG5Ya1NOY2VNQlVWOHBUVklJb25aRWh6Y0hxYjcwb0dGK3dwZEowc2lKdzBs?=
 =?utf-8?B?WmFsd0hLaldBdHdaU0plYVN0UHh5R2gzY25aWC9BcUQzY2V3K0N2UStzZDRZ?=
 =?utf-8?B?UThobi9ZY1NZRnA1Sm80NmRXR0tYcVZ5bkI0ZlI2RG1GWjhDSnY4ckUxWm85?=
 =?utf-8?Q?1i/Y55u/hsoZv?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR03MB7862.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TWN6WEN4NldvYVV3WUQvVW1kMm41UGtMZy8wQmxScEJjblIzTFh1b1k5QUlq?=
 =?utf-8?B?clAreCtzQjdUTVMvYVVHMzZlWXhwK3grdURSb0xoUUgyQ290N0IwQkdvN2h1?=
 =?utf-8?B?c2ZqQnp6OUR4TktNZHVHR1RNWFAvV0JydytmRW9zVzgzM1k1K3VqZi9RQ256?=
 =?utf-8?B?dHBSc0VvNkFIODMwcXdYWmdGZ1g0eXQ2YWtHNGkzRDdzcTVsVCtOeDhZNDFX?=
 =?utf-8?B?NmwxcDZzc3U5WHlDSXUrLzFZVEMrd0VXZHhEVHJaRjZiQ282aWU0YUI3YlI4?=
 =?utf-8?B?NDIrT202M09kYWw2cVdXRmlKbGk5bm9yT2dyMXRwdEgyZ0k3cHBaNXV6Ylpn?=
 =?utf-8?B?U1NxMWVkb2ZhUFg0WmpQVWdjQ0I1SU92aXkvRTQ2SnNPdGg5UHBJaTU5d0dS?=
 =?utf-8?B?eWNwWlJpeWUzL0UyVFg3SXJSTjQ1VnA1eVpKanVUNmVrZWlpVnV3OExnSzhK?=
 =?utf-8?B?YkFZZnV4M2lKTTgrQ3FwT0U5dk1heUxQYk00UHFaQ00wS2RwZXJZQ3NVMlhI?=
 =?utf-8?B?WWVva3FsWWhuZzZDR1NQMGFiYmdJRS8zWGllQ0VqY1hJcmlLTUdFWGJNUElT?=
 =?utf-8?B?Lzd2MlFNZ1Azblh1TGNzdCt0aHJIS2N0NmlQSkJJc2NpYVVGU2toZnp0QU16?=
 =?utf-8?B?TkZGYXAyempDVG5QOEtlZEYycURVVSszT2JhKzZmR0x0eG5MS1NmOXN1VTg2?=
 =?utf-8?B?VnFvZ2trVmJCdC9EUXRWRkxqVVljTngyYkFGNml1aG03dFhDK01rQWxLbUhB?=
 =?utf-8?B?SktoUlFqbTkyYlhxY0F1aldsYzJaVGxUb1plTnkvNUNVMndvYUROdHZ2d2FZ?=
 =?utf-8?B?UU5JNjJLVnVHQlp4RzBQSnlaRVB3N1dLY205THgzdEhaN2JtNkpTSzdTeW1j?=
 =?utf-8?B?RkpaTzl4eVNIaTF6a244SzNQanRLaTFBb2VNM096ZEg4b3krdm9BSnp3NUQv?=
 =?utf-8?B?RkplTllOeUlKVDd0bGJCTmdnS1hVY0d0a2FyY1NkeVJSbXJqRWM5dXhySzdE?=
 =?utf-8?B?T2RqZzE1dG5vejhKcDQ1QndJZHlab1FILzRseXN0Q2tXbGRnbkFxYWxianU5?=
 =?utf-8?B?VjkyREVaUzJ1Qm51enFjOHRwbWF2Ui9sa2ZWTnBOSXl2N3owV0sva3c2NHJ1?=
 =?utf-8?B?TVBwZ0hCSjh6eWd1NWlPek4wWnMwVzh3OEo1VC94RUc3UmU4bTlxWlVSL3Qy?=
 =?utf-8?B?SVhJckE3MVVFSEFvV0ZIWUVPNHVjWkhqZGhqQ2pieUNNU3Yxb21zYm95WmpO?=
 =?utf-8?B?OTZpeTZmYXNvemFnZzFxNFNvZk1PejFJcGMyU3MzYnNtK3B4ejdpODRrZ0x4?=
 =?utf-8?B?RUFTc21PRk9QaEhCWmZ2dDUrZG45aS9TZWRXWjVyOFQ2TVd1bFh5Nll6MEhC?=
 =?utf-8?B?U0lkS1o3a2ZmNm55MmFYazV6ZlhZSG1UeXB5Rm05bUdkcFRCNHJWc3ZOUlIx?=
 =?utf-8?B?cThFNlVjTCtxeUtNdGZENVd0SmFVbDU0Y1M0MHFRSHhMMlMrZkYwbHk3TDh6?=
 =?utf-8?B?RXFqbmMrVi9CV3pRVjZuWEJiazFOalNGdklUeTl2ekpscUNySU01VVJjLzE0?=
 =?utf-8?B?V2VYNDI2S0R6RzRvZFNXQTU0eXZBeFg4THNmQlRRQ2E2VDRrN1NiZkZtQVhl?=
 =?utf-8?B?S2Q3RmM3ZVV4UGNyNTQ1c2lWVGQrZmVmQjhtMm1qbTZieUQvVFVSdlFiT1c2?=
 =?utf-8?B?YkMyN2NJSzFaaGNvS1k1UG1Ob3VSY2FITHd4OW1vRWE1bXAxa0NxL083S013?=
 =?utf-8?B?eUxpTWRZNnVHdTNmcUdqa0FBU3dLSTJLTzVPbUxvRlVQTFNadHovelNsMU9J?=
 =?utf-8?B?dmxDSlBiWmZtOTNIckx5OFVOeXJVRTJvV2w3RDdUQ0R0c1VxTU1vSWxpUlF3?=
 =?utf-8?B?d2JrYXFxeVU4c3NoV2hXck1IK1dXRDl0NnRzNitIWUdqZlFIYjA4RHduMFJG?=
 =?utf-8?B?U1FmbnZjYTduTGRYTFNUd215czRrL3RqSVI5VFZZQUhtdk1ZeWdpTVVOWnVa?=
 =?utf-8?B?cXJ6bERodDJHbmx4WXNpWWF2dXBXU0VnNE02VzY3cDhHZW9rMkFGVXhCS0JG?=
 =?utf-8?B?cnI1WUZrd3lnRUdHamI4bWtYclVvRllIRFpva29jZUpYVFUyQzR0d2xVK011?=
 =?utf-8?B?ZDJVWXlJQ1ZmdTE0ZG5RV2h0eERNeXlGbVRTME5iSVBoOWRiZDc5a1V1L2Iz?=
 =?utf-8?B?a05ZQWhWZlJkb25Tb2xTdWNzcFN4SUFyUDBqQVlhc3hpYU9iUGtydS9OR01t?=
 =?utf-8?Q?z3vNIEFc8PMJGX7nVvKH/8P+bxmuofbYKZturF0c4g=3D?=
X-OriginatorOrg: student.uclouvain.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 14dbd57b-9dee-4d2a-17b9-08dd5cb9face
X-MS-Exchange-CrossTenant-AuthSource: DU2PR03MB7862.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 14:20:00.4810
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ab090d4-fa2e-4ecf-bc7c-4127b4d582ec
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wKARaAtM/QppKuCtcEMnvCvHLKRskzFUVtTlaG89rzLdOdMSvCGQTcOYlIlo2GgljPfM53lU2613NRvJDmLKulY0gVYf3ilcDpdFjonNrEOaH6hwP8KkgggQSGrutgsX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7236
Message-ID-Hash: V55LEGPYHKFSYTVNX343PPFLVKWC7M6O
X-Message-ID-Hash: V55LEGPYHKFSYTVNX343PPFLVKWC7M6O
X-MailFrom: quentin.prieels@student.uclouvain.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OFDM Reciever chain on USRPx310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V55LEGPYHKFSYTVNX343PPFLVKWC7M6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4303112887862824452=="

--===============4303112887862824452==
Content-Type: multipart/alternative;
 boundary="------------9k0QyNMOuuAao52pEVsPtH3T"
Content-Language: fr, en-US

--------------9k0QyNMOuuAao52pEVsPtH3T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone,

As part of a research project, I'm looking to implement an OFDM receiver 
on the FPGA of a USRPx310 (and more specifically, the synchronisation 
stage). According to my research, some RFNoC blocks with this function 
already perform this function. Where can I find them?

If you are not aware of the existence of these blocks, I imagine the 
best thing to do is to develop a new OOT module implementing this 
functionality. Where can I find the documentation for creating a new 
block (in UHD 4.8) ? In the RFNoC specifications? (I've already 
installed UHD4.8, Vivado, ModelSim and run the Gain module's test-bench 
successfully, created a new module with 'rfnoc_modtool', but I am a bit 
lost about how to design my <block>.yml file, and then, wich signal to 
drive in the SystemVerilog user logic code). I'm also wondering where I 
can find the documentation for the available IPs to integrate in a new 
design ?

Thanks for your help,
Quentin

--------------9k0QyNMOuuAao52pEVsPtH3T
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><font face="Aptos">Hello everyone,<br>
        <br>
        As part of a research project, I'm looking to implement an OFDM
        receiver on the FPGA of a USRPx310 (and more specifically, the
        synchronisation stage). According to my research, some RFNoC
        blocks with this function already perform this function. Where
        can I find them?<br>
        <br>
        If you are not aware of the existence of these blocks, I imagine
        the best thing to do is to develop a new OOT module implementing
        this functionality. Where can I find the documentation for
        creating a new block (in UHD 4.8) ? In the RFNoC specifications?
        (I've already installed UHD4.8, Vivado, ModelSim and run the
        Gain module's test-bench successfully, created a new module with
        'rfnoc_modtool', but I am a bit lost about how to design my
        &lt;block&gt;.yml file, and then, wich signal to drive in the
        SystemVerilog user logic code). I'm also wondering where I can
        find the documentation for the available IPs to integrate in a
        new design ?<br>
        <br>
        Thanks for your help,<br>
        Quentin</font><br>
    </p>
  </body>
</html>

--------------9k0QyNMOuuAao52pEVsPtH3T--

--===============4303112887862824452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4303112887862824452==--
