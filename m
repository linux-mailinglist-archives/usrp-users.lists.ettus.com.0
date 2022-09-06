Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F405AE38A
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 10:55:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDA33381522
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 04:55:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662454507; bh=JcvWfG7WPSmqeftnqMw4Wwd+rGeooPlbZ2giC2WdnVU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sXZNZ9Hz1xNPAtDPAEeV23akjRwvj5ot+tiXzgzCSa5y/ps2CehHIDXXeG+8k2DNt
	 iOE9xBGbwm4mo6hUsGIkedCgZWzgSACT8HL9ZR26PZb44O2Nk7Ovb5/7uvXAWOz0Y9
	 vFN1Pdb4iN+5SgxZWCNEq/DAjVUtthl3SjsQhzVy5Nr1IUjnrt/tIp7LGG+rh2NmDQ
	 Cn5ipx3RfPGtxNr9sLv30D261Dabdsui/erf1oC/C3VI/dR/XQcn2YmJzWHCMTbuLz
	 t6ksyIrNBFK39fQLqzQmhCIIud+qBRLg2yz3/zIp7psNlyOoOt/9hgjgNBVhvibNr9
	 +87POBO9x82lw==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B28163812BE
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 04:54:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="vZEZqJ/2";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 30194 invoked from network); 6 Sep 2022 10:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1662454456; bh=dLPo8i0R3zBDA/NnU4r1FcyE6DdSUN+H+Lbll1PH3C0=;
          h=Subject:To:From;
          b=vZEZqJ/2/HAn9HKYQaSLtFnX1UndTtCDWcFA/p2FOESu8LqrvGhj3gEE9N+VlQf9U
           bTv/fNgRHsZir/qyT6OPzmeQZgZl0g79nxVHshs2cLgbPGzE2ezqOrvynIO7AJaZ8a
           JLXm9PLVShsunFFc5asNQ6x9yy9DPLPRbF8Lsnrg=
Received: from user-5-173-156-204.play-internet.pl (HELO [192.168.2.104]) (perper@o2.pl@[5.173.156.204])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 6 Sep 2022 10:54:16 +0200
Message-ID: <92554cf7-c048-d893-aa14-5dc81e9683f6@o2.pl>
Date: Tue, 6 Sep 2022 10:54:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <30bfd91474284874b0ea4df3142dd0c7@campus.tu-berlin.de>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <30bfd91474284874b0ea4df3142dd0c7@campus.tu-berlin.de>
X-WP-MailID: 11bad7f06831b782e8c508cd1031b8d5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [4RM0]                               
Message-ID-Hash: FSNCVQPD6ENTKREYOOOK2OTDZGCOQVPE
X-Message-ID-Hash: FSNCVQPD6ENTKREYOOOK2OTDZGCOQVPE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK invalid ELF header
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSNCVQPD6ENTKREYOOOK2OTDZGCOQVPE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgS2FzaW0sDQoNClRoZSBmaWxlcyB3aXRoIGV4dGVuc2lvbiAqLmEgKHN0YXRpYyBsaWJyYXJp
ZXMpIGFyZSBzb3VyY2Ugb2YgdGhlIA0KcHJvYmxlbS4gUHV0IHRoZSBuZWVkZWQgbGlicmFyaWVz
IHdpdGhvdXQgc3RhdGljIGxpYnJhcmllcyBpbiBhIHNlcGFyYXRlIA0KZGlyZWN0b3J5LCBsZXQn
cyBzYXkgL3Vzci9sb2NhbC9saWIveDg2XzY0LWxpbnV4LWdudS9wbWRzICwgYW5kIGNoYW5nZSAN
CmluIHRoZSBjb25maWcgdG86DQpkcGRrLWRyaXZlcj0vdXNyL2xvY2FsL2xpYi94ODZfNjQtbGlu
dXgtZ251L3BtZHMNCg0KVUhEIGV4aXRpbmcgZHVlIHRvIHRvbyBtYW55IGxpYnJhcnkgZmlsZXMg
aW4gdGhlIGRwZGstZHJpdmVycGF0aCBpcyBhIA0KdmVyeSBjb21tb24gcHJvYmxlbSB3aGVuIGdl
dHRpbmcgRFBESyB0byB3b3JrIHdpdGggVUhELCB3aGF0IGlzbid0IA0KaGlnaGxpZ2h0ZWQgc3Ry
b25nbHkgZW5vdWdoIGluIHRoZSBFdHR1cydzIGRvY3VtZW50YXRpb24uDQoNClRyeSB0byBjb3B5
IGFsbCBsaWJydGUqLnNvIGFuZCBsaWJydGUqLnNvLiogb3Igb25seSB0aGUgb25lcyBuZWVkZWQg
YnkgDQp5b3UuIEkgY2hvb3NlIHRoZSBzZWNvbmQgb3B0aW9uIGFuZCBpbiBteSBjYXNlIEkgY29w
aWVkIGZyb20gDQovdXNyL2xpYi94ODZfNjQtbGludXgtZ251IG9ubHk6DQpsaWJydGVfbWVtcG9v
bF9yaW5nLnNvLCBsaWJydGVfbWVtcG9vbF9yaW5nLnNvLjIwLjANCmxpYnJ0ZV9wZHVtcC5zbywg
bGlicnRlX3BkdW1wLnNvLjIwLjANCmxpYnJ0ZV9wbWRfaTQwZS5zbywgbGlicnRlX3BtZF9pNDBl
LnNvLjIwLjANCmxpYnJ0ZV9wbWRfaXhnYmUuc28sIGxpYnJ0ZV9wbWRfaXhnYmUuc28uMjAuMA0K
bGlicnRlX3BtZF9yaW5nLnNvLCBsaWJydGVfcG1kX3Jpbmcuc28uMjAuMA0KDQpCZXN0IFJlZ2Fy
ZHMsDQpQaW90ciBLcnlzaWsNCg0KVyBkbml1IDE2LjA2LjIwMjIgb8KgMTM6MDksIENoYW5nLCBL
YWl4aW4gcGlzemU6DQo+DQo+IERlYXIgYWxsLA0KPg0KPiBJIGhhdmUgYSBEUERLIGluaXRpYXRp
b24gcHJvYmxlbQ0KPg0KPiBJIGluc3RhbGxlZCBEUERLMTkuMTEgd2l0aCBhcHQgaW5zdGFsbCBh
bmQgaW5zdGFsbCBVSEQ0LjIgZnJvbSBzb3VyY2UgDQo+IGFuZCBpbiB0aGUgdWhkLmNvbmYgZmls
ZSBJIHdyb3RlIHRoZSBkcGRrIGRyaXZlciBwYXRoIGFzDQo+IGRwZGstZHJpdmVyPS91c3IvbGli
L3g4Nl82NC1saW51eC1nbnUNCj4gdGhlbiBJIGZvbGxvdyB0aGUgaW5zdHJ1Y3Rpb24gb2YgR2V0
dGluZyBTdGFydGVkIHdpdGggRFBESyBhbmQgVUhEIHRvIA0KPiBydW4gdGhlIHVoZCBleGFtcGxl
IHdpdGggZHBkaywgdGhlbiBJIGdldA0KPiBFQUw6IC91c3IvbGliL3g4Nl82NC1saW51eC1nbnUv
bGlicnRlX3BtZF9lbmV0Yy5hOiBpbnZhbGlkIEVMRiBoZWFkZXIgDQo+IEVBTDogRkFUQUw6IENh
bm5vdCBpbml0IHBsdWdpbnMNCj4NCj4gU2FtZSBlcnJvciBoYXBwZW5zIHdoZW4gSSBpbnN0YWxs
IERQREsxOC4xMSBhbmQgVUhENC4wIG1hbnVhbGx5IGZyb20gc291Y2UNCj4NCj4gLmEgaXMgc3Rh
dGljIGxpYnJhcnksIHNvIEkgc3VnZ2VzdCB0aGlzIGlzIGFuIGluc3RhbGwgZXJyb3Igb2YgRFBE
Sy4gDQo+IFRoYXQncyB3aHkgSSB0cmllZCBkaWZmZXJlbnQgaW5zdGFsbGF0aW9uLCBidXQgYm90
aCBkaWQgbm90IHdvcmsNCj4NCj4gSSB3b3VsZCBhcHByZWNpYXRlIHRoZSBoZWxwDQo+DQo+IFNp
bmNlcmVseQ0KPg0KPiBLYXNpbQ0KPg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
