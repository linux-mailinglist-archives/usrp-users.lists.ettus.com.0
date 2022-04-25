Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A20E250E178
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 15:21:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 731D238516A
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 09:21:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650892876; bh=kTyeUmSAeWYWn2C1KzXMJmCbXOnPZN92pRh39RmeLzU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A0V8TD1Zhg+zgVBpCzkdmdDhS06m/0ROsl2P5hggrxrZc5EwvH8G2JUOPltRzWO+s
	 AxvwTKKoDZ4XgTT7N9TN86vVm8K7XYcN6+SciR2TqnlUN4qOILaquxEFcddKA1bmSF
	 NbemeHr4zzgKUBNsP+TPIfHljco3j+2QzGFchEVwz58UOuVyg40a4VFpVZh4aDJBPH
	 NFN5jUStc77U738jVx0jC2qf+zLQ73r227W1jBy8XFHjUHVhX5x6BFABUHl3kCz10K
	 jUos3mxVZlmyRcb+0afho6NJ1OP+bP4LlTzGqbwpleSbO72tdZNXXMi/2OTp6soXoJ
	 5YpyMNJF2jImQ==
Received: from NOR01-OL1-obe.outbound.protection.outlook.com (mail-ol1nor01on2118.outbound.protection.outlook.com [40.107.224.118])
	by mm2.emwd.com (Postfix) with ESMTPS id 45EB33849CD
	for <usrp-users@lists.ettus.com>; Mon, 25 Apr 2022 09:20:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="DC6gv9R8";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fd+7VYhcOjXMte28xf5FKL9aUPbkA4vSfMu867pyYiUsxt7sYuZoutJO9F4dioaqTNLMQPZhSv559nDgRykjNfKqdfGkdhY/KVOUA3BvIidLqMk9CW4OOiK0jPn1+nMrP7OhFVnMcouM40E+3w+R6DNLQSF6INlOd18weCRl71jeMb6nXmHPP1EkTr3Xj0Uqlmas2dNdEC5PQg6f+MifPf8zN6yLg9pXoPDylTvYblqp28xHNo2kyUUMGMr4NfQlFx4Jg3qHuWSWNAd7bXUJf9gO/lTxbn7M0Og4cpKSieeFWdHLeAkqMNdqIa3bUMPZw/G8wl9uIFJc7Fx4r0S25Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IaLT6eU71yf5fuVoxsrAXrt7Bcn2CU5RpYi09+M4m+I=;
 b=iovggUDGaQ7Od+zIOQytwDIf8E7KuVjjReO+vjHnCWfybXuyalplSJdkBc19LRSbRqw4pwAVIdgOXARSRlnN1aPnKZAaMPNi4RUam0+unSqbGRDxnLlJDc2V/fLdY6C08F2no/wcMBuKlxRkzVvPYGG9+7KgR5YNe56kkL437EYJw5iqSmdJ26BOzzQBwojPfBXRZSv1EXkqYqO2+OLVowJdP294Lj8NpfiAZ7WKiiF/sXuO5v1BBSaTGRVXKKehqiGeDblQgl/q1GDd/9ATzPaaWMphNYc9nDY4ZwJF7TNSnwhmxu55CWdew2AUKXhtGc8GOwuALz5E8rZ6f7IltQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IaLT6eU71yf5fuVoxsrAXrt7Bcn2CU5RpYi09+M4m+I=;
 b=DC6gv9R8KEy3XHHlE93SXqGa55kj7S/hmInArh1/SZj/q7/xic46UtDXXN52j8p1RqlA82Z9jw2iHKJopc1FW9hgYNu4Qf+zN29MWQ9RIdEX+G9OVAzHCEaZi6zGn168aSx9jgWH0qLgGXWLrqF/BKlI36RZ5nQgypohwa0ZzhLphAipW5chNIsULvIV9E4G8+48OiLzZ1jQt+HUH45+2ZUJZxUkJDj7o1Ejw3qdldAoj7qrvqKn0pN5tGdbfU6JJxDuHijDNyvjZ2E8V7uJInpUJb07RqMlgmFKYzatRxZxauBETZ9svXUIMWaqtz8FPDIrCuHCKmAVmy9wISk7gA==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 SVAP279MB0189.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:6::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.13; Mon, 25 Apr 2022 13:20:04 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::494f:c01e:a51b:207]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::494f:c01e:a51b:207%6]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 13:20:04 +0000
From: =?utf-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: E310 USB - serial problem
Thread-Index: AdhH9sfWDXFvJQC/RWuhgTAu+EymTQQIkwgAACN7YlA=
Date: Mon, 25 Apr 2022 13:20:04 +0000
Message-ID: 
 <OL1P279MB0083C96415D5C8DD456F99C9A0F89@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
References: 
 <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <84e4af31-2c42-34c7-a918-dfdce959bf82@gmail.com>
In-Reply-To: <84e4af31-2c42-34c7-a918-dfdce959bf82@gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6efc1fb2-0427-4a8e-3cde-08da26be4f60
x-ms-traffictypediagnostic: SVAP279MB0189:EE_
x-microsoft-antispam-prvs: 
 <SVAP279MB01893BCAB3BCF3DF6A13609BA0F89@SVAP279MB0189.NORP279.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZeO4Z0ZvnhwdqWbA5bPY9oLq3vPzwjrW2F/JUwFMgpYs59mRwb1GCKGz1ERSAiwn3HH1yZH3lNY6eNECuYXnjzOCQKD+6Cn5XcRD1Cvih37J7/QYg5MQcb3ZASfNn9nPW5ZiQIB76WiNuaCDrnHzbBHSWwuXjKzxIw0KtJzLKDsZWgP4M5I10gfSM1jwIYOtz/A5NSmQsbjaaPgNzsORTZB0GzxqY6uYt5od49Bppg+hP/bU+VaGbGWaBka0mLitJp+PN0M47kKa33smivNDZjo3/5Byp6zzVIqJU33n3CXc767DZsMvD7FafGfL7DzU0D0dBjXPu4K/cXV3Xk/Z/KKlfvqjgE1FaScspmxI8yobI8G23TUSIjVUBM5wP16eH7yPfWjsteI8JZAJMauwxhQNMxaC0sQChRLWFChQsw7MDUuurSnJ7Ozp7bLv/Tmaj8RHprtd9vGjKw7Hn/W2lLDWqnOl0rEuqxAqjBQVEIyEdm6ROc/gk/vgVyhW/dPVlFiMhbHD0E/rSnOTLzqTg4ddytVgILp8noMWfHL8Wj/BPFBFFtyTMDjnnpREzsBOi6zJDVUnibi7bwrChnoLAIvaTy2DzESNKdogdfgxofqjbbR8UxRyudMxLkrhrMz2XlQvq3oP9ixFPgA5MwSrbqK8bD88URMV0Y3nQHs212n063l2dlSqqj+ynL8dxiKVcPFolBpoKFvEAmYvKhw4hw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(376002)(366004)(39840400004)(136003)(396003)(86362001)(85202003)(508600001)(66476007)(66556008)(38100700002)(38070700005)(26005)(6506007)(33656002)(85182001)(186003)(9686003)(7696005)(66446008)(64756008)(66946007)(76116006)(2906002)(110136005)(71200400001)(5660300002)(8936002)(55016003)(8676002)(52536014)(122000001)(316002)(4744005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bWNPMU5INUVQbEYvWkx5SnVmQjB5d0svUHpjMmFlL3NZWkZKbWV0dy8vUzZM?=
 =?utf-8?B?NkFLbUlZYnRBdEwyWTZNWWI1VmNycURGUUhNczk0NE14SVEvcUtBZFR0a1gy?=
 =?utf-8?B?VThxT1dPbFA3OUp6ZE40WDUrOHpXY1huVFF3ejZJMHFiODFEV2FqRnNENTlk?=
 =?utf-8?B?NjYzeTcweWMyNHduSUl5b2hEVm12M2pRZUVzeCs0RUg4Wmc2VXZ6NWx3Y0RY?=
 =?utf-8?B?M045MDUzallyMHVleEhzMFUzWGtSaWhRVGVtbU1nUm9ZYS9QWDEvRTQ0MzVJ?=
 =?utf-8?B?bWVTcmtNTmw2bDdFcnlMdXExaHFhNUtEVXdhVmg0K25UaW5saWlRd3ZSWFY2?=
 =?utf-8?B?WXowbkpuMUpKQnc5U0FOZkpqUis3SGhlRHcrUTZ2dGtGdEhJVThLZEt2SzZU?=
 =?utf-8?B?Wm52S3d0UFdKMnUyRVpJOTcyZ1FOeGYvMlZxVlNwbWNYeER1ZU9WSTk2OEh6?=
 =?utf-8?B?RDJCbkF3Z2g0UUxsZXVjVUpnRXpRSG9VVEdseW9Ec09IcmtoM3hXSEZvTVdL?=
 =?utf-8?B?dnV0U1BWaUdVMENmdnk1SlRDNlVpWWtZb3RoKzRJd2FTaEdrLzJ5SFBoSmZx?=
 =?utf-8?B?TlEwYmpkRWRoWVVNNHF1RHRMYjVjU1h6d1B3MUVnTEIyN3crbVZnZjBsdzRj?=
 =?utf-8?B?a1RMdlRGMjhYSXlTdThiNTd6T253OWlaZGlXbXVTYUEveEFtZ1c2clhrd3Ax?=
 =?utf-8?B?WXBDT3pSWDdpTVJ6bytWQXFQR3VWZE50V29qb1Y1ckg1aVJTVHlCdjVYTTho?=
 =?utf-8?B?SGlWL1duaEh1dzRDbVpDK1RUQ2VBMjZ3a3RHUzJUUWdvejVoM2toRGxPcHNk?=
 =?utf-8?B?WHM0dEp4R0x0M3lpQzdVYkRSeTl4cHN0RDNvcVZCZnR3akE3MmFnT1ZROWJ5?=
 =?utf-8?B?TGJuT3FCYlFNRVRTRWQzOCtIaWw1QmMvT2lVUUMzRUhoZWpFZjJVbis4KzJp?=
 =?utf-8?B?emRZTDNYQXcwWDFOTEFnM2orTGxKV1JYeFlxMXRuUTQrdzg4M0ZTc2REWkda?=
 =?utf-8?B?aE1Xb2xBOU5OY3lOanpKOHBYWEo1T013b2k1MGNUZTNsN0dtV2V1OTBMTXk4?=
 =?utf-8?B?RGpNdkpDTk5WUVg4SzdFZ214KzdTcjd4a1lMRzhlQzhWU01MWTNiUitDcFB1?=
 =?utf-8?B?N25oaDRWTzNpeXZJREVHcnZJUk9Nc0FNR1gzbHg0M3MwYXU4dnNnVXFIWWRu?=
 =?utf-8?B?N0JwOFkxc0hTdis2Tk5KWEdEZzBGUlhhdENrTFBnSEM5RU9HWFVZYkhQSEll?=
 =?utf-8?B?Wk5MNk1QNmsxcEVlQVdEN0V6TFlEZDM3TUYwRXV3V1VVZGlXZ1gzOTBkMVd3?=
 =?utf-8?B?THlFR1U0aWFzcEc4cysyVnVEVTdYRjBSTVN6a1hPbkdTRjZyYTZ0MUFBZmhl?=
 =?utf-8?B?anRHNEZxM1NhZUFiMGZzL3lidUdoVklpOS9zRTNHMnVrc3RVTVpFZnQycjdp?=
 =?utf-8?B?NmtrakprSFlqaXdOWmozTkFTOVk1cmtDU2VpWDhXZlpKVGpMaHFPZUZXZkJC?=
 =?utf-8?B?N2lFZ3QwbDJxN0dXVXM0elorSmsvcGg4TjZPZ2UxK3VTaThrY0tQNStwSzVl?=
 =?utf-8?B?QzZuRmFxL0lyMWJvV2V0R0NDbUFWcHoxR1dzT01PNkZxRGxHNmcvWUFXNlZz?=
 =?utf-8?B?V2N0RXJjVWloTjBhRHBxZXJQTEZKOTdoQTlTT3FMV0JxZnd6amkzRTdON0pv?=
 =?utf-8?B?ZUdJdGpBaEQ5YXhHOGIvVlBibGhLbzB5TzFIbnFtbUxGVWc0b0pESVJnWnkv?=
 =?utf-8?B?MjFYLzRrTG9PZm9tOWRlOU80M2s2YjhuQ1dudWFXNEFxaUY4TStMQm9zRXVU?=
 =?utf-8?B?TnJEam9RZmtTN1YvZWlrWW1kd1ZBUmJVUll4ckpLcno4S0IyQkFPWGlrU2hu?=
 =?utf-8?B?MEFCS0p0dHI0YVhWODdBR29tbkVXTWErT05aWVBGZDllYUZMNCtCM1dZU3ho?=
 =?utf-8?B?czMzOGJRV1dHSlYxditsSm5zcUhWQXB3cXI3MEFCeXZvYUNqdlBmVTVtR0xz?=
 =?utf-8?B?b3VLdGx5L1lscEllUWtiYks3RGl5bVMyMWJrZTNFL1hoeHpYMnBzRzUrMXNh?=
 =?utf-8?B?T1BEUm9hSUpKVmNoNHJwdXVWaDRQeWUyTkE4MFdCUUhDN0lqVk01Ky9wTHhk?=
 =?utf-8?B?aXBWQkYxK0xWV3BKVEhueFNiVmxua1FiTEk4ak5MN1BFZ3BsYkhITWFvUUYy?=
 =?utf-8?B?N290ZjRDTlBlR1BBWnhQM2dpelFmZzlaOWVVaGhXaWQ4S0FxVHcxWTd2cjRr?=
 =?utf-8?B?Y050V3V4MDlJS3MzS1RXbFZSODNHYm41bkVsMkp0VXVmWVRtV3pkODVvckp4?=
 =?utf-8?Q?GZgkq1jIw803NeqOUh?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6efc1fb2-0427-4a8e-3cde-08da26be4f60
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2022 13:20:04.3382
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YnYnPIbx8NB9nf5n2SAoyPzvRc1Z1hHnzqPFKTyE+YMalfHBWjUWp8J85gY+Rxtd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SVAP279MB0189
Message-ID-Hash: LIM62XIYXSL6U7L5CJ43DK4JZILN5F6O
X-Message-ID-Hash: LIM62XIYXSL6U7L5CJ43DK4JZILN5F6O
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5HKWZUMUJXIXUN5NGQASG3AMJF66BGV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3468523559887394976=="

--===============3468523559887394976==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB0083C96415D5C8DD456F99C9A0F89OL1P279MB0083NORP_"

--_000_OL1P279MB0083C96415D5C8DD456F99C9A0F89OL1P279MB0083NORP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGVzdGVkIG5vdyB3aXRoIHR3byBkaWZmZXJlbnQgY2hpcCB0eXBlcywgYm90aCB3b3JrZWQgZmlu
ZSBoZXJlLiBUaGFua3MgZm9yIHRoZSBxdWljayByZXNwb25zZSBhbmQgc29sdXRpb24hDQoNCg0K
VGhlIGxhdGVzdCBVSEQgNC4yIGltYWdlIGZvciB0aGUgRTMxMCBub3cgaW5jbHVkZXMgdGhvc2Ug
ZHJpdmVycy4gIFBsZWFzZSB0cnkgaXQgb3V0IGFuZCBsZXQgdXMga25vdy4gIFdlIGRpZCB0ZXN0
IHR3byBkaWZmZXJlbnQgdHlwZXMgb2YgVVNCIHNlcmlhbCBkZXZpY2VzIGFuZCB0aGV5IHdvcmtl
ZC0tDQogIHRoZSBDUDIxMDEgYW5kIEZUREkgdHlwZXMuDQoNCg==

--_000_OL1P279MB0083C96415D5C8DD456F99C9A0F89OL1P279MB0083NORP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNvbnNvbGFz
Ow0KCXBhbm9zZS0xOjIgMTEgNiA5IDIgMiA0IDMgMiA0O30NCi8qIFN0eWxlIERlZmluaXRpb25z
ICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjow
Y207DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
ZjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQpwcmUNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJIVE1MLWZvcmjDpW5kc2Zvcm1hdGVydCBUZWduIjsN
CgltYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTAuMHB0
Ow0KCWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5ldyI7fQ0Kc3Bhbi5IVE1MLWZvcmhuZHNmb3JtYXRl
cnRUZWduDQoJe21zby1zdHlsZS1uYW1lOiJIVE1MLWZvcmjDpW5kc2Zvcm1hdGVydCBUZWduIjsN
Cgltc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6SFRNTC1mb3Jow6VuZHNm
b3JtYXRlcnQ7DQoJZm9udC1mYW1pbHk6Q29uc29sYXM7DQoJbXNvLWZhcmVhc3QtbGFuZ3VhZ2U6
RU4tVVM7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJ
Zm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5
Mi4wcHQ7DQoJbWFyZ2luOjcwLjg1cHQgNzAuODVwdCA3MC44NXB0IDcwLjg1cHQ7fQ0KZGl2Lldv
cmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPg0KPC9oZWFkPg0K
PGJvZHkgbGFuZz0iTk8tQk9LIiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxlIiBzdHlsZT0id29y
ZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxibG9ja3F1
b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHByZT5U
ZXN0ZWQgbm93IHdpdGggdHdvIGRpZmZlcmVudCBjaGlwIHR5cGVzLCBib3RoIHdvcmtlZCBmaW5l
IGhlcmUuIFRoYW5rcyBmb3IgdGhlIHF1aWNrIHJlc3BvbnNlIGFuZCBzb2x1dGlvbiE8bzpwPjwv
bzpwPjwvcHJlPg0KPHByZT48bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij48c3BhbiBz
dHlsZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6Tk8tQk9LIj5UaGUgbGF0ZXN0IFVIRCA0LjIgaW1h
Z2UgZm9yIHRoZSBFMzEwIG5vdyBpbmNsdWRlcyB0aG9zZSBkcml2ZXJzLiZuYnNwOyBQbGVhc2Ug
dHJ5IGl0IG91dCBhbmQgbGV0IHVzIGtub3cuJm5ic3A7IFdlIGRpZCB0ZXN0IHR3byBkaWZmZXJl
bnQgdHlwZXMgb2YgVVNCIHNlcmlhbCBkZXZpY2VzIGFuZCB0aGV5DQogd29ya2VkLS08YnI+DQom
bmJzcDsgdGhlIENQMjEwMSBhbmQgRlRESSB0eXBlcy48YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_OL1P279MB0083C96415D5C8DD456F99C9A0F89OL1P279MB0083NORP_--

--===============3468523559887394976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3468523559887394976==--
