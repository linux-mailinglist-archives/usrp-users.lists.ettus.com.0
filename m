Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FF7A9227C
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 18:17:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAD02385CF8
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 12:17:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744906646; bh=P6fsNqHrPOpb5MbsNXYbFq0+Net45mRvHPUxOax9Bbg=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xmcpYPcsmuMR7D7pyUiYDK4HQaZBkqPKdnOAischJb0lndvX60V+Q+x3RYhDeXnDB
	 CWrzQieDzUsCsxsL/d6T+6h2vHEm/4viyQidPdX2ceBrMUq/knXnUFfgy5VkbFECVP
	 c9502ri1cW2aUWw3cq32H01pvKh9uTo4MuEWPMyLzlJ7TiR1AfZSS35ekndRCP3P+q
	 4IgXdS9mLJBzjMefP6AVjgVBf/mCQZB/iXrSrznKgFBUl8UVy+DMo7m9BUJJS40JG2
	 oNnF0qcG+jpIGvz77yOgl7SNtGNG7wuwavjqMZvBEBFoBiV0ND7AIInvBEEKVcC2pp
	 oIhemEN3HkYSQ==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2099.outbound.protection.outlook.com [40.107.22.99])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EA04385C9B
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 12:16:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=student.uclouvain.be header.i=@student.uclouvain.be header.b="DOuJmbxZ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lX0phqpGPZZ9BAyMRbxrE8GUqFi/ySE4iIX5O8NhQAcbCsnH+09MTR1IFZkIPtVE3jUDSNpK0AQ6ha0BrU61tyKN75lXT5U8v1Joo7GTFUUQHL2O4oLQLsRnYMO0Faw5YM6NLNBIQFryfyw1R1PdVJ9FMXnuLZCfUhrqY3zdNZaVyX2M+abIrUKp4IdanZj1LDOI4TZEWFYgMON7j8pkycBlp+0a/OplKuEE+jxVVouYs9lfD2jKIGRTPP4pnif1JyIlecYrd+m8EYMRqHGcZMRKrfBSZEVAH2tJ3e6KQiHfxTqMd3JSlqkccIsL7ov3AnIZ4qI0irwHxk03LhFe8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WpHHBM7TNreHePrVRf6d1gXpzmbTN28WmlzA7Lnp2C8=;
 b=Y8WqvkgA7NBTlauFCYVH9yl5aHdhLKM0mZP7QL3NPJp4o2jLooaAEcWql8V7CnSca/BZykVdUBVM3i63yIPFJJrpPghKhBkJZ1nUhBsSZEqHntQ9MIdProK09XZYupXBJcfQAmTFFuZ+oUcgI8/O0FXizxxfht8NfK65xbTaiSLTpeby3tsaCygz7g7ek0JlXj38QGAncCfh2Rw5wx+ybzJv0Q+UTQqh5JqrtWE9T3Zbe/xtgCxBOKBzhXjVIpwg+IQyS5zo6m1OxCkDs5yIPfwUR6tnlM/kSWHG/8hx1nua3vyQhxpf+xLQx2/8M+BHCezNSfpMGwt9+/ol078X6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uclouvain.be; dmarc=pass action=none
 header.from=student.uclouvain.be; dkim=pass header.d=student.uclouvain.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uclouvain.be;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WpHHBM7TNreHePrVRf6d1gXpzmbTN28WmlzA7Lnp2C8=;
 b=DOuJmbxZhPxJMJH0uJk2fkP23j4pA+6t9DUAWXeneQb7PbDoHWn56ybPaYe6x9I7WWCndJn1MlHIsomTindlIwCl+94VQ6Qey1q+UsNXCwh3z3OrBItDJe79z2tifoL0YcmNe9/1/66Z0njqjgSVN6nbtCTlCJLAu/Q5n9YwndprEPYJ99OF+v5TIiP66LN2kbbHwnWjkt8xR6DQJlnSj/N0tGKvFyK64xioQ4q0Y7BwOJZXfnB02o7Yn75FVpMmZRvpxWQ0h7FDzSjsXI08YCeM60Lwmo9a2v3WMyUpc6SUcUoRpP9sKgm71Av7gSbBsi6VbCHdmd9LlINrtBf9Aw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.uclouvain.be;
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com (2603:10a6:10:2d1::9)
 by AS8PR03MB8974.eurprd03.prod.outlook.com (2603:10a6:20b:5bc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Thu, 17 Apr
 2025 16:16:46 +0000
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d]) by DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d%4]) with mapi id 15.20.8655.022; Thu, 17 Apr 2025
 16:16:46 +0000
Message-ID: <2337446d-6990-490a-bf2c-899f8f738f32@student.uclouvain.be>
Date: Thu, 17 Apr 2025 18:16:44 +0200
User-Agent: Mozilla Thunderbird
To: Rob Kossler <rkossler@nd.edu>
References: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
 <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com>
From: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Content-Language: fr, en-US
In-Reply-To: <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com>
X-ClientProxiedBy: MI0P293CA0015.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::8) To DU2PR03MB7862.eurprd03.prod.outlook.com
 (2603:10a6:10:2d1::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR03MB7862:EE_|AS8PR03MB8974:EE_
X-MS-Office365-Filtering-Correlation-Id: e311f299-dc3d-4978-0709-08dd7dcb401f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|4022899009|366016|10070799003|7053199007|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OUY4RXovempQUzFmaDhkNUMrRmlXRWt5SnY3eUNnRmFHZnl1RVFnVmErMlR4?=
 =?utf-8?B?SjE2aDJvUURIb05ZUTdjb2ZReGdQNkJ5d2xYQW9zc3hsK0swSWlWSTNJRzVU?=
 =?utf-8?B?Wm9YWGN4NVg2bGZzc3l3SWRlUHhMTzcxRzV5MnVGZXJ0RFdhOUYvQ0VrNEJS?=
 =?utf-8?B?bTdCeE1nZWp4dERPbUpBQTVWUTNRQjB5OEF6d2t6azV0QjNJN29HTnQyODBS?=
 =?utf-8?B?R0k2NEVibEJBays2eExUaW10czhOK3lkQlJKWklMRDNPbEFpN1Q3QUxHa0Vr?=
 =?utf-8?B?Qjdnb20vTDhnNXkvNkFYVjdzaHV5NHpzKzZrdDF5R1NxWWVKNWlrY1BVK1dW?=
 =?utf-8?B?UEpCamdaczRCQmdHYmh2dHk1Q1Uzd25uSjUzYWZERWovZnpzQUdtTVpPRjMz?=
 =?utf-8?B?V3VGM3NJWWtRRnV1ZWJQdklYbUIvQ01pUmxFY2hyKzRMN1VLOExwdHpCRkRy?=
 =?utf-8?B?SmNOZDRNcWNlU3N1YmxidFpFMm1HaFQxS1FURm11WVNaQS9LOW1XdEhGNTRM?=
 =?utf-8?B?QnNSeEdGbCtkS1VzemxhVlU5bEd5eWJTMUo2bWgzbzV2UGdva1M4OStrTWRm?=
 =?utf-8?B?R3RDSmtIRzdNSWZ2RUNOa1lKZjI1NkRib3NyNzltaHhqMitGb2QvRXZXeWVB?=
 =?utf-8?B?WWJ1VHh4dkVuUHpCajZ6YktRaGlyS0lEK3FSQ2srNkZSMDdlZHAweit4SnE5?=
 =?utf-8?B?YzRaNVB2YWNYUFowRXprWk9haktlUm9QOTJPbnpMYUFXajNGZ2dzb1h1VnlX?=
 =?utf-8?B?ejcyTXRhTVFFTVlZaCtRSEcwZ3NjVXBTVjJWQkYwbzQvT3NkTDV4V2NRQUtO?=
 =?utf-8?B?Z1pmeEozd09rMjE0b0YyOGRhakZXR2JzRWtTVlpoWC90N0hNRFJudzFZZHZh?=
 =?utf-8?B?UVZnS2I0WGg3M0lvdHZPeTZKUThDWUZSRHMvN282V2d6QzVwbzliYVJ2NmhK?=
 =?utf-8?B?TXlIcXlRSnZOcHE0SjVFcEVwNWhlUm5zOG82UDBEenAzTmVoRS9YSllScWp2?=
 =?utf-8?B?VjVIcnRGNWJSQlVDa1VUbmhwd2UvOVo0T05HQ21XQk1ocDcvcWVKem9YeFZQ?=
 =?utf-8?B?cENUTGRYZW82Z1JUcFZYSUtkSk9CYVlVc0JBTjlyMVNQcXoreXk4ZkZQb1pT?=
 =?utf-8?B?RzUwSXBVVGtLU2xQNzZmNGdKMTlod0JyeThRZGdnai9nYjBkekZyZXYrVjMy?=
 =?utf-8?B?eUJZTEdxcCtUWHExRzVlckRpd0pjaFV1TWN0ZGNPZytjSHBKbXQyajZDVjdi?=
 =?utf-8?B?OXZJVE1GZ0l4UFpVUmpPQ2RoQUZxK1dmTThxYzQ4cGZoTHZwYjNQcGJJUW5N?=
 =?utf-8?B?blBTRWszcmprZGVUS3J2OFpXOTV0ckJMdHBTVHFET2dhNWpRZ0lXQ2cxUWg2?=
 =?utf-8?B?ajRYYldScTN5Y25qcDJIdkNkSHJkWCsySFJudFNuVWVmNVJHL3FRU2FrSDlt?=
 =?utf-8?B?NWZ5d0dGMGg2N2dQbnBVOUFsWnVKbDI2dzF2YjQ1a2M4bDFBcWUrSjBtdWJ3?=
 =?utf-8?B?a1ZyNTRYWS9heFN1eUhxUWludTd5M01NQXNxZGlBSVBqd05YdlRJeEx6RHdK?=
 =?utf-8?B?UzdhSnMyMklOeWcrZHVTa3duMkM3REJyQmpsV2NEbHZ5YThoa1JFbExGZmNM?=
 =?utf-8?B?OWR1alJYOHBaV3Q4TE5aV1RJZUlBMDlsSFVXZFdMaDZ2azRiNi9NWVQvV2hN?=
 =?utf-8?B?ZkpPQUNVbjJmRjRqZzJsNjFpVzRiTHJoRWJINUJnaUpKS2xvVlhadjc5U0RD?=
 =?utf-8?B?WXhNdjdqRXAzZEkzci85OGlGYVA1ekIveXpNRWNEREppNFlHWm9ldmxJUllw?=
 =?utf-8?Q?6ogWQdR/vOmsBJQQgQu8rAET1Qm7evbOMvnP4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR03MB7862.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(4022899009)(366016)(10070799003)(7053199007)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bnRETmc2L1ZFa0N3bnVrT3o4enBRMVI1QXBTRkpZa2VVVmU5cXBZZEV6Umt6?=
 =?utf-8?B?K1hYSk1VbTRxWjRjYXdYZndiMW1kN2RaS2Y0cWEvMGJnZXJlUUxQT09yTkE5?=
 =?utf-8?B?YWM0eWcrQ1hhbHBaWW5qQTRmT3BNeEU3bGdTVDBKMXAwWXowcVZSbkg2ODVU?=
 =?utf-8?B?d3RWWFhKbnV0VHBwbnp5R2Q1ck1ULzg3NlJTM3J5R28vcmtWVUtDSmNNSCsz?=
 =?utf-8?B?MTVBZTFmQjhma0FpMUd5VE1lNDMxRXdKR1ZFY0oyRWNxdFo5UHg3QXQ3VEZI?=
 =?utf-8?B?NDYzUE9XNFNqTlFueDVlaG4vd2hNVWtpTExCK2t3cXROQmVxbnFZRU93WVFw?=
 =?utf-8?B?RTljbzhEbkgzWkw4cmRod2x1enprdmJiZENvaFM5M2R2V0Rub0Y4QzNYMnll?=
 =?utf-8?B?NitIMVFsOWI1R21DNVhGdmJsMUZVMDcxT2VHajZRbmRBWnhYWVUrMjdhUUhp?=
 =?utf-8?B?ZGRFM25ocHJkTXh4ZmhTMjZzOVZSTTg0QTlVNURaeTd1SzRuWWpHT3J2Mmc5?=
 =?utf-8?B?eENodS9zcmZGVTRja1JUY1lDb2JBVDJTTzhtQzlFMmFwbXVubGJpMCtjcklV?=
 =?utf-8?B?R3V4bmVtdlNHeTFFRHNCUzdPZ3dNMDFoQkZLamlzUnlDZnNzd29SZVBHbi90?=
 =?utf-8?B?UXkvTDB5QWtBMUxCbSsydlF0Qi9MTHVUVzVjUnkrbWpPS2FocGFVVUdyR1p0?=
 =?utf-8?B?cURNSEtPaklKR0ZYZ0dWcXVLcXpJQm1wbGZUOGoyTXc3Z0NKSkxHNm5RVWg1?=
 =?utf-8?B?QkNYTnJkN2RJRVh6ZlROTmJ4RnBiQysrdjBxS0hXeDVQaEVGRDJVdysyRndL?=
 =?utf-8?B?czMrODR1NlorQnd2ZitrSFJZTzlBSDRGRlR6NFNOSFRGT3lhYnZqUzBWaWVF?=
 =?utf-8?B?azU5ajgvd1FwWTNmbEZ4cmYwRm90OVVzbDlaTTRVcHJUSXFHUGpwL3dKSHJR?=
 =?utf-8?B?YVY2bVFLMmwxaWpjaFpVYWM3ZEZ2ZFVyRzVKTXVjNERiSlI0N1hzVm9KUXVS?=
 =?utf-8?B?VWNlZmxzWmdKSDJ0QlRKV2JYZ3dTUzFNWms4TzNPMTg0VlNiVjhoZHlVL0RW?=
 =?utf-8?B?a0NhMVJDZGVsZW1nbzF0WGp0ZVY2Wm44T2hya1lJUFVZQldNOW5NVUllTGFQ?=
 =?utf-8?B?dkk1S1RYVlpEdWJKbHZPVWtIQ1FyamNJUlMyMzFvOTZOTGFIQ0VDMzhrVU9O?=
 =?utf-8?B?SUxibXQ3bTRXYnV3Q0Q5UnJZTHNzR1hLd2xvR2I2SFdraW0rSWNTdjFrWkhV?=
 =?utf-8?B?QU1xM3NCRVdLNVdzYUdRNEhxVjlJM3RZQUVyT1lnN3Q3K1l4UUxFODZCRUYy?=
 =?utf-8?B?RHQ5SlRncUZoVFVZTVVwbzZGby8wUWFtcU1GaGYydVp2Wkp5ZGt1U1VlRWM3?=
 =?utf-8?B?ZGY5eVl4Z3gwRGNKblY4a09pYk5qNXIwMWIyOFFkcGx5Zm1KZlYzR3ZhVEZk?=
 =?utf-8?B?Y3RFL3FRdjFVdlVnUktyWDJENUczY0pnUFlud3A0anpsUG5uR0l3U1dETmRq?=
 =?utf-8?B?bXppNUt5dkM2bGVLNnY3RVpHM3U4RlZ4d1pIU1ZrbTJmZG5UcC9wL1BuYlpF?=
 =?utf-8?B?YUs2Ylg0L285Njl2M01wK2d5eEZycnQwNTJQSUZJVGpXeWtQbW9TYnNLc0E3?=
 =?utf-8?B?d2duYmZsNFZsQzMvQWVzQnBJeElLRGhDU01iSDRCSVYzWlFaNjJlMG1sQ2FM?=
 =?utf-8?B?TUZOVXMrMm9GTnhEejdHekFQTm51bzZSbUo0aVlQRzU1S0tEQkV3NnZUK3V5?=
 =?utf-8?B?dXVFaHN1MHVaYW9sK1RoM0pEYU9TaEFGd1VBZjkzUEhJY0tzZnVGK1VOdzRk?=
 =?utf-8?B?a3M3Y2dtaGp1RE5LTDlBRW9TcGg3UlJoK3duRk9sbWk3dXpwb0pVWFZldnZD?=
 =?utf-8?B?dkErRWE4OHRnN1hFYUsxeDNHSE1SNm1Xc1R5d1pHN3pldXN5aE5oaXdBVGVl?=
 =?utf-8?B?RWc1cldhTHRGaWF6WGtLNTFZOXpBT1g4ZjU4RHFETmFRUmMxaWF3aGl3TUxL?=
 =?utf-8?B?b1BkL1g2SWYraDd4LytTYVhmUkZaZE0rbjFXcGw0YTFwNXJhaEF2L1haRms2?=
 =?utf-8?B?L1ZOTUJkdVJTTFJjRWRuN3d4RWtvc2hyc05TNDZ6aGNnTmV2T0xXQWtQaC84?=
 =?utf-8?B?MCtqV1YrUjZpRThmUnQ0VkJqaUwyb05tU1BhY2F0dExZV3pGbHdraU9WSHlC?=
 =?utf-8?B?NDdteTgzVEdxRkxCTmxPVjVUZk03L3BoL0MwOFpHdlpQNHh6ZlVzWWdSRDZ5?=
 =?utf-8?Q?2SLld4j2+YTcuvB6LsJeAEmWZsjAHAyHZ+cv/hWx/c=3D?=
X-OriginatorOrg: student.uclouvain.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e311f299-dc3d-4978-0709-08dd7dcb401f
X-MS-Exchange-CrossTenant-AuthSource: DU2PR03MB7862.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 16:16:46.5644
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ab090d4-fa2e-4ecf-bc7c-4127b4d582ec
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cS6jAUFCOaO80REf88ekleirr5k2xLZ8aZhR+YmfZ0peK7cFF24fiRa5I7+kXXbsW1nVNH1wcrX20IsXHLO0IwnNKN2a2I+RuzimLs6YGSz/UBLjTjRssyhTmtS8R7Vo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB8974
Message-ID-Hash: VNLKNEEPCDOKRCHHS7N553GNTFDRPJ4M
X-Message-ID-Hash: VNLKNEEPCDOKRCHHS7N553GNTFDRPJ4M
X-MailFrom: quentin.prieels@student.uclouvain.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNLKNEEPCDOKRCHHS7N553GNTFDRPJ4M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6492479491808221561=="

--===============6492479491808221561==
Content-Type: multipart/alternative;
 boundary="------------o2BLU2vq38CQzt96JmicBmMA"
Content-Language: fr, en-US

--------------o2BLU2vq38CQzt96JmicBmMA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I'm not sure. I also tried forwarding the |tlast| signal of the original=20
|tdata| samples to force the system to send a CHDR packet=E2=80=94even if=
 my=20
OFDM packet wasn't finished yet=E2=80=94but it doesn=E2=80=99t seem to so=
lve the issue.

Another question I=E2=80=99ve been asking myself is:/does RFNoC allow a b=
lock to=20
receive a new incoming CHDR packet if it hasn=E2=80=99t yet produced an o=
utgoing=20
packet/?

I'm using the AXI-Stream Data (Simple) interface, so I assume the NoC=20
shell handles packet manipulation and length. I don't see where I could=20
modify this behavior...

If you have any ideas or insights, I=E2=80=99d be happy to investigate fu=
rther.

Best regards,
Quentin

On 4/17/25 17:58, Rob Kossler wrote:

>
> =09
> Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir de rk=
ossler@nd.edu.=20
> Pourquoi c=E2=80=99est important <https://aka.ms/LearnAboutSenderIdenti=
fication>
> =09
>
> Hi Quentin,
> Perhaps your issue is related to the 'length' parameter of the RFNoC=20
> packet?=C2=A0 If you are not correcting the packet length based on the=20
> number of samples you are dropping, then you will get ill-formed=20
> packets coming out. Do you think that this could be the issue?
> Rob
>
> On Thu, Apr 17, 2025 at 11:40=E2=80=AFAM Quentin Prieels=20
> <quentin.prieels@student.uclouvain.be> wrote:
>
>     Hello everyone,
>
>     I'm currently implementing a Schmidl & Cox OOT module on a USRP
>     X310 as part of my master's thesis. (For those interested, the
>     code is available here
>     <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latenc=
y>
>     (https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y
>     <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y>).)
>
>     The purpose of this block is to detect the beginning of an OFDM
>     frame =E2=80=94 specifically, just after the Schmidl & Cox preamble=
. I
>     want the block to forward *only* the "valid" samples (i.e., those
>     that are part of the actual OFDM frame). So when I call
>     |rx_stream->recv()|, only actual data packets should be received
>     by my UHD application.
>
>     My first idea was to control the |tvalid| signal of the AXI-Stream
>     interface: setting it to |0| when the data was not a "valid" OFDM
>     sample, and asserting it (|1|) only when the data was valid.
>     However, this seems to cause some kind of deadlock. My UHD
>     application always times out and receives no data. Interestingly,
>     when I output zero-valued samples instead of deasserting the
>     |tvalid| signal, I can see that my synchronization mechanism is
>     working as expected. This suggests the issue likely lies in my use
>     of AXI signals or a misunderstanding of the RFNoC protocol.
>
>     _Note_: my configured SPP (samples per packet, here 200) is
>     smaller than the length of the actual OFDM frame, which consists
>     of thousands of complex samples.
>
>     So here's my main question:
>     Given a continuous stream of data (currently configured as packets
>     with 200 samples each, where every packet is valid), how can I
>     output *only a subset* of this stream =E2=80=94 a specific sequence=
 of
>     continuous samples (potentially spread across multiple packets) =E2=
=80=94
>     such that only this valid subset is received by the UHD
>     application? Alternatively, how can I mark only part of the stream
>     as valid for the receiver, while discarding the rest?
>
>     (For those interested in the code, this behavior corresponds to
>     when |output_select| is set to |2'b01| in the following module:
>     detector.sv
>     <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv>
>     (https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv
>     <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv>)
>     , which controls forwarding of input data only when in the
>     |FORWARDING| state.)
>
>     Thank you all for your help,
>     Quentin
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--------------o2BLU2vq38CQzt96JmicBmMA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p data-start=3D"188" data-end=3D"195" class=3D""><font face=3D"Aptos">=
Hi
        Rob,</font></p>
    <p data-start=3D"197" data-end=3D"410" class=3D""><font face=3D"Aptos">=
I'm
        not sure. I also tried forwarding the <code data-start=3D"239" data=
-end=3D"246">tlast</code> signal of the original <code data-start=3D"270" d=
ata-end=3D"277">tdata</code> samples to force
        the system to send a CHDR packet=E2=80=94even if my OFDM packet was=
n't
        finished yet=E2=80=94but it doesn=E2=80=99t seem to solve the issue=
.</font></p>
    <p data-start=3D"412" data-end=3D"565" class=3D""><font face=3D"Aptos">=
Another
        question I=E2=80=99ve been asking myself is:<i> does RFNoC allow a =
block
          to receive a new incoming CHDR packet if it hasn=E2=80=99t yet
          produced an outgoing packet</i>?</font></p>
    <p data-start=3D"567" data-end=3D"730" class=3D""><font face=3D"Aptos">=
I'm
        using the AXI-Stream Data (Simple) interface, so I assume the
        NoC shell handles packet manipulation and length. I don't see
        where I could modify this behavior...</font></p>
    <p data-start=3D"732" data-end=3D"803" class=3D""><font face=3D"Aptos">=
If
        you have any ideas or insights, I=E2=80=99d be happy to investigate
        further.</font></p>
    <p data-start=3D"805" data-end=3D"828" class=3D""><font face=3D"Aptos">=
Best
        regards,<br data-start=3D"818" data-end=3D"821">
        Quentin<br>
      </font><br>
      On 4/17/25 17:58, Rob Kossler wrote:</p>
    <blockquote type=3D"cite" cite=3D"mid:CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1=
ZRc4nBzeuoqnoQD65Q@mail.gmail.com">
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
        <div dir=3D"ltr">Hi Quentin,
          <div>Perhaps your issue is related to the 'length' parameter
            of the RFNoC packet?&nbsp; If you are not correcting the packet
            length based on the number of samples you are dropping, then
            you will get ill-formed packets coming out. Do you think
            that this could be the issue?</div>
          <div>Rob</div>
        </div>
        <br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at
            11:40=E2=80=AFAM Quentin Prieels &lt;<a href=3D"mailto:quentin.=
prieels@student.uclouvain.be" moz-do-not-send=3D"true" class=3D"moz-txt-lin=
k-freetext">quentin.prieels@student.uclouvain.be</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <p><font face=3D"Aptos">Hello everyone,</font></p>
              <p><font face=3D"Aptos">I'm currently implementing a Schmidl
                  &amp; Cox OOT module on a USRP X310 as part of my
                  master's thesis. (For those interested, the code is
                  available
                  <a href=3D"https://github.com/quentinprieels/TFE25-462-rn=
foc-ofdm/tree/latency" originalsrc=3D"https://github.com/quentinprieels/TFE=
25-462-rnfoc-ofdm/tree/latency" target=3D"_blank" moz-do-not-send=3D"true">
                    here</a> (</font><font face=3D"Aptos"><a href=3D"https:=
//github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency" originalsrc=
=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency" ta=
rget=3D"_blank" moz-do-not-send=3D"true">https://github.com/quentinprieels/=
TFE25-462-rnfoc-ofdm/blob/latency</a>)</font><font face=3D"Aptos">.)</font>=
</p>
              <p><font face=3D"Aptos">The purpose of this block is to
                  detect the beginning of an OFDM frame =E2=80=94 specifica=
lly,
                  just after the Schmidl &amp; Cox preamble. I want the
                  block to forward
                  <strong>only</strong> the &quot;valid&quot; samples (i.e.=
, those
                  that are part of the actual OFDM frame). So when I
                  call
                  <code>rx_stream-&gt;recv()</code>, only actual data
                  packets should be received by my UHD application.</font><=
/p>
              <font face=3D"Aptos">My first idea was to control the <code>t=
valid</code>
                signal of the AXI-Stream interface: setting it to
                <code>0</code> when the data was not a &quot;valid&quot; OF=
DM
                sample, and asserting it (<code>1</code>) only when the
                data was valid. However, this seems to cause some kind
                of deadlock. My UHD application always times out and
                receives no data. Interestingly, when I output
                zero-valued samples instead of deasserting the <code>tvalid=
</code>
                signal, I can see that my synchronization mechanism is
                working as expected. This suggests the issue likely lies
                in my use of AXI signals or a misunderstanding of the
                RFNoC protocol.<br>
              </font>
              <p><font face=3D"Aptos"><u>Note</u>: my configured SPP
                  (samples per packet, here 200) is smaller than the
                  length of the actual OFDM frame, which consists of
                  thousands of complex samples.</font></p>
              <p><font face=3D"Aptos">So here's my main question:<br>
                  Given a continuous stream of data (currently
                  configured as packets with 200 samples each, where
                  every packet is valid), how can I output
                  <strong>only a subset</strong> of this stream =E2=80=94 a
                  specific sequence of continuous samples (potentially
                  spread across multiple packets) =E2=80=94 such that only =
this
                  valid subset is received by the UHD application?
                  Alternatively, how can I mark only part of the stream
                  as valid for the receiver, while discarding the rest?</fo=
nt></p>
              <p><font face=3D"Aptos">(For those interested in the code,
                  this behavior corresponds to when
                  <code>output_select</code> is set to <code>2'b01</code>
                  in the following module: <a href=3D"https://github.com/qu=
entinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmid=
l_cox/detector.sv" originalsrc=3D"https://github.com/quentinprieels/TFE25-4=
62-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv" t=
arget=3D"_blank" moz-do-not-send=3D"true">
                    detector.sv</a> (<a href=3D"https://github.com/quentinp=
rieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/=
detector.sv" originalsrc=3D"https://github.com/quentinprieels/TFE25-462-rnf=
oc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv" target=
=3D"_blank" moz-do-not-send=3D"true">https://github.com/quentinprieels/TFE2=
5-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv=
</a>)
                  , which controls forwarding of input data only when in
                  the <code>FORWARDING</code> state.)</font></p>
              <p><font face=3D"Aptos">Thank you all for your help,<br>
                  Quentin</font></p>
              <p><br>
              </p>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-=
freetext">
              usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"mo=
z-txt-link-freetext">
              usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------o2BLU2vq38CQzt96JmicBmMA--

--===============6492479491808221561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6492479491808221561==--
