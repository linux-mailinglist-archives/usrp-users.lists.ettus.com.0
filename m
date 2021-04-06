Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3663550E8
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 12:31:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 316A4383EAE
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 06:31:36 -0400 (EDT)
Received: from barracuda.navarca.com (barracuda.navarca.com [212.239.60.237])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C49B38108C
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 06:30:47 -0400 (EDT)
X-ASG-Debug-ID: 1617705044-053bad134b7a9a0001-5wTQH4
Received: from dns26.navarca.com (dns26.navarca.com [192.168.0.26]) by barracuda.navarca.com with ESMTP id kcpx3vkOtf94egfp (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 12:30:44 +0200 (CEST)
X-Barracuda-Envelope-From: luca.oliva@intecs.it
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.26
X-ASG-Whitelist: Client
Received: from dns26.navarca.com (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTPS id CA9201D64C9
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 12:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTP id BCA1232CD
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 12:30:44 +0200 (CEST)
Received: from dns26.navarca.com ([127.0.0.1])
	by localhost (dns26.navarca.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id nXRUM68VI5DO for <usrp-users@lists.ettus.com>;
	Tue,  6 Apr 2021 12:30:44 +0200 (CEST)
Received: from [192.168.1.122] (unknown [151.70.160.100])
	by dns26.navarca.com (Postfix) with ESMTPSA id 9B8B91D64C9
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 12:30:44 +0200 (CEST)
To: usrp-users@lists.ettus.com
X-Barracuda-RBL-Trusted-Forwarder: 192.168.1.122
From: Luca Oliva <luca.oliva@intecs.it>
Message-ID: <1e8db183-4501-3f1d-57e4-2a13de806012@intecs.it>
X-ASG-Orig-Subj: RfNoc SplitStream and FFT
Date: Tue, 6 Apr 2021 12:30:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
X-Barracuda-Connect: dns26.navarca.com[192.168.0.26]
X-Barracuda-Start-Time: 1617705044
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://212.239.60.237:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at navarca.com
X-Barracuda-Scan-Msg-Size: 2938
X-Barracuda-BRTS-Status: 1
Message-ID-Hash: AAOT6XYG7LFDBVH3GBHJPAATVILUWUJZ
X-Message-ID-Hash: AAOT6XYG7LFDBVH3GBHJPAATVILUWUJZ
X-MailFrom: btv1==73075c51f8f==luca.oliva@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RfNoc SplitStream and FFT
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAOT6XYG7LFDBVH3GBHJPAATVILUWUJZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCkkndmUgYW4gRXR0dXMgRTMxMCB3aXRoIFVIRCAzLjEzLjEuMA0KDQoNCkkgbmVlZCB0
byByZWNlaXZlIHNvbWUgc2FtcGxlcyBib3RoIGluIHRpbWUgZG9tYWluIHRoYW4gZnJlcXVlbmN5
IA0KZG9tYWluLiBJ4oCZbSB0cnlpbmcgdG8gZG8gdGhhdCB1c2luZyB0aGlzIHJmbm9jIGdyYXBo
Og0KDQorLS0tLS0tLS0tK8KgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLSsNCnzCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfC0t
LS0tLS0tLS0tLS0tLS0tLS0tLT4gUnhTdHJlYW1lciBDaCAwDQp8IFJhZGlvwqDCoCB8LS0tLS0t
LT58IFNwbGl0U3RyZWFtwqAgfMKgwqDCoMKgwqDCoCArLS0tLS0tLSsNCnzCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfC0tLS0tLT58
IEZGVMKgwqAgfC0tLS0tPiBSeFN0cmVhbWVyIENoIDENCistLS0tLS0tLS0rwqDCoMKgwqDCoMKg
wqAgKy0tLS0tLS0tLS0tLS0tK8KgwqDCoMKgwqDCoCArLS0tLS0tLSsNCg0KDQp1aGQ6OnJmbm9j
OjpibG9ja19pZF90IHJhZGlvX2N0cmxfaWQoMCwgIlJhZGlvIiwgMCk7DQp1aGQ6OnJmbm9jOjpi
bG9ja19pZF90IHNwbGl0X2N0cmxfaWQoMCwgIlNwbGl0U3RyZWFtIiwgMCk7DQp1aGQ6OnJmbm9j
OjpibG9ja19pZF90IGZmdF9jdHJsX2lkKDAsICJGRlQiLCAwKTsNCg0KdWhkOjpyZm5vYzo6c291
cmNlX2Jsb2NrX2N0cmxfYmFzZTo6c3B0ciBmZnRfYmxrX2N0cmwgPSANCm1fVXNycC0+Z2V0X2Js
b2NrX2N0cmw8dWhkOjpyZm5vYzo6c291cmNlX2Jsb2NrX2N0cmxfYmFzZT4oZmZ0X2N0cmxfaWQp
Ow0KDQptX1JhZGlvQ3RybCA9IG1fVXNycC0+Z2V0X2Jsb2NrX2N0cmw8IHVoZDo6cmZub2M6OnJh
ZGlvX2N0cmwgDQogPihyYWRpb19jdHJsX2lkKTsNCm1fUmFkaW9DdHJsLT5zZXRfcmF0ZSgxNmU2
KTsNCm1fUmFkaW9DdHJsLT5zZXRfYXJnPGludD4oInNwcCIsIDIwNDgpOw0KZmZ0X2Jsa19jdHJs
LT5zZXRfYXJnPGludD4oInNwcCIsIDIwNDgpOw0KDQptX1VzcnAtPmNsZWFyKCk7DQoNCm1fR3Jh
cGggPSBtX1VzcnAtPmNyZWF0ZV9ncmFwaCgicmZub2NfcngiKTsNCm1fR3JhcGgtPmNvbm5lY3Qo
cmFkaW9fY3RybF9pZCwgMCwgc3BsaXRfY3RybF9pZCwgMCk7DQptX0dyYXBoLT5jb25uZWN0KHNw
bGl0X2N0cmxfaWQsIDEsIGZmdF9jdHJsX2lkLCAwKTsNCg0KdWhkOjpkZXZpY2VfYWRkcl90IHN0
cmVhbWVyX2FyZ3MoIiIpOw0Kc3RyZWFtZXJfYXJnc1siYmxvY2tfaWQwIl0gPSBzcGxpdF9jdHJs
X2lkLnRvX3N0cmluZygpOw0Kc3RyZWFtZXJfYXJnc1siYmxvY2tfcG9ydDAiXSA9IHN0cihib29z
dDo6Zm9ybWF0KCIlZCIpICUgMCk7DQpzdHJlYW1lcl9hcmdzWyJibG9ja19pZDEiXSA9IGZmdF9j
dHJsX2lkLnRvX3N0cmluZygpOw0Kc3RyZWFtZXJfYXJnc1siYmxvY2tfcG9ydDEiXSA9IHN0cihi
b29zdDo6Zm9ybWF0KCIlZCIpICUgMCk7DQoNCnVoZDo6c3RyZWFtX2FyZ3NfdCBzdHJlYW1fYXJn
c19mYzMyKCJzYzE2IiwgInNjMTYiKTsNCnN0cmVhbV9hcmdzX2ZjMzIuY2hhbm5lbHMgPSB7IDAs
IDEgfTsNCnN0cmVhbV9hcmdzX2ZjMzIuYXJncyA9IHN0cmVhbWVyX2FyZ3M7DQpzdHJlYW1fYXJn
c19mYzMyLmFyZ3NbInNwcCJdID0gYm9vc3Q6OmxleGljYWxfY2FzdDxzdGQ6OnN0cmluZz4oMjA0
OCk7DQptX1J4U3RyZWFtZXJGYzMyID0gbV9Vc3JwLT5nZXRfcnhfc3RyZWFtKHN0cmVhbV9hcmdz
X2ZjMzIpOw0KDQpJIG5lZWQgdG8gcmVjZWl2ZSBhIGJ1cnN0IGluIGEgcHJlY2lzZSBtb21lbnQs
IGVsYWJvcmF0ZSBpdCBhbmQgcmVzdGFydCANCm9uIGEgZGlmZmVyZW50IGZyZXF1ZW5jeSAoSSBu
ZWVkIGFsc28gdG8gY2hhbmdlIHJhZGlvIGNoYW5uZWwgYmVjYXVzZSANCkkndmUgdHdvIGRpZmZl
cmVudCBhbnRlbm5hcykuDQoNCkkndmUgdHJpZWQNCg0KdWhkOjpzdHJlYW1fY21kX3QgDQpzdHJl
YW1fY21kKHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9OVU1fU0FNUFNfQU5EX0RPTkUp
Ow0Kc3RyZWFtX2NtZC5udW1fc2FtcHMgPSBzaXplX3QobkJ1cnN0TGVuKk1BWF9ESU1fU0FNUExF
U19GUkFNRV9GT1JfUlNBKTsNCnN0cmVhbV9jbWQuc3RyZWFtX25vdyA9IGZhbHNlOw0Kc3RyZWFt
X2NtZC50aW1lX3NwZWMgPSBtX1JhZGlvQ3RybC0+Z2V0X3RpbWVfbm93KCkrMS4wOw0KbV9SeFN0
cmVhbWVyRmMzMi0+aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1fY21kKTsNCg0KYnV0IHRoZSByZWNl
aXZlIGZhaWxzIHdpdGggRVJST1JfQ09ERV9MQVRFX0NPTU1BTkQuDQoNCkkndmUgdHJpZWQgaXNz
dWluZyB0aGUgU1RSRUFNX01PREVfU1RBUlRfQ09OVElOVU9VUyBjb21tYW5kIGFuZCBpdCBzZWVt
cyANCnRvIHdvcmsgY29ycmVjdGx5IHVudGlsIEkgZG9uJ3Qgc2VuZCBhIFNUUkVBTV9NT0RFX1NU
T1BfQ09OVElOVU9VUyBjb21tYW5kLg0KDQpBZnRlciBhIFNUUkVBTV9NT0RFX1NUT1BfQ09OVElO
VU9VUyBjb21tYW5kIEkgZmx1c2ggdGhlIGJ1ZmZlciB3aXRoIGEgDQpyZWNlaXZlIGxvb3A6DQoN
CndoaWxlKG1fUnhTdHJlYW1lckZjMzItPnJlY3YoYnVmZiwgMjA0OCwgdXNlbGVzc01kLCAwLjAx
MCwgZmFsc2UpKTsNCg0KVGhlIHByb2JsZW0gSSdtIG9ic2VydmluZyBpcyB0aGF0IHNpbmNlIHNl
Y29uZCBzdGFydCB0aGUgRkZUIHNhbXBsZXMgDQpsb3N0IGFsaWdubWVudCB3aXRoIHRoZSB0aW1l
IHNhbXBsZXMgYW5kIGFmdGVyIHNvbWUgc3RvcCBhbmQgc3RhcnQgdGhlIA0KcmVjZWl2ZSBmYWls
cyBvZnRlbiB3aXRoIE92ZXJmbG93IGVycm9ycyBhbmQgdGhhbiBzdG9wcyBkZWZpbml0ZWx5IHRv
IA0Kd29yayB3aXRoIFRpbWVvdXQgZXJyb3JzDQoNClNvbWVvbmUgZWxzZSBoYXZlIHRoaXMgcHJv
YmxlbT8NCg0KDQpSZWdhcmRzLA0KDQpMdWNhDQoNCg0KTEVHQUwgRElTQ0xBSU1FUjoNDQpUaGUg
Y29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IHRyYW5zbWl0dGVkIGZpbGVzIGFyZSBjb25m
aWRlbnRpYWwgYW5kIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVh
bCBvciBlbnRpdHkgdG8gd2hvbSB0aGV5IGFyZSBhZGRyZXNzZWQuIFdlIGhlcmVieSBleGNsdWRl
IGFueSB3YXJyYW50eSBhbmQgYW55IGxpYWJpbGl0eSBhcyB0byB0aGUgcXVhbGl0eSBvciBhY2N1
cmFjeSBvZiB0aGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaGVkIHRyYW5z
bWl0dGVkIGZpbGVzLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBiZSBh
ZHZpc2VkIHRoYXQgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBhbmQgdGhh
dCBhbnkgdXNlLCBkaXNzZW1pbmF0aW9uLCBmb3J3YXJkaW5nLCBwcmludGluZyBvciBjb3B5aW5n
IG9mIHRoaXMgZW1haWwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2
ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxl
dGUgdGhlIG1hdGVyaWFsIGZyb20gYW55IGNvbXB1dGVyLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
