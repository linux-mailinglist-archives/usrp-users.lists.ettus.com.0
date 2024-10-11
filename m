Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B936E99A9BC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 19:19:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2B22385D23
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 13:19:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728667147; bh=bWGHfsaz+cU0clSX4gLpIrXRN9ac3u7pTofKAsEJTHw=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vhcD3ioiWCjhNO0QDYOcQyl6va4UC/VL8JXASRU9coNCHHdPEMQJ4lblQ633H+t2J
	 W3GfX2sKIqLIfEjk1FtHermC1M3t9+1YpGTy1TDG+sWwZmOVk4GnwHeARNmg8NEHrg
	 r/LkoRLJtUvLMWxu6PwkME6IZRw9e6tP82su1wXdCi6QFwwxZjHWLZMBGHNDFB98hJ
	 2wxvbiYczoT00OtYlQqWxOr2GccbJQ4dvlBVZf3yUVBGk1TUKR+H9E0Rs17TLAQFqy
	 VvEuwSl3RKaVOmfhC9VC9MI6DABDE4NdqiPL4j+3UEPaOvRSwNDYREZuiz1pSdtWav
	 P2hz9Zj5K7RzQ==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.148])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FC0A385C74
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 13:18:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="ohKBe8Eh";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 45473 invoked from network); 11 Oct 2024 19:18:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1728667119; bh=3wCdfj5h4ofyRvLduH5rXKbX8/9SGM5uyFOUQrasrag=;
          h=Subject:To:Cc:From;
          b=ohKBe8EhI7P5vifbzoCsN6T4JdsGeibN9ixXCQ1m2QIgimrNvuNkyRrumeI0iMVfI
           IwzoGJMP11pKjesO2qx2XqY93Fw22qOjl2og8ZUy1gUHqLeRz3KiItBrBz/A91TGe2
           rMiyU17Q+YVX7syYt/Ir9+HQXBIgVpSLZbNAqHm8=
Received: from 109.95.142.61.r.toneticgroup.pl (HELO [192.168.1.168]) (perper@o2.pl@[109.95.142.61])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <martin.braun@ettus.com>; 11 Oct 2024 19:18:39 +0200
Message-ID: <c1a4ae00-e813-41ab-8b6d-71479da6bb8e@o2.pl>
Date: Fri, 11 Oct 2024 19:18:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martin Braun <martin.braun@ettus.com>
References: <JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g@lists.ettus.com>
 <8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl>
 <CAFOi1A4QBxaLLJ+pG-OsFGvmRz=NgzicrZ2FiJEtR0KXozumJg@mail.gmail.com>
Content-Language: en-US
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <CAFOi1A4QBxaLLJ+pG-OsFGvmRz=NgzicrZ2FiJEtR0KXozumJg@mail.gmail.com>
X-WP-MailID: 2749890359830bdf298402d0d8355695
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [kWPR]                               
Message-ID-Hash: YKLRUFTCMII5KNRAJCRYFBGBGZB57NFX
X-Message-ID-Hash: YKLRUFTCMII5KNRAJCRYFBGBGZB57NFX
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YKLRUFTCMII5KNRAJCRYFBGBGZB57NFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VyBkbml1IDExLjEwLjIwMjQgb8KgMTU6MTksIE1hcnRpbiBCcmF1biBwaXN6ZToNCj4NCj4NCj4g
T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgNjoxM+KAr0FNIFBpb3RyIEtyeXNpayA8cGVycGVyQG8y
LnBsPiB3cm90ZToNCj4NCj4gICAgIFJlZ2FyZGluZyDigJhrYXPigJkgY29tbWFuZCAtIHRoYXQg
d29ya3Mgd2VsbCB3aXRoIHRoZSDigJh6ZXVz4oCZIGJyYW5jaCBvZg0KPiAgICAgbWV0YS1ldHR1
cyAodXNlZCB1cCB0byBVSEQgNC42KS4gQnV0IHdoZW4gSSBzd2l0Y2hlZCB0byBtb3JlIHJlY2Vu
dA0KPiAgICAg4oCYa2lya3N0b25l4oCZIGJyYW5jaCAtIGl0IHN0b3BwZWQuIFByb2JhYmx5IHNv
bWUgY2hhbmdlcyBhcmUgbmVlZGVkIGluDQo+ICAgICB0aGF0IGNvbW1hbmQuIEkgd291bGQgZ3Vl
c3Mga2FzIHZlcnN0aW9uIDIuNi4yIGlzIG5vdCBjb3JyZWN0DQo+ICAgICBhbnltb3JlLA0KPiAg
ICAgYnV0IEkgZG9u4oCZdCBrbm93IGZvciB3aGljaCB0aGUgY29tbWFuZCBtaWdodCB3b3JrLiBT
byBpdCBpcyBhY3R1YWxseQ0KPiAgICAgZ29vZCB0aGF0IHlvdSBhbHJlYWR5IGFyZSBhYmxlIHRv
IHJ1biB0aG9zZSBidWlsZHMgd2l0aCDigJhrYXPigJkgYnV0DQo+ICAgICB3aXRob3V0IGRvY2tl
ci4NCj4NCj4NCj4gQ2FuIHlvdSBwbGVhc2Ugb3BlbiBhbiBpc3N1ZSBvbiB0aGlzIG9uIGdpdGh1
Yi5jb20vRXR0dXNSZXNlYXJjaC91aGQgDQo+IDxodHRwOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2Vh
cmNoL3VoZD4/IFdlIHVzZSBrYXMgdG8gYnVpbGQgaW1hZ2VzLCBzbyANCj4gdGhpcyBzaG91bGQg
bm90IGJlIGFuIGlzc3VlLg0KPg0KPiAtLU0NCg0KSSBwcm9iYWJseSB3b3VsZCBpZiBJIGhhZCBz
dXNwaWNpb24gdGhhdCBmYXVsdCBpcyBvbiBtZXRhLWV0dHVzIHNpZGUuIEFzIA0KSSd2ZSB3cml0
dGVuIEkgdGhvdWdodCB0aGF0IGl0IHdhcyBteSBjb21tYW5kIHRoYXQgZ290IG91dGRhdGVkIGJ5
IA0KcmVjZW50IGNoYW5nZXMuDQoNCkFmdGVyIGxvb2tpbmcgaW50byB0aGF0IEkgZmlndXJlZCBv
dXQgdGhhdDoNCi0gbWV0YS1ldHR1cyBub3cgcmVsaWVzIG9uIGEgbXVjaCBuZXdlciB2ZXJzaW9u
IG9mIGthcyAoNC4wID8pLA0KLSBkb2NrZXIgaW1hZ2UgZm9yIG5ldyB2ZXJzaW9uIG9mIGthcyBo
YXZlIGNoYW5nZWQgYW5kIGRvbid0IGFsbG93IG1lIHRvIA0Kc2V0IHRoZSB1c2VyIGVhc2lseSB3
aXRoIFVTRVJfSUQgdmFyaWFibGUgdG8gaWQgb2YgY3VycmVudCB1c2VyLiBTZXR0aW5nIA0KdGhh
dCB3YXMgaW1wb3J0YW50IGJlY2F1c2UgaXQgZGlkIGxldCBtZSB0byBlYXNpbHkgdHdlYWsgdGhl
IGJ1aWxkIA0Kd2l0aG91dCBjaGFuZ2luZyBvd25lcnNoaXAgb2YgdGhlIGZpbGVzLg0KDQpJJ20g
YWJsZSB0byB1c2UgYSBmb2xsb3dpbmcgaGFjayBieSBtYWtpbmcgdG9wIGRpcmVjdG9yeSB3cml0
YWJsZSBieSANCmV2ZXJ5b25lOg0KDQpta2RpciB0b3BfZGlyZWN0b3J5DQpjaG1vZCA3NzcgdG9w
X2RpcmVjdG9yeQ0KY2QgdG9wX2RpcmVjdG9yeQ0KZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNv
bS9FdHR1c1Jlc2VhcmNoL21ldGEtZXR0dXMuZ2l0DQpkb2NrZXIgcnVuIC0tcm0gLWl0IC13ICIk
UFdEIiAtLW1vdW50IA0KdHlwZT1iaW5kLHNvdXJjZT0iJFBXRCIsdGFyZ2V0PSIkUFdEIiBcDQog
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLS1uZXQ9aG9zdCBcDQogwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LS1zZWN1cml0eS1vcHQgc2VjY29tcD11bmNvbmZpbmVkIFwNCiDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnaGNyLmlvL3NpZW1lbnMva2FzL2thczo0LjAgXA0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJh
c2ggLWMgInN1ZG8gYXB0IHVwZGF0ZSA7IHN1ZG8gYXB0IGluc3RhbGwgLXkgemlwICYmIA0KLi9t
ZXRhLWV0dHVzL2NvbnRyaWIva2FzX2J1aWxkX2ltZ3NfcGFja2FnZS5zaCB4NHh4IHY0LjcuMC4w
Ig0KDQphbmQgdGhlIGJ1aWxkIHdhcyBzdWNjZXNzZnVsLg0KDQpUaGVuIEkgbWFudWFsbHkgYnVp
bHQgc2RrOg0KDQpkb2NrZXIgcnVuIC0tcm0gLWl0IC13ICIkUFdEIiAtLW1vdW50IA0KdHlwZT1i
aW5kLHNvdXJjZT0iJFBXRCIsdGFyZ2V0PSIkUFdEIiBcDQogwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LS1uZXQ9aG9zdCBcDQogwqDCoMKgwqDCoMKgwqDCoMKgwqAgLS1zZWN1cml0eS1vcHQgc2VjY29t
cD11bmNvbmZpbmVkIFwNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnaGNyLmlvL3NpZW1lbnMva2Fz
L2thczo0LjAgXA0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJhc2gNCg0Kc3VkbyBhcHQgdXBkYXRl
DQpzdWRvIGFwdCBpbnN0YWxsIC15IHppcA0KLiBvZS1jb3JlL29lLWluaXQtYnVpbGQtZW52DQpi
aXRiYWtlIGdudXJhZGlvLWltYWdlIC1jcG9wdWxhdGVfc2RrDQoNCg0KQlRXLiB0aGlzIHNjcmlw
dCBzZWVtcyB0byBiZSByZXNwb25zaWJsZSBmb3IgYnVpbGRpbmcgc2RrIC0gaW4gdGhlIGxpbmUg
NDU6DQpodHRwczovL2dpdGh1Yi5jb20vcHRya3J5c2lrL21ldGEtZXR0dXMvYmxvYi94NDExL2Nv
bnRyaWIva2FzX2J1aWxkX2ltZ3NfcGFja2FnZS5zaCNMNDUNCg0KYnV0IGl0J3Mgbm90IGNsZWFy
IHRvIG1lIGluIHdoYXQgY2lyY3Vtc3RhbmNlcyB0aGlzIGxpbmUgd2lsbCBiZSANCmV4ZWN1dGVk
IC0gd2hlcmUgX3Nka19wa2dfbmFtZSB2YXJpYWJsZSB3aWxsIGJlIHNldD8NCg0KQmVzdCBSZWdh
cmRzLA0KUGlvdHIgS3J5c2lrDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
