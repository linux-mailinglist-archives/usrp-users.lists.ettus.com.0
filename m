Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C525D84F81F
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 16:06:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C218438502C
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 10:06:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707491191; bh=NK7eAgI0kQYagZLsTIJ01llquUu2HK9eTthfeEvanaY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iVb+FvoFY0XB4LC8ub/cuqtDg7xvGyO/boQyT+9qqVlAZWGsqw6P8HEuYHQ12NZT4
	 VLzQ/eafVPtPkpy5SVsl3wyyydhH+QPyBekkR5okBR+8+Y/bEk9H9W6H7i2NsrKx7a
	 +qaZ8dOoNO/Rha+6aaRwW+INJlzxoMDsw1BWjyutcLjcRLcmyRdaqbtL3F8l5yMj7F
	 jqCicqEuerqCZlq4in+KOwPXY1s+5OYIjQe7ECW0G2aLPh9fIYJxWIie85FA6LbCix
	 0tbWQFHg1puCns/QEpZ5/wY8LxVD+iQYm3gBalCblnV6UjRW20UabHzhUBXpHo9xkj
	 RDqfQLQDqQB0g==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id D4C83384EDB
	for <usrp-users@lists.ettus.com>; Fri,  9 Feb 2024 10:05:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rco8iS9G";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-783d4b3ad96so60700785a.3
        for <usrp-users@lists.ettus.com>; Fri, 09 Feb 2024 07:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707491127; x=1708095927; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vdoaixacq6TilJaPY2murDMDR1Q+yKWMDPPwu+UsYV8=;
        b=Rco8iS9Gkqjjfqs/G9u3sQZo/be8wlqcOsrZu1+FFz4dkmxWNvhiknok5IlPOUvTRs
         xy4oMp5SmTEqIJmvdS3SHVoDUAiHmdPoW4joDXNOMSmLvuJhPLmwlpG4L6q2eiT65x6g
         R9IE+C1oM868MG5LJ11WkWYeZABujU0qGKdu7hVF2rj9qA7fYcHnTDWW5xZhiuqAtP8R
         2tlkMkMF1lN4F+eB2eWlIi30a8rJWJhogHZcM+zzsoXFnBbfJY8D7WoHoxlpnpXC1gPy
         NVhUcrFXpLDHLMy2+0/RdLzlAVLNjuZU/dHOz/Mg6vxkd/EwiRo+rqNj7BS0JB8GNLPf
         6SYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707491127; x=1708095927;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vdoaixacq6TilJaPY2murDMDR1Q+yKWMDPPwu+UsYV8=;
        b=JxhEjuWXUz9TzM+EwFi3phZ4JJWEIdyAVRD3Ys53vgY46pWrcPU2YPz0v05OEokwFp
         7irZEwUMSuXmFVXGB5SBTI/RAwmkDrYN38T4s+E8siXaZ8e6xQPjBeTq730ZdSgK4Zfk
         qkk1ZhGyGDxKx1q0kIEcdK2Dq5BlBYaiOebuLMoFShSmwGus180Gu4aFVyHdx5A9/vjd
         r6rdpYuhDfSjQGsxiG0Si1trSl9rN5xfgXimRUJk4ojwQY7LjXpccO630oCeH8jGj7zd
         9reI2WEtEiXVdyxha24UTj30yrczXLtyyw6CaZvUhCzJUKstKZ4kWgSycPZjoImigbv2
         5KAQ==
X-Gm-Message-State: AOJu0YyLII50qM6jv4VihJjsi3W56j1hyUu8WtrsGgdxFlh/E5FyS7ra
	RVj4MwVC07LNdLI5uO4Bb9Mx7dRGzOSsC3RUtVL01g3KFUr4fKf80Xg/B3IN
X-Google-Smtp-Source: AGHT+IEuGUTP49u8N2n1+mwU3TWwmLGIKdSiRtvdCKXmzwn4sDZCqzK91ngfIH4rqKZ58Mjq0EfA4Q==
X-Received: by 2002:a05:620a:5615:b0:785:a920:1493 with SMTP id vu21-20020a05620a561500b00785a9201493mr2001855qkn.33.1707491127331;
        Fri, 09 Feb 2024 07:05:27 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id l12-20020a05620a28cc00b007858a9032c8sm795419qkp.24.2024.02.09.07.05.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 07:05:27 -0800 (PST)
Message-ID: <b70389b0-ae5c-45d7-9b5e-037cc2637980@gmail.com>
Date: Fri, 9 Feb 2024 10:05:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg@lists.ettus.com>
 <CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmail.com>
Message-ID-Hash: NOWYNQS6TUQHKC6YHQBQMFRBRXSTTJRH
X-Message-ID-Hash: NOWYNQS6TUQHKC6YHQBQMFRBRXSTTJRH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NOWYNQS6TUQHKC6YHQBQMFRBRXSTTJRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2721004439303906264=="

This is a multi-part message in MIME format.
--===============2721004439303906264==
Content-Type: multipart/alternative;
 boundary="------------l1nkoqDcZHGRA3neFW906xOe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------l1nkoqDcZHGRA3neFW906xOe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/02/2024 09:07, Rob Kossler via USRP-users wrote:
> This is fixed in 4.5 and 4.6.=C2=A0 Are you able to switch?
> Rob
I'll add that it's unlikely for the fix to get back-ported to 4.4 at=20
this point.


>
> On Fri, Feb 9, 2024 at 5:04=E2=80=AFAM <speik@hs-bremen.de> wrote:
>
>     Hi,
>
>     I am facing the same problem.
>
>     I am on a Linux machine and hardware is an X300 with a UBX160.
>
>     When I am above 500 MHz the actual carrier freq becomes about 2000
>     MHz smaller.
>
>     I checked it with the uhd example script=C2=A0 tx_waveforms that co=
mes
>     with the uhd install. Below is the output. Note that actual
>     frequency is negative. There is no output at 915 MHz on a spectrum
>     analyzer. Below 500 MHz everything is fine.
>
>     Same happens when using Gnuradio.
>
>     =C2=A0Thanks
>
>     Soren
>
>     -------------------------------------------------------------------=
-----
>
>     $ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0
>
>     Creating the usrp device with: ...
>     [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400;
>     UHD_4.4.0.0+ds1-4
>     [INFO] [X300] X300 initialization sequence...
>     [INFO] [X300] Maximum frame size: 1472 bytes.
>     [INFO] [X300] Radio 1x clock: 200 MHz
>     Using Device: Single USRP:
>     Device: X-Series Device
>     Mboard 0: X300
>     RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>     RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: Unknown (0xffff) - 0
>     TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>     TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: Unknown (0xffff) - 0
>
>     Setting TX Rate: 5.000000 Msps...
>     Actual TX Rate: 5.000000 Msps...
>
>     Setting TX Freq: 915.000000 MHz...
>     Setting TX LO Offset: 0.000000 MHz...
>     Actual TX Freq: -1085.000002 MHz...
>
>     Setting TX Gain: 0.000000 dB...
>     Actual TX Gain: 0.000000 dB...
>
>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>     Setting device timestamp to 0...
>     Checking TX: TXLO: locked ...
>     Press Ctrl + C to stop streaming...
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------l1nkoqDcZHGRA3neFW906xOe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/02/2024 09:07, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">This is fixed in 4.5 and 4.6.=C2=A0 Are you able t=
o
        switch?
        <div>Rob</div>
      </div>
    </blockquote>
    I'll add that it's unlikely for the fix to get back-ported to 4.4 at
    this point.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 9, 2024 at 5:04=
=E2=80=AFAM
          &lt;<a href=3D"mailto:speik@hs-bremen.de" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">speik@hs-bremen.de</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>Hi,</p>
          <p>I am facing the same problem.</p>
          <p>I am on a Linux machine and hardware is an X300 with a
            UBX160.</p>
          <p>When I am above 500 MHz the actual carrier freq becomes
            about 2000 MHz smaller. </p>
          <p>I checked it with the uhd example script=C2=A0 tx_waveforms =
that
            comes with the uhd install. Below is the output. Note that
            actual frequency is negative. There is no output at 915 MHz
            on a spectrum analyzer. Below 500 MHz everything is fine.</p>
          <p>Same happens when using Gnuradio. </p>
          <p>=C2=A0Thanks</p>
          <p>Soren</p>
          <p>=C2=A0</p>
          <div>
            <hr></div>
          <p>$ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0</p>
          <p>Creating the usrp device with: ...<br>
            [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400;
            UHD_4.4.0.0+ds1-4<br>
            [INFO] [X300] X300 initialization sequence...<br>
            [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            [INFO] [X300] Radio 1x clock: 200 MHz<br>
            Using Device: Single USRP:<br>
            Device: X-Series Device<br>
            Mboard 0: X300<br>
            RX Channel: 0<br>
            RX DSP: 0<br>
            RX Dboard: A<br>
            RX Subdev: UBX RX<br>
            RX Channel: 1<br>
            RX DSP: 1<br>
            RX Dboard: B<br>
            RX Subdev: Unknown (0xffff) - 0<br>
            TX Channel: 0<br>
            TX DSP: 0<br>
            TX Dboard: A<br>
            TX Subdev: UBX TX<br>
            TX Channel: 1<br>
            TX DSP: 1<br>
            TX Dboard: B<br>
            TX Subdev: Unknown (0xffff) - 0</p>
          <p>Setting TX Rate: 5.000000 Msps...<br>
            Actual TX Rate: 5.000000 Msps...</p>
          <p>Setting TX Freq: 915.000000 MHz...<br>
            Setting TX LO Offset: 0.000000 MHz...<br>
            Actual TX Freq: -1085.000002 MHz...</p>
          <p>Setting TX Gain: 0.000000 dB...<br>
            Actual TX Gain: 0.000000 dB...</p>
          <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
            Skipping.<br>
            Setting device timestamp to 0...<br>
            Checking TX: TXLO: locked ...<br>
            Press Ctrl + C to stop streaming...</p>
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
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
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

--------------l1nkoqDcZHGRA3neFW906xOe--

--===============2721004439303906264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2721004439303906264==--
