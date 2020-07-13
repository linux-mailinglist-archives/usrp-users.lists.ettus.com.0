Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D13F221CD91
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 05:17:13 +0200 (CEST)
Received: from [::1] (port=60892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juoxr-0006D2-Nj; Sun, 12 Jul 2020 23:17:11 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:40661)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1juoxn-00066X-Cn
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 23:17:07 -0400
Received: by mail-qk1-f179.google.com with SMTP id 80so10939257qko.7
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 20:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=WQSYhWgkqYm7Hx3BeMIRpTMB8cKReHZN9s5cA96LOGQ=;
 b=syrhIfNSKNkppYvNyd9pHcMdIVtHl+UU5+A5DdhbyiXLUgDe0I/Yb02jWrtVdgK+8j
 709SnpJ1rhaOfYs7viBCgdKnj/lffKIl9jGDbqmV6HbvHw5ex1z+R8uL0HjEn1v/+sQb
 9rF7CqTnBdB71zyW7gqt9ZulAQ4TD5tQDokP2xMeVtaSHOOuuAd6pVytBzxIYx9JzOgA
 JrdedsUfaXOC7ckdZR/TsEb9gMylvyGkVPGqv/pi30ujxLJ3aA4kXgoqCR2xBjmxI+B+
 81wjD1Q+A78NvrsTh/fdih3XpxfHuZm8qUt7apyufMkDWJgS2SAaA3q58sQ6tTeL6kYr
 DZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=WQSYhWgkqYm7Hx3BeMIRpTMB8cKReHZN9s5cA96LOGQ=;
 b=SSABgjJh8Or8baV/WJ62U9x2JG7kBSTOxBQG0zf52d9TsBrCp9RFKfmBfOTswJNxkA
 UXM0koaLCp6+N38khchQey1EaOqFv4Y3PkCWW/e/OlZCO4pcqSqv8sHtbVWePq01Xo2X
 yGnCW6V1HRFhcB37df4WFBt1/jUYNyBdd2qwJoTYrRnzdmN8ZbALSD+R5KpK3x0sBW+a
 +fiC2v1pTRAdkecmIjH6V2ASxEm0UkpKcvMkXb7OoEgJrYJDEOvgurxTvXABMrgqSFje
 7XKgVNxIHPmvSMbXkWLqaY3oIx4/Kg+Mg7idYnWZTDjrPDzUN3WiZD6SHVM1UywC56Zb
 T5fQ==
X-Gm-Message-State: AOAM5336eboVvl7GYtfN2quZ1OYhTTBC2fdmwyh9isjlfb+B1OHe2KTh
 1+hy+twH9CXS0dwwryXHOczs4MVh
X-Google-Smtp-Source: ABdhPJztPdkLfPgIfMadUEbrbnGw8zfrlnPbKFl+xZ2XIt5nQKMJWaZeW2MjQqtDNge07v84lFd7sQ==
X-Received: by 2002:a37:a14c:: with SMTP id k73mr78725882qke.145.1594610186590; 
 Sun, 12 Jul 2020 20:16:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 142sm17119020qki.35.2020.07.12.20.16.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Jul 2020 20:16:26 -0700 (PDT)
Message-ID: <5F0BD209.2090502@gmail.com>
Date: Sun, 12 Jul 2020 23:16:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Larry Dodd <101science@gmail.com>
CC: usrp-users@lists.ettus.com
References: <5F0BC230.3060007@gmail.com>
 <A2FF851F-5D41-4F17-8EF1-560BB2F141AF@gmail.com>
In-Reply-To: <A2FF851F-5D41-4F17-8EF1-560BB2F141AF@gmail.com>
Subject: Re: [USRP-users] B210 GNU HF Spectrum Analyzer
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

T24gMDcvMTIvMjAyMCAxMDo1OSBQTSwgTGFycnkgRG9kZCB3cm90ZToKPiBNYXJjdXMKPiBPayBU
aGFua3MgZm9yIHRoZSBpbmZvcm1hdGlvbiBNYXJjdXMuICBJIGhhdmUgYm90aCBhIFNweXZlcnRl
ciBhbmQgSGFtLWl0LXVwIGFscmVhZHkuIEkgbWF5IGdldCBhbiBOMjEwIGV2ZW50dWFsbHkuIFRo
ZSBYIHNlcmllcyB1bmZvcnR1bmF0ZWx5IGFyZSBvdXQgb2YgbXkgZnVuZGluZyByYW5nZS4gSSBh
cHByZWNpYXRlIHlvdXIgZXhwZXJ0aXNlIGFuZCBhZHZpY2UuIFRoYW5rcyEKPiBMYXJyeSwgSzRM
RUQKPgpJbmNpZGVudGFsbHksIHdoYXQga2luZCBvZiByYWRpbyBhc3Ryb25vbXkgYXJlIHlvdSBw
bGFubmluZyB0byBkbyBhdCAKdGhhdCBmcmVxdWVuY3kgcmFuZ2U/ICBJdCdzIG1vc3RseSwgYXMg
eW91IG1pZ2h0IGV4cGVjdCwgImEgbWVzcyIsIGJ1dAogICBzb21lIGRpc2NyZXRlIGZyZXF1ZW5j
aWVzIGFyZSBhdmFpbGFibGUgZm9yIHRoaW5ncyBsaWtlIHJpb21ldHJ5LCBhbmQgCmxvb2tpbmcg
YXQgc29sYXIgYW5kIGp1cGl0ZXIgcmFkaW8gYnVyc3RzLi4uCgoKPj4gT24gSnVsIDEyLCAyMDIw
LCBhdCAxMDowOCBQTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+Cj4+IO+7v09uIDA3LzEyLzIwMjAgMDk6NDIgUE0sIExhcnJ5IERvZGQgd3JvdGU6
Cj4+PiBNYXJjdXMKPj4+IEFjdHVhbGx5IEkgZG9u4oCZdCBoYXZlIHRoZSBCMjEwIG9yIHRoZSBM
RlJYIHlldCBhcyBJIGp1c3Qgb3JkZXJlZCB0aGVtIGJ1dCB0aGF04oCZcyBhbGwgSSBvcmRlcmVk
LiBEbyBJIG5lZWQgdG8gY2FuY2VsIHRoZSBvcmRlcj8KPj4+IExhcnJ5LCBLNExFRAo+PiBUaGUg
TEZSWCB3aWxsIGJlIG9mIG5vIHVzZSB0byB5b3UgdW5sZXNzIHlvdSBoYXZlIGEgcGxhdGZvcm0g
dGhhdCBpdCBjYW4gcGx1ZyBpbiB0by4KPj4KPj4gSSdkIGtlZXAgdGhlIEIyMTAgcGFydCBvZiB0
aGUgb3JkZXIsIGFuZCBvcmRlciBhIEhhbUl0VXAgb3IgU3B5VmVydGVyIHVwY29udmVydGVyIG1v
ZHVsZSwgd2hpY2ggdXAtY29udmVydHMgSEYgZnJlcXVlbmNpZXMgdG8KPj4gICBhIGhpZ2hlciBy
YW5nZSB0aGF0IHRoZSBCMjEwIGNhbiB0dW5lIHRvLgo+Pgo+PiBIYW1pVHVwIGlzIHNvbGQgYnkg
Tm9vRWxlYywgYW5kIHRoZSBTcHlWZXJ0ZXIgaXMgc29sZCBieSBodHRwczovL2FpcnNweS5jb20v
c3B5dmVydGVyLXIyLwo+Pgo+PiBBZ2FpbiwgdGhlIExGUlggaXMgYSAiZGF1Z2h0ZXJjYXJkIiwg
d2hpY2ggaXMgdXNlZCBpbiB2YXJpb3VzIFVTUlBTIHRoYXQgdXNlIHRoZSBkYXVnaHRlci1jYXJk
IGFyY2hpdGVjdHVyZSwgbGlrZSB0aGUgVVNSUDEsIFVTUlAyLAo+PiAgIE4yeHgsIFgzeHgsIEIx
MDAsIGFuZCBFMTAwLgo+Pgo+PiBCdXQgdGhlIEIyMTAgaXMgYW4gZXhjZWxsZW50IG1hY2hpbmUs
IGl0J3MganVzdCB0aGF0IGl0IGRvZXNuJ3QgdHVuZSBkb3duIHRvIEhGIGZyZXF1ZW5jaWVzLiAg
QnV0IHdpdGggdGhlIGFkZGl0aW9uIG9mIGEgKGZhaXJseSBjaGVhcCwgSU1ITykKPj4gICB1cC1j
b252ZXJ0ZXIsIHlvdSBjYW4gZXhwbG9yZSB0aGUgdGVycml0b3J5IHlvdSdyZSBpbnRlcmVzdGVk
IGluIHF1aXRlIG5pY2VseS4KPj4KPj4gSW4gdGVybXMgb2Ygc29mdHdhcmUsIGl0IHJlYWxseSBk
ZXBlbmRzIG9uIHdoYXQgeW91IHdhbnQgdG8gKmRvKi4gSWYgeW91IGp1c3Qgd2FudCBhbiBpbnRl
Z3JhdGVkIEZGVCBkaXNwbGF5IHRoYXQgY2FuIGNvdmVyIHlvdXIgMTVNSHoKPj4gICBvZiBiYW5k
d2lkdGgsIHlvdSBjYW4gdXNlIHRoZSB1aGRfZmZ0IGFwcGxpY2F0aW9uLCBhbmQgaGF2ZSBpdCBz
YW1wbGUgYXQgMTVNc3BzLS10aGlzIGFzc3VtZXMgeW91ciBjb21wdXRlciBpcyBhYmxlIHRvICJr
ZWVwIHVwIgo+PiAgIGF0IHRoYXQgcmF0ZS0tYSBnb29kIFVTQjMgY29udHJvbGxlciB3aWxsIGJl
IHJlcXVpcmVkLCBhbmQgYSBnb29kIG11bHRpLWNvcmUgbWFjaGluZSB0byBnbyB3aXRoIGl0Lgo+
Pgo+Pgo+Pj4+PiBPbiBKdWwgMTIsIDIwMjAsIGF0IDg6MDYgUE0sIE1hcmN1cyBEIExlZWNoIDxw
YXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4g77u/VGhlIEIyMTAgaXMgc2VsZiBj
b250YWluZWQgYW5kIHR1bmVzIGRvd24gdG8gNTBNaHogYXQgdGhlIGxvd2VzdC4gVGhlIExGUlgg
aXMgZm9yIG90aGVyIHR5cGVzIG9mIFVTUlBzLiBTbyBmaXJzdCB0aGluZ3MgZmlyc3QsIHdoYXQg
dHlwZSBvZiBVU1JQIGRvIHlvdSBoYXZlPwo+Pj4+Cj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+
Pj4+Cj4+Pj4+IE9uIEp1bCAxMiwgMjAyMCwgYXQgNzo0MyBQTSwgTGFycnkgRG9kZCB2aWEgVVNS
UC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiDv
u79JIG5lZWQgdG8gc2V0IHVwIGEgR05VIEhGIHNwZWN0cnVtIGFuYWx5emVyIHdpdGggYSB3YXRl
cmZhbGwgdXNpbmcgbXkgQjIxMCwgTE5BLCBhbmQgTEZSWCBkYXVnaHRlciBib2FyZC4gVGhlIHRh
cmdldCB3b3VsZCBiZSBhIDE1IHRvIDMwIE1IeiAob3Igd2lkZXIpIGluc3RhbnRhbmVvdXMgc3Bl
Y3RydW0gZm9yIFJhZGlvIEFzdHJvbm9teSB3b3JrLiBSYXRoZXIgdGhhbiByZS1jcmVhdGluZyBz
b21ldGhpbmcgdGhhdCBhbHJlYWR5IGV4aXN0cyB3aGVyZSBjb3VsZCBJIGdldCBhIHNpbWlsYXIg
R05VIGZsb3dncmFwaD8gU2luY2UgSSBhbSBicmFuZCBuZXcgdG8gVVNSUCBhbnkgYWR2aWNlIGlz
IHZlcnkgd2VsY29tZS4KPj4+Pj4gVGhhbmtzLAo+Pj4+PiBMYXJyeSwgSzRMRUQKPj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4g
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCg==
