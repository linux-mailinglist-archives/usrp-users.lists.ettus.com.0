Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 760A11251AE
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 20:17:53 +0100 (CET)
Received: from [::1] (port=58816 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihepU-00014b-1m; Wed, 18 Dec 2019 14:17:52 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:37716)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ihepQ-0000tw-8T
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 14:17:48 -0500
Received: by mail-lj1-f169.google.com with SMTP id u17so3395423lja.4
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 11:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a4jkUtGJdF0GLWtTNVMj4ArcIK4Cs0XtxuWPn4sMbDA=;
 b=uNhHtCz/Gc8ehLvGPjk+N8vWMszyKvfp4+uEdBT1f4HBBihzWbR9iK9jEzwxiXsIcB
 fNbDQerWHDfJzpAt+E6AiuApu5ymJAs5v6CF/XKHn2cxO3vvyRzgq9fdQzHpWpiwxzhR
 O3uXwX42KIylGBp+bI9T94uwPyhkWbRlrGSFVUshzwArT+9ac4KiG0LCCGrQFmZRtm7u
 44dqp7Z23UVDEl+ZmAAgExEQHoExHFagL/Vdp8RNzAVwxGZoXhB2s9ix/2+/ubZvDqGy
 Z4UQD3anmTulbk4Z+I22/h+VXMzNFIdefOeGp8NN//HugGn7tljke9dCbh8/vJlJcYKA
 BgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a4jkUtGJdF0GLWtTNVMj4ArcIK4Cs0XtxuWPn4sMbDA=;
 b=iMpIfzQfrxhtXqJTrCleSG0yyEYvTKl08h02GoapVFtpdy7128Roabrc3rJcbZhQAK
 JFS7tUrfWx1RXngwPdBvWBCQW+75pra+6ZpOOfhJiB+1FKS3clxod2H8Q01RdRuhyVlV
 gU1glgebAsEhUR03moWxYqUJvNIKNDK3YzT2oesccjb+i9UvtdhsE+F4MHKu5sgYgAxE
 Hc9K3TDPpVEeCyphZVdAPR1iQfqzWcxKVlpgFnI+FxQt3rVScpECNdRzQXoiBZfOLeIP
 /oanIXdXOUAK99Be5DMAld+F0iaOmDoR4qk4DpYn2WLh8GF8qeI7H/fh4MTLyK+u8ikj
 Zepg==
X-Gm-Message-State: APjAAAVAc4jN2wRC5M2xUjomntkbA3znaS2anZ8T/1iUvVYEndydG/Du
 VyjzaLcIM/jQKbR5GJc6SJd5zoyeId+odczSIbrbgCAd
X-Google-Smtp-Source: APXvYqzRleCzzuzi0i3xna5ZQAdf/SeoYKZZGN1k9xYs19PCY98j+aPlUGBk6wGmh+tH00x1k8yFg21T02/m5Xr0XlA=
X-Received: by 2002:a2e:7d01:: with SMTP id y1mr3104180ljc.100.1576696625816; 
 Wed, 18 Dec 2019 11:17:05 -0800 (PST)
MIME-Version: 1.0
References: <BL0PR0102MB35373B0C189BE4F553378871CB5B0@BL0PR0102MB3537.prod.exchangelabs.com>
In-Reply-To: <BL0PR0102MB35373B0C189BE4F553378871CB5B0@BL0PR0102MB3537.prod.exchangelabs.com>
Date: Wed, 18 Dec 2019 13:16:53 -0600
Message-ID: <CANf970YcgCH0aBVFvUtGhfs0PokmjkNe3gK-1GBSs2rrr-BDLg@mail.gmail.com>
To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
Subject: Re: [USRP-users] E312 RX_B issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3487195366998714500=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3487195366998714500==
Content-Type: multipart/alternative; boundary="0000000000004d03cd0599ff4a59"

--0000000000004d03cd0599ff4a59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Isaac,

What version of UHD are you using to elicit this behavior?

Sam Reiter
Ettus Research


On Mon, Dec 9, 2019 at 9:21 PM Beeman, Isaac L. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello group,
>
>
>
> I have run into an issue with the RX_B port (channel 1) on the E312 that =
I
> haven=E2=80=99t been able to make any sense of.
>
>
>
> RX_A (channel 0) works great: I get clear in-phase and quadrature
> components that I have been able to graph <https://imgur.com/dQRl5mN>.
> When I do the same thing with RX_B (channel 1), I get something
> completely unexpected <https://imgur.com/4WgU5R5>. I am using the same
> rate (=3D0.5 Msps) frequency (=3D900 MHz), gain (=3D50 dB), bandwidth (=
=3D200 kHz)
> on each and have had this happen whether I use both channels at the same
> time or read from RX_B individually.
>
>
>
> I haven=E2=80=99t had anything like this happen when I transmit on both T=
X_A and
> TX_B, and I have tested this on multiple USRP E312 radios and 900 MHz
> antennas to make sure it wasn=E2=80=99t something unrelated to the channe=
l/port
> itself.
>
>
>
> Does anyone know what could be happening?
>
>
>
> -Isaac Beeman
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004d03cd0599ff4a59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Isaac,<div><br></div><div>What version of UHD are you usin=
g to elicit this behavior?</div><div><br clear=3D"all"><div><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>Ettus Research<br></div></d=
iv></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 9:21 PM Beeman,=
 Isaac L. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8398194028674980837WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">Hello grou=
p,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">I have run=
 into an issue with the RX_B port (channel 1) on the E312 that I haven=E2=
=80=99t been able to make any sense of.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">RX_A (chan=
nel 0) works great: I get clear in-phase and quadrature components that I h=
ave been able to
<a href=3D"https://imgur.com/dQRl5mN" target=3D"_blank">graph</a>. When I d=
o the same thing with RX_B (channel 1), I get
<a href=3D"https://imgur.com/4WgU5R5" target=3D"_blank">something completel=
y unexpected</a>. I am using the same rate (=3D0.5 Msps) frequency (=3D900 =
MHz), gain (=3D50 dB), bandwidth (=3D200 kHz) on each and have had this hap=
pen whether I use both channels at the same time or read from
 RX_B individually. <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">I haven=E2=
=80=99t had anything like this happen when I transmit on both TX_A and TX_B=
, and I have tested this on multiple USRP E312 radios and 900 MHz antennas =
to make sure it wasn=E2=80=99t something unrelated
 to the channel/port itself.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">Does anyon=
e know what could be happening?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Georgia,serif">-Isaac Bee=
man<u></u><u></u></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004d03cd0599ff4a59--


--===============3487195366998714500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3487195366998714500==--

