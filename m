Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE7922B0BB
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 15:46:58 +0200 (CEST)
Received: from [::1] (port=33508 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jybYi-0004Va-93; Thu, 23 Jul 2020 09:46:52 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:43912)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <luke.whittlesey@gmail.com>)
 id 1jybYe-0004P1-2s
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 09:46:48 -0400
Received: by mail-lf1-f42.google.com with SMTP id b11so3285548lfe.10
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 06:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BEBEbqe3tagSRm5iYOI65U39h21RkDQTNzbp/odiUnY=;
 b=HBO3w6b9w6u1DPqCMlF6+AccYxkYXdaVdCmJp5YPTJQUpx1xc5lqQqmmfGd+2IhG/B
 OatFPjcXdtSBOoXcc/xIpm02+p9KFSERsfB396KVQ3OvF4GLkXletyGkWHk3qbHE/w2T
 QyXI5JTYjh8UOh1WRDNx4JNpufNeUwNIM6yfERomSc5FLTVWnByRAQ6N39llWPP9VBuJ
 Jy6Ov8Vf2OdkIkgs7phuVVZESbLyyqx+apM+VpD1BRt00YQlWVBbiDEuduK2GOJi7gX2
 cEr3Tb1HtkLyjR38oSs6+rZ54Yw4qSdS5PghJkKC5AIgWuxwBkpvAdEQyJBSCHvQKf7e
 GDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BEBEbqe3tagSRm5iYOI65U39h21RkDQTNzbp/odiUnY=;
 b=Pmp9WQd3u9L2x6tPJVB4HcA6HPLIyZXUZsh4oLHt3I5YrIKJ2MNHGVlVLAmymUqk//
 3P4iFgApOVR7m4SaF7+66YKr9wFbJk+pGEqwgMYamvrckVx0hfobp49XGsZN8jDcdDC5
 woNywv4iLeuNraNMQ1mIKl1BL0RDPl92vBKvyhfY7nGY5r5jPAwDIoyjvrLQkg9SNWTd
 GTgWMcWj1bpYpsJi0fakxCRNZcKImxFwFe6sNpAUOC5lCGNjsV5dZMgjZ24GkTEHCgca
 vaYKZaahb2IX+8FRfsPfEnrte5ucHuymgCcFaS4lUWIxWdxmuNtayFb1/rS05eb4xlK6
 BcNQ==
X-Gm-Message-State: AOAM530VC8umTzTivbww8EUv/Ddzyu8BEoKVVJ2EFmRdE929tWlc9V3y
 FueXBMTkICizta4GWtgmhnvW8s4es5IWlOkdbFY=
X-Google-Smtp-Source: ABdhPJyjCqU+AWY0VV7KHZMJTPZVFAFDh2ej79O0GBztKLAPgYZT9f8uM4FwwpyIX9IWVYIq7KOOl+OZ6miUv7DCQQ4=
X-Received: by 2002:a05:6512:241:: with SMTP id
 b1mr2322450lfo.125.1595511966557; 
 Thu, 23 Jul 2020 06:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
 <5F187B7C.2090909@gmail.com>
 <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
 <5F189F72.7060404@gmail.com>
In-Reply-To: <5F189F72.7060404@gmail.com>
Date: Thu, 23 Jul 2020 09:40:33 -0400
Message-ID: <CA+ce6i1t0VGE3ZpD10SAPrkJ3F0pMKRGiqJqYjeYtKWhyxS0Eg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
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

VGhpcyBpcyBwcm9iYWJseSBub3QgdGhlIGlzc3VlLCBidXQgc29tZXRpbWVzIEkgZm9yZ2V0IHRv
IHR1cm4gdGhlCmNvbXBpbGVyIG9wdGltaXphdGlvbnMgb24gYW5kIHRoYXQgY2FuIGdpdmUgeW91
IGEgbGl0dGxlIGJvb3N0CmRlcGVuZGluZyBvbiB0aGUgY29kZS4gZ2NjIC1PMiAuLi4KCk9uIFdl
ZCwgSnVsIDIyLCAyMDIwIGF0IDQ6MjAgUE0gTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJz
Cjx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNy8yMi8yMDIwIDAz
OjE4IFBNLCBSb2IgS29zc2xlciB3cm90ZToKPgo+IElmIHlvdSBhcmUgdXNpbmcgWDMxMCBvciBO
MzEwLCB5b3UgbWlnaHQgdHJ5IERQREsuIEV2ZW4gdGhvdWdoIGl0IGlzIGEgcGFpbiwgaXQgd291
bGQgYmUgYSB3aG9sZSBsb3QgZWFzaWVyIHRoYW4gdHJ5aW5nIGEgbmV3IE9TLCBJIGJlbGlldmUu
ICBVc2luZyBEUERLIGVuYWJsZWQgbXkgYXBwbGljYXRpb24gKHdoaWNoIHdhcyBzdG9yaW5nIFJ4
IHNhbXBsZXMgdG8gU1NEKSB0byBydW4gYSBidW5jaCBmYXN0ZXIgdGhhbiB3aXRob3V0IERQREsu
Cj4KPiBUaGFua3MsIFJvYi4gIERQREsgZG9lcyBmYWNpbGl0YXRlIGxvd2VyLWNvc3QgaGlnaGVy
IGRhdGEgdHJhbnNmZXIgaW50byB0aGUgYXBwbGljYXRpb24uICBUaGF0IG1heSwgb3IgbWF5IG5v
dCwgYmUgdGhlIGlzc3VlIGhlcmUuCj4KPgo+Cj4gT24gV2VkLCBKdWwgMjIsIDIwMjAgYXQgMTo0
NyBQTSBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPiB3cm90ZToKPj4KPj4gT24gMDcvMjIvMjAyMCAwMTo0MCBQTSwgRGF2aWQgQ2Fyc2Vu
YXQgd3JvdGU6Cj4+Cj4+IEl0IGp1c3QgcHV0IHJlY2VpdmVkIHNhbXBsZXMgaW4gYSBjaXJjdWxh
ciBidWZmZXIgYW5kICB0cmFuc21pdCB0aGlzIGJ1ZmZlci4gQSBkZWxheSBsaW5lLgo+PiBCdXQg
dGhlIFNSIGlzIDUwIE1zcHMuLi4gOCBiaXRzLgo+PiAgRG8geW91IGhhdmUgaWRlYXMgYWJvdXQg
T1MgPwo+PiBUaGFua3MuCj4+Cj4+IFRoZXJlIGFyZSBjb21tZXJjaWFsIHJlYWwtdGltZSBsb3ct
bGF0ZW5jeSBPUyAib3V0IHRoZXJlIiB0aGF0IGFyZW4ndCBmcmVlLCBhbmQgVUhEIGhhcyBub3Qg
YmVlbiBwb3J0ZWQgdG8gdGhlbSBhcyBmYXIgYXMgSSBrbm93Lgo+Pgo+Pgo+PiBMZSBtZXIuIDIy
IGp1aWwuIDIwMjAgw6AgMTk6MzMsIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFp
bC5jb20+IGEgw6ljcml0IDoKPj4+Cj4+PiBPbiAwNy8yMi8yMDIwIDAxOjIyIFBNLCBEYXZpZCBD
YXJzZW5hdCB3cm90ZToKPj4+Cj4+PiBPayB0aGFua3MuIFRoZSBjb2RlIGlzIHJlYWxseSBzaW1w
bGUgYW5kIGkgZG9uJ3QgdGhpbmsgaXQgY2FuIGJlIG9wdGltaXplZC4KPj4+IElzIHRoZXJlIG90
aGVyIGxpbnV4IE9TIGkgY2FuIHRyeSA/Cj4+PiBUaGFua3MgYWdhaW4uCj4+Pgo+Pj4gSWYgaXQn
cyByZWFsbHkgc2ltcGxlLCB3aGF0IGlzIHRoZSBzYW1wbGUtcmF0ZT8gIElzIGl0IHRyeWluZyB0
byB3cml0ZSBkYXRhIHRvIHRoZSBmaWxlc3lzdGVtIGF0IGhpZ2ggcmF0ZXM/ICBObyBhbW91bnQg
b2YgY29kZSBvcHRpbWl6YXRpb24gY2FuIGdldAo+Pj4gICBhcm91bmQgdGhlIGZhY3QgdGhhdCB0
aGUgZGlzayBzdWJzeXN0ZW0gaXMgdmVyeSBzbG93IGNvbXBhcmVkIHRvIG90aGVyIHBhcnRzIG9m
IHRoZSBjb21wdXRlciwgbGlrZSBtZW1vcnksIENQVSwgZXRjLgo+Pj4KPj4+Cj4+PiBMZSBtZXIu
IDIyIGp1aWwuIDIwMjAgw6AgMTk6MTIsIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IGEgw6ljcml0IDoKPj4+Pgo+Pj4+IE9uIDA3LzIy
LzIwMjAgMTI6NTYgUE0sIERhdmlkIENhcnNlbmF0IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+
ID4gSGVsbG8sIEkgaGF2ZSBtYWRlIGEgYysrIGNvZGUgd2hpY2ggc2VuZHMgc2FtcGxlcyBpbiB0
aGUgbWFpbiBmdW5jdGlvbgo+Pj4+ID4gYW5kIHJlY2VpdmVzIHNhbXBsZXMgaW4gYSB0aHJlYWQg
bGF1bmNoZWQgaW4gdGhpcyBtYWluIGZ1bmN0aW9uLgo+Pj4+ID4gSSBoYXZlIHJlYWQgdGhhdCB3
ZSBjYW4gc2V0IHRoZSByZWFsIHRpbWUgcHJpb3JpdHkgd2l0aCB0aGUKPj4+PiA+IHNldF90aHJl
YWRfcHJpb3JpdHkgZnVuY3Rpb24uCj4+Pj4gPiBJIGhhdmUgdHJpZWQgdG8gY2FsbCB0aGlzIGZ1
bmN0aW9uICh3aXRoIHBhcmFtZXRlcnMgKDEsdHJ1ZSkgaW5zaWRlCj4+Pj4gPiB0aGUgbWFpbiBm
dW5jdGlvbiBidXQgaXQgZG9lc24ndCBzZWVtIHRvIGNoYW5nZSB0aGUgcHJpb3JpdHkgb2YgdGhl
Cj4+Pj4gPiBleGVjdXRhYmxlLiBXaGVuIEkgbGF1bmNoIGFub3RoZXIgYXBwbGljYXRpb24sIEkg
aGF2ZSBsb3RzIG9mIFUgYW5kIE8uCj4+Pj4gPgo+Pj4+ID4gRG8geW91IGhhdmUgYW4gaWRlYSBo
b3cgdG8gYWNoaWV2ZSB3aGF0IEkgd2FudCA/IGkuZS4gYWxsb2NhdGUgYWxtb3N0Cj4+Pj4gPiBh
bGwgY29tcHV0ZXIgcmVzb3VyY2VzIHRvIG15IHVoZCBwcm9ncmFtID8gV2hhdCBpcyB0aGUgYmVz
dCB3YXkgPwo+Pj4+ID4gSSBoYXZlIGFscmVhZHkgdHVuZWQgbXkgdWJ1bnR1IHdpdGggYWR2aWNl
IGdpdmVuIG9uIEV0dHVzIHNpdGUuKAo+Pj4+ID4gY3B1LWZyZXEgc2V0IGV0Yy4uLikKPj4+PiA+
Cj4+Pj4gPiBNYW55IHRoYW5rcwo+Pj4+ID4KPj4+PiA+IERhdmlkCj4+Pj4gPgo+Pj4+IEluIGdl
bmVyYWwsIGFwcGxpY2F0aW9ucyBoYXZlIG9ubHkgdmVyeS1yb3VnaCBjb250cm9sIG92ZXIgdGhl
IGJlaGF2aW9yCj4+Pj4gb2YgdGhlIHNjaGVkdWxlci4gIFRoaXMgaXMgdHJ1ZSBpbiBtb3N0IGdl
bmVyYWwtcHVycG9zZSBvcGVyYXRpbmcgc3lzdGVtCj4+Pj4gICAgZW52aXJvbm1lbnRzLCB3aGV0
aGVyIGl0J3MgV2luZG93cywgTGludXgsICpCU0QsIE1hY09TLCBldGMuCj4+Pj4KPj4+PiBJZiB5
b3UndmUgcGxheWVkIHdpdGggcHJpb3JpdGllcywgYW5kIHN0YXJ0aW5nIHVwIG90aGVyIHByb2dy
YW1zIGNhdXNlcwo+Pj4+IE9VIHRvIGhhcHBlbiwgeW91IHNob3VsZCBwcm9iYWJseSBjb25zaWRl
cjoKPj4+Pgo+Pj4+IChBKSBPcHRpbWl6aW5nIHlvdXIgY29kZSAtLSBmaW5kIG91dCB3aGVyZSB0
aGUgaG90LXNwb3RzIGFyZSwgYW5kIHNlZSBpZgo+Pj4+IHRoZXkgY2FuIGJlIGltcHJvdmVkCj4+
Pj4gKEIpIENob29zaW5nIGEgZmFzdGVyIENQVQo+Pj4+Cj4+Pj4gVGhlIENQVSB1c2FnZSBvZiBh
IERTUCBmbG93IGlzIHJvdWdobHkgcHJvcG9ydGlvbmFsIHRvOgo+Pj4+Cj4+Pj4gaW5oZXJlbnQt
cGVyLXNhbXBsZS1jb21wbGV4aXR5IFggc2FtcGxlLXJhdGUKPj4+Pgo+Pj4+IENhbiB5b3UgbG93
ZXIgdGhlIHNhbXBsZSByYXRlIGFuZCBzdGlsbCBhY2hpZXZlIHdoYXQgeW91IG5lZWQgdG8KPj4+
PiBhY2hpZXZlPyAgQ2FuIHlvdSBpbXByb3ZlIHRoZSBtYWluLXBhdGggcGVyLXNhbXBsZSBjb21w
bGV4aXR5Pwo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+PiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4KPj4+Cj4+Cj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
