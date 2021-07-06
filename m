Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 226253BDEE5
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 23:25:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01563383E3F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:25:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EQODFV8U";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C472383C26
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 17:24:58 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id fi7so61414qvb.0
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 14:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=ls+XwQmPPZiBQ49hW7zOi9kxAJOdE0DherfR5MmO8Ns=;
        b=EQODFV8UTPlozeaSNwgt1jrTcgwRH77StReq3EBVbQ/0Ca7Z9x/XpbiEVuOXd4zzOm
         MUAlcMaswy44p0tm/Tlf4iYLlG1HUUQcZWGSnPwO+oiD0JXGDUasTgz7ArLOhzPos7tn
         jazNWFz7sKKgAXhhrteF3eKl3saAMJszAkiPfVHU2n64HKTjYGDhGpYJp7+RitU1kQnB
         2+M4bg3KeYVbzVxtjlScwjBMi4i2CsBsAEDAA6m2eLcAwLGn0I5s0cBl/bd4ahXTk1nc
         Yms6YOQvjPr7KMqcXDlaPXTiOwcGv6QQDP1+87nCJAQyUJriXrvwscQYtIKoG4Nr/5Pj
         1IkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=ls+XwQmPPZiBQ49hW7zOi9kxAJOdE0DherfR5MmO8Ns=;
        b=VhuY/Ie1rW1WHDzOddKcNnMxrg/0UXAMPxmhkU8rRphjkmzcMPlNbZle6NUddsr57V
         nw0otYXslVn7CEBzh5irl0hcT10qPebgnwHPHbjC5s4GFjasn9Gqjon4Yrx13jEGX5f6
         OT19rFyR/yMIHZf+ZGIx19pTSEScuQAJo/nNpc6ztLZTPfOUElzjxmMsU+55GmTPr6Af
         crqzg9Rn+9K8+TsCwzeCnnHQ8Dr9Lqp+A3k0CAueb45waf+cK4eacKj0QsAR92xuzPfF
         87AD3uMBVSV8Xa4DR8EDlhDOj7+Av+/GEIea2qDsLy5W8uxPpIbp5Qp8JVXCoRnvtWFf
         eytw==
X-Gm-Message-State: AOAM5334U+n6MHNcyD+5XdOMAxcp0FnJ7NLW0E5NycztFkX+6ZItw1jx
	WElM8Tw6zHAWzQ3TI9F7kHSr8eVavvPD9w==
X-Google-Smtp-Source: ABdhPJwBZEXCM64g84CsQCErdXyKojCiTzHxMG21U+ttmPFcz8T0DAH0efKrLoRH70KLUWdBbl4RYw==
X-Received: by 2002:ad4:52ea:: with SMTP id p10mr20058797qvu.45.1625606697408;
        Tue, 06 Jul 2021 14:24:57 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id s6sm7543234qkc.125.2021.07.06.14.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 14:24:56 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 6 Jul 2021 17:24:56 -0400
Message-Id: <19FAD5E2-BAA1-423E-AD5B-62E82376520C@gmail.com>
References: <6e5084fbdd8d459b9b7602bf3d5562e2@erdc.dren.mil>
In-Reply-To: <6e5084fbdd8d459b9b7602bf3d5562e2@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: KWIZPRCT2PNQ3I4WTI7XVQBFEGPQRXQ2
X-Message-ID-Hash: KWIZPRCT2PNQ3I4WTI7XVQBFEGPQRXQ2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Transmit and Receive times
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KWIZPRCT2PNQ3I4WTI7XVQBFEGPQRXQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIFJYIG1ldGFkYXRhIGluY2x1ZGVzIHRpbWUgc3RhbXBzLiBUaGUgdGltZSBzdGFtcCBjbG9j
a3MgKGFuZCB0aGlzIGV2ZW50IHRpbWluZykgd2lsbCBiZSBhcyBnb29kIGFzIHlvdXIgY29tbW9u
IHJlZmVyZW5jZSBjbG9jay4gDQoNClRoZXJlIHdpbGwgYmUgYW4gaW5ldml0YWJsZSBsYXRlbmN5
IGR1ZSB0byB0aGUgRFNQIGdyb3VwIGRlbGF5IGluaGVyZW50IGluIHRoZSBEVUMsIHdoaWNoIHlv
dSB3aWxsIGhhdmUgdG8gbWVhc3VyZS4gSXTigJlzIHVzdWFsbHkgb24gdGhlIG9yZGVyIG9mIDEw
cyBvZiBzYW1wbGUgdGltZXMgYnV0IGNhbiB2YXJ5IGZyb20gdmVyc2lvbiB0byB2ZXJzaW9uIG9m
IHRoZSBGUGdBIGNvZGUgYW5kIHNhbXBsZSByYXRlIHNldHRpbmdzLiANCg0KU2VudCBmcm9tIG15
IGlQaG9uZQ0KDQo+IE9uIEp1bCA2LCAyMDIxLCBhdCA1OjE2IFBNLCBXb2xzaWVmZmVyLCBDYXJs
IEwuIEVSREMtUkRFLUNSTC1OSCBDSVYgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPiB3cm90ZToNCj4gDQo+IO+7v0hlbGxvLA0KPiANCj4gSSBhbSB1c2luZyB0d28g
eDMxMHMgYm90aCBob3N0ZWQgZnJvbSBhIGNvbW1vbiBQQy4gSSd2ZSBzdGl0Y2hlZCB0b2dldGhl
ciBhIGZldyBVSEQgZXhhbXBsZXMgdG8gdHJhbnNtaXQgYSBwcmUtcmVjb3JkZWQgd2F2ZWZvcm0g
ZnJvbSBvbmUgeDMxMCBhbmQgcmVjZWl2ZSBhdCB0aGUgb3RoZXIgYXQgdGhlIGV4YWN0IHNhbWUg
dGltZS4gSSdtIHVzaW5nIGFuIEZNQ1cgd2F2ZWZvcm0gYW5kIHdvdWxkIGxpa2UgdG8gcnVuIGEg
Y29ycmVsYXRpb24gb24gdGhlIHJlY2VpdmVkIHNpZ25hbCB0byBtYWtlIGFuIGF0dGVtcHQgYXQg
bWVhc3VyaW5nIGRpc3RhbmNlIGJldHdlZW4gdGhlIFR4IGFuZCBSeC4gSSB1c2VkIGEgY29tbW9u
IHJlZmVyZW5jZSBhbmQgUFBTIGJldHdlZW4gdGhlIHR3byB4MzEwcyBhbmQgc2NoZWR1bGVkIGEg
dHJhbnNtaXQgYW5kIHJlY2VpdmUgYnkgcGFzc2luZyBhIHRpbWVfc3BlYyBpbiB0aGUgdHhfbWV0
YWRhdGEgdmFyaWFibGUgZm9yIHRoZSB0eF9zdHJlYW0tPnNlbmQoKSBmdW5jdGlvbiBhcyB3ZWxs
IGFzIHRoZSB0aW1lX3NwZWMgdmFyaWFibGUgb2YgdGhlIHJ4X3N0cmVhbS0+aXNzdWVfc3RyZWFt
X2NtZCBmdW5jdGlvbi4NCj4gDQo+IE15IHF1ZXN0aW9uIGlzOiBob3cgbXVjaCBzdG9jayBkbyBJ
IHB1dCBpbiB0aGVzZSB0aW1lX3NwZWMgdmFsdWVzPyBJcyB0aGVyZSBzb21lIHRpbWVzdGFtcCBJ
IGNhbiByZXRyaWV2ZSB0aGF0IHdpbGwgdGVsbCBtZSBzb21ldGhpbmcgY2xvc2VyIHRvIHRoZSB0
cnV0aCBhYm91dCB3aGVuIHRoZSBmaXJzdCBzYW1wbGUgd2FzIGVtaXR0ZWQgZnJvbSB0aGUgdHJh
bnNtaXR0ZXIgb3Igd2FzIHJlY29yZGVkIGF0IHRoZSByZWNlaXZlcj8gT3IgY2FuIEkgcmVseSBv
biB0aGUgU0RSIGFkaGVyaW5nIHByZXR0eSBzdHJpY3RseSB0byB0aGUgdGltZV9zcGVjIHZhbHVl
IGl0IHdhcyBwYXNzZWQgcHJvdmlkZWQgaXQgd2FzIHNldCBzdWZmaWNpZW50bHkgZmFyIGluIGZ1
dHVyZSB0byBnaXZlIFNEUiB0aW1lIHRvIHNjaGVkdWxlIGNvbW1hbmRzPw0KPiANCj4gDQo+IFRo
YW5rcyENCj4gQ2FzZXkNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
