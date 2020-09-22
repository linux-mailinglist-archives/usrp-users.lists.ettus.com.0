Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B46CF274A29
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 22:34:24 +0200 (CEST)
Received: from [::1] (port=59334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKozX-00035W-KJ; Tue, 22 Sep 2020 16:34:23 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:39290)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kKozT-0002wU-0S
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 16:34:19 -0400
Received: by mail-qk1-f175.google.com with SMTP id w12so20547574qki.6
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 13:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=L+xRIubEMHg9/3VrPaHdSiSWLaO+h43I99OJevd1vAE=;
 b=iMcbikpgTEaT68v4aMLd2BLsinNBV3D4GtBs8+vg3Zb6EXDO8oyIOzfCA/ARE8UiIV
 zxonwvC8+jpBjRr0QTHKObHIduY8u9ZMlekFOS9NRUK/X3RpM6CS8HmCT/qeOtZTY1ZJ
 tCU+SBaZbJqYovo9VDdwfWnaw7X28BEj40KdbUvQsBXelFzAf29IDPPolCvA4hx/JdCx
 n1v73KXa7zwrfeAvS4UeMH4mc+GUWvwbuzdpbaot6cuxJG7lgQbbSdPuhK60T7u/8Sh4
 H4VZFmYBjrbTbjlp9414hr450qX/0chl7hFMVXhM/Ovf19VQ7dzn93dtPRQOlG11aUeF
 GAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=L+xRIubEMHg9/3VrPaHdSiSWLaO+h43I99OJevd1vAE=;
 b=Rsm9Fl6JDvw1yHQjqYnzvwGGcs23M0oU4sEe2l32ImetZmkG6GGt6K28Px1Boyf+WX
 TyM3vRBPdBf6aVMI+OMlSJCoS8qTtzK4YLKM7xxQGjYpcqZR3c1jkdfVxIFMUNJOS2R4
 FNypoFwzW00et9XtrCH0t7mBIrRCCEwPRdaLLvQ6hNUyYx4UPFeAUnxZ/Ll/djlnVZBi
 8XHaq80P7New9HorLANIYsg2if5WrUX7ShZnlw+uOAuvEeMie9bIEELIRqz0qSKpwB5A
 mYio+mzlna3y5xxiectobLbPTN2XLpeLpS3Xm2OCkTV09xFGdo5M/taWPhKv1LLxSskf
 7AUg==
X-Gm-Message-State: AOAM5327CsHZCQl9Pguq5V11L1P9zZD/E17kzud7eu52xxdFnZNggnc4
 4n+VwAfN5VTc+dNwGNni6Yw=
X-Google-Smtp-Source: ABdhPJy/4YaYeRHKm/oc5E5YdmMWOW6kEPOXUrs+vuLky0+nDq5N7GFSLSo3OCcNt9dKC3jjCCQwFA==
X-Received: by 2002:a37:b03:: with SMTP id 3mr6208375qkl.181.1600806818461;
 Tue, 22 Sep 2020 13:33:38 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id o2sm11968479qkk.42.2020.09.22.13.33.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Sep 2020 13:33:38 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Sep 2020 16:33:37 -0400
Message-Id: <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
To: Christopher.Flood@colorado.edu
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
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

MUh6IGluIDEwTWh6IGlzIDAuMVBQTSB3aGljaCBpcyB3aXRoaW4gdGhlIGNsb2NrIGFjY3VyYWN5
IHNwZWMgb2YgdGhlIE4zMTAKRGV2aWNlIHdpdGhvdXQgYW4gZXh0ZXJuYWwgcmVmZXJlbmNlLiAK
ClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gU2VwIDIyLCAyMDIwLCBhdCA0OjI5IFBNLCBDaHJp
c3RvcGhlciBGbG9vZCB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
IHdyb3RlOgo+IAo+IO+7vwo+IEhpIGFsbCwKPiAKPiBJIGhhZCBzb21lIHF1ZXN0aW9ucyBhYm91
dCB0aGUgdHVuaW5nIGFjY3VyYWN5IEkgc2hvdWxkIGV4cGVjdCBpbiBHTlUgcmFkaW8uIEkgaGF2
ZSBhIDEwTUh6IHNpbnVzb2lkYWwgc2lnbmFsIGNvbWluZyBpbnRvIGFuIFJYIHBvcnQgb24gdGhl
IE4zMTAuIEkgYW0gaW50ZXJmYWNpbmcgd2l0aCB0aGUgU0RSIHRocm91Z2ggR05VIHJhZGlvIGFu
ZCB0aGUgVUhEOiBVU1JQIFNvdXJjZSBibG9jay4gSW4gdGhlIFJGIE9wdGlvbnMgYm94IG9mIHRo
ZSBzb3VyY2UgYmxvY2sgSSBhbSB1c2luZyB0aGUgZm9sbG93aW5nIGNvbW1hbmQgYXMgdGhlIGNl
bnRlciBmcmVxdWVuY3k6IHVoZC50dW5lX3JlcXVlc3QoZkNlbnRlciwgbG9PZmYpIHdoZXJlIGZD
ZW50ZXIgPSAxME1IeiArIDEwMEh6IGFuZCBsb09mZiA9IDI1MGtIei4gVGhlIHJlc3VsdGluZyBz
aWduYWwgZnJvbSB0aGlzIG9wZXJhdGlvbiBpcyBub21pbmFsbHkgYSAxMDBIeiBzaWduYWwuIEhv
d2V2ZXIsIHdoZW4gSSBtYWtlIHBoYXNlIC8gZnJlcXVlbmN5IG1lYXN1cmVtZW50cyBvZiB0aGlz
IHNpZ25hbCwgaXQgaXMgb2ZmIGJ5IH4xSHosIHdoaWNoIHNlZW1zIGhpZ2guIAo+IAo+IEkgd291
bGQgZXhwZWN0IHRoZSBtZWFzdXJlZCBmcmVxdWVuY3kgb2Zmc2V0IG9mIHRoZSBpbmNvbWluZyBz
aWduYWwgdG8gcmVmbGVjdCB0aGUgc3RhYmlsaXR5IG9mIHRoZSBpbmNvbWluZyBzaWduYWwuIEhv
d2V2ZXIsIGJhc2VkIG9uIHRoZSBzb3VyY2Ugb2YgdGhlIGluY29taW5nIHNpZ25hbCBJIGhhdmUg
cmVhc29uIHRvIGJlbGlldmUgdGhhdCB0aGlzIG9mZnNldCBpcyB0b28gbGFyZ2UuIAo+IAo+IEhh
cyBhbnlvbmUgZWxzZSBoYWQgcHJvYmxlbXMgd2l0aCB0aGlzPyBIb3cgYWNjdXJhdGUgc2hvdWxk
IEkgZXhwZWN0IHRoZSB0dW5pbmcgcHJvY2VzcyB0byBiZT8gCj4gCj4gVGhhbmtzLAo+IAo+IENo
cmlzCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20K
