Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C23FA036
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 21:59:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F09C2383F72
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 15:59:18 -0400 (EDT)
Received: from smtp5.emailarray.com (smtp5.emailarray.com [65.39.216.39])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E3A6383DA1
	for <usrp-users@lists.ettus.com>; Fri, 27 Aug 2021 15:58:38 -0400 (EDT)
Received: (qmail 64210 invoked by uid 89); 27 Aug 2021 19:58:37 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp5.emailarray.com with SMTP; 27 Aug 2021 19:58:37 -0000
To: Tellrell White <t_whit_87@yahoo.com>,
 Usrp-users <usrp-users@lists.ettus.com>
References: <127551906.11620.1630090612779.ref@mail.yahoo.com>
 <127551906.11620.1630090612779@mail.yahoo.com>
From: Philip Balister <philip@balister.org>
Message-ID: <a60baf67-77b9-9405-4184-31faf60ec2f5@balister.org>
Date: Fri, 27 Aug 2021 15:58:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <127551906.11620.1630090612779@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: UQCPDGUJYIGSYUS2XLISYOOGZVDEEQ4O
X-Message-ID-Hash: UQCPDGUJYIGSYUS2XLISYOOGZVDEEQ4O
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CMake error when building UHD for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UQCPDGUJYIGSYUS2XLISYOOGZVDEEQ4O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHJ5DQoNCiQgY21ha2UNCi1EQ01BS0VfVE9PTENIQUlOX0ZJTEU9L2hvbWUvdHcvdWhkX24zMTAv
dWhkL2hvc3QvY21ha2UvVG9vbGNoYWlucy9vZS1zZGtfY3Jvc3MuY21ha2UNCi1EQ01BS0VfSU5T
VEFMTF9QUkVGSVg9L3Vzci9sb2NhbC9zaGFyZS91aGRfbjMxMCAuLg0KDQpOb3RlIHRoZSAiLi4i
IG9uIHRoZSBlbmQuDQoNClBoaWxpcA0KDQpPbiA4LzI3LzIxIDI6NTYgUE0sIFRlbGxyZWxsIFdo
aXRlIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBDdXJyZW50bHksIEknbSB0cnlpbmcgdG8gYnVp
bGQgVUhEIGZvciB0aGUgTjMxMCBvbiBteSBob3N0IG1hY2hpbmUgZm9sbG93aW5nIHRoZSBsaW5r
IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfbjN4eC5odG1sI24zeHhf
ZnNidWlsZCBhbmQgSSdtIGdldHRpbmcgdGhlIGZvbGxvd2luZyBlcnJvciBhcyBzaG93bi4gDQo+
IA0KPiANCj4gdHdAdHctdmlydHVhbC1tYWNoaW5lOn4vdWhkX24zMTAvdWhkL2hvc3QvYnVpbGQk
IGNtYWtlIC1EQ01BS0VfVE9PTENIQUlOX0ZJTEU9L2hvbWUvdHcvdWhkX24zMTAvdWhkL2hvc3Qv
Y21ha2UvVG9vbGNoYWlucy9vZS1zZGtfY3Jvc3MuY21ha2UgLURDTUFLRV9JTlNUQUxMX1BSRUZJ
WD0vdXNyL2xvY2FsL3NoYXJlL3VoZF9uMzEwIA0KPiBDTWFrZSBXYXJuaW5nOg0KPiDCoCBObyBz
b3VyY2Ugb3IgYmluYXJ5IGRpcmVjdG9yeSBwcm92aWRlZC7CoCBCb3RoIHdpbGwgYmUgYXNzdW1l
ZCB0byBiZSB0aGUNCj4gwqAgc2FtZSBhcyB0aGUgY3VycmVudCB3b3JraW5nIGRpcmVjdG9yeSwg
YnV0IG5vdGUgdGhhdCB0aGlzIHdhcm5pbmcgd2lsbA0KPiDCoCBiZWNvbWUgYSBmYXRhbCBlcnJv
ciBpbiBmdXR1cmUgQ01ha2UgcmVsZWFzZXMuDQo+IA0KPiANCj4gQ01ha2UgRXJyb3I6IFRoZSBz
b3VyY2UgZGlyZWN0b3J5ICIvaG9tZS90dy91aGRfbjMxMC91aGQvaG9zdC9idWlsZCIgZG9lcyBu
b3QgYXBwZWFyIHRvIGNvbnRhaW4gQ01ha2VMaXN0cy50eHQuDQo+IFNwZWNpZnkgLS1oZWxwIGZv
ciB1c2FnZSwgb3IgcHJlc3MgdGhlIGhlbHAgYnV0dG9uIG9uIHRoZSBDTWFrZSBHVUkuDQo+IA0K
PiANCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
