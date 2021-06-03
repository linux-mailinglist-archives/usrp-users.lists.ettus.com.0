Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 985ED399B63
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 09:19:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 511AD38422B
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 03:19:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="jDTsdps2";
	dkim-atps=neutral
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EAC6D3840DB
	for <usrp-users@lists.ettus.com>; Thu,  3 Jun 2021 03:18:48 -0400 (EDT)
Received: by mail-ua1-f47.google.com with SMTP id e12so137034ual.7
        for <usrp-users@lists.ettus.com>; Thu, 03 Jun 2021 00:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ow5jKqWBJ+ZW/d1m60oa9y79mSmyvDvj54ojSVnMe6c=;
        b=jDTsdps2VgwTbWRHaVPWkUhIwO6RcEkxIIVEn2nhe4vIgklMvUx/vdH6clkb/v1/qR
         cRI550te1hXNOGLvMdlhGECvwMXW3XKNpzEwQrdjx1Vpyj+Vs1hQBLsmeCV4BC3+9jbp
         ti0Tpft95GAeAfPqtI0WvWeKGp5PvhDy6Fdpi7zgY851fwRTbGxlRdy1MGwSa/nJduAk
         XlU+Hgd74GX30r96DHI9rqPKaA6FBCBVcjBgvyKjAgjE/6+qn2MqZo5p5H0OmUM8krSe
         FtTfyg4VfY4z6puJjH6h7EZPGqBA4tESYLw3K0wfnurYGkMnobpGnwqnH/6hHZSY+wqd
         7yRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ow5jKqWBJ+ZW/d1m60oa9y79mSmyvDvj54ojSVnMe6c=;
        b=HLtGVor2CPoeUgK7Xcy6wssbWU7IxmhrVgs8QK7etecfN5sAQl+XpcuWHBFeDYLr7d
         KEF1B4MHkGqUwdNaCU9eJF00J3GcYj7D4wv0wwb2bXn6QfourhudDzM9hyh1Ox0lk0b9
         Ip1nPsU8JieCLe3y9ckCm5WgA8XT5sq4X2EMsR/UQJYP6VIHVF9nO9yLQ2EpJHrg9IeU
         xzj9jUeiFJ1J3+SF4Efpsxnc2cbafm0+UGwUzjzrPdUY7ATojjkA7/dtD9iFx790CP7w
         UsNImql38EkcKt5mdkFv9+/zsZ0dfH/idSdF5zwTO4Yv1B1TIh9a1gv8vQ860TWVbT2z
         YUyw==
X-Gm-Message-State: AOAM532LIItTyaUj4C84qZRIuOO2X1hWvFtT9ckT359iDxmyS6A4MjeY
	Z4w3hl2p/6WvFHcB34zADPOe3F+fANRs4ImJTeaDA0+g
X-Google-Smtp-Source: ABdhPJzajnAUnsFXctSEhvaOiyKgv6Q0Mk0Edxjb1JjoWRLBXv9xCC8Pp8cbpsKrKXrer6owYlFdvqDmVyfsWXqlI34=
X-Received: by 2002:a1f:3a44:: with SMTP id h65mr26871949vka.9.1622704728305;
 Thu, 03 Jun 2021 00:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI@lists.ettus.com>
In-Reply-To: <dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 3 Jun 2021 03:18:12 -0400
Message-ID: <CAL7q81vDiFv+rB-j1dMytfp9L_2ZG1adOJmOHdEfOBGpFQYG5A@mail.gmail.com>
To: arjan.feta@unifi.it
Message-ID-Hash: YPJRLIRZDSSXEOWO3B5PDWJMEYPHXBV4
X-Message-ID-Hash: YPJRLIRZDSSXEOWO3B5PDWJMEYPHXBV4
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD -RFNoC graph construction
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPJRLIRZDSSXEOWO3B5PDWJMEYPHXBV4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6113152004674495445=="

--===============6113152004674495445==
Content-Type: multipart/alternative; boundary="000000000000e8056c05c3d76258"

--000000000000e8056c05c3d76258
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Arjan,

This is a known issue and a fix for it should be released in the next few
weeks on the UHD master branch. Another option is to revert to UHD 3.15
until the fix is released.

Jonathon

On Sat, May 29, 2021 at 11:08 AM <arjan.feta@unifi.it> wrote:

> Hi all, I'm trying to build an RFNoC graph (x300 with a TwinRX radio
> module):
>
> import uhd
>
> graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.10.2")
>
> sa =3D uhd.usrp.StreamArgs("fc32", "sc16")
>
> rx_streamer0 =3D graph.create_rx_streamer(1, sa)
> rx_streamer1 =3D graph.create_rx_streamer(1, sa)
>
> graph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)
> graph.connect("0/Radio#0", 1, "0/DDC#0", 1, False)
>
> graph.connect("0/DDC#0", 0, rx_streamer0, 0)
> graph.connect("0/DDC#0", 1,  rx_streamer1, 0)
>
> graph.commit()
>
> after the =E2=80=9C*graph.commit()*=E2=80=9D instruction, it the code com=
plains with the
> following error message:
>
>    [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError: Atte=
mpting to overwrite property `mtu@INPUT_EDGE:1' with a new value after it w=
as locked!
>
> Traceback (most recent call last):
>
>   File "script2.py", line 62, in <module>
>
>     graph.commit()
> RuntimeError: RfnocError: ResolveError: Attempting to overwrite property =
`mtu@INPUT_EDGE:1' with a new value after it was locked!
>
> Does anyone have any experience or any hints in creating an rfnoc graph
> using the UHD python API?
>
> Best regads,
>
> Arjan Feta
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e8056c05c3d76258
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Arjan,<div><br></div><div>This is a known issue and =
a fix for it should be released in the next few weeks on the UHD master bra=
nch. Another option is to revert to UHD 3.15 until the fix is released.</di=
v><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, May 29, 2021 at 11:08 AM &lt;<a=
 href=3D"mailto:arjan.feta@unifi.it">arjan.feta@unifi.it</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,
I&#39;m trying to build an RFNoC graph (x300 with a TwinRX radio module):</=
p><pre><code>import uhd

graph =3D uhd.rfnoc.RfnocGraph(&quot;addr=3D192.168.10.2&quot;)

sa =3D uhd.usrp.StreamArgs(&quot;fc32&quot;, &quot;sc16&quot;)

rx_streamer0 =3D graph.create_rx_streamer(1, sa)
rx_streamer1 =3D graph.create_rx_streamer(1, sa)

graph.connect(&quot;0/Radio#0&quot;, 0, &quot;0/DDC#0&quot;, 0, False)
graph.connect(&quot;0/Radio#0&quot;, 1, &quot;0/DDC#0&quot;, 1, False)

graph.connect(&quot;0/DDC#0&quot;, 0, rx_streamer0, 0)
graph.connect(&quot;0/DDC#0&quot;, 1,  rx_streamer1, 0)

graph.commit()
<br></code></pre><p> after the =E2=80=9C<em>graph.commit()</em>=E2=80=9D in=
struction, it the code complains with the following error message:</p><pre>=
<code>   [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError: =
Attempting to overwrite property `mtu@INPUT_EDGE:1&#39; with a new value af=
ter it was locked!</code></pre><blockquote><pre><code>Traceback (most recen=
t call last):</code></pre></blockquote><blockquote><pre><code>=C2=A0 File &=
quot;script2.py&quot;, line 62, in &lt;module&gt;</code></pre><pre><code>=
=C2=A0 =C2=A0 graph.commit()
RuntimeError: RfnocError: ResolveError: Attempting to overwrite property `m=
tu@INPUT_EDGE:1&#39; with a new value after it was locked!</code></pre></bl=
ockquote><p>Does anyone have any experience or any hints in creating an rfn=
oc graph using the UHD python API?</p><p>Best regads,</p><p>Arjan Feta</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e8056c05c3d76258--

--===============6113152004674495445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6113152004674495445==--
