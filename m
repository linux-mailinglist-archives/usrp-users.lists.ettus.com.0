Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF28742925
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:10:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0A183846A6
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 11:10:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688051407; bh=GCb2JoyXj/ncQB1N6qFa+NN/y0z4tknlRBSqut+++Xo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BmJxrHqtTwDoJ6LSB0nQHTDELHRlE3hatMU0EX6MNPW5MS1TRT/oqMgROEODllnnO
	 VgIIfZZFtrOhavdDN4SNYFjY/ZT6i9cHAe+yIW/QdElNNgrwLNba9D9u8SpZtHyFYp
	 m7elIYzd1taKZ05UVEdGLl2NocrAVJvOeR4kL7FPvGih3+eQoQQuvF4UBm3f3GYw+n
	 8ovFq+lSIobzB/A5vv4bXKM9sFPEYa8O6Cv/p7E6WyYaH42K3HquRV1HJxWUMfzTd0
	 pqPZbtXtuKf81cScz769T5Yq0eblKjZJiULkt+Y/eZdiqEqGToJnXJt0MwXdThXx6T
	 xvTMaPMsMS1mQ==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 40EA6380CC3
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:09:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DIF6uHZ6";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-765a5f7abc6so72761785a.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 08:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688051351; x=1690643351;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loRHwkGjaWOIVMw7y8yqm2NVXQfuRdvfA9kQNRJvrI4=;
        b=DIF6uHZ6KkJgJCQuD9F47Tk4gUM3JPBM7Z4zeFDUM69QS/BEc2NQndLNDNf+4h5gI5
         m9eJW8jUK3CX5ssO92WsALEwTUpvmqV2p5AzvIEhzvT7wgr0bA9E7JZZvkOF4J5cAfyy
         eatKx3XNAAUg/lponifnTJ808Vs3q2Y+cNmvGNPZU3zZFvk4gLwlKXFK0m6/uJ8bo3at
         1qXt1pzNuaRSYyOpAnCVI7AbFCIqHBgm0v21NJLFrTDcZDk8r0ndy2kwEjAUGSRQyqgJ
         JEFm09MEFy2j/0P2eWsQ5TzmX98VrJxRedvZc77jVhfCyg0eHqB1XTog6lN+P83AW4Jh
         5g2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688051351; x=1690643351;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=loRHwkGjaWOIVMw7y8yqm2NVXQfuRdvfA9kQNRJvrI4=;
        b=Gq0F+wIDLDw+sRo8KqZ4pnZRFqvrEb/sQRniGYOy11wCGpoZ+iY4pLzH/Lo86+eL2k
         Lnz9vQBgpCyW5n9QOyQKaUpIt9cTDJXSyukfVevMIXqOflwcrAr7QRYaBxUFaB+ncMPv
         WkrhSTPgBEdFWahP0RiJrXITCWO77i5KFBCvcdBzA8h64njDBReufAvTsLbF2Fgu4DYd
         MW22iXIl0e5uyoKLD4UudVuGp3lfcKyScsu3SB3Xe9MXjylXRPVJ71Y4Ykczse1oxeTb
         OANwjfCUL5RGjm94GQ2j99aw9BT3IKuUoREU6Z8yVT0pI3TgR1cixKLuhX9qupWAEolL
         41+g==
X-Gm-Message-State: AC+VfDyUqfr5SA6W/lW3R1g8llb4QyKwFU7zzxB/SeqtlJknkENX7WvK
	RMsoGQfKadwYClZC/TQf5HehDENbdNU=
X-Google-Smtp-Source: ACHHUZ4llalwT+yDZRZ2339Lpca/K3gUFU/AQEuYqmR5L2+J5nwuSG7ak9Q7Ms/QyL6l5QuyblYwBQ==
X-Received: by 2002:a05:622a:1394:b0:403:2791:58a0 with SMTP id o20-20020a05622a139400b00403279158a0mr5909126qtk.7.1688051351352;
        Thu, 29 Jun 2023 08:09:11 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id d16-20020ac85350000000b003f6a607cf22sm3721832qto.84.2023.06.29.08.09.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 08:09:11 -0700 (PDT)
Message-ID: <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
Date: Thu, 29 Jun 2023 11:09:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
 <1346881245.172465.1688045768643@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1346881245.172465.1688045768643@mail.yahoo.com>
Message-ID-Hash: AZ7W6DA3CGYF3S6BC56ABVYE7CLIGKZ6
X-Message-ID-Hash: AZ7W6DA3CGYF3S6BC56ABVYE7CLIGKZ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZ7W6DA3CGYF3S6BC56ABVYE7CLIGKZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4634052296637415931=="

This is a multi-part message in MIME format.
--===============4634052296637415931==
Content-Type: multipart/alternative;
 boundary="------------4kI0zbzHBr0MDEeuzxyLRwLh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4kI0zbzHBr0MDEeuzxyLRwLh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/06/2023 09:36, zhou via USRP-users wrote:
> Hello All,
>
> I am using X310 USRPs. I did a loopback test with this USRP, that is,=20
> Tx was connected to Rx (with a 20dB attenuator between them). This is=20
> for checking the channel status.
> In my test, Tx is free running without stop, and Rx is occasional.=20
> Both transmission and capture are time-based, that is, signals are=20
> transmitted at specified time, and capture starts at specified time.
>
> Master clock rate: 184.32MHz
> Sampling rate: 184.32MHz
>
> Using the captured signals, I can calculate the channel coefficient. A=20
> few captures were made.
>
> I expected constant channel because it was cable connection and it was=20
> in the same USRP, but I found that the constellations of the pilot=20
> signals rotated when comparing different captures. I think this can be=20
> caused by the phase difference between Tx LO and Rx LO, but not sure.
>
> Questions:
> 1. are there independent LOs for Tx and Rx in a USRP?
Yes.=C2=A0=C2=A0 In fact, in any realistic on-the-air scenario, your RX a=
nd TX=20
will never be phase aligned, or even phase-coherent.

> 2. Is the Rx LO on and off in test, that is, it starts when capture=20
> starts and stops when capture is completed? So, the LO phase offset=20
> between Tx and Rx is random?
I would expect the RX LO phase to random with respect to the TX every=20
time you start/stop the RX.


>
> Any feedback will be highly appreciated.
>
> Kind regards,
> Hongwei
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------4kI0zbzHBr0MDEeuzxyLRwLh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/06/2023 09:36, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1346881245.172465.1688045768643@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpf2fa5bb3yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div id=3D"ydpf2fa5bb3yiv3133820541">
          <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,
            sans-serif;font-size:13px;"
            class=3D"ydpf2fa5bb3yiv3133820541ydp6f909a1ayahoo-style-wrap"=
>
            <div dir=3D"ltr">Hello All,</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I am using X310 USRPs.=
 I
              did a loopback test with this USRP, that is, Tx was
              connected to Rx (with a 20dB attenuator between them).
              This is for checking the channel status.</div>
            <div dir=3D"ltr" data-setdir=3D"false">In my test, Tx is free
              running without stop, and Rx is occasional. Both
              transmission and capture are time-based, that is, signals
              are transmitted at specified time, and capture starts at
              specified time.</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Master clock rate:
              184.32MHz</div>
            <div dir=3D"ltr" data-setdir=3D"false">Sampling rate: 184.32M=
Hz</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Using the captured
              signals, I can calculate the channel coefficient. A few
              captures were made.</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I expected constant
              channel because it was cable connection and it was in the
              same USRP, but I found that the constellations of the
              pilot signals rotated when comparing different captures. I
              think this can be caused by the phase difference between
              Tx LO and Rx LO, but not sure.</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Questions:</div>
            <div dir=3D"ltr" data-setdir=3D"false">1. are there independe=
nt
              LOs for Tx and Rx in a USRP?</div>
          </div>
        </div>
      </div>
    </blockquote>
    Yes.=C2=A0=C2=A0 In fact, in any realistic on-the-air scenario, your =
RX and TX
    will never be phase aligned, or even phase-coherent.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1346881245.172465.1688045768643@mail.yahoo.com">
      <div class=3D"ydpf2fa5bb3yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div id=3D"ydpf2fa5bb3yiv3133820541">
          <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,
            sans-serif;font-size:13px;"
            class=3D"ydpf2fa5bb3yiv3133820541ydp6f909a1ayahoo-style-wrap"=
>
            <div dir=3D"ltr" data-setdir=3D"false">2. Is the Rx LO on and
              off in test, that is, it starts when capture starts and
              stops when capture is completed? So, the LO phase offset
              between Tx and Rx is random? <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I would expect the RX LO phase to random with respect to the TX
    every time you start/stop the RX.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1346881245.172465.1688045768643@mail.yahoo.com">
      <div class=3D"ydpf2fa5bb3yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div id=3D"ydpf2fa5bb3yiv3133820541">
          <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,
            sans-serif;font-size:13px;"
            class=3D"ydpf2fa5bb3yiv3133820541ydp6f909a1ayahoo-style-wrap"=
>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Any feedback will be
              highly appreciated.</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div>
            <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
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

--------------4kI0zbzHBr0MDEeuzxyLRwLh--

--===============4634052296637415931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4634052296637415931==--
