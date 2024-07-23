Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E84E939E1A
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 11:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A46638580A
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 05:41:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721727667; bh=xSRelUbtizzHlYZ+wmHmjLEVeh1RcduLph9firYIUww=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JrbhBNh2nNECAGkKBxOcbG8xImHnpQpu9ml+vx6tMCFh2AKRDqA1MQscCr4EqI7Th
	 cMHv7xaiwVoPtCX5yxOEahDFZ6Nh2m670nTrfCdGNvoe52Wetuq1boZS24wNiCH5NZ
	 8Or4UTCW075SJTz05VLWbj3YIfPUio5IoQb7TQp1r2NFxZyl6cyjkvOMFnjTex6vPp
	 9k8wpzPkf2S3kA+29kiD2yBHY0rA+G7yvL23D0UU1Y9o0Dws3Qx79dxogEZfsmDW5X
	 4mgyT5UxojFmLvfcP7WpCcWEnA/zLJho4guzYSV0UW3E1lDFKrorn4FEgIGQwAS3RV
	 ndHZtFwAXvb8A==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A6DBD3857DC
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 05:40:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="NTb6/CXd";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a77bf336171so106635766b.1
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 02:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721727641; x=1722332441; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/kGUn/XDXEiqnyW/r0ChjBuTP4x+LXkpy8PTjQh/dJw=;
        b=NTb6/CXdljGJreupwKmfj3fOxNx+Z/ZA0D0wrkVqfSBQ5OeUpFjNxqqUI0qRAWnJ46
         /4mWJRD/cdP+sbj4AAnedjmIdpq+QK3dqoyFjOgCjQ7+V0I8LZexEhy4mn/j+j2Bq8h+
         PH1sNQxJhvZ2koYrZnL+dYZAJvi7J+fKZoy1esK5Tb4sGTieFulTkYQNN/OzqeD4i1Br
         8o8UQwOTeSb9JLskS7ul/ZOdOcqVJqT5NJgUNFaDJYWP+u1tdUDrg2HWpfn7WEwevMGY
         eRpiFDMV2vG2sRBQhwU1En0VrPiay7tg+eJzJY579o+bfykbQCpJ/3+/IXphq1IZQCOm
         SRaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721727641; x=1722332441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/kGUn/XDXEiqnyW/r0ChjBuTP4x+LXkpy8PTjQh/dJw=;
        b=aHRTGMS6lmO5sb4kAHim8m+vF0P3ExtMXuE54UF6+8H7xXVVjqV6GyOzDFl4QwiXST
         v0eaXpLs18PY9UQ82zmtmRuLJaVi6LQ9rjM+RCvBYAjBkZ5NhL4pwDOOiyMoSSSuCvA/
         YT6Pnq+ZNrEqZeB2bS3hx7P8fwHBhlYYlwO7SKFHM3T8CYqK9i182GsniOUN9o1wXZEF
         KAomu9YsybyCaD1U6fiuLFpm3KqbtlH3Qgf/Gv3fGuQDZAAIh+bTDp7wQMxXoO62Nxzu
         CPJ1eJDbYi7llTb8MRrtHmOY2cSDyRONzPhTrei5NyOjvp0XXPCN1XTuc35vQsF8E1dI
         7oMA==
X-Gm-Message-State: AOJu0YwbkME8CvFoo9V1VYjndCXwO2vLzwNsHmHultKzu/204MQIg1dL
	AjeACLGfTe6/cFJdTzporZCwYHy7P0tiWMndcrqeTStLjgBwcfi4g5J39prbb4r+vWBgZWx5ioK
	2YqsvN0l6YV8PBcpCzHDINihWXQUdOgHIoA4T16d0VKmZatR+bos=
X-Google-Smtp-Source: AGHT+IFqnFYzLmDXr6JPTUzgb7+zxytoV7mliCBKfe5ApMyPRZtHdujLtmh1ThpOpkp3vTcevkvjVd9I/VSzrWSwdKw=
X-Received: by 2002:a17:907:7d8e:b0:a72:5f3f:27a2 with SMTP id
 a640c23a62f3a-a7a9438a14cmr164547366b.26.1721727641452; Tue, 23 Jul 2024
 02:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <6e8798070c1e44c9a1e9ad901827263c@hhi.fraunhofer.de>
In-Reply-To: <6e8798070c1e44c9a1e9ad901827263c@hhi.fraunhofer.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 23 Jul 2024 11:40:30 +0200
Message-ID: <CAFOi1A7M-4dZ39qTGMLcft2k+-dg6cH_2XDkp6e9JC8UuQhB6A@mail.gmail.com>
To: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
Message-ID-Hash: HYLPF6S5E2D2OLRS2JUOMCEBCESNFVIO
X-Message-ID-Hash: HYLPF6S5E2D2OLRS2JUOMCEBCESNFVIO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RF-DAC Distortions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYLPF6S5E2D2OLRS2JUOMCEBCESNFVIO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3463224989137167356=="

--===============3463224989137167356==
Content-Type: multipart/alternative; boundary="000000000000781b1a061de6f47f"

--000000000000781b1a061de6f47f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It depends on the frequency you chose. UHD will switch between modes based
on the center frequency you choose (and the DAC rate).

--M

On Mon, Jul 22, 2024 at 6:13=E2=80=AFPM Kaya, Altug <altug.kaya@hhi.fraunho=
fer.de>
wrote:

> Dear USRP Mailing List Members,
>
>
>
> I would like to design a RF Front-End for the X440. I will limit the
> operations of the receiver part to Nyquist Zone 1&2 by bandpass filters a=
nd
> converter rate selection. However, I got confused in the transmitter side
> as I couldn=E2=80=99t determine which RF-DAC mode (
> https://docs.amd.com/r/en-US/pg269-rf-data-converter/RF-DAC-Nyquist-Zone-=
Operation)
> do the UHD examples use? If they are using Normal Mode, I will design IF
> stages according to Nyquist Zone 1. If they are using Mix-Mode, I will
> design them according to Nyquist Zone 2.
>
>
>
> Is it possible to know which RF-DAC Mode do the UHD examples (
> https://github.com/EttusResearch/uhd/tree/master/host/examples) use
> without programming the FPGA by Vivado IDE? I am planning to use the
> example called =E2=80=9Crfnoc_replay_samples_from_file=E2=80=9D, however,=
 I am asking the
> question for the general use as well.
>
>
>
> Thank you for your time and effort.
>
>
>
> Best regards,
>
> Altug KAYA
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000781b1a061de6f47f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It depends on the frequency you chose. UHD will switc=
h between modes based on the center frequency you choose (and the DAC rate)=
.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 22, 2024 at 6:13=E2=80=
=AFPM Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">altug=
.kaya@hhi.fraunhofer.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div class=3D"msg5804693949553938452">





<div lang=3D"EN-US">
<div class=3D"m_5804693949553938452WordSection1">
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I would like to design a RF Front-End for the X440. =
I will limit the operations of the receiver part to Nyquist Zone 1&amp;2 by=
 bandpass filters and converter rate selection. However, I got confused in =
the transmitter side as I couldn=E2=80=99t determine
 which RF-DAC mode (<a href=3D"https://docs.amd.com/r/en-US/pg269-rf-data-c=
onverter/RF-DAC-Nyquist-Zone-Operation" target=3D"_blank">https://docs.amd.=
com/r/en-US/pg269-rf-data-converter/RF-DAC-Nyquist-Zone-Operation</a>) do t=
he UHD examples use? If they are using Normal Mode, I will design IF stages=
 according to Nyquist Zone 1. If they are using Mix-Mode, I will design the=
m
 according to Nyquist Zone 2. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is it possible to know which RF-DAC Mode do the UHD =
examples (<a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/=
examples" target=3D"_blank">https://github.com/EttusResearch/uhd/tree/maste=
r/host/examples</a>) use without programming the FPGA by Vivado IDE? I am p=
lanning to use the example called =E2=80=9Crfnoc_replay_samples_from_file=
=E2=80=9D,
 however, I am asking the question for the general use as well.<u></u><u></=
u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you for your time and effort.<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Altug KAYA<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000781b1a061de6f47f--

--===============3463224989137167356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3463224989137167356==--
