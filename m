Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2DC17A86E
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 16:02:15 +0100 (CET)
Received: from [::1] (port=58290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9s0n-0002Wd-Kc; Thu, 05 Mar 2020 10:02:09 -0500
Received: from mailout2n.rrzn.uni-hannover.de ([130.75.2.113]:59176)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <stolzenberg@iqo.uni-hannover.de>)
 id 1j9s0j-0002Rk-Gp
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 10:02:05 -0500
Received: from [130.75.103.47] (unknown [130.75.103.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 1F3FF1F470
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 16:01:24 +0100 (CET)
To: usrp-users@lists.ettus.com
Message-ID: <7fe1a8ca-30af-dcc8-2533-e553cb794651@iqo.uni-hannover.de>
Date: Thu, 5 Mar 2020 16:01:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Subject: [USRP-users] Trigger Output
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Knut Stolzenberg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Knut Stolzenberg <stolzenberg@iqo.uni-hannover.de>
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

SGVsbG8sCgpJIGhhdmUgc2V0IHVwIGEgdHJpZ2dlciBmb3IgbXkgWDMxMCB1c2luZyB0aGUgUGlu
IDIgb2YgdGhlIEdQSU8gRnJvbnQgClBhbmVsLiBUaGUgVHJpZ2dlciBpcyBhIFRUTCBzaWduYWwg
ZmVkIHRvIHRoZSBQaW4uIEJ1dCB3ZSBleHBlcmllbmNlIGEgCmppdHRlciBvZiB+MTAwwrVzIGJl
dHdlZW4gdGhlIFRyaWdnZXIgYW5kIHRoZSBTRFIgc3RhcnRpbmcgdG8gc2VuZCAKZGF0YS5JcyBp
dCBwb3NzaWJsZSB0byByZWR1Y2UgdGhpcyBsYXRlbmN5LyBqaXR0ZXJpbmcgdG8gPDEwwrVzLiBJ
ZiBub3QgCmlzIGl0IHBvc3NpYmxlIHRvIHVzZSBlLmcuIFBpbiA2IGFzIGEgdHJpZ2dlciBvdXRw
dXQsIHdoaWNoIHNpZ25hbGlzZXMgCndoZW4gdGhlIFNEUiBzdGFydHMgdG8gc2VuZCBkYXRhPyBI
b3cgd291bGQgSSBpbXBsZW1lbnQgdGhpcyBpbiB0aGUgCmNvZGU/IFRoaXMgd291bGQgYmUgaW50
ZXJlc3RpbmcgdG8gbWUsIHNpbmNlIEkgY291bGQgdGhlbiBzeW5jaHJvbmlzZSBteSAKZXhwZXJp
bWVudCB0byB0aGUgU0RSIGFuZCBub3QgdmljZSB2ZXJzYS4KClRoZSBjb2RlIHdlIHVzZSBmb3Ig
c2V0dGluZyB1cCB0aGUgdHJpZ2dlciBpcyBwcmV0dHkgc2ltaWxhciB0byB3aGF0IGlzIApvbiB0
aGUgZXR0dXMga25vd2xlZGdlIGJhc2UuIFRoZSBpbXBvcnRhbnQgYml0cyBhcmUgdGhlc2U6Cgou
Li4KCi4uLgoKLi4uCgovL0RlY2xhcmF0ZSBQaW4gMiBhcyBUcmlnZ2VyIElucHV0IC0+IHRoaXMg
aXMgdXNlZCBmb3IgdGhlIHRyaWdnZXJlZCBtb2RlCiNkZWZpbmUgTUFOX0dQSU9fTUFTSyAoMSA8
PCAyKQojZGVmaW5lIEFNUF9HUElPX01BU0sgKDEgPDwgNikKI2RlZmluZSBBVFJfTUFTS1MgKEFN
UF9HUElPX01BU0sgfCBNQU5fR1BJT19NQVNLKQovLyBzZXQgdXAgb3VyIHZhbHVlcyBmb3IgQVRS
IGNvbnRyb2w6IDEgZm9yIEFUUiwgMCBmb3IgbWFudWFsCiNkZWZpbmUgQVRSX0NPTlRST0wgKEFN
UF9HUElPX01BU0sgJiB+TUFOX0dQSU9fTUFTSykKLy8gc2V0IHVwIHRoZSBHUElPIGRpcmVjdGlv
bnM6IDEgZm9yIG91dHB1dCwgMCBmb3IgaW5wdXQKI2RlZmluZSBHUElPX0REUsKgIChBTVBfR1BJ
T19NQVNLICYgfk1BTl9HUElPX01BU0spCi4uLi4KCi4uLi4KCi4uLi4KCnVzcnAtPnNldF9ncGlv
X2F0dHIoIkZQMCIsICJDVFJMIiwgMCwgQVRSX01BU0tTKTsKIMKgwqDCoCDCoMKgwqAgdXNycC0+
c2V0X2dwaW9fYXR0cigiRlAwIiwgIkREUiIsIDAsIEFUUl9NQVNLUyk7CgogwqDCoMKgIMKgwqDC
oCB3aGlsZSAodHJ1ZSkKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBpZiAoMCAhPSB1c3Jw
LT5nZXRfZ3Bpb19hdHRyKCJGUDAiLCAiUkVBREJBQ0siLCAwKSkgewogwqDCoMKgIMKgwqDCoCDC
oMKgwqAgwqDCoMKgIMKgwqDCoCAvKmhlcmUgc2hvdWxkIGJlIFBpbiA2IG9yICJvdXRwdXQgdHJp
Z2dlciIgaGlnaCovCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGZvciAoaW50
IGkgPSAwOyBpIDwgbGluZTsgaSsrKSB7IC8qc2VuZCBkYXRhIHRvIHRoZSAKU0RSKi8KIMKgwqDC
oCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHR4X3N0cmVhbS0+c2VuZCgKIMKg
wqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBidWZmX3B0cnNb
aV0sIHNwYiwgbWQKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgICk7
CiDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIH0KIMKgwqDCoCDCoMKgwqAgwqDC
oMKgIMKgwqDCoMKgwqDCoCAvKmhlcmUgc2hvdWxkIGJlIFBpbiA2IG9yICJvdXRwdXQgdHJpZ2dl
ciIgbG93CiDCoMKgwqAgwqDCoMKgIMKgwqDCoCB9CiDCoMKgwqAgwqDCoMKgIH0KCgpTaW5jZXJl
bHksCgpLbnV0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCg==
