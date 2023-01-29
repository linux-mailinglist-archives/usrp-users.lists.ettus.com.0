Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7826800FE
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 19:53:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09B10383AD9
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 13:53:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675018416; bh=LJ8PWqfG4jmYsKetbieOBhQIUSpjoj6UFLOrg6HA1vs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BPbfWqRpB4D1muIypiza9yNg8xxC99TCKeqFYexgl90i5FEd1hoIqQswdM4W1Ac3/
	 pMhA7r41sCh//kCuIA9BMb2iJ9be581l1Cvvv5WMswoIBuSegLFHB5A+PVyi4JbuMl
	 MEZGSPIOxvRoNXnX9vwjxRuz+jdHmfIzuH1BjkkBHyaL4PqNLriYUUK2x6ImAJAO5m
	 0rwT5QwdgJ534WBgaLsIIO4sJr/QTq8pFY6undyG06+PoC/walf2cdFPV0Npl1SBI6
	 kq6jLroCgHttI0ZX71/dEJrHD+zH4eQTRwR2yAFt0XtGPPbibL/Ok69U7ybXyKQZMh
	 KGU1CL/8XTugQ==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 612CA3814FA
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 13:52:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JVzgSvGi";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id s4so8321684qtx.6
        for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 10:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bNvYQzW0hN5vn7G6Pa9RD5ObdCCZLWNIOozs44fimhU=;
        b=JVzgSvGiGe1HX4SUVOMu1AcAeHlmPpgF59JRv34cKRZf/FUz5C8f/yDC1AvXHnr1qK
         bXD9SM7EcF9V+huDoeOjUFSJdK71j3U7nsBgtYi6EXFQfeOlXuVuTeUyVeBlmyhd3bsN
         yikVpe3YBhufCbqSK6gUJinmy4DDHRXbyd261KfWyhqVTEjH4BCPOknHMpeZrAuWDOwq
         NuCYA1dYGcFdEm48ZRs1mVpnp0cCAzuZTpcoWSZK2poFwUgMrvYtjZ67o8TRPQS2y5JK
         p22NX+Qz+nh0WNyMP1rMBev6Iumb5QrXfiGho9QDYXYX/EggjwpcB5j/+OQs9DDFi/+a
         dHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bNvYQzW0hN5vn7G6Pa9RD5ObdCCZLWNIOozs44fimhU=;
        b=NJ0oq27RoLlz01/y5Z0xrd8m0K/rCAQq+1ZzSIt/GKCq+nlu/jznkv9zjQcy2Haksv
         n+2t3LvS5I5oDWb+C6mnK55S9cal/ae+D01SdLXf08mKNOPXpcexbfHw03D3pP0OEvi/
         MpONLIUY8SZQj9jvsyFEMFzMEmAWAxGZfZxS0jSI4gFwawmye9cET2mVxzGyQqpC/1EJ
         YpUKu9clgMAvi2cQ0tIMzLazCl30YJW6kzULUBrItfkd9bpH2z5Pj0GbXZ/4EKDJwpHf
         qT9mNjG5NY6qIFGGr74BINMogE3ZgH+GudEHn4SUtzQu/sEOJSOMB6NuCRiOHZn9Sge8
         HIYg==
X-Gm-Message-State: AO0yUKVcnJwkbl3zbz+KzQTQQWhSgnaPYlz2VABM/Jj+lr4YI7fcy0U7
	ZnVZAELLt23zyiEzP2QjjCS5XBxsi2M=
X-Google-Smtp-Source: AK7set/FoZ5AN/vv2AHk4PdlgTE/Y13hqD/Ueenu75Oal3Zn0PmURd4vsbo4saHobwCfWP5Zq2rTVA==
X-Received: by 2002:a05:622a:5cd:b0:3b6:32ed:54e6 with SMTP id d13-20020a05622a05cd00b003b632ed54e6mr10434139qtb.6.1675018334533;
        Sun, 29 Jan 2023 10:52:14 -0800 (PST)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id f23-20020ac80157000000b003b868cdc689sm1095824qtg.5.2023.01.29.10.52.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 10:52:14 -0800 (PST)
Message-ID: <69b0f442-57a5-0f31-072a-c2464cc845b8@gmail.com>
Date: Sun, 29 Jan 2023 13:52:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0@lists.ettus.com>
 <CAAxXO2EHwekMGS47nXfAcH+C=TtMYh2qhhJKZn4XULHKSBOK=w@mail.gmail.com>
 <CAAxXO2GA5fM1XnkftXLNgyxvY2mcueOT=3Tsu5G45oohFqK4ug@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GA5fM1XnkftXLNgyxvY2mcueOT=3Tsu5G45oohFqK4ug@mail.gmail.com>
Message-ID-Hash: T3AI4QGMAXGD4SFRZGDASWZQNC4CARZ4
X-Message-ID-Hash: T3AI4QGMAXGD4SFRZGDASWZQNC4CARZ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD C++ API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T3AI4QGMAXGD4SFRZGDASWZQNC4CARZ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0627550700980128320=="

This is a multi-part message in MIME format.
--===============0627550700980128320==
Content-Type: multipart/alternative;
 boundary="------------pePyoPRnTrvvIDViWScEmPZm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pePyoPRnTrvvIDViWScEmPZm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/01/2023 13:36, Nikos Balkanas wrote:
> Sorry, pressed the send accidentally...
>
> 2) The input to the fft is your time domain signal, or your usrp=20
> output. The fft output is the frequency domain of the same signal.
> There is no frequency shift. Depending on the fft software you use,=20
> all fft output is given in a vector. You just copy it to a new vector,
> or use it as it is.
> 3) fft is always a batch operation. Its size depends on your needs, ie=20
> in how many parts do you need to spilt your input signal. Size should=20
> be odd,
> to account for the 0 bin which contains the DC component, so fft size=20
> =3D (parts=C2=A0+ 1). To make a batch operation run in near real time. =
you need
> to place it in a separate thread from your reader, and use mutex to=20
> synchronize it.
>
> HTH
> Nikos
>
> On Sun, Jan 29, 2023 at 8:23 PM Nikos Balkanas <nbalkanas@gmail.com>=20
> wrote:
>
>     Hi,
>
>     These are programming questions for your application, unrelated to
>     uhd. Your language is also a bit strange. Let me explain:
>
>     1) You take the output signal from your usrp and if it is larger
>     than a threshold value you store their index to a vector.
>     I imagine that the threshold is some kind of amplitute. To compare
>     it to your samples, you need to find the corresponding amplitude:
>     log10(hypot(Q, I))
>     Where Q is the real component of your sample, and I the imaginary.
>     You can store that value to a new vector. Or simpler you can
>     compare Q^2 + I^2,since log10 and sqrt do not add anything
>     useful.To read from usrp use:
>     uhd_rx_streamer_recv
>
>     On Wed, Jan 25, 2023 at 9:49 AM <seckinoncu80@gmail.com> wrote:
>
>         Hello USRP Users,
>
>         I am new to UHD C++ API. I have some questions about the
>         application that I planned to develop. I have N320 and I got
>         the signal from one channel and keep it in a vector as =E2=80=9C=
buff=E2=80=9D.
>         As you may know form examples.
>
>         1) How to take the envelope of the signal, then assign a
>         threshold value and keep the index of the sample which is
>         greater than threshold value in a vector?
>
>         2) After getting pulse=E2=80=99s TOA(time of arrival) and TOD(T=
ime of
>         Departure), how to take the fft and keep the frequency shift
>         in a vector?
>
>         3) Buff get 2000 samples in one cycle in my configuration. How
>         to arrange the fft size and buff size to have a real time
>         operations? Can processing delay be fixed for each cycle?
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'll interject here that this isn't the right place for someone to get=20
lots of advice and pointers on general computer programming
 =C2=A0 or even DSP programming topics.=C2=A0 There are plenty of other p=
laces for=20
that:

www.dsprelated.com
www.complextoreal.com
https://pysdr.org/
www.gnuradio.org

It is inefficient for everyone involved to basically get an=20
undergraduate course in DSP and general-purpose programming
 =C2=A0 via e-mail to a mailing list where that isn't the main topic.

I'm not going to stop anyone, to be clear, but I just want to point out=20
that there are more efficient ways to get this type of education...




--------------pePyoPRnTrvvIDViWScEmPZm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/01/2023 13:36, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GA5fM1XnkftXLNgyxvY2mcueOT=3D3Tsu5G45oohFqK4ug@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Sorry,
          pressed the send accidentally...</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">2) The inp=
ut
          to the fft is your time domain signal, or your usrp output.
          The fft output is the frequency domain of the same signal.</div=
>
        <div class=3D"gmail_default" style=3D"font-size:small">There is n=
o
          frequency shift. Depending on the fft software you use, all
          fft output is given in a vector. You just copy it to a new
          vector,</div>
        <div class=3D"gmail_default" style=3D"font-size:small">or use it =
as
          it is.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">3) fft is
          always a batch operation. Its size depends on your needs, ie
          in how many parts do you need to spilt your input signal. Size
          should be odd,</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to account
          for the 0 bin which contains the DC component, so fft size =3D
          (parts=C2=A0+ 1). To make a batch operation run in near real ti=
me.
          you need</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to place i=
t
          in a separate thread from your reader, and use mutex to
          synchronize it.=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">HTH</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0=
</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 29, 2023 at 8:2=
3
          PM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">nbal=
kanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hi,</d=
iv>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">These =
are
              programming questions for your application, unrelated to
              uhd. Your language is also a bit strange. Let me explain:</=
div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">1) You
              take the output signal from your usrp and if it is larger
              than a threshold value you store their index to a vector.</=
div>
            <div class=3D"gmail_default" style=3D"font-size:small">I imag=
ine
              that the threshold is some kind of amplitute. To compare
              it to your samples, you need to find the corresponding
              amplitude: log10(hypot(Q, I))</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Where =
Q
              is the real component of your sample, and I the imaginary.
              You can store that value to a new vector. Or simpler you
              can compare Q^2 + I^2,since log10 and sqrt do not add
              anything useful.To read from usrp use:</div>
            <div class=3D"gmail_default" style=3D"font-size:small">uhd_rx=
_streamer_recv<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 25, 2023 at
              9:49 AM &lt;<a href=3D"mailto:seckinoncu80@gmail.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">seckinoncu80@gmail.com</a=
>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <p>Hello USRP Users,</p>
              <p>I am new to UHD C++ API. I have some questions about
                the application that I planned to develop. I have N320
                and I got the signal from one channel and keep it in a
                vector as =E2=80=9Cbuff=E2=80=9D. As you may know form ex=
amples.</p>
              <p>1) How to take the envelope of the signal, then assign
                a threshold value and keep the index of the sample which
                is greater than threshold value in a vector?</p>
              <p>2) After getting pulse=E2=80=99s TOA(time of arrival) an=
d
                TOD(Time of Departure), how to take the fft and keep the
                frequency shift in a vector?</p>
              <p>3) Buff get 2000 samples in one cycle in my
                configuration. How to arrange the fft size and buff size
                to have a real time operations? Can processing delay be
                fixed for each cycle?</p>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I'll interject here that this isn't the right place for someone to
    get lots of advice and pointers on general computer programming<br>
    =C2=A0 or even DSP programming topics.=C2=A0 There are plenty of othe=
r places
    for that:<br>
    <br>
    <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.dsprelated.c=
om">www.dsprelated.com</a><br>
    <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.complextorea=
l.com">www.complextoreal.com</a><br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://pysdr.org/">https:=
//pysdr.org/</a><br>
    <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.gnuradio.org=
">www.gnuradio.org</a><br>
    <br>
    It is inefficient for everyone involved to basically get an
    undergraduate course in DSP and general-purpose programming<br>
    =C2=A0 via e-mail to a mailing list where that isn't the main topic.<=
br>
    <br>
    I'm not going to stop anyone, to be clear, but I just want to point
    out that there are more efficient ways to get this type of
    education...<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------pePyoPRnTrvvIDViWScEmPZm--

--===============0627550700980128320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0627550700980128320==--
