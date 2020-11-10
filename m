Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A142ACEE3
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 06:17:26 +0100 (CET)
Received: from [::1] (port=33162 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcM1y-0001SW-Sl; Tue, 10 Nov 2020 00:17:22 -0500
Received: from mout-xforward.gmx.net ([82.165.159.42]:48075)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kcM1v-0001Ng-BS
 for USRP-users@lists.ettus.com; Tue, 10 Nov 2020 00:17:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1604985398;
 bh=2kWeye+Ph9nPRBYFiQO2wNuO7R3M8tHq6/YMPshIisA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=chYwSCmHvfCsLKxVidG6YiyUqOtohywxjhuCTAFYwyyO50lzmoy1wd6tHbv8a6Wp6
 YliVGcpkSG4Qbe/9FxTpy4fIttgioH0SnrcpkPmSvf//bIsfBVDJ6y29rCvbFKiI3Y
 AmjAm+SOIxnAHO7aMVFaE8iGgLPL45UgfuE/KkzU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [176.113.74.228] ([176.113.74.228]) by web-mail.gmx.net
 (3c-app-gmx-bs24.server.lan [172.19.170.76]) (via HTTP); Tue, 10 Nov 2020
 06:16:38 +0100
MIME-Version: 1.0
Message-ID: <trinity-334b128b-0f5f-4f04-97f9-66d1620dd70e-1604985398046@3c-app-gmx-bs24>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Date: Tue, 10 Nov 2020 06:16:38 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <A6A872C2-AF3C-4B3C-A72C-AF31633C909B@gmail.com>
References: <trinity-04e63cb6-c192-4324-8b56-1f4eadb851e9-1604975998973@3c-app-gmx-bs24>
 <A6A872C2-AF3C-4B3C-A72C-AF31633C909B@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:30aKqHxamzLL2SWq6lJIGsu7Gop0ZfDsrptcpgaWzWPudvH50kMZ/hXebooYX6t9ezris
 k0zO7yDke1/wkz7vK/bg1OMN+wIZY4YEZ4MTIfvA5EQ0sSybWexZAmcuZ/jnz7YRDsgBAFjV/Yjo
 3m6EEO/hl9EfE6NULRkBnlDLzMjgWMUmsA3iqPLky72U2tPDNebnowctwXqSm8Ov7wInFeHjp+JH
 KbuXl093veKYsADWCLEFf5vMCvpV5sv4dPxVHOQ6yVZ2daCr8X81KyMTCvONiSDARg7LWXFcADvi
 TQ=
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:edvNcD8SlAE=:0T2LAF0XBI/xZMxW0PMTQwv3
 HxpykCAoNpT0Pl5C5JuHeUXd7LR9cBKjAzGkZdLZFaRnGSRFWCUY+aadpkNCRiEsLCrvl8Y/r
 +2cCgiVoB9Cmq52iOyCMJDYZbjnx/Bih20kTqiVAnHNULcZfpVEa/uMhbGgdI1h+YKexFYCC1
 k+xjjCMWwtiFQiU8wceQC/6G8zTqdkYpUnSh8PKcpfeDRADs1OcNOeHvnqDwI4+kZwtmbURT8
 sjEBVyLjfKAQrHxRka46eEnQTJFgiqSoo3ZeNGJkTtE/9CpXf2GGaDU86UgCct6/Jb+RNwJmp
 eW/bcvHMLMw18GQUBTJAf9th3VFM9y9BrH2jll15vv5OaXKNZYhaun8reUSmcuSCBCbdK8OQ0
 gA85MsKn4BF/I/lgFRq9bXcaAutt/2adfV+Hx88XyzpnD/WFrbtORVnXgVuYRvGWFgSs2Se4M
 xaKPWPWgQmJWiLCq6dOuoDHMzUHNG7YXcErKLQpvKNrY2J5qVSRDVs/eicFj46c3asBzYzZ99
 vuKPPCdHNTdGLRyq2/5NmZq6FwnnvRUad8nUlTThv5ILMlHoePEhJyOLIjkKwZXPdhV5QyD+6
 U1ZIIGTUvHpltG7A4+O3Qoh9WmrcleJN
Subject: Re: [USRP-users] Limiting output power,
 best approach to connect HPA?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

SGkgTWFyY3VzLAoKVGhpcyBpcyBhIGdyZWF0IGlkZWEuClVuZm9ydHVuYXRlbHkgUElOIGRpb2Rl
cyByYXJlbHkgZXhpc3QgYXMgImNvYXgiIG1vZHVsZXMgKGJ1dCByYXRoZXIgTU1JQ3MgdG8gYmUg
aW50ZWdyYXRlZCBvbiBhIGJvYXJkKS4KClRoZSBmZXcgY29heCBtb2R1bGVzIEkgZm91bmQgZnJv
bSBNaW5pLUNpcmN1aXRzIGFuZCBSRi1MYW1iZGEgYXJlIGZvciBoaWdoIHBvd2VycyAoPjBkQm0p
LiAKRm9yIG1lLCB0aGUgbWF4LiBvdXRwdXQgd291bGQgbmVlZCB0byBiZSB+IC0xNmRCbS4KCkJl
c3QgcmVnYXJkcywKTHVrYXMKCj4gR2VzZW5kZXQ6IE1vbnRhZywgMDkuIE5vdmVtYmVyIDIwMjAg
dW0gMjI6NTMgVWhyCj4gVm9uOiAiTWFyY3VzIEQgTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWls
LmNvbT4KPiBBbjogIkx1a2FzIEhhYXNlIiA8bHVrYXNoYWFzZUBnbXguYXQ+Cj4gQ2M6IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gQmV0cmVmZjogUmU6IFtVU1JQLXVzZXJzXSBMaW1pdGlu
ZyBvdXRwdXQgcG93ZXIsIGJlc3QgYXBwcm9hY2ggdG8gY29ubmVjdCBIUEE/Cj4KPiBBIGxpbWl0
ZXIgZGlvZGUgaXMgb2Z0ZW4gdXNlZCBpbiBzaXR1YXRpb25zIGxpa2UgdGhpcy4gCj4gCj4gU29t
ZXRpbWVzIGEgc2ltcGxlIGhhcmR3YXJlIHNvbHV0aW9uIGlzIGJlc3TigJRpdCByZWxpZXMgb25s
eSBvbiBzZW1pY29uZHVjdG9yIHBoeXNpY3MgYW5kIG5vdCBjb3JyZWN0IHNvZnR3YXJlLiAKPiAK
PiBTZW50IGZyb20gbXkgaVBob25lCj4gCj4gPiBPbiBOb3YgOSwgMjAyMCwgYXQgOTo0MCBQTSwg
THVrYXMgSGFhc2UgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3
cm90ZToKPiA+IAo+ID4g77u/SSBuZWVkIGFuIG91dHB1dCBzaWduYWwgb2YgfjMyZEJtIChhdCA5
MDAgTUh6KS4KPiA+IEkgaGF2ZSBhIE1pbmlDaXJjdWl0cyBaSEwtMjVXLTI3MisgaGlnaCBwb3dl
ciBhbXBsaWZpZXIgKDI1VykuCj4gPiBUaGUgZ2FpbiBhdCA5MDAgTUh6IGlzIH40OS4yLgo+ID4g
SGksCj4gPiAKPiA+IAo+ID4gSSB3b3VsZCBhbHNvIGxpa2UgdG8gZmlsdGVyIG91dCBoYXJtb25p
Y3MgKFVTUlAgYXMgd2VsbCBhcyBQQSkgd2l0aCBhIFZMRi0xMDAwKzsgdGhlIG1heCBpbnB1dCBw
b3dlciBpcyAxMFcgKDQwZEJtKSwgc28gbW9yZSB0aGFuIHdoYXQgSSB3YW50IHRvIG9idGFpbiAo
MzJkQm0pLgo+ID4gCj4gPiBNeSBhcHByb2FjaCB3b3VsZCBiZSB0byBjb25uZWN0IHRoZSBVU1JQ
IG91dHB1dCB0byB0aGUgWkhMLTI1Vy0yNzIrIGFuZCB0aGUgVkxGLTEwMDArIGZpbHRlciBhZnRl
cndhcmRzLgo+ID4gCj4gPiBIZW5jZSwgdGhlIFVTUlAgc2hvdWxkIG91dHB1dCBhIG1heGltdW0g
b2YgMzJkQm0tNDkuMmRCPS0xNy4yZEJtLgo+ID4gCj4gPiBJIGNhbiBhY2hpZXZlIHRoaXMgYnkg
c2V0dGluZyB0aGUgVFggR2FpbiB0byAwZEIgYW5kIGFkZGluZyBhIGRpZ2l0YWwgYmFja29mZiBp
biBteSBzYW1wbGVzIG9mIH41LjlkQi4KPiA+IAo+ID4gSSB0aGluayB0aGlzIHNob3VsZCB3b3Jr
IGJ1dCBJIGFtIGxpdHRsZSBiaXQgY29uY2VybmVkIGFib3V0IHNhZmV0eSBpZiB0aGUgc29mdHdh
cmUgZmFpbHMgZm9yIHNvbWUgcmVhc29uIG9yIHRoZSB3cm9uZyBwcm9ncmFtIGlzIHN0YXJ0ZWQg
YWNjaWRlbnRpYWxseS4gVGhlIFVTUlAgY2FuIG91dHB1dCB1cCB0byAyMmRCbSB3aGljaCB3b3Vs
ZCBkZXN0cm95IHRoZSBIUEEgYW5kIGZpbHRlciAoYW5kIHdoYXQgZm9sbG93cykuCj4gPiAKPiA+
IElzIHRoZXJlIGEgd2F5IHRvIHByb2dyYW0gYSBwb3dlciBsaW1pdCBpbiBhZHZhbmNlPwo+ID4g
V2hhdCBpcyB0aGUgYmVzdC9yZWNvbW1lbmRlZCB3YXkgdG8gaGFuZGxlIHRoaXMgc2l0dWF0aW9u
Pwo+ID4gCj4gPiBUaGFua3MsCj4gPiBMdWtlCj4gPiAKPiA+IAo+ID4gCj4gPiAKPiA+IAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
