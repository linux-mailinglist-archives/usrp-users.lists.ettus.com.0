Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A098628EA
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 03:56:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77B78384FB3
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 21:56:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708829805; bh=88cbEBzIk1Lmy3eo/7l6TqrWFpAwbj6T/gP+J/6mg+M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aUaPnLRMAax8MGRpBjtboo6ZnDgldMcZW+NlsYSJbD2SNebPgJO93PKwOH6tQbTqf
	 wUwhbTX9H9SURFbEc778FTuuWi576SPps+aXaRj6DuXnT3NWltYDgjhVLhy+jOpxk/
	 0brFtRbfYDVpFTngzwPodMha/g3fhfje7RXD0AryAoQfrhTsvbLBifGz40TanBdCdD
	 NDmVfrPA+Jq60FhMhuKo0kVhpSQn9LztxmAQOwPQIgLeJIo2XyrSa1AikNaIu0g/4g
	 hfFDjCegSgvWZ8pV/7ckESDZ8mrprWyax10k5nJbIJ6hPeZGXcyVXoVb3haDHzzjtm
	 fUAkeMTJUlk3Q==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 996B6384E2B
	for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 21:55:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e1ezY2xq";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-787bc70dfc7so90350785a.2
        for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 18:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708829754; x=1709434554; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Sdwr5mL7ZWIy2+90vUUOXVt6KA8VqfNEo5fTtTzb84=;
        b=e1ezY2xqNg3MIdIOWK9Mxgh77DTuAMeKw34mDlqhc7PwgcYDOj350qHfguolaQAuVE
         y+M1Gc+LOp5jvlrBPLRQSzc3PWGx3q27HcBRYPBZbt5Fo25E1ahCbnxoXmuoGfD5wgB3
         7RZDHSnGFbsoUUeGJBKwJIaFoTXN2uz+TZe3wgNh68QI9CiS1cP6j0dTMIW1uU5Z+nwf
         ISv24XGBrLkece0YFn9YtyYHXvWYU+ghOGSMLfRfp0x2dXEwm19lm8LUNb+tjp4Y8sEx
         GPfFnimSBFJoYNCTVv4aoMz+ChP+6W1WktpGA+tNFzZ9Q0P+CKLzDNfTMUGWmxorIYcT
         1R2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708829754; x=1709434554;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Sdwr5mL7ZWIy2+90vUUOXVt6KA8VqfNEo5fTtTzb84=;
        b=ssBlADCgrs0Udk//Ivo8qXjs10bDXWjbtmDPCh9fD+VVtkrvejE6TDsHTYN3VhnewD
         wP5nZF7UO9c3EqMOt5V1yn8sO+28pdTDv7a2uNcEGgw1OuvHpdiKFVJVt8wvXD02IRkR
         jqSXTQfzqHfwkz+H9NdCgSTYRqJP3+Ltsd4oTvTGYtO2ML+1bh2sn8K1c/4Ia2ZxmKJq
         +VUlUnjDINp+dljvEJd5tzg+SHxPfK362JjA00oZwbh52kk+FA0Wpeb99fiLU95/Nbpd
         uDiw7nwRWGuxaVBhyD1IWn+zIkDKvlUtbFGT2yY2rlLznmz+JWkZqr8A7E0TbHB9Kn12
         jDwA==
X-Gm-Message-State: AOJu0YzKnPyMXDNTJVnsTUQ0Oor47MvbjLuq9zMSSFR6Yv7+852e2BFo
	tr9horoc5AG1OrpC2AMJYfgo9w2f9rNtJZWaxnRtcUsGHokKk408lFNyLpGPc1c=
X-Google-Smtp-Source: AGHT+IE84fZe4waB5ovO46f5OYZo67Eb7NRGOTUGA9Ctju96xj6H3u1EXY9eMYKkfeQakPTNxBj2wQ==
X-Received: by 2002:ac8:51d0:0:b0:42e:74a0:64cd with SMTP id d16-20020ac851d0000000b0042e74a064cdmr2538699qtn.60.1708829754519;
        Sat, 24 Feb 2024 18:55:54 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id n14-20020a05622a040e00b0042c524de19asm1122007qtx.58.2024.02.24.18.55.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Feb 2024 18:55:54 -0800 (PST)
Message-ID: <5bd1af36-b192-4719-a1a6-e30fee6438b6@gmail.com>
Date: Sat, 24 Feb 2024 21:55:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
Message-ID-Hash: 4JZEIPYY5ISN3SUXJYXOIZFAAVATMBQO
X-Message-ID-Hash: 4JZEIPYY5ISN3SUXJYXOIZFAAVATMBQO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cable for GPIO connector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JZEIPYY5ISN3SUXJYXOIZFAAVATMBQO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 24/02/2024 21:11, Ethan C wrote:
> Hello all,
> I am looking for the part number for the GPIO connector (J12) on an 
> E310. So that I may buy a cable to connect to it. I can't find any 
> information online nor on the physical connector itself on the E310 I 
> have.
>
> Thanks,
> Ethan VA7MNK
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Pinout is here:

https://files.ettus.com/manual_archive/v3.15.0.0/html/page_gpio_api.html

I believe the connector on the board is:

https://www.digikey.ca/en/products/detail/hirose-electric-co-ltd/DF20F-10DP-1V-56/951498

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
