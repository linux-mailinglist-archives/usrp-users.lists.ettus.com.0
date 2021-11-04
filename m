Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4234459B5
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 19:27:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 177C038437F
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 14:27:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="qGWBjwhb";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="Tnou0RwA";
	dkim-atps=neutral
Received: from mfw.dren.mil (mfw.dren.mil [140.32.61.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C0063842FA
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 14:26:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s1.dkim;
 bh=B59w036FHWBIr0KNvT7YJFD01hrgIl1vWIxZ/yAKh4Y=;
 b=qGWBjwhbKaftEAwOWv8DMrv+lWBKP8QPzukY0m8LtXH9RLaHmuo055PqxiD90oKQxkh2
 xIefzbRyFFQvu0bS/8lF9b4PA+xeQ0tzza0ALzrsdBg+XWBhn77WbZJGRvperDsy9sEK
 jN+kipFMjwQ2uLM4OvXfKUm/D8pIPiFRysQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s2.dkim;
 bh=B59w036FHWBIr0KNvT7YJFD01hrgIl1vWIxZ/yAKh4Y=;
 b=Tnou0RwAlrpoEJEfYmW+yg3LJ8+6EZkr12EzesYrFeF8Tbrl9KrM1kdlpOfb8gVCEk+x
 CZ5RNCGrJelieEqCu/A4qMJ3UbUgYU6TmHU7ySFogysA9yKdk8lFi+AwEviCaDBF+Ebo
 rhzqDy+R975DEZqqs3xeW+aCLxpaBs2hXbHGQSZRLbtMg4bmLrkbwgpGizmvOrUAhkkk
 jN98vu28bGkvLQ99LVQhHFspptDwCWtsykp8EPQ8ybuvQcy/wYh1w7kZ9vLJGmBD6S5/
 tzwTqgqsPzlzzGNc+miW8wGgcWqTr9nmH60Y8+3vxL1neyVZBBPmX980lpEl+CaKUm5z jA==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppaw.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 1A4IQkJ8009376
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 4 Nov 2021 18:26:46 GMT
X-IronPort-AV: E=Sophos;i="5.84,326,1620709200";
   d="scan'208";a="63539825"
Received: from unknown (HELO ERDC-EX2.erdc.dren.mil) ([134.164.254.14])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 13:26:46 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX2.erdc.dren.mil (134.164.254.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Thu, 4 Nov 2021 13:26:46 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Thu, 4 Nov 2021 13:26:46 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::8956:5285:1d33:5b6b]) by
 ERDC-EX1.erdc.dren.mil ([fe80::8956:5285:1d33:5b6b%6]) with mapi id
 15.01.2308.014; Thu, 4 Nov 2021 13:26:46 -0500
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Problem with error_code_late_command using two
 x310's
Thread-Index: AdfQ0luKPW4Za/otQma2liYj5vsaqgAQi4iAACHyoJA=
Date: Thu, 4 Nov 2021 18:26:46 +0000
Message-ID: <86f20ba533bc43c5890137771456becf@erdc.dren.mil>
References: <97776b25089c4fec9a2cd5e9b4bf5d8c@erdc.dren.mil>
 <3eba92d0-2cb7-262f-9786-528042cc4679@gmail.com>
In-Reply-To: <3eba92d0-2cb7-262f-9786-528042cc4679@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Message-ID-Hash: CJ4TFW27WZQ43KK3VVCLXZ2PKX75CJTF
X-Message-ID-Hash: CJ4TFW27WZQ43KK3VVCLXZ2PKX75CJTF
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with error_code_late_command using two x310's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJ4TFW27WZQ43KK3VVCLXZ2PKX75CJTF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: base64

QWggSSBzZWUsIG9yaWdpbmFsbHkgSSBkaWQgaGF2ZSBpdCBzZXQgc3VjaCB0aGF0LCBpZiBJIHJl
cXVlc3QgYSBzZXQgbnVtYmVyIG9mIHNhbXBsZXMgKHdoaWNoIEkgYWxtb3N0IGFsd2F5cyB3aWxs
IGluIG15IGFwcGxpY2F0aW9uKSwgdGhlbiBpdCBzZXRzIG1vZGUgdG8gU1RSRUFNX01PREVfTlVN
X1NBTVBTX0FORF9ET05FLCBidXQgaGF2ZSBjaGFuZ2UgaXQgdG8gQU5EX01PUkUuIA0KDQpJbiBt
eSBjYXNlIEkgYW0gc3RpbGwgZ2V0dGluZyAiTCJzIHNvbWVob3cuIEkgY2FuIGRvIGFib3V0IDEw
MDAgY2hpcnBzIGF0IDFtcyBzcGFjaW5nIHdpdGggbm8gaXNzdWUgYnV0IGl0IEkgc3RhcnQgdG8g
Z2V0IEwncyBhZnRlciB0aGF0IHNvIEkgbXVzdCBiZSBsYWdnaW5nIHNvbWV3aGVyZQ0KDQpXaGF0
IGluaGVyZW50bHkgaXMgZGlmZmVyZW50IGJldHdlZW4gQU5EX0RPTkUgYW5kIEFORF9NT1JFPyBD
b3VsZCBpdCBiZSBjYXVzaW5nIHRoZSByZWNlaXZlciB0byAiZmFsbCBiZWhpbmQiIGFuZCByZWNl
aXZlIGxhdGUgY29tbWFuZHM/IERvZXMgdGhlIEFORF9NT1JFIG1vZGUgcmVxdWlyZSBhbnkgYWRk
aXRpb25hbCBzdHJlYW0gY29tbWFuZHMgc2VudCBhc2lkZSBmcm9tIHVwZGF0aW5nIHdoZW4gdGhl
IG5leHQgc3RhcnQgdGltZSB3aWxsIGJlPw0KDQoNClRoYW5rIHlvdSBhcyBhbHdheXMgZm9yIHlv
dXIgaGVscA0KDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE1hcmN1cyBE
LiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IA0KU2VudDogV2VkbmVzZGF5LCBOb3Zl
bWJlciAzLCAyMDIxIDM6NDAgUE0NClRvOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KU3Vi
amVjdDogW1VTUlAtdXNlcnNdIFJlOiBQcm9ibGVtIHdpdGggZXJyb3JfY29kZV9sYXRlX2NvbW1h
bmQgdXNpbmcgdHdvIHgzMTAncw0KDQpPbiAyMDIxLTExLTAzIDEzOjE0LCBXb2xzaWVmZmVyLCBD
YXJsIEwuIEVSREMtUkRFLUNSTC1OSCBDSVYgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhlbGxv
IGFsbCwNCj4NCj4gSSBoYXZlIDIgeDMxMCdzLCBvbmUgaXMgYSB0cmFuc21pdHRlciBhbmQgdGhl
IG90aGVyIGlzIGEgcmVjZWl2ZXIuIEkgDQo+IGhhdmUgc29tZSBjb2RlIEkgYWRhcHRlZCBmcm9t
IGEgdXNycCBleGFtcGxlIGF3aGlsZSBiYWNrIGFuZCBpbiANCj4gdGVzdGluZyB0aGUgYm91bmRz
IG9mIG15IHN5c3RlbSwgSSBhbSBnZXR0aW5nIGEgDQo+IEVSUk9SX0NPREVfTEFURV9DT01NQU5E
IHdhcm5pbmcgYWZ0ZXIgYSBmZXcgc2Vjb25kcyB3aGVuIHRyeWluZyB0byANCj4gcmVjZWl2ZSBl
dmVyeSBmZXcgbXMgYW5kIHRoaW5rIEkgbWF5IGJlIG1pc2ludGVycHJldGluZyBhdCBsZWFzdCAN
Cj4gcGFydGlhbGx5IHdoYXQgbXkgY29kZSBpcyBkb2luZy4gSSBjYW4gcnVuIHRoZSBjb2RlIGZv
ciB1cCB0byA1LDAwMGlzaCANCj4gbG9vcHMgc28gSSdtIGd1ZXNzaW5nIHNvbWV0aGluZyBpcyBl
dmVudHVhbGx5IGxvc2luZyBncm91bmQgc29tZXdoZXJlIA0KPiBhbmQgZmFpbHMNCj4NCj4gSXQg
YWxsIG9wZXJhdGVzIG91dCBvZiBvbmUgLmNwcCBwcm9ncmFtIGFuZCBtYW5hZ2VzIGEgc2VuZF9m
cm9tX2ZpbGUgYW5kIHJlY3ZfdG9fZmlsZSB0aHJlYWQuDQo+DQo+IEknbSBndWVzc2luZyB0aGUg
cHJvYmxlbSBpcyBvbiB0aGUgcmVjZWl2ZSBzaWRlLCBhbmQgZXNzZW50aWFsbHkgdGhlIHJlY3Zf
dG9fZmlsZSBmdW5jdGlvbiBnb2VzIHNvbWV0aGluZyBsaWtlIHRoaXM6DQo+DQo+IHN0cmVhbV9j
bWQubnVtX3NhbXBlcyA9IG51bV9yZXF1ZXN0ZWRfc2FtcGxlczsgc3RyZWFtX2NtZC5zdHJlYW1f
bm93ID0gDQo+IGZhbHNlOyBzdHJlYW1fY21kLnRpbWVfc3BlYyA9IHVoZDo6dGltZV9zcGVjX3Qo
IHJlY3ZfdGltZSApOyANCj4gcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21kKCBzdHJlYW1fY21k
ICk7DQo+DQo+IHdoaWxlIChub3Qgc3RvcF9zaWduYWxfY2FsbGVkKSB7DQo+IAkNCj4gCW51bV9z
YW1wbGVzID0gcnhfc3RyZWFtLT5yZWN2KCBidWZmZXJfcHRycywgc2FtcGxzX3Blcl9idWZmLCAN
Cj4gbWV0YV9kYXRhLCB0aW1lb3V0ICk7DQo+DQo+IAl0b3RhbF9udW1fc2FtcHMgPSB0b3RhbF9u
dW1fc2FtcHMgKyBudW1fc2FtcHM7DQo+DQo+IAkvLy8vLyBSZWNlaXZlIGZvciAyMCB1cyAvLy8v
Ly8NCj4gCS8vLy8vIGJhc2ljYWxseSBpdCdzIGxpc3RlbmluZyBmb3IgYSAyMHVzIGxvbmcgc2ln
bmFsIHNlbnQgZnJvbSB0cmFuc21pdHRlciAoc2VudCBhdCAicmVjdl90aW1lIiBhcyB3ZWxsKQ0K
PiAJLy8vLy8gd3JpdGVzIHRvIG91dGZpbGUgLy8vLy8vLy8NCj4gCS8vLy8vIGNoZWNrIGZvciBl
cnJvcnMgLy8vLy8vLy8NCj4gCQ0KPiAJLy8gZW5kIG9mIHRyYW5zbWl0dGVkIGZpbGUgcHJlc3Vt
YWJseSByZWFjaGVkDQo+IAlJZiAoIG51bV90b3RhbF9zYW1wbGVzID49IG51bV9yZXF1ZXN0ZWRf
c2FtcGxlcykgew0KPiAJDQo+IAkJbnVtX3RvdGFsX3NhbXBsZXMgPSAwOw0KPiAJCQ0KPiAJCXJl
Y3ZfdGltZSA9IHJlY3ZfdGltZSArIGRlbGF5OyAvLyBpbmNyZW1lbnQgZGVsYXkgYnkgMSBtcyBo
YXZlIHRyaWVkIGFzIGhpZ2ggYXMgMTAgbXMgd2l0aCBubyBsdWNrIGFmdGVyIGFib3V0IDEwLDAw
MCBsb29wcyBvciBzbw0KPiAJCXN0cmVhbV9jbWQudGltZV9zcGVjID0gdWhkOjp0dW5lX3NwZWNf
dCggcmVjdl90aW1lICk7DQo+IAkJcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21kKCBzdHJlYW1f
Y21kICk7DQo+IAkJDQo+IAkJZm9yIChzaXplX3QgaT0wOyBpPCBidWZmcy5zaXplKCk7IGkrKykg
ew0KPiAJCQlidWZmX3B0cnMucHVzaF9iYWNrKCZidWZmc1tpXS5mcm9udCgpKTsNCj4gCQl9DQo+
IAl9DQo+IH0NCj4NCj4NCj4gSSdtIHRoaW5raW5nIGl0IG1heSBqdXN0IGJlIGFuIGVycm9yIGlu
IGhvdyBJJ3ZlIGludGVycHJldGVkIHRoZSANCj4gZXhhbXBsZSBjb2RlIGFuZCByZXB1cnBvc2Vk
IGl0LiBJIGRvbid0IGhhdmUgYSBzdHJvbmcgdW5kZXJzdGFuZGluZyBvZiANCj4gdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiBpc3N1ZV9zdHJlYW1fY21kKCkgYW5kIHJlY3YoKSB3aGljaCBjb3VsZCBi
ZSANCj4gcGFydCBvZiB0aGUgcHJvYmxlbSBhcyB3ZWxsLiBUaGlzIGlzIGEgc2ltcGxpZmllZCB2
ZXJzaW9uIG9mIHRoZSBjb2RlIA0KPiB0byBleHBsYWluIHdoYXQncyBoYXBwZW5pbmcgc28gcGxl
YXNlIGxldCBtZSBrbm93IGlmIHlvdSBuZWVkIA0KPiBhZGRpdGlvbmFsIGRldGFpbHMNCj4NCj4N
Cj4gVGhhbmtzDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIFRvIHVuc3Vic2NyaWJlIA0KPiBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQpUaGUgc3RyZWFtIGNvbW1hbmQgaW5zdHJ1dHMgdGhlIFVTUlAgdG8g
c3RhcnQgc3RyZWFtaW5nIHNhbXBsZXMsIHdoaWxlDQpyZWN2KCkgaXMgdXNlZCB0byBjYXB0dXJl
IHRob3NlIHNhbXBsZXMuwqAgVGhleSBhcmVuJ3QgbmVjZXNzYXJpbHkgMToxIGRlcGVuZGluZyBv
biB0aGUgc3RyZWFtaW5nDQogwqAgKk1PREUqLg0KDQpTZWUgdGhlIEFQSSBkb2N1bWVudGF0aW9u
IGhlcmU6DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3Jw
XzFfMW11bHRpX191c3JwLmh0bWwjYWZlNTBjMmIyNDI3M2QxYjNiMmEzNDNiNzM2MDliMzEwDQoN
Cmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9zdHJ1Y3R1aGRfMV8xc3RyZWFtX19jbWRf
X3QuaHRtbA0KDQoNClNvLCBmb3IgZXhhbXBsZSBmb3IgU1RSRUFNX01PREVfU1RBUlRfQ09OVElO
VU9VU8KgIHlvdSdkIGlzc3VlIGV4YWN0bHkgMSBvZiB0aG9zZSwgYW5kIHRoZW4gcmVjdigpIHNh
bXBsZXMgdW50aWwgeW91IGFyZSBib3JlZCwgYW5kIHRoZW4gaXNzdWUgYQ0KIMKgIFNUUkVBTV9N
T0RFX1NUT1BfQ09OVElOVU9VUy4NCg0KQnV0IHRoZXJlJ3MgYWxzbyBTVFJFQU1fTU9ERV9OVU1f
U0FNUFNfQU5EX0RPTkUgYW5kIFNUUkVBTV9NT0RFX05VTV9TQU1QU19BTkRfTU9SRQ0KDQpZb3Ug
cHJvYmFibHkgd2FudCBTVFJFQU1fTU9ERV9OVU1fU0FNUFNfQU5EX01PUkUNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
