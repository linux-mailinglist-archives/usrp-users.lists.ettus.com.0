Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7A338C888
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 15:41:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF603385940
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 09:41:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="eg2NYO5v";
	dkim-atps=neutral
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12olkn2055.outbound.protection.outlook.com [40.92.22.55])
	by mm2.emwd.com (Postfix) with ESMTPS id A92E138499D
	for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 09:40:43 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HAVd6LRHAheeEXH1oDZqEYDFYVOCvuPCYEhSg/8y9ghNOv4o3UN5faFVapI6n7txXKc2kGzWn8TYpFKR7Lai0U7IWzeSYui2z7YRZvPhRhp4CaKSi8iq9ISSJut11s6xbcwqHcR9XP7qubAKpwuODjUrARCCfO3YMKQSszCfWtoc5pMgvD/Rgpxfiwf4E1IxZXHWZT3Y2GopWLyV8hALtyxmw0mFzu4WmoLO4bLDucVicVhGuriXPIE2JztS5r2OZ5Tb37by5EaplCCntoYxKlEq7afHnjGtPJuy6Hvr/eNyzPGpcyqJE4btcYBNvtjs7nicJxXUqy72thLPcMHmRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQnAKvKPBCcBkDdkhcPqu/peE1+qndDs/BxA1QFZQrs=;
 b=NnhhCtpnKab+kWRxZ/n1tH6ORkPS6FWuQPWaZ/UxBdWyfgXMlZPghIyVpquuzNNndbuTNpyw3W2SWE1IF+nkg/34Yk9DPxHbYe1HsyX15OO0KB2u64gu8ddz+1KeiKDP3Y/xKePUxrStYzW2w2vGg7i9kXTWXNVuC16Dee3vcXBqtVDDd2T67hnmmmuqLi4/I4wY1ao+1TxlwKXMdcfKF6WpiLUZuj/syvagUuOT3KJXzVS+o9Iwh6jUvTa376OzyNNWZgRACPICGvjKiylZ/ef6HB21u33KyoX6EMCpjfHVrzA+XxbMdKjDVLO6u2nmAGEd0DeJLhBlss0G7ZEx2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQnAKvKPBCcBkDdkhcPqu/peE1+qndDs/BxA1QFZQrs=;
 b=eg2NYO5vlZBFSVB2fZ4NToSjTAKKSJd9SB+wKU4JMyJMzR8x1oANxcLbJHWeZESFTK3wVmGPUuhKKOzHSZ7JwrIxxA8IeVVx4IwQFf9VhQhPZ4JRShGvLYyOW9tn+lubY+TSBS3RNWm2xbJMXGAyy7uI6/GdUH4828O9U8JDOsaUeAj0H7LgYJUnfbl1AxpFxbQgEZnUAGICaAxh+CSPuAvol9Jne1ckA16B6QPmVuxKjDM3cTc7k2NuFOEBlL9vStVtgCFWhgwhELgzD/AarHrrwC4LlCr/O3IuRnwVEoEpp7Fm5fM5cH4muNiOyPLLnDEf+duk/2g8BtFgJ2XuKw==
Received: from DM6NAM12FT010.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::48) by
 DM6NAM12HT183.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::211)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.11; Fri, 21 May
 2021 13:40:42 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 (2a01:111:e400:fc64::4f) by DM6NAM12FT010.mail.protection.outlook.com
 (2a01:111:e400:fc64::334) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.11 via Frontend
 Transport; Fri, 21 May 2021 13:40:42 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::280b:3971:eae4:e18f]) by BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::280b:3971:eae4:e18f%3]) with mapi id 15.20.4129.035; Fri, 21 May 2021
 13:40:42 +0000
From: Jeff S <e070832@hotmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] UHD Exception
Thread-Index: AQHXTj7L9+Eshi9Yi0m7ZGBrmRb5Vart5eAAgAAKDaY=
Date: Fri, 21 May 2021 13:40:42 +0000
Message-ID: 
 <BN6PR19MB3138665678B8ECA6D9B9AD4DA4299@BN6PR19MB3138.namprd19.prod.outlook.com>
References: 
 <BN6PR19MB3138AF42C6927FF3CA550BC4A4299@BN6PR19MB3138.namprd19.prod.outlook.com>,<B1692FB6-D27A-4CEE-A5B4-C99195A6F4C2@gmail.com>
In-Reply-To: <B1692FB6-D27A-4CEE-A5B4-C99195A6F4C2@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:83500CBE190E4D09AC7561BD6BC215920379D37C46659ADDF09938475DC4EE9B;UpperCasedChecksum:D54204BBBA93F5553FD4D24753550DA1063A6B3E3E9AF3D98600CE4102E9FD27;SizeAsReceived:6916;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bCC96BDTfW98uz3Ch60eaVDV6twsosUI]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 375f59ae-18c3-4c48-dd7b-08d91c5e074f
x-ms-traffictypediagnostic: DM6NAM12HT183:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9XaLTqf8Q1mpL7O2BUTDiw9ZyYgW4A7eSl6pxhr57O2ml6MJ5X2iM0EpkOrR3+350j2eq2D88veHcclU1q06imL/fjk5QFncgBEzfgZiOIr1iMtEsn2eqvIWQ+k73NH5+oOvX3YGjzZt2l2Bsc1viX7GSXTjr7u+g9+A5MAIb0LwoHD9ezdeYKw9QD+H92hJdgwweyQrGeoHSPeviL3Nwg0BCEFth0AiAUj95yU06othL0jjkUc8aE5D+2q+6aP+yW3XaiwAIzVDLbKwyB2gPZGuHZuFzmPrnCUbO6HXWbzIfLWfyX1IkXsKjqDejR7Rf57NpAGo+FB7fQd8xKcr8LwAyWl+5ZVMpgb+mu7QV6P0FTwURVfj2n0Wv1VHgEpeM7/3wdMqvTTZdv0Hf07yRg==
x-ms-exchange-antispam-messagedata: 
 hOGCUCq1W7Ik0+yz7cETed87tkRmkeaPFr/AJAtWIyWvIbp+KOgJzZ6cG6rPLuKGe38Rk9eJBxhygk+FZcbEXkuedRpRZGykcds2IYJOB2hFX3AcWeAiGpfkXDRVNta1zwn8DH1zpS0F6rW9PGQgyA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT010.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 375f59ae-18c3-4c48-dd7b-08d91c5e074f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 13:40:42.4084
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT183
Message-ID-Hash: NFLSFAPP7W563FO7JS5SUHPEP3CHUZP2
X-Message-ID-Hash: NFLSFAPP7W563FO7JS5SUHPEP3CHUZP2
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Exception
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6UAJ5Y54TATRXTVACVTIIO23Z6MY243/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

TWFyY3VzLAoKV2hlbiBpdCBoYXBwZW5lZCwgYm90aCB0aGUgZ3JlZW4gUlggTEVEcyB3ZW50IGRh
cmsgKEkgd2FzIGxvb2tpbmcgYXQgbm9pc2Ugb24gdHdvIGNoYW5uZWxzLCB1c2luZyBUWC9SWCBh
bnRlbm5hIGlucHV0cykuICBJIGRpZG4ndCB0cnkgdG8gcGluZywgYnV0IGp1c3Qgc3RvcHBlZCBt
eSBmbG93IGdyYXBoLCBjeWNsZWQgcG93ZXIgb24gdGhlIFgzMTAsIHJlc3RhcnRlZCBteSBmbG93
IGdyYXBoLCBhbmQgdGhlbiBldmVyeXRoaW5nIHdhcyB3b3JraW5nIGFnYWluLiAgSWYgSXQgaGFw
cGVucyBhZ2FpbiwgSSdsbCBwaW5nIGFuZCBjaGVjayB0aGUgaWZjb25maWcsIGFuZCByZXBvcnQg
d2hhdCBJIHNlZS4KClRoYW5rcyEKSmVmZgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkZyb206IE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4K
U2VudDogRnJpZGF5LCBNYXkgMjEsIDIwMjEgNzo1OSBBTQpUbzogSmVmZiBTCkNjOiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFVIRCBFeGNlcHRp
b24KCk9uY2UgdGhpcyBoYXBwZW5zLCBpcyB0aGUgWDMxMCBwaW5nIGFibGU/CgpXaGF0IGRvZXMg
aWZjb25maWcgc2F5IGFib3V0IHRoZSBpbnRlcmZhY2U/CgpTZW50IGZyb20gbXkgaVBob25lCgo+
IE9uIE1heSAyMSwgMjAyMSwgYXQgODo1MSBBTSwgSmVmZiBTIDxlMDcwODMyQGhvdG1haWwuY29t
PiB3cm90ZToKPgo+IO+7v0kndmUgYmVlbiBydW5uaW5nIGFuIFgzMTAgZm9yIHF1aXRlIGEgd2hp
bGUsIGFuZCByZWNlbnRseSBnb3QgdGhlIGZvbGxvd2luZyBtZXNzYWdlOgo+Cj4gICAgIltFUlJP
Ul0gW1VIRF0gQW4gdW5leHBlY3RlZCBleGNlcHRpb24gd2FzIGNhdWdodCBpbiBhIHRhc2sgbG9v
cC5UaGUgdGFzayBsb29wIHdpbGwgbm93IGV4aXQsIHRoaW5ncyBtYXkgbm90IHdvcmsuc2VuZDog
TmV0d29yayBpcyB1bnJlYWNoYWJsZSIKPgo+IE15IGN1cnJlbnQgY29uZmlndXJhdGlvbiBpczoK
Pgo+IFVidW50dSAxOC4wNAo+IFVIRCBVSEQtNC4wICg4ZjI3MzMwLCAzLzE2LzIxKQo+IEdOVSBS
YWRpbyB2My44LjIuMC0xMTItZ2UyMGZmYTNjCj4gUU5BUCBUaHVuZGVyYm9sdCAzIHRvIDEwR2JF
IEFkYXB0ZXIKPgo+IEkgZ290IHRoZSBtZXNzYWdlIG9uY2UgeWVzdGVyZGF5IGFuZCBvbmNlIHRv
ZGF5LiAgSSBoYXZlIGJlZW4gdXNpbmcgdGhpcyBjb25maWd1cmF0aW9uIGZvciB3ZWVrcy4gIEhv
dyB3b3VsZCBJIHRyb3VibGVzaG9vdCB0aGlzIGV4Y2VwdGlvbj8KPgo+IFJlZ2FyZHMsCj4gSmVm
Zgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
