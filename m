Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFADFA01916
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 11:54:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5BC7385B11
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 05:54:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736074467; bh=7ljAX3mOJYnPGuk4gGLA8aokJMtQsLJDb7isAaZaYpM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=k8SQS62/VpFV28zL9u+XzWK3tDNI3LeTF+gYKuUO8Auew0nt7UnamtQFyOqTARxTe
	 5kxkSOeb257AVca6cqSxN2LBfzfEuAaMNHCXyqwJ2IIPjt1ehOKlCcbZm4BEsiN09D
	 FJUQ8SZKqiXkLGzRCE8VN7SyxyR/AknrAcnO+VEvsIrJZQW07u7Zp096OLi2ErSpd/
	 Cu0Ap5neuPo+qLdQy+KcnRukCwkOat+u2kXBaM1kqegnj0qiEWOSMeRlhjaQTFhthz
	 rSUmNh3XYYihm/NwPpA7/qrOlRSTM54idol9nrTD4OoqFzgX9ur9YCzNdD15kvhdGq
	 k4fDOu88FRTaQ==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.158])
	by mm2.emwd.com (Postfix) with ESMTPS id 56BEC3859EA
	for <usrp-users@lists.ettus.com>; Sun,  5 Jan 2025 05:53:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="Re36Vd86";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 26446 invoked from network); 5 Jan 2025 11:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=20241105;
          t=1736074422; bh=QEUnQQSIzgiZhygPvrxmdKaVTjyFzBW0TYfgwenPokk=;
          h=Subject:To:From;
          b=Re36Vd865ZRnF4ikfUGCDphoDGWEPlyHvH7MgzPXY3WXLXuEdSIc8Ih3cXR/yUplC
           JeZ3v47MJUiK+6oDTbccKkUtb4zBwjDir0+SU2DIEKKuOdTo6HP5Mku+72OmcxnCpr
           gaAi1t1fJUz89y5aTE+AJIG2PxKzJLvGkVPzcCzJ1h/XavNGrDabLYBeIjdPgoAhwc
           1UXUlD2bT38zpBHjxIEKbhmnfyrjLte0NTFiqDHN5MDi9M1eKyObO/Il30vaOZ1w+L
           2xqQVGsndfkdQvS15rLOy/QCI07V0be0SbakJ9j5qqSTTyoMu3yzuRY1chHkoP5/mP
           vJrtawYFEqv4g==
Received: from 109.95.142.203.r.toneticgroup.pl (HELO [192.168.1.102]) (perper@o2.pl@[109.95.142.203])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 5 Jan 2025 11:53:42 +0100
Message-ID: <1b8031d3-1bd8-4915-97a2-1cc02108a50b@o2.pl>
Date: Sun, 5 Jan 2025 11:53:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
 <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
 <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
 <ac9a9c43-a219-4b52-8b0e-ebeef0555db2@gmail.com>
Content-Language: en-US
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <ac9a9c43-a219-4b52-8b0e-ebeef0555db2@gmail.com>
X-WP-MailID: a83f6dab41c8e34572b38416c91e7020
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [MeNU]                               
Message-ID-Hash: LNJ3QDUL65CP42FF3DEXR3WRUJ6KZAQZ
X-Message-ID-Hash: LNJ3QDUL65CP42FF3DEXR3WRUJ6KZAQZ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LNJ3QDUL65CP42FF3DEXR3WRUJ6KZAQZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgU2FrdGhpdmVsLA0KDQpBcyBNYXJjdXMgc2FpZCB5b3UgY2FuIHJ1biBjb21waWxhdGlvbiBv
ZiBDKysvVUhEIHByb2dyYW1zIGRpcmVjdGx5IG9uIA0KVVNSUCBYNDEwIGFzIGl0IGhhcyBhbGwg
d2hhdCBpcyBuZWVkZWQuDQoNCklmIHlvdSBuZWVkIGEgc2V0dXAgdGhhdCBpcyBlYXNpZXIgdG8g
aW50ZWdyYXRlIHdpdGggRGV2T3BzIHlvdSBjYW4gDQpnZW5lcmF0ZSBTREsgZm9yIHVzZSBvbiB5
b3VyIFBDIHVzaW5nwqAgaW5mcmFzdHJ1Y3R1cmUgcHJvdmlkZWQgYnkgeW9jdG8uIA0KSG93IHRv
IGRvIHRoYXQgSSd2ZSB3cml0dGVuIGluIGFub3RoZXIgdGhyZWFkICgiS0FTIGtpcmtzdG9uZSBi
dWlsZCBvZiANCm5pLXRpdGFuaXVtLXJldjUgb24geDQxMCB3aXRoIFZpdGlzLUFJIC4uLiIpLiBB
cyBpdCB3YXMgdmVyeSBsb25nIEknbGwgDQpyZXBlYXQgdGhlIGRlc2NyaXB0aW9uIGhlcmUgKGZv
ciBpdCB0byB3b3JrIHlvdSBuZWVkIHRvIGhhdmUgZG9ja2VyIGFuZCANCmdpdCBpbnN0YWxsZWQp
Og0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpta2RpciB0b3BfZGlyZWN0b3J5DQpjaG1v
ZCA3NzcgdG9wX2RpcmVjdG9yeQ0KY2QgdG9wX2RpcmVjdG9yeQ0KZ2l0IGNsb25lIGh0dHBzOi8v
Z2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL21ldGEtZXR0dXMuZ2l0DQpkb2NrZXIgcnVuIC0tcm0g
LWl0IC13ICIkUFdEIiAtLW1vdW50DQp0eXBlPWJpbmQsc291cmNlPSIkUFdEIix0YXJnZXQ9IiRQ
V0QiDQogwqDCoMKgwqDCoMKgwqDCoMKgwqAgLS1uZXQ9aG9zdA0KIMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0tc2VjdXJpdHktb3B0IHNlY2NvbXA9dW5jb25maW5lZA0KIMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGdoY3IuaW8vc2llbWVucy9rYXMva2FzOjQuMA0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJh
c2ggLWMgInN1ZG8gYXB0IHVwZGF0ZSA7IHN1ZG8gYXB0IGluc3RhbGwgLXkgemlwICYmDQouL21l
dGEtZXR0dXMvY29udHJpYi9rYXNfYnVpbGRfaW1nc19wYWNrYWdlLnNoIHg0eHggdjQuNy4wLjAi
DQoNCiMgVGhlbiB5b3UgY2FuIG1hbnVhbGx5IGJ1aWxkIHNkazoNCg0KZG9ja2VyIHJ1biAtLXJt
IC1pdCAtdyAiJFBXRCIgLS1tb3VudA0KdHlwZT1iaW5kLHNvdXJjZT0iJFBXRCIsdGFyZ2V0PSIk
UFdEIg0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tbmV0PWhvc3QNCiDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtLXNlY3VyaXR5LW9wdCBzZWNjb21wPXVuY29uZmluZWQNCiDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBnaGNyLmlvL3NpZW1lbnMva2FzL2thczo0LjANCiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
YXNoDQoNCnN1ZG8gYXB0IHVwZGF0ZQ0Kc3VkbyBhcHQgaW5zdGFsbCAteSB6aXANCi4gb2UtY29y
ZS9vZS1pbml0LWJ1aWxkLWVudg0KYml0YmFrZSBnbnVyYWRpby1pbWFnZSAtY3BvcHVsYXRlX3Nk
aw0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpUaGlzIHdpbGwgcHJvZHVjZSBhbiBpbnN0
YWxsZXIuIFlvdSBuZWVkIHRvIHJ1biBpdCBhbmQgaW5zdGFsbCB0aGUgU0RLIA0Kc29tZXdoZXJl
Lg0KQXNzdW1pbmcgaXQgaXMgaW5zdGFsbGVkIGluIC9vcHQvb2Vjb3JlLXNkayBiZWZvcmUgcnVu
bmluZyANCmNyb3NzLWNvbXBpbGF0aW9uIGZvciBVU1JQIFg0MTAgd2l0aCBoZWxwIG9mIGNtYWtl
IHlvdSBuZWVkIGZpcnN0IHRvIA0Kc291cmNlIHRoZSBTREsncyBlbnZpcm9ubWVudCB2YXJpYWJs
ZXMgd2l0aCBmb2xsb3dpbmcgY29tbWFuZDoNCg0Kc291cmNlIC9vcHQvb2Vjb3JlLXNkay9lbnZp
cm9ubWVudC1zZXR1cC1hYXJjaDY0LW9lLWxpbnV4DQoNCkJlc3QgUmVnYXJkcywNClBpb3RyIEty
eXNpaw0KDQpXIGRuaXUgMy4wMS4yMDI1IG/CoDAwOjI3LCBNYXJjdXMgRC4gTGVlY2ggcGlzemU6
DQo+IE9uIDAyLzAxLzIwMjUgMTM6NTYsIFNha3RoaXZlbCBWZWx1bWFuaSB3cm90ZToNCj4+IEhp
IE1hcmN1cywNCj4+DQo+PiBUaGFua3MgZm9yIHRoZSBwb2ludGVycy4gSSBhbSBsb29raW5nIHRv
IG9mZmxvYWQgYWxsIHRoZSBEU1Agd29yayB0byANCj4+IHRoZSBSRk5vQyBhbmQgaGF2ZSB0aGUg
Q1BVcyBkbyB0cml2aWFsIHRhc2tzIGxpa2Ugc2VxdWVuY2UgZ2VuZXJhdGlvbiANCj4+IHNvIHRo
YXQgSSBkb24ndCBoYXZlIHRvIHdyaXRlIEhETCBmb3IgZXZlcnl0aGluZy4gSSBhbSBzdGlsbCBu
b3QgDQo+PiBlbnRpcmVseSBzdXJlIG9mIGhvdyB0aGlzIGNhbiBiZSBkb25lIGJ1dCBJIGZvdW5k
IGEgc29mdHdhcmUgDQo+PiBkZXZlbG9wbWVudCBndWlkZSBmb3IgRTMxMCANCj4+IChodHRwczov
L2tiLmV0dHVzLmNvbS9Tb2Z0d2FyZV9EZXZlbG9wbWVudF9vbl90aGVfRTMxMF9hbmRfRTMxMikg
DQo+PiB3aGljaCBsb29rcyBsaWtlIHNvbWV0aGluZyBJIHdhbnQgdG8gYWNoaWV2ZSBzbyBpdCdz
IGEgZ29vZCBzdGFydCBJIA0KPj4gZ3Vlc3MuDQo+Pg0KPj4gVGhhbmtzIGFnYWluLg0KPj4NCj4+
IFNha3RoaQ0KPiBJJ3ZlIGFsc28gYmVlbiB0b2xkIHRoYXQgeW91IGNhbiBidWlsZCBVSEQgYXBw
cyBkaXJlY3RseSBvbiB0aGUgDQo+IFg0MTAtLWl0IGhhcyBhbGwgdGhlIHRvb2xpbmcgbGlrZSBN
YWtlLCBHQ0MsIFVIRCBhbmQgb3RoZXIgaW1wb3J0YW50DQo+IMKgbGlicmFyaWVzIGFscmVhZHkg
b24gdGhlIHN5c3RlbSBpbWFnZS4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
