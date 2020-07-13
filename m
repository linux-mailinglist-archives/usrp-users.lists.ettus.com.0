Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2862621CD05
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 04:09:37 +0200 (CEST)
Received: from [::1] (port=60556 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1junuQ-0003aJ-Ta; Sun, 12 Jul 2020 22:09:34 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:39105)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1junuN-0003QK-8J
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 22:09:31 -0400
Received: by mail-qt1-f173.google.com with SMTP id o38so8904130qtf.6
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 19:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=q0fz+8PWETCRhA446EqtblT6Ydu7M7VBuB1dueuB8Sc=;
 b=r+rHzN/A0a0oKQZidMxc/YqOOcEky3dAa+JPYyme+9EFzldVxWGGi+dDWe+5xR3KC8
 u2xZ3l4zJ9Ivg822YDjlvSP3P1fK53dhILOOpijCE2tnEo99saDn75qN14y/KGxRwzMA
 TASwg7OamfDJwWU5/UVI0rqPLJtNY27Gf44oTbh4tJWal5kyuiv/pmudJuV42OHfvlo1
 T4wyXgkp0A9nHOh21asXJITyGXGM76QqS5bu5KQ9/SGaA91kTLAh4mPe3v6qFm4MAd+M
 mTLCcGOLBhDIZDTNbI6yAkRnGZwDbZoBtPKU1i3qTWHbvQLsKqxH4d4mj/WKYZD9Bh0e
 VdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=q0fz+8PWETCRhA446EqtblT6Ydu7M7VBuB1dueuB8Sc=;
 b=ijjn7BMWnu+ltHLFWVMfEUEesremRAPegtull6/r+YKJdJVQNxPnClF7SfwiK6IFmp
 Y6yrEQnVHesxfw6bqbLrQJuJCpfeDiu7QianI6ERr6bECbio7xAPsj877O0rIJap7lU+
 TyyVdNe5LTwOKD8ONqApabq26EWz4KupcIrWmWuuerbPztEL824KLzFl+RR2QI74jYKK
 QHLOnHxKtDKDma9+P8dtBbRWfVy4G9bzTkg1B5SCDuBPRqm3wxUZuMxA8oswIojaX/4R
 TsWe0MVWuP/VKiVhDT59cruHBadOy+PXejcukeuBPF/ulHsXMy/C0S93KaKDf9alZAwI
 o/BA==
X-Gm-Message-State: AOAM533crLzkpzlCrwZXn4PZawRX9/u2JADP6nf7Omo97m64+BhMdv90
 rhe+UrSz017cCpHTCzvhpEFCDHJu
X-Google-Smtp-Source: ABdhPJzKN7sQ/oFu0iysU5XJwwbHnmm/IYBR2/Epygcv2K7PlVNuNcfwDKUvXrUFGuBRLd6/gDi4Cw==
X-Received: by 2002:ac8:4b5b:: with SMTP id e27mr76266520qts.96.1594606130496; 
 Sun, 12 Jul 2020 19:08:50 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 d19sm15950539qko.114.2020.07.12.19.08.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Jul 2020 19:08:49 -0700 (PDT)
Message-ID: <5F0BC230.3060007@gmail.com>
Date: Sun, 12 Jul 2020 22:08:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Larry Dodd <101science@gmail.com>
CC: usrp-users@lists.ettus.com
References: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
 <C60A86E7-87F4-4921-BE5D-71DDA57411E1@gmail.com>
In-Reply-To: <C60A86E7-87F4-4921-BE5D-71DDA57411E1@gmail.com>
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

T24gMDcvMTIvMjAyMCAwOTo0MiBQTSwgTGFycnkgRG9kZCB3cm90ZToKPiBNYXJjdXMKPiBBY3R1
YWxseSBJIGRvbuKAmXQgaGF2ZSB0aGUgQjIxMCBvciB0aGUgTEZSWCB5ZXQgYXMgSSBqdXN0IG9y
ZGVyZWQgdGhlbSBidXQgdGhhdOKAmXMgYWxsIEkgb3JkZXJlZC4gRG8gSSBuZWVkIHRvIGNhbmNl
bCB0aGUgb3JkZXI/Cj4gTGFycnksIEs0TEVEClRoZSBMRlJYIHdpbGwgYmUgb2Ygbm8gdXNlIHRv
IHlvdSB1bmxlc3MgeW91IGhhdmUgYSBwbGF0Zm9ybSB0aGF0IGl0IGNhbiAKcGx1ZyBpbiB0by4K
CkknZCBrZWVwIHRoZSBCMjEwIHBhcnQgb2YgdGhlIG9yZGVyLCBhbmQgb3JkZXIgYSBIYW1JdFVw
IG9yIFNweVZlcnRlciAKdXBjb252ZXJ0ZXIgbW9kdWxlLCB3aGljaCB1cC1jb252ZXJ0cyBIRiBm
cmVxdWVuY2llcyB0bwogICBhIGhpZ2hlciByYW5nZSB0aGF0IHRoZSBCMjEwIGNhbiB0dW5lIHRv
LgoKSGFtaVR1cCBpcyBzb2xkIGJ5IE5vb0VsZWMsIGFuZCB0aGUgU3B5VmVydGVyIGlzIHNvbGQg
YnkgCmh0dHBzOi8vYWlyc3B5LmNvbS9zcHl2ZXJ0ZXItcjIvCgpBZ2FpbiwgdGhlIExGUlggaXMg
YSAiZGF1Z2h0ZXJjYXJkIiwgd2hpY2ggaXMgdXNlZCBpbiB2YXJpb3VzIFVTUlBTIHRoYXQgCnVz
ZSB0aGUgZGF1Z2h0ZXItY2FyZCBhcmNoaXRlY3R1cmUsIGxpa2UgdGhlIFVTUlAxLCBVU1JQMiwK
ICAgTjJ4eCwgWDN4eCwgQjEwMCwgYW5kIEUxMDAuCgpCdXQgdGhlIEIyMTAgaXMgYW4gZXhjZWxs
ZW50IG1hY2hpbmUsIGl0J3MganVzdCB0aGF0IGl0IGRvZXNuJ3QgdHVuZSAKZG93biB0byBIRiBm
cmVxdWVuY2llcy4gIEJ1dCB3aXRoIHRoZSBhZGRpdGlvbiBvZiBhIChmYWlybHkgY2hlYXAsIElN
SE8pCiAgIHVwLWNvbnZlcnRlciwgeW91IGNhbiBleHBsb3JlIHRoZSB0ZXJyaXRvcnkgeW91J3Jl
IGludGVyZXN0ZWQgaW4gCnF1aXRlIG5pY2VseS4KCkluIHRlcm1zIG9mIHNvZnR3YXJlLCBpdCBy
ZWFsbHkgZGVwZW5kcyBvbiB3aGF0IHlvdSB3YW50IHRvICpkbyouIElmIHlvdSAKanVzdCB3YW50
IGFuIGludGVncmF0ZWQgRkZUIGRpc3BsYXkgdGhhdCBjYW4gY292ZXIgeW91ciAxNU1IegogICBv
ZiBiYW5kd2lkdGgsIHlvdSBjYW4gdXNlIHRoZSB1aGRfZmZ0IGFwcGxpY2F0aW9uLCBhbmQgaGF2
ZSBpdCBzYW1wbGUgCmF0IDE1TXNwcy0tdGhpcyBhc3N1bWVzIHlvdXIgY29tcHV0ZXIgaXMgYWJs
ZSB0byAia2VlcCB1cCIKICAgYXQgdGhhdCByYXRlLS1hIGdvb2QgVVNCMyBjb250cm9sbGVyIHdp
bGwgYmUgcmVxdWlyZWQsIGFuZCBhIGdvb2QgCm11bHRpLWNvcmUgbWFjaGluZSB0byBnbyB3aXRo
IGl0LgoKCj4+IE9uIEp1bCAxMiwgMjAyMCwgYXQgODowNiBQTSwgTWFyY3VzIEQgTGVlY2ggPHBh
dGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToKPj4KPj4g77u/VGhlIEIyMTAgaXMgc2VsZiBj
b250YWluZWQgYW5kIHR1bmVzIGRvd24gdG8gNTBNaHogYXQgdGhlIGxvd2VzdC4gVGhlIExGUlgg
aXMgZm9yIG90aGVyIHR5cGVzIG9mIFVTUlBzLiBTbyBmaXJzdCB0aGluZ3MgZmlyc3QsIHdoYXQg
dHlwZSBvZiBVU1JQIGRvIHlvdSBoYXZlPwo+Pgo+PiBTZW50IGZyb20gbXkgaVBob25lCj4+Cj4+
PiBPbiBKdWwgMTIsIDIwMjAsIGF0IDc6NDMgUE0sIExhcnJ5IERvZGQgdmlhIFVTUlAtdXNlcnMg
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+Cj4+PiDvu79JIG5lZWQgdG8g
c2V0IHVwIGEgR05VIEhGIHNwZWN0cnVtIGFuYWx5emVyIHdpdGggYSB3YXRlcmZhbGwgdXNpbmcg
bXkgQjIxMCwgTE5BLCBhbmQgTEZSWCBkYXVnaHRlciBib2FyZC4gVGhlIHRhcmdldCB3b3VsZCBi
ZSBhIDE1IHRvIDMwIE1IeiAob3Igd2lkZXIpIGluc3RhbnRhbmVvdXMgc3BlY3RydW0gZm9yIFJh
ZGlvIEFzdHJvbm9teSB3b3JrLiBSYXRoZXIgdGhhbiByZS1jcmVhdGluZyBzb21ldGhpbmcgdGhh
dCBhbHJlYWR5IGV4aXN0cyB3aGVyZSBjb3VsZCBJIGdldCBhIHNpbWlsYXIgR05VIGZsb3dncmFw
aD8gU2luY2UgSSBhbSBicmFuZCBuZXcgdG8gVVNSUCBhbnkgYWR2aWNlIGlzIHZlcnkgd2VsY29t
ZS4KPj4+IFRoYW5rcywKPj4+IExhcnJ5LCBLNExFRAo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
