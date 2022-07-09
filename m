Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B1956CAB3
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 18:42:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFEB5383EB5
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 12:42:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657384974; bh=29BW5j7FHkPxX8bry7iyaxXuVFuAvKkz6CflZwefaAw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uBPxUpGfywF84Gk1yNCiGSwoeNMlUbtOG+aFYKwkENoWlkqvc8s2NQ9BJBwiPExLj
	 6Ewb4OSUxuhVfTtXh3u031uXzKwQ9/Kz8rIDih6Q/0WAELv6MhkLOUUdKmFs8tUwzL
	 Jy7uIeeTQ197SzLNNbWv8aS4wdvnZcjacMCfVaxDasamTG7QpwwiCNtfF3F7y4UB3A
	 PIQoNLkoSA0NHXGLCFtwpxo29MeS71+AIGpjhMiCLucwsZsALT89bDy3pG/SJYd1Ev
	 ZNZcaJPdaVS2tNaBWm6TcOWP/i6xvoXP3z9UiZAXYtzEM3FuU2DknO5flqJovUONaQ
	 XONO3KzdBlYlA==
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 2878C383DB0
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 12:40:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q5+eEx9j";
	dkim-atps=neutral
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-31cb2c649f7so13594677b3.11
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 09:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hssjOjkGPtucN4NJ+2zjLztPzA0tLWHGqk4plKZGVB4=;
        b=Q5+eEx9jtSqhtsy4V8P2XGTEG1J3+9vQe2g7hJuSpFn7pCVwwFqRGGVui42qbV+wI4
         tjfNNZGkoJx5KzqfS3DBFJ8vlmchG3WVM7TtDYP+aVQ9MHFuvZqvwTqQL5DdIU9Gvgft
         3zgx/3Vg5i5nMtU0DsoKCb47o8zjDAyw1TiL04rOvsWEjeau+EfkZKrwprRTMVCXgAVn
         FP1/GVhb1MjMxz2SxSiH4i1eW8JQkeJjAZ6xtCYVn047fIPjZia3P6zR5I8yMKTwmRck
         Yag+c7hkpMN+QFXD3bLgioxqONiC+Kb+HI3k3EjoCFy0yGAueWt96B2+ENn+MEKR6m2U
         vVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hssjOjkGPtucN4NJ+2zjLztPzA0tLWHGqk4plKZGVB4=;
        b=3r8IQUz7Q00lupnIETxDSFzO1SrWchDMH8zeSlvfd2i+IpUrQOG/We0ThvWuF35UfJ
         W3La3GybvPl5OLhx5oKnRjxr2asMulcb/kRIBH5NhCMCZT8X5I2d6V3/r4lQK/sNDY0u
         ah/AfoTmi634UtzR2QJeizmb/wI35TxnXqR7bsWt2SCBpLmEQ/LeE6PlDw2viGlSBbfJ
         ozCFZLrJk1KzTprLXKPSklaqV93TzhGrsagkGh3dhs9sAcu/+GABxeHadvm2VPkHrte4
         or/HM2ReuCTbl8L+cQdjbmU+68BKUu9FsyNc8mpKILl5tBAa7mreCrAyqO09wzYD12GO
         Wn8A==
X-Gm-Message-State: AJIora9WIyno8sXOZouwDvxzRrFAM8PGb2qyn/l7iCZI+5oqT1+o8aW9
	7zJjUGlAfG9/VxdTiOfpteuAMYzp1k4qEG1lN7Y=
X-Google-Smtp-Source: AGRyM1tqT9QEresfIIw6yae2G6tgXLPAtWTjsb9fauBV40PzdDUU51yAnkO1b98CRClc0aLLhulPKIOIsDYqBuY5oDo=
X-Received: by 2002:a81:74f:0:b0:31c:af7f:c994 with SMTP id
 76-20020a81074f000000b0031caf7fc994mr10166393ywh.322.1657384839773; Sat, 09
 Jul 2022 09:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com> <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
In-Reply-To: <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sat, 9 Jul 2022 21:10:28 +0430
Message-ID: <CAA=S3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: M3XSIM7CIAJAQCAEMC6TNLNIYPDOPZAV
X-Message-ID-Hash: M3XSIM7CIAJAQCAEMC6TNLNIYPDOPZAV
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3XSIM7CIAJAQCAEMC6TNLNIYPDOPZAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5133911982327419750=="

--===============5133911982327419750==
Content-Type: multipart/alternative; boundary="000000000000a1846905e361fab7"

--000000000000a1846905e361fab7
Content-Type: text/plain; charset="UTF-8"

Marcus D. Leech  thanks very much. Your description is very useful for me.
But I am not a communication engineer, I am a software developer, Can you
introduce me to a reference book that discusses scaling in radio hardware?
But, with your description, I think I should follow your method...
simple Python program to re-scale it. of course in helping a communication
engineer.



On Sat, Jul 9, 2022 at 8:57 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-07-09 12:01, sp wrote:
>
> I assume this already does ceil or floor, so your data needs to be
>> already in the right scale:)
>>
> But all of my problems are related to scaling...
>  want to use the converted class in USRP that can solve my scaling problem
> and I am sure that my data is converted correctly..
> So I want to use only the converter class not the c function on volk
> functions...
>
> If the file was recorded from a HackRF using GNu Radio, then it is already
> scaled appropriately.
>
> If not, then figure out what the largest sample amplitude is and re-scale
> your file as appropriate.
>
> If you have a real-time, floating-point, sample-stream where the range of
> the data-set is unknown in advance, then you have a serious problem
>   that cannot be solved with converters.
>
> The reality is that the various SDR device drivers out there, particularly
> in the context of Gnu Radio, will convert sample-sterams into complex-floats
>   in the appropriate {-1.0,+1.0} range appropriately.
>
> Any converter you write for UHD will *necessarily* need to take a scaling
> parameter, and you have no way of knowing that in advance for a real-time
>   sample stream from "weird" hardware.    For a pre-recorded file, you
> have to evaluate the *entire* file anyway to determine what the scaling
> factor should
>   be, and you might as well, having evaluated the entire file, also do the
> conversion on the file at the same time.  Again, this isn't SDR or DSP or
> GnuRadio,
>   or UHD specifically, it's just a data-scaling exercise that you might
> find yourself in whenever dealing with *ANY* numerically-based discipline.
>
> Since it's a file, the conversion doesn't have to go in real-time, and you
> could even use a simple Python program to re-scale it.
>
>
>
> On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
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
>>
>
>

--000000000000a1846905e361fab7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus D. Leech=C2=A0 thanks very much. Your description i=
s very useful=C2=A0for me. But I am not a communication engineer, I am a so=
ftware developer, Can you introduce=C2=A0me to a reference book that discus=
ses=C2=A0scaling in radio hardware?<div>But, with your description, I think=
 I should follow your method...</div><div>simple Python program to re-scale=
 it. of course=C2=A0in helping a communication engineer.<br></div><div><br>=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Jul 9, 2022 at 8:57 PM Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-07-09 12:01, sp wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">I
          assume this already does ceil or floor, so your data needs to
          be<br>
          already in the right scale:)<br>
        </blockquote>
        <div>But all of my problems are related to scaling...</div>
        <div>=C2=A0want to use the converted class in USRP that can solve m=
y
          scaling=C2=A0problem and I am sure that my data is converted
          correctly..</div>
        <div>So I want to use only the converter class not=C2=A0the=C2=A0c
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
    =C2=A0 sample stream from &quot;weird&quot; hardware.=C2=A0=C2=A0=C2=A0=
 For a pre-recorded file,
    you have to evaluate the *entire* file anyway to determine what the
    scaling factor should<br>
    =C2=A0 be, and you might as well, having evaluated the entire file, als=
o
    do the conversion on the file at the same time.=C2=A0 Again, this isn&#=
39;t
    SDR or DSP or GnuRadio,<br>
    =C2=A0 or UHD specifically, it&#39;s just a data-scaling exercise that =
you
    might find yourself in whenever dealing with *ANY* numerically-based
    discipline.<br>
    <br>
    Since it&#39;s a file, the conversion doesn&#39;t have to go in real-ti=
me,
    and you could even use a simple Python program to re-scale it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 at 8:01 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
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
          =C2=A0=C2=A0 on the host requires, necessarily, that those sample=
s be in
          a format <br>
          understood by the CPU on the host.<br>
          <br>
          Further, if there are bottlenecks, I would want to absolutely
          confirm <br>
          that the major bottleneck in the UHD driver is in doing
          conversion to <br>
          big-endian wire format before<br>
          =C2=A0=C2=A0 venturing down the road of making that available
          &quot;directly&quot;.=C2=A0=C2=A0=C2=A0=C2=A0 I <br>
          have lost track of this thread, but my recollection is that
          this file <br>
          originates in a capture from a HackRF<br>
          =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SPS.=C2=A0=
=C2=A0 That&#39;s a
          rate that <br>
          is *easily* handled by the existing UHD &quot;stack&quot; without
          resorting to <br>
          this type of optimization, IMHO.<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000a1846905e361fab7--

--===============5133911982327419750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5133911982327419750==--
