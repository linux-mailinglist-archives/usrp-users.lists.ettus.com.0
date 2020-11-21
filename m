Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A972BBC97
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 04:13:08 +0100 (CET)
Received: from [::1] (port=53220 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgJKk-0006fA-He; Fri, 20 Nov 2020 22:13:06 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:36651)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kgJKg-0006VL-Ug
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 22:13:02 -0500
Received: by mail-qt1-f178.google.com with SMTP id z24so6732836qto.3
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 19:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=KPrtI2oe3O0K2dAtVb55K5ClPe+0QrfFmQnOoAGLbkc=;
 b=oxEH/HGBO6LsfM/DRr4v1e2Muz73ABRuWYyHn/67w7Ce1ZaCpjylaNwDxmPUwSQB/a
 VJwl1BncZMRNE8vtWygx38LUmN6vGHpPL0XhqP+hmVaafTtSspmvt0WZwKksNuKwmFsi
 ErNG0yWQAWgUzLwUhm3qrMYLyaZ2D879O9uPB2MD7KXFbsk1Iw0BXfeudU4LfZVvKmNi
 2ahNQ2nriWJ9mPHF+WajAyv8knagA7AvsFmHjyw4fCsi0C13hHW0jVlSBV4DoojjXEsO
 7KHLWsubdexz4ATnAkMKvea8b0ffHv7TbhmwmYdZCdnx8gHhxpf0omJ39tu0LAXnSaOg
 Fsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=KPrtI2oe3O0K2dAtVb55K5ClPe+0QrfFmQnOoAGLbkc=;
 b=Ng2g9OyJJlFBI8QuK/qro6nn7ObMpR/OMfzjkxqUKHGUEWxI90fStaJ0JkBR5GUUfK
 yuudWYInPiuvbGLuFiSoaLqJTiQG8gcSM3W91nmiGLp/PqkwCZIej4+B6UKRLvAGsOwo
 o/hnlfhHUKZTqrFJlpehFwEcx7PKcHC43/+wg1MqPSDsjqsCu4PMcZCu3GqTCloFvbLe
 1/mlOCss+ir+dm+TX2jeh1ROJoVew9Wiq7G7fK5bekjWmbpU+xFY1opKnVMhR/0ZIYFf
 nyrQAq0sLXI9CXdx4GEtrEp2QhcbNj9EoPte5GC0qbEyDeVH5KUGojMSmeYCOzTxxy/Q
 cQ4A==
X-Gm-Message-State: AOAM532Oqtqyh7ZwSiH3JPW5NRvxCnDpWNzHJ8O6n36JJzKvcwArc3nn
 bQ/imFCfd8ViO4WvkdKGLig=
X-Google-Smtp-Source: ABdhPJw+N9g/QNv7KSGbPpRcxSYGMbHIJEWgW0+qRg2FPOhqJldgjm9r2l7vcA9lL07sR+a7RnOQwg==
X-Received: by 2002:ac8:1493:: with SMTP id l19mr18760296qtj.198.1605928342295; 
 Fri, 20 Nov 2020 19:12:22 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id o127sm2263662qkf.135.2020.11.20.19.12.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Nov 2020 19:12:21 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 20 Nov 2020 22:12:20 -0500
Message-Id: <3A42F7CE-97CC-4D96-9534-583EBF92FFE0@gmail.com>
References: <CAPRRyxtbQ1UWrUd=hhJxmUMyMRt8rLtvpLMGPoqZXVpai=a9Aw@mail.gmail.com>
Cc: discuss-gnuradio <Discuss-gnuradio@gnu.org>,
 usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAPRRyxtbQ1UWrUd=hhJxmUMyMRt8rLtvpLMGPoqZXVpai=a9Aw@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Overrun on chan error 0 USRP e310 RFNoC
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

VGhlcmXigJlzIG5vIHdheSB0aGUgZnBnYSB0byBBUk0gY2hhbm5lbCBjYW4gc3VwcG9ydCB0aG9z
ZSBkYXRhIHJhdGVzLiAgTG93ZXIgeW91ciBzYW1wbGUgcmF0ZSB0byA1bXNwcyBhbmQgdHJ5IGFn
YWluLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDIwLCAyMDIwLCBhdCAxMDowMiBQ
TSwgSXZhbiBaYWhhcnRjaHVrIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGVsbG8sIEkgd2FudCB0byBsYXVuY2ggdHdvIGNoYW5u
ZWxzIGZvciByZWNlaXZpbmcgaW4gcGFyYWxsZWwgd2l0aCB1c3JwIGUzMTAgcmZub2MuIEJ1dCBv
biBzdGFydHVwLCBJIGdldCBhbiBvdmVycnVuIGVycm9yLiBXaGF0IEkgbmVlZCBpcyB1bmludGVy
cnVwdGVkIGRhdGEgdHJhbnNtaXNzaW9uIGZvciBwaGFzZSBhbmFseXNpcyBvbiBib3RoIGNoYW5u
ZWxzLiBIb3cgY2FuIEkgZG8gdGhpcz8KPiA80KHQvdC40LzQvtC6INGN0LrRgNCw0L3QsCDQvtGC
IDIwMjAtMTEtMjEgMDQtNTAtMTcucG5nPgo+IAo+IDzQodC90LjQvNC+0Log0Y3QutGA0LDQvdCw
INC+0YIgMjAyMC0xMS0yMSAwNC01Mi0yMS5wbmc+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
