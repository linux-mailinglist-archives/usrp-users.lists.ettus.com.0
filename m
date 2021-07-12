Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3743C61FE
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 19:32:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F21C384B67
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:32:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=unifi.it header.i=@unifi.it header.b="Cogx7zwb";
	dkim-atps=neutral
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 008C3384588
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:31:56 -0400 (EDT)
Received: by mail-lf1-f49.google.com with SMTP id 22so14587800lfy.12
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=unifi.it; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nBAhauprZYdP87cAQqTRh1EyGHpMatjJ1A/Vonqpc44=;
        b=Cogx7zwbiUPzZjGJGQggUh5DWzAUPkCT8kFG6E6cq7o8ecmHArgNEhNEV9BSHVoWCR
         jD77B8+6mASxeP0xpV+FdPNHmNbffQXndmUKlL+vHQkaRU2PCeav8lBzS3LKNQ1ij17n
         O7YrQM0wR0cHdqxFY6l8g7wXreiJrIBiL4ZVdRBpM5FQ/cb0ItIfsHFGEReCRMD2lAqn
         qfV5wT+tVTczz/4ST2JPdmq6HxkORKV9c5gs+kQZFDd1D4aZLKjSzCK4gfET8P3cS8kR
         Ykc/9SI54FV0P5SdJSs0JtI7fNgnI8gZ1A4H6WW0PlW358vKs2Ymy2tTOXA/SgWxfOeC
         NOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nBAhauprZYdP87cAQqTRh1EyGHpMatjJ1A/Vonqpc44=;
        b=qWAGFa90W+9ZNTtnk+Vvlseg0rGnBA6BwVRUX8ZbabC0oE7SetFSjlChfKNZ6eD1+2
         7/GK2eFlA5vcQifXIQLgqtqR0bLXyIKaBGh6eLyDIPsJypPqf4LSnn5zP39Zva4bpLFB
         +penlU4CfFR3FQ86ZUj7mgb19NZczR0PAVEA1L5bYp5lsedHrslI92c2sVEpf+1czJz4
         tJ5thplcrSfZDRgYwBJqoP40V4T+JOnuvpaTmTbW+zyHnSTpzKKFhIjN0WhGBS6o1aeJ
         /NzZ2f3rWVc9wjENw+Dmtcc6KoWXiNRPeatVcbGr6dszbWzdhuCg8LT0EPPoP8+ZRp4S
         Xn7Q==
X-Gm-Message-State: AOAM533b/ig384j3ov0TxAKv1ZajEfO/AadiGow1ij80DUc49Tsek7aY
	XElje7CyeEFddn5TgNQ9F636ZUGLTCJgvvEvdv9ZsA==
X-Google-Smtp-Source: ABdhPJy3uy8+yQPK6KGGNVbQkjgOmUIWlUOv+JCMBZH54HmKAYiBX5X3vXBlxPy7CJ5Bg1CUKnVDxJW/5g+H6y1v26U=
X-Received: by 2002:ac2:58e1:: with SMTP id v1mr10299865lfo.616.1626111115668;
 Mon, 12 Jul 2021 10:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <gKHN30YZKExbabEwNniBHHVITTM428uKVVSUcEE1f4@lists.ettus.com> <60EC778A.7050201@gmail.com>
In-Reply-To: <60EC778A.7050201@gmail.com>
From: Arjan Feta <arjan.feta@unifi.it>
Date: Mon, 12 Jul 2021 19:31:42 +0200
Message-ID: <CADH2tdNkH7OdYLjX4AYyWu+3u8DzrB_OTzf7HEfqabK3aCm=PA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZPZWSMGRK67AEEEL7JS75CEHAX66MTPF
X-Message-ID-Hash: ZPZWSMGRK67AEEEL7JS75CEHAX66MTPF
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration subject to temperature variations (X300+TwinRX)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPZWSMGRK67AEEEL7JS75CEHAX66MTPF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8734334633382767881=="

--===============8734334633382767881==
Content-Type: multipart/alternative; boundary="0000000000006a4b6205c6f07fa5"

--0000000000006a4b6205c6f07fa5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Helloo Marcus and thank you!
I have already did some tests with the two physical channels, fom TX to
right before the X300 SMA ports, once with: Ch1->RX1, Ch2->RX2; and then I
exchanged to: Ch2->RX1, Ch1->RX2.
The results showed instability with temperature gradients in RX1 only. This
throughs suspitions mainly to what comes after, hence the USRP device. The
main suspect for us is obviously the TwinRX. More specifically the
temperature gradients inside the x300 case, being that RX1 SMA port is
nearer to the case's edge. Could it be the reason?
If that is so, do you recomend to take the device off from it and use it
like that?

Regards,
Arjan

On Mon, Jul 12, 2021, 7:10 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/12/2021 11:44 AM, arjan.feta@unifi.it wrote:
> >
> > Hi all,
> >
> > I am measuring the power of two signals (sinusoids) through an RMS
> > calculation, using an TwinRX on a x300 motherboard. In the calibration
> > process (lab conditions, no noise, no interference) I=E2=80=99m trying =
to
> > obtain a differential power (p1-p2) of 0dB or at least constant at
> > =C2=B10.5dB . One of the channels, RX2, is highly stable with respect t=
o
> > the environment temperature variations, while the other one, RX1, is
> > much less so.
> >
> > I am aware that this might be a very particular use case, but was
> > wandering if anyone had had this kind of experience or at least knows
> > if there is any documentation/datasheet concerning temperature
> > sensibility of these two components?
> >
> > Best regards,
> >
> > Arjan
> >
> >
> RF components have a temperature dependence.  Amplifiers typically these
> days have a gain-vs-temperature coefficient of roughly 0.05dB/C.  Cabling
>    also has a temperature-vs-loss coefficient which varies with cable
> length, cable type, and operating frequency.
>
> Something else that sneaks in is loose connectors--SMAs in particular
> are notorious for developing temperature-related "funnies" while not bein=
g
>    obviously damaged.  They need to be torqued properly.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006a4b6205c6f07fa5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Helloo Marcus and thank you!<div dir=3D"auto">I have alre=
ady did some tests with the two physical channels, fom TX to right before t=
he X300 SMA ports, once with: Ch1-&gt;RX1, Ch2-&gt;RX2; and then I exchange=
d to: Ch2-&gt;RX1, Ch1-&gt;RX2.</div><div dir=3D"auto">The results showed i=
nstability with temperature gradients in RX1 only. This throughs suspitions=
 mainly to what comes after, hence the USRP device. The main suspect for us=
 is obviously the TwinRX. More specifically the temperature gradients insid=
e the x300 case, being that RX1 SMA port is nearer to the case&#39;s edge. =
Could it be the reason?</div><div dir=3D"auto">If that is so, do you recome=
nd to take the device off from it and use it like that?</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Arjan</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Jul 12, 2021, 7:10 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 07=
/12/2021 11:44 AM, <a href=3D"mailto:arjan.feta@unifi.it" rel=3D"noreferrer=
 noreferrer noreferrer" target=3D"_blank">arjan.feta@unifi.it</a> wrote:<br=
>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am measuring the power of two signals (sinusoids) through an RMS <br=
>
&gt; calculation, using an TwinRX on a x300 motherboard. In the calibration=
 <br>
&gt; process (lab conditions, no noise, no interference) I=E2=80=99m trying=
 to <br>
&gt; obtain a differential power (p1-p2) of 0dB or at least constant at <br=
>
&gt; =C2=B10.5dB . One of the channels, RX2, is highly stable with respect =
to <br>
&gt; the environment temperature variations, while the other one, RX1, is <=
br>
&gt; much less so.<br>
&gt;<br>
&gt; I am aware that this might be a very particular use case, but was <br>
&gt; wandering if anyone had had this kind of experience or at least knows =
<br>
&gt; if there is any documentation/datasheet concerning temperature <br>
&gt; sensibility of these two components?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Arjan<br>
&gt;<br>
&gt;<br>
RF components have a temperature dependence.=C2=A0 Amplifiers typically the=
se <br>
days have a gain-vs-temperature coefficient of roughly 0.05dB/C.=C2=A0 Cabl=
ing<br>
=C2=A0 =C2=A0also has a temperature-vs-loss coefficient which varies with c=
able <br>
length, cable type, and operating frequency.<br>
<br>
Something else that sneaks in is loose connectors--SMAs in particular <br>
are notorious for developing temperature-related &quot;funnies&quot; while =
not being<br>
=C2=A0 =C2=A0obviously damaged.=C2=A0 They need to be torqued properly.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer noreferrer" target=3D"_blank">usrp-users@lists.e=
ttus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">usrp-us=
ers-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006a4b6205c6f07fa5--

--===============8734334633382767881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8734334633382767881==--
