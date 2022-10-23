Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 014716095D2
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 21:28:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B949F383BD6
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 15:28:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666553326; bh=+zx6gX8K0+jIopAFXKhn2FeTNS8bzKHbJJ+SaslTtzk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ag4XRO7/8LZBI21FQXPY+2Y5MLyr13DmkjUtQsHk0LM588+ddvld1dIMWve9HS5qz
	 CVIBOPYMCvg/AzftZ/worhVKyq/09pEGJFkTMzCNi5rvQd5ydJeNUquMO7tXElmidG
	 h0A+BLwQt+RffDEsnysgYWi+86MB71ygbCEL/T37GXS5XbZuJmlbm24GKt43S46ZhD
	 0PtgLNNLZ9BV2Ed3qEdfcyUmfONCYeT2E+bt8mWtm77yN6W9ydommgqpbf2mAVgyZT
	 ESWHoK3GNOfLBwms54xSIntrZ4Osr23Cb4ypmfFGqm5byPYwRM93VVzs1P6E8IPWeg
	 GnYoV0xVXxLpw==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.148])
	by mm2.emwd.com (Postfix) with ESMTPS id D129138367F
	for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 15:27:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="hOqkPrYn";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 31333 invoked from network); 23 Oct 2022 21:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1666553258; bh=yDYHlJH6zHTBHBQvCpgfs6LKTzI87Pmb0YPoTwjzxOA=;
          h=Subject:To:From;
          b=hOqkPrYnmHihNGTuIbTv64exQytzgPqOg0jZPPLfOwIOroZjWYp7nKBeWUPRTHCJT
           4eVZjWoZnQvZj40qGdQpGYXBmy5CCh+nlAUgmvP9pAExKTcsMS3GMumOTeWp/PXiqP
           AXvhzzjTErXpiDZlkRZEh4ayQ0Jb34NkJawfK+sU=
Received: from 109.95.142.103.r.toneticgroup.pl (HELO [192.168.1.231]) (perper@o2.pl@[109.95.142.103])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 23 Oct 2022 21:27:38 +0200
Message-ID: <993df24b-fa73-ceaf-0bf1-1b486cc079a4@o2.pl>
Date: Sun, 23 Oct 2022 21:27:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com, robert.tillson@baesystems.com
References: <165530633592.11266.12838205147515045731@mm2.emwd.com>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <165530633592.11266.12838205147515045731@mm2.emwd.com>
X-WP-MailID: 483c220e26207963f8f40211ee4bc0fa
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [oSPU]                               
Message-ID-Hash: INPDGLISQDUHG37FZYRA7VSW77LWZPDW
X-Message-ID-Hash: INPDGLISQDUHG37FZYRA7VSW77LWZPDW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/INPDGLISQDUHG37FZYRA7VSW77LWZPDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gQm9iLA0KDQpXZXJlIHlvdSBhYmxlIHRvIHVzZSBtb3JlIHRoYW4gb25lIDEwIEdiRSBj
b25uZWN0aW9uIHRvIHRyYW5zcG9ydCANCnRyYWZmaWMgdGhhdCBleGNlZWRzIHRocm91Z2hwdXQg
b2Ygc2luZ2xlIFNGUCsgMTBHYkUgaW50ZXJmYWNlPw0KDQpJIHdhc24ndCBhYmxlIHRvIGRvIHRo
YXQgeWV0LiBUaGlzIGlzIHRoZSBjb21tYW5kIHRoYXQgSSBleGVjdXRlIHRvIHRlc3QgaXQ6DQoN
CnByZWZpeC9saWIvdWhkL2V4YW1wbGVzL2JlbmNobWFya19yYXRlwqAgLS1yeF9zdWJkZXYgIkE6
MCBCOjAiIA0KLS1yeF9jaGFubmVscyAwLDEgDQotLWFyZ3M9ImFkZHI9MTkyLjE2OC4xMC4yLHNl
Y29uZF9hZGRyPTE5Mi4xNjguMTEuMixtZ210X2FkZHI9MTkyLjE2OC4wLjkiIA0KLS1yeF9yYXRl
IDI0NS43NmU2IC0tcnhfZGVsYXkgNCAtLWR1cmF0aW9uIDEwIC0tcHBzIGludGVybmFsIA0KLS1t
dWx0aV9zdHJlYW1lcg0KDQpJbiB3aXJlc2hhcmsgb24gdGhlIHNlY29uZCBpbnRlcmZhY2UgSSBj
YW4gc2VlIG9ubHkgVURQIHBhY2tldHMgdGVzdGluZyANCk1UVSBzaXplIGFuZCAzIGZpcnN0IFJG
Tm9DIG1hbmFnZW1lbnQgcGFja2V0cy4gQW5kIHRoYXQncyBhbGwuIE9ubHkgDQpmaXJzdCBpbnRl
cmZhY2UgcmVjZWl2ZXMgc2FtcGxlcy4NCg0KQmVzdCBSZWdhcmRzLA0KUGlvdHIgS3J5c2lrDQoN
ClcgZG5pdSAxNS4wNi4yMDIyIG/CoDE3OjE3LCBUaWxsc29uLCBCb2IgKFVTKSB2aWEgVVNSUC11
c2VycyBwaXN6ZToNCj4NCj4gU28gSSBhbSBvbiB0aGUgeDRfMjAwIGltYWdlIGFuZCBhbSB3b25k
ZXJpbmcgd2hhdCB0aGUg4oCcY29ycmVjdOKAnSB3YXkgdG8gDQo+IHNldHVwIHRoZSB0cmFuc3Bv
cnQgaXMuDQo+DQo+IEkgY3VycmVudGx5IGhhdmUgYSBzaW5nbGUgcXNmcDI4IGNvbm5lY3Rpb24g
b24gdGhlIHg0MTAgdG8gYSBzaW5nbGUgDQo+IDEwMCBHYkUgcG9ydCBvbiBhIG1lbGxhbm94IGNh
cmQuDQo+DQo+IFF1ZXN0aW9uICMxOg0KPg0KPiBMb29raW5nIGF0IHRoZSBkZXNjcmlwdGlvbiBv
ZiB0aGUgZnBnYSBpbWFnZSBpdCBkZXNjcmliZXMgdGhlIHg0XzIwMCANCj4gYXMg4oCcNCB4IDEw
R2JF4oCdLCBzbyBzaG91bGQgSSByZWFsbHkgYmUgY29uZmlndXJlZCBhcyBzaW5nbGUgcXNmcDI4
IA0KPiBjb25uZWN0aW9uIG9uIHRoZSB4NDEwIHRvIGEgcXVhZCAxMCBHYkUgb24gaG9zdCB3aXRo
IGEgYnJlYWtvdXQgY2FibGU/DQo+DQo+IEkgYW0gc2VlaW5nIHNvbWUgd29ua2luZXNzIGluIG15
IGFwcCwgd2hpY2ggd2FzIHByZXR0eSBzdGFibGUgb24gdGhlIA0KPiBOMzEwIGFuZCB3b25kZXJp
bmcgaWYgaXQgY291bGQgYmUgZHVlIHRvIG15IHRyYW5zcG9ydCBzZXR1cC4NCj4NCj4gSSBhbSBz
dGlsbCBpbnZlc3RpZ2F0aW5nIHRoZSBhcHAsIGJ1dCBpdCBtYWRlIG1lIHRoaW5rIGFib3V0IGhv
dyB0aGUgDQo+IGRhdGEgaXMgZGVsaXZlcmVkIGZyb20gZGV2aWNlIHRvIGhvc3QuDQo+DQo+IFF1
ZXN0aW9uICMyOg0KPg0KPiBXaXRoIHRoZSB4NF8yMDAgZnBnYSBpbWFnZSwgaXMgdGhlIHRyYWZm
aWMgZm9yIGVhY2ggUkYgcG9ydCDigJxyb3V0ZWTigJ0gDQo+IHRvIGEgc2luZ2xlIDEwR2JFIGlu
dGVyZmFjZT/CoCA0IFJGIHBvcnRzLCA0IDEwR2JFIGNvbm5lY3Rpb25zPw0KPg0KPiBBbnkgaW5z
aWdodHMgd291bGQgYmUgZ3JlYXRseSBhcHByZWNpYXRlZCBKDQo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
