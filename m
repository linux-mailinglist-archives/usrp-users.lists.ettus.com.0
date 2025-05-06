Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D63EAAD13D
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 00:57:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 831233861BE
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 18:57:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746572262; bh=rajL6EOi7/02lL0y0ICE0pJ0qLGXa/1EGaOIgBDB0yY=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XwNDyMCjzqF4fa7aBP96UZM7/HxPGrQRaty18MpvRc9eQyuYsf2yOQVK2Ciq4PLu6
	 jICicYhnpF88Z6BWb9zh42r92joCUCEeVVjzQaqXCRgSVk3/gBbWPclQ+MRE0f4KW6
	 KBFGsgGyfJ+oBYf5ZSwTFQ3wbkOcGicIVztGVdVZvno6iHToq7+wfC3YC2BlGxXMFc
	 IkFdqWW2ItFAZQGN4Dfqq/0HTd/YIzkDR2fpYYr4RWAbCyJOQnReKeGTXpBoJvg3Tr
	 wHjRJ9QARB+QOLB1as4WYe/V79tgxBorlCbk2Lh+vGXY8NrI2iNMZLLkKqfvCjGkoQ
	 9NhQioZG2gjfg==
Received: from mail.appliedradar.com (static-71-117-165-76.prvdri.fios.verizon.net [71.117.165.76])
	by mm2.emwd.com (Postfix) with ESMTPS id 35F7C38615A
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 18:56:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=appliedradar.com header.i=@appliedradar.com header.b="CCKvj/wm";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=appliedradar.com;
	s=default; t=1746572204;
	bh=r8uI3pZB1tDyNkUxXXnyztC6WuCkqn694mSDjjDqluI=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=CCKvj/wmg0tw21g8ix/FnwOZpZK3cs5GHAQ/JHB+e+BjSr25U4rQrSwgiIy0FGRNX
	 deiQeIVDwTOOxBAjmDPqL1dbPU9i6827nWm18nzo7a97RUIN3aE3JFj8dL0HF2UfB6
	 0g2Sb74mGCxCDBZj0SSRzAsIA0RDVQTWp324rqxCeQ+Fd3dmSbDuKo3MwbLDIAALzR
	 aA1uPunY4TXaOQmRnVabtXukED8K/c34UPpkSz9LixSRf3/XrOFV5nbzfQAQrTIRog
	 Oz65InvCz3SM+7k8Gy40dG+4aM9w7sMPN3qHLm2ITuV31eLdLrsOZYbeamJUum6C32
	 N7ROCGjDm7Cqw==
Received: from smtpclient.apple (67.sub-174-242-136.myvzw.com [174.242.136.67])
	by mail.appliedradar.com (Postfix) with ESMTPSA id 9ABFE83C06;
	Tue,  6 May 2025 18:56:44 -0400 (EDT)
From: Bill weedon <whw@appliedradar.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 6 May 2025 18:56:33 -0400
Message-Id: <43D07915-6C31-43D8-9A42-4818AD5B776D@appliedradar.com>
References: <9a1b6218-c420-4a88-afe2-af29a89d23bd@gmail.com>
In-Reply-To: <9a1b6218-c420-4a88-afe2-af29a89d23bd@gmail.com>
To: "Leech Marcus D." <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (22E252)
Message-ID-Hash: 5IEEOBDQJNKXEUMYJPP3QO45ULN54SMU
X-Message-ID-Hash: 5IEEOBDQJNKXEUMYJPP3QO45ULN54SMU
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IEEOBDQJNKXEUMYJPP3QO45ULN54SMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzdXNwZWN0IHRoZSBkZXZpY2Ugd2FzIHdpcGVkIGFzIHlvdSBzdGF0ZWQuIElzIHRoZXJlIGEg
cmVtZWR5IHRvIGJyaW5nIGl0IGJhY2sgdG8gZmFjdG9yeSBzdGFuZGFyZHM/IFRoZXJlIGlzIGEg
bWljdG9yIGNvbm5lY3RvciB3aXRoIEZYMyBKVEFHIGJ1dCByZXF1aXJlcyBtYXRpbmcgY29ubmVj
dG9yLCBwcm9ncmFtbWVyIGFuZCBiaW5hcnkgaW1hZ2UuIA0KVGhhbmtzLA0KQmlsbCBXZWVkb24N
Cg0KT24gTWF5IDYsIDIwMjUsIGF0IDU6NDPigK9QTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCu+7v09uIDA2LzA1LzIwMjUgMTY6NTUsIHdod0Bh
cHBsaWVkcmFkYXIuY29tIHdyb3RlOg0KPiANCj4gV2UgdHJpZWQgcGx1Z2dpbmcgdGhlIHVuaXQg
aW50byBzZXZlcmFsIFBD4oCZcyBhbmQgbGFwdG9wcywgYW5kIGl0IHNlZW1zIHRoZSBkZXZpY2Ug
aXMgbm90IGVudW1lcmF0aW5nLiBJIGFtIHN0YXJ0aW5nIHRvIHRoaW5rIHRoZSBGWDMgRUVQUk9N
IGlzIGNvcnJ1cHQuIElzIHRoZXJlIGEgd2F5IGZvciB0aGUgdXNlciB0byByZXNldCB0aGUgRlgz
IGZpcm13YXJlIHRvIGZhY3Rvcnkgc2V0dGluZz8gSXMgYSBwcm9ncmFtbWluZyBjYWJsZSwgRlgz
IGltYWdlLCBhbmQgcHJvZ3JhbW1lciBhdmFpbGFibGU/DQo+IA0KPiANCkknbSB0cnlpbmcgdG8g
ZmluZCB0aGF0IG91dC4gIElmIGl0IHdvbid0IGVudW1lcmF0ZSwgdGhlcmUncyBubyB3YXkgdG8g
Z2l2ZSB0aGUgRlgzIGEgZmFjdG9yeS1mcmVzaCBib290IGltYWdlIG92ZXIgVVNCLg0KDQpUaGlz
IGhhcyBoYXBwZW5lZCBzbyByYXJlbHkgaW4gdGhlIDE1ICB5ZWFycyBJJ3ZlIHN1cHBvcnRlZCBV
U1JQIGRldmljZXMgdGhhdCBJIGRvbid0IGhhdmUgYSBwcm9jZWR1cmUgY29tbWl0dGVkIHRvIG1l
bW9yeS4NCg0KSXMgaXQgcG9zc2libGUgdGhhdCB0aGlzIGRldmljZSB3YXMgIndpcGVkIiBhY2Nv
cmRpbmcgdG8gbWlsaXRhcnkgc2VjdXJpdHkgc3RhbmRhcmRzIGZvciBzdWNoIGRldmljZXM/DQoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
