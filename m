Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D75FE12935D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Dec 2019 09:56:14 +0100 (CET)
Received: from [::1] (port=42732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ijJVX-0002Ne-0l; Mon, 23 Dec 2019 03:56:07 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:40778)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <gena.kazachek@gmail.com>)
 id 1ijJVT-0002Jz-3Z
 for usrp-users@lists.ettus.com; Mon, 23 Dec 2019 03:56:03 -0500
Received: by mail-ot1-f53.google.com with SMTP id w21so13482542otj.7
 for <usrp-users@lists.ettus.com>; Mon, 23 Dec 2019 00:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aHne5SVp7grQZfvSJIUQPBLRnJBhh/0Fnk19QA2cuHg=;
 b=h/vixxS/RnZ2C3EpurpM0lEaQfROv+Mg6o7wRjx/l0sY4uPIwBhzo8LnMEG1U8/Uac
 yF0WC8sL0SCqI+iNt4wvAF+dfyKrPJULOpEnGJRZzSFfX+d2F9wLilxtSuB7L2yMpbLF
 xpbf92m8k7WmIY+u5vIlkVEswpfnhDxn4pz+MMmmqTu/4uUGXZfHwMaQt6OS2s2eU2Ss
 8doP1iSKTaWn5VSosxmPAvMOHxLySO4W2hbvgvxP1bsBtxFUQXOzVEuILaW7JUYCSaZ+
 qkOSaCD7ie82P5P4XBiAeJjCHyvlroWdpttT6wW/fic2xg9C4lbuROYVt/ZPUX+4smJe
 8t7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aHne5SVp7grQZfvSJIUQPBLRnJBhh/0Fnk19QA2cuHg=;
 b=D1vs+O9QgTIqMd9KN7OLHWh/Z1woR3Hc1sUZfMkqSmcf1TvhZC/fsX+pXJCHjGfbZT
 rin6L+utNYbh3fdz80ftPJe6AaaMeceuqQgxsMeSBn6h6BpHEKnbYSW65gaI48efdU2N
 uvjDpliZA3bno9ovwK/NH/dtZc+Ffhzj7eEvFJqDIR7KTzYv1PxXc3fC1OElAeQdOD4F
 JLnH5CbLnckChwUO3SQWqHGOOrde6dAlKl1ciMjdn01fKpnQ2MX2/vTAFr1lprnodRcs
 OsSmxXGsB1E+iI/GKJ7/OZUV5UXnaJmL966H6v1FRew8dCx1g8RiMOfh6ehVslXq9TuF
 O2ew==
X-Gm-Message-State: APjAAAXHaIN/2ZNtVajO1UChYVbiyJsvrFeKr6/tYh5hJGJ2YRM2olS+
 +uyLCAudYoW27QZnID+ro9QwEboyhOYx2/krgBA=
X-Google-Smtp-Source: APXvYqw9CjhZMfvW8ZFZXgMwddR0zbPOVkgBfrAH7cf5UE7eKX+gz02odUHG/LYEuBHPZUNw3klFyxJ8Z22TkcH6U5Q=
X-Received: by 2002:a05:6830:1149:: with SMTP id
 x9mr32199281otq.156.1577091322361; 
 Mon, 23 Dec 2019 00:55:22 -0800 (PST)
MIME-Version: 1.0
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
 <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
 <CADfCwn2mNfRYh0HpOr-cYPGw99oZW2D08Y2fab=10Tvg3SE9dw@mail.gmail.com>
 <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
 <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
 <39281f29c310afd41aa6795a29209402fff99484.camel@ettus.com>
 <95808e09-d093-ae35-83b8-abc7ff04620e@comcast.net>
 <CADfCwn0CCHMoHXCKoURNGih5_DCV-t5ym_DMDYek4wThxJpkwg@mail.gmail.com>
 <c3a248a95357833e5be97bc11ba8a8d9b95dec22.camel@ettus.com>
 <3818fc0e-399c-06c8-3cbb-e42e24c10d8f@comcast.net>
In-Reply-To: <3818fc0e-399c-06c8-3cbb-e42e24c10d8f@comcast.net>
Date: Mon, 23 Dec 2019 11:54:38 +0300
Message-ID: <CADfCwn1nuUteYyA7pQz4uoCPA5eowo3Gf1ThhY7Hp5M0XXTCkQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3001321646943112812=="
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

--===============3001321646943112812==
Content-Type: multipart/alternative; boundary="0000000000000c3e36059a5b3017"

--0000000000000c3e36059a5b3017
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> OK, we'll need a recording of the signal with the stripes, not just a
> GQRX screenshot, I'm afraid. Could you simply record the complex
> baseband for maybe 5 to 10 pulsations duration
My only option is to make a graph with USRP source and file sink (both
float complex format). I hope it do what you need.
So, while one board endlessly transmits pulsation on 1011MHz with 250 kHz
bandwidth I made two recordings on another, first on 1011MHz receive
frequency and second on 1011.5MHz, 500 kHz bandwidth both. I hope it suits
your request, if you need something else, please ask.
I uploaded files here: https://gofile.io/?c=3DQh3Sbl

> Just to show it, here's the Gqrx effect I was talking about.
I suppose, it is completely different story.

On Sun, 22 Dec 2019 at 18:51, Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Just to show it, here's the Gqrx effect I was talking about.
>
> http://www.w6rz.net/gqrx.mp4
>
> Ron
>
> On 12/22/19 07:04, Marcus M=C3=BCller wrote:
> > OK, we'll need a recording of the signal with the stripes, not just a
> > GQRX screenshot, I'm afraid. Could you simply record the complex
> > baseband for maybe 5 to 10 pulsations duration?
> > Preferably also asecond recording from a slightly different TXfrequency=
,
> but at the same RX frequency.
> >
> > Best regards,
> > Marcus
> >
> > On Sat, 2019-12-21 at 23:35 +0300, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA wrote:
> >> Hello, thanks for your attention.
> >>
> >>> I always thought these pulsations were due to some kind of bug
> >> with
> >>> Gqrx. If you change the FFT size, the rate of pulsation changes.
> >> No, it doesn't. I've tested, FFT size doesn't affect rate of
> >> pulsation.
> >>
> >>> Also, you don't see this on a real spectrum analyzer, even an
> >> inexpensive one.
> >> I don't have one, but as I said before, decoding is failing when this
> >> pulsations are on the air. So, I believe, that gqrx is fine here.
> >>
> >>> the stripes go away when you turn of the USRPs?
> >> Yes, when I stop graph, this pulsations are gone
> >>
> >>> Also, the stripes aren't there, either, when you use the Lime on
> >> the
> >>> same 1.011 GHz frequency, exactly?
> >> Yes, it is correct, I just disable USRP block, enable Lime block and
> >> swap devices.
> >>
> >>> My suspicion is that this is mostly USB3 emissions
> >> I've tried to connect through USB2, result is the same
> >>
> >>> Also, are you using an external power supply for your USRPs
> >> No, they are connected to my host pc by USB only.
> >>
> >> On Sat, 21 Dec 2019 at 21:15, Ron Economos via USRP-users <
> >> usrp-users@lists.ettus.com> wrote:
> >>> I always thought these pulsations were due to some kind of bug
> >>> with
> >>> Gqrx. If you change the FFT size, the rate of pulsation changes.
> >>> Also,
> >>> you don't see this on a real spectrum analyzer, even an inexpensive
> >>> one.
> >>>
> >>> Ron
> >>>
> >>> On 12/21/19 09:25, Marcus M=C3=BCller via USRP-users wrote:
> >>>> Just to rule out interferers:
> >>>>
> >>>> * the stripes go away when you turn of the USRPs?
> >>>> * Also, the stripes aren't there, either, when you use the Lime
> >>> on the
> >>>> same 1.011 GHz frequency, exactly?
> >>>>
> >>>> My suspicion is that this is mostly USB3 emissions (those could
> >>> be, but
> >>>> not necessarily are, happening through the USRP itself, or
> >>> through
> >>>> cables, or through your host computer.
> >>>>
> >>>> If your sampling rates allow it (they do, I think you're using
> >>> 500 kHz
> >>>> only=C2=B9), try to use a USB2-only cable or port and see whether
> >>> these
> >>>> disappear.
> >>>>
> >>>> Also, are you using an external power supply for your USRPs? If
> >>> this is
> >>>> actually an interferer, it might as well be some periodic
> >>> behaviour of
> >>>> the power supply.
> >>>>
> >>>> Best regards,
> >>>> Marcus
> >>>>
> >>>>
> >>>> =C2=B9That's a sampling rate that should work on B200 and B20xmini,
> >>> but it's
> >>>> uncomfortably low =E2=80=93 try with 1 MHz and host-side resampling,
> >>> maybe?
> >>>> On Wed, 2019-12-18 at 21:28 +0300, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=
=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-
> >>> users
> >>>> wrote:
> >>>>> Hello, Sam!
> >>>>> No, I use two devices as transmitter and receiver and third
> >>> board I
> >>>>> use just to observe sonogram.
> >>>>> Pulsations exist on both b205 and b210 devices if I use them as
> >>> a
> >>>>> transmitter and not exist if I use as transmitter another
> >>> vendor's
> >>>>> device - LimeSDR.
> >>>>>
> >>>>> All 3 USRP devices are industrial with metal case, and LimeSDR
> >>> is
> >>>>> not.
> >>>>>
> >>>>> On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <
> >>>>> gena.kazachek@gmail.com> wrote:
> >>>>>> All 3 USRP devices are industrial with metal case, and LimeSDR
> >>> is
> >>>>>> not.
> >>>>>>
> >>>>>> On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=
=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA <
> >>>>>> gena.kazachek@gmail.com> wrote:
> >>>>>>> Hello, Sam!
> >>>>>>> No, I use two devices as transmitter and receiver and third
> >>> board
> >>>>>>> I use just to observe sonogram.
> >>>>>>> Pulsations exist on both b205 and b210 devices if I use them
> >>> as a
> >>>>>>> transmitter and not exist if I use as transmitter another
> >>>>>>> vendor's device - LimeSDR.
> >>>>>>>
> >>>>>>> On Wed, 18 Dec 2019 at 18:49, Sam Reiter <sam.reiter@ettus.com
> >>>>>>> wrote:
> >>>>>>>> Just to be clear, you see these pulsations when transmitting
> >>>>>>>> with a b205mini, but not with the b210?
> >>>>>>>>
> >>>>>>>> Is the b205mini a bare board or an industrial model with a
> >>> case
> >>>>>>>> and aluminum heat sync?
> >>>>>>>>
> >>>>>>>> Sam Reiter
> >>>>>>>> Ettus Research
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=
=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via USRP-
> >>>>>>>> users <usrp-users@lists.ettus.com> wrote:
> >>>>>>>>> Hello!
> >>>>>>>>> I'm trying to build QPSK based system on GNURadio.
> >>>>>>>>> I'm using two USRP B205-mini boards as transmitter and
> >>>>>>>>> receiver, also I got B210 board that I run gqrx on to watch
> >>>>>>>>> what is really going on.
> >>>>>>>>> I noticed a strange behaviour on my tests, so I began to
> >>>>>>>>> investigate it and ended to a very simple graph, that is in
> >>>>>>>>> attachment. On a frequencies that are multiple of 10Mhz,
> >>> like
> >>>>>>>>> 1020Mhz all works like expected and sonogram looks good. If
> >>> I
> >>>>>>>>> tune to any other frequency, even 1Hz more or less, the
> >>>>>>>>> sonogram is full of pulsations and frequency of that
> >>>>>>>>> pulsation is depends of exact tune frequency. I attached
> >>> some
> >>>>>>>>> screenshots of that pulsations.
> >>>>>>>>> On receiving part that pulsations cause many errors while
> >>>>>>>>> decoding.
> >>>>>>>>> I got another board, LimeSDR-Mini, and no such behaviour
> >>>>>>>>> observed while running graph on it.
> >>>>>>>>> I wonder what is going on, and how can I fix this problem.
> >>>>>>>>> Thank you.
> >>>>>>>>> _______________________________________________
> >>>>>>>>> USRP-users mailing list
> >>>>>>>>> USRP-users@lists.ettus.com
> >>>>>>>>>
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>> --
> >>>>>>> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=
=B7=D0=B0=D1=87=D1=91=D0=BA
> >>>>>> --
> >>>>>> =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=
=B7=D0=B0=D1=87=D1=91=D0=BA
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list
> >>>>> USRP-users@lists.ettus.com
> >>>>>
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>> _______________________________________________
> >>>> USRP-users mailing list
> >>>> USRP-users@lists.ettus.com
> >>>>
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=
=D1=87=D1=91=D0=BA

--0000000000000c3e36059a5b3017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">&gt; OK, we&#39;ll need a recording of th=
e signal with the stripes, not just a<br>
&gt; GQRX screenshot, I&#39;m afraid. Could you simply record the complex<b=
r>
&gt; baseband for maybe 5 to 10 pulsations duration</div><div>My only optio=
n is to make a graph with USRP source and file sink (both float complex for=
mat). I hope it do what you need.</div><div>So, while one board endlessly t=
ransmits pulsation on 1011MHz with 250 kHz bandwidth I made two recordings =
on another, first on 1011MHz receive frequency and second on 1011.5MHz, 500=
 kHz bandwidth both. I hope it suits your request, if you need something el=
se, please ask.<br></div><div>I uploaded files here:<a id=3D"gmail-link" hr=
ef=3D"https://gofile.io/?c=3DQh3Sbl" target=3D"_blank"> https://gofile.io/?=
c=3DQh3Sbl</a></div><div><br></div><div>&gt; Just to show it, here&#39;s th=
e Gqrx effect I was talking about.<br>
</div><div>I suppose, it is completely different story.<br></div><div><br><=
/div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, 22 Dec 2019 at 18:51, Ron Economos via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Just to show it, here=
&#39;s the Gqrx effect I was talking about.<br>
<br>
<a href=3D"http://www.w6rz.net/gqrx.mp4" rel=3D"noreferrer" target=3D"_blan=
k">http://www.w6rz.net/gqrx.mp4</a><br>
<br>
Ron<br>
<br>
On 12/22/19 07:04, Marcus M=C3=BCller wrote:<br>
&gt; OK, we&#39;ll need a recording of the signal with the stripes, not jus=
t a<br>
&gt; GQRX screenshot, I&#39;m afraid. Could you simply record the complex<b=
r>
&gt; baseband for maybe 5 to 10 pulsations duration?<br>
&gt; Preferably also asecond recording from a slightly different TXfrequenc=
y, but at the same RX frequency.<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt;<br>
&gt; On Sat, 2019-12-21 at 23:35 +0300, =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=
=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA wrote:<br>
&gt;&gt; Hello, thanks for your attention.<br>
&gt;&gt;<br>
&gt;&gt;&gt; I always thought these pulsations were due to some kind of bug=
<br>
&gt;&gt; with<br>
&gt;&gt;&gt; Gqrx. If you change the FFT size, the rate of pulsation change=
s.<br>
&gt;&gt; No, it doesn&#39;t. I&#39;ve tested, FFT size doesn&#39;t affect r=
ate of<br>
&gt;&gt; pulsation.<br>
&gt;&gt;<br>
&gt;&gt;&gt; Also, you don&#39;t see this on a real spectrum analyzer, even=
 an<br>
&gt;&gt; inexpensive one.<br>
&gt;&gt; I don&#39;t have one, but as I said before, decoding is failing wh=
en this<br>
&gt;&gt; pulsations are on the air. So, I believe, that gqrx is fine here.<=
br>
&gt;&gt;<br>
&gt;&gt;&gt; the stripes go away when you turn of the USRPs?<br>
&gt;&gt; Yes, when I stop graph, this pulsations are gone<br>
&gt;&gt;<br>
&gt;&gt;&gt; Also, the stripes aren&#39;t there, either, when you use the L=
ime on<br>
&gt;&gt; the<br>
&gt;&gt;&gt; same 1.011 GHz frequency, exactly?<br>
&gt;&gt; Yes, it is correct, I just disable USRP block, enable Lime block a=
nd<br>
&gt;&gt; swap devices.<br>
&gt;&gt;<br>
&gt;&gt;&gt; My suspicion is that this is mostly USB3 emissions<br>
&gt;&gt; I&#39;ve tried to connect through USB2, result is the same<br>
&gt;&gt;<br>
&gt;&gt;&gt; Also, are you using an external power supply for your USRPs<br=
>
&gt;&gt; No, they are connected to my host pc by USB only.<br>
&gt;&gt;<br>
&gt;&gt; On Sat, 21 Dec 2019 at 21:15, Ron Economos via USRP-users &lt;<br>
&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt; I always thought these pulsations were due to some kind of bug=
<br>
&gt;&gt;&gt; with<br>
&gt;&gt;&gt; Gqrx. If you change the FFT size, the rate of pulsation change=
s.<br>
&gt;&gt;&gt; Also,<br>
&gt;&gt;&gt; you don&#39;t see this on a real spectrum analyzer, even an in=
expensive<br>
&gt;&gt;&gt; one.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ron<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 12/21/19 09:25, Marcus M=C3=BCller via USRP-users wrote:<br=
>
&gt;&gt;&gt;&gt; Just to rule out interferers:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; * the stripes go away when you turn of the USRPs?<br>
&gt;&gt;&gt;&gt; * Also, the stripes aren&#39;t there, either, when you use=
 the Lime<br>
&gt;&gt;&gt; on the<br>
&gt;&gt;&gt;&gt; same 1.011 GHz frequency, exactly?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; My suspicion is that this is mostly USB3 emissions (those =
could<br>
&gt;&gt;&gt; be, but<br>
&gt;&gt;&gt;&gt; not necessarily are, happening through the USRP itself, or=
<br>
&gt;&gt;&gt; through<br>
&gt;&gt;&gt;&gt; cables, or through your host computer.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If your sampling rates allow it (they do, I think you&#39;=
re using<br>
&gt;&gt;&gt; 500 kHz<br>
&gt;&gt;&gt;&gt; only=C2=B9), try to use a USB2-only cable or port and see =
whether<br>
&gt;&gt;&gt; these<br>
&gt;&gt;&gt;&gt; disappear.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Also, are you using an external power supply for your USRP=
s? If<br>
&gt;&gt;&gt; this is<br>
&gt;&gt;&gt;&gt; actually an interferer, it might as well be some periodic<=
br>
&gt;&gt;&gt; behaviour of<br>
&gt;&gt;&gt;&gt; the power supply.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt; Marcus<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; =C2=B9That&#39;s a sampling rate that should work on B200 =
and B20xmini,<br>
&gt;&gt;&gt; but it&#39;s<br>
&gt;&gt;&gt;&gt; uncomfortably low =E2=80=93 try with 1 MHz and host-side r=
esampling,<br>
&gt;&gt;&gt; maybe?<br>
&gt;&gt;&gt;&gt; On Wed, 2019-12-18 at 21:28 +0300, =D0=93=D0=B5=D0=BD=D0=
=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA via =
USRP-<br>
&gt;&gt;&gt; users<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt; Hello, Sam!<br>
&gt;&gt;&gt;&gt;&gt; No, I use two devices as transmitter and receiver and =
third<br>
&gt;&gt;&gt; board I<br>
&gt;&gt;&gt;&gt;&gt; use just to observe sonogram.<br>
&gt;&gt;&gt;&gt;&gt; Pulsations exist on both b205 and b210 devices if I us=
e them as<br>
&gt;&gt;&gt; a<br>
&gt;&gt;&gt;&gt;&gt; transmitter and not exist if I use as transmitter anot=
her<br>
&gt;&gt;&gt; vendor&#39;s<br>
&gt;&gt;&gt;&gt;&gt; device - LimeSDR.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; All 3 USRP devices are industrial with metal case, and=
 LimeSDR<br>
&gt;&gt;&gt; is<br>
&gt;&gt;&gt;&gt;&gt; not.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Wed, 18 Dec 2019 at 21:26, =D0=93=D0=B5=D0=BD=D0=BD=
=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &lt;<br=
>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:gena.kazachek@gmail.com" target=3D"_=
blank">gena.kazachek@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; All 3 USRP devices are industrial with metal case,=
 and LimeSDR<br>
&gt;&gt;&gt; is<br>
&gt;&gt;&gt;&gt;&gt;&gt; not.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On Wed, 18 Dec 2019 at 21:25, =D0=93=D0=B5=D0=BD=
=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA &=
lt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:gena.kazachek@gmail.com" target=
=3D"_blank">gena.kazachek@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello, Sam!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; No, I use two devices as transmitter and recei=
ver and third<br>
&gt;&gt;&gt; board<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; I use just to observe sonogram.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Pulsations exist on both b205 and b210 devices=
 if I use them<br>
&gt;&gt;&gt; as a<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; transmitter and not exist if I use as transmit=
ter another<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; vendor&#39;s device - LimeSDR.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Wed, 18 Dec 2019 at 18:49, Sam Reiter &lt;<=
a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.c=
om</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Just to be clear, you see these pulsations=
 when transmitting<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with a b205mini, but not with the b210?<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is the b205mini a bare board or an industr=
ial model with a<br>
&gt;&gt;&gt; case<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and aluminum heat sync?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Sam Reiter<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ettus Research<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Wed, Dec 11, 2019 at 11:48 PM =D0=93=D0=
=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=
=91=D0=BA via USRP-<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I&#39;m trying to build QPSK based sys=
tem on GNURadio.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I&#39;m using two USRP B205-mini board=
s as transmitter and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; receiver, also I got B210 board that I=
 run gqrx on to watch<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; what is really going on.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I noticed a strange behaviour on my te=
sts, so I began to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; investigate it and ended to a very sim=
ple graph, that is in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; attachment. On a frequencies that are =
multiple of 10Mhz,<br>
&gt;&gt;&gt; like<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1020Mhz all works like expected and so=
nogram looks good. If<br>
&gt;&gt;&gt; I<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; tune to any other frequency, even 1Hz =
more or less, the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sonogram is full of pulsations and fre=
quency of that<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; pulsation is depends of exact tune fre=
quency. I attached<br>
&gt;&gt;&gt; some<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; screenshots of that pulsations.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On receiving part that pulsations caus=
e many errors while<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; decoding.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I got another board, LimeSDR-Mini, and=
 no such behaviour<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; observed while running graph on it.<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder what is going on, and how can=
 I fix this problem.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________________=
_________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ett=
us.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=
=B9 =D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br>
&gt;&gt;&gt;&gt;&gt;&gt; -- <br>
&gt;&gt;&gt;&gt;&gt;&gt; =D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9 =
=D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_b=
lank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
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

--0000000000000c3e36059a5b3017--


--===============3001321646943112812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3001321646943112812==--

