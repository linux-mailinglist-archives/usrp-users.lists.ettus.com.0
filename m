Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DFFA2AFC1
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 19:05:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6E83385BF0
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 13:05:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738865147; bh=tXhZos/4tv1KPvzVhEyQauz6MkVSfzs4KoFmqe1/Z2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yRAUYzeyLE1R//TyWmlhOVgIbwmzDl9jVLdZ844kSpmKrMg2TNnfIQ/FNaTRQgbyd
	 tj8VZiTkscJu2xhv06bsv5a8RkhW7LbFVJD3pBaT5nBdH8LxLCcl+GesKhBK9Z3ReV
	 CLCr5c2nzWll4uHaj3HBFHtBfhw4Dwyp9GBx+06FeuvgQW6XFZtyymITatzVK7z46k
	 a009Dz5lB0jU+7l7vsFvz4BDM4SGcTskQM2B4Z+3Vgrwux1RqCTkoL10jjcgawbQa4
	 qwzGvzQTTj+CLXFJhtEPyGR0q2MpaZd6SdIGtkRCQFmjYTbyEIu81HIu6WiPIFuJh8
	 uduWVDjbpL6Gw==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 89DCD385B8C
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 13:05:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X/Mx+S+z";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e43c9c8d08so8217246d6.3
        for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2025 10:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738865113; x=1739469913; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zu+i8FagAA7IUiVsWKK5V8+vv0q9ntJADQBI/WGeImo=;
        b=X/Mx+S+zhv/d5/16PFYgX9g6j4CIPYVYfzRcB+zPO+ed16kb90xeCim3eSQpFXgV+y
         7QdJWKGARKsSoTuOB0kQrKtc1+QEXaFz4V5jwul+JhPsyAaPCo1gcy9Abz4i0SXrTY2/
         OrZmB3sO/AUnvxpQcWm1Am8MXPOWF74+RbmYCNlKIGblDiSy5UFflyHEhB+1lR3CIjgi
         d6ZXq19v9cM+5GkEUxezn3BbUeX5+ECRK9oo0vYYnPXTVJsg/l9ojmYU0xaN5A8vov4d
         qjM0uzDMaUH9jf8c5mX/m+iM4Kh4LwlewcK8j2z1qd7S4oo4sU7SlOAbdrKmRHvuEJgI
         pItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738865113; x=1739469913;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zu+i8FagAA7IUiVsWKK5V8+vv0q9ntJADQBI/WGeImo=;
        b=WVSt4S1NoCxIoGmL3ZRwbS97Oxj7NIR3XsUpu60CNR5m9YkblNBLEh9AbnjuLwLTr+
         czhtBpRNFy09odLDRV7Gn36UjuhbODWpVYNs7z/d24XA7YFx97ERlyyuwrZTC+6c0J6d
         vDBTZLMa7zVgmfww1QnOGYaff7CwkRy7ujJwBvlz3puehLB+zvNkb+qWm54cfEc/cKYM
         FrmlkBiTgzRTnHAeJgwSLRU1/I5e2SRiiAbOm7+A8oVI1ioktrjY10WviQcDFwql020A
         nPfyPRRsoeof1c6lFXETHFPuqceK6qHPIRQLz6l3azcqFStFqlV+8WlejUu032SJAMXT
         iE2w==
X-Gm-Message-State: AOJu0YwY53hCcLGZgsBoRk0rNSLMThVCiEcZCFum7+L8BVbPSM2XnMeV
	DEJtrNvsgBaoC8Rpw9PAJAmfXVNqruhOE+0JcE8r0ZZ4sFrAQV66IcVTxw==
X-Gm-Gg: ASbGncv96ajt4a1L+gxLuqL85eewO9DTvGXMa3Nd2u+qMmTbs/ADg7qrEQIh2hix42S
	YPCMtlttCdJOm96yIyJSu/+rOPNEbNpczT8PsbqiY2yeyqcQkzurg7N6a87TyqW9rMBYsXTUfho
	ak6nfGq6zEU9uSH7QP7oAyvTXPfAE8QWpRt1R0m6kiZTasdyEifVdtdFcz3BVxa2Xb5pJANad4/
	Hx8SPlGaRZnqOfO/JwOtZXj5jrnyxlNeRVPDO05Deq/UtWRviy9UvBoC0SmrVZuNqJKXNqqsjGo
	YcENt4TTA2McOYGbXRgKSBKEUYzyhM0Sp2Weap952HPjvPx2sSU69VCmP+sQf/b0mmvgiVAAzZW
	7gMQy02GwHr9Isw==
X-Google-Smtp-Source: AGHT+IFvov3OeFXSacuwqR3fsUozLQ1EuljuRhgbTqfGdSGPnRhaPDBteZO6jzHG4VrtXG+WB0bj3Q==
X-Received: by 2002:a05:6214:1bc5:b0:6d9:3016:d101 with SMTP id 6a1803df08f44-6e42fc78d1emr96075966d6.41.1738865113570;
        Thu, 06 Feb 2025 10:05:13 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e43ba2c19csm8251716d6.21.2025.02.06.10.05.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 10:05:13 -0800 (PST)
Message-ID: <0e07e4da-0c5c-45ba-bdbd-b084df814943@gmail.com>
Date: Thu, 6 Feb 2025 13:05:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E@lists.ettus.com>
Message-ID-Hash: GL5ROR3EMUF53Q6RCQO4VZR5GZ4Z7E2Q
X-Message-ID-Hash: GL5ROR3EMUF53Q6RCQO4VZR5GZ4Z7E2Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GL5ROR3EMUF53Q6RCQO4VZR5GZ4Z7E2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDIvMjAyNSAxMzowMiwgUmlsYmVydCBMaW1hIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0K
Pg0KPiBJIHJhbiB0aGUgdGVzdCB1c2luZyA1ZTYsIGhvd2V2ZXIsIHRoZSBzYW1lIGVycm9yIG9j
Y3VycmVkLg0KPg0KPg0KPiByb290QG5pLXg0eHgtMzQyNTk3RjovdXNyL2xpYi91aGQvZXhhbXBs
ZXMjIC4vYmVuY2htYXJrX3JhdGUgLS1yeF9yYXRlIA0KPiA1ZTYgLS10eF9yYXRlIDVlNg0KPg0K
PiDigKYNCj4NCj4gWzAwOjAwOjA0Ljk1NTY5MjE3Ml0gU2V0dGluZyBkZXZpY2UgdGltZXN0YW1w
IHRvIDAuLi4NCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzBdIFJlcXVlc3RpbmcgaW52YWxpZCBz
YW1wbGluZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHouIEFjdHVhbCByYXRlIGlzOiAzNjgu
NjQgTUh6Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBdIENvdWxkIG5vdCBzZXQgUlggcmF0
ZSB0byA1LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAzNjguNjQwIE1Ieg0KPg0KPiBbV0FS
TklOR10gWzAvUmFkaW8jMF0gUmVxdWVzdGluZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBk
ZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJhdGUgaXM6IDM2OC42NCBNSHouDQo+DQo+IFtXQVJO
SU5HXSBbTVVMVElfVVNSUF0gQ291bGQgbm90IHNldCBSWCByYXRlIHRvIDUuMDAwIE1Iei4gQWN0
dWFsIHJhdGUgDQo+IGlzIDM2OC42NDAgTUh6DQo+DQo+IFtXQVJOSU5HXSBbMC9SYWRpbyMwXSBS
ZXF1ZXN0aW5nIGludmFsaWQgc2FtcGxpbmcgcmF0ZSBmcm9tIGRldmljZTogNSANCj4gTUh6LiBB
Y3R1YWwgcmF0ZSBpczogMzY4LjY0IE1Iei4NCj4NCj4gW1dBUk5JTkddIFtNVUxUSV9VU1JQXSBD
b3VsZCBub3Qgc2V0IFJYIHJhdGUgdG8gNS4wMDAgTUh6LiBBY3R1YWwgcmF0ZSANCj4gaXMgMzY4
LjY0MCBNSHoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzBdIFJlcXVlc3RpbmcgaW52YWxpZCBz
YW1wbGluZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHouIEFjdHVhbCByYXRlIGlzOiAzNjgu
NjQgTUh6Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBdIENvdWxkIG5vdCBzZXQgUlggcmF0
ZSB0byA1LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAzNjguNjQwIE1Ieg0KPg0KPiBbV0FS
TklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGluZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBk
ZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJhdGUgaXM6IDM2OC42NCBNSHouDQo+DQo+IFtXQVJO
SU5HXSBbTVVMVElfVVNSUF0gQ291bGQgbm90IHNldCBSWCByYXRlIHRvIDUuMDAwIE1Iei4gQWN0
dWFsIHJhdGUgDQo+IGlzIDM2OC42NDAgTUh6DQo+DQo+IFtXQVJOSU5HXSBbMC9SYWRpbyMxXSBS
ZXF1ZXN0aW5nIGludmFsaWQgc2FtcGxpbmcgcmF0ZSBmcm9tIGRldmljZTogNSANCj4gTUh6LiBB
Y3R1YWwgcmF0ZSBpczogMzY4LjY0IE1Iei4NCj4NCj4gW1dBUk5JTkddIFtNVUxUSV9VU1JQXSBD
b3VsZCBub3Qgc2V0IFJYIHJhdGUgdG8gNS4wMDAgTUh6LiBBY3R1YWwgcmF0ZSANCj4gaXMgMzY4
LjY0MCBNSHoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzFdIFJlcXVlc3RpbmcgaW52YWxpZCBz
YW1wbGluZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHouIEFjdHVhbCByYXRlIGlzOiAzNjgu
NjQgTUh6Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBdIENvdWxkIG5vdCBzZXQgUlggcmF0
ZSB0byA1LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAzNjguNjQwIE1Ieg0KPg0KPiBbV0FS
TklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGluZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBk
ZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJhdGUgaXM6IDM2OC42NCBNSHouDQo+DQo+IFtXQVJO
SU5HXSBbTVVMVElfVVNSUF0gQ291bGQgbm90IHNldCBSWCByYXRlIHRvIDUuMDAwIE1Iei4gQWN0
dWFsIHJhdGUgDQo+IGlzIDM2OC42NDAgTUh6DQo+DQo+IFswMDowMDowNC45Njc0NDcwNTJdIFRl
c3RpbmcgcmVjZWl2ZSByYXRlIDM2OC42NDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQo+DQo+IFtX
QVJOSU5HXSBbMC9SYWRpbyMwXSBSZXF1ZXN0aW5nIGludmFsaWQgc2FtcGxpbmcgcmF0ZSBmcm9t
IGRldmljZTogNSANCj4gTUh6LiBBY3R1YWwgcmF0ZSBpczogMzY4LjY0IE1Iei4NCj4NCj4gW1dB
Uk5JTkddIFtNVUxUSV9VU1JQXSBDb3VsZCBub3Qgc2V0IFRYIHJhdGUgdG8gNS4wMDAgTUh6LiBB
Y3R1YWwgcmF0ZSANCj4gaXMgMzY4LjY0MCBNSHoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzBd
IFJlcXVlc3RpbmcgaW52YWxpZCBzYW1wbGluZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHou
IEFjdHVhbCByYXRlIGlzOiAzNjguNjQgTUh6Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBd
IENvdWxkIG5vdCBzZXQgVFggcmF0ZSB0byA1LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAz
NjguNjQwIE1Ieg0KPg0KPiBbV0FSTklOR10gWzAvUmFkaW8jMF0gUmVxdWVzdGluZyBpbnZhbGlk
IHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJhdGUgaXM6IDM2
OC42NCBNSHouDQo+DQo+IFtXQVJOSU5HXSBbTVVMVElfVVNSUF0gQ291bGQgbm90IHNldCBUWCBy
YXRlIHRvIDUuMDAwIE1Iei4gQWN0dWFsIHJhdGUgDQo+IGlzIDM2OC42NDAgTUh6DQo+DQo+IFtX
QVJOSU5HXSBbMC9SYWRpbyMwXSBSZXF1ZXN0aW5nIGludmFsaWQgc2FtcGxpbmcgcmF0ZSBmcm9t
IGRldmljZTogNSANCj4gTUh6LiBBY3R1YWwgcmF0ZSBpczogMzY4LjY0IE1Iei4NCj4NCj4gW1dB
Uk5JTkddIFtNVUxUSV9VU1JQXSBDb3VsZCBub3Qgc2V0IFRYIHJhdGUgdG8gNS4wMDAgTUh6LiBB
Y3R1YWwgcmF0ZSANCj4gaXMgMzY4LjY0MCBNSHoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzFd
IFJlcXVlc3RpbmcgaW52YWxpZCBzYW1wbGluZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHou
IEFjdHVhbCByYXRlIGlzOiAzNjguNjQgTUh6Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBd
IENvdWxkIG5vdCBzZXQgVFggcmF0ZSB0byA1LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAz
NjguNjQwIE1Ieg0KPg0KPiBbV0FSTklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGluZyBpbnZhbGlk
IHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJhdGUgaXM6IDM2
OC42NCBNSHouDQo+DQo+IFtXQVJOSU5HXSBbTVVMVElfVVNSUF0gQ291bGQgbm90IHNldCBUWCBy
YXRlIHRvIDUuMDAwIE1Iei4gQWN0dWFsIHJhdGUgDQo+IGlzIDM2OC42NDAgTUh6DQo+DQo+IFNl
dHRpbmcgVFggc3BwIHRvIDM1Mg0KPg0KPiBbV0FSTklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGlu
ZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDUgDQo+IE1Iei4gQWN0dWFsIHJh
dGUgaXM6IDM2OC42NCBNSHouDQo+DQo+IE9PW1dBUk5JTkddIFtNVUxUSV9VU1JQXSBDb3VsZCBu
b3Qgc2V0IFRYIHJhdGUgdG8gNS4wMDAgTUh6LiBBY3R1YWwgDQo+IHJhdGUgaXMgMzY4LjY0MCBN
SHoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzFdIFJlcXVlc3RpbmcgaW52YWxpZCBzYW1wbGlu
ZyByYXRlIGZyb20gZGV2aWNlOiA1IA0KPiBNSHouIEFjdHVhbCByYXRlIGlzOiAzNjguNjQgTUh6
Lg0KPg0KPiBbV0FSTklOR10gW01VTFRJX1VTUlBdIENvdWxkIG5vdCBzZXQgVFggcmF0ZSB0byA1
LjAwMCBNSHouIEFjdHVhbCByYXRlIA0KPiBpcyAzNjguNjQwIE1Ieg0KPg0KPiBbMDA6MDA6MDUu
MzAxNjQyNzE4XSBSZWNlaXZlciBlcnJvcjogRVJST1JfQ09ERV9USU1FT1VULCBjb250aW51aW5n
Li4uDQo+DQo+IFswMDowMDowNS4zMDE2NjM3NDhdIFRlc3RpbmcgdHJhbnNtaXQgcmF0ZSAzNjgu
NjQwMDAwIE1zcHMgb24gMSBjaGFubmVscw0KPg0KPiBVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVU9VVVVVVVV0ZXJtaW5hdGUgDQo+IGNhbGxlZCBhZnRlciB0
aHJvd2luZyBhbiBpbnN0Jw0KPg0KPiBbMTQ0NTAuMTExMzkxXSBhdWRpdDogdHlwZT0xNzAxIGF1
ZGl0KDE3Mzg4NjQ2OTIuOTE0OjE2KTogDQo+IGF1aWQ9NDI5NDk2NzI5NSB1aWQ9MCBnaWQ9MCBz
ZXM9NDI5NDk2NzI5NSBzdWJqPWtlcm5lbCBwaWQ9MTEzMiANCj4gY29tbT0iYm1hcmtfcnhfc3Ry
ZWFtIiBleGU9Ii91c3IvbGliL3VoZC9leGFtcGxlcy9iZW5jaG1hcmtfcmF0ZSIgDQo+IHNpZz02
IHJlcz0xDQo+DQo+IHdoYXQoKTogUmZub2NFcnJvcjogT3BUaW1lb3V0OiBDb250cm9sIG9wZXJh
dGlvbiB0aW1lZCBvdXQgd2FpdGluZyBmb3IgQUNLDQo+DQo+IEFib3J0ZWQNCj4NClNvLCB0aGlz
IG1heSBiZSBhbiBYNDQwLXNwZWNpZmljIHRoaW5nIChkb2Vzbid0IGRvIGFyYml0cmFyeSByZS1z
YW1wbGluZykuDQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL0Fib3V0X1NhbXBsaW5nX1JhdGVzX2Fu
ZF9NYXN0ZXJfQ2xvY2tfUmF0ZXNfZm9yX3RoZV9VU1JQX1g0NDANCg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
