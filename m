Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE587A287
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 05:55:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A28C93850DA
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 00:55:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710305753; bh=ioriQqHn7YNJ+ChfDRyGWXyxXJufat3askOboZgmwf4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zj/hCMn1KQB8AIsgBEN0IhUUELmWTTmzlyPb39gIzQfr8Kft81PUKxLe/m2wUQ0Ni
	 9piJW5CwVmPeOha9nYy6sESzrmnyBJIE7P4i9vvgm5ViEB90/2NZexrhc/hxfB9/tc
	 vzRu0eMBNaqt/TdBJZidEsGJPVQZSobuT1p+e+sQllshPB4+xe0RyoyKr0ZrrbC1iE
	 TKZMlxmeP4SDwB0sWglSxx/CUWRH6VwNMzsFnXj8frKa0qp1wSZZ5JPYCduoK5bed4
	 HEwDHUkdOedoY7ALL652X+CDDf3OUUCIbyqkvc8X7jQ6EOME/y4iKJs2ahbxRDoX4t
	 9WXM59+hTcq5w==
Received: from smtp3.emailarray.com (smtp3.emailarray.com [65.39.216.17])
	by mm2.emwd.com (Postfix) with ESMTPS id E7777385040
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 00:55:33 -0400 (EDT)
Received: (qmail 32666 invoked by uid 89); 13 Mar 2024 04:55:32 -0000
X-Orig-Sender: philip@balister.org
Received: from unknown (HELO ?10.8.0.6?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3My4xNTIuMTM0LjE1Mg==) (POLARISLOCAL)  
  by smtp3.emailarray.com with SMTP; 13 Mar 2024 04:55:32 -0000
Message-ID: <b81b16c8-7de6-4fbf-8305-a3897857d688@balister.org>
Date: Tue, 12 Mar 2024 22:55:30 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wade Fife <wade.fife@ettus.com>, "Marcus D. Leech"
 <patchvonbraun@gmail.com>
References: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
 <aad5784b-d31a-4a2c-af38-e61a4b3793f9@gmail.com>
 <CAFche=im8-GJA8FRjUtY02PngjoGzkyed0+-3yrFHDomC+7-Ug@mail.gmail.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <CAFche=im8-GJA8FRjUtY02PngjoGzkyed0+-3yrFHDomC+7-Ug@mail.gmail.com>
Message-ID-Hash: H7SI33WNQ3XFXVEEIJQHG5QC7UJVDML7
X-Message-ID-Hash: H7SI33WNQ3XFXVEEIJQHG5QC7UJVDML7
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Non-Unique Device MAC Address's After Mender F.S. Update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H7SI33WNQ3XFXVEEIJQHG5QC7UJVDML7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy8xMi8yNCAyMjoyMiwgV2FkZSBGaWZlIHdyb3RlOg0KPiBUaGUgTUFDIGFkZHJlc3Mgc2hv
dWxkIGNvbWUgZnJvbSB0aGUgRUVQUk9NLiBZb3UgY2FuIHJ1biBlZXByb20tZHVtcCBvbiANCj4g
dGhlIGRldmljZSB0byBzZWUgd2hhdCBNQUMgYWRkcmVzc2VzIGFyZSBwcm9ncmFtbWVkIGluIGl0
LiBZb3UgY2FuIHVzZSANCj4gZWVwcm9tLWluaXQgdG8gcHJvZ3JhbSB0aGUgRUVQUk9NLiBSdW4g
ZWl0aGVyIHdpdGggLS1oZWxwIHRvIHNlZSB0aGUgc3ludGF4Lg0KPiANCj4gaHR0cHM6Ly9naXRo
dWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFzdGVyL21wbS90b29scy9SRUFETUUubWQg
DQo+IDxodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIvbXBt
L3Rvb2xzL1JFQURNRS5tZD4NCj4gDQo+IEknbSBjdXJpb3VzIGlmIHlvdXIgZGV2aWNlcyBzb21l
aG93IGhhdmUgdGhlIHNhbWUgTUFDIGluIHRoZSBFRVBST00gb3IgDQo+IGlmIGl0J3MgcmV2ZXJ0
aW5nIHRvIHNvbWUgZGVmYXVsdCBiZWNhdXNlIGl0IGNhbid0IHJlYWQgdGhlIEVFUFJPTSwgb3Ig
DQo+IHRoZSBFRVBST00gaXNuJ3QgcHJvcGVybHkgcHJvZ3JhbW1lZC4NCg0KWWVhaCwgYmFkIG5p
Z2h0IGFuZCBJIGFtIGJvcmVkOg0KDQpodHRwczovL2dpdGh1Yi5jb20vYmFsaXN0ZXIvbWV0YS1l
dHR1cy9ibG9iL21hc3Rlci9lMzAwLWJzcC9yZWNpcGVzLWJzcC91LWJvb3QvZXR0dXMtZTMwMC8w
MDAzLVJlYWQtbWFjLWFkZHJlc3MtZnJvbS1pMmMtRUVQUk9NLnBhdGNoDQoNClRoaXMgaXMgYW5j
aWVudCwgYnV0IEkgYW0gd29uZGVyaW5nIGlmIGl0IGdvdCBsb3N0IGZvciB0aGUgbWVuZGVyIGJ1
aWxkcy4NCg0KUGhpbGlwDQoNCj4gDQo+IFdhZGUNCj4gDQo+IE9uIE1vbiwgTWFyIDExLCAyMDI0
IGF0IDEyOjAx4oCvUE0gTWFyY3VzIEQuIExlZWNoIA0KPiA8cGF0Y2h2b25icmF1bkBnbWFpbC5j
b20gPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+IHdyb3RlOg0KPiANCj4gICAgIF9f
DQo+ICAgICBPbiAxMS8wMy8yMDI0IDExOjQyLCBlZGVubWNsYXVnaGxpbjEyM0BnbWFpbC5jb20N
Cj4gICAgIDxtYWlsdG86ZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tPiB3cm90ZToNCj4+DQo+
PiAgICAgSGksDQo+Pg0KPj4gICAgIFdlIGhhZCBhIG5lZWQgZm9yIGEgbXVsdGlwbGUgZGV2aWNl
IC0gc2luZ2xlIHN1Ym5ldCBzZXR1cC4gQWZ0ZXINCj4+ICAgICB1cGRhdGluZyBtdWx0aXBsZSBF
MzIw4oCZcyB0byBhIG5ld2VyIFVIRCB2ZXJzaW9uLCBtZSBhbmQgbXkNCj4+ICAgICBjb2xsZWFn
dWUsIHdlIHJlYWxpemVkIHRoYXQgYWxsIG9mIHRoZSBkZXZpY2VzIHNoYXJlIGEgY29tbW9uIE1B
Qw0KPj4gICAgIGFkZHJlc3MuIFRoaXMgcmVzdWx0cyBpbiB1bnN0YWJsZSBjb25uZWN0aW9ucyB3
aXRoaW4gdGhlIG5ldHdvcmsuDQo+PiAgICAgQXMgZm9yIGluIHRoaXMgdGhyZWFkDQo+PiAgICAg
PGh0dHBzOi8vbGlzdHMuZXR0dXMuY29tL2VtcGF0aHkvdGhyZWFkL1BPWVVZTkI0Ukg1TUZQQURQ
RllUU0xMS1ZBV1Q2NE02P2hhc2g9UE9ZVVlOQjRSSDVNRlBBRFBGWVRTTExLVkFXVDY0TTYjUE9Z
VVlOQjRSSDVNRlBBRFBGWVRTTExLVkFXVDY0TTY+IGlzIHRoZXJlIGEgbm9uLXRoaXJkIHBhcnR5
LCBFdHR1cyBzdXBwb3J0ZWQsIGhvbWVncm93biB3YXkgb2YgcmVzdG9yaW5nL3VwZGF0aW5nIHRo
ZSBNQUMgYWRkcmVzcyBvZiBhIG5ldHdvcmsgZGV2aWNlLCBzcGVjaWZpY2FsbHkgRTMyMD8NCj4+
DQo+PiAgICAgVGhhbmtzLg0KPj4NCj4+DQo+ICAgICBUcnlpbmcgdG8gYXR0cmFjdCBSJkQncyBh
dHRlbnRpb24gb24gdGhpcy7CoCBJIGtub3cgd2Ugd2VudCB0aHJvdWdoDQo+ICAgICB0aGlzIHdp
dGggRTMxMCB5ZWFycyBhbmQgeWVhcnMgYWdvLCBidXQgaXQgd2FzIHJlc29sdmVkLg0KPiANCj4g
DQo+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gICAgIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+ICAgICBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPg0KPiAN
Cj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
