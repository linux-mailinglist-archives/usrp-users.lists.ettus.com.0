Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5228AC30F8
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 20:44:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C58A03850FE
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 14:44:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748112286; bh=sphOjf396soLa9rLF9LNU8XnWuC0SFdm5hszU39A5wc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J+ae8c4XsFLwHM9xizDueK8CBiOvP17KtzpTprXiJnOVq+z7oLodt2T8q84pYYYdk
	 ub6VIPyd3/j+znFP8oPC/zlw8tDUEtGI0A7CZ2r2fS+/MrpxSbTnf6VmMGXa5KPTTC
	 q/Z3jdMs7uTpEygiWabcvNErgf8cstSIsuz2/zcTz3WZnDKnSVPr7Vpv9wQLRZcoZn
	 ZJme4P0kBCgDF7Xar+bMsJj0Pv3ykhk2QQRvYdWK/ERbkqrVYyughCeuTS1xXhHCUa
	 Mbhrq5cStt43rWVJ0N9GwXNhp6mnweMEdO8yaCldB1ASH5vTJaTz6lLsbH7xhQxdeD
	 d247eBY4wBLSg==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 414643809CA
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 14:44:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fVP7O6Ad";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6f8d8fb211eso7486666d6.3
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 11:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748112250; x=1748717050; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0xE6vl51sHnS+wY2iZo+25nLbGlgTLmGrUfObySzqg=;
        b=fVP7O6AdzlDth5HqDkrwLNu0od0vt40NRlyAVX+3Qk1NajbYrW0zEqg5RtHUFmnGkO
         nruOp5QJsWuSC3CQvodey9AbvxlH/Qgh3oWUyYag3J8Lyo5z+2HI/c/gictsTmz4RH1O
         2nlOPf8M4IPZvcRrA0SIiwsHNVfRYUXe68LH7MWNa936bVCtHKxsrdUbxlFK16DhmQDD
         eMC+SejMfkUufUCz8oWZ6J23WM0Bpg8ZJTbxY2NPOq85rpyd/CWQbYLxDmbL2cQw7hnV
         aOyOyGyDB6/8c+DPu1EM5PCmoLH/txPpFmrkoBJTZMxThxHD5XcIZnfWwf+fNhI8kHY0
         lwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748112250; x=1748717050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E0xE6vl51sHnS+wY2iZo+25nLbGlgTLmGrUfObySzqg=;
        b=p2sVrlu2c6ep1NKfsW4estf/R+i+jeOxoYWWtD9CiXf/bqOrPlvp+l+weiEE9bVyF+
         Hyw6LaUebPs/x4Ryd3ugsq/Zna+4MxgNbqapphqL6uVEVx+Ijxy41LzMdX00d0QHQkTc
         5jpXE+6th2xr/KuRggAFZmH0nEkmxMnjgFog53sAjvYugp+mY/+BN+ThpuZbR0XFmsLe
         L5nxYqhPziLvMC9UWpd2RbF0eNK5+bGvi8DmRR4Px0/e3bqo2hL/RtZP2Vkmeqpvf60a
         qZ+zlY5O5n1wstsS45j8M0Sy6u6QutBGEcBEz3CLGTr7bWUw5lRuwf+Y+8sOP2S0flyB
         dOLw==
X-Gm-Message-State: AOJu0YwfnJCmlxCyzI6uxlX5emIwstCue6TTiF66IQ9UH3rH6DsXE0cm
	tqpP+tDCT6xODqhm2K3g9fTSo1TlmdA1KiRpiC1j/II8AiDFxXe4bJRcwuVF2GZR
X-Gm-Gg: ASbGncvFEaCOwmTXOg7ETPi3RsKVXP+X+SXnQDMy1fI/y13ob+wml5q1QwzIyl+Exp8
	1FK9N2+WNTXeFVi1KGPBZsZudTqZZHKVjhKe69aLYc4qjF/t5gDxTlb9s6/Re0Un22YaKOOojGm
	dFzffmz8+etDwVJ31V1xZ0Vy8ARSKmTT7lPcqLRS4+oRqtAfll+OFmphTzXw36GqkwgYrFpNXyl
	8eHPfeV4Z/GnJj0PLUJ577HZltJ1c9THv/PFtnhf4koLuT6oO1z2A/kibBUE51mrS+ZaOUXY6dF
	xL7UFO4DbCTboWOPE44Ecxeoy3UnTLSUb16+WQkNLrcvZ9QyNblfuEZYLRrsehUmTQbhYrfvQZw
	TQReAYixS25w/MVKYG+cu7yC65bdKPuz7jda8F3rW3G5vLrN8Nw0r/+l2dQ==
X-Google-Smtp-Source: AGHT+IGqB/+biGRQG2hgD1wMUmJ+VzDfMP0PYAx2i53Zm8gTA1NCkKLLit45yx0YYAXRxAhKUu3bNA==
X-Received: by 2002:a05:6214:234e:b0:6f5:f65:d6c4 with SMTP id 6a1803df08f44-6fa9d173e18mr53906726d6.30.1748112250336;
        Sat, 24 May 2025 11:44:10 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6faa0a801fbsm8057846d6.80.2025.05.24.11.44.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 May 2025 11:44:09 -0700 (PDT)
Message-ID: <7d797c2c-9229-42dd-beb0-bddd4eebf019@gmail.com>
Date: Sat, 24 May 2025 14:44:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAAxXO2GepjAKY2rp33tEm3SuM1NNTtodD0AEb62M5nSyXnOKTA@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GepjAKY2rp33tEm3SuM1NNTtodD0AEb62M5nSyXnOKTA@mail.gmail.com>
Message-ID-Hash: JJRMOII4RSDVKGF3OPEH6BA3UYLWG7QE
X-Message-ID-Hash: JJRMOII4RSDVKGF3OPEH6BA3UYLWG7QE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sensor issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJRMOII4RSDVKGF3OPEH6BA3UYLWG7QE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wNS0yNCAxNDozNSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IHVoZF91c3JwX2dl
dF9yeF9zZW5zb3IoZGV2W2NoYW5uZWxdLCAibG9fbG9ja2VkIiwgY2hhbm5lbCwgJmxvX2xvY2tl
ZCkpKQ0KWW91IG5lZWQgdG8gcmVwZWF0ZWRseSBjYWxsIHRoaXMgaW4geW91ciB3aGlsZSBsb29w
Lg0KDQpBbGwgeW91J3JlIGRvaW5nIGlzIGdldHRpbmcgdGhlIHNlbnNvciB2YWx1ZSBvbmNlLCBp
bW1lZGlhdGVseSBhZnRlciANCnR1bmluZywgYW5kIHRoZW4gc3Bpbm5pbmcgb24gdGhlIHZhbHVl
IG9mIHRoZSAidmFsdWVfdG9fYm9vbCIgDQpjb252ZXJzaW9uLCB3aGljaA0KIMKgIHdpbGwgbmV2
ZXIgY2hhbmdlLCBiZWNhdXNlIHlvdSBhcmVuJ3QgZ2V0dGluZyBhIGZyZXNoIHZhbHVlIG9mIHRo
ZSANCnNlbnNvci4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
