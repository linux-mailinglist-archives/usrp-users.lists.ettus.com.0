Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442EAB2D7E
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 04:28:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85893385730
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 22:28:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747016904; bh=auYB16+4CD7g7slEnlRCOSdngfEYEPQY84YioEp0Vfs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I4DvjCQF8JxaxjasuBRSm0h4QNNMokXXcrmf2N+EN4oS+nrYVNnmgHcX2Wt0A72je
	 upwfV8IszS8x9aDDOH7MpDK7WOCQu92qsx8PZVMp52Byg8o13dsPtuVZpa4Jmg33WW
	 3COG3ZLR4DsbchDSnWSRjbbL495N9DkBA0bJNIgVnFIvu1ni5UmvhMitbsAdZDsBx6
	 Zl197ymNSiPFxNYWysqg/4JkgT+pdBm2WH0XI+mxFsr5oSc0TzkuxCMwj4jFrGCzKW
	 bGUlaWAtGedis9PgLavCE6RFzcAXLU3lsdBezoNRxuj/3HJw0cMPw/y3OKHnD3b4qB
	 ZaADlKaVCv+KA==
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E5E15385EBC
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 22:27:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iiq2qavO";
	dkim-atps=neutral
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3d8fc9dbce4so17683355ab.0
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 19:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747016863; x=1747621663; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FijYoNA59FAfqW86DF2d8LlcNxZD7nd6MQCJf9ubpsg=;
        b=iiq2qavOXWltIqjGRxutBmsbKi5UGQr8lDnFvhHyrbryu/8GjxSVhXnhDs/F0jOWHH
         ynbDbhn4aut4wRSwb60CngH9C2L2P7TBGx3304sWhm9Jc03dQ6+v0wX3kvehw0NYfNoM
         6EimHiUP9P1z9dtpvgJHZoly4Pst3z8/ATVglkJ/QvNB6IP9X4d1GnzsbewLdsySRIi6
         XwoI0m4IiaTxX15hCMKlvJ57E/UmKqjWzy2xPSkDfFX48Q9bCVmLF3prJyn6p0y1Ixyk
         tGKmwimb+jiUwEca1LVVqSsXfDIQlP1iP71h4gLpaDoMxpoJjklWE76gkCPdn6aYMOCl
         Bjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747016863; x=1747621663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FijYoNA59FAfqW86DF2d8LlcNxZD7nd6MQCJf9ubpsg=;
        b=c6B1SBlKZ7Ts4p/rjBs0bAzHZoDvHtzbM1RxPQt1ZI0I6/s8uesyNsXgOOZxw8Jnb5
         abTS3pNztUXIEjOnwtqqCKfOOKqildaurh74KmC1mgoAUm85BOHWmiv2YRb5CHovsHx2
         Rg3g6htUhqWzEOFVSHIDkO23RXNzAY1dBUxio23fodRE4vrJ+aGP1k9jRUeIu1jtRr+F
         EteiTvqir86GoiG8Q9u104oa8S4Nbu5iQc8zGNpuBcPwwHLj7Zdpfy5dYUrMnUE1/CyC
         yiren29na8UNc46FDdvOdOJ0U6xfSiMFRQ5nmQ/R8DHzQGorwhZcq76waBvvoBAPJbOM
         18cQ==
X-Gm-Message-State: AOJu0Yx/OTMO6UVASWAzj/NjoFLbHhu5taJvJGSxEO6HDzlwxVtppIsk
	JHTbhbzw0kvsUfR/YtFkPAmz3F/8lZo5+qRVcz1iXDdqixXQa0jMIr5og6Ahwf2GRoezwXj8kmd
	gJiH3ydW/oO+R7fdlGkBNdb6leR4=
X-Gm-Gg: ASbGncs8l2r5AN2oZZjeiGf9YJRK3SlAfrQFdGGqUT7ZSHfeCxYvxvW01Z2IdTfNjsN
	zROSIQkv6X+RYkE01DqxPRV9YDuC6sSMZyTt9x4MKeo7NdxI0DByo84J5QpwlsU3npK2gd/+891
	Wu2VRACsW4TfnIT+APHR26h9SFB7F8rAg=
X-Google-Smtp-Source: AGHT+IFDOuH26doj7N7Ea5QhpAYW74cdCSeo0pd9vlPZGnTiP7Yt4/PP27uwavtQ9FKRXYmv1zEnV73dMWzOjeMNqEI=
X-Received: by 2002:a05:6e02:1a4b:b0:3da:6f23:bab1 with SMTP id
 e9e14a558f8ab-3da78532e49mr175972555ab.1.1747016862709; Sun, 11 May 2025
 19:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com> <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com>
In-Reply-To: <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 12 May 2025 05:27:31 +0300
X-Gm-Features: AX0GCFuihNA9UTXDM0mjKMU9FsAz-I3MRKtN9C919rVdx_EJNvxirsZaCJr7CcU
Message-ID: <CAAxXO2EaNs1mwLx5BK67qdKG9=833_KonYG4GHRPbeNOhvG0QQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OI5EPKIKXR3TOMKSACAHRYS4M54XPJE7
X-Message-ID-Hash: OI5EPKIKXR3TOMKSACAHRYS4M54XPJE7
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OI5EPKIKXR3TOMKSACAHRYS4M54XPJE7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6876047316406849501=="

--===============6876047316406849501==
Content-Type: multipart/alternative; boundary="00000000000084bef80634e70fd3"

--00000000000084bef80634e70fd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thx Marcus,

I worked it out 2 days ago. Just my memory allocation.
I am passing input buffer with a global pointer.
I was using global stack allocation. When I switched to
malloc, it just works fine:)
Here is what happened: Input buffs didn't reach the _recv_one_packet() wher=
e
b was evaluated to nil and therefore out_buffs were allocated to nil. It
would be helpful
to check allocations like these and issue a warning.
Input, however, still reached the convert_chdr_1_to_fc64_1_guts but
outputs and therefore output were evaluated to NULL.
With NULL output it was sent through the guts function.
Even commenting out the switch and sending it through
the generic chdr_sc16_to_xx crashed it with no output buffers:(
I am not quite sure why b is not evaluated in _recv_one_packet()
and is available downstream in convert_chdr_1_to_fc64_1_guts
with a global stack allocation. Unstable code?

Anyway, I need the complex double for libfftw3. Its
input data is (fftw_complex) aka 16 B, no matter
what precision I use. It comes out in float, long double
and quad flavors, but input is the same.
And it blows Opencl fft I was using by 10x!
on the filesystem, less with live signals,
but still faster:) And signal power is hotter:)

BR
Nikos

On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 10/05/2025 07:17, Nikos Balkanas wrote:
>
> It turns out that the problem is not just bypassing the sse2 code:(
> After commenting it out, uhd still crashes. The conversion output
> buffers are not created in _recv_one_packet()
> Any ideas why they don't?
>
> TIA
> Nikos
>
> This should *Just work*.
>
> What happens if you use rx_samples_to_file and specify:
>
> --type double
>
> This should write out double-precision (64-bit) complex floats to the
> output file. You should be able to use that example
>   code as a bit of a template.
>
> Also, I have to ask, why double precision?  Even single-precision float
> has more precision and dynamic range than is
>   actually represented by the 16-bit values on the wire, coming from the
> ADCs.    By moving to double-precision, unless you
>   have a library that only supports double-precision math, you're just
> slowing down your computations for no good reason.
>
>
>
>
>
> On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Hi all,
>>
>> I recently changed my host application to complex double. I had to chang=
e
>> my stream_args to
>> fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
>> ptr =3D (void **)&zin;
>> Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I hav=
e
>> only 1196 maxsamples, and crashes. I don't need the sse2 code for my
>> conversion. I only use 1024 complex
>>  samples/packet for fft. I am very happy with the generic chdr_sc16_to_x=
x.
>> Does anyone have any fc64 experience and how one can pass the void buffe=
r
>> pointer to
>> skip the sse2 code?
>>
>> TIA
>> Nikos
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000084bef80634e70fd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Thx=
 Marcus,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">I worked it out =
2 days ago. Just my memory allocation.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">I am passing input buffer with a global pointer.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">I was using globa=
l stack allocation. When I switched to=C2=A0</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">malloc, it just works fine:)</div><div class=
=3D"gmail_default" style=3D"font-size:small">Here is what happened: Input b=
uffs didn&#39;t reach the=C2=A0_recv_one_packet() where</div><div class=3D"=
gmail_default" style=3D"font-size:small">b was evaluated to nil and therefo=
re out_buffs were allocated to nil. It would be helpful</div><div class=3D"=
gmail_default" style=3D"font-size:small">to check allocations like these an=
d issue a warning.</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">Input, however, still reached the=C2=A0convert_chdr_1_to_fc64_1_guts bu=
t</div><div class=3D"gmail_default" style=3D"font-size:small">outputs and t=
herefore output were evaluated to NULL.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">With NULL output it was sent through the guts func=
tion.</div><div class=3D"gmail_default" style=3D"font-size:small">Even comm=
enting out the switch and sending it through</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">the generic=C2=A0<span style=3D"color:rgb(80,=
0,80)">chdr_sc16_to_xx crashed it with no output buffers:(</span></div><div=
 class=3D"gmail_default" style=3D"font-size:small"><span style=3D"color:rgb=
(80,0,80)">I am not quite sure why b is not evaluated in=C2=A0</span>_recv_=
one_packet()</div><div class=3D"gmail_default" style=3D"font-size:small">an=
d is available downstream in convert_chdr_1_to_fc64_1_guts</div><div class=
=3D"gmail_default" style=3D"font-size:small">with a global stack allocation=
. Unstable code?</div><div class=3D"gmail_default" style=3D"font-size:small=
"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Anyway, =
I need the complex double for libfftw3. Its=C2=A0</div><div class=3D"gmail_=
default" style=3D"font-size:small">input data is (fftw_complex) aka 16 B, n=
o matter=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">=
what precision I use. It comes out in float, long double</div><div class=3D=
"gmail_default" style=3D"font-size:small">and quad flavors, but input is th=
e same.</div><div class=3D"gmail_default" style=3D"font-size:small">And it =
blows Opencl fft I was using by 10x!</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">on the filesystem, less with live signals,</div><div =
class=3D"gmail_default" style=3D"font-size:small">but still faster:) And si=
gnal power is hotter:)</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">BR=
</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></d=
iv><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, May 12, 2025 at 4:24=E2=80=AFAM Marcus D. Leech =
&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></=
u>

 =20
   =20
 =20
  <div>
    <div>On 10/05/2025 07:17, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">It turns out
          that the problem is not just bypassing the sse2 code:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small">After
          commenting it out, uhd still crashes. The conversion output</div>
        <div class=3D"gmail_default" style=3D"font-size:small">buffers are
          not created in=C2=A0_recv_one_packet()</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Any ideas wh=
y
          they don&#39;t?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">TIA=C2=A0</d=
iv>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>
      </div>
    </blockquote>
    This should *Just work*.<br>
    <br>
    What happens if you use rx_samples_to_file and specify:<br>
    <br>
    --type double<br>
    <br>
    This should write out double-precision (64-bit) complex floats to
    the output file. You should be able to use that example<br>
    =C2=A0 code as a bit of a template.<br>
    <br>
    Also, I have to ask, why double precision?=C2=A0 Even single-precision
    float has more precision and dynamic range than is<br>
    =C2=A0 actually represented by the 16-bit values on the wire, coming fr=
om
    the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-precision, unless you<b=
r>
    =C2=A0 have a library that only supports double-precision math, you&#39=
;re
    just slowing down your computations for no good reason.<br>
    <br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 10, 2025 at
          7:56=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hi all,<=
/div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">I
              recently changed my host application to complex double. I
              had to change my stream_args to</div>
            <div class=3D"gmail_default" style=3D"font-size:small">fc64. I
              pass my void pointer to uhd_rx_streamer_recv same as
              before:</div>
            <div class=3D"gmail_default" style=3D"font-size:small">ptr =3D
              (void **)&amp;zin;</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Unfortun=
ately,
              the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts doesn&#39;t like=
 it, I have
              only 1196 maxsamples, and crashes. I don&#39;t need the sse2
              code for my conversion. I only use 1024 complex</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0sa=
mples/packet
              for fft. I am very happy with the generic=C2=A0chdr_sc16_to_x=
x.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Does
              anyone have any fc64 experience and how one can pass the
              void buffer pointer to</div>
            <div class=3D"gmail_default" style=3D"font-size:small">skip the
              sse2 code?</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">TIA</div=
>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos</d=
iv>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000084bef80634e70fd3--

--===============6876047316406849501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6876047316406849501==--
