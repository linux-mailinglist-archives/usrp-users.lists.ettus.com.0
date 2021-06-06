Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A8639CBD3
	for <lists+usrp-users@lfdr.de>; Sun,  6 Jun 2021 02:16:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4370838448C
	for <lists+usrp-users@lfdr.de>; Sat,  5 Jun 2021 20:16:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="q0l7gGHA";
	dkim-atps=neutral
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B0B9383687
	for <usrp-users@lists.ettus.com>; Sat,  5 Jun 2021 20:15:21 -0400 (EDT)
Received: by mail-wm1-f44.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso5650548wmc.1
        for <usrp-users@lists.ettus.com>; Sat, 05 Jun 2021 17:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=dylwoesnwHsO2Vl6NuMTf05ynq6ZakcsGKgBUXliEYc=;
        b=q0l7gGHAQQqWBefLkfkFvh7e0CgcNzyFazKM6Y3XcwYyamE1/jV9RBtcgxWqADmv4q
         +58zOsSZtLfhb1j8Ig0q3TObE85EVMOdvxnBQzkSAtw7ZKRLOt1ofxDvpw+/ep0EjdQL
         O8HiVqmnyTtBhZNRZuHcahrUl1MLS/kfVKtQlpY/ZpBe8UmM9vpMJvk9JpaDFdrcKDDK
         Z5WJlG6sTfrSizr69P/jg8OHF8+OHSrQ4BM2DZtjvI/D5ScUtdTx1/dJLcG79lN3SH9H
         5ybq51Eb5yZn9PDanPjX7jIcrqXhqDOmFP9274tDu/aMpKWOONQ1LqChD2WaJDfkJycY
         0bWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=dylwoesnwHsO2Vl6NuMTf05ynq6ZakcsGKgBUXliEYc=;
        b=iRlitCaLPDYJ8toSeyHTiN+NvabTaaEoTByx9UkjjHJjWLB4DT1FOxWwDhFVAAQFGt
         Vb8XsPQ8LyHZCbwXhBqBnmCZLtf52xHgPxQve8zuUxHk0lrG7ata4pucIKPn4x8IJzzh
         OxW+iagVCioSr2+bNRuZoCu0falDJsfRgdoQX55OXLT6yC8Yz0dlG/OgV22esSafiyzD
         7Eed4RrCSmhXla12nWPF/PPHbO9IQBk3mx0AWXlR15kHfu48IKIL38fuSg88ecjNrloQ
         et/vKpGmuZMXSgGGLWtUqHi75v0v7AL1DZSraCL+xYm34nF09v3JFRGPqsIkkx2f0Y0g
         ncFw==
X-Gm-Message-State: AOAM533CIJuGWIoZzFoFVLGxtomavi+OMVi163Qg7DxT3UfqKmCkKs2O
	ZnpFejdDQ4Cyp+x6OjfHdZtH7WNNMCrC2TQK
X-Google-Smtp-Source: ABdhPJxkLxy01Is/MgPTZr0k8PQ1vsm+b+Xg9Qp33EZI3z6YyeNjWjmk1/avkKh/WMieKzcnDmQy2w==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr9844202wmc.94.1622938519890;
        Sat, 05 Jun 2021 17:15:19 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id x10sm570444wrt.26.2021.06.05.17.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 17:15:19 -0700 (PDT)
To: ncondict@gmail.com, usrp-users@lists.ettus.com
References: <05ZtyysQdMqEFDrxZIbuzhFQntHRHPKI4A9OKWK1M@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <87530d24-793c-8c71-5683-b452b4aeee15@ettus.com>
Date: Sun, 6 Jun 2021 02:15:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <05ZtyysQdMqEFDrxZIbuzhFQntHRHPKI4A9OKWK1M@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 6X5Q6GZY3QCX3ZK7DBXF44MFJMOTMOOU
X-Message-ID-Hash: 6X5Q6GZY3QCX3ZK7DBXF44MFJMOTMOOU
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Uhd_find_devices --args<addr>
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6X5Q6GZY3QCX3ZK7DBXF44MFJMOTMOOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8hDQoNCmh1aCwgdGhpcyBkb2Vzbid0IGxvb2sgdG9vIGdvb2QuIFRoZSBtb3N0IGNvbW1v
biByZWFzb24gZm9yIHByb2IxOg0KDQo+IHByb2JsZW0gMSA6IEnigJltIHVzaW5nIEUzMjAgd2l0
aCB1aGQgMy4xNSBhbmQgc3RhdGljIGJvb3N0IGxpYi4gSSBjYW4gZG8gdWhkX2ZpbmRfZGV2aWNl
DQphbmQgaXQgd29yayBmb3IgYSBtaW4gdGhlbiBpdHMgc3RvcCB3aGVuIEkgdXNlIGFyZ3M94oCd
YWRkcj0xOTLigKYuLuKAnSBkb2VzIGFueW9uZSBoYXMgdGhpcw0KcHJvYmxlbT8gSSBhcHByZWNp
YXRlIHRoZSBoZWxwDQoNCndvdWxkIGJlIHRoYXQgeW91ciBjb21wdXRlciByZWNvbmZpZ3VyZXMg
eW91ciBuZXR3b3JrIGludGVyZmFjZSAiY2xldmVybHkiOyBzZWVuIHRoYXQNCmRpc3J1cHQgY29u
bmVjdGlvbnMgdG8gVVNSUHMgbW9yZSB0aGFuIG9uY2UuLi4NCg0KSG93ZXZlciwNCg0KPiBwcm9i
bGVtIDI6IEkgc3NoIHRvIEUzMjAgYW5kIEkgcmVjZWl2ZSBrZXJuZWwgZXJyb3IgYXR0YWNoZWQu
DQo+DQpVZmYuIFdlJ3ZlIGdvdCBhIGZhaWxpbmcgc2QtcmVzb2x2LCBhbmQgaXQgc2VlbXMgdG8g
ZmFpbCBpbiBrZXJuZWwgbGFuZCBvbiBzb2NrZXQNCmNyZWF0aW9uLi4uIHVoLg0KDQpUaGlzICpt
aWdodCogYmUgYSByZXN1bHQgb2YgdGhlIGV4dDQgZmlsZXN5c3RlbSBkcml2ZXIgZHlpbmcgYSBz
ZWNvbmQgZWFybGllciwgd2hlbiBpdA0KdHJpZXMgdG8gYWxsb2NhdGUgbWVtb3J5IHdoZXJlIGl0
IHNob3VsZG4ndC4gTmV2ZXIgc2F3IHRoYXQuIEkgYmVsaWV2ZSB0aGUga2VybmVsIG9uIHRoYXQN
Cm1hY2hpbmUgaGFzIG5vIEV0dHVzLXNwZWNpZmljIG1vZGlmaWNhdGlvbiByZWxhdGVkIHRvIHN0
b3JhZ2UsIHNvIGEgcHJvY2VzcyBjYXVzaW5nIGtlcm5lbA0KZXJyb3JzIHdoZW4gdHJ5aW5nIHRv
IGxpc3QgYSBkaXJlY3RvcnkgaXMgLi4uIHN1cnByaXNpbmcuDQoNCkNhbiB5b3UgU1NIIG9uIHRo
ZSBkZXZpY2UgZmlyc3QsIGFuZCB0aGVuIHNpbXBseSBkbyBzb21ldGhpbmcgbGlrZQ0KDQpkbWVz
Zw0KY2QgLw0KZmluZCAtdHlwZSBmID4gL2Rldi9udWxsDQpkbWVzZw0KDQphbmQgb2JzZXJ2ZSB3
aGV0aGVyIHlvdSBnZXQgbmV3IGRtZXNnIGVycm9ycyB0aHJvdWdoIGV4ZXJjaXNpbmcgdGhlIGZp
bGUgc3lzdGVtPw0KDQpJZiB0aGF0IGlzIHRoZSBjYXNlOiBEbyB5b3UgaGF2ZSB0aGUgYm9hcmQt
b25seSB2ZXJzaW9uIG9mIHRoZSBFMzIwLCB3aGVyZSBpdCdkIGJlIGVhc3kgdG8NCmFjY2VzcyB0
aGUgU0QgY2FyZD8NCg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
