Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B1554DC37
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 09:54:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3EB938442A
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 03:54:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655366081; bh=JWeBj4ST83CTVbQoycUjd/xT8Rs3CyyURcbskKm3gco=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dk4Ddv1+GmzCGtke5fAXMSZdcLmjIHZ/3XXEJjieRjcvn4m/rL8bzPpikzzT+Zqoh
	 tkuZVGvPK5bs7gFjpQgYF0NpV58jaKGx3y/nuZKSrIOCiuh5mN88VqfXHVr4u/Rdir
	 uK43s02fM8OKUdQKO4r2fEzV9i7+7c8XMjFsezGwcqmp4b8ic68fnnzGiXZRaOgWsE
	 oAl2Ay19+7Cp8m+rDA+gs1iZe2xOKfcDM5Rhc+vtdRr9n38nL5EEN7/h9c5Sise/h+
	 lkDV8lc0sCP1ohui3xzjU2q0U5Zbf7vO4IQLmrZ8vcWoUfql00NJUCmHyzIYHC/CFr
	 ktiW8BeL1XBTQ==
Received: from zproxy110.enst.fr (zproxy110.enst.fr [137.194.2.192])
	by mm2.emwd.com (Postfix) with ESMTPS id A84EA383D6C
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 03:53:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=telecom-paris.fr header.i=@telecom-paris.fr header.b="3OsT0sSJ";
	dkim-atps=neutral
Received: from localhost (localhost [IPv6:::1])
	by zproxy110.enst.fr (Postfix) with ESMTP id 7FCA180F38;
	Thu, 16 Jun 2022 09:53:40 +0200 (CEST)
Received: from zproxy110.enst.fr ([IPv6:::1])
	by localhost (zproxy110.enst.fr [IPv6:::1]) (amavisd-new, port 10032)
	with ESMTP id IncE1DQt5V1e; Thu, 16 Jun 2022 09:53:40 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by zproxy110.enst.fr (Postfix) with ESMTP id 2F8D58209B;
	Thu, 16 Jun 2022 09:53:40 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zproxy110.enst.fr 2F8D58209B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=telecom-paris.fr;
	s=A35C7578-1106-11E5-A17F-C303FDDA8F2E; t=1655366020;
	bh=yISnIMkLNWgo2gZSf2AWFHf4G10MZfFrlvYXjsoXAzk=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=3OsT0sSJI5Rzj6mT3Zuyc9q1SkB+kKjxTFVT+uGieizo57T5Kaiyz9ZQTiFGgI1Qm
	 Gr5l3s/3w16GRwqfwXs3CFJGREP7UYISgaj8CtBw/jZ3Po+mBTsslpp6E2QqtZKBHv
	 tlX+RIqHOa31MJtS+FmcpTB2cS915BRnEkzPkl68=
X-Virus-Scanned: amavisd-new at zproxy110.enst.fr
Received: from zproxy110.enst.fr ([IPv6:::1])
	by localhost (zproxy110.enst.fr [IPv6:::1]) (amavisd-new, port 10026)
	with ESMTP id PFqv4OqhDRLu; Thu, 16 Jun 2022 09:53:40 +0200 (CEST)
Received: from zmail-tp1.enst.fr (zmail-tp1.enst.fr [137.194.2.198])
	by zproxy110.enst.fr (Postfix) with ESMTP id 1143980F22;
	Thu, 16 Jun 2022 09:53:40 +0200 (CEST)
Date: Thu, 16 Jun 2022 09:53:39 +0200 (CEST)
From: Florent Allard <florent.allard@telecom-paris.fr>
To: Wade Fife <wade.fife@ettus.com>
Message-ID: <443245610.20760347.1655366019728.JavaMail.zimbra@enst.fr>
In-Reply-To: <CAFche=iAYMRQDrbbdxEQGJ7A+8mF16wwf4VgLBx_X2rv8qCvnw@mail.gmail.com>
References: <1193871205.20203309.1655291894187.JavaMail.zimbra@enst.fr> <CAFche=iAYMRQDrbbdxEQGJ7A+8mF16wwf4VgLBx_X2rv8qCvnw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [::ffff:137.194.194.77]
X-Mailer: Zimbra 9.0.0_GA_4273 (ZimbraWebClient - FF101 (Linux)/9.0.0_GA_4258)
Thread-Topic: Configure Xilinx IP using AXI4-Lite
Thread-Index: Dr8JnSU2fqNFUnQoiwRCzw0Y8GRf6g==
Message-ID-Hash: JYK36DNBCC54UMCOSYPFRBP4QSVK7UCP
X-Message-ID-Hash: JYK36DNBCC54UMCOSYPFRBP4QSVK7UCP
X-MailFrom: fallard@enst.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure Xilinx IP using AXI4-Lite
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JYK36DNBCC54UMCOSYPFRBP4QSVK7UCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkFuZCBzbyBJIHdyb3RlIG9uZSA6KSBHcmVhdGx5IGluc3BpcmVkIGJ5IHRoZSBh
eGlsX2N0cmxwb3J0X21hc3RlciBJIG1lbnRpb25lZCBlYXJsaWVyIG9mIGNvdXJzZS4gKEkgbmFt
ZWQgaXQgY3RybHBvcnRfYXhpbF9tYXN0ZXIgOykgKQ0KDQpEbyB5b3UgdGhpbmsgdGhhdCBpdCB3
b3VsZCBiZSB1c2VmdWwgdG8gc2hhcmUgaXQgc29tZXdoZXJl4oCvPyBBbmQgdGhlIHNhbWUgZ29l
cyBmb3IgdGhlIFJGTm9DIGJsb2NrcyBpbXBsZW1lbnRpbmcgTERQQyBlbmNvZGluZy9kZWNvZGlu
Zywgd291bGQgaXQgYmUgdXNlZnVsIHRvIHNoYXJlIHRoZW0gc29tZXdoZXJl4oCvPw0KDQpUaGFu
a3MsDQoNCkZsb3JlbnQNCg0KLS0tLS0gTWFpbCBvcmlnaW5hbCAtLS0tLQ0KRGU6ICJXYWRlIEZp
ZmUiIDx3YWRlLmZpZmVAZXR0dXMuY29tPg0Kw4A6ICJGbG9yZW50IEFsbGFyZCIgPGZsb3JlbnQu
YWxsYXJkQHRlbGVjb20tcGFyaXMuZnI+DQpDYzogInVzcnAtdXNlcnMiIDx1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbT4NCkVudm95w6k6IE1lcmNyZWRpIDE1IEp1aW4gMjAyMiAyMjoyMzo0OA0K
T2JqZXQ6IFJlOiBbVVNSUC11c2Vyc10gQ29uZmlndXJlIFhpbGlueCBJUCB1c2luZyBBWEk0LUxp
dGUNCg0KU2FkbHksIEkgZG9uJ3QgdGhpbmsgdGhlcmUgaXMgb25lIGluIHRoZSBVSEQgcmVwby4g
SSBkb24ndCBrbm93IG9mIGFueW9uZQ0Kd2hvIGhhcyB3cml0dGVuIG9uZS4NCg0KV2FkZQ0KDQoN
Ck9uIFdlZCwgSnVuIDE1LCAyMDIyIGF0IDY6MTkgQU0gRmxvcmVudCBBbGxhcmQgPA0KZmxvcmVu
dC5hbGxhcmRAdGVsZWNvbS1wYXJpcy5mcj4gd3JvdGU6DQoNCj4gSGVsbG8sDQo+DQo+IEFmdGVy
IGhhdmluZyBpbXBsZW1lbnRlZCBpbnRvIGEgUkZOb0MgYmxvY2sgdGhlIFhpbGlueCBJUCBMRFBD
IERlY29kZXIgYW5kDQo+IEVuY29kZXIgZm9yIDVHLCBJ4oCZbSB0cnlpbmcgdG8gaW1wbGVtZW50
IHRoZSBYaWxpbnggSVAgUG9sYXIgRGVjb2Rlci9FbmNvZGVyLg0KPg0KPiBIb3dldmVyLCB0aGUg
UG9sYXIgSVAgcmVxdWlyZXMgdG8gYmUgY29uZmlndXJlZCB3aXRoIGFuIEFYSTQtTGl0ZQ0KPiBp
bnRlcmZhY2UuIEkga25vdyB0aGF0IFJGTm9DIGRhdGEgcGxhbmVzIGFyZSBjb21wbGlhbnQgd2l0
aCBBWEktU3RyZWFtLCBidXQNCj4gaXMgdGhlcmUgYW4gaW1wbGVtZW50YXRpb24gb2YgdGhlIEFY
STQtTGl0ZSBwcm90b2NvbCBpbiB0aGUgY29udHJvbCBwbGFuZQ0KPiBmb3IgZXhhbXBsZeKArz8N
Cj4NCj4gSSBmb3VuZCBhIGZpbGUgZG9pbmcgYSBtYXBwaW5nIG9mIEFYSTQtTGl0ZSB0byBDdHJs
cG9ydCAoDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rl
ci9mcGdhL3VzcnAzL2xpYi9jb250cm9sL2F4aWxfY3RybHBvcnRfbWFzdGVyLnYpLA0KPiBidXQg
d2hhdCBJ4oCvd291bGQgbmVlZCBpcyB0aGUgb3RoZXIgd2F5OiByZWNlaXZpbmcgYSBjdHJscG9y
dCBjb21tYW5kIGZyb20NCj4gUkZOb0MsIGFuZCBmb3J3YXJkaW5nIGl0IGFzIEFYSTQtTGl0ZSB0
byB0aGUgWGlsaW54IElQIGJsb2NrLiBEb2VzIHRoaXMNCj4gZXhpc3TigK8/DQo+DQo+IFRoYW5r
IHlvdSBmb3IgeW91ciBoZWxwLA0KPg0KPiBGbG9yZW50DQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
