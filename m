Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D02E7B17
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 17:38:32 +0100 (CET)
Received: from [::1] (port=36836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kueUW-0004GR-QV; Wed, 30 Dec 2020 11:38:28 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:37489)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kueUS-0004DM-N3
 for USRP-users@lists.ettus.com; Wed, 30 Dec 2020 11:38:24 -0500
Received: by mail-qk1-f175.google.com with SMTP id h4so14356749qkk.4
 for <USRP-users@lists.ettus.com>; Wed, 30 Dec 2020 08:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=vm9Tb7Rc+YnEgMAEZRtAdmhQed4LmtsHpCWHaqOO0lM=;
 b=br92KXBCiTmiw+YKI3nNO83f0EIK69B7oKadtdRjbW68Hjwixb21RlnRy9pnR9Gu0v
 ds6EJBQVL/rmdjw4AmmJ4vrRB2N4tuOmf4gQe1QOlZrP2zODJS6B1sJoS1va+OY8h/sS
 JqrB0ynt074NpqUtrgDdZeA3S5E+k/UfDCjOKQ2yCmEkRx8aR1aNs/iRko4yZ6/S2Dka
 Gx4T+VCc2l4uV28uVQdXcYCix9j92apgmLqaCPLm2PVLsvngTpBOuIfHgVOcVjSsBni5
 zS/NWU2qZcTBWyH3PqXdmcA2yX8Tr0TxLBZWnBmiC5GUGQxhJSuPqYaZq9mjW0ewDBcb
 zFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=vm9Tb7Rc+YnEgMAEZRtAdmhQed4LmtsHpCWHaqOO0lM=;
 b=mADL35M78qFEJWKujaK+7w3E/BfKlOMLLVUHE20xpvdjVW+blxQr1CWXZ43uJL0iTr
 IInOEO9CuVhSgLDK77w5hZOGuQemiKmyz4hOEnPwhvG3Svs5j92+5Z3MX8C3cqAH61yH
 N0eY+pLQav7I8lNAHDkd7KUmkVzvSycp9U07NXLVyzmfNQskTlT1tct27Fhq5jTLWkm0
 BrtF3pHyEhbjjIuvuJnobBKttX4YYgs0OZEGSK1dxf0HQE5sYq3cO8abehrJrQBFUg/e
 3TZJQqYVWXhgXre/rwK99OzHWC6S1cmL+euUlTXMud0JHmgeS+mhhW07KV/6soB2W3k5
 Tv+Q==
X-Gm-Message-State: AOAM533AERqg/6TFbOCUlhdUGYphDjGYswjrzBQ+9IJxLjxpBvPI2H6z
 18ap2XI/kNdh0j6GJsBVJKihg2v7Jao=
X-Google-Smtp-Source: ABdhPJyONsmGWcRya9R2t6ebLypj4Wv9NtODGT3unvqIVoiX0I+8+foyqx1N7sUppze7RBJjsql2Kw==
X-Received: by 2002:a05:620a:13b0:: with SMTP id
 m16mr54835613qki.58.1609346264002; 
 Wed, 30 Dec 2020 08:37:44 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id f6sm28704546qkh.2.2020.12.30.08.37.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Dec 2020 08:37:43 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 30 Dec 2020 11:37:42 -0500
Message-Id: <17ABB5B2-0634-436D-8E8F-991F2481CC98@gmail.com>
References: <CAOx6OK1YXO1EBGYk3O_Y=F_tkhOKre245iZhOvAZUq9Che1ZOw@mail.gmail.com>
In-Reply-To: <CAOx6OK1YXO1EBGYk3O_Y=F_tkhOKre245iZhOvAZUq9Che1ZOw@mail.gmail.com>
To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] DMA FIFO latency with X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

U2ltcGxlIG1hdGguIAoKQSA5MDAwICpieXRlKiBwYWNrZXQgaXMgNzIwMDAgKmJpdHMqCgpBdCAx
LjBlOSAqYml0cy9zZWMqIHRoYXTigJlzIGEgbGF0ZW5jeSBvZiA3MjB1c2VjCgoKClNlbnQgZnJv
bSBteSBpUGhvbmUKCj4gT24gRGVjIDMwLCAyMDIwLCBhdCA4OjU1IEFNLCBKb3JnZSBBcnJveW8g
R2lnYW50byB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3Rl
Ogo+IAo+IO+7vwo+IEhpIEVKLAo+IAo+IFllcywgSSB0cmllZCByZXBsYWNpbmcgdGhlIERNQSBG
SUZPIHdpdGggYSBub3JtYWwgRklGTyBhbmQgdGhlIGxhdGVuY3kgZ290IGEgYml0IHdvcnNlIGFu
ZCBtb3JlIGlycmVndWxhciAoSSdtIGd1ZXNzaW5nIHRoYXQncyBkdWUgdG8gbm90IHNtb290aGlu
ZyB0aGF0IGJ1cnN0aW5lc3MgaW4gdGhlIEV0aGVybmV0IGludGVyZmFjZSB3aXRoIHRoZSBETUEg
RklGTyB5b3UgbWVudGlvbmVkKS4KPiAKPiBJIGhhdmUganVzdCB0cmllZCB5b3VyIGdyYXBoIHN1
Z2dlc3Rpb24gKEhvc3QgLT4gRkZUIC0+IEZJRk8gLT4gSG9zdCkgYW5kIHRoZSBsYXRlbmN5IGxv
b2tzIGFib3V0IHRoZSBzYW1lIGJ1dCBpbiB0aGUgRkZUIGJsb2NrIGluc3RlYWQuIEFsc28gSSBo
YWQgdG8gdXNlIHBhY2tldHMgd2l0aCBzcHA9MjU2IGluIHRoZSB0eCBzdHJlYW1lciBpbiBvcmRl
ciB0byBtYXRjaCB0aGUgc3BwIHRoYXQgdGhlIEZGVCBibG9jayBhY2NlcHRzIG9yIEkgd291bGQg
Z2V0IGFuIGVycm9yIHdoZW4gYnVpbGRpbmcgdGhlIHN0cmVhbWVyLiBNYXliZSBtYWtpbmcgdGhl
IEZGVCBibG9jayBzb21laG93IGJlIGFibGUgdG8gYWNjZXB0IGJpZ2dlciBwYWNrZXRzIHdvdWxk
IGRlY3JlYXNlIHRoZSBsYXRlbmN5Pwo+IAo+IEFib3V0IHRoZSB0aGVvcmV0aWNhbCBsYXRlbmN5
IGZvciBhIHBhY2tldCBvZiA4MTkyIGJ5dGVzIHlvdSBtZW50aW9uLCBzaG91bGRuJ3QgaXQgYmUg
ODE5Mio0IGJ5dGVzIGFzc3VtaW5nIHRoYXQgZWFjaCBzYW1wbGUgaXMgYSBzYzE2ICgyIGJ5dGVz
IGZvciB0aGUgcmVhbCBwYXJ0IGFuZCAyIGJ5dGVzIGZvciB0aGUgaW1hZ2luYXJ5IHBhcnQgb2Yg
ZWFjaCBzYW1wbGUpPyBUaGVuIHRoaXMgbGF0ZW5jeSBJIGFtIGV4cGVyaWVuY2luZyB3b3VsZCBt
YWtlIG1vcmUgc2Vuc2U/Cj4gCj4gVGhhbmsgeW91IHNvIG11Y2ggZm9yIHlvdXIgZmVlZGJhY2ss
IEkgd2lsbCBhbHNvIGtlZXAgaW4gbWluZCB5b3VyIGNvbW1lbnQgYWJvdXQgdGhlIHdheSBJIGFt
IHVzaW5nIFJGTm9DLgo+IAo+IEJlc3QgcmVnYXJkcywKPiAKPiBKb3JnZQo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
