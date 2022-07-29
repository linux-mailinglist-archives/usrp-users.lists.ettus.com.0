Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFB1585563
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 21:04:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83C8E380C7E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 15:04:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659121459; bh=Ohd26gKOKkgIdSWoDiGH4F5EAoYSiqnrkRLRQB+Ukx8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DmrYsaknMJikGtfZ/6+7HyCrSzi10MvYKNlt97+dZArL33+v/WgQAdC6wj1EKzBZz
	 3Q9FMjB7pwaoMlh/+r0nhJiXdvQjZYp6N2CadBKYnea/jNrmA4rw4vCCNKNn/zNDYm
	 DtsezKTtCPpde38xpg1isEd8Gf6JNnuLgJOnzQffGXKG+7rMnoww/zOLvhAPGO694y
	 67VX3DUtdn0prRYKo3gby/G3v9A/KdV7fBRBZEH4APb9vOAeEtomIFj4usyCfpZfBs
	 UnZpT75jC7RxDzwM3SNXIxJmb12iu/NDi1nkPfbD7PqjxL9uCCAwogGaiRUWm3stGE
	 k9Mau42mGlRog==
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D74C38408D
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 15:02:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oGmTiPsO";
	dkim-atps=neutral
Received: by mail-pj1-f49.google.com with SMTP id w63-20020a17090a6bc500b001f3160a6011so7352119pjj.5
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 12:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LDHd+P36kaMLUtibu+Yj+BpXYMYxaUNoh1uKxsJjF3M=;
        b=oGmTiPsOPPU0NKV3LyDtfinDkpEMdWovsunQbpfaSRruZfN6g7pV81eJxaa6gj/2S8
         OSpAz34v+SgDdKKEAWuNuJropE1rIQByzSLEQu9KksfBNPRGVdfGOdC5PiHJb0X7Vj80
         Yet2/Pc+NkEz1bGBxsC2RXQkYv8GwfNycTm6AhC7RJSBGDQWVWRXPCtv++EahywjeS0D
         L4aZRYxtWW60R5CSXRp7pscZvwB1wOaPmUS1hPAg4ko9Tjca5T3wMYoniBsIdb4M1boM
         K4KWMqV4EJSOiADoJFUfjivbdWS4+WWE51pXZSrMZ8BCgK1tHMmdf8VkFtiVnfsKCmfr
         Gz4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LDHd+P36kaMLUtibu+Yj+BpXYMYxaUNoh1uKxsJjF3M=;
        b=0Ro4TypSTmavmhzMhp86+iuqM1DNH4vPyuDEUiWPusvuw/ufVk3seNlv4A6ewoKMnM
         T3B4scqCB4ay0MM/gLfclWfmwaDWNDHxK0VZ097gc+d/7RQ0B+VNm7cITu5tXsUwJuGy
         C/s0DTkFtWu1Xcu/Z7Jmr1fS6YsUdnWlMizP9labuib0OznZdhN4O45NM9MSZlQhZIuU
         TBINZD+9TolJsQtqme18yh54kpEdHvoCwcGpS0X6TaDTd1xwjY1dmrHpYd79TFqfiVx3
         XobEav9xUFoQEUw9rOK/Bbh9HwohPv7JwhrHJG2+eAqQTfL/NMcCDTE7bzjnpDxDT0OI
         k6uw==
X-Gm-Message-State: ACgBeo2gVgvqubXJYj2oilzZWA+k2msHcu+ioT1bWiS3XeWuCpzZRe76
	gtRhtRAefwURMzgceQTw+HMm7GJ8gcF9UuxlJjI=
X-Google-Smtp-Source: AA6agR5IWULW3/b6SVipTjw3qdhPJMnv7kUvEmfp8ZILJNZyrJzoSWMvx2kxdNgExzPuvMPWNghukdy6qtUq5+Q/VDM=
X-Received: by 2002:a17:902:cf09:b0:16d:69ad:e496 with SMTP id
 i9-20020a170902cf0900b0016d69ade496mr5236995plg.6.1659121322217; Fri, 29 Jul
 2022 12:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
 <CAAxXO2Hh7vns3bnQgbcAWEDr=Uo9ju+FSXEzhutpFqLRx5+25Q@mail.gmail.com>
 <CAJPBMpV1HMoK1c3MP-eB+geApi865UQ0s0nVWhopw6X99sSz6A@mail.gmail.com> <CAAxXO2H5X6x3kH5XoC__Sn=bHbDPCFQ0bS8V1+Hstjifc=O7VA@mail.gmail.com>
In-Reply-To: <CAAxXO2H5X6x3kH5XoC__Sn=bHbDPCFQ0bS8V1+Hstjifc=O7VA@mail.gmail.com>
From: yan zhang <yanzhanggc@gmail.com>
Date: Fri, 29 Jul 2022 15:01:50 -0400
Message-ID: <CAJPBMpU6mzq9p_+VvcFEbRw7uGLdUegb+GgK7mv7XjZBLWEsUQ@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: S47SYEJTVIBGQJRS3PNQGHIY5YH3CT4T
X-Message-ID-Hash: S47SYEJTVIBGQJRS3PNQGHIY5YH3CT4T
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S47SYEJTVIBGQJRS3PNQGHIY5YH3CT4T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0891595888541163039=="

--===============0891595888541163039==
Content-Type: multipart/alternative; boundary="0000000000000cd57905e4f649ee"

--0000000000000cd57905e4f649ee
Content-Type: text/plain; charset="UTF-8"

Hi, Nikos,

I am using a E312 device with ad9361 frontend and I am sure the frontend is
ad9361. I have searched for like two weeks and can not find the source code
for tuning.

The most possible code is in the ad9361 driver folder, but that does not
work ... (with printf())

Yan

On Fri, Jul 29, 2022 at 11:03 AM Nikos Balkanas <nbalkanas@gmail.com> wrote:

> Hi Yan,
>
> Throwing an error (exception?) is a bit drastic. A simple printf or
> cout should be sufficient...
> Yup. That seems to be controlling the VCO. That should be in your
> daugtherboard.
> What daugtherboard are you using?
> If you are using it and it doesn;t print/err then you should be
> looking elsewhere...
> Are you sure you are using the ad9361 driver?
>
> HTH
> Nikos
>
> On Fri, Jul 29, 2022 at 4:41 PM yan zhang <yanzhanggc@gmail.com> wrote:
> >
> > Hi, Nikos,
> >
> > Thanks for your reply! I will try to learn and install ctag. Here is
> what I further find:
> >
> > Following your directions, I can find the _tx_freq variable in
> "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h".
> > I assume that the " _tune_helper() " function implemented in
> "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp" is the
> underlying function that tunes the ad9361 front end.
> > The problem is that I modify the _tune_helper()  by throwing a uhd error
> at the beginning of the function, however after I re-compile the modified
> uhd and re-install it and then re-run my tuning loop, I didn't find the
> error message I throw in the  _tune_helper() .
> >
> > Does that mean the E312 uhd does not run the  _tune_helper() function
> in  "uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp"?
> > I really would like to find where the underlying tuning source code is
> and I need to turn off the calibration procedure in the tuning code to
> speed up the tuning.
> >
> > Thanks,
> > Yan
> >
> >
> >
> >
> >
> >
> >
> > On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas <nbalkanas@gmail.com>
> wrote:
> >>
> >> Hi,
> >>
> >> _tx_freq is an intermediate frequency.
> >> It is defined in:
> >> uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h
> >> If you need to modify uhd, you really need to install ctags, and grep
> >> the sources...
> >>
> >> HTH
> >> Nikos
> >>
> >> On Thu, Jul 28, 2022 at 10:42 PM <yanzhanggc@gmail.com> wrote:
> >> >
> >> > Hi, all,
> >> >
> >> >
> >> >
> >> > I have a E312 device and I just find that the tuning speed of E312 is
> very slow (~150ms) for each tuning. Thus I would like to modify the
> underlying tuning source code in the uhd software architecture.
> >> >
> >> >
> >> >
> >> > Here is what I found:
> >> >
> >> >
> >> >
> >> > I first create a multi_usrp object:
> >> >
> >> > uhd::usrp::multi_usrp::sptr usrp =
> uhd::usrp::multi_usrp::make(device_args);
> >> >
> >> >
> >> >
> >> >
> >> >
> >> > then I tune the usrp by running a loop:
> >> >
> >> >
> >> >
> >> > int count = 200;
> >> > for(int a = 0; a < count; a++) {
> >> >         uhd::tune_request_t tune_request(600e6 + a*10e6);
> >> >
> >> >         usrp->set_rx_freq(tune_request, 0);
> >> >         usrp->set_tx_freq(tune_request, 0);
> >> > }
> >> >
> >> >
> >> >
> >> > Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a
> step size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.
> >> >
> >> >
> >> >
> >> > Thus, I traced the call stack from usrp->set_rx_freq(tune_request,
> 0). Here is what I found:
> >> >
> >> > usrp->set_rx_freq(tune_request, 0);  calls the method
> set_tx_frequency() in
> uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp
> >> >
> >> > then the method set_tx_frequency() in
> uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune()
> method in uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp
> >> >
> >> > then the tune() method in
> uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp calls the method
> set_tx_frequency() in uhd/host/lib/rfnoc/radio_control_impl.cpp.
> >> >
> >> >
> >> >
> >> > The conclusion I have reached so far is the underlying tuning method
> is in  uhd/host/lib/rfnoc/radio_control_impl.cpp:
> >> >
> >> >
> >> >
> >> > double radio_control_impl::set_tx_frequency(const double freq, const
> size_t chan)
> >> > {
> >> >     std::lock_guard<std::mutex> l(_cache_mutex);
> >> >     return _tx_freq[chan] = freq;
> >> > }
> >> >
> >> >
> >> >
> >> > Then I just got stuck here, what is the _tx_freq[chan] ? I just can
> not find more.
> >> >
> >> >
> >> >
> >> >
> >> >
> >> > What I want to do is to modify the underlying ad9361 driver, so that
> when tuning a frequency, I can bypass the calibration in the ad9361 to
> speed up the tuning speed.
> >> >
> >> >
> >> >
> >> > Can anyone point me to 1.where I can find the source code for tuning
> for the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to
> ad9361 so that I can write my own tuning method for ad9361 ?
> >> >
> >> >
> >> >
> >> > Thanks,
> >> >
> >> > Yan
> >> >
> >> > _______________________________________________
> >> > USRP-users mailing list -- usrp-users@lists.ettus.com
> >> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000cd57905e4f649ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Nikos,<div><br></div><div>I am using a E312 device wit=
h ad9361 frontend and I am sure the frontend is ad9361. I have searched for=
 like two weeks and can not find the source code for tuning.=C2=A0</div><di=
v><br></div><div>The most possible code is in the ad9361 driver folder, but=
 that does not work ... (with printf())</div><div><br></div><div>Yan</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Jul 29, 2022 at 11:03 AM Nikos Balkanas &lt;<a href=3D"mailto:nbalka=
nas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hi Yan,<br>
<br>
Throwing an error (exception?) is a bit drastic. A simple printf or<br>
cout should be sufficient...<br>
Yup. That seems to be controlling the VCO. That should be in your daugtherb=
oard.<br>
What daugtherboard are you using?<br>
If you are using it and it doesn;t print/err then you should be<br>
looking elsewhere...<br>
Are you sure you are using the ad9361 driver?<br>
<br>
HTH<br>
Nikos<br>
<br>
On Fri, Jul 29, 2022 at 4:41 PM yan zhang &lt;<a href=3D"mailto:yanzhanggc@=
gmail.com" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi, Nikos,<br>
&gt;<br>
&gt; Thanks for your reply! I will try to learn and install ctag. Here is w=
hat I further find:<br>
&gt;<br>
&gt; Following your directions, I can find the _tx_freq variable in &quot;u=
hd/host/lib/usrp/common/ad9361_driver/ad9361_device.h&quot;.<br>
&gt; I assume that the &quot; _tune_helper() &quot; function implemented in=
 &quot;uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp&quot; is th=
e underlying function that tunes the ad9361 front end.<br>
&gt; The problem is that I modify the _tune_helper()=C2=A0 by throwing a uh=
d error at the beginning of the function, however after I re-compile the mo=
dified uhd and re-install it and then re-run my tuning loop, I didn&#39;t f=
ind the error message I throw in the=C2=A0 _tune_helper() .<br>
&gt;<br>
&gt; Does that mean the E312 uhd does not run the=C2=A0 _tune_helper() func=
tion in=C2=A0 &quot;uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cp=
p&quot;?<br>
&gt; I really would like to find where the underlying tuning source code is=
 and I need to turn off the calibration procedure in the tuning code to spe=
ed up the tuning.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Yan<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Jul 28, 2022 at 6:48 PM Nikos Balkanas &lt;<a href=3D"mailto:n=
balkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; _tx_freq is an intermediate frequency.<br>
&gt;&gt; It is defined in:<br>
&gt;&gt; uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.h<br>
&gt;&gt; If you need to modify uhd, you really need to install ctags, and g=
rep<br>
&gt;&gt; the sources...<br>
&gt;&gt;<br>
&gt;&gt; HTH<br>
&gt;&gt; Nikos<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jul 28, 2022 at 10:42 PM &lt;<a href=3D"mailto:yanzhanggc@=
gmail.com" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi, all,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have a E312 device and I just find that the tuning speed of=
 E312 is very slow (~150ms) for each tuning. Thus I would like to modify th=
e underlying tuning source code in the uhd software architecture.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Here is what I found:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I first create a multi_usrp object:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::m=
ake(device_args);<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; then I tune the usrp by running a loop:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; int count =3D 200;<br>
&gt;&gt; &gt; for(int a =3D 0; a &lt; count; a++) {<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd::tune_request_t tune_req=
uest(600e6 + a*10e6);<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp-&gt;set_rx_freq(tune_re=
quest, 0);<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp-&gt;set_tx_freq(tune_re=
quest, 0);<br>
&gt;&gt; &gt; }<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Basically, the loop tunes the frequency from 600MHz to 2.6 GH=
z with a step size of 10 MHz. The 200 tunings take 52 seconds, which is pre=
tty slow.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thus, I traced the call stack from usrp-&gt;set_rx_freq(tune_=
request, 0). Here is what I found:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; usrp-&gt;set_rx_freq(tune_request, 0);=C2=A0 calls the method=
 set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_imp=
l.cpp<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; then the method set_tx_frequency() in uhd/host/lib/usrp/dboar=
d/e3xx/e3xx_radio_control_impl.cpp calls the tune() method in uhd/host/lib/=
usrp/dboard/e3xx/e3xx_ad9361_iface.cpp<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; then the tune() method in uhd/host/lib/usrp/dboard/e3xx/e3xx_=
ad9361_iface.cpp calls the method set_tx_frequency() in uhd/host/lib/rfnoc/=
radio_control_impl.cpp.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The conclusion I have reached so far is the underlying tuning=
 method is in=C2=A0 uhd/host/lib/rfnoc/radio_control_impl.cpp:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; double radio_control_impl::set_tx_frequency(const double freq=
, const size_t chan)<br>
&gt;&gt; &gt; {<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0std::lock_guard&lt;std::mutex&gt; l(_cache=
_mutex);<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0return _tx_freq[chan] =3D freq;<br>
&gt;&gt; &gt; }<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Then I just got stuck here, what is the _tx_freq[chan] ? I ju=
st can not find more.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What I want to do is to modify the underlying ad9361 driver, =
so that when tuning a frequency, I can bypass the calibration in the ad9361=
 to speed up the tuning speed.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Can anyone point me to 1.where I can find the source code for=
 tuning for the E312 with uhd 4.0 or 2. how to use mpm to get low-level acc=
ess to ad9361 so that I can write my own tuning method for ad9361 ?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Yan<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a><br>
</blockquote></div>

--0000000000000cd57905e4f649ee--

--===============0891595888541163039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0891595888541163039==--
