Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A6C2C168C
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 21:30:47 +0100 (CET)
Received: from [::1] (port=50670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khITw-0000jy-Pg; Mon, 23 Nov 2020 15:30:40 -0500
Received: from mail-qt1-f182.google.com ([209.85.160.182]:46770)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1khITs-0000fh-Mo
 for USRP-users@lists.ettus.com; Mon, 23 Nov 2020 15:30:36 -0500
Received: by mail-qt1-f182.google.com with SMTP id f15so10906342qto.13
 for <USRP-users@lists.ettus.com>; Mon, 23 Nov 2020 12:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=EGYKYrcbfTLIK2EWJ+ruFtXyTZaVH4W7h1Zjnq81xuw=;
 b=Vg9mwpr+bWNU7KiidxVOe0bICi0ZL6iWeuBAH7bt0JFq8dq0CMRF7RazqApCVjFyAk
 DMnMUswckmZuujGyNY4c1OUpTe/nWSWeevjFkzGcL1sBPJCV/kvnxjOs7gzV94ZPbQAP
 3vdHb3xIA4fFKCw2NbtGDJDxUG+AkSSBQOuuGWRYisVlOteKmUKEBSJgH/m5F+Eq4RNG
 PQLhpBJ0WGdYPeuWxSA+X4q14x0qAKn1j3Z4diXmGXTRZRhhSudZqY4DXyHepzPuAFSa
 c98nmwqXclkcuF3fjX1saK+hXrkgbivpyfI2avpMLL4HHi+r7m1QS8dXeH6n2/QPt/Cu
 JoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=EGYKYrcbfTLIK2EWJ+ruFtXyTZaVH4W7h1Zjnq81xuw=;
 b=ml2zGifN7ARhm5jk00sPh6slwJlLpVW63O6ssnRq36MhKAMjGmzWwYDtVjv4VWAcSI
 Of3Y2fJeaRAB7Pgjq5ktG2ll6jrs6xWjbzT+hMZ6UI5aUZAYi441xEd5+NIYQzrcNFdU
 ZtV0pspNU13oPmkfFhqLs8/g70OcLuH82eGb/38NY7hz49JbiHQ7iGNlztJdtpLI/6Qo
 Z5AmnJ518PleTa7XvbvPjLupXHgim0X73glgnPFUvnQZgkMqGCjcQj7ECxM2W+IbqMt9
 gdKsmbL0uahM8nFJbA+zghy7MKquaMYBd5wnxNAiRIr/5Fp2HDbBynyNVeQ78Nue9Uow
 C9lQ==
X-Gm-Message-State: AOAM530BU2+gDGtNMdQHTXNvc5ifVTXnvW2v/ACjK/u3JptFO3WQUw6J
 w8BlLEnKXCd3eD8znYycwmc=
X-Google-Smtp-Source: ABdhPJwXBVD4zQnoL0/vaMaFcn6Qy8EMmnifVMJmpAmy/ipj4er9wGKqvjOzWC1e+Yj0jWbqn8isBg==
X-Received: by 2002:ac8:4e84:: with SMTP id 4mr979417qtp.296.1606163395925;
 Mon, 23 Nov 2020 12:29:55 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id z73sm6727836qkb.112.2020.11.23.12.29.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Nov 2020 12:29:55 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 23 Nov 2020 15:29:54 -0500
Message-Id: <7E28B7B3-1120-41E7-8B0C-C73E343DEA1D@gmail.com>
References: <a5dda2285147de74f294c16a41a74037df7e6f88.camel@virginia.edu>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <a5dda2285147de74f294c16a41a74037df7e6f88.camel@virginia.edu>
To: Dustin Widmann <dw2zq@virginia.edu>
X-Mailer: iPhone Mail (18A8395)
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

Q291bGQgeW91IGNvbmZpcm0gd2hpY2ggdmVyc2lvbiBvZiBVSEQgeW914oCZcmUgdXNpbmc/CgpU
aGVyZSBoYXMgaGlzdG9yaWNhbGx5IGJlZW4gYSBwcm9ibGVtIHVzaW5nIGJvdGggVHdpblJ4IGFu
ZCBVQlggb24gdGhlIHNhbWUgWDMxMCBkdWUgdG8gY2xvY2tpbmcgcmVxdWlyZW1lbnQgY29uZmxp
Y3RzLiAKCkJ1dCB0aGF0IGhhcyBiZWVuIGZpeGVkIGluIFVIRDQKCldhbnQgdG8gZWxpbWluYXRl
IHRoYXQgYXMgYSBwb3NzaWJpbGl0eSBmaXJzdC4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9u
IE5vdiAyMywgMjAyMCwgYXQgMTE6NDIgQU0sIER1c3RpbiBXaWRtYW5uIDxkdzJ6cUB2aXJnaW5p
YS5lZHU+IHdyb3RlOgo+IAo+IO+7v01hcmN1cywKPiAKPiBJIGRvIGhhdmUgYWNjZXNzIHRvIHNp
ZyBnZW5zLCBidXQgSSB3b3VsZCBoYXZlIHRvIHRha2UgZXZlcnl0aGluZyBpbnRvIHRvd24gdG8g
ZG8gdGhhdC4gKHNhbmVzdCB0aGluZyB0byBkbyBkdXJpbmcgY292aWQKPiB3YXMgdG8gYnJpbmcg
cG9ydGFibGUgdGhpbmdzIGhvbWUuLi4pCj4gCj4gV2hhdCBJIGRvIGhhdmUgaGFuZHkgdGhvdWdo
IGlzIGEgc3BlY3RydW0gYW5hbHl6ZXIgKGFsYmVpdCwgbm90IGEgcGFydGljdWxhcmx5IGdvb2Qg
b25lLCBidXQgd2hlbiB3b3JraW5nIHdpdGggYSBuYXJyb3cKPiBzcGFuIGl0IHNob3VsZCBiZSBh
YmxlIHRvIGdpdmUgcmVzdWx0cyB0aGF0IGFyZSBnb29kIGVub3VnaCkKPiAKPiBXaGF0IEkgb2Jz
ZXJ2ZWQgaXMgdGhpczoKPiB0eCBmcmVxIE1IeiAgICAgbWVhcyBmcmVxIFtNSHpdICAgICBkZXZp
YXRpb24gW0h6XSA2MC4wNTAgICAgICAgICAgNjAuMDQ4ODAwICAgICAgICAgICAgMTIwMAo+IDYx
LjA1MCAgICAgICAgICA2MS4wNTAxMDAgICAgICAgICAgIC0xMDAKPiA2Mi4wNTAgICAgICAgICAg
NjIuMDUxMjAwICAgICAgICAgICAtMTIwMAo+IDYzLjA1MCAgICAgICAgICA2My4wNTI1MzMgICAg
ICAgICAgIC0yNTMzCj4gNjQuMDUwICAgICAgICAgIDY0LjA1MzYwMCAgICAgICAgICAgLTM2MDAK
PiA2NS4wNTAgICAgICAgICAgNjUuMDU0OTMzICAgICAgICAgICAtNDkzMwo+IDY2LjA1MCAgICAg
ICAgICA2Ni4wNDQwMDAgICAgICAgICAgICA2MDAwCj4gNjcuMDUwICAgICAgICAgIDY3LjA0NTA2
NyAgICAgICAgICAgIDQ5MzMKPiA2OC4wNTAgICAgICAgICAgNjguLi4uLi4gTWlzc2VkIHRoaXMg
b25lCj4gNjkuMDUwICAgICAgICAgIDY5LjA0NzczMyAgICAgICAgICAgIDIyNjcKPiA3MC4wNTAg
ICAgICAgICAgNzAuMDQ4ODAwICAgICAgICAgICAgMTIwMAo+IAo+IAo+IEZvciByZWZlcmVuY2Us
IHdoYXQgSSBvYnNlcnZlZCB3aXRoIHRoZSB0d2lucnggd2FzIGFzIGZvbGxvd3MKPiBmcmVxICAg
ICAgICB0YXJnZXQgYmluL2ZyZXEgICAgIGFjdHVhbCBiaW4vZnJlcSAgICAgZGlmZiBiaW4vZnJl
cSAgICAgIGRzcCBmcmVxIAo+IDYwTUh6ICAgICAgIDUyNC4yODggKDUwZTMpICAgICAgNTEyICg0
OCw4MjgpICAgICAgICAgMTIuMjg4ICgxLDE3MikgICAgICAxMTYwICAgCj4gNjFNSHogICAgICAg
NTI0LjI4OCAoNTBlMykgICAgICA1MjUgKDUwLDA2OCkgICAgICAgICAtMC43MTIgKC02OCkgICAg
ICAgICAtNjEgICAKPiA2Mk1IeiAgICAgICA1MjQuMjg4ICg1MGUzKSAgICAgIDUzOCAoNTEsMzA4
KSAgICAgICAgLTEzLjcxMiAoLTEsMzA4KSAgICAtMTI4MiAgIAo+IDYzTUh6ICAgICAgIDUyNC4y
ODggKDUwZTMpICAgICAgNTUxICg1Miw1NDcpICAgICAgICAtMjYuNzEyICgtMiw1NDcpICAgIC0y
NTAzICAgCj4gNjRNSHogICAgICAgNTI0LjI4OCAoNTBlMykgICAgICA1NjMgKDUzLDY5MikgICAg
ICAgIC0zOC43MTIgKC0zLDY5MikgICAgLTM3MjQgICAKPiA2NU1IeiAgICAgICA1MjQuMjg4ICg1
MGUzKSAgICAgIDU3NiAoNTQsOTMyKSAgICAgICAgLTUxLjcxMiAoLTQsOTMyKSAgICAtNDk0NSAg
IAo+IDY2TUh6ICAgICAgIDUyNC4yODggKDUwZTMpICAgICAgNDYxICg0Myw5NjQpICAgICAgICAg
NjMuMjg4ICg2LDAzNikgICAgICA2MDQ0ICAgCj4gCj4gSGF2aW5nIHRha2VuIHRoZSBUd2luUlgg
b3V0IG9mIHRoZSBsb29wLCBpdCBzZWVtcyBJJ20gZ2V0dGluZyB2ZXJ5IHNpbWlsYXIgcmVzdWx0
cy4gCj4gCj4gRHVzdGluCj4gCj4gCj4+IE9uIFNhdCwgMjAyMC0xMS0yMSBhdCAxMzo0MyAtMDUw
MCwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOgo+Pj4gT24gMTEvMjEvMjAyMCAwODoyOCBBTSwgRHVz
dGluIFdpZG1hbm4gd3JvdGU6Cj4+PiBNYXJjdXMsCj4+PiAKPj4+IEkgdHJpZWQgaXQgd2l0aG91
dCB0aW1lZCBjb21tYW5kcyBsYXN0IG5pZ2h0LiBJdCB3YXMgbGFuZGluZyBvbiB0aGUKPj4+IHNh
bWUgZnJlcXVlbmNpZXMgYXMgaXQgZGlkIHdpdGggdGltZWQgY29tbWFuZHMgaS5lLiBkaWRuJ3Qg
Zml4IHRoYXQKPj4+IHByb2JsZW0uCj4+PiAKPj4+IER1c3Rpbgo+PiBPSywgdGhhbmtzIGZvciBk
b2luZyB0aGUgdGVzdC4KPj4gCj4+IEkgd29uZGVyIGlmIHlvdSBoYXZlIGEgcHJlY2lzZSBzaWdu
YWwgZ2VuZXJhdG9yIHNvIHlvdSBjYW4gY29uZmlybQo+PiB0aGF0IAo+PiB0aGUgUlggc2lkZSBp
cyBvbi1mcmVxdWVuY3k/Cj4+IAo+PiAKPj4+IAo+Pj4gT24gV2VkLCAyMDIwLTExLTE4IGF0IDIw
OjA1IC0wNTAwLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6Cj4+Pj4gT24gMTEvMTgvMjAyMCAwNzoz
NCBQTSwgRHVzdGluIFdpZG1hbm4gd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgMjAyMC0xMS0xOCBhdCAx
ODoyNyAtMDUwMCwgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLQo+Pj4+PiB1c2Vycwo+Pj4+PiB3
cm90ZToKPj4+Pj4gTWFyY3VzLAo+Pj4+PiAKPj4+Pj4gT2gsIHNvcnJ5LCBJIG1pc3NlZCB0aGUg
Zmlyc3QgYml0LiBJJ20gdXNpbmcgdGhlIG9uLWJvYXJkCj4+Pj4+IGNsb2NrLgo+Pj4+PiBBbmQK
Pj4+Pj4gcGVyaGFwcyBJIHNob3VsZCBleHBsYWluIHRoZSB0YWJsZSB3aXRoIGEgbGl0dGxlIGJp
dCBtb3JlCj4+Pj4+IGRldGFpbDoKPj4+Pj4gKiAxc3QgY29sOiBUaGUgKnRhcmdldCogZnJlcXVl
bmN5LiBUaGUgUlggd2FzIHR1bmVkIHRvIHRoaXMKPj4+Pj4gZnJlcXVlbmN5Lgo+Pj4+PiBUaGUg
VFggd2FzIHR1bmVkIHRvIHRoYXQgZnJlcXVlbmN5ICsgYW4gb2Zmc2V0IChpbiB0aGlzIGNhc2Us
Cj4+Pj4+IDUwS0h6Cj4+Pj4+IGZvcgo+Pj4+PiBhbGwgZGF0YXBvaW50cykuCj4+Pj4+ICogMm5k
IGNvbDogV2hlcmUgdGhlIHRvbmUgaXMgZXhwZWN0ZWQgdG8gbGFuZCwgYm90aCBiaW4gYW5kCj4+
Pj4+IChiYXNlYmFuZCkKPj4+Pj4gZnJlcXVlbmN5OyBpbiB0aGlzIGNhc2UsIGEgNTBLSHogb2Zm
c2V0IGZvciBhbGwgZGF0YXBvaW50cywKPj4+Pj4gd2hpY2gKPj4+Pj4gY29ycmVzcG9uZGVkIHRv
IGJpbiA1MjQgd2l0aCBhIDJeMjAgRkZULgo+Pj4+PiAqIDNyZCBjb2w6IHdoZXJlIHRoZSB0b25l
IHdhcyBvYnNlcnZlZCAoYm90aCBiaW4gYW5kCj4+Pj4+IGZyZXF1ZW5jeSkuCj4+Pj4+ICogNHRo
IGNvbDogZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSB0YXJnZXQgYW5kIGV4cGVjdGF0aW9uCj4+Pj4+
ICogNXRoIGNvbDogZHNwIGZyZXEgKGZyb20gdWhkOjp0dW5lX3Jlc3VsdF90LmFjdHVhbF9kc3Bf
ZnJlcSkKPj4+Pj4gKiA2dGggY29sOiB3aGF0IHRoZSBkaWZmZXJlbmNlIHdvdWxkIGJlIGlmIEkg
b2Zmc2V0IHRoZQo+Pj4+PiBvYnNlcnZlZAo+Pj4+PiBmcmVxdWVuY3kgYnkgdGhlIGNsYWltZWQg
ZHNwIGZyZXF1ZW5jeQo+Pj4+PiAKPj4+Pj4gRHVzdGluCj4+Pj4+IAo+Pj4+IFJpZ2h0LCBJIHVu
ZGVyc3RhbmQgdGhlIGNoYXJ0IG5vdy4KPj4+PiAKPj4+PiBTbywgdGhpcyBpcyByYXRoZXIgb2Rk
Lgo+Pj4+IAo+Pj4+IEkgYXNzdW1lIHRoaXMgaXMgdW5kZXIgdGltZWQgY29tbWFuZHMsIHllcz8g
IFdoYXQgaGFwcGVucyBpZiB5b3UKPj4+PiBkb24ndAo+Pj4+IHVzZSB0aW1lZCBjb21tYW5kcy0t
anVzdCB0byBjaGVjayB0byBzZWUKPj4+PiAgICAgaWYgdGhlIERTUCBmcmVxdWVuY3kgY2hhbmdl
IGlzIGdldHRpbmcgc2tpcHBlZCB1bmRlciB0aW1lZAo+Pj4+IGNvbW1hbmRzPwo+Pj4+IAo+Pj4+
IAo+Pj4+IAo+Pj4gCj4+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
