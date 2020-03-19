Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBB018ABE8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 05:48:00 +0100 (CET)
Received: from [::1] (port=55556 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEn64-00009M-8b; Thu, 19 Mar 2020 00:47:56 -0400
Received: from mout.gmx.net ([212.227.17.21]:53719)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jEn60-0008SV-2K
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 00:47:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584593230;
 bh=Vs4EViNvFTVxdcD1omYByrYJ54f42F6Z85ytkykO8wg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Hz3GquuRxWSZW6vf7iu/yiPYF+C+24NMwbuW07u5fJHYPMrq+DWi24/9hgAQ+9/np
 1MJBSyNyn809KWr5OBosaveTJ/UWeuYwrcQOFNWkDtMBCLjhORMOVa2FF4iZ2ENcuf
 GJU/IMRvPxqxzzn0YZif/JaxdYGlgFmY8SqQahBk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bap73.server.lan [172.19.172.173]) (via HTTP); Thu, 19 Mar 2020
 05:47:10 +0100
MIME-Version: 1.0
Message-ID: <trinity-d62ecb4e-9352-4225-b94c-c3ece7b9ead6-1584593230751@3c-app-gmx-bap73>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Thu, 19 Mar 2020 05:47:10 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E6BC2E8.20108@gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <5E6BC2E8.20108@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:cB6mIg5oa1PYYPMjQsKVW4bpeYzUehX2hsl1GtvpBQiM739VoeQZOpzKq8ioY+kl5bntE
 yZdsu7N9gDqZVwCqrUA2mAW5iyqyTd3KnQNLh/wxd7zHTXKnzqzAwUKqtpFHM4KNbQxF8nTlsJMW
 km2+b5NXKk1J0WsmeZmqrwhIYoWSl5u8ylVxK97c/2Y/2jh20bgApAer3E9h6Q0ZdIGDHVNcP34r
 C0N8ErM4d5y+rYZNVqBgCNO2t1q8FCEUzJDhKtrItkyD1qQe5labdKxaJ/mFmB5cEPG6WssNxe47
 js=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3GI4RH53VgE=:Ho8LAgWyexKNi5c0HgshKN
 yn+jN/o5kzPobfq+mrXbWqdMSAcQFppP40yWot5WsAxTREsBL4Vew8xE8zoy+gYxGYtjwHaZ/
 PodTbNChKNVJ8lwvc5J+KYBBc3epFpCeVkzwsc4Q/llPgAajTDI6tatnN1L0zu0GFlNWigz17
 bxbqvw0nLPnbbmLpj/do5u6DqLUevYfLHowbRJRSzWS8MAdaZiSX9l/uPyRRzTYhw7O8H00F9
 /AXJXQnF4xxsRk8vuf/1QTu5XyjCQMqCOYtgjRz6AQMpgemaKn1USIW0rCuSUL3HJPXx9zNwE
 hAuffjlpGgHZpNYR8gQzf9txN9DgftQMYeQ/xJ4qc3BjGSitW2+6rB2Jj5BJ9oaWqJfM4MQy4
 D8mfyqe/D4sHW1qPowi4Gt5BspXPDwUpTNFoHReX85A5vkA+Ou5MYrWbyFNoEU9wPJD8jFuB1
 TXxyQ+9IWOkwM3RFJXVLqduCRlJPFpmOxRAOiRGwjQY1ZbZA56l+xaOFhMXuE+wjZr1U/q/8M
 MrAOCS967irL8VA+o3on17WvCNSI20aRWjwTESzkd3u1l1rJNJFLxRTe18jc5ycyGRlTZuWyV
 v6Zor50RwaZasimt6ocTgiUXFltmpyDE9x0znyK1yODpzCIT6uYZ+dL5HGqdMRjtddZeNnRHS
 16ts4ns8LwzBSproR2UCgGjSWETR8Y/WKKurGSXNBvliVk5pQErkJGEwy/apNkF5AfbA=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

SGkgTWFyY3VzLAoKPiBHZXNlbmRldDogRnJlaXRhZywgMTMuIE3DpHJ6IDIwMjAgdW0gMTM6Mjkg
VWhyCj4gT24gMDMvMTMvMjAyMCAxMDo1MiBBTSwgTHVrYXMgSGFhc2Ugd3JvdGU6Cj4gPiBIaSBh
Z2FpbiBSb2IsCj4gPgo+ID4gWWVzLCBJIGNvbmZpcm06Cj4gPgo+ID4gMS4pIEZpbmFsbHkgSSBn
ZXQgdGhlIGNvbW1hbmRzIHRvIGV4ZWN1dGUgYXQgdGhlIHNhbWUgdGltZSAoVFggYW5kIFJYIGlu
ZGl2aWR1YWxseSBhbmQgYm90aCBhdCB0aGUgc2FtZSB0aW1lKQo+ID4gMi4pIFllcywgdGhlIHBo
YXNlIGlzIHJhbmRvbSBhZnRlciBlYWNoIHJldHVuZSwgZXZlbiB3aGVuIEkgcmV0dW5lIGJhY2sg
dG8gdGhlIHNhbWUgZnJlcXVlbmN5Cj4gPiAzLikgKDIpIGlzIG9ubHkgdHJ1ZSBpZiBpdCBpbmNs
dWRlcyAqRFNQKiByZXR1bmluZy4gV2l0aCBuYWFsb2cgcmV0dW5pbmcgKCtpbnRlZ2VyLU4gcmV0
dW5pbmcpIEkgZ2V0IHBoYXNlIGNvaGVyZW5jZSwgYXMgZXhwZWN0ZWQuCj4gPgo+ID4gSSBhY3R1
YWxseSBleHBlY3RlZCB0aGUgUExMIHJldHVuaW5nIG11Y2ggbW9yZSBjaGFsbGVuZ2luZyB0aGFu
IHRoZSBEU1AgcmV0dW5pbmcgYnV0IGZvciBzb21lIHJlYXNvbiBpdCBzZWVtcyB0byBiZSB0aGUg
b3Bwb3NpdGUuLi4KPiBJdCBkZXBlbmRzIG9uIHdoZXRoZXIgdGhlIHBoYXNlLWFjY3VtdWxhdG9y
IGluIHRoZSBEU1AgaXMgcmVzZXQgdG8gemVybywgCj4gb3Igd2hldGhlciBqdXN0IHRoZSBpbmNy
ZW1lbnQgcmVnaXN0ZXIgaXMgdXBkYXRlZCB3aXRoIHRoZQo+IG5ldyBwaGFzZSBpbmNyZW1lbnQu
ICAgVGhlcmUgYXJlIGdvb2QgYXJndW1lbnRzIGZvciBib3RoIGFwcHJvYWNoZXMuCgpBcyBmYXIg
YXMgSSBsZWFybmVkIHRoZSBwaGFzZSBhY2N1bXVsYXRvciBpcyByZXNldCB0byB6ZXJvIGluIHRo
ZSB4MzEwLiBJcyB0aGlzIG5vdCB0aGUgY2FzZT8KCkx1a2FzCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
