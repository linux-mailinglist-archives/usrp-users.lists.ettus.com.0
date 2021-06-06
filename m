Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6242239CC1A
	for <lists+usrp-users@lfdr.de>; Sun,  6 Jun 2021 03:38:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1237738471D
	for <lists+usrp-users@lfdr.de>; Sat,  5 Jun 2021 21:38:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ag9yGIY5";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 46BA7383FE3
	for <USRP-users@lists.ettus.com>; Sat,  5 Jun 2021 21:37:48 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id d196so8242192qkg.12
        for <USRP-users@lists.ettus.com>; Sat, 05 Jun 2021 18:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=SDbi3LQ8yIg6bQpdeSeFccWQu10Bh+CTc78OsJo2cys=;
        b=Ag9yGIY5n9vsuWt+Vc1/Peakyn4ieQgE1ekqmtEl0SulKmyvCp83AQSVaFMQr7Vtzg
         GVUjqMzsP9wbWdCf0yuDom7+Aj1nSwQ2k1I3MqcLYUmkhO/SeFcR2H9GKKRc5trJ2bhF
         wTZMnfo1hE0WwbdWYiRnJXmlq8QDuuxIatZGFvXESIa6xdGPqeivsgAYXmxJ5LgnAKNY
         KD7/LLrYRaNX8CxuqiAif4fa7Pmb7Qnu2qyH+xx5DZAmMEvWGDyY4tSYIML+yVSwaQ/3
         6Mp/C1rHGIV2IQgr1l/XqgY7gc7QuoPNiMhzA9YfRBCRyJ+GqO3d4vi/KmVQN4qPHF7l
         4oXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=SDbi3LQ8yIg6bQpdeSeFccWQu10Bh+CTc78OsJo2cys=;
        b=ZjnTS9FSo1Vja54X2mQdC7sfc4wJG0nqGfdPDed4dG+GR63ZDm3C/PuvNQoq+y5tYA
         NyU28GryBugRzGKw/R/1s6r3u+lJ6NrKKAbGjL+iSY25Biuwomkb1LtNBEb/pIBRnbnV
         IviLlYEAcs9AHN3GX3vKN3Z9nSLcHwFQlkS7Hs+ar8zH/STJnNKrOApWasx3Si+7WqKD
         /gONVy0d+xae2213NIq1i/t4m2ixVqeq0CLUV8d/YFsDJmpZtj90tJqwVRkhJGXrlNUb
         a6Hhovqf/OTevx0dPhStRX2hbpdOx1BF9uSTh733BUFSq/oA+nUskkX/Jiy1kNEVIBE7
         JVwA==
X-Gm-Message-State: AOAM531hZebrWI/4cr1/FBdPZ4thq7hlcnBQyea0/WGik4oLtykGx1A/
	OgN3xsHjSNfoTXFDL102oJ0=
X-Google-Smtp-Source: ABdhPJwaUt4R3zgzeER/FjoJy7iNJ6r2+VwGoDLYdLVd/SIcb2ri+GYxuoxLl2JOvlt5b8XY5eV5bQ==
X-Received: by 2002:a37:a80e:: with SMTP id r14mr11189691qke.386.1622943467698;
        Sat, 05 Jun 2021 18:37:47 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id p3sm6254011qti.31.2021.06.05.18.37.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 18:37:47 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 5 Jun 2021 21:37:46 -0400
Message-Id: <B4BC6EE3-2352-471F-9A22-ACF447E7DC95@gmail.com>
References: <87530d24-793c-8c71-5683-b452b4aeee15@ettus.com>
In-Reply-To: <87530d24-793c-8c71-5683-b452b4aeee15@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: RVFKCLRIEDWRHUEXFH5BE6XNHQA5JQMR
X-Message-ID-Hash: RVFKCLRIEDWRHUEXFH5BE6XNHQA5JQMR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ncondict@gmail.com, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Uhd_find_devices --args<addr>
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVFKCLRIEDWRHUEXFH5BE6XNHQA5JQMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXNu4oCZdCBzZC1yZXNvbHYgcGFydCBvZiBzeXN0ZW1kPw0KDQpObyB1c2VyIGxhbmQgcHJvY2Vz
cyBzaG91bGQgZXZlciBiZSBhYmxlIHRvIGRvIGFueXRoaW5nIHRvIGNhdXNlIGEga2VybmVsIG9v
cHMsIG1vZHVsbyBrZXJuZWwgYnVncywgd2hpY2ggdGhpcyBjbGVhcmx5IGlzLiBTbyBlaXRoZXIg
dGhlcmXigJlzIGEgYnVnIGluIHRoaXMga2VybmVsLCBwZXJoYXBzIEFSTSByZWxhdGVkLCBvciB0
aGUgRXR0dXMtc3BlY2lmaWMgZHJpdmVyKHMpIGxvYWRlZCBpbnRvIHRoZSBrZXJuZWwgYXJlIG1p
c2JlaGF2aW5nIGFuZCBzZXR0aW5nIHRoaW5ncyB1cCBmb3IgYW4gb29wcyBldmVudC4gDQoNClNl
bnQgZnJvbSBteSBpUGhvbmUNCg0KPiBPbiBKdW4gNSwgMjAyMSwgYXQgOToxMSBQTSwgTWFyY3Vz
IE3DvGxsZXIgPG1hcmN1cy5tdWVsbGVyQGV0dHVzLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79IZWxs
byENCj4gDQo+IGh1aCwgdGhpcyBkb2Vzbid0IGxvb2sgdG9vIGdvb2QuIFRoZSBtb3N0IGNvbW1v
biByZWFzb24gZm9yIHByb2IxOg0KPiANCj4+IHByb2JsZW0gMSA6IEnigJltIHVzaW5nIEUzMjAg
d2l0aCB1aGQgMy4xNSBhbmQgc3RhdGljIGJvb3N0IGxpYi4gSSBjYW4gZG8gdWhkX2ZpbmRfZGV2
aWNlDQo+IGFuZCBpdCB3b3JrIGZvciBhIG1pbiB0aGVuIGl0cyBzdG9wIHdoZW4gSSB1c2UgYXJn
cz3igJ1hZGRyPTE5MuKApi4u4oCdIGRvZXMgYW55b25lIGhhcyB0aGlzDQo+IHByb2JsZW0/IEkg
YXBwcmVjaWF0ZSB0aGUgaGVscA0KPiANCj4gd291bGQgYmUgdGhhdCB5b3VyIGNvbXB1dGVyIHJl
Y29uZmlndXJlcyB5b3VyIG5ldHdvcmsgaW50ZXJmYWNlICJjbGV2ZXJseSI7IHNlZW4gdGhhdA0K
PiBkaXNydXB0IGNvbm5lY3Rpb25zIHRvIFVTUlBzIG1vcmUgdGhhbiBvbmNlLi4uDQo+IA0KPiBI
b3dldmVyLA0KPiANCj4+IHByb2JsZW0gMjogSSBzc2ggdG8gRTMyMCBhbmQgSSByZWNlaXZlIGtl
cm5lbCBlcnJvciBhdHRhY2hlZC4NCj4+IA0KPiBVZmYuIFdlJ3ZlIGdvdCBhIGZhaWxpbmcgc2Qt
cmVzb2x2LCBhbmQgaXQgc2VlbXMgdG8gZmFpbCBpbiBrZXJuZWwgbGFuZCBvbiBzb2NrZXQNCj4g
Y3JlYXRpb24uLi4gdWguDQo+IA0KPiBUaGlzICptaWdodCogYmUgYSByZXN1bHQgb2YgdGhlIGV4
dDQgZmlsZXN5c3RlbSBkcml2ZXIgZHlpbmcgYSBzZWNvbmQgZWFybGllciwgd2hlbiBpdA0KPiB0
cmllcyB0byBhbGxvY2F0ZSBtZW1vcnkgd2hlcmUgaXQgc2hvdWxkbid0LiBOZXZlciBzYXcgdGhh
dC4gSSBiZWxpZXZlIHRoZSBrZXJuZWwgb24gdGhhdA0KPiBtYWNoaW5lIGhhcyBubyBFdHR1cy1z
cGVjaWZpYyBtb2RpZmljYXRpb24gcmVsYXRlZCB0byBzdG9yYWdlLCBzbyBhIHByb2Nlc3MgY2F1
c2luZyBrZXJuZWwNCj4gZXJyb3JzIHdoZW4gdHJ5aW5nIHRvIGxpc3QgYSBkaXJlY3RvcnkgaXMg
Li4uIHN1cnByaXNpbmcuDQo+IA0KPiBDYW4geW91IFNTSCBvbiB0aGUgZGV2aWNlIGZpcnN0LCBh
bmQgdGhlbiBzaW1wbHkgZG8gc29tZXRoaW5nIGxpa2UNCj4gDQo+IGRtZXNnDQo+IGNkIC8NCj4g
ZmluZCAtdHlwZSBmID4gL2Rldi9udWxsDQo+IGRtZXNnDQo+IA0KPiBhbmQgb2JzZXJ2ZSB3aGV0
aGVyIHlvdSBnZXQgbmV3IGRtZXNnIGVycm9ycyB0aHJvdWdoIGV4ZXJjaXNpbmcgdGhlIGZpbGUg
c3lzdGVtPw0KPiANCj4gSWYgdGhhdCBpcyB0aGUgY2FzZTogRG8geW91IGhhdmUgdGhlIGJvYXJk
LW9ubHkgdmVyc2lvbiBvZiB0aGUgRTMyMCwgd2hlcmUgaXQnZCBiZSBlYXN5IHRvDQo+IGFjY2Vz
cyB0aGUgU0QgY2FyZD8NCj4gDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IE1hcmN1cw0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
