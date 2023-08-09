Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF59774FA4
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 02:00:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A691384A83
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 20:00:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691539249; bh=Kgqb/fNIDrCDUVhVQyeddcRdgDcNTP4X8nCL+bqe++I=;
	h=In-reply-to:Date:References:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=e95R6xxVo2zmPOIIgQrmFO/m7bKoATAsCm6I4d0wgXCZhHO0pDs5SQon9ewmqFhqa
	 Nhz4jD4HWWVZ1QtNc/I436FtRiGenfvsdwFPZ68EG1uQWCbvrwACOksdVosOynrl0m
	 1bAb2mHtUlL+G0ieisgVpK1/Hq6kAXGOgxXZp/FREdM6GRNn0jeks00BuI6IVzxfEn
	 SGDeQ24Zj6/AUIPK66cIWfWwCU6apt2GtSemlSnxF37yKQW1Ywi/1pJNtKcAN+OUip
	 +Yp+1kCaRIq1MUQN95gGJbjPVg7wXqqOzXE6oVr6Mo+om/mA5lPnu8wcs8tBYjguW+
	 Zwxor6PwPwGbw==
Received: from ma-mailsvcp-mx-lapp01.apple.com (ma-mailsvcp-mx-lapp01.apple.com [17.32.222.22])
	by mm2.emwd.com (Postfix) with ESMTPS id 393D9384037
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 20:00:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=apple.com header.i=@apple.com header.b="ph2OMNFH";
	dkim-atps=neutral
Received: from rn-mailsvcp-mta-lapp04.rno.apple.com
 (rn-mailsvcp-mta-lapp04.rno.apple.com [10.225.203.152])
 by ma-mailsvcp-mx-lapp01.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RZ300J0QK0DOE00@ma-mailsvcp-mx-lapp01.apple.com> for
 usrp-users@lists.ettus.com; Tue, 08 Aug 2023 17:00:15 -0700 (PDT)
X-Proofpoint-GUID: 9ih08Zl--pCAF-QEGAn7xHKY0NXJTVCz
X-Proofpoint-ORIG-GUID: 9ih08Zl--pCAF-QEGAn7xHKY0NXJTVCz
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-07-11_09:2023-07-11,2023-07-11 signatures=0
X-Proofpoint-Spam-Details: rule=interactive_user_notspam
 policy=interactive_user score=0 phishscore=0 mlxlogscore=999 adultscore=0
 spamscore=0 malwarescore=0 suspectscore=0 mlxscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2307110153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type : mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=jS2327Dwbs/8kOwcFk2HWOkmkD2sHB2Lfp3WUIlmQRE=;
 b=ph2OMNFHXB8acK2070TZTIyYuiQDqbsLWlsNIYBd1gu22aFQzPTOS64ewVQJYfuljC9g
 vo0ESGnk1reF2y4o963zbDopgKRBbOsvI96+8A5NQg/zG+n9oG+2uc+VMbXNrOvE0YoL
 8rVaGGH8ESwWn4MsSmw1KtztD3koOnq4wXSyXBeC6BeDKkGB+Gq8iXnGbAA0psAIBIvp
 IK+JOTYWoyJfzwf+mppa925Mi2dLSKT9V7h7rhlpqXnL86IWXdRF/Fjnxk53nXkECuq7
 /gJvrk3WcwqqOl0kiPHFckLZbfeUZSFx+1pPtm+npgcmGY8sfzTtUhBdMAuyFL1sHNkM yA==
Received: from rn-mailsvcp-mmp-lapp03.rno.apple.com
 (rn-mailsvcp-mmp-lapp03.rno.apple.com [17.179.253.16])
 by rn-mailsvcp-mta-lapp04.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RZ3009Y5K0C1TA0@rn-mailsvcp-mta-lapp04.rno.apple.com>;
 Tue, 08 Aug 2023 17:00:14 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp03.rno.apple.com by
 rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) id <0RZ300J00JDD2B00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Tue,
 08 Aug 2023 17:00:13 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 446de5ffa4c16297b7dde9655c4cecd0
X-Va-E-CD: 265b94e9e3be17f26fe839c254c018c6
X-Va-R-CD: 97f94384edbaf59152e60a281f770ab7
X-Va-ID: 3032779f-0e9a-42ae-88ab-3d24a798774b
X-Va-CD: 0
X-V-A: 
X-V-T-CD: 446de5ffa4c16297b7dde9655c4cecd0
X-V-E-CD: 265b94e9e3be17f26fe839c254c018c6
X-V-R-CD: 97f94384edbaf59152e60a281f770ab7
X-V-ID: 4ec64f96-789a-41a7-a5b5-c9c0ed7a34dc
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-08-08_22:2023-08-08,2023-08-08 signatures=0
Received: from smtpclient.apple (unknown [17.11.248.175])
 by rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023))
 with ESMTPSA id <0RZ300MNIK0DTY00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Tue,
 08 Aug 2023 17:00:13 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
In-reply-to: <5d830b52-07e6-2b4c-e9f5-4eb0627582f4@o2.pl>
Date: Tue, 08 Aug 2023 17:00:03 -0700
Message-id: <61F458AB-D7F9-4DF4-8AF3-C49F0EC14DF9@apple.com>
References: <1D7BF42B-D48D-47F4-8D4B-14FEE57F3251@apple.com>
 <5d830b52-07e6-2b4c-e9f5-4eb0627582f4@o2.pl>
To: Piotr Krysik <perper@o2.pl>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
Message-ID-Hash: ZEBM3B4KSLANHVX2QC7HLYENPNM55BMW
X-Message-ID-Hash: ZEBM3B4KSLANHVX2QC7HLYENPNM55BMW
X-MailFrom: vlevin@apple.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 device no longer found when using use_dpdk=1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZEBM3B4KSLANHVX2QC7HLYENPNM55BMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Victor Levin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Victor Levin <vlevin@apple.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFBpb3RyLCB0aGF0IHdhcyBpbmRlZWQgdGhlIGlzc3VlLiBXb3JrcyBub3cuIA0KDQo+
IE9uIEF1ZyA3LCAyMDIzLCBhdCA0OjU3IFBNLCBQaW90ciBLcnlzaWsgPHBlcnBlckBvMi5wbD4g
d3JvdGU6DQo+IA0KPiBIZWxsbywNCj4gDQo+IEZvciBYNDEwIHRoZSBuZXR3b3JrIGFkYXB0ZXIg
d2hpY2ggd29ya3MgdW5kZXIgRFBESyBkcml2ZXIgY29udHJvbCBjYW4ndCBiZSB1c2VkIHRvIGNv
bnRyb2wgdGhlIGRldmljZSAoaXQgY2FuJ3QgY2FycnkgUlBDIGNhbGxzIHRvIE1QTSBkYWVtb24g
d29ya2luZyBvbiB0aGUgZGV2aWNlKS4gWW91IG5lZWQgYSBzZXBhcmF0ZSBFdGhlcm5ldCBjb25u
ZWN0aW9uIGZvciBtZ210X2FkZHIuIFlvdSBjYW4gdXNlIDFHYml0IEV0aGVybmV0IGxpbmsgZm9y
IHRoYXQuDQo+IA0KPiBCZXN0IFJlZ2FyZHMsDQo+IFBpb3RyIEtyeXNpaw0KPiANCj4gVyBkbml1
IDcuMDguMjAyMyBvIDIxOjQwLCBWaWN0b3IgTGV2aW4gdmlhIFVTUlAtdXNlcnMgcGlzemU6DQo+
PiBIaSBhbGwsDQo+PiANCj4+IEkgYW0gdHJ5aW5nIHRvIGVuYWJsZSBEUERLIHdpdGggWDQxMCBh
bmQgZm91bmQgYW4gaXNzdWUgd2hlbiB1c2luZyDigJx1c2VfZHBkaz0x4oCdLiBJIGFtIG9uIFVi
dW50dSAyMi4wNCwgdGhlIGxhdGVzdCBVSEQgNC40LjAgKGNvbW1pdDogNGE3Nzc5MWNmNWY3Y2Vk
Yzg0Mjc2MmJlOGIyYjY3NzUwNzNkOGM5NSkgYW5kIERQREsgMjEuMTEuNC4NCj4+IA0KPj4gV2hl
biB0aGUgWDQxMCBpcyBjb25uZWN0IHRvIHRoZSBpbnRlcmZhY2Ugd2l0aG91dCBEUERLLCBJIGNh
biBmaW5kIGl0IHZpYSB1aGRfdXNycF9wcm9iZSBhbmQgcnVuIGJlbmNobWFya19yYXRlIHdpdGhv
dXQgaXNzdWUuIEFmdGVyIGJpbmRpbmcgdGhlIE5JQyB0byBEUERLLCB0aGUgWDQxMCBjYW4gbm8g
bG9uZ2VyIGJlIGZvdW5kIHdoZW4gdXNpbmcgRFBESy4gQW55b25lIGtub3cgd2h5IGl04oCZcyBk
aXNhcHBlYXJpbmc/DQo+PiANCj4+IA0KPj4gT3V0cHV0IG9mIGZpbmQgZGV2aWNlcyBiZWZvcmUg
RFBESyBpcyBlbmFibGVkOg0KPj4gDQo+PiAjIHVoZF9maW5kX2RldmljZXMNCj4+IFtJTkZPXSBb
VUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDExLjMuMDsgQm9vc3RfMTA3NDAwOyBEUERLXzIx
LjExOyBVSERfNC40LjAuSEVBRC0zMy1nNGE3Nzc5MWMNCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAtLSBVSEQgRGV2aWNlIDANCj4+IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiBEZXZp
Y2UgQWRkcmVzczoNCj4+ICAgICBzZXJpYWw6IDMyNTczMTANCj4+ICAgICBhZGRyOiAxOTIuMTY4
LjE1LjINCj4+ICAgICBjbGFpbWVkOiBGYWxzZQ0KPj4gICAgIGZwZ2E6IFg0XzIwMA0KPj4gICAg
IG1nbXRfYWRkcjogMTkyLjE2OC4xNS4yDQo+PiAgICAgbmFtZTogbmkteDR4eC0zMjU3MzEwDQo+
PiAgICAgcHJvZHVjdDogeDQxMA0KPj4gICAgIHR5cGU6IHg0eHgNCj4+IA0KPj4gDQo+PiBBZnRl
ciBEUERLIGlzIGVuYWJsZWQsIHRoZSBYNDEwIGlzIG5vIGxvbmdlciBmb3VuZDoNCj4+IA0KPj4g
L3Vzci9sb2NhbC9saWIvdWhkL2V4YW1wbGVzIyAuL2JlbmNobWFya19yYXRlIC0tYXJncz0ibWFz
dGVyX2Nsb2NrX3JhdGU9MjQ1Ljc2ZTYsbWdtdF9hZGRyPTE5Mi4xNjguMTUuMixhZGRyPTE5Mi4x
NjguMTUuMix1c2VfZHBkaz0xLHNlcmlhbD0zMjU3MzEwLG5hbWU9bmkteDR4eC0zMjU3MzEwLHBy
b2R1Y3Q9eDQxMCx0eXBlPXg0eHgiIC0tZHVyYXRpb24gMyAtLXJ4X3JhdGUgMjQ1Ljc2ZTYgIC0t
dHhfcmF0ZSAyNDUuNzZlNg0KPj4gDQo+PiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVy
c2lvbiAxMS4zLjA7IEJvb3N0XzEwNzQwMDsgRFBES18yMS4xMTsgVUhEXzQuNC4wLkhFQUQtMzMt
ZzRhNzc3OTFjDQo+PiBbV0FSTklOR10gW1BSRUZTXSBMb2FkZWQgY29uZmlnIGZyb20gL3Jvb3Qv
LnVoZC4gVGhpcyBsb2NhdGlvbiBpcyBjb25zaWRlcmVkIGRlcHJlY2F0ZWQsIGNvbnNpZGVyIG1v
dmluZyB5b3VyIGNvbmZpZyBmaWxlIHRvIC9yb290Ly5jb25maWcgaW5zdGVhZC4NCj4+IEVBTDog
RGV0ZWN0ZWQgQ1BVIGxjb3JlczogOTYNCj4+IEVBTDogRGV0ZWN0ZWQgTlVNQSBub2RlczogMg0K
Pj4gRUFMOiBEZXRlY3RlZCBzaGFyZWQgbGlua2FnZSBvZiBEUERLDQo+PiBFQUw6IE11bHRpLXBy
b2Nlc3Mgc29ja2V0IC92YXIvcnVuL2RwZGsvcnRlL21wX3NvY2tldA0KPj4gRUFMOiBTZWxlY3Rl
ZCBJT1ZBIG1vZGUgJ1ZBJw0KPj4gRUFMOiBWRklPIHN1cHBvcnQgaW5pdGlhbGl6ZWQNCj4+IEVB
TDogVXNpbmcgSU9NTVUgdHlwZSAxIChUeXBlIDEpDQo+PiBFQUw6IFByb2JlIFBDSSBkcml2ZXI6
IG5ldF9pY2UgKDgwODY6MTU5MikgZGV2aWNlOiAwMDAwOjk4OjAwLjEgKHNvY2tldCAxKQ0KPj4g
aWNlX2xvYWRfcGtnX3R5cGUoKTogQWN0aXZlIHBhY2thZ2UgaXM6IDEuMy4yOC4wLCBJQ0UgT1Mg
RGVmYXVsdCBQYWNrYWdlIChkb3VibGUgVkxBTiBtb2RlKQ0KPj4gVEVMRU1FVFJZOiBObyBsZWdh
Y3kgY2FsbGJhY2tzLCBsZWdhY3kgc29ja2V0IG5vdCBjcmVhdGVkDQo+PiBpY2Vfc2V0X3J4X2Z1
bmN0aW9uKCk6IFVzaW5nIEFWWDIgT0ZGTE9BRCBWZWN0b3IgU2NhdHRlcmVkIFJ4IChwb3J0IDAp
Lg0KPj4gaWNlX3NldF90eF9mdW5jdGlvbigpOiBVc2luZyBBVlgyIE9GRkxPQUQgVmVjdG9yIFR4
IChwb3J0IDApLg0KPj4gWzAwOjAwOjAwLjAwMDIyOV0gQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNl
IHdpdGg6IG1hc3Rlcl9jbG9ja19yYXRlPTI0NS43NmU2LG1nbXRfYWRkcj0xOTIuMTY4LjE1LjIs
YWRkcj0xOTIuMTY4LjE1LjIsdXNlX2RwZGs9MSxzZXJpYWw9MzI1NzMxMCxuYW1lPW5pLXg0eHgt
MzI1NzMxMCxwcm9kdWN0PXg0MTAsdHlwZT14NHh4Li4uDQo+PiBFcnJvcjogTG9va3VwRXJyb3I6
IEtleUVycm9yOiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCj4+IERldmljZSBBZGRyZXNz
Og0KPj4gICAgIG1hc3Rlcl9jbG9ja19yYXRlOiAyNDUuNzZlNg0KPj4gICAgIG1nbXRfYWRkcjog
MTkyLjE2OC4xNS4yDQo+PiAgICAgYWRkcjogMTkyLjE2OC4xNS4yDQo+PiAgICAgdXNlX2RwZGs6
IDENCj4+ICAgICBzZXJpYWw6IDMyNTczMTANCj4+ICAgICBuYW1lOiBuaS14NHh4LTMyNTczMTAN
Cj4+ICAgICBwcm9kdWN0OiB4NDEwDQo+PiAgICAgdHlwZTogeDR4eA0KPj4gDQo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4g
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
