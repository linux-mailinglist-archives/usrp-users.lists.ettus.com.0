Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF8E962E17
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 19:02:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 080F33855EF
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 13:02:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724864558; bh=++j+DrCcpE453gjenjzo5zAvHYOHvOVarAjk2tffi3A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YguX6WjZPycsOa5tACCH5DL4KbWvWLaomQ1SUiZgdXNllWKet20R05/AOGCBMykC4
	 e9B9hI2xTyRAaxlI8qbkQt9JmZNyMr67fUaxw/qfpRGx1fA63Jv0c2jdE0c7ov5v45
	 s7xx9Og4nYOKbaNFl0PVXcTM4FkmYRPIx9tcHjlAWbr6pzCJiWgfglLpbL0ng8yNZP
	 ybdYTQexysx46WlD6tXLvyR6KIXkPL08QKSRZA9Z7cwn/Bgm7fFc7mnFtfZDOWHuiE
	 u/PKE5xhUa/9VUCzxuiThuC5juXmpHm4lh5j9dRAEcKr4xFuqSaSS44yslP5RuevlG
	 dYyuS2YI5mS7g==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 20E57385061
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 13:01:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JNNLZOXg";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-451a0b04f6bso38116741cf.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 10:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724864499; x=1725469299; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uer4LEMYQy1xVL5HKc2wyeg3tUGqL5dQ8O071f2hJk4=;
        b=JNNLZOXgm1nVM/E8M6kPHV8Lmc9v/wUCbczEx6MKiJj6KmYbRB8YX9g6g1KK3qXnAj
         UqOopvc/AyHTQi4HUeDPTJwSh6DTd7n7220xQOz7q1tnn0qOQgS01v4A7MRvTV7UX8pF
         tNeIxPDoOKsUiNzEBbjmE7xuayTEwPScruufo/tesDEO8HWIYEYLYYuwCdeIMPz5VxRv
         aHRGYpKL5P6KY/KWGet6cicwiijf2CC/37WlOHqGWw+6+RJWBz0cUu4e3+yjlaVahj28
         3RjU2wnk8XLK0G6dxXoyPkKgeMw/cHiGNqpEfGxkapCmnbBejPzmnxO81r/tfcTLplYU
         YNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724864499; x=1725469299;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uer4LEMYQy1xVL5HKc2wyeg3tUGqL5dQ8O071f2hJk4=;
        b=DlILn0QpwfJk2bBEreCwoP4mwo3e0RChw/6xCJhOzUyamE46Kh0qmqAbMY6pvB/wUj
         FD7TFRGgZ5i2l7puFRrGNgdg/pRzTaROzrx3y5CE4orgjEeg6JzQBLtskobfemITz94t
         j6UA+1yoCK11E4cQSGIhBP8s188mRb/MOBgE+wNXFv7asRiuYVvrKdXH4PmkPT5nf3k6
         YPyNMd1v1ypwHgf5RgUtAz4u+WCrGvTrj2BN9R/OO/uM3naonrGkGfPQC0uga9IHMYM9
         QZ5/XEs/Ul+P9puZ1TaD4IgEtdwTNexaZvuUhgIb0jin3DQYoxDhqPWscsetRuQKifRA
         FAEQ==
X-Gm-Message-State: AOJu0YzfHa+fkQ03e47Tn1d9talu4a1z6Wx/t38WTEnCgWFZJ6XQzmBh
	UZSEq3GtND18QIVtqOOQBTBDicqEf26eUVGsfXUe5AbdOnaGv9JBuv3c0g==
X-Google-Smtp-Source: AGHT+IE2CBbKknwgDpZFc6SrEgIrFjN4lWSlRe2hqI/igrL9kD9iu5zFYhUCM086lH9PSrMaYjTaUw==
X-Received: by 2002:a0c:f20a:0:b0:6bf:8339:95a0 with SMTP id 6a1803df08f44-6c33e5e82d6mr1843756d6.9.1724864499330;
        Wed, 28 Aug 2024 10:01:39 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c162d63e1esm66368706d6.64.2024.08.28.10.01.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 10:01:38 -0700 (PDT)
Message-ID: <9cec144a-612e-4eb3-8b42-fde95882588f@gmail.com>
Date: Wed, 28 Aug 2024 13:01:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKacFEn+UXiCb57ev_-rvjcOxp+vF3BJ3pLtxEdJvVvc3ZGh=A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKacFEn+UXiCb57ev_-rvjcOxp+vF3BJ3pLtxEdJvVvc3ZGh=A@mail.gmail.com>
Message-ID-Hash: CLQOXLMK3AI73V5CMQSNBO3BDOTGA7FU
X-Message-ID-Hash: CLQOXLMK3AI73V5CMQSNBO3BDOTGA7FU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: QPSK modulation and demodulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLQOXLMK3AI73V5CMQSNBO3BDOTGA7FU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDgvMjAyNCAxMjoxMywgYWxpIHNpZGRpZyB3cm90ZToNCj4gRGVhciBhbGwsDQo+IEkg
aGF2ZSB0cmllZCB0byB1c2UgdGhlIFFQQUsgbW9kdWxhdGlvbiBhbmQgZGVtb2R1bGF0aW9uIGV4
YXBtbGUgZnJvbSANCj4gdGhlIHR1dG9yaWFsIGluIHRoZSBsaW5rIGJlbG93LiBJIGFtIHVzaW5n
IHR3byBVU1JQcyBCMjA1IGFzIA0KPiB0cmFuc21pdHRlciBhbmQgcmVjZWl2ZXIsIGZyZXF1ZW5j
eSA5MTBNSHogLCBzYW1wbGluZyByYXRlIDMwMGsgb3IgMSBNIA0KPiBzcHMuIEhvd2V2ZXIsIHRo
ZSByZWNlaXZlZCBzaWduYWwncyBjb25zdGVsbGF0aW9uIGFmdGVyIENvc3RhcyBsb29wIA0KPiBh
cmUgbm90IHN5bmNocm9uaXplZCAocG9pbnRzIGV2ZXJ5d2hlcmUgaW4gdGhlIGNvbnN0ZWxsYXRp
b24gZGlhZ3JhbSkuIA0KPiBBbSBJwqBtaXNzaW5nIHNvbWV0aGluZyBpIGhhdmUgdG8gY2hhbmdl
IGluIHRoZSB1c3JwIHNldHRpbmcgb3IgDQo+IHN5bmNocm9uaXphdGlvbiBibG9jaz8NCj4NCj4g
aHR0cHM6Ly93aWtpLmdudXJhZGlvLm9yZy9pbmRleC5waHA/dGl0bGU9UVBTS19Nb2RfYW5kX0Rl
bW9kI1BoYXNlX2FuZF9GcmVxdWVuY3lfQ29ycmVjdGlvbg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+
IEFsaSBzaWRkaWcNCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQ0KVGhpcyBpcyBtb3JlLXByb3Blcmx5IGEgcXVlc3Rpb24gZm9y
IHRoZSBkaXNjdXNzLWdudXJhZGlvIG1haWxpbmcgbGlzdCwgDQpub3QgaGVyZS4NCg0KTXkgZ3Vl
c3MgaXMgdGhhdCB5b3Ugd2lsbCBhbHNvIHJlcXVpcmUgc29tZSBraW5kIG9mIEZMTCB0byB0cmFj
ayB0aGUgDQppbmV2aXRhYmxlIGZyZXF1ZW5jeSBkaWZmZXJlbmNlcyBiZXR3ZWVuIFRYIGFuZCBS
WC7CoCBCdXQNCiDCoCB0aGF0J3MganVzdCBhIHNsaWdodGx5LWVkdWNhdGVkIGd1ZXNzLg0KDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
