Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 913C69C5896
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2024 14:06:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E31A385D60
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2024 08:06:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731416817; bh=DQ1VLo9YuXotquFwawurH1m1QeKexiQmWTsiN5hOd7Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lNFGth6E41atqAF8Q2uD+ORUzCLpVlU5Z7k/4hDpUyKirgqVvAiW9tpJNEtN7Ukyk
	 0W5VoiiWJ+C8WDtIvY+lmwv+GHtum9QyG5VbE8GbRiqSHkEi3VAo2j+ip0/VJ0sDJP
	 SjV0fn4UV0c9Dk4btf4e6+VWMsjlHd8MgpX1EQgYeXXYSKlgwjnAE0R66y5J05QGNb
	 PEZOOVvnmcEM8FlHz90wNJ4GCEhk/Vz95mgpBt8xgbth/DGIXGjiXEGUMeEM5AaHvW
	 AyJf0IaF6d+RM4F7fNTDd9b1IPOyR1XF9uCjw7Rkn6buLYINAyF3aZT/OSFB96bgri
	 wY6H8+uJxO6Ug==
Received: from PNYPR01CU001.outbound.protection.outlook.com (mail-centralindiaazon11020120.outbound.protection.outlook.com [52.101.225.120])
	by mm2.emwd.com (Postfix) with ESMTPS id B663D385D57
	for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2024 08:06:43 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q+V6fbqWgfBJ1ZlMve9R1LnII4PPLnJbH1ymwf2GVXil9JVXzPHHntYdCbyRWiFCL9CU0gReomCNBE6TawwNbrVUYmUCO8XKbmbTYmDF0gl5jb+W0J1P5JgOFcWz4CAX/lNLAxQ7t3xvHvcdlTp5QY1DxXB131zEUEO0z7SSryBbK1R4RMW6c0ZCN7NNCw5OAH+AI99Lwm4jrJbdlGt/bylhB+/CY6JFOTcXn2w6E4vReLhqUP1guzJW2XSuZfiE1IjFwYtjoYKZZtqTuxA/m+uesPbWX+ylmHQhPmHvLRE7mpl4ZOwotDidMMtD3Uv40y6fNgP5WFh35k/R3975FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zrh4GCe5vJz49Z0rH8QrbnCeLJffeoQ4UWuIH785I0E=;
 b=CXv7sSOTPMkInPNWMDYCLHEwd1uryVS1Abbdfwre7kHGNqFH4W32BUSNr78tgPBdkarGY1uy/RQfDMT+PyZSlWNfmTz+de5YNbisr8+0aSscUpWXEEVVdWeHToYIEiZpwwu+Xry4MGWQ2UtEoz3AK8Xda79uHNTBkA3P0iq9EOwYg+T0rrjeWYxjSbK1y/u6/xYqLnntSmOJwHeCM4iZ2ZhWFohV4XpdzznAiqranmWILIaRlwscYW7s5mw8njQP+wu8Q6MXjxhX6KkVVrd6xtUK0gLo08qQNhb+BpzDZOMgTTSM33GZtu815xhJYLY/PnT9cyn0UmDztLHEDHaOUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cyronics.com; dmarc=pass action=none header.from=cyronics.com;
 dkim=pass header.d=cyronics.com; arc=none
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:d4::11)
 by PN0P287MB0590.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:162::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 13:06:40 +0000
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2]) by PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2%7]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 13:06:39 +0000
From: Nidhi Panda <nidhi.panda@cyronics.com>
To: Martin Braun <martin.braun@ettus.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC TX and RX not working simulataniously
Thread-Index: AQHbMpvk8CXJYEX8tEKeZ1cEhuaGYbKxzYwAgAAWSnqAAb2PTA==
Date: Tue, 12 Nov 2024 13:06:39 +0000
Message-ID: 
 <PN3P287MB029150F48ABC85103226A41193592@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
References: 
 <PN3P287MB0291323A10062E824F0DC3EA935E2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAFOi1A47MLS=maD-Jve0iD3JU=VUtfxsyuhnYrggepnRQ90hVQ@mail.gmail.com>
 <PN3P287MB0291188E4BC4DD3DA0448CAC93582@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PN3P287MB0291188E4BC4DD3DA0448CAC93582@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cyronics.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3P287MB0291:EE_|PN0P287MB0590:EE_
x-ms-office365-filtering-correlation-id: 6a698f3a-5f0f-4716-8301-08dd031ad8ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|34036016|376014|41320700013|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bXE1aytlaEZhOUxaR2FwZVNvcGN3V2RxVThpRGE5eVBSWGgwR2lSWGN2Skpo?=
 =?utf-8?B?YXczTGs4K3BYVkIzVU1hYVlNYVBsZGRaNHVodC94cDFQOXR5aEtzV0NnY3Bz?=
 =?utf-8?B?c0xLcHcyeFJNYzVMRXZhaTBtODJzZmw5Mm5ZUTQyclBHdHpscUJvZnU2ck0z?=
 =?utf-8?B?NDVxTFRhaVFQL1BWQVZzWnYvVENjRDB0RkQrZVdlWTJNZHAxTGNoM21oOW5w?=
 =?utf-8?B?VUxpLy95UnV0ZWlwVDBRa0Y5YlZCWDM4RnlrUDNqSERIZGlDUExEMkRtWDM5?=
 =?utf-8?B?WUlHMHFJeEdUbEI0b1cwZSsxOHAxOWVvcXZEZVo4dk1TM3RNZUh1WENZOWxu?=
 =?utf-8?B?bSthdS9yL0dJdTNWcmFtTENmaVU4TC9FYStZeTMyU2lLaU55MVZick9uU0Nn?=
 =?utf-8?B?SVFBVlJNMnVxbmJFMDJQRFdlU2tTemp1RzZhYmFYL1BQT2h3OHdnV1hXOGlK?=
 =?utf-8?B?MVVjR0JPZXBWeFMxQnhQRE1HSjFWcmdyRXR4Ti9lWUE3VmpoTkpkSll5eGZ3?=
 =?utf-8?B?a20vN1FKVjJRaktObHdyMU1nZU9GK1JSU3p4SzZ6U2g5c2IvWi9Gc3IwN0U4?=
 =?utf-8?B?eS9lcFBaVG5LTnV3K2RvbFg0ZGwzWFhuU3JBYnpQT0tXajZFV2oydVNFTUVx?=
 =?utf-8?B?anNldTZWZndrZERuRnJoT1pIckZWRFZaRjdqQ25YM3RUclpMVE1VUFlOWWhK?=
 =?utf-8?B?TzVNUGlRQy84NWM2Nk9Ob0FSNjI0YnR2T2YxQWlyZ0tpREo2akpvaHNacWhO?=
 =?utf-8?B?VHFWYWM2dDVrNnFxY1BURnlGMzYrN01QeklmazVCVndjRW5aaEJwRUVsQmJX?=
 =?utf-8?B?dytVWlQvV3Rxc1E0aUFuVWFUSmlWcUl2aXdsRTdKQzBvWEZOVllxS2dBZU1o?=
 =?utf-8?B?MFpubXJsa0ZmWXpUUDNRU21zck16YVNjQ1JoNWRrUVAvNFlGd3BUTWNPcXhx?=
 =?utf-8?B?Ynk2aHFkaXhvd3RmOUlRa0EzUDJPWVdGbDVqazNWYjRId2tlWVdaKzFBK0R1?=
 =?utf-8?B?MW4xc1hHWlp0Z210bFdGUENZRUxsN2xNN0FlRGFkQXhYTTh1a1hweDhMbHNw?=
 =?utf-8?B?T3dJZmttbDhkOVJSK0VvL1M2a1FZZ3ozK3JqZ1NLaHFjWDZ1dmFiMGcrcEth?=
 =?utf-8?B?aW5mMFN5ckNVaGJ4NTNzMmVmVktkalZyTTR4a3M2TytHOFE3c3JRS1pwd3ls?=
 =?utf-8?B?UkV4NEdsaWhhSFJrak95aXZKOXBRNndMYkVPMGdOMmI2REhQU24xdS8zZUx1?=
 =?utf-8?B?SGQxdTlmYUJEMUlEazFYMk9JcE9mTDVtTlVUUzZTTnMwd2k4RWxKbFVSZnFr?=
 =?utf-8?B?cEFsdlhxTUJ2YXh4bEZicWNiUWtFVjBPaGhzUTdVU1J4dUdmN2NpRFdYaUFE?=
 =?utf-8?B?SE5HRUlmTCtxOHdvVnFoQkI1VTM2WWRpc3I2M0gzOFhRSGRONVdPVGpWZWZT?=
 =?utf-8?B?NmZWVE9scjRUU1NUMGt5UWVnQno1WVVLdG1qUmdvbmRWeE9iS2pyUUZyZTRv?=
 =?utf-8?B?NUhiM200ajVVeXlMYVRSV0pFQzBmdlB0UmVxMWFzY0s4Tis5d1hVRzEvb0hE?=
 =?utf-8?B?YWxXNFlNOWI1OWJyM3FyanhOWWdxV0pXK1FDZi9KNUNiakNQSEpTbmdvcW9E?=
 =?utf-8?B?UjNFbnQzeTV4bzhBanhNZklvdnptZnRJd2VXNGdsQjlBRERlbVYrRFdlMThC?=
 =?utf-8?B?RUd1NExncmYxeWZkS2NCNE55TjlBd01GZkdVdlFvWG5nNXNHUWFoNVFaWTZm?=
 =?utf-8?B?V1RnbGE2UFRZSitRdWZ3WWRLWkJiSXRTQXRMMzlOblBIM21MSUFlN2hhZXFq?=
 =?utf-8?Q?5V4g/Vdkrvw2jUAQXJ9NA55DbYFWuLUJnoo5s=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PN3P287MB0291.INDP287.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(34036016)(376014)(41320700013)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?M3VIWDdZTXpXMUdXZTl1SGFnWDBxNk1JeUNqcThqamJxV3NQdG01LzhGWXEz?=
 =?utf-8?B?K2VsaHErbTNMcU1PSFkzUXZWOHJDRVJ0Z004UFg3MXU1TWpQSUhzZ2luV082?=
 =?utf-8?B?S1QzbnVzeFduRCtKeXJ2Zmx4QVNua0tEcUwrK0JVSUJkOHZPK3FrUTRXeW5J?=
 =?utf-8?B?TW8ybmpieWRGK29ZWTdBUzkzaVJEeC82TjR0dXZzUkF2aXUwckkzZDVWYmd3?=
 =?utf-8?B?NUZUS2dOeHRuQmRVcC8xWE1aSDV4QXVYOS80Z2dLTjV1NUJ1N0pzR3k0QmZU?=
 =?utf-8?B?QlhCcVN2TnhtK25lb3RBT0p2NFhSeDlLdjErYnhFYVFERy91Q2VJWjFld1pG?=
 =?utf-8?B?ak1KZzBSMGVPVWU3YWI5VWRVTmhXM1ptb2VtSm5COG1sVnRkZmxJSFJDSm1T?=
 =?utf-8?B?SlBkdVc0Q2ZkYkJzYlVUZXVvQ3NlVlMwTFRRakg0MHVUSG56N2ZmZzFWaWNa?=
 =?utf-8?B?MW9tanMzc3NsWTJjY2dhVHNicW1QUGJ4eW02NFIxQVRWcnRmNldTNFFIZ3Yx?=
 =?utf-8?B?MmVMWXp0UnlJbkhQMmpjdlI3a3BZLzBMSGpTWktpRlBYYTF4am5kaFo5Rzcw?=
 =?utf-8?B?TmZmVnVJNVZCOEU0VzFHSlF0TUY4ZjZJTWpkNm9mZWtaUDlQNndrUUdGY3Rq?=
 =?utf-8?B?ako3ejJLMUZCdlVwaTZpSWRiRThCRUNpVmN4QUtCcEdOeTZ0SXBXcC9XMWdl?=
 =?utf-8?B?dXplZHBmUzRiTmd0anMrb2N6ZVExV1FxQ1hXN3E0c0k4UE9HMXNYYXRYSHZ2?=
 =?utf-8?B?elFKN0s4QWY0bmNZeitic0dZaVZTQzBwUWxYN3d4K2VJeXpSTWxGNnZzV2Jn?=
 =?utf-8?B?MFJxOGRUT0NHSlp2WlNVZTZjVk1oMEUwTTVpRSthY0pHM3hhSnVDd0FLYW5j?=
 =?utf-8?B?YUxIN21oMXoyeCtTVXhuNTUvMWVMNC91SlZzeXVxeFhORUUreHRvT2Z2eG1D?=
 =?utf-8?B?OTgwOVFwdGE5aUR1bnVFZ3BMNGVBbGhyLzRyMjBYQVV1N3QxdnduNmV1QUNw?=
 =?utf-8?B?cWgwdFhSUDJEOGxieG1MMmFoYzhkUkRBWVRjWm9BNWFud0w3UWpYNUFaOUQ1?=
 =?utf-8?B?elllN0p4WlNmTktXY0pyZU9HNXA5VFQ3Skt0NDBJYUhPYThMK1VpWDBlTGo1?=
 =?utf-8?B?dWVYK3RrRFZuaDI4UEtONTBuTVdEdlZUUmYrbDF4ZEVWc3FPTitldDRwZnQ2?=
 =?utf-8?B?QTJXQzNyMEk0QVM0TnNCQnNIdVNaUi9QZ2hHVkxxaXBadERLd1h3M3NEVks0?=
 =?utf-8?B?blhYRXg5VnpHTmdPNmpiTVAwTTRoQW1FbURmR3dIcDlMdlB6c2lxYXhlNmtx?=
 =?utf-8?B?Ty8yZWFvRjJxYmVEekRpS2FxaFhHK1k4L3hmQkZYSW9YZU40Yjh5bVlELysy?=
 =?utf-8?B?NUFpZkVPbU9Bb1JybmVHVE03WEFnMmdMTXpPK1h1eWVDZUpFZjJGWmJ6WXNn?=
 =?utf-8?B?Kys4RlEyQldZc3JuZkh2cHM0VmttZlhackVhTlljbzMyN29wNnNsMi9tMis0?=
 =?utf-8?B?WU5Pcm5RcUg0Y1FUaS9JSloxakdNVzNuK0Z6bWhRMDRudFBmUklWRjdTNW9v?=
 =?utf-8?B?TEJtUFhLTmUzdGF3VldNT2x5a05PMFQwdTRLdTVFWlhDQldCcjMwTTlxR2to?=
 =?utf-8?B?MkljUURPRFlTOXRLcmFyd05CbmxPQ21iWCtmeDJnNGFoSFBpTHRjOEc0a3ZT?=
 =?utf-8?B?ZVVTQW00dVFPbndQSU8yMWdlRzhGR3NQSHAvY3dLTWtCWUZLTHJhUlU0QUM1?=
 =?utf-8?B?RzNGQUxYV05yaWt6TlRSczQrU0pFV3Q5c1FPNmJjdlkvYTI0eENaNWxDbmo1?=
 =?utf-8?B?a2p6clRMZ3RwaVNpTHlOK3Z0NE5zYXhpR2ozckF0RGxUWjhyYUFXeHZ2d1FX?=
 =?utf-8?B?RG0wa3Jodnp5bWlLTVVYd3JiNkNhTC9zSkJTVDc1V3R6aTkvamlBUHRDRDlG?=
 =?utf-8?B?K2NDTy8zT0pEemZiR2FQcEVCWW9iM1ZUKzNwQU1oZlN0N1hLeDQwWUtPMlpj?=
 =?utf-8?B?U1dBeGlvelNkUjBkYXM3eUlBaElybGRRbTFyUDV1RWxscTJqUFdDa1p3YzZp?=
 =?utf-8?B?ci9BN2xncVlkR1E1ZkxSZlJCcnRWNjliOTAzTzl4akQwQ0dFRVVDNG1QNW9S?=
 =?utf-8?Q?SyoDE+1+GnjN9IboC99n8470q?=
MIME-Version: 1.0
X-OriginatorOrg: cyronics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a698f3a-5f0f-4716-8301-08dd031ad8ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2024 13:06:39.5166
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be1a3fdc-e532-4f10-81f4-e383b8410e95
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Zg3FXTM2IfUwvz+m1AxssYpHST5n5ealtDFcB4K2mlPNnwDWGmrlHHSq3V7MtFpL8Yfs/PEtl5WTB+psTY0oN/wlXd9ihwF0SXGjSWJzMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB0590
Message-ID-Hash: HXUXPUJMVBB7SR6MSHGWQ6QRNJ7WNM7W
X-Message-ID-Hash: HXUXPUJMVBB7SR6MSHGWQ6QRNJ7WNM7W
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX and RX not working simulataniously
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OM6MO4NKMK4PEZKJ6JN6XBWQWUVXLMBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3309662312538239791=="

--===============3309662312538239791==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN3P287MB029150F48ABC85103226A41193592PN3P287MB0291INDP_"

--_000_PN3P287MB029150F48ABC85103226A41193592PN3P287MB0291INDP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTWFydGluLA0KDQpDYW4geW91IHBsZWFzZSBzdWdnZXN0IHNvbWUgY2hlY2sgcG9pbnRz
LiBJIHRyaWVkIHRvIHJ1biBhbiBleGFtcGxlIGluY2x1ZGluZyAgdWhkIHNvdXJjZSBhbmQgc2lu
ayBpbiBnbnUgcmFkaW8uIFRoZSBUWCBhbmQgUlggd29ya3MgYXQgdGhlIHNhbWUgdGltZSwgYnV0
IHdpdGggcmZub2MgYmxvY2sgZWl0aGVyIFRYIG9yIFJYIHdvcmtzIGF0IGEgdGltZS4NCg0KUmVn
YXJkcywNCk5pZGhpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogTmlk
aGkgUGFuZGEgPG5pZGhpLnBhbmRhQGN5cm9uaWNzLmNvbT4NClNlbnQ6IE1vbmRheSwgTm92ZW1i
ZXIgMTEsIDIwMjQgNDowMiBQTQ0KVG86IE1hcnRpbiBCcmF1biA8bWFydGluLmJyYXVuQGV0dHVz
LmNvbT4NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gUkZOb0MgVFggYW5kIFJYIG5vdCB3b3Jr
aW5nIHNpbXVsYXRhbmlvdXNseQ0KDQpUaGVyZSBpcyBubyBlcnJvciBtZXNzYWdlIG9uIEdOVSBy
YWRpbyBidXQgd2hlbiBUWCBhbmQgUlggYm90aCBhcmUgb24sIHdlIGFyZSBub3QgYWJsZSB0byBz
ZWUgdHJhbnNtaXR0ZWQgc2lnbmFsIG9uIHNwZWN0cnVtIGFuYWx5emVyLiBIb3dldmVyLCBpZiB3
ZSBkaXNhYmxlIHRoZSBSWCBjaGFpbiBvbiB0aGUgc2FtZSBHTlUgcmFkaW8gZXhhbXBsZSwgIHRo
ZSB0cmFuc21pdHRlZCBzaWduYWwgaXMgcHJlc2VudC4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpGcm9tOiBNYXJ0aW4gQnJhdW4gPG1hcnRpbi5icmF1bkBldHR1cy5jb20+DQpT
ZW50OiBNb25kYXksIE5vdmVtYmVyIDExLCAyMDI0IDI6MzkgUE0NClRvOiBOaWRoaSBQYW5kYSA8
bmlkaGkucGFuZGFAY3lyb25pY3MuY29tPg0KQ2M6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10g
UkZOb0MgVFggYW5kIFJYIG5vdCB3b3JraW5nIHNpbXVsYXRhbmlvdXNseQ0KDQoNCk9uIFNhdCwg
Tm92IDksIDIwMjQgYXQgMTI6NDfigK9QTSBOaWRoaSBQYW5kYSA8bmlkaGkucGFuZGFAY3lyb25p
Y3MuY29tPG1haWx0bzpuaWRoaS5wYW5kYUBjeXJvbmljcy5jb20+PiB3cm90ZToNCkhlbGxvIGFs
bCwNCg0KSSBhbSB1c2luZyBVU1JQIG4zMDAgYm9hcmQuIEkgaGF2ZSB0ZXN0ZWQgUmZub2MgVFgg
cmFkaW8gYW5kIFJGTm9DIFJ4IHJhZGlvIGNoYWluIHNlcGFyYXRlbHkuIEJ1dCB3aGVuIHdlIHRy
eSB0byBydW4gYm90aCB0aGUgY2hhaW4gYXQgdGhlIHNhbWUgdGltZSBUWCBkb2VzIG5vdCBzZWVt
IHRvIHdvcmsuIEFueSBzdWdnZXN0aW9uIHdoYXQgbWlnaHQgd2VudCB3cm9uZyBpbiB0aGlzLg0K
DQpXaGF0J3MgdGhlIGVycm9yPw0KDQotLU0NCg==

--_000_PN3P287MB029150F48ABC85103226A41193592PN3P287MB0291INDP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpIZWxsbyBNYXJ0aW4sPC9kaXY+DQo8ZGl2IGNs
YXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1i
ZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9k
aXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRv
cywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2
ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsi
Pg0KQ2FuIHlvdSBwbGVhc2Ugc3VnZ2VzdCBzb21lIGNoZWNrIHBvaW50cy4gSSB0cmllZCB0byBy
dW4gYW4gZXhhbXBsZSBpbmNsdWRpbmcmbmJzcDsgdWhkIHNvdXJjZSBhbmQgc2luayBpbiBnbnUg
cmFkaW8uIFRoZSBUWCBhbmQgUlggd29ya3MgYXQgdGhlIHNhbWUgdGltZSwgYnV0IHdpdGggcmZu
b2MgYmxvY2sgZWl0aGVyIFRYIG9yIFJYIHdvcmtzIGF0IGEgdGltZS48L2Rpdj4NCjxkaXYgY2xh
c3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJl
ZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1z
ZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rp
dj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9z
LCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZl
dGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+
DQpSZWdhcmRzLDwvZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250
LWZhbWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwg
Q2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiBy
Z2IoMCwgMCwgMCk7Ij4NCk5pZGhpPC9kaXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2
Pg0KPGhyIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSIt
MSI+DQo8ZGl2IGlkPSJkaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJy
aSwgc2Fucy1zZXJpZiIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+
RnJvbTo8L2I+IE5pZGhpIFBhbmRhICZsdDtuaWRoaS5wYW5kYUBjeXJvbmljcy5jb20mZ3Q7PGJy
Pg0KPGI+U2VudDo8L2I+IE1vbmRheSwgTm92ZW1iZXIgMTEsIDIwMjQgNDowMiBQTTxicj4NCjxi
PlRvOjwvYj4gTWFydGluIEJyYXVuICZsdDttYXJ0aW4uYnJhdW5AZXR0dXMuY29tJmd0Ozxicj4N
CjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIFJGTm9DIFRYIGFuZCBSWCBub3Qgd29y
a2luZyBzaW11bGF0YW5pb3VzbHk8L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8
c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSJkaXNwbGF5Om5vbmUiPg0KPCEtLQ0KcA0KCXtt
YXJnaW4tdG9wOjA7DQoJbWFyZ2luLWJvdHRvbTowfQ0KLS0+DQo8L3N0eWxlPg0KPGRpdiBkaXI9
Imx0ciI+DQo8ZGl2IGNsYXNzPSJ4X2VsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6
QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2
ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KVGhl
cmUgaXMgbm8gZXJyb3IgbWVzc2FnZSBvbiBHTlUgcmFkaW8gYnV0IHdoZW4gVFggYW5kIFJYIGJv
dGggYXJlIG9uLCB3ZSBhcmUgbm90IGFibGUgdG8gc2VlIHRyYW5zbWl0dGVkIHNpZ25hbCBvbiBz
cGVjdHJ1bSBhbmFseXplci4gSG93ZXZlciwgaWYgd2UgZGlzYWJsZSB0aGUgUlggY2hhaW4gb24g
dGhlIHNhbWUgR05VIHJhZGlvIGV4YW1wbGUsJm5ic3A7IHRoZSB0cmFuc21pdHRlZCBzaWduYWwg
aXMgcHJlc2VudC48L2Rpdj4NCjxkaXYgaWQ9InhfYXBwZW5kb25zZW5kIj48L2Rpdj4NCjxociB0
YWJpbmRleD0iLTEiIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jazsgd2lkdGg6OTglIj4NCjxk
aXYgaWQ9InhfZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGlicmksIHNh
bnMtc2VyaWYiIGNvbG9yPSIjMDAwMDAwIiBzdHlsZT0iZm9udC1zaXplOjExcHQiPjxiPkZyb206
PC9iPiBNYXJ0aW4gQnJhdW4gJmx0O21hcnRpbi5icmF1bkBldHR1cy5jb20mZ3Q7PGJyPg0KPGI+
U2VudDo8L2I+IE1vbmRheSwgTm92ZW1iZXIgMTEsIDIwMjQgMjozOSBQTTxicj4NCjxiPlRvOjwv
Yj4gTmlkaGkgUGFuZGEgJmx0O25pZGhpLnBhbmRhQGN5cm9uaWNzLmNvbSZndDs8YnI+DQo8Yj5D
Yzo8L2I+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFtVU1JQLXVzZXJzXSBSRk5vQyBU
WCBhbmQgUlggbm90IHdvcmtpbmcgc2ltdWxhdGFuaW91c2x5PC9mb250Pg0KPGRpdj4mbmJzcDs8
L2Rpdj4NCjwvZGl2Pg0KPGRpdj4NCjxkaXYgZGlyPSJsdHIiPjxicj4NCjxkaXYgY2xhc3M9Inhf
eF9nbWFpbF9xdW90ZSI+DQo8ZGl2IGRpcj0ibHRyIiBjbGFzcz0ieF94X2dtYWlsX2F0dHIiPk9u
IFNhdCwgTm92IDksIDIwMjQgYXQgMTI6NDfigK9QTSBOaWRoaSBQYW5kYSAmbHQ7PGEgaHJlZj0i
bWFpbHRvOm5pZGhpLnBhbmRhQGN5cm9uaWNzLmNvbSI+bmlkaGkucGFuZGFAY3lyb25pY3MuY29t
PC9hPiZndDsgd3JvdGU6PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF94X2dtYWls
X3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4OyBib3JkZXItbGVmdDoxcHgg
c29saWQgcmdiKDIwNCwyMDQsMjA0KTsgcGFkZGluZy1sZWZ0OjFleCI+DQo8ZGl2IGNsYXNzPSJ4
X3hfbXNnLTIxOTE0OTY4NjIwMzI2Mzc0OTYiPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IHN0eWxl
PSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2Vydmlj
ZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdi
KDAsMCwwKSI+DQpIZWxsbyBhbGwsPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRv
cyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGlj
YSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8
L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxB
cHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkkgYW0gdXNpbmcgVVNSUCBuMzAwIGJvYXJkLiBJ
IGhhdmUgdGVzdGVkIFJmbm9jIFRYIHJhZGlvIGFuZCBSRk5vQyBSeCByYWRpbyBjaGFpbiBzZXBh
cmF0ZWx5LiBCdXQgd2hlbiB3ZSB0cnkgdG8gcnVuIGJvdGggdGhlIGNoYWluIGF0IHRoZSBzYW1l
IHRpbWUgVFggZG9lcyBub3Qgc2VlbSB0byB3b3JrLiBBbnkgc3VnZ2VzdGlvbiB3aGF0IG1pZ2h0
IHdlbnQgd3JvbmcgaW4gdGhpcy48YnI+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jsb2Nr
cXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5XaGF0J3MgdGhlIGVycm9yPzwvZGl2Pg0K
PGRpdj48YnI+DQo8L2Rpdj4NCi0tTTxicj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2
Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_PN3P287MB029150F48ABC85103226A41193592PN3P287MB0291INDP_--

--===============3309662312538239791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3309662312538239791==--
