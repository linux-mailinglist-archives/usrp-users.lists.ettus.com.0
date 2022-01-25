Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 816DF49B0C2
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 10:54:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECF7D384E26
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 04:54:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="3LF4xKS/";
	dkim-atps=neutral
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 81AFE3845E1
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 04:53:54 -0500 (EST)
Received: by mail-il1-f171.google.com with SMTP id x3so1630117ilm.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 01:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=2e4IoSc9/JeR2ZIOy/aFGWAT4S9Lt1ShwHx2Qu0yqz0=;
        b=3LF4xKS/JJC/ghyhwMQQitDH9uwOFWoXoNEHRbmB1scPWeB+Bv1Q3evNmYSD1lNx8/
         +WGOhRo9NRYLZgpWGRQKW+uiPxlQFn9c14803153/+C5CYnqQtwzBXxiVwBG8njyaouc
         Oa2Np1Yh1dUqZ3WYSiH6L53Pa6O/w0/Ge2/WThFZoHaUEXwINu+DfKBslm/YwymV3KLC
         IvBwtp9ZjATMIyqXPNGP1vgiug0RWHRKFpODCWmvIgQ3Pvu0TIqZtfiSNJITc9xryQW0
         HYeYVQAYhNnBVPvu5MdNLcdTiTAigTfHuZIAc/3mbuP/6e+lQfRYCJWIuGKDvioO5bf4
         eBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=2e4IoSc9/JeR2ZIOy/aFGWAT4S9Lt1ShwHx2Qu0yqz0=;
        b=xM+hByTwKqsagjKxBv/raih4DBSv4Po6LsOq6xqxzhW3koAvFCLYdFb6qQAwIg9BNy
         pYIBaZnVmsVgDAaRoalNUhAO321qlgjchifAyR9qkK/T+vIfbHEi4zaXR87V4S9L7kML
         e8ZHgxWm7bRQn8qR5X485Y6tSuKhlYGOR5YNSGNtyd3FcXsY7Um6I0Qo1xtPJuC1G+78
         sEG7yT2baX+DAUt5+dZ3Cxs85jxhmRafGQ+FHYV+LESW3mWAZiLg2xKRdWD6RE5NH4wT
         uLB6IDJOaZx6g6JVTzxbMoZCmIFJEwxliHPwIrOMDJqEgY3fkCknBmd9/6Q/bEMxaMbt
         GCqw==
X-Gm-Message-State: AOAM531zipapbG2QH9VFjfUkRahvRGFrXLzRgetzmegmaSD/+suw9KHL
	PD7IZ3UIrX57ReBLrmQXW3tu9tXKQFRHgM5fHfdmnGnLn1vUSUhz
X-Received: by 2002:a05:6e02:194d:: with SMTP id x13mt11478771ilu.269.1643104433768;
 Tue, 25 Jan 2022 01:53:53 -0800 (PST)
MIME-Version: 1.0
References: <CADDf8dZe-9uP5Wzzaa14xjZ6vT9fNXpKUSy9QQXLooLGkG7DXw@mail.gmail.com>
In-Reply-To: <CADDf8dZe-9uP5Wzzaa14xjZ6vT9fNXpKUSy9QQXLooLGkG7DXw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 25 Jan 2022 10:53:42 +0100
Message-ID: <CAFOi1A4Sru8pXZYDgpkNHL+P+pdgvbOJqBg4mvKf3S4AC1o+UA@mail.gmail.com>
Message-ID-Hash: BTEBHRTWDP6VGBD6F6V7YO7SECTGQT3J
X-Message-ID-Hash: BTEBHRTWDP6VGBD6F6V7YO7SECTGQT3J
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time division duplexing (TDD) with USRP B2xx
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTEBHRTWDP6VGBD6F6V7YO7SECTGQT3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8175905557419934129=="

--===============8175905557419934129==
Content-Type: multipart/alternative; boundary="0000000000001ba02405d6651038"

--0000000000001ba02405d6651038
Content-Type: text/plain; charset="UTF-8"

Ali,

most of the time, these types of applications require the RX to be on
permanently (unless you know exactly when you're expecting packets), and
the TX only when you're transmitting packets.

In GNU Radio, this is simply achieved by using a USRP Sink and Source,
respectively. The USRP Source (RX) will be permanently receiving into your
custom DSP blocks. The USRP Sink (TX) will only transmit when it gets data,
so all you need to do is send it data when you have some. Important: You
need to add the "tx_eob" tag. See the manual:
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html#a244302d311f9232dc0634ebb920508c7
(look for "bursty transmission").

Note: The TX signal will leak into RX and will appear as a really strong
signal. You need to filter those out.

If you're doing vanilla UHD, it's pretty much the same. Except now, you
need to pass in the tx_eob tag as metadata (see here:
https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html).

--M

On Sat, Jan 15, 2022 at 11:22 AM Ali G. Dezfuli <ali69550@gmail.com> wrote:

> I am going to implement a real-time TDD link (in the order of
> one-millisecond burst durations) using two laptops and two USRP B2xx (in
> either single antenna or dual-antenna ways). I searched a lot on the net
> especially GNU Radio's mailing list but could not find any clear techniques
> or tutorials to deal with it. So, I wonder if someone helps me manage that
> in a step-by-step way. Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001ba02405d6651038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ali,</div><div><br></div><div>most of the time, these=
 types of applications require the RX to be on permanently (unless you know=
 exactly when you&#39;re expecting packets), and the TX only when you&#39;r=
e transmitting packets.</div><div><br></div><div>In GNU Radio, this is simp=
ly achieved by using a USRP Sink and Source, respectively. The USRP Source =
(RX) will be permanently receiving into your custom DSP blocks. The USRP Si=
nk (TX) will only transmit when it gets data, so all you need to do is send=
 it data when you have some. Important: You need to add the &quot;tx_eob&qu=
ot; tag. See the manual: <a href=3D"https://www.gnuradio.org/doc/doxygen/cl=
assgr_1_1uhd_1_1usrp__sink.html#a244302d311f9232dc0634ebb920508c7">https://=
www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html#a244302d311f=
9232dc0634ebb920508c7</a> (look for &quot;bursty transmission&quot;).</div>=
<div><br></div><div>Note: The TX signal will leak into RX and will appear a=
s a really strong signal. You need to filter those out.</div><div><br></div=
><div>If you&#39;re doing vanilla UHD, it&#39;s pretty much the same. Excep=
t now, you need to pass in the tx_eob tag as metadata (see here: <a href=3D=
"https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html">https://=
files.ettus.com/manual/structuhd_1_1tx__metadata__t.html</a>).</div><div><b=
r></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Sat, Jan 15, 2022 at 11:22 AM Ali G. Dezfuli &=
lt;<a href=3D"mailto:ali69550@gmail.com">ali69550@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>I am going to implement a real-time TDD link (in the order of=20
one-millisecond burst durations) using two laptops and two USRP B2xx (in
 either single antenna or dual-antenna ways). I searched a lot on the=20
net especially GNU Radio&#39;s mailing list but could not find any clear=20
techniques or tutorials to deal with it.
So, I wonder if someone helps me manage that in a step-by-step way.
Thank you!</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001ba02405d6651038--

--===============8175905557419934129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8175905557419934129==--
