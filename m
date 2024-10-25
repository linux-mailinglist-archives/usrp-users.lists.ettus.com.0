Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8B9B0C98
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 20:06:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1BDB385CDD
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 14:06:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729879602; bh=ZgPTMZZW3Y9Ip9I3dwTJjW91omkw4C631ECypMGJy9Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gtIAEAf9C6Iq/6rayRcUO899CwoXAH+hRKtJjFkz8vKDqaRq8zN4tsUrFhDSnfbtT
	 G8B7Lntn4osUvQw3VK1GWFUTjrPhT7H3y++ijxLTpREhMbfB6ml70DpRUQQ+sPJQU1
	 YbSTNVbe2hULKAMZ5XYl6gf2KyJsZ+BipqKKPRqrKVjVyTVQbu0d9l3WtEDyLTO9s4
	 s4Jca4nGqXB4vL5qLJQyhVXnUJlUz4WfL42W5L+5fD1bjYWGtdShqAGgXEQslN0Jxx
	 x0hE/9+IyklVbbB54p3Fm0ocEk56bKGXsOdcX0cL4T2Hcbam5OVdEEfPK4LQN+ihBf
	 b32v90ILLWfGQ==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 76BCD385C68
	for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 14:05:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ayUeEKo9";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6cbceb48613so14930406d6.2
        for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 11:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729879547; x=1730484347; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mmTuhlclbCFs+nUDtrDeOT+Z0BT7smg9QC3LFncWZA8=;
        b=ayUeEKo9c+S8gkMtqBQljKp/h4E9YDps/3yPvf34Pzgv3caX7oiSpu4zxwff+qzylA
         Llwm/4x3SztP28UjmKTwDF+Mtf/KezoIzYrrhmIvXIS2gfwLooHU9Zy2C5wpT8cNdGCa
         Y4F1Cx3XvW+qCs9wOYeIi7iPk4ht8Cs9qm9RrtpGWrLuCcU7zHH9GafBV+mffuNQ06l7
         1FWimPgeqT1PxcA7j1RvDxwzNJOZuL/PnAdKk5n1Pvg8uruz9Ku3a7F3Hd9fKxlLuixv
         mml5E8NkoKWrCZv9XieDuM54wm8MmTcs4aSt5uR/GqpPEpBQyLNX1iguo7gb4rqtiWtc
         Os7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729879547; x=1730484347;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mmTuhlclbCFs+nUDtrDeOT+Z0BT7smg9QC3LFncWZA8=;
        b=nNC6CCkB6YjE9rqvywUtUdTwrA+LgTVKM0LX5yYlS4xwwJrkn7llwITswRiPjGQIac
         d+2UETw7HsluwvN1N2tFyrLuyw+V4UOCBhqJt2tBMzfQw3TcII+zVPHdf+yJPAkt9PTi
         RGjLVUK3D6G2zFGpp/oRDyZxibbHQQpaCItCrCEwP+grIwSxS3eUgZCaOTK3rwrx6BTK
         7qlGw2XpDbGIUyLlPi3o6B9rRHg26WP5hPh9UYla0iC76m4X6JqpuU9bnG5Qv+n4X1VO
         s4nEpJgT5WR2kRwfeS0/8dNdqrS9742ZikNdc40UWFcEwhkdWbZYE6jZVaPRr8ynzxmp
         I9zw==
X-Gm-Message-State: AOJu0YwZzbDmGES70DfztHXTZU1y51hwV/K13xPUp1koKa1m0BAtsniF
	xBWchxmTNDJHsCQY8k11zoulPt11WeTi5AJJSeiE3Pb/ShZbcG7Y+WG85A==
X-Google-Smtp-Source: AGHT+IHPf4i1XR64YhdSxXjTSqH8FjSe8iebhSc+JllLj2n5NY5soSh1RnOwadKka7eZCG4a8mj+AA==
X-Received: by 2002:a05:6214:3a8c:b0:6cc:113c:894b with SMTP id 6a1803df08f44-6d1856f1519mr3539916d6.2.1729879546621;
        Fri, 25 Oct 2024 11:05:46 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46131fc75f9sm8304541cf.0.2024.10.25.11.05.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:05:46 -0700 (PDT)
Message-ID: <85e89155-f303-46ba-bc3b-c75fc7c3f03d@gmail.com>
Date: Fri, 25 Oct 2024 14:05:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cd6ed424-41b7-4b2d-a4c5-395eb2775851@nwra.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cd6ed424-41b7-4b2d-a4c5-395eb2775851@nwra.com>
Message-ID-Hash: GCHYOV7KVSQX7UJ2PSJI23USBEG2ZTWJ
X-Message-ID-Hash: GCHYOV7KVSQX7UJ2PSJI23USBEG2ZTWJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble connecting to an x300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCHYOV7KVSQX7UJ2PSJI23USBEG2ZTWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMTAvMjAyNCAxMzoxOCwgQ2hhZCBTcG9vbmVyIHdyb3RlOg0KPiBBbGw6DQo+DQo+IEkn
bSBoYXZpbmcgdHJvdWJsZSBjb250cm9sbGluZyBhbiBFdHR1cyB4MzAwIFNEUiB1c2luZyBVYnVu
dHUgMjIgc2VydmVycy4NCj4NCj4gVGhlIGJyaWVmIGRlc2NyaXB0aW9uIChkZXRhaWxzIGJlbG93
KSBpcyB0aGF0IEkgY2FuIHBpbmcgdGhlIGRldmljZSwgDQo+IGJ1dCBJIGNhbid0IHNlZSBpdCB1
c2luZw0KPiB1aGRfZmluZF9kZXZpY2VzIG9yIHVoZF91c3JwX3Byb2JlIG9yIHVoZF9mZnQgZXRj
Lg0KPg0KPiBJJ3ZlIGxvb2tlZCBhcm91bmQgb24gdGhlIHdlYiBmb3IgdGlwcywgYnV0IG5vdGhp
bmcgaXMgaGVscGluZy4gSW4gDQo+IHBhcnRpY3VsYXIsDQo+IEkgbWFkZSBzdXJlIHRvIHB1bmNo
IGEgaG9sZSBpbiB0aGUgZmlyZXdhbGwgdXNpbmcNCj4NCj4gwqDCoCBzdWRvIGlwdGFibGVzIC1B
IElOUFVUIC1wIHVkcCAtLXNwb3J0IDQ5MTUyIC1qIEFDQ0VQVA0KPg0KPiBEZXRhaWxzDQo+IC0t
LS0tLS0NCj4gSSdtIHVzaW5nIHR3byBVYnVudHUgMjIuMDQuNSBzZXJ2ZXJzLiBUaGUgVUhEIHZl
cnNpb25zIGFyZSB0aGUgc2FtZSBvbiANCj4gZWFjaDoNCj4NCj4gwqDCoCBVSEQgNC4xLjAuNS0z
DQo+DQo+IE9uZSB1c2VzIGdudXJhZGlvIDMuMTAuNy4wIGFuZCB0aGUgb3RoZXIgMy4xMC4xLjEu
DQo+DQo+IEJvdGggc2VydmVycyBjYW4gY29ubmVjdCB0byBhbmQgY29udHJvbCBhbiBFdHR1cyB4
MzEwIHdpdGggdHdvIFVCWCANCj4gZGF1Z2h0ZXJib2FyZHM7DQo+IHVoZF9mZnQgcnVucyBmaW5l
LiBUaGUgeDMxMCBoYXMgZGVmYXVsdCAoMTAgR0IpIElQIGFkZHJlc3Mgb2YgDQo+IDE5Mi4xNjgu
NDAuMi4NCj4NCj4gVGhlIHgzMDAgaGFzIG9uZSBVQlggZGF1Z2h0ZXJib2FyZCBhbmQgb25lIFdC
WCBkYXVnaHRlcmJvYXJkLiBXaGVuIEkgDQo+IGNvbm5lY3QgZWl0aGVyDQo+IHNlcnZlciB0byB0
aGUgeDMwMCB2aWEgMTAgR0IgZXRoZXJuZXQsIEkgY2FuIHBpbmcgdGhlIGRldmljZSBhdCANCj4g
MTkyLjE2OC40MC40Og0KPg0KPiBjbXNwb29uZXI+cGluZyAxOTIuMTY4LjQwLjQNCj4gUElORyAx
OTIuMTY4LjQwLjQgKDE5Mi4xNjguNDAuNCkgNTYoODQpIGJ5dGVzIG9mIGRhdGEuDQo+IDY0IGJ5
dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT0xIHR0bD02NCB0aW1lPTAuMDU4IG1zDQo+
IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT0yIHR0bD02NCB0aW1lPTAuMDM0
IG1zDQo+IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT0zIHR0bD02NCB0aW1l
PTAuMDQ4IG1zDQo+IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT00IHR0bD02
NCB0aW1lPTAuMDI2IG1zDQo+IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT01
IHR0bD02NCB0aW1lPTAuMDI3IG1zDQo+IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21w
X3NlcT02IHR0bD02NCB0aW1lPTAuMDQyIG1zDQo+IF5DDQo+IC0tLSAxOTIuMTY4LjQwLjQgcGlu
ZyBzdGF0aXN0aWNzIC0tLQ0KPiA2IHBhY2tldHMgdHJhbnNtaXR0ZWQsIDYgcmVjZWl2ZWQsIDAl
IHBhY2tldCBsb3NzLCB0aW1lIDUxMDRtcw0KPiBydHQgbWluL2F2Zy9tYXgvbWRldiA9IDAuMDI2
LzAuMDM5LzAuMDU4LzAuMDExIG1zDQo+DQo+IChXZSBzZXQgdGhlIElQIGFkZHJlc3MgdGhpcyB3
YXkgbG9uZyBhZ28gYW5kIEkndmUgYmVlbiB1c2luZyBpdCANCj4gc3VjY2Vzc2Z1bGx5DQo+IHVu
dGlsIHJlY2VudGx5LikNCj4NCj4gQnV0IHVoZF91c3JwX3Byb2JlIHJldHVybnM6DQo+DQo+IGNt
c3Bvb25lcj51aGRfdXNycF9wcm9iZSAtLWFyZ3M9ImFkZHI9MTkyLjE2OC40MC40Ig0KPiBbSU5G
T10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS4yLjA7IEJvb3N0XzEwNzQwMDsgVUhE
XzQuMS4wLjUtMw0KPiBFcnJvcjogTG9va3VwRXJyb3I6IEtleUVycm9yOiBObyBkZXZpY2VzIGZv
dW5kIGZvciAtLS0tLT4NCj4gRGV2aWNlIEFkZHJlc3M6DQo+IMKgwqDCoCBhZGRyOiAxOTIuMTY4
LjQwLjQNCj4NCj4gYW5kIHVoZF9maW5kX2RldmljZXMgZ2l2ZXM6DQo+DQo+IGNtc3Bvb25lcj51
aGRfZmluZF9kZXZpY2VzDQo+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDEx
LjIuMDsgQm9vc3RfMTA3NDAwOyBVSERfNC4xLjAuNS0zDQo+IE5vIFVIRCBEZXZpY2VzIEZvdW5k
DQo+DQo+IEkgYXR0ZW1wdGVkIHRvIHJlZmxhc2ggdGhlIEZQR0E6DQo+DQo+IGNtc3Bvb25lcj51
aGRfaW1hZ2VfbG9hZGVyIC0tYXJncz0idHlwZT14MzAwLGFkZHI9MTkyLjE2OC40MC40Ig0KPiBb
SU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS4yLjA7IEJvb3N0XzEwNzQwMDsg
VUhEXzQuMS4wLjUtMw0KPiBObyBhcHBsaWNhYmxlIFVIRCBkZXZpY2VzIGZvdW5kDQo+DQo+IEkn
bSBwcm9iYWJseSBtaXNzaW5nIHNvbWV0aGluZyBzaW1wbGUuIEFueSBhZHZpY2U/DQo+DQo+IENo
YWQNCklzIGl0IHBvc3NpYmxlIHRoYXQgeW91IHNldCB0aGUgSVAgYWRkcmVzc2VzIG9mIHlvdXIg
KkhPU1QqIHRvIHRoZSANCmFkZHJlc3MgaW50ZW5kZWQgZm9yIHRoZSBVU1JQPw0KDQpUaG9zZSBw
aW5nIHRpbWVzIGFyZSBzdXNwaWNpb3VzbHkgbG93Lg0KDQpJIHJ1biBhbiBYMzEwIG9uIGEgVWJ1
bnR1IDIyLjA0IHNlcnZlciB3aXRoIHNpbmdsZSAxMEdiaXQgcG9ydCBvbiB0aGUgDQoybmQgU0ZQ
KyBpbnRlcmZhY2Ugd2l0aCAxOTIuMTY4LjQwLjIsIGFuZCBpdCB3b3Jrcw0KIMKgIGp1c3QgZmlu
ZS4NCg0KDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
