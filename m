Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0066D1F6ED7
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 22:35:37 +0200 (CEST)
Received: from [::1] (port=60096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjTvB-00057V-Uq; Thu, 11 Jun 2020 16:35:33 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:42590)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjTv8-00050C-92
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 16:35:30 -0400
Received: by mail-qv1-f53.google.com with SMTP id p15so3257847qvr.9
 for <usrp-users@lists.ettus.com>; Thu, 11 Jun 2020 13:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=e2PqulVb17h7VoeRWvpWtC1MaF8p6pnpQSG4xKsKkB8=;
 b=oV/9Z/PEIjeMgJoLUnniXt5RyVpR+zodG2SjgiGi14NwD2x7vsmthCVefnk5x4efuA
 25seLu/cs78rePqEvFKN8KYxNeF9pjJsqINwPjliJm1dkCC4tFmR2OD9vZ+xgzgZIyox
 s5WKXr8JNsWbQJhHWYGTEAIR9GyrnMiI3Eg1cYlpd2edeSqhUevoN/XbruMYMYn3F8cD
 wViQO2mtuL5L1BMAnHrdnaNqe+5AJkoNMHed4PUgj5eLinTiRb1ZmBJNvZQ1bmEUxjow
 ZJWbL7xF/WEi3f0gCUz+2aHlEKwt3J3OgibwJdU4km30bNSn4jLF7XJyd7yRQ8s5uw/R
 DMBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=e2PqulVb17h7VoeRWvpWtC1MaF8p6pnpQSG4xKsKkB8=;
 b=NbyM4Y/vcuvEMD7TXtvmokaHoPElrSJeo6E3CJA+oJN/6ey6QWXSZcjRiGFi7tLoI7
 Pvf5QU3OD7Jlc1IUdOwBI2CN//Op66ED+mY99Qu2SztUbM8TbnV+S47WlGxV22aRw3BK
 QYPHau4SV1K4/L6O5XDJrEON7nPKqCawJl2dQ/c3QBOaE6QMnJaw5Ox1Xa3w0L5/Klko
 YwyjsGhagwRWZKtprJps+IMyimKpQxX+z2/XQvA6QJx9Fh/e9SuD8CSXRweK3DeT4bJF
 AT4pN7jeSQNIZkCnFtPIZkRrkUnUptZAS/Hh9AzdKVetKgKl9G/vCWmxU/PPyqRWIPjF
 93XA==
X-Gm-Message-State: AOAM5334Nu9m+58msdLCwiVkX0BftKzsJYzddO+nwTAm0Mi3NKuwVzPS
 JBWoMhKu3imICvIr04PyNaLHVNwQDfo=
X-Google-Smtp-Source: ABdhPJwIdcAyzx6yzgC9aWbKwGXr+o8k+jfOi474weFT/vCRRLGlum6V8LfJsYJMNDXzSg8qqp4i2g==
X-Received: by 2002:ad4:44e9:: with SMTP id p9mr9527215qvt.180.1591907689520; 
 Thu, 11 Jun 2020 13:34:49 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id p16sm2685839qkg.63.2020.06.11.13.34.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 13:34:49 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Jun 2020 16:34:48 -0400
Message-Id: <D23D5207-18EA-4540-8A72-E209B9D282CA@gmail.com>
References: <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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

WW91IHdhbnQgdGhlIOKAnGRib2FyZOKAnSBmaWxlcyBpbiB0aGUgVUhEIHNvdXJjZS4gVGhleSBz
dWJzY3JpYmUgdG8gaW50ZXJuYWwgdHVuaW5nIGV2ZW50cy4gVXNlIHdoaWNoZXZlciBkYm9hcmQg
ZmlsZXMgY29ycmVzcG9uZCB0byB5b3VyIGhhcmR3YXJlLiAKClNlbnQgZnJvbSBteSBpUGhvbmUK
Cj4gT24gSnVuIDExLCAyMDIwLCBhdCA0OjMyIFBNLCBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25i
cmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IO+7v1NvIG9uZSBvZiB0aGUgdGhpbmdzIFRoYXQg
Y2FuIGhhcHBlbiBpcyB0aGF0IHlvdXIgY29tbWFuZCBwYWNrZXRzIHdpbGwgaGF2ZSB0byB3YWl0
IEZvciBhIG11Y2gtbGFyZ2VyIGRhdGEgcGFja2V0LiBUaGUgbGluayBpcyBzaGFyZWQuIAo+IAo+
IEnigJlkIHRpbWVkIGNvbW1hbmRzIGFyZSBzY2hlZHVsZWQg4oCcdGlnaHTigJ0gdGhpcyBjYW4g
aGFwcGVuLiAKPiAKPiBTZW50IGZyb20gbXkgaVBob25lCj4gCj4+IE9uIEp1biAxMSwgMjAyMCwg
YXQgMzozNCBQTSwgTHVrYXMgSGFhc2UgPGx1a2FzaGFhc2VAZ214LmF0PiB3cm90ZToKPj4gCj4+
IO+7v0hpIE1hcmN1cywKPj4gCj4+Pj4+IE9uIDA2LzEwLzIwMjAgMDk6MDAgUE0sIEx1a2FzIEhh
YXNlIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+PiBbLi4uXQo+Pj4+PiBGb3IgZXhhbXBsZSwg
d2hhdCBpcyB0aGUgZmFzdGVzdCByYXRlIEkgY2FuIGlzc3VlIHRpbWVkIGNvbW1hbmRzCj4+Pj4+
IChpZ25vcmluZyBzZXR0bGluZyB0aW1lcyBldGMpIG9uIGEgWDMxMCBvdmVyIDEwR2JlPwo+Pj4g
VGhpcyBpcyBhY3R1YWxseSBhbiBhbWJpZ3VvdXMgcXVlc3Rpb24uICBEbyB5b3UgbWVhbiAid2hh
dCBpcyB0aGUKPj4+IHNtYWxsZXN0IHNjaGVkdWxpbmcgaW50ZXJ2YWwgZm9yIHRoZSBjb21tYW5k
cyB0aGF0IHdpbGwgYmUgZXhlY3V0ZWQKPj4+IGluIHRoZSBmdXR1cmU/IiBvciAiaG93IGZhc3Qg
Y2FuIEkgaXNzdWUgY29tbWFuZHMgdGhhdCB3aWxsCj4+PiB1bHRpbWF0ZWx5IGJlIHNjaGVkdWxl
ZCBhdCBhIGxhdGVyIHRpbWU/IiAgSW4gdGhlIGZvcm1lciwgdGhhdAo+Pj4gZGVwZW5kcyBvbiB0
aGUgZXhhY3QgbmF0dXJlIG9mIHRoZSBjb21tYW5kcywgc2luY2UgdGhleSBlbmQgdXAKPj4+IGFj
dHVhbGx5IGJlaW5nIGV4ZWN1dGVkIGJ5LCBmb3IgZXhhbXBsZSwgYW4gU1BJIG9yIEkyQyBlbmRw
b2ludCwKPj4+IHdoaWNoIG9wZXJhdGVzIHZlcnkgdmVyeSBtdWNoIHNsb3dlciB0aGFuIGEgMTBH
aUdlIGludGVyZmFjZS4gIEluIHRoZQo+Pj4gbGF0dGVyLCBteSBndWVzcyBpcyB0aGF0IHRoZSBG
UEdBIGNhbiBzd2FsbG93IGNvbW1hbmRzIGFuZCBwbGFjZSB0aGVtCj4+PiBvbiB0aGUgcXVldWUg
cHJldHR5LW11Y2ggYXMgZmFzdCBhcyB5b3UgY2FuIGlzc3VlIHRoZW0gb3ZlciAxMEdpRy4KPj4+
IEhvdyBmYXN0IHlvdSBjYW4gZG8gdGhhdCBkZXBlbmRzIHZlcnkgbXVjaCBvbiB5b3VyIGhvc3Qt
c2lkZQo+Pj4gZW52aXJvbm1lbnQsIG5ldHdvcmsgc3RhY2ssIGtlcm5lbCBuZXR3b3JrIGRyaXZl
cnMsIGtlcm5lbCBsYXRlbmNpZXMsCj4+PiBldGMuCj4+IAo+PiBNeSBxdWVzdGlvbnMgY29uY2Vy
bnMgdGhlIGxhdHRlciAoZm9yIG5vdykuCj4+IFNpbmNlIHRoZSBGUEdBIGhhcyBhIChzbWFsbCkg
ZmluaXRlIEZJRk8gZm9yIHRoZXNlIHRpbWVkIGNvbW1hbmRzIEkgYXNzdW1lKmQqIHRoZXJlIHdv
dWxkIGJlIGEgbGltaXQgb24gaG93IGZhc3QgSSBjYW4gc2VuZCB0aGVzZSBjb21tYW5kcy4KPj4g
Cj4+IEJhc2VkIG9uIEpvbmF0aG9uJ3MgYW5zd2VyIGhvd2V2ZXIsIGl0IHNlZW1zIHRoYXQgVUhE
IG9uIHRoZSBob3N0IGVuc3VyZXMgdGhhdCBpdCBvbmx5IHNlbmRzIGEgbWF4aW11bSBudW1iZXIg
b2YgdGltZWQgY29tbWFuZHMgc3VjaCB0aGF0IHRoZSBjb21tYW5kIHF1ZXVlcyBkbyBub3Qgb3Zl
cmZsb3cuCj4+IAo+PiBCdXQgaXQgc2VlbXMgdG8gYnJpbmcgYW5vdGhlciBpc3N1ZTogSWYgVUhE
IGhvbGRzIGJhY2sgdGhlc2UgbWVzc2FnZXMgdG9vIGxvbmcgdGhleSB3aWxsIGV2ZW50dWFsbHkg
YXJyaXZlIGxhdGUgYW5kIChzaWxlbnRseSkgZXhlY3V0ZSBub24tdGltZWQgKHRoZXJlYnkgZGVz
dHJveWluZyBhbnkgY29oZXJlbmNlIHRoZSBhcHBsaWNhdGlvbiBtaWdodCByZXF1aXJlKS4KPj4g
Cj4+IEkgYW0gdHJ5aW5nIHRvIGRlYnVnIFdIWSB0aGlzIGNhbiBoYXBwZW4sIHdoeSBpdCBkb2Vz
IE5PVCBoYXBwZW4gdG8gdGhlIGRhdGEgc3RyZWFtIChhbGwgZGF0YSBhcnJpdmVzIG9uIHRpbWUh
KSBhbmQgd2hhdCBJIGNhbiBkbyB0aGF0IEkgZW5zdXJlIG15IHRpbWVkIGNvbW1hbmRzIHdpbGwg
ZXhlY3V0ZSAqb24gdGltZSouCj4+IAo+PiBUaGFua3MsCj4+IEx1a2FzCj4+IAo+PiAKPj4gCj4+
IAo+PiAKPj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20K
