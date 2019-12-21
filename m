Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3A0128B87
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2019 21:36:36 +0100 (CET)
Received: from [::1] (port=50168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iilUF-000723-74; Sat, 21 Dec 2019 15:36:31 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:37502)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <gena.kazachek@gmail.com>)
 id 1iilUA-0006t2-V4
 for usrp-users@lists.ettus.com; Sat, 21 Dec 2019 15:36:27 -0500
Received: by mail-ot1-f54.google.com with SMTP id k14so16644560otn.4
 for <usrp-users@lists.ettus.com>; Sat, 21 Dec 2019 12:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6W9YTmRikc0PmqfxFfona+mr8SOKqBQvaxzXD/0e1CY=;
 b=Mu1oA8qO0lfecO8nrahPFZitzUFalaQsJyGzMLQPrsUPMZ4QkHpQ4WFV6AeN76fkEg
 Fh28mZPgAaSW0GsWuwewQHe2uj5jOyRfUvkKqsT0mCvn0HHWTsvTR2v17l4bvsbuHYYJ
 M6y5wI62gEj0Eys3+MXKpOVhDn/gr7RL2q/chfK9RIZjhjePZeV+8Y1fDUxfUnRegbok
 xp41TrCRAFdKxQemewrGKzdBthFsPXJFx/8OjU3Z4KVEPLFfrKzfbJyB7XIFz7r36VKw
 puFDzntFBU7Wqbuks0q5A6uuhSAME7XlmdrODVUhRJo/1cezZf4sTgvmBFvj2pEo3lE4
 Npfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6W9YTmRikc0PmqfxFfona+mr8SOKqBQvaxzXD/0e1CY=;
 b=lEAKQk5KLunaHzJlcMcTkrhbfQNiI/SyYPQd/0HEBRRKkBzuKyl0BjWH7lxpNTONqp
 RioL1wdErKn/SiWzrrf7nRnTh53oZT5w5xsjMfb0arcNAW0gBAI5sgXvD1Ffkcu2vAHF
 ytEmb0k3kEIj+8dxFXuq/ddM9HO9ccLpAb0lqQ9ZZXlsFL7t+ujYYHFEfKNf6411joJB
 zEfjG1olafE7OvKVBnn1WF4LPgv6w3SJOLSHNWBla1g6TQDaQ4BwLJhyw/5ZGKgO1eD0
 Cf5MOEXvny+Hr3rbOTV4Wa89OZ5j6wA5ur7nsqumXHJRKJUQCQ/tfdmT2PGgkKIHU9Dx
 lQ+g==
X-Gm-Message-State: APjAAAUsCDDstiYshqmYxirKFmqXJSg+/z21soW3qu6NVqht0yr5S+VC
 3AQ6mgKFHUBXHLnqJd5ikCaS5Erw8YGaXx63yAk=
X-Google-Smtp-Source: APXvYqxj76NtpHofIkimS8I55JbdcHdkwLZVNMcJ6bEM0Up19hvCmI6FsiHZJs98FqGaU4ZEvJ/pTJK+dgpugOfdI6U=
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr21922445otq.1.1576960546287; 
 Sat, 21 Dec 2019 12:35:46 -0800 (PST)
MIME-Version: 1.0
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
 <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
 <CADfCwn2mNfRYh0HpOr-cYPGw99oZW2D08Y2fab=10Tvg3SE9dw@mail.gmail.com>
 <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
 <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
 <39281f29c310afd41aa6795a29209402fff99484.camel@ettus.com>
 <95808e09-d093-ae35-83b8-abc7ff04620e@comcast.net>
In-Reply-To: <95808e09-d093-ae35-83b8-abc7ff04620e@comcast.net>
Date: Sat, 21 Dec 2019 23:35:04 +0300
Message-ID: <CADfCwn0CCHMoHXCKoURNGih5_DCV-t5ym_DMDYek4wThxJpkwg@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Subject: Re: [USRP-users] Pulsations on a QPSK transmission
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
From: =?utf-8?b?0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQuiB2aWEgVVNSUC11c2Vy?=
 =?utf-8?q?s?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQug==?=
 <gena.kazachek@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5946024724764791210=="
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

--===============5946024724764791210==
Content-Type: multipart/alternative; boundary="0000000000002fb587059a3cbdab"

--0000000000002fb587059a3cbdab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, thanks for your attention.

> I always thought these pulsations were due to some kind of bug with
> Gqrx. If you change the FFT size, the rate of pulsation changes.
No, it doesn't. I've tested, FFT size doesn't affect rate of pulsation.

> Also, you don't see this on a real spectrum analyzer, even an inexpensive
one.
I don't have one, but as I said before, decoding is failing when this
pulsations are on the air. So, I believe, that gqrx is fine here.

> the stripes go away when you turn of the USRPs?
Yes, when I stop graph, this pulsations are gone

> Also, the stripes aren't there, either, when you use the Lime on the
> same 1.011 GHz frequency, exactly?
Yes, it is correct, I just disable USRP block, enable Lime block and swap
devices.

> My suspicion is that this is mostly USB3 emissions
I've tried to connect through USB2, result is the same

> Also, are you using an external power supply for your USRPs
No, they are connected to my host pc by USB only.

On Sat, 21 Dec 2019 at 21:15, Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I always thought these pulsations were due to some kind of bug with
> Gqrx. If you change the FFT size, the rate of pulsation changes. Also,
> you don't see this on a real spectrum analyzer, even an inexpensive one.
>
> Ron
>
> On 12/21/19 09:25, Marcus M=C3=BCller via USRP-users wrote:
> > Just to rule out interferers:
> >
> > * the stripes go away when you turn of the USRPs?
> > * Also, the stripes aren't there, either, when you use the Lime on the
> > same 1.011 GHz frequency, exactly?
> >
> > My suspicion is that this is mostly USB3 emissions (those could be, but
> > not necessarily are, happening through the USRP itself, or through
> > cables, or through your host computer.
> >
> > If your sampling rates allow it (they do, I think you're using 500 kHz
> > only=C2=B9), try to use a USB2-only cable or port and see whether these
> > disappear.
> >
> > Also, are you using an external power supply for your USRPs? If this is
> > actually an interferer, it might as well be some periodic behaviour of
> > the power supply.
> >
> > Best regards,
> > Marcus
> >
> >
> > =C2=B9That's a sampling rate that should work on B200 and B20xmini, but=
 it's
> > uncomfortably low =E2=80=93 try with 1 MHz and host-side resampling, ma=
ybe?
> >
> > On Wed, 2019-12-18 at 21:28 +0300, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-users
> > wrote:
> >> Hello, Sam!
> >> No, I use two devices as transmitter and receiver and third board I
> >> use just to observe sonogram.
> >> Pulsations exist on both b205 and b210 devices if I use them as a
> >> transmitter and not exist if I use as transmitter another vendor's
> >> device - LimeSDR.
> >>
> >> All 3 USRP devices are industrial with metal case, and LimeSDR is
> >> not.
> >>
> >> On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=
=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <
> >> gena.kazachek@gmail.com> wrote:
> >>> All 3 USRP devices are industrial with metal case, and LimeSDR is
> >>> not.
> >>>
> >>> On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=
=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <
> >>> gena.kazachek@gmail.com> wrote:
> >>>> Hello, Sam!
> >>>> No, I use two devices as transmitter and receiver and third board
> >>>> I use just to observe sonogram.
> >>>> Pulsations exist on both b205 and b210 devices if I use them as a
> >>>> transmitter and not exist if I use as transmitter another
> >>>> vendor's device - LimeSDR.
> >>>>
> >>>> On Wed, 18 Dec 2019 at 18:49, Sam Reiter <sam.reiter@ettus.com>
> >>>> wrote:
> >>>>> Just to be clear, you see these pulsations when transmitting
> >>>>> with a b205mini, but not with the b210?
> >>>>>
> >>>>> Is the b205mini a bare board or an industrial model with a case
> >>>>> and aluminum heat sync?
> >>>>>
> >>>>> Sam Reiter
> >>>>> Ettus Research
> >>>>>
> >>>>>
> >>>>> On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=
=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-
> >>>>> users <usrp-users@lists.ettus.com> wrote:
> >>>>>> Hello!
> >>>>>> I'm trying to build QPSK based system on GNURadio.
> >>>>>> I'm using two USRP B205-mini boards as transmitter and
> >>>>>> receiver, also I got B210 board that I run gqrx on to watch
> >>>>>> what is really going on.
> >>>>>> I noticed a strange behaviour on my tests, so I began to
> >>>>>> investigate it and ended to a very simple graph, that is in
> >>>>>> attachment. On a frequencies that are multiple of 10Mhz, like
> >>>>>> 1020Mhz all works like expected and sonogram looks good. If I
> >>>>>> tune to any other frequency, even 1Hz more or less, the
> >>>>>> sonogram is full of pulsations and frequency of that
> >>>>>> pulsation is depends of exact tune frequency. I attached some
> >>>>>> screenshots of that pulsations.
> >>>>>> On receiving part that pulsations cause many errors while
> >>>>>> decoding.
> >>>>>> I got another board, LimeSDR-Mini, and no such behaviour
> >>>>>> observed while running graph on it.
> >>>>>> I wonder what is going on, and how can I fix this problem.
> >>>>>> Thank you.
> >>>>>> _______________________________________________
> >>>>>> USRP-users mailing list
> >>>>>> USRP-users@lists.ettus.com
> >>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>
> >>>> --
> >>>> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=
=D0=B0=D1=87=D1=91=D0=BA
> >>>
> >>> --
> >>> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=
=D0=B0=D1=87=D1=91=D0=BA
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=
=D1=87=D1=91=D0=BA

--0000000000002fb587059a3cbdab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello, thanks for your attention.<br=
></div><div><br></div><div dir=3D"ltr">&gt; I always thought these pulsatio=
ns were due to some kind of bug with <br>&gt; Gqrx. If you change the FFT s=
ize, the rate of pulsation changes.</div><div>No, it doesn&#39;t. I&#39;ve =
tested, FFT size doesn&#39;t affect rate of pulsation.</div><div><br></div>=
<div>&gt; Also,=20
you don&#39;t see this on a real spectrum analyzer, even an inexpensive one=
.</div><div>I don&#39;t have one, but as I said before, decoding is failing=
 when this pulsations are on the air. So, I believe, that gqrx is fine here=
.</div><div><br></div><div>&gt; the stripes go away when you turn of the US=
RPs?</div><div>Yes, when I stop graph, this pulsations are gone</div><div><=
br></div><div>&gt; Also, the stripes aren&#39;t there, either, when you use=
 the Lime on the<br>
&gt; same 1.011 GHz frequency, exactly?</div><div>Yes, it is correct, I jus=
t disable USRP block, enable Lime block and swap devices.<br></div></div><d=
iv><br></div><div>&gt; My suspicion is that this is mostly USB3 emissions</=
div><div>I&#39;ve tried to connect through USB2, result is the same<br></di=
v><div><br></div><div>&gt; Also, are you using an external power supply for=
 your USRPs</div><div>No, they are connected to my host pc by USB only.<br>=
</div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, 21 Dec 2019 at 21:15, Ron Economos via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I alw=
ays thought these pulsations were due to some kind of bug with <br>
Gqrx. If you change the FFT size, the rate of pulsation changes. Also, <br>
you don&#39;t see this on a real spectrum analyzer, even an inexpensive one=
.<br>
<br>
Ron<br>
<br>
On 12/21/19 09:25, Marcus M=C3=BCller via USRP-users wrote:<br>
&gt; Just to rule out interferers:<br>
&gt;<br>
&gt; * the stripes go away when you turn of the USRPs?<br>
&gt; * Also, the stripes aren&#39;t there, either, when you use the Lime on=
 the<br>
&gt; same 1.011 GHz frequency, exactly?<br>
&gt;<br>
&gt; My suspicion is that this is mostly USB3 emissions (those could be, bu=
t<br>
&gt; not necessarily are, happening through the USRP itself, or through<br>
&gt; cables, or through your host computer.<br>
&gt;<br>
&gt; If your sampling rates allow it (they do, I think you&#39;re using 500=
 kHz<br>
&gt; only=C2=B9), try to use a USB2-only cable or port and see whether thes=
e<br>
&gt; disappear.<br>
&gt;<br>
&gt; Also, are you using an external power supply for your USRPs? If this i=
s<br>
&gt; actually an interferer, it might as well be some periodic behaviour of=
<br>
&gt; the power supply.<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt;<br>
&gt;<br>
&gt; =C2=B9That&#39;s a sampling rate that should work on B200 and B20xmini=
, but it&#39;s<br>
&gt; uncomfortably low =E2=80=93 try with 1 MHz and host-side resampling, m=
aybe?<br>
&gt;<br>
&gt; On Wed, 2019-12-18 at 21:28 +0300, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=
=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-users<b=
r>
&gt; wrote:<br>
&gt;&gt; Hello, Sam!<br>
&gt;&gt; No, I use two devices as transmitter and receiver and third board =
I<br>
&gt;&gt; use just to observe sonogram.<br>
&gt;&gt; Pulsations exist on both b205 and b210 devices if I use them as a<=
br>
&gt;&gt; transmitter and not exist if I use as transmitter another vendor&#=
39;s<br>
&gt;&gt; device - LimeSDR.<br>
&gt;&gt;<br>
&gt;&gt; All 3 USRP devices are industrial with metal case, and LimeSDR is<=
br>
&gt;&gt; not.<br>
&gt;&gt;<br>
&gt;&gt; On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &lt;<br>
&gt;&gt; <a href=3D"mailto:gena.kazachek@gmail.com" target=3D"_blank">gena.=
kazachek@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; All 3 USRP devices are industrial with metal case, and LimeSDR=
 is<br>
&gt;&gt;&gt; not.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=
=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &lt;<br>
&gt;&gt;&gt; <a href=3D"mailto:gena.kazachek@gmail.com" target=3D"_blank">g=
ena.kazachek@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; Hello, Sam!<br>
&gt;&gt;&gt;&gt; No, I use two devices as transmitter and receiver and thir=
d board<br>
&gt;&gt;&gt;&gt; I use just to observe sonogram.<br>
&gt;&gt;&gt;&gt; Pulsations exist on both b205 and b210 devices if I use th=
em as a<br>
&gt;&gt;&gt;&gt; transmitter and not exist if I use as transmitter another<=
br>
&gt;&gt;&gt;&gt; vendor&#39;s device - LimeSDR.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Wed, 18 Dec 2019 at 18:49, Sam Reiter &lt;<a href=3D"ma=
ilto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<b=
r>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt; Just to be clear, you see these pulsations when transm=
itting<br>
&gt;&gt;&gt;&gt;&gt; with a b205mini, but not with the b210?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Is the b205mini a bare board or an industrial model wi=
th a case<br>
&gt;&gt;&gt;&gt;&gt; and aluminum heat sync?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Sam Reiter<br>
&gt;&gt;&gt;&gt;&gt; Ettus Research<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=BD=D0=
=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via =
USRP-<br>
&gt;&gt;&gt;&gt;&gt; users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hello!<br>
&gt;&gt;&gt;&gt;&gt;&gt; I&#39;m trying to build QPSK based system on GNURa=
dio.<br>
&gt;&gt;&gt;&gt;&gt;&gt; I&#39;m using two USRP B205-mini boards as transmi=
tter and<br>
&gt;&gt;&gt;&gt;&gt;&gt; receiver, also I got B210 board that I run gqrx on=
 to watch<br>
&gt;&gt;&gt;&gt;&gt;&gt; what is really going on.<br>
&gt;&gt;&gt;&gt;&gt;&gt; I noticed a strange behaviour on my tests, so I be=
gan to<br>
&gt;&gt;&gt;&gt;&gt;&gt; investigate it and ended to a very simple graph, t=
hat is in<br>
&gt;&gt;&gt;&gt;&gt;&gt; attachment. On a frequencies that are multiple of =
10Mhz, like<br>
&gt;&gt;&gt;&gt;&gt;&gt; 1020Mhz all works like expected and sonogram looks=
 good. If I<br>
&gt;&gt;&gt;&gt;&gt;&gt; tune to any other frequency, even 1Hz more or less=
, the<br>
&gt;&gt;&gt;&gt;&gt;&gt; sonogram is full of pulsations and frequency of th=
at<br>
&gt;&gt;&gt;&gt;&gt;&gt; pulsation is depends of exact tune frequency. I at=
tached some<br>
&gt;&gt;&gt;&gt;&gt;&gt; screenshots of that pulsations.<br>
&gt;&gt;&gt;&gt;&gt;&gt; On receiving part that pulsations cause many error=
s while<br>
&gt;&gt;&gt;&gt;&gt;&gt; decoding.<br>
&gt;&gt;&gt;&gt;&gt;&gt; I got another board, LimeSDR-Mini, and no such beh=
aviour<br>
&gt;&gt;&gt;&gt;&gt;&gt; observed while running graph on it.<br>
&gt;&gt;&gt;&gt;&gt;&gt; I wonder what is going on, and how can I fix this =
problem.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Thank you.<br>
&gt;&gt;&gt;&gt;&gt;&gt; _______________________________________________<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" targ=
et=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; -- <br>
&gt;&gt;&gt;&gt; =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=
=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- <br>
&gt;&gt;&gt; =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=
=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=
=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br></div></div></div>

--0000000000002fb587059a3cbdab--


--===============5946024724764791210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5946024724764791210==--

