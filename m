Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B72A2B16D4C
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 10:17:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A8F6386607
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 04:17:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753949824; bh=TyAcINN8+/AeBIaQonm7cjZJf+TwNiW6fdJtLaPjcqw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Alp7Hecnq85joSLRsKEhQU5zp8nv4lwPXfGkt5oxsqUYCI7ATQGMxKWVrrEWDymKo
	 ZDHDk2xmjyK5boPUPEY0pgAfWUPNUELv6OG63dIOFeqXuVma5ZVblPG+5GwI76ubrE
	 L3Xh15KRIG3a0FfVhPeEH7iYkDZXWRdBEkDlzRWiAgts+ot4oUheG9sAUszCSiEUqe
	 cAOEr1RErtt/nuFX9nU+MSjE2PnmiPsvluknyz7r0ym91a6pEFjugVOQzU+vi2Ydtv
	 GRFbxWhizXvDruwWm9qewmWkvz2cDsah1fkZZmcjJ5rrJDX8DDYyH6ljl3IW88BNyc
	 WAGn4e92jeZnQ==
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	by mm2.emwd.com (Postfix) with ESMTPS id EE11E386353
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 04:16:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ipa3U/hp";
	dkim-atps=neutral
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3e3ee9c7815so2535785ab.3
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 01:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753949799; x=1754554599; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zdo2E9gL4COO0Hl7XRevVaYbV/s2rlgfKlo2QPhMA+A=;
        b=ipa3U/hpczn6Z4gI7detTnm46Rmt4YtT2dgNpoluxDy4HUt7EXG0j3iI3RP352MO3d
         Bvj9uL6imyq2dUODw7nNXkReAfkpmLt6HKdXtoHzoPnTwRJY/Fzst32mHBEFVqm/pNvs
         9UcejaLlJ5bRIaFsTd9pJIMUUfS4/yNU7dKheF7IUtGP1EfqBkaskhte151/gH1Q5wk8
         w1PMMpoe1oSSekmP6m+7ICEgM/tynHncheaW0drPT2+BbWpvdSyQrzep9ZAZk6/lxZ0j
         R+3fp573AM4/LGPyA1aAWdV8442+t68BpY18cq92dIxX4ZofspxLLQt6EaU4Z0SMcQ/C
         8+kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753949799; x=1754554599;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zdo2E9gL4COO0Hl7XRevVaYbV/s2rlgfKlo2QPhMA+A=;
        b=Ha4FtETAmSdPnD7EyxbfWe0cfTbJ392auayjQoMBEU/jRPrRR6RkWCDeEN9WkuyT0O
         YyumkOJjY3gkS6WUMo6WnBw6CO40tfRNgnV5VaeRpwwtCElvizGblou9DucH7BL+DVJf
         QTwdsIObjkp+pIJi43t1ecnubsdxKf0KameQpWZ8ZD+KQbHoYu1tFyQfnOOU9Vpv4lVR
         09B5IQye+SnWNH72MxghFnPv+UH1aMYV8oSAIP9NuCrllYMJd3NvNxSbrbgipx6d+10A
         CsAh5vn0s640Djq4kG9WgXLvlZmBwuY8kPgTeLiCbDPP8VrFCrVXwzaRlDocv2x27e4n
         KlsA==
X-Gm-Message-State: AOJu0YwznOGLtkvIGfXyJfhQuG0LKUc1zly/HbacVKw9tCPuWNCW6k+v
	chGfo3fmZKAbUYkEmocSWh5CiThDvYPrNR96v7O1jxaK0Ou1nyxzIEZcgKM2iOM6vKHPHihCJbU
	/mIaWDxvR10lDUZoFnl32ioQW8pOrYxnRnfR9
X-Gm-Gg: ASbGncuG8OTs22YSq0kRF0cxntfh0lFQx3JRVaAd74SPf+FggCga5hTErkEDfibOoT7
	ay2DLbUhD+xQzir1alUIYe31rO+ceYTjOSw7yvdQbXQvzywrfvvJU7KNJ9Tjt6YtE7/U5qIzPI/
	t+eZw6ctJ0+k0BOYtqioVy3ez6VUjS9rh7jeCAjiNzXrj0vspaE/TDorVuklawC7qvqxfV2o6qr
	h98FQ==
X-Google-Smtp-Source: AGHT+IFBXRvZmTEe1gBn0XIqZGrLkXW+be/8ZJkInmVFWw0XIlTt8+Qv+RawiwuhymOJ8T2lgg3Gv4uecOM62qZCdKY=
X-Received: by 2002:a05:6e02:1c01:b0:3e4:9a1:6542 with SMTP id
 e9e14a558f8ab-3e409a167cemr2750215ab.18.1753949799196; Thu, 31 Jul 2025
 01:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
In-Reply-To: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 31 Jul 2025 11:16:27 +0300
X-Gm-Features: Ac12FXxkMYm2ccxQUyOKIYwZ10CBBRWd1QBSoO8AZRV04nmllCGRuyDeRFgRm9k
Message-ID: <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7UCUA4F2CWFC2PH24YNZSHI3IG24CHOE
X-Message-ID-Hash: 7UCUA4F2CWFC2PH24YNZSHI3IG24CHOE
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7UCUA4F2CWFC2PH24YNZSHI3IG24CHOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7029561556914498940=="

--===============7029561556914498940==
Content-Type: multipart/alternative; boundary="000000000000bc2c76063b354291"

--000000000000bc2c76063b354291
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did some more testing. Tried to fill rx_streamer's buffers in purpose.
.stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
streamer timeout set to 3".

1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1" each
turn.
More than 16" to complete the read. No OO's.
2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1" to
sleep
in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.

Is overflow even working right?
How large are the streamer's receive buffers?

Nikos

On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hi,
>
> I am getting a few overflow errors after sometime, from using my code..
> First OOs in stdout and then metadata at which point it stalls.
> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
> Each time I read .num_samps in a loop until complete and then restart the
> streamer.
> I can't think of any case that I don't read all of the samples, so this
> shouldn't happen.
> What tools are there to debug this issue?
> A function to monitor the rx_streamer internal buffers would be very
> useful.
> Even the filename that implements this overflow would be helpful.
> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>
> TIA
> Nikos
>
>

--000000000000bc2c76063b354291
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Did=
 some more testing. Tried to fill rx_streamer&#39;s buffers in purpose.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">.stream_mode =3D=
=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_default" =
style=3D"font-size:small">streamer timeout set to 3&quot;.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">1) .num_samples =3D 16384. Read 1024 eac=
h time in a loop sleeping 1&quot; each turn.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">More than 16&quot; to complete the read. No O=
O&#39;s.</div><div class=3D"gmail_default" style=3D"font-size:small">2) .nu=
m_samps =3D 3e5. Read 1024 samples each time in a loop adding 1&quot; to sl=
eep</div><div class=3D"gmail_default" style=3D"font-size:small">in each tur=
n (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO&#39;s.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">Is overflow even working right?</div>=
<div class=3D"gmail_default" style=3D"font-size:small">How large are the st=
reamer&#39;s receive buffers?</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sm=
all">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30, 2025 at 3:04=E2=80=AF=
PM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small=
">Hi,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small">I am getting a few =
overflow errors after sometime, from using my code..</div><div class=3D"gma=
il_default" style=3D"font-size:small">First OOs in stdout and then metadata=
 at which point it stalls.</div><div class=3D"gmail_default" style=3D"font-=
size:small">I&#39;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_A=
ND_DONE,</div><div class=3D"gmail_default" style=3D"font-size:small">Each t=
ime I read .num_samps in a loop until complete and then restart the streame=
r.</div><div class=3D"gmail_default" style=3D"font-size:small">I can&#39;t =
think of any case that I don&#39;t read all of the samples, so this shouldn=
&#39;t happen.</div><div class=3D"gmail_default" style=3D"font-size:small">=
What tools are there to debug this issue?</div><div class=3D"gmail_default"=
 style=3D"font-size:small">A function to monitor the rx_streamer internal b=
uffers would be very useful.</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">Even the filename that implements this overflow would be help=
ful.</div><div class=3D"gmail_default" style=3D"font-size:small">Grepping &=
quot;OO&quot; in the sources doesn&#39;t help. Always hits in &quot;BOOST&q=
uot;:(</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div></div>
</blockquote></div>

--000000000000bc2c76063b354291--

--===============7029561556914498940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7029561556914498940==--
