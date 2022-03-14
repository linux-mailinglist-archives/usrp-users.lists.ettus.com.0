Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C86E74D7914
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 02:29:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8945D3849B6
	for <lists+usrp-users@lfdr.de>; Sun, 13 Mar 2022 21:29:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="4PXIprtr";
	dkim-atps=neutral
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B36F3843B4
	for <usrp-users@lists.ettus.com>; Sun, 13 Mar 2022 21:28:43 -0400 (EDT)
Received: by mail-pj1-f50.google.com with SMTP id m11-20020a17090a7f8b00b001beef6143a8so13018216pjl.4
        for <usrp-users@lists.ettus.com>; Sun, 13 Mar 2022 18:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xUJzHArVLjzipmgwDIkO612+MT6LmzlepeRBTkXWvIo=;
        b=4PXIprtrHkN3Bde7lL9vnfYAErXd/Ay4RBcJD9QKXZt5kY9FYxCQs9Ou/tvmn9skUI
         Kk+bCm+9chr9qR0yppF6ATnhQgadbwHdX/1OQInN3tngRcTdhp8W1lZqozzzlg/gGNgi
         ouheprbulK5h9cW2edvaY3UVmSZyjtEMJmzWcbYXBs78S2m1lJrKUoY+Cjd086bAt2Se
         ZQMjY6o3wO8XvxKSF1eZ7HeeSToZhs6FdsdaIawoH01djSR56bWazfx9S11Ala6eossu
         iTUEPts+FN1GDjeyfz/MHdmz44VsKIpQDZvG5Tm95lGxklJFBI9z/iRqSH4ygYS3B429
         qQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xUJzHArVLjzipmgwDIkO612+MT6LmzlepeRBTkXWvIo=;
        b=0KiaZ/bNkYA9SO0Adf0EcqFkfqxBTdPUuvbAvpE7HBO5X5SOqltzk7AUhDnlzwM7TN
         ek1tbwyMQAvC3rEBK/0oo2fsADVczWLRyLzxQdofDPR8cerby27r1Y2+cCiZkLIqfWP7
         QY+a0l7zkBnGoTVnY/gHFLZwrcnB7Bl4MS+RZ1onJuod5VETzcjbwkL7wgzXsn8qqUC6
         ycScPjeiFTw2kpex18F2dOAqNdOx7RG9N8Bu6Iu84Wtn6fdSK4GSTAp19X5+bhKH73cY
         FAMqzDes1VYGAZs1qrE63tlhQd2U/YXOSjCDU62uGqtNdYpGqBUXavFeOKYjtI0GAlIU
         9M6A==
X-Gm-Message-State: AOAM532bsfKbYcrbOL8ZiG1oEIGrwXPqOL2mE+kGkXQhUdEiZNQFRwHi
	TRm7q1jVQIR7RpKzJZjuwjr1DcaDEHc05DjgTLY+gaNPaN6Fow==
X-Google-Smtp-Source: ABdhPJz/vc3c1d3pt2rnB4OrXUzXRm2+svtF4iLwYH1ou5dwaWxg/umjiTYBBDbbi2Nt/CpqrqgZVjx0m05y7wKwqVg=
X-Received: by 2002:a17:90a:af88:b0:1bd:6b5d:4251 with SMTP id
 w8-20020a17090aaf8800b001bd6b5d4251mr22327592pjq.134.1647221322391; Sun, 13
 Mar 2022 18:28:42 -0700 (PDT)
MIME-Version: 1.0
References: <9D4AD31F-21EF-46DE-8419-7A4EF6DAB197@contoso.com>
In-Reply-To: <9D4AD31F-21EF-46DE-8419-7A4EF6DAB197@contoso.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Sun, 13 Mar 2022 21:28:31 -0400
Message-ID: <CAGNhwTOG+YaP0_Md2qNpOa_GqJ_ZTPXezi_XapFRe5ovu8H=Yw@mail.gmail.com>
To: Erik Carlseen <erik.carlseen@brilliantroot.com>
Message-ID-Hash: TXOHZP22ZLX36VICVYQKSB544654PDTK
X-Message-ID-Hash: TXOHZP22ZLX36VICVYQKSB544654PDTK
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRB Hardware Driver with Apple Silicon Macs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXOHZP22ZLX36VICVYQKSB544654PDTK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4834946998823734168=="

--===============4834946998823734168==
Content-Type: multipart/alternative; boundary="000000000000c9b7df05da2399a5"

--000000000000c9b7df05da2399a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Erik - Yes UHD and USRPs work with Apple M1 / ARM64. I've used an M1 Mac
Mini with 10 GbE to connect to various USRPs (N320/1, X310, X410) via an
RJ-45 to SFP+ adapter ... worked nicely with UHD 4.1! UHD does have
optimizations for certain Intel SIMD; it is not optimized for ARM64, but it
should work quite well natively (or in Rosetta2 if you wanted to go that
route). - MLD


On Sun, Mar 13, 2022 at 12:59 PM Erik Carlseen <
erik.carlseen@brilliantroot.com> wrote:

> Has anybody successfully built and run the USRB Hardware Driver on an
> Apple Silicon (M1 family of CPUs) Mac?
>
>
>
> My understanding is that AARCH64 is supported on Linux and MacOS is
> supported in general, but just assuming that any driver source code will
> just work on a new architecture / OS combination is generally not a wise
> gamble.
>
>
>
> I=E2=80=99m thinking that an M1 Mac Mini might be an outstanding platform=
 for SDR
> work.
>
> Thanks,
>
>
>
> Erik Carlseen
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c9b7df05da2399a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div>Hi Erik - Yes UHD and USRPs =
work with Apple M1 / ARM64. I&#39;ve used an M1 Mac Mini with 10 GbE to con=
nect to various USRPs (N320/1, X310, X410) via an RJ-45 to SFP+ adapter ...=
 worked nicely with UHD 4.1! UHD does have optimizations for certain Intel =
SIMD; it is not optimized for ARM64, but it should work quite well natively=
 (or in Rosetta2 if you wanted to go that route). - MLD</div></div></div></=
div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Mar 13, 2022 at 12:59 PM Erik Carlseen &lt;<a href=3D"mailt=
o:erik.carlseen@brilliantroot.com">erik.carlseen@brilliantroot.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-992288893477894207WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Has anybody successfu=
lly built and run the USRB Hardware Driver on an Apple Silicon (M1 family o=
f CPUs) Mac?
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">My understanding is t=
hat AARCH64 is supported on Linux and MacOS is supported in general, but ju=
st assuming that any driver source code will just work on a new architectur=
e / OS combination is generally not
 a wise gamble.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99m thinking =
that an M1 Mac Mini might be an outstanding platform for SDR work.<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Erik Carlseen<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c9b7df05da2399a5--

--===============4834946998823734168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4834946998823734168==--
