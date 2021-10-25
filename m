Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 606EC439C5D
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 19:00:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2834383F1B
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 13:00:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hAg4LcvY";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 67D48383C0B
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 12:59:59 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id t16so10909146qto.5
        for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 09:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=lCT7+Gcp1XN3DxuSHCzfOBMjFFBglePWQsJ+TXpjGNo=;
        b=hAg4LcvYp5CMsUCsbIzawEtQaTfxexwGrwjiw8k1cr4MjQdsO8cxiDr332i1v/+SUC
         2ZsnrlvujZ7Y1aBLrcKyz47ZCw387p8tNxsVgr28aV94O6DEuFsSFbvYE2lf8CUHMpvx
         sMtSegQUD/EUnYJhPoBD2VTscHwWprVPCS1avytUxd08hz1hDheVy5knG0SYMGXvahKz
         +1UB2WQDiEePsYDtRztchZqC+IBtYttVDTnSyU4mwAWE8Z18f0eYnqLycs5p+Ih6q8fq
         At/WRt2HdOEUtBuZVDBICFcon9tPIttJGV33Quxb3A0yvNF193Uo9qXFnFnm8lmisfb1
         eYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=lCT7+Gcp1XN3DxuSHCzfOBMjFFBglePWQsJ+TXpjGNo=;
        b=3DlqGyyjeKp3JQMDjK0tGtVB50kJ3E6EN60CKegohUl0kWXi/W4vBUXi6j9iSlv728
         gh1ahIauaaPnY5Upe3X3/AIU4ZoQwHe8/JcuuJ8G2T8HS43M4SMNPkRHnd8m0uQCzySJ
         U/F5YRgMH5Pq8R4wrQjlY9WXJ6vESnBXmggiK5eUkBLRE8wDdRW3VYY08i8wpZZbyYM9
         kwwlI0CRfpK3ObiAv6SYkxxt6QfDfHxbt3Gu8jUUgA1yQhccWM1Ln6rzWK+BOGdlndMF
         WrJDWnquXwwlz5j0sMR/zoUlmyjPLj4nB8HjrAgHQ9azYQfophRGy10r2YrJtjV57rQZ
         HYGQ==
X-Gm-Message-State: AOAM5338i16NyPBwvR2wRCT2h6NMfJLeWi8+ZwyMBwBuOIqY7itwlY46
	jd/9lSEx3gJCcUz2s/DaJkl6RN2Jkvo=
X-Google-Smtp-Source: ABdhPJy2BBV/GC0BH+3yUWk8HE8B0uNYEzy8NgD9Pd2nb4sybXdNXnss0gQkeuiIBxwZMqHriqUWBg==
X-Received: by 2002:a05:622a:11c5:: with SMTP id n5mr18689928qtk.232.1635181198726;
        Mon, 25 Oct 2021 09:59:58 -0700 (PDT)
Received: from [192.168.2.245] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id ay32sm9456154qkb.66.2021.10.25.09.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 09:59:58 -0700 (PDT)
Message-ID: <744837fd-07f2-fe23-6db6-7083981e21cb@gmail.com>
Date: Mon, 25 Oct 2021 12:59:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Anabel Almodovar <anabel.almodovar@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAFPzw1nzRMv8TE646YevYzp_74m2yUPvaYBGFkbf6R6ms=Hgdg@mail.gmail.com>
 <16d36d0a-dc21-073c-e1d1-050998893b6c@gmail.com>
 <CAFPzw1maXKTKHiCWkCnAuS+gSttU5fM-hFumAZjYwmXvTrAHNg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1maXKTKHiCWkCnAuS+gSttU5fM-hFumAZjYwmXvTrAHNg@mail.gmail.com>
Message-ID-Hash: 2CVIEBJS3EIIU3IPNIK2GCELNCLCXMBD
X-Message-ID-Hash: 2CVIEBJS3EIIU3IPNIK2GCELNCLCXMBD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2CVIEBJS3EIIU3IPNIK2GCELNCLCXMBD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0232068703001552878=="

This is a multi-part message in MIME format.
--===============0232068703001552878==
Content-Type: multipart/alternative;
 boundary="------------WEtPLS0Icoqtgt24GZITfe0D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WEtPLS0Icoqtgt24GZITfe0D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-25 10:34, Anabel Almodovar wrote:
Anabel:

Please continue to copy our correspondence to the usrp-users mailing=20
list.=C2=A0 It makes it easier to track, and people other than me can oft=
en have
 =C2=A0 insights into problems as well.

What version of the FPGA image are you using?=C2=A0 This is on an X310?

https://files.ettus.com/manual_archive/release_003_010_001_000/html/page_=
usrp_x3x0.html



What does 'ethtool' tell you about your ethernet interfaces--are they=20
indeed running at 10GiG?

Have you modified the interfaces to operate with an MTU of 9000?


> Hello,
>
> Because I am using a UBX I would like to use 200Msps, but I have=20
> already got overflows with 25Msps.
> Right now I am using one X310 with two UBX so I only use two RX=20
> channels. And I use a double 10 GB Eth interface for the connection.
> The information of my Ethernet connector is the follow:
>
> imagen.png
>
> The Ubuntu version is 20.04. After updating the system I used Ubuntu=20
> 16.04 LTS and the USRPs works correctly, so I don't really know what=20
> is happening.
>
> Thank you in advance for your help.
>
> Regards,
> Anabel
>
>
>
> El mar, 19 oct 2021 a las 15:10, Marcus D. Leech=20
> (<patchvonbraun@gmail.com>) escribi=C3=B3:
>
>     On 2021-10-19 3:22 a.m., Anabel Almodovar wrote:
>     >
>     >
>     > I also attach the gnuradio error, where I no longer get the
>     lo_loked
>     > error but I still have the same problem regarding overflows and
>     streamer.
>     >
>     > Generating: '/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py'
>     >
>     > Executing: /usr/bin/python3 -u
>     > /home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py
>     >
>     > (python3:2681): Gtk-WARNING **: 12:02:08.964: GTK+ module
>     > /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libgail.so cannot be
>     loaded.
>     > GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in the same
>     > process is not supported.
>     > Gtk-Message: 12:02:08.965: Not loading module "atk-bridge": The
>     > functionality is provided by GTK natively. Please try to not
>     load it.
>     >
>     > (python3:2681): Gtk-WARNING **: 12:02:09.043: GTK+ module
>     > /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libcanberra-gtk-module.=
so
>     > cannot be loaded.
>     > GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in the same
>     > process is not supported.
>     > Gtk-Message: 12:02:09.043: Failed to load module
>     "canberra-gtk-module"
>     >
>     > (python3:2681): Gtk-WARNING **: 12:02:09.044: GTK+ module
>     > /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libcanberra-gtk-module.=
so
>     > cannot be loaded.
>     > GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in the same
>     > process is not supported.
>     > Gtk-Message: 12:02:09.044: Failed to load module
>     "canberra-gtk-module"
>     > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>     > UHD_4.1.0.HEAD-0-gd21735d5
>     > [INFO] [X300] X300 initialization sequence...
>     > [INFO] [X300] Maximum frame size: 8000 bytes.
>     > [INFO] [X300] Maximum frame size: 8000 bytes.
>     > [INFO] [X300] Radio 1x clock: 200 MHz
>     > [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>     > [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>     > Dgr::log :ERROR: usrp_source0 - In the last 2521 ms, 35974177
>     > overflows occurred.
>     > Dgr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
>     > ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     > [ERROR] [STREAMER] The rx streamer failed to time-align packets.
>     >
>     > Thank you in advance.
>     > Anabel
>     >
>     The fact that you're getting so very many overruns mans that your
>     computer isn't able to keep up with the flow of samples from the
>     device.
>
>     What sample rate are you using?=C2=A0=C2=A0=C2=A0 How many channels=
?=C2=A0=C2=A0 Are you
>     using a
>     10GiGe interface?=C2=A0 What type of 10GiGe interface?
>
>     Performance changes across OS versions can be dramatic and subtle t=
o
>     debug.=C2=A0 What version of Ubuntu are you now using?
>
>

--------------WEtPLS0Icoqtgt24GZITfe0D
Content-Type: multipart/related;
 boundary="------------iYKj90Jb4gd0wm5KNWQlVfJB"

--------------iYKj90Jb4gd0wm5KNWQlVfJB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-25 10:34, Anabel Almodovar
      wrote:<br>
      Anabel:<br>
      <br>
      Please continue to copy our correspondence to the usrp-users
      mailing list.=C2=A0 It makes it easier to track, and people other t=
han
      me can often have<br>
      =C2=A0 insights into problems as well.<br>
      <br>
      What version of the FPGA image are you using?=C2=A0 This is on an
      X310?=C2=A0 <br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
_archive/release_003_010_001_000/html/page_usrp_x3x0.html">https://files.=
ettus.com/manual_archive/release_003_010_001_000/html/page_usrp_x3x0.html=
</a><br>
      <br>
      <br>
      <br>
      What does 'ethtool' tell you about your ethernet interfaces--are
      they indeed running at 10GiG?<br>
      <br>
      Have you modified the interfaces to operate with an MTU of 9000?<br=
>
      <br>
      <br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1maXKTKHiCWkCnAuS+gSttU5fM-hFumAZjYwmXvTrAHNg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>Because I am using a UBX I would like to use 200Msps, but I
          have already got overflows with 25Msps.</div>
        <div>Right now I am using one X310 with two UBX so I only use
          two RX channels. And I use a double 10 GB Eth interface for
          the connection.</div>
        <div>The information of my Ethernet connector is the follow:</div=
>
        <div><br>
        </div>
        <div><img src=3D"cid:part1.zUGnLzjF.Sf3O98Ob@gmail.com"
            alt=3D"imagen.png" class=3D"" width=3D"538" height=3D"76"><br=
>
        </div>
        <div><br>
        </div>
        <div>The Ubuntu version is 20.04. After updating the system I
          used Ubuntu 16.04 LTS and the USRPs works correctly, so I
          don't really know what is happening. <br>
        </div>
        <div><br>
        </div>
        <div>Thank you in advance for your help.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Anabel<br>
        </div>
        <div> =C2=A0 <br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mar, 19 oct 2021 a las
          15:10, Marcus D. Leech (&lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2021-10-19 3:22 a.m., Anabel Almodovar wrote:<br>
          &gt;<br>
          &gt;<br>
          &gt; I also attach the gnuradio error, where I no longer get
          the lo_loked <br>
          &gt; error but I still have the same problem regarding
          overflows and streamer.<br>
          &gt;<br>
          &gt; Generating:
          '/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py'<br>
          &gt;<br>
          &gt; Executing: /usr/bin/python3 -u <br>
          &gt; /home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py<br>
          &gt;<br>
          &gt; (python3:2681): Gtk-WARNING **: 12:02:08.964: GTK+ module
          <br>
          &gt; /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libgail.so
          cannot be loaded.<br>
          &gt; GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in
          the same <br>
          &gt; process is not supported.<br>
          &gt; Gtk-Message: 12:02:08.965: Not loading module
          "atk-bridge": The <br>
          &gt; functionality is provided by GTK natively. Please try to
          not load it.<br>
          &gt;<br>
          &gt; (python3:2681): Gtk-WARNING **: 12:02:09.043: GTK+ module
          <br>
          &gt;
          /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libcanberra-gtk-modul=
e.so
          <br>
          &gt; cannot be loaded.<br>
          &gt; GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in
          the same <br>
          &gt; process is not supported.<br>
          &gt; Gtk-Message: 12:02:09.043: Failed to load module
          "canberra-gtk-module"<br>
          &gt;<br>
          &gt; (python3:2681): Gtk-WARNING **: 12:02:09.044: GTK+ module
          <br>
          &gt;
          /usr/lib/x86_64-linux-gnu/gtk-2.0/modules/libcanberra-gtk-modul=
e.so
          <br>
          &gt; cannot be loaded.<br>
          &gt; GTK+ 2.x symbols detected. Using GTK+ 2.x and GTK+ 3 in
          the same <br>
          &gt; process is not supported.<br>
          &gt; Gtk-Message: 12:02:09.044: Failed to load module
          "canberra-gtk-module"<br>
          &gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
          <br>
          &gt; UHD_4.1.0.HEAD-0-gd21735d5<br>
          &gt; [INFO] [X300] X300 initialization sequence...<br>
          &gt; [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          &gt; [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
          &gt; [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
          Skipping.<br>
          &gt; [WARNING] [0/Radio#1] Attempting to set tick rate to 0.
          Skipping.<br>
          &gt; Dgr::log :ERROR: usrp_source0 - In the last 2521 ms,
          35974177 <br>
          &gt; overflows occurred.<br>
          &gt; Dgr::log :WARN: usrp_source0 - USRP Source Block caught
          rx error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; gr::log :WARN: usrp_source0 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt; [ERROR] [STREAMER] The rx streamer failed to time-align
          packets.<br>
          &gt;<br>
          &gt; Thank you in advance.<br>
          &gt; Anabel<br>
          &gt;<br>
          The fact that you're getting so very many overruns mans that
          your <br>
          computer isn't able to keep up with the flow of samples from
          the device.<br>
          <br>
          What sample rate are you using?=C2=A0=C2=A0=C2=A0 How many chan=
nels?=C2=A0=C2=A0 Are
          you using a <br>
          10GiGe interface?=C2=A0 What type of 10GiGe interface?<br>
          <br>
          Performance changes across OS versions can be dramatic and
          subtle to <br>
          debug.=C2=A0 What version of Ubuntu are you now using?<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------iYKj90Jb4gd0wm5KNWQlVfJB
Content-Type: image/png; name="imagen.png"
Content-Disposition: inline; filename="imagen.png"
Content-Id: <part1.zUGnLzjF.Sf3O98Ob@gmail.com>
Content-Transfer-Encoding: base64

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
--------------iYKj90Jb4gd0wm5KNWQlVfJB--

--------------WEtPLS0Icoqtgt24GZITfe0D--

--===============0232068703001552878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0232068703001552878==--
