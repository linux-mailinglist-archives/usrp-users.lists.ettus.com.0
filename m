Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 423BBA73E96
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 20:32:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D5DE38561B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 15:32:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743103938; bh=oW0zvyw4W09kplHVc5FLks5cWu4gpBTzsqS5o1a+el0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vOUADSSwGsXU5VGaH5TqzOFfqfCVZHrrNxwk3oRPmQEjnuRAAFwqcDNds/BFg6Fkb
	 8LwwNIDFlsfh8QOYwEIXqo3motmXKJa2jCQ7XJ6W51C0CTGKndHbRt8XX+Rj4o4obU
	 2PAGFcDbDTwQt0VcQ4t890tuVixUQeXNGec780Ot+IQ6iseayPfUzCMSTFX4PRc0G3
	 +DvmEkm3Bmj3bC9qqSVR/jTu8vpGHSq7Emg9YSuT5OR068/Syo4+AaT/OqS/cUp5Uf
	 VfBgto1750bXmzRtJAdSmdbGzqlq/F9jMqtprDv2BowsiNS+NFN/P1AwnBeDglWYt0
	 5FWUfyZ1UdcZw==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A35B83830EC
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 15:31:56 -0400 (EDT)
Received: from LLEX2019-01.mitll.ad.local (llex2019-01.mitll.ad.local [172.25.4.97] (may be forged))
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52RJT8Qt005980
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 15:29:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=jBMnaPf1p9CfB4GhJyCw4W1puk9AxJeaSdHcFaDcVLWnI/7QzPvu1EzjF72fwGeMttUcUgBjvIr1DNMtQ/OPPWYtAALvvGSmXZP7h+xl+oeM1zHYl97sroXwRoNUDszRmPXp68DzNqm8mCvu/8Q/nZ3UmUE0JJkAOptX9d9f38nsTbPWdI0smhB2GGRbiODYL05Hq8wUbkV7pRHCUmbpyG+YvEU/WzXVem/6CExB4sqo8zeXO+N6PnaUDnjy5dTB4nMx60wv/jjTmuDwSA44RNOIDBzMsyeIZjwReL4MU153rXPDLFFeyNkyeYPvT7z0Dr2xVu0tBXs026lQEdlw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k7zou7JCJ69Kuv4SUg+ITQhw7YAq6iH1xiTgqkf7xqk=;
 b=LoL9BUES1acesoEQya6emPR61mG8Ray7vmsrHTAubN9rDfwEOAVSy/7fQi9UgNDZQg4U2X4jpycLgsMAx262MsTJxQmDpQbzX9ZZWpIatifx74D+had9NPOX99U9zJ2lrbWgHyEkt2ockT7NmyDrR/W8T+BpY/7nbQYWRLY3f+QngHjKjrvz3ZZIbyIKSmQJUaQk3Ab1/qJay+lw/kYj6n6/kwroOhXwkiAFZjfKRcdhAedQ0DzcdWYHVdhjC8AvR6faxnAWUr+HXrvLBG2OFYob6350sZ/VFCYeySImG5WDGpGvWydez2PPL/ZhVfgcUYz7xVYaVZwSdfR8p2EpGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXT] [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
Thread-Index: AQHbnznils15l9OlrUmI7BPtO01tB7OHQx4AgAAaZsA=
Date: Thu, 27 Mar 2025 19:31:53 +0000
Message-ID: <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
 <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
In-Reply-To: <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN0P110MB1752:EE_
x-ms-office365-filtering-correlation-id: 8b173760-50ea-46fc-a279-08dd6d66075a
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|8096899003|7053199007|4053099003|4013099003|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cWh1a1paREt2aTAxamhmbkxHcitIeHpjcENhSG43WUw1YWEyMzlTbGpJMXQ1?=
 =?utf-8?B?Rm1zc0c2Uko1RlJwT2o1OUZaM3E0UUhzeUJFeE9JRWJsNDRqaU85Z1hxK3ZH?=
 =?utf-8?B?eXVveU1nQkFiS2kvbGhjaVkvelJFbW9HSlJiL1lNR01LZG1ZMmwzazRhRU9v?=
 =?utf-8?B?eHI0bDN0RXVjbU9EdzgzZDBHVGRsNDFleHVDZVUrclUvZi80cHNuclpFb01B?=
 =?utf-8?B?cDkxTHpIanhEc3BoazNmV0xUMjNCQ0tEL0w4Sld6TEZ2dzJad2RNL1Z5WTk4?=
 =?utf-8?B?RnBUUVhPRjBia0hSU0VMT01KUTQ0c05iUm9mLzRBZ1FFa2VpV2VOMlJISmRq?=
 =?utf-8?B?WkdIdERKWnVkMytuN1Fqdm0xVkNZOEFIMkNPajB5WGt5ZnVPN0p2ZGdIQms5?=
 =?utf-8?B?c3JkWlV0SDVjenpmSWxOdlNJbmZ0aUt5MURFYWprQzQyMjNVVHJSWXBIdjNC?=
 =?utf-8?B?V0dBWWZzL05jMHZDaWp3UHJMQjdOSzBIaXlMbE83TkI5SWVmU3ZxNTgwSGJv?=
 =?utf-8?B?VGpHam80UVNMMHdVeFVIZXRKVVczQnZuV0g2RnFIb0pPRGZQK1FMZzU1OFFO?=
 =?utf-8?B?NEY0dW5ya0M3SkhCVkVKL3U0ZXJlRFVkNTJGUWh0UStpY2hIU1orcTZlN2JB?=
 =?utf-8?B?Z3pCNDZYTC9iRjU0TUtmaWxhaHVuTGppU2FZalBpc01Vd3l1Q1NCUEpzRDlk?=
 =?utf-8?B?OFlGL2FVQXpYRTdvR1FHcjlvb3RaRHVzMDhEVmZxazNkMy9UZTBDTHByZTVu?=
 =?utf-8?B?NWVJNEtDSk1SMHdpMTRLR1V0VEMzanZrZVJNQUpycml1Z0tjNWFLajFYbDRF?=
 =?utf-8?B?TmJrb2xzZmt6U3Z5N0djZlpDNktocDJWTDZnTXd0cy83anpMbXIra3ZOa0la?=
 =?utf-8?B?dHdyUStxWEgvRndITFRnbGphT1ZHdDhhNzRISHZrWENtSEgwcXlnYUJLbTAw?=
 =?utf-8?B?OW5haC8yYlQ3TmZiSXMyMnVvQ0Y3NE5FT01YbE81aFNKR1dpYXlhZmJxeXdC?=
 =?utf-8?B?NTYyM1I4bm5tY0NCbWY2WEUwZHBRTGhJU0R4RUlNdzFMSXRNeVh1NGZhaVV2?=
 =?utf-8?B?M1JtN0RET296cHBiNndQYkVYaGZUNWRaT1F2U2hHMjRBWStKTXMxTyt2eW1B?=
 =?utf-8?B?ajRpUWVHcDZwNkNUaG9DVnZUbW9ISTI5ci9RUXFSQ1BTVnl0V20rVTQrQVNj?=
 =?utf-8?B?aTcrU1d3UVZWWGxBdU5IQndENm5lV0ZxTGpWQXJabnlCeC8rM0FBRlpkRXBi?=
 =?utf-8?B?NTNOcHlrbFo4U0o1UGZSVHR4eFN5Rzg0bjVOeUFZeFZXYXJra1lpU0FoRkM3?=
 =?utf-8?B?c3BpTk4wNTF6WnFhZnVjT3k4dlBaQzF5NE5NQ3Z5djlnMWJmU0dxRHJMRzh2?=
 =?utf-8?B?TWFRendrSEcxaVNWbkhJcTFPUzFpeUgwMlhINHVPN3RaRCtOa3M2c3h5M0Nx?=
 =?utf-8?B?dVJ5U1lSYUl1eHRNZE9nOWpGQ21yb1IwNnd1LzRiZmhkbngyRDl0TlNWK242?=
 =?utf-8?B?eEd1OTdjcmtxeFRuS3liV29rNGlac2R1a241b3FZc3ZrR21nejhRT3hCdmxD?=
 =?utf-8?B?K1RZWENWZS9VeExTV1N1Qm0yeXp3Nzg2RW0wZFpKRkFyaXFMd0RCM1V0bWtQ?=
 =?utf-8?B?RTZlR0lOQXdkK3dvemVYYjBFR3FBbi8xZE5XREpvdHZITWdWbWYwNFJvZy96?=
 =?utf-8?B?bUhsNlMzMllaa0FZaUJqaTJkRU03SnpWTlRMUTh1WG81S2F1Wm5vSWp2ZnBa?=
 =?utf-8?B?UG15L0NDVGdBTXl3dU9OT2RabnQ3aDdCREg0ZCtHUEhGQmN3d1ZzVmpFSjcr?=
 =?utf-8?B?R0didzFwUHBmSDg2VFRsWUxwUjhRUDhpTGd5K3krQUV2L3ZVUjR1VmdWSVVD?=
 =?utf-8?B?YVZaRU16RFZFOENiVjU3QVBLUTNyZkFYQWM0bmFVYWtabjFqbFBJZFBHK3p1?=
 =?utf-8?Q?20gYKq4T+lLz7yNPTPm42rsw/9BI3CHY?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(7053199007)(4053099003)(4013099003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OElRTUFXZ0kvRURCelJDYWxnMkJMVnlJa2RZcW4wLzZEUlRObmd0eTV2ZmJm?=
 =?utf-8?B?NC9vekhsUWNyY3JwSEJiVDZpOENwZUV3YWtxbUNtbFJkY0VQRFRNamN0Uzl0?=
 =?utf-8?B?SlVNa2dFWDRxNktqSjYwVkVnOHBsVGtiNG50OGxLbWlKemFLQXNzNFg5UVlG?=
 =?utf-8?B?WnhrdTM2L2ExdzBiQjYwMVNXcDdXTUdOVU1rQlk4aGtoS1UySDlsd0FHNU0x?=
 =?utf-8?B?eTMxME5hak84Qk5DelRoTkRrcW9xNys5MUppZ24xYlFkeTBmMnVWKzluLzJa?=
 =?utf-8?B?d0NKdEJIZnk5U3FUbFo4YjA3WE0zcUJuOGs0elpaYklPcW9Pc1owV3N5U0w0?=
 =?utf-8?B?L0ppQ1hscXF4SWRUVHBqOEt3emp0UWIyMXo2Z0lrZFczN1dmZmZ1aDZWU1U1?=
 =?utf-8?B?UFlSeWdqVzlaeWEzaW9XUnlwek9oOHJkQnZhWGtibGNUSXJyYVBGUERmNkl2?=
 =?utf-8?B?My8zNFRuNFNVMkVCdHdCa3BxemhNeml0WTBOVnRMb0UwcFhGdk5uRXN2YW4y?=
 =?utf-8?B?c3VOMXRZZkVoOVdUczRhWWxrRUFpOEN4bEZ2c0ZoejlITEU5VmkrWTNVb3RU?=
 =?utf-8?B?M2d6ejBybk9ON1cyam5wU0xLUXJNYVZjU21hVEQzdG5NY2dLL1E3SUcyc2No?=
 =?utf-8?B?VGRvZ3UyZkxNQmZiRG5ZazNOeGY0aVRzeG95L3lDL2ZVSzFIRVEyalMyTXlM?=
 =?utf-8?B?L0t1OUtmVjVTd1EvSXBCdVhpQ28xaVlVdDFIUDYyOHlySm5kZHpVWUo0STl6?=
 =?utf-8?B?L2FnUEZjeExqL0ZqWit1U0F2QjRSOVdvQ0JTb2FQZVFubFROTnBqQXo4SVNv?=
 =?utf-8?B?UkNka3J6ZXRKdmRNUmF4RUlNaC8rR1YvRlBGdnpmU2p3MG50ZFpMNUdkem8z?=
 =?utf-8?B?THRkS2wxbUNCcm5hZHBsUVp0bUxmR0FRYUV4dzBHbnJWMjk2Vk5ZWUsyVDJ2?=
 =?utf-8?B?R05zZFJ2eVprWWpJTnFETkc1V1FRQWRXRTZIL0h2OXBCMWZkNmxVM0Q5dG5j?=
 =?utf-8?B?Uk51UlhDRG1xbVdPbEZiNGxGQnhSdzRuU3VjdTZpV3dTbHA5ZFRGM0xyakF4?=
 =?utf-8?B?RmF6SGd2QWUyN0dmY0Ryb01rY1YvdDU0SkxVREJnbktHcE0ySG9tdlZyQVUx?=
 =?utf-8?B?U3lJT05vL2RycENxNS9LWGk2TjRxR09tK3pIa1YyYlFlOEUzRzNDdXc5aWN5?=
 =?utf-8?B?bjN3ZEpFcXZXTDAwVnAyQjRLU3ZJSk9sM2xPM3dqd2NkSVlWb0JSaS9GL1hH?=
 =?utf-8?B?ZldyL0ZtdnZmM29GakdlM3Z4ZWhNOC9yYWp4ekVMMFpIWXloVWI0enpLV2wx?=
 =?utf-8?B?Um15eklPZ0xGaVE5Tk5CLy95YjRORW80ZW04bFFLSmhta3J6VVorcVR6Tmkw?=
 =?utf-8?B?anhqMVRaOG5vbVQrMW4raVdKQlhrL1EvL1FUNWtZa2VVb081c1MreXRkTG1E?=
 =?utf-8?B?NlZXd0RDcXBxK3hzazUvUklFcjN4WnZUVkFlQk5lTFJweVlNVmNnSk04Zm9m?=
 =?utf-8?B?WjJnMk5xaWZQMncwc2xBNU9QTGRVRXFPbW82M3dsYkNOd3g2eGxCTW9JZldI?=
 =?utf-8?B?WTZGc3lrM2hNZEFBNGZRRnFwTlAyT05vWE80MThCOGFMSENva0U5THVVNmxL?=
 =?utf-8?B?UmJQOEw2Q0RlZldLUTFEdnA5aVNhRi9MZmdkRUdsNC8ybFpZeTU5RE5LRHhm?=
 =?utf-8?B?aHc3d1dPbFB0ZWdLZ2lxdm4zT1ZlM3BKYjViNHczZVpDei9Cd2wyTk1kV1dv?=
 =?utf-8?B?b3cvMmRsdG1KUHFkZmhSMVMrTXhsSUhDQjFhZ3BmeDNEOGMyVHNqa2pwREdm?=
 =?utf-8?B?dGtoNU1sTDBtQkkyOHFKZ3p4d0t5YnIvQTRSbXNIOEJ1Y05yWEVZZG8zOGlL?=
 =?utf-8?B?TVRoYW9DYXdtbDl6cUJOMzRic05UM2VBSFRpYS9qdEdxU3dPYks1RmoxUWp5?=
 =?utf-8?B?K1pvUUJkcUpDOEpwbXNJWlBQdTdjWnJCaVZETlh6SXZOb0JROVoyK0hRM1hX?=
 =?utf-8?Q?0gccM1sYU4v2aA4ZyHhqoU4SZN0EBs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b173760-50ea-46fc-a279-08dd6d66075a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 19:31:53.3441
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1752
X-Proofpoint-GUID: 6GKQk3OQnfHMeWhk2rj_Mj6DlcjdQ4aL
X-Proofpoint-ORIG-GUID: 6GKQk3OQnfHMeWhk2rj_Mj6DlcjdQ4aL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_03,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 spamscore=0 phishscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503270131
Message-ID-Hash: G367QFKLSPQHPLE2QRLK7O2YQXCRVLLX
X-Message-ID-Hash: G367QFKLSPQHPLE2QRLK7O2YQXCRVLLX
X-MailFrom: prvs=7181e2a2cd=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G367QFKLSPQHPLE2QRLK7O2YQXCRVLLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2199664277887562868=="

--===============2199664277887562868==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0229_01DB9F2D.5C8C39C0"

------=_NextPart_000_0229_01DB9F2D.5C8C39C0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_022A_01DB9F2D.5C8C39C0"


------=_NextPart_001_022A_01DB9F2D.5C8C39C0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does anyone know if there is a way to get predictable phase offsets from =
an X410?  I am finding that from run-to-run, the 4 channels in an X410 =
have completely random phase offsets from each other.  I didn=E2=80=99t =
necessarily expect the phase offsets to be zero, but was hoping they =
would at least be consistent.

=20

John

=20

From: Chris Rogers <c1337rogers@gmail.com>=20
Sent: Thursday, March 27, 2025 1:51 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: [EXT] [USRP-users] Re: X440 Phase Coherent but not Phase =
Aligned

=20

Hi Heath and Marcus, I was actually "R&D's plate" for this one. We =
worked through it and found the issue. The root cause is the startup =
sequence in almost every example UHD script is a bit out of order and =
had to be reorganized

ZjQcmQRYFpfptBannerStart




This Message Is From an External Sender=20


This message came from outside the Laboratory.=20

ZjQcmQRYFpfptBannerEnd

Hi Heath and Marcus,

=20

I was actually "R&D's plate" for this one. We worked through it and =
found the issue. The root cause is the startup sequence in almost every =
example UHD script is a bit out of order and had to be reorganized in =
terms of clock setup and synchronized channel tuning. This problem is =
fixed in UHD 4.7+ if you look at the "tx_waveforms.cpp" example code... =
For your application, just make sure to follow the same startup =
sequence.

=20

Hope this helps,

Chris

=20


------=_NextPart_001_022A_01DB9F2D.5C8C39C0
Content-Type: text/html;
	charset="UTF-8"
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
span.EmailStyle18
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
class=3DWordSection1><p class=3DMsoNormal>Does anyone know if there is a =
way to get predictable phase offsets from an X410?=C2=A0 I am finding =
that from run-to-run, the 4 channels in an X410 have completely random =
phase offsets from each other.=C2=A0 I didn=E2=80=99t necessarily expect =
the phase offsets to be zero, but was hoping they would at least be =
consistent.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>John<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Chris Rogers =
&lt;c1337rogers@gmail.com&gt; <br><b>Sent:</b> Thursday, March 27, 2025 =
1:51 PM<br><b>To:</b> Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXT] [USRP-users] Re: =
X440 Phase Coherent but not Phase Aligned<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>Hi Heath and Marcus, I was =
actually &quot;R&amp;D's plate&quot; for this one. We worked through it =
and found the issue. The root cause is the startup sequence in almost =
every example UHD script is a bit out of order and had to be =
reorganized<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
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
span></p></div><div><div><p class=3DMsoNormal>Hi Heath and =
Marcus,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>I =
was actually &quot;R&amp;D's plate&quot; for this one. We worked through =
it and found the issue. The root cause is the startup sequence in almost =
every example UHD script is a bit out of order and had to be reorganized =
in terms of clock setup and synchronized channel tuning. This problem is =
fixed in UHD 4.7+ if you look at the &quot;tx_waveforms.cpp&quot; =
example code... For your application, just make sure to follow the same =
startup sequence.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Hope this helps,<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Chris<o:p></o:p></p></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div></body></html>
------=_NextPart_001_022A_01DB9F2D.5C8C39C0--

------=_NextPart_000_0229_01DB9F2D.5C8C39C0
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

------=_NextPart_000_0229_01DB9F2D.5C8C39C0--

--===============2199664277887562868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2199664277887562868==--
