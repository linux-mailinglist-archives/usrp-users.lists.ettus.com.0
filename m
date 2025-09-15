Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F5CB58184
	for <lists+usrp-users@lfdr.de>; Mon, 15 Sep 2025 18:04:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEF113860F0
	for <lists+usrp-users@lfdr.de>; Mon, 15 Sep 2025 12:04:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757952296; bh=L/UfBmrLHTFX/Jf0/OT326GLFaypw0Iuu0j4xr+32Os=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qz5S5YBBBuwL5mGTwWo/+HsR59bHjVpNj/ZeghFB+EQhm1N/8uh0lTN94Ys96GTzc
	 1ctRmuU+dAFUwU1vdZenbqu5w8KT00WJf11v44cEFWwog3SypCw6zpLfqmEo5Ig2hQ
	 yHfaYRdg7HFzlDb6YqumgPuhi5bdHwIApgIWKgce481/KmiH0t0lJCuTqUla0eadzb
	 QfrS/08e8Krft9ILqi6QmiOJXIk8RZ6Yx3AGyKo7GxesOwEujkZHuVXj4t6eBiQb5n
	 aAg97g+91oXxAlFJbEg7WSMQjtKn2jKloPRVlDnQG7s4twjhk0ened6oS2nOGntn32
	 yn4EIvp/+JOgw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B169E3844F4
	for <usrp-users@lists.ettus.com>; Mon, 15 Sep 2025 12:04:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dhRkAHEM";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-62f261a128cso2709855a12.2
        for <usrp-users@lists.ettus.com>; Mon, 15 Sep 2025 09:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1757952267; x=1758557067; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LoB1O3KB3KRyR4OmB6h3wJLm1pYICkMbXocnJDGnRDc=;
        b=dhRkAHEMhM/01QG0nui51KAbs8GnJKAjp9K52huHmNtNb4JVETbyFwXBt3p8cEWkm6
         9gbHCurWbzOdVDAdvHgvbh8rY3OPYdGoDzSnlOoOetNih5SrIQQVLRdPA6kSIYNthUlV
         nSi5JpWLXtYjR5yn54cFwUwPumJYo/R385Pyl5SZppwUM+9u/2P4FaqRhcFApO+EIMVn
         6D0yAvHHXUD3s/s8bmBh6ihoFtTkckDIxya1f391/UCyAFeAQm2UsbeuyYg/QyxdVg6w
         lq79K4dHleoZpHg0CKZlBqYOQXMSr4OnoN3MRhDfFJ/yuIUNQ9NI4ej7cafw7es/ZdHd
         JuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757952267; x=1758557067;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LoB1O3KB3KRyR4OmB6h3wJLm1pYICkMbXocnJDGnRDc=;
        b=ctXs33ael1o9yvRtOdAQVut/KrqkEuIkiVaLa97B372nf57BmZHvTBlrbSHIyt3fS0
         Mz3DhWIqpeoMKnr3U8lvM0NZb3Hccsnhpeq3ijl7kXYJTrV/jn2xI/8n/gcYryXKYb/J
         3kInAcsdKg08Ka/MwPQVvi1p4ivtZpEsHaY4/QVBWGj65otUMdEzFOPak25vcffhJBLE
         H9LGryeka7TzHJWSRd3l843lZCbX95OqYcpEcEYsTIxMY1sDq58lYdA0WwIxZFon76ju
         fD0SCUL36qDlaJZ0ZZbO6eLSL7aNKrr4ovhEGcpEyBBOzipJ67ZgQ+9gYh/XxYaiaONz
         +3Og==
X-Gm-Message-State: AOJu0Yyawt0YXSwgleTCSx+qPTwLuPUeJu6gEdeJjFu6envsnPJpCZY7
	LYEpK2wlIFtFNpeTllly5n8Y75gk5jg1GDAJYyfVeaGBsvwT6aT6IpEozZZFowm6RblnKYCZHTz
	ylUwVL8OnPltPubvzYlen8XMFsylLuQRpYcGtxuJc3wksvNYU+G+vU24=
X-Gm-Gg: ASbGncsqNkZL65ZWwzfgtOlXO5yKGGC3MO1WNk1ibwZJ/d3QZ59VZpr4g79/hmnU0d8
	FcJ3gvOEOcOkxSrD8ULrRQfSyqUY/KcoSBzbQb7RzgVY6XE32IbFHMjHERtuWw0ve39fAk+eMoo
	s12Kme1KnNBrqm+cOxINKTqAzIQv59HHlPAei0twG09YPp/XSm8PHPnJbrYPgqqm/xhcX2T+O0L
	BTRH4qjKIFrGt1Y6brHNJcBm5xL7PU3Cova7e/rxq4uGM+IHQ==
X-Google-Smtp-Source: AGHT+IEDHGWHo/OI3lj565rBlmrkAZCrmjIbpKxZX5C031k4t4rPNLg5MFskkLPLGdoFFxM4KLJ766ow4Rb7WqtsQuI=
X-Received: by 2002:a05:6402:324b:b0:625:ec92:9cbf with SMTP id
 4fb4d7f45d1cf-62ed8410e19mr9616825a12.20.1757952267204; Mon, 15 Sep 2025
 09:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <SA1P110MB1932C6DBAB53659AE7EA51B3B70EA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <SA1P110MB1932C6DBAB53659AE7EA51B3B70EA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 15 Sep 2025 18:04:15 +0200
X-Gm-Features: AS18NWD5RNRFTIpfo9r-r2SChIqKYxkzYfO-HnVuj9P3yLue8x23Urk0hLM5tlk
Message-ID: <CAFOi1A4UcF0QE3LuAJyTktzPGDXyMx3SSqZzgwNz-Fs8Li+krw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 7OUTVGD6GNMMFUJ33BWRQMTY7DNPMMWG
X-Message-ID-Hash: 7OUTVGD6GNMMFUJ33BWRQMTY7DNPMMWG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E320 sporadically not autobooting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OUTVGD6GNMMFUJ33BWRQMTY7DNPMMWG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5008551073764335508=="

--===============5008551073764335508==
Content-Type: multipart/alternative; boundary="0000000000006b4bda063ed928be"

--0000000000006b4bda063ed928be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

nothing immediately comes to mind, sorry. We have not encountered this to
our knowledge, and it seems like it's hard to trigger in the first place.

--M

On Wed, Sep 10, 2025 at 6:11=E2=80=AFPM David Raeman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I sometimes use USRP E320 radios in unattended collection systems with th=
e
> autoboot feature enabled. I=E2=80=99m aware that the shipped firmware did=
 not
> originally support the autoboot flag, and these radios have updated
> firmware flashed in early 2024 (RO and RW are both neon_v1.1.7358-a190641=
).
>
>
>
> What I notice is that autoboot almost always works, but on rare occasion
> it fails to boot when power is applied. Anecdotally, the failure seems mu=
ch
> more likely if the E320 hasn=E2=80=99t been powered in a long time (month=
s). It=E2=80=99s
> almost always fine if I=E2=80=99ve used the radio in the past few days. R=
ecently I
> was able to catch it occur while monitoring the STM32 console:
>
>
>
> --- UART initialized after reboot ---
>
> [Reset cause: reset-pin power-on]
>
> [Image: RO, neon_v1.1.7358-a190641 2019-10-11 15:41:40 @b6fa67df8407]
>
> [0.000359 Inits done]
>
> [0.034868 SW 0x03]
>
> Enclosure version ... using alternative thermal parameters
>
> Console is enabled; type HELP for help.
>
> > [0.045631 power state 4 =3D G3->S5, in 0x0000]
>
> [0.045802 power state 1 =3D S5, in 0x0000]
>
> [0.045942 power state 5 =3D S5->S3, in 0x0000]
>
> [0.046128 event set 0x00002000]
>
> [0.046246 hostcmd init 0x2000]
>
> [0.060178 power state 2 =3D S3, in 0x0002]
>
> [0.074411 power state 6 =3D S3->S0, in 0x01fe]
>
> [0.311983 power button released]
>
> [0.312175 SW 0x01]
>
> [1.074642 AP didn't come up, shutdown]
>
> [1.074810 power state 7 =3D S0->S3, in 0x01fe]
>
> [1.090703 Watchdog timeout, ignored]
>
> [1.106994 power state 2 =3D S3, in 0x0002]
>
> [1.107180 power state 8 =3D S3->S5, in 0x0002]
>
> [1.107397 power state 1 =3D S5, in 0x0000]
>
> [1.107548 power state 9 =3D S5->G3, in 0x0000]
>
> [1.107709 power state 0 =3D G3, in 0x0000]
>
>
>
> There is no further output. The =E2=80=9Csysinfo=E2=80=9D command shows t=
hat the STM32 is
> still running the RO firmware and hasn=E2=80=99t jumped. From here, if I =
run
> =E2=80=9Cpowerbtn 1000=E2=80=9D or press the physical button, it will fai=
l again. Then if I
> do it a second time, it always works - the Zynq comes up and everything i=
s
> good:
>
>
>
> > powerbtn 1000
>
> Simulating 1000 ms power button press.
>
> [549.731435 power button pressed]
>
> [549.731588 power button is pressed]
>
> [549.731755 power state 4 =3D G3->S5, in 0x0000]
>
> [549.731947 power state 1 =3D S5, in 0x0000]
>
> [549.732131 power state 5 =3D S5->S3, in 0x0000]
>
> [549.732434 SW 0x03]
>
> [549.732565 event set 0x00000004]
>
> [549.746562 power state 2 =3D S3, in 0x0002]
>
> [549.760907 power state 6 =3D S3->S0, in 0x01fe]
>
> Simulating power button release.
>
> > [550.731581 power button released]
>
> [550.731780 SW 0x01]
>
> [550.761149 AP didn't come up, shutdown]
>
> [550.761350 power state 7 =3D S0->S3, in 0x01fe]
>
> [550.777265 Watchdog timeout, ignored]
>
> [550.793740 power state 2 =3D S3, in 0x0002]
>
> [550.793958 power state 8 =3D S3->S5, in 0x0002]
>
> [550.794208 power state 1 =3D S5, in 0x0000]
>
> [550.794392 power state 9 =3D S5->G3, in 0x0000]
>
> [550.794585 power state 0 =3D G3, in 0x0000]
>
>
>
> > powerbtn 1000
>
> Simulating 1000 ms power button press.
>
> [644.821458 power button pressed]
>
> [644.821612 power button is pressed]
>
> [644.821779 power state 4 =3D G3->S5, in 0x0000]
>
> [644.821972 power state 1 =3D S5, in 0x0000]
>
> [644.822156 power state 5 =3D S5->S3, in 0x0000]
>
> [644.822459 SW 0x03]
>
> [644.836578 power state 2 =3D S3, in 0x0002]
>
> [644.850931 power state 6 =3D S3->S0, in 0x01fe]
>
> Simulating power button release.
>
> > [645.821604 power button released]
>
> [645.821804 SW 0x01]
>
> [645.845928 power state 3 =3D S0, in 0x01ff]
>
> [645.846349 HC 0x01]
>
> [645.847056 HC 0x02]
>
> [645.849352 HC 0x9e]
>
> +++(++)[649.114626 HC 0x02]
>
> [649.116925 HC 0x16]
>
> [649.117941 HC 0x11]
>
> +++(++)[650.450201 HC 0xd2]
>
> [650.450414 Executing host reboot command 2]
>
> [650.450709 Jumping to image RW]
>
> [650.459254 UART initialized after sysjump]
>
> [Image: RW, neon_v1.1.7358-a190641b3 2019-10-11 15:41:40 a@xaphan]
>
> =E2=80=A6
>
>
>
> I=E2=80=99d like to rely on the autoboot feature without console interven=
tion, and
> at some point I=E2=80=99ll probably trace through the STM32 logic, but I=
=E2=80=99m hoping
> the knowledgeable folks at NI/Ettus might have a quicker solution..
>
>
>
> Thank you,
>
> David Raeman
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006b4bda063ed928be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi David,</div><div><br></div><div>nothing immediatel=
y comes to mind, sorry. We have not encountered this to our knowledge, and =
it seems like it&#39;s hard to trigger in the first=C2=A0place.</div><div><=
br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 10, 2025 at 6:11=
=E2=80=AFPM David Raeman via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-8756980175151034=
437">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-8756980175151034437WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello,<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I sometimes use USRP =
E320 radios in unattended collection systems with the autoboot feature enab=
led. I=E2=80=99m aware that the shipped firmware did not originally support=
 the autoboot flag, and these radios have
 updated firmware flashed in early 2024 (RO and RW are both neon_v1.1.7358-=
a190641).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">What I notice is that=
 autoboot almost always works, but on rare occasion it fails to boot when p=
ower is applied. Anecdotally, the failure seems much more likely if the E32=
0 hasn=E2=80=99t been powered in a long time
 (months). It=E2=80=99s almost always fine if I=E2=80=99ve used the radio i=
n the past few days. Recently I was able to catch it occur while monitoring=
 the STM32 console:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">--- UART initialized after reboo=
t ---<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[Reset cause: reset-pin power-on=
]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[Image: RO, neon_v1.1.7358-a1906=
41 2019-10-11 15:41:40 @b6fa67df8407]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.000359 Inits done]<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.034868 SW 0x03]<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Enclosure version ... using alte=
rnative thermal parameters<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Console is enabled; type HELP fo=
r help.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">&gt; [0.045631 power state 4 =3D=
 G3-&gt;S5, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.045802 power state 1 =3D S5, =
in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.045942 power state 5 =3D S5-&=
gt;S3, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.046128 event set 0x00002000]<=
u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.046246 hostcmd init 0x2000]<u=
></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.060178 power state 2 =3D S3, =
in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.074411 power state 6 =3D S3-&=
gt;S0, in 0x01fe]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.311983 power button released]=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[0.312175 SW 0x01]<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.074642 AP didn&#39;t come up,=
 shutdown]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.074810 power state 7 =3D S0-&=
gt;S3, in 0x01fe]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.090703 Watchdog timeout, igno=
red]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.106994 power state 2 =3D S3, =
in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.107180 power state 8 =3D S3-&=
gt;S5, in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.107397 power state 1 =3D S5, =
in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.107548 power state 9 =3D S5-&=
gt;G3, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[1.107709 power state 0 =3D G3, =
in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">There is no further o=
utput. The =E2=80=9Csysinfo=E2=80=9D command shows that the STM32 is still =
running the RO firmware and hasn=E2=80=99t jumped. From here, if I run =E2=
=80=9Cpowerbtn 1000=E2=80=9D or press the physical button, it will fail aga=
in.
 Then if I do it a second time, it always works - the Zynq comes up and eve=
rything is good:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">&gt; powerbtn 1000<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Simulating 1000 ms power button =
press.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.731435 power button pressed=
]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.731588 power button is pres=
sed]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.731755 power state 4 =3D G3=
-&gt;S5, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.731947 power state 1 =3D S5=
, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.732131 power state 5 =3D S5=
-&gt;S3, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.732434 SW 0x03]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.732565 event set 0x00000004=
]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.746562 power state 2 =3D S3=
, in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[549.760907 power state 6 =3D S3=
-&gt;S0, in 0x01fe]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Simulating power button release.=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">&gt; [550.731581 power button re=
leased]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.731780 SW 0x01]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.761149 AP didn&#39;t come u=
p, shutdown]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.761350 power state 7 =3D S0=
-&gt;S3, in 0x01fe]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.777265 Watchdog timeout, ig=
nored]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.793740 power state 2 =3D S3=
, in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.793958 power state 8 =3D S3=
-&gt;S5, in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.794208 power state 1 =3D S5=
, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.794392 power state 9 =3D S5=
-&gt;G3, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[550.794585 power state 0 =3D G3=
, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">&gt; powerbtn 1000<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Simulating 1000 ms power button =
press.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.821458 power button pressed=
]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.821612 power button is pres=
sed]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.821779 power state 4 =3D G3=
-&gt;S5, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.821972 power state 1 =3D S5=
, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.822156 power state 5 =3D S5=
-&gt;S3, in 0x0000]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.822459 SW 0x03]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.836578 power state 2 =3D S3=
, in 0x0002]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[644.850931 power state 6 =3D S3=
-&gt;S0, in 0x01fe]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">Simulating power button release.=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">&gt; [645.821604 power button re=
leased]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[645.821804 SW 0x01]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[645.845928 power state 3 =3D S0=
, in 0x01ff]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[645.846349 HC 0x01]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[645.847056 HC 0x02]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[645.849352 HC 0x9e]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">+++(++)[649.114626 HC 0x02]<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[649.116925 HC 0x16]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[649.117941 HC 0x11]<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">+++(++)[650.450201 HC 0xd2]<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[650.450414 Executing host reboo=
t command 2]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[650.450709 Jumping to image RW]=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[650.459254 UART initialized aft=
er sysjump]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">[Image: RW, neon_v1.1.7358-a1906=
41b3 2019-10-11 15:41:40 a@xaphan]<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-size=
:10pt;font-family:&quot;Courier New&quot;">=E2=80=A6<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99d like to r=
ely on the autoboot feature without console intervention, and at some point=
 I=E2=80=99ll probably trace through the STM32 logic, but I=E2=80=99m hopin=
g the knowledgeable folks at NI/Ettus might have a quicker
 solution..<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you,<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">David Raeman<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000006b4bda063ed928be--

--===============5008551073764335508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5008551073764335508==--
