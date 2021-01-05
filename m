Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B0B2EA487
	for <lists+usrp-users@lfdr.de>; Tue,  5 Jan 2021 05:50:08 +0100 (CET)
Received: from [::1] (port=44274 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kweIH-00067v-HX; Mon, 04 Jan 2021 23:50:05 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:38782)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kweID-0005yZ-Ip
 for USRP-users@lists.ettus.com; Mon, 04 Jan 2021 23:50:01 -0500
Received: by mail-qt1-f175.google.com with SMTP id y15so20151872qtv.5
 for <USRP-users@lists.ettus.com>; Mon, 04 Jan 2021 20:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=5eUvmV02molbFInb+XttNNg07/qDZVepdZJYNpSth0c=;
 b=Wa5lnzE0so2o03t5ysaWHBgCVWVVnH5rrvyZraT2FFgdNoSCSje84/aohIhKYy+6qN
 V9RDOKDxtlY8gp7hOHwHf2SGuHz++JEYAYsKzCz2OOS+HpFAFBJL/yP/SwTrdjhG6X3J
 vjaD+sczAB3XUZVdvT4JanS3ey98igwK9HhaTzw3gFXNxIaakpQq1ZqhtuAzs4Napt7D
 dCvq6+DJ5M57/+mKI/I3nwyRVotLk/75doyPymni8hDzKvjzIHv85OdU3FdIBTQbjam1
 8wSRch4umPNnulzWmSmxngHNRgXBaZaPEkRHXvzvzgoTJQ3HN5GRVTwJ7P2N/NgH9ze0
 TKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=5eUvmV02molbFInb+XttNNg07/qDZVepdZJYNpSth0c=;
 b=dFuwDhFF4UIrtSbpkrtwkocN20/gIfgIZeesd4rXWBJzO44ju8fZVPC0tUdWvqUb6r
 5NvfZgTjnXBXG69CzUzOhrrASE3zldvIGpWt2xSJp6LI7D8gbWNS3v/ZRqEiEuwAUZbT
 x+mLjx6zoXIVVbCN53ltlaZOobYpjMrzJua8KgpGnS/vQCTVnXMktRGfNUUT9XNOjvFs
 6BKug2f9Ba/9hc2wjrlBxCIofIw6lfBsJ6tLBjBOOS1J+wEh2Y2EvpahGVHni0coRtil
 tcu1sf8jPmDsSCsUQbux7RwK+3e4x5gJ04wURnDOv5HwjbwYK0fnNEAuidi7fmUOX9Hy
 Gg5A==
X-Gm-Message-State: AOAM533a13KrM6ILKjogSQDNJBLcV5gZF2uvGLt9yM4J1/3KbrWd4Oz2
 7UeTpPkL3SIi+6WeWm/qJTQLjxyvU6Q=
X-Google-Smtp-Source: ABdhPJyApU83q7UVWfyickMHS7Q+whOaBswJHn46Kp4ZnjyQX3mrHw/cpI7ZR3TJtqJ6qu9N2GqS/w==
X-Received: by 2002:ac8:3ac5:: with SMTP id x63mr76211179qte.376.1609822160745; 
 Mon, 04 Jan 2021 20:49:20 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id p15sm38508370qke.11.2021.01.04.20.49.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jan 2021 20:49:20 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 4 Jan 2021 23:49:19 -0500
Message-Id: <ACBF672A-AAC7-4931-9A8A-6643ABB9D3B1@gmail.com>
References: <trinity-b5da53c8-0ba0-46c1-89a3-6b706b96fa38-1609821177203@3c-app-gmx-bap76>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <trinity-b5da53c8-0ba0-46c1-89a3-6b706b96fa38-1609821177203@3c-app-gmx-bap76>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] X310/UBX as a monostatic transceiver (e.g. RFID
 reader)?
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

SWYgdGhlIFRYIGFuZCBSWCBmcmVxdWVuY2llcyBhcmUgYSBmZXcgMTAwa0h6IGRpZmZlcmVudCB0
aGVuIHdoYXQgeW91IHdhbnQgaXMgYSBkdXBsZXhvciBhcnJhbmdlbWVudCB3aGVyZSB0aGUgVFgg
ZnJlcXVlbmN5IGlzIHN0cm9uZ2x5IGF0dGVudWF0ZWQgYWhlYWQgb2YgdGhlIFJYLiAKClRoaXMg
aXMgaG93IHJlcGVhdGVycyB3b3JrIHdoZW4gbXVsdGljb2lwbGVkIHRvIGEgc2luZ2xlIGFudGVu
bmEuIFRoZSBUWCBmcmVxdWVuY3kgaXMgb2Z0ZW4gYXR0ZW51YXRlZCA5MGRCIGluIHRoZSBSWCBw
YXRoLiAKCgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKYW4gNCwgMjAyMSwgYXQgMTE6MzMg
UE0sIEx1a2FzIEhhYXNlIDxsdWthc2hhYXNlQGdteC5hdD4gd3JvdGU6Cj4gCj4g77u/SGkgTWFy
Y3VzLAo+IAo+PiBPbiAwMS8wNC8yMDIxIDEyOjI1IFBNLCBMdWthcyBIYWFzZSB3cm90ZToKPj4g
SW4gYW4gUkZJRCBzeXN0ZW0sIHRoZSBSWCBpcyAqZGVzaWduZWQqIHRvIGJlIHVwLWNsb3NlLWFu
ZC1zbnVnbHkgd2l0aAo+PiB0aGUgb3RoZXIgZW5kcyBUWC4gIFRoZXJlJ3MgTk8gcmVhc29uIHRv
IGhhdmUgYW4gaW5wdXQKPj4gICBzdGFnZSB0aGF0IGlzIHNlbnNpdGl2ZSBpbiB0aGUgdXN1YWwg
UkYgc2Vuc2UuICBTbywgY29tcGxldGVseQo+PiBkaWZmZXJlbnQgZW5naW5lZXJpbmcgZ29hbHMg
dGhhbiBpbiBhIHR5cGljYWwgUkYgc3lzdGVtLgo+IAo+IFRoYXQncyBub3QgcXVpdGUgdHJ1ZS4g
U2Vuc2l0aXZpdHkgKmlzKiBpbXBvcnRhbnQgKGluIHRoZSBSRiBzZW5zZSkgYmVjYXVzZSBpdCBk
ZWZpbmVzIG9wZXJhdGluZyBkaXN0YW5jZS4KPiBZZXMsIG1hbnkgcGVvcGxlIGNsYWltIFJGSUQg
c3lzdGVtcyBhcmUgZm9yd2FyZCBsaW5rIGxpbWl0ZWQgKHdoaWNoIHdhcyB0cnVlKSBidXQgc3Rh
dGUtb2YtdGhlIGFydCB0YWdzIGNhbiBoYXZlIGEgc2Vuc2l2aXZpdHkgb2YgLTI0ZEJtIHdoaWNo
IGNvcnJlc3BvbmRzIHRvIG92ZXIgMjBtIGZyZWUgc3BhY2UsIDkwMCBNSHouCj4gVGhlIHJlc3Bv
bnNlIGZyb20gdGhlIHRhZyBhdCB0aGUgcmVhZGVyIGlzIGFyb3VuZCAtODBkQm0uIFRoZSBSMjAw
MCBjaGlwIHRoYXQgSSBtZW50aW9uZWQgaGFzIGEgc2Vuc2l0aXZpdHkgaW4gZXhjZXNzIG9mIHRo
YXQuCj4gCj4gSW5kZWVkLCB0aGlzIGlzIHRoZSByZWFzb24gd2h5ICpzZW5zaXRpdml0eSogKGR1
ZSB0byBzZWxmIGludGVyZmVyZW5jZSkgaXMgdGhlIGxpbWl0aW5nIGZhY3RvciBpbiBSRklELgo+
IAo+Pj4gSSBoYXZlIHRob3VnaHQgb2YgYSBsaW1pdGVyIGFscmVhZHkuIFRoaXMgY291bGQgYmUg
YW4gb3B0aW9uLgo+Pj4gSXQncyB0cnVlLCBJIGhhdmVuJ3QgZm91bmQgbGltaXRlcnMgd2l0aCBs
b3dlciBwb3dlciBsZXZlbHMuCj4+PiAKPj4+IFR3byBxdWVzdGlvbnMgaGVyZToKPj4+IAo+Pj4g
LSBIb3cvd2h5IHdvdWxkIHRoZXkgYWRkIHRvIHRoZSBub2lzZSBmaWd1cmU/Cj4+IEFueSBsaW1p
dGVyIGRpb2RlIGhhcyBzaHVudCBjYXBhY2l0YW5jZS4gIFdoaWNoIG1lYW5zIHRoYXQgdGhlIGRl
Z3JlZSB0bwo+PiB3aGljaCBpbnB1dCBwb3dlciBpcyBzaHVudGVkIHRvIGdyb3VuZCBpcyBwcm9w
b3J0aW9uYWwKPj4gICB0byB0aGUgaW5wdXQgZnJlcXVlbmN5IGFuZCBzaHVudCBjYXBhY2l0YW5j
ZS4gICBBTlkgYXR0ZW51YXRpb24KPj4gKHdoZXRoZXIgcmVzaXN0aXZlIGRpc3NpcGF0aW9uIG9y
IHNodW50LXRvLWdyb3VuZCBwYXRod2F5cykgaW4KPj4gICBmcm9udCBvZiB0aGUgZmlyc3QgZ2Fp
biBzdGFnZSBhZGRzICpESVJFQ1RMWSogdG8gdGhlIG5vaXNlIGZpZ3VyZSBvZgo+PiB0aGF0IHN0
YWdlLiAgIFNvLCBsZXQncyBzYXkgeW91IGhhdmUgYSBuaWNlIHNtYWxsLXNpZ25hbCBMTkEgd2l0
aAo+PiAgIGEgbm90aW9uYWwgbm9pc2UgZmlndXJlIG9mIDAuNWRCLCBhbmQgeW91IHB1dCAxMGRC
IG9mIGxvc3MgaW4gZnJvbnQKPj4gb2YgaXQtLXRoZSBub2lzZSBmaWd1cmUgbm93IGJlY29tZXMg
MTAuNWRCLiAgRm9yIFJGSUQgdHlwZSBhcHBsaWNhdGlvbnMKPj4gICB0aGlzIGRvZXNuJ3QgbWF0
dGVyIHRoYXQgbXVjaC0tc2VlIG15ICJ1cCBjbG9zZSBhbmQgc251Z2x5Igo+PiBjb21tZW50cy4g
ICAgQnV0IGZvciAib3JkaW5hcnkiIFJGIHJlY2VpdmUgY2hhaW5zLCB5b3UgZ2VuZXJhbGx5IHdh
bnQKPj4gICB0byBtaW5pbWl6ZSBub2lzZSBmaWd1cmUgd2hpbGUgbWF4aW1pemluZyBnYWluIGFu
ZCBsaW5lYXJpdHkuCj4+IAo+PiBUaGVyZSBhcmUgZXhjZXB0aW9ucy0tZm9yIGV4YW1wbGUgYXQg
SEYgKGJlbG93IDMwTUh6IG9yIHNvKSwgdGhlIGlucHV0Cj4+IG5vaXNlIGlzICp1dHRlcmx5IGRv
bWluYXRlZCogYnkgZ2FsYWN0aWMgYmFja2dyb3VuZCBub2lzZSBhbmQKPj4gICBhdG1vc3BoZXJp
Y3MtLXRoZXJlJ3Mgbm8gcG9pbnQgaW4gaGF2aW5nIGFuIGlucHV0IHN0YWdlIHdpdGggYSBub2lz
ZQo+PiBmaWd1cmUgYmVsb3cgcGVyaGFwcyA1LTEwZEIuICBTbyBmb3IgSEYsIGlucHV0IHN0YWdl
cyB0ZW5kIHRvCj4+ICAgYmUgb3B0aW1pemVkIGZvciBsaW5lYXJpdHkgYXQgaGlnaGVyIGlucHV0
IGxldmVscy0tYmVjYXVzZSBldmVuCj4+IGRpc3RhbnQgc2lnbmFscyBjYW4gYmUgcXVpdGUgc3Ry
b25nIGF0IEhGLS1wYXJ0aWN1bGFybHkgb24gdGhlIGxvd2VyIGVuZC4KPj4gCj4+PiAtIFRoZSBs
YXJnZSBzZWxmLWludGVyZmVyZSB3b3VsZCByZXN1bHQgaW4gY2xpcHBpbmcgKGhhcmQgbm9ubGlu
ZWFyaXRpZXMpLiBJcyB0aGlzIGFueSBwcm9ibGVtIGZvciB0aGUgTE5BIChnYWluIGRlc2Vuc2l0
aXZpc2F0aW9uIGV0Yy4pCj4+IFdlbGwuICBZZWFoLiAgVGhhdCdzIHdoYXQgdGhlIFAxZEIgcGFy
YW1ldGVyIGlzIGFsbCBhYm91dC0tdGhlIGlucHV0Cj4+IGxldmVsIGF0IHdoaWNoIGdhaW4gaXMg
Y29tcHJlc3NlZCBieSAxZEIuCj4+IAo+PiBUaGUgb3ZlcmFsbCB0YWtlLWF3YXkgaGVyZSBpcyB0
aGF0IGdlbmVyaWMgcmFkaW9zICh3aGV0aGVyIHRoZXkgYmUgU0RScwo+PiBvciBvdGhlcnMpIHNo
b3VsZCBiZSB0aG91Z2h0IG9mIGFzICpjb21wb25lbnRzKiBpbiBhbgo+PiAgIG92ZXJhbGwgKmVu
Z2luZWVyZWQgUkYgc3lzdGVtKi4gICBUaGF0IG1heSBtZWFuIHRoaW5ncyBsaWtlIHJlbGF5cyB0
bwo+PiBzaHVudCB0aGUgUlggcGF0aHdheSBkdXJpbmcgVFgsIGNpcmN1bGF0b3JzLCBhdHRlbnVh
dG9ycywKPj4gICBkaXBsZXhvcnMsIGZpbHRlcnMsIFJGLXBsdW1iaW5nLWluLWdlbmVyYWwuCj4g
Cj4gWWVzLgo+IAo+IFRvIGNsYXJpZnkgbGltaXRlciB2cyBub24tbGltaXRlci4KPiBNeSBzZWxm
IGludGVyZmVyaW5nIHNpZ25hbCBmcm9tIFRYIGNhbiBiZSB1cCB0byAyMC0yNWRCbS4gVGhlIGRl
c2lyZWQgc2lnbmFsIGlzIGEgbW9kdWxhdGlvbiBiYW5kd2lkdGggKGZldyAxMDAga0h6KSBhd2F5
IGFuZCB0aGUgcmVjZWl2ZXIgc2hvdWxkIGJlIGFzIHNlbnNpdGl2ZSBhcyBwb3NzaWJsZSB0byB0
aGF0IHNpZ25hbC4KPiAKPiBOb3cgSSBoYXZlIHRoZSB0d28gb3B0aW9uczoKPiAKPiAxLikgQWRk
aW5nIGEgbm9ybWFsIGF0dGVudWF0b3Igb2YgNDBkQi4gVGhpcyBlbnN1cmVzIHRoZSBVU1JQIGlu
cHV0IGlzIGFsd2F5cyBsZXNzIHRoYW4gMjUtNDA9LTE1ZEJtIGJ1dCBpdCBhbHNvIHJlZHVjZXMg
bXkgZGVzaXJlZCBzaWduYWwgYnkgNDBkQi4gSW4gb3RoZXIgd2lyZHMsIG15IG5vaXNlIGZpZ3Vy
ZSB3b3JzZW5zIGJ5IDQwZEIsIGFzIHlvdSBtZW50aW9uZWQuCj4gCj4gMi4pIEFkZGluZyBhbiBS
RiBsaW1pdGVyIHdpdGggZmxhdCBsZWFrYWdlICs1ZEJtIChJIGZvdW5kIFNLWTE2NjAyLTYzMkxG
KS4gQWZ0ZXJ3YXJkcyBJIGFkZCBhIDIwZEIgYXR0ZW51YXRvciB0byBnZXQgdGhlIG1heCB0byA1
LTIwPS0xNWRCbS4KPiAKPiBJZiBJIHVuZGVyc3RhbmQgeW91ciBleHBsYW5hdGlvbiBjb3JyZWN0
bHksIHRoZXJlIGlzIG5vIHJlYWwgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZXNlIHR3byAoYmVjYXVz
ZSB0aGUgbGltaXRlciB3b3VsZCBzdGlsbCBjcnVzaGVzIHNpZ25hbCBhbmQgd2l0aCBpdCBkZXNl
bnNpdGl6ZXMgdGhlIGRlc2lyZWQgc2lnbmFsIG9uIHRvcCkuCj4gSXMgdGhpcyBjb3JyZWN0Pwo+
IAo+IFdvdWxkIHlvdSBwcmVmZXIgb25lIG9wdGlvbiBvdmVyIHRoZSBvdGhlcj8KPiAKPiBUaGFu
a3MgYWdhaW4sCj4gTHVrYXMKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo=
