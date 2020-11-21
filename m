Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A68212BBF32
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 14:29:06 +0100 (CET)
Received: from [::1] (port=57388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgSwp-0002J8-3v; Sat, 21 Nov 2020 08:29:03 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:36578)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kgSwl-0002EV-Mt
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 08:28:59 -0500
Received: by mail-qt1-f179.google.com with SMTP id e60so120676qtd.3
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 05:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=T01hPG1l/tjP0qcgeU6ZHYmLT0FY6voFgVIbJm9ZZ7Q=;
 b=tQXRYguTEbqHEtmf2R6+G4HZdbdF08+zfZv5Wi948hO3o3rxAPPiwfeazmF+sfSoz8
 NjqZz+NAQRBBtxnqSDb623bDqoUV8YUo2C6wddo82hhJWyJWKKd+jIzAj+vaiuYeCDT4
 rT0tJbjJLFpsmAHPrTddJloaRcPzp+KgXFdkkBC1UadQmVn0AFO/Y+JMDHwrbKc078ZL
 AFYjI3d/rPQSYu48q1eVz5lYgV0pbHSagp73GciSXcDKq/KGMnITro7qkktOTj2u73Ha
 vtwFj1cfrD5l/dtqTOjbPKOGuf6z4P+EyAHVOduWgWNYlRC3gqu3R/OZ5gHhRpqgLzgK
 HURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=T01hPG1l/tjP0qcgeU6ZHYmLT0FY6voFgVIbJm9ZZ7Q=;
 b=ZQkshl6Bc7APkMzFUBeSJxgzUTPBsSVMn+CClYJY7LlLE10xp0PuozzvwAOy3S13N2
 fu5tQexTIfkcQzb0SwL2kHRstsF4LcgfhRZPEPzcqxiT/xFATcGQiEUiwS+USo7d3Jlm
 ci0eGDBZY8k+NA7cmyrSZCAomKhTjrB1JwmuoIl7XX+xjFaaUcy/9H7KJr2V4MrSypxW
 ujbA7W+vqVSEm4jmlF+7FAyLuBzDhyirv3RALM71BerG8HnhQj+fRKemJ1BByxaMaXgJ
 b0THv6zjyUkljMDs1q/EjmfSKjY5lAiMVBrmfViLLE345WaGGxi8AquSZJjR2tVsGlEh
 pD/w==
X-Gm-Message-State: AOAM530MvT319PRv6x4+sQGJhMyM5QzXgL9pz9HsIdvgoj6+qUhHIdG6
 KR3kugquGUJlImSvENmxEjcO1g==
X-Google-Smtp-Source: ABdhPJwZOsWKdnDq0TubuIzAWAVoc/XoCDzp+evTWveESuXg5WNq6EQ0QIc2gwLcvzZNL++oN4j6eA==
X-Received: by 2002:a05:622a:14e:: with SMTP id
 v14mr20154401qtw.298.1605965298967; 
 Sat, 21 Nov 2020 05:28:18 -0800 (PST)
Received: from [10.8.189.159] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id w54sm4277179qtb.0.2020.11.21.05.28.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Nov 2020 05:28:18 -0800 (PST)
Message-ID: <7580d45f2b0de0676988b77bdfdebab22866e1b7.camel@virginia.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Date: Sat, 21 Nov 2020 08:28:15 -0500
In-Reply-To: <5FB5C4E0.7060201@gmail.com>
References: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>
 <5FB5ADDB.4030608@gmail.com>
 <7f74f5e9fd21affec4856445c013b9dea6f58c2f.camel@virginia.edu>
 <5FB5C4E0.7060201@gmail.com>
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
Subject: Re: [USRP-users] X310 UBX digital tune not occurring?
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
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

TWFyY3VzLAoKSSB0cmllZCBpdCB3aXRob3V0IHRpbWVkIGNvbW1hbmRzIGxhc3QgbmlnaHQuIEl0
IHdhcyBsYW5kaW5nIG9uIHRoZQpzYW1lIGZyZXF1ZW5jaWVzIGFzIGl0IGRpZCB3aXRoIHRpbWVk
IGNvbW1hbmRzIGkuZS4gZGlkbid0IGZpeCB0aGF0CnByb2JsZW0uIAoKRHVzdGluCgpPbiBXZWQs
IDIwMjAtMTEtMTggYXQgMjA6MDUgLTA1MDAsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToKPiBPbiAx
MS8xOC8yMDIwIDA3OjM0IFBNLCBEdXN0aW4gV2lkbWFubiB3cm90ZToKPiA+IE9uIFdlZCwgMjAy
MC0xMS0xOCBhdCAxODoyNyAtMDUwMCwgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzCj4g
PiB3cm90ZToKPiA+ID4gCj4gPiBNYXJjdXMsCj4gPiAKPiA+IE9oLCBzb3JyeSwgSSBtaXNzZWQg
dGhlIGZpcnN0IGJpdC4gSSdtIHVzaW5nIHRoZSBvbi1ib2FyZCBjbG9jay4KPiA+IEFuZAo+ID4g
cGVyaGFwcyBJIHNob3VsZCBleHBsYWluIHRoZSB0YWJsZSB3aXRoIGEgbGl0dGxlIGJpdCBtb3Jl
IGRldGFpbDoKPiA+ICogMXN0IGNvbDogVGhlICp0YXJnZXQqIGZyZXF1ZW5jeS4gVGhlIFJYIHdh
cyB0dW5lZCB0byB0aGlzCj4gPiBmcmVxdWVuY3kuCj4gPiBUaGUgVFggd2FzIHR1bmVkIHRvIHRo
YXQgZnJlcXVlbmN5ICsgYW4gb2Zmc2V0IChpbiB0aGlzIGNhc2UsIDUwS0h6Cj4gPiBmb3IKPiA+
IGFsbCBkYXRhcG9pbnRzKS4KPiA+ICogMm5kIGNvbDogV2hlcmUgdGhlIHRvbmUgaXMgZXhwZWN0
ZWQgdG8gbGFuZCwgYm90aCBiaW4gYW5kCj4gPiAoYmFzZWJhbmQpCj4gPiBmcmVxdWVuY3k7IGlu
IHRoaXMgY2FzZSwgYSA1MEtIeiBvZmZzZXQgZm9yIGFsbCBkYXRhcG9pbnRzLCB3aGljaAo+ID4g
Y29ycmVzcG9uZGVkIHRvIGJpbiA1MjQgd2l0aCBhIDJeMjAgRkZULgo+ID4gKiAzcmQgY29sOiB3
aGVyZSB0aGUgdG9uZSB3YXMgb2JzZXJ2ZWQgKGJvdGggYmluIGFuZCBmcmVxdWVuY3kpLgo+ID4g
KiA0dGggY29sOiBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHRhcmdldCBhbmQgZXhwZWN0YXRpb24K
PiA+ICogNXRoIGNvbDogZHNwIGZyZXEgKGZyb20gdWhkOjp0dW5lX3Jlc3VsdF90LmFjdHVhbF9k
c3BfZnJlcSkKPiA+ICogNnRoIGNvbDogd2hhdCB0aGUgZGlmZmVyZW5jZSB3b3VsZCBiZSBpZiBJ
IG9mZnNldCB0aGUgb2JzZXJ2ZWQKPiA+IGZyZXF1ZW5jeSBieSB0aGUgY2xhaW1lZCBkc3AgZnJl
cXVlbmN5Cj4gPiAKPiA+IER1c3Rpbgo+ID4gCj4gUmlnaHQsIEkgdW5kZXJzdGFuZCB0aGUgY2hh
cnQgbm93Lgo+IAo+IFNvLCB0aGlzIGlzIHJhdGhlciBvZGQuCj4gCj4gSSBhc3N1bWUgdGhpcyBp
cyB1bmRlciB0aW1lZCBjb21tYW5kcywgeWVzP8KgIFdoYXQgaGFwcGVucyBpZiB5b3UKPiBkb24n
dCAKPiB1c2UgdGltZWQgY29tbWFuZHMtLWp1c3QgdG8gY2hlY2sgdG8gc2VlCj4gwqDCoCBpZiB0
aGUgRFNQIGZyZXF1ZW5jeSBjaGFuZ2UgaXMgZ2V0dGluZyBza2lwcGVkIHVuZGVyIHRpbWVkCj4g
Y29tbWFuZHM/Cj4gCj4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbQo=
