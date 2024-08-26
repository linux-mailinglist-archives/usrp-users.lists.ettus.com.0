Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DA095F3B6
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 16:22:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F13DD38553A
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 10:22:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724682153; bh=+40Iib0mH+KHOiZUO7wyuKOT2r8PR3oXwo92AZchPrg=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=rC+VAkGva7Tnc1I3taC1PJZVp518HTpAuMGfhhOgiEXZUzftRjymnTpL0FT1MLIBD
	 TpDMWiSCF7QJLQU4BcfZOFuLoFcDVKTOcEf0/TZ9bNbR7dXtX6n+TRZvf6dkCOs3wo
	 eeOmS4nc+8RiAJA9uwBlZNefuac1pChb4m2Ee35VfnKcVndGr/uU07J1vrUU0lyc1F
	 ebDaOiZoM1mPmO2fCS0RQl1m6Uyjh8E+AtcVqODeHYbOCNKKZbmMkPqRng7SoKcqc1
	 YFvGl8DgVa4rGlB3IbcolKThxe8TrLNBhIbDCPEn+pjm+coB/volzVUPrQBNMthRpP
	 P8NnasnyNb8wA==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 9837F385440
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 10:21:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="CkvvrALY";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c09fd20eddso1390967a12.3
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 07:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1724682111; x=1725286911; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=95ulT5SJ8HmM11tCMkANeYbR2lZ0W1cdi1ZdrVbSLIo=;
        b=CkvvrALYaVYkvoeG9o2uy3z2Rz3Auy4ggmfplry2kwIA0Jwc5ke3Q/A3GaO+gboWrG
         MB0WIThY9vwmVpvOTHtTufiDM9ht8XA7ewPQcMfroQgS9YmH61nbDXp7Fmt/2+00ivwT
         W20wLP2/Bk+riacHZsssqYj8YtLz7jFq96yw+laEWi8GtphEK1jkhCrkHt1JuAkafIZx
         74Bb2l+kdagjnVyG7K0MDEjySbqesGrLoYy+gK8YIZ1NeCfO7nkBqCn49TnFnopzJULc
         RivGiunYdHLikToCbGiRb7pgKY+zFlQjLJDMQOKs17BsxF8n1uDB0KUn1MtR/hlpoUFm
         oqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724682111; x=1725286911;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=95ulT5SJ8HmM11tCMkANeYbR2lZ0W1cdi1ZdrVbSLIo=;
        b=TZ/kudD9ttNGdk7gZ6dAWayLuZd9cRh6PcPS+vT97uyUgjvQVOhu+YUs0fiOD1+EWD
         2/O0BSbWLv+GbWuWl26iPwfHOgu4s52O/0n/TDIrgv/W9KreRU+AKYSrJXFFu2ox5j8i
         04ERI1VTX4Ca2eHgeGSaYyQ/a4q+DTE1PjglKdKiGzyVfolunigdb+5Pmkx9i/kn4FfX
         ezu+BEK8X9momocbDlCm35FzQrFpZk3A3lCx/c7X7FdpZazCy/Fp/UlnRhPJ3qxI3zJK
         Et3EqnNDobnvDZyAgJmt3qMEMY7V7nYDi4EDjqZ/0eWFGDJ0qVetw4TTlabEWYZ2xrLA
         /RXg==
X-Gm-Message-State: AOJu0Yy/PNg3nyf6pbnWfg42CI8CGSZ9hmIY8B60Yv+yDGEfwXKOEGZb
	yrEpax3OBvxoSuxGRrO2F+z8fUK1Lo/I0lvU9bPdrolI6hY7lEyk1gkneBIyRuD5kHipBYCKLYk
	Iyzoa3MS1HeOl8ET9Bd/nlMPxTqO7RAiJcRUX
X-Google-Smtp-Source: AGHT+IErtuw7x1KDCuiFFjASZZfWdLnISh1l/aAZlmUKFmzPdt0yZSQaF6rN5zMMN+Yca4VLz8nPJo5sjXkfsOHpnVA=
X-Received: by 2002:aa7:c68e:0:b0:5bf:17f:4b7b with SMTP id
 4fb4d7f45d1cf-5c0891b21aemr6424481a12.32.1724682111216; Mon, 26 Aug 2024
 07:21:51 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
In-Reply-To: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
Date: Mon, 26 Aug 2024 10:21:38 -0400
Message-ID: <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
To: Olo <olo1618@protonmail.com>
Message-ID-Hash: G5FJLZB25MY3Q775PKF3YABCN2VJDB7U
X-Message-ID-Hash: G5FJLZB25MY3Q775PKF3YABCN2VJDB7U
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G5FJLZB25MY3Q775PKF3YABCN2VJDB7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6505307424489115745=="

--===============6505307424489115745==
Content-Type: multipart/alternative; boundary="000000000000975cf5062096d82e"

--000000000000975cf5062096d82e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Olo,
On one point regarding an FFT length of 8192, there is likely an issue with
using the Ettus FFT block. In the past (I haven't checked recently), this
block was limited to a maximum FFT size of 1024 because the entire FFT had
to fit in one packet where the maximum packet payload was about 2000
samples.  It is possible to use larger FFTs, but this requires some custom
code that divorces the FFT size from the packet size.
Rob


On Mon, Aug 26, 2024 at 7:41=E2=80=AFAM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I am currently working on a custom FPGA image that utilizes RFNoC blocks
> provided by Ettus through the UHD repository. Specifically, I am using
> blocks such as split, window, fft, and logpwr in my design.
>
> My goal is to achieve the following:
>
>    1. *First TwinRX (radio0):* Use one channel to display every n-th PSD,
>    while simultaneously recording a narrowband channel within the display=
ed
>    spectrum (using split and ddc).
>    2. *Second TwinRX (radio1):* Rapidly sweep a large bandwidth and
>    display the PSD, also utilizing the window, fft, and logpwr blocks.
>
> I would greatly appreciate your feedback on the following points:
>
>    1. *Validation of Initial Design:* I have attached my initial attempt
>    at creating this FPGA image. Could you please review it and let me kno=
w if
>    this approach is correct?
>    2. *Achieving Specific PSD Size:* Is it possible to achieve a PSD size
>    of, for example, 8192 using the window, fft, and logpwr blocks? If so,
>    could you advise on the necessary steps to accomplish this?
>    3. *TwinRX Channel Configuration:* Is it feasible to use the second
>    channel on the second TwinRX to receive on a static frequency while th=
e
>    first channel sweeps, and vice versa, can the second channel on the fi=
rst
>    TwinRX sweep a portion of the spectrum while the first channel remains=
 on a
>    static frequency?
>
> Your guidance on these questions would be extremely valuable, as it is
> critical to the success of my project.
>
> Thank you in advance for your support. I look forward to your response.
>
> Best regards,
> Olo.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000975cf5062096d82e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Olo,</div><div>On one point regar=
ding an FFT length of 8192, there is likely an issue with using the Ettus F=
FT block. In the past (I haven&#39;t checked recently), this block was limi=
ted to a maximum FFT size of 1024 because the entire FFT had to fit in one =
packet where the maximum packet payload was about 2000 samples.=C2=A0 It is=
 possible to use larger FFTs, but this requires some custom code that divor=
ces the FFT size from the packet size.</div><div>Rob<br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Aug 26, 2024 at 7:41=E2=80=AFAM Olo via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D=
"font-family:Arial,sans-serif;font-size:14px;color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">Hello,<br><p>I am currently working on a custom FPGA =
image that utilizes RFNoC blocks provided by Ettus through the UHD reposito=
ry. Specifically, I am using blocks such as <code>split</code>, <code>windo=
w</code>, <code>fft</code>, and <code>logpwr</code> in my design.</p><p>My =
goal is to achieve the following:</p><ol><li><b>First TwinRX (radio0):</b> =
Use one channel to display every n-th PSD, while simultaneously recording a=
 narrowband channel within the displayed spectrum (using <code>split</code>=
 and <code>ddc</code>).</li><li><b>Second TwinRX (radio1):</b> Rapidly swee=
p a large bandwidth and display the PSD, also utilizing the <code>window</c=
ode>, <code>fft</code>, and <code>logpwr</code> blocks.</li></ol><p>I would=
 greatly appreciate your feedback on the following points:</p><ol><li><b>Va=
lidation of Initial Design:</b> I have attached my initial attempt at creat=
ing this FPGA image. Could you please review it and let me know if this app=
roach is correct?</li><li><b>Achieving Specific PSD Size:</b> Is it possibl=
e to achieve a PSD size of, for example, 8192 using the <code>window</code>=
, <code>fft</code>, and <code>logpwr</code> blocks? If so, could you advise=
 on the necessary steps to accomplish this?</li><li><b>TwinRX Channel Confi=
guration:</b> Is it feasible to use the second channel on the second TwinRX=
 to receive on a static frequency while the first channel sweeps, and vice =
versa, can the second channel on the first TwinRX sweep a portion of the sp=
ectrum while the first channel remains on a static frequency?</li></ol><p>Y=
our guidance on these questions would be extremely valuable, as it is criti=
cal to the success of my project.</p><p>Thank you in advance for your suppo=
rt. I look forward to your response.</p><p>Best regards,<br>Olo.<br></p><br=
></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000975cf5062096d82e--

--===============6505307424489115745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6505307424489115745==--
