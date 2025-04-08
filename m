Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67461A7F7C6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:26:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0453385528
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:26:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744100782; bh=TcyUk5FiuD8T0BnRXxf9Ya5FlzoYRfye4EwPGDOruHM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zuTwg/jPmQAzYNl4LJ6Gx8UhBNuEBoJ/Z0vb6nsgUPfjhxb3p2N2uW7JF01kyNGBD
	 luUHJSBw+VAB0tPuG5SG/B/iIO5kBjk1XpDIDMLhBjjsFPCxu6SZe7FRp1dPEhTiUk
	 rPza8NYCylzdvcDJOYs2SOjkS+330MQOPdn3CotkLosAcs9a9UnzJP0y36qutxgqWn
	 2kt5IIdxp5sYry9mS0UDJ8uf9GdLqMAiZtvC7W/CbBakU7T6K10T9g4Is4Gdv3vC1y
	 5VeSrkvzTJin8wB4XKkdQIK5drF+d84TwDGsE953bxEExbuOfUh0skryul1mPsVXGa
	 dE+0M69atvPMw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E5525385494
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:26:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="g98V3H9i";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac29af3382dso859518466b.2
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744100770; x=1744705570; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3EssE/SVAfRQ0fBwz70ZNefHHpFu+QzzIcD/xbq3Qx0=;
        b=g98V3H9ird6wZ1J9mjFWOkFHGe4kSkLBYXMQXq5qYq4Y5nRCzH96GGh4ZXdV3S7hCM
         WwnHwsAGxGn0NzVi3M0mBrSD3sfHM0WinwsiKisoWPLlb4rbrbZPo84JRMOifimICCpg
         BkVBsQ92M6XmK0alZxz863QMrhzcK/G1gnIIosSobPilQt5NSEfwf2uup2OEwHjGsDpC
         t0Pi7XCxJQfF/Fuj88JPAwZeGB3nU6gXrTVVvj3nG/bycdrZvmA6X/+Onm1P8dCfwnwT
         KNAdRBn4fezM0LkuL2maqiFblQTJ8kyItd2pRf8wLTsZfTeGjBeX+T8SoMPzfonEV3Ex
         ttew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744100770; x=1744705570;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EssE/SVAfRQ0fBwz70ZNefHHpFu+QzzIcD/xbq3Qx0=;
        b=Cc4DGgKn8vFB1IeTMpBGwXUID8FPJAnUTDT4TkcrUrJ9YhKF4KQHM9Tmpqk8czOMTx
         ryoS1cAni3d3R5DQmWOucC+QuYjQ2cM7em4y7ZXePJjq9kipl5etwpSCDumq3PA6iOrk
         08COlvCiqMyhSiC3fdYQwoma1MnnmZCwb3eKpdi0HIO0jmF3a7PvQ4FDuVvjNQjHuR1L
         BzyfpQSpkMEtZwpi2vQPLXdEW2sO7z2BBvEsuEn3RoiRKRls0WgMarkSTtIPtvKoLqPA
         +T7NIdyaJeKerAMl4QLSOe8xfepP1qBHhPez+pIRmtZVAkHsZF+zB4M7ItWmIne+VTxp
         zqFA==
X-Gm-Message-State: AOJu0Yz4CvacF3sIYJQ3rhS5D4tt+HSuu6ClsLcePzOzj1E/pNrJW1WT
	UWUOBtH7fKCnkUUhKUJQvgBuPnaJ01vt6Mc5fuBr/V7Zhq3q572getV3wapoKVNRVa9iQcB9iF/
	AyXXuoL6k8+idXPNlmHoOAC5RP3M0rLGR0+JQETUzsfI7HI7NXIk=
X-Gm-Gg: ASbGncts20VM19rWA5/WDdrdYFOBepZStrpoZpKgP7s7dfd8KcBd9MOuzvatMGPDe/P
	x5KI8WaLc0xikVSrn7IPzPeWkBVhm0KqLjulb1ld8a3UTzsWqCcSjTM3Xf2nHNa9a3w+OgiiLAN
	52YS31cZg51JLIV3kb2/gQ+xvMoFCnKQ+7HO3d+45EUUNceJSg59QGRfYndQ==
X-Google-Smtp-Source: AGHT+IGBLYKGEZ48m3RMA4JNteS0WVIC/eimD9923eBN9OWOtHb7QGQwomkd3mMul0TvR/iMVbMU4ZT13WoRbWqKSK0=
X-Received: by 2002:a17:906:e208:b0:ac7:ee99:2eb2 with SMTP id
 a640c23a62f3a-ac7ee993526mr930301666b.16.1744100770021; Tue, 08 Apr 2025
 01:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU@lists.ettus.com> <7a236078-fffa-4ed6-a85d-f26c2180e62c@gsi.de>
In-Reply-To: <7a236078-fffa-4ed6-a85d-f26c2180e62c@gsi.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:25:59 +0200
X-Gm-Features: ATxdqUElLx_AUiZKtk4J2fUHa32K9UxF0_R0Xy4x-YaKBrCZnwp8t-ZIk3LEpZY
Message-ID: <CAFOi1A6qNEwVw798cuhqbFRuHosfBxBVhw2sVtQaTsO4pCu1hg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: LWSPFUKNMZPYTOQZJR7INAWDVK2LUQFE
X-Message-ID-Hash: LWSPFUKNMZPYTOQZJR7INAWDVK2LUQFE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Control GPIO pins in a custom RFNoC block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWSPFUKNMZPYTOQZJR7INAWDVK2LUQFE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5121523506334816042=="

--===============5121523506334816042==
Content-Type: multipart/alternative; boundary="000000000000d9a09d0632401a0c"

--000000000000d9a09d0632401a0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Philipp,

thanks for sharing this contribution. We'll check out your PR (well, I
already did a while back) and may incorporate some of it.

For this feature, we need to make sure we come up with a way that works
similarly across devices, and N3xx/X4xx have a slightly different GPIO
design from X3xx, so some tweaks will be inevitable.

--M

On Wed, Mar 5, 2025 at 3:33=E2=80=AFPM Philipp Niedermayer <p.niedermayer@g=
si.de>
wrote:

> Hi,
>
> I finally had to go through the GPIO thing for a project where I need
> access to some of the Daughterboard GPIOs on an X310 from a custom RFNoC
> block. The application also includes using a spare bit of the data stream
> to send the GPIO state to the host along the regular stream of samples.
>
> Since there were quite a few requests on the mailing list in this regard,
> I pushed the changes I had to make to UHD along with a description of the
> actions I took in my custom RFNoC block to my GitHub account.
> You can find it here: https://github.com/eltos/uhd/pull/1
>
> I introduced a special control register to take control over certain pins
> from within my RFNoC block while leaving the other pins under control of
> the default UHD API or ATR.
>
> Best
> Philipp
>
>
> *From:* yangamelia2333@gmail.com
>
> *Sent:* Tuesday, 4 July 2023 at 04:23
>
> *To:* usrp-users@lists.ettus.com
>
> *Subject:* [USRP-users] Control GPIO pins in a custom RFNoC block
>
> Hello.
>
> I want to control GPIO pins in a custom RFNoC block to send a stable GPlO
> trigger output (X310+UHD4.4 + Ubuntu 18.04). But I have no idea how to
> implement this because l didn't find the GPIO interface in the RFNoC
> specification.
>
> Also I don't want to use the rfnoc.radio_control.set_gpio_attr() command.
> Due to the host's uncertain delay, the output triggering interval may
> differ.
>
> I really hope someone can help me and give me some hints
>
> Amelia
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d9a09d0632401a0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Philipp,</div><div><br></div><div>thanks for sharing =
this contribution. We&#39;ll check out your PR (well, I already did a while=
 back) and may incorporate some of it.</div><div><br></div><div>For this fe=
ature, we need to make sure we come up with a way that works similarly acro=
ss devices, and N3xx/X4xx have a slightly different GPIO design from X3xx, =
so some tweaks will be inevitable.</div><div><br></div><div>--M</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 5, 2025 at 3:33=E2=80=AFPM Philipp Niedermayer =
&lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermayer@gsi.de</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <p>Hi,</p>
    <p>I finally had to go through the GPIO thing for a project where I
      need access to some of the Daughterboard GPIOs on an X310 from a
      custom RFNoC block. The application also includes using a spare
      bit of the data stream to send the GPIO state to the host along
      the regular stream of samples.<br>
    </p>
    <p>Since there were quite a few requests on the mailing list in this
      regard, I pushed the changes I had to make to UHD along with a
      description of the actions I took in my custom RFNoC block to my
      GitHub account.<br>
      You can find it here: <a href=3D"https://github.com/eltos/uhd/pull/1"=
 target=3D"_blank">https://github.com/eltos/uhd/pull/1</a></p>
    <p>I introduced a special control register to take control over
      certain pins from within my RFNoC block while leaving the other
      pins under control of the default UHD API or ATR.<br>
    </p>
    <p>Best<br>
      Philipp</p>
    <p></p>
    <div><br>
      <div id=3D"m_-5570559748468483736rwhHeaders" style=3D"border-width:1p=
t medium medium;border-style:solid none none;border-color:rgb(181,196,223) =
currentcolor currentcolor;padding:3pt 0cm 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b>
            <a href=3D"mailto:yangamelia2333@gmail.com" target=3D"_blank">y=
angamelia2333@gmail.com</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Tuesday, 4 July 2023 at
            04:23</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users] Control
            GPIO pins in a custom RFNoC block</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite" style=3D"border:medium;padding-left:0px;margi=
n-left:0px">
     =20
      <p>Hello.</p>
      <p>I want to control GPIO pins in a custom RFNoC block to
        send a stable GPlO trigger output (X310+UHD4.4 + Ubuntu 18.04).
        But I have no idea how to implement this because l didn&#39;t find
        the GPIO interface in the RFNoC specification.</p>
      <p>Also I don&#39;t want to use the <code>rfnoc.radio_control.set_gpi=
o_attr()</code>
        command. Due to the host&#39;s uncertain delay, the output
        triggering interval may differ.</p>
      <p>I really hope someone can help me and give me some hints</p>
      <p>Amelia</p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d9a09d0632401a0c--

--===============5121523506334816042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5121523506334816042==--
