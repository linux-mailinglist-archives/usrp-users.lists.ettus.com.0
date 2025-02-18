Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B932BA3ACBE
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 00:46:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD17538606C
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 18:46:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739922375; bh=VSfBc56MakVjm9HqMIeasrRrJaASbNjeOFVQCqYGdGU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C9rrZcsHfJ2qtrGoDHHhpm22YjfHmgauwsLbjfPyD6i0tGDn9i9aEY3hZVPXezqjK
	 d/MpalfQJIM6xWcnOfC2ExBpQ3+cvDRxoQD2X+R3taW/FXjoPoqUFTnOHr6Mlt3H/S
	 TJ22MXLrtOSYzW8HZqS5l2tHSfTklN8prGee9ezwVk8itZv+AVtXmxebwhJChrgKwf
	 SJ2t0oDiD6pyW639EUhFAK/63cqueuaFVhyP4ZKFmRUdw8HrDI3ekmxmkW0J/NYZqk
	 SeMuCJpzzVEgfpKBM63dKo0Zf9e1UcMSNTKFyZ2w4FEHlI3BGILCG4+MQ60qGvH8fS
	 HBaNoXK28l+Hw==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 02BDF385ACB
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 18:46:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="w6hb4T2H";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-546237cd3cbso2744968e87.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 15:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739922368; x=1740527168; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PJLVACc4tod3HDedG1g0co3oQyIXvwRyw0Lg2msc0lU=;
        b=w6hb4T2H7UlmCKn1zRQh2+Quc2YzBsxhdnKfsK+5FrL3hxOx70HUMANduiG81kYHAS
         TDqc8ajOX2kWJ2uu5Q6YS2IJz6reFFhoPH6nf7M3iMEoR9cySyPxYwMUZambysZJO6qC
         8GZdusCJBIby26i8qWoy1MRdGL2eFDEeF/Ry75mZBHi33/uubpRyuyucWgDY6KRReaCi
         3bBVEX66FDDqPHCfryJYyuWl9rJCzZEFVzeDh/MyAfnr4qzJocfsg/JQcnp2il21kIfE
         kwM3ZksI2KG2CrqyHegBXyIctC4PeT0q+/cVTKPBj7YX30E3Vo2MEY3xDY6KxngU/uh3
         DLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739922368; x=1740527168;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PJLVACc4tod3HDedG1g0co3oQyIXvwRyw0Lg2msc0lU=;
        b=MAi2YqXLfbNEQ8jq8R4yI7h1TKXjnaGIkP+PMUDm6HaONWlKRXX8VeyXdm9BYzp9Li
         8WiMHhUM0PgjQn1UbhExqTGRvhcEWtO06lkrpUEHcbyQRQ+gMzsAMMSbyad27c23vP5s
         PYVLP8TjUxwBkyWUujE3/l+UkpibE4nysa4VfUd1jTzO591bsV1iFToz7Ey9gT4e0vUW
         NZ8HqZ50XVXWeI7Pse+AXRbGfcCwtXvu7QT1RVfbkx2zE7S0PTZSP3SQWRYwisUwt/3W
         1ybencxw+FzZggItoGv5zU4sB1VWwOzyDP3Vn3n4s4Y6fCuZ5qfS8iNUQL83ebb8uviU
         kSmA==
X-Gm-Message-State: AOJu0Yx2sjtEbxpzi0d0U00Yr+z8KTv296hZSHWiMFmjnxuOEoZvFUW8
	AVb7xtUH+8H2G4gjbM71yNXnbqpLfXY9LKvfSg/f+PKqQYhdVqepxjyZw4jcanQHBl8I0J7zn7q
	Ul6KNWeVM/ei+6o7wiS7Gh1FbwmzWZ7iWBIxrL2/tZoPVb2zE
X-Gm-Gg: ASbGncsl9zl4EQBQT8BuJ3qypnk7mU3eGAcKPDLJkAKtvgD8QR8EeRTxqT3Ug4tOWvF
	Ju33bbLGus4c7hOnPsj+3tB82p8sw0/6d9FdAjkD8EVgjg3KNGggKq9a9edQG2k4IjKv7oN87
X-Google-Smtp-Source: AGHT+IFeFL+GSim6A2vXOdiU1IDzGsRMKzQ04wHzXBDsHZArAC3ZzIwk5iZf9rMT4pqOXQEkFSn8WrA9CnkVuJIPbxk=
X-Received: by 2002:a05:6512:3caa:b0:545:2776:8529 with SMTP id
 2adb3069b0e04-5452fe2cee6mr4311133e87.5.1739922367342; Tue, 18 Feb 2025
 15:46:07 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
In-Reply-To: <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 19 Feb 2025 09:45:55 +1000
X-Gm-Features: AWEUYZkgnAqOzmDonlPcAyXnoSsO-pHnbYNSUgUZdkBAbEz4FTv4Lw68vT4qdd4
Message-ID: <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: T2FPPOLY2AFR2A4BOB5ZYBNROTEX5ISR
X-Message-ID-Hash: T2FPPOLY2AFR2A4BOB5ZYBNROTEX5ISR
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2FPPOLY2AFR2A4BOB5ZYBNROTEX5ISR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5366225116954074726=="

--===============5366225116954074726==
Content-Type: multipart/alternative; boundary="000000000000a48d0f062e733e03"

--000000000000a48d0f062e733e03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I assumed that was the case.  However, it is not clear from the X300
documentation how sharp those filters are.  Can you tell me how wide the
transition band is at the lower sample rates?

To give you some context, I would like to use an X300 (or X310) with a
UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which is
83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps to
minimise the data rate between the USRP and the host PC.  However, before I
do this I need to be certain that the usable bandwidth at this sample rate
will be greater than 83.5 MHz.  Is this information documented somewhere?




On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> There will always be some edge roll off. Decimation includes filtering an=
d
> those filters cannot be infinitely steep.
> Sent from my iPhone
>
> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
> >
> > =EF=BB=BF
> > Hi All,
> >
> > I have a question about the usable bandwidth of the X300 USRP / UBX-160
> daughterboard combo at sampling rates below 200 Msps:
> >
> > As I understand it, the UBX-160 receiver has an analog (hardware) filte=
r
> before the ADC that limits the usable bandwidth to 160 MHz, while the ADC
> runs at 200 Msps.  Therefore the usable bandwidth is around 80% of the
> sample rate.
> >
> > My question is:  What is the usable bandwidth at lower sampling rates?
> Does the 80% factor always apply?
> >
> > For example, if I set the decimation factor to 4, so that my sampling
> rate is 50 Msps, does this mean that the usable bandwidth will be 40 MHz?
> >
> > Thanks & Regards,
> > Brendan.
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a48d0f062e733e03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 However, it is not=
 clear from the X300 documentation how sharp those filters are.=C2=A0 Can y=
ou tell me how wide the transition band is at the lower sample rates?<div><=
br></div><div>To give you some context, I would like to use an X300 (or X31=
0) with a UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, =
which is 83.5 MHz wide.=C2=A0 Ideally I would like to use a sample rate of =
100 Msps to minimise the data rate between the USRP and the host PC.=C2=A0 =
However, before I do this I need to be certain that the usable bandwidth at=
 this sample rate will be greater than 83.5 MHz.=C2=A0 Is this information =
documented somewhere?=C2=A0=C2=A0</div><div><br></div><div><br></div><div>=
=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025 at 23:11, Marcus D Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
here will always be some edge roll off. Decimation includes filtering and t=
hose filters cannot be infinitely steep. <br>
Sent from my iPhone<br>
<br>
&gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield &lt;<a href=3D"=
mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield=
@vectalabs.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi All,<br>
&gt; <br>
&gt; I have a question about the usable bandwidth of the X300 USRP / UBX-16=
0 daughterboard combo at sampling rates below 200 Msps:<br>
&gt; <br>
&gt; As I understand it, the UBX-160 receiver has an analog (hardware) filt=
er before the ADC that limits the usable bandwidth to 160 MHz, while the AD=
C runs at 200 Msps.=C2=A0 Therefore the usable bandwidth is around 80% of t=
he sample rate.<br>
&gt; <br>
&gt; My question is:=C2=A0 What is the usable bandwidth at lower sampling r=
ates?=C2=A0 Does the 80% factor always apply?=C2=A0 <br>
&gt; <br>
&gt; For example, if I set the decimation factor to 4, so that my sampling =
rate is 50 Msps, does this mean that the usable bandwidth will be 40 MHz?<b=
r>
&gt; <br>
&gt; Thanks &amp; Regards,<br>
&gt; Brendan.<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a48d0f062e733e03--

--===============5366225116954074726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5366225116954074726==--
