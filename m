Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B1D2A85F7
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 19:16:24 +0100 (CET)
Received: from [::1] (port=45492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kajo6-0002C8-23; Thu, 05 Nov 2020 13:16:22 -0500
Received: from mail-lf1-f54.google.com ([209.85.167.54]:32853)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <luke.whittlesey@gmail.com>)
 id 1kajo1-00024u-Sc
 for USRP-users@lists.ettus.com; Thu, 05 Nov 2020 13:16:17 -0500
Received: by mail-lf1-f54.google.com with SMTP id l2so3676068lfk.0
 for <USRP-users@lists.ettus.com>; Thu, 05 Nov 2020 10:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sSajgjdVTX2p+98g2u/dJa0NFZ9C5B5qUmHqSoViraQ=;
 b=D/VSklXiem47FXqTPWU3C3Bzbm5Xc7dRlXC8U5Yyyuw5VwTa5dzaTEPjPCMSF05nNx
 b4OT+yFiAQHJjaF6NizuTsUDCqfvEkFYJyneJ82w+zx4kD4n1e9jOGvJt/U5wjytRCTg
 qj3LL1LzXMe+VTsE/AV2o9WpS7tjWXDIkjHgpecTTxDXwOtbJ0MqsOcEgFm2FWI9SXgb
 eUnpUoDpvK2sVyhId8h9AXgVnG+YCQKrAJh6IkkU0rjmIRXiUcBKGq4TlUyOVW5zK5Qd
 Dh0yQZTCpVZmTcNtYf9RktJJYxCF2p2/WG6AMGmjpwJiM3Aj1jLF/4+XT2nCfPVhB2Eu
 U5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sSajgjdVTX2p+98g2u/dJa0NFZ9C5B5qUmHqSoViraQ=;
 b=AaY9z53iFQHra6SeUYILoUvKsYwVoFFOWF9wRkxIGntY8DrDswWO9+lD7vOSK90Lus
 Sp4TMzH2zd8CLhoW2p9bt/FfoljV6syTxw9JTOFbFAiHFFUl9Q/vgOfz6Vs7DXdE+Yt3
 jnQFl3oVOJ7ZWBqXDVA2eO7LIlMHezdg+Sy+0ClEwvCKHflmBwyCAPXTSpmjK4V9PUel
 pEXefMwKrl3s9gCy8N5d0qJERF0C1Tc6493mk/oUTlGWHjJJMkKhHOvSPYF7pVh+FyDG
 r2QYKuonWe+B+JtcXpOHGLFGQms1ciAQQ7DjRCufmCuhqc5mtr6jAxMlwrls394hFNhD
 NOwA==
X-Gm-Message-State: AOAM531KDR8wBl9Kt6Y6BN8GVzAkTA7tcySq1GgMWtVROMsxBhYhBiKJ
 mBQQsie5v2lkerTPV+ZyexBroBzCzG1hwPHToc8=
X-Google-Smtp-Source: ABdhPJzFbikB59su9PrCGhTg5q3GFNgNsh9RoawfbZgL/7NcPkfCFTJUAaENhmY9sD65PHkx1k1s8p6SgyDbp2fzavo=
X-Received: by 2002:ac2:4642:: with SMTP id s2mr1496957lfo.167.1604600136316; 
 Thu, 05 Nov 2020 10:15:36 -0800 (PST)
MIME-Version: 1.0
References: <3C6FE1A2-33E5-40EC-9904-399B8FB7933D@iubelttechnologies.com>
 <AB67488F-E760-4AE0-ACF2-827E053EB04A@gmail.com>
In-Reply-To: <AB67488F-E760-4AE0-ACF2-827E053EB04A@gmail.com>
Date: Thu, 5 Nov 2020 13:08:48 -0500
Message-ID: <CA+ce6i3QLjnXtd27qzi87J_=R2NFTsOpkiXsUJQsedUhEVt0hw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Mark Koenig <mark.koenig@iubelttechnologies.com>, 
 usrp-users <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] uhd_cal_rx_iq_balance
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
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

RG9lcyB0aGlzIElRIGNhbGlicmF0aW9uIGZ1bmN0aW9uIGFwcGx5IHRvIHRoZSBFMzEwLCBvciBh
bnkgb2YgdGhlCkFEOTM2eCBiYXNlZCBTRFJzPwoKT24gVGh1LCBOb3YgNSwgMjAyMCBhdCAxMTo1
NyBBTSBNYXJjdXMgRCBMZWVjaCB2aWEgVVNSUC11c2Vycwo8dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20+IHdyb3RlOgo+Cj4gVGhlIFZhbCByb3V0aW5lcyB1c2UgdGhlIHNlcmlhbCBudW1iZXIg
b2YgdGhlIGRhdWdodGVyIGNhcmQgdG8gaW5kZXggaW50byB0aGUgZGF0YWJhc2UuIEl0IHNob3Vs
ZG7igJl0IG1hdHRlciB3aGVyZSB0aGUgY2FyZCBpcyBtb3ZlZC4KPgo+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPgo+IE9uIE5vdiA1LCAyMDIwLCBhdCAxMDowNiBBTSwgTWFyayBLb2VuaWcgdmlhIFVT
UlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPgo+IO+7vwo+Cj4g
SGVsbG8sCj4KPgo+Cj4gSSBoYXZlIHNvbWUgcXVlc3Rpb25zIHJlZ2FyZGluZyB0aGUgUnggaXEg
YmFsYW5jZSBmdW5jdGlvbi4gIEFmdGVyIHJ1bm5pbmcgdGhpcyBzY3JpcHQgb24gYSBwYXJ0aWN1
bGFyIHJhZGlvICh4MzEwIG9yIE4yMTApIHdpdGggYSBVQlggaXQgc2F2ZXMgdGhlIHJlc3VsdHMg
b24gdGhlIG1hY2hpbmUgaW4gd2hpY2ggaXQgd2FzIHJhbiBvbiwgY29ycmVjdD8gIElmIEkgbmVl
ZCB0byBtb3ZlIHRoZSBVQlggdG8gYW5vdGhlciByYWRpbyAoWDMxMCBvciBOMjEwKSwgYnV0IHRo
ZSBuZXcgcmFkaW8gd2l0aCB0aGUgVUJYIHdpbGwgYmUgb24gdGhlIHNhbWUgbWFjaGluZSwgZG8g
SSBuZWVkIHRvIHJlcnVuIHRoZSBJUSBiYWxhbmNlIHNjcmlwdD8KPgo+Cj4KPiBJcyB0aGVyZSBh
IHNjZW5hcmlvIEkgd291bGRu4oCZdCB3YW50IHRvIGFsd2F5cyBiZSBhcHBseWluZyB0aGUgSVEg
YmFsYW5jZSBjb3JyZWN0aW9ucz8KPgo+Cj4KPiBUaGFua3MKPgo+Cj4KPiBNYXJrCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
