Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6C175FB43
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 17:54:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 635F1384AE1
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 11:54:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690214093; bh=96fqHLAzhUeA7Gv7ab93QvbCwJsRZMpjXmvSR2PVf1s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zCM6UDQFztOA1yzH/LoAYSy5YxRjpOvi374u8iQNwpRHSyGlCCBEPabxM2rzfy8e0
	 D7NL9lOejwBkWzUaGoeZoyn61rp11a+6LTj/YcqH1AOZyMf9by+8H7nO0G8P1lmjgr
	 zO2i2ii8Ou8O/fAQDFeCFr+aRFlyuM+BJehnkPY1BCqASgEnVjMpygv5ihbALWUZNA
	 fEKJWE7qrlwQKziXf8IlExR8CLJCWR3poGkWSwWT4EUXzbn0C9clOmUkZIPgfQKvob
	 CV7x4WZl94t84B3InmJZR411WJUOKu6cqIr1cZEGkNuNCDnAFXafsg60t8wnF0cUF7
	 xWtXPqcYO3xuA==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id C4A3B384A19
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 11:54:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hLctsspP";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4053cc10debso27006161cf.2
        for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 08:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690214076; x=1690818876;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XmBYLmLazHAWyNR/ZV6GOB4sSWqI4b6I7uAy3VaLETw=;
        b=hLctsspP+X4pmCmZ0uamQGH1t49Ym7DyycIsRpp4/oYbMcwFrj/5ZtGFnKQpr9frCu
         93LcHWQgcl9XVntptNETY8vq6p6hDrHH9d+z4bDbhRIOGTuCfRhw5MDSI9KgIWGiNYLy
         oOlQt4e8aBhfMdxWBjwiN5VJDsr8FD2UzICXdb32pAP9SeaAkjsBPh9A6v2fp64SjjST
         Jf6o3dmwlw+jkE9uVFEUO7xZXOkFgmF8SJUHuF46hAJcOk+zuryPM6A+j/75pXVekpP9
         BAkmHDC04mMRE3ydGky6r0xwdeuwy6n2uZLIAKbRIWcDXu71vHTOqjBgxTqqfLc+yxu3
         uBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690214076; x=1690818876;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XmBYLmLazHAWyNR/ZV6GOB4sSWqI4b6I7uAy3VaLETw=;
        b=H8jOY0/xIOggy0J7x2PguBnsCv1nXNitefxNmChcW/QLaMQkbxEgm70X4eKQR9aq48
         A8iIb4FImPY7ZLILWMVWil32mB5q7QtdOpK0t9wHXh/rCuhVn49LbhKZ7VsoiVM2BBZN
         qfvxjeUlVaWZPbvgtcc55becMpLfG2+LwqYHvAsX5c3boAZxsfEfdQDM9jo/JnYouQ6J
         9K5e4EjbST5BIywDbr5hpPC5TWmR9ubi7/7qMQccNoEF8+VCpgPciu2HBLc/XXYDKjnq
         5LwHf/WwZWryiLEqTTbapcln5OuVcR/tvYtQxp0Up/LLg69P8j6LtpMZK6EPtCPY/Yo/
         h1iQ==
X-Gm-Message-State: ABy/qLZxbmYfZibAG7TiM/RlrBX/+j8QjbJoIiQ9lgjpd6hGAkOzo25j
	fiUek87lUtil6qrS56+q015RuPkVaAo=
X-Google-Smtp-Source: APBJJlEaROMIMS13LalBC6OFoW425agZiQ5AOdtRwbLve8c5Hp8/igJHzPAKm5IpNyM6JZ72GZn9jQ==
X-Received: by 2002:ad4:4d12:0:b0:63d:580:9c64 with SMTP id l18-20020ad44d12000000b0063d05809c64mr150842qvl.46.1690214076028;
        Mon, 24 Jul 2023 08:54:36 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x2-20020ae9f802000000b00765a9f53af0sm3070014qkh.128.2023.07.24.08.54.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 08:54:35 -0700 (PDT)
Message-ID: <5ef92dff-226f-a4f1-2695-4ab583dad0ce@gmail.com>
Date: Mon, 24 Jul 2023 11:54:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ@lists.ettus.com>
Message-ID-Hash: AJ2SBMRTQZNLNIOCSE7K7A2RVWXSGYXK
X-Message-ID-Hash: AJ2SBMRTQZNLNIOCSE7K7A2RVWXSGYXK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJ2SBMRTQZNLNIOCSE7K7A2RVWXSGYXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDcvMjAyMyAwOTo1MywgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIE1hcmN1cywNCj4NCj4gVGhlIHZhbHVlIHJldHVybmVkIGlzIDI0MjY2NjYNCj4NCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KT0ssIHNvIHRoYXQncyBub3doZXJlLW5lYXIgZW5vdWdoIHRvIGNhcnJ5IG1pbnV0ZXMg
d29ydGggb2Ygc2FtcGxlcyA6KQ0KDQpJIGtub3cgdGhhdCBVSEQgdXNlcyBCb29zdCBBU0lPIHVu
ZGVyIHRoZSBjb3ZlcnMsIGFuZCB0aGlzIGltcGxpZXMgdGhhdCANCml0IG1haW50YWlucyBhICJn
YXRoZXJlciB0aHJlYWQiIGluZGVwZW5kZW50IG9mDQogwqAgdGhlIGFwcGxpY2F0aW9uLsKgIEkg
anVzdCBoYXZlIG5vIGlkZWEgaG93IG11Y2ggYnVmZmVyaW5nIHRoYXQgDQp1bmRlcmx5aW5nIEFT
SU8gaXMgY29uZmlndXJlZCBmb3IuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
