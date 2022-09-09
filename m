Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD5B5B3EEA
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 20:34:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3B85383FA9
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 14:34:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662748483; bh=LPYNkgft/b+IrI7tIPm6Qe8h40820WGkJYcJobsXuN0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fSSiOYdaYLKyuOrmo5JAiVOlWUp2Q974Q5fcQfZepiALL3n5OAKp4dZKSa2srcXv1
	 X0aBsWn+dc+LOSoesHygXAXDWW0ALAK1rHOKhMZcg0oRswiKND699K/O/ROYnP8XRy
	 ZZpzZdDWQKOhtPKC/7HQvVfgJ14c4aBbIhyulCzzsGKBNrTMQoJLO46HblARs3eZRh
	 C0cIa6oIdi96mMxafwLCtJz3jgf0OA+SKelKLo+wqp7DYvBSpHsiJkuO4tMZPQpSek
	 jWY7DqM6kOEy3licVD3vmFFtCMzArU3FFrVzvXBjv9OViiGpD7Lm9Bo8v2n1jNsWBZ
	 qSnRndAfQg1aA==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0086.outbound.protection.office365.us [23.103.209.86])
	by mm2.emwd.com (Postfix) with ESMTPS id 168AC383F4F
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 14:33:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="PLS8BkTU";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=LFvGRSfchwetifAXW2UO6+Wxm3bbZKomKGWqr22kH6Xq26j8IaqYANxL96rLfFyua+y1w6vcfyWQzIOXJkagHLEvsPLbPGZIbEj4OQVPnfJ/spQS5kpLz3HMm2ZR9tNtxN/Y1lbL1m8ylt0+D5WwlWLrsJAQsG2sA1F31knV8i5wyKMT2rmVZHid5asbaaE+R+HPmqbXyHj7EKvVRGs6/EPBlu14HpwnapAejd2Y3VNDkcO0m0+BDKf0U6BcbzHlbuwW51O2Ao1RZPtcP5is4rKPbKBFhrqVwUgtPg29p4I11Ph6UEJPG5kOnfDDo9B6c+44VbrM/bVRrHqRHBjsEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p/wsxaf2EIxO8JG/3uns9RfvYvn0HTpgceca1Q+XNOo=;
 b=vH+XXjFlyDtrD7qyeR7+0iGB+YCNpQNHA0ADex4Bx08epGNw6rPhwl0hCndurzohNPxjRxoV6L4dJqOChnWQOfQF8d6xet3J7DyAOpMRC7Xkv4KJxyVDA5MMikaAS1b70yK+Ejos35qcX3TsCO3AtFqL0OpyJfJ0W3wQ0LbBM2lZXuobJw9oKwtMvgMrUYB7r2cpm8G1wekJZG4POtQn+v+BF+t3I6T3+EyvPP2dwMsTTtMnLeDOZY+loa0owKtD8dSMiNoGHcXXKLixQFEbt5JIIXmciibFNTIXM3Sz8KAwvyG5gRUYeGAbPwtrUtYj3m7K0tiFyiQcJa6ts73kCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/wsxaf2EIxO8JG/3uns9RfvYvn0HTpgceca1Q+XNOo=;
 b=PLS8BkTUXaxltjxrhEEu/7nULWfnWiME9L0Tv+u36bMZc4a4ZvatW+2JfpK282BMYPP67Uz16FCg3/Bbj16uAPfuubwodFzqH9FKLj+rNX+KLdNcnblKZjzm7y70rzSyuoKaUbKjr1aMOpEmfBQSHH+6EXVkbh76Az1D10nNHYhvMgty9HvW8msAPxprm69gesqABh7IkSmTUE341zPCSYeCc6k4rEiZ61UguSZ625+RPSyx4oCAGo7jARtwzp/4cUwgvLQxSV5zTaZzHznrixvoNyVdpxGyJ1z5RmqoFMWCspai/8i88Hzxu/H95oePO3lEFTyUwVGcSI90vpyg6A==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB0996.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Fri, 9 Sep
 2022 18:33:28 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2837:9cf2:fc77:842d]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2837:9cf2:fc77:842d%7]) with mapi id 15.20.5588.023; Fri, 9 Sep 2022
 18:33:28 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "perper@o2.pl" <perper@o2.pl>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: E320: Periodic phase jumps w/ any external
 clock?
Thread-Index: AQHYxAkL8RtnKy10X02m/GaAqn5t563XZT3Q
Date: Fri, 9 Sep 2022 18:33:28 +0000
Message-ID: 
 <BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI@lists.ettus.com
 <u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM@lists.ettus.com>
In-Reply-To: <u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b59ea4a-7b76-472c-c381-08da9291c9ef
x-ms-traffictypediagnostic: BN2P110MB0996:EE_
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8ezPIorngATsvapChZ9KQqxzeNpTO8Wa/PKw0DyEhXhM02K4+YGz2Vunb7NGfBeu3ZA95j0WHBLCIHoSMhPetQv+YKRb/9v9DSqkUf+V8gelb1nDOgcaRavv3KHACpLsVsXGHV6zwKKsvvTDmY7XYqvw6On4xPf4RNLpc5dlXzfeCTs+IR8aUFFKwwNUN0Znl3Lqx/xlLOEW2GWMWziRY6iPRlTGixHtyZZdxwf2DnhREbTVtY0gMqLCi/7uxoQ5uknev9UPVNpBFmsOtfACIdthxRespFAJBI3jDqe2ziyt+Y0MpHMebGm67EIZjL7gWWisqaOz/BzgM3WBcUKA0G8JFiXKO9hNiQ9yZUxuJBItMTkgE/gVusQX7VA2bnpsM3u04fFINChu30xtPxly13LPrbPEG0wssc3KHn4YqqhM2P4FxnX+jiBWiaHqXGNltgjCul9ajqdThgC3ymm5Kd6zvtIzh2rVP5Jy7oSUe/kHAUXYziqWFvsdFNPWXoqXlTB5mTRsjEGR39/iv7c35VmGEhRoJ0pdkr9VGz7LyBOVxBmJsjztITO9894ek4cxaKyqQ0RcrCxQy8mxAMZAsAV0wp6lKBpb+O/l6XlqKKwVh9C9jRVK+rCqQcg2KQZPXEYXgVW3I5AXSzudFkIysa2+0c8J9XkWoU2S+uQ4aXHfe9m7xnWYvGUjR80iJ3llERzIS+YqmceUG+ix8KHWkDkUW1fuUHLtyRdOOC1QN+c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39830400003)(366004)(136003)(396003)(122000001)(8676002)(966005)(38100700002)(41300700001)(7696005)(6506007)(71200400001)(55016003)(166002)(38070700005)(508600001)(110136005)(33656002)(8936002)(2906002)(86362001)(41320700001)(52536014)(5660300002)(66476007)(186003)(66556008)(66446008)(9686003)(64756008)(76116006)(66946007)(83380400001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 lBWAAM4PoKTiAqYPOCwWQpZfJorXERKVCjkePEojH9e5yBUFP7XBO/nLHTR+6+VHnVfdpwqAN4u2AoMo9UIubGDn5+NfoTkeN9/tNTAzKrfI8ma+2zJ4mBykXc+P4Ni64Z45PJlltrsE20J47ijn+Abt16MBFXoNuq4QS05g+LvmfcHzyaslyuqi61ENsK+ffoAU1KgqAG17PU15vhxTtOq9u8Xel9Vh+AQkQtJWS61X5Uq1MD4CSBaP9BnN0TE7UinRk84TS71NjQNUOotyZRlecFVbQhrku3XHaIfq64pgfy5snUjS1GraDKTkF6ez68sOH2F1qzIJ6xt4yVZdmElnDXHGPQ+SN5R+PgjQRJCRqPyAVZVLoSgo99OLbiAb9vSpsNOaM2w67VIes3cgqUdAVzm1bUvauKbHCk1cNXE+/vwidkC4UtevCkk2qzHmECJpZrGOPteL1zcxy0Gcv7uDbbKcz4onKkr+YcHFKxs=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b59ea4a-7b76-472c-c381-08da9291c9ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 18:33:28.1724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB0996
Message-ID-Hash: NL62WMXBOY2NMNWE4UW27BZJK346KNOG
X-Message-ID-Hash: NL62WMXBOY2NMNWE4UW27BZJK346KNOG
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7P2LWT4SJTTO2JMS5JTZUP4A2SQIHYJA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5282548760635764690=="

--===============5282548760635764690==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747706C0DC81186F4442A64B7439BN2P110MB1747NAMP_"

--_000_BN2P110MB1747706C0DC81186F4442A64B7439BN2P110MB1747NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJbiBjYXNlIHlvdSB0cnkgdHVybmluZyBvZmYgR1BTRE8gb24gRTMyMCBwbGVhc2Ugc2hhcmUg
aW5mbyBpZiBpdCBoZWxwcy4NCg0KDQoNCkhpIFBpb3RyLA0KDQoNCg0KSSB3YXMgYWJsZSB0byBk
aXNhYmxlIHRoZSBwb3dlciByYWlsIGZvciB0aGUgR1BTRE8gYW5kIGNvbmZpcm1lZCBpdCByZXNv
bHZlcyB0aGlzIGlzc3VlLiBTbyB0aGUgcHJvYmxlbSBpcyBjb3JyZWxhdGVkIHdpdGggR1BTRE8g
YWN0aXZpdHkgaW4gc29tZSB3YXksIGV2ZW4gdGhvdWdoIGl0cyBUQ1hPIG5ldCBpcyBkZS1zZWxl
Y3RlZCBhdCB0aGUgY2xvY2sgc2VsZWN0aW9uIHN3aXRjaCAoVTU1KS4gSeKAmWQgYmUgY3VyaW91
cyB0byBwcm9iZSBzb21lIHBpbnMgb24gdGhlIGJvYXJkIHRvIG9ic2VydmUgdGhlIGNsb2NrIHNp
Z25hbCBhcyBpdCBtb3ZlcyB0aHJvdWdoIHRoZSBjbG9ja2luZyBmcm9udC1lbmQuIFVuZm9ydHVu
YXRlbHkgbXkgRTMyMCBjYW5ub3QgYmUgcmVtb3ZlZCBmcm9tIGl0cyBjaGFzc2lzIGF0IHRoZSBt
b21lbnQsIGJ1dCBwZXJoYXBzIEnigJlsbCB0YWtlIGEgbG9vayB3aGVuIEkgZ2V0IGFuIG9wcG9y
dHVuaXR5IGxhdGVyLg0KDQoNCg0KVW5mb3J0dW5hdGVseSB0aGUgZW5hYmxlX2dwcyBhcmcgaXMg
bm90IGhvbm9yZWQgdXBvbiBjb25uZWN0aW9uIHRvIGFuIE1QTSBkZXZpY2Ug4oCTIHRoZSBwb3dl
ciBzdGF0ZSBvZiB0aGUgR1BTRE8gb24gdGhlIEUzMjAgaXMgZXN0YWJsaXNoZWQgd2hlbiB0aGUg
TVBNIGRhZW1vbiBpcyBzdGFydGVkIG9uIHRoZSByYWRpbyBhdCBwb3dlci1vbiwgYW5kIChhcyBm
YXIgYXMgSSBjYW4gc2VlKSBpdCBjYW5ub3QgYmUgY2hhbmdlZCBvbiBhIHBlci1zZXNzaW9uIGJh
c2lzLiBJ4oCZdmUgcHJlcGFyZWQgYSBzbWFsbCBVSEQgcGF0Y2ggdGhhdCBhbGxvd3MgdGhlIGVu
YWJsZV9ncHMgYXJnIHRvIGJlIHVzZWQgYXQgc2Vzc2lvbiBpbml0aWFsaXphdGlvbi4gVGhlbiBh
biBhcHBsaWNhdGlvbiAoc3VjaCBhcyBtaW5lKSBjb3VsZCBjaG9vc2UgdG8gZGlzYWJsZSB0aGUg
R1BTRE8gYXQgcnVuLXRpbWUgd2hlbiB1c2luZyBhbiBleHRlcm5hbCBjbG9jaywgb3IgbGVhdmUg
aXQgcG93ZXJlZCB1cCBvdGhlcndpc2UuDQoNCg0KDQpPbmUgZmluYWwgb2JzZXJ2YXRpb24sIHRo
aXMgcHJvYmxlbSBpcyBhbGx1ZGVkIHRvIGFzIGEga25vd24gaXNzdWUgb24gdGhlIEIyeHggcmFk
aW9zIFsxXSwgYnV0IGlzIG5vdCBkb2N1bWVudGVkIGZvciB0aGUgRTMyMC4NCg0KDQoNCi1EYXZp
ZA0KDQoNCg0KWzFdIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfYjIw
MC5odG1sI2IyMDBfa25vd25faXNzdWVzDQoNCg0K

--_000_BN2P110MB1747706C0DC81186F4442A64B7439BN2P110MB1747NAMP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpwLk1zb1BsYWluVGV4dCwgbGkuTXNvUGxhaW5UZXh0LCBkaXYuTXNv
UGxhaW5UZXh0DQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoiUGxh
aW4gVGV4dCBDaGFyIjsNCgltYXJnaW46MGluOw0KCWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1m
YW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0eWxlMjANCgl7bXNvLXN0
eWxlLXR5cGU6cGVyc29uYWw7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJ
Y29sb3I6d2luZG93dGV4dDt9DQpzcGFuLlBsYWluVGV4dENoYXINCgl7bXNvLXN0eWxlLW5hbWU6
IlBsYWluIFRleHQgQ2hhciI7DQoJbXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1s
aW5rOiJQbGFpbiBUZXh0IjsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQou
TXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6
MTAuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRT
ZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4g
MS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0
eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRp
dCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5
XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVk
aXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hl
YWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0
eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0K
PHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+Jmd0OyBJbiBjYXNlIHlvdSB0cnkgdHVybmluZyBvZmYg
R1BTRE8gb24gRTMyMCBwbGVhc2Ugc2hhcmUgaW5mbyBpZiBpdCBoZWxwcy48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb1BsYWluVGV4dCI+SGkgUGlvdHIsPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
UGxhaW5UZXh0Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQi
Pkkgd2FzIGFibGUgdG8gZGlzYWJsZSB0aGUgcG93ZXIgcmFpbCBmb3IgdGhlIEdQU0RPIGFuZCBj
b25maXJtZWQgaXQgcmVzb2x2ZXMgdGhpcyBpc3N1ZS4gU28gdGhlIHByb2JsZW0gaXMgY29ycmVs
YXRlZCB3aXRoIEdQU0RPIGFjdGl2aXR5IGluIHNvbWUgd2F5LCBldmVuIHRob3VnaCBpdHMgVENY
TyBuZXQgaXMgZGUtc2VsZWN0ZWQgYXQgdGhlIGNsb2NrIHNlbGVjdGlvbiBzd2l0Y2ggKFU1NSku
IEnigJlkIGJlDQogY3VyaW91cyB0byBwcm9iZSBzb21lIHBpbnMgb24gdGhlIGJvYXJkIHRvIG9i
c2VydmUgdGhlIGNsb2NrIHNpZ25hbCBhcyBpdCBtb3ZlcyB0aHJvdWdoIHRoZSBjbG9ja2luZyBm
cm9udC1lbmQuIFVuZm9ydHVuYXRlbHkgbXkgRTMyMCBjYW5ub3QgYmUgcmVtb3ZlZCBmcm9tIGl0
cyBjaGFzc2lzIGF0IHRoZSBtb21lbnQsIGJ1dCBwZXJoYXBzIEnigJlsbCB0YWtlIGEgbG9vayB3
aGVuIEkgZ2V0IGFuIG9wcG9ydHVuaXR5IGxhdGVyLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb1BsYWluVGV4dCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5U
ZXh0Ij5VbmZvcnR1bmF0ZWx5IHRoZSBlbmFibGVfZ3BzIGFyZyBpcyBub3QgaG9ub3JlZCB1cG9u
IGNvbm5lY3Rpb24gdG8gYW4gTVBNIGRldmljZSDigJMgdGhlIHBvd2VyIHN0YXRlIG9mIHRoZSBH
UFNETyBvbiB0aGUgRTMyMCBpcyBlc3RhYmxpc2hlZCB3aGVuIHRoZSBNUE0gZGFlbW9uIGlzIHN0
YXJ0ZWQgb24gdGhlIHJhZGlvIGF0IHBvd2VyLW9uLCBhbmQgKGFzIGZhciBhcyBJIGNhbiBzZWUp
IGl0IGNhbm5vdCBiZQ0KIGNoYW5nZWQgb24gYSBwZXItc2Vzc2lvbiBiYXNpcy4gSeKAmXZlIHBy
ZXBhcmVkIGEgc21hbGwgVUhEIHBhdGNoIHRoYXQgYWxsb3dzIHRoZSBlbmFibGVfZ3BzIGFyZyB0
byBiZSB1c2VkIGF0IHNlc3Npb24gaW5pdGlhbGl6YXRpb24uIFRoZW4gYW4gYXBwbGljYXRpb24g
KHN1Y2ggYXMgbWluZSkgY291bGQgY2hvb3NlIHRvIGRpc2FibGUgdGhlIEdQU0RPIGF0IHJ1bi10
aW1lIHdoZW4gdXNpbmcgYW4gZXh0ZXJuYWwgY2xvY2ssIG9yIGxlYXZlIGl0DQogcG93ZXJlZCB1
cCBvdGhlcndpc2UuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij48bzpw
PiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPk9uZSBmaW5hbCBvYnNl
cnZhdGlvbiwgdGhpcyBwcm9ibGVtIGlzIGFsbHVkZWQgdG8gYXMgYSBrbm93biBpc3N1ZSBvbiB0
aGUgQjJ4eCByYWRpb3MgWzFdLCBidXQgaXMgbm90IGRvY3VtZW50ZWQgZm9yIHRoZSBFMzIwLjxv
OnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij4tRGF2aWQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29QbGFpblRleHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1Bs
YWluVGV4dCI+WzFdIDxhIGhyZWY9Imh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdl
X3VzcnBfYjIwMC5odG1sI2IyMDBfa25vd25faXNzdWVzIj4NCmh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL21hbnVhbC9wYWdlX3VzcnBfYjIwMC5odG1sI2IyMDBfa25vd25faXNzdWVzPC9hPjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BN2P110MB1747706C0DC81186F4442A64B7439BN2P110MB1747NAMP_--

--===============5282548760635764690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5282548760635764690==--
