Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7DB5FD9C3
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 15:01:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A755380D86
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 09:01:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665666091; bh=PPZan4fqy/n8NFBLvsrVRqs2a4TSKYsBVoROAJpYBOc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fdfRO82MU7AChQG1e3ucqIoZ1S2SYefRg+LmwAY5EYgUPkMzAyBIOe91WTZtRavKL
	 UMRtFbi7c0O0BxoC9UdHUQfV0gw7+OYUfM5ZhF/EGGjl5UI2Bqn993rmVB5wUIsh8g
	 uBwmccjSIH0KiEBa0TUGRCwyJAi8YHQ48C63CM36ZAy3MoMPkPk/sJt1wZFWGzuuv2
	 sliQVT4BlApQ5T3z4PbDol6Vdr/Qt17sydPl9sERrcrnW8ZIM6V8yisQIjF6eN9B/L
	 qrwP5I2h6gKm8zBQvTFeKWXqH2Qwo1V1vHUCyvJ7dz3KSSPZxPj+fjyoj2KrfcESTW
	 UmxdyKM9XwbVA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id DA04D3808F7
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 09:00:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LrehBs44";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id t25so1009772qkm.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 06:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yKjnBWs8K6NbMD72epBmvXam/mqmf4MgqNDn38bUUVA=;
        b=LrehBs44DYJGE4G6kLPzzQ3IWLkIxMqYs6s/Ud5z3kJnhYCDNImqx6QXDolfsGsJ1/
         zmNlW684zvFYkYh9Q+5T1UuHsmwRu/2bRbR0vQa+R2m1450M0LsGEs9bbRV1l9HqZVUI
         6xngWvAVr24AkaNGizlgQdf8PKHHqLqF8IhZn/vAwzJ6i3wnHxoEkkkPuKXwUf3BJqCw
         FgY3Ug94LwncevoIlPtpTHq/54Mn7xqoDGLWbLANpnKvwDXpwCX7q6bFYoyTcWePdLaz
         GzI/II2E4dQlasroTmHVYzyPllPSa/UBNjrQEaaZWbHDJA8zynH7DEioMouvqFnXOi6M
         9+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yKjnBWs8K6NbMD72epBmvXam/mqmf4MgqNDn38bUUVA=;
        b=CD/eNQQoBwg9lSEQTJ2NXCoQwLHKDS3Bs3VYPnXWoQriXwuWTDvshP1qk4aZPOu2BR
         kjaNNvYiGn41LZEcrJa2ShR8Iy5fVXFN9QDe1jgUVGNe29nydRmmsM0zjU+n/Yd3XVFO
         UuDPtV0JSOWI1NVuNzr73Skgd6fwghcPv47SrUZSt05pmsKygQAHBiPuTivTS4Ic9OwI
         CN2YRMU9W1iHjZsON9P5OawPfWW/YSQSbHEp6X2RRWiwu0GChU62YIsgz1Hy91JcD2W8
         s68YyxSUKxcO6B67vZ5ur59QNwOcaSFc7ealj7Lw199XqBJQ9b3T0Li3VVr9Lhu8f7KU
         PVaA==
X-Gm-Message-State: ACrzQf3TZ0W8Yu7Edi66bHl5hSyW82EHjr6RJCQyyvznMbljKoUluzYF
	AKgSyLFvgUAcJQ8UyMz7bAJDtff/OmM=
X-Google-Smtp-Source: AMsMyM61hyUxjBZPRWMT+XY1taH8Dqvtydlf3/joaxpy9Ig5/BMPSWQUzWENDfr2lA8Bc9uBmr75ug==
X-Received: by 2002:a37:658b:0:b0:6ee:7998:d694 with SMTP id z133-20020a37658b000000b006ee7998d694mr10109565qkb.777.1665666032341;
        Thu, 13 Oct 2022 06:00:32 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id c7-20020ac85a87000000b00304fe5247bfsm15592685qtc.36.2022.10.13.06.00.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:00:31 -0700 (PDT)
Message-ID: <948601e2-432e-53ff-08cc-a43a7486efdf@gmail.com>
Date: Thu, 13 Oct 2022 09:00:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Qhg3X7cDOIazDEN3xdtQDNRYf5Q06u9Dv8ECofHc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Qhg3X7cDOIazDEN3xdtQDNRYf5Q06u9Dv8ECofHc@lists.ettus.com>
Message-ID-Hash: WZQ36NMVTL2AFIZS5ZB2VGONYABVGSQD
X-Message-ID-Hash: WZQ36NMVTL2AFIZS5ZB2VGONYABVGSQD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGE_LOADER load another .bit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZQ36NMVTL2AFIZS5ZB2VGONYABVGSQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0xMC0xMyAwODozNSwgYWRyaTk2cm9sbEBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhp
IGV2ZXJ5IG9uZSwNCj4NCj4gSSBkb27CtHQga25vdyBob3cgdG8gZGVzY3JpYmUgbXkgcHJvYmxl
bSBwcm9wZXJseS4gSSBoYXZlIGEgcHJveWVjdCANCj4gdGhhdCBoYXZlIGEgYWNjZXNzIHRvIHRo
ZSBleHRlcm5hbCBtZW1vcnkgUkFNIHdpdGggYSBjb250cm9sbGVyLiBJIA0KPiBoYXZlIGJlZW4g
ZmFjaW5nIHByb2JsZW1zIHRvIHN5dGhldGl6ZSBidXQgYXQgdGhlIGVuZCBpIGdvdCBpdC4gDQo+
IEhvd2V2ZXIsIHdoZW4gaSBjaGVja2VkIHdpdGggdWhkX3VzcnBfcHJvdmUgaSByZWFsaXplZCB0
aGF0IGl0IHdhcyBubyANCj4gbXkgcHJvamVjdC4gTXkg4oCcYmxvY2vigJ0gZGlkbsK0dCBhcHBl
YXIuDQo+DQo+DQpXaGF0IGhhcmR3YXJlPw0KDQpXaGF0IHVoZF9pbWFnZV9sb2FkZXIgY29tbWFu
ZCBkaWQgeW91IHVzZT8gRGlkIHlvdSByZXN0YXJ0IHRoZSBkZXZpY2UgDQphZnRlciBsb2FkaW5n
IHRoZSBpbWFnZT8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
