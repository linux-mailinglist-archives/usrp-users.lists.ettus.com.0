Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEC6745796
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 10:48:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A889383CAA
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 04:48:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688374091; bh=Mk2xHveEuY2jH8vYVpUgaE2feTD/S8LhFKKzpTRhA9k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eOw6BhCK4DxupaMZLqXZM7ujP8DhR237cZnh846viKMqt941Wgx306W7isecC8X7R
	 V3FP5EKq6610uwEO8xIqEvoQalgCgY+m/sBo6tkLThTBXBt0Zzpn5Rv1cTR/+TPh9Q
	 vU4tWr+KqN0eRZOzA9sImnoxROT93Z6i839LWyXOzYd/hZkuTVHT1D3LLaCKL1Fa7L
	 DhDtFjqr6oFttNvYkMlQrxt71+1k4ss60xzBCzcMnK6ntkt0WSifk9LDnKwyA6GxcZ
	 rG+WrzSZL0YHeWXGEp4s6HIjAtLFJUIHN5YVcsphcb9MwiSs0QMmirQwzd/69yv3Cy
	 UaBzWlLtlVc+w==
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5FCF8383CAA
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 04:47:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wklxm8di";
	dkim-atps=neutral
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-563439ea4a2so2706445eaf.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 01:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688374038; x=1690966038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oIKbQKe3Y7TT1HM89lzAm+CqlKuciNo6g8EKAgeiEu0=;
        b=Wklxm8diiHHYa3KNT56fFXrrxJQq6JUo6YJhvXhzvYujr7xaJxkQ8DOoeFuE5lFu0k
         km7yeg0FfORwKB3AhEwsKQgoYMJbaZRGP2UTzItkGiHiLZFNedAQIwcIhN5ZYk1sKlv+
         616yS63mXRyUMIIOPuMIcy9JlHGkmkWcvO0WOi0z0UsC/MKCvVugz8RV30yoVJjRUWnl
         VXm7q08ug4jNPS724gg5k4pKlGOLs94CCmRPKSisHvIsHl+/K+QPmscE8/NqO0S76/rz
         VuOflCkulnHnyLgSA6HlrzC51K1pHGg5L04qzyskCZQ0qIDvvSj4fHs+QNtUAMtPGVJ6
         NThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688374038; x=1690966038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oIKbQKe3Y7TT1HM89lzAm+CqlKuciNo6g8EKAgeiEu0=;
        b=dx98uT5CC3hkTHKIGHf9r9mfrxKPVdbjfoAvnYFz3STQ8lnqK3IaPI3fPIVvZb0Qqz
         tN9Auq8yFSjPP7UgpndPu0W8ShTweA4PFGKaFnvGgmTfM8Cwd4FFWmIea5m2SG3HtHQX
         NX70c9TpiL++v/gwPeelG1AL6EL8gqm2D/nbfJMrKg0VlvBZgtbB5wcxEXnzIvlCSZTW
         R4JR+/MCqNFRrblLSbj5frRx6KeTvcILP0dvNH08hbDJG0Uv6Jp2/4YeHeEvvh4PHf5M
         58duk+aGShuYoTNXOdpO0csRZMIWLRHvBvDIYBhTLTkD5vVBhrRXxvbNiierjXoqLEJQ
         2V9A==
X-Gm-Message-State: AC+VfDxIj4p/HaMuh6OZScpQCQsgMN8OqqRUwWsHOeE47C7Zw7LpZHDK
	fY7xnPdqZ8DhQ7byhatil8fSnckK0yxcma/UPZs=
X-Google-Smtp-Source: ACHHUZ7rSVXA8UKg4+0gRqwbp62O12/c69rBN1/lbEn8gEkyFUZN0V0XpOBACWl1RwpNlH0/1hhpay+bqp5NArEj/Vw=
X-Received: by 2002:a05:6808:2099:b0:3a0:65bc:df4b with SMTP id
 s25-20020a056808209900b003a065bcdf4bmr10570389oiw.23.1688374038339; Mon, 03
 Jul 2023 01:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
In-Reply-To: <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
From: Carlo Venier <venier.carlo@gmail.com>
Date: Mon, 3 Jul 2023 10:47:06 +0200
Message-ID: <CAHRiTb=b0iAWJUH2enH3KcvukdFad3ipDCKH=RQ0D9=fqzsUSg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NPE4TI27YIUGJU42YNXY4BZNOB6HU5PL
X-Message-ID-Hash: NPE4TI27YIUGJU42YNXY4BZNOB6HU5PL
X-MailFrom: venier.carlo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPE4TI27YIUGJU42YNXY4BZNOB6HU5PL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5785562669452807338=="

--===============5785562669452807338==
Content-Type: multipart/alternative; boundary="000000000000cda37105ff913688"

--000000000000cda37105ff913688
Content-Type: text/plain; charset="UTF-8"

Thank you for the screenshot, Marcus. The noise floor shape you obtain has
the same behaviour as the noise floor shape we obtain.

So, assuming this is the "nominal" behaviour, do you have any equalization
method to suggest?

Regards,

Carlo Venier

Il mer 28 giu 2023, 20:02 Marcus D. Leech <patchvonbraun@gmail.com> ha
scritto:

> On 22/06/2023 05:48, Carlo Venier wrote:
>
> Good morning,
>
> I have some questions regarding the TwinRX daughterboard.
>
> 1) With the following settings:
>         Master Clock Rate = 200 MHz
>         Tuning Frequency = 2450 MHz
>         Sample rate = 100 Msps
>         Gain = 93
>         Every RF connector is 50 Ohm terminated
>         LO_OFFSET disabled
>
> I get a non-flat spectrum. In particular, the center portion of it is up
> to 5 dB higher than at +/- 40 MHz from the tuning frequency. You can see
> this behaviour in the attached figures.
>
> 2) The two channels have a different behaviour below 1.8 GHz (for example
> at 450 MHz). The spectrum of channel :1 is a lot more wavy than the
> spectrum of the channel :0. You can see this behaviour in the attached
> figures.
> In any case, also below 1.8 GHz the delta between min and max level is
> about 5 dBs.
>
> 3) Sometimes, the DC component pops up. As the TwinRX channels are a
> superheterodyne receivers, I don't expect that the DC component appears,
> but it happens.
>
> Is it possible that the TwinRX I'm using is not working properly? Or am I
> missing some settings?
>
> 4) Can somebody provide a screenshot of the spectrum of the TwinRx
> channels with the same settings at 1) for the tuning frequencies of 450 MHz
> and 2450 MHz?
>
> Thank you.
>
>
> Best regards,
>
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Here is my test, with the input terminated, and the gain at 80dB:
>
> http://www.ccera.ca/files/2450.png
>
> That's for 2450MHz, 100Msps
>
> http://www.ccera.ca/files/450.png
>
> That's for 450MHz, 100Msps, again 80dB gain
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cda37105ff913688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you for the screenshot, Marcus. The noise floor sha=
pe you obtain has the same behaviour as the noise floor shape we obtain.=C2=
=A0<div dir=3D"auto"><br></div><div dir=3D"auto">So, assuming this is the &=
quot;nominal&quot; behaviour, do you have any equalization method to sugges=
t?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Carlo Venier</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il mer 28 giu 2023=
, 20:02 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patc=
hvonbraun@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
 =20
   =20
 =20
  <div>
    <div>On 22/06/2023 05:48, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good morning,</spa=
n><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I have some questions regarding
          the TwinRX daughterboard.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">1) With the following settings:</s=
pan><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Master Clock Rate =3D 200
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Tuning Frequency =3D 2450
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Sample rate =3D 100 Msps</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Gain =3D 93</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 E=
very RF connector is 50
          Ohm terminated</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0 LO_OFFSET disabled</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get a non-flat spectrum. In
          particular, the center portion of it is up to 5 dB higher than
          at +/- 40 MHz from the tuning frequency. You can see this
          behaviour in the attached figures.</span><br style=3D"font-size:1=
2.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">2) The two channels have a
          different behaviour below 1.8 GHz (for example at 450 MHz).
          The spectrum of channel :1 is a lot more wavy than the
          spectrum of the channel :0. You can see this behaviour in the
          attached figures.</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">In any case, also below 1.8 GHz
          the delta between min and max level is about 5 dBs.</span><br sty=
le=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">3) Sometimes, the DC component
          pops up. As the TwinRX channels are a superheterodyne
          receivers, I don&#39;t expect that the DC component appears, but
          it happens.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Is it possible that the TwinRX
          I&#39;m using is not working properly? Or am I missing some
          settings?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">4) Can somebody provide a
          screenshot of the spectrum of the TwinRx channels with the
          same settings at 1) for the tuning frequencies of 450 MHz and
          2450 MHz?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thank you.</span><br style=3D"font=
-size:12.8px">
        <br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br style=3D"f=
ont-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
    </blockquote>
    Here is my test, with the input terminated, and the gain at 80dB:<br>
    <br>
    <a href=3D"http://www.ccera.ca/files/2450.png" target=3D"_blank" rel=3D=
"noreferrer">http://www.ccera.ca/files/2450.png</a><br>
    <br>
    That&#39;s for 2450MHz, 100Msps<br>
    <br>
    <a href=3D"http://www.ccera.ca/files/450.png" target=3D"_blank" rel=3D"=
noreferrer">http://www.ccera.ca/files/450.png</a><br>
    <br>
    That&#39;s for 450MHz, 100Msps, again 80dB gain<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000cda37105ff913688--

--===============5785562669452807338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5785562669452807338==--
