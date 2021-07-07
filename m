Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBC63BE072
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 03:02:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5745B383DED
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 21:02:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RhgdCdGu";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B04C383DE6
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 21:02:04 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id q190so336406qkd.2
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 18:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=nH6lFsmnp9bycxSwoLJ5SLSf9ENiVXNpdqlo8LrJaOg=;
        b=RhgdCdGuAkSkNwbPgfI4NlYuwENhn4jkbeuYQFKLUTRXWSGuEa/J9+CO6lwqZl2B4A
         enONa7ZEAUO0DSo/yD5BlgZzQVP1khCqxxKIkSPvpAohxyZbbImFvYHHb53BtEvgCCJJ
         gPEf6Kr2lbxwR4YI7gqq5wVTHL/RFJw3OFWV/f/uF02XkeSEukLa0vj++kyCedyNYRaE
         W1FjsZ+VzRtCW0VFLQWTkPQA4UfSf3dQ8st16Tt9Za1POyMoDS9Y6Rh5aJSAAPiOjIfu
         ctQ5Q8T2z2C4+n1oyHpwI1UbasF2bBhzFyKU8YkLmXVXIf2WnLJFWOYbWWiwzKZhy2pY
         S0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=nH6lFsmnp9bycxSwoLJ5SLSf9ENiVXNpdqlo8LrJaOg=;
        b=d3qZ8awngZbZ1Bc31rtP9CMF/nhyFYAZ9Kt24GhEcdnJjM3lt9XVfvimQvw5U9kHdu
         W/CuxQcpN7aaNHFdjYk65Uz1/r7YrsBOwU9uDkGx5UEWHMbct88K/FpINke/BowLIZzz
         dPIop+4ph0VWKyMMRX7ntiMjhgPXUT+50bst1cPGeeXnBojKMMZzmUukXKcl5IhJJZ5X
         3QNJsdhjMLVEludIetY2hHrw+JOGfYBx9B3XJBjOeitGW6afjCaoCtwHgcaarPA3Zy8o
         vBam0HX49frDygbiBfYNPZIo6vLDdDSxLz+7Zwk0NUZeeivXSQaRlUyReJfaP4RO9jz2
         FbYQ==
X-Gm-Message-State: AOAM533Cc4Lbktdd4qn1BIFhpjiaoEnnduPv3DD09cARIP+9t3btkNJG
	pw/z+z1VwWZzSL1gY2i/nhBCgMMYYK0bkA==
X-Google-Smtp-Source: ABdhPJxIkeyXQgr2RjDz+Fdqr8SFf0tWfYwVoVP+bqAKQanI2R9WPvmPQwdFrmcG6n4TNjVSlKN1DA==
X-Received: by 2002:a05:620a:1339:: with SMTP id p25mr16601825qkj.491.1625619723644;
        Tue, 06 Jul 2021 18:02:03 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id z6sm7684556qke.24.2021.07.06.18.02.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 18:02:03 -0700 (PDT)
Message-ID: <60E4FD0A.5060505@gmail.com>
Date: Tue, 06 Jul 2021 21:02:02 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFPzw1mYm5sw=S=3_N-sNot1bLqr7K9oY5toybwzf8jYod7-Vg@mail.gmail.com> <CAFPzw1=vHMnS-YP32hCpJWh_nx=Mm+fnSNfKYe1bOxSfutfL=Q@mail.gmail.com>
In-Reply-To: <CAFPzw1=vHMnS-YP32hCpJWh_nx=Mm+fnSNfKYe1bOxSfutfL=Q@mail.gmail.com>
Message-ID-Hash: RENOVL4FY5U7CIUMSFIUIWDHST6HSDKA
X-Message-ID-Hash: RENOVL4FY5U7CIUMSFIUIWDHST6HSDKA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Continuos time acquisition
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RENOVL4FY5U7CIUMSFIUIWDHST6HSDKA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1336298699530050049=="

This is a multi-part message in MIME format.
--===============1336298699530050049==
Content-Type: multipart/alternative;
 boundary="------------040805010604020902010900"

This is a multi-part message in MIME format.
--------------040805010604020902010900
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/06/2021 05:03 PM, Anabel Almodovar wrote:
'
Without more details about your code structure, it's really hard to=20
comment on what might be going wrong with it.

I WILL comment that rx_samples_to_file is JUST AN EXAMPLE, and in=20
particular it's not optimized at all for
   recording high-sample rates across multiple channels.  NONE of the=20
example programs are represented as
   being "ready to use" for any *particular* application, and making=20
them work for *your* application may require
   significant additions and structural changes.  They serve largely to=20
show how the UHD API can be used--they cannot
   be used as a deep guide to building high-performance, real-time, DSP=20
applications.  There's some notion that you might
   already know how to do that.

The version of Ubuntu you're using is VERY VERY VERY out-of-date--which=20
version of UHD are you using?

The radios really have little to do with performance on your host--they=20
don't know whether you're streaming the samples to
   a file, or e-mailing them to your cousin.   Their job is to stream=20
samples at the desired sample-rate towards the host--it's
   up to the host (and its software) to "keep up".   UHD has been=20
rigorously optimized to be good at that task but it is not
   a general-purpose DSP programming environment--it's just, to a first=20
approximation, a device driver.

You might consider looking at Gnu Radio, which already does a lot of the=20
buffer and thread management that you'd
   inevitably have to program yourself if you weren't using Gnu Radio.

But again, without having MORE SPECIFIC details of your code structure,=20
it's impossible to give any meaningful comment
   on why you may be running into performance issues.  You also haven't=20
mentioned things like sample-rates, whether you have
   SSDs, whether they're configured into some kind of RAID array for=20
high performance, etc.

Streaming 8 channels at significant sample rates into even an SSD array=20
is a *very demanding* task, and some amount of
   system tuning will nearly always be necessary.
>
>
> ---------- Forwarded message ---------
> De: *Anabel Almodovar* <anabel.almodovar@gmail.com=20
> <mailto:anabel.almodovar@gmail.com>>
> Date: jue, 24 jun 2021 a las 12:49
> Subject: Continuos time acquisition
> To: Ettus Research Support <support@ettus.com <mailto:support@ettus.com=
>>
>
>
> I am working with two X310 boards equipped with two TwinRx each. They=20
> are connected to a host via a dual 10GB Ethernet interface (MTU 9000).=20
> My environment consists of Ubuntu 16.04 LTS, with 125.6 GiB RAM and a=20
> processor with CPU @ 2.20GHz x 40.
>
> I am trying to do continuous time acquisitions by modifying the=20
> rx_samples_to_file.cpp example so that it can acquire 8 channels.=20
> However, the results obtained are not what I expected as a lot of time=20
> is wasted between buffers.
>
> I have tried to increase the acquisition time so that it is saved in a=20
> file every so often, that is, that it acquires 1s and saves, and when=20
> it finishes saving, it acquires 1s again, following this cycle the=20
> times indicated. However, although at the beginning the time between=20
> each burst start is constant, there comes a point where these times=20
> begin to increase considerably due to the time it takes to save the=20
> file. In this case it is not clear to me if the problem is due to the=20
> boards or caused by the host.
>
> Is there another way to be able to carry out an acquisition in=20
> continuous time losing the least number of samples possible?
>
> On the other hand, I have noticed that one of the cards begins to emit=20
> a strange noise, like a beep, when it has been on for a while.=20
> Although this only happens sometimes I am a little bit worried. What=20
> could be the cause?
>
> I hope you can help me.
>
> Thanks in advance.
>
> Regards,
>
> Anabel Almod=F3var Hern=E1ndez
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------040805010604020902010900
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/06/2021 05:03 PM, Anabel
      Almodovar wrote:<br>
      '<br>
      Without more details about your code structure, it's really hard
      to comment on what might be going wrong with it.<br>
      <br>
      I WILL comment that rx_samples_to_file is JUST AN EXAMPLE, and in
      particular it's not optimized at all for<br>
      =A0 recording high-sample rates across multiple channels.=A0 NONE o=
f
      the example programs are represented as<br>
      =A0 being "ready to use" for any *particular* application, and
      making them work for *your* application may require<br>
      =A0 significant additions and structural changes.=A0 They serve
      largely to show how the UHD API can be used--they cannot<br>
      =A0 be used as a deep guide to building high-performance, real-time=
,
      DSP applications.=A0 There's some notion that you might<br>
      =A0 already know how to do that.<br>
      <br>
      The version of Ubuntu you're using is VERY VERY VERY
      out-of-date--which version of UHD are you using?<br>
      <br>
      The radios really have little to do with performance on your
      host--they don't know whether you're streaming the samples to<br>
      =A0 a file, or e-mailing them to your cousin.=A0=A0 Their job is to
      stream samples at the desired sample-rate towards the host--it's<br=
>
      =A0 up to the host (and its software) to "keep up".=A0=A0 UHD has b=
een
      rigorously optimized to be good at that task but it is not<br>
      =A0 a general-purpose DSP programming environment--it's just, to a
      first approximation, a device driver.<br>
      <br>
      You might consider looking at Gnu Radio, which already does a lot
      of the buffer and thread management that you'd<br>
      =A0 inevitably have to program yourself if you weren't using Gnu
      Radio.<br>
      <br>
      But again, without having MORE SPECIFIC details of your code
      structure, it's impossible to give any meaningful comment<br>
      =A0 on why you may be running into performance issues.=A0 You also
      haven't mentioned things like sample-rates, whether you have<br>
      =A0 SSDs, whether they're configured into some kind of RAID array
      for high performance, etc.<br>
      <br>
      Streaming 8 channels at significant sample rates into even an SSD
      array is a *very demanding* task, and some amount of<br>
      =A0 system tuning will nearly always be necessary.=A0 <br>
    </div>
    <blockquote
cite=3D"mid:CAFPzw1=3DvHMnS-YP32hCpJWh_nx=3DMm+fnSNfKYe1bOxSfutfL=3DQ@mai=
l.gmail.com"
      type=3D"cite">
      <div dir=3D"ltr"><br>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded mess=
age
            ---------<br>
            De: <strong class=3D"gmail_sendername" dir=3D"auto">Anabel
              Almodovar</strong> <span dir=3D"auto">&lt;<a
                moz-do-not-send=3D"true"
                href=3D"mailto:anabel.almodovar@gmail.com">anabel.almodov=
ar@gmail.com</a>&gt;</span><br>
            Date: jue, 24 jun 2021 a las 12:49<br>
            Subject: Continuos time acquisition<br>
            To: Ettus Research Support &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:support@ettus.com">support@ettus.com</a>&gt;=
<br>
          </div>
          <br>
          <br>
          <div dir=3D"ltr">
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">I am
                working with two X310 boards equipped with two TwinRx
                each. They are connected
                to a host via a dual 10GB Ethernet interface (MTU 9000).
                My environment
                consists of Ubuntu 16.04 LTS, with 125.6 GiB RAM and a
                processor with CPU @
                2.20GHz x 40.</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">I am trying
                to do continuous time acquisitions by modifying the
                rx_samples_to_file.cpp
                example so that it can acquire 8 channels. However, the
                results obtained are
                not what I expected as a lot of time is wasted between
                buffers.</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">I have
                tried to increase the acquisition time so that it is
                saved in a file every so
                often, that is, that it acquires 1s and saves, and when
                it finishes saving, it
                acquires 1s again, following this cycle the times
                indicated. However, although
                at the beginning the time between each burst start is
                constant, there comes a
                point where these times begin to increase considerably
                due to the time it takes
                to save the file. In this case it is not clear to me if
                the problem is due to
                the boards or caused by the host.</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">Is there
                another way to be able to carry out an acquisition in
                continuous time losing
                the least number of samples possible?</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">On the
                other hand, I have noticed that one of the cards begins
                to emit a strange
                noise, like a beep, when it has been on for a while.
                Although this only happens
                sometimes I am a little bit worried. What could be the
                cause?</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">=A0</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">I hope you
                can help me.</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">Thanks in
                advance.</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">Regards,</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm 0cm
              8pt;line-height:107%;font-size:11pt;font-family:Calibri,san=
s-serif"><span
                lang=3D"EN-US">Anabel Almod=F3var Hern=E1ndez</span></p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040805010604020902010900--

--===============1336298699530050049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1336298699530050049==--
