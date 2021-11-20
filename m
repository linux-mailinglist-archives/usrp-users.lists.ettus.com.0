Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3A457C9E
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 09:53:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36EBE3844CC
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 03:53:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="c9Ztsv3v";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id F412C3842A4
	for <USRP-users@lists.ettus.com>; Sat, 20 Nov 2021 03:53:12 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id n2so30666272yba.2
        for <USRP-users@lists.ettus.com>; Sat, 20 Nov 2021 00:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TLM3RTN/94iuX7MMZ7EUtPXcB69fj3WtGt0O0b/3IDU=;
        b=c9Ztsv3vBu5BxTZHWUCtbPaBerQGw4nCDfg4XqikREOq/OcDA+J/sGW01wgWGKnISa
         Y8PMkRaZdilL3GOISEXXmA2OeyDsgI9dru7CJTdAlUXN9oF67azncWtGhmowPyQcFe8B
         3IAaxYl521m3VG69Hp87pvCNnESr28qWy11rHSMnPlF2UwzG5LWw+rhXYH+LLo0CCWx7
         7ZK7cXi6oS8eb5Xkd0zXGzZWnweZfwl7aH8MiKzkfZ6Gz50axnHSjFuBy2SgE4GqLQhc
         UeQ/rJ0jTxufRGpDx7NMBepmDzQAwCsOksEQ2/nRy9uXrO0w+uc/ccoh0KdQgR+Tv54J
         o/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TLM3RTN/94iuX7MMZ7EUtPXcB69fj3WtGt0O0b/3IDU=;
        b=1NeVzTdok0OqsZdC5Ah2zrUNX9dyQUw1P3z3swnmcsUhiTH/uhIDL+CVNfUo5bAu+9
         79C9j6eZrWq+MtMAxhnhDj/pz8Y5fcND8XzXY3OXYBeuR82YTctVTae4V9fCVpYlRkbW
         q0f0XFQjamvLWNjCSGmtH5eDx4fzkCAaNyZNvzRO2nqnMtzlIKL+PxNUa2iloEltamUE
         snZldvfklK8+8du/g0jVEDKDmCEamhP0K6w+ytgol/bj54I80MaGZICTQgrvr/Cyth6H
         5RmxcV70rPcUzSPVlOQtZ8cXROUaAOqcUMvfr+bgX0JkIf7kLxS1nBY1CJsnc23heNJn
         MJpA==
X-Gm-Message-State: AOAM533hZZ6Qc9ySM7bBO7tFZ9T9tkUnfDRRvowLa1yXZ1wEmgRJ3Gbt
	+826IdNaTGM5DCduUeFXRI0xZZpb8DRt8DNjSVqTQw==
X-Google-Smtp-Source: ABdhPJx1qjW/4nNwFCOB/m+TBlkq4+Z1McYu65IpF4NxMkxv1ttmdz1G1q4c7Jc4nV1kb1FgUODp/a7ZWC+bei4xLnM=
X-Received: by 2002:a05:6902:52b:: with SMTP id y11mr42518920ybs.199.1637398392170;
 Sat, 20 Nov 2021 00:53:12 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XmU9VLYFAGOoGPTTUcw_T1AHC75PrpYu3vOpwmHi5N+A@mail.gmail.com>
 <CACaXmv_gG+Ah4dvEuXxYa5Fkx5fE=zmvOar87RRiv7snjHNmtA@mail.gmail.com> <93affa15-2a92-f0a1-e264-6f75897f166a@gmail.com>
In-Reply-To: <93affa15-2a92-f0a1-e264-6f75897f166a@gmail.com>
From: LoyCurtis Smith <ljsmith9@ncsu.edu>
Date: Sat, 20 Nov 2021 03:53:01 -0500
Message-ID: <CAKhiL6WGETfh+w08WgHsrMk_fHhpA5QAnMLMOZaVdgogN6JM4g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZK7O6EFQRIKWSXQHOLEKW4J7WAV5DTJK
X-Message-ID-Hash: ZK7O6EFQRIKWSXQHOLEKW4J7WAV5DTJK
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x310 ERROR_CODE_OVERFLOW issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZK7O6EFQRIKWSXQHOLEKW4J7WAV5DTJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9064831020435216613=="

--===============9064831020435216613==
Content-Type: multipart/alternative; boundary="00000000000085d13905d1348509"

--00000000000085d13905d1348509
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey,

I was able to solve my issue. Since I=E2=80=99m limited by the 25 MSps samp=
le rate
associated with the 1-GigE interface, I lowered my subcarrier spacing to
15kHz from 30 kHz, which lowered my sample rate to 23.04 MSps. However, I
received an error from the OAI-Code for having an unknown sample rate.

To solve this, l had to add the 23.04 MSps sample rate to an *if
statement* that
controlled the configuration of  USRP x310s and USRP N300s, and exists
within a C++ file that uses the UHD API.

I was able to successfully test this on my OAI-nrUE. I will have to make
the same change on my OAI-gNB system and test it.


On Fri, Nov 19, 2021 at 20:20 Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-19 12:19, Neel Pandeya wrote:
>
> Hello LoyCurtis Smith:
>
> Thanks for the detailed information about your system configuration.
> Everything looks fine at initial glance, and I would expect this to work.
> I might say that the clock speed of your Dell Latitude E5570 i7-6820HQ CP=
U
> might be too low, I would generally recommend a clock speed of 3.5 GHz or
> higher, but it depends on what you're doing, what the sampling rate is, a=
nd
> what the network traffic is, etc.
>
> What channel bandwidth are you using?
>
> Could you please run the "benchmark_rate" utility on both the gNB and nrU=
E
> sides, using the same sampling rates that you're using for the gNB and
> nrUE, and let me know your results?  This utility will test your interfac=
e
> at the desired sampling rate and see if it can sustain the data streaming
> rate.
>
> ./benchmark_rate --tx_rate 15.76e6 --rx_rate 15.76e6 --duration 600
>
> --
>
> I think Mr. Smith did run that test, and it was fine (after I pointed him
> at the correct directory for the benchmark_rate example).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--=20

V/r

LoyCurtis Smith

--00000000000085d13905d1348509
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hey,=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I was able to solve my issue. Since I=E2=80=99m limited by the 25=
 MSps sample rate associated with the 1-GigE interface,<span style=3D"borde=
r-color:rgb(0,0,0);color:rgb(0,0,0)">=C2=A0I lowered my subcarrier spacing =
to 15kHz from 30 kHz, which lowered my sample rate to 23.04 MSps. However, =
I received an error from the OAI-Code for=C2=A0</span><span style=3D"border=
-color:rgb(0,0,0);color:rgb(0,0,0)">having an unknown sample rate.=C2=A0</s=
pan></div><div dir=3D"auto"><span style=3D"border-color:rgb(0,0,0);color:rg=
b(0,0,0)"><br></span></div><div dir=3D"auto"><span style=3D"border-color:rg=
b(0,0,0);color:rgb(0,0,0)">To solve this, l had to add the 23.04 MSps sampl=
e rate to an <b>if statement</b>=C2=A0that controlled the configuration of =
=C2=A0USRP x310s and USRP N300s, and exists within a C++ file that uses the=
 UHD API.</span></div><div dir=3D"auto"><span style=3D"border-color:rgb(0,0=
,0);color:rgb(0,0,0)"><br></span></div><div dir=3D"auto"><span style=3D"bor=
der-color:rgb(0,0,0);color:rgb(0,0,0)">I was able to successfully test this=
 on my OAI-nrUE. I will have to make the same change on my OAI-gNB system a=
nd test it.=C2=A0</span></div></div><div><div dir=3D"auto"><br></div><div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Nov 19, 2021 at 20:20 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color=
:rgb(204,204,204)">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-19 12:19, Neel Pandeya
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)">Hello=C2=A0LoyCurtis Smith:</font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)"><br>
            </font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)">Thanks for the detailed information about=C2=A0your
              system configuration.=C2=A0 Everything looks fine at=C2=A0ini=
tial
              glance, and I would expect this to work.=C2=A0 I might say th=
at
              the clock speed of your=C2=A0Dell Latitude E5570 i7-6820HQ CP=
U
              might be too low, I would generally=C2=A0recommend a clock
              speed of 3.5 GHz or higher, but it depends=C2=A0on what you&#=
39;re
              doing, what the sampling rate is, and what the network
              traffic is, etc.</font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)"><br>
            </font></div>
          <div class=3D"gmail_default"><span style=3D"font-family:verdana,s=
ans-serif">What channel
              bandwidth are you using?</span><br>
          </div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)"><br>
            </font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)">Could you please run the &quot;benchmark_rate&quot;
              utility on both the gNB and nrUE sides, using the same
              sampling rates that you&#39;re using for the gNB and nrUE, an=
d
              let me know your results?=C2=A0 This utility will test your
              interface at the desired sampling rate and see if it can
              sustain the data streaming rate.</font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)"><br>
            </font></div>
          <div class=3D"gmail_default"><font face=3D"monospace" style=3D"fo=
nt-family:monospace;color:rgb(0,0,0)">./benchmark_rate
              --tx_rate 15.76e6 --rx_rate 15.76e6 --duration 600</font><fon=
t face=3D"verdana, sans-serif" style=3D"font-family:verdana,sans-serif;colo=
r:rgb(0,0,0)"><br>
            </font></div>
          <div class=3D"gmail_default"><font face=3D"verdana,
              sans-serif" style=3D"font-family:verdana,sans-serif;color:rgb=
(0,0,0)"><br>
            </font></div>
          <div>
            <div dir=3D"ltr" data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><font face=3D"verdana, sans-serif" style=3D"=
font-family:verdana,sans-serif;color:rgb(0,0,0)">--</font><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <font face=3D"verdana, sans-serif" style=3D"font-family:verdana,sans-se=
rif;color:rgb(0,0,0)">I think Mr. Smith did run that
      test, and it was fine (after I pointed him at the correct
      directory for the benchmark_rate example).<br>
      <br>
      <br>
    </font>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#0737=
63"><br></font></div><div dir=3D"ltr"><font color=3D"#073763">V/r</font><di=
v><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763"=
><br></font></span></div><div><span style=3D"background-color:rgb(255,255,2=
55)"><font color=3D"#073763">LoyCurtis Smith</font></span></div></div></div=
></div></div>

--00000000000085d13905d1348509--

--===============9064831020435216613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9064831020435216613==--
