Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A133B45ACFE
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 21:04:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D9F0380FAA
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 15:04:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="LlG1wvsj";
	dkim-atps=neutral
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 44BD238309B
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 15:03:14 -0500 (EST)
Received: by mail-ua1-f45.google.com with SMTP id az37so181293uab.13
        for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 12:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bx6iufBtgMFkFQSb2/2aqRCNZrg1zI/sY1B+CCV+aUY=;
        b=LlG1wvsjBk0WHU8ANlIhf2lI+pSV6z1gMLz66Bc2qiQkj3xUw/s6x+CeRCL5q3xoPs
         QVyqdIvh7D2TxCUJ4BpaRXY+VJVBkpnfHv3NP4DxiI7fQdU097IgmqT/g8u46+HsIRES
         xJbHaiYiXCIjkRj9fGIh+e3gr5yC7VagFosrbTOFAOT5tp+4S92yqNCZxQ9F4Mrv222g
         Bi5m/CxhMqWeIL+NgwokJyiWjO0sa0l941ntvx/Iz/jS1xiXsdx+oFopk8WcaYl/yyRZ
         i1M6Cuk0UyhTA1vBnhjqoLS8KOnovS9b3MzOkna6Ww6z0Hy5Cy9SM1yWggzijcZ6ic77
         LImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bx6iufBtgMFkFQSb2/2aqRCNZrg1zI/sY1B+CCV+aUY=;
        b=aISKHZGijTSgLWvCApmGoxElU/eY/yrSBGXJ8o1as+k5O8Y/ctm2sEg5EaA9JXTlZh
         NzhdpjapoKgDKK7FuEJVhNzLds3JMlmn1kFnOmpmrBYRTfy9pg17mprRfSR22eGRqAK3
         0GgRPoH9cyGdoRScVVP5DWi3Ueb1m6XJQtCgTfsX1iEkI3bVQ5BkQgGmzzdD+zDMk09u
         ojn3IaKtcYWzERbm4+jVERshjwXoGG8nkIY4WR/nAad6hgxTUZhHKliV7AoVlInOPMvQ
         vYgjW3ivd+TEWckgh9Q0d5K1DOltWKU26ryjBESEtyMEMPIHgqUTJJQpWCjloqFSJwiP
         L5WQ==
X-Gm-Message-State: AOAM531YRId0C8DKTn6eAskjcB2/q62lJUw7AVSSTHUQwezPBcHjpjIb
	pAbdT6BovgPSIlwpNSqG03BQWYCSCn6LlU1R2yEzOSer
X-Google-Smtp-Source: ABdhPJzsFak2p+u8Kvsj6R3tjU5gyq+MQZDZb1RX4pCrFgcdr94oY56qwX0tdwv81G3BftXwj6yS+sgbCCSEvSk3UVo=
X-Received: by 2002:a67:3310:: with SMTP id z16mr11439213vsz.5.1637697793457;
 Tue, 23 Nov 2021 12:03:13 -0800 (PST)
MIME-Version: 1.0
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
In-Reply-To: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 23 Nov 2021 15:02:37 -0500
Message-ID: <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com>
To: Dustin Widmann <dw2zq@virginia.edu>
Message-ID-Hash: HLN4DAV7YB52XJD5M64WRLDJMDDEQJIN
X-Message-ID-Hash: HLN4DAV7YB52XJD5M64WRLDJMDDEQJIN
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 FPGA errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HLN4DAV7YB52XJD5M64WRLDJMDDEQJIN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7269386710505565416=="

--===============7269386710505565416==
Content-Type: multipart/alternative; boundary="0000000000003adb3e05d17a3b6b"

--0000000000003adb3e05d17a3b6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dustin,

Can you provide the error message?

Jonathon

On Tue, Nov 23, 2021 at 2:20 PM Dustin Widmann <dw2zq@virginia.edu> wrote:

> Hi list,
>
> I occasionally, unpredictably, get FPGA-related errors. Usually some
> sort of FPGA timeouts, so I have to reset the USRP after these errors,
> which is rather inconvenient.
>
> The software is C++ using the UHD 4 multi-usrp API.
>
> Without going into too much detail, I wonder if there is anything
> particular to my *approach* that could make things more prone to FPGA
> errors of any sorts. I'm also curious about the different =E2=80=9Cstream=
_modes=E2=80=9D
> that are available, their pros and cons / use cases, and more
> particularly if I'm really using the one best suited to my use case.
>
> Before describing that, this is what I'm trying to do. It's fairly
> simple, but I'm trying to make it tune, collect, and then tune again as
> quickly as possible without leaving my cozy C++ bed. It's currently
> doing this >100 times per second.
> * transmits continuously
> * in a loop:
> *** tune the transmitter and receivers and set their gain:
> *** receive a fixed number of samples
>
> How I'm currently going about it:
>
>
> In main object/thread
> * init the radio
> * create a tx object and move it to a new thread
> * give the tx object a streamer
> * tell the tx object to start streaming
> * create a rx object and move it to a new thread
> * give the rx object a streamer
> * tell the rx object to start streaming
> * in a loop (forever):
> *** clear command time
> *** set command time to now()+0.004
> *** set_rx_freq to next frequency for both channels
> *** set_tx_freq to next frequency for channel 0
> *** set the rx gain
> *** set the tx gain
> *** sleep for 4ms
> *** ask the rx object to save some samples
>
> in tx object/thread
> * in a loop (until asked to stop by main)
> *** call send on the streamer with max_num_samps samples from a fixed
> waveform
> * when killed, send an empty end_of_burst
>
> in rx object/thread
> * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the future/_restar=
t
> * in a loop (until asked to stop by main)
> *** recv  max_num_samps from the streamer
> *** check for/handle errors if they occur (often do at the start of the
> stream)
> *** copy the samples  if currently collecting, else discard them
> * when killed, issue STREAM_MODE_STOP_CONTINOUS
>
> I can/will provide more detail/code/etc, but that's not necessarily
> relevant to the *approach* I wouldn't think. To reiterate the question,
> I want to know if there is anything about the approach that would make
> FPGA related errors likely.
>
> -Dustin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003adb3e05d17a3b6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dustin,<div><br></div><div>Can you provide the error me=
ssage?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, 2021 at 2:20 =
PM Dustin Widmann &lt;<a href=3D"mailto:dw2zq@virginia.edu">dw2zq@virginia.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi list,<br>
<br>
I occasionally, unpredictably, get FPGA-related errors. Usually some <br>
sort of FPGA timeouts, so I have to reset the USRP after these errors, <br>
which is rather inconvenient.<br>
<br>
The software is C++ using the UHD 4 multi-usrp API.<br>
<br>
Without going into too much detail, I wonder if there is anything <br>
particular to my *approach* that could make things more prone to FPGA <br>
errors of any sorts. I&#39;m also curious about the different =E2=80=9Cstre=
am_modes=E2=80=9D <br>
that are available, their pros and cons / use cases, and more <br>
particularly if I&#39;m really using the one best suited to my use case.<br=
>
<br>
Before describing that, this is what I&#39;m trying to do. It&#39;s fairly =
<br>
simple, but I&#39;m trying to make it tune, collect, and then tune again as=
 <br>
quickly as possible without leaving my cozy C++ bed. It&#39;s currently <br=
>
doing this &gt;100 times per second.<br>
* transmits continuously<br>
* in a loop:<br>
*** tune the transmitter and receivers and set their gain:<br>
*** receive a fixed number of samples<br>
<br>
How I&#39;m currently going about it:<br>
<br>
<br>
In main object/thread<br>
* init the radio<br>
* create a tx object and move it to a new thread<br>
* give the tx object a streamer<br>
* tell the tx object to start streaming<br>
* create a rx object and move it to a new thread<br>
* give the rx object a streamer<br>
* tell the rx object to start streaming<br>
* in a loop (forever):<br>
*** clear command time<br>
*** set command time to now()+0.004<br>
*** set_rx_freq to next frequency for both channels<br>
*** set_tx_freq to next frequency for channel 0<br>
*** set the rx gain<br>
*** set the tx gain<br>
*** sleep for 4ms<br>
*** ask the rx object to save some samples<br>
<br>
in tx object/thread<br>
* in a loop (until asked to stop by main)<br>
*** call send on the streamer with max_num_samps samples from a fixed <br>
waveform<br>
* when killed, send an empty end_of_burst<br>
<br>
in rx object/thread<br>
* issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the future/_restart<=
br>
* in a loop (until asked to stop by main)<br>
*** recv=C2=A0 max_num_samps from the streamer<br>
*** check for/handle errors if they occur (often do at the start of the <br=
>
stream)<br>
*** copy the samples=C2=A0 if currently collecting, else discard them<br>
* when killed, issue STREAM_MODE_STOP_CONTINOUS<br>
<br>
I can/will provide more detail/code/etc, but that&#39;s not necessarily <br=
>
relevant to the *approach* I wouldn&#39;t think. To reiterate the question,=
 <br>
I want to know if there is anything about the approach that would make <br>
FPGA related errors likely.<br>
<br>
-Dustin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003adb3e05d17a3b6b--

--===============7269386710505565416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7269386710505565416==--
