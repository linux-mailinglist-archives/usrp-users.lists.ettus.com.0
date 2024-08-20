Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C369588FF
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 16:21:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A8AA385406
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 10:21:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724163666; bh=v7rmsZGQoJESfXjhdKheqH0NcWZ5Xk4DpoGA7TUAmYM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PMOFHdLLAgNtabN/41FM4UhpTIFfHP+oaLy2xpU5SzHO/VKUg4lCfdr3jG02AIugG
	 ibdKUaW9U8sLpoFbA8yfMv1TWCxhnN+D7+g/ycRx/aEePlZyUyiYaXxl8Mj/Woy6aP
	 Lp7gXV8E3bEX3aO3hIDGvexUVyyLKLlropXToKs4ObOZXhvZb0s33UIunPd2gtGd8c
	 79i4fzZzWE9uazYWsT2KZJob2zrrC6W9q959y6NsIsLUNIowkEwU72/gryz2e1uIhz
	 6M1ePtwEviqBKTLyOTtXVg5LXl6wlgG/5eW0JSsLYDOACOAwd1mpE+4ZKH9s5D3PMf
	 RCg5FC8auscSw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id D64D13852C6
	for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 10:20:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JVSlNWxm";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6bf6606363fso32089566d6.3
        for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 07:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724163630; x=1724768430; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VGTfh5KxWDJQvTqkWf6RJP2qdCCeTxhoDV3vIR4dERU=;
        b=JVSlNWxm82OQpw7zkn+zQoA+Y44xrsx11EM52l1QtJYzJPG62wq3+hl+RfVeVfqrTE
         W1VDdygnRt30CoamCiI3fSEpG26pYMcLPCJFZo4Frj88/WK/yZLFP7am7XgNsRSk1wKm
         1Pcn2LeKuhG38lUfUd2Nvn+9zrRsdStv9D7gGpRtKA67teS3WbfKZqfAPHSfnok0gxOB
         Kk7Ik7byi3NXgh2H5MEgoJSbpFbFx/5EShCsztcgJyJblh/V207crX+DO5E9cE+CeSOM
         oBU/3ltU4Z06nRw3X9g9LOdU/cef9OylpqgoCbn9obEmVNzGOPJbA/Ng/Sved1OQM6C7
         4iqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724163630; x=1724768430;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VGTfh5KxWDJQvTqkWf6RJP2qdCCeTxhoDV3vIR4dERU=;
        b=wZqtZ/biVGgnT2s3lUitCpgu3X4VPGhr8IzBXdaOBdT7HFkQd6BTQiyLiBHP/n2w01
         dc0Qmjjnqf0APeaUbD3uEGLThdVnuingo/95i8v8IPNZXLeLvK+D7UeOJ+sO7NyfeCWa
         7crFJJMgl4Uso7ASrL4jO6POyRh25CdA6O937OKbsIn0xrEAheInug/gKeJFQJTCPiBX
         RvtNgv4DN8LCX44nK9akJeV7Tl6WKjKj6WN+0wQV2n5m+ZB74ZV+/EZ0XVGFYQbEK9Mr
         RQIk/2BRArQSZH7A7Smvdlb2r7zk2mGVYc+w5n18FXFZT8Exa/s1f2WQL2wZtqG5nTPw
         3iKw==
X-Gm-Message-State: AOJu0Yy7FbluRM/YcbnHYa45OMUaM9iZuFlcJ3I/OZG3i+yn+Z7O331r
	+vvT4N5weai3lxOqcJt9OVtBDdHsEwvQz2PtVKteMZy1nzOMhA6lQBD89Q==
X-Google-Smtp-Source: AGHT+IHbnK1Tq84Pn4qDOy3mVCfvT+YeqCkRUZfYXXlYyOuGw0/iRbYNmA1eZaNpVPhDnILZee8YDw==
X-Received: by 2002:a05:6214:311b:b0:6bb:9e88:c101 with SMTP id 6a1803df08f44-6bf7ce8a7e6mr147030336d6.50.1724163629901;
        Tue, 20 Aug 2024 07:20:29 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bf6fec5e5fsm52628836d6.94.2024.08.20.07.20.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 07:20:29 -0700 (PDT)
Message-ID: <61cbbc78-871a-4451-aac5-28e0afbb7710@gmail.com>
Date: Tue, 20 Aug 2024 10:20:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA@lists.ettus.com>
Message-ID-Hash: BFW7BNDHN2YOXTKRQ45C5EBLA7U7L3Z5
X-Message-ID-Hash: BFW7BNDHN2YOXTKRQ45C5EBLA7U7L3Z5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Synchronizing_B210=27s_with_external_PPS=E2=80=99s_but_without_ref?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFW7BNDHN2YOXTKRQ45C5EBLA7U7L3Z5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDgvMjAyNCAwOTo1MiwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBoaSwNCj4NCj4gSSB3YXMgd29uZGVyaW5nIGlmIGFueW9uZSBoYXMgdHJpZWQgb3V0IHN5
bmNocm9uaXppbmcgbXVsdGlwbGUgQjIxMOKAmXMgDQo+IGRyaXZpbmcgdGhlaXIgZXh0ZXJuYWwg
UFBT4oCZcyBidXQgd2l0aG91dCB0aGUgZXh0ZXJuYWwgcmVmZXJlbmNlIGZlZWRzPyANCj4gaWYg
c28sIHdoYXQgd2FzIHRoZSBwaGFzZSBjb2hlcmVuY2UgcGVyZm9ybWFuY2UgKHdlIGtub3cgd2Ug
c2hvdWxkbuKAmXQgDQo+IGV4cGVjdCBhbnkgZ29vZCByZXN1bHRzKSBhbmQgZGlkIGl0IHJhaXNl
IGFueSB0aW1pbmcgY29uY2VybnMgc2luY2UgDQo+IHRoZSAxMCBNSHogc3VwcG9zZWRseSBkcml2
ZSB0aGUgcmFkaW8sIGZwZ2EgY2xvY2tzIGV0Yy4gZXNwZWNpYWxseSANCj4gd2l0aCBhY2N1cmF0
ZSB0aW1lc3RhbXBpbmc/IHdlIGhhdmUgYSBzbWFsbCBwcm9qZWN0IGluIG1pbmQgYW5kIHdvdWxk
IA0KPiBsb3ZlIHRvIGtub3cgaW4gYWR2YW5jZS4NCj4NCj4gdGhhbmtzLA0KPiBlZGVuLg0KPg0K
Pg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tDQpUaGUgbXV0dWFsIHBoYXNlLW5vaXNlIHdpbGwgYmUgdXR0ZXJseSBob3JyaWJsZSBp
biBhIHNpdHVhdGlvbiBsaWtlIA0KdGhhdC7CoCBUd28gZnJlZS1ydW5uaW5nIG9zY2lsbGF0b3Jz
IChldmVuIGNyeXN0YWwgb25lcykgd2lsbCBub3QNCiDCoCBtYWludGFpbiBhbnkga2luZCBvZiBt
dXR1YWwgcGhhc2UtY29oZXJlbmNlIGZvciBhbnkgbGVuZ3RoIG9mIHRpbWUuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
