Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 056D9396852
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 21:26:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E77BE3841FD
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 15:26:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CCqY9j5G";
	dkim-atps=neutral
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B9A5D383EDA
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 15:25:42 -0400 (EDT)
Received: by mail-ed1-f48.google.com with SMTP id s6so14527011edu.10
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 12:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=y4qcnecrn0jOPY0tjbgm84+mDLQ8S00lkX6HloLiCz0=;
        b=CCqY9j5GONi6vlIn8Jw5a8kXTFm6clinC96ksb1pDqoIJXSkC0AnFFuKm+dZ6aJ5UO
         3Aojr7FafJqGzZd8gLZF7vu2vv97QgUXYIB+c5SkVabQZ2HyY4WQtWsCVKWXvJE/8UYO
         vF3Ms9rdUGO27htddYdEhrkgjs5GFyclAuWOCeG/vu7MCSBiOS3rMefrT4r0PlxwYx5L
         Jscu4DJtwbv0J6/mfSOFQhtDqXFfvPcXH+Y2CtOELy60GCaYo6bzGdVg6NvnjOVPwELV
         ue3xCuwmGs0w2CiRjqrQD0VZhqz0sl0Y+R9byFgqc3oAhKX3XWMjAzN5f0XrFmSdkR8t
         tnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=y4qcnecrn0jOPY0tjbgm84+mDLQ8S00lkX6HloLiCz0=;
        b=BBi1mi/u7ux/5F8LuyGphIuy5ClimLh0nw5Y2CY44HFjUM03tsfTpCSPFrsLTOExeq
         66xk1LaE2pWaoTRv+57gWoR2fIdylZxJRK3w5cfNt9rICD/ipCQDH0kFbOKQww29GRGj
         QD4AVncz8a7NGQF7j6DmC8A6QEKe6dKQx3uIBmj3igB/OiIoXN8Nm8GgoiLzhyIuY16I
         0yvEe0I+wtyIlySIHrBbELdBNh8VIcnNvOYnnfJBytnEATDaZwhCtfsQMAWkRyJca996
         a8YUEau6VXdORnkAoCstPAaR744mTzinMjhhRvpIlcoFIBrG60QW6CR2xvgAbHK8zLDz
         YPiQ==
X-Gm-Message-State: AOAM530OVwzDGo8dNUSBZ8frvTfUy73DrzBeSB/Umxr6zpjbldi9PJC+
	N1ZdPMGie7RgzY1l9H0/f3gpe8yOhsSqBZyvf5FIxmA1
X-Google-Smtp-Source: ABdhPJwMTFXGB6UxjIaO2s4SRneXZ/p+d+2551kfRrSJx+tpj0Ij4rT9Igap51UbSH04VzXVSZ51KXFDr/aDEWSmzX0=
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr6661819edw.217.1622489141414;
 Mon, 31 May 2021 12:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com>
 <60B4DA13.5060601@gmail.com> <CAOjuhWmfmP=bzrJ_CTtHqRCnr-BV080dyPEVaaJvCROsEfxU3g@mail.gmail.com>
 <60B51E47.1040103@gmail.com>
In-Reply-To: <60B51E47.1040103@gmail.com>
From: Alexey Silyuk <mcerror@gmail.com>
Date: Mon, 31 May 2021 22:25:30 +0300
Message-ID: <CAOjuhWkVmK_Me3k4x-F4wjLpOyVtNpshA6QF0Q2jRi_qZc9UEQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: R656EWT66VLP3XT575QGTPY3LR6MKTST
X-Message-ID-Hash: R656EWT66VLP3XT575QGTPY3LR6MKTST
X-MailFrom: mcerror@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Samples complex<short> vs complex<float> emulating
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R656EWT66VLP3XT575QGTPY3LR6MKTST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7550579642733063168=="

--===============7550579642733063168==
Content-Type: multipart/alternative; boundary="000000000000ed0f6905c3a53048"

--000000000000ed0f6905c3a53048
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

maybe you can help me to find some example of recorded files with iq
stream, so I will understand it's values please.
it may help

=D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=B3., 20:35 Marcus D. Leech <pa=
tchvonbraun@gmail.com>:

> On 05/31/2021 09:07 AM, Alexey Silyuk wrote:
>
> Thanks for the answer, so what is the order of pushing samples to the moc=
k
> buffer? if i want to ensure that i am receiving correct data i pushed aft=
er
> calling recv() using float or double type?
>
> The ordering on the "wire" is IQIQIQIQ, and similarly on the
> converted-to-host-format side.
>
>
>
> =D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=B3. =D0=B2 15:44, Marcus D. =
Leech <patchvonbraun@gmail.com>:
>
>> On 05/31/2021 08:30 AM, Alexey Silyuk wrote:
>> > HI everybody, I am new at mailing list.
>> > These days I am writing an emulator for emulating tx/rx streams based
>> > on uhd 3.15LTS
>> > I am using device usrp2 device from uhd/lib.
>> > As I saw in examples (rx_samples_to_file), I am creating a mock
>> > streamer ( taken from uhd tests ).
>> > and now i want to push samples inside the buffer.
>> > I see that i can define type of samples, if am using 'short' type of
>> > samples, I am creating uint32_t variable, 16 MSB i put real part of
>> > sample, and 16 LSB i put imaginary part of sample (i am using little
>> > endian)
>> > After that i am calling usrp->recv() and i get samples as i defined (
>> > spp is 2000)
>> > (0,0)
>> > (2,2)
>> > ....
>> > (1999,1999)
>> > as expected, according to data I push to the mock buffer.
>> >
>> > now while i want to use type 'float' i am using for example
>> > float real =3D 1.5
>> > float imag =3D 2.5
>> > and trying to push sample to the mock buffer, i am doing:
>> > buffer[0] =3D (uint32_t)real;
>> > buffer[1] =3D (uint32_t)imag;
>> >
>> > and expecting to get after calling usrp->recv()
>> > (1.5, 2.5)
>> > but i get incorrect result (convertor settings: cpu_format "fc32",
>> > otw_format "sf16" )
>> >
>> > i am printing real and imag parameters as bitset<32> and see in real
>> > part, in 16 LSB part of result, my 16 MSB bits from sample value 1.5,
>> > and in imagine part zeros, in next sample i see in 16 LSB part of
>> > result, 16 MSB bits of sample value 2.5. I mean one sample i push to
>> > buffer uses whole sample after calling recv()
>> >
>> > P.S i set scale factor to 1.0
>> >
>> > What am I doing wrong to use the type 'float' and 'double' for mock
>> > samples?
>> > I am new at usrp so I don't understand what samples I should use, will
>> > be glad to get references.
>> > Thanks
>> >
>> >
>> Your OTW format is still SC16 -- normally only the *HOST* side uses
>> floating-point and no actual USRP devices that I'm aware of can
>>    support floating-point *ON THE WIRE* (OTW).
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
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

--000000000000ed0f6905c3a53048
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">maybe you can help me to find some example of recorded fi=
les with iq stream, so I will understand it&#39;s values please.<div dir=3D=
"auto">it may help=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=
=B3., 20:35 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 05/31/2021 09:07 AM, Alexey Silyuk
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Thanks for the answer, so what is the order of
        pushing samples to the mock buffer? if i want to ensure that i
        am receiving correct data i pushed after calling recv() using
        float or double type?</div>
    </blockquote>
    The ordering on the &quot;wire&quot; is IQIQIQIQ, and similarly on the
    converted-to-host-format side.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 31 =D0=BC=D0=B0=
=D1=8F 2021 =D0=B3. =D0=B2 15:44,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          05/31/2021 08:30 AM, Alexey Silyuk wrote:<br>
          &gt; HI everybody, I am new at mailing list.<br>
          &gt; These days I am writing an emulator for emulating tx/rx
          streams based <br>
          &gt; on uhd 3.15LTS<br>
          &gt; I am using device usrp2 device from uhd/lib.<br>
          &gt; As I saw in examples (rx_samples_to_file), I am creating
          a mock <br>
          &gt; streamer ( taken from uhd tests ).<br>
          &gt; and now i want to push samples inside the buffer.<br>
          &gt; I see that i can define type of samples, if am using
          &#39;short&#39; type of <br>
          &gt; samples, I am creating uint32_t variable, 16 MSB i put
          real part of <br>
          &gt; sample, and 16 LSB i put imaginary part of sample (i am
          using little <br>
          &gt; endian)<br>
          &gt; After that i am calling usrp-&gt;recv() and i get samples
          as i defined ( <br>
          &gt; spp is 2000)<br>
          &gt; (0,0)<br>
          &gt; (2,2)<br>
          &gt; ....<br>
          &gt; (1999,1999)<br>
          &gt; as expected, according to data I push to the mock buffer.<br=
>
          &gt;<br>
          &gt; now while i want to use type &#39;float&#39; i am using for
          example<br>
          &gt; float real =3D 1.5<br>
          &gt; float imag =3D 2.5<br>
          &gt; and trying to push sample to the mock buffer, i am doing:<br=
>
          &gt; buffer[0] =3D (uint32_t)real;<br>
          &gt; buffer[1] =3D (uint32_t)imag;<br>
          &gt;<br>
          &gt; and expecting to get after calling usrp-&gt;recv()<br>
          &gt; (1.5, 2.5)<br>
          &gt; but i get incorrect result (convertor settings:
          cpu_format &quot;fc32&quot;, <br>
          &gt; otw_format &quot;sf16&quot; )<br>
          &gt;<br>
          &gt; i am printing real and imag parameters as
          bitset&lt;32&gt; and see in real <br>
          &gt; part, in 16 LSB part of result, my 16 MSB bits from
          sample value 1.5, <br>
          &gt; and in imagine part zeros, in next sample i see in 16 LSB
          part of <br>
          &gt; result, 16 MSB bits of sample value 2.5. I mean one
          sample i push to <br>
          &gt; buffer uses whole sample after calling recv()<br>
          &gt;<br>
          &gt; P.S i set scale factor to 1.0<br>
          &gt;<br>
          &gt; What am I doing wrong to use the type &#39;float&#39; and
          &#39;double&#39; for mock <br>
          &gt; samples?<br>
          &gt; I am new at usrp so I don&#39;t understand what samples I
          should use, will <br>
          &gt; be glad to get references.<br>
          &gt; Thanks<br>
          &gt;<br>
          &gt;<br>
          Your OTW format is still SC16 -- normally only the *HOST* side
          uses <br>
          floating-point and no actual USRP devices that I&#39;m aware of
          can<br>
          =C2=A0 =C2=A0support floating-point *ON THE WIRE* (OTW).<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>=
<br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@li=
sts.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000ed0f6905c3a53048--

--===============7550579642733063168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7550579642733063168==--
