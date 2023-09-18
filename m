Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9807A4AA5
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:37:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1306D385BDD
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:37:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695044236; bh=4trTBhDJjfOPoXtmXJALP+i0x2z5a8KkFegEGkayawA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gwvUC7Kst3Sy9rXbkIAj45QqW6Fp0gq9z9MAHHcpXVPygWF0eJw97+XZGjqP8u7te
	 paGZWDz7JIJ8MELnxZjvHnA4WiqQ2asYhd39eXwyUN5JbfUehLJOhM1k+yE4Hu42Ny
	 Tpm3bfNwG8RCvUO5csQUPplwIBQAer5VkCyOb+RUPVhUbPGrouLsLJw3ijvX41TjJL
	 AaoZiPoZ05L8Km2Bl3xiYloLSVqvU2GRHcnJDQyabk8jfy9xg8p7wArU6dMmLotRoV
	 DDlFCOEz9WCJ2u+2NNWqA4UTjtLexruR/vQr6qWPeMqmI7au9npNdyjbH0uirxLI0Q
	 M8VcInyThAVdw==
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1730E385B64
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:36:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MiWt+qNH";
	dkim-atps=neutral
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-57128297bd7so2966403eaf.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695044181; x=1695648981; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=62gq5DeUArIRNjh5m6aVe8HNOdGRsQyIc1undteJU+A=;
        b=MiWt+qNHuqlKaFWP9zoqsqVSBWy/cGUjRpW/hGrcVGwlnlOWe4JyxQQeVVgELGb9G7
         yXVUSzasnP4h7Yk3lOAfkik1voAozHGaZf76HHw3tzot26oveCGHeKGSwt5afOezwMcG
         rhMTjzBBbaXoDO5RowC4HZ3D1QO8Boxi6L4adZGrc415jqfj35V+4T/BCQ8JryrR/kfE
         Q+hllqeP0PpcOci5eIBNslPQW/gp7JGVUbvdTY+EZ0oZ354EYQ+MIsoFANArPu2BjUWc
         M2MhMuTdEJ+f3+16PzlR51qZZqdLPWy8ESe1vGP+z8P7fUItY9F6tWd3LzOb5pWHFNVo
         OqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695044181; x=1695648981;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=62gq5DeUArIRNjh5m6aVe8HNOdGRsQyIc1undteJU+A=;
        b=XXdr96vVL3I8gyQMYAAjf0bgd5PwV8yPER3qAjQJg08ExveBb9gdUxorBHp8B+YIIV
         PT1kH+Nqrd9hn/ghrJZ+RTzGs7uQ6aaUUJrrvcq11a3fZp+/eiVT0KKWd4mEWHi8am+E
         F9q9BcpoOeYt3Fx07PtlLl5rOCqhCwGTOSTyO4DdahVKc99XWMZozHo4mg0CbuwtKdjE
         O6MzBOKWSp87zjTCNDm5NqdpH5dA6ihB0ThyZZSntlgW7bkQ1QVtALDiR6e/IgZ1cKAn
         mcZLCchPB6dfVI3GsXuO0zMZjFGkHpn3nTjkvpnHMX5+JPDu93QSEh+eKU69/DDOiyzP
         rLMQ==
X-Gm-Message-State: AOJu0YwNTHKspLw95vs8emSs4UBMcYOegkpq7uNvD3vMDckvTruv+kCl
	G11sglO3fBpFR71x0Hx+c5fuWzxu4j2yMg==
X-Google-Smtp-Source: AGHT+IHJooNiV2yNqX47Ko9D/6Y/YPSwqBo/mGNe6Fw1WCHI9q/mBV6SIotYSCluVGgs15msc0cH1w==
X-Received: by 2002:a05:6358:9910:b0:142:efb8:5295 with SMTP id w16-20020a056358991000b00142efb85295mr11371032rwa.19.1695044181096;
        Mon, 18 Sep 2023 06:36:21 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h4-20020a0cf204000000b0064f66ae4be3sm1588588qvk.88.2023.09.18.06.36.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 06:36:20 -0700 (PDT)
Message-ID: <91a613a4-1cf0-6f8e-ec88-dffa72b93906@gmail.com>
Date: Mon, 18 Sep 2023 09:36:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <25BD013C-32EC-44DD-9AF5-46AF392E999B.ref@yahoo.com>
 <25BD013C-32EC-44DD-9AF5-46AF392E999B@yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <25BD013C-32EC-44DD-9AF5-46AF392E999B@yahoo.com>
Message-ID-Hash: NWJEBS7XR3FKXIRTFKK3QKQZCCNGXZRU
X-Message-ID-Hash: NWJEBS7XR3FKXIRTFKK3QKQZCCNGXZRU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unsubscribe me now!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NWJEBS7XR3FKXIRTFKK3QKQZCCNGXZRU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAwOTozNCwgSm9obm55IFNhbXVlbHMgdmlhIFVTUlAtdXNlcnMgd3JvdGU6
DQo+IEnigJl2ZSB0cmllZCB0aGUgbm9ybWFsIHdheSB0byB1bnN1YnNjcmliZS4gQWxsIHRvIG5v
IGF2YWlsLiBIZWxwIG1lISEhDQo+DQo+IFNlbnQgZnJvbSBteSBpUGhvbmUNCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KSnVzdCBz
ZW5kIGFuIGUtbWFpbCB0bzoNCg0KdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg0K
VGhhdCBzaG91bGQgZG8gaXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
