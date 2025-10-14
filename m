Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EB8BDB05F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 21:15:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C5DA38653A
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 15:15:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760469316; bh=5Kmy6SvhJ5Q5cUDyj7mkbP0/oNcSIG37mBXI4H3J4gU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=xmfz1OnjaeFdOqMtvVjh0AOpIOYFFG9cpfnIQYjnsE608YNG3rIATOM4p5/vgziDp
	 FCmIfD+paTYJzsXQyqrzsNNilgQn2nDad9jhsFIgqsy62Zo9y9uMIXHA5XxKQFH7/h
	 og7/KjHOUWwSOevNovzrr6Qz7c86eN539W+XJVQpZo0e8LCkyn1c9aUkMgsx6unCk9
	 j42gM+cg62g0IYEBDBDBjvyfU9MF0zJDp98KyMCOPMH/Ps4aXhZNlTM5SqMRrdBtYA
	 ssg16lHokFM6PEGWIqRVVDoy18MFwdVqyEgAFDYY52DqfNjl2OxeaRzt3xS3KWO5cr
	 Iv0AAfimewadw==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 65A94386371
	for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 15:15:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SqWYm3mE";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7501c24a731so68661647b3.3
        for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 12:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1760469311; x=1761074111; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDb8JNcXMV7n8TRvF7NlTdFPsJ1+j0HSAbO/zCjK0AU=;
        b=SqWYm3mExaYf2P3TaI7LqHFBZP9zv55yVUfbnP3C3cd4nuZvmfg9NRfrKqGXc+oZfR
         qY1IRYQqUgw1SnXLNydCBlEEMUbtt0CGX6wdveBZej5H6VDwBS6Xm7JcmZCStmosp3gU
         9NUsrhHWiV3SqNaA3QfWt0JZ0g26MsoPb/w3C7lgxsfYw8JZVpzCVH1fqrwkJMtNDV1/
         WjEpHtBp0EIrY9Yi/BzzMjlv8pYLzzMrZJ5KkFYNBB6QFG64yhirABojSfPDbbiCERKV
         QxmmotI6NMhTvO7ZrJNJeY1ZOla+ifSvib2lK/nGFFB8Lv8UUlkxvkLn9Mdii7KwkgtW
         pB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760469311; x=1761074111;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZDb8JNcXMV7n8TRvF7NlTdFPsJ1+j0HSAbO/zCjK0AU=;
        b=WQ9n/CXuB9b+l3/5BapXCZUk75ad5lrNC/q5bh/ggGk8ulUjQhJDq4QCmp2OTdnJO0
         MroalNKkFBUjNkEi5nzT/J/5eIW3z2hmOYEienHgTcjA/7tkPTqRUqxZ3FYNYWdwZUS5
         a/9/wMbIRb+mT9WjH9owwpX3A7F1I5UDeY8+8U4W+GfXFlYdH+f+g6aWt9toMoQzCukW
         4LxwCpGmkVXocYfvG6CvQvSJ9CRmWek0QeLtkGphzejI1g7myGY+Vxq357WMApvurVqz
         ertK0I9Dyp0RUErGV6RBGweZAuPBOsjcprMzycjzs/LgfTQR6ZXDIcMExbcQEZStXoJ0
         +ejg==
X-Gm-Message-State: AOJu0YxhgYWqJm/S9+ZUvbfztcG7/IaRFW3z7vLyx7N9LwO7mj4vdd89
	NMJzOG2dl3TcwaGZRtztyYhjSur7krHDvOv0DpvJc1yeJLqEodq7oaIB6WthxgHWyjPoQXUJGsH
	Mgk/k3DyEku0XwCzcbD3BMDKf641qKyZetV5Cm9FyZXX/NDfRSr4=
X-Gm-Gg: ASbGncsJH68yXRe1rKlmbNCp5lh9RArsmeFq9CrX8iT7zGgt3l3oeJL5GhQqxF1Hq+T
	0DxZOl8pJE85o6y7kW1s/oV0HGHbkO7NsH8GRIPtGHYndAhaL5UHA2tQ/65gqefwT7cHXWnqS8Z
	N+dZ2i/nlhO4BfP5Lrs5F635Mri2ETNxR8b8L1Ltkp1K93nPgc/rrqsFYiEfoYYou1FnzhWe3oe
	jr68rsSdEBYmINf2bcA9lnptrcoPizFnRy4
X-Google-Smtp-Source: AGHT+IFfNshnoNX1DE9mpsU0oPNrhaz8VQnQvqcXfQE+AWUU0MZs0bS9ZZFKgKmaxQzx/66zfC8V+xx0nQK3Y5sWFo4=
X-Received: by 2002:a05:690e:1589:10b0:63c:f063:2573 with SMTP id
 956f58d0204a3-63cf063269fmr10932453d50.42.1760469310543; Tue, 14 Oct 2025
 12:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
In-Reply-To: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
Date: Tue, 14 Oct 2025 15:14:57 -0400
X-Gm-Features: AS18NWCLQbHKSK2SWDfyhPCjLpP53mce1Io4EX7PkiLCGd2rhc7TLKlSoXA8Xvs
Message-ID: <CAB__hTT-6+ShmnqX8UJmpmanGgsMaG0jmoaxMzb4HAJS1a1HhA@mail.gmail.com>
To: Daniel Mayer <dmayer@andrew.cmu.edu>
Message-ID-Hash: YYNK62MU7EKSBDYWAXNA56USPHD4NKVE
X-Message-ID-Hash: YYNK62MU7EKSBDYWAXNA56USPHD4NKVE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 not transmitting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYNK62MU7EKSBDYWAXNA56USPHD4NKVE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7721310685234640114=="

--===============7721310685234640114==
Content-Type: multipart/alternative; boundary="000000000000e5273b06412333dc"

--000000000000e5273b06412333dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,
Which RF daughterboards are installed in your X310?  It appears that your
X310 motherboard isn't talking to any daughterboard.
Rob

On Tue, Oct 14, 2025 at 3:05=E2=80=AFPM Daniel Mayer <dmayer@andrew.cmu.edu=
> wrote:

> Hello,
> I am attempting to transmit with a USRP X310 using the 'tx_waveforms'
> example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a
> SignalHound spectrum analyzer placed next to the transmitting antenna of
> the USRP is not picking up any signal above the noise floor at that
> frequency. The spectrum analyzer shows signals transmitted by other
> devices, so it seems unlikely that the spectrum analyzer is broken.
>
> The text output of the example is as follows:
>
>> Setting TX Rate: 25.000000 Msps...
>> Actual TX Rate: 25.000000 Msps...
>>
>> Setting TX Gain: 20.000000 dB...
>>
>> *Actual TX Gain: 0.000000 dB...*
>> Setting device timestamp to 0...
>>
>> *[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*Setti=
ng
>> TX Freq: 900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> *Actual TX Freq: 0.000000 MHz...*
>
> I did notice that the 'Actual TX Gain' and 'Actual TX Freq' are both set
> to 0; could this be a cause of the problem?
>
> For completeness, here are the configuration parameters that the example
> prints out:
>
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: Unknown (0xffff) - 0
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: Unknown (0xffff) - 0
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>
>
> Thanks for your help!
>
> Daniel Mayer
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e5273b06412333dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Daniel,<div>Which RF daughterboards ar=
e installed in your X310?=C2=A0 It appears that your X310 motherboard isn&#=
39;t talking to any daughterboard.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Oct 14, 2025 at 3:05=E2=80=AFPM Daniel Mayer &lt;<a href=3D"mailt=
o:dmayer@andrew.cmu.edu">dmayer@andrew.cmu.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div>I=
 am attempting to transmit with a USRP X310 using the &#39;tx_waveforms&#39=
; example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a Signal=
Hound spectrum analyzer placed next to the transmitting antenna of the USRP=
 is not picking up any signal above the noise floor at that frequency. The =
spectrum analyzer shows signals transmitted by other devices, so it seems u=
nlikely that the spectrum analyzer is broken.=C2=A0</div><div><br></div><di=
v>The text output of the example is as follows:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Setting TX Rate: 25.000000 Msps...<br>Actual TX R=
ate: 25.000000 Msps...<br><br>Setting TX Gain: 20.000000 dB...<br><b>Actual=
 TX Gain: 0.000000 dB...<br></b><br>Setting device timestamp to 0...<br><b>=
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br></b>Se=
tting TX Freq: 900.000000 MHz...<br>Setting TX LO Offset: 0.000000 MHz...<b=
r><b>Actual TX Freq: 0.000000 MHz...</b></blockquote><div>I did notice that=
 the &#39;Actual TX Gain&#39; and &#39;Actual TX Freq&#39; are both set to =
0; could this be a cause of the problem?=C2=A0</div></div><div><br></div><d=
iv>For completeness, here are the configuration parameters that the example=
 prints out:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">[INFO] [X=
300] Radio 1x clock: 200 MHz<br>Using Device: Single USRP:<br>=C2=A0 Device=
: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=
=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subd=
ev: Unknown (0xffff) - 0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1=
<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0=
 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=
=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 1<br>=
=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX S=
ubdev: UBX TX</blockquote><div><br></div><div>Thanks for your help!</div><d=
iv><br></div><div>Daniel Mayer=C2=A0</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000e5273b06412333dc--

--===============7721310685234640114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7721310685234640114==--
