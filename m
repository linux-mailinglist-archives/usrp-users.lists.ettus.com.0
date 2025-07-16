Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7204B07789
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 16:01:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1251438673F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 10:01:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752674488; bh=i5W/FCAkTDki7mM/WPB8vvjulX76s/H5rJFcPdoUGKM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d8xOfusGJKwkopd7lHv+urEOffj1XD+AkkBuMIAlMjhm0hnyMy97VV1Cavp/5dlkv
	 sqBoyuob90vF6BBbhi4e4ZjSPsLEN5w9XqV8r/tpU3CXI8AlKpg/hsSnGdkqil3AEu
	 SxXvbHNX5owfCCO1rHt0Nm9OXLgZDmZ24XZy7qdLA8RD1/S3m0xgjGx7vphwdtwHkV
	 yOrJYCy41tbVOEQ2vj8UBwWx8kMR7S7iGCMqaEGhr4OIQcSPMFmHrCrtRwsvILcLDw
	 gEm6ha32tF7cEgmKMXNLplsz2powZo877pbCZUM+E2RuCrrkBaj3CzdEwqJlD94oO5
	 HL7pLVhcuBayw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 74DC0386692
	for <usrp-users@lists.ettus.com>; Wed, 16 Jul 2025 10:00:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YozD2fWU";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4ab5aec969eso65765291cf.3
        for <usrp-users@lists.ettus.com>; Wed, 16 Jul 2025 07:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752674438; x=1753279238; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1JIMxsjKdcu7coBykyQKVg5LZbyuMRZYNcwqbYgTy6A=;
        b=YozD2fWUgkWa5as+BkM5rXfblhhDjwwMW2Av8zK/0f96KjzFCHULfRa7IiaNxv7YFo
         Fd2gLHKLIAGRhagPXey1q3hf7avSt0sHHiKBQ55wg1Y559vEWBeETlaI/oNOYF/8DCmL
         +QAueIHnvK4DyQhK5b1I/KeuGx9j/L9KINroPoAK8bWW2ettV3lSgnbufGs7itKrMwVf
         H4yEu01jy1mZ8eaJnuef8Y9rK8TBFUyQRcLoOH6foneme9Q+9274YPPZRl5R3mUrWUKV
         0HVQyrKV3bFEIa4lFuOKmrKUgFqbXlHVOs0/5IlzHybsJqkNN/kt/PCS2nOZx7/tTo/U
         q9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752674438; x=1753279238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1JIMxsjKdcu7coBykyQKVg5LZbyuMRZYNcwqbYgTy6A=;
        b=XwDelKEuELdtFyckjSb1adsjvUjpfJddFuk/QkY/ol6zxuUzruUrghFyeoFXDRPE8J
         Ykzi9paMXqUpMgarRsghTQllu6G8GoCl/ynj791Sv/XDhtFCFF1xIoVoAkn0d0BPMLgC
         amtAiTikWQ9QpMAW6tYCJ3Ud7DBJK5lctTu9W7PEYSt0SNUlM/JvVvySMDoP0UbI/Q/a
         oVUbhhNgtqLT7/7m6xw9cQmDu5+vOE5AoVXoTH2P7JgtY2JSIUZMAu1eJ3h4PNXc/mGD
         dCe6z0vUJyvuxHBFKIHvtzgTSysN3spJowseR1hhPtO84S4GGVyobusdKM2G6XOfNa+Y
         Pw7w==
X-Gm-Message-State: AOJu0YxS1fEmV7zYVzAgQmH6fZEk2kAocvy3NGae6uWelvElfMLTC3HB
	2ZSC9I/h7KiCfsO3YHFtI4rM+vlm9bVbJScM0FM17aHBD7HpomiTT/ksMl6PXg==
X-Gm-Gg: ASbGnctGxMOsM/s1SdsFO7y1cdXP0KwOdVWfGXecVCc7aD/GHw3bHd10fKofwLCtsqS
	UDLzJvLwIVs8K3+C8zi0EApdEBDr6/thgyIsKx1e8NziEq7qs6Gyot3qpLEW/yDBpUrdKaZ5m8I
	d2OglI65Z52WsaUgoncccA4hYMyculGBfGEnObFJmHipHVXF9JVeixGolZqqGPWsVw7j6wN1uFB
	PTsQb1bPvQwXAWBPEGzTQgG+jeXzd52KvNAq66O4CKSf3iQGn0/UOsor48mTcLYNlP4z4ItmCJw
	LU4UPgB7RtvfZLMy2ovtghF/LHAKtKSqN8RwC2Dlyh84gBPMuQJM08hAxjRUyCorIWm23BJZmUt
	FgGYxJ4VocCuMLstdkyF3FPo/ZKknIFSTOLk2P19RApM+n5tNPS63C3UnAGZp0PBuQNj6YpYqZy
	rTnrgRHIF40z9db3X5Qg==
X-Google-Smtp-Source: AGHT+IGYqQTmMHZKKZXg2y5SzdFCeLLus0WAsbGN2Dp/sgQvyMVdFjo7pj/lwqb5oLG/E7cDu1q/2w==
X-Received: by 2002:a05:622a:44d:b0:4ab:5bf0:9322 with SMTP id d75a77b69052e-4ab909e9150mr57465981cf.14.1752674430729;
        Wed, 16 Jul 2025 07:00:30 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4ab67bd853bsm35357711cf.52.2025.07.16.07.00.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 07:00:30 -0700 (PDT)
Message-ID: <a9dcb1a0-6644-4ab3-b57c-1799f6830886@gmail.com>
Date: Wed, 16 Jul 2025 10:00:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0@lists.ettus.com>
Message-ID-Hash: R2NXEZDDJP7GDMUXNNSGYRVQNAOIARFY
X-Message-ID-Hash: R2NXEZDDJP7GDMUXNNSGYRVQNAOIARFY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Leveraging Dual 10 Gigabit Ethernet SFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R2NXEZDDJP7GDMUXNNSGYRVQNAOIARFY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wNy0xNiAwOTo1MywgZ2VjaGIyMUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IFRoZSBV
U1JQIFgzMTAgdXNlcyBkdWFsIDEwIEdpZ2FiaXQgRXRoZXJuZXQgU0ZQKyBwb3J0cyB0byBzdXBw
b3J0IA0KPiBoaWdoLXRocm91Z2hwdXQgZGF0YSB0cmFuc2ZlcnMgYmV0d2VlbiB0aGUgaG9zdCBh
bmQgRlBHQS4gSSBwbGFuIHRvIA0KPiB0cmFuc21pdCBhbmQgcmVjZWl2ZSBzYW1wbGVzIGluIHBh
cmFsbGVsIG92ZXIgdGhlc2UgdHdvIFNGUCsgcG9ydHMgDQo+IHVzaW5nIGEgc2luZ2xlIFJGIHRy
YW5zbWl0IGFuZCByZWNlaXZlIGNoYWluLiBUaGUgVUhEIGRyaXZlciBvbiB0aGUgDQo+IGhvc3Qg
c3BsaXRzIGxhcmdlIHRyYW5zbWlzc2lvbiBkYXRhIHN0cmVhbXMgYWNyb3NzIHRoZSB0d28gRXRo
ZXJuZXQgDQo+IGxpbmtzLCBzZW5kaW5nIHRoZW0gdG8gdGhlIEZQR0EgZm9yIHByb2Nlc3Npbmcu
IE9uIHRoZSByZWNlaXZlIHNpZGUsIA0KPiBpdCBzaW1pbGFybHkgbWVyZ2VzIGRhdGEgc3RyZWFt
cyBjb21pbmcgYmFjayBmcm9tIHRoZSBGUEdBIHRvIGZvcm0gYSANCj4gY29udGludW91cyBJUSBz
YW1wbGUgc3RyZWFtIGZvciB0aGUgaG9zdC4gSW5zaWRlIHRoZSBGUEdBLCB0aGUgc3BsaXQgDQo+
IHN0cmVhbXMgcmVjZWl2ZWQgb3ZlciB0aGUgdHdvIFNGUCsgcG9ydHMgYXJlIG1lcmdlZCBhbmQg
YXNzZW1ibGVkIGludG8gDQo+IGNvbXBsZXRlIElRIHNhbXBsZXMgYmVmb3JlIGJlaW5nIHBhc3Nl
ZCB0byB0aGUgREFDIGZvciB0cmFuc21pc3Npb24uIA0KPiBDb252ZXJzZWx5LCBvbiByZWNlcHRp
b24sIHRoZSBGUEdBIHNwbGl0cyB0aGUgQURDIG91dHB1dCBzdHJlYW1zIGFuZCANCj4gZGlzdHJp
YnV0ZXMgdGhlbSBhY3Jvc3MgdGhlIHR3byBTRlArIHBvcnRzIHRvIG1heGltaXplIHRocm91Z2hw
dXQgYmFjayANCj4gdG8gdGhlIGhvc3Qgc2VydmVyLg0KPg0KPiBIb3cgZXhhY3RseSBkb2VzIHRo
ZSBGUEdBIGF1dG9tYXRpY2FsbHkgbWVyZ2UgdGhlIHBhcmFsbGVsIEV0aGVybmV0IA0KPiBzdHJl
YW1zIGZyb20gU0ZQKzAgYW5kIFNGUCsxIGludG8gb25lIGxvZ2ljYWwgY29udGlndW91cyBJUSBz
dHJlYW0gDQo+IGJlZm9yZSBzZW5kaW5nIGl0IHRvIHRoZSBEQUM/IEFuZCBkdXJpbmcgcmVjZXB0
aW9uLCBob3cgZG9lcyBpdCANCj4gY29vcmRpbmF0ZSBzcGxpdHRpbmcgdGhlIEFEQyBvdXRwdXQg
dG8gZGlzdHJpYnV0ZSBkYXRhIHN0cmVhbXMgDQo+IGVmZmljaWVudGx5IGFjcm9zcyBib3RoIFNG
UCsgcG9ydHM/IElzIHRoaXMgbWVyZ2luZyBhbmQgc3BsaXR0aW5nIA0KPiBlbnRpcmVseSBoYW5k
bGVkIGJ5IHRoZSBVSEQgYW5kIEZQR0EgZmlybXdhcmUsIG9yIGRvIHdlIG5lZWQgdG8gDQo+IGlt
cGxlbWVudCBjdXN0b20gUHl0aG9uL01BVExBQi9DKysgY29kZSB0byBtYW5hZ2UgaXQ/DQo+DQo+
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20NClVubGVzcyB0aGVyZSBoYXMgYmVlbiBhIGNoYW5nZSB0aGF0IEkgbWlzc2VkLCBkdWFs
LWV0aGVybmV0IG1vZGUgYXBwbGllcyANCnRvIG11bHRpcGxlIGNoYW5uZWxzLsKgIFVIRCBkb2Vz
bid0IHNjaGVkdWxlIHBhY2tldHMgZm9yIHRoZSBzYW1lDQogwqAgY2hhbm5lbCBhY3Jvc3MgdHdv
IGludGVyZmFjZXMuDQoNCkJ1dCBhIHNpbmdsZSAxMEcgaW50ZXJmYWNlIGNhbiBoYW5kaWx5IGhh
bmRsZSBmdWxsLXJhdGUgKDIwME1zcHMpIGZvciBhIA0Kc2luZ2xlIGNoYW5uZWwsIGFzc3VtaW5n
IHlvdXIgaG9zdCBpcyB1cCB0byB0aGUgdGFzay4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
