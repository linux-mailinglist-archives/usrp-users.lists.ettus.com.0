Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4384C50049B
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 05:24:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C4A4384D1F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 23:24:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649906640; bh=kq7PYV241uileNp4/iWOexojP/t447v/xW9o1Ht24g8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RgjTvxTivgJScMk47QIcKSWciag8NwdM8zbJo5PvO4rxjQhfT2y+7X868na6a/6tD
	 OPl9q7sap21BggRUcwUeMfwjNbEGbgdEGcbY0vBCoQ5ffAokBq50H4jqONXA0UaaOf
	 5Ok42kLQcgcHUsoGhfm/2YLbnI+e3YoZhMI9boJ4VDQ9YzutsmcfgYav3H7FQ3ez37
	 aQ4wK7hVSBuWNcbToYZUQ22qOUke4fER/ddJma6D5C48AsXsZZrteQSUxAF4gKd2K5
	 9RuLGW/G8Kj52P87ZbNl+MoFxMv/VEw2tihJaIkOThCZKdvMaBk2YFsGLVCq6lbhJf
	 A0BKnGItCiKDQ==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 09FB9384869
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 23:23:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fMxJOicD";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-2ebebe631ccso42686407b3.4
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 20:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7Zn1uf/aWWo+K6RwM+5zPufLjhiq/asTMvJOAs9iv5U=;
        b=fMxJOicD8lCnTSTZp2UZ1ySFeFodSpw0sn1JAMMJf8cFn6uvBuN6ryl/gKQsRemkof
         I9YmoleIRq7gyMM4inx4vMKq9AY9zT0sdgI2Ojj7iPX7XiUGDx9XbmEy2GnR9wwkaQTQ
         /dFDbc0LNwNJdzoSwwFPpqJ5YVIAvvPdpea63sYjAxEo6S+eVzy4XsY855LJT/BAHivu
         LUcZfNhI4cmmuY3KC2rWpdgsxfpN87LeOkf/66MidLto9fMi8S0+CXzRWvqX9+cgDyR5
         hgfROdoIVRKWgEU+L0jVhGZ6TNL0TxY6mhcIiwqLlwyRZt82EHzenkw8hqSY1FLGxWXm
         lDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7Zn1uf/aWWo+K6RwM+5zPufLjhiq/asTMvJOAs9iv5U=;
        b=W/EaI4fYMSDqTomBomzIe24EZPq/JFlTEvPr6BDJaYwrVYHDV+aztjPUAvG1ZKOK+O
         QZ/WAB0zYLHM7rUWOVNketw4zOBER1fRylmHvtJLrW1N6JcR3/Kwp7GyDhB6q/uI7dpd
         jcajIhG9XPMIpKviMyRv//T7Uf9x1rx+QAxo/qo9SsZPsfLaJ7VZOphMWJVPC+4nujIQ
         E8WANhs0iy+t5zZjxYeUiSle0cYf7/Ggp3v+tTZe8drSjinABMY1sFFWscxA2ZaWQ6es
         N9rWhI6oRpzIEjCbX/pQl0CHVcdxKvq/U7b8lKcyCEo/zTMGQ8B1YnxMX3QSgbbmuitp
         t33g==
X-Gm-Message-State: AOAM532vAiJZ4WW0HTQwKCSy38ZXxXYpOM9hq5zTaDf2WblGQX2T/usx
	XwjzyylVUq6Mke9UHAJXce00mCRhbv5eHzqrX56yTQ==
X-Google-Smtp-Source: ABdhPJwpfNGYzLbq2FT4VkmuETQxWLIJAdxtRXrQT4m1XU0BCnjRAC8nlvTEwei60XJ3aqVMT/Aanzmhy+7yrGOrXHg=
X-Received: by 2002:a0d:d850:0:b0:2ec:26bb:3468 with SMTP id
 a77-20020a0dd850000000b002ec26bb3468mr509262ywe.369.1649906580176; Wed, 13
 Apr 2022 20:23:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
In-Reply-To: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 13 Apr 2022 22:22:49 -0500
Message-ID: <CAB__hTQo=pnO8-TBvBJFK8AbFStqnzMz72fLWJ2bVOjTL3wpOg@mail.gmail.com>
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Message-ID-Hash: PBRCQJFJTN3W35MB4E5IEU2OQIKJFLJN
X-Message-ID-Hash: PBRCQJFJTN3W35MB4E5IEU2OQIKJFLJN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBRCQJFJTN3W35MB4E5IEU2OQIKJFLJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6653098369860784447=="

--===============6653098369860784447==
Content-Type: multipart/alternative; boundary="000000000000a007df05dc94cf47"

--000000000000a007df05dc94cf47
Content-Type: text/plain; charset="UTF-8"

Hi Lautaro,
When you run embedded, what is the version that runs? I am wondering if
your embedded file system (and also MPM version) is old and does not match
the UHD version 4.1.0.5 that you are using on a host workstation. If this
is the case, perhaps reload the file system using "dd" (don't use
bmaptool).  Another thought would be to try benchmark_rate with 2 channels
tx and 2 channels rx (at a slow rate) and see if the lights come on.
Rob

On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen <
lorenzen.lautaro@gmail.com> wrote:

> Hi everyone,
>
> I'm trying to run a simple example on an Ettus E310.
> I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>
> Everything seems to work okay, but I can not manage to get the second
> channel (TRX-B) to transmit anything. FYI: I can receive from both channels
> RX-A and RX-B.
> The problem came up when I tried to transmit something via gnu-radio,
> changing the "subdev" arg to "A:1" instead of leaving it blank as I
> normally do.
> When I pressed start, everything seemed to compile fine, but the GUI
> freezes (something that did not happen when using TRX-A).
>
> To see if gnu-radio was the problem, I logged in the embedded linux and
> tried some uhd examples from usr/lib/uhd/examples.
> As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0
> and the tx light turned on and I could see something on my oscilloscope.
> Also, a few "LLLLL" appeared on the console.
>
> When I ran:
> ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks the
> same but no light, no signal, and no "LLLLL" are displayed on the console.
> Just the message "press ctrl+C to stop streaming".
>
> Any help would be very much appreciated.
> Regards,
> Lautaro.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a007df05dc94cf47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Lautaro,<div>When you run embedded, wh=
at is the version that runs? I am wondering if your embedded file system (a=
nd also MPM version) is old and does not match the UHD version 4.1.0.5 that=
 you are using on a host workstation. If this is the case, perhaps reload t=
he file system using &quot;dd&quot; (don&#39;t use bmaptool).=C2=A0 Another=
 thought would be to try benchmark_rate with 2 channels tx and 2 channels r=
x (at a slow rate) and see if the lights come on.</div><div>Rob</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen &lt;<a href=3D"mailto:lorenzen.=
lautaro@gmail.com">lorenzen.lautaro@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D=
"font-family:arial,helvetica,sans-serif">Hi everyone,</div><div style=3D"fo=
nt-family:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:a=
rial,helvetica,sans-serif">I&#39;m trying to run a simple example on an Ett=
us E310. <br><div style=3D"font-family:arial,helvetica,sans-serif">I&#39;m =
using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5. <br></div><div style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div style=3D"font-fa=
mily:arial,helvetica,sans-serif">Everything seems to work okay, but I can n=
ot manage to get the second channel (TRX-B) to transmit anything. FYI: I ca=
n receive from both channels RX-A and RX-B.<br></div><div style=3D"font-fam=
ily:arial,helvetica,sans-serif">The problem came up when I tried to transmi=
t something via gnu-radio, changing the &quot;subdev&quot; arg to &quot;A:1=
&quot; instead of leaving it blank as I normally do. <br></div><div style=
=3D"font-family:arial,helvetica,sans-serif">When I pressed start, everythin=
g seemed to compile fine, but the GUI freezes (something that did not happe=
n when using TRX-A).</div><div style=3D"font-family:arial,helvetica,sans-se=
rif"><br></div><div style=3D"font-family:arial,helvetica,sans-serif">To see=
 if gnu-radio was the problem, I logged in the embedded linux and tried som=
e uhd examples from usr/lib/uhd/examples.</div><div style=3D"font-family:ar=
ial,helvetica,sans-serif">As expected, I ran ./tx_waveforms --rate 1e6 --fr=
eq 100e6 --subdev A:0=C2=A0 and the tx light turned on and I could see some=
thing on my oscilloscope. Also, a few &quot;LLLLL&quot; appeared on the con=
sole.</div><div style=3D"font-family:arial,helvetica,sans-serif"><br></div>=
<div style=3D"font-family:arial,helvetica,sans-serif">When I ran: <br></div=
><div style=3D"font-family:arial,helvetica,sans-serif">./tx_waveforms --rat=
e 1e6 --freq 100e6 --subdev A:1, everything looks the same but no light, no=
 signal, and no &quot;LLLLL&quot; are displayed on the console. Just the me=
ssage &quot;press ctrl+C to stop streaming&quot;.</div><div style=3D"font-f=
amily:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial=
,helvetica,sans-serif">Any help would be very much appreciated. <br></div><=
div style=3D"font-family:arial,helvetica,sans-serif">Regards,</div><div sty=
le=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br> </div><div style=
=3D"font-family:arial,helvetica,sans-serif"><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000a007df05dc94cf47--

--===============6653098369860784447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6653098369860784447==--
