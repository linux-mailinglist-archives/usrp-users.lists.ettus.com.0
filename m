Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4EC993C47
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2024 03:30:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E789638594D
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 21:30:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728351053; bh=YHVcRPQgU3G9jz5/zOA31E4n+8rjZBHfHdKUkn3VPrI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mG9xT32XNnYNdf/Iw0HNvFFQwadTOnGAP6ZsI1NKo6st9ap/KKYgs5pc9AnbeYGbd
	 Xk1BYla8jA7F2WmY2t2TA0sFhXrqQt9b8KnC8O08k66upcY2mjOi/LEo23qdicdnKE
	 d2XwyYv+5e/gFK4ENoZz/YDv/rh82Ng7JPUvMnDTRGdVxSCYzRsHXBzVExwmuI335t
	 qRLP7Jse61mF+txQeCdLTmnM4EjThUyrTIKsqc6Gz17ldqz+14vTVxRAtwPOwrqjSp
	 WygeaAvspCf7ne6MzXW36WNofb4p7gaFt+cXvK9M99AcJ4CnTHkWS61gLZtIz73I6N
	 k0bNC8wpfH0jA==
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B79CE385952
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 21:30:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dZPyakZD";
	dkim-atps=neutral
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20b5fb2e89dso39275895ad.1
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 18:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728351024; x=1728955824; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S57FLDJ38YA8A98wKWvTwuW6FuFA43mvq900ck/x6ck=;
        b=dZPyakZDERRunHy9BV9qe8hZ+8JkU3v0d4EHwWchE1PcwFq77zHfxHDBqx8MIDEF1e
         qsaG0lKRmE4i8H1wDqQy+EBGLn6nVf930K0EHNYipNgQv0U+ntSg2STR5x1nrVOH/cNR
         nRy9FYr/QGtX69KHwuIB7ILxR9R7uGKOMQ49q3GzAAx9cZgEf7RAaXYJywe7nXfBQRUi
         W0JppwKYDIjvLjZNDohUvWJVKPRc+2prKxVaEkuvHGMj3WKK9+POZR4+Y4WlIhEGiNHR
         QckG4UOyhs5FvJIO2Jd6MkN/tOM8pYrzSOoPRwahyKLYKEH8nhd2AXdhszTUKdUBqXbX
         2FAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728351024; x=1728955824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S57FLDJ38YA8A98wKWvTwuW6FuFA43mvq900ck/x6ck=;
        b=is4pRU4YDqTTidWUPFJ+JBrkz6v/wfe0ijyWss2k6tIG/crazdtO6SsopCpIJ+CCqa
         W28wAUvMZULuRwyjxLoVa7pByyf5uswVOdkAUisoGRzfhhKLlHPJ8JzR6NvPBkuPzc8y
         RoffYJWN4QkyYRD0PfYJxP4EM5K7M6jEoSYJHGmgQtoYpVbhlR776vCJ1lBNBVK64g7M
         jq+PaDL5/dXwsNp5ID8vXq4zJv2cHeZ2Ag7i5Pj6NmYrNm55exP8Bj82f0pQXuXbd3QX
         D4cn54KDf8YZVFL2SS0iuz01NKgIo3SaE3GqdlghSU3eMVHxYwnemfi773hLAvKlEHbs
         +Rpw==
X-Gm-Message-State: AOJu0YyLM0aDaXk6E9TY5a1JnogZUf9WdpVbwJ9DMiAjM5mOV2nFo2jJ
	iz40u6qxTR8pn60e7xJKgUxxaJqM1D4I9HvePivjlDjrdmdx9gn8qbva37GAPMND5Q3O1lMWFvJ
	up9M=
X-Google-Smtp-Source: AGHT+IHdyChQCBdvSxTVgOmxMrQHlICHx7gl/aKq4Fu87XqxN+MXjMtXWaIywfGGcEgPUFIlzfjPuQ==
X-Received: by 2002:a17:902:e5c5:b0:20c:593d:3387 with SMTP id d9443c01a7336-20c593d3825mr504635ad.58.1728351024186;
        Mon, 07 Oct 2024 18:30:24 -0700 (PDT)
Received: from [192.168.192.123] ([12.40.220.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c1395a1easm45626705ad.183.2024.10.07.18.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 18:30:23 -0700 (PDT)
Message-ID: <08a77f69-14d6-4958-8905-7c54ad5d183f@ettus.com>
Date: Mon, 7 Oct 2024 18:30:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com, yguruprasad@umass.edu
References: <CAD8oTTN+Hws020Z_=fA35P_yrCauiaWYjiNyUijnZ4NJLVEfZA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAD8oTTN+Hws020Z_=fA35P_yrCauiaWYjiNyUijnZ4NJLVEfZA@mail.gmail.com>
Message-ID-Hash: MTZL2HWA5BQVM7FJ3FHZO2IPEMWP2336
X-Message-ID-Hash: MTZL2HWA5BQVM7FJ3FHZO2IPEMWP2336
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with keep one in n block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTZL2HWA5BQVM7FJ3FHZO2IPEMWP2336/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi!

You'll have to describe that issue, what exactly you've done, which 
versions you're using and what you've tried yourself if you want us to 
be able to be of any assistance!

Best,
Marcus

On 2024-02-28 12:12 PM, Yashaswini Guruprasad wrote:
> Hello,
>
> I had an issue on how to work with keep one in n block and the replay 
> block , And test the respective functionality.
>
> Thanks
> Yashaswini
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
