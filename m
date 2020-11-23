Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4FC2C10E9
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 17:43:14 +0100 (CET)
Received: from [::1] (port=48916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khEve-0002Ck-KZ; Mon, 23 Nov 2020 11:43:02 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:34792)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1khEva-0002A5-UJ
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 11:42:58 -0500
Received: by mail-qt1-f181.google.com with SMTP id 7so13830790qtp.1
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 08:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=CfKq7uZChFAqFZKe4DydCj6JcGTcgKbPhzgz1/gSk18=;
 b=T3OOhfC9K57N0hS5F8QEwGacNhfrOvpubiOqlkVYuee6LLnXuGX5DWQoLoR7fQbUah
 CJS5TkgCP3XdDchipyVBmAG+7Ruv5z8C2jJjc6NNOdM/jfM2iaiY30xJq0XhcY/lbek7
 s+AtP17XnXKCp8HYnsbDc0dKps92tReRrOfS1/B+SNlplcCGFeFmFjiGdv3t5kOPRQYI
 j8w9485m2e20h0qqeXAK+kl6RPDT2M2Gxy1JSL9QgK/5lWHjquhxAvejjnKV5ScyUNv0
 9LYipfpy+tnENrEd0fMPf2zCuKXkGdW1azyZnNX/lGhWnznCYp+zxPnsWU4azKQVBDvN
 ieuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=CfKq7uZChFAqFZKe4DydCj6JcGTcgKbPhzgz1/gSk18=;
 b=i/nEa8G70kCqCIgd2t7u5tOMjJRkbbAOlEALJExf0mP4iOAuUr/fXBdtgtuge86F5u
 301+m6LUP2oM69l4mNhJ2ddLVDbeL+ULSFsbeFGRI7smtoo2gR+ecGCMPhnPNlS+niNm
 tGMBGneJQ8Tnwz6RbP+WoaKzxtAn5dvwTcvWdjsU7ou2KzNHkvpwJl2iArk+FPHamUPJ
 /BjIwmiG5j7qf1hGjiu6a/e3ctu1alweb8fZXlV9OteXYELzjDfdiVZjh/B0727sN4Dq
 eL374Ps4pdhMixHZPpK+K8jrMY+CZssIsL7B5ozliqJc0Nwz02M3Ea3f6Kk7KfOB/j3C
 DXag==
X-Gm-Message-State: AOAM531Ni0eaAEl9h1XAGEtRGDA9nl5ox0d0X2r9M+cUcbzR959SANqh
 K5phjJezamCw1ltXaIukp23cr07C/KSJ5w==
X-Google-Smtp-Source: ABdhPJy0jbLg44yOZUuEcKUbtkrVTm2m8D3LtlJhfnRSyuutGzJQ4vAF2LM5WbgUvUfGZzuzdZ/kKw==
X-Received: by 2002:a05:622a:301:: with SMTP id
 q1mr30052310qtw.237.1606149738137; 
 Mon, 23 Nov 2020 08:42:18 -0800 (PST)
Received: from [10.20.249.76] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id j63sm9562257qke.67.2020.11.23.08.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Nov 2020 08:42:17 -0800 (PST)
Message-ID: <a5dda2285147de74f294c16a41a74037df7e6f88.camel@virginia.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Date: Mon, 23 Nov 2020 11:42:19 -0500
In-Reply-To: <5FB95FE1.3060206@gmail.com>
References: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>
 <5FB5ADDB.4030608@gmail.com>
 <7f74f5e9fd21affec4856445c013b9dea6f58c2f.camel@virginia.edu>
 <5FB5C4E0.7060201@gmail.com>
 <7580d45f2b0de0676988b77bdfdebab22866e1b7.camel@virginia.edu>
 <5FB95FE1.3060206@gmail.com>
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
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

TWFyY3VzLAoKSSBkbyBoYXZlIGFjY2VzcyB0byBzaWcgZ2VucywgYnV0IEkgd291bGQgaGF2ZSB0
byB0YWtlIGV2ZXJ5dGhpbmcgaW50byB0b3duIHRvIGRvIHRoYXQuIChzYW5lc3QgdGhpbmcgdG8g
ZG8gZHVyaW5nIGNvdmlkCndhcyB0byBicmluZyBwb3J0YWJsZSB0aGluZ3MgaG9tZS4uLikKCldo
YXQgSSBkbyBoYXZlIGhhbmR5IHRob3VnaCBpcyBhIHNwZWN0cnVtIGFuYWx5emVyIChhbGJlaXQs
IG5vdCBhIHBhcnRpY3VsYXJseSBnb29kIG9uZSwgYnV0IHdoZW4gd29ya2luZyB3aXRoIGEgbmFy
cm93CnNwYW4gaXQgc2hvdWxkIGJlIGFibGUgdG8gZ2l2ZSByZXN1bHRzIHRoYXQgYXJlIGdvb2Qg
ZW5vdWdoKQoKV2hhdCBJIG9ic2VydmVkIGlzIHRoaXM6CnR4IGZyZXEgTUh6ICAgICBtZWFzIGZy
ZXEgW01Iel0gICAgIGRldmlhdGlvbiBbSHpdIDYwLjA1MCAgICAgICAgICA2MC4wNDg4MDAgICAg
ICAgICAgICAxMjAwCjYxLjA1MCAgICAgICAgICA2MS4wNTAxMDAgICAgICAgICAgIC0xMDAKNjIu
MDUwICAgICAgICAgIDYyLjA1MTIwMCAgICAgICAgICAgLTEyMDAKNjMuMDUwICAgICAgICAgIDYz
LjA1MjUzMyAgICAgICAgICAgLTI1MzMKNjQuMDUwICAgICAgICAgIDY0LjA1MzYwMCAgICAgICAg
ICAgLTM2MDAKNjUuMDUwICAgICAgICAgIDY1LjA1NDkzMyAgICAgICAgICAgLTQ5MzMKNjYuMDUw
ICAgICAgICAgIDY2LjA0NDAwMCAgICAgICAgICAgIDYwMDAKNjcuMDUwICAgICAgICAgIDY3LjA0
NTA2NyAgICAgICAgICAgIDQ5MzMKNjguMDUwICAgICAgICAgIDY4Li4uLi4uIE1pc3NlZCB0aGlz
IG9uZQo2OS4wNTAgICAgICAgICAgNjkuMDQ3NzMzICAgICAgICAgICAgMjI2Nwo3MC4wNTAgICAg
ICAgICAgNzAuMDQ4ODAwICAgICAgICAgICAgMTIwMAoKCkZvciByZWZlcmVuY2UsIHdoYXQgSSBv
YnNlcnZlZCB3aXRoIHRoZSB0d2lucnggd2FzIGFzIGZvbGxvd3MKZnJlcSAgICAgICAgdGFyZ2V0
IGJpbi9mcmVxICAgICBhY3R1YWwgYmluL2ZyZXEgICAgIGRpZmYgYmluL2ZyZXEgICAgICBkc3Ag
ZnJlcSAKNjBNSHogICAgICAgNTI0LjI4OCAoNTBlMykgICAgICA1MTIgKDQ4LDgyOCkgICAgICAg
ICAxMi4yODggKDEsMTcyKSAgICAgIDExNjAgICAKNjFNSHogICAgICAgNTI0LjI4OCAoNTBlMykg
ICAgICA1MjUgKDUwLDA2OCkgICAgICAgICAtMC43MTIgKC02OCkgICAgICAgICAtNjEgICAKNjJN
SHogICAgICAgNTI0LjI4OCAoNTBlMykgICAgICA1MzggKDUxLDMwOCkgICAgICAgIC0xMy43MTIg
KC0xLDMwOCkgICAgLTEyODIgICAKNjNNSHogICAgICAgNTI0LjI4OCAoNTBlMykgICAgICA1NTEg
KDUyLDU0NykgICAgICAgIC0yNi43MTIgKC0yLDU0NykgICAgLTI1MDMgICAKNjRNSHogICAgICAg
NTI0LjI4OCAoNTBlMykgICAgICA1NjMgKDUzLDY5MikgICAgICAgIC0zOC43MTIgKC0zLDY5Mikg
ICAgLTM3MjQgICAKNjVNSHogICAgICAgNTI0LjI4OCAoNTBlMykgICAgICA1NzYgKDU0LDkzMikg
ICAgICAgIC01MS43MTIgKC00LDkzMikgICAgLTQ5NDUgICAKNjZNSHogICAgICAgNTI0LjI4OCAo
NTBlMykgICAgICA0NjEgKDQzLDk2NCkgICAgICAgICA2My4yODggKDYsMDM2KSAgICAgIDYwNDQg
ICAKCkhhdmluZyB0YWtlbiB0aGUgVHdpblJYIG91dCBvZiB0aGUgbG9vcCwgaXQgc2VlbXMgSSdt
IGdldHRpbmcgdmVyeSBzaW1pbGFyIHJlc3VsdHMuIAoKRHVzdGluCgoKT24gU2F0LCAyMDIwLTEx
LTIxIGF0IDEzOjQzIC0wNTAwLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6Cj4gT24gMTEvMjEvMjAy
MCAwODoyOCBBTSwgRHVzdGluIFdpZG1hbm4gd3JvdGU6Cj4gPiBNYXJjdXMsCj4gPiAKPiA+IEkg
dHJpZWQgaXQgd2l0aG91dCB0aW1lZCBjb21tYW5kcyBsYXN0IG5pZ2h0LiBJdCB3YXMgbGFuZGlu
ZyBvbiB0aGUKPiA+IHNhbWUgZnJlcXVlbmNpZXMgYXMgaXQgZGlkIHdpdGggdGltZWQgY29tbWFu
ZHMgaS5lLiBkaWRuJ3QgZml4IHRoYXQKPiA+IHByb2JsZW0uCj4gPiAKPiA+IER1c3Rpbgo+IE9L
LCB0aGFua3MgZm9yIGRvaW5nIHRoZSB0ZXN0Lgo+IAo+IEkgd29uZGVyIGlmIHlvdSBoYXZlIGEg
cHJlY2lzZSBzaWduYWwgZ2VuZXJhdG9yIHNvIHlvdSBjYW4gY29uZmlybQo+IHRoYXQgCj4gdGhl
IFJYIHNpZGUgaXMgb24tZnJlcXVlbmN5Pwo+IAo+IAo+ID4gCj4gPiBPbiBXZWQsIDIwMjAtMTEt
MTggYXQgMjA6MDUgLTA1MDAsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToKPiA+ID4gT24gMTEvMTgv
MjAyMCAwNzozNCBQTSwgRHVzdGluIFdpZG1hbm4gd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCAyMDIw
LTExLTE4IGF0IDE4OjI3IC0wNTAwLCBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtCj4gPiA+ID4g
dXNlcnMKPiA+ID4gPiB3cm90ZToKPiA+ID4gPiBNYXJjdXMsCj4gPiA+ID4gCj4gPiA+ID4gT2gs
IHNvcnJ5LCBJIG1pc3NlZCB0aGUgZmlyc3QgYml0LiBJJ20gdXNpbmcgdGhlIG9uLWJvYXJkCj4g
PiA+ID4gY2xvY2suCj4gPiA+ID4gQW5kCj4gPiA+ID4gcGVyaGFwcyBJIHNob3VsZCBleHBsYWlu
IHRoZSB0YWJsZSB3aXRoIGEgbGl0dGxlIGJpdCBtb3JlCj4gPiA+ID4gZGV0YWlsOgo+ID4gPiA+
ICogMXN0IGNvbDogVGhlICp0YXJnZXQqIGZyZXF1ZW5jeS4gVGhlIFJYIHdhcyB0dW5lZCB0byB0
aGlzCj4gPiA+ID4gZnJlcXVlbmN5Lgo+ID4gPiA+IFRoZSBUWCB3YXMgdHVuZWQgdG8gdGhhdCBm
cmVxdWVuY3kgKyBhbiBvZmZzZXQgKGluIHRoaXMgY2FzZSwKPiA+ID4gPiA1MEtIego+ID4gPiA+
IGZvcgo+ID4gPiA+IGFsbCBkYXRhcG9pbnRzKS4KPiA+ID4gPiAqIDJuZCBjb2w6IFdoZXJlIHRo
ZSB0b25lIGlzIGV4cGVjdGVkIHRvIGxhbmQsIGJvdGggYmluIGFuZAo+ID4gPiA+IChiYXNlYmFu
ZCkKPiA+ID4gPiBmcmVxdWVuY3k7IGluIHRoaXMgY2FzZSwgYSA1MEtIeiBvZmZzZXQgZm9yIGFs
bCBkYXRhcG9pbnRzLAo+ID4gPiA+IHdoaWNoCj4gPiA+ID4gY29ycmVzcG9uZGVkIHRvIGJpbiA1
MjQgd2l0aCBhIDJeMjAgRkZULgo+ID4gPiA+ICogM3JkIGNvbDogd2hlcmUgdGhlIHRvbmUgd2Fz
IG9ic2VydmVkIChib3RoIGJpbiBhbmQKPiA+ID4gPiBmcmVxdWVuY3kpLgo+ID4gPiA+ICogNHRo
IGNvbDogZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSB0YXJnZXQgYW5kIGV4cGVjdGF0aW9uCj4gPiA+
ID4gKiA1dGggY29sOiBkc3AgZnJlcSAoZnJvbSB1aGQ6OnR1bmVfcmVzdWx0X3QuYWN0dWFsX2Rz
cF9mcmVxKQo+ID4gPiA+ICogNnRoIGNvbDogd2hhdCB0aGUgZGlmZmVyZW5jZSB3b3VsZCBiZSBp
ZiBJIG9mZnNldCB0aGUKPiA+ID4gPiBvYnNlcnZlZAo+ID4gPiA+IGZyZXF1ZW5jeSBieSB0aGUg
Y2xhaW1lZCBkc3AgZnJlcXVlbmN5Cj4gPiA+ID4gCj4gPiA+ID4gRHVzdGluCj4gPiA+ID4gCj4g
PiA+IFJpZ2h0LCBJIHVuZGVyc3RhbmQgdGhlIGNoYXJ0IG5vdy4KPiA+ID4gCj4gPiA+IFNvLCB0
aGlzIGlzIHJhdGhlciBvZGQuCj4gPiA+IAo+ID4gPiBJIGFzc3VtZSB0aGlzIGlzIHVuZGVyIHRp
bWVkIGNvbW1hbmRzLCB5ZXM/wqAgV2hhdCBoYXBwZW5zIGlmIHlvdQo+ID4gPiBkb24ndAo+ID4g
PiB1c2UgdGltZWQgY29tbWFuZHMtLWp1c3QgdG8gY2hlY2sgdG8gc2VlCj4gPiA+IMKgwqDCoCBp
ZiB0aGUgRFNQIGZyZXF1ZW5jeSBjaGFuZ2UgaXMgZ2V0dGluZyBza2lwcGVkIHVuZGVyIHRpbWVk
Cj4gPiA+IGNvbW1hbmRzPwo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gCj4gCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
