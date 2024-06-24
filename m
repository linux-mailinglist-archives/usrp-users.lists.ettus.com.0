Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB524914DB5
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jun 2024 14:53:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BC0B384849
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jun 2024 08:53:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719233592; bh=s9HSE1m46yBvsEC3Z6tSlAg84xM3w2XBmhu9d1SXzb0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MoxAawRA8RZgPAKPBYN2MqRGrJhnuTJ3GMhMUGI9LFHOjVeWDSE7dVcxw1jurqEaZ
	 4Jw2UDx1Yuz30P0pAvaBurE19de/PrIkeem4w0bUg0O+dZ16dqWErsZc7nxYzwzjKC
	 9CU7cPMer8MXCkTvgOQq1UsM5A8KZG/jrvhsG03MHj40w1/St8Nt/KygZ1q/FuwHnL
	 TVVS9tjP51jzxJ9WmmuKW8vFv68Fg1f6wUQwePdaGXZjpjnaaKM5dKXeIUGPGQVmc3
	 hzs/s2C6wed5G211UZNI/dWjHZMfCLD5YBB57NbOfYeqpmT29cLrZvMihf/0gzyZU4
	 3sn6V3si09B5A==
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 0008B381074
	for <usrp-users@lists.ettus.com>; Mon, 24 Jun 2024 08:52:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oTPISnhP";
	dkim-atps=neutral
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42189d3c7efso47050945e9.2
        for <usrp-users@lists.ettus.com>; Mon, 24 Jun 2024 05:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719233567; x=1719838367; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V07NzWEcgcaNH6O95/uQFu/iQZaP9hIe4TzjkT6VlT8=;
        b=oTPISnhPNf5O/hphGe0pLXUJbuI0mM0L3+j/LGTKO+p2K+OIIdkeXj9dAQB1uw7Sju
         5Gy84f4/fi73Dx0jCoDbG+vY6UX1huGcqRT7KjTPoRoUF+gTr+YF3mGEr1/hmLVihbDh
         cWqlf5w95pOqU2T7ubnhstGw7E47ziEmBs5M7gSfQqKyW2hpBFx+WmUnH8eG0mRIzv3t
         f7LQp2h3Z09Hg2llP3b/6qoc5PghFW1R7JQb0xPkuuZ1wbfMZo2s6A6ucod/V+h9/Kzh
         hxrICt4KrMtaoqsizNdYH/+8O+sZ+62QGrtS9k53TITY6f0P40OuvwMRSNLcJ/1qIseY
         DfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719233567; x=1719838367;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V07NzWEcgcaNH6O95/uQFu/iQZaP9hIe4TzjkT6VlT8=;
        b=o7uq1RF8o2pfG8Khv1p5/sloV6zX0tDGY8zBJp6FAoX8g1ho3PzzZHOaGHSef4y/Om
         +oVrN3lHUUFol/558fOu6w0hj8QhC+g64VO1h33OFlDp6hAPQQz6PKZ/eD3jkSExkUb6
         t9t/WNsCFN3zqGpokZNleh2/Vw2bBCrxBmyQX65XejnREMb7cfPKaRFEQze7LbNPRYOi
         19zoYO1Z4H63fNkUJsjtb92EYc46shFReAFcb0t0o26CGSCo5E2B2GPsfUsMMfz3OtIA
         +Z094yMyZPqgw+NfiDcz+MNqf+6QJj/WLv+u0mrE2aFSVs7ahWwyQmbkLhwTITcjXeaU
         Ku6g==
X-Gm-Message-State: AOJu0YxYJzH/5B2HWPVW98Y1+fvdPreSNj/JRt+MiJcOw1hRCz1fVFIK
	qJ2RH6E9320Y6YqTxpaEKL4HPcQWG/GTRgrOqZ03s+sf9/iQPOAOvQ/OG9fYTEDFLkXAvGYLa/8
	3Aei83YllOolZVX3pYiu2mTQjV37RMwEMzDWgooeK
X-Google-Smtp-Source: AGHT+IFgneDUFjI98gnA5le1FINdmfv7eVqUHLaKgRzOACpePEQPaRP4PTR96G/OrIZPE2Lt6iR2LPSPRPHb9ajJPjA=
X-Received: by 2002:a5d:4523:0:b0:362:721a:fa2 with SMTP id
 ffacd0b85a97d-366e94d4a00mr3562467f8f.30.1719233566661; Mon, 24 Jun 2024
 05:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <5qs74viLerWx1zE8iCkcy6gUZgGMLR3B4Lrfpmxw8@lists.ettus.com>
In-Reply-To: <5qs74viLerWx1zE8iCkcy6gUZgGMLR3B4Lrfpmxw8@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 24 Jun 2024 14:52:35 +0200
Message-ID: <CAFOi1A7Xh1pCvUVPbxRkvnnm30Q7Gi01tqAhQ5tVi0MJ4WKYAQ@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: CP66Z2RR75TPRK35PZ4LJ7VQ6BRVTBYI
X-Message-ID-Hash: CP66Z2RR75TPRK35PZ4LJ7VQ6BRVTBYI
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CP66Z2RR75TPRK35PZ4LJ7VQ6BRVTBYI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1397229213641023621=="

--===============1397229213641023621==
Content-Type: multipart/alternative; boundary="00000000000006fe0d061ba24253"

--00000000000006fe0d061ba24253
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

thanks a lot for posting your solution! We will need to go back and verify
that this example works on all USRPs, not just X310.

--M

On Mon, Jun 17, 2024 at 7:24=E2=80=AFPM <perper@o2.pl> wrote:

> Ok. I know what was stopping the RFNoC flowgraph after correction of the
> clock. I was setting SPP (samples-per-packet) to a value that was somehow
> wrong for this case. After removing that command-line parameter, the
> loopback through =E2=80=98Gain=E2=80=99 block started to work.
>
> I=E2=80=99m posting my changed =E2=80=98Gain=E2=80=99 block, that is cloc=
ked with =E2=80=98ce=E2=80=99 clock, in
> case anyone is interested.
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000006fe0d061ba24253
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Piotr,</div><div><br></div><div>thanks a lot for p=
osting your solution! We will need to go back and verify that this example =
works on all USRPs, not just X310.</div><div><br></div><div>--M<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Jun 17, 2024 at 7:24=E2=80=AFPM &lt;<a href=3D"mailto:perper@o2.pl">p=
erper@o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Ok. I know what was stopping the RFNoC flowgraph after correc=
tion of the clock. I was setting SPP (samples-per-packet) to a value that w=
as somehow wrong for this case. After removing that command-line parameter,=
 the loopback through =E2=80=98Gain=E2=80=99 block started to work.</p><p>I=
=E2=80=99m posting my changed =E2=80=98Gain=E2=80=99 block, that is clocked=
 with =E2=80=98ce=E2=80=99 clock, in case anyone is interested.</p><p>Best =
Regards,<br>Piotr Krysik</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000006fe0d061ba24253--

--===============1397229213641023621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1397229213641023621==--
