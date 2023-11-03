Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 915D27DFDD1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Nov 2023 02:57:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1612638499E
	for <lists+usrp-users@lfdr.de>; Thu,  2 Nov 2023 21:57:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698976677; bh=/2CptY3LGUDi8nZehaJasiC3jwhPV+bSDZcaxSRamw4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CFL4UrKIRrPWl6o1J9D9vFgdhojARvp2TUNe8itZtwJldwp+0PI42ZxKfRYL7Ckke
	 cFH0Ph9ZzsW39H47Ec+U1Bsf9duqKk5jFQE6yuldkP7UTdm0oUKImflrNLGOGsznDF
	 dbbyJFht+5/8O+Vsk63GYlP3j2kt0RZhJ/XrCYLBYfYjrp9qb9/18n1kJ7mQHmPByr
	 DXSwds3r0PmAQacAyxN4kYXywDzufjbMs1005dTYSyuBROqo1GN8kzWiwzH7cxVcne
	 uR8lR1apnBKeNKJrYtcksyf6MZjqNB4caaqFma70ZtWxjD3QBeS2GDYF0Hog1gwZ+H
	 fAaQLCCk6CoBQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F588383BCE
	for <usrp-users@lists.ettus.com>; Thu,  2 Nov 2023 21:57:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="WI38DUBs";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-542d654d03cso2511581a12.1
        for <usrp-users@lists.ettus.com>; Thu, 02 Nov 2023 18:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1698976621; x=1699581421; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zYpc+lmz3lIRoIhQptrjhcoAu/BLGGWEO5PBlxoGrgQ=;
        b=WI38DUBsV3ZBzDCm5ymf4bbHodOhMBLz+ujKM4a145VCg6te3VtRhaApdDYAVrh1li
         ijTn6BqiPsKjfNjSFcifaVh6V2Oap3/ag8XidpbUFfCERSc3GBkcmg7HD5Dn0yh7qUwA
         FuUMUVFS54Pm1LAMgZG6ADG1ZR3Gc/5p5syviWMJO9ApDD1Mp8+gSP1PirhoZq0aAp+0
         5JrlfHIzHOOfN+7oZ/CJ4qKJY3yF0eR74B6LgjYhxCUz3EBf9MuJ/eJqgrVWJ8rJCSts
         Cj2vw+Sw0jIokk7aYHOgbXsSn84RlAx3c6OzsvABld2xKLNLA7lvR5gv03b3Ag874BZS
         aV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698976621; x=1699581421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYpc+lmz3lIRoIhQptrjhcoAu/BLGGWEO5PBlxoGrgQ=;
        b=JOfuQJrnUpT+cFaIxL+HDv04XbELtPfoUvhS574kH7hXnCu23j/lc9yWVlJAEy7Hfp
         YsIybtNeFt4SBaKPHStqAnanqXxqmz92/c2lDR8rCBYhUZfeUzjbmIYHoeh1NEzwaz/n
         xxHjVhc30R2Zv7n27YSWSqSrok1UtPlyWVhicl1T4EP8CAOsCJDNYAIDOGK5Fk53EhJw
         f5b3NcyXryWjBm4p437zL35pJkLxyzKh3Q99HJ9/3RixVH9QSfgJzYHuymCULwHlf0MH
         n/11WG1Y5ndnqmXzb4twK79KLYRx1CCp3yW70yGeHhpzngAEYlFWatJUgAKn2PKSxCYa
         qIcA==
X-Gm-Message-State: AOJu0Yy5FAiAst/1bhUd4UjgaRy3zERYJcOxilrujw6t22SUSSIJckn7
	Fzyh8Tys2fr//LBJHV7uog/zjcs1WEcbZvX0a60aotjv
X-Google-Smtp-Source: AGHT+IFlwTcWbzGGra6vvkOsXgmkngg9lHoel7fksYOZb+HHnJAV/fN8FpNEmuqz4hgTiKI+HUE7QGJlil5qcuwWmdY=
X-Received: by 2002:a17:907:968c:b0:9be:2469:bdf5 with SMTP id
 hd12-20020a170907968c00b009be2469bdf5mr6074224ejc.15.1698976621166; Thu, 02
 Nov 2023 18:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7A@SA1PR09MB9275.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB92757C9D9BC4C0FE1C24AFB792A7A@SA1PR09MB9275.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 2 Nov 2023 20:56:44 -0500
Message-ID: <CAFche=h1ps0GMDO=PTkYFF2FP4GYZ+J5ciiZz6d4NoSXQcjUgg@mail.gmail.com>
To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Message-ID-Hash: PBWYZZMOZUJQ7KFGGEFJA5SI5CDAH6F2
X-Message-ID-Hash: PBWYZZMOZUJQ7KFGGEFJA5SI5CDAH6F2
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC/MPM: No valid clock index given (63)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBWYZZMOZUJQ7KFGGEFJA5SI5CDAH6F2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4843765732053059793=="

--===============4843765732053059793==
Content-Type: multipart/alternative; boundary="000000000000fc9b15060935d175"

--000000000000fc9b15060935d175
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for reporting Zach. This will be fixed soon.

Thanks,

Wade

On Wed, Nov 1, 2023 at 3:49=E2=80=AFPM Rohde, Zach (US 333G) via USRP-users=
 <
usrp-users@lists.ettus.com> wrote:

> I am trying the new UHD 4.6 X440 X4_200 image and I am running into this
> error after updating the host UHD and flashing the USRP FPGA and FW:
>
>
>
> [ERROR] [MPMD::MB_IFACE] Automatic clock detection requested, but no vali=
d
> clock index given (63). Make sure FPGA bitfile is up to date!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RuntimeError: NotImplementedError: Automatic clock detection requested, b=
ut
> no valid clock index given (63). Make sure FPGA bitfile is up to date!
>
>
>
> This only happens on the X4_200 image in UHD 4.6, it does not happen with
> the X4_400 image.
>
>
>
> My best guess after scanning through the changes is this is the offending
> commit:
>
>
> https://github.com/EttusResearch/uhd/commit/f215af2ccde6420b685b4ca493c8b=
d71d28781cb
>
> Looks like x440_200_rfnoc_image_core.yml
> <https://github.com/EttusResearch/uhd/blob/UHD-4.6/fpga/usrp3/top/x400/x4=
40_200_rfnoc_image_core.yml>
> was not updated with the new =E2=80=9Cctrl_clock: _device_.rfnoc_ctrl=E2=
=80=9D and
> =E2=80=9Ctimebase_clock: _device_.radio=E2=80=9D parameters for some reas=
on. This makes the
> generated Verilog not possess the =E2=80=9C.CTRL_CLK_IDX        (1)=E2=80=
=9D and
> =E2=80=9C.TB_CLK_IDX          (4)=E2=80=9D variables. I believe that is w=
hat then causes
> mpmd_mb_iface.cpp
> <https://github.com/EttusResearch/uhd/blob/c2dd6c1d9989289fc78820d6a70994=
c3a3a73dc1/host/lib/usrp/mpmd/mpmd_mb_iface.cpp#L178>
> to error during runtime.
>
>
>
> Thanks,
>
> Zach
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fc9b15060935d175
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for reporting Zach. This will be fixed soon.</=
div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Nov 1, 2023 at 3:49=E2=80=AFPM Rohde, Zach (US 333G) via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv class=3D"msg6601935264411705829">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-1032049923996145445WordSection1">
<p class=3D"MsoNormal">I am trying the new UHD 4.6 X440 X4_200 image and I =
am running into this error after updating the host UHD and flashing the USR=
P FPGA and FW:</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">[ERROR] [MPMD::MB_IFACE] Automatic clock detection r=
equested, but no valid clock index given (63). Make sure FPGA bitfile is up=
 to date!</p>
<p class=3D"MsoNormal">[ERROR] [RFNOC::GRAPH] Caught exception while initia=
lizing graph: RuntimeError: NotImplementedError: Automatic clock detection =
requested, but no valid clock index given (63). Make sure FPGA bitfile is u=
p to date!</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This only happens on the X4_200 image in UHD 4.6, it=
 does not happen with the X4_400 image.</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My best guess after scanning through the changes is =
this is the offending commit:</p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/comm=
it/f215af2ccde6420b685b4ca493c8bd71d28781cb" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/commit/f215af2ccde6420b685b4ca493c8bd71d28781cb</a=
></p>
<p class=3D"MsoNormal">Looks like <a href=3D"https://github.com/EttusResear=
ch/uhd/blob/UHD-4.6/fpga/usrp3/top/x400/x440_200_rfnoc_image_core.yml" targ=
et=3D"_blank">
x440_200_rfnoc_image_core.yml</a> was not updated with the new =E2=80=9Cctr=
l_clock: _device_.rfnoc_ctrl=E2=80=9D and =E2=80=9Ctimebase_clock: _device_=
.radio=E2=80=9D parameters for some reason. This makes the generated Verilo=
g not possess the =E2=80=9C.CTRL_CLK_IDX=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (1)=E2=80=9D and =E2=80=9C.TB_CLK_IDX=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
 (4)=E2=80=9D variables. I believe that is what then causes <span class=3D"=
m_-1032049923996145445truncate"><a href=3D"https://github.com/EttusResearch=
/uhd/blob/c2dd6c1d9989289fc78820d6a70994c3a3a73dc1/host/lib/usrp/mpmd/mpmd_=
mb_iface.cpp#L178" title=3D"host/lib/usrp/mpmd/mpmd_mb_iface.cpp" target=3D=
"_blank">mpmd_mb_iface.cpp</a>
 to error during runtime.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-1032049923996145445truncate"><u></=
u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-1032049923996145445truncate">Thank=
s,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-1032049923996145445truncate">Zach<=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000fc9b15060935d175--

--===============4843765732053059793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4843765732053059793==--
