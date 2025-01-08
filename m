Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9DEA05E84
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 15:24:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B17B4385E77
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 09:24:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736346267; bh=9mz2c/3HJzrXDK3x97xrRUq9WxhSqJo2+NNXaLjV79I=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=H4YTsoU93dc78JatBPGE6omcWLqEbSG5HHnP85uHtK5owrktUeTKX4UyZ7xBf0N2s
	 02TC2hNnT2qsz6hMaNfZRKqB2S61emuq9mVncvrBxbLS96cDFenTR7IRHyOwLl9QaH
	 17RFuS9GdmbpHFGX1FUD1dHJ+BjrRn0lTqeOaqQ1v0fJTIQtFVsrNpsRgn8BZj+ZSu
	 U/hqKlfUyCairdridtaRbYTalAtusoFt/wy/EElPRKrcwmW/cW+8jcgu9y7pfxQwNT
	 vyGtH8ZKKt92riu7hnkxk6BFA/gaip1dTuexPDxQtACvbiv6Vl88Nn7gSKRv4PojB9
	 UrGa7MFiYM1Rw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 55234385CAE
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 09:23:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="gv3dbVpZ";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso1751225a12.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2025 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736346221; x=1736951021; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7vzv4AgEEvEZj4JKveny0SXlmriB4JwkZi1X5Pq/DQI=;
        b=gv3dbVpZ8GuFh1uWW41wuhqu0P9S0YsXLLzWpkBtdWikoI1is18itxY4+gXVQEGU5L
         w517EG3Y2MgMBuSBrzWLi8Xr866wQ5G5kxBfEr0myP9yknmFmmarNWUrWphKmZSfO8wp
         mOLRJjgHrKj9mQNbllkvoObkkJdKTGV/0mXHGfTo6wiJYJeinMI3z2nZZ9RwLqWmv5Sa
         y5efqqVLeXl0EaGZEjOHFlSKb/XVHG8i/gjfhOR5HBdv1Tfu1DLN4st00/Fwua8xSw5K
         ft+aZFWSXEfbxiTAzPr1lPcIm+IfXqOjWP/bKqpYPR/NHH8gf4i7HurP0zLHS1+bhYP5
         cMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736346221; x=1736951021;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vzv4AgEEvEZj4JKveny0SXlmriB4JwkZi1X5Pq/DQI=;
        b=hw5m9Il8ozllivZmcr7Q5rcewG65lUBDPHdwNMAcDbXt017lMzUrh+u3xn0kdXJxLP
         zA+5F7YiC3JiMt9QaZ2tM0I7NmnT7fFBn0XPZ1Q2cJq4bxIisB8s5zhmIkA07y8UexE9
         i59BcmY52QXpqynadrfF0D0rzmoT3aLes9A7udurQc3ej4J/zGIZC4ZLPQludQPW42po
         FrCu6lKLqHM3q8gGHbs9iqgOCiEH/W8nvYP9T2guknPTYqxX92EMf00NXmplXuR90nr8
         2xEFjwc44gpBnxGTnlHV2uhGwL+IdKMtk0Jqu7iGYYGF0uoWGcY90dm2WCzATiPaAszU
         38/w==
X-Gm-Message-State: AOJu0YxNmM8a0Dux4WWF7yAaO9yW6zj28npGpjZ9o0LkEy5mc2xDQwgZ
	QqeSSSFxMnGMrBWnrqrDhAdZbgGTzfYAjYl6IIp6VJrHot1CPslN/soXN4+vnFHRs8rn7qbpFUn
	mkU5aOkZrLDC3pD7pSpl6+auvZvADCuR2Xxj4wVtvRLPPjMAo/GI=
X-Gm-Gg: ASbGncs9nbwD5RYRMWNBYsDfIhPgM0qFaYBFDN2GyZOpfYn/WGJaDb5pW2nd5ReV9Nx
	2eEizYRCG1q+7hyEe8e8Z5z/2dbSXOAgVqTWQr52t9h8dO06F+yDk2EkkTkn9BHmdlUlyEw==
X-Google-Smtp-Source: AGHT+IHycxylXTKmh9s915g18yN8FH9fAQjkppzFQkR0WI+6nX9LY7tsd/XeBEKvXzaJM0fUoFnQ5B+f53wGD6zPvKg=
X-Received: by 2002:a05:6402:2746:b0:5d0:96a:aa90 with SMTP id
 4fb4d7f45d1cf-5d971babefbmr2526960a12.17.1736346220860; Wed, 08 Jan 2025
 06:23:40 -0800 (PST)
MIME-Version: 1.0
References: <cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI@lists.ettus.com> <9a5cb223-c5bf-4347-84b5-bbbd9a4259af@gmail.com>
In-Reply-To: <9a5cb223-c5bf-4347-84b5-bbbd9a4259af@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Jan 2025 15:23:30 +0100
X-Gm-Features: AbW1kvYtynVdA-b5XrPfVxUkqr3xJMFEOy7mdgzmiH4sWyxpD1YEmYr_6eS2RM4
Message-ID: <CAFOi1A4GZO1OkD_LP43N=XSxkwNxQ=sggriuWUsgBBnWcZLQUA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: TL2G3Q6ILAV3MBCAP74T6BSKJU5S3VNW
X-Message-ID-Hash: TL2G3Q6ILAV3MBCAP74T6BSKJU5S3VNW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TL2G3Q6ILAV3MBCAP74T6BSKJU5S3VNW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4168841482724024535=="

--===============4168841482724024535==
Content-Type: multipart/alternative; boundary="000000000000b3ba70062b329b19"

--000000000000b3ba70062b329b19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is another scenario where you can S's, which is when using bad
network cables (this is most often a problem with cheap optical fibers).

On Sun, Jan 5, 2025 at 11:57=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 05/01/2025 17:19, cjohnson@serranosystems.com wrote:
> >
> > I hope everyone had a good holiday break!
> >
> > Would you mind providing some guidance on the 3 questions?
> >
> > Thanks
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> I will be able to comment that 'S' on a transmit stream means that a
> packet got dropped on the network between the host and
>    the radio.  This shouldn't ever happen, but sometimes for a "fresh"
> UDP stream, the kernel driver will drop a UDP frame while
>    it completes ARP transactions.  But that should happen not very
> often, and there's likely a kernel parameter that can
>    disable this behavior.  But, for a fully-working network stack, my
> understanding is that 'S' should be very rare unless you're
>    offering a packet load that the "stack" just cannot cope with because
> it's running out of space to put your packets.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b3ba70062b329b19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is another scenario where you can S&#39;s, which is =
when using bad network cables (this is most often a problem with cheap opti=
cal fibers).<br></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 5, 2025 at 11:57=E2=80=AF=
PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 05/01/2025 17:19, <a href=3D"mailto:cjohnson@serranosystem=
s.com" target=3D"_blank">cjohnson@serranosystems.com</a> wrote:<br>
&gt;<br>
&gt; I hope everyone had a good holiday break!<br>
&gt;<br>
&gt; Would you mind providing some guidance on the 3 questions?<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
I will be able to comment that &#39;S&#39; on a transmit stream means that =
a <br>
packet got dropped on the network between the host and<br>
=C2=A0=C2=A0 the radio.=C2=A0 This shouldn&#39;t ever happen, but sometimes=
 for a &quot;fresh&quot; <br>
UDP stream, the kernel driver will drop a UDP frame while<br>
=C2=A0=C2=A0 it completes ARP transactions.=C2=A0 But that should happen no=
t very <br>
often, and there&#39;s likely a kernel parameter that can<br>
=C2=A0=C2=A0 disable this behavior.=C2=A0 But, for a fully-working network =
stack, my <br>
understanding is that &#39;S&#39; should be very rare unless you&#39;re<br>
=C2=A0=C2=A0 offering a packet load that the &quot;stack&quot; just cannot =
cope with because <br>
it&#39;s running out of space to put your packets.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b3ba70062b329b19--

--===============4168841482724024535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4168841482724024535==--
