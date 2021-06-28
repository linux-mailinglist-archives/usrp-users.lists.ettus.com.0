Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9223B69A7
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 22:30:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 462DC38477C
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 16:30:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="VLE9HUqh";
	dkim-atps=neutral
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 06CBE3840AE
	for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 16:30:00 -0400 (EDT)
Received: by mail-vs1-f45.google.com with SMTP id y21so8418068vsm.11
        for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 13:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RksPY46HJMAPvEewtJFKL0g0RwddknWibQahPh5q0l0=;
        b=VLE9HUqhgv3byRyg/wa7KyR8c4/QIwVdjEVPPtphXviEsFZgK04NBwZnrG+0L1SGSl
         X9KdS41u30CUUaR4uAv9YX8U/8RJobgnrUbiZTrQUP3CtQEkPl7DNWPAI2/iXL43AyKR
         Bs3vE3aaGXz4G/ujz2cjy1m/6yIJSCdZsWXsoe2Jf70+OncoZq2I0vQuYuLcvVFWF2p7
         p7XVk8CAM5xauRfBFmOpOXDxgN3cOgRyJ0yubF+X4o7YW9eYj2k9fVWbdemz/i3XwFxr
         l27Cp6EzT1H2TNkJQGPspiinvjJxKyvtUQdT7BiSe43VT2/d3IhcGYoahWpwvGlY9/l1
         lGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RksPY46HJMAPvEewtJFKL0g0RwddknWibQahPh5q0l0=;
        b=aIsTXvbiGuAKa85jm5awO8YDXC81XAC1jogF9yxdB3Vxgy5KwcB6qx2KyRnbJ4+6c2
         EqM2+gIypLBdIaRvHGLhH8gv6BhrTHWKdEVHKEPPPSuO/lvXaRi89SCQkpeBKghMiFfa
         XhSLI+pFT2GYyUulj9McsjZeVVQYmJp6DC3aoFzShGM68QtDPSxQoqErKAl81urH0YP3
         j9YYQiPxfgd0KT/S1SxL4BC0obyUxppggCA1uahNNOlshBSrEwd5WoVxvEhIfzk7dLQ2
         jeJGMDbWfuNwlJFHncZSnWq/5J9rVOfep6nYEMR/WpBvgxiCQux8mssWoNLBOFNgbJ4M
         oAFA==
X-Gm-Message-State: AOAM532ysZQ/CIEwdoRen1epoXIal8+Yl7pcR7LjuBO3amMuZG07FY5D
	utzQe8xBr7e1V7mBWIvWbVywdV/DEC9dN/QyykYchQyB
X-Google-Smtp-Source: ABdhPJy9gLj29LHmnyJPTMc2dBkD1sYIYAMS4qI3/h5lkltQ3114++jgXohojXoyy/K52l2YkIyXMXlDyCgor6Vx7+4=
X-Received: by 2002:a67:1087:: with SMTP id 129mr20857384vsq.42.1624912200498;
 Mon, 28 Jun 2021 13:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <6dc80cdae8b747aeb2dd1176481353f1@external.thalesgroup.com> <903A1875-54EA-486C-800B-7E919FDA7712@gmail.com>
In-Reply-To: <903A1875-54EA-486C-800B-7E919FDA7712@gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 28 Jun 2021 16:29:24 -0400
Message-ID: <CAL7q81s12yVe8_Owj9xaYAweNxi3No2B08m6drFgs6iTsHc_cA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: COVCVZILIFSTSZXKDFOBYGOGWSYM6YUQ
X-Message-ID-Hash: COVCVZILIFSTSZXKDFOBYGOGWSYM6YUQ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <USRP-users@lists.ettus.com>, discuss-gnuradio <Discuss-gnuradio@gnu.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LibUHD - Python API problem (RFNoC not found)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/COVCVZILIFSTSZXKDFOBYGOGWSYM6YUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5413271175860134196=="

--===============5413271175860134196==
Content-Type: multipart/alternative; boundary="00000000000080948e05c5d95a3b"

--00000000000080948e05c5d95a3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fred,

UHD 3.14 does not have RFNoC support enabled by default. Try running cmake
with the flag "-DENABLE_RFNOC=3DON".

Jonathon

On Mon, Jun 28, 2021, 09:05 Marcus D Leech <patchvonbraun@gmail.com> wrote:

> So the Python API not building is unrelated to any of those dependency
> failures as far as I know.
>
> But I don=E2=80=99t think the Python API is required for RFNOC support.
>
> Could we see the build log for your gr-Ettus build attempt?
>
> Sent from my iPhone
>
> On Jun 28, 2021, at 1:55 AM, COURANT Frederique - Contractor <
> frederique.courant@external.thalesgroup.com> wrote:
>
> =EF=BB=BF
>
> Hello,
>
>
>
> I cannot share my log file but I will share what doesn=E2=80=99t work :
>
>
>
> -- checking for module =E2=80=98libgps=E2=80=99
>
> --            package =E2=80=98libgps=E2=80=99 not found
>
> -- checking for module =E2=80=98libgps >=3D 3.11=E2=80=99
>
>               Package =E2=80=98libgs >=3D 3.11=E2=80=99 not found
>
> -- could NOT find LIBGPS (missing: LIBGPS_LIBRARY_LIBGPS_INCLUDE_DIR)
>
> -- could NOT find LIBERIO (missing: LIBERIO_LIBRARY_LIBERIO_INCLUDE_DIR)
>
> -- could NOT find dpdk (missing: DPDK_INCLUDE_DIR)
>
> --
>
> -- Configuring LIBERIO support=E2=80=A6
>
> --           Dependency ENABLE_LIBUHD =3D ON
>
> --           Dependency LIBERIO_FOUND =3D FALSE
>
> --           Disabling LIBERIO support.
>
> --           Override with =E2=80=93DENABLE_LIBERIO=3DON/OFF
>
> =E2=80=A6
>
> -- Configuring GSPD support=E2=80=A6
>
> --           Dependency ENABLE_LIBUHD =3D ON
>
> --           Dependency ENABLE_GSPD =3D
>
> --           Dependency LIBGPS_FOUND =3D FALSE
>
> --           Disabling GSPD support.
>
> --           Override with =E2=80=93DENABLE_E300=3DON/OFF
>
> =E2=80=A6
>
> -- Configuring E300 support=E2=80=A6
>
> --           Dependency ENABLE_LIBUHD =3D ON
>
> --           Disabling E300 support.
>
> --           Override with =E2=80=93DENABLE_GSPD=3DON/OFF
>
> =E2=80=A6
>
>
>
> -- Configuring DPDK support=E2=80=A6
>
> --           Dependency ENABLE_MPMD =3D ON
>
> --           Dependency DPDK_FOUND =3D FALSE
>
> --           Disabling DPDK support.
>
> --           Override with =E2=80=93DENABLE_DPDK=3DON/OFF
>
> --
>
> --
>
> -- Could NOT find UDEV (missing: UDEV_INCLUDE_DIR_UDEV_LIBS)
>
> =E2=80=A6
>
> #########################################################
>
> # UHD Disabled components
>
> #########################################################
>
> * LibUHD =E2=80=93 Python API
>
> * LIBERIO
>
> * GSPD
>
> * E300
>
> * DPDK
>
>
>
> I think my problem is with libUHD =E2=80=93 Python API but I=E2=80=99m no=
t sure.
>
>
>
> *De :* Marcus D Leech <patchvonbraun@gmail.com>
> *Envoy=C3=A9 :* vendredi 25 juin 2021 14:37
> *=C3=80 :* COURANT Frederique - Contractor <
> frederique.courant@external.thalesgroup.com>
> *Cc :* USRP-users@lists.ettus.com; Discuss-gnuradio@gnu.org
> *Objet :* Re: [USRP-users] LibUHD - Python API problem (RFNoC not found)
>
>
>
> Could you share the log from CMake? That might tell us why.
>
> Sent from my iPhone
>
>
>
> On Jun 25, 2021, at 1:56 AM, COURANT Frederique - Contractor via
> USRP-users <usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> Hello users,
>
>
>
> When I try to install UHD 3.14.0.0 on RedHat 7.5 system, I can=E2=80=99t =
enabled
> components LibUHD =E2=80=93 Python API. For GNU Radio=E2=80=99s installat=
ion I don=E2=80=99t have
> problem.
>
> For the install I have follow this tutorials :
>
> =C2=B7
> https://files.ettus.com/manual_archive/v3.14.0.0/html/page_build_guide.ht=
ml#build_instructions_unix
>
> =C2=B7
> https://www.gnuradio.org/doc/doxygen-3.7/build_guide.html#dependencies
>
> I have try to add -DENABLE_PYTHON_API=3DON.
>
>
>
> I have also install python3-devel like it is mentioned at this link : USR=
P
> Hardware Driver and USRP Manual: Python API (ettus.com)
> <https://files.ettus.com/manual/page_python.html>
>
>
>
> If someone has ever had this problem could you explain me how to solve
> this please, because when I try to build my block I cannot find ettus and
> after if I try to build gr-ettus I cannot find RFNoC. So I suppose that t=
he
> problem is LibUHD =E2=80=93 Python API but I not sure. When I launch my f=
lowgraph
> GNU Radio doesn=E2=80=99t recognize Radio, DDC, DUC and my own block that=
 I can=E2=80=99t
> build.
>
> My program works on Ubuntu 18.04 system with UHD-3.14.0.0 and GNU Radio
> 3.7.11.1.
>
>
>
> Thanks for your help.
>
>
>
> Regards.
>
>
>
> Fred
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000080948e05c5d95a3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Fred,</div><div dir=3D"auto"><div dir=
=3D"auto"><br></div><div dir=3D"auto">UHD 3.14 does not have RFNoC support =
enabled by default. Try running cmake with the flag &quot;-DENABLE_RFNOC=3D=
ON&quot;.</div><div dir=3D"auto"><br></div><div>Jonathon</div></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Jun 28, 2021, 09:05 Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">So the P=
ython API not building is unrelated to any of those dependency failures as =
far as I know.=C2=A0<div><br></div><div>But I don=E2=80=99t think the Pytho=
n API is required for RFNOC support.=C2=A0</div><div><br></div><div>Could w=
e see the build log for your gr-Ettus build attempt?<br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n Jun 28, 2021, at 1:55 AM, COURANT Frederique - Contractor &lt;<a href=3D"=
mailto:frederique.courant@external.thalesgroup.com" rel=3D"noreferrer" targ=
et=3D"_blank">frederique.courant@external.thalesgroup.com</a>&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF






<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Hello,<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
I cannot share my log file but I will share what doesn=E2=80=99t work :<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- checking for module =E2=80=98libgps=E2=80=99<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 package =E2=
=80=98libgps=E2=80=99 not found<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- checking for module =E2=80=98libgps &gt;=3D 3.11=E2=80=99<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Package =E2=80=98libgs &gt;=3D 3.11=E2=80=99 not found<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- could NOT find LIBGPS (missing: LIBGPS_LIBRARY_LIBGPS_INCLUDE_DIR)<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- could NOT find LIBERIO (missing: LIBERIO_LIBRARY_LIBERIO_INCLUDE_DIR)<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- could NOT find dpdk (missing: DPDK_INCLUDE_DIR)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- Configuring LIBERIO support=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency E=
NABLE_LIBUHD =3D ON<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency L=
IBERIO_FOUND =3D FALSE<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Disabling LI=
BERIO support.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Override wit=
h =E2=80=93DENABLE_LIBERIO=3DON/OFF<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- Configuring GSPD support=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency E=
NABLE_LIBUHD =3D ON<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency E=
NABLE_GSPD =3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency L=
IBGPS_FOUND =3D FALSE<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Disabling GS=
PD support.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Override wit=
h =E2=80=93DENABLE_E300=3DON/OFF<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- Configuring E300 support=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency E=
NABLE_LIBUHD =3D ON<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Disabling E3=
00 support.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Override wit=
h =E2=80=93DENABLE_GSPD=3DON/OFF<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- Configuring DPDK support=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency E=
NABLE_MPMD =3D ON<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency D=
PDK_FOUND =3D FALSE<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Disabling DP=
DK support.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Override wit=
h =E2=80=93DENABLE_DPDK=3DON/OFF<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
-- Could NOT find UDEV (missing: UDEV_INCLUDE_DIR_UDEV_LIBS)<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
#########################################################<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
# UHD Disabled components<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
#########################################################<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
* LibUHD =E2=80=93 Python API<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
* LIBERIO<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
* GSPD<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
* E300<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
* DPDK<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
I think my problem is with libUHD =E2=80=93 Python API but I=E2=80=99m not =
sure.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">De=C2=A0:</span></b><span la=
ng=3D"EN-US"> Marcus D Leech &lt;</span><a href=3D"mailto:patchvonbraun@gma=
il.com" rel=3D"noreferrer" target=3D"_blank"><span lang=3D"EN-US">patchvonb=
raun@gmail.com</span></a><span lang=3D"EN-US">&gt;
<br>
<b>Envoy=C3=A9=C2=A0:</b> vendredi 25 juin 2021 14:37<br>
<b>=C3=80=C2=A0:</b> COURANT Frederique - Contractor &lt;</span><a href=3D"=
mailto:frederique.courant@external.thalesgroup.com" rel=3D"noreferrer" targ=
et=3D"_blank"><span lang=3D"EN-US">frederique.courant@external.thalesgroup.=
com</span></a><span lang=3D"EN-US">&gt;<br>
<b>Cc=C2=A0:</b> </span><a href=3D"mailto:USRP-users@lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank"><span lang=3D"EN-US">USRP-users@lists.ett=
us.com</span></a><span lang=3D"EN-US">;
</span><a href=3D"mailto:Discuss-gnuradio@gnu.org" rel=3D"noreferrer" targe=
t=3D"_blank"><span lang=3D"EN-US">Discuss-gnuradio@gnu.org</span></a><span =
lang=3D"EN-US"><br>
<b>Objet=C2=A0:</b> Re: [USRP-users] LibUHD - Python API problem (RFNoC not=
 found)<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Could you share the log=
 from CMake? That might tell us why.=C2=A0<span style=3D"font-size:12pt"><u=
></u><u></u></span></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">On Jun 25, 2021, at 1:5=
6 AM, COURANT Frederique - Contractor via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <span style=3D"font-size:12pt;font-family:=
&quot;Times New Roman&quot;,serif">
<u></u><u></u></span></p>
<p class=3D"MsoNormal">Hello users,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to install UHD 3.14.=
0.0 on RedHat 7.5 system, I can=E2=80=99t enabled components LibUHD =E2=80=
=93 Python API. For GNU Radio=E2=80=99s installation I don=E2=80=99t have p=
roblem.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For the install I have follow t=
his tutorials :</span><u></u><u></u></p>
<p><span style=3D"font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &=
quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><a href=3D"https://files.ettus.com/manual_archive/v3.1=
4.0.0/html/page_build_guide.html#build_instructions_unix" rel=3D"noreferrer=
" target=3D"_blank"><span lang=3D"EN-US">https://files.ettus.com/manual_arc=
hive/v3.14.0.0/html/page_build_guide.html#build_instructions_unix</span></a=
><u></u><u></u></p>
<p><span style=3D"font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &=
quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><a href=3D"https://www.gnuradio.org/doc/doxygen-3.7/bu=
ild_guide.html#dependencies" rel=3D"noreferrer" target=3D"_blank"><span lan=
g=3D"EN-US">https://www.gnuradio.org/doc/doxygen-3.7/build_guide.html#depen=
dencies</span></a><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have try to add -DENABLE_PYTH=
ON_API=3DON.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also install python3-dev=
el like it is mentioned at this link :
</span><a href=3D"https://files.ettus.com/manual/page_python.html" rel=3D"n=
oreferrer" target=3D"_blank"><span lang=3D"EN-US">USRP Hardware Driver and =
USRP Manual: Python API (ettus.com)</span></a><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If someone has ever had this pr=
oblem could you explain me how to solve this please, because when I try to =
build my block I cannot find ettus and after if I try to build gr-ettus I c=
annot find RFNoC. So I suppose that
 the problem is LibUHD =E2=80=93 Python API but I not sure. When I launch m=
y flowgraph GNU Radio doesn=E2=80=99t recognize Radio, DDC, DUC and my own =
block that I can=E2=80=99t build.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My program works on Ubuntu 18.0=
4 system with UHD-3.14.0.0 and GNU Radio 3.7.11.1.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:&quot;Time=
s New Roman&quot;,serif">_______________________________________________<br=
>
USRP-users mailing list -- </span><a href=3D"mailto:usrp-users@lists.ettus.=
com" rel=3D"noreferrer" target=3D"_blank"><span style=3D"font-size:12pt;fon=
t-family:&quot;Times New Roman&quot;,serif">usrp-users@lists.ettus.com</spa=
n></a><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;=
,serif"><br>
To unsubscribe send an email to </span><a href=3D"mailto:usrp-users-leave@l=
ists.ettus.com" rel=3D"noreferrer" target=3D"_blank"><span style=3D"font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif">usrp-users-leave@lis=
ts.ettus.com</span></a><span style=3D"font-size:12pt;font-family:&quot;Time=
s New Roman&quot;,serif"><u></u><u></u></span></p>
</div>
</blockquote>
</div>


</div></blockquote></div></div>____________________________________________=
___<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--00000000000080948e05c5d95a3b--

--===============5413271175860134196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5413271175860134196==--
