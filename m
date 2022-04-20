Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 640F3508F8E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 20:36:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B7143844DF
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 14:36:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650479775; bh=B2zonD+C59ILDa4Cb+2nScQAlLXwlwGkl58NiznRABU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xfBQyWWUoEi0bCak5TGtDNok0eDo821aDTmVzTMEpxj5UITkA5SDc60634E1bOZpS
	 EovRMZ02SMuvAAcInbaavfo7Jp6PS0IDv2aFA3+j/qj1Yv3WW7q7dSBVHi0XTUbond
	 G1E0Oaiv4tA6od8drS5v3QrEK2IhwE3Urq8oXouoKt3IQBZ1QLIoXaTWNF496a7Agh
	 MldukjAKqsiScR0b0fiVxzKNl2mdpK8LRCy7K94F9JtjG5EQdO8rIzRFR6gjgs1Tcc
	 bzKP/dlpFPRj+SQkA88q6oK5+g+l3lrEm/a/Nvi7iOULBUdGaGjk+ybNAF86R0vjqC
	 TFvZ5MzEK8aqQ==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5134838445C
	for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 14:35:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X10OUDxv";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-2ec0bb4b715so27947997b3.5
        for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 11:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x3hmEhRSfa/Jk+MdC6xhy5k225szzFe9WGoDvhXArTY=;
        b=X10OUDxvqYI/ho+QC28n7QYdb2ENwV6o4CTvicg42XlL/78WtV8jlqMxBF4/OpyA6m
         H4HCYrwyX/xVUpZ6Dfxi61PuBp+rYGUNAjHuVQuB4m4MQOupW1P2Kdfjio03bqhIXHyO
         gKuAVRuijCX3teV94aIsIHvmJ7ykEYSZBmIdPP3aYJL6B56nY7QksLrqkYEEDDXCw2D5
         9vvrSzcoltMI/wFrx5AwUc2PMt1PR/F74otK0RpZXHCeo6QVRi91tRs/uWYvrQZgJFp9
         WZjN3t6KLEQYkglc/QuuBshteRuxWdqNxzaMPsEjiDLJf/tRxEPdMp70ZiQEcIx02SrU
         c+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x3hmEhRSfa/Jk+MdC6xhy5k225szzFe9WGoDvhXArTY=;
        b=IjKZ01S2a1lCLYd9l01ALDqcxW0sQbjsyX+wiJXX1drvha8OJqin/XngSwcvUhS+wz
         L/OLZ6qbi7OCdVA82YeIgLC05S0jQuM+EfmzqcvSIo5R/qAyElHcWpfTmyNoH5YkGFY3
         D2WAnMVZDgjmeFzXA7bC9odgR4FKwAHaHm1BBeaUh4VR3uDrgcTgIAvZJZ5oIPi6He/C
         5Px6hjvVQ5i4T9WUUUl2sLgsT6UIGATILhSJ8Xfx3jR8Lk3oVXNdro+Wqlgjm5qf+Tpp
         /EbgWvYzQCMsa1vPnlxDWD0FfNNlp35ohJsrS6JrFpmzCVpRkgtv7zU3aAX0ehdSK33O
         Rn4g==
X-Gm-Message-State: AOAM532Y8EGP+FyoQJf0x2bA8iTT05lS/G5NMDMWMHnVHBDPmqYgcwYw
	0yGvPqisN2G3k8+Lk9GziAm2WtCUdju9J29A/o/1yrZGS1A=
X-Google-Smtp-Source: ABdhPJwDUi1Yi7BrzVgjsCh8k2baPmXCQjzY1lBtyewfWoZDLrgC60agDRn/EKYjJftoheLuAomJPosZf/W7O9WlqZI=
X-Received: by 2002:a81:f201:0:b0:2d6:954c:f463 with SMTP id
 i1-20020a81f201000000b002d6954cf463mr22532729ywm.168.1650479711646; Wed, 20
 Apr 2022 11:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com> <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
 <1c1e7c17-ea14-086b-5013-54fb89abba61@gmail.com>
In-Reply-To: <1c1e7c17-ea14-086b-5013-54fb89abba61@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Wed, 20 Apr 2022 14:35:00 -0400
Message-ID: <CAL0m=Naw7yxL1aHja_QbPL6K5e7yZwOAoKXOkQ3vap4Mv28jaw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SW7NHO7GQ5BL4R53KT35F4Z2IVTPEN6Q
X-Message-ID-Hash: SW7NHO7GQ5BL4R53KT35F4Z2IVTPEN6Q
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with connecting BasicRX Daughterboard with X310 RF B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SW7NHO7GQ5BL4R53KT35F4Z2IVTPEN6Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1745236857664535243=="

--===============1745236857664535243==
Content-Type: multipart/alternative; boundary="000000000000ebf52e05dd1a409a"

--000000000000ebf52e05dd1a409a
Content-Type: text/plain; charset="UTF-8"

the version we use is:
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.2.0.git-32-ga7486cbf

We follow the instructions on Ettus website (
https://files.ettus.com/manual/page_configuration.html#config_subdev) and
never got the RF B worked.
Looks like that X310's RF B does not support BasicRX. Is it related to some
unknown bugs with the RFNOC blocks?

On Wed, Apr 20, 2022 at 10:35 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-04-19 22:44, Zeng, Huacheng wrote:
>
> Below is a more detailed description of our issue.
>
> 1. We have an X310 with two BasicRX boards installed (no BasicTX). We
> tried to read the two data streams from X310 on a computer at a sampling
> rate 5Msps. The computer displays "OOOOOOOOOOOO" overflow constantly. We
> tried other sampling rates such as 1Msps and 10Msps, the observation is the
> same.
>
> What version of UHD are you using?  BasicRX support on the X310 in earlier
> releases was broken.
>
>
>
> We found that the LED lights on the X310 panel are abnormal. When X310
> works in RX mode, the two LED lights (RF A's RX2 LED and RF B's RX2 LED)
> should be on, but we observed they were flashing. Also, the LINK LED should
> be on in RED, but we observed that it was flashing in ORANGE.
>
> We reloaded the FPGA image, but the problem is consistent.
>
> 2. We removed BasicRX from X310's RF B channel, and tested one data stream
> from X310 RF A's channel, it works (no overflow). We are sure that the two
> BasicRX boards have no problem, as they are brand new.
>
> 3. We removed two BasicRX boards and installed two BasicTX boards on the
> same X310. We used GNU RADIO to send two data streams to X310 for signal
> transmission. It works well and has no overflow issue.
>
> We want to test X310's RF B channel, but we do not know how to set the
> parameters so that GNU Radio can read the data stream from X310's RF B
> channel. Would it be an argument like "subdev=B"? It looks like GNU Radio
> always gets data stream from RF A channel if we set the channel number to
> 1. Please suggest if it is possible.
>
>
> https://files.ettus.com/manual/page_configuration.html#config_subdev
>
> Also, this thread here, on a related topic (Basic_RX on X310) may help:
>
>
> https://usrp-users.ettus.narkive.com/Mbf3kutl/subdev-spec-for-two-channels-with-usrp-x310
>
>
>
> Any suggestion and help would be appreciated!
>
>
> On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-04-19 15:05, Shichen Zhang wrote:
>> > Hello everyone,
>> >
>> > I am doing some experiments and I need to build the 2 by 2
>> > communication using X310 with the BasicRX Daughterboard. I use the
>> > X310 as both the transmitter and receiver. I can successfully test the
>> > 1 by 1 case, however, when I test the 2 by 2 case, the overflow
>> > happened and the program could not be stopped. The RF B channel seems
>> > not to work ( LED light for RF B RX not flash).
>> >
>> > I have attached the flowchart for your reference.
>> >
>> > Best,
>> > SZ
>> >
>> What is your complete hardware configuration?  I assume 2  x BasicRX and
>> 2 x Basic TX?
>>
>> It may just be the case that your computer simply isn't up to the task
>> of moving 20Mssp of data in and out of the radio, along with doing 2 x
>> FFTs and computing the
>>    noise sources.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000ebf52e05dd1a409a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>the version we use is: <br></div><div>[INFO] [UHD] li=
nux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.git-32-ga7486cbf</div><=
div><br></div><div>We follow the instructions on Ettus website (<a href=3D"=
https://files.ettus.com/manual/page_configuration.html#config_subdev" targe=
t=3D"_blank">https://files.ettus.com/manual/page_configuration.html#config_=
subdev</a>) and never got the RF B worked. <br></div><div>Looks like that X=
310&#39;s RF B does not support BasicRX. Is it related to some unknown bugs=
 with the RFNOC blocks?<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 20, 2022 at 10:35 AM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div>
    <div>On 2022-04-19 22:44, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Below is a more detailed description of our issue.
        <br>
        <br>
        1. We have an X310 with two BasicRX boards installed (no
        BasicTX). We tried to read the two data streams from X310 on a
        computer at a sampling rate 5Msps. The computer displays
        &quot;OOOOOOOOOOOO&quot; overflow constantly. We tried other sampli=
ng
        rates such as 1Msps and 10Msps, the observation is the same. <br>
      </div>
    </blockquote>
    What version of UHD are you using?=C2=A0 BasicRX support on the X310 in
    earlier releases was broken.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        We found that the LED lights on the X310 panel are abnormal.
        When X310 works in RX mode, the two LED lights (RF A&#39;s RX2 LED
        and RF B&#39;s RX2 LED) should be on, but we observed they were
        flashing. Also, the LINK LED should be on in RED, but we
        observed that it was flashing in ORANGE. <br>
        <br>
        We reloaded the FPGA image, but the problem is consistent. <br>
        <br>
        2. We removed BasicRX from X310&#39;s RF B channel, and tested one
        data stream from X310 RF A&#39;s channel, it works (no overflow). W=
e
        are sure that the two BasicRX boards have no problem, as they
        are brand new. <br>
        <br>
        3. We removed two BasicRX boards and installed two BasicTX
        boards on the same X310. We used GNU RADIO to send two data
        streams to X310 for signal transmission. It works well and has
        no overflow issue. <br>
        <br>
        We want to test X310&#39;s RF B channel, but we do not know how to
        set the parameters so that GNU Radio can read the data stream
        from X310&#39;s RF B channel. Would it be an argument like
        &quot;subdev=3DB&quot;? It looks like GNU Radio always gets data st=
ream from
        RF A channel if we set the channel number to 1. Please suggest
        if it is possible. <br>
      </div>
    </blockquote>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_configuration.html#confi=
g_subdev" target=3D"_blank">https://files.ettus.com/manual/page_configurati=
on.html#config_subdev</a><br>
    <br>
    Also, this thread here, on a related topic (Basic_RX on X310) may
    help:<br>
    <br>
<a href=3D"https://usrp-users.ettus.narkive.com/Mbf3kutl/subdev-spec-for-tw=
o-channels-with-usrp-x310" target=3D"_blank">https://usrp-users.ettus.narki=
ve.com/Mbf3kutl/subdev-spec-for-two-channels-with-usrp-x310</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        Any suggestion and help would be appreciated!<br>
        <br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at 6:03
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2022-04-19 15:05, Shichen Zhang wrote:<br>
          &gt; Hello everyone,<br>
          &gt;<br>
          &gt; I am doing some experiments=C2=A0and I need to build the 2 b=
y
          2 <br>
          &gt; communication using X310 with the=C2=A0BasicRX Daughterboard=
.
          I use the <br>
          &gt; X310 as both the transmitter and receiver. I can
          successfully test the <br>
          &gt; 1 by 1 case, however, when I test the 2 by 2 case, the
          overflow <br>
          &gt; happened and the program could not be stopped. The RF B
          channel seems <br>
          &gt; not to work ( LED light for RF B RX not flash).<br>
          &gt;<br>
          &gt; I have attached the flowchart for=C2=A0your reference.<br>
          &gt;<br>
          &gt; Best,<br>
          &gt; SZ<br>
          &gt;<br>
          What is your complete hardware configuration?=C2=A0 I assume 2=C2=
=A0 x
          BasicRX and <br>
          2 x Basic TX?<br>
          <br>
          It may just be the case that your computer simply isn&#39;t up to
          the task <br>
          of moving 20Mssp of data in and out of the radio, along with
          doing 2 x <br>
          FFTs and computing the<br>
          =C2=A0=C2=A0 noise sources.<br>
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

--000000000000ebf52e05dd1a409a--

--===============1745236857664535243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1745236857664535243==--
