Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 958377814C1
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 23:28:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55D913809CA
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 17:28:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692394128; bh=bgbHRi43bbcBI7joQ9uUjBpwDZvTMlvDwHCq/cnB9ec=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zSYyMkYdAheSaE1/ixkWpdwJ579913mJOC3ulUozMk2eBVNtHNW+aw+8ADoC99Wf9
	 Lgj6cJLj53BAlfNAEANVJj5tl7I6x7h6Ox6vuZOxQml/wfOA1LO5FI/sixPFMaFAQ/
	 ls0n2FRWlw4cAxP4XU+rrgJlVkY0lB1GnH+DXTYQBFLGdLbPBhnSI/B2J1shqJYlrX
	 /aP/af1JR1aDdncfVHUYSmBgM7S2aR2eZBr605n/1guXvI8mLs1Soz/Kd5Qhr4oaJc
	 s4ZbeQw5Z5KoGmus3GLdU3eEmrQgD9j7NewE9fOm5LdAWvHgNbY0kluKG2uOD+WLsJ
	 qpQaRz1oMBR+w==
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 03DEB38097E
	for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 17:28:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i5sc1oAH";
	dkim-atps=neutral
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5607cdb0959so838787eaf.2
        for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 14:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692394115; x=1692998915;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W5vr9l3iEI/px5YxxxE0ITjam7WHd+NhDwLqwn/0pZg=;
        b=i5sc1oAHBTm9nhjM2GAQ6ccm/TpoGO4HrRlDtfUaZ861st9utOxk4XAJJdrHuk3ZSP
         g+0vo+Ovfd2XqPEquqUjKAAz3822fLkAE10D7fvUkhrBWzh345IrWM0kdWgcOpp84qBV
         e9aOtoRHoJwQN3W4azTilfqD1Y3pvPHeg/UKzDjbsREmYF0V2rWJ/rXuNEf1dv8C86/+
         /l4j7kWAXH6QN6uzgsF+eN9qcNPDAtAj1e6/ct7k/plsUNj8eWlyfYqVZ9C68v19zyCZ
         t4SL59RY98obS79JtnTI/JCbnjlmpTqYwRd1582VhtIeiAA5Wkdx8C2omikLXJpibayF
         wNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692394115; x=1692998915;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W5vr9l3iEI/px5YxxxE0ITjam7WHd+NhDwLqwn/0pZg=;
        b=C5M9lDDwS1+3daidv0ya454VCc1NbY+EdIaudAbIw/R77Ap+dZxbf3Msz/LOUHhq0l
         mKKU2oaLStTNB6ztsncG/zaHT05e+iVCnCzv6xTHr4VP/XLtZQXXTAqgA9SJRZv+u6wz
         48TiZ05A/QrtJY/Va8bzOiPnQ9KUH3+ikyhH2fMUhIKE/mw8hmmeH3oinu96HQXZuZ0v
         fJJWFQdD2Otl9nRd1jj29bpKfXWZ6wpE+bZUB3yQI3cpqKK57UJnRtiDJkbbUsPOYJ05
         O7oXMVfjfEA1qQOMO8HjKBTpUS91feeKQd/aDkiTUnA37ldfRAGASjWUGiTb1ejPj9s+
         9WIg==
X-Gm-Message-State: AOJu0Yxon9bb9a7qnQ/m21UsLCNVYPTfkR+3vsj03nJbSEiRtTVI/jQE
	kCcZbJF12WExgF9aKTjF+RgHU6LPRy0=
X-Google-Smtp-Source: AGHT+IHEE9t39UOyxYMFzGVp8Oo11VfuNw6yo8fohMeOsXzP9RQSCgCRP7zE3f2o0ahqff5zax8Xvw==
X-Received: by 2002:a05:6358:24a7:b0:135:4003:7857 with SMTP id m39-20020a05635824a700b0013540037857mr289844rwc.31.1692394114836;
        Fri, 18 Aug 2023 14:28:34 -0700 (PDT)
Received: from [192.168.2.173] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h11-20020a0cf44b000000b0063c71b62239sm530335qvm.42.2023.08.18.14.28.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 14:28:34 -0700 (PDT)
Message-ID: <b5215216-06e4-e981-362e-00c9d10818d6@gmail.com>
Date: Fri, 18 Aug 2023 17:28:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE@lists.ettus.com>
Message-ID-Hash: F7RT2JKDFRG3ALEC2DNUF34Y4XOEND7I
X-Message-ID-Hash: F7RT2JKDFRG3ALEC2DNUF34Y4XOEND7I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing GPS from FPGA in x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7RT2JKDFRG3ALEC2DNUF34Y4XOEND7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDgvMjAyMyAxMjoxOSwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBoYXZlIGFuIGFwcGxpY2F0aW9uIHdoZXJlIEkgbmVlZCBteSBsb2dpYyB3aXRo
aW4gdGhlIEZQR0EgdG8gYWNjZXNzIA0KPiB0aGUgZ3BzIHRpbWUuIEFjY29yZGluZyB0byB0aGUg
c3BlYyBzaGVldCwgdGhlIHg0MTAgaGFzIGEgZ3BzIG1vZHVsZSANCj4gYnVpbHQgaW4uIEkgd291
bGQgbGlrZSB0byBnZXQgZ3BzIHRpbWUgZnJvbSBpdCwgYnV0IGl0IGlzIHVuY2xlYXIgDQo+IHdo
ZXJlIEkgY2FuIGdldCBpdCBmcm9tLg0KPg0KPg0KPiBJIGFzc3VtZSB0aGUgZ3BzIHRpbWUgaXMg
c3RvcmVkIGluIHJhZGlvX3RpbWUgaW5zaWRlIHRoZSB0aW1la2VlcGVyLCANCj4gd2hpY2ggaXMg
c2V0IHRvIHRoZSBncHMgdGltZSB3aGVuIHVzcnAtPnNldF90aW1lX3NvdXJjZSgiZ3BzZG8iKSBp
cyANCj4gdXNlZC4gSXMgdGhpcyBjb3JyZWN0Pw0KPg0KPg0KPiBUaGFua3MNCj4NCj4gSm9lDQo+
DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NClRoZSB0aW1lLW9mLWRheSBpcyBzb21ldGhpbmcgdGhhdCBpcyBnZW5lcmFsbHkg
Im1hbmFnZWQiIGJ5IHRoZSANCmhvc3Qtc2lkZSwgdXNpbmcgcmVzb3VyY2VzIHdpdGhpbiB0aGUg
RlBHQS4NCg0KVGhlIHRpbWVrZWVwaW5nIHJlZ2lzdGVyIGlzIHBhcnQgb2YgZWFjaCByYWRpbyBi
bG9jayBhcyBmYXIgYXMgSSByZWNhbGwsIA0KYnV0IHRoZXkgZG9uJ3QgImtub3ciIGFib3V0IHRo
ZSBHUFNETy4NCiDCoCBHZW5lcmFsbHkgdGhlIGhvc3QgYXBwbGljYXRpb24gcXVlcmllcyBhICJz
ZW5zb3IiIChsaWtlIGdwc190aW1lIG9yIA0KZ3BzX2dnYSkgYW5kIHRoZW4gY2FsbHMgc2V0X3Rp
bWVfbmV4dF9wcHMoKQ0KIMKgIG9yIHNldF90aW1lX3Vua25vd25fcHBzKCkgdG8gc2V0IHRoZSB0
aW1lLW9mLWRheSAodGltZXN0YW1wKSByZWdpc3RlciANCnRvIHRoYXQgdmFsdWUgYXQgdGhlIG5l
eHQgMVBQUyBwdWxzZS4NCg0KVGhlICJzZXRfdGltZV9zb3VyY2UoImdwc2RvIikiIHNpbXBseSBp
bnN0cnVjdHMgdGhlIGhhcmR3YXJlIHRvIGdldCBpdHMgDQpub3Rpb24gb2YgMVBQUyBmcm9tIHRo
ZSBHUFNETyByYXRoZXIgdGhhbg0KIMKgIHRoZSBpbnRlcm5hbCAxUFBTIG9yIHRoZSBleHRlcm5h
bCAxUFBTIG9uIHRoZSBmcm9udCBwYW5lbC7CoCBJbiBVU1JQcyANCnRoZSAxUFBTIGlzIHVzZWQg
c2ltcGx5IGFzIGEgKnRyaWdnZXIqIG1lY2hhbmlzbQ0KIMKgIHNvIHRoYXQgY2FsbHMgbGlrZSAi
c2V0X3RpbWVfbmV4dF9wcHMoKSIgd29yayBwcm9wZXJseS4NCg0KVGhlIHRpbWUtb2YtZGF5IChv
ciB0aW1lc3RhbXApIHJlZ2lzdGVyIHRoYXQgaXMgcGFydCBvZiB0aGUgcmFkaW8gYmxvY2sgDQpp
cyBpbmNyZW1lbnRlZCBhdCB3aGF0ZXZlciB0aGUgbWFzdGVyIGNsb2NrIHJhdGUgaXMsDQogwqAg
YW5kIGlzIHV0dGVybHkgb2JsaXZpb3VzIG9mIHdoYXQgaXMgZ29pbmcgb24gd2l0aCB0aGUgb24t
Ym9hcmQgDQpHUFNETy7CoCBJbiBnZW5lcmFsLCBpdCdzIHVwIHRvIHRoZSBob3N0IHRvIHNldCB0
aGF0IHJlZ2lzdGVyDQogwqAgdG8gR1BTIHRpbWUgKG9yIE5UUCB0aW1lLCBvciB0aGUgdGltZSBv
biB5b3VyIGdyYW5kYWRkeSdzIHdhdGNoLCBvciANCndoYXRldmVyKS4NCg0KTm93IHRob3NlICJz
ZW5zb3JzIiAoImdwc190aW1lIiwgImdwc19ncGdnYSIpIGV0YyBhcmUgYWN0dWFsbHkgcmVzb3Vy
Y2VzIA0Kd2l0aGluIHRoZSBGUEdBLCBzbyB0aGVyZSBpcyBsaWtlbHkgYSB3YXkgdG8gZ2V0DQog
wqAgdGhlIEZQR0EgdG8gZG8gd2hhdCB0aGUgaG9zdCBzaWRlIHdvdWxkIGRvIGF0IGFwcHJvcHJp
YXRlIHRpbWVzLCBidXQgDQpJJ20gbm90IHJlYWxseSBhbmQgRlBHQSBndXksIHNvIEkgY2FuIG9m
ZmVyIG5vdGhpbmcNCiDCoCBjb25jcmV0ZSBpbiB0aGF0IHJlZ2FyZC4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
