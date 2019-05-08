Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D517CE5
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 17:12:29 +0200 (CEST)
Received: from [::1] (port=57742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOOFA-0005p8-3o; Wed, 08 May 2019 11:12:28 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:58467)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <zluudg@zluudg.xyz>) id 1hOOEb-0005Ef-Lh
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 11:12:23 -0400
X-Originating-IP: 193.10.67.214
Received: from [10.114.72.219] (guestway.sics.se [193.10.67.214])
 (Authenticated sender: zluudg@zluudg.xyz)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BA216E0009
 for <usrp-users@lists.ettus.com>; Wed,  8 May 2019 15:11:09 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
Date: Wed, 8 May 2019 17:11:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] X310 RFNoC transmission issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: zluudg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zluudg <zluudg@zluudg.xyz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SGVsbG8hCgpJJ20gaGF2aW5nIHNvbWUgaXNzdWVzIHdoaWxlIHRyeWluZyB0byB0cmFuc21pdCBh
IHNpZ25hbCB1c2luZyB0aGUgClJGTm9DOiBSYWRpbyBibG9jayBpbiBHbnVyYWRpby4gTXkgYmxv
Y2sgZGlhZ3JhbSBpczoKCgogwqDCoMKgwqDCoMKgwqAgU2lnbmFsIFNvdXJjZSAoY29uc3RhbnQp
IC0+IFJGTm9DOiBEbWFGSUZPIC0+IFJGTm9DOiBSYWRpbyAoaW4gClRYIG1vZGUpLgoKCkkgcnVu
IHRoZSBibG9jayBkaWFncmFtIGJ5IGNhbGxpbmcgInB5dGhvbiB0b3BfYmxvY2sucHkiIGZyb20g
dGhlIApjb21tYW5kIGxpbmUgYW5kIEknbSBub3QgZ2V0dGluZyBhbnkgZXJyb3JzIHdoaWxlIGl0
J3MgcnVubmluZyAuIApIb3dldmVyLCBJJ20gdW5hYmxlIHRvIHF1aXQgaXQgcHJvcGVybHkgd2l0
aG91dCBoYXZpbmcgdG8gY2xvc2UgdGhlIAp0ZXJtaW5hbCB3aW5kb3cgYW5kIHBvd2VyLWN5Y2xl
IHRoZSBVU1JQLiBXaGVuIGNvbm5lY3RpbmcgdGhlIFVTUlAgdG8gYSAKc3BlY3RydW0gYW5hbHl6
ZXIgSSBzZWUgbm8gc2lnbmFsIHdoYXRzb2V2ZXIgKEkgZXhwZWN0IHRvIHNlZSBhIHBlYWsgYXQg
CjIuNCBHSHopLgoKClJlbW92aW5nIHRoZSBEbWFGSUZPIGRvZXMgbm90IHNlZW0gdG8gbWFrZSBh
bnkgZGlmZmVyZW5jZS4gTXkgRlBHQSBpbWFnZSAKaXMgYSBjdXN0b20gaW1hZ2Ugd2l0aCBzb21l
IG9mIG15IENFcywgYnV0IGl0IHdhcyBidWlsdCBzbW9vdGhseSB1c2luZyAKdGhlICJ1aGRfaW1h
Z2VfYnVpbGRlci5weSIgc2NyaXB0LiBJJ3ZlIGFsc28gZXhwZXJpZW5jZWQgc2ltaWxhciAKcHJv
YmxlbXMgd2hpbGUgaGF2aW5nIGEgUkZOb0M6IERVQyBiZXR3ZWVuIHRoZSBEbWFGSUZPIGFuZCB0
aGUgUmFkaW8gCmJsb2NrLCBhbHNvIHdpdGggYSBjdXN0b20gRlBHQSBpbWFnZS4gV2l0aCB0aGUg
c3RvY2sgRlBHQSBpbWFnZSBJIHdhcyAKYWJsZSB0byBnZXQgYSBzaWduYWwgd2l0aCBtb3JlIG9y
IGxlc3MgdGhlIHNhbWUgR251cmFkaW8gYmxvY2sgZGlhZ3JhbS4KCgpXaHkgYW0gSSBub3Qgc2Vl
aW5nIGFueSBvdXRwdXQgd2l0aCBteSBjdXN0b20gRlBHQSBpbWFnZXM/IEFsbCAKc3VnZ2VzdGlv
bnMgYXBwcmVjaWF0ZWQuCgoKSSdsbCBoYXBwaWx5IHByb3ZpZGUgbW9yZSBpbmZvIGlmIG5lZWRl
ZCwgc28gZG9uJ3QgaGVzaXRhdGUgdG8gYXNrLiBGb3IgCmtub3csIEknbGwganVzdCBwcm92aWRl
IHRoZSBiYXNpY3M6CgoKIMKgwqDCoMKgwqDCoMKgIE9TOiBVYnVudHUgMTguMDQKCiDCoMKgwqDC
oMKgwqDCoCB1aGQ6IHJmbm9jLWRldmVsLCBlZWMyNGQ3YjAKCiDCoMKgwqDCoMKgwqDCoCBnbnVy
YWRpbzogbWFpbnQtMy43LCBjNmM1NzUzMDkKCiDCoMKgwqDCoMKgwqDCoCBnci1ldHR1czogbWFz
dGVyLCBhOTA5NDQ3CgoKVGhhbmtzIGluIGFkdmFuY2UhCgovLwoKTGVvbgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
