Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD248BCEF2
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 15:31:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 635D0384AFF
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 09:31:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715002290; bh=/x68W+OecvFNgWsjdVei+dAy2TN9jVWxKsChB+YuMlE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PB+OX8w/w82XG+fVfFt5/eongXkGSGLJQ+LZ5eXTVMcQPGBN1U7xGGLJZ2zGgGo36
	 z471PdPmQKo8xMrBCFaXV5fIOMn7eVrQAj2uTTn3JfFyRTiN3mQBgwvZ0b2AD1730R
	 piK18g623W47enPO334fsD7Cd+3FnKzhjEPQ4jSjNxlzsC4dCr/c0GxxvZIWJrnQKu
	 uxZe+IiMNasxRunqA9c/VyFaYyepw3T2C4MtS8zJCIpm5iDk5SKCgz9HTKSZnyzHrR
	 6zB244Y8UQZbFxMYRJlDLFJgWgcYkiEDLCgRPLxUNGmHWs+gKQxJlOTiu3eyWMsof0
	 XcOa1ox9VRLeQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7288E3849FB
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 09:30:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XRLL9Q72";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-792639cf4faso226260185a.1
        for <usrp-users@lists.ettus.com>; Mon, 06 May 2024 06:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715002257; x=1715607057; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tHvnLaOOyDdezIMjGaMy8uFQYD4hPcjwqgF2FETb3kY=;
        b=XRLL9Q72FtPiG+YsdZSnL8E9yMDFjTOlgLJKGr5Ii1Xl+GvTefP7xgRMulfUuUtWV8
         636DUwjd9j+NQvezW6KrdNVdFzP2p+As98+5Jl+eE0QaSPoqJsXE1jpUvdWJCA9xqwuA
         lbwrpuzUL/LaGdY4kRJWrtNKC7h+b2NXqtYl5ymjxou5Hy2HS5m1l7ySJJbPXpgqhKD7
         WqyYieImqhdfq/oxv7q1npWVCU4cmJ/TCkLiwHGniAlRHqvQNGnf8Eee05ZE/b5EfoQX
         fMTXvGgFA9bL4DH0SFxalzp1x2hpg2Mcv14dfvAab3i2/TUdwg1EUjiXIyzJ0xjW6JpZ
         HtMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715002257; x=1715607057;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHvnLaOOyDdezIMjGaMy8uFQYD4hPcjwqgF2FETb3kY=;
        b=BRSrK9aMbh2Nja4KslJQjXY5VpZCt6MDer/znwTQ11sJY5Dd26VyyCaT4Lrx771DXY
         y3BEEnDeISZ5z0oKCE83FqArvp1csnIcf0AXb66Azoas95uMU7dL+GOuqABvIeEetbxU
         eCifvGRx2lves1F/VYMOu9dsDqYcJVvze6eYcFtDcb8mQvHOaB9Jna/0u9i85/SmJJHr
         dJpZnfDV85MS7rq6SfYJbjCcFG0GD9RA62lzSLQA7hejKJaHVxi7YG58mjMmpSi/dZP2
         s9QOTtvtxTQotG/hgwYN7WhDQmxMF51iThw3B0UTZW8m4/RfwOgyC8D86ejrS9Oyp47Y
         Ld2g==
X-Gm-Message-State: AOJu0YzNTL4MogA+0SE5b60UySEtHRVw687VuAjnj03fS6WCUla2oiDF
	kynhSzjIIny5nwMF8e8GHQW6kLMt+Jr43iL9mxjv1rvh0x/ZG5Z2DS0OEQ==
X-Google-Smtp-Source: AGHT+IFPDO0yYeUFvoqHZO5MDRT+EtDxGbLZgeCWq5oWjuEffF9AAxMu2iaZFDlxa/kx+Hig29kIag==
X-Received: by 2002:a05:6214:e86:b0:6a0:b461:ba6 with SMTP id hf6-20020a0562140e8600b006a0b4610ba6mr12961495qvb.8.1715002257365;
        Mon, 06 May 2024 06:30:57 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id db9-20020a056214170900b006a1174f2942sm2836945qvb.30.2024.05.06.06.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 06:30:57 -0700 (PDT)
Message-ID: <9af5057b-2cee-4ac3-8fe1-1eab340981e0@gmail.com>
Date: Mon, 6 May 2024 09:30:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
 <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
 <5de6679c-80f4-4f42-9ee8-b224ade27fdb@ettus.com>
 <4df3d6df-b7d3-43b6-a4d6-68b1bbdc3486@gmail.com>
 <CAB__hTQnfzp9-Ni_KqY3EmEcO8iKdWuHHxEcwGTnTJx=KAbCbQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQnfzp9-Ni_KqY3EmEcO8iKdWuHHxEcwGTnTJx=KAbCbQ@mail.gmail.com>
Message-ID-Hash: KMM2JSRALYN6RMZMQCQURZB542QPAP3E
X-Message-ID-Hash: KMM2JSRALYN6RMZMQCQURZB542QPAP3E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KMM2JSRALYN6RMZMQCQURZB542QPAP3E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNCAwOToxNywgUm9iIEtvc3NsZXIgd3JvdGU6DQo+DQo+IGh0dHBzOi8vZmls
ZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3N0cmVhbS5odG1sI3N0cmVhbV9yZW1vdGUNClRoYW5r
cywgUm9iLsKgIEkgc3RpbGwgaGFkICJBbHRlcm5hdGl2ZSBTdHJlYW0gRGVzdGluYXRpb24iIGlu
IG15IGhlYWQsIA0Kd2hpY2ggZnJ1c3RyYXRlZCBteSBzZWFyY2guDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
