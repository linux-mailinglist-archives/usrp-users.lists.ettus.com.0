Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5DA3B84D6
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 16:13:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8865238445C
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 10:13:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RtaRzWMK";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 828F13843BB
	for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 10:12:59 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id h3so1527851qto.4
        for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 07:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=ICfhvOvFqMWnWllWSXL06lQo8kluyUdUdzCUgK9JA/g=;
        b=RtaRzWMKThfCwsQO0blvmK0Z1h7sfnAMcrpndSaTeyOEDmGiWwCqDazt0a0GS3oiLy
         DgVRwqHGjQOqsXTLSgyXxhV8AOMRJEotmtJR9CGN6v/CqEbx1p1p4p4JxG6lLuA/lCx/
         VjX7IWsP/wwEQoz8dm5X3mYbWGRaBQcMjZL4X9TcxngdEtk3uqOHk6TFzlnLfzvflQBP
         QbRMc3qOnGYpr9jWKRLG1u5voFzV6ZgYd5GB7CoHt/LibSFYtIDLq6BLN3ej2fMWXoPa
         9MJk2ohza7kNKXqJAGPFdBPVeqP4TjJf//nbJvxnEQi1j+jfIYlPDMViAOSHztR9Kbef
         ualQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=ICfhvOvFqMWnWllWSXL06lQo8kluyUdUdzCUgK9JA/g=;
        b=nPj9nq/1JYB5kVjew/5tjsBPludpRpoQa8lbWTjKMgIVPvTtoX4vD7lRsAy3oAuoEq
         3UyQVDf1olQGhNRZV2DEVd6R1xsLUDQfBR2DJtKxa5qhkv7Q4BmO9RKo+a7onWLzp4sD
         /7qlv8z0SjHl4+/7+Q+Yp9PEfztsveL/wNBhp3uR6q0sgm3FR+Y+2SYpvx2UAvkKBGgk
         THpm54bDgl1S5z9U1HufALqUaaanVgEDPTXIUbIFS5+JZJ1m4sbj35H5IHKwakNwToKO
         9QWSQvK8IkcA2ytj4ag1ZgQNRD4eGCPHzqqMXy4Whwba1fsN6XkSRU8umMvPqFOEZ1Ti
         +NPw==
X-Gm-Message-State: AOAM532/yxnOwbEM1OoBUpfLRkgj7I30VMvR1eLEaMNrTUfO4wm3WQQw
	17QdKuKuq0tYWvid862zsPXNRQ0hwSzZUA==
X-Google-Smtp-Source: ABdhPJwDBul1eJF0LACuQRaCgXBiiHY34yTDtSH0oMXbgjQj6ifB/YSVglTRlRbvWlYZRLZE4agXLA==
X-Received: by 2002:a05:622a:187:: with SMTP id s7mr32233777qtw.301.1625062378752;
        Wed, 30 Jun 2021 07:12:58 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h12sm13122646qkj.52.2021.06.30.07.12.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 07:12:58 -0700 (PDT)
Message-ID: <60DC7BE9.6040909@gmail.com>
Date: Wed, 30 Jun 2021 10:12:57 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <lPC5Te4Hu2UjAJ9VpvWBFdwibxvDAtKhPKGtvJJQA@lists.ettus.com>
In-Reply-To: <lPC5Te4Hu2UjAJ9VpvWBFdwibxvDAtKhPKGtvJJQA@lists.ettus.com>
Message-ID-Hash: HZ46WNPDPNT7H3GM35WFZ3WPQ33MWCTO
X-Message-ID-Hash: HZ46WNPDPNT7H3GM35WFZ3WPQ33MWCTO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZ46WNPDPNT7H3GM35WFZ3WPQ33MWCTO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 06/29/2021 11:09 AM, rblack@swri.org wrote:
>
> X310.
>
> Doesn=92t a time command only set the transmit /streaming time for a=20
> single time event (as opposed to an infinite series)?
>
> If so, then how would you stuff a *very* fast series of commands in to=20
> the command queue?
>
>
The command queue is only 16 items deep or so.  So software pacing with=20
timed commands would be "tricky".

 From what you've said so far, I might use a timed command to start=20
initial streaming of a continuous stream that consists of
   your radar waveform modulated by a 1/0 50% duty-cycle square wave,=20
and use offset tuning to move the inevitable LO leakage
   to outside your operational pass-band.

That gives you a precise start-time, and sample-timing guarantees that=20
you're transmitting/not-transmitting at your exact uniform
   intervals.  But not knowing that much about your application not sure=20
that would work.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
