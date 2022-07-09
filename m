Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C80556CAEB
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 19:24:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75098383C42
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 13:24:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657387471; bh=B2qItHN7h9e446aH4DZcqGYA23hvNXV/UtOg/B0XT2Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LrDNpiQ7QA4gJn7tVCTD/M5KQ9tvAiwFW2FSIT7B1Nyh694q+oILky6FwJrJF+4kS
	 FDZpNz0CUxMp1GAK6qJkqjImJUWj0pOyJ2FylkgT/zNLtJ3jFvGILyqyyOVuHlXF5o
	 3A3KBAHoegrlvLrJowvzp8DUOuJgVN/hRXQy1P2AkL9vfJfv17cm/B9a2GxT5S0rQ/
	 jFcGT0Z+7VKg5mm7uVzTpRJKNf6XvEHYmFfc9X0qFUNOrhEN6AVoj9e6H9GMbEdoA4
	 kZDXtLzxYH0S44CGIz0hxdA5+8EC5R8fQ4s4BIIRKXtKJCk97sK2PTfNo56AEkcjZl
	 l01E9/1ei9Ycw==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id A4738383D4E
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 13:22:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cGEJqALS";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id mf4so1305430ejc.3
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 10:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hAGYB8Ok8uQ+ykQrWm6kxVQRgWgMIbbrzT4jMNieZPo=;
        b=cGEJqALS/3uc88y9NWva9gwCgaVVFl/F8jCrTMk/GxiYcIZ+pFUcvCXDYoNYfjUCTK
         wN4RuIColv/XSksn6PRAdq+ghLY8lsDC36wqhmwKE36xLXyaApfHMffS7usXhYunirUw
         9FnLcuhmVbumqG8Tqv1NLI1AAXQJ4Kfd0Ibwc1XUXvxmuzi8wRHRzjbeNCVSyqhKScw8
         7Zit9uJP1/RMirUzWMuFiVHUuW//OYRLlPtg9owVVY9YF4wPK/bpDMK6dhEf4FLF4BZG
         Nitk3RYl99fkUELOG6Kmou+aUDxjEw6yCpCsAMJKo5J9G+j1z9ALtC5lc91gAA5m3l4r
         USMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hAGYB8Ok8uQ+ykQrWm6kxVQRgWgMIbbrzT4jMNieZPo=;
        b=cLqxI5aXUsCclEXtH52D4D1Fvxe2VUFLeyW+7FUM0imLgRAKBvW3KQ0ssgVvkRHGtm
         1b15CMh5wrBwN53Weo08RddfTjYP/HEI4HHpNZ5SjVs5moE9r3IdoGIjtwUdD/F0fxqo
         k49uGH6WMqBDqw66q2oWYiksqetazfwO/NLdzC37ZGr3mwo3WihvBEHCOZPCo1z0f29i
         21JbynFaLEJmCACmu5Pqd9ZXW1gkODPipqLL7+dqQn9dVQpi77uvpua3E8uWsLzuhYC+
         nCUS+iBUtBVTpYm2OhNIIT7DsDrGFv92o6OXqIXGIqGI47IZJM2Ba70mPpqKqKl9xcLq
         Pvyg==
X-Gm-Message-State: AJIora/OYpSbVRA2sjngVOB9G+JD8aZAfY7F+TCQED90UeeGIecqfORZ
	Ozm6y190eOVo5NRo9b7wpTYBQrPEO00x+0Lpp30=
X-Google-Smtp-Source: AGRyM1tWHYe4u4SrUoaDJsL8tTPPZjovVbo38OcjYjPj155Y2OzYXmEeUY6renNjSezvie1yTtSZA1NoMIr2GoDZxFA=
X-Received: by 2002:a17:907:2bf4:b0:72b:3336:ca9e with SMTP id
 gv52-20020a1709072bf400b0072b3336ca9emr5108013ejc.341.1657387335600; Sat, 09
 Jul 2022 10:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com> <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
In-Reply-To: <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 9 Jul 2022 20:22:04 +0300
Message-ID: <CAAxXO2HSPkfcAoXnLXUvarLGoAzgPUfr9SWaNP3Vp38gFmPmww@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VNDOOZQRHOVOHYUZWCJPVUYRCJICL45V
X-Message-ID-Hash: VNDOOZQRHOVOHYUZWCJPVUYRCJICL45V
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNDOOZQRHOVOHYUZWCJPVUYRCJICL45V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi sp,

Where did you figure out that gnuradio is little endian?
I searched their source code. In a few places like pmt_serialize.h
they use big endian.
In wavfile.cc they use different code for big or little endian.
decided on   gr configuration...GR_IS_BIG_ENDIAN
In other places they note that they may be wrong...crc32_bb_impl.cc
They always pass endianness when repacking bits

To check if you have a problem, run the cfile output from gnuradio
through a spectrum analyzer.
If you get an "inverted" spectrum you have a problem. Else you are fine:)
I am not using gnuradio, only uhd with an X-300. I am working big
endian all the way and gr-fosphor looks fine:)
If gnuradio gets input data from a usrp, is it still little endian?
They have code for swapping endianess, endian_swap_impl.cc,
but haven't seen it used anywhere in their sources:(

HTH
Nikos

On Sat, Jul 9, 2022 at 7:27 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>
> On 2022-07-09 12:01, sp wrote:
>>
>> I assume this already does ceil or floor, so your data needs to be
>> already in the right scale:)
>
> But all of my problems are related to scaling...
>  want to use the converted class in USRP that can solve my scaling problem and I am sure that my data is converted correctly..
> So I want to use only the converter class not the c function on volk functions...
>
> If the file was recorded from a HackRF using GNu Radio, then it is already scaled appropriately.
>
> If not, then figure out what the largest sample amplitude is and re-scale your file as appropriate.
>
> If you have a real-time, floating-point, sample-stream where the range of the data-set is unknown in advance, then you have a serious problem
>   that cannot be solved with converters.
>
> The reality is that the various SDR device drivers out there, particularly in the context of Gnu Radio, will convert sample-sterams into complex-floats
>   in the appropriate {-1.0,+1.0} range appropriately.
>
> Any converter you write for UHD will *necessarily* need to take a scaling parameter, and you have no way of knowing that in advance for a real-time
>   sample stream from "weird" hardware.    For a pre-recorded file, you have to evaluate the *entire* file anyway to determine what the scaling factor should
>   be, and you might as well, having evaluated the entire file, also do the conversion on the file at the same time.  Again, this isn't SDR or DSP or GnuRadio,
>   or UHD specifically, it's just a data-scaling exercise that you might find yourself in whenever dealing with *ANY* numerically-based discipline.
>
> Since it's a file, the conversion doesn't have to go in real-time, and you could even use a simple Python program to re-scale it.
>
>
>
> On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>>
>> On 2022-07-09 11:02, Nikos Balkanas wrote:
>> > Correction> These functions work on integers.
>> >
>> > So they go as:
>> > int16 data = htobe16(le32toh(int32 data))
>> > Or the associate functions,
>> > htonl, htons
>> >
>> > So you need to already have converted your floats to ints...
>> > If in doubt, test them first on a single data...
>> > Sorry about the confusion.
>> >
>> > Nikos
>> >
>> >
>> My question would be--why?
>>
>> UHD and Gnu Radio already do these conversions for you.
>>
>> The *single* case where being able to send sample data as big-endian
>> SC16 without any intervening conversions is from a file.   Anything that
>> involves computation-with-samples
>>    on the host requires, necessarily, that those samples be in a format
>> understood by the CPU on the host.
>>
>> Further, if there are bottlenecks, I would want to absolutely confirm
>> that the major bottleneck in the UHD driver is in doing conversion to
>> big-endian wire format before
>>    venturing down the road of making that available "directly".     I
>> have lost track of this thread, but my recollection is that this file
>> originates in a capture from a HackRF
>>    whose absolute-maximum sample-rate is 20e6SPS.   That's a rate that
>> is *easily* handled by the existing UHD "stack" without resorting to
>> this type of optimization, IMHO.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
