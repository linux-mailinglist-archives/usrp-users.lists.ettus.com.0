Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F31603F6C12
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 01:07:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45FF1384FCE
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 19:07:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="FR7QH5T4";
	dkim-atps=neutral
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	by mm2.emwd.com (Postfix) with ESMTPS id B692D3813E4
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 19:06:52 -0400 (EDT)
Received: by mail-ua1-f54.google.com with SMTP id y36so12671103uad.7
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 16:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j8OUYRFjiMdxApD566B2MAg147JToEnr4Hoc1P8507Q=;
        b=FR7QH5T4GcA81+ojFuiSL8JomZeI7WczFk9nHVkgSEsu8UkF09nPdCyheeimmu9M2D
         1bFni/6QFWaOXhmsYlh7y2arAzVnVkMJcE6REEdoXg7lj3jwz61B3mbOqpS2XXPl5LZw
         fosafsCd0zHjrXl4FQ2Y9BsZKxOso66TczN6fWu/1NeYW/n2q32Jaq9APhm5WuvEsNCA
         hZbOL1+c6fgfyn1eHN7J2QoLZ+jm+yTQ6c0d08Jn3kn/g+OJCMgJXz/Z7eVD/gWZ5DZQ
         7LqAW+9qJFuzNYCQMNT4C4Q24luqzVokXaPAJNnDFGZwVM7m96CrZ28+wEyeFnybAGaW
         3C1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j8OUYRFjiMdxApD566B2MAg147JToEnr4Hoc1P8507Q=;
        b=nRdPxm0tNbXR2cIu2QfUCM0GFH+Fd4QxPcoA8KOTIKw/VidS5F+N3XZV1HJ0Qy4Swu
         OozcRzl9abJZqCMIMWqHO0hTI1kGXL/ZWf2pRAkJDUjq3ALbHatdzQuC/j9Sdi2XDhAX
         Fn0yb94mGCYlgIVFXBerXalOUTYZtOO7nYofbpeR+UR9TIaj40esMMiv0uZdIsM1bWK1
         njR1/qJ3IfXx4IcqnpMX/Lw53T68X8mR+Xw218K5nsEDV+U39PlKG1M1eZw0pDc4dCWC
         rolW23bJpavl7pUtC8V4kfDzAm6o8Uo++Nz8DVECCIRQnDULgbIaRH2h3zuF53pFjGEI
         nKyA==
X-Gm-Message-State: AOAM5328sB8NJH+ttwlEpIXRa0WTiiGCPmlMboulScNUt7x/DiSJeGxo
	ph6i+KErS5MH7PBkFW+ajBmEV+Q5XKlQDpv0D+bh7nM1
X-Google-Smtp-Source: ABdhPJzscNiskHYhWeTpwllcSiHaOGFplhTAwWxW+ZLlFKzCXelCuHESSLEk3BpoIead7MFTyUAso4WmfstEXUJaERk=
X-Received: by 2002:a9f:264b:: with SMTP id 69mr209327uag.112.1629846412188;
 Tue, 24 Aug 2021 16:06:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
In-Reply-To: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 24 Aug 2021 19:06:16 -0400
Message-ID: <CAL7q81tkGV0XUtAkdFC1m1S028dvtszXfDgHjnOU570NaHG7UA@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Message-ID-Hash: WRFILXYZ76JAYBS22MAMJYKE2B4DGHUZ
X-Message-ID-Hash: WRFILXYZ76JAYBS22MAMJYKE2B4DGHUZ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRFILXYZ76JAYBS22MAMJYKE2B4DGHUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0458555170427133134=="

--===============0458555170427133134==
Content-Type: multipart/alternative; boundary="0000000000006ff45105ca56301b"

--0000000000006ff45105ca56301b
Content-Type: text/plain; charset="UTF-8"

Hello Ivan,

Are you steaming into the ARM processor / PS or are you streaming over the
network? Are you running a UHD app or using GNU Radio?

Jonathon

On Tue, Aug 24, 2021 at 5:40 PM Ivan Zahartchuk <adray0001@gmail.com> wrote:

> Hi,
> I try to set length of fft = 512 or 1024 for USRP E310 (RFNoC UHD 4), but when the value is set I haven`t received the data. When the fft = 256 it`s work fine.
>
> My graph looks like this:
> 0/Radio#0:0==>0/FFT#0:0
> 0/FFT#0:0==>0/SEP#0:0
>
> Setup of my SEP is:
>
> stream_endpoints:
>   ep0:                       # Stream endpoint name
>     ctrl: True                      # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768              # Ingress buffer size for data
>
> How can I set value fft length 512 or 1024 and how it`s work?
> I would greatly appreciate your answer.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006ff45105ca56301b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ivan,<div><br></div><div>Are you steaming into the A=
RM processor / PS or are you streaming over the network? Are you running a =
UHD app or using GNU Radio?</div><div><br></div><div>Jonathon</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Aug 24, 2021 at 5:40 PM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gma=
il.com">adray0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><pre id=3D"gmail-m_788569047819=
7112252gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span la=
ng=3D"en">Hi,<br>I try to set length of fft =3D 512 or 1024 for USRP E310 (=
RFNoC UHD 4), but when the value is set I haven`t received the data. When t=
he fft =3D 256 it`s work fine.<br></span></pre><pre id=3D"gmail-m_788569047=
8197112252gmail-tw-target-text" style=3D"text-align:left"><span lang=3D"en"=
>My graph looks like this:<br>0/Radio#0:0=3D=3D&gt;0/FFT#0:0<br>0/FFT#0:0=
=3D=3D&gt;0/SEP#0:0<br><br></span></pre><pre id=3D"gmail-m_7885690478197112=
252gmail-tw-target-text" style=3D"text-align:left"><span lang=3D"en">Setup =
of my SEP is:<br><br>stream_endpoints:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint n=
ame<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>=C2=
=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buf=
f_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buf=
fer size for data<br><br></span></pre><pre id=3D"gmail-m_788569047819711225=
2gmail-tw-target-text" style=3D"text-align:left"><span lang=3D"en">How can =
I set value fft length 512 or 1024 and how it`s work?<br>I would greatly ap=
preciate your answer.</span></pre></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ff45105ca56301b--

--===============0458555170427133134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0458555170427133134==--
