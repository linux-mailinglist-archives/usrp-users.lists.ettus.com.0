Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA2C524847
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 10:51:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0CA7384689
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 04:51:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652345471; bh=t1eFnob1XwAA6Oc6ioYElwCsjayGtdSEa3MnLm5pg9I=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Sq4VRmm5NzxICnd8RhHiBPHo4S+VXJv+j8gT1QX7e3SqRUL0e3jqwwWYLeCRF80tG
	 ccU3jzP8gnUih9zBXNgl1++riomXMXEv/VO0vCErufnv2zGgTfr+lF4ZiF1/+czwrW
	 E6qHJmlk/uHyAe+6j/L2CXuRKlrW6Y+RptW4CFiL63pRQjDBfgu1OsZPQYTRln5KPf
	 L6WK8Iz8KUYw6gvJ/dvWUz+8RPp4KrCnQf2w1Qimzf5uHu+IkM3mDbfNXfWirb2AXQ
	 zNnGVAx0j0SV0/JlZLVFNJgtwphkmonE7t0+RroLlgQnveEHNJR78DA7IwFEMUgaqC
	 iOX4cOPOgYrzg==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2127.outbound.protection.outlook.com [40.107.22.127])
	by mm2.emwd.com (Postfix) with ESMTPS id B4ACE3844C5
	for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 04:50:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="b0u/B4vt";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDWYejVnNZgtjG+0r6pEuPrrasnwepzAZpYgob71ddgqsa7hmiM/GtpNLxk3KkJmJj7V3LkWq8rA8iso22AeaGsdo73DqkxTBlkgGAXoxqiQ5ufCC2nDKFuE8VmbYNs2bPULzGbz/3Dz1i9INokCcyTIYwD3qDCxkDCMk3DJuDP0f9ZtrrAoKcPVRQQTBB8jDUYl28pEdSK2Pv6rfmJpIrKwo+sEk6e7yvbFASt2Iye/KX9INzH4dw13VJmLoVYq9LDECzIZ5pt/FG6HCB13dq2WHK8KZQrWxfbvIp4J7rmve3qfNI2hC2Kh4rNb9DlK9D5tdLV5YfczKiRHmTm6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SE24p5QGyqVifGiT+OY4fW2OKSIYXap4pvtZTnOf9go=;
 b=iOgvQiRe2/L+t5qJSj83h0CosLOzrnYCwqebqbKlk7inrU/mvELatoeWXozDgfPhjSwUupMEBiT702vdBSXV+AbdAsnC4GGqvosL9eze6wEOLNSzMMtPn3MOAONStRn0cZwgHYoTuBhbRmmdFpB7XV5H5pgu5InP+QNIHFAaYKyFo/9TgtH+G8wAJZ6C5mGbk0Tp0zfQwzZo1ts3LojWetbiiwByvUJdyb2OWsswLSaT2/szH9FnrfQyWhnfziT/uiQlSwigP07r0wf111fZsbn4dr5l+iA2Vg2nuS7k6oVF4czKB3+mtWJc4+vsfSnSnZAzGyzbroJH7d2S3AToxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SE24p5QGyqVifGiT+OY4fW2OKSIYXap4pvtZTnOf9go=;
 b=b0u/B4vtJAK8hpkNdUlpdVWwVxoJfnHMfpHoXGvLVzMzdEaPSSOh42IRBOAy37MrdfBdFGsZBEtgB5pg4oxAEXbMPDF1N13LByDLElfuFCKJcnsLDotWlth1fXG0buuG22o/8Cu2BMoZAVosINFzhCSHnkJ9lIEIfiPbV1FJ2CU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PA4P190MB1311.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:10c::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.13; Thu, 12 May 2022 08:50:09 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::698c:52f:302:314d]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::698c:52f:302:314d%6]) with mapi id 15.20.5250.013; Thu, 12 May 2022
 08:50:09 +0000
Date: Thu, 12 May 2022 10:50:08 +0200
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <20220512085008.t5jsg4uojzhalmiz@barbe>
Mail-Followup-To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
	"Dobler, Anton" <anton.dobler@unibw.de>,
	"discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652294738824.26535@unibw.de>
 <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de>
 <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
Content-Disposition: inline
In-Reply-To: <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
X-ClientProxiedBy: PR3PR09CA0026.eurprd09.prod.outlook.com
 (2603:10a6:102:b7::31) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e93df71-d106-4419-1ece-08da33f46b55
X-MS-TrafficTypeDiagnostic: PA4P190MB1311:EE_
X-Microsoft-Antispam-PRVS: 
	<PA4P190MB13118A7B46B6D6BE9F80D010F0CB9@PA4P190MB1311.EURP190.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bM0Yx7GwqzU0V08nPAX+YmtO/Feg29oeXEm9yxZk+uJB/zTP1kWFU7n0SdJ8gojorTNT3AiqiLAr7hAYVVlmz9dEVd1g/sTsFW7o68KwTqTIK0oxeWZQ42Dgqbhajq2Iwb0qoXui4RLu4Sl34sUKMk0qkvn5vR/RQmLemAc5nvo6gt5GQYDdoTp74HezMIRE++29Vuwa0wib5T9woJ9N0TApAxECsDxzRYSelVRKqxm3+B+8HH80FLVroo5vVuYgZRiSrzFA8W6LSnpyolwj+6Ael8eamqZwG4KBJDhCFAY9dTl0v7bB0l8cCeTx9Xfd/yZ5K4hVGLY4JlNes/KJNmmsPFwdZ8liMJAAvXu/L9c/v64GwFNW9f2cvbl4Ba9Q/sOXJPsTrcj4DzL9XgeZlM/X/8IchDdZPnkjtLihNY3AQn7UNLoV+p1wRrN8DLwQoLFzQAFUstv6qNqub5D/4IJNLlXhvaoHsmvBGHW1stgOURDDylbFP6Rdp3s9QZsJhL3Tg5GZU3hiU+Ze2jiqWd1E1mTPeI0hvCJcGDAtZbyuF+t49ubGKxSUNBzWg1TD0tNW2YE9AKzoMbbz76A3exG96FkFMalD7TQGChRo4cmlLmWWHiucaoyQB9KqoygqXlp7fjjpf6eYupv9XJzyEaK1JzalsdNZJGHzclzPkiZ3B9R0SawfzrK+zTJFs7ksiPSogKveTLB7yjUIT9Up5Huo9mBt91yNdwm61ed9IDw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(8936002)(33716001)(38100700002)(1076003)(5660300002)(6512007)(9686003)(53546011)(52116002)(6506007)(6486002)(66476007)(66946007)(966005)(66556008)(786003)(6916009)(316002)(186003)(66574015)(83380400001)(8676002)(508600001)(2906002)(86362001)(4326008)(54906003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TVNISjRZSmtIZGU1QThZT1oyb0J2SUxsR0MxWm80K1VZeGtlZm94SW4wdXpx?=
 =?utf-8?B?a3VFTGx3aEtYaXBzZ3VSeWxUcEtEcTV2SU9VV09HbjNVVnBkSlBvV2dKSG16?=
 =?utf-8?B?U3p1QVZPRFFIb1psOFBZN1ltYVVCRVpmbHVBTjZWUENPOUk1c0NOeGZHZ29T?=
 =?utf-8?B?NjEvdkZ6Qk1MdnBvWEs3ZHdoWkRjWWZEVXJvVGE5VDBhbU90NHBwbFpMUlJT?=
 =?utf-8?B?NXMwM01tenFPUVJyeEJaYzV4VGhtV2xqZ21CV3RaTm9MMlhzSkswUGp2MVZH?=
 =?utf-8?B?MFNnbldWY3JubmpXVVZtTFhWZGp2TlJoZDlhY0Zrc1B3eU96VlFlWUVFak9n?=
 =?utf-8?B?dk82MWdVSXo2S2hjalBUY1BZbUxwSmF3WWZHVk9PY0lRRHVQMXFBVEl3aU52?=
 =?utf-8?B?MGxXTU01SWZDbEZmYlJURmNRc0pYNmFaQzF6TWRGNWN6Q1kvTUZqNVBHWDBu?=
 =?utf-8?B?M3M0REdSemFNN05pbGs2cGRqbUdHREVSdHJWLzl2OERXc0JYSk03RFdUTjZn?=
 =?utf-8?B?bnEzQjcwUks2aU9Sa09ManJ2VlptMTBzZytZY3dwaGp3NCs3YVpkYS9ERlZu?=
 =?utf-8?B?VnpxeG5pWGdnSUdYR3I0c2hsc2MxaHBLWVo3aXZSaHp2VGxLMWpYUHFpWGVR?=
 =?utf-8?B?TVYraHZVakVtOXlyZGdWbDI1dXBwaFpWRXFZdlRnb0RGdGpCc1dCQTZubzY5?=
 =?utf-8?B?djQrM1BuSUEvcnpKUmxDVmhEcExzazl3dmhZdlJUU0UwcHJtNjNxbkpMa29X?=
 =?utf-8?B?M1FhKzdjNjZOVGZUZXZ0elZocHM1aExtWlp4a3hhb0Q5L0tKTld4d3QrUmJn?=
 =?utf-8?B?dDdkNDR6Y2dLWmpOMFp4eDhGL1BJdkttY21xd2hrY1RlZ1BQTmsydDIxRjFs?=
 =?utf-8?B?U1FRbnJnbmFjallJTHNsOTdueE5id2tRZ2EwVTM5Rkl0MUdhNE5MZWo1YXBo?=
 =?utf-8?B?N0NNODNNREF1Rko0Z3A5L1UvTTRPczJ0UWVxbHN0aVo0MnhuN2srOVpKbkt2?=
 =?utf-8?B?VVA4SHZSVFFVR3lodmZtNXBSV3VlZGJ3TkxObmp0cHY4bFFocDIrRkQxQzdH?=
 =?utf-8?B?OHcveUNaZkNTSk1iczZMOXNuZW84dGFvZWJ2RmdsK0NxYkY2djJ2YnZiRVlq?=
 =?utf-8?B?bWVBc2wxTVFkcTdWNnVnWlpoWE4rYkhSWUhyNWd2RExtdU5ENFg2enFxbmh2?=
 =?utf-8?B?TGlEa0hDKzhYaXJqRUc0MDFUR0RUbEFwbnk2a2lTQ1RNdEs3d1ZLUXVoVjhD?=
 =?utf-8?B?T3ZmZk1ER1NEOW1yZjRqdjlPRzZJWEdDZ1JkRGROSzRPREpidTlmQmxtK3Fp?=
 =?utf-8?B?dUpkUmtzVWEyU0c4SEI3WStSSzZ0Nmdod3FrNFl2ei9HcS9zWktMREVtNFVX?=
 =?utf-8?B?MGt6bDRZNk5IT0NUdVdHa1VTY1dLS2VSK1kzWTBjejIwUGhDellEdnVnRHJF?=
 =?utf-8?B?TXJkYXNjSFdqOUtmYTYvQ3JuNDdzZjArS2VpUmtucmgyS0hjeXV5TkFEYnZV?=
 =?utf-8?B?NjZhOU5iQXVUSHhkelkvU0R0bTVQQUVtdlpZQkxQM1dUODdyZ3Frb2tKcyt1?=
 =?utf-8?B?SC80eXJJVGdzQW1rLzdiL2J2VmgzMFBIZmExTUFwWnVHaTR2Sk8xTkF6ZWl5?=
 =?utf-8?B?UHVMTjZIY2lXVkpZSU1ubWxXWDAvWFVkcjlsNEtucUhEcnBOMnN1WHBOY3Er?=
 =?utf-8?B?LzEwL3ZxZ0FVTU54aTdrZmhaK1lRckZWU3VQUHRsa2JpaitoYTMxN1hqMGhk?=
 =?utf-8?B?dG9BaFAzYU5QaFE0ancxR1Jpbm9YYUN1ODBIcFZEdG4wWXA5U3dadm5mckRL?=
 =?utf-8?B?Y0MvUjIvUU5NYW9lYm5uVFkybSt5Y0kyVjJ5Zmh0NE01ZzZsTlNHYUdqNE5q?=
 =?utf-8?B?UmVGR3FjWXhPU29jekpGQ0NaUEF0NVpIV3dzb3o0SXRqa0lweWszOEtGbGcr?=
 =?utf-8?B?WnM3UHorcDJkSlZONzZFT3Y4VU8wVFJ0OWpKblpHYVN5V2IvQ2JlYkxMQkNF?=
 =?utf-8?B?SjF6dllNaENXS2grcmpXWGVTV2ZDL0FORDlpSm90WVJjRzFyUUhNL2NpTHZL?=
 =?utf-8?B?cm9xN3B2MHBSU0tMaFVBV3A2UEhJcyt5bm04QmVTcXhMR3pxVTdoOEp5VFEx?=
 =?utf-8?B?ak5qTG5pRU5rUmZQQlFHSldwVzZSUkV6TS9nMjkyL1FlY1RsOEdrZVJ4eXFL?=
 =?utf-8?B?djhrcDVDcndlNjFUYUtuOGdyR2VLNUhVUkdkVS90eTZxN3NOdFp2ZlhuYnR0?=
 =?utf-8?B?cW9QNTFiUWZZTGt5T2lhRmVPbkZPTVl6bUVqQkRPcE5Bc05BT2JTdjZHOGlL?=
 =?utf-8?B?MlFBblJkR3RZQUdtc2FFZ3E0a3Fic3puakNYaTY3bHk4UnN3K3I1MjlvTnFl?=
 =?utf-8?Q?VVau2/C4fuqj/L6AEfJwfQF5oDphQGz1+xrZVGsKSfpYx?=
X-MS-Exchange-AntiSpam-MessageData-1: 2HKO9DyCwSEAcxjKjkYDZLG450SRO5OKL5w=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e93df71-d106-4419-1ece-08da33f46b55
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 08:50:09.4154
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 73xiPc9r8vcDVmipesvgzYHVUBwj8xUw0qxCeRCVzI0GTM3HaMigTyToMNKcOGW29+VSQsFeYEC+WCrGpezxQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4P190MB1311
Message-ID-Hash: NONAR42KIK3D633YWDZXS2FJVMRHPW5X
X-Message-ID-Hash: NONAR42KIK3D633YWDZXS2FJVMRHPW5X
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Dobler, Anton" <anton.dobler@unibw.de>, "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC, UHD4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NONAR42KIK3D633YWDZXS2FJVMRHPW5X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMDUvMjIgMTU6MzMsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToNCj4gT24gMjAyMi0wNS0x
MSAxNToyNCwgRG9ibGVyLCBBbnRvbiB3cm90ZToNCj4gPiBJIHVzZSBhIG4zMTAgYW5kIGhhdmUg
dHdvIDEwZ2lnYml0IGZvciBkYXRhIHN0cmVhbWluZyBhbmQgb25lIDFnaWdiaXQNCj4gPiBmb3Ig
bWFuYWdpbmcgdGhlIGRldmljZeKApiB0aGUgc3RyYW5nZSB0aGluZyBhYm91dCBpdCBpcyB0aGF0
IHRoZSBleGFtcGxlDQo+ID4gZmxvd2dyYXBoIHdpdGggcnggcmFkaW8gZG93bmNvbnZlcnRlciBh
bmQgcnggc3RyZWFtZXIgd29ya3Mgd2l0aG91dCBhbnkNCj4gPiBwcm9ibGVtc+KApg0KPiA+IEkg
cnVuIHRoZSBhcHBsaWNhdGlvbiBvbiB0aGUgaG9zdCBwY+KApg0KPiA+IFdoYXQgaXMgdGhhdCBy
ZWNlaXZlciBwcm9maWxlIGVycm9yIGFib3V0Pw0KPiA+IA0KPiA+IFdoYXQgY2FuIEkgZG8gYWJv
dXQgdGhlIHNoYTI1NiBlcnJvcj8gSSBhbHNvIHRoaW5rIHRoZSBwcm9ibGVtIGlzIHJhdGhlcg0K
PiA+IGR1ZSB0byBteSBzZXR1cCDigKYNCj4gWW91IG1pZ2h0IHRyeSB1cGdyYWRpbmcgdG8gbmV3
ZXIgcmVsZWFzZSBvZiBVSEQuwqDCoCBJIHdvdWxkIGFsc28gc3VnZ2VzdA0KPiBjb250aW51aW5n
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgdXNycC11c2VycyBtYWlsaW5nIGxpc3QsIHdoZXJlIHRo
ZXJlJ3MgYQ0KPiBiaXQgbW9yZSBSRk5PQw0KPiDCoCBhY3Rpdml0eSBhbmQgZXhwZXJ0aXNlLg0K
PiANCj4gSSBkb24ndCBrbm93IHdoYXQgdG8gc3VnZ2VzdCBhYm91dCB0aGUgU0hBMjU2IGVycm9y
LsKgIFBvc3NpYmx5IHlvdXINCj4gaW5zdGFsbGF0aW9uIGRvZXNuJ3QgaGF2ZSB0aGUgY29ycmVj
dCBTSEEyNTYgdG9vbHMsIG9yIHlvdXIgZmlsZXN5c3RlbSBpcw0KPiB0cnVuY2F0aW5nIHRoZSBm
aWxlcz8NCj4gwqAgVGhlIGltYWdlc19kb3dubG9hZGVyIGFwcGxpY2F0aW9uIHVzZXMgdGhlIFB5
dGhvbiBwYWNrYWdlICJoYXNobGliIi7CoA0KPiBQZXJoYXBzIHRoYXQgaXMgZmFpbGluZyBpbiBz
b21lIHdheSBpbiB5b3VyIGluc3RhbGxhdGlvbj8NCg0KVGhlIFNIQTI1NiBlcnJvciBzZWVtcyBs
ZWdpdC4NCklmIHlvdSBjb21wYXJlIHRoZSBoYXNoIGJldHdlZW4gdGhlIGRvd25sb2FkZWQgemlw
IGFuZCB0aGUgbWFuaWZlc3QsDQp0aGV5IGRvIG5vdCBtYXRjaC4NCg0KRXhwZWN0ZWQgaGFzaCBm
b3IgImUzeHhfZTMxMF9zZzFfZnBnYV9kZWZhdWx0IiBbMV06DQo4OWNiNjk4NTE4NGQ0MWQ0MmJj
NWJkZTg3YWRkYjU0MzJmNTFhMDY3MTc1YzFlYzQ4NTY4YThjMDMwMDhjYmRhDQoNCnNoYTI1NnN1
bSBvZiBkb3dubG9hZGVkIHppcCBbMl06DQo3M2NhZDNjZDUyNzFkMzg4ZGUyNzFhY2NkMTUwNDVk
YWNhOGQ2MWM4NTBhNWNjOTQ1OWJkMzhkYzBjYjY4OTNjDQoNCg0KWzFdIGh0dHBzOi8vZ2l0aHVi
LmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL2IzOGM5ZDgzNzIwMTQ4Mjg0MmIwMGUxYWY4NThj
YmNmNTE3OTFjMTcvaW1hZ2VzL21hbmlmZXN0LnR4dA0KWzJdIGh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL2JpbmFyaWVzL2NhY2hlL2UzeHgvdWhkLTJjYmE2NWIvZTN4eF9lMzEwX3NnMV9mcGdhX2Rl
ZmF1bHQtZzJjYmE2NWIuemlwDQoNCj4gPiANCj4gPiBUaGFuayB5b3UsDQo+ID4gDQo+ID4gQlIN
Cj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAqVm9uOiogRGlzY3Vzcy1nbnVyYWRpbw0KPiA+IDxk
aXNjdXNzLWdudXJhZGlvLWJvdW5jZXMrYW50b24uZG9ibGVyPXVuaWJ3LmRlQGdudS5vcmc+IGlt
IEF1ZnRyYWcgdm9uDQo+ID4gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNv
bT4NCj4gPiAqR2VzZW5kZXQ6KiBNaXR0d29jaCwgMTEuIE1haSAyMDIyIDIwOjU0OjE1DQo+ID4g
KkFuOiogZGlzY3Vzcy1nbnVyYWRpb0BnbnUub3JnOyB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiA+ICpCZXRyZWZmOiogUmU6IFJGTm9DLCBVSEQ0LjANCj4gPiBPbiAyMDIyLTA1LTExIDE0
OjQ1LCBEb2JsZXIsIEFudG9uIHdyb3RlOg0KPiA+ID4gDQo+ID4gPiBEZWFyIENvbW11bml0eSwN
Cj4gPiA+IA0KPiA+ID4gDQo+ID4gPiBJIHRyeSB0byBzZXQgdXAgYSBiYXNpYyBmbG93Z3JhcGgg
aW4gR1JDIGNvbnNpc3Rpbmcgb3V0IG9mIGEgbnVsbA0KPiA+ID4gc291cmNlLCBhIHR4IHN0cmVh
bWVyIGFuZCBEVUMgYW5kIGEgVFggcmFkaW8uDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gSSB1c2Ug
VUhENC4wIGFuZCBHUjMuOC4yLg0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IEhvd2V2ZXIsIEkgZ2V0
IHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2FnZToNCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiAvUnVu
dGltZUVycm9yOiBSdW50aW1lRXJyb3I6IEVycm9yIGR1cmluZyBSUEMgY2FsbCB0byBgaW5pdCcu
IEVycm9yDQo+ID4gPiBtZXNzYWdlOiBSdW50aW1lRXJyb3I6IFJlY2VpdmVyIHByb2ZpbGUgb3V0
IG9mIHJhbmdlIFJGIGJhbmR3aWR0aC4vDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gSSB0cmllZCBk
aWZmZXJlbnQgc2V0dGluZ3MgZm9yIHNhbXBsZSByYXRlLCBldGMuIGJ1dCBzdGlsbCBJIGdldA0K
PiA+ID4gdGhhdCBlcnJvci4gSSBhdHRhY2hlZCB0aGUgdXNlZCBmbG93Z3JhcGguDQo+ID4gPiAN
Cj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IFRoZSBzZWNvbmQgcXVlc3Rpb24gaXMgd2l0
aCByZWdhcmRzIHRvIHRoZSBkZWZhdWx0IGZwZ2EgaW1hZ2VzLiBXaGVuDQo+ID4gPiBJIGRvd25s
b2FkIHRoZSBpbWFnZXMgSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcjoNCj4gPiA+IA0KPiA+ID4g
DQo+ID4gPiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBtYXRjaCBtYW5pZmVz
dCBmb3IgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvZTN4eC91aGQtMmNi
YTY1Yi9lM3h4X2UzMTBfc2cxX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPiA+ID4gLzAx
MTM3IGtCIC8gMDExMzcga0IgKDEwMCUpIGUzeHhfZTMxMF9zZzNfZnBnYV9kZWZhdWx0LWcyY2Jh
NjViLnppcC8NCj4gPiA+IC9bRVJST1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNo
IG1hbmlmZXN0IGZvciBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4
L3VoZC0yY2JhNjViL2UzeHhfZTMxMF9zZzNfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+
ID4gPiAvMTAxODMga0IgLyAxMDE4MyBrQiAoMTAwJSkgZTN4eF9lMzIwX2ZwZ2FfZGVmYXVsdC1n
MmNiYTY1Yi56aXAvDQo+ID4gPiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBt
YXRjaCBtYW5pZmVzdCBmb3IgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUv
ZTN4eC91aGQtMmNiYTY1Yi9lM3h4X2UzMjBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+
ID4gPiAvMjA3Mjkga0IgLyAyMDcyOSBrQiAoMTAwJSkgbjN4eF9uMzEwX2ZwZ2FfZGVmYXVsdC1n
MmNiYTY1Yi56aXAvDQo+ID4gPiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBt
YXRjaCBtYW5pZmVzdCBmb3IgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUv
bjN4eC91aGQtMmNiYTY1Yi9uM3h4X24zMTBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+
ID4gPiAvMTQzNDUga0IgLyAxNDM0NSBrQiAoMTAwJSkgbjN4eF9uMzAwX2ZwZ2FfZGVmYXVsdC1n
MmNiYTY1Yi56aXAvDQo+ID4gPiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBt
YXRjaCBtYW5pZmVzdCBmb3IgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUv
bjN4eC91aGQtMmNiYTY1Yi9uM3h4X24zMDBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+
ID4gPiAvMjcyODUga0IgLyAyNzI4NSBrQiAoMTAwJSkgbjN4eF9uMzIwX2ZwZ2FfZGVmYXVsdC1n
MmNiYTY1Yi56aXAvDQo+ID4gPiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBt
YXRjaCBtYW5pZmVzdCBmb3IgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUv
bjN4eC91aGQtMmNiYTY1Yi9uM3h4X24zMjBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+
ID4gPiANCj4gPiA+IFdoYXQgY2FuIEkgZG8gdG8gc29sdmUgdGhhdCBwcm9ibGVtPw0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gQW55IGhlbHAgd291bGQgYmUgbW9yZSB0aGFuIHdlbGNv
bWUhDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+
IEJSLA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IEFudG9uDQo+ID4gPiANCj4gPiBXaGF0IHR5cGUg
b2YgVVNSUD/CoCBBcmUgeW91IHJ1bm5pbmcgdGhpcyBvbiB0aGUgZGV2aWNlIGl0c2VsZiwgb3Ig
b3ZlciBhDQo+ID4gbmV0d29yayBjb25uZWN0aW9uP8KgIElmIG92ZXIgYSBuZXR3b3JrIGNvbm5l
Y3Rpb24sIHdoYXQgdHlwZSBvZg0KPiA+IGNvbm5lY3Rpb24/DQo+ID4gDQo+ID4gDQo+ID4gVGhl
IFNIQTI1NiBlcnJvcnMgbWVhbnMgdGhhdCB0aGVyZSdzIGEgcHJvYmxlbSB3aXRoIHRoZSByZXBv
c2l0b3J5LCBvcg0KPiA+IHRoYXQgeW91ciBhY2Nlc3MgdG8gdGhlIHJlcG9zaXRvcnkgaXMgY29y
cnVwdGluZyBmaWxlcywgb3IgdGhleSdyZSBiZWluZw0KPiA+IGNvcnJ1cHRlZCBvbg0KPiA+IMKg
IHlvdXIgc3lzdGVtIGFzIHRoZXkgYXJyaXZlLsKgwqAgSSBoYXZlbid0ICpoZWFyZCogdGhhdCB0
aGUgcmVwb3NpdG9yeQ0KPiA+IGhhcyBhbnkgcHJvYmxlbXMgZm9yIHRoYXQgcmVsZWFzZSBvZiBV
SEQuDQo+ID4gDQo+ID4gDQotLSANCg0KQ8OpZHJpYyBIYW5ub3RpZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
