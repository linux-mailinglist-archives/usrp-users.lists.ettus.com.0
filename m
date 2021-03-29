Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1117E34D147
	for <lists+usrp-users@lfdr.de>; Mon, 29 Mar 2021 15:37:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB0A4383533
	for <lists+usrp-users@lfdr.de>; Mon, 29 Mar 2021 09:37:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="FxMjlyXe";
	dkim-atps=neutral
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1AEBD38331C
	for <usrp-users@lists.ettus.com>; Mon, 29 Mar 2021 09:37:18 -0400 (EDT)
Received: by mail-wm1-f41.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso6700803wmi.0
        for <usrp-users@lists.ettus.com>; Mon, 29 Mar 2021 06:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=5TL5HFw4n/jyEYkuW7vM8iSc7Rx4Q876It0yYyMNTHc=;
        b=FxMjlyXe2+duPLu/l8gd+tYFCuTj8ibeiY+SYAisfhbN+T40IpCgnBXcLCbmE1DaZU
         bBnHW+S+ISKtRyLpSbjgF90NlE6lvT+fO/eGp/MVpQ260RiLPDgulJmD6NoE+NgieN+Z
         tc9IPMxJqlu71y2Wzg9CqUH11ZB0wohR31zPN/d6b8yKg0Dspgm2hENpHT2SH4LSCbts
         j4xQeAKgyZjYg4+NvmQQb6tdmkvewfktJ9qObA14xiWqnxff44N6VPRhAmRyrVzC7BDE
         PqBd+wsjZhgKQkXI1K1VIShZ2NhL5L4/y9CQgLmNa4YQSa/155T5KrqmDHCxiLEVU7lq
         iT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=5TL5HFw4n/jyEYkuW7vM8iSc7Rx4Q876It0yYyMNTHc=;
        b=b1iMkxx3yU3aRpRUhjQJ4tNjFd9TYv+nAX7mppfmvpvueQkoWHScrGiz1OCzelXZK2
         y7K4wLB09ezAxKlr6u3HJD6J0/ivXv5HIp+uZsZ1CEkyUdc24K3e4V8AlWNGirMhukmA
         dzqY1L4x0U0kN4R14anzfeDPgMr3iApopNcNXt1VxJ+tdiZSawG4uwacip55KqlSvhOB
         SBHjTlZYxrOYNNwdvmGonjHm9QIXXwL73qbvf41T788JRRU+csuM9QfyPIq28b5hxVPt
         TgzqybXiuHy5Rd3enY7WTwR0bzC3DINIGAGdEZukDeRFemzmBotTA5As0pshFEmfKOg6
         Stvw==
X-Gm-Message-State: AOAM532XefMnHmsiCYywGpug5o8OSH2avAzJqJRh1wr8m+xfSVS5aD3p
	s6uTZs8LrlmS6/L525vnSRS0B7akTywDE3tK
X-Google-Smtp-Source: ABdhPJzHTWojuITU5OJK+WebYE8lOjr1M3Zq05jTj14deI4ai/fDKGE/EyUftWEXoedICfs484ZdKQ==
X-Received: by 2002:a7b:cd15:: with SMTP id f21mr24392846wmj.43.1617025037840;
        Mon, 29 Mar 2021 06:37:17 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
        by smtp.gmail.com with ESMTPSA id o11sm29295681wrq.74.2021.03.29.06.37.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 06:37:17 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <0ed017e6310e4cb2b9237d0116a9e32a@external.thalesgroup.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <07c7e5e1-6e10-6fe9-5a40-2d14118d1b78@ettus.com>
Date: Mon, 29 Mar 2021 15:37:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <0ed017e6310e4cb2b9237d0116a9e32a@external.thalesgroup.com>
Content-Language: en-US
Message-ID-Hash: SESIUFAEYL4WX7VB3PQEBJUITRMGK44Q
X-Message-ID-Hash: SESIUFAEYL4WX7VB3PQEBJUITRMGK44Q
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read register in C++
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SESIUFAEYL4WX7VB3PQEBJUITRMGK44Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi!

It's probably easiest if you just clone the UHD source code, go into host/l=
ib/ and grep
for peek32 in there =96 that's the realest-world example of peeking around =
in device
registers you'll find :)

Best regards,

Marcus

On 29.03.21 15:15, COURANT Frederique - Contractor via USRP-users wrote:
>
> Hello Users,
>
> =A0
>
> I would like to know if someone could give some examples on how can I rea=
d a register in
> C++ please ?
>
> I know that I need to use peek32 but I don=92t find any examples.
>
> =A0
>
> I=92m using UHD 3.14.
>
> =A0
>
> Thanks for your help.
>
> =A0
>
> Fred
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
