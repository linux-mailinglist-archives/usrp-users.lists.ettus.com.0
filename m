Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CACC9962E9F
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 19:36:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BDF33857B9
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 13:36:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724866582; bh=YVWQ8Zw/el8ODIxdcQ2tLrhH7whazcnF+dRTH0Au+kY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hCXYKMde5RhOZ5ADEte5i9ZcwMkQNISSx2c07zIM0E1yzu92yO5hAJ8sEC8ZCfKoE
	 Dq6G9iK0YlqN7QTPqgcWtt6sMWBVP6yxwgFnKJqQKabtkyTBMd0WSHA7G8AeLYJ6A5
	 bWXK5PROi9EjRO3LRKV6X2WTTMfJsQHxwAJStCmLkfrh2rZBBau7MoDHmMUPNHKmhA
	 LOSbzy2RiAlc5gLBplilmSRQ/c09RuC+EBEGV7m1niVdRNm+zPh+C3su87J0Uhf7Xl
	 TaaueStTlwM0RFCmayLgGmWKCWQuNkX6Bma02SkI8RdS3xm06Z+dEKn2gRSYYP+dKR
	 wsDA4LoFFz8og==
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 10EF038560D
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 13:35:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OaxXmYEs";
	dkim-atps=neutral
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5df998d7a44so33370eaf.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 10:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724866538; x=1725471338; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UudMNpDllg9gIj9D01mT/vDqduG8CQ14jFxqx7msQL4=;
        b=OaxXmYEsx0Cjs1mjlDOTBGNrmY4UsGA/YJu15ehCbOWII+FJq9fGDfhRUHzEGYUJIM
         vzL9q4j1FtA9xhkmYSwQXR0sEDX3VjxrdHjgsKDVV481qPp65Qo2OPa1CS1rNDBwsOfv
         ypFqfFcOh6EfWHIr1NJoeILNAgZsfTybEUkUE6XKr15p8zkXOkn9jKRxvhaxm9RivCyF
         A2mPSjyEOX55iieE5L6HhaIl6oXfUMevG4iZATOdKB1eb0rHeZsU7lVp5MriWTdNPt0Y
         q3/7siK2mhxZvOgaDigZjEXs0g0QY8riU7P9oGT3jmDjWy+LIJO8GDx2OaGcdCe7t4Bu
         gnmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724866538; x=1725471338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UudMNpDllg9gIj9D01mT/vDqduG8CQ14jFxqx7msQL4=;
        b=LKgkTePLm9+kEWQb77cE7kxgxQox0EwB/73WtecHh47hHIpF9B8DSgE5wa7xnqMVAg
         un6jvcj8IIHSoz9fKk3Ib5Ll+C1kEfRrhAArcbMF7hEXRyLwQ8UQ34Ko8HhLodLuL2/o
         PbYc/ufUx/wW47jTvN46e7Mr7vS4LzzXC1IEzLSgNnZCzW8stLfmucZV70a1/JqXcfPD
         VcCYxEl9TS6nnV6vtjNI1RS5P3BlzDW8RWs4eLFEeYz7SngNyqONI4OyqwPVux7vM1oL
         u5dr3VENpNg10nLhZvERYgNqkBsYv+zPry/Tm9oxAirJ9ZlhAOFSgS5ePsVwvHIOiYjH
         iaOA==
X-Gm-Message-State: AOJu0YxMbtiLhZwrOx/MnN1+WFVmW7vYwGwTrzvBZ6KDpmZPMSR6DQTq
	84vCTItzrxkUqbeUseVgV1Mjj/ZsQ4Mra6ZkMZh7gIzX1ulKGG1pyPcxUkxLgJAv8lUvvR9o8SR
	CGbN278P1qRUju9XTdsffYxiRaKs=
X-Google-Smtp-Source: AGHT+IFDznInrlk86BGDd/RlrNwUNfQWOZByj9vHOdKIWrd2ZqFq0ZG2Xa5AilRg/6colIf5xmV51eqUYGPUOI4U8hE=
X-Received: by 2002:a05:6820:151f:b0:5c6:5f2d:8430 with SMTP id
 006d021491bc7-5df97e9146fmr625502eaf.2.1724866538020; Wed, 28 Aug 2024
 10:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKacFEn+UXiCb57ev_-rvjcOxp+vF3BJ3pLtxEdJvVvc3ZGh=A@mail.gmail.com>
 <9cec144a-612e-4eb3-8b42-fde95882588f@gmail.com>
In-Reply-To: <9cec144a-612e-4eb3-8b42-fde95882588f@gmail.com>
From: ali siddig <alisiddig12@gmail.com>
Date: Wed, 28 Aug 2024 21:35:26 +0400
Message-ID: <CAKacFEmpgeoi92EnJtijRb+yLZfeSuRRBMMvVqvFnHTb0HVtVg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PM5KEHLQHSCTMDWU3DHZP4TWQYEZCJK4
X-Message-ID-Hash: PM5KEHLQHSCTMDWU3DHZP4TWQYEZCJK4
X-MailFrom: alisiddig12@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: QPSK modulation and demodulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PM5KEHLQHSCTMDWU3DHZP4TWQYEZCJK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7361182468102653029=="

--===============7361182468102653029==
Content-Type: multipart/alternative; boundary="00000000000048a8fc0620c1c9e6"

--00000000000048a8fc0620c1c9e6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I already tried that, but may be it is a parameter values issue
I used :
Sample per symbol=3D4
Filter rolloff factor =3D350m
Prototype filter size 44
Loop bandwidth 62.8m

When the input value is random source (228,229), it works
But when the input value is random source (0,256), it doesn't work

Best Regards,

On Wed, Aug 28, 2024, 9:02=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail.=
com>
wrote:

> On 28/08/2024 12:13, ali siddig wrote:
> > Dear all,
> > I have tried to use the QPAK modulation and demodulation exapmle from
> > the tutorial in the link below. I am using two USRPs B205 as
> > transmitter and receiver, frequency 910MHz , sampling rate 300k or 1 M
> > sps. However, the received signal's constellation after Costas loop
> > are not synchronized (points everywhere in the constellation diagram).
> > Am I missing something i have to change in the usrp setting or
> > synchronization block?
> >
> >
> https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_Demod#Phase_and_=
Frequency_Correction
> >
> > Best regards,
> > Ali siddig
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> This is more-properly a question for the discuss-gnuradio mailing list,
> not here.
>
> My guess is that you will also require some kind of FLL to track the
> inevitable frequency differences between TX and RX.  But
>    that's just a slightly-educated guess.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000048a8fc0620c1c9e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I already tried that, but may be it is a parameter values=
 issue<div dir=3D"auto">I used :</div><div dir=3D"auto">Sample per symbol=
=3D4</div><div dir=3D"auto">Filter rolloff factor =3D350m</div><div dir=3D"=
auto">Prototype filter size 44</div><div dir=3D"auto">Loop bandwidth 62.8m<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">When the input value is =
random source (228,229), it works</div><div dir=3D"auto">But when the input=
 value is random source (0,256), it doesn&#39;t work</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Best=C2=A0Regards,</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024=
, 9:02=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On 28/08/2024 12:13, ali siddig wrote:<br>
&gt; Dear all,<br>
&gt; I have tried to use the QPAK modulation and demodulation exapmle from =
<br>
&gt; the tutorial in the link below. I am using two USRPs B205 as <br>
&gt; transmitter and receiver, frequency 910MHz , sampling rate 300k or 1 M=
 <br>
&gt; sps. However, the received signal&#39;s constellation after Costas loo=
p <br>
&gt; are not synchronized (points everywhere in the constellation diagram).=
 <br>
&gt; Am I=C2=A0missing something i have to change in the usrp setting or <b=
r>
&gt; synchronization block?<br>
&gt;<br>
&gt; <a href=3D"https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_De=
mod#Phase_and_Frequency_Correction" rel=3D"noreferrer noreferrer" target=3D=
"_blank">https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_Demod#Pha=
se_and_Frequency_Correction</a><br>
&gt;<br>
&gt; Best regards,<br>
&gt; Ali siddig<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.e=
ttus.com</a><br>
This is more-properly a question for the discuss-gnuradio mailing list, <br=
>
not here.<br>
<br>
My guess is that you will also require some kind of FLL to track the <br>
inevitable frequency differences between TX and RX.=C2=A0 But<br>
=C2=A0=C2=A0 that&#39;s just a slightly-educated guess.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--00000000000048a8fc0620c1c9e6--

--===============7361182468102653029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7361182468102653029==--
