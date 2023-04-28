Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 608B26F1A6A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 16:22:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D05F7383E77
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 10:22:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682691740; bh=R3t27HetmomypD2w3p2IVpv8vQyMy/cG70tsNaw+NzU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=w7Yh/9wBXxAUqoSMsPFw7iY4LVhKueom05AdKxRZLzQJ8vU1na+tRVJFylgrDVAkA
	 zw6D4MWQGuGviiDIACnaCQ650B2MIF7KJhl/vu2m0DwKvjDByQUmDXQejxYU3iGkkb
	 SN7u5dYVgWj4W3BIDGpgOEsqfLBwoAVVS6AzDgcfwthzOk9/kMMWKhIZHRAf4csuCo
	 W5IQH9g2P1FcOCy+Nb56j6bnwTWBnUzTPJblgcYahC7QPM9iIqTLMYQJHVZAsq+PGq
	 mPbOzJbCPaiTeUeMW62fVX1DH4m4LEXJ5tFDctJlRtWZVBe6s9wFwh8LAQXxDxPQSW
	 uDXywRl95xqOQ==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id CC5A9383BE5
	for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 10:21:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iTXDCK1L";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-5ef54bcded4so181076d6.1
        for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 07:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682691703; x=1685283703;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=udS3h/Xh8WGCgRWS4xxi+sqcAPfGkLNarFSDxxxkxFs=;
        b=iTXDCK1L2ihK4macJNYlNurbv28biFqo4/md1mhnfz2LZekcuvpFjreamEopzM+O1c
         /GgsgbFTuWOTKo3k5SJeZyF1lovds+s+Tn5VWVTRoMGkxGAAdwpyGdx9sUXRhSJzGUkA
         OxDgVIL1DNYDLJfr1Jqy6Z1uQkq0cOMLdphmvIOuGTU7GrkleT0Lfz5w50VUpnzdJdcp
         bvYwGjF+6NwyrqltdLRyEj/T2WkJzE0Z1Y0XT422RDiW+6LRGTENuQv7JQF8bdBAS0Hu
         SWjrz1N4ghNf0ioPQGHeCFv5Z8o+pKHU1LVA9Tg9AU8Xwn9WOdKKfK4u6c/gK5LFS5n+
         yiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682691703; x=1685283703;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=udS3h/Xh8WGCgRWS4xxi+sqcAPfGkLNarFSDxxxkxFs=;
        b=lnwCp9uWD9YA1d8CeuzBEI/CFVnXrTxBerLhqToac9BJDHcJWKq72uWcdH+BuzeYeB
         VH5xWd8FZ+W6gvf3HIHfns67Ga5FjnvU12evrlErOnSM9iHSh4zxCq6ev5eDzOyrGxIF
         xb6zqYs3K+SWWPZA9pi4bAZCfvDPkiIDo177klu6DXhjyvXil0098ZbNmFs25DQ5ARW+
         4WqJNo2daRAoIEkBvwJbVNjlnT04C3QrSwkMQ2MvwnAwtqttJK/hxaVHwoJaGJREWIjy
         y4KBpYX9iX5Yqop0o6QM1LAh7MzlyRreL/4/bVlIXnyewLaItZWp2aQbtMVxpAUQsLkP
         USmQ==
X-Gm-Message-State: AC+VfDzhS5TQA5b/msbexFuAlHefe+/4e9cGGh9uE5AhV3sUKDCHjH/4
	TJ1CAv5v8rfveXPVEab8oe3dj4Wvj/0=
X-Google-Smtp-Source: ACHHUZ6BB55/3Rz+p7/Rh+BfQmxjmUeA3ekzWE+TtnEeEPsYnzLk2S90own+6vAoVfwOTb3Xx4eZzg==
X-Received: by 2002:ad4:5bc1:0:b0:5ee:b788:2f48 with SMTP id t1-20020ad45bc1000000b005eeb7882f48mr8840342qvt.31.1682691702957;
        Fri, 28 Apr 2023 07:21:42 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e24-20020a0cb458000000b005dd8b9345a8sm6365216qvf.64.2023.04.28.07.21.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 07:21:42 -0700 (PDT)
Message-ID: <7fa3179f-e538-4809-211f-f75875cae60b@gmail.com>
Date: Fri, 28 Apr 2023 10:21:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE@lists.ettus.com>
Message-ID-Hash: ISXQ4LFUKFNMESLQ6QIA2EBNC7IIV6J6
X-Message-ID-Hash: ISXQ4LFUKFNMESLQ6QIA2EBNC7IIV6J6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISXQ4LFUKFNMESLQ6QIA2EBNC7IIV6J6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDQvMjAyMyAwNzoxNSwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIE1hcmN1cywNCj4NCj4NCj4gSSBoYXZlIHBlcmZvcm1lZCBzb21lIHRlc3RzIHBoeXNp
Y2FsbHkgbG9vcGluZyBUWC9SeCB0byBSWDIgb2YgdGhlIA0KPiBzYW1lIGNoYW5uZWwsIGFuZCBy
ZXN1bHRzIGFyZSB0aGUgc2FtZS4gSSB0cmllZCBhcyB3ZWxsIHRvIHR1cm4gb2ZmIA0KPiBhbmQg
dHVybiBvbiB0aGUgVVNSUCBiZXR3ZWVuIDIgY29uc2VjdXRpdmUgdGVzdHMsIGFuZCBJdCBkb2Vz
buKAmXQgc2VlbSANCj4gdG8gY2hhbmdlIGFueXRoaW5nLg0KPg0KPg0KRG8geW91IGhhdmUgYSBz
cGVjdHJ1bSBhbmFseXNlcj/CoCBDb3VsZCB5b3UgY2hlY2sgdGhhdCB0aGUgVFggc2lkZSBpcyAN
CmFjdHVhbGx5IHRyYW5zbWl0dGluZz8NCg0KU2ltaWxhcmx5IGZvciB0aGUgcmVjZWl2ZSBzaWRl
LS1kbyB5b3UgaGF2ZSBhIHNpZ25hbCBnZW5lcmF0b3I/wqAgT3IgZXZlbiANCmFuIGFudGVubmEg
dGhhdCB3b3VsZCBwaWNrIHVwIHN0cmF5IFJGDQogwqAgdGhhdCB5b3UgY291bGQgdXNlIHRvIGNo
ZWNrIHRoYXQgdGhlIHJlY2VpdmUgc2lkZSBpcyAic2FuZSIgPw0KDQoNCkFyZSB5b3VyIGp1bXBl
ciBjYWJsZXMgYWN0dWFsbHkgU01BIGFuZCBub3QgUlAtU01BP8KgwqAgW0p1c3QsIHRvIHVzZSBh
biANCkVuZ2xpc2ggaWRpb20gaGVyZSAiY2x1dGNoaW5nIGF0IHN0cmF3cyJdDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
