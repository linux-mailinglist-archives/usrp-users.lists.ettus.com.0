Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3B7AC1BBA
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 07:13:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F3943851FA
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 01:13:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747977217; bh=hgmxT6QLLYMCkvKk78FWLcPDRJDhhzkN64AlntJ60a8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RJu/IvZ5i8W+WedfTxa3rdWJNuyHwfkkpON0wlmk+wlpD+9hflU2WG3E41rFdDmBg
	 JtHYZyhEPYUP+S/Etok29ITYJrBqhbxAC42t8vcPmdfK81mcjHii27xoUd6FkyIWDl
	 KpsVtZthEunTGvqW67Kk05QlLDXSTn4904QiBww1aHZjncedQCLOH2SByzA2t7ZXn4
	 AqlQ2vFT65yuHyEMoD9XHskCgluxbuxKq3dfGJJGAFqKdvKbQQshDFJmTaCNNmo+dX
	 ntQPponKLbxV53fuBG0oMYkYmCcB3vzmJD1jjB70PN8NS9Vtp6pos2tuVmBQkPxgy/
	 rkKmVeD+nbpiQ==
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 17DCA381123
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 01:12:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VJk+pmIl";
	dkim-atps=neutral
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3dc729471e3so17556355ab.1
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 22:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747977162; x=1748581962; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ROEUIhKcirueC6/I9zAzAOrqIm1ahkdYpcwGBBbhmwE=;
        b=VJk+pmIlftR3MvdGhqakAFuKY8A84q2iiw0BJ/YvU6c8V3M1klpS6NHDXU/GLqkSmN
         oPc+Pob4ckHqV8sQ70I4jLxVgbqX8Jo1X6nlYyFaDZUFaAtHvSFY5KjBUf4chiCN22Yx
         wX+eHfa9f5XTgNwWE5iwKsiUdF9TpNghsg6QBuVFyLiZYsCTLjS3NtVxsB/YXnncWvaY
         +Ccx7HmegqlgJydz1WYW5XLtHWSRBA4Mp7dEr5ufC0WZYVNjlusHzlfVFUvapbOruX+q
         u70bNMAlEQPBWmkkvV27OCrMh2qutl7NHnXC3WtE3M1CLzRQMW80aeVBHvEI0LALr7c+
         k0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747977162; x=1748581962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROEUIhKcirueC6/I9zAzAOrqIm1ahkdYpcwGBBbhmwE=;
        b=LgDiDnN0qnoXO4AqyG4XxDst7TKqe4aeY6QPE6ZrJB5brEYJm4kKQF7Gk5oMdj2ZG+
         SYMLDafypTS180TlzzeZZYOuM5m/ojJK1aUJQEqmlgKDWAMALx78ry10h3wuoPWO0FXL
         JUuFY+n++F8JPcIm223TSNx+KHonwkPeQXn6e0RzQxpw9XvVElMSkugoh5Im7U0tWsN9
         G+Wl32eAId+G6k8yBbp3g9RtHYJbtVR5th0m8w9m9yCn4vV8Qwwkl/0r0DaWXo6XptBv
         FOZEVObGmtmIvt8vx43MGd1VL+0MEzd6IySz+aje+oNrNJysMJkJE+1IQZDasHpOC0Dx
         hHjA==
X-Gm-Message-State: AOJu0YzMzo1wlxAENui5p/3IgSA1/Wsa/crQkwRDmnLGnggl09Z5GRXz
	lkV0i2of/1soxFZqisU9fNpX987Jyyy8razmVi73XLoihbzT0wwUgfhsdON0AO7BGWORWhOOaE/
	0mT1plChrYU20H11rQ6d5qh9Chc9dE08=
X-Gm-Gg: ASbGncvG1pyVC5X52VvXqY/fpc557eN6vAQ43aJl7spDasp5pXTsxtVlYGDMPnkmXcw
	LWwNjosO01aCfRV0eDQfdJ7PbBkFjV4e1DF6kvr76fOPalAycpS55MSN1JAdz9qaKmkz6RVpFBe
	6civdKpn+ygi4HnlnctuBJ8V3q34vrzQ==
X-Google-Smtp-Source: AGHT+IFo0cbwOWxWssKkb5Darb9oUG20OfixIhj33fr71//YvG/b8ZWxLwKTRuzbpxEkMAW3FwyreAr1DIgArMkCIYY=
X-Received: by 2002:a05:6e02:9d:b0:3d3:db70:b585 with SMTP id
 e9e14a558f8ab-3db84375cd6mr284999455ab.21.1747977162149; Thu, 22 May 2025
 22:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com> <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com>
In-Reply-To: <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 23 May 2025 08:12:30 +0300
X-Gm-Features: AX0GCFvJezwcivCgI87oZHgCkBaJ5lQhQfzGAFa_d7-TnNRTZcRmbWZdu5HunlE
Message-ID: <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Q2YMY6FLRKYBMRCMIN3HXMNLRF3KCTQU
X-Message-ID-Hash: Q2YMY6FLRKYBMRCMIN3HXMNLRF3KCTQU
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2YMY6FLRKYBMRCMIN3HXMNLRF3KCTQU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2365472494634647440=="

--===============2365472494634647440==
Content-Type: multipart/alternative; boundary="000000000000d358d10635c6a541"

--000000000000d358d10635c6a541
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thx Marcus,

For your fast and informative answers. Sorry it took me a while to reply,
but I'm still trying to get:
tune_request(freq, lo_off)
to work in C.
My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
True about the tuner. Much cheaper and easier to implement it in analog.
I am using your FPGA image. Haven't touched it myself, yet.
So, the spike is pretty narrow to interfere with my signals, but still
messes my power calculations:(
I already implemented the integer frequency tuner and working on the low
oscillator offset.
If you have any pointers about it, feel free to advise.
LO is not part of the request_tuner_t struct. It is set independently.
Is this the same LO in uhd_usrp_set_rx_lo_freq?
If this is the case I can modify it externally:)

BR
Nikos

On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2025-05-22 21:31, Nikos Balkanas wrote:
>
> The spike is very clean to come from outside.
> Must be from my X310. My tuner must be adding a signal to the
> center frequency. The small artifact at 2 Ghz is probably the tuner not
> equilibrating fully.
> I recently updated my FPGA image. Is that where the tuner lives?
>
> You haven't mentioned in this thread which daughtercard you're using.   R=
F
> front-ends that use complex-baseband
>   downconversion suffer from something called "DC-offset", which produces
> a spike at 0Hz in the complex spectrum.
>   The radio block in the standard FPGAs has methods for reducing this,
> unless you turn it off.  This is a very very
>   *normal* thing for complex-baseband receiver chains.
>
> If the algorithms are engaged and working, then there'll still be a
> central spike, but *considerably* reduced, and I find that
>   said spike is usually swamped by external signals, even in radio
> astronomy.
>
> The other method that people use is to use "offset tuning".  Where the
> tuner is tuned to a different RF frequency, and the
>    DDC brings your signal of interest down to 0Hz.
>
> https://files.ettus.com/manual/page_general.html#general_tuning
>
> The "tuner" is an analog collection of components, including an LO
> generator, and mixers.  While it is *controlled* through
>   the FPGA, it is an analog subsystem.
>
>
>
> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Hello,
>>
>> Whenever I look at my spectrum I always see an energy spike at the cente=
r
>> frequency.
>> In the first image you can see a spike at 2, but not at 2.001 Ghz. In th=
e
>> next image,
>>  at 2.001 Ghz you can see the energy spike at the center frequency, but
>> also a small
>>  spike at 2 Ghz.
>> I have verified these results by both fosphor (OpenCL fft) and fftw3f.
>> Besides, if it were
>>  an fft artifact, why is the spike at 2 Ghz still visible after a few
>> mins? These spikes
>>  seem to be transient, but real. In that part of the spectrum, you there
>> is no traffic. Could it be  harmonics from my power supply? Problems wit=
h
>> my X-310? My transmitter
>>  doing funny things (I have 2 boards and not enabling my transmitter
>> anywhere)?
>> Naming of images is freq_sr.jpg. All are in Mhz.
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

--000000000000d358d10635c6a541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Thx=
 Marcus,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">For your fast an=
d informative answers. Sorry it took me a while to reply,</div><div class=
=3D"gmail_default" style=3D"font-size:small">but I&#39;m still trying to ge=
t:=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">tune_r=
equest(freq, lo_off)</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">to work in C.</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">True about the tuner. =
Much cheaper and easier to implement it in analog.</div><div class=3D"gmail=
_default" style=3D"font-size:small">I am using your FPGA image. Haven&#39;t=
 touched it myself, yet.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">So, the spike is pretty narrow to interfere with my signals, but =
still messes my power calculations:(</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">I already implemented the integer frequency tuner and=
 working on the low oscillator offset.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">If you have any pointers about it, feel free to adv=
ise.=C2=A0=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small=
">LO is not part of the request_tuner_t struct. It is set independently.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Is this the same =
LO in uhd_usrp_set_rx_lo_freq?</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">If this is the case I can modify it externally:)</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">BR</div><div class=3D"gmail_default=
" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23=
, 2025 at 4:40=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-22 21:31, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">The spike is
          very clean to come from outside.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Must be from
          my X310. My tuner must be adding a signal to the</div>
        <div class=3D"gmail_default" style=3D"font-size:small">center
          frequency. The small artifact at 2 Ghz is probably the tuner
          not=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">equilibratin=
g
          fully.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I recently
          updated my FPGA image. Is that where the tuner lives?</div>
      </div>
    </blockquote>
    You haven&#39;t mentioned in this thread which daughtercard you&#39;re
    using.=C2=A0=C2=A0 RF front-ends that use complex-baseband<br>
    =C2=A0 downconversion suffer from something called &quot;DC-offset&quot=
;, which
    produces a spike at 0Hz in the complex spectrum.<br>
    =C2=A0 The radio block in the standard FPGAs has methods for reducing
    this, unless you turn it off.=C2=A0 This is a very very<br>
    =C2=A0 *normal* thing for complex-baseband receiver chains.<br>
    <br>
    If the algorithms are engaged and working, then there&#39;ll still be a
    central spike, but *considerably* reduced, and I find that<br>
    =C2=A0 said spike is usually swamped by external signals, even in radio
    astronomy.<br>
    <br>
    The other method that people use is to use &quot;offset tuning&quot;.=
=C2=A0 Where
    the tuner is tuned to a different RF frequency, and the<br>
    =C2=A0=C2=A0 DDC brings your signal of interest down to 0Hz.<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_general.html#general_tun=
ing" target=3D"_blank">https://files.ettus.com/manual/page_general.html#gen=
eral_tuning</a><br>
    <br>
    The &quot;tuner&quot; is an analog collection of components, including =
an LO
    generator, and mixers.=C2=A0 While it is *controlled* through<br>
    =C2=A0 the FPGA, it is an analog subsystem.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          3:19=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hello,</=
div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">Whenever
              I look at my spectrum I always see an energy spike at the
              center frequency.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">In the
              first image you can see a spike at 2, but not at 2.001
              Ghz. In the next image,</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0at=
 2.001
              Ghz you can see the energy spike at the center frequency,
              but also a small</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0sp=
ike at
              2 Ghz.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              verified these results by both fosphor (OpenCL fft) and
              fftw3f. Besides, if it were</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0an=
 fft
              artifact, why is the spike at 2 Ghz still visible after a
              few mins? These spikes</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0se=
em to
              be transient, but real. In that part of the spectrum, you
              there is no traffic. Could it be=C2=A0 harmonics from my powe=
r
              supply? Problems with my X-310? My transmitter</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0do=
ing
              funny things (I have 2 boards and not enabling my
              transmitter anywhere)?</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Naming o=
f
              images is freq_sr.jpg. All are in Mhz.</div>
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

--000000000000d358d10635c6a541--

--===============2365472494634647440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2365472494634647440==--
