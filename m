Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7857186CFC9
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 17:56:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CF62385077
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 11:56:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709225764; bh=eKonDodgQFJNjoySgX/ajylelpVJU/iQWrn6dKeD/88=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=RR12knDR+ss/QhuTHXZkH2wazjczB7g0xI+WWyTR1sY5FURwaJM6c6Oh/rrjV5dOG
	 f++Ls83NVIYLHMowLahakscbAJfiQe6WXgNkhfOcUeTP66LftdBvEzbpKiNq24u9IU
	 lBqo4KITKcWbLZg1yKrQNJzTI7qYu8Mi+2EpaMoRLexPcB2TcP+TpILDL705zYXOu3
	 B511h80Ar8nKMje8YF5qGCoLxw15OM5R1Sjq/BtRrKkODMEhGghTjuxfpZ4pOuXAaU
	 Sgn5wkNdEY3aVX0i/Kns/APuKBKclWwcwZ3kwjpJQhW1qu4b3We3kOaMND9lgi8yM8
	 GvhRg1QHSktCg==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id BCBFA384FDF
	for <usrp-users@lists.ettus.com>; Thu, 29 Feb 2024 11:55:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NYY90mw2";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a3fb8b0b7acso174476166b.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Feb 2024 08:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1709225727; x=1709830527; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n/KkPxmk845L1vmFQLALHigIi0vDgWlzr+hG1XeXqWQ=;
        b=NYY90mw2ZyGbN3CLvdZuTfar1aOMbZvl/nhg0aRc+8Ju2ys/9PrHjIjjUOTH8TgVMJ
         mHat5tIFk4LaVNEblW0ukTK4e1Gdly2sAm/HQI1iHZii4ZsdaJ7O8XYJSqNGHjieIvvK
         x7S+M6hS7zBDwUzpHB5FF7GMeVugxxkLH2X5RfOclVzQ2FMfeWMo0/2m0dQJUAfNrbol
         a+SNuQ4BXZuidjGtiI+qMFg61vjVItOGiAvC3ptGyh/UtGyTMGK3Q7VAwiYSw3E6RQ+o
         J4xKJhkhlxiO3kw4hWX33zOBnbAFzd2H4c+RZrzpLMgSek+CL/G0tRcOpR7ubvCoBmfN
         4o4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709225727; x=1709830527;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n/KkPxmk845L1vmFQLALHigIi0vDgWlzr+hG1XeXqWQ=;
        b=mtd1j7gBCXehrmyTdZTViXdx2QX1rAU8i7JZ6J6vMlTqtZVFfh/pqnTFa2hDEyXrzw
         Fb8TyuMM/PFaEbS2DkuPY53gP4T5aJeOGrhpvWtbSH3sUUlY10m0gaVLy4FsvKo6g8ic
         gx1BK5iLNgRxfC7k7pUQwJWJC4LQHCbii2gJF+gkXccQ379ek5zYpSqAz9AdiyQ75v05
         p96eOHh++LkRtu5FN2+YdxaZdrGhUlp1vCxgYRP0N50K3XxZ6koUoGZaBhCu9J1pVqRt
         uDZeX/hJBZQV2k+W+MqDqlCKEAb/2y13+X9692xZGqyg4RGliSSKYx9/D3o2DK/Q5y4/
         ws/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOqwhTlaSKywRwxsHy2w28EwODBliPKBq2GM/tPhvcXHb7tPf1gNUcMgJRZBIJU0j27bwnI7jWUD82nMos5X8WB4Bmg2DV2fDO7g==
X-Gm-Message-State: AOJu0YzPq+suv7udJTRHsZdZ/9vPq0MtAEyryggJElIgqkxNXHWQo2IF
	Ln7M7gIMrh3jBJ/esfIOLvPaNolpxL1Dc7norPT4d6BWgtv3FokzfP4RjGbjtBg8ok2C+TQGQAr
	nNbBqDHTwT8hdqJGp++eKe3q4FjaSwQt2qJfS
X-Google-Smtp-Source: AGHT+IGxvqO5OWUEo/PNQLz/RwJEBFW0vcJGghHiaZZrw1OC3sQJeqFkvFdmqYaYPdDlxvmpI3v+lPKfM4nvUD/VJ+g=
X-Received: by 2002:a17:906:f914:b0:a43:e77d:1670 with SMTP id
 lc20-20020a170906f91400b00a43e77d1670mr1935337ejb.39.1709225727402; Thu, 29
 Feb 2024 08:55:27 -0800 (PST)
MIME-Version: 1.0
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
 <1464756341.27900.1708721099612@mail.yahoo.com> <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
 <165749366.400969.1708941965618@mail.yahoo.com> <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
 <1183809641.1373133.1709223356748@mail.yahoo.com>
In-Reply-To: <1183809641.1373133.1709223356748@mail.yahoo.com>
Date: Thu, 29 Feb 2024 11:55:16 -0500
Message-ID: <CAB__hTQnZsTLor7OqOM2j5BPvCWj5ENJGJuHkr4FrFTROTddCQ@mail.gmail.com>
To: zhou <hwzhou@yahoo.com>
Message-ID-Hash: QVS3T5ZRQAQPDETHYETKRMF477CSFBCW
X-Message-ID-Hash: QVS3T5ZRQAQPDETHYETKRMF477CSFBCW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVS3T5ZRQAQPDETHYETKRMF477CSFBCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6339860894889541490=="

--===============6339860894889541490==
Content-Type: multipart/alternative; boundary="00000000000052cc9306128820d1"

--00000000000052cc9306128820d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This link
<https://files.ettus.com/manual/page_calibration.html#calibration_self_util=
s>
indicates that the antenna ports are to remain unconnected. Since there is
no internal loopback path, I believe that the calibration algorithm
utilizes the "leakage" signal which is apparently strong enough such that
it can be minimized with the appropriate calibration adjustments.
Rob


On Thu, Feb 29, 2024 at 11:16=E2=80=AFAM zhou via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi C=C3=A9dric,
>
> It was instructed by Ettus engineer when we started to use USRPs a few
> years ago. This is because there is no internal loopback path in circuit =
in
> X310. By the way, we are using UBX daughterboard. Maybe this is not
> documented.
>
> Regards,
> Hongwei
>
>
>
> On Thursday, 29 February 2024 at 15:05:37 GMT, C=C3=A9dric Hannotier via
> USRP-users <usrp-users@lists.ettus.com> wrote:
>
>
> Hi Hongwei,
>
> On 2024-02-26 10:06 +0000, zhou wrote:
> > For X310 USRPs, you need to loopback connect the antenna ports.
>
> Could you direct me to where you got that info?
> I never encountered it, and I am not able to find it in the Ettus docs.
> Doing proper calibration is important,
> so we should ensure that the Ettus docs give the correct procedure...
>
> Kind regards
>
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000052cc9306128820d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://files.ettus.com/manual/page_calibration=
.html#calibration_self_utils">This link</a> indicates that the antenna port=
s are to remain unconnected. Since there is no internal loopback path, I be=
lieve that the calibration algorithm utilizes the &quot;leakage&quot; signa=
l which is apparently strong enough such that it can be minimized with the =
appropriate calibration adjustments.<div>Rob<br><div><br></div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Feb 29, 2024 at 11:16=E2=80=AFAM zhou via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"=
font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size=
:13px"><div></div>
        <div dir=3D"ltr">Hi=C2=A0<span><span style=3D"color:rgb(38,40,42);f=
ont-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">C=C3=A9dr=
ic,</span></span></div><div dir=3D"ltr"><span><span style=3D"color:rgb(38,4=
0,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><b=
r></span></span></div><div dir=3D"ltr"><span><span style=3D"color:rgb(38,40=
,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">It =
was instructed by Ettus engineer when we started to use USRPs a few years a=
go. This is because there is no internal loopback path in circuit in X310. =
By the way, <span><span style=3D"color:rgb(38,40,42);font-family:&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif">we are using UBX <span><span s=
tyle=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,sans-serif">daughterboard</span></span>.=C2=A0<span><span style=3D"=
color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif">Maybe this is not documented.=C2=A0</span></span></span></span>=
</span></span></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><font color=
=3D"#26282a">Regards,</font></div><div dir=3D"ltr"><font color=3D"#26282a">=
Hongwei</font></div><div dir=3D"ltr"><font color=3D"#26282a"><br></font></d=
iv><div><br></div><div><br></div>
       =20
        </div><div id=3D"m_4657819979303724381ydp66e1514ayahoo_quoted_97242=
18575">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Thursday, 29 February 2024 at 15:05:37 GMT, C=C3=A9d=
ric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hi Hongwei,<br clear=3D"none"><br clear=3D"none">On 20=
24-02-26 10:06 +0000, zhou wrote:<br clear=3D"none">&gt; For X310 USRPs, yo=
u need to loopback connect the antenna ports. <br clear=3D"none"><br clear=
=3D"none">Could you direct me to where you got that info?<br clear=3D"none"=
>I never encountered it, and I am not able to find it in the Ettus docs.<br=
 clear=3D"none">Doing proper calibration is important,<br clear=3D"none">so=
 we should ensure that the Ettus docs give the correct procedure...<br clea=
r=3D"none"><br clear=3D"none">Kind regards<div id=3D"m_4657819979303724381y=
dp66e1514ayqtfd09939"><br clear=3D"none">-- <br clear=3D"none"><br clear=3D=
"none">C=C3=A9dric Hannotier<br clear=3D"none">____________________________=
___________________<br clear=3D"none">USRP-users mailing list -- <a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscrib=
e send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.=
ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br clear=3D"none"></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000052cc9306128820d1--

--===============6339860894889541490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6339860894889541490==--
