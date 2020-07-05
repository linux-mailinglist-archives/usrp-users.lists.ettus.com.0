Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD825214DEE
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jul 2020 18:14:27 +0200 (CEST)
Received: from [::1] (port=37668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1js7Ha-0003ay-Ge; Sun, 05 Jul 2020 12:14:22 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:34903)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1js7HW-0003Vg-F7
 for USRP-users@lists.ettus.com; Sun, 05 Jul 2020 12:14:18 -0400
Received: by mail-qk1-f172.google.com with SMTP id q198so32798688qka.2
 for <USRP-users@lists.ettus.com>; Sun, 05 Jul 2020 09:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=p72W0iN1WZtBDJy6cO7xBA/ffZODRS0GfcjKTLAU7Hc=;
 b=Wbo33ns81KcxL2IsSGczTYmsgucG11FFKVVeL4ohFzryMlsj1JGqBKrfAKA8CrwcXa
 xG5tZhTeLr8u4c4GTPcw8WTNRQWd7aqbFTSmQNumP/nUOJy8fY6nawEx/kZ8C24iLyrb
 6iWWOVLEmCoiV1e+OIvq5o09vDPAuQRsf/DN0DWSjztpccUZ1Lcxa+hg5h/YNgRCnwff
 wn4hxvSO5jOU5n3B8PaIWBXWSwU5TRH/YJEp55oQbKy6w1ev3kDytJitw/IgAU1ZkZDv
 RbuRzzzSIbvDWQzmXwYxU0xaHcI0oD7i5ifSAmcQiyvuK/+gxgnhiYf7Cg9rtr5DV3Xd
 KhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=p72W0iN1WZtBDJy6cO7xBA/ffZODRS0GfcjKTLAU7Hc=;
 b=U+tzWePjsX78i+JxVyRWetOind+j6w3QUi+rS1SNGToC/feVtAAw4tp7Anc+4QnjJ/
 pNH0HQC7LOl1C0E2cq4hlWmswdLDsyykcY7Hs45mtLRV3/n47ChGpG4z4LhMlJa8PE40
 ZQWvqyaIkNGpPBYiLmVCoQ+KPqQCvZaslgBzsX6FnjJtfK2eP/AwnsLWio6k9/Yxjyb0
 ZGObCGeb9V3srbpqHXquyKxWrjA2lzr6NgCn4j8X8Yyf6yMbBUX9CFuKh9ek2NbIHOQu
 aOqH3ThJv/C0m36r/d+07A67Ce1iluKq5e3moRXfAA+ztnAk/cK8xzOvuYYda/ZAeDQe
 mLDg==
X-Gm-Message-State: AOAM533eSsYWA14W82ncoAEHP9Ie27dcGI8xZjUIt1jQ7IViiW6ELIFd
 VdyD+DRzyrJa66O69aVxIHVQU68p
X-Google-Smtp-Source: ABdhPJyeZfEQ8/wrweFTe4M46iMLatZnHZIHODntzXJvzYHxGesxkAIhVFuBQ78arTSUFhEhXV6TxQ==
X-Received: by 2002:a37:5bc3:: with SMTP id
 p186mr44080336qkb.401.1593965617730; 
 Sun, 05 Jul 2020 09:13:37 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id k18sm15427646qki.30.2020.07.05.09.13.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jul 2020 09:13:37 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 5 Jul 2020 12:13:36 -0400
Message-Id: <8C4A7AD2-A664-4022-8989-80564B45F4F0@gmail.com>
References: <4AE1E899-28D9-4C0E-8642-811A422F47B2@skidmore.edu>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <4AE1E899-28D9-4C0E-8642-811A422F47B2@skidmore.edu>
To: Anthony Holland <tholland@skidmore.edu>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] Newbie question on N200 and gnuradio companion
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

VGhpcyBzaG91bGQgYmUgcG9zc2libGUgd2l0aCB0aGUgQmFzaWNfdHggYm9hcmQuIAoKU2VudCBm
cm9tIG15IGlQaG9uZQoKPiBPbiBKdWwgNSwgMjAyMCwgYXQgMTowNiBBTSwgQW50aG9ueSBIb2xs
YW5kIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4g
Cj4g77u/IEhlbGxvIEV0dHVzIE4yMDAgL2dudXJhZGlvIGNvbXBhbmlvbiBndXJ1cyEKPiAKPiBB
IOKAmG5ld2JpZeKAmSBxdWVzdGlvbuKApuKApgo+IAo+IEkgaGF2ZSBhIGdudXJhZGlvLWNvbXBh
bmlvbiBzZXQgb2YgYmxvY2tzIHRoYXQKPiBQcm9kdWNlIGEgY3VzdG9tIGRlc2lnbmVkIGNvbXBs
ZXggcGVyaW9kaWMgd2F2ZWZvcm0KPiBVc2luZyB0aGUgdm9sdGFnZSBjb250cm9sbGVkIG9zY2ls
bGF0b3IgYmxvY2sgaW4gZ3JjLgo+IEl0IG91dHB1dHMgYSBjb21wbGV4IHBlcmlvZGljIHdhdmVm
b3JtIGF0IDEwMGtIei4KPiBJZiBJIHB1cmNoYXNlIGFuIEV0dHVzIE4yMDAgd2l0aCB0aGUgYXBw
cm9wcmlhdGUgZGF1Z2h0ZXIgYm9hcmRzCj4gKFRoYXQgZ28gZG93biBiZWxvdyAxbWh6KSBjYW4g
SSBqdXN0IHNlbmQgdGhlIG91dHB1dCBvZgo+IE15IGVjbyBibG9jayBpbiBncmMgZGlyZWN0IGlu
dG8gYSBVSEQgUlNQTiBzaW5rIHRvCj4gSGF2ZSB0aGUgc2lnbmFsIGNvbWUgb3V0IGluIGFuYWxv
ZyBmb3JtYXQgZnJvbSB0aGUgTjIwMD8KPiAKPiBJ4oCZbSBoZXNpdGFudCB0byBzcGVuZCB0aGUg
bW9uZXkgb24gdGhlIE4yMDAgaWYgaXTigJlzIG5vdCBnb2luZyB0byB3b3JrLgo+IAo+IFRoYW5r
cyBmb3IgYW55IHRpcHMvcG9pbnRlcnMhICAoTWF5YmUgYSB3b3JraW5nIGdyYyBleGFtcGxlIHRo
YXQgd29ya3MKPiBXaXRoIE4yMDA/KQo+IAo+IEFudGhvbnkKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
