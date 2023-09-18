Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB147A4A84
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:15:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97151385AAB
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:15:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695042930; bh=9rf1BcxsRuj1V2zWa55vkomEYzXESVNkZcW0auhpCKE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kUQoKTpeiM+MtocHqF0OU3MctkR9YgnOEo2RWy8q1h7nCa47MBjCG7AeKSpRwqw5b
	 x31u9qv96+t7B1ixMI0LGTffeLVhe9GT7oOwYR9P3yUz5ni5xWBms6mABysYcjVXgn
	 7u+ztZZjq3ZlU44PWyCS1jXBwM7ET3vXW9BBLSATucYdG39HBbr7Kz3HxgYblRXrzf
	 sVBMeslhfSxEOJbmdZbTXFZAgtfaHs+loZ1CoABvo1b97JQdzOrq85lFuVB32GuIOf
	 0a/KQaWWiUbQT1zqG+sv+HRqAzkNZ/788EkizK9CC62EZLQydaZQZvHVRzM/9SPQxk
	 MBLYeeMMm9YrA==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 89F90385A59
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:15:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h2xYo/0l";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-76dbe786527so271284485a.2
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695042915; x=1695647715; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5GAJHDU3NlHRCG2C2syOOs81sW/6Oc7gKDU5IZrfsxc=;
        b=h2xYo/0lSC2xWJQ8Q6KuSVgYnRVisGvSJv94a/RqnExqIrQrj95TrsLNATCsQb0fhW
         DYLxfX8AGCvvcs7fkmbr8UfxJydXclsbv1PDqz5tRlQ7KXrPTyz2GpyDyBh1z+zwAX0d
         ADcE3ce7ghOMXCVlDONXMa5Sie1s+WL0RLTum4wyy41vp2X8feybIHatHx6L0KAxnV+4
         sfLDfdD+slbLS2J6pGQ0q8bGF8LdAuWagFDy4XXAT92nkwD/NctazK0GSCyz7Nc85/q4
         0+FW4QjVIdrgXvp6OnkV0wHpTNnXPI5DUuvL3CwIPRVFjpKdrUVxuF/rlWZzxez5XMum
         BxsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695042915; x=1695647715;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5GAJHDU3NlHRCG2C2syOOs81sW/6Oc7gKDU5IZrfsxc=;
        b=Buln86jIu8l8FaA8E7b0Rp/KONL/Tj8V+qnD8E+15ig3Zeaacs8gvtEuAf8QbTVrpU
         SYtFJXOQCvpWvbh3I7Dqsz4TGcp++gPj0y7/DOIlpVr1q4dlkzetRzllgmqVhKrAaMpL
         rzPNDPhLlr2MGfTNLDD1TfaKJaaYYQs4+Ao4reQjSc2fExk3OZbr49R6d8H7j/FpmKxz
         ooNjqmp6VUCzYP8ouqiSvHMnw0Fn/cEYHDnMjGYwfiHFSTmdzRotiAt7hILO/BiOso6X
         UU4TSrlZVAbYrW9yKLbxCAaP6rju4CNgKva9r/Kmz6Tf4yK8co8bTLokp7j1sBtbVFsz
         1DSQ==
X-Gm-Message-State: AOJu0Ywg9zco76eIAq/WN8Dc2u8A524hBvGS/b14RmzNbMBLKTlsvIV1
	afuMoXJMynqxaEqJAtWrvzWijqW1orT0hw==
X-Google-Smtp-Source: AGHT+IGbRwSEbt2jAjB5/j18r3f6hzOM4qLg5oCYjrvhDvHJ5PD63Dl7XSWzC7WaKPNt2xCNSnmufg==
X-Received: by 2002:ac8:5e13:0:b0:417:971e:ab08 with SMTP id h19-20020ac85e13000000b00417971eab08mr10804856qtx.57.1695042914699;
        Mon, 18 Sep 2023 06:15:14 -0700 (PDT)
Received: from [192.168.2.201] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id jx14-20020a05622a810e00b00401f7f23ab6sm3015333qtb.85.2023.09.18.06.15.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 06:15:14 -0700 (PDT)
Message-ID: <800b15d7-a048-89ff-f023-41c5410279db@gmail.com>
Date: Mon, 18 Sep 2023 09:15:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w@lists.ettus.com>
Message-ID-Hash: 5QXWM4YKS2HBDSYCR6DRGXGXJH56W57W
X-Message-ID-Hash: 5QXWM4YKS2HBDSYCR6DRGXGXJH56W57W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Delay between TX and RX channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QXWM4YKS2HBDSYCR6DRGXGXJH56W57W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAwMDowMiwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGkN
Cj4NCj4gSSBhbSB0cmFuc21pdHRpbmcgYW5kIHJlY2VpdmluZyBzaW11bHRhbmVvdXNseSBmcm9t
IHR3byBwb3J0cy9jaGFubmVscyANCj4gb2YgVVNSUFg0MTAsIGluIHRoZSBzYW1lIEdOVSBSYWRp
byBmbG93Z3JhcGguIEl0IHNlZW1zIHRoYXQgZm9yIFRYIGFuZCANCj4gUlggY2hhbm5lbHMgaW4g
VVNSUFg0MTAgdGhlcmUgaXMgZGVsYXkgKHNpbWlsYXIgdG8gdGhlIG90aGVyIFVTUlAgDQo+IG1v
ZGVscykuIFdoaWxlIEkgYW0gc2F2aW5nIGJvdGggdHJhbnNtaXR0ZWQgYW5kIHJlY2VpdmVkIElR
IHNhbXBsZXMgdG8gDQo+IHR3byBmaWxlcy4gSG93IGNhbiBJIGhhdmUgSVEgc2FtcGxlIGxldmVs
IHN5bmNocm9uaXphdGlvbiBiZXR3ZWVuIFRYIA0KPiBhbmQgUlggY2hhbm5lbHMuIFRoYW5rIHlv
dS4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQ0KWW91J2xsIG5lZWQgdG8gZ2l2ZSB1cyBzb21lIG1vcmUgY29udGV4dCBo
ZXJlLS13aGF0IGlzIGl0IHlvdSdyZSB0cnlpbmcgDQp0byBhY2hpZXZlIGluIHRoZSBsYXJnZXIg
c2Vuc2UuDQoNClRYIGFuZCBSWCBzYW1wbGVzIHdpbGwgbmV2ZXIgYmUgZnVsbHkgYWxpZ25lZCB1
bmxlc3MgeW91IGFsaWduIHRoZW0gaW4gDQp5b3VyIHNvZnR3YXJlLsKgIFRoZXJlIGFyZSBncm91
cCBkZWxheXMgaW4gYm90aCB0aGUNCiDCoCBhbmFsb2cgYW5kIGRpZ2l0YWwgZG9tYWlucyBpbiBi
b3RoIGRpcmVjdGlvbnMuwqDCoCBTbyBpZiB5b3UgbmVlZCANCmFsaWdubWVudCBiZXR3ZWVuIFRY
IGFuZCBSWCAocGVyaGFwcyBmb3IgcmFkYXI/KSwgeW91J2xsDQogwqAgbmVlZCB0byBmaW5kIHRo
ZSBjb3JyZWxhdGlvbiBwZWFrIGluIHlvdXIgZGF0YSB0byBkZXRlcm1pbmUgdGhlIA0KbXV0dWFs
IGRlbGF5Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
