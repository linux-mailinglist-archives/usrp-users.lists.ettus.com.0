Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C46773548
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 01:58:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 844FD3844AD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 19:58:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691452697; bh=zHHGuJHOyK7b1Lp6OU7iULggGzTzIaoKXIdbdC+Xatc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uGELWaRHbVFGivhIdeigS2Au626InWTOj3tgndp5wbiq/pPT3x129unXRkXnAykbp
	 BeepV/8zsY72ufPvRjZfumEC2k5VzhoOqGsIHOqaTSjuGZZGgFhRtG1GMUB6wJ5Ydk
	 TOrWLLidHEKqBRjP8l8PBdzT5JRPBq5PNpGugp2YanKtICRKTSmZ5TNWoIYu84GeMs
	 YJ/9wNIZEpo7d4AlYUd8QYTc2zMD5rHhoRdzGB4Mphfbg0xW5E/T9O0hteGlpIQpGw
	 5wRD+RWuWvMkHBUZh5d1Vk9wKawu6MGuG+8RbNCuNEVwDl1ERfK5sQBmmFWVhfDqLu
	 0yDv69kBa3TBQ==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.148])
	by mm2.emwd.com (Postfix) with ESMTPS id 95305384021
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 19:58:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="S3oF5SFy";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 47908 invoked from network); 8 Aug 2023 01:57:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1691452679; bh=bLszEcXJ0euQBF6KRjfxW70VhvWkrXT7a7iWdWXwE8w=;
          h=Subject:To:From;
          b=S3oF5SFywUI27fv+wsTDjxzeKvuFcuy95GkRTXMgLXT+1EQCp8nhbQeY6tZiFLDKA
           NRAtDh1ondwKvfinJ6YudeOGutQlk4KVtUIKsB8Pc2KrluxlxTQ4V0jeHxEdYsiBCb
           Sneg6uLH9IKMO1CmbQdheVBrSyh0AFPIueaTuPUI=
Received: from 109.95.142.26.r.toneticgroup.pl (HELO [192.168.1.231]) (perper@o2.pl@[109.95.142.26])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 8 Aug 2023 01:57:59 +0200
Message-ID: <5d830b52-07e6-2b4c-e9f5-4eb0627582f4@o2.pl>
Date: Tue, 8 Aug 2023 01:57:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1D7BF42B-D48D-47F4-8D4B-14FEE57F3251@apple.com>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <1D7BF42B-D48D-47F4-8D4B-14FEE57F3251@apple.com>
X-WP-MailID: d17a7dc7f79ba7856b0d3317d2347854
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [kdP0]                               
Message-ID-Hash: KIDPHMPTV6S2R2CW2HEALGG4DYWGAOXF
X-Message-ID-Hash: KIDPHMPTV6S2R2CW2HEALGG4DYWGAOXF
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 device no longer found when using use_dpdk=1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KIDPHMPTV6S2R2CW2HEALGG4DYWGAOXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkZvciBYNDEwIHRoZSBuZXR3b3JrIGFkYXB0ZXIgd2hpY2ggd29ya3MgdW5kZXIg
RFBESyBkcml2ZXIgY29udHJvbCBjYW4ndCANCmJlIHVzZWQgdG8gY29udHJvbCB0aGUgZGV2aWNl
IChpdCBjYW4ndCBjYXJyeSBSUEMgY2FsbHMgdG8gTVBNIGRhZW1vbiANCndvcmtpbmcgb24gdGhl
IGRldmljZSkuIFlvdSBuZWVkIGEgc2VwYXJhdGUgRXRoZXJuZXQgY29ubmVjdGlvbiBmb3IgDQpt
Z210X2FkZHIuIFlvdSBjYW4gdXNlIDFHYml0IEV0aGVybmV0IGxpbmsgZm9yIHRoYXQuDQoNCkJl
c3QgUmVnYXJkcywNClBpb3RyIEtyeXNpaw0KDQpXIGRuaXUgNy4wOC4yMDIzIG/CoDIxOjQwLCBW
aWN0b3IgTGV2aW4gdmlhIFVTUlAtdXNlcnMgcGlzemU6DQo+IEhpIGFsbCwNCj4NCj4gSSBhbSB0
cnlpbmcgdG8gZW5hYmxlIERQREsgd2l0aCBYNDEwIGFuZCBmb3VuZCBhbiBpc3N1ZSB3aGVuIHVz
aW5nIA0KPiDigJx1c2VfZHBkaz0x4oCdLiBJIGFtIG9uIFVidW50dSAyMi4wNCwgdGhlIGxhdGVz
dCBVSEQgNC40LjAgKGNvbW1pdDogDQo+IDRhNzc3OTFjZjVmN2NlZGM4NDI3NjJiZThiMmI2Nzc1
MDczZDhjOTUpIGFuZCBEUERLIDIxLjExLjQuDQo+DQo+IFdoZW4gdGhlIFg0MTAgaXMgY29ubmVj
dCB0byB0aGUgaW50ZXJmYWNlIHdpdGhvdXQgRFBESywgSSBjYW4gZmluZCBpdCANCj4gdmlhIHVo
ZF91c3JwX3Byb2JlIGFuZCBydW4gYmVuY2htYXJrX3JhdGUgd2l0aG91dCBpc3N1ZS4gQWZ0ZXIg
YmluZGluZyANCj4gdGhlIE5JQyB0byBEUERLLCB0aGUgWDQxMCBjYW4gbm8gbG9uZ2VyIGJlIGZv
dW5kIHdoZW4gdXNpbmcgRFBESy4gDQo+IEFueW9uZSBrbm93IHdoeSBpdOKAmXMgZGlzYXBwZWFy
aW5nPw0KPg0KPg0KPiBPdXRwdXQgb2YgZmluZCBkZXZpY2VzIGJlZm9yZSBEUERLIGlzIGVuYWJs
ZWQ6DQo+DQo+ICMgdWhkX2ZpbmRfZGV2aWNlcw0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBD
KysgdmVyc2lvbiAxMS4zLjA7IEJvb3N0XzEwNzQwMDsgRFBES18yMS4xMTsgDQo+IFVIRF80LjQu
MC5IRUFELTMzLWc0YTc3NzkxYw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiAtLSBVSEQgRGV2aWNlIDANCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gRGV2aWNlIEFkZHJlc3M6DQo+IMKg
IMKgIHNlcmlhbDogMzI1NzMxMA0KPiDCoCDCoCBhZGRyOiAxOTIuMTY4LjE1LjINCj4gwqAgwqAg
Y2xhaW1lZDogRmFsc2UNCj4gwqAgwqAgZnBnYTogWDRfMjAwDQo+IMKgIMKgIG1nbXRfYWRkcjog
MTkyLjE2OC4xNS4yDQo+IMKgIMKgIG5hbWU6IG5pLXg0eHgtMzI1NzMxMA0KPiDCoCDCoCBwcm9k
dWN0OiB4NDEwDQo+IMKgIMKgIHR5cGU6IHg0eHgNCj4NCj4NCj4gQWZ0ZXIgRFBESyBpcyBlbmFi
bGVkLCB0aGUgWDQxMCBpcyBubyBsb25nZXIgZm91bmQ6DQo+DQo+IC91c3IvbG9jYWwvbGliL3Vo
ZC9leGFtcGxlcyMgLi9iZW5jaG1hcmtfcmF0ZSANCj4gLS1hcmdzPSJtYXN0ZXJfY2xvY2tfcmF0
ZT0yNDUuNzZlNixtZ210X2FkZHI9MTkyLjE2OC4xNS4yLGFkZHI9MTkyLjE2OC4xNS4yLHVzZV9k
cGRrPTEsc2VyaWFsPTMyNTczMTAsbmFtZT1uaS14NHh4LTMyNTczMTAscHJvZHVjdD14NDEwLHR5
cGU9eDR4eCIgDQo+IC0tZHVyYXRpb24gMyAtLXJ4X3JhdGUgMjQ1Ljc2ZTYgwqAtLXR4X3JhdGUg
MjQ1Ljc2ZTYNCj4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuMy4w
OyBCb29zdF8xMDc0MDA7IERQREtfMjEuMTE7IA0KPiBVSERfNC40LjAuSEVBRC0zMy1nNGE3Nzc5
MWMNCj4gW1dBUk5JTkddIFtQUkVGU10gTG9hZGVkIGNvbmZpZyBmcm9tIC9yb290Ly51aGQuIFRo
aXMgbG9jYXRpb24gaXMgDQo+IGNvbnNpZGVyZWQgZGVwcmVjYXRlZCwgY29uc2lkZXIgbW92aW5n
IHlvdXIgY29uZmlnIGZpbGUgdG8gDQo+IC9yb290Ly5jb25maWcgaW5zdGVhZC4NCj4gRUFMOiBE
ZXRlY3RlZCBDUFUgbGNvcmVzOiA5Ng0KPiBFQUw6IERldGVjdGVkIE5VTUEgbm9kZXM6IDINCj4g
RUFMOiBEZXRlY3RlZCBzaGFyZWQgbGlua2FnZSBvZiBEUERLDQo+IEVBTDogTXVsdGktcHJvY2Vz
cyBzb2NrZXQgL3Zhci9ydW4vZHBkay9ydGUvbXBfc29ja2V0DQo+IEVBTDogU2VsZWN0ZWQgSU9W
QSBtb2RlICdWQScNCj4gRUFMOiBWRklPIHN1cHBvcnQgaW5pdGlhbGl6ZWQNCj4gRUFMOiBVc2lu
ZyBJT01NVSB0eXBlIDEgKFR5cGUgMSkNCj4gRUFMOiBQcm9iZSBQQ0kgZHJpdmVyOiBuZXRfaWNl
ICg4MDg2OjE1OTIpIGRldmljZTogMDAwMDo5ODowMC4xIChzb2NrZXQgMSkNCj4gaWNlX2xvYWRf
cGtnX3R5cGUoKTogQWN0aXZlIHBhY2thZ2UgaXM6IDEuMy4yOC4wLCBJQ0UgT1MgRGVmYXVsdCAN
Cj4gUGFja2FnZSAoZG91YmxlIFZMQU4gbW9kZSkNCj4gVEVMRU1FVFJZOiBObyBsZWdhY3kgY2Fs
bGJhY2tzLCBsZWdhY3kgc29ja2V0IG5vdCBjcmVhdGVkDQo+IGljZV9zZXRfcnhfZnVuY3Rpb24o
KTogVXNpbmcgQVZYMiBPRkZMT0FEIFZlY3RvciBTY2F0dGVyZWQgUnggKHBvcnQgMCkuDQo+IGlj
ZV9zZXRfdHhfZnVuY3Rpb24oKTogVXNpbmcgQVZYMiBPRkZMT0FEIFZlY3RvciBUeCAocG9ydCAw
KS4NCj4gWzAwOjAwOjAwLjAwMDIyOV0gQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdpdGg6IA0K
PiBtYXN0ZXJfY2xvY2tfcmF0ZT0yNDUuNzZlNixtZ210X2FkZHI9MTkyLjE2OC4xNS4yLGFkZHI9
MTkyLjE2OC4xNS4yLHVzZV9kcGRrPTEsc2VyaWFsPTMyNTczMTAsbmFtZT1uaS14NHh4LTMyNTcz
MTAscHJvZHVjdD14NDEwLHR5cGU9eDR4eC4uLg0KPiBFcnJvcjogTG9va3VwRXJyb3I6IEtleUVy
cm9yOiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCj4gRGV2aWNlIEFkZHJlc3M6DQo+IMKg
IMKgIG1hc3Rlcl9jbG9ja19yYXRlOiAyNDUuNzZlNg0KPiDCoCDCoCBtZ210X2FkZHI6IDE5Mi4x
NjguMTUuMg0KPiDCoCDCoCBhZGRyOiAxOTIuMTY4LjE1LjINCj4gwqAgwqAgdXNlX2RwZGs6IDEN
Cj4gwqAgwqAgc2VyaWFsOiAzMjU3MzEwDQo+IMKgIMKgIG5hbWU6IG5pLXg0eHgtMzI1NzMxMA0K
PiDCoCDCoCBwcm9kdWN0OiB4NDEwDQo+IMKgIMKgIHR5cGU6IHg0eHgNCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
