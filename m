Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CCAA61918
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 19:11:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F256D385C7E
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 14:11:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741975864; bh=BP6zv5DLUjgVtFs76StzNWIvufPKpvOuKb/21my33Bg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oD+DLO7s4oT6yh9iu/KJphaen1AXwQdd88LWEKwe05wGgru/90ViUJcBExwftG6Lc
	 XkXrIaFvC64/hMNasaKfl63/ZY+YqkmDPBQu5ZFZqy2MEvu68hl4NX04VA4Lr0rL5l
	 bbHvrgG9o0YRn/PBO9EW3sDZE1z3v4IO8Dd9uKJpgnl7vhDhwOgxjSjpLAlQ3CwPlC
	 GL7OjEuix2aI43QQiclBvamJ9siG7JWks1O6VS6wXm1krQKBC5UzNLTXKiSNRfx70K
	 J4KuoYwE7t/lIN8otmmJWkbRO3fce+Kao0hstIoUlGStBT0gI0iuf020rGE5ACGMsG
	 wbTm3DTxSx3Wg==
Received: from MX3.LL.MIT.EDU (mx3.ll.mit.edu [129.55.12.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 492D1385C5A
	for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 14:08:39 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.mitll.ad.local [172.25.4.99] (may be forged))
	by MX3.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52EI6XuC194381
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 14:06:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=FvFtg+ROJaf6PQk66WFbBEUMUjTmY+Vb+cVniByKuGxwvu8zbcVfwUFGqM/r/r+SoFXM3sUbBhNwM1VD9Pz108N0sKtByWb9NzzCS5rIPVGcETDb9R6ymtvnnmHNnH3r9vEMovuVwdnOiE1O2y+oxkICdkgmM0cFkEymCWRnYWDH6XMOFGZZgFjBrIWBuyWHG6i+IfMHFtKW9h3JtBfd/MRTyCuIiDowNUcbJk3RXKPLFZJN7+YRXW5CSzFHblhXhm1bGm0NO9B19LVxwybiw3WvkGwMcWyteJIf6oWJHzP44HPGRVsCBwXlh2pCfW39FUgOrYxQFleg59MNyykcZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cb86b/BRclPJqB5Qno2wBR7nm+fhra2ihX7QUgdBbO0=;
 b=kDL2uWqPatAW+dd4+L5Ye31saC6yGoaceiEOHDHDg56QoBnR2GL+LXa8jmJxpy8yK0eOjevHK6diWzozH4SK8x0+2kwgouJoQnY3YZpapadSnf5bWtg6zYkO/7XWjQvDReM+dI+T0ES5NSb1bAwEyw+K9u/TpYfopMQIf0wdg7dMFEjx9PUSvqf7YkaCKtORQAAcmyduVbtXbVwD5K1H0OQUQxFn+TtDYNfXQ66kuf0EE47X6tYs+jUK5u3sn5MHK1FMU3g2P4Lp8EqfHBxBSuQfGPHCjT/RS/rNoYBnVEabLsL39pVIxTAZ8b/ExdJDV6YB9i/DmmlJhVRyYYdhwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: [EXT] Re: Trouble updating file system on X410
Thread-Index: AQHblO2gF+efuXDB0UuxoLN5a4RT3LNy7Quw
Date: Fri, 14 Mar 2025 18:08:36 +0000
Message-ID: <PH1P110MB12846BC1326A7A466811153F98D2A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
References: PH1P110MB1284B8E0B18F2CF195B4345F98D3A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
 <bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU@lists.ettus.com>
In-Reply-To: <bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN0P110MB1369:EE_
x-ms-office365-filtering-correlation-id: dbc212eb-15a6-4298-b155-08dd63233d53
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|4053099003|4013099003|13003099007|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VFMrYmZjVTFiSGwzVXlub1hHc21aaXliNEs4cVZkZlc5MnFmY3UvRG94eVZY?=
 =?utf-8?B?aW5SNFpsc1RsaGhSK0ZkUlVYcDJUMGlXZEdnNUhNby9hUTZ1STFnNVh2M3l4?=
 =?utf-8?B?YWJPNkpYN3RqTFlkWWhVNm9ETmJCdEhHM0N3bDVBWUhlanpLSjRWdmZQZSti?=
 =?utf-8?B?cnBEWlA3Mmt2dmZJV3VxZ3BrZXA0dlFxS1BMcUpMWVRpOFhma1RQdytLT1NE?=
 =?utf-8?B?S0tNalJsZjV2V2ZXdHNtdjYvVTN5b3ZvSTdpVlpCczFDdWJ4bWdCREk1K1hs?=
 =?utf-8?B?R0FKU3ZjaG04SEN1S2dUZTI3alFwZU92SFpDdVA1SmJaR0dsNUJlMCtLZkRB?=
 =?utf-8?B?cVZOakt3UHpjMG9yL25uTTRzN1VITWYzTUtYd0t5OHNnc0M1VGtvRWNEVXZs?=
 =?utf-8?B?TjJvMS95RUNSMFA4SHVRRFdNNU1JQTBOVSt4QzM0blYyMHdKRW4wZzVtc2lq?=
 =?utf-8?B?elZWV1dXZDd2VzF5amw4ZGZiYlRKeGNzbzRBMVNEMU5VaWZBVDdDaGxGbW5z?=
 =?utf-8?B?WWltd3E5NjhmMDdpUG90RGp6ZDFZc2pxbFFuTy9vVFVkeWpjUlNHdE9iblcr?=
 =?utf-8?B?c01zd3RnV2NzaXFlbkRUc1l5cDllejVqK29LMXBnVEZscUF0c0s4dFBXR0J1?=
 =?utf-8?B?OXNaM2pZaFRrWU5hbDdybURRczZuSEFLS3VLM0ZwR29QalVTWGtBajRPWUkv?=
 =?utf-8?B?bkowR2EwTGVDbzYyK0xEdEpTUG0zUjRURFhBQmxyMDd6M0lSa0twNytob1M3?=
 =?utf-8?B?RVF3TG4xbVNZZmZ1WnNKeVFUMWVoSXNCTk83UDRaM0xwUkJTdG1TRCswazVD?=
 =?utf-8?B?NmI5NEFDNzkyU2RvditVRFppaWRPN2tTNDAxRjAyZisrZ0hLY1ozdkRSakFv?=
 =?utf-8?B?alU1a0NSejVjTmlkT0NQRmJ3ZG9mOFhHemZQV1R5YkUydk80TlVjUWhIZk1M?=
 =?utf-8?B?TVJyclp0d1JNemdncjNPajNFeWJubXNrbW5iT1gvVmN1bEcrOUV6c2dIMlZ3?=
 =?utf-8?B?V2ZhS0ZvbHM2V0tCQk4xZ3pjRVFmVFFUejl4OG5KRTl2L0plZEdhcllIQllB?=
 =?utf-8?B?RkVkY0hTbWVFZlNSOEcwdnpZNktaMnMvWnZHNlhCUGVEdk1hNmViRmZsRWNl?=
 =?utf-8?B?VzRJWUNteE9VWlFNa1JhMkV1OHRsUERLOVhEdkwrQTVvbHBNR3NDcXZ1cmR4?=
 =?utf-8?B?azRnYS93N1lLdTQ2YmFXOTFMTlpaWnZLVWh3ZUdLSTFSTzRhM3A5L2RCdnNW?=
 =?utf-8?B?YTdKMkc0V2c4cUhjdW9TVHVReURUb0FhNnZqU0x6SzhaYkttbG1kaHZaU1Jx?=
 =?utf-8?B?V2pZNHBxQ04ybWhYVm5GNWo3TWV0YlN3M2Q5WDhVcGFHUERZa3BtMDkyTElh?=
 =?utf-8?B?MjEwcktWOHJQb3RLT2dISWQvOUhWMTRwKzhvQ05EaU5ncm4zdnpZZXZIWDJr?=
 =?utf-8?B?dHVaMDgwYnNad1lpZmhETWtGVkVnVC9WTjlZbU9UYjQ0bGRRSkhNN3VrN3Jk?=
 =?utf-8?B?ZlZhbzRjVi9MaCtHTnFaeFFNT0d2ZEdrak1xZkNockZ5R0pFU0NDZzRoMUV5?=
 =?utf-8?B?ZnpBY0Q3SzZ1S0pjd2NvdlREL0NJSWF0bVM0T0gvaVJnU0IzT0xQRXBVUGQw?=
 =?utf-8?B?M2dzTHl2bkwrTmhSKzMydzBYREhlZTMySTErYzFBK2dVTjJac0tTd0ZnWitR?=
 =?utf-8?B?dFlXb0xmcGhwY3JvK0ZsRlhPNi93bWU4ZjJNTEhueTU3MDNFd1RybjBtd1Rt?=
 =?utf-8?B?ZFZzOVNZNlRWR2Rwbk9LaWRWR09hTHNrNXJrZUpqallLSVh2T1QwL08xUW1R?=
 =?utf-8?B?WnN6YmlOY2RqUTRPbDJtcmRMQ00rY0lWMWRsV0c4U2lhYURjOUwwblpmSURn?=
 =?utf-8?B?bXZDMnd5TnZxclVTandxMFk2TTFGMVFWRk5VNHhvYjR0dGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(4053099003)(4013099003)(13003099007)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OS9CSFZpSXJqNkpGWE9wU3NoVWw5Q0xKRlh1dHg3WlpOVHpBYy92cTI2VWdU?=
 =?utf-8?B?SXRYQWx4dnNMTHZrd0RJcFhjSVprSG94SW1aakhGSnFLMXBFd211bG5hVFls?=
 =?utf-8?B?bGlGaUF2LzBncTkrWDR0Q01Ld2lCN043ZTd5Ynp2UEVFc0E5Z3dOTGdUWC9U?=
 =?utf-8?B?bGtBbXNYYzJBZkFrTTJEakxlSmVjZ1NmcUVNbDU2VUpDWlBsUGpneExnM2Rx?=
 =?utf-8?B?bkhnWHJVeHFaOW9YZlEwS2JIMnlsejZBeHpROTN6SE5OMEkzTVg1UUpXUmpE?=
 =?utf-8?B?eDRmUGVna2RsUzNQSVVkNnc1b2FXei8zVHBXMVAvSXQ1cGMzcGdGNnJhdmhV?=
 =?utf-8?B?dEV2VEw1RXFUT0U0bUNueHFaK0ZUSEJMc1RZbkp2M1pKQitRZ2IwL09RRUI4?=
 =?utf-8?B?SFVKWXVlUmYxQlp0ZkFqMXhzZkxVL0UyUzBlS1lrWUtOTzMveVFFc0VNMm5J?=
 =?utf-8?B?aTJDVW9ZWWNPS2FPTUx4cDVkc0RJQmIxTkN1MmNTKzVjRDdJSmdhMXBqNkxR?=
 =?utf-8?B?LzNVc2ZnbnByZE1taHd1eDFsNmNuZFc3NzJuU3NRbDRsN1ZCck1QaU1qbWFQ?=
 =?utf-8?B?eU9BOXE0bjhlTzVIOFd3RXNJZ1BBVWM1aWlJbDZEZGRGd25PNHoyMDdybGYy?=
 =?utf-8?B?LzhYVjZ4TTdGUVgyT3l2MStXTnc1SzYwRGllZWUweGdFRENFdlRIK1l6ZkFj?=
 =?utf-8?B?N0RnTWlVRjZCaXVMUkYvRDFtRk9rbjBKVnZEU0FTa1RnVlRibXdnNmRRbW5v?=
 =?utf-8?B?RTYralZ0clUyb1oyREo0QytRMVFQQ3cxYzVUWkNEVlk3bVZXTG1tSnM0enVz?=
 =?utf-8?B?QjBWeU1mUGw5b1JYOUJXRW04UFMxWWVyYVlTOWgyRTBYMFdlbzlpcUlwOU5r?=
 =?utf-8?B?WmoxeG5lanRsSE85b1R0TFlvYXkrMVl0MXZLZUFoaEU2Z09UR29mTU9sWGF4?=
 =?utf-8?B?bUxFVmtIWUpUUnh5U1ljWGtxRUlueGo2QlhvajJHeXlpTzFCRTk3UTRoM25E?=
 =?utf-8?B?WWNMVzZtMFZJWjRhRU9HZG5SMDh1VzhDWitFbEdpdElWQVJ6SE5CUUtyZGRu?=
 =?utf-8?B?cWF6ci9KMUxvMS9LOTVyczF3U0FXRFVFOGR1S0dES3FaOXRXRkxXRmdoRGtB?=
 =?utf-8?B?eU12VC9paHdVQzJ2QkNDelFmK1k3OHBPTWxsUHRZOU12SEdFOFIxaUlNWVlu?=
 =?utf-8?B?TzFZSjAwS3FmZ2lVSmtvM2U0QnVhbnh6VkY3YlhBVENlaEFncDF3VDVXUEtG?=
 =?utf-8?B?WW1abmo2eWhLM3h2cVhZK1F1OCtLNEFtamxxSHpTdXZoemp0RlZTSS9ZSFRP?=
 =?utf-8?B?SnNQNmpVNzBzV1ZxcWIrdkpjbDdhL1dadmVpZmhLbmk3NmpJQW1YcW9ISytE?=
 =?utf-8?B?TDlaZ1ZXUFhHWFVSYjBpK3dvM1F6U0dPVTFzRE84K1VTUWg1a0g0Z2dEZG1y?=
 =?utf-8?B?U2pzbmNnUVRUSXE0QzJnZUcyMTJoQnNHaTlKcUdTNmphaWlCRHRybjVrU044?=
 =?utf-8?B?Tm5QVUF1N2pNYm1maGVrQkw3VGtVSU5Cbmkzb0o2KzNISTZ5Uy83dVFnTzFL?=
 =?utf-8?B?enVXRFRNREwxOGppWmNydDB5RjJOZThLZVArRElBc1MwTUlLTUNua3AvZXZw?=
 =?utf-8?B?eGlzclBEKzh5U0lFUWJiU3FWT3JrbTNMR2xzRHZhMmttUGxiVHYxZm8zYmRr?=
 =?utf-8?B?d21Wc3pOQWhBRHhtTTZyR3dYRjZwWlphQ3dNSEdydmNHUHhzKzUyOW5VZi9Y?=
 =?utf-8?B?cmhYVE1GMmlxcWRxUWVHVndhSVhhRGR1Zng4a2p2anFMVEYxTFh4aXFkV3Za?=
 =?utf-8?B?ZzIydHRjRUUzcXJMV29EVjNKOW9sQ2JJRWFRRWIrUlZUeFhJRjZOVEVNRDhv?=
 =?utf-8?B?Y2JraHdPVjFXNjNaUEdpRVdIZ052LzlxZDRPN3B0NFVGSys0ZlVzM3cvZEpL?=
 =?utf-8?B?RTZPVjZjMkVZUmEvZ1dlUjFpaVVGYjVmYk9aRlVTZklwcDVzZU1CRy9EZkNu?=
 =?utf-8?Q?Bj7HyOmNAOa3HzBU9nj9oxBZUbZcKo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dbc212eb-15a6-4298-b155-08dd63233d53
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 18:08:36.0249
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1369
X-Proofpoint-ORIG-GUID: KNJUUtxxB6ahWFo4xPH6fGe3qk2S-T3e
X-Proofpoint-GUID: KNJUUtxxB6ahWFo4xPH6fGe3qk2S-T3e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_07,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503140139
Message-ID-Hash: EFIOLP3LV5MN5RIOVVXM3DLRV237TZOU
X-Message-ID-Hash: EFIOLP3LV5MN5RIOVVXM3DLRV237TZOU
X-MailFrom: prvs=71689d95da=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: Trouble updating file system on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EFIOLP3LV5MN5RIOVVXM3DLRV237TZOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1199165443564260310=="

--===============1199165443564260310==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0062_01DB94EA.92F576E0"

------=_NextPart_000_0062_01DB94EA.92F576E0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0063_01DB94EA.92F576E0"


------=_NextPart_001_0063_01DB94EA.92F576E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you!  These commands all showed that I was indeed running version =
4.8 now.  I hadn=E2=80=99t realized that I needed to re-flash the FPGA =
after a file system update.  Once I did that, the QSFP connectivity =
returned, and all is well again.  Thank you again for your help!  It is =
much appreciated.  I think the user manual should probably mention that =
(or maybe I am just stupid haha)

=20

John

=20

From: joerg.hofrichter--- via USRP-users <usrp-users@lists.ettus.com>=20
Sent: Friday, March 14, 2025 10:24 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: [EXT] Re: Trouble updating file system on X410

=20

Hi! Did you check with =E2=80=98mender show-artifact=E2=80=99 and/or =
=E2=80=98uhd_config_info --version=E2=80=99 which version is active now? =
What does `uhd_usrp_probe=E2=80=99 return? Please also note that the =
ethernet link speed of the SFP ports is defined by the FPGA image which

ZjQcmQRYFpfptBannerEnd

Hi!

Did you check with =E2=80=98mender show-artifact=E2=80=99 and/or =
=E2=80=98uhd_config_info --version=E2=80=99 which version is active now?

What does `uhd_usrp_probe=E2=80=99 return?

Please also note that the ethernet link speed of the SFP ports is =
defined by the FPGA image which is active. The FPGA image flavors are =
described here: =
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_typ=
es . This means that you need to load the X4_200, X4_400 or X4_1600 FPGA =
image if you want to use 10 GbE (QSFP28 Port 0 needs to be used - please =
check that you did not accidently connect QSFP28 Port 1). The CG_400 and =
CG_1600 FPGA image is needed for 100 GbE (on both QSFP28 Port 0 and =
QSFP28 Port 1).

Kind regards,
J=C3=B6rg

=20


------=_NextPart_001_0063_01DB94EA.92F576E0
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
class=3DWordSection1><p class=3DMsoNormal>Thank you!=C2=A0 These =
commands all showed that I was indeed running version 4.8 now.=C2=A0 I =
hadn=E2=80=99t realized that I needed to re-flash the FPGA after a file =
system update.=C2=A0 Once I did that, the QSFP connectivity returned, =
and all is well again.=C2=A0 Thank you again for your help!=C2=A0 It is =
much appreciated.=C2=A0 I think the user manual should probably mention =
that (or maybe I am just stupid haha)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>John<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> joerg.hofrichter--- via =
USRP-users &lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Friday, =
March 14, 2025 10:24 AM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] Re: [EXT] Re: =
Trouble updating file system on X410<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>Hi! Did you check with =
=E2=80=98mender show-artifact=E2=80=99 and/or =E2=80=98uhd_config_info =
--version=E2=80=99 which version is active now? What does =
`uhd_usrp_probe=E2=80=99 return? Please also note that the ethernet link =
speed of the SFP ports is defined by the FPGA image =
which<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>ZjQcmQRYFpfptBannerEnd<o:p></o:p></=
span></p></div><p>Hi!<o:p></o:p></p><p>Did you check with =
=E2=80=98mender show-artifact=E2=80=99 and/or =E2=80=98uhd_config_info =
--version=E2=80=99 which version is active now?<o:p></o:p></p><p>What =
does `uhd_usrp_probe=E2=80=99 return?<o:p></o:p></p><p>Please also note =
that the ethernet link speed of the SFP ports is defined by the FPGA =
image which is active. The FPGA image flavors are described here: <a =
href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_=
fpga_types">https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updat=
ing_fpga_types</a> . This means that you need to load the X4_200, X4_400 =
or X4_1600 FPGA image if you want to use 10 GbE (QSFP28 Port 0 needs to =
be used - please check that you did not accidently connect QSFP28 Port =
1). The CG_400 and CG_1600 FPGA image is needed for 100 GbE (on both =
QSFP28 Port 0 and QSFP28 Port 1).<o:p></o:p></p><p>Kind =
regards,<br>J=C3=B6rg<o:p></o:p></p><p><o:p>&nbsp;</o:p></p></div></body>=
</html>
------=_NextPart_001_0063_01DB94EA.92F576E0--

------=_NextPart_000_0062_01DB94EA.92F576E0
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
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

------=_NextPart_000_0062_01DB94EA.92F576E0--

--===============1199165443564260310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1199165443564260310==--
