Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F181187E94A
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 13:27:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96CFB380097
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 08:27:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710764854; bh=BAvqlFYVsZ+VRVV2UPDCtXAND+vN2I14T/xYseaRB90=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=p/Jtu9V34nk9hF1ygsAweEW/ZrtsFpZhF3/1WOVbFpmZErcYiTbv/0aT+YSHDfUbf
	 E3CzT2D1uCKrNPLNxYge98oQQXpPkB42FBP+8fKTKkMmKTqz+qxBuWZkGrNGFnUdPm
	 tEOiUBNl9NosnzeCH/LL5ONdLfqnIBO9GUjBdrlmNtdjdKrhY4kVXjMIsl3QprJhje
	 5Nsqq0f6XbHzCYlZvailbJRC8zDXrjzhebtjkbTyNv4SpcvWbJCkFm0e+MlDScOzYl
	 xfuEZqMxQS/0OHnichOU+o2ZUHwD59YOUBfc3/5N50aD/RHZ6Hb0PhFbpz9Eh5V6dT
	 +dpezuzeAgfJg==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 03CA23849F5
	for <usrp-users@lists.ettus.com>; Mon, 18 Mar 2024 08:27:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="QltHEv1u";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a46a7208eedso241433666b.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Mar 2024 05:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1710764819; x=1711369619; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U4arcjjuGFS7jBXNWmx/VvG8MWcqd/7tc/Fc42tjFEk=;
        b=QltHEv1uxoEgedGC0sD8xqhYKcDH3p3cQJN+0ZIHKpt9EUfcspQPmFeNyVxPE6Bnj3
         qBTsk8pKoJM1rgS4nkN6FOQ/f3cqQHXRjLDfFry5vI5HPfB69clZuBMRKOSDypNCh2J1
         lWJike1TZiXYE6eqRw4fgUntmiJtJ7Y5pLptLrSbtAaDo5xfCKzEiNQ0AuT4/cPCLq9S
         PIj9FHngvZIWvYB5FS+2h9iJYE6p7PaokMKYN1kx+XK1XcJf2oQ1N40VDQueQufsiqpW
         4eAWRgw+AauZj3itJQEgar36/bBwY1JHcTvopJ1jQMwzVJYn1HcA/nDWHpxKi+qcoDIl
         MDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710764819; x=1711369619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U4arcjjuGFS7jBXNWmx/VvG8MWcqd/7tc/Fc42tjFEk=;
        b=vU2fsTplarfSSvpuL9je2vxIcGYE1IDSnifAcH7XnEyoMvJZlrm/H2usIml2En2gZZ
         YSGAUq/QBQbRMM42vnvYKwUgYrclK6SiqCmRiA9TOYuOsGVtQ+l9WNiGNOUsyFE8UjH4
         K/qOmvztXm+kZj6KUjChxFCfbzuPjBQtXfI9Mcpo/hGI5LiwNtYvmAukWOk5m0ynBg/v
         mIfvFELcUGWTRrAgIe1spzkVyJMz6uyxCG5yiBe+ENN7uCQWblxf8Qy0PvQ37jFaMSwE
         DO98J7+OYoQ+z/Mlx5fUjPA6lWovzznPfG65pUhw3H7GecqpAgpx35i/EWEA6jbn537R
         Gkpw==
X-Gm-Message-State: AOJu0Yx9wp48x4Ujdmfl30OqEv1//A4rdxCQoEJMBWCxBDCLegi7Qh0Z
	Gv4MLvPb0D3S+nWCXTj498ndwtO93huitpUUw75R567SAsggGi4e5VLuKeNH3O81fV7uF8PupO+
	EKek=
X-Google-Smtp-Source: AGHT+IE65tvUzZ1UeporMv0nOqBPbiwV0YyDW6+qEJCJP8TOFA882D8rA7kZQpuqimsAHbv+sIf2JA==
X-Received: by 2002:a17:907:724f:b0:a46:70d1:dda6 with SMTP id ds15-20020a170907724f00b00a4670d1dda6mr8829781ejc.28.1710764819474;
        Mon, 18 Mar 2024 05:26:59 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc6b:bb00:10fc:1619:bea3:90d1? ([2001:16b8:cc6b:bb00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id h21-20020a17090619d500b00a46447348e8sm4801516ejd.191.2024.03.18.05.26.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 05:26:58 -0700 (PDT)
Message-ID: <7e17b80b-ca5c-44dc-baba-14101cb115d4@ettus.com>
Date: Mon, 18 Mar 2024 13:26:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA@lists.ettus.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA@lists.ettus.com>
Message-ID-Hash: OZ5WY3VF4LEHWZRJHJ73S6Z5FHQ7OOVW
X-Message-ID-Hash: OZ5WY3VF4LEHWZRJHJ73S6Z5FHQ7OOVW
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 GPS bias-tee Current Limit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OZ5WY3VF4LEHWZRJHJ73S6Z5FHQ7OOVW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi John,

the B2x0 motherboard just connects the GPSDO's antenna pin to the SMA connector on the 
back of the board, directly [1, p1 J101].

So, the part you need to inspect for current capabilities here is the GPSDO. I don't have 
the exact numbers at hand right now, but assume up to at most 40 mA.

Essentially, the GPSDO for these devices is a modification of the LC_XO fom Lackson Labs 
Technologies; its hardware properties would apply [2, p. 3]; I can't however not guarantee 
that it reaches the full 40 mA; I don't know whether that's a guaranteed property for how 
things play out as used in the USRP.

What are you trying to power with this? This bias voltage is really only intended to drive 
an LNA, and owing to the sensitivity of the GPS receiver, such an LNA would not need much 
current.

Best regards,
Marcus

[1] https://files.ettus.com/schematics/b200/b210.pdf
[2] https://www.jackson-labs.com/assets/uploads/main/LC_XO_Manual.pdf

On 18.03.24 08:24, johnhigginsgis@gmail.com wrote:
>
> What is the maximum current that the B210 provide to the GPS antenna?
>
> Is the biasing current provided by the GPSDO or via some onboard bias tee on the B210 PCB?
>
> Best regards,
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
