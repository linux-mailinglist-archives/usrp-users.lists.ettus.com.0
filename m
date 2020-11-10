Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD82B2ACC31
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 04:53:54 +0100 (CET)
Received: from [::1] (port=60674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcKjA-0004Lg-2V; Mon, 09 Nov 2020 22:53:52 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:41994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kcKj6-0004G8-4f
 for USRP-users@lists.ettus.com; Mon, 09 Nov 2020 22:53:48 -0500
Received: by mail-qv1-f47.google.com with SMTP id b11so5258151qvr.9
 for <USRP-users@lists.ettus.com>; Mon, 09 Nov 2020 19:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=wuFMsA+GHplXTt1NqSbuSOrBeaGPr4014uGd+cKkT2s=;
 b=LkKWjuVrOtPMt2dpXDxZSUACt4+3ro2ixgkYkVCtY0JzSYUNNUtaElrPTM6Cc6HdVM
 rwHG9cyD0JQaOgme0yRFiqjDR30V2HhHujq6DMFee19bXs6OKykRPNmkagK2Bo2Irl+p
 4Kv6slxUUO7y1g56udXY6uKZ6Fg7MAT7EAD1Y+JPYKC0kqVcKA2zEh53P40zeXBXWhXp
 7+/czrqBpNmS51OXsEq5SgXBl/85fjj+Z/Ya7fJlredt7bh2HtID5ObuXG8L4AfbEdX4
 N2MgzPLai9nwf0OC4uP78lywABoqTlD2KnfNjM4jaB7+6gqPnpAK5sp8AuAMK9/OOxsy
 BAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=wuFMsA+GHplXTt1NqSbuSOrBeaGPr4014uGd+cKkT2s=;
 b=cChtOYTJV4QwRQEKxHYvpzwuM8El0v2qNO92Lt3a1ShJsnCK5Y3pxFaWm81yaiMAak
 w11KcBYFjgHzaR2jjQQCWQZS1mMCZetbtkvnW2rllJ0cDj1FK8qr4u4PlY1rzMiMc8D4
 HVqPmy3qjGpuHatP8zLLB+6Oz26+CYncRX3RmLMe6LGrFpiOC7goKe8J0tclPqGhyJFJ
 NAtmXNHJ9yxv+yeaozEsUlMC+LJQFsJ8raklSHTo9/D7oShCr5tlo3GyAUgnB2rqurbZ
 A3I6wy01QHWFQGUwUSE+ZFZO8RRKXeZRE6egWcNmo7dO07rt+xMwdMaHlXIKPhpF4SIT
 orug==
X-Gm-Message-State: AOAM5326zq8Vr1nW4KMLJ2fm6V4ZmP0Oh+F4pqBDb5TENauYzV99V1l8
 1//UY7lxXSPtsgcFuPiEnm58mhZm7PA=
X-Google-Smtp-Source: ABdhPJw8NhRFTXvZLrhMScXKMs8UQNYIPp+m11PsqcPfooO4/2fAnr4pdXfjSD2oALEE4JM2EWD24Q==
X-Received: by 2002:a0c:e8c8:: with SMTP id m8mr4909902qvo.41.1604980387424;
 Mon, 09 Nov 2020 19:53:07 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id d16sm1183110qkc.58.2020.11.09.19.53.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Nov 2020 19:53:07 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 9 Nov 2020 22:53:05 -0500
Message-Id: <A6A872C2-AF3C-4B3C-A72C-AF31633C909B@gmail.com>
References: <trinity-04e63cb6-c192-4324-8b56-1f4eadb851e9-1604975998973@3c-app-gmx-bs24>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <trinity-04e63cb6-c192-4324-8b56-1f4eadb851e9-1604975998973@3c-app-gmx-bs24>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (18A8395)
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

QSBsaW1pdGVyIGRpb2RlIGlzIG9mdGVuIHVzZWQgaW4gc2l0dWF0aW9ucyBsaWtlIHRoaXMuIAoK
U29tZXRpbWVzIGEgc2ltcGxlIGhhcmR3YXJlIHNvbHV0aW9uIGlzIGJlc3TigJRpdCByZWxpZXMg
b25seSBvbiBzZW1pY29uZHVjdG9yIHBoeXNpY3MgYW5kIG5vdCBjb3JyZWN0IHNvZnR3YXJlLiAK
ClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDksIDIwMjAsIGF0IDk6NDAgUE0sIEx1a2Fz
IEhhYXNlIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6
Cj4gCj4g77u/SSBuZWVkIGFuIG91dHB1dCBzaWduYWwgb2YgfjMyZEJtIChhdCA5MDAgTUh6KS4K
PiBJIGhhdmUgYSBNaW5pQ2lyY3VpdHMgWkhMLTI1Vy0yNzIrIGhpZ2ggcG93ZXIgYW1wbGlmaWVy
ICgyNVcpLgo+IFRoZSBnYWluIGF0IDkwMCBNSHogaXMgfjQ5LjIuCj4gSGksCj4gCj4gCj4gSSB3
b3VsZCBhbHNvIGxpa2UgdG8gZmlsdGVyIG91dCBoYXJtb25pY3MgKFVTUlAgYXMgd2VsbCBhcyBQ
QSkgd2l0aCBhIFZMRi0xMDAwKzsgdGhlIG1heCBpbnB1dCBwb3dlciBpcyAxMFcgKDQwZEJtKSwg
c28gbW9yZSB0aGFuIHdoYXQgSSB3YW50IHRvIG9idGFpbiAoMzJkQm0pLgo+IAo+IE15IGFwcHJv
YWNoIHdvdWxkIGJlIHRvIGNvbm5lY3QgdGhlIFVTUlAgb3V0cHV0IHRvIHRoZSBaSEwtMjVXLTI3
MisgYW5kIHRoZSBWTEYtMTAwMCsgZmlsdGVyIGFmdGVyd2FyZHMuCj4gCj4gSGVuY2UsIHRoZSBV
U1JQIHNob3VsZCBvdXRwdXQgYSBtYXhpbXVtIG9mIDMyZEJtLTQ5LjJkQj0tMTcuMmRCbS4KPiAK
PiBJIGNhbiBhY2hpZXZlIHRoaXMgYnkgc2V0dGluZyB0aGUgVFggR2FpbiB0byAwZEIgYW5kIGFk
ZGluZyBhIGRpZ2l0YWwgYmFja29mZiBpbiBteSBzYW1wbGVzIG9mIH41LjlkQi4KPiAKPiBJIHRo
aW5rIHRoaXMgc2hvdWxkIHdvcmsgYnV0IEkgYW0gbGl0dGxlIGJpdCBjb25jZXJuZWQgYWJvdXQg
c2FmZXR5IGlmIHRoZSBzb2Z0d2FyZSBmYWlscyBmb3Igc29tZSByZWFzb24gb3IgdGhlIHdyb25n
IHByb2dyYW0gaXMgc3RhcnRlZCBhY2NpZGVudGlhbGx5LiBUaGUgVVNSUCBjYW4gb3V0cHV0IHVw
IHRvIDIyZEJtIHdoaWNoIHdvdWxkIGRlc3Ryb3kgdGhlIEhQQSBhbmQgZmlsdGVyIChhbmQgd2hh
dCBmb2xsb3dzKS4KPiAKPiBJcyB0aGVyZSBhIHdheSB0byBwcm9ncmFtIGEgcG93ZXIgbGltaXQg
aW4gYWR2YW5jZT8KPiBXaGF0IGlzIHRoZSBiZXN0L3JlY29tbWVuZGVkIHdheSB0byBoYW5kbGUg
dGhpcyBzaXR1YXRpb24/Cj4gCj4gVGhhbmtzLAo+IEx1a2UKPiAKPiAKPiAKPiAKPiAKPiAKPiAK
PiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo=
