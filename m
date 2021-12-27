Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6F147F99C
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 02:01:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46FA6384E80
	for <lists+usrp-users@lfdr.de>; Sun, 26 Dec 2021 20:01:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B3vpWzNk";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 701DD384D9B
	for <usrp-users@lists.ettus.com>; Sun, 26 Dec 2021 20:00:58 -0500 (EST)
Received: by mail-qv1-f52.google.com with SMTP id a9so12646721qvd.12
        for <usrp-users@lists.ettus.com>; Sun, 26 Dec 2021 17:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=joXGQjvP/h/7uIdQSn4EfQnD/X9mG6bSYQN9YomKUEM=;
        b=B3vpWzNkZLOtLA7rnWrUVdTvs0AtCHx4NPikgCimy+PrPHepeLyC1cGFAtEbI9sZnY
         eUTNfng0Pu+tU4Vmc1tEK7LcyhlaSWtVVaLAgjcFMObHk8dX3JvCanLO6RVMIjnBq5me
         4KyjEHXbq9oXgAzkx036X1/EgV/xCSxs27wPDuCfrl8XxlhGcXRhpmluvF+Zr0zhAtwp
         zwoTv6tcxzq3B5OwUWd12XpULvAP23tEimpThncMugLfcnRNaZ48H5eSAHTeli2Ycwl1
         RRhrzIMFEfcaDCcOvqCgjPoSJHsSc+jpv/EfMRSt3oRVwd/UYTIDKulm+w36yruqtw9z
         YdXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=joXGQjvP/h/7uIdQSn4EfQnD/X9mG6bSYQN9YomKUEM=;
        b=I8x2HAFXcwKBP8/gsP7B2D0s/yWkSUDAPwia3An2Fc+XC7H8Z6rGHI61VUHnYM7WLI
         NWaNfQnnAcDOuOJN6TZC7FUZ2U6rNrhBG1dsBArOVNB/16w3PZLB/sJSAx5+Uvs+hfAE
         /YojbPavBfsoPT7EQQk91QSI8XXni1BQVbB8mAXpeB9nqVx6CdOR+mLiSi5RSggJbMpy
         6IeLELSNWFgBPj6D0qXLZaGH2lmgu5crDfkoD0fZXoO3krkLXgLo42lbqDwHj9QET0/2
         K5eCevMAbw6TNgYXKN0kaUAKxRRDE6a3FS4Dnd7Nz7yimxkStcyuRZhLtSLnCEax6dnI
         ti4w==
X-Gm-Message-State: AOAM532HWYgeRIvf2x1zNkXzrzYVwJcQZx14SX+erZ9BuY/5mCdjbqOt
	d4ilOYIp4GhXY4BPlymOnnDK61TsTh2Fnw==
X-Google-Smtp-Source: ABdhPJwps31bumix4exGw39co+7FC0m/+CNqRcKHFXmqQ0l6B/JufaGkLhJkEOS/D28ViZ1vd1QFIw==
X-Received: by 2002:a05:6214:f61:: with SMTP id iy1mr13517784qvb.28.1640566857679;
        Sun, 26 Dec 2021 17:00:57 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f12sm11856920qkh.22.2021.12.26.17.00.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Dec 2021 17:00:57 -0800 (PST)
Message-ID: <53a851c2-1cb3-7e8d-ad5f-023e351652fc@gmail.com>
Date: Sun, 26 Dec 2021 20:00:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com,
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>
References: <9A281834-D787-491F-ADA1-B2C448BF9E4C@skidmore.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9A281834-D787-491F-ADA1-B2C448BF9E4C@skidmore.edu>
Message-ID-Hash: B5DZ2FM6LS4XU4H5FDJMVMUJ7PNFP335
X-Message-ID-Hash: B5DZ2FM6LS4XU4H5FDJMVMUJ7PNFP335
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pulse an RF signal?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B5DZ2FM6LS4XU4H5FDJMVMUJ7PNFP335/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0yNiAxOTo1OCwgQW50aG9ueSBIb2xsYW5kIHZpYSBVU1JQLXVzZXJzIHdyb3Rl
Og0KPiBIZWxsbyBVU1JQIGV4cGVydHMhDQo+DQo+IEkgYW4gcnVubmluZyBhIFZDTyBpbiBHbnUg
cmFkaW8gY29tcGFuaW9uIChjaXJjYSA4MGtoeikNCj4gSG93IGNhbiBJIHB1bHNlIHRoZSBvdXRw
dXQgc2lnbmFsIG9mIHRoZSBWQ08/DQo+IEnigJlkIGxpa2UgdG8gYmUgYWJsZSB0byB0dXJuIGl0
IG9uIGFuZCBvZmYgdmVyeSByYXBpZGx54oCmLi4NCj4NCj4gVGhhbmtzIGZvciBhbnkgdGlwcyEN
Cj4NCj4gQW50aG9ueQ0KPg0KPg0KTXVsdGlwbHkgd2l0aCBhbm90aGVyIHNpZ25hbCB0aGF0J3Mg
bW9zdGx5IDBzLCB3aXRoIGp1c3QgYSBkYXNoIG9mIDFzID8/DQoNClJlYWxseSwgdGhpcyBiZWxv
bmdzIG9uIHRoZSBkaXNjdXNzLWdudXJhZGlvIG1haWxpbmcgbGlzdCwgdG8gd2hpY2ggSSANCmhh
dmUgY3Jvc3MtcG9zdGVkLg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
