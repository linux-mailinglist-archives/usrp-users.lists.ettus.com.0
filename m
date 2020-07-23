Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBEC22B5B2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 20:31:04 +0200 (CEST)
Received: from [::1] (port=36006 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyfzh-0002OL-8o; Thu, 23 Jul 2020 14:31:01 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:42097)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <luke.whittlesey@gmail.com>)
 id 1jyfzd-0002Gh-6H
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 14:30:57 -0400
Received: by mail-lf1-f42.google.com with SMTP id h8so3807673lfp.9
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 11:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=46LAGnQoFJ+LXNfG3Mu0vXbVVdPMMzy/yhn+K3swUis=;
 b=XUSHZur9aMkcu1YrnhBiXyVfTf+f7QuvLZstT7X6J/fTlHR7ekVcqSAe2HdaixEj+T
 3WyHZSUzgmvExL4gt+HyEY4X7V/ZEeoVe9Quwh/clpaec+ylPt0uJdezc29F+epF95Fa
 2Z0kvEbsK7Jg4eMkpM4QzFd1NBfhuCIvsUjYQo2nsLOP7i/g1qsyLX9hLuY/rG2LKit9
 QawuJUZ6Wi3TTmnrECBrdn+s2+3wdUUuewiDOEOdOmpWz/y9aGC6vJSJ1clYTuw/Dk68
 mak/osYZH6gec4ZwgPnPzd663QNRuJpJLGstIYKazstHlRA1Qb87ltap4nZfvLVilKx/
 HiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=46LAGnQoFJ+LXNfG3Mu0vXbVVdPMMzy/yhn+K3swUis=;
 b=rGafGZeOX2Zq28g1z23A8dFPln+rNXcm40c/XnoaaA0IFAunlwQNAgjmrZ4O3Z5Yq4
 AIAz2wJbby+coODTUpFW76i91G+iVFB2HvX2Z8Wx2bAYql0Jgfgt5L3J/McI1vlzkqXy
 x58QLZ7OqFC35qN5K1aShAZnQC8gBouRXMt5g8ZAblGYoAl8W3U3QI8e8M4g0zR05g3T
 cIIrvu7p0DIW0OQCJ8T9DJ4tIATaYdtiups7AoZG2KVkzqmUqFhsjgDznJuynJELs12x
 NqT2yg1dDrFQzJmXEcgCIpOst/u22KD9I1IogSkRmdOAT/mCheFwu8TaYKCaTGzh7E82
 oqyg==
X-Gm-Message-State: AOAM530hYkwHILGPDo6vLGIU0KImK/GVIECO3euv5XosjMfmasduKrag
 brLynCO93zxNghaLAs4F0wpemkQuYEaHz8RHbOo=
X-Google-Smtp-Source: ABdhPJys34P5FPSLbTAxwS9CYlSw6jDEzrAJAfJudnUdUnZXw5ku6pxsQqV17v4l7t9dW/upYm5xAZ/9Z2v+UEFhtKU=
X-Received: by 2002:a19:e204:: with SMTP id z4mr2895595lfg.121.1595529015626; 
 Thu, 23 Jul 2020 11:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
 <5F187B7C.2090909@gmail.com>
 <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
 <5F189F72.7060404@gmail.com>
 <CA+ce6i1t0VGE3ZpD10SAPrkJ3F0pMKRGiqJqYjeYtKWhyxS0Eg@mail.gmail.com>
 <CA+w2ZyuKtuKzSLXjvG4q6QjXyG8uWkfwcJthw1=7W98JkmqFzg@mail.gmail.com>
In-Reply-To: <CA+w2ZyuKtuKzSLXjvG4q6QjXyG8uWkfwcJthw1=7W98JkmqFzg@mail.gmail.com>
Date: Thu, 23 Jul 2020 14:24:41 -0400
Message-ID: <CA+ce6i2d2RXq7pWYepG4tCwpFE9e6sRrF7M0jeao9om=OFrzRQ@mail.gmail.com>
To: David Carsenat <carsenat@gmail.com>
Subject: Re: [USRP-users] C++ thread Priority.
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
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
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

WW91IG1pZ2h0IHRyeSBuaWNlIDogaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTmljZV8l
MjhVbml4JTI5CgpPbiBUaHUsIEp1bCAyMywgMjAyMCBhdCAxOjEzIFBNIERhdmlkIENhcnNlbmF0
IDxjYXJzZW5hdEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gTWFueSB0aGFua3MgYnV0IEkgYW0gYWxy
ZWFkeSBpbiBPMy4KPgo+IExlIGpldS4gMjMganVpbC4gMjAyMCDDoCAxNTo0NiwgTHVrZSBXaGl0
dGxlc2V5IHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gYSDDqWNy
aXQgOgo+Pgo+PiBUaGlzIGlzIHByb2JhYmx5IG5vdCB0aGUgaXNzdWUsIGJ1dCBzb21ldGltZXMg
SSBmb3JnZXQgdG8gdHVybiB0aGUKPj4gY29tcGlsZXIgb3B0aW1pemF0aW9ucyBvbiBhbmQgdGhh
dCBjYW4gZ2l2ZSB5b3UgYSBsaXR0bGUgYm9vc3QKPj4gZGVwZW5kaW5nIG9uIHRoZSBjb2RlLiBn
Y2MgLU8yIC4uLgo+Pgo+PiBPbiBXZWQsIEp1bCAyMiwgMjAyMCBhdCA0OjIwIFBNIE1hcmN1cyBE
LiBMZWVjaCB2aWEgVVNSUC11c2Vycwo+PiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdy
b3RlOgo+PiA+Cj4+ID4gT24gMDcvMjIvMjAyMCAwMzoxOCBQTSwgUm9iIEtvc3NsZXIgd3JvdGU6
Cj4+ID4KPj4gPiBJZiB5b3UgYXJlIHVzaW5nIFgzMTAgb3IgTjMxMCwgeW91IG1pZ2h0IHRyeSBE
UERLLiBFdmVuIHRob3VnaCBpdCBpcyBhIHBhaW4sIGl0IHdvdWxkIGJlIGEgd2hvbGUgbG90IGVh
c2llciB0aGFuIHRyeWluZyBhIG5ldyBPUywgSSBiZWxpZXZlLiAgVXNpbmcgRFBESyBlbmFibGVk
IG15IGFwcGxpY2F0aW9uICh3aGljaCB3YXMgc3RvcmluZyBSeCBzYW1wbGVzIHRvIFNTRCkgdG8g
cnVuIGEgYnVuY2ggZmFzdGVyIHRoYW4gd2l0aG91dCBEUERLLgo+PiA+Cj4+ID4gVGhhbmtzLCBS
b2IuICBEUERLIGRvZXMgZmFjaWxpdGF0ZSBsb3dlci1jb3N0IGhpZ2hlciBkYXRhIHRyYW5zZmVy
IGludG8gdGhlIGFwcGxpY2F0aW9uLiAgVGhhdCBtYXksIG9yIG1heSBub3QsIGJlIHRoZSBpc3N1
ZSBoZXJlLgo+PiA+Cj4+ID4KPj4gPgo+PiA+IE9uIFdlZCwgSnVsIDIyLCAyMDIwIGF0IDE6NDcg
UE0gTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4+ID4+Cj4+ID4+IE9uIDA3LzIyLzIwMjAgMDE6NDAgUE0sIERhdmlkIENh
cnNlbmF0IHdyb3RlOgo+PiA+Pgo+PiA+PiBJdCBqdXN0IHB1dCByZWNlaXZlZCBzYW1wbGVzIGlu
IGEgY2lyY3VsYXIgYnVmZmVyIGFuZCAgdHJhbnNtaXQgdGhpcyBidWZmZXIuIEEgZGVsYXkgbGlu
ZS4KPj4gPj4gQnV0IHRoZSBTUiBpcyA1MCBNc3BzLi4uIDggYml0cy4KPj4gPj4gIERvIHlvdSBo
YXZlIGlkZWFzIGFib3V0IE9TID8KPj4gPj4gVGhhbmtzLgo+PiA+Pgo+PiA+PiBUaGVyZSBhcmUg
Y29tbWVyY2lhbCByZWFsLXRpbWUgbG93LWxhdGVuY3kgT1MgIm91dCB0aGVyZSIgdGhhdCBhcmVu
J3QgZnJlZSwgYW5kIFVIRCBoYXMgbm90IGJlZW4gcG9ydGVkIHRvIHRoZW0gYXMgZmFyIGFzIEkg
a25vdy4KPj4gPj4KPj4gPj4KPj4gPj4gTGUgbWVyLiAyMiBqdWlsLiAyMDIwIMOgIDE5OjMzLCBN
YXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4+ID4+
Pgo+PiA+Pj4gT24gMDcvMjIvMjAyMCAwMToyMiBQTSwgRGF2aWQgQ2Fyc2VuYXQgd3JvdGU6Cj4+
ID4+Pgo+PiA+Pj4gT2sgdGhhbmtzLiBUaGUgY29kZSBpcyByZWFsbHkgc2ltcGxlIGFuZCBpIGRv
bid0IHRoaW5rIGl0IGNhbiBiZSBvcHRpbWl6ZWQuCj4+ID4+PiBJcyB0aGVyZSBvdGhlciBsaW51
eCBPUyBpIGNhbiB0cnkgPwo+PiA+Pj4gVGhhbmtzIGFnYWluLgo+PiA+Pj4KPj4gPj4+IElmIGl0
J3MgcmVhbGx5IHNpbXBsZSwgd2hhdCBpcyB0aGUgc2FtcGxlLXJhdGU/ICBJcyBpdCB0cnlpbmcg
dG8gd3JpdGUgZGF0YSB0byB0aGUgZmlsZXN5c3RlbSBhdCBoaWdoIHJhdGVzPyAgTm8gYW1vdW50
IG9mIGNvZGUgb3B0aW1pemF0aW9uIGNhbiBnZXQKPj4gPj4+ICAgYXJvdW5kIHRoZSBmYWN0IHRo
YXQgdGhlIGRpc2sgc3Vic3lzdGVtIGlzIHZlcnkgc2xvdyBjb21wYXJlZCB0byBvdGhlciBwYXJ0
cyBvZiB0aGUgY29tcHV0ZXIsIGxpa2UgbWVtb3J5LCBDUFUsIGV0Yy4KPj4gPj4+Cj4+ID4+Pgo+
PiA+Pj4gTGUgbWVyLiAyMiBqdWlsLiAyMDIwIMOgIDE5OjEyLCBNYXJjdXMgRC4gTGVlY2ggdmlh
IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiBhIMOpY3JpdCA6Cj4+ID4+
Pj4KPj4gPj4+PiBPbiAwNy8yMi8yMDIwIDEyOjU2IFBNLCBEYXZpZCBDYXJzZW5hdCB2aWEgVVNS
UC11c2VycyB3cm90ZToKPj4gPj4+PiA+IEhlbGxvLCBJIGhhdmUgbWFkZSBhIGMrKyBjb2RlIHdo
aWNoIHNlbmRzIHNhbXBsZXMgaW4gdGhlIG1haW4gZnVuY3Rpb24KPj4gPj4+PiA+IGFuZCByZWNl
aXZlcyBzYW1wbGVzIGluIGEgdGhyZWFkIGxhdW5jaGVkIGluIHRoaXMgbWFpbiBmdW5jdGlvbi4K
Pj4gPj4+PiA+IEkgaGF2ZSByZWFkIHRoYXQgd2UgY2FuIHNldCB0aGUgcmVhbCB0aW1lIHByaW9y
aXR5IHdpdGggdGhlCj4+ID4+Pj4gPiBzZXRfdGhyZWFkX3ByaW9yaXR5IGZ1bmN0aW9uLgo+PiA+
Pj4+ID4gSSBoYXZlIHRyaWVkIHRvIGNhbGwgdGhpcyBmdW5jdGlvbiAod2l0aCBwYXJhbWV0ZXJz
ICgxLHRydWUpIGluc2lkZQo+PiA+Pj4+ID4gdGhlIG1haW4gZnVuY3Rpb24gYnV0IGl0IGRvZXNu
J3Qgc2VlbSB0byBjaGFuZ2UgdGhlIHByaW9yaXR5IG9mIHRoZQo+PiA+Pj4+ID4gZXhlY3V0YWJs
ZS4gV2hlbiBJIGxhdW5jaCBhbm90aGVyIGFwcGxpY2F0aW9uLCBJIGhhdmUgbG90cyBvZiBVIGFu
ZCBPLgo+PiA+Pj4+ID4KPj4gPj4+PiA+IERvIHlvdSBoYXZlIGFuIGlkZWEgaG93IHRvIGFjaGll
dmUgd2hhdCBJIHdhbnQgPyBpLmUuIGFsbG9jYXRlIGFsbW9zdAo+PiA+Pj4+ID4gYWxsIGNvbXB1
dGVyIHJlc291cmNlcyB0byBteSB1aGQgcHJvZ3JhbSA/IFdoYXQgaXMgdGhlIGJlc3Qgd2F5ID8K
Pj4gPj4+PiA+IEkgaGF2ZSBhbHJlYWR5IHR1bmVkIG15IHVidW50dSB3aXRoIGFkdmljZSBnaXZl
biBvbiBFdHR1cyBzaXRlLigKPj4gPj4+PiA+IGNwdS1mcmVxIHNldCBldGMuLi4pCj4+ID4+Pj4g
Pgo+PiA+Pj4+ID4gTWFueSB0aGFua3MKPj4gPj4+PiA+Cj4+ID4+Pj4gPiBEYXZpZAo+PiA+Pj4+
ID4KPj4gPj4+PiBJbiBnZW5lcmFsLCBhcHBsaWNhdGlvbnMgaGF2ZSBvbmx5IHZlcnktcm91Z2gg
Y29udHJvbCBvdmVyIHRoZSBiZWhhdmlvcgo+PiA+Pj4+IG9mIHRoZSBzY2hlZHVsZXIuICBUaGlz
IGlzIHRydWUgaW4gbW9zdCBnZW5lcmFsLXB1cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbQo+PiA+Pj4+
ICAgIGVudmlyb25tZW50cywgd2hldGhlciBpdCdzIFdpbmRvd3MsIExpbnV4LCAqQlNELCBNYWNP
UywgZXRjLgo+PiA+Pj4+Cj4+ID4+Pj4gSWYgeW91J3ZlIHBsYXllZCB3aXRoIHByaW9yaXRpZXMs
IGFuZCBzdGFydGluZyB1cCBvdGhlciBwcm9ncmFtcyBjYXVzZXMKPj4gPj4+PiBPVSB0byBoYXBw
ZW4sIHlvdSBzaG91bGQgcHJvYmFibHkgY29uc2lkZXI6Cj4+ID4+Pj4KPj4gPj4+PiAoQSkgT3B0
aW1pemluZyB5b3VyIGNvZGUgLS0gZmluZCBvdXQgd2hlcmUgdGhlIGhvdC1zcG90cyBhcmUsIGFu
ZCBzZWUgaWYKPj4gPj4+PiB0aGV5IGNhbiBiZSBpbXByb3ZlZAo+PiA+Pj4+IChCKSBDaG9vc2lu
ZyBhIGZhc3RlciBDUFUKPj4gPj4+Pgo+PiA+Pj4+IFRoZSBDUFUgdXNhZ2Ugb2YgYSBEU1AgZmxv
dyBpcyByb3VnaGx5IHByb3BvcnRpb25hbCB0bzoKPj4gPj4+Pgo+PiA+Pj4+IGluaGVyZW50LXBl
ci1zYW1wbGUtY29tcGxleGl0eSBYIHNhbXBsZS1yYXRlCj4+ID4+Pj4KPj4gPj4+PiBDYW4geW91
IGxvd2VyIHRoZSBzYW1wbGUgcmF0ZSBhbmQgc3RpbGwgYWNoaWV2ZSB3aGF0IHlvdSBuZWVkIHRv
Cj4+ID4+Pj4gYWNoaWV2ZT8gIENhbiB5b3UgaW1wcm92ZSB0aGUgbWFpbi1wYXRoIHBlci1zYW1w
bGUgY29tcGxleGl0eT8KPj4gPj4+Pgo+PiA+Pj4+Cj4+ID4+Pj4KPj4gPj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+Pj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4+ID4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4gPj4+PiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KPj4gPj4+Cj4+ID4+Pgo+PiA+Pgo+PiA+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+
PiA+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiA+PiBodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4gPgo+PiA+
Cj4+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4+ID4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
