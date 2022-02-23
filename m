Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71464C1C8C
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 20:49:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C380D3850FB
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 14:49:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fkP+qi9z";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id ECCBB384215
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 14:48:11 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id g24so5357039qkl.3
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 11:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=QtpZwBJsj+kP5sjgZ1zzkmbBr1qaJSgBJS/PkeZlbyc=;
        b=fkP+qi9zVuYT4nOuRmjD7qlzXPt8tyWDQj8GtYRHoycWe1Ay7b8BaWuwRxdeNwRADO
         B2nOq95fXVW2fG4cKamsHa7J9os3gWAW7rWpePycZmYD+BpUrz/41/M+iPwmWfZDEWaT
         LhN2OE1XLja081156OULFQWcxc/BGNHMfBCDYnynaOMVbuBNeJY/4KJy4Tb8IY1UDHBp
         avytlZxnNctv8kfpAhGLWUkIdAECiOHcs3N9jPM9KVwBqniYYJq6JDOplBxNxPsd8zdl
         nEom2QiehzkMB6eDGF6hUJyiM5KBHPULljUtt+EdnlUcIcG1UH2v6Pbrd4WtwCsY6KbT
         2vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=QtpZwBJsj+kP5sjgZ1zzkmbBr1qaJSgBJS/PkeZlbyc=;
        b=2ZqdbTKzA4TBOwe95NtRoUAcnTPhGEc7/oJqFdF+7iTbP0RUnnpSMgF1/HbbjTKpwm
         M2h0MLshj5o8UKAGnzWruebcl3J4KE0DQ4dc1i+gCrCEgWwyTSztaDIhg6EIZxV2dXjO
         u2nooR8GcDrZo5UHKzPgtHMZNSWIqsiZ2LIy2/XoaQHtdAN4ZW9T4AiAGwFqhqzaNfRd
         pxPrURKIyf4X1PwMQfZ10CaUrB7GIGCurwh0geicmbV3r8T27X1uU2rN/ahyZmfuR+ph
         0DqIL6mbYDFvIEreKU1tNyKgDrHsIT+KNbmXiaRroYxSOb0sGAYay4O6CPntLjyG+3Es
         B1OA==
X-Gm-Message-State: AOAM531M3BhWzp0PRYblUvkvE/cGTqOuBykYeioKVXY7N4LK00IgCC1w
	BGneoYTZq8A8akRwSBuBVv6MSw8RLdVxUA==
X-Google-Smtp-Source: ABdhPJxPmGyCMc1kHuAxCr6OGfqhoXs/MGjIqORhoSqNYHchsx5vJtw1zq1ml/652GSX39dysQFLCw==
X-Received: by 2002:a37:50c:0:b0:5d0:fcdc:6f02 with SMTP id 12-20020a37050c000000b005d0fcdc6f02mr893641qkf.236.1645645690978;
        Wed, 23 Feb 2022 11:48:10 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j4sm322753qtp.65.2022.02.23.11.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 11:48:10 -0800 (PST)
Message-ID: <d70713c5-a3a5-203a-0832-fc574283e038@gmail.com>
Date: Wed, 23 Feb 2022 14:48:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
 <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
 <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
Message-ID-Hash: PWCNEYK6OCWTJVQTLYNAUIXHMRJJKWJH
X-Message-ID-Hash: PWCNEYK6OCWTJVQTLYNAUIXHMRJJKWJH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PWCNEYK6OCWTJVQTLYNAUIXHMRJJKWJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5426674488309499967=="

This is a multi-part message in MIME format.
--===============5426674488309499967==
Content-Type: multipart/alternative;
 boundary="------------w0eUL4m2j12wQr031us72DKE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w0eUL4m2j12wQr031us72DKE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-23 14:04, Brian Padalino wrote:
>
> While this may be true in general, the test case is said to be (USRP=20
> Source -> Null Sink).=C2=A0 This is the most trivial case and should=20
> basically be the exact same as what benchmark_rate is running, and yet=20
> GNU Radio has overflow whereas benchmark_rate does not.=C2=A0 When I wa=
s=20
> testing this, another interesting thing happened where once an=20
> overflow occurred in GNU Radio, it never recovered and it was O all=20
> the time and with a very low/strange sample rate coming in - as if=20
> something was stalled in the pipeline on the radio and repeatedly=20
> thrashing some state.=C2=A0 That is, until I ran benchmark_rate.=C2=A0 =
Once=20
> benchmark_rate was able to run properly, GNU Radio was able to run=20
> fine until the next O. This is with GNU Radio maint-3.10 and whatever=20
> is built in with gr-uhd linked against UHD 4.10.5 I believe.
The GNURadio test-case and benchmark_rate are only "the exact same" from=20
a high-level functional standpoint--the details are quiet different.=C2=A0=
=C2=A0=20
For one, there's
 =C2=A0 extra function-call overhead with gr-uhd, since it "wraps" UHD. T=
hat=20
*should* be trivial, depending on how things like the _recv() call=20
specifies transfer sizes, etc.

But in addition, Gnu Radio turns *every block* into its own thread, and=20
it has an exotic ring-buffer manager between blocks.=C2=A0 So, the=20
implementation details are quite
 =C2=A0 different, and I am not surprised to find that there are "emergen=
t=20
behaviors" at very high sample rates.
>
> In my opinion, something fishy is happening in GNU Radio with the X310=20
> that is not exhibited when using benchmark_rate.
Yes, I would agree that the "stuck in overrun mode" is disquieting.=C2=A0=
=C2=A0 It=20
isn't at all surprising to find that two functionally-similar test=20
programs have different
 =C2=A0 overrun behavior, however.

Does the "stuck" behavior change with older UHDs?=C2=A0 I haven't seen th=
is=20
myself with UHD 3.15, but I don't have any way of testing sample rates=20
above 25Msps myself,
 =C2=A0 nor host machines that could really tolerate that.


>
> Brian

--------------w0eUL4m2j12wQr031us72DKE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-23 14:04, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div>While this may be true in general, the test case is said
            to be (USRP Source -&gt; Null Sink).=C2=A0 This is the most
            trivial case and should basically be the exact same as what
            benchmark_rate is running, and yet GNU Radio has overflow
            whereas benchmark_rate does not.=C2=A0 When I was testing thi=
s,
            another interesting thing happened where once an overflow
            occurred in GNU Radio, it never recovered and it was O all
            the time and with a very low/strange sample rate coming in -
            as if something was stalled in the pipeline on the radio and
            repeatedly thrashing some state.=C2=A0 That is, until I ran
            benchmark_rate.=C2=A0 Once benchmark_rate was able to run
            properly, GNU Radio was able to run fine until the next O.=C2=
=A0
            This is with GNU Radio maint-3.10 and whatever is built in
            with gr-uhd linked against UHD 4.10.5 I believe.</div>
        </div>
      </div>
    </blockquote>
    The GNURadio test-case and benchmark_rate are only "the exact same"
    from a high-level functional standpoint--the details are quiet
    different.=C2=A0=C2=A0 For one, there's<br>
    =C2=A0 extra function-call overhead with gr-uhd, since it "wraps" UHD=
.=C2=A0=C2=A0
    That *should* be trivial, depending on how things like the _recv()
    call specifies transfer sizes, etc.<br>
    <br>
    But in addition, Gnu Radio turns *every block* into its own thread,
    and it has an exotic ring-buffer manager between blocks.=C2=A0 So, th=
e
    implementation details are quite<br>
    =C2=A0 different, and I am not surprised to find that there are "emer=
gent
    behaviors" at very high sample rates.=C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>In my opinion, something fishy is happening in GNU Radio
            with the X310 that is not exhibited when using
            benchmark_rate.</div>
        </div>
      </div>
    </blockquote>
    Yes, I would agree that the "stuck in overrun mode" is
    disquieting.=C2=A0=C2=A0 It isn't at all surprising to find that two
    functionally-similar test programs have different<br>
    =C2=A0 overrun behavior, however.<br>
    <br>
    Does the "stuck" behavior change with older UHDs?=C2=A0 I haven't see=
n
    this myself with UHD 3.15, but I don't have any way of testing
    sample rates above 25Msps myself,<br>
    =C2=A0 nor host machines that could really tolerate that.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------w0eUL4m2j12wQr031us72DKE--

--===============5426674488309499967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5426674488309499967==--
