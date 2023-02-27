Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C46CC6A465E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 16:46:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2C3A38424B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 10:46:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677512787; bh=iQ230f66F9YlYMs5jRpcidyGQdVqs+iMQKonAm7vHZU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cM/aePt3cna4R/cbHAatRro/6r7q5ZkwERJYfJNhLRuBV8pmuC4cPSEE4E6pBws1l
	 GH08NpYgi+Yzz6iUW9wiTMt1VuveTk/Tmcxlgd3FyQNlrxLzV2RPPYbDWfb/ECNXLJ
	 nofn/ApOYmFkLlGn3RpW+mweDylkidwSBYkuPD3VSoes9P2r7pd9wTnawap3wWoId5
	 JL8j+BmsMEG9VmgpGAn4y9TxoMjitFVN9vWHMPeEoPUvv01hKjHaVhpa5eZVTioPJE
	 hGVqcb6lZUz5RaBAIKNVE3L+JeH7uoLZz7TVqV/pNsTgeQIz4tdEP0GDC0I+cxD5jK
	 bX7+gd5kn48Uw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C6A163842DE
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 10:43:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lnh3uxN9";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id i34so27571143eda.7
        for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 07:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jyy85uQuOmu0lIjvhm6HTp5M4BcqHVwamcknrJmYsUw=;
        b=Lnh3uxN9BDhfjqqd4ecbSifdDZ/OSluM7L8L7ff4huKgN9hJMEbCxcSuLHsmMx0AV9
         obxx5zRUNU3YNt22WvXq1bYCbE4qZQSOuTSycfQqXujmjino41iJW5FSyntpwp4RXKBp
         39n4/Lst6ntSyuC1n7gSiOGkthqWOYgsDViR3XaMWlcPaZqYERKCJT3Ws/fesjnQHSOq
         yRmMPWkLrrrNUnMqwJSx5TQyrOlMHMBxOBEbpfFyyTCaHYLYyr9VDVRvIDiWYU74QtjV
         YRgySzuDQpPflOEg6HwyQQOK4R6B+dExzjoERDzihcSzfKTmZcy/hqiWJP9trMzQl4/w
         0vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jyy85uQuOmu0lIjvhm6HTp5M4BcqHVwamcknrJmYsUw=;
        b=dAA/ufLh/WrCUp3+dQgZgB9HFnz5Uw2SsC/zqwZObgAixlSYAjXquZN0HJa7zmtzgo
         MrQsVJ6zDNMCI+zR3yioiViS8vmKX9euImmBaddpCoTP7VDO/KOPSXdm5T3fluQK9aIU
         EzBgbHy0MxM9lGYts/GUdfVAhm5J8HvX5jKIkwK7u9u1CyZTNPZeiKwazJPGaaeyM13Q
         NlqeNvjhLY1RFRDIbb7tEnTIDl3THO8iEAhxxe87FTZ56P8wteSGaKeM3fvkyDKrmAbh
         LZwggtRQHRh/ecAxOcJ0Dd686XO8zX4P3D4PB3BH1vpuXIt2gfP2CrEajvWvye4bYj0E
         DvDA==
X-Gm-Message-State: AO0yUKXvdgIORGVav0FVCG/88WO3rVJFlOv0Jr0ps3rq6olpcpbPc4MI
	24IBdVLIUVaQIWu03CeXtQ2HWp3HnlmSYO/WF44qYNY=
X-Google-Smtp-Source: AK7set+Wt4sIpStsdq/sZfAaBgY6TvRP2KiWaCeXpy/cp8cKzGB1G4zxv81Gjzu6ZI0371NA9KRWPzydhiW5w+/pvEA=
X-Received: by 2002:a17:907:2ce6:b0:8df:dc64:30d2 with SMTP id
 hz6-20020a1709072ce600b008dfdc6430d2mr6446929ejc.1.1677512596333; Mon, 27 Feb
 2023 07:43:16 -0800 (PST)
MIME-Version: 1.0
References: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
In-Reply-To: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 27 Feb 2023 18:43:04 +0300
Message-ID: <CALooG38d4mKoHNca16W+mzuRV6kbsHCd_8OBAz=nnSFVjj3fNA@mail.gmail.com>
To: oiu13q2t5pibtq1@proton.me, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: RW5EKJI7D5FQF2CVHKFCLJNXLZOWJP6W
X-Message-ID-Hash: RW5EKJI7D5FQF2CVHKFCLJNXLZOWJP6W
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: Receive Signales Sent by another
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RW5EKJI7D5FQF2CVHKFCLJNXLZOWJP6W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5297613858001160458=="

--===============5297613858001160458==
Content-Type: multipart/alternative; boundary="00000000000069d51e05f5b056aa"

--00000000000069d51e05f5b056aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Usrp B210 uses AD9361 as transceiver.  It has a maximum receiver gain as 76
dB and maximum transmitter gain as 89 dB. Your gain values are too small,
that's why you cannot see anything but noise. Also be careful that AD9361
has a maximum RF input as -15 dBm. But it can genrate and transmit over 10
dBm signals. If you connect the Tx to Rx directly, you can burn the
transciever. Choose the tx gain value so that it will not pass over 0 dBm.

Kind Regards,
Yasir

27 =C5=9Eub 2023 Pzt 18:28 tarihinde oiu13q2t5pibtq1--- via USRP-users <
usrp-users@lists.ettus.com> =C5=9Funu yazd=C4=B1:

> I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and compiled uhd
> from source
>
> [INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400;
> UHD_4.4.0.0-0-g5fac246b
>
> Following the USRP Guide
> https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GN=
U_Radio,
> I checked:
>
> /usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --tx_rate 10e6
>
> on both SDRs
>
> which yielded
>
> Num received samples: 100243473
>
> Num dropped samples: 0
>
> Num overruns detected: 0
>
> Num transmitted samples: 100064040
>
>
> Now I tried to receive signals generated the other via
>
> SDR1: RX:
>
> /usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6 --gain 20
> --bw 5e6 --ref-lvl -30
>
> SDR2: TX:
>
> /usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10
>
>
> I would expect a peak somewhere around 4996 MHz; I only see noise which i=
s
> not affected by the tx_waveforms call
>
> The SDRs are in the same room.
>
> The TX LED is red, the RX2 LED is green, indicating that they are indeed
> sending and receiving
>
>
> Am I missing something important here?!
>
>
> How can I solve that basic task?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069d51e05f5b056aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Usrp B210 uses AD9361 as transceiver.=C2=A0 It has a maxi=
mum receiver gain as 76 dB and maximum transmitter gain as 89 dB. Your gain=
 values are too small, that&#39;s why you cannot see anything but noise. Al=
so be careful that AD9361 has a maximum RF input as -15 dBm. But it can gen=
rate and transmit over 10 dBm signals. If you connect the Tx to Rx directly=
, you can burn the transciever. Choose the tx gain value so that it will no=
t pass over 0 dBm.<div dir=3D"auto"><br></div><div dir=3D"auto">Kind Regard=
s,</div><div dir=3D"auto">Yasir</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">27 =C5=9Eub 2023 Pzt 18:28 tarihinde o=
iu13q2t5pibtq1--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; =C5=9Funu yazd=C4=B1:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><p>I have 2 B210 with VERT2450s (i.e. 2.4/5 G=
Hz antennae) and compiled uhd from source</p><p><code>[INFO] [UHD] linux; C=
lang version 14.0.0 ; Boost_107400; UHD_4.4.0.0-0-g5fac246b</code></p><p>Fo=
llowing the USRP Guide <a href=3D"https://kb.ettus.com/Verifying_the_Operat=
ion_of_the_USRP_Using_UHD_and_GNU_Radio" target=3D"_blank" rel=3D"noreferre=
r">https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_G=
NU_Radio</a>, I checked:</p><p><code>/usr/lib/uhd/examples/benchmark_rate -=
-rx_rate 10e6 --tx_rate 10e6</code></p><p>on both SDRs</p><p>which yielded<=
/p><p><code>Num received samples:     100243473</code></p><p><code>  Num dr=
opped samples:      0</code></p><p><code>  Num overruns detected:    0</cod=
e></p><p><code>  Num transmitted samples:  100064040</code></p><p><br></p><=
p>Now I tried to receive signals generated the other via</p><p>SDR1: RX:</p=
><p><code>/usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6 -=
-gain 20 --bw 5e6 --ref-lvl -30</code></p><p>SDR2: TX:</p><p><code>/usr/lib=
/uhd/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10</code></p><p>=
<br></p><p>I would expect a peak somewhere around 4996 MHz; I only see nois=
e which is not affected by the <code>tx_waveforms </code>call</p><p>The SDR=
s are in the same room.</p><p>The TX LED is red, the RX2 LED is green, indi=
cating that they are indeed sending and receiving</p><p><br></p><p>Am I mis=
sing something important here?!</p><p><br></p><p>How can I solve that basic=
 task?</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--00000000000069d51e05f5b056aa--

--===============5297613858001160458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5297613858001160458==--
