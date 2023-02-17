Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CF969B2F8
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:19:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D417C384744
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 14:19:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676661580; bh=kPM0jF0vCUnvz68Ps3F7ES1LtnXeaMTlE2HIz1YZCag=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fQeGdIg8io/SXw/2hR1bPHEEBC/JM/arTK1kSUXVdQuFTJvBVIF6Uo9GlxJ/EFaVS
	 nNO8vcuWWuVK9cdXlKcyJxDniNVEsl19WuCrw7fHCboG0sLwgpJ8wjpfg0R88ZOE7u
	 B4wA2Op7esjXB+/JpWjkgLAQ59aIMlbTKb+V3Ek3XEz0KU3ufChs2kJ4rO47lIw5FE
	 UD1OYNoO0Vdzw0NFwQz1S2wzQQmXVa1Sg2mi/2MgLbHgVhcmlFkahuUKizcN1Q2GEZ
	 Y6lgUXYdM1GXm+LSrVb0umCzzJBHRM1X1L5WXcixqEEkjfcLBaRAFDLZLVJgpaoYh4
	 trkXvm+RGHFWg==
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id D28683841FF
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 14:19:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VvwydZdb";
	dkim-atps=neutral
Received: by mail-il1-f175.google.com with SMTP id q20so663615ilc.9
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 11:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1We8/BBlVCsaQkH2ghqEfpF6eoi24FtjFi5T+8lXJA8=;
        b=VvwydZdbS0Ytu9j6TZU5EIRVDglbMu/mYvDqc3Y2FXBLT5Sbnq74CAv6nt3OXZ3NhD
         fmV1HFDHH39QDJ5RgiR/Qysbtna16/cF2LWNa9k0bNnrGSn5/04x7YGQfnLSjcy/iOGO
         2bBonkPHUhC52vbp0kj2dOltwGm84qyIxElOSMEYZLAg0DrnnEB9WgJT1J3jxoGS8UYg
         xU+o2gein97WlNdczcGsm1xzOKVh1IEQI96jvI4wCmH1kYWLaOIDaD9HuJHkXzTmflp5
         hwIotrOGWaKVwU1+1oMsElp3tC0POEwUlw7cK9pf0Go4xG0aoaDpiN1ZUdI8wChsm4WA
         s8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1We8/BBlVCsaQkH2ghqEfpF6eoi24FtjFi5T+8lXJA8=;
        b=wtRVD95hQHDRGOsPnUqBDrIgvmq3VgR0sQcJcs/NGjl8wKGcGbi3hyn3SzbI8sTNFw
         e1FUCermvZNSOZm/0s6pkh2pHkp5k//p4iHQY5JN8DYxIwRdsNHDym/l41c3LbcQx57m
         bvkhIeCxJNS1QG3LyRzL7KqS+sKHZPtfXy13xAq53hrexeFL3pDTkend4Y4JNdTIbMIr
         9j2zomkc9zgT0EZu8ZLFLNSfAx/LKEJIQFw+B40lBqwgQwLR8tOM0Eb2IB9VYOWm97WS
         3UMBt6LtCezUJW7cvr6R0IuEwn9XCxBtiP3KdTyT3iIbA1uNni0cg5KDpBV3mkiyjSWc
         8bDg==
X-Gm-Message-State: AO0yUKWC5yNbiyg0+0xsG/69otDnngdj2rquwaEVocLuEZu6rWjkco7F
	qFE8NYyYrvtsUkUCqu5EqhAh/hLhr/E=
X-Google-Smtp-Source: AK7set9e7qohZRvPC4ZZsCfr4qO7mYNtAbk9/eZiYgfCVlvoU7yGigg4Eil9MRJ+k8eIJImzZP3GWA==
X-Received: by 2002:a05:6e02:1485:b0:313:d4c5:3060 with SMTP id n5-20020a056e02148500b00313d4c53060mr2195551ilk.12.1676661541043;
        Fri, 17 Feb 2023 11:19:01 -0800 (PST)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id a15-20020a02ac0f000000b0039e5786d7b7sm1730249jao.18.2023.02.17.11.19.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 11:19:00 -0800 (PST)
Message-ID: <ed769f5d-1e33-c9b6-2210-73e6b00d7ca0@gmail.com>
Date: Fri, 17 Feb 2023 14:19:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Anil Gurses <agurses@ncsu.edu>
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
 <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
 <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com>
 <CANvw1+Rqk-sMaiswCL4=iggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+Rqk-sMaiswCL4=iggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gmail.com>
Message-ID-Hash: 5DALMHA2EZQMYJAKJB33X26HOMMH6YGS
X-Message-ID-Hash: 5DALMHA2EZQMYJAKJB33X26HOMMH6YGS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DALMHA2EZQMYJAKJB33X26HOMMH6YGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4473129668495040759=="

This is a multi-part message in MIME format.
--===============4473129668495040759==
Content-Type: multipart/alternative;
 boundary="------------IC5JQJa0e0Mm3WwEoagdzADr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IC5JQJa0e0Mm3WwEoagdzADr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/02/2023 14:14, Anil Gurses wrote:
> Do you know any documentation about USRP continuous streaming? It=20
> might be more useful if I check those documents. I couldn't find=20
> anything about it in the UHD/USRP manual.
>
>
> A.
When you create a streamer, you tell it what type of streaming you wish=20
to do:

https://files.ettus.com/manual/classuhd_1_1rx__streamer.html
https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html



The most-normal mode is to stream continuously.=C2=A0 That's what 99% of =
the=20
applications out there use because they're
 =C2=A0 doing things like demodulating wireless protocols, etc.

If, however, you want to kind of "sniff" the spectrum in discrete time=20
chunks, there are other streaming modes, like
 =C2=A0 NUM_SAMPS_AND_DONE.=C2=A0 The "rx_samples_to_file" example code u=
ses this=20
when you specify a specific number of
 =C2=A0 samples to be captured.




>
> On Fri, Feb 17, 2023 at 2:06 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/02/2023 14:00, Anil Gurses wrote:
>>
>>     Thanks for your quick response!
>>
>>         In general, your application absolutely, positively, needs to
>>         call
>>         recv() to consume samples as fast as they're produced, on
>>         average.
>>         =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers,=
 but if your
>>         application cannot "keep up", no amount of buffering will
>>         save it.
>>
>>
>>     This is why we have overflows. Then, my interpretation of
>>     continuous streaming is correct.
>>
>>     To test this, I created a simple python script by putting
>>     delays(sleep) between consecutive recv calls for b205 mini. The
>>     lights turned on only at recv calls and not during delays. I
>>     checked the metadata time and USRP time to see if the packets are
>>     buffered. There was a difference between them and it proves that
>>     packets are buffered.=C2=A0 However, I still don't understand how =
RX
>>     light is triggered on continuous streaming.
>>
>>     A.
>     The light may turn off when over-runs are happening.=C2=A0 I don't =
know
>     the detailed logic behind the lights.
>
>     Ah:
>
>     https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_leds
>
>     I'll point out that using Python to do DSP at anything other than
>     "trivial" rates is a near-guarantee of overruns.=C2=A0 Even if you'=
re
>     =C2=A0=C2=A0 using high-performance underlying libraries like Numpy=
, the
>     data-marshalling costs in Python make it unsuitable for anything
>     =C2=A0=C2=A0 but low-sample-rate experiments.
>
>     Gnu Radio does much better in this regard.=C2=A0 While it does use
>     Python as a kind of "control plane", the "sample plane" is
>     =C2=A0 all handled in C++ land, and nearly-ALL of the packaged DSP
>     blocks are written in C++ using SIMD optimizations wherever
>     =C2=A0 possible.
>
>
>>
>>
>>     On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
>>         > Hi all,
>>         >
>>         > I have a simple question about the continuous stream. As
>>         you all know,
>>         > USRP RX lights indicate whether it's receiving samples or
>>         not. On
>>         > continuous streaming, these lights are turned on if the
>>         recv function
>>         > is called from the host computer(stay on until the end of re=
cv
>>         > function call). In theory, the continuous streaming mode
>>         should
>>         > receive and buffer these samples. So, shouldn't the lights
>>         be on until
>>         > the continuous streaming stop(not until the end of recv
>>         function call)?
>>         >
>>         > If this is how it should be, then my understanding of
>>         continuous
>>         > stream is wrong. If I don't call recv function, doesn't
>>         USRP receive
>>         > samples and buffer them(on continuous streaming mode)?
>>         The light is turned on when a receive streamer is created, as
>>         far as I know.
>>
>>         If your application doesn't call recv(), some number of
>>         samples will be
>>         buffered in various parts of the library and OS drivers, and
>>         =C2=A0=C2=A0 then they'll just start getting dropped.
>>
>>         In general, your application absolutely, positively, needs to
>>         call
>>         recv() to consume samples as fast as they're produced, on
>>         average.
>>         =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers,=
 but if your
>>         application cannot "keep up", no amount of buffering will
>>         save it.
>>
>>
>>
>>
>>         >
>>         >
>>         > Thanks,
>>         > A.
>>         >
>>         > _______________________________________________
>>         > USRP-users mailing list -- usrp-users@lists.ettus.com
>>         > To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------IC5JQJa0e0Mm3WwEoagdzADr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/02/2023 14:14, Anil Gurses wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+Rqk-sMaiswCL4=3Diggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Do you know any documentation about USRP continuous
          streaming? It might be more useful if I check those documents.
          I couldn't find anything about it in the UHD/USRP manual. <br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>A.<br>
        </div>
      </div>
    </blockquote>
    When you create a streamer, you tell it what type of streaming you
    wish to do:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/classuhd_1_1rx__streamer.html">https://files.ettus.com/manual/classu=
hd_1_1rx__streamer.html</a><br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd_1_1stream__cmd__t.html">https://files.ettus.com/manual/str=
uctuhd_1_1stream__cmd__t.html</a><br>
    <br>
    <br>
    <br>
    The most-normal mode is to stream continuously.=C2=A0 That's what 99%=
 of
    the applications out there use because they're<br>
    =C2=A0 doing things like demodulating wireless protocols, etc.<br>
    <br>
    If, however, you want to kind of "sniff" the spectrum in discrete
    time chunks, there are other streaming modes, like<br>
    =C2=A0 NUM_SAMPS_AND_DONE.=C2=A0 The "rx_samples_to_file" example cod=
e uses
    this when you specify a specific number of<br>
    =C2=A0 samples to be captured.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+Rqk-sMaiswCL4=3Diggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 2:0=
6
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/02/2023 14:00, Anil Gurses wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Thanks for your quick response! <br>
                </div>
                <div><br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex"> In general, your
                  application absolutely, positively, needs to call <br>
                  recv() to consume samples as fast as they're produced,
                  on average.<br>
                  =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by b=
uffers,
                  but if your <br>
                  <div> application cannot "keep up", no amount of
                    buffering will save it.</div>
                </blockquote>
                <div><br>
                </div>
                <div>This is why we have overflows. Then, my
                  interpretation of continuous streaming is correct. <br>
                </div>
                <div><br>
                </div>
                <div>To test this, I created a simple python script by
                  putting delays(sleep) between consecutive recv calls
                  for b205 mini. The lights turned on only at recv calls
                  and not during delays. I checked the metadata time and
                  USRP time to see if the packets are buffered. There
                  was a difference between them and it proves that
                  packets are buffered.=C2=A0 However, I still don't
                  understand how RX light is triggered on continuous
                  streaming. <br>
                </div>
                <div><br>
                </div>
                <div>A. <br>
                </div>
              </div>
            </blockquote>
            The light may turn off when over-runs are happening.=C2=A0 I
            don't know the detailed logic behind the lights.=C2=A0 <br>
            <br>
            Ah:<br>
            <br>
            <a
href=3D"https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_le=
ds"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/page_usrp_b200.html#b200_hw_ref_leds</a><br>
            <br>
            I'll point out that using Python to do DSP at anything other
            than "trivial" rates is a near-guarantee of overruns.=C2=A0 E=
ven
            if you're<br>
            =C2=A0=C2=A0 using high-performance underlying libraries like=
 Numpy,
            the data-marshalling costs in Python make it unsuitable for
            anything<br>
            =C2=A0=C2=A0 but low-sample-rate experiments.<br>
            <br>
            Gnu Radio does much better in this regard.=C2=A0 While it doe=
s
            use Python as a kind of "control plane", the "sample plane"
            is<br>
            =C2=A0 all handled in C++ land, and nearly-ALL of the package=
d
            DSP blocks are written in C++ using SIMD optimizations
            wherever<br>
            =C2=A0 possible.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 202=
3
                  at 1:43 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 17/02/2023
                  13:34, Anil Gurses via USRP-users wrote:<br>
                  &gt; Hi all,<br>
                  &gt;<br>
                  &gt; I have a simple question about the continuous
                  stream. As you all know, <br>
                  &gt; USRP RX lights indicate whether it's receiving
                  samples or not. On <br>
                  &gt; continuous streaming, these lights are turned on
                  if the recv function <br>
                  &gt; is called from the host computer(stay on until
                  the end of recv <br>
                  &gt; function call). In theory, the continuous
                  streaming mode should <br>
                  &gt; receive and buffer these samples. So, shouldn't
                  the lights be on until <br>
                  &gt; the continuous streaming stop(not until the end
                  of recv function call)?<br>
                  &gt;<br>
                  &gt; If this is how it should be, then my
                  understanding of continuous <br>
                  &gt; stream is wrong. If I don't call recv function,
                  doesn't USRP receive <br>
                  &gt; samples and buffer them(on continuous streaming
                  mode)?<br>
                  The light is turned on when a receive streamer is
                  created, as far as I know.<br>
                  <br>
                  If your application doesn't call recv(), some number
                  of samples will be <br>
                  buffered in various parts of the library and OS
                  drivers, and<br>
                  =C2=A0=C2=A0 then they'll just start getting dropped.<b=
r>
                  <br>
                  In general, your application absolutely, positively,
                  needs to call <br>
                  recv() to consume samples as fast as they're produced,
                  on average.<br>
                  =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by b=
uffers,
                  but if your <br>
                  application cannot "keep up", no amount of buffering
                  will save it.<br>
                  <br>
                  <br>
                  <br>
                  <br>
                  &gt;<br>
                  &gt;<br>
                  &gt; Thanks,<br>
                  &gt; A.<br>
                  &gt;<br>
                  &gt; _______________________________________________<br=
>
                  &gt; USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  &gt; To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
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

--------------IC5JQJa0e0Mm3WwEoagdzADr--

--===============4473129668495040759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4473129668495040759==--
