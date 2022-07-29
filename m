Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D243858510F
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 15:46:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E6D6383FB1
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 09:46:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659102416; bh=SsCJbPimGJaRZ4rzQFMDzZXJN/MEeBZLxR4waay7C6E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=E0rnoe+2t+GvdeiEjbfz5iJrz/BXtXCkC7YCgnP7zkipS+yJyOt5lKcv/4Pa9qe25
	 8PmCkHtMzyP7SXz1CrArjbJHqPU4FlXpnV8L9922hAk3rodyZyUOTkaaAtbmxgl0yt
	 kgXdTmFmJvNs27VBoeLshbCBuBjbZQytc/7Dez9+PFkDk3vog0/IqqACzrfqw4pZVM
	 bBriszAUoqhi3GG+IJS5Mneex/y9iH7kDwmfPnPNBfSLDgS4ioY8Meg7hjPCh7CKFU
	 MA/6DyB+sGvl1funG7VejqAlpqJE6I+Qsr0IrM2okU5SYyv/MziPiCINYhFOU7kDoL
	 WsgkEetidcOHg==
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 0132C383BAF
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 09:41:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FFbLSoYb";
	dkim-atps=neutral
Received: by mail-pj1-f45.google.com with SMTP id 15-20020a17090a098f00b001f305b453feso8453564pjo.1
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 06:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k/DcvYc606b+u/UvxkoRvLRF9XLLx0KnY4o9EsoFibI=;
        b=FFbLSoYbf0eC9F43UhgRO9IHiPEfciKlWGntz1CQadk/9nO0HxqNIb5PaQnJ5PCP7A
         IPiWWfymwWYaVE03CGRSBe+obMiUEcL3bDZVXWnEyzXAmhg+RVHblczbxx2FUtBZxnF7
         KZMekduMZ5wPrGrR9MX8M4kUuKEpbn0wBfmd3QsVwkvYBVeJgE3XVvcozHmeDf2dHINm
         W8mS5Qo3qMc+cpRKVleUjbywW6ceBw5AihoaPYs4ImEryaqQNzWyYrxL/wZ9Ja1vQlcq
         VaeDe37T7EA8JlpE4Kc2XcixcpnrLgh5s8gvdmC18KzyMAtOwNMktT0exX3Lt0Szh2tl
         2rDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k/DcvYc606b+u/UvxkoRvLRF9XLLx0KnY4o9EsoFibI=;
        b=PY8WvD6Nhw8Jn4F7cbTIM3RRAo4zNQVVZR4Xjr3bm9Y5rfaN5gTey8G75B19tYaHPR
         42e6FGv9zycg+Aol+NK9OOaoZvkNJTaMyslGyeY54zyn29ldeUHwowZr+ydFKvuqtWBX
         GGpDOI3rnuTxquI3wBTqlhl/xSpK/vtXMpyqKQQOz7hbTna5NHvVgXdfNFhC6SNCEQVA
         SbpXNMRW9IPCfyHyIHgFx7YzWMW/20ZHvvLCk3IiAd+/YjdmEX96NLoWmVD9Z34uMSe8
         PMfYFj4xFi8f/mpXxC/UHGLg7WZdYFIEqm2y1U803C83Rbj7dNf+uIO0ESh4llroV8vn
         gQCw==
X-Gm-Message-State: ACgBeo1qD51ah81pHVrtye4IbNnZrBX41hhqJqaVo9OdZQUoqkJdHvVk
	btB1F9jN4cML1yrOo6BHBY1Nk0YpMp09uB1AU+8oCwtn+9g=
X-Google-Smtp-Source: AA6agR7HnqherChKeKJ7eflR0h8TzszeeaEG4i10sMWvQNtLWT7RB4avwsiG1F3pOZsZ4tQZqkh418KNzthqXpqnEm8=
X-Received: by 2002:a17:90b:f85:b0:1f3:1d77:244b with SMTP id
 ft5-20020a17090b0f8500b001f31d77244bmr4972433pjb.210.1659102084932; Fri, 29
 Jul 2022 06:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com> <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com>
In-Reply-To: <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com>
From: yan zhang <yanzhanggc@gmail.com>
Date: Fri, 29 Jul 2022 09:41:09 -0400
Message-ID: <CAJPBMpV1HMoK1c3MP-eB+geApi865UQ0s0nVWhopw6X99sSz6A@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: 5M23U2S6V6DB7Q26RFCR6TVFIJSUCD3G
X-Message-ID-Hash: 5M23U2S6V6DB7Q26RFCR6TVFIJSUCD3G
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5M23U2S6V6DB7Q26RFCR6TVFIJSUCD3G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7468005509238006246=="

--===============7468005509238006246==
Content-Type: multipart/alternative; boundary="0000000000006b27a905e4f1cef7"

--0000000000006b27a905e4f1cef7
Content-Type: text/plain; charset="UTF-8"

Hi, Nikos,

Thanks for your reply! I will try to learn and install ctag. Here is what I
further find:

Following your directions, I can find the _tx_freq variable in
"uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h".
I assume that the " _tune_helper() " function implemented in
"uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp" is the
underlying function that tunes the ad9361 front end.
The problem is that I modify the _tune_helper()  by throwing a uhd error at
the beginning of the function, however after I re-compile the modified uhd
and re-install it and then re-run my tuning loop, I didn't find the error
message I throw in the  _tune_helper() .

Does that mean the E312 uhd does not run the  _tune_helper() function in
"uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp"?
I really would like to find where the underlying tuning source code is and
I need to turn off the calibration procedure in the tuning code to speed up
the tuning.

Thanks,
Yan







On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:

> Hi,
>
> _tx_freq is an intermediate frequency.
> It is defined in:
> uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h
> If you need to modify uhd, you really need to install ctags, and grep
> the sources...
>
> HTH
> Nikos
>
> On Thu, Jul 28, 2022 at 10:42 PM <yanzhanggc@gmail.com> wrote:
> >
> > Hi, all,
> >
> >
> >
> > I have a E312 device and I just find that the tuning speed of E312 is
> very slow (~150ms) for each tuning. Thus I would like to modify the
> underlying tuning source code in the uhd software architecture.
> >
> >
> >
> > Here is what I found:
> >
> >
> >
> > I first create a multi_usrp object:
> >
> > uhd::usrp::multi_usrp::sptr usrp =
> uhd::usrp::multi_usrp::make(device_args);
> >
> >
> >
> >
> >
> > then I tune the usrp by running a loop:
> >
> >
> >
> > int count = 200;
> > for(int a = 0; a < count; a++) {
> >         uhd::tune_request_t tune_request(600e6 + a*10e6);
> >
> >         usrp->set_rx_freq(tune_request, 0);
> >         usrp->set_tx_freq(tune_request, 0);
> > }
> >
> >
> >
> > Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a
> step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.
> >
> >
> >
> > Thus, I traced the call stack from usrp->set_rx_freq(tune_request, 0).
> Here is what I found:
> >
> > usrp->set_rx_freq(tune_request, 0);  calls the method set_tx_frequency()
> in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp
> >
> > then the method set_tx_frequency() in
> uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune()
> method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp
> >
> > then the tune() method in
> uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp calls the method
> set_tx_frequency() in uhd/host/lib/rfnoc/radio_control_impl.cpp.
> >
> >
> >
> > The conclusion I have reached so far is the underlying tuning method is
> in  uhd/host/lib/rfnoc/radio_control_impl.cpp:
> >
> >
> >
> > double radio_control_impl::set_tx_frequency(const double freq, const
> size_t chan)
> > {
> >     std::lock_guard<std::mutex> l(_cache_mutex);
> >     return _tx_freq[chan] = freq;
> > }
> >
> >
> >
> > Then I just got stuck here, what is the _tx_freq[chan] ? I just can not
> find more.
> >
> >
> >
> >
> >
> > What I want to do is to modify the underlying ad9361 driver, so that
> when tuning a frequency, I can bypass the calibration in the ad9361 to
> speed up the tuning speed.
> >
> >
> >
> > Can anyone point me to 1.where I can find the source code for tuning for
> the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to
> ad9361 so that I can write my own tuning method for ad9361 ?
> >
> >
> >
> > Thanks,
> >
> > Yan
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006b27a905e4f1cef7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Nikos,<div><br></div><div>Thanks for your reply! I wil=
l try to learn and install ctag. Here is what I further find:</div><div><br=
></div><div>Following your directions, I can find the _tx_freq variable in =
&quot;uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h&quot;.=C2=A0</=
div><div>I assume that the &quot;

<span style=3D"color:rgb(5,80,174);font-family:ui-monospace,SFMono-Regular,=
&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;fo=
nt-size:12px;white-space:pre">_tune_helper()</span>=C2=A0&quot; function im=
plemented in &quot;uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp=
&quot; is the underlying function that tunes the ad9361 front end.</div><di=
v>The problem is that I modify the=C2=A0<span style=3D"color:rgb(5,80,174);=
font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,=
&quot;Liberation Mono&quot;,monospace;font-size:12px;white-space:pre">_tune=
_helper() </span>=C2=A0by throwing a uhd error at the beginning of the func=
tion, however after I re-compile the modified uhd and re-install it and the=
n re-run my tuning loop, I didn&#39;t find the error message I throw in the=
=C2=A0=C2=A0<span style=3D"color:rgb(5,80,174);font-family:ui-monospace,SFM=
ono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,=
monospace;font-size:12px;white-space:pre">_tune_helper() . </span></div><di=
v><br></div><div>Does that mean the E312 uhd does not run the=C2=A0=C2=A0<s=
pan style=3D"color:rgb(5,80,174);font-family:ui-monospace,SFMono-Regular,&q=
uot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font=
-size:12px;white-space:pre">_tune_helper() </span>function in=C2=A0 &quot;u=
hd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp&quot;?=C2=A0=C2=A0<=
/div><div>I really would like to find where the underlying tuning source co=
de is and I need to turn off the calibration procedure in the tuning code t=
o speed up the tuning.</div><div><br></div><div>Thanks,</div><div>Yan</div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
_tx_freq is an intermediate frequency.<br>
It is defined in:<br>
uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h<br>
If you need to modify uhd, you really need to install ctags, and grep<br>
the sources...<br>
<br>
HTH<br>
Nikos<br>
<br>
On Thu, Jul 28, 2022 at 10:42 PM &lt;<a href=3D"mailto:yanzhanggc@gmail.com=
" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi, all,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I have a E312 device and I just find that the tuning speed of E312 is =
very slow (~150ms) for each tuning. Thus I would like to modify the underly=
ing tuning source code in the uhd software architecture.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Here is what I found:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I first create a multi_usrp object:<br>
&gt;<br>
&gt; uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(devic=
e_args);<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; then I tune the usrp by running a loop:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; int count =3D 200;<br>
&gt; for(int a =3D 0; a &lt; count; a++) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd::tune_request_t tune_request(600e=
6 + a*10e6);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp-&gt;set_rx_freq(tune_request, 0)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp-&gt;set_tx_freq(tune_request, 0)=
;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a =
step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.=
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thus, I traced the call stack from usrp-&gt;set_rx_freq(tune_request, =
0). Here is what I found:<br>
&gt;<br>
&gt; usrp-&gt;set_rx_freq(tune_request, 0);=C2=A0 calls the method set_tx_f=
requency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp<br>
&gt;<br>
&gt; then the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3=
xx_radio_control_impl.cpp calls the tune() method in uhd/host/lib/usrp/dboa=
rd/e3xx/e3xx_ad9361_iface.cpp<br>
&gt;<br>
&gt; then the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_if=
ace.cpp calls the method set_tx_frequency() in uhd/host/lib/rfnoc/radio_con=
trol_impl.cpp.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; The conclusion I have reached so far is the underlying tuning method i=
s in=C2=A0 uhd/host/lib/rfnoc/radio_control_impl.cpp:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; double radio_control_impl::set_tx_frequency(const double freq, const s=
ize_t chan)<br>
&gt; {<br>
&gt;=C2=A0 =C2=A0 =C2=A0std::lock_guard&lt;std::mutex&gt; l(_cache_mutex);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0return _tx_freq[chan] =3D freq;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Then I just got stuck here, what is the _tx_freq[chan] ? I just can no=
t find more.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; What I want to do is to modify the underlying ad9361 driver, so that w=
hen tuning a frequency, I can bypass the calibration in the ad9361 to speed=
 up the tuning speed.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Can anyone point me to 1.where I can find the source code for tuning f=
or the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to ad=
9361 so that I can write my own tuning method for ad9361 ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Yan<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006b27a905e4f1cef7--

--===============7468005509238006246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7468005509238006246==--
