Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BDD6E46B4
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 13:44:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05950383D18
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 07:44:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681731846; bh=mF2tsm/Z+NCxYBBbX1IjBOfl42zIhHRiiyZAikmJhCE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UCH6fYv9pSh2+Db05T+1y/0acxrH6HYnoU+PZzjN4qWqyX+dG0siSgSUC8QvLjlBk
	 XqQTQ3gX0i+W0gHlV2gcWOL8TFGvZKUnk1jgoXo5Rlmcgcwz2N20D+EAIw15sqKo6y
	 E85HTPbTwaE+SgYj7WtpG/DxooM/1NfyiAbqIhVWOqZGaAizygQEYrwNMG3IR9Mjla
	 Vrg6jNEj4LqaKNmtdHPzMrRCNazY3GZjWvIl+XNXvPqFujSJ6D7ZCJ1xLFUallhQpp
	 PmswG8SeFQSlfo8ES37HtyIKqQPr4bcbVpzsrUNLGn9ywg6Ajn3tWlZWGrfrAGiuxM
	 6WjKBzQtzvXtw==
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id AB9B5383D18
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 07:44:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="kT8oXHDN";
	dkim-atps=neutral
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-3f16b99b990so12871795e9.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 04:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1681731839; x=1684323839;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4MRJYFUcVujqXWHVuGRp9lX0YOgYq0LvRNtbtIA+RV4=;
        b=kT8oXHDNRpInxAmdcvyiil8AdaVEfmeDpCRdNOHs8brqSleg4mu2I/9ajrJF/jVaKD
         P9hKkh8+4bXsMC0r1S44Cz5m6Ha/kckRqgMDAI1K8S/xbSsDB6MrvbdgQ8fRwVXmHVqe
         QTYxXb+NabvI6QnW/Q/dr2TNs+o84rLMp3OiGp2qchkmfY8dthkarmmuC568Jj5Lo3+d
         E9n0vEikcS6CYC/eo0Tmy1IW0PcbE5Ijl75pgzoW5ynVG1k7fIL8kRVJPJdhJ1QQgpkN
         PX8o6+Qayw2HwjKSuzVg+xgLPX4khDeGvkzaiVnjPvxjo7oSelkF+b3BggBZ75lXzVL9
         hn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681731839; x=1684323839;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4MRJYFUcVujqXWHVuGRp9lX0YOgYq0LvRNtbtIA+RV4=;
        b=co6BkpoQeBRzzAiVw1OVn/RAcOq4lba70VdboJWdX03XSA7CJDUSnQ8iXKAHHt4Gqz
         G0nYroyZCLDkIwYnvR551T681VyeJENaSvqX6K57AL/97PGyUkuK7drw9AmhiakqPp3X
         dHtrdLZh20SuByEuM4uhwy4WcHB+Rfk2Crp1rsIfGRsiBM4ec+vQOyk1tEgWjfht6Ug8
         DSEplXN6/4/8B4a3Vt95vfkLsDrrZqZmTTUC3b1bLnvn5QwLmJUH0/gtCE8j3QufVbAf
         lS+bc8mvFyC1CWqHVipU/S7hOeSxFk/lCM5icbVvUgt0z8W76Y7Eu0MKrVKkFjpjzZBN
         +xIQ==
X-Gm-Message-State: AAQBX9cIKi8CjKlJQhgzyE0oLsvcooQrP3o1YGLEsrqA7wPgubd7Ezxk
	jsJ6v6aW5a0IZyN3L/ZNtsrkxpo/lxPqor7nYptpXw==
X-Google-Smtp-Source: AKy350Y0xnV+CGqxRdFi4u9V6ZsSvVwl2jlUrVS1FvBE2/FYv+SMla635Yf8TE3Vu5TQimao/xVwdA==
X-Received: by 2002:a05:6000:1049:b0:2f5:ae53:f558 with SMTP id c9-20020a056000104900b002f5ae53f558mr6038152wrx.31.1681731839264;
        Mon, 17 Apr 2023 04:43:59 -0700 (PDT)
Received: from ?IPV6:2a00:1398:9:fb03:ff83:1873:1461:432e? ([2a00:1398:9:fb03:ff83:1873:1461:432e])
        by smtp.gmail.com with ESMTPSA id e14-20020a5d594e000000b002fab755e10bsm1937470wri.68.2023.04.17.04.43.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 04:43:58 -0700 (PDT)
Message-ID: <3cd6376e-aa3e-cdae-f95a-984415815653@ettus.com>
Date: Mon, 17 Apr 2023 13:43:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=@protonmail.com>
 <8cae38a1-0ad3-9068-6b65-8b5f393a1d06@ettus.com>
 <JaDOCsRwwatoAKbv5J5w7Uun7c4c2pencic3hlDQYpJ6HciTMtVOHvrMfeVazlUJEWWcytc-I8F0xLxUUEXFRihZrRVgnMa-6w9RW0HCMi8=@protonmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <JaDOCsRwwatoAKbv5J5w7Uun7c4c2pencic3hlDQYpJ6HciTMtVOHvrMfeVazlUJEWWcytc-I8F0xLxUUEXFRihZrRVgnMa-6w9RW0HCMi8=@protonmail.com>
Message-ID-Hash: SOGBLBN67GLOB53ZG2RV5ZEE5VT4MKT2
X-Message-ID-Hash: SOGBLBN67GLOB53ZG2RV5ZEE5VT4MKT2
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD in Qt c++ windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SOGBLBN67GLOB53ZG2RV5ZEE5VT4MKT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SW50ZXJlc3RpbmchIENhbiB5b3UgcnVuIGl0IGluIGRlYnVnZ2VyLCB0byBzZWUgaW4gd2hpY2gg
Y2FsbC93aGVyZSANCmV4YWN0bHkgaXQgY3Jhc2hlcz8NCg0KT24gNC8xNy8yMyAxMToxMCwgT2xv
IHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBJIGNvcGllZCBpbml0X3VzcnAuY3BwIHRvIENvbnNv
bGVBcHBsaWNhdGlvbiBpbiB2aXN1YWwgc3R1ZGlvIGFuZCBpbiANCj4gcHJvcGVydGllcyBJIHNl
dCBDb25maWd1cmF0aW9uIHByb3BlcnRpZXMgPj4gQy9DKysgPj4gQWRkaXRpb25hbCANCj4gSW5j
bHVkZSBEaXJlY3RvcmllczoNCj4gQzpcUHJvZ3JhbSBGaWxlc1xVSERcaW5jbHVkZQ0KPiBEOlxC
b29zdFxib29zdF8xXzgyXzANCj4NCj4gQ29uZmlndXJhdGlvbiBwcm9wZXJ0aWVzID4+IExpbmtl
ciA+PiBHZW5lcmFsOg0KPiBDOlxVSERcbGliDQo+IEQ6XEJvb3N0XGJvb3N0XzFfODJfMFxsaWI2
NC1tc3ZjLTE0LjMNCj4NCj4gQ29uZmlndXJhdGlvbiBwcm9wZXJ0aWVzID4+IExpbmtlciA+PiBJ
bnB1dDoNCj4gdWhkLmxpYg0KPg0KPiBJdCBnb3QgbWU6DQo+IEV4Y2VwdGlvbiB0aHJvd24gYXQg
MHgwMDAwN0ZGQ0NBQzY0MDY1ICh1aGQuZGxsKSBpbiANCj4gQ29uc29sZUFwcGxpY2F0aW9uMS5l
eGU6IDB4QzAwMDAwMDU6IEFjY2VzcyB2aW9sYXRpb24gcmVhZGluZyBsb2NhdGlvbiANCj4gMHgw
MDAwMDAzOUExRjIwMDAwLg0KPg0KPg0KPiBJIHRoaW5rIHRoZXJlIHdpbGwgYmUgcHJvYmxlbSB3
aXRoIG15IGxpYnJhcmllcy4gVGhlIFVIRCBJIGluc3RhbGxlZCANCj4gdmlhIGJpYW5hcmllcyAN
Cj4gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvdWhkL2xhdGVzdF9yZWxlYXNlLzQu
My4wLjAvV2luZG93cy0xMC14NjQvDQo+IGFuZCB0aGUgYm9vc3Qgc2FtZSANCj4gaHR0cHM6Ly9z
b3VyY2Vmb3JnZS5uZXQvcHJvamVjdHMvYm9vc3QvZmlsZXMvYm9vc3QtYmluYXJpZXMvMS44Mi4w
Ly4NCj4NCj4NCj4gU2VudCB3aXRoIFByb3RvbiBNYWlsIDxodHRwczovL3Byb3Rvbi5tZS8+IHNl
Y3VyZSBlbWFpbC4NCj4NCj4gLS0tLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tLS0NCj4gT24g
TW9uZGF5LCBBcHJpbCAxN3RoLCAyMDIzIGF0IDEwOjE0LCBNYXJjdXMgTcO8bGxlciANCj4gPG1h
cmN1cy5tdWVsbGVyQGV0dHVzLmNvbT4gd3JvdGU6DQo+DQo+PiBIaSBPbG8sDQo+Pg0KPj4gbm9i
b2R5J3MgZ29pbmcgdG8gYmUgbWFkIGF0IHlvdSBiZWNhdXNlIG9mIHlvdXIgRW5nbGlzaCwgd2hp
Y2gsIGJ5IA0KPj4gdGhlIHdheSwgaXMgdmVyeSBnb29kISBFbmdsaXNoIGlzbid0IG15IGZpcnN0
IGxhbmd1YWdlLCBlaXRoZXIgOikgDQo+PiBXZWxjb21lIHRvIHRoZSBVU1JQIGRldmVsb3BlciBj
b21tdW5pdHkuDQo+Pg0KPj4gU28sIGxldCdzIHRhY2tsZSB0aGlzIG9uZSBieSBvbmU6DQo+Pg0K
Pj4gSWYgeW91IHRha2UgdGhlIGNvZGUgZnJvbSBpbml0X3VzcnAuY3BwIFsxXSBhbmQgdHJ5IHRv
IGNvbXBpbGUgaXQgaW4gDQo+PiB5b3VyIHByb2plY3QgaW5zdGVhZCBvZiB5b3VyIG93biBjb2Rl
LCBkb2VzIGl0IGFsc28gc2VnZmF1bHQ/DQo+Pg0KPj4gSWYgbm90LCB0aGVuIHdlIG5lZWQgdG8g
bG9vayBhdCB5b3VyIGNvZGUuDQo+Pg0KPj4gSWYgeWVzLCB0aGVuIHdlIG5lZWQgdG8gbG9vayBh
dCB5b3VyIGNvbXBpbGF0aW9uIHNldHRpbmdzLiBJJ20gbm90IGEgDQo+PiBXaW5kb3dzIHVzZXIg
bXlzZWxmLCBidXQgSSByZW1lbWJlciAoYXQgbGVhc3Qgb2xkZXIpIE1TVkMgd2FzIG5vdCANCj4+
IGhhcHB5IHdoZW4geW91IG1peCBkZWJ1ZyBidWlsZHMgb2YgbGlicmFyaWVzIGFuZCByZWxlYXNl
IGJ1aWxkcyBvZiANCj4+IHNvZnR3YXJlLCBvciB2aWNlIHZlcnNhLg0KPj4NCj4+IEJlc3QgcmVn
YXJkcywNCj4+IE1hcmN1cw0KPj4NCj4+IFsxXSANCj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1
c1Jlc2VhcmNoL3VoZC90cmVlL1VIRC00LjMvaG9zdC9leGFtcGxlcy9pbml0X3VzcnANCj4+DQo+
PiBPbiAxNy4wNC4yMyAwOToxOCwgT2xvIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPj4NCj4+PiBI
ZWxsbywNCj4+PiBJbSB0cnlpbmcgdG8gd29yayB3aXRoIG15IEIyMTAgaW4gUXQuIFRoZSB0aGlu
ZyBpcyBJIGhhdmUgYWRkZWQgaW4gDQo+Pj4gLnBybyBmaWxlICh1c2luZyBxbWFrZSkgVUhEICg0
LjMuMC4wKSBsaWIgYW5kIGluY2x1ZGUgaGVhZGVyIGZpbGVzIA0KPj4+IHRvIG15IHByb2plY3Qg
d2l0aCBib29zdCAoMS44Mi4wKSBsaWJyYXJ5IGFuZCBJIGNhbnQgZG8gcHJldHR5IG11dGNoIA0K
Pj4+IGFueXRoaW5nLiBJIHRyaWVkIHRvIGxpc3QgYWxsIGRldmljZXMgYW5kIEkgY2FudCBldmVu
dCBzZXQgDQo+Pj4gdWhkOjpkZXZpY2VfYWRkcl90IGhpbnQ7IGJlY2F1c2UgSSBnb3QgZXhlcHRp
b24gdGhlcmUgKFN0b3BwZWQgaW4gDQo+Pj4gdGhyZWFkIDAgYnk6IEV4Y2VwdGlvbiBhdCAuLi4g
cmVhZCBhY2Nlc3MgdmlvbGF0aW9uIC4uLikuIFRoZSANCj4+PiBleGFtcGxlcyBpbiBVSEQgZm9s
ZGVyIHdvcmtzIGdyZWF0LiBQbGVhc2UgZG9udCBiZSBtYWQgYXQgbWUgYmVjYXVzZSANCj4+PiBv
ZiBteSBlbmdsaXNoIG9yIGxhY2sgb2YgaW5mbyBidXQgSSBmZWxsIGxpa2UgSW0gcmVhbGx5IGxv
c3QgYXQgdGhpcyANCj4+PiBwb2ludC4NCj4+Pg0KPj4+IG15IFNXOg0KPj4+IC13aW5kb3dzIDEw
DQo+Pj4gLVF0IDUuMTIuMg0KPj4+IC1tc3ZjMjAxOSB4NjQNCj4+PiAtdWhkIDQuMy4wLjANCj4+
PiAtYm9vc3QgMS44Mi4wDQo+Pj4NCj4+PiBUaGFua3MgZm9yIGFueSByZXNwb25zZS4NCj4+PiBP
bG8NCj4+Pg0KPj4+IFNlbnQgd2l0aCBQcm90b24gTWFpbCA8aHR0cHM6Ly9wcm90b24ubWUvPiBz
ZWN1cmUgZW1haWwuDQo+Pj4NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
