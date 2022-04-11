Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 171264FBF67
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 16:42:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28782384CE1
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 10:42:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649688141; bh=MT/PcYojmag96J/F12H4jQqTs6EElIFwqhZ3XdznE/Q=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YKDBF+o9IJkVgIAaWhH4mw8y3cRA4rHVPs5uvoUllxVlP/eXNqu3FP5IboxgBdOFI
	 PgCtOZ2T7bkORM14jx/kSh7489sFr4jGjXAhyp+Qz5cZrz4qZYEx8uVo/Y9WD2Q89I
	 Lb2xBKpbdY0EAjfFyvuObAjcdzzJw2Lp8JVsgMe9HPF6lo5HeTAl8tYRUmTllNnb9H
	 Wcs8t09JwtNaN0FCbl5jA5UwjFB46n/PxylEu3jWbadlQpwzdAoQYh0Gm+UDiD0Agm
	 S517oBvGSWHs4Lfs1ue55IV13Q4wyW3/8JbShLGvifaeYjYcaW9pNCweoF56T2/nK9
	 HcS64Ua+7GVTQ==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 59EE038472C
	for <usrp-users@lists.ettus.com>; Mon, 11 Apr 2022 10:41:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ecYcojSA";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id e10so9153260qka.6
        for <usrp-users@lists.ettus.com>; Mon, 11 Apr 2022 07:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=xECscrWXhCSJP7USAdIfAxZGXEXRDt+JGcJaYfT55Kk=;
        b=ecYcojSALvJA/EZ2zAY/2FoNF25Se/xhgplECB0eGGg+Yi/lKNRX8Q+oKIotqvJpbo
         3lyh17a2KCOQYSrbXxA7PpN2JG2+LJlJK4B3XBZd1ADKKeiiRwjOpGGsW7jyZ8kDRwgx
         oHTzy1oP5j0PcRwlmfUQdOWz5eHjzbNW6QCnxxlf1e4d29DKN1++P/wiGRz2GBGqD3+U
         qgZE8vbtC3b6+rCq9W60hzj2fmr7UtQBM/iiaonf8Q5RcMa+idyz5OJJSN5DKpyyZepv
         UGvw1eol5SSygIPKOOwTCROmGZ8XQSGVMpNhqCEYD37IRIGr1ogNcZfyL82OCCUTs/n7
         bIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=xECscrWXhCSJP7USAdIfAxZGXEXRDt+JGcJaYfT55Kk=;
        b=suJ7vJ6lPyUFo7CY2C1DvrWfQXs9i5aAfyyduDHvbD4qUeDHceAV2vAHA2/o93S3Sl
         PCEFt/F9Fu+XhStiG1p0YtpM6fqoZxtA9PiktUPUTebM9p+UuqQcf1F2gqPeic1UZTen
         ZC93fGGdSMThnLGeVc+8n90beokV3G8PimvMwUir7g9FEgEiA6TIEcy+LTAsuj4q8m/s
         XwuX4azsn0Gz9217PmVybdq8BjJl4LoC3g80d/ztnIIYF9OmF/0nUCMKYDAhBD6u+QQC
         Uq7awQcYNHN4i8472yd0tgvcUIJ2ZrwxiJP5kZiSm1gyqle5kKxlSe8iKDkGk5SlAPz9
         2/fQ==
X-Gm-Message-State: AOAM533/JQl1qOdv+j+EEB/4Uae/tiJfjeN4lva5tTuZpo9LxCX/G3BK
	EWMB0i7xqtV3rMLF0l13heI=
X-Google-Smtp-Source: ABdhPJx5IzNerMFwT/Q0hunfsww4gskO2xE0Hl+Z4jflPqhycghG7jAA8+LQkpXAKduAryBRaogwVg==
X-Received: by 2002:a05:620a:ed3:b0:69c:32dc:2bf8 with SMTP id x19-20020a05620a0ed300b0069c32dc2bf8mr1294538qkm.90.1649688085484;
        Mon, 11 Apr 2022 07:41:25 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id s13-20020a05620a0bcd00b0067afe7dd3ffsm21176704qki.49.2022.04.11.07.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Apr 2022 07:41:24 -0700 (PDT)
Message-ID: <d26108e4-71ac-adb4-cec2-a3e6eb51b60e@gmail.com>
Date: Mon, 11 Apr 2022 10:41:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
References: <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
 <d9c10d82-d370-4834-7b5f-ccd7968fde10@gmail.com>
 <AS4P250MB0799C4E57A7437C20CFFED3D9BEA9@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AS4P250MB0799C4E57A7437C20CFFED3D9BEA9@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: 5JT73MKUIEZQE67ZOMS4UT2XKGTPLVBJ
X-Message-ID-Hash: 5JT73MKUIEZQE67ZOMS4UT2XKGTPLVBJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [x410] Frequency Selectivity?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5JT73MKUIEZQE67ZOMS4UT2XKGTPLVBJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0284808243233132985=="

This is a multi-part message in MIME format.
--===============0284808243233132985==
Content-Type: multipart/alternative;
 boundary="------------cpTEE4dARg99v0oDf0uXyrKN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cpTEE4dARg99v0oDf0uXyrKN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-11 07:07, Tobias Kronauer wrote:
> thanks for your prompt reply! Indeed, my description was lacking a bit=20
> of details.
>
> In short:
> - We transmit with 50MHz sample rate and 400MHZ analog bandwidth=20
> (according to RF config setup)
> - We generate a signal that consists of sections with pure (complex)=20
> tones of different frequencies with constant amplitude, ranging from=20
> -25MHz to +25MHz frequency in baseband (-25, -19.5, -14, -8, -3, 3, 8,=20
> 14, 19.5, 25).
> - We receive the signal on the same USRP and plot the time domain of=20
> the TX and RX signal. (first figure row)
> - As visible, already the 8MHz tone is attenuated by around 3dB=20
> compared to the center frequency. Higher frequencies are more=20
> attenuated. This is also visible in the spectrogramm.
>
> We know and expect that the passband of the X410 is not totally flat.=20
> However, we do not expect the passband to be as severely shaped as we=20
> measured. We know we cannot expect the edges to be not attenuated, but=20
> actually we would have expected at least say -20..20MHz to be=20
> relatively flat (for 50MHz sampling rate). Hence we wonder:
>
> - if the problem can be reproduced on your (or other's side)?
> - if the seen behaviour is correct and more flatness cannot be expected=
?
>
> Thank you.
>
> I updated the plot as well.
>
How are you connecting your TX and RX?=C2=A0 Antenna or direct-wired?=C2=A0=
 If=20
direct-wired, make sure that your cable has at least 30dB of attenuation=20
in it and that your TX
 =C2=A0 power levels aren't producing more than about 0dBm at the output.

With a master clock rate of 250MHz, 50Mhz delivered bandwidth requires=20
an odd decimation rate.=C2=A0 This has historically caused a passband=20
response with a half-band
 =C2=A0 "shape" that is like a "hump" as you describe.=C2=A0 I don't know=
 whether=20
this applies to X410 or not.

It REALLY would be helpful for you to plot the RX response using a=20
normal FFT plot--with the gain turned up and a terminator on the RX=20
input, you should be able to see
 =C2=A0 the instrumental response of the device.=C2=A0=C2=A0=C2=A0 The "u=
hd_fft" example=20
code with Gnu Radio produces nice plots for this sort of thing.


--------------cpTEE4dARg99v0oDf0uXyrKN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-11 07:07, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS4P250MB0799C4E57A7437C20CFFED3D9BEA9@AS4P250MB0799.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        thanks for your prompt reply! Indeed, my description was lacking
        a bit of details.
        <div><br>
        </div>
        <div>In short:</div>
        <div>- We transmit with 50MHz sample rate and 400MHZ analog
          bandwidth (according to RF config setup)</div>
        <div>- We generate a signal that consists of sections with pure
          (complex) tones of different frequencies with constant
          amplitude, ranging from -25MHz to +25MHz frequency in baseband
          (-25, -19.5, -14, -8, -3, 3, 8, 14, 19.5, 25).</div>
        <div>- We receive the signal on the same USRP and plot the time
          domain of the TX and RX signal. (first figure row)</div>
        <div>- As visible, already the 8MHz tone is attenuated by around
          3dB compared to the center frequency. Higher frequencies are
          more attenuated. This is also visible in the spectrogramm.</div=
>
        <div><br>
        </div>
        <div>We know and expect that the passband of the X410 is not
          totally flat. However, we do not expect the passband to be as
          severely shaped as we measured. We know we cannot expect the
          edges to be not attenuated, but actually we would have
          expected at least say -20..20MHz to be relatively flat (for
          50MHz sampling rate). Hence we wonder:</div>
        <div><br>
        </div>
        <div>- if the problem can be reproduced on your (or other's
          side)?</div>
        <div>- if the seen behaviour is correct and more flatness cannot
          be expected?</div>
        <div><br>
        </div>
        <span>Thank you</span>.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I updated the plot as well.</div>
      <br>
    </blockquote>
    How are you connecting your TX and RX?=C2=A0 Antenna or direct-wired?=
=C2=A0 If
    direct-wired, make sure that your cable has at least 30dB of
    attenuation in it and that your TX<br>
    =C2=A0 power levels aren't producing more than about 0dBm at the outp=
ut.<br>
    <br>
    With a master clock rate of 250MHz, 50Mhz delivered bandwidth
    requires an odd decimation rate.=C2=A0 This has historically caused a
    passband response with a half-band<br>
    =C2=A0 "shape" that is like a "hump" as you describe.=C2=A0 I don't k=
now
    whether this applies to X410 or not.<br>
    <br>
    It REALLY would be helpful for you to plot the RX response using a
    normal FFT plot--with the gain turned up and a terminator on the RX
    input, you should be able to see<br>
    =C2=A0 the instrumental response of the device.=C2=A0=C2=A0=C2=A0 The=
 "uhd_fft" example
    code with Gnu Radio produces nice plots for this sort of thing.<br>
    <br>
    <br>
  </body>
</html>

--------------cpTEE4dARg99v0oDf0uXyrKN--

--===============0284808243233132985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0284808243233132985==--
