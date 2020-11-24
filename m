Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA6C2C30CC
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 20:41:34 +0100 (CET)
Received: from [::1] (port=34936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kheBw-0008RP-RM; Tue, 24 Nov 2020 14:41:32 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:40400)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kheBt-0008Kr-85
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 14:41:29 -0500
Received: by mail-qk1-f179.google.com with SMTP id y197so22239267qkb.7
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 11:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=lzj1aovKyQ6m6yKf114j4ybXDyeKC2tet8Trwr17Quo=;
 b=ZlDRy+6lHaPsv+prvM7aYhXnmY/wLhpAr08i1whhZtrpVxxN3tBSWdBH5RUnR9Ty3f
 EiwScKtmEpD/GRQ2T3ZBLKBOe4Lr/uSKNxxlFiIrioFDRoDuw3wBg4q24KhfEjMqSz7h
 2PRxxyVInvLoNfm/37G441OgLJEXxky83ElCpO7su2oKlhq6rSUiqanzPclvkHue9i8z
 5G7wz+TNHGf+L01raJyJQzykye53ADaozeK8cusRqqnfJ5vNHG/25Vf1K63vsSVQllwq
 Tdf+DNGCeCSH0k4gn32dvdYG5mo4Ht29wC9KmiCJTikRSN6JaUAwVTX8krmojjlYW/QE
 pIgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=lzj1aovKyQ6m6yKf114j4ybXDyeKC2tet8Trwr17Quo=;
 b=OwR2frWIJ+i2kj47d/FvA4PkuREH3IY6WvI3s+Mx/RaxHXN286vd0zs9Y5hePhO+ps
 oqP0OX4XL8arXRBOVyullEfE5P0seb1f8q7xW3XpLjTX0auruftfaY+Xcq9kMLnKYQWq
 nXsJhagaN7WsmTHG4hTZif2AeTwIRtdh/aRW3l9c4FkuJ46mduKdXf/gU0DY62CWk67x
 hDk+syvrym+y+bMMfM4P5E+u1/QMaXJgK9kDbJGOUHyyKuUFgCEV0WagNqkqdH1dXOBE
 Bqc3mAHG4S8whuSwog6BFkNum1qFLLQkN6RpTJykM0Up/iVO8v1Bi9M3UefdH0s4CT0Y
 +yLg==
X-Gm-Message-State: AOAM5319idri5GgfQ2XG9pE/A+aI5JIcIinw2jl/n5izKnVxYTLT3Rt7
 btkiiXcaoIfIZRsAxym7D5ucnzLQsgs=
X-Google-Smtp-Source: ABdhPJz+QAzuaPo2Eutue1xhCD4kcg05SSZq/y/br4lEPsDGAYlPM8qgNPMWFDO5NFCdLPDwiOjcEw==
X-Received: by 2002:a37:7143:: with SMTP id m64mr6557753qkc.280.1606246848524; 
 Tue, 24 Nov 2020 11:40:48 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id p188sm95783qkb.60.2020.11.24.11.40.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Nov 2020 11:40:48 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 24 Nov 2020 14:40:47 -0500
Message-Id: <10B10E99-CD7E-49AF-9FC6-F1D6620BD96F@gmail.com>
References: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
To: Luke Whittlesey <luke.whittlesey@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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

UiZEIHN1Z2dlc3QgdXBkYXRpbmcgdG8gYSBVSEQgMy4xNSBlbnZpcm9ubWVudCBmaXJzdC4gCgpT
ZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE5vdiAyNCwgMjAyMCwgYXQgMTo1NCBQTSwgTHVrZSBX
aGl0dGxlc2V5IDxsdWtlLndoaXR0bGVzZXlAZ21haWwuY29tPiB3cm90ZToKPiAKPiDvu79JJ20g
c2VlaW5nIHRoaXMgb24gdHdvIEUzMTBzIHRoYXQgYXJlIGEgZmV3IHllYXJzIG9sZC4gSSBqdXN0
IHN3YXBwZWQKPiB0aGUgc2QgY2FyZCBpbnRvIGEgYnJhbmQtbmV3IEUzMTAgYW5kIEkgYW0gTk9U
IHNlZWluZyB0aGUgZnJlcXVlbmN5Cj4ganVtcHMuIFNvLCBzYW1lIGV4YWN0IHNvZnR3YXJlLCBi
dXQgZGlmZmVyZW50IGFnZWQgRTMxMHMuIElzIHRoZXJlCj4gcG9zc2libHkgYSBkaWZmZXJlbmNl
IGluIGhhcmR3YXJlIGxlYWRpbmcgdG8gdGhpcz8KPiAKPj4gT24gVHVlLCBOb3YgMjQsIDIwMjAg
YXQgMTowNCBQTSBMdWtlIFdoaXR0bGVzZXkKPj4gPGx1a2Uud2hpdHRsZXNleUBnbWFpbC5jb20+
IHdyb3RlOgo+PiAKPj4gSSB3b3VsZCBzYXkgdGhleSBhcmUgcHJvcG9ydGlvbmFsIHRvIGZyZXF1
ZW5jeS4gQXR0YWNoZWQgaXMgd2hhdCBpdAo+PiBsb29rcyBsaWtlIGF0IDVHSHouIFRoZXJlIGFy
ZSBqdW1wcyBvZiA0MDBIeiBhbmQgMjIwSHouCj4+IAo+Pj4gT24gVHVlLCBOb3YgMjQsIDIwMjAg
YXQgMTE6NTAgQU0gTWFyY3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90
ZToKPj4+IAo+Pj4gVHJ5IGF0IGxvd2VyIGFuZCBoaWdoZXIgZnJlcXVlbmNpZXPigJRhcmUgdGhl
IGp1bXBzIHRoZSBzYW1lIG9yIHByb3BvcnRpb25hbCB0byBmcmVxdWVuY3k/Cj4+PiAKPj4+IFNl
bnQgZnJvbSBteSBpUGhvbmUKPj4+IAo+Pj4+IE9uIE5vdiAyNCwgMjAyMCwgYXQgMTE6MjcgQU0s
IEx1a2UgV2hpdHRsZXNleSB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+IHdyb3RlOgo+Pj4+IAo+Pj4+IO+7v09uIHRoZSBFMzEwIEknbSBzZWVpbmcgZGlzY3JldGUg
anVtcHMgaW4gdGhlIGNhcnJpZXIuIFRoZSBjYXJyaWVyIHdpbGwKPj4+PiBpbnRlcm1pdHRlbnRs
eSBqdW1wIGFyb3VuZCBpbiBzdGVwcyBvZiBhYm91dCA1MEh6LiBTb21ldGltZXMgaXQgd2lsbAo+
Pj4+IGp1bXAgYnkgYWJvdXQgMjAwSHouIEkndmUgYXR0YWNoZWQgYSB3YXRlcmZhbGwgZGlzcGxh
eSwgYnV0IEkgZG9uJ3QKPj4+PiBrbm93IGlmIGF0dGFjaG1lbnRzIHdpbGwgbWFrZSBpdCB0aHJv
dWdoLgo+Pj4+IAo+Pj4+IE15IHNldHVwIGlzOgo+Pj4+IEUzMTAgU0czCj4+Pj4gVUhEMy4xMSB1
c2luZyB0aGUgQy1hcGkKPj4+PiBUaW1pbmcgUmVmZXJlbmNlIGlzICJpbnRlcm5hbCIKPj4+PiBD
ZW50ZXIgRnJlcXVlbmN5IDFHSHoKPj4+PiBJL1Egc2lnbmFsIGlzIGEgc3RyZWFtIG9mIDEsMC4u
LiBmb3IgYSBDVyBhdCB0aGUgY2Fycmllcgo+Pj4+IAo+Pj4+IEkgY2FuIHNlZSB0aGUgc2FtZSB0
aGluZyB3aGVuIEkgc2V0IHRoZSB0aW1lc291cmNlIHRvICJncHNkbyIsIGJ1dCBJCj4+Pj4gd291
bGRuJ3QgZXhwZWN0IGl0IHdoZW4gSSBzZXQgaXQgdG8gImludGVybmFsIi4gTXkgZ3V0IHNheXMg
dGhhdCB0aGlzCj4+Pj4gaXMgYmVpbmcgY2F1c2VkIGJ5IHNvbWUgdGltZXNvdXJjZSBjb3JyZWN0
aW9uIGxvb3AuIElmIHRoaXMgaXMgdGhlCj4+Pj4gY2FzZSBpcyB0aGVyZSBhIHdheSB0byBkaXNh
YmxlIHRoaXM/Cj4+Pj4gCj4+Pj4gVGhhbmsgeW91Cj4+Pj4gPGUzMTAtbG8tZnJlcXVlbmN5LXNo
aWZ0czIucG5nPgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+PiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
