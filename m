Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A0756CAA2
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 18:29:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE92238385D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 12:29:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657384159; bh=YqmPOO9NCGOSEN04QsG5+7P4Jn08f6YLKRe+4UdbrMo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=A5+/ofHQiTBWrNyeB6LDUoCar3mfel8CrJk+xGHeJSImxBxq1etXsB+hhiPGOVP2n
	 Yx7hOq/UgiIPhehNYHQ1JerotygwSiFHubJ3Bxrs1c43Mu5l3TG9hGrsXE6yPctYau
	 bhprQgf+LadZjCNfOoBK4Fv71Gut6kuDykGRAY1ka08yByXqU5pMOiHQXWuCa5m0DK
	 nTlyJOkvWQ/YYqbY8AUp1WbikaTdh7wUS5qNMLGA01drJwOhY5StOwbyhfGCx5xXVs
	 3mU4eLnrJmg9VdQaINb62ObQ6EMYfMwxgrmKxtblbzxrS5Mi6cT7yu+USE7c1aLKFB
	 5RINwcQD4ewFw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E32C3383E58
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 12:27:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SnyhJ6pH";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id r2so2127840qta.0
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 09:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=tVmyElhaNQwSMCzr6cNEf6rJlGYMwN5nvAp5ma48Oi4=;
        b=SnyhJ6pHWvj17Z6BMvTmQAgmfc6KUHWmg+vRGfFGcjjKirmszw3bbYPUyX//zlq9Rx
         w10+2J6pkYHqYYnltt3M1sNEDUdl3gbYcQ513Y0LFvIzn1ukXxa7wNft6/GGEH61BO+S
         7wj+sppytti2kCVuDbHy9fgrvRgbgn7i4T2MV5LHMfxGzLt/kEc1Uc58pVxEazVdLOdz
         6VtS8Sx01YbHedP9fksRKHRbLh54GYebqEVLwfgo5nbcmsE+IMd1gf+VNV0Fi2y7Y9k8
         sRrqA+UVR9EnSvr5AjaJojNHd9+GZpWoSJHMYRsrHg8PiY1TNjlh8Lv9cCuwEfiCo7xI
         i6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=tVmyElhaNQwSMCzr6cNEf6rJlGYMwN5nvAp5ma48Oi4=;
        b=qMqGoqb6Wis/XBMuElczIl4EcmTnuNexAkXNL3rxK3xmy/Gt4EZWmYqB6MZuiVKTPl
         S0Luhvfkh0M2ZoOMqVFv8Qo7kmt7xwhGcRAkDjFqTPf4+2T7Z3Q7A3WatUfqG2UQkrGd
         QASWBXOkhOyb8RB38yeXO5Oq7NFU36Np/YJ3tExwdvxCcdBt4ounbxI5AsW1IFnvIeGc
         5k6YSgtHX2VzXl8vJORfv9KdsKLEO6xIoaEt4cFQzUS7h8qJor/PZ/yyB/Y/FbYv2+Q4
         mVQP2nnYUhD0NgZ+cPWW7whQ1MfpsAWmfKXH8QEzwnRzLLYB2gRr2kl09Xv7Cx1EgnIw
         UMbA==
X-Gm-Message-State: AJIora8rXDN7//k6XXwX5DpiOezxUDUQKzNtYTBW1y8lzK+1twAFLUZP
	iFMjkU+IUDacxt1dsivv6miBhPqvcg0=
X-Google-Smtp-Source: AGRyM1sg25o2VuZsmj2lakUswYUOj2gkI1Yr5RMzVrPBHR7+pAtYxBb9UYXILm4TIe7gfH1FSc7IYQ==
X-Received: by 2002:a05:6214:caf:b0:470:a512:8473 with SMTP id s15-20020a0562140caf00b00470a5128473mr7363299qvs.75.1657384024408;
        Sat, 09 Jul 2022 09:27:04 -0700 (PDT)
Received: from [192.168.2.222] ([76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id f66-20020a379c45000000b006b14fb1ba18sm1628495qke.35.2022.07.09.09.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 09:27:04 -0700 (PDT)
Message-ID: <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
Date: Sat, 9 Jul 2022 12:26:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: sp <stackprogramer@gmail.com>, Nikos Balkanas <nbalkanas@gmail.com>
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
 <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
Message-ID-Hash: CYKWEQCPX5TFESFCSFDGQ63SU4MBZSRO
X-Message-ID-Hash: CYKWEQCPX5TFESFCSFDGQ63SU4MBZSRO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CYKWEQCPX5TFESFCSFDGQ63SU4MBZSRO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5930038927227546385=="

This is a multi-part message in MIME format.
--===============5930038927227546385==
Content-Type: multipart/alternative;
 boundary="------------FBQcWm6IWA8P0ykW86nSjnjC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FBQcWm6IWA8P0ykW86nSjnjC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-09 12:01, sp wrote:
>
>     I assume this already does ceil or floor, so your data needs to be
>     already in the right scale:)
>
> But all of my problems are related to scaling...
> =C2=A0want to use the converted class in USRP that can solve my=20
> scaling=C2=A0problem and I am sure that my data is converted correctly.=
.
> So I want to use only the converter class not=C2=A0the=C2=A0c function =
on volk=20
> functions...
>
If the file was recorded from a HackRF using GNu Radio, then it is=20
already scaled appropriately.

If not, then figure out what the largest sample amplitude is and=20
re-scale your file as appropriate.

If you have a real-time, floating-point, sample-stream where the range=20
of the data-set is unknown in advance, then you have a serious problem
 =C2=A0 that cannot be solved with converters.

The reality is that the various SDR device drivers out there,=20
particularly in the context of Gnu Radio, will convert sample-sterams=20
into complex-floats
 =C2=A0 in the appropriate {-1.0,+1.0} range appropriately.

Any converter you write for UHD will *necessarily* need to take a=20
scaling parameter, and you have no way of knowing that in advance for a=20
real-time
 =C2=A0 sample stream from "weird" hardware.=C2=A0=C2=A0=C2=A0 For a pre-=
recorded file, you=20
have to evaluate the *entire* file anyway to determine what the scaling=20
factor should
 =C2=A0 be, and you might as well, having evaluated the entire file, also=
 do=20
the conversion on the file at the same time.=C2=A0 Again, this isn't SDR =
or=20
DSP or GnuRadio,
 =C2=A0 or UHD specifically, it's just a data-scaling exercise that you m=
ight=20
find yourself in whenever dealing with *ANY* numerically-based discipline=
.

Since it's a file, the conversion doesn't have to go in real-time, and=20
you could even use a simple Python program to re-scale it.


>
> On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-07-09 11:02, Nikos Balkanas wrote:
>     > Correction> These functions work on integers.
>     >
>     > So they go as:
>     > int16 data =3D htobe16(le32toh(int32 data))
>     > Or the associate functions,
>     > htonl, htons
>     >
>     > So you need to already have converted your floats to ints...
>     > If in doubt, test them first on a single data...
>     > Sorry about the confusion.
>     >
>     > Nikos
>     >
>     >
>     My question would be--why?
>
>     UHD and Gnu Radio already do these conversions for you.
>
>     The *single* case where being able to send sample data as big-endia=
n
>     SC16 without any intervening conversions is from a file. Anything
>     that
>     involves computation-with-samples
>     =C2=A0=C2=A0 on the host requires, necessarily, that those samples =
be in a
>     format
>     understood by the CPU on the host.
>
>     Further, if there are bottlenecks, I would want to absolutely confi=
rm
>     that the major bottleneck in the UHD driver is in doing conversion =
to
>     big-endian wire format before
>     =C2=A0=C2=A0 venturing down the road of making that available "dire=
ctly".=C2=A0=C2=A0=C2=A0=C2=A0 I
>     have lost track of this thread, but my recollection is that this fi=
le
>     originates in a capture from a HackRF
>     =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SPS.=C2=A0=C2=
=A0 That's a rate
>     that
>     is *easily* handled by the existing UHD "stack" without resorting t=
o
>     this type of optimization, IMHO.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------FBQcWm6IWA8P0ykW86nSjnjC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-09 12:01, sp wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
I
          assume this already does ceil or floor, so your data needs to
          be<br>
          already in the right scale:)<br>
        </blockquote>
        <div>But all of my problems are related to scaling...</div>
        <div>=C2=A0want to use the converted class in USRP that can solve=
 my
          scaling=C2=A0problem and I am sure that my data is converted
          correctly..</div>
        <div>So I want to use only the converter class not=C2=A0the=C2=A0=
c
          function on volk functions...</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    If the file was recorded from a HackRF using GNu Radio, then it is
    already scaled appropriately.<br>
    <br>
    If not, then figure out what the largest sample amplitude is and
    re-scale your file as appropriate.<br>
    <br>
    If you have a real-time, floating-point, sample-stream where the
    range of the data-set is unknown in advance, then you have a serious
    problem<br>
    =C2=A0 that cannot be solved with converters.<br>
    <br>
    The reality is that the various SDR device drivers out there,
    particularly in the context of Gnu Radio, will convert
    sample-sterams into complex-floats<br>
    =C2=A0 in the appropriate {-1.0,+1.0} range appropriately.<br>
    <br>
    Any converter you write for UHD will *necessarily* need to take a
    scaling parameter, and you have no way of knowing that in advance
    for a real-time<br>
    =C2=A0 sample stream from "weird" hardware.=C2=A0=C2=A0=C2=A0 For a p=
re-recorded file,
    you have to evaluate the *entire* file anyway to determine what the
    scaling factor should<br>
    =C2=A0 be, and you might as well, having evaluated the entire file, a=
lso
    do the conversion on the file at the same time.=C2=A0 Again, this isn=
't
    SDR or DSP or GnuRadio,<br>
    =C2=A0 or UHD specifically, it's just a data-scaling exercise that yo=
u
    might find yourself in whenever dealing with *ANY* numerically-based
    discipline.<br>
    <br>
    Since it's a file, the conversion doesn't have to go in real-time,
    and you could even use a simple Python program to re-scale it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 at 8:01=
 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-07-09 11:02, Nikos Balkanas wrote:<br>
          &gt; Correction&gt; These functions work on integers.<br>
          &gt;<br>
          &gt; So they go as:<br>
          &gt; int16 data =3D htobe16(le32toh(int32 data))<br>
          &gt; Or the associate functions,<br>
          &gt; htonl, htons<br>
          &gt;<br>
          &gt; So you need to already have converted your floats to
          ints...<br>
          &gt; If in doubt, test them first on a single data...<br>
          &gt; Sorry about the confusion.<br>
          &gt;<br>
          &gt; Nikos<br>
          &gt;<br>
          &gt;<br>
          My question would be--why?<br>
          <br>
          UHD and Gnu Radio already do these conversions for you.<br>
          <br>
          The *single* case where being able to send sample data as
          big-endian <br>
          SC16 without any intervening conversions is from a file.=C2=A0=C2=
=A0
          Anything that <br>
          involves computation-with-samples<br>
          =C2=A0=C2=A0 on the host requires, necessarily, that those samp=
les be in
          a format <br>
          understood by the CPU on the host.<br>
          <br>
          Further, if there are bottlenecks, I would want to absolutely
          confirm <br>
          that the major bottleneck in the UHD driver is in doing
          conversion to <br>
          big-endian wire format before<br>
          =C2=A0=C2=A0 venturing down the road of making that available
          "directly".=C2=A0=C2=A0=C2=A0=C2=A0 I <br>
          have lost track of this thread, but my recollection is that
          this file <br>
          originates in a capture from a HackRF<br>
          =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SPS.=C2=A0=
=C2=A0 That's a
          rate that <br>
          is *easily* handled by the existing UHD "stack" without
          resorting to <br>
          this type of optimization, IMHO.<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------FBQcWm6IWA8P0ykW86nSjnjC--

--===============5930038927227546385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5930038927227546385==--
