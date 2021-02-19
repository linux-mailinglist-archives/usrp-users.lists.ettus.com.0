Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DEE31FB31
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:49:14 +0100 (CET)
Received: from [::1] (port=54448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD75i-0002jr-S3; Fri, 19 Feb 2021 09:49:10 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:36153)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lD75e-0002aM-NK
 for USRP-users@lists.ettus.com; Fri, 19 Feb 2021 09:49:06 -0500
Received: by mail-ot1-f45.google.com with SMTP id 100so5293717otg.3
 for <USRP-users@lists.ettus.com>; Fri, 19 Feb 2021 06:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LSCTuxoAT7mylmSNoYl+VKxTBXSYngr33NRQAKkQjVQ=;
 b=RqyOZd5l1hNM+Yoi3kr/BPlaaMqjqJjVHNrU9uIz3wpRU7NnAzOUYXQtQqmCbuIWzs
 8PeR7NNIruWFpeml+NlTdC5mlWkTUHhgtiSeKwrVnuJTP+InX1Es3cZagIATZ71SHjOM
 8WNL80TnTwp+dgECP7Nnq6HY20wfGrI3za8t511+h+x/6syXGdD8+ICz+gdDH93edIKX
 +5Go0tzrm6hUt54O/WOo3uXilwx5VwDWL6P34TAm5z+lfZdc9RdbNeAHt9crqDyB9jef
 sWtFODbGt11Gyc5GgXafnH0z/E70RAeBChzTWfyG3Y17FZsg3mHLzeT6YqwK30SMg0Ch
 IAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LSCTuxoAT7mylmSNoYl+VKxTBXSYngr33NRQAKkQjVQ=;
 b=MVeTICQxNJQhfH4MbOAySMDHGY+XRt3cAVd5MyXVcLP6qF23OTZhlH2AoJp24ciUtb
 TDMMhtyeU/orAbohIYAjMsZCXF1dY6Oo7Ar/PjI5vdruF8EudNhDB8XDxPEL8E7uPZkK
 IUAKBVn96oJd+6aWuWaIZX1PyIuXjrg5aOkWWNCXn/8mkuICAsT/Gw27Ru7L9gJ949Mn
 JzbtyknpGBdD4/VsrfpDQylnkOu5kAl6PWtEjYcujYHbPdE4uYz19doNvQQkNW+0y//O
 z3pcwY0N1Jp9oMG+8BlKT3R3rgo+0lJEZ1P/8rm1hplK2rVlDDbYuTiY1AWcSrLqc2Yk
 2+Aw==
X-Gm-Message-State: AOAM533ssoeYXfvvV4BxuQ8RjeVSy9JIL6gqmanaEfBDb0AbBXQMAjrt
 T0HkMOxDcGNKn2O8YMcdt5hFhCEWmcEJPyh2a0qZYQ==
X-Google-Smtp-Source: ABdhPJzV+ejkrESSNULmHm4VJ9yWeMNqPCTj5SbZlWj+lmEy93aItNOhCMqrs5UE4+6Ft3ovVS4c8mUgWdfOQAgaJZc=
X-Received: by 2002:a9d:6317:: with SMTP id q23mr6869976otk.301.1613746105783; 
 Fri, 19 Feb 2021 06:48:25 -0800 (PST)
MIME-Version: 1.0
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
 <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
In-Reply-To: <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
Date: Fri, 19 Feb 2021 09:48:14 -0500
Message-ID: <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] GPSDO fails to lock
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
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

V2hlbiBJIGZpcnN0IHN0YXJ0ZWQgdXNpbmcgVUhEIDQuMCB3aXRoIHRoZSBOMzEwICh0aGlzIHBh
c3Qgc3VtbWVyKSwgSQpub3RpY2VkIHdoYXQgSSB0aG91Z2h0IHdhcyBhIGRlZ3JhZGF0aW9uIGlu
IHRoZSBkZXZpY2UncyBhYmlsaXR5IHRvCmxvY2suIEkgd2FzIGNvbXBhcmluZyBvbmUgTjMxMCBy
dW5uaW5nIFVIRCAzLjE1IHRvIGFub3RoZXIgcnVubmluZyBVSEQKNC4wLiAgQm90aCBzeXN0ZW1z
IHdlcmUgbG9jYXRlZCBhIGZldyBmZWV0IGFwYXJ0IGZyb20gZWFjaCBvdGhlciB3aXRoCnRoZSBz
YW1lIG1vZGVsIGFudGVubmEgc28gdGhleSBzaG91bGQgaGF2ZSBwcm9kdWNlZCBzaW1pbGFyIHJl
c3VsdHMsCmJ1dCBpdCBzZWVtZWQgdGhhdCB0aGUgMy4xNSBzeXN0ZW0gYWNoaWV2ZWQgbG9jayBt
b3JlIGVhc2lseS4gIEluIGFueQpjYXNlLCBJIG5ldmVyIHNwZW50IHRoZSB0aW1lIHRvICJwcm92
ZSB0aGUgY2FzZSIgYW5kIHRoZW4gZ290CmRpc3RyYWN0ZWQgb24gYW5vdGhlciBpc3N1ZSBhbmQg
bmV2ZXIgcmV0dXJuZWQgdG8gaXQuIE5vdCBzdXJlIGlmIHRoaXMKaXMgcmVsZXZhbnQgaW4gdGhp
cyBkaXNjdXNzaW9uLCBidXQgSSB0aG91Z2h0IEkgd291bGQgbWVudGlvbiBpdC4KUm9iCgpPbiBG
cmksIEZlYiAxOSwgMjAyMSBhdCA5OjEyIEFNIE1hcmN1cyBEIExlZWNoIHZpYSBVU1JQLXVzZXJz
Cjx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4KPiBBcmUgdGhlIGFudGVubmFl
IHNpdHVhdGVkIG91dGRvb3JzPwo+Cj4gSXQgY2FuIHRha2UgYWxtb3N0IGFuIGhvdXIgdG8gYWNo
aWV2ZSBsb2NrIGZyb20gYSBjb2xkIHN0YXJ0Lgo+Cj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Cj4g
PiBPbiBGZWIgMTksIDIwMjEsIGF0IDQ6MTQgQU0sIEpvaGFubmVzIERlbWVsIDxkZW1lbEBhbnQu
dW5pLWJyZW1lbi5kZT4gd3JvdGU6Cj4gPgo+ID4g77u/RWFjaCBVU1JQIGhhcyBpdHMgb3duIEdQ
UyBhbnRlbm5hLiBPbmUgb2YgdGhvc2UgeW91IGJ1eSBhdCBldHR1cy5jb20gYXMgYSByZWNvbW1l
bmRlZCBhY2Nlc3NvcnkuCj4gPgo+ID4+IE9uIDE4LjAyLjIxIDE1OjA1LCBNYXJjdXMgRCBMZWVj
aCB3cm90ZToKPiA+PiBIb3cgYXJlIHlvdSBkZWxpdmVyaW5nIHRoZSBHUFMgYW50ZW5uYSBzaWdu
YWwgdG8gdGhlIFVTUlBzPyAgVmlhIGEgc3BsaXR0ZXI/IERvZXMgdGhhdCBzcGxpdHRlciBwcm92
aWRlIERDIHBhc3MtdGhyb3VnaD8KPiA+PiBTZW50IGZyb20gbXkgaVBob25lCj4gPj4+PiBPbiBG
ZWIgMTgsIDIwMjEsIGF0IDc6MDcgQU0sIEpvaGFubmVzIERlbWVsIHZpYSBVU1JQLXVzZXJzIDx1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+IO+7v0p1c3QgYSBx
dWljayBmb2xsb3ctdXAuIFRoZSBCMjEwIGZpbmFsbHkgZ290IGEgR1BTIGxvY2suIChJIGhhZCB0
byB3YWl0IGZvciB+MmgpLiBUaG91Z2gsIGFsbCBOMzEwcyBzdGlsbCBkb24ndC4KPiA+Pj4KPiA+
Pj4+IE9uIDE4LjAyLjIxIDEwOjEyLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyB3cm90
ZToKPiA+Pj4+IEhpIGFsbCwKPiA+Pj4+IEkgaGF2ZSBzb21lIE4zMTBzIGFuZCBhIEIyMTAgdGhh
dCBJIHRyeSB0byBzeW5jIHdpdGggYSBHUFNETy4gQWxsIG9mIHRoZW0gcmVjb2duaXplIHRoZWly
IEdQU0RPcyBidXQgZmFpbCB0byBsb2NrLgo+ID4+Pj4gTXkgcGhvbmUgY2FuIHNlZSB+NyBTYXRl
bGxpdGVzLiBXZSBoYXZlIGEgUlBpIHdpdGggYSBHUFMgbW9kdWxlIHRoYXQgbG9ja3MgdG8gR1BT
IGluIHRoZSBzYW1lIGhhbGwuIFdlIHN3aXRjaGVkIGFudGVubmFzIGJ1dCBzdGlsbCwgd2UgY2Fu
J3Qgc3luYyBhbnkgb2YgdGhlIFVTUlBzIHRvIEdQUy4KPiA+Pj4+IEkgdHJpZWQ6Cj4gPj4+PiBg
YGAKPiA+Pj4+IGxpYi91aGQvdXRpbHMvcXVlcnlfZ3BzZG9fc2Vuc29ycwo+ID4+Pj4gYGBgCj4g
Pj4+PiBhbmQKPiA+Pj4+IGBgYAo+ID4+Pj4gbGliL3VoZC9leGFtcGxlcy9zeW5jX3RvX2dwcwo+
ID4+Pj4gYGBgCj4gPj4+PiBidXQgZXZlbiBhZnRlciBhIGRheSwgdGhleSBhbHdheXMgcmV0dXJu
ICJHUFMgZG9lcyBub3QgaGF2ZSBsb2NrIiBhbmQgIldBUk5JTkc6ICBHUFMgbm90IGxvY2tlZCAt
IHRpbWUgd2lsbCBub3QgYmUgYWNjdXJhdGUgdW50aWwgbG9ja2VkIi4KPiA+Pj4+IGBncHNtb25g
IG9uIHRoZSBOMzEwcyByZXBvcnRzIDAgU2F0ZWxsaXRlcy4gQnV0IGl0IGhhcyBhIGxpc3Qgb2Yg
c2F0ZWxsaXRlcy4KPiA+Pj4+IFNpbmNlIHdlIGhhdmUgc2V2ZXJhbCBkZXZpY2VzIGluIHRoYXQg
cm9vbSB0aGF0IGFyZSBhYmxlIHRvIGFjcXVpcmUgYSBsb2NrIGJ1dCBub25lIG9mIG91ciBVU1JQ
cyB3aXRoIHRoZWlyIEdQU0RPcywgSSB3b25kZXIgd2hhdCBpcyBnb2luZyBvbi4gRG8gdGhleSBu
ZWVkIGEgdmVyeSBzdHJvbmcgc2lnbmFsPwo+ID4+Pj4gQ2hlZXJzCj4gPj4+PiBKb2hhbm5lcwo+
ID4+Pgo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ID4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+ID4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
