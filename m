Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5234F3D51
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 21:17:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01350384B4A
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 15:17:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649186256; bh=fA4aMzeJF+/YrEZXXeK4LLHqJtMu/z3iEFNwuv8tq2I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SlZTbbqeGWOPOnnP/jUP0A3CesW2S34NDjFgC9gdz3hxaCXzNPcfydBQ9OSA6pQZb
	 7prNCGxZW0iWfbfPzcqd+yXKMjHVSOEVMxUP+YKQTiyVFBDvnFrZHGzLhyy4i7OgK4
	 23kqB7upi0Tv4ELvx9+mOsTEMOk/Zj/r+LDIF1H+lIigMVS625ClEufRayAMKh0lNn
	 RgYLhRVgUzPvVNXZmHkorhRf9Gl2tUJ1rvML8Xao1un4Eg4ElbpUVKsuOWAe6KvcVS
	 1pOJWLKkKCnGryy7V90Yq8tE12cJMeMBW+xU5YNnTddIEluRZpgmF1uFA34qdzRm3V
	 sf0GqgYJ+bUEQ==
Received: from smtp6.emailarray.com (smtp6.emailarray.com [65.39.216.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 96177384105
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 15:16:41 -0400 (EDT)
Received: (qmail 95407 invoked by uid 89); 5 Apr 2022 19:16:41 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp6.emailarray.com with SMTP; 5 Apr 2022 19:16:41 -0000
Message-ID: <5b8a085f-479e-145a-95c6-8c24729e7b49@balister.org>
Date: Tue, 5 Apr 2022 15:16:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
Message-ID-Hash: F55LEYWSNLATPX6544NRMYLL3SJYM3WY
X-Message-ID-Hash: F55LEYWSNLATPX6544NRMYLL3SJYM3WY
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F55LEYWSNLATPX6544NRMYLL3SJYM3WY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNC8xLzIyIDA4OjQwLCBSb2IgS29zc2xlciB3cm90ZToNCj4gSGksDQo+IEkgYW0gdHJ5aW5n
IHRvIGNvcHkgc29tZSBsYXJnZSBmaWxlcyAofjUwME1CKSBmcm9tIHRoZSBOMzEwIHRvIHRoZSBo
b3N0LiANCj4gVGhlIHRyYW5zZmVyIHJhdGUgSSBnZXQgdXNpbmcgc2NwIG9yIHNzaGZzIChtb3Vu
dGluZyBpbiBlaXRoZXIgDQo+IGRpcmVjdGlvbikgaXMgYWJvdXQgMTJNQi9zLiBHaXZlbiB0aGF0
IHRoZSBpbnRlcmZhY2UgaXRzZWxmIGNhbiBkbyANCj4gID4xMDBNQi9zLCBJJ20gd29uZGVyaW5n
IGlmIHRoZXJlIGlzIGEgZmFzdGVyIG1ldGhvZC4gT25lIHRoaW5nIEkgdHJpZWQgDQo+IHdhcyB0
byBzZXR1cMKgYSBSQU0gZmlsZSBzeXN0ZW0gb24gYm90aCB0aGUgTjMxMCBhbmQgdGhlIGhvc3Qg
YW5kIGNvcHkgDQo+IGZyb20gb25lIFJBTSBmaWxlIHN5c3RlbSB0byB0aGUgb3RoZXIuIEJ1dCwg
c3RpbGwgbm8gYmV0dGVyIHRoYW4gMTIgDQo+IE1CL3MuIEFueSBpZGVhcyBvbiBmYXN0ZXIgdHJh
bnNmZXJzPw0KPiBSb2INCg0KDQpbYmFsaXN0ZXJAbWluaSB+XSQgaXBlcmYzIC1jIDE5Mi4xNjgu
MTEuMTUyIC1wIDc1NzUgLWJpZGlyDQpDb25uZWN0aW5nIHRvIGhvc3QgMTkyLjE2OC4xMS4xNTIs
IHBvcnQgNzU3NQ0KWyAgNV0gbG9jYWwgMTkyLjE2OC4xMS4xMzkgcG9ydCA1NTM1MiBjb25uZWN0
ZWQgdG8gMTkyLjE2OC4xMS4xNTIgcG9ydCA3NTc1DQpbIElEXSBJbnRlcnZhbCAgICAgICAgICAg
VHJhbnNmZXIgICAgIEJpdHJhdGUgICAgICAgICBSZXRyICBDd25kDQpbICA1XSAgIDAuMDAtMS4w
MCAgIHNlYyAgODEuNSBNQnl0ZXMgICA2ODQgTWJpdHMvc2VjICAgMzIgICAgNjM5IEtCeXRlcyAN
Cg0KWyAgNV0gICAxLjAwLTIuMDAgICBzZWMgIDc3LjUgTUJ5dGVzICAgNjUwIE1iaXRzL3NlYyAg
ICAwICAgIDcyOCBLQnl0ZXMgDQoNClsgIDVdICAgMi4wMC0zLjAwICAgc2VjICA3OC44IE1CeXRl
cyAgIDY2MSBNYml0cy9zZWMgICAgNSAgICA1OTUgS0J5dGVzIA0KDQpbICA1XSAgIDMuMDAtNC4w
MCAgIHNlYyAgNzguOCBNQnl0ZXMgICA2NjEgTWJpdHMvc2VjICAgIDAgICAgNjg3IEtCeXRlcyAN
Cg0KWyAgNV0gICA0LjAwLTUuMDAgICBzZWMgIDc3LjUgTUJ5dGVzICAgNjUwIE1iaXRzL3NlYyAg
IDEzICAgIDU1MyBLQnl0ZXMgDQoNClsgIDVdICAgNS4wMC02LjAwICAgc2VjICA3OC44IE1CeXRl
cyAgIDY2MSBNYml0cy9zZWMgICAgMCAgICA2NTUgS0J5dGVzIA0KDQpbICA1XSAgIDYuMDAtNy4w
MCAgIHNlYyAgNzguOCBNQnl0ZXMgICA2NjEgTWJpdHMvc2VjICAgIDAgICAgNzQwIEtCeXRlcyAN
Cg0KWyAgNV0gICA3LjAwLTguMDAgICBzZWMgIDc3LjUgTUJ5dGVzICAgNjUwIE1iaXRzL3NlYyAg
IDI4ICAgIDYwNCBLQnl0ZXMgDQoNClsgIDVdICAgOC4wMC05LjAwICAgc2VjICA3OC44IE1CeXRl
cyAgIDY2MSBNYml0cy9zZWMgICAgMCAgICA2OTkgS0J5dGVzIA0KDQpbICA1XSAgIDkuMDAtMTAu
MDAgIHNlYyAgNzcuNSBNQnl0ZXMgICA2NTAgTWJpdHMvc2VjICAgMjYgICAgNTUzIEtCeXRlcyAN
Cg0KLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLQ0KWyBJ
RF0gSW50ZXJ2YWwgICAgICAgICAgIFRyYW5zZmVyICAgICBCaXRyYXRlICAgICAgICAgUmV0cg0K
WyAgNV0gICAwLjAwLTEwLjAwICBzZWMgICA3ODUgTUJ5dGVzICAgNjU5IE1iaXRzL3NlYyAgMTA0
ICAgICAgICAgICAgIHNlbmRlcg0KWyAgNV0gICAwLjAwLTEwLjAxICBzZWMgICA3ODMgTUJ5dGVz
ICAgNjU2IE1iaXRzL3NlYyANCnJlY2VpdmVyDQoNCmlwZXJmIERvbmUuDQpbYmFsaXN0ZXJAbWlu
aSB+XSQNCg0KDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
