Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F6A5FE9F
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 18:54:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4011E385EE0
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 13:54:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741888460; bh=UzUEfhS7DP1qlJe/kg7oBDJ596HDNlDKl/hlmjkNhPA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=w9u+c/Ol2RQtfMJeSCCkjZxpzxX3IDFgDWAtrTajzivHE1R05HguQlZh2BCnaY+or
	 ZPJs47OVRjeIEqgb3hmlnqTGrJ7WvgOb6S6IItiOhb10XvSPe5GFHRXgp3twLGkPnM
	 NpDEOn3W2+d3w7ps798Hm27nKmaE0/SalYeeI25WQO2sk8/jCcelUPN4tdW6i8xOGR
	 rMFEqFjOaIzwYxLwAwu8HfHsTCG8pcvEIjqViI/pSsMptGGSLcbQZtm7f/4yJYZRRT
	 GjOeYCsTPpn43ON+PJdxLlCW2Yd/2aoQreiC2bXktHo3rfgmPNeOxqClKbzrjimdIw
	 MccBOB1A8VqVA==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5714D385DDA
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 13:52:41 -0400 (EDT)
Received: from LLEX2019-02.mitll.ad.local (llex2019-02.mitll.ad.local [172.25.4.98] (may be forged))
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52DHnsG1146317
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 13 Mar 2025 13:49:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=0oMk4wRrdbWwUkKFZkK+cPjiNh/cXtpd4Cj204r20QJX30r00Xr0k2e/jfUZrPApGF9NOXt5DCetckZUp7PQlZD7LMr6/5XtL9TijlKx+2CF5Mq2HYazqzDJGVZpR/6Qzucf571xxa2n0AvejwgLAFAY5I4DUktUIPfzqFMHcmRxfEgBf1ZJOvHKdRKjXY8FcWRTxWxXjqYm1gHs0zAS+T9LTBhMYk6mCsL2Rq3eAUVhVc2SeCfSjnxRJ7rpWUU5UtTHbwA6PsFtIz7Q9RE9mac4lSmhm3bqzLixEtfpjbJptvmuwxNkfz0Thy9nH8L9XtwUi3+aQYYCsh/+22/LcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lWOOZtFmaQDQJJ+2REbhDx8l+OJac/cFH3AfDTrRjSc=;
 b=Zdc+5yCHgwr4lLQSH24c+OvhSj5nkn+tyJfkQY/JIA/kt41eeY0gCkEjmvJzz0L78EUsvHQN6Fu8UsXwj0FYL5HYt/4/38YO1DSDi5oYYKpxSdLE1Wy4Mi2Z4j81TetsjFD3b2KGyUhsShZlN0BZdmFq5IfXXB6yFQVUvCQgqMq/4B0wGo4ujMyzVu0mMnwnQBu3L5/ibLodJFAyB0UaT4iNL9RBiLV38/cyycEuXBj6QpG1kV+yFp3yW6q7Cv3bIyQJRX0DO/hZUIvPq8srhJXn2D+/jx4wJdqFj7+MAnYLdHY2PK5vnCJLuDN8IJlS6SdGZuhfsD5acX8rO0Bz2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "joerg.hofrichter@emerson.com" <joerg.hofrichter@emerson.com>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXT] [USRP-users] Re: Trouble updating file system on X410
Thread-Index: AQHbk+wdjYpnLwyhLkKeCke8N+nUNrNxWCzg
Date: Thu, 13 Mar 2025 17:52:37 +0000
Message-ID: <PH1P110MB1284B8E0B18F2CF195B4345F98D3A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
References: PH1P110MB12849CFF97D7E5BAF1F2DA4A98D0A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
 <D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE@lists.ettus.com>
In-Reply-To: <D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|PH3P110MB1956:EE_
x-ms-office365-filtering-correlation-id: 7e02bdb1-ce68-4ccb-ac0c-08dd6257d7ba
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|8096899003|4053099003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QVhtckxLa21tSmtUYzZhOGVmdHNOL2VzaGZ1RE9uN0xhWGxwTmdiWEhoUk0r?=
 =?utf-8?B?Z3VYcEhLOHV2cEV0WnZWRy83SWpteGJ6ZzJJd0c1dTBMc1B3SkE0SkhjVHVZ?=
 =?utf-8?B?ZVkwSm4wVTFLTHZCcTVyZE8xNUM4d0QyaXk1MTJiNE1KanZDVkZqWXJpcTdw?=
 =?utf-8?B?TTdSVjFwZjFmZWxKek9nWXd3UFBWeG5XSk02alF4V0lrQ1ZJTHdmYWNkMG5a?=
 =?utf-8?B?OHd2WGJSMEdpR3pPQk04b3NSaEc2SW5QSHhzMXlvRGYwMnA5UXA2RlhSY1Zm?=
 =?utf-8?B?d2dDTXA2N3FVL2h2a05JZ3gxN1QvNXdRWkRlTkFsbmtiZmZtcmw5Z29ZcWEy?=
 =?utf-8?B?SHNHZXd5cCtwNTBiUXFzdjd6NkhMZDlEVjFMYU42VzBiNGlvYWZreE1DZE9I?=
 =?utf-8?B?RDFBVFFYTE5LVHAySk9KRktkTVhaeGhncDVDSGVYcnMxTGlaZXMzbW1raUFI?=
 =?utf-8?B?N2E3ckV1VzR5Sk1TYVdYempoUUNHYXBJZUNST3h6Zi8yNjRNdGRteTZaUnRX?=
 =?utf-8?B?YVZjaTkzZEs4MEY5ZHVOdmVHUUlNNTc1Z2xncmJQM2tpeW9RWi9IRFdKQm02?=
 =?utf-8?B?WHNLbGsrV3dzaDZIYUp5U3pSdVFIL09sam9uMUVuQjNla01PQmpTMjhWTWtG?=
 =?utf-8?B?Q2pBVEZNa2JCYlNGcmpwOUM3UjJJWjFTNlJHamo3aXdNV2RrRlg3YmpqdUV0?=
 =?utf-8?B?V0pUOEZkZ1dCaS9Udzd5UlNwOVVpZFJWTTFSTE10M0U4M3krNzMyT0lnanRG?=
 =?utf-8?B?YXlyelRINjRpN1FMdnNJYXBuQVlUbXZpVytubzZiMXNmaXM2TjRWb2ZZbm5Z?=
 =?utf-8?B?ak1GMklwY3pSRjRaNyt3TEdEU3BqNmZaY2M4dXArQkcrRXovbnlnMmJQQUh1?=
 =?utf-8?B?bjJQS3plU3prWVZ1Qm5zbEdsTzA1cWZLUHA0TnBabytCbTlOOU5hZ1JPYkRN?=
 =?utf-8?B?amJYZGlkL0g3L0xLRWNQUm1qV1BvaG1YMEhCLzl1dEtWNFV3RFVZR2RkMGxk?=
 =?utf-8?B?NHZGeXhkeGN0ei9ESkczOThZUCtrRzFXZ0N4RjFpcmZncnR6S2kvdjFJQU44?=
 =?utf-8?B?ViswbksrNmZCWnVnY1cxUkZJQUVEM1FaOGM4TkNwN3BGd3pOZEFDY2VSR0VO?=
 =?utf-8?B?QkhlRmU2NXgyWlQrWFZVMndvQTE0OG9Bem1aem9Mdk1oMVFhT29JL2NNR2h0?=
 =?utf-8?B?Z29HK05hUjJwL1Z2WmNxTHlXcXdqMWc2S21tejYxb2tGcHBaVEMvT1MvdHJy?=
 =?utf-8?B?VktaU0d6MVVETUUvZi9XUnpNY1c0d2NIb1NUUUlMN1o5VG82Rjc0dzUrSGZG?=
 =?utf-8?B?aU9TMlVKM1BlSmw0SlplVkdPMEFHaG9EK2pOcTE4RVFIM3FzRWFJejNiMFN2?=
 =?utf-8?B?TWxCSzA3UDJNQlpISVh3QW5MSXhmV2ZZb011RU9OTk41SHZXVkEzWmZpME95?=
 =?utf-8?B?dStWbGFGK1hmaE0rWTFmOEF6TWV5Y0ZxZnVWbEZ3dDQyRktQSmo5c0R5Qm50?=
 =?utf-8?B?bFJOZXpHYXV5bXBNSkFOalBncUZXbkJiY2hsMWhGUkJCTXhIeExzSkJlUjBB?=
 =?utf-8?B?M2F3cy9lU21FRWkwVkhMeFd1dk1ReE5BdHZyRmVUTnE0NlAyaC9LeWIyUVFn?=
 =?utf-8?B?SmVJNnB3MWwweUJxaTNBMWVoQklESEwvQ1lEeU80eGZkb1dLNFpvVG5qanZt?=
 =?utf-8?B?M1hlQ2NkNzZLK1N0bHpRbDlsWjVpVS9pakxldUN6cTB4VjBjVGtmNkNhUWdO?=
 =?utf-8?B?WFUrUi9naGZEOGJzYUxQaDhnaVo4eURQZkJYVk1ZUmdUUlFBTWpQNUJPa0c4?=
 =?utf-8?B?UDFtUmdtdGNYWmpKUDBuV2krVUVVTXBtc1VBcEN4VE4wdTBiUHJFVHZiWUkw?=
 =?utf-8?B?dTFNTFBDeW9vWnU4UzBDRkg5L2dRZk9mYytMaGF3clMxWHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(4053099003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zzd5YVdGYzlNME1qMW1FcHJCYkpNYlNjRDYvWEYrR3ArOUFHTmt3ZmR6QjN6?=
 =?utf-8?B?TVduU3VUWGhmelVCZCtWeUdyVVpBbzI5WEc0N0EzUm9ndU56V08wdVg2cHFz?=
 =?utf-8?B?aVJFdHZQcm83YXc1R3VtSGsreGtFWjV1eFIzZXl6dTJTelB1dGtDVldTZFNC?=
 =?utf-8?B?c3RzaHZwL0x4a2FHU2tVNHEvYS9Cbmoycmg0UjIweml1bUo1bVRJZFJJMURJ?=
 =?utf-8?B?NVVCc0lweWpLTmQ1akxOYWJhaDFYd0lNMzFGNUM0a1VQMGVLRXVaTEcwU1JC?=
 =?utf-8?B?Z1NKK0pmMmppU3R0TGZwMURvOGV4N2xTcjM3T0VFS0c3alo2NXJxTVFXSjQ3?=
 =?utf-8?B?cVovOEU1R2JZRWorM0JteEVuMG5WUmpreUpXbys1VzNHaXNEVzZwUm9HV1pF?=
 =?utf-8?B?REFLWlhTOExDTXc2V1N2aTFqN2tPdENsdnRUaHNlbnVJNWdhUEZGUHI2MnlU?=
 =?utf-8?B?QmtHQThjR1RNUHlmMHF5cmpzaExDYTE5YXVvSG9XVW1nZ0EweGNNb0UyVHBz?=
 =?utf-8?B?YXJBdTR5OTRzTm9YazVyMlNQL0JGcUZQL2NteHYzT1dXWnNvYjdBY2tsMis0?=
 =?utf-8?B?V1pvK3YzM2s0RTJzcVEyekFvWUtiY3lwanp6MVRUTW1Qak5BVnRSRVpEQVlX?=
 =?utf-8?B?ZEhGdjd6anFVVjRPU3FXeGZURTZhYVVOYUg2WW81aUlEWUtiZG9QSDlHczFC?=
 =?utf-8?B?dkVoK0pZTjlic3FvVjkyOVlUYU9LZFNRaHdNOFRyeVVwYjFrR3htOWppY0ta?=
 =?utf-8?B?eWVMamc4UVVCSUpBQk9Pb0N0NERUWUx0cXFqc1pGYWpUb1ZtYVdkaWdwMUNk?=
 =?utf-8?B?ZHgwN1pIVEcrYzhSK3IxOG5XVmVCT3Q2QVRCUms2bW8vUUt0UzhJcUcrUjBV?=
 =?utf-8?B?S05iSWJOdlBnOWNzL0RpMG83NER5cHN6Q2ljWEllTTQvK0huYkRZT1hmc01C?=
 =?utf-8?B?NFhnazJTNjZSbDEyWTdqMWRadUJkak5ENUxwM1BQS3FnanA3SFpKWXhyNlVS?=
 =?utf-8?B?MXRFV1RCNmMzdkdsTE8yN0NoZWVNV3hJdzY3WmhrdW13V0pzb1VMZU5pOUJL?=
 =?utf-8?B?YzhCUHNmUW1CeHNldmxtOFVzYXF4K1p5V1lWTjVaU2ZEMFJXZUZxd0hyQzFZ?=
 =?utf-8?B?bzhITCs5YWlPeEZBSkY2RTRGVG9IZHlKMUVuaXp4Y24rVFNNYnJXN1BDN1VP?=
 =?utf-8?B?SWg1UVMxYjIyT3M3ZGdGRWZPcnJQNWJQelcxVUVOQ1ZQaVdlRVVzMUxLTU12?=
 =?utf-8?B?RTErdmU2dUh5STVPaGJ1Z05GNkViY2lIYnhnby9rbUxsS2NJOUR1Wnd1emhG?=
 =?utf-8?B?UUVvNVZId3pSMnl1Z0hxZU45R2RGbVlHWWRjQ1hDQmVySElTQkN4bDZ5a3NJ?=
 =?utf-8?B?UjR4dHBQVjVNRVJaQ0RseURtc0x1dUhxV2NFNTZaZFZaKytJbGVBK1NDa0l2?=
 =?utf-8?B?MXBrbU9tOUFxVmpvNUt0ZG5LM1U2aW1LL0E2WjZZMHBEQjByOWMzM2ttc1BJ?=
 =?utf-8?B?bG93dloxeUUwakNtTzlqNk01bGttdUpZd2REazVMNWt3Tnd3NUZITlNFODUr?=
 =?utf-8?B?b2xqUm1PQjViRm9JQ2V2SGRXREhPRkdrbVJMYy9VTWg5REZmNk9WUE9LVVRL?=
 =?utf-8?B?clNTYk1qcFBPbXl2M0tvNEJCVGRicFZQTklneVVIK0pyVXAwcEpvVXBXR29q?=
 =?utf-8?B?NWthaWgrRW9OYm00U1RRMjdKT3cwR2RGemRUNFB3WlpSRk5XdWR5YlRDNXp0?=
 =?utf-8?B?OGFlUzRKVXBNTERET1VPQk1qcUtoL1dFRWxIeFZPc3o0NDR1V0FUdUdydHVS?=
 =?utf-8?B?VTYxVmFEUlFrZzBKVjk5YXNjd1BjdllGNE4wQmpkN3dJNUVnSUhMZWh1QWdz?=
 =?utf-8?B?SmozaXFPUkRLdVAwS1RaS2wrdzIrbEVlWmttSEFsSk5UcHBoUmdlMFpxV0Y1?=
 =?utf-8?B?VWRtT0Z6MTNqdHRReUVCWnAvTE80WWJUL0R4S3h5NmZ1b3MxdjExcUhEMDZW?=
 =?utf-8?Q?hh/iWlkuTk1GLi9JBAwcl6rAUZN4E0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e02bdb1-ce68-4ccb-ac0c-08dd6257d7ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2025 17:52:37.6867
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3P110MB1956
X-Proofpoint-GUID: YVG_2i-J1JdKFbFaqT2oQ4gHdpxeVGuw
X-Proofpoint-ORIG-GUID: YVG_2i-J1JdKFbFaqT2oQ4gHdpxeVGuw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-13_08,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503130133
Message-ID-Hash: 7X66JEHAG5QFBNUWPI2UDCUU7HWW6M7A
X-Message-ID-Hash: 7X66JEHAG5QFBNUWPI2UDCUU7HWW6M7A
X-MailFrom: prvs=71677e6e0e=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: Trouble updating file system on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7X66JEHAG5QFBNUWPI2UDCUU7HWW6M7A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7499446182597137560=="

--===============7499446182597137560==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_01A5_01DB941F.2D65E0B0"

------=_NextPart_000_01A5_01DB941F.2D65E0B0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01A6_01DB941F.2D65E0B0"


------=_NextPart_001_01A6_01DB941F.2D65E0B0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for helping!  I tried your suggestion, and it did  allow me to =
try mender again.

=20

Unfortunately it still did not work, and now I don=E2=80=99t get any =
QSFP network connection.  I think it may be because I did a:

=20

mender -commit

=20

command before rebooting this time.

=20

So then I tried the other method you recommended.  I didn=E2=80=99t get =
any errors from the dd command, so I thought it had worked, but when I =
rebooted, I still get no QSFP connection.  There are no green lights on =
either of those 2 ports.

=20

Have I bricked the X410?  Is there a way to recover from this?

=20

From: joerg.hofrichter--- via USRP-users <usrp-users@lists.ettus.com>=20
Sent: Thursday, March 13, 2025 3:47 AM
To: usrp-users@lists.ettus.com
Subject: [EXT] [USRP-users] Re: Trouble updating file system on X410

=20

Hi! When you see the error =E2=80=9C(=E2=80=A6) Artifact Payload type =
'rootfs-image' is not supported by this Mender Client. =
(=E2=80=A6)=E2=80=9D then you edit /data/mender/mender.=E2=80=8Aconf and =
set the following content: { "RootfsPartA": "/dev/mmcblk0p2", =
"RootfsPartB": "/dev/mmcblk0p3"

ZjQcmQRYFpfptBannerStart




This Message Is From an External Sender=20


This message came from outside the Laboratory.=20

ZjQcmQRYFpfptBannerEnd

Hi!

When you see the error =E2=80=9C(=E2=80=A6) Artifact Payload type =
'rootfs-image' is not supported by this Mender Client. =
(=E2=80=A6)=E2=80=9D then you edit /data/mender/mender.conf and set the =
following content:

{
"RootfsPartA": "/dev/mmcblk0p2",
"RootfsPartB": "/dev/mmcblk0p3"
}

Then you should be able to run the mender update to UHD 4.8.

If it still does not work, another option would be to expose the eMMC as =
mass storage device to the host PC and flash it from there (similar as =
you would flash an image to a USB stick). This is described here: =
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_accessing_emmc_us=
b

Kind regards,
J=C3=B6rg


------=_NextPart_001_01A6_01DB941F.2D65E0B0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Thank you for helping! =C2=A0I =
tried your suggestion, and it did =C2=A0allow me to try mender =
again.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Unfortunately it still did not work, and now I =
don=E2=80=99t get any QSFP network connection.=C2=A0 I think it may be =
because I did a:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>mender =
-commit<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>command before rebooting this time.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So then I =
tried the other method you recommended.=C2=A0 I didn=E2=80=99t get any =
errors from the dd command, so I thought it had worked, but when I =
rebooted, I still get no QSFP connection.=C2=A0 There are no green =
lights on either of those 2 ports.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Have I =
bricked the X410?=C2=A0 Is there a way to recover from =
this?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> joerg.hofrichter--- via =
USRP-users &lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Thursday, =
March 13, 2025 3:47 AM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXT] [USRP-users] Re: =
Trouble updating file system on X410<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>Hi! When you see the error =
=E2=80=9C(=E2=80=A6) Artifact Payload type 'rootfs-image' is not =
supported by this Mender Client. (=E2=80=A6)=E2=80=9D then you edit =
/data/mender/mender.=E2=80=8Aconf and set the following content: { =
&quot;RootfsPartA&quot;: &quot;/dev/mmcblk0p2&quot;, =
&quot;RootfsPartB&quot;: =
&quot;/dev/mmcblk0p3&quot;<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>ZjQcmQRYFpfptBannerStart<o:p></o:p>=
</span></p></div><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D"100%" =
style=3D'width:100.0%;border-radius:4px'><tr><td style=3D'padding:12.0pt =
0in 12.0pt 0in'><table class=3DMsoNormalTable border=3D1 cellspacing=3D0 =
cellpadding=3D0 width=3D"100%" =
style=3D'width:100.0%;background:#D0D8DC;border:none;border-top:solid =
#90A4AE 3.0pt'><tr><td valign=3Dtop style=3D'border:none;padding:0in =
7.5pt 3.75pt 4.5pt'><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 align=3Dleft><tr><td =
style=3D'padding:3.0pt 6.0pt 3.0pt 6.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.5pt;font-family:"Arial",sans-serif;color:black'>Thi=
s Message Is From an External Sender =
<o:p></o:p></span></b></p></td></tr><tr><td style=3D'padding:3.0pt 6.0pt =
3.0pt 6.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:black'>This=
 message came from outside the Laboratory. =
<o:p></o:p></span></p></td></tr></table></td></tr></table></td></tr></tab=
le><div><p class=3DMsoNormal style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>ZjQcmQRYFpfptBannerEnd<o:p></o:p></=
span></p></div><p>Hi!<o:p></o:p></p><p>When you see the error =
=E2=80=9C(=E2=80=A6) Artifact Payload type 'rootfs-image' is not =
supported by this Mender Client.&nbsp;(=E2=80=A6)=E2=80=9D then you edit =
/data/mender/mender.conf and set the following =
content:<o:p></o:p></p><p>{<br>&quot;RootfsPartA&quot;: =
&quot;/dev/mmcblk0p2&quot;,<br>&quot;RootfsPartB&quot;: =
&quot;/dev/mmcblk0p3&quot;<br>}<o:p></o:p></p><p>Then you should be able =
to run the mender update to UHD 4.8.<o:p></o:p></p><p>If it still does =
not work, another option would be to expose the eMMC as mass storage =
device to the host PC and flash it from there (similar as you would =
flash an image to a USB stick). This is described here: <a =
href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_accessing=
_emmc_usb">https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_access=
ing_emmc_usb</a><o:p></o:p></p><p>Kind =
regards,<br>J=C3=B6rg<o:p></o:p></p></div></body></html>
------=_NextPart_001_01A6_01DB941F.2D65E0B0--

------=_NextPart_000_01A5_01DB941F.2D65E0B0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEt0w
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBGjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMjEwNDE0MTEwMDAwWhcNMzIwNDE0MTEwMDAwWjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS04MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAttKiUZi+ezd6XR3/UBsFtO/XphH8
qPCL1l7Qjq9d3pew3w9mRG5+16+VG4OkSdbg1/C/9G7Qf4E+b1UBcpRT7dMWQ4+czMj5hzJMX8RL
7tMvwgKyNGvIg6WcLm11NY0r10sesBaYVwerNQrkE66PBfTdFq4x62r7CO1GHrnpkzhIpn9GghsA
xeY5V2Z+NrkglNXTaSfUrsr1Did6A6FaOHqUfX02zXd5Rip5vvLK6y8eJlYcZpRZYDsP6wwPuSgv
8lDa/c/28y5egk1EEG3wIBXedgv+mnZ8ZIoAIkhreCZvWrAp8PLotMBY2YoyWVKmpoebfXuaUBB1
0bVHp491wwIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUB6lj96pk
z9L6G8h9ATWJ3kgVtGswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
KoZIhvcSAgEDAQkwDQYLKoZIhvcSAgEDAQowDQYLKoZIhvcSAgEDAQswDQYLKoZIhvcSAgEDAQ4w
DQYLKoZIhvcSAgEDAQ8wDQYLKoZIhvcSAgEDARAwDQYJKoZIhvcNAQELBQADggEBAJOSfJ2oJKi5
AR/DhGv15Y4etfy0fcTVlciAhmBemrvOA7UVTyn/hSTFR+C1aZLM5A9Y8173YIT/JE06cb+dszxW
OLu3eg1TIU/bhkkE6Z1WvDK1fh/T1qcv80BXTG53bGoGVy3n+Djp2w/UJRS5/ror02xW9pcwySwV
4YcgmlTtVyEmfCwfxi+BBOnELZGUWE3O01a44zd81XGS/dMgL504c1lLV1Vs25YmLvZhAe4pFjF+
FSBBdwz8zhIdaqa4BMuE3JJaUFtRdNs8nLR8phUlxhstUac70Shv6FE8PrIFxwkokA5zyxVW0LD3
dpWFLtx18GWfpXatqRreMspTGe4wggVAMIIEKKADAgECAhMmAAB0FHJQAiNxhwPuAAAAAHQUMA0G
CSqGSIb3DQEBCwUAMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0
b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTgwHhcNMjQwODI4MTcxNzUwWhcN
MjkwODI3MTcxNzUwWjBeMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEPMA0GA1UECxMGUGVvcGxlMR0wGwYDVQQDExRNYW5uLkpvaG4uUC41MDAwNTczOTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALrC1gG2GRgmq3F4jYI2jDiDa3ovinQzeFVrIjG6
Sx3dm4nD6Kug5esO0aen+GgXj2gxFmfERh7FiTulHxnU1OvUU10KRRljWVeux137+hvRel8DzsUd
0+/tAT9VSWXM9u04LhuqIZvdP9s1K3gJJWXljVSWMWPtbOnJf3N9dfPP+j9BS5DPJa9yxVQy3aXw
nbVuMXMvKJU6KRMb2xZfL0PVR450g7FZTGky3vCYhVTQwit5DjUtdiRDJwkcVPCFD3vjDuOvvEfA
wPxhPMpALil0ZPpx7opMDXw/Oi1N4HjwGyjpNPm6iYfbme89SvP6lyyY7LcOAq0dj05h9BomtUUC
AwEAAaOCAgIwggH+MB0GA1UdDgQWBBQ92yslVCtoz/v7KCCv9U1uOiFQ+TAOBgNVHQ8BAf8EBAMC
BsAwHwYDVR0jBBgwFoAUB6lj96pkz9L6G8h9ATWJ3kgVtGswMwYDVR0fBCwwKjAooCagJIYiaHR0
cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9sbGNhODBmBggrBgEFBQcBAQRaMFgwLQYIKwYBBQUH
MAKGIWh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXR0by9sbGNhODAnBggrBgEFBQcwAYYbaHR0cDov
L29jc3AubGwubWl0LmVkdS9vY3NwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIOD5R2H7Kdm
hq2HFYPq8EWFtqEfHYXL3jKH/4pzAgFkAgEKMCIGA1UdJQEB/wQYMBYGCCsGAQUFBwMEBgorBgEE
AYI3CgMMMBsGA1UdEQQUMBKBEG1hbm5qQGxsLm1pdC5lZHUwTAYJKwYBBAGCNxkCBD8wPaA7Bgor
BgEEAYI3GQIBoC0EK1MtMS01LTIxLTc5MzUwNTg3LTg5NjQxNDU1OS0yNjYyMDIwODY3LTU3ODcw
GAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMA
aQBnAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQCIrJL/8d+l5D4LQY4U+4mDK+unMLeR1LWmXe4I
5uzcO3SPnQAD09noV67LAidJX/ctA+1dJ9JtZJr2gm1J59IGXVj2GgsvXHuPQnkwQ3mkA2abZeIM
xkCbtpobkXwLqYNblFnK2LXqKWJtFZB0XhsqEe82LUOZD3BIwMw9O/erwrmg5LQCdIVm12wK9M56
mVcCpr2M89FD5e3tQbN6eVQs5NOUjVVMp81Nktw0Qiv6royWJEGjgjUnS2mtDAeoo7lM4D7WmYBh
7yc3lv03mM3DpfbKTJN88pDEM8vzSkrx55qHq5a6MmW1lZe+WRKVyRr9j1SQOisYiO23+uEWUvVx
MIIFQzCCBCugAwIBAgITJgAAECJOdYPN2Sc27QAAAAAQIjANBgkqhkiG9w0BAQsFADBRMQswCQYD
VQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMw
EQYDVQQDDApNSVRMTCBDQS04MB4XDTIyMDYwMjIyMzczOFoXDTI3MDYwMTIyMzczOFowXjELMAkG
A1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDzANBgNVBAsTBlBlb3Bs
ZTEdMBsGA1UEAxMUTWFubi5Kb2huLlAuNTAwMDU3MzkwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDiLeA2HIJNt4cXo1HWQYhtfFhH8UJ3+B8zZrklpGyuwmwOsJ0GPdo6t/pv74EltAZ2
6GAbq7N80SF4WFpGTt8GURp9e6Ywp1SyKM95nC7bI4hYRfGSpHTdjXAVsRJ77SiDSdp1BAf4DLf7
PeQN6GmKQxknXdOE57IEmRBsCoByu8ewvM8FBUXBkNxagvRQ/h9+2522Am6a6RAzuqZ/tDr3LPGO
FlhmEi7nmkcUoYk65mig8O3W2p1z9xjctQBiH87UBGk6i8nfD2uLVURl3cIZJFfwrPmjiBiYp2Zt
+UrrDO/J5j+uSNcRbWsu9L3ifn+M3SVOsT9IdFKhvy9vWB2ZAgMBAAGjggIFMIICATAdBgNVHQ4E
FgQUMHtII8XfmF4U5wlcHtHiyJwNk5gwDgYDVR0PAQH/BAQDAgUgMB8GA1UdIwQYMBaAFAepY/eq
ZM/S+hvIfQE1id5IFbRrMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVkdS9n
ZXRjcmwvbGxjYTgwZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1p
dC5lZHUvZ2V0dG8vbGxjYTgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUvb2Nz
cDA9BgkrBgEEAYI3FQcEMDAuBiYrBgEEAYI3FQiDg+Udh+ynZoathxWD6vBFhbahHx2F69Bwg+vt
IAIBZAIBCzAlBgNVHSUEHjAcBgRVHSUABggrBgEFBQcDBAYKKwYBBAGCNwoDBDAbBgNVHREEFDAS
gRBtYW5uakBsbC5taXQuZWR1MEwGCSsGAQQBgjcZAgQ/MD2gOwYKKwYBBAGCNxkCAaAtBCtTLTEt
NS0yMS03OTM1MDU4Ny04OTY0MTQ1NTktMjY2MjAyMDg2Ny01Nzg3MBgGA1UdIAQRMA8wDQYLKoZI
hvcSAgEDAQgwJwYJKwYBBAGCNxQCBBoeGABMAEwAVQBzAGUAcgBFAG4AYwAtAFMAVzANBgkqhkiG
9w0BAQsFAAOCAQEAUm6dgNqqOpKFIP1wYnJ8sjYG9LFLt9gXxmONE/bDxL7BRFQP9CWlX53fFkht
r5h2N6TUTgX2882jNo40QK0tVS1mOEldy46xohaLkvD165YHGbueb1jJccEd3WtfkSbuXcWODyYj
MnuAFbeq94iOO9qW7GFbvJYj5cvr/ytEJSH6HuGweBHjy/Kc9Cmge6U74GMznltMpAo7qzNyhYug
H2XHCt7jUgwzh6JzjqRSGFOfc3WPl6BxPyIrqD+O1s/KBvbxWHHpoQE+GJwNeaFyfKEB5tweLQGM
kHwzxWNPJzeCKbNgdr7LGOFRV0Dztd7L+scysXByuRvBvoAfEKP3djGCA4owggOGAgEBMGgwUTEL
MAkGA1UEBhMCVVMxHzAdBgNVBAoMFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsMA1BL
STETMBEGA1UEAwwKTUlUTEwgQ0EtOAITJgAAdBRyUAIjcYcD7gAAAAB0FDANBglghkgBZQMEAgEF
AKCCAfMwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjUwMzEzMTc1
MjM2WjAvBgkqhkiG9w0BCQQxIgQgy57pkjkFC3eAUE4KRY2Bvm03GDMxAhqKQTSQNXSe+AcwdwYJ
KwYBBAGCNxAEMWowaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS04AhMmAAAQIk51g83ZJzbtAAAA
ABAiMHkGCyqGSIb3DQEJEAILMWqgaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNv
bG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS04AhMmAAAQIk51
g83ZJzbtAAAAABAiMIGTBgkqhkiG9w0BCQ8xgYUwgYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFA
MAsGCWCGSAFlAwQCATALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAcGBSsOAwIaMA0GCSqGSIb3
DQEBAQUABIIBAH5I6QT5Ya3lg/5em8NTFcfsK36BTTQ2AxfqEteB4SSKiKDKZzIygMjvaKiYJQN3
PQgB2GdRQNOWheG4FO5eNlovRcWQCI+16XS+6gzaSA7kmrXkjA2tj2mb4FJ9jBSn+1mRVJ6/h1O1
6huZXTAu/1fp0Ie6ny8skrMC8EDWRLh00cs+tkzaiIK7aNo1GS8Gjl+7oBp2ycs+ceJCvv6DLGJJ
2XmssZjAlaXYWncryVEGldv8/kA8OvSEe7nTS/b5suIoN67su9LWPbY++pHt6NDFhG1GWP0oF7LT
KyA9z+aBA06IL7WRJYxXM2Hg4lhlCSh7K3qsOYXANQN7oTlkYpEAAAAAAAA=

------=_NextPart_000_01A5_01DB941F.2D65E0B0--

--===============7499446182597137560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7499446182597137560==--
