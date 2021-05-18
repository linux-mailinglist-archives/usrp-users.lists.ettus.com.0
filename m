Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE43871F8
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 08:34:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A9EC384221
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 02:34:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="WCx4dzDP";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id BB896383F1F
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 02:34:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ppc4twa551ajSy94ni37f/FxDG6+htkoOKA8XxlQ0J8=; b=WCx4dzDPcnoibmRh0Llmx4LikV
	XBeqBe4QC0ORdxSigJPqqr40R5RkRIF7ilv4S5CdgXClQZa3BHFVEb/7/K0IHIRetvslg0fkyjWo4
	Z4bKejlCr8ovI1y0bteSlPjQhsGxR3UwmL95fgjldsOgiI0jjNrZAJN/MGdxFpW8zJ08=;
Received: from 77-32-26-57.dyn.eolo.it ([77.32.26.57] helo=[192.168.178.10])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1litIc-0007ic-ET
	for usrp-users@lists.ettus.com; Tue, 18 May 2021 06:33:56 +0000
To: usrp-users@lists.ettus.com
References: <CD66EE6A-A119-43AE-B116-DC22797F6C39@gmail.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <d7a81a89-0247-8527-63bd-bd3efb0403df@itsystems.it>
Date: Tue, 18 May 2021 08:33:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CD66EE6A-A119-43AE-B116-DC22797F6C39@gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I never used UHD4, but at least in UHD3.15 and previous
    versions, for the best of my knowledge, there is now way to explicitly assign
    a given stream to a given sfp+ (and let me say this is a sin). As [...]
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: YTLSV643BYCRO7WXRHXYAGAY4AFO3CZ6
X-Message-ID-Hash: YTLSV643BYCRO7WXRHXYAGAY4AFO3CZ6
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SFP+ assignments in RFNoC on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTLSV643BYCRO7WXRHXYAGAY4AFO3CZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCkkgbmV2ZXIgdXNlZCBVSEQ0LCBidXQgYXQgbGVhc3QgaW4gVUhEMy4xNSBhbmQgcHJl
dmlvdXMgdmVyc2lvbnMsIGZvciANCnRoZSBiZXN0IG9mIG15IGtub3dsZWRnZSwgdGhlcmUgaXMg
bm93IHdheSB0byBleHBsaWNpdGx5IGFzc2lnbiBhIGdpdmVuIA0Kc3RyZWFtIHRvIGEgZ2l2ZW4g
c2ZwKyAoYW5kIGxldCBtZSBzYXkgdGhpcyBpcyBhIHNpbikuIEFzIGZhciBhcyBJIGNhbiANCnVu
ZGVyc3RhbmQgdGhlIGFzc2lnbm1lbnQgaXMsIGluIHNvbWUgd2F5IHN0YXRpYywgdGhlIGZpcnN0
IGNoYW5uZWwgaXMgDQpzdHJlYW1lZCBvbiBzZnArMCwgdGhlIHNlY29uZCBvbiBzZnArMSwgdGhl
IHRoaXJkIGFnYWluIG9uIHNmcCswIGFuZCBzbyBvbi4NCg0KSG9wZSB0aGlzIGNhbiBiZSBoZWxw
ZnVsDQoNCg0KT24gNS8xNC8yMSA4OjMzIEFNLCBQYXVsIEF0cmVpZGVzIHdyb3RlOg0KDQo+IEhp
IHRoZXJlOg0KPiBJbSB0cnlpbmcgdG8gd3JhcCBteSBoZWFkIGFyb3VuZCB1c2luZyBSRk5vQy9V
SEQ0IGFuZCB0aGUgWDMxMC4gSXZlIGdvdHRlbiBiYXNpYyBmbG93Z3JhcGhzIHdvcmtpbmcgYW5k
IEnigJltIGJ1aWxkaW5nIGN1c3RvbSBpbWFnZXMgaW4gVml2YWRvLiBSaWdodCBub3cgSeKAmW0g
d29ya2luZyBvbiB0aGUgZGVmYXVsdCBYRyBpbWFnZS4NCj4gSSB3b3VsZCBsaWtlIHRvIHNlbmQg
dGhlIHJlY2VpdmVkIHNhbXBsZXMgZnJvbSBvbmUgVUJYMTYwIHRvIDIgZGlmZmVyZW50IHBoeXNp
Y2FsIG91dHB1dHMgb24gdGhlIHgzMTAuIFRoZSBzdHJlYW1zIHdpbGwgYmUgZGVjaW1hdGVkIHRv
IGRpZmZlcmVudCByYXRlcyAoaS5lLiBzdHJlYW0wPWhpZ2gtcmF0ZS9zdHJlYW0xPWxvdy1yYXRl
KS4gSXMgdGhlcmUgYSB3YXkgaW4gR05VUmFkaW8vcmZub2MgdG8gcm91dGUgcnggc3RyZWFtMCB0
byBTRlArIFBvcnQgMCBhbmQgcnggc3RyZWFtMSB0byBTRlArIFBvcnQgMT8gSSBjYW7igJl0IHNl
ZW0gdG8gZmluZCBhbnkgcmVsZXZhbnQgZG9jdW1lbnRzIG9uIGFzc2lnbmluZyByYWRpbyBJRCwg
YWRkcmVzcyBvciBwb3J0cy4gQ2FuIHlvdSBoZWxwPw0KPg0KPiBUaGFua3MhDQo+DQo+IDxlbmQg
dHJhbnNtaXNzaW9uPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
