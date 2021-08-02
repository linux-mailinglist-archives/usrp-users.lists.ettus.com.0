Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 744A93DDDCF
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 18:38:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C97C383D58
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 12:38:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H0JkS2ub";
	dkim-atps=neutral
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D1B3383C95
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 12:37:21 -0400 (EDT)
Received: by mail-wr1-f43.google.com with SMTP id c9so1923109wri.8
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 09:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=aqLkjkADgoQ5UbrbNt5lj0Bq8WxwIaYa6gxf8DP+0nc=;
        b=H0JkS2ub3kYL2uToEFmrGx6Wy4HyacbarpoqByn6H9tiumgSsZbGvT6dYwQGQCz7X1
         OGkFATZXc9LOduzH7JTtPxisPlR2/yrLaFmq73HjqQu0ui7S8/PvlZs9Lb1mMF+wXpyV
         IKKUw2Aciwm0mjBetieY7cdjQ2eNksqyF6f1kuocfgWqknmllIO8PS9/+ec1W3wq59lR
         5BpJgmpHqfZq8Hsjyy4iINH+ucbzFdjUIt8ola7SeWx06eOkPigS9SbhYb7EkeQbYxRw
         DyZy2lyCsnvUMiwFmhotJhHmX7SLhLTB0+nH92xWQ4eHTmc+HKF5kG+tIwlaJVnu9W7O
         GTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aqLkjkADgoQ5UbrbNt5lj0Bq8WxwIaYa6gxf8DP+0nc=;
        b=qnJpqYdu8ig5VJkVjcGYPgAsrLcBfcSLauEfU86eaaN1AG+Az3ewyiXwphTzsTdYcr
         7hiFV87v9QGtNni/ufac0QsNgE0pEMTuKyN/OcWDrZ+h0hgb4+OlKj+IAsbeWWAHufug
         Uzk4DpuRd9wLy2Hz3vM+I+Y4z9+pNn+WAilmezBA8RKc+UE2PF+7YlmUd58Dx9wvs9x/
         vbKcenqjnH5kZghlu/aBJ4zePMGdR9kC9vPIdtSalqR9G6O7HZGmjDgnJ2G6ujfQp9lj
         vGIzAzQ40GVX/Hdv2+wUOF8hIc56E7Sd2J0qDnNszjWQceB/bdiLIk8FtYk8bxJoq4Cc
         oSMQ==
X-Gm-Message-State: AOAM531DLJXPNVwTYlLtX5g8IU7Wn6nXqLKLEkRixiGqA5lMu16sbAWw
	g2RZaH8yomiRSa8zf4IyGzaGK4Kb9pBR+BdRaGoJIOv+CRQFEA==
X-Google-Smtp-Source: ABdhPJxoeVenQt7WR/WKwTKG1ZT60CMpS/yRjrpcUiQdq7uRsO9rtNhYACt1OTAsbjO0OjgRdlmahi3qMe/KeOThNu4=
X-Received: by 2002:adf:ed51:: with SMTP id u17mr18309809wro.416.1627922240130;
 Mon, 02 Aug 2021 09:37:20 -0700 (PDT)
MIME-Version: 1.0
From: Marcin Wachowiak <marcin.r.wachowiak@gmail.com>
Date: Mon, 2 Aug 2021 18:37:08 +0200
Message-ID: <CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE6y-F4zvnLA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: T5HB5ESECCTCSJIGB2MWVK7RNFC7QG7C
X-Message-ID-Hash: T5HB5ESECCTCSJIGB2MWVK7RNFC7QG7C
X-MailFrom: marcin.r.wachowiak@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] One RX channel of B210 presents distorted signal from splitter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5HB5ESECCTCSJIGB2MWVK7RNFC7QG7C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6209960002110127497=="

--===============6209960002110127497==
Content-Type: multipart/alternative; boundary="000000000000d8512b05c8962e2b"

--000000000000d8512b05c8962e2b
Content-Type: text/plain; charset="UTF-8"

Hello,
I am working on a phase coherent application using USRP B210. As the phase
difference between RX channels of B210 is relatively stable I wanted to see
how it behaves across the whole frequency range. I performed some
measurements and unfortunately for some frequencies I observed strange
distortions. The setup consists of a TX USRP, RF splitter, matched cables
and a second USRP with both RX channels connected to the splitter.
Screams documenting the distortions:
https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=sharing
The received sine wave should have quite similar shape and spectral
properties across both RX channels of USRP.
What I observe instead is a symmetrical harmonic tone at one of the RX,
when the other does not record it.
There are also random distortions in one of the RX channels looking as if
the sine signal was split and shifted at some point in time (looks like a
some sort of buffer issue)
This kind of distortion for some settings persists for some is not present
or occurs regularly.
To provide some illustiation I attach recordings and screens of the
registered distortions.
 usrpb210_sine_rx_distoriton2.mp4
<https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=drive_web>
 usrpb210_sine_rx_distoriton.mp4
<https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=drive_web>

I tried to debug this problem but it appears to be related to sample rate,
TX tone frequency, carrier frequency and gains. (I checked dynamic IQ
imbalance or gain controls and changing of the parameters did not affect
anything)
There are now underflow/overflow flags present while I run the flowchart.
The signal that is provided to both RX is identical ( RF mini-circuits RF
splitter), and any outside interferences are limited as the whole setup is
connected via concentric cables. I tried to set the number of receive and
sent frames to 1024 to ensure continuity, but that didn't help.
It is strange that for some frequencies this phenomenon occurs while for
others the phase difference variance is very low and there are no such
distortions.
Could You please explain the cause or propose some kind of solution to this
issue?

Kind regards,
Marcin Wachowiak

--000000000000d8512b05c8962e2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><div>I am working on a phase coherent=
 application=20
using USRP B210. As the phase difference between RX channels of B210 is=20
relatively stable I wanted to see how it behaves across the whole=20
frequency range. I performed some measurements and unfortunately for=20
some frequencies I observed strange distortions. The setup consists of a
 TX USRP, RF splitter, matched cables and a second USRP with both RX=20
channels connected to the splitter. <br></div><div>Screams documenting the =
distortions: <a href=3D"https://drive.google.com/drive/folders/1DkjrVKz3ywv=
3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing">https://drive.google.com/drive/folders=
/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing</a></div><div>The received=
 sine wave should have quite similar shape and spectral properties across b=
oth RX channels of USRP.</div><div>What I observe instead is a symmetrical =
harmonic tone at one of the RX, when the other does not record it. <br>Ther=
e
 are also random distortions in one of the RX channels looking as if the
 sine signal was split and shifted at some point in time (looks like a=20
some sort of buffer issue)<br></div><div>This kind of distortion for some s=
ettings persists for some is not present or occurs regularly. <br></div><di=
v>To provide some illustiation I attach recordings and screens of the regis=
tered distortions.</div><div><div class=3D"gmail_chip gmail_drive_chip" sty=
le=3D"width:396px;height:18px;max-height:18px;background-color:rgb(245,245,=
245);padding:5px;color:rgb(34,34,34);font-family:arial;font-style:normal;fo=
nt-weight:bold;font-size:13px;border:1px solid rgb(221,221,221);line-height=
:1"><a href=3D"https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0=
JeM9M/view?usp=3Ddrive_web" style=3D"display:inline-block;max-width:366px;o=
verflow:hidden;text-overflow:ellipsis;white-space:nowrap;text-decoration:no=
ne;padding:1px 0px;border:medium none" aria-label=3D"usrpb210_sine_rx_disto=
riton2.mp4" target=3D"_blank"><img style=3D"vertical-align: bottom; border:=
 medium none;" src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_g=
eneric_list.png" class=3D"gmail-CToWUd">=C2=A0<span dir=3D"ltr" style=3D"co=
lor:rgb(17,85,204);text-decoration:none;vertical-align:bottom">usrpb210_sin=
e_rx_distoriton2.mp4</span></a></div><div class=3D"gmail_chip gmail_drive_c=
hip" style=3D"width:396px;height:18px;max-height:18px;background-color:rgb(=
245,245,245);padding:5px;color:rgb(34,34,34);font-family:arial;font-style:n=
ormal;font-weight:bold;font-size:13px;border:1px solid rgb(221,221,221);lin=
e-height:1"><a href=3D"https://drive.google.com/file/d/13niyBdl6H4w0Akdf28K=
eontnZKUsCUaW/view?usp=3Ddrive_web" style=3D"display:inline-block;max-width=
:366px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;text-decor=
ation:none;padding:1px 0px;border:medium none" aria-label=3D"usrpb210_sine_=
rx_distoriton.mp4" target=3D"_blank"><img style=3D"vertical-align: bottom; =
border: medium none;" src=3D"https://ssl.gstatic.com/docs/doclist/images/ic=
on_10_generic_list.png" class=3D"gmail-CToWUd">=C2=A0<span dir=3D"ltr" styl=
e=3D"color:rgb(17,85,204);text-decoration:none;vertical-align:bottom">usrpb=
210_sine_rx_distoriton.mp4</span></a></div></div><div><br></div><div>I
 tried to debug this problem but it appears to be related to sample=20
rate, TX tone frequency, carrier frequency and gains. (I checked dynamic
 IQ imbalance or gain controls and changing of the parameters did not=20
affect anything)</div><div>There are now underflow/overflow flags=20
present while I run the flowchart. The signal that is provided to both=20
RX is identical ( RF mini-circuits RF splitter), and any outside=20
interferences are limited as the whole setup is connected via concentric
 cables. I tried to set the number of receive and sent frames to 1024 to
 ensure continuity, but that didn&#39;t help.</div><div>It is strange that=
=20
for some frequencies this phenomenon occurs while for others the phase=20
difference variance is very low and there are no such distortions.</div><di=
v>Could You please explain the cause or propose some kind of solution to th=
is issue?<br></div><div><br></div><div>Kind regards,<br></div><div>Marcin W=
achowiak</div></div>

--000000000000d8512b05c8962e2b--

--===============6209960002110127497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6209960002110127497==--
