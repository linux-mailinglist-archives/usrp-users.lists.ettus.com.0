Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09923B8F653
	for <lists+usrp-users@lfdr.de>; Mon, 22 Sep 2025 10:03:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D84453861BC
	for <lists+usrp-users@lfdr.de>; Mon, 22 Sep 2025 04:03:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758528190; bh=tAlfq2s11KAHZPDWCRTyhrgKvnQ9lvx/g2lKa+DtCmY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OjYtSyd02XUBsjWDByA/IvALw14mLXPJdQvVIiSJKV0OH+KPNeIsmNI4kfLsbYpMe
	 WQnZXspXlrDPOemL6Rwwmf/9HOS790MxQ+gqUpWFxELDQ+xr0wr3b39GhxYeBDnP1z
	 xpMIAkqEUC5uTtCnLGhP/p6nh+wTU78r+i5OK7hyHmR8DWLR1KSv8bbhg+tHwEcD/Q
	 ABOHJkH9Vi/kr2/0fVx/CgjkA7akEu/XFGPfkNVZF2tX2ummGD6ZJy4FZ0Q3lGKUTB
	 TIU1IKdieJCqql0uEJRP28DXAo2OEORYsPnFrPQLuneXGXajXkx10+91FGiY1zLec4
	 13lwTNorU+Z/Q==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AE9138617D
	for <usrp-users@lists.ettus.com>; Mon, 22 Sep 2025 04:02:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="WKCOBQHO";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-61cc281171cso6243048a12.0
        for <usrp-users@lists.ettus.com>; Mon, 22 Sep 2025 01:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1758528151; x=1759132951; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yFNVJecJt2Efu9QZg6+Zz86596Um1cxTWoXiaFcYxq8=;
        b=WKCOBQHOVmhQg6l7L4bmK02nM/YoFAXo6i4I9nd/2nIkrP4Lpdl1E/uMpR1C1qIeqe
         +DCe26fDSdOUPoD6zqtgqrF+Tkb+KgVhiCrC2wqmkLDzJx9Xc55Mn2wxUSwzjz5zL6tK
         5zh/HOVP1fqcQBocwP6QCrZ8FFEb5VcgAQekrOCYO27FEV6al7cDoczKgEU/zLR0SI8u
         H0hqHuX0zSGOpjCEqhDkJqUj2+JkkdSaRBv69AWTj2gqj0P/xgV+5cCs/zFSZmJjuAOC
         Nnf/BI1K8wavBbhDLCZyWLq0qWQaohJQl7bZmtprv3mHKYBarsB+5qtgdg/3yUbIDDXc
         xlcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758528151; x=1759132951;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yFNVJecJt2Efu9QZg6+Zz86596Um1cxTWoXiaFcYxq8=;
        b=ZYQEAPw4exBUG4oopL9fRliNJODxWPSPesuYtp9yno5Y+mtz6vroAFofYE3Neard4x
         fbmdRPB62HPvIPen69tJQ9Gxuh4twDJsYhnvaWSODE595fCJ1bHZYUfXoNnq0F9e4fuz
         DM+mIAMSELohbue/AD+O4XKTadsx2O3wNYLxBmhqhrGMrAVmr2HZ3Qig2LGvoUSWhKzr
         dGb2LqtZPB7PMRC7ifLv477jio1u8dBnLkAcOOGhZgRhMzZt/DbjXPuxMA74eku1uWCa
         1y61adKISVsIJz3fDDZnHQjYcvDymD2guzuNo5fzP60NrdHyMJMee1eq4zTFO3j5d49m
         BGgA==
X-Gm-Message-State: AOJu0YwRssyupdhJDAnhiWQgIR7+hK50dHU534/hx99NfHi+73qCGcMM
	Ox/b9Sv2p9MO0geuZSmEHR+aJTOT6gu06OQt4aRyx8O8pJcIQ67fAGypLLwqFh2JxHinkOha/K1
	//RjCQs07SMPJMM/+mPS+iOzFCLu3YAv8wRQ6WGHfJQELixvv4ovFsaCEEw==
X-Gm-Gg: ASbGncvMd4JJRSOF/w9bEdFVe/igla1aYeox1ZToFMPzbddpKPgzsOHLZIsUQfYMDTB
	MBMTp2hyYZhzg0nvOqWE1+aoEyQwYcx3bWctQQYFoGp41IHiz/D0F70KqbGO4bTtCY5e83tEEns
	Kz/YfTp5YOJRfxT7ZvlMkFqs53jmdcRDXmviqExA8zEG2xnU7pMK1GZks82TmXu9KLksW5uqgow
	E9V5wP2dDI5+8wsyg9EIHBZcSLDV9r8EXWoHPqSX6wCjLkZ
X-Google-Smtp-Source: AGHT+IHyvRZuPlM8hOoNtFtN3ObIEa0aVO+8WPIkIcl3Hc0WtQcD+XT5Q7NNwJi/hAIPWnPwvKLM+F0YpbdtGoqRth4=
X-Received: by 2002:a05:6402:46da:b0:632:466d:5d10 with SMTP id
 4fb4d7f45d1cf-632467ca31amr4917206a12.20.1758528151076; Mon, 22 Sep 2025
 01:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY@lists.ettus.com>
In-Reply-To: <G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 22 Sep 2025 10:02:20 +0200
X-Gm-Features: AS18NWDg1jTyoFue_F2eidqu3uiFvNBH3CMSh5iM0_JWNptZH_5GMou9Y8i_9q8
Message-ID: <CAFOi1A61wB3Y58BXT_z=5dN4eudWw6ymQEtkdC0uf6-opG753g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZWPDC26SZVUKUDKNRQPPEIBYYNFQNREP
X-Message-ID-Hash: ZWPDC26SZVUKUDKNRQPPEIBYYNFQNREP
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWPDC26SZVUKUDKNRQPPEIBYYNFQNREP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7426069210103869123=="

--===============7426069210103869123==
Content-Type: multipart/alternative; boundary="000000000000c5ce64063f5f3dad"

--000000000000c5ce64063f5f3dad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Peter,

welcome to the world of RFNoC. You did almost everything right. A couple of
notes:

- The statement about SEPs being automatically corrected predates the
feature of providing a crossbar matrix. If there was no crossbar matrix,
then this would autoconnect everything.
- On an FPGA, there is limited hardware to implement all the logic. The
"fuller" the design, the less likely the FPGA build tool (Vivado) will be
able to generate a valid design. That's when you get the timing error. The
x440_X4_1600 image is already pretty full, so I'm not surprised it fails.
- You can still try and make it work by finding some optimizations. Here
are options:
  - You can statically connect the FFT instead of dynamically. That will
reduce the size of the crossbar and require one less stream endpoint.
  - You can try and turn more 1s in the crossbar routes matrix into zeros.
The reason we have this matrix in the first place is to exactly solve this
problem (not enough resources on the FPGA).
  - You can also try and kick off several builds and hope you get lucky
(but only if the design is not too full).
  - If necessary, you might have to remove some blocks (do you need the
replay blocks, for example?)

I hope this gets you unstuck.

--M

On Sun, Sep 21, 2025 at 10:38=E2=80=AFPM Peter Gu via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> to try out RFNoC on my X440 under UHD 4.8 I followed this instruction:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
> Building the default FPGA Image via x440_X4_1600_rfnoc_image_core.yml
> works.
>
> But when I try to continue with =E2=80=9CExample: Adding an FFT Block=E2=
=80=9C it doesn=E2=80=99t
> work anymore.
>
> 1.) Although the tutorial states that =E2=80=9CAll SEPs are automatically
> connected to the CHDR crossbar, so this effectively connects the FFT bloc=
k
> to the crossbar, allowing it to communicate with anything on the RFNoC
> network.=E2=80=9C, I will get an error that it needs an 10x10 matrix for
> crossbar_routes. So I fixed this with the following matrix:
>
> crossbar_routes:
>
> # eth0 eth2 dma ep1 ep3
>
> # eth1 eth3 ep0 ep2
>
> - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0)
>
> - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1)
>
> - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2)
>
> - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1 ] # eth3 (QSFP Port 0, Lane 3)
>
> - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1 ] # dma
>
> - [ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 ] # ep0 (radio0.0)
>
> - [ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 ] # ep1 (radio1.0)
>
> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep2 (replay0.0)
>
> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep3 (replay1.0)
>
> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep3 (fft)
>
>
> 2) The image build fails after roughly 7 hours, with the error:
>
> CRITICAL WARNING: [Route 35-39] The design did not meet timing
> requirements. Please run report_timing_summary for detailed reports.
>
>
> Do you know where I did a mistake in understanding the tutorial?
>
>
> Thanks!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c5ce64063f5f3dad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Peter,</div><div><br></div><div>welcome to the world =
of RFNoC. You did almost everything right. A couple of notes:</div><div><br=
></div><div>- The statement about SEPs being automatically corrected predat=
es=C2=A0the feature of providing a crossbar matrix. If there was no crossba=
r matrix,=C2=A0 then this would autoconnect everything.</div><div>- On an F=
PGA, there is limited hardware to implement all the logic. The &quot;fuller=
&quot; the design, the less likely the FPGA build tool (Vivado) will be abl=
e to generate a valid design. That&#39;s when you get the timing error. The=
 x440_X4_1600 image is already pretty full, so I&#39;m not surprised it fai=
ls.</div><div>- You can still try and make it work by finding some optimiza=
tions. Here are options:</div><div>=C2=A0 - You can statically connect the =
FFT instead of dynamically. That will reduce the size of the crossbar and r=
equire one less stream endpoint.</div><div>=C2=A0 - You can try and turn mo=
re 1s in the crossbar routes matrix into zeros. The reason we have this mat=
rix in the first place is to exactly solve this problem (not enough resourc=
es on the FPGA).</div><div>=C2=A0 - You can also try and kick off several b=
uilds and hope you get lucky (but only if the design is not too full).</div=
><div>=C2=A0 - If necessary, you might have to remove some blocks (do you n=
eed the replay blocks, for example?)</div><div><br></div><div>I hope this g=
ets you unstuck.</div><div><br></div><div>--M</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, Sep 21, 2025 at 10:38=E2=80=AFPM Peter Gu via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,<=
/p><p>to try out RFNoC on my X440 under UHD 4.8 I followed this instruction=
:</p><p><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4=
.0" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UH=
D_4.0</a></p><p>Building the default FPGA Image via x440_X4_1600_rfnoc_imag=
e_core.yml works.</p><p>But when I try to continue with =E2=80=9CExample: A=
dding an FFT Block=E2=80=9C it doesn=E2=80=99t work anymore.</p><p>1.) Alth=
ough the tutorial states that =E2=80=9CAll SEPs are automatically connected=
 to the CHDR crossbar, so this effectively connects the FFT block to the cr=
ossbar, allowing it to communicate with anything on the RFNoC network.=E2=
=80=9C, I will get an error that it needs an 10x10 matrix for crossbar_rout=
es. So I fixed this with the following matrix:</p><p>crossbar_routes:</p><p=
># eth0 eth2 dma ep1 ep3</p><p># eth1 eth3 ep0 ep2</p><p> - [ 1, 0, 0, 0, 0=
, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0)</p><p> - [ 0, 1, 0, 0, 0, 1,=
 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1)</p><p> - [ 0, 0, 1, 0, 0, 1, 1, =
1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2)</p><p> - [ 0, 0, 0, 1, 0, 1, 1, 1, 1=
, 1 ] # eth3 (QSFP Port 0, Lane 3)</p><p> - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1 =
] # dma</p><p> - [ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 ] # ep0 (radio0.0)</p><p> -=
 [ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 ] # ep1 (radio1.0)</p><p> - [ 1, 1, 1, 1, 1=
, 1, 1, 0, 0, 0 ] # ep2 (replay0.0)</p><p> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0=
 ] # ep3 (replay1.0)</p><p> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep3 (fft)<=
/p><p><br></p><p>2) The image build fails after roughly 7 hours, with the e=
rror: </p><p>CRITICAL WARNING: [Route 35-39] The design did not meet timing=
 requirements. Please run report_timing_summary for detailed reports.</p><p=
><br></p><p>Do you know where I did a mistake in understanding the tutorial=
?</p><p><br></p><p>Thanks!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c5ce64063f5f3dad--

--===============7426069210103869123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7426069210103869123==--
