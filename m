Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBD01E521
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2019 00:22:56 +0200 (CEST)
Received: from [::1] (port=59530 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQfp0-00080U-TZ; Tue, 14 May 2019 18:22:54 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:37961)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hQfoS-0007sY-Th
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 18:22:50 -0400
Received: by mail-qk1-f180.google.com with SMTP id a64so294578qkg.5
 for <usrp-users@lists.ettus.com>; Tue, 14 May 2019 15:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Go7TYL8NKMwZKWKeU54E9aH4UQQfmvgKVQfJGmiGG8M=;
 b=HlVNi0TDxfiIVdkyqLucIdk6WOVCNPls+9fmGPD+GauuWTjBEZDFhgJ+Xx2aDYPa2P
 k7iJuNuOt2yBBbt7s6G3960dt/FQl0+dkyxguLWVX8fAmTOz2L4aoFt0c/llMksdCWPC
 27SdrWG7uGV29Hw6+vOwIUMjaREIYx5veX+5//qFyeOc8ffZ/Q5pJZKsDe1HpNkzKjCv
 JyV4gPPPCp7g+cJLO1uwyAZqXhiY7TqE6VT6K5vSWslFnI7os4IQcqaL9IkI65KEqaQy
 KVTjce+Mvm9Sd2Yx3gN+KPDIRXC4C0J21avjIrDPmH78VQQXW96ReFX/QkyHEb6vYRSP
 4uxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Go7TYL8NKMwZKWKeU54E9aH4UQQfmvgKVQfJGmiGG8M=;
 b=PzLe4cZRRHBYWJS4yH4+8zfKvRwF4Kgkxy4UUUHmx0qdSxRKrDMdaaAJOh7TgpkQYW
 M51Q5mWAsm/MZrG5k+H3B2WDfJGV2AlzLZAD/xCMZ6B8XUaJTBnyoy6IGlZVoKKxliF8
 iMCsSYd9B0PQ0N/vvV2qAvGc8SSzIqNeydqaoQBaMiv6uBA4/31OTMUE7JT22wCPjoKk
 5iY+xnbEZHgHkJ9ITT75pGki7NkG42yfUo6lLZ4SzHlQ7eXZAIZPA4Zrk0YRICa7Zjoe
 mPrTlqu7QlaDCz8/qp3SADzzyQOp1JPIc8+/ZdDLhJZPSqY7hTmtyu0Elvw1gHAOCVwh
 Dz3Q==
X-Gm-Message-State: APjAAAWRP0KiTpsBSb1eUY/RYp9L7TZe+F6K2kK1OKDGGSCcgII/P9xb
 E8wElcCTNvy9ibkjulaW59JKq3ME
X-Google-Smtp-Source: APXvYqwaxAz6FCxo11KQ3lzQhi03sw7fTzGKX5+XQ/mYM8fpW3rMT79Snpgg/gXEYNGkq/AZzQTWKw==
X-Received: by 2002:a37:b404:: with SMTP id d4mr31098926qkf.111.1557872500031; 
 Tue, 14 May 2019 15:21:40 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id k53sm148020qtb.65.2019.05.14.15.21.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 15:21:39 -0700 (PDT)
Message-ID: <5CDB3F72.7010802@gmail.com>
Date: Tue, 14 May 2019 18:21:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMt1L-_=8FpQ1YAP8hTjq8bkY9t2z1V7UAp75UAahS81XFnA0Q@mail.gmail.com>
 <3762a2ddf33ffe4430215fd0da6fe2692cf5914b.camel@ettus.com>
In-Reply-To: <3762a2ddf33ffe4430215fd0da6fe2692cf5914b.camel@ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Noise Capture with B200mini
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

T24gMDUvMTQvMjAxOSAwNjoxMyBQTSwgTWFyY3VzIE3DvGxsZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6Cj4gSGVsbG8gQW5kcmUsCj4KPiBJIHN1c3BlY3QgdGhyZWUgdGhpbmdzIGJlaW5nIGF0IHdv
cmsgaGVyZToKPgo+IDEuIFNwdXJzIGZyb20gdGhlIG1peGVyIC8gc3ludGhlc2l6ZXI6IFBsb3Qg
dGhlIHxGRlR8wrIgKGkuZS4gc2ltcGx5Cj4gcGxheSBiYWNrIHRoZSBmaWxlIHRocm91Z2ggYSBR
dCBHVUkgZnJlcXVlbmN5IHNpbmspIHdpdGggYSBoaWdoIEZGVAo+IGxlbmd0aC4gRG8geW91IHNl
ZSBwZWFrcyBpbiB0aGVyZT8gV2l0aCB0aGUgUFNEIChhc3N1bWluZyB0aGUgc2lnbmFsIGlzCj4g
V1NTKSBiZWluZyBib3RoIHRoZSBNYWduaXR1ZGUgc3F1YXJlIG9mIHRoZSBGb3VyaWVyIHRyYW5z
Zm9ybSBvZiB0aGUKPiBzaWduYWwgQU5EIHRoZSB2YWx1ZSBvZiB0aGUgRm91cmllciB0cmFuc2Zv
cm0gb2YgdGhlIGF1dG9jb3JyZWxhdGlvbgo+IGZ1bmN0aW9uLCBwZWFrcyBoZXJlIGluZGljYXRl
IGEgc2ludXNvaWRhbCBjb3JyZWxhdGlvbiwgYXMgeW91IG1pZ2h0IGJlCj4gb2JzZXJ2aW5nLgo+
Cj4gMi4gVGhlIGFudGktYWxpYXNpbmcgZmlsdGVycyBvZiBjb3Vyc2UgY29udmVydCBhIHBlcmZl
Y3RseSB3aGl0ZSBzaWduYWwKPiB0byBhIGJhbmRsaW1pdGVkIHNpZ25hbDogeW91IHNob3VsZCBz
ZWUgInJvdW5kaXNoIiByb2xsb2ZmIGF0IHRoZSBlZGdlcwo+IG9mIHRoZSBueXF1aXN0IHpvbmUu
IFRoYXQgb2YgY291cnNlICh0aHJvdWdoIHRoZSBpbnZlcnNlIEZUKQo+IGNvcnJlc3BvbmRzIHRv
IGEgbm9uLWRpcmFjIGF1dG9jb3JyZWxhdGlvbiBmdW5jdGlvbiwgaS5lLiBjb3JyZWxhdGlvbi4K
Pgo+IDMuIEJ5IG92ZXJkcml2aW5nIHRoZSBhbmFsb2cgcmVjZWl2ZSBjaGFpbiwgeW91IG1pZ2h0
IGJlIGJyaW5naW5nIGl0IHRvCj4gYmVoYXZlIG5vbmxpbmVhcmx5OyBhIHNpbXBsZSB0aG91Z2h0
IGV4cGVyaW1lbnQgc2hvd3MgdGhhdCB0aGlzIG1pZ2h0Cj4gYmUgcnVpbmluZyB0aGUgd2hpdGVu
ZXNzIG9mIHlvdXIgbm9pc2UgKGkuZS4gdGhlIHVuY29ycmVsYXRlZG5lc3MpOgo+IHVuY29ycmVs
YXRlZCBub2lzZSBtdXN0IGhhdmUgYSB6ZXJvIG1lYW4uCj4gU3F1YXJpbmcgemVyby1tZWFuIG5v
aXNlIG9mIGFueSB2YXJpYW5jZSA+IDAgbXVzdCBsZWFkIHRvIG5vbi16ZXJvIG1lYW4KPiBub2lz
ZS4KPiBaZXJvLW1lYW4gbm9pc2UgbWVhbnMgYSBkaXJhYyBpbXB1bHNlIGluIHRoZSBQU0QgYXQg
Zj0wLgo+IFRoYXQgbWVhbnMgY29ycmVsYXRlZG5lc3MuCj4KPiBBbHNvLCBub25saW5lYXJpdHkg
d2lsbCBsZWFkIHRvIGluY3JlYXNlZCBzcHVycyBhbmQgc3B1cgo+IGludGVybW9kdWxhdGlvbiAo
c2VlIDEuKS4KPgo+IFNvLCBtYWtlIHN1cmUgeW91J3JlIG5vdCBvdmVyZHJpdmluZyB5b3VyIHJl
Y2VpdmUgY2hhaW4g4oCTIGl0J3MgYQo+IGRlbGljYXRlIGZsb3dlciEKPgo+IEJlc3QgcmVnYXJk
cywKPiBNYXJjdXMKPgo+CkEgZGlvZGUgbm9pc2Ugc291cmNlIGlzIHJhcmVseSBwcm9kdWNpbmcg
bW9yZSB0aGFuICszNWRCIEVOUiwgd2hpY2ggCm1lYW5zIGEgUFNEIG9mIGFib3V0IC0xNDBkQm0v
SHogUFNELiAgVGhhdCdzIG5vd2hlcmUgY2xvc2UgdG8KICAgb3Zlci1kcml2aW5nIGFueXRoaW5n
LgoKSG93ZXZlciwgeW91IGFsc28gbmVlZCB0byBtYWtlIHN1cmUgdGhhdCB5b3VyIGdhaW4gaXMg
c2V0IGhpZ2ggZW5vdWdoIHNvIAp0aGF0IHlvdXIgZXh0ZXJuYWwgbm9pc2Ugc3dhbXBzIHRoaW5n
cyBsaWtlIGludGVybmFsIHNwdXJzCiAgICh3aGljaCwgQlRXLCBhcmUgcmF0aGVyIGluZXZpdGFi
bGUgaW4gYW55IGdlbmVyYWwtcHVycG9zZSBSRiBkZXNpZ24pIApieSAxMGRCIG9yIG1vcmUuCgpJ
IGhhdmUgdG8gcGF5IGF0dGVudGlvbiB0byB0aGlzIHdoZW4gZG9pbmcgYXN0cm9ub21pY2FsIGlu
dGVyZmVyb21ldHJ5IApzbyB0aGF0IEkgZG9uJ3QgZ2V0IGNvcnJlbGF0aW9ucyBmcm9tIGludGVy
bmFsIGNvcnJlbGF0ZWQgc291cmNlcyB0aGF0IEkKICAgZG9uJ3Qgd2FudC4gIEZvciAqY29uc3Rh
bnQqIGNvcnJlbGF0ZWQgc3B1cnMsIEkgdGVuZCB0byBqdXN0IHB1dCBhIApEQy1ibG9jayBhZnRl
ciBteSBjb25qdWdhdGUgbXVsdGlwbHksIHNpbmNlIGNvbnN0YW50LWxldmVsIGNvcnJlbGF0ZWQg
c3B1cnMKICAgd2lsbCB0ZW5kIHRvIHNob3cgdXAgYXMgYSBEQyBvZmZzZXQgaW4gdGhlIGNvcnJl
bGF0ZWQgb3V0cHV0LiBZb3VyIAptaWxlYWdlIG1heSB2YXJ5LCB2b2lkIHdoZXJlIHByb2hpYml0
ZWQsIGJhdHRlcmllcyBub3QgaW5jbHVkZWQsIGV0YywgZXRjLgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
