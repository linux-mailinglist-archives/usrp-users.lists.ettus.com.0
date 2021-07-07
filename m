Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3FF3BE88C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 15:10:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C15D4383EF3
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 09:10:14 -0400 (EDT)
Received: from cc.mail.osaka-u.ac.jp (cc-ext.ccc.osaka-u.ac.jp [133.1.138.214])
	by mm2.emwd.com (Postfix) with SMTP id 254B2383ED1
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 09:09:27 -0400 (EDT)
Received: (qmail 22652 invoked by uid 0); 7 Jul 2021 22:09:25 +0900
X-Qmail-Scanner-Diagnostics: from 106.154.131.160 (viktor+ist@106.154.131.160) by m23 (envelope-from <viktor@ist.osaka-u.ac.jp>, uid 0) with qmail-scanner-2.11
 (clamdscan: 0.99.4/26096.  
 Clear:RC:0(106.154.131.160):.
 Processed in 0.007569 secs); 07 Jul 2021 13:09:25 -0000
X-Qmail-Scanner-Mail-From: viktor@ist.osaka-u.ac.jp via m23
X-Qmail-Scanner: 2.11 (Clear:RC:0(106.154.131.160):. Processed in 0.007569 secs)
Received: from unknown (HELO v-prec.higashi-local) (viktor+ist@106.154.131.160)
  by 172.30.102.163 with SMTP; 7 Jul 2021 22:09:25 +0900
To: usrp-users@lists.ettus.com
From: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
Message-ID: <be633461-d5cf-4e8c-0929-03736bc7e9a2@ist.osaka-u.ac.jp>
Date: Wed, 7 Jul 2021 22:09:25 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
X-matriXscan-msec-AV: Clean
X-odins-Action: Approve
X-odins-spam: Uncategorized
Message-ID-Hash: MGUYLOMUFXG6ZACOGDQPAJZHLQGTXWT3
X-Message-ID-Hash: MGUYLOMUFXG6ZACOGDQPAJZHLQGTXWT3
X-MailFrom: viktor@ist.osaka-u.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Assertion fail when destroying tx streamer (UHD 4)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MGUYLOMUFXG6ZACOGDQPAJZHLQGTXWT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIGdldCBhbiB1bmRlY2lwaGVyYWJsZSBhc3NlcnRpb24gZmFpbHVyZSB3aGVu
IHJ1bm5pbmcgdGhlIGZvbGxvd2luZyANCnNpbXBsZSBjb2RlIHVzaW5nIGEgMUdicHMgRXRoZXJu
ZXQgbGluay4gVGhlIGVycm9yIGhhcHBlbnMgd2hlbiB0MSBnb2VzIA0Kb3V0IG9mIHNjb3BlLCBl
dmVyeSB0aW1lIEkgcnVuIHRoZSBhcHBsaWNhdGlvbi4gV2hhdCBhbSBJIG1pc3Npbmc/DQoNCmlu
dCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pIHsNCiDCoMKgwqAgdWhkOjpkZXZpY2VfYWRk
cl90IGRldkFkZHJlc3NlcygiYWRkcj0xOTIuMTY4LjEwLjIiKTsNCiDCoMKgwqAgYXV0byB1c3Jw
ID0gdWhkOjp1c3JwOjptdWx0aV91c3JwOjptYWtlKGRldkFkZHJlc3Nlcyk7DQogwqDCoMKgIHVo
ZDo6c3RyZWFtX2FyZ3NfdCBzdHJlYW1fYXJncygiZmMzMiIsICJzYzE2Iik7DQogwqDCoMKgIHN0
cmVhbV9hcmdzLmNoYW5uZWxzLnB1c2hfYmFjaygwKTsNCiDCoMKgwqAgew0KIMKgwqDCoMKgwqDC
oMKgIGF1dG8gdDEgPSB1c3JwLT5nZXRfdHhfc3RyZWFtKHN0cmVhbV9hcmdzKTsNCiDCoMKgwqDC
oMKgwqDCoCBzdGQ6OmNvdXQgPDwgInQxIGFsaXZlIiA8PCBzdGQ6OmVuZGw7DQogwqDCoMKgIH0N
CiDCoMKgwqAgc3RkOjpjb3V0IDw8ICJ0MSBkZWFkLCBPSyIgPDwgc3RkOjplbmRsOw0KIMKgwqDC
oCByZXR1cm4gMDsNCg0KfQ0KDQpUaGUgb3V0cHV0IGFuZCB0aGUgZXJyb3IgaXMgYXMgZm9sbG93
czoNCg0KW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuMC4xIDIwMjEwMzI0
IChSZWQgSGF0IDExLjAuMS0wKTsgDQpCb29zdF8xMDc1MDA7IFVIRF80LjAuMC4wDQpbSU5GT10g
W1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UuLi4NCltJTkZPXSBbWDMwMF0gTWF4
aW11bSBmcmFtZSBzaXplOiAxNDcyIGJ5dGVzLg0KW0lORk9dIFtYMzAwXSBSYWRpbyAxeCBjbG9j
azogMjAwIE1Ieg0KdDEgYWxpdmUNCltXQVJOSU5HXSBbMC9SYWRpbyMwXSBBdHRlbXB0aW5nIHRv
IHNldCB0aWNrIHJhdGUgdG8gMC4gU2tpcHBpbmcuDQovdXNyL2luY2x1ZGUvYysrLzExL2JpdHMv
c3RsX3ZlY3Rvci5oOjEwNDU6IHN0ZDo6dmVjdG9yPF9UcCwgDQpfQWxsb2M+OjpyZWZlcmVuY2Ug
c3RkOjp2ZWN0b3I8X1RwLCBfQWxsb2M+OjpvcGVyYXRvcltdKHN0ZDo6dmVjdG9yPF9UcCwgDQpf
QWxsb2M+OjpzaXplX3R5cGUpIFt3aXRoIF9UcCA9IA0KYm9vc3Q6OmRldGFpbDo6YWRqX2xpc3Rf
Z2VuPGJvb3N0OjphZGphY2VuY3lfbGlzdDxib29zdDo6dmVjUywgDQpib29zdDo6dmVjUywgYm9v
c3Q6OmJpZGlyZWN0aW9uYWxTLCANCmJvb3N0Ojpwcm9wZXJ0eTx1aGQ6OnJmbm9jOjpkZXRhaWw6
OmdyYXBoX3Q6OnZlcnRleF9wcm9wZXJ0eV90LCANCnVoZDo6cmZub2M6Om5vZGVfdCo+LCANCmJv
b3N0Ojpwcm9wZXJ0eTx1aGQ6OnJmbm9jOjpkZXRhaWw6OmdyYXBoX3Q6OmVkZ2VfcHJvcGVydHlf
dCwgDQp1aGQ6OnJmbm9jOjpncmFwaF9lZGdlX3Q+ID4sIGJvb3N0Ojp2ZWNTLCBib29zdDo6dmVj
UywgDQpib29zdDo6YmlkaXJlY3Rpb25hbFMsIA0KYm9vc3Q6OnByb3BlcnR5PHVoZDo6cmZub2M6
OmRldGFpbDo6Z3JhcGhfdDo6dmVydGV4X3Byb3BlcnR5X3QsIA0KdWhkOjpyZm5vYzo6bm9kZV90
Kj4sIA0KYm9vc3Q6OnByb3BlcnR5PHVoZDo6cmZub2M6OmRldGFpbDo6Z3JhcGhfdDo6ZWRnZV9w
cm9wZXJ0eV90LCANCnVoZDo6cmZub2M6OmdyYXBoX2VkZ2VfdD4sIGJvb3N0Ojpub19wcm9wZXJ0
eSwgDQpib29zdDo6bGlzdFM+Ojpjb25maWc6OnN0b3JlZF92ZXJ0ZXg7IF9BbGxvYyA9IA0Kc3Rk
OjphbGxvY2F0b3I8Ym9vc3Q6OmRldGFpbDo6YWRqX2xpc3RfZ2VuPGJvb3N0OjphZGphY2VuY3lf
bGlzdDxib29zdDo6dmVjUywgDQpib29zdDo6dmVjUywgYm9vc3Q6OmJpZGlyZWN0aW9uYWxTLCAN
CmJvb3N0Ojpwcm9wZXJ0eTx1aGQ6OnJmbm9jOjpkZXRhaWw6OmdyYXBoX3Q6OnZlcnRleF9wcm9w
ZXJ0eV90LCANCnVoZDo6cmZub2M6Om5vZGVfdCo+LCANCmJvb3N0Ojpwcm9wZXJ0eTx1aGQ6OnJm
bm9jOjpkZXRhaWw6OmdyYXBoX3Q6OmVkZ2VfcHJvcGVydHlfdCwgDQp1aGQ6OnJmbm9jOjpncmFw
aF9lZGdlX3Q+ID4sIGJvb3N0Ojp2ZWNTLCBib29zdDo6dmVjUywgDQpib29zdDo6YmlkaXJlY3Rp
b25hbFMsIA0KYm9vc3Q6OnByb3BlcnR5PHVoZDo6cmZub2M6OmRldGFpbDo6Z3JhcGhfdDo6dmVy
dGV4X3Byb3BlcnR5X3QsIA0KdWhkOjpyZm5vYzo6bm9kZV90Kj4sIA0KYm9vc3Q6OnByb3BlcnR5
PHVoZDo6cmZub2M6OmRldGFpbDo6Z3JhcGhfdDo6ZWRnZV9wcm9wZXJ0eV90LCANCnVoZDo6cmZu
b2M6OmdyYXBoX2VkZ2VfdD4sIGJvb3N0Ojpub19wcm9wZXJ0eSwgDQpib29zdDo6bGlzdFM+Ojpj
b25maWc6OnN0b3JlZF92ZXJ0ZXg+OyBzdGQ6OnZlY3RvcjxfVHAsIA0KX0FsbG9jPjo6cmVmZXJl
bmNlID0gDQpib29zdDo6ZGV0YWlsOjphZGpfbGlzdF9nZW48Ym9vc3Q6OmFkamFjZW5jeV9saXN0
PGJvb3N0Ojp2ZWNTLCANCmJvb3N0Ojp2ZWNTLCBib29zdDo6YmlkaXJlY3Rpb25hbFMsIA0KYm9v
c3Q6OnByb3BlcnR5PHVoZDo6cmZub2M6OmRldGFpbDo6Z3JhcGhfdDo6dmVydGV4X3Byb3BlcnR5
X3QsIA0KdWhkOjpyZm5vYzo6bm9kZV90Kj4sIA0KYm9vc3Q6OnByb3BlcnR5PHVoZDo6cmZub2M6
OmRldGFpbDo6Z3JhcGhfdDo6ZWRnZV9wcm9wZXJ0eV90LCANCnVoZDo6cmZub2M6OmdyYXBoX2Vk
Z2VfdD4gPiwgYm9vc3Q6OnZlY1MsIGJvb3N0Ojp2ZWNTLCANCmJvb3N0OjpiaWRpcmVjdGlvbmFs
UywgDQpib29zdDo6cHJvcGVydHk8dWhkOjpyZm5vYzo6ZGV0YWlsOjpncmFwaF90Ojp2ZXJ0ZXhf
cHJvcGVydHlfdCwgDQp1aGQ6OnJmbm9jOjpub2RlX3QqPiwgDQpib29zdDo6cHJvcGVydHk8dWhk
OjpyZm5vYzo6ZGV0YWlsOjpncmFwaF90OjplZGdlX3Byb3BlcnR5X3QsIA0KdWhkOjpyZm5vYzo6
Z3JhcGhfZWRnZV90PiwgYm9vc3Q6Om5vX3Byb3BlcnR5LCANCmJvb3N0OjpsaXN0Uz46OmNvbmZp
Zzo6c3RvcmVkX3ZlcnRleCY7IHN0ZDo6dmVjdG9yPF9UcCwgDQpfQWxsb2M+OjpzaXplX3R5cGUg
PSBsb25nIHVuc2lnbmVkIGludF06IEFzc2VydGlvbiAnX19uIDwgdGhpcy0+c2l6ZSgpJyANCmZh
aWxlZC4NCg0KLi9xdWlja1J1bi5zaDogbGluZSA4OiA0NzEzOCBBYm9ydGVkwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNvcmUgZHVtcGVkKSANCi4vJE9VVE5BTUUNCg0KDQpFbnZp
cm9ubWVudDoNCg0KRmVkb3JhIDM0IHg2NA0KVUhEIDQuMC4wLjANClVTUlAgWDMxMCB3LyBVQlgt
MTYwIHggMg0KDQpUaGFua3MsDQpWaWt0b3INCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
