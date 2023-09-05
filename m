Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60647792E97
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 21:14:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31792384A63
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 15:14:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693941248; bh=cWg8LaXtHL0jYT8lPxucjFs675zJxNnSJ3cTUbG/zDU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0r1bIPYEghWU0AhrgVBUZ1qi7nNPnJbdi5HNOXuvgjzQuI7xByrt5hXQIqV7Oi9am
	 g6a3CI9d1qeZ5zUGcxO8MLCza2SeWbAPvMsr0n7CoxxgjhUbWndzWjvQ+QySeiMMFb
	 UNcMH4XMqKv3cHvH1yW+VLH/nE35z/Q3hJj66pggUXbV3gw4Hm7NAJB7XWyljl+AY8
	 RrOcPsSVtuCmh2JB3XVQzntl9+sgwyoeynfDUjK0y+BTJgElCnpyayJhHFfShmbq3o
	 BngR5AQ6zK/se92VhOW1bg8g+SxDDJ6rFdjMdHMnL2/Q8/6UXxbHOLxmYNdXSMj2Qj
	 9AxnJA2XK+kLg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C8B4384562
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 15:13:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HZl4Zu0V";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-76dbe263c68so10574285a.0
        for <usrp-users@lists.ettus.com>; Tue, 05 Sep 2023 12:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693941184; x=1694545984; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4jJkEH8UT1zTmzdPj/QxG7TQ2Yy81mEAr7AHu0g55OI=;
        b=HZl4Zu0VfSDSTZKoYEo2vcpawIzg1cg57/MHu22vE2sr4le31D93TsTrgDctflmq4H
         oVDvXAhwQiL16xUJ1GbDv3s8Ow36we3nauZAcmY6vIi3HoZd8LoeaWBPcRNWEfupmz9S
         zrP0HeyZVjyklf247ywzFz/Kft28JiCaH9xPQABJAz6p1oncuMts0XHBmPMyGW5H1jnw
         PTGGmIgh9fI8kf+8pyLVcfI2B58oQEd6Zozo71qRk8ifMIuf1WkLkItWQR/fCo35d6iA
         lGIs5sKQTSBbKJUo2VEZ6OuODqR0IqVsvBmnA3WQ/1bWNyAzHSMpw25CU4cOl8M7EAz1
         +V+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693941184; x=1694545984;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jJkEH8UT1zTmzdPj/QxG7TQ2Yy81mEAr7AHu0g55OI=;
        b=aC7r3G6ibPbflRpG50UeNAimC0IoyZ7LK7FsZTkAuZ1mvJjK5NNtKr6cv6KyHfvjvx
         WKP9GfpLJ63pkJvyY09Kk6WqD+iKyYq5FL2EMlaP/hfetFhsyCa3sqr3KPHNdDO6jR4y
         QVp1HHZ6OZ1I6OqClk4gj51iI7Ena52jkKSAwgw+Gdv8tCRm2DBzaSq2/jrqbr7epiuj
         S48kjOvhAP6Pgk4nWhwlR/f3lhM5Sh10VLPhZvZQrWU5lqzyGV58nI70EzmLsXCaMwpf
         bvP1wfDQ97gJWc8I4a9uLahpn/sfmlCsuos58KCes+r1TmLHh3KgJ5G9+5vVbhgQV8es
         2EMg==
X-Gm-Message-State: AOJu0YxeWsnzYtgnek8Z1K2H0e578XoaR0vTyvnNqPQpjN4GsjequSpF
	0DY+8QG3VsJ0wtoR10+t7eWaHNkEb3FeuQ==
X-Google-Smtp-Source: AGHT+IFgNkbgCg/i4keQJtl9EQGLEQ14+LMUnfw/YOqdSgRG8pLcMpW+7NQHtLwXT9GJzjv/kuYPpA==
X-Received: by 2002:a05:620a:460b:b0:76c:cd15:a8b5 with SMTP id br11-20020a05620a460b00b0076ccd15a8b5mr18812372qkb.21.1693941184346;
        Tue, 05 Sep 2023 12:13:04 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id j2-20020a37c242000000b0076f039d87c6sm4298551qkm.82.2023.09.05.12.13.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 12:13:04 -0700 (PDT)
Message-ID: <fd60d5d1-78de-4480-1f21-d662c1256e15@gmail.com>
Date: Tue, 5 Sep 2023 15:12:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI@lists.ettus.com>
Message-ID-Hash: 3ETN5AIWNAACHMCZJ5DRJXANBUVP3PFF
X-Message-ID-Hash: 3ETN5AIWNAACHMCZJ5DRJXANBUVP3PFF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ETN5AIWNAACHMCZJ5DRJXANBUVP3PFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/09/2023 13:12, blakebaldwin@uvic.ca wrote:
>
> I am trying to get the GPIO pins to toggle when transmitting for both 
> channels on the b210 however I am having difficulties as channel B is 
> not toggling the ATR which controls the pin out. I have gone through 
> the commands which select the different sources and banks to control 
> the GPIOs but usually just get a "not implemented for this 
> motherboard" error.
>
> If anyone has experienced this problem before and has any insights to 
> how to solve it that would be greatly apricated.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This little seminar may help?

https://events.gnuradio.org/event/18/contributions/234/attachments/74/186/GPIOs%20on%20USRPs.pdf

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
