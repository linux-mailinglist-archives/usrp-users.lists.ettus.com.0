Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 030B912BD54
	for <lists+usrp-users@lfdr.de>; Sat, 28 Dec 2019 11:54:59 +0100 (CET)
Received: from [::1] (port=47202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1il9kH-0004X6-VY; Sat, 28 Dec 2019 05:54:57 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:53984)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1il9kE-0004Tf-GL
 for usrp-users@lists.ettus.com; Sat, 28 Dec 2019 05:54:54 -0500
Received: by mail-wm1-f44.google.com with SMTP id m24so10072840wmc.3
 for <usrp-users@lists.ettus.com>; Sat, 28 Dec 2019 02:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=XpoHv1GkdN7HCb+6BL1xMn7mfQr85psGaVME59DB5T0=;
 b=wXPAwbGjRRGMdkAFQxYn7UkKK1vKKIBAsk2e/MbEBI3rT2S4h1sZClrFWDtAUDGbzU
 lbhjzWcqq0W4+Js/Sa+fGXVHZz7IPPUvtPAZLPB0D23XUedxO4ble1T2iiUSCmZhUp/H
 Ukbm4m7Lz8o1nG52MqQL2gr0MI1jXBP65At4aE6ZOVnOs2UxsUzcv7+Hpbb09dOyO7PH
 jyDyGxEdVp28KZHKIWZAbCkE8LP3MbD2tJvl7YxXZtjuQ2TNhkmJ9k+NIFfkGlgWc65w
 OzGzWHJhJMq28mi9GihPVJPtguk8nqiDYHD0ECrVZENaPgL7BgYDa/PTSrfAEVM3rCJX
 Rabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=XpoHv1GkdN7HCb+6BL1xMn7mfQr85psGaVME59DB5T0=;
 b=rciisvV7L/g38ObgpcKdB/liDCw51yaLB0n3T7fkaiBTVSZW1ay9nPQHJObBpaa3ri
 CHDWOZBKO8WsloskDYWxH8Ii0zAlE6KBdFelA/AEkS+x6PuV9Tzinbo5OXpcDhQ3AkbJ
 eHckCxdJZBzPlyjKUMm8aIfO8Ek5/I9RPAVClIt6f34j/JJtdcty7sijUDGoxeZPomdP
 ixCvawJhOFC9t/YCXBzHxUJ2VXK9WDsA0y9Jyl236e5QbfnmT45RULosVQrg69KZkODF
 9QVGaqSLlAF77pY5Rx0ElrSW3fp93ZsS2i8+O8Vs8H/WWDGoluSNHnBpjOcW86t0sN7U
 bOpA==
X-Gm-Message-State: APjAAAX0nixSpSMaZlZ3RkbN/Zxwq1xt8aCBlZMkRwGP3gdVPOZHz7xp
 TL9KJkC2NzCNLKvWAUY9rAk993VX
X-Google-Smtp-Source: APXvYqyxiqgWtXzv49CWxFkoPUCmyikvaVSiVS11MjJNbbKB34jBPoWN6gSq1XcQJA6ETqSxdVzBPw==
X-Received: by 2002:a1c:f407:: with SMTP id z7mr22674417wma.72.1577530453341; 
 Sat, 28 Dec 2019 02:54:13 -0800 (PST)
Received: from racer ([46.183.103.8])
 by smtp.gmail.com with ESMTPSA id b16sm38791907wrj.23.2019.12.28.02.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 02:54:12 -0800 (PST)
Message-ID: <d1fc6b78e3a630e731136253275bf8a79bf1a3bb.camel@ettus.com>
To: "Melnikov, Roman" <Roman.Melnikov@verint.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 28 Dec 2019 11:54:02 +0100
In-Reply-To: <14079f7f31174b1092aa00039ba9602b@verint.com>
References: <14079f7f31174b1092aa00039ba9602b@verint.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP B205 mini + uhd::usrp::multi_usrp_uhd +
 multithreading
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

SGkgUm9tYSwKCkkgbXVzdCBhZG1pdCB0aGF0IHRoaXMga2luZCBvZiBtdWx0aS1jb3JlIGxpYnVz
YiBoYW5kbGluZyB3YXNuJ3Qgb25lIG9mCnRoZSBvcmlnaW5hbCBkZXNpZ24gZ29hbHMuCkVzc2Vu
dGlhbGx5LCBpdCAqKmNvdWxkKiogd29yayB3aXRoIGxpdHRsZSBjb2RlIG1vZGlmaWNhdGlvbiB0
byBOT1QKcmV1c2UgdGhlIHNhbWUgbGlidXNiIGNvbnRleHQgKG9uIGFueXRoaW5nIGJ1dCBXaW5k
b3dzLCBhdCBsZWFzdCksIGJ1dAp0aGUgZmFjdCB0aGF0IHdlIGNhY2hlIHRoZSBsaWJ1c2IgY29u
dGV4dCBjZXJ0YWlubHkgaGFzIGEgcmVhc29uLgoKQW55d2F5cywgeW91IGNvdWxkIGRvIChyb3Vn
aGx5KSB0aGUgZm9sbG93aW5nOgoKUmVtb3ZlIHRoZSBjYWNoaW5nIGluIGxpYnVzYjFfYmFzZS5j
cHAuIFRoYXQgd291bGQgcmVzdWx0IGluICphIGxvdCogb2YKbGlidXNiIGNhbGxzIGV2ZXJ5IHRp
bWUgeW91IGNyZWF0ZSBhIG11bHRpX3VzcnAsIGJ1dCBob25lc3RseSwgaXQgY291bGQKd29yay4g
SGlnaGx5IHVudGVzdGVkIQoKQmVzdCByZWdhcmRzLApNYXJjdXMKCk9uIFN1biwgMjAxOS0xMi0y
MiBhdCAxNjoxMSArMDAwMCwgTWVsbmlrb3YsIFJvbWFuIHZpYSBVU1JQLXVzZXJzCndyb3RlOgo+
IEhlbGxvIGV2ZXJ5b25lLAo+ICAKPiBJIGhhdmUgOCBiMjA1bWluaSBkZXZpY2VzLCBhbmQgSSB1
c2UgdWhkOjp1c3JwOjptdWx0aV91c3JwOjptYWtlKOKApikKPiAgCj4gSSB0cnkgdG8gcmVhZCBm
cm9tIGVhY2ggZGV2aWNlIGZyb20gZGlmZmVyZW50IHRocmVhZAo+ICAKPiBXaGVuIEkgcnVuIHRo
ZSBwcm9maWxlciB3aGF0IEkgc2VlIGlzIHRoYXQgbGlidXNiIGhhcyBzaW5nbGUgdGhyZWFkCj4g
dGhhdCBkbyBwb2xsaW5nICEKPiAgCj4gV2hlbiBJIHJ1biA4IGFwcGxpY2F0aW9ucyBlYWNoIGlu
IGRpZmZlcmVudCBwcm9jZXNzIG15IHBlcmZvcm1hbmNlIGlzCj4gT0suIFNpbmNlIEkgcmVhbGx5
IGhhdmUgbXVsdGlwbGUgY29udGV4dHMgKCBsaWJ1c2IgcG9sbGluZyApCj4gcmVjZWl2aW5nIGRh
dGEuCj4gIAo+IEhlcmUgaXMgcGVhY2Ugb2YgY29kZSBJIHJ1biBmb3IgZWFjaCBVU1JQIGRldmlj
ZToKPiAgCj4gc3ByaW50ZiAoIGFyZ3MsCj4gICAgICAgICAgICAgIAo+ICJ0eXBlPWIyMDAsZW5h
YmxlX3VzZXJfcmVncyxzZXJpYWw9JVgsbWFzdGVyX2Nsb2NrX3JhdGU9JWQscmVjdl9idWZmXwo+
IHNpemU9JWQsZnBnYT0lcyIsCj4gICAgICAgICAgICAgICB0aGlzLT5JZCwKPiAgICAgICAgICAg
ICAgICggaW50ICkgTWF4TWFzdGVyQ2xvY2tSYXRlLAo+ICAgICAgICAgICAgICAgKCBpbnQgKSBS
RUNWX0JVRkZFUl9TSVpFX0JZVEVTLAo+ICAgICAgICAgICAgICAgZnBnYV9wYXRoICk7Cj4gIAo+
IF91c3JwID0gdWhkOjp1c3JwOjptdWx0aV91c3JwOjptYWtlICggdWhkOjpkZXZpY2VfYWRkcl90
ICggYXJncyApICk7Cj4gIAo+IC8vIGNvbmZpZ3VyYXRpb24g4oCmLgo+ICAKPiBfc3RyZWFtID0g
X3VzcnAtPmdldF9yeF9zdHJlYW0gKCBzdHJlYW1fYXJncyApOwo+ICAKPiBJIGhhdmUgOCBzdHJl
YW1lcnMgb2JqZWN0cyBlYWNoIGluIGl0cyBvd24gdGhyZWFkLCBkb2luZwo+ICAKPiBfc3RyZWFt
LT5yZWN2ICgg4oCmICkgY2FsbAo+ICAKPiBXaWxsIGFwcHJlY2lhdGUgYW55IGhlbHAuCj4gIAo+
IFJvbWEgTS4gIAo+ICAKPiAgCj4gCj4gCj4gVGhpcyBlbGVjdHJvbmljIG1lc3NhZ2UgbWF5IGNv
bnRhaW4gcHJvcHJpZXRhcnkgYW5kIGNvbmZpZGVudGlhbAo+IGluZm9ybWF0aW9uIG9mIFZlcmlu
dCBTeXN0ZW1zIEluYy4sIGl0cyBhZmZpbGlhdGVzIGFuZC9vcgo+IHN1YnNpZGlhcmllcy4gVGhl
IGluZm9ybWF0aW9uIGlzIGludGVuZGVkIHRvIGJlIGZvciB0aGUgdXNlIG9mIHRoZQo+IGluZGl2
aWR1YWwocykgb3IgZW50aXR5KGllcykgbmFtZWQgYWJvdmUuIElmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZAo+IHJlY2lwaWVudCAob3IgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoaXMgZS1tYWls
IGZvciB0aGUgaW50ZW5kZWQKPiByZWNpcGllbnQpLCB5b3UgbWF5IG5vdCB1c2UsIGNvcHksIGRp
c2Nsb3NlIG9yIGRpc3RyaWJ1dGUgdG8gYW55b25lCj4gdGhpcyBtZXNzYWdlIG9yIGFueSBpbmZv
cm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBtZXNzYWdlLiBJZiB5b3UKPiBoYXZlIHJlY2VpdmVk
IHRoaXMgZWxlY3Ryb25pYyBtZXNzYWdlIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHVzIGJ5Cj4g
cmVwbHlpbmcgdG8gdGhpcyBlLW1haWwuCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
