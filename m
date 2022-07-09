Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA24556CABA
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 18:47:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87C3538405D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 12:47:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657385274; bh=nEQuWvx9OLE4FllRYpNSvfCMkTFwLkeypf/KOUQK7H4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zvSxDJLHmBln1z9J8KRUNWyA2Lc9QvTEgqVWyJoDBoUiOFA85f/1pTFpujnqHq+9T
	 eb1sgIPIomYf7v03GuZXWxEPaqkXMdmWt6DsfoIp3zg5/TuQAy3bMJs283q1Zon4tL
	 JG/UTscOiHMZZ/zYJMTzMoRf0h4et1FHm5ihUysSz2zoZqf7rPE7Kuweyo0To518P7
	 nyowbIm68+aK2gWM7eTuaLWIbUvWXUQTXj0FlUO2DouwMu/8Sp1STFQ/CCdMRYQxuV
	 +YSuxLfRuOoOub/5IRwgvGtWPZAYMVZgToxniExudVdq1xQdRH9DpfDywkloGC2+nm
	 YnUB8bs+V69UQ==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id EC672383E84
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 12:45:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jTxXlH1S";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id i21so847221qtw.12
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 09:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=aJZcyJKb6R89SN/jpg0mvxPZlHDSckmn5HVpbAnM+vg=;
        b=jTxXlH1SjEQTZDal92Ihj2wYKi1TgwaLgyGJjWE2c+AbrE1xinL/hF2jDaSmHpyg+j
         CdDicE7PtqZ5hFwkTCrspvC9RPoqsaMfZ5FzZJ0sogG1VkjS+DxNq2lVBLovEEwLjDgy
         QUebUL4gU1oZ5D8t7TJmv3dHJPmtsiuXGbv6QUXIuN8ZD+nM+Z+eF+SRQQioz8hxh1Y5
         tA+If6CmXVs34ySQOSx4vkgxgslzLzh85fK6jmBjA1AdrobBiznX5LBszE73klR73OrX
         NcYqHT8pvzV9l55MrblAruSt5MfBSuwMBhsmlGwLga1ch1ieTBNd5/Nce6jmAoEi0uEo
         mfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=aJZcyJKb6R89SN/jpg0mvxPZlHDSckmn5HVpbAnM+vg=;
        b=WDYoyzoBhnZsYDvwDmmh6ZnurQ+9PhBFwdsRYyaHnmxfHmEV+JlS2nsVzzzC3uFKQ/
         z12glZdgie7mCByxD2hxhPAYXubOC6HT5lWdJ7ej35UX2BrSBZiHBej5PvkhGHKghzEw
         WpWBg+/aKCnPueUAOsF1jOl+IY0ptGBoShbqyH63+6IFAKziu2dE0Qll5IsZ0uzEnrul
         vF4B69IGPO/ZPncPQQ9R19+PpTmlNWTjQEl5aMqXVGU6vQGUw6pD3YwERukLqf8RbU7a
         74OfOrj1YfbbxIwmV4h8YhAeIXc6USzlsgdy1o+obnpkbxtOeTd6DdNLIfLxrZt9lgf/
         vvuA==
X-Gm-Message-State: AJIora+5n9c3Kd9UEvisQwgCj7DH+4is305xKWHvAQWCk/jzLx7LuB7q
	zmUlmRNBhwZ4zuaEQ8Nz8Ik=
X-Google-Smtp-Source: AGRyM1tIFWps7GuynT7/ctHJ1oOCwc/7yDQVFIac6jHQk6qYkRAznoe/emoT56f599T7EO3RZTxl5g==
X-Received: by 2002:a05:6214:d41:b0:472:f5cf:1fa6 with SMTP id 1-20020a0562140d4100b00472f5cf1fa6mr7398602qvr.98.1657385132359;
        Sat, 09 Jul 2022 09:45:32 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id bn6-20020a05622a1dc600b003187c484027sm1649175qtb.73.2022.07.09.09.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 09:45:31 -0700 (PDT)
Message-ID: <30276fe5-7145-adad-3647-4af5257eba5b@gmail.com>
Date: Sat, 9 Jul 2022 12:45:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: sp <stackprogramer@gmail.com>
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
 <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
 <CAA=S3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gmail.com>
Message-ID-Hash: 6PP6DS5K3D3JMVU45JJQR3OS3VRNLFFG
X-Message-ID-Hash: 6PP6DS5K3D3JMVU45JJQR3OS3VRNLFFG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PP6DS5K3D3JMVU45JJQR3OS3VRNLFFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5649910105221833744=="

This is a multi-part message in MIME format.
--===============5649910105221833744==
Content-Type: multipart/alternative;
 boundary="------------ZMPC8NhlZyoBqtWYAdZ0VVbm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZMPC8NhlZyoBqtWYAdZ0VVbm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-09 12:40, sp wrote:
> Marcus D. Leech=C2=A0 thanks very much. Your description is very useful=
=C2=A0for=20
> me. But I am not a communication engineer, I am a software developer,=20
> Can you introduce=C2=A0me to a reference book that discusses=C2=A0scali=
ng in=20
> radio hardware?
> But, with your description, I think I should follow your method...
> simple Python program to re-scale it. of course=C2=A0in helping a=20
> communication engineer.
>
>
My point is that re-scaling a data-set has NOTHING to do with=20
communications, DSP, SDR, UHD, or even Gnu Radio.=C2=A0 It's a=20
pretty-ordinary numerical thing
 =C2=A0 that anyone who has dealt with large data-sets that needs to re-s=
cale=20
them (for example, normalizing them) would need to understand.

If the data-set is small, you can read the entire thing into a Numpy=20
array in Python, for example, determine the required scaling, and=20
re-scale and write the
 =C2=A0array back out.=C2=A0=C2=A0 If it's larger, then you'd need to do =
it in chunks.


>
> On Sat, Jul 9, 2022 at 8:57 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-07-09 12:01, sp wrote:
>>
>>         I assume this already does ceil or floor, so your data needs
>>         to be
>>         already in the right scale:)
>>
>>     But all of my problems are related to scaling...
>>     =C2=A0want to use the converted class in USRP that can solve my
>>     scaling=C2=A0problem and I am sure that my data is converted corre=
ctly..
>>     So I want to use only the converter class not=C2=A0the=C2=A0c func=
tion on
>>     volk functions...
>>
>     If the file was recorded from a HackRF using GNu Radio, then it is
>     already scaled appropriately.
>
>     If not, then figure out what the largest sample amplitude is and
>     re-scale your file as appropriate.
>
>     If you have a real-time, floating-point, sample-stream where the
>     range of the data-set is unknown in advance, then you have a
>     serious problem
>     =C2=A0 that cannot be solved with converters.
>
>     The reality is that the various SDR device drivers out there,
>     particularly in the context of Gnu Radio, will convert
>     sample-sterams into complex-floats
>     =C2=A0 in the appropriate {-1.0,+1.0} range appropriately.
>
>     Any converter you write for UHD will *necessarily* need to take a
>     scaling parameter, and you have no way of knowing that in advance
>     for a real-time
>     =C2=A0 sample stream from "weird" hardware.=C2=A0=C2=A0=C2=A0 For a=
 pre-recorded file,
>     you have to evaluate the *entire* file anyway to determine what
>     the scaling factor should
>     =C2=A0 be, and you might as well, having evaluated the entire file,
>     also do the conversion on the file at the same time. Again, this
>     isn't SDR or DSP or GnuRadio,
>     =C2=A0 or UHD specifically, it's just a data-scaling exercise that =
you
>     might find yourself in whenever dealing with *ANY*
>     numerically-based discipline.
>
>     Since it's a file, the conversion doesn't have to go in real-time,
>     and you could even use a simple Python program to re-scale it.
>
>
>>
>>     On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 2022-07-09 11:02, Nikos Balkanas wrote:
>>         > Correction> These functions work on integers.
>>         >
>>         > So they go as:
>>         > int16 data =3D htobe16(le32toh(int32 data))
>>         > Or the associate functions,
>>         > htonl, htons
>>         >
>>         > So you need to already have converted your floats to ints...
>>         > If in doubt, test them first on a single data...
>>         > Sorry about the confusion.
>>         >
>>         > Nikos
>>         >
>>         >
>>         My question would be--why?
>>
>>         UHD and Gnu Radio already do these conversions for you.
>>
>>         The *single* case where being able to send sample data as
>>         big-endian
>>         SC16 without any intervening conversions is from a file.=C2=A0=
=C2=A0
>>         Anything that
>>         involves computation-with-samples
>>         =C2=A0=C2=A0 on the host requires, necessarily, that those sam=
ples be
>>         in a format
>>         understood by the CPU on the host.
>>
>>         Further, if there are bottlenecks, I would want to absolutely
>>         confirm
>>         that the major bottleneck in the UHD driver is in doing
>>         conversion to
>>         big-endian wire format before
>>         =C2=A0=C2=A0 venturing down the road of making that available
>>         "directly".=C2=A0=C2=A0=C2=A0=C2=A0 I
>>         have lost track of this thread, but my recollection is that
>>         this file
>>         originates in a capture from a HackRF
>>         =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SPS. Th=
at's a
>>         rate that
>>         is *easily* handled by the existing UHD "stack" without
>>         resorting to
>>         this type of optimization, IMHO.
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------ZMPC8NhlZyoBqtWYAdZ0VVbm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-09 12:40, sp wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Marcus D. Leech=C2=A0 thanks very much. Your descr=
iption
        is very useful=C2=A0for me. But I am not a communication engineer=
, I
        am a software developer, Can you introduce=C2=A0me to a reference
        book that discusses=C2=A0scaling in radio hardware?
        <div>But, with your description, I think I should follow your
          method...</div>
        <div>simple Python program to re-scale it. of course=C2=A0in help=
ing
          a communication engineer.<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    My point is that re-scaling a data-set has NOTHING to do with
    communications, DSP, SDR, UHD, or even Gnu Radio.=C2=A0 It's a
    pretty-ordinary numerical thing<br>
    =C2=A0 that anyone who has dealt with large data-sets that needs to
    re-scale them (for example, normalizing them) would need to
    understand.<br>
    <br>
    If the data-set is small, you can read the entire thing into a Numpy
    array in Python, for example, determine the required scaling, and
    re-scale and write the<br>
    =C2=A0array back out.=C2=A0=C2=A0 If it's larger, then you'd need to =
do it in
    chunks.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 at 8:57=
 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-07-09 12:01, sp wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">I assume this
                  already does ceil or floor, so your data needs to be<br=
>
                  already in the right scale:)<br>
                </blockquote>
                <div>But all of my problems are related to scaling...</di=
v>
                <div>=C2=A0want to use the converted class in USRP that c=
an
                  solve my scaling=C2=A0problem and I am sure that my dat=
a is
                  converted correctly..</div>
                <div>So I want to use only the converter class not=C2=A0t=
he=C2=A0c
                  function on volk functions...</div>
                <div><br>
                </div>
              </div>
            </blockquote>
            If the file was recorded from a HackRF using GNu Radio, then
            it is already scaled appropriately.<br>
            <br>
            If not, then figure out what the largest sample amplitude is
            and re-scale your file as appropriate.<br>
            <br>
            If you have a real-time, floating-point, sample-stream where
            the range of the data-set is unknown in advance, then you
            have a serious problem<br>
            =C2=A0 that cannot be solved with converters.<br>
            <br>
            The reality is that the various SDR device drivers out
            there, particularly in the context of Gnu Radio, will
            convert sample-sterams into complex-floats<br>
            =C2=A0 in the appropriate {-1.0,+1.0} range appropriately.<br=
>
            <br>
            Any converter you write for UHD will *necessarily* need to
            take a scaling parameter, and you have no way of knowing
            that in advance for a real-time<br>
            =C2=A0 sample stream from "weird" hardware.=C2=A0=C2=A0=C2=A0=
 For a pre-recorded
            file, you have to evaluate the *entire* file anyway to
            determine what the scaling factor should<br>
            =C2=A0 be, and you might as well, having evaluated the entire
            file, also do the conversion on the file at the same time.=C2=
=A0
            Again, this isn't SDR or DSP or GnuRadio,<br>
            =C2=A0 or UHD specifically, it's just a data-scaling exercise
            that you might find yourself in whenever dealing with *ANY*
            numerically-based discipline.<br>
            <br>
            Since it's a file, the conversion doesn't have to go in
            real-time, and you could even use a simple Python program to
            re-scale it.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022=
 at
                  8:01 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 2022-07-09
                  11:02, Nikos Balkanas wrote:<br>
                  &gt; Correction&gt; These functions work on integers.<b=
r>
                  &gt;<br>
                  &gt; So they go as:<br>
                  &gt; int16 data =3D htobe16(le32toh(int32 data))<br>
                  &gt; Or the associate functions,<br>
                  &gt; htonl, htons<br>
                  &gt;<br>
                  &gt; So you need to already have converted your floats
                  to ints...<br>
                  &gt; If in doubt, test them first on a single data...<b=
r>
                  &gt; Sorry about the confusion.<br>
                  &gt;<br>
                  &gt; Nikos<br>
                  &gt;<br>
                  &gt;<br>
                  My question would be--why?<br>
                  <br>
                  UHD and Gnu Radio already do these conversions for
                  you.<br>
                  <br>
                  The *single* case where being able to send sample data
                  as big-endian <br>
                  SC16 without any intervening conversions is from a
                  file.=C2=A0=C2=A0 Anything that <br>
                  involves computation-with-samples<br>
                  =C2=A0=C2=A0 on the host requires, necessarily, that th=
ose
                  samples be in a format <br>
                  understood by the CPU on the host.<br>
                  <br>
                  Further, if there are bottlenecks, I would want to
                  absolutely confirm <br>
                  that the major bottleneck in the UHD driver is in
                  doing conversion to <br>
                  big-endian wire format before<br>
                  =C2=A0=C2=A0 venturing down the road of making that ava=
ilable
                  "directly".=C2=A0=C2=A0=C2=A0=C2=A0 I <br>
                  have lost track of this thread, but my recollection is
                  that this file <br>
                  originates in a capture from a HackRF<br>
                  =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6=
SPS.=C2=A0=C2=A0
                  That's a rate that <br>
                  is *easily* handled by the existing UHD "stack"
                  without resorting to <br>
                  this type of optimization, IMHO.<br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------ZMPC8NhlZyoBqtWYAdZ0VVbm--

--===============5649910105221833744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5649910105221833744==--
