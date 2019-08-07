Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F384EC0
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 16:29:15 +0200 (CEST)
Received: from [::1] (port=46570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvMwC-0000l5-Lv; Wed, 07 Aug 2019 10:29:12 -0400
Received: from mail-wm1-f53.google.com ([209.85.128.53]:50938)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hvMw9-0000eG-GA
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 10:29:09 -0400
Received: by mail-wm1-f53.google.com with SMTP id v15so282843wml.0
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 07:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=fseUC5V5aB7IIiaoRiUYygus6MGF5G5cAncM73TFF0g=;
 b=TYANvr6sC7hMVE2q9eGl6SsZKnRgNeN4AMXRu4WfgZAr850wp0UDZNIxkVDvY9l/6x
 TzwjA7TAy+xUQyRU9hVR1sqCKhVinF5GJb0nioBiWCj69Cbt4GoqHW2F1LgBoGHrokYc
 oZGT48ApQm6eNShFRjaDoDTSQuaDNyzKyK0J9nqJg5uN6Mnp7UT+yv7zLkkxdYV3/Y/D
 4x0/csrK4tnuikLYIk0dwbNuzI5imW1J+tctXNeabPNksMEVnK8RKWEY5L92vmCNLyEL
 awFzAMLD+MVPlD9v+cJ6hXJpQ27RND9yuzu7/7XQn1+2S4XRZjQh5xc63yFMNfwVIJwq
 MuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=fseUC5V5aB7IIiaoRiUYygus6MGF5G5cAncM73TFF0g=;
 b=P3lhECUYHSxjLVsdkMpt0y0r4ftzyNeqRRd9jKscXPLMgfJxkJfQOUk3J53M7u4VRl
 EQlIvSC3Yk1q1jenD2e8iYfvqkAup1dhPyx/niwPqamZa7juKaMiFLLuT5H+oTp86ST3
 CUmvR3UQsruUJT7ZxHQm/VZUsWflP/cAidkaf2PEzQedzR7P7OJPNOEm2gfmg+ipzE8Z
 dtpmUowZzy7hiirUYkIbjhq7/suh2nJAUKKZd5hLCl5oOv0GZnNamNmKJjeOMKplzy2K
 B1zrIV7DL8d0SGYaCPw+T/mU/DN7hU1b23RfqAhdQlMWqikdS/sAj48ax1cEdhvP9xT5
 f2MQ==
X-Gm-Message-State: APjAAAUzdY5RaA10/kXjgXM/9Hj1C/kIPDfrp7uA796j5I6JPN1CtpMS
 /cv4WYUil7BYQXPnZ/DCrwtePJCmBxaC0w==
X-Google-Smtp-Source: APXvYqzT9NaZOAgqqVGCnMx3D+3gR9CYPZXXVlrXBRhFA0Lm6olfxOe7PR4sVu3bL97HaX4MurToWQ==
X-Received: by 2002:a7b:c4d0:: with SMTP id g16mr285840wmk.88.1565188108486;
 Wed, 07 Aug 2019 07:28:28 -0700 (PDT)
Received: from racer.hostalia.de ([2a00:1398:9:fb03:ff83:1873:1461:432e])
 by smtp.gmail.com with ESMTPSA id u2sm2869942wmc.3.2019.08.07.07.28.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 07:28:27 -0700 (PDT)
Message-ID: <f8ea5c7f476687dc4c87448039ef43dc8cfd40aa.camel@ettus.com>
To: hossein talaiee <h.talaiee@gmail.com>
Date: Wed, 07 Aug 2019 16:28:25 +0200
In-Reply-To: <CAAiBEBTGYFibhjqMf0VS0LnYBz1YSDi9i__PdnyX3LVSiH80zw@mail.gmail.com>
References: <CAAiBEBTT25JUU6Uybf6WLYakOLYGbKz4T_NUG5wTm_ydKpox-A@mail.gmail.com>
 <7c1e67d831b187fd3fb311b982cbbf91de26e6aa.camel@ettus.com>
 <CAAiBEBTGYFibhjqMf0VS0LnYBz1YSDi9i__PdnyX3LVSiH80zw@mail.gmail.com>
Organization: Ettus Research
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
Subject: Re: [USRP-users] USRP B2xx Tx Peak power mode
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

Tm8sIGl0IGRvZXNuJ3QgaGF2ZSB0bywgYXMgSSd2ZSBleHBsYWluZWQ6IEkgZG9uJ3Qga25vdyB3
aGF0IEEgaXMsIGJ1dAppZiBBIGlzIGxlYWRpbmcgdG8gc2F0dXJhdGlvbiBvciBldmVuIGNsaXBw
aW5nLCBhbmQgOCBpcywgdG9vLCB0aGVuIHlvdQpzZWUgbm8gY2hhbmdlIGluIGFtcGxpdHVkZS4K
CkJlc3QgcmVnYXJkcywKTWFyY3VzCgpPbiBXZWQsIDIwMTktMDgtMDcgYXQgMTI6NDEgKzA0MzAs
IGhvc3NlaW4gdGFsYWllZSB3cm90ZToKPiBEZWFyIE1hcmN1cywKPiAKPiBJIHVzZSB0aGUgc2Ft
ZSBzaWduYWwgZm9yIE5JLTU2NzIgYW5kIHNpZ25hbCBjaGFuZ2VzIGFzIGV4cGVjdGVkLCBJCj4g
Y2hhbmdlIEEgZnJvbSAgMjAwMCB0byA4IGFuZCBpdCBtdXN0IGRyb3AgNDYgZEIgYnV0IGRvZXMg
bm90IQo+IAo+IE9uIFR1ZSwgQXVnIDYsIDIwMTkgYXQgNDowOSBBTSBNYXJjdXMgTcO8bGxlciA8
Cj4gbWFyY3VzLm11ZWxsZXJAZXR0dXMuY29tPiB3cm90ZToKPiA+IERlYXIgSG9zc2VpbiwKPiA+
IAo+ID4gdGhlIEIyMDAgZG9lcyBOT1QgaGF2ZSBhIFRYIHBvd2VyIGNvbnRyb2wgdGhhdCB3b3Vs
ZCBjb21wZW5zYXRlCj4gPiB0aGF0Lgo+ID4gCj4gPiBBcmUgeW91IHBlcmhhcHMgZWl0aGVyIG5v
dCBjaGFuZ2luZyBBIHZlcnkgbXVjaCwgb3IgYXJlIHlvdSBwZXJoYXBzCj4gPiBjbGlwcGluZz8g
RHJpdmluZyB5b3VyIEIyMDAncyBUWCBhbXBsaWZpZXIgaW50byBzYXR1cmF0aW9uIHdvdWxkIG9m
Cj4gPiBjb3Vyc2UgbWVhbiB0aGF0IHlvdSdkIG5vdCBzZWUgbXVjaCBvZiBzaWduYWwgcG93ZXIg
cmVkdWN0aW9uIHdoZW4KPiA+IHJlZHVjaW5nIHNpZ25hbCBhbXBsaXR1ZGUsIHVudGlsIHlvdSBj
cm9zcyB0aGUgdGhyZXNob2xkIHdoZXJlCj4gPiB0aGluZ3MKPiA+IGJlY29tZSBsaW5lYXIgYWdh
aW4uCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IE1hcmN1cwo+ID4gCj4gPiBPbiBNb24sIDIw
MTktMDgtMDUgYXQgMTc6MDAgKzA0MzAsIGhvc3NlaW4gdGFsYWllZSB2aWEgVVNSUC11c2Vycwo+
ID4gd3JvdGU6Cj4gPiA+IEhpCj4gPiA+IAo+ID4gPiBJIHdhbnQgdG8gbWFudWFsbHkgY29udHJv
bCBvdXRwdXQgcG93ZXIgb2YgbXkgVVNSUCB3aXRoIHNpZ25hbAo+ID4gbGV2ZWwKPiA+ID4gbm90
IHVzcnAgZ2Fpbixmb3IgZXhhbXBsZSBJIHdhbnQgdG8gZ2VuZXJhdGUgYSBzaW51c29pZGFsIHNp
Z25hbAo+ID4gd2l0aAo+ID4gPiBlcXVhdGlvbjoKPiA+ID4gIAo+ID4gPiAgICBzKHQpID0gQSAq
IHNpbih3KnQpOwo+ID4gPiAKPiA+ID4gYW5kIHdhbnQgdG8gY2hhbmdlIEEgdG8gY29udHJvbCB0
eCBwb3dlciwgYnV0IHdoZW4gSSBjaGFuZ2UgaXQsCj4gPiA+IHNvbWVob3cgVVNSUCBjb21wZW5z
YXRlIG15IGNoYW5nZSBhbmQgdHJpZXMgdG8gaG9sZCB0eCBwb3dlciEKPiA+IGxpa2UgaXQKPiA+
ID4gaXMgdHJ5aW5nIHRvIGhvbGQgYXZlcmFnZSBwb3dlci4KPiA+ID4gCj4gPiA+IFVzaW5nIE5J
LTU2NzIgc2lnbmFsIGdlbmVyYXRvciwgSSBhbSBhYmxlIHRvIGNvbnRyb2wgcG93ZXIgd2l0aAo+
ID4gPiBzZXR0aW5nIHRoZSBwb3dlciBtb2RlIHRvICJQZWFrIFBvd2VyIG1vZGUiIGluc3RlYWQg
b2YgIkF2ZXJhZ2UKPiA+IFBvd2VyCj4gPiA+IG1vZGUiLiBJIHRoaW5rIFVTUlAgaGFzIHNvbWV0
aGluZyBsaWtlIHRoaXMgdG8gY29udHJvbCBwb3dlci4gSG93Cj4gPiBjYW4KPiA+ID4gSSBkaXNh
YmxlIGl0Pwo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ID4gPiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+ID4gPiAKPiA+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+ID4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
