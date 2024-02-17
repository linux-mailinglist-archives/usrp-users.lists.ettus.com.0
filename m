Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4B0858BEC
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 01:36:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9C7D38421F
	for <lists+usrp-users@lfdr.de>; Fri, 16 Feb 2024 19:36:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708130182; bh=PLUq11xbRCmANJobWohwfjq7j5s+qMBkiEPVc6Cw9CQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TYC1Q307uMRFGPNeeOfc1T8xIbbj9qgJHaVym3Xs8pnMnia5LxMuYdefeD+PFCmNG
	 NZY9YIm5B8A/Hm6JZvhS8pJogs39EsNQIrlVW+AYkcEy6sGi3YGfIfn5YUZOTwkufE
	 5dFNf8BWbY9Gl7AexbpkpIlwnc0ibL7ls2cJTYS5JfO/6RzGsIqmqy8FryIk7qGfFA
	 nLlWP5Gh0rSJ95cYWKJEwqFGbP4ei7mm+tvQtsQRgGeQYcOfcpR8QEKum9/u0Aghqp
	 TRLl0XhPsS7H4/Dep3Ba1Z1SmfCHYsKLypj4Q0lWJRle8jLgcIOPT5iuSsxdLwRwxu
	 gR23G/AXAWQVg==
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 79C36383FD8
	for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 19:35:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F/kay43M";
	dkim-atps=neutral
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d0e521de4eso32255971fa.2
        for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 16:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708130148; x=1708734948; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gwE5ndgb6fWgILi4uEq7COx8exKK0iOKa9XynbjPD7w=;
        b=F/kay43MC8xX9oB8zv4TNVPWrxfVJ9jlcIRTG3qh0AOuqz+zx7ptuTefHF1u+H6lxe
         rvHdZ5T7bDXgGQIzeY1z0EQ6aOsvUO1zTh45z3lvECDzGnvixSlD+jUwikhQoDCOV/kF
         n0azCvf4iMTphVnoRCEPzgg32ShbKrpd3H78JfRVRxIAXrwzka/9l1V7XlivT6dVWPkE
         0oE6//5bjRaRk0bguhfOxLQgq+b2Junl+cNzefNVW8b76wds7y9aI8GzR7+JmDD3GMtb
         tGJgM71FD5wnC3KgqE97oh+m3Vp5MpIAXyuP1CnpoXHs7t66YhuQie88A5AizA/yazxu
         +Jkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708130148; x=1708734948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwE5ndgb6fWgILi4uEq7COx8exKK0iOKa9XynbjPD7w=;
        b=PItEty+9PobubLBNLl98SY/ujN7Zi8rRwESWppeYQ4gZooEvxa4Xl2SV3g62WnAuWi
         e4JgQTGKFm2b9y4YB9YnC+5FZ/pN3QPPmUsLfPEYk2/8XluJ8UC3dJNCzRtLQTrh7VX3
         KJh5+5uW6FgobPBdewTLRFsSkIcTM9QycjUgs1bU/Rd0Uzb0fIYYDd4dntoTuBA+mE98
         eNw9zlOP4Wfr7vfpW4E5ksWEXSiFmSTi/TFF8WSHFD2ZeKSZ4cWaqAX+PqrkRcrj3Em3
         Az71qASBFamslhQt6T8On9fFeDxGQC2R67viF4Np3gsoezNl35A0P/gLSs6eat85v+dj
         EdZw==
X-Gm-Message-State: AOJu0YxiQ8+kJts4YIPhFr3vnAe/3JQOMUsvNGHZUenDYzJvbMeLKHmL
	3OYAF4OxM9uEnXw2soTQYXU/OwOoLT0Zmg/Kqn/+nrITu9AGphmJJsHWFoe3sd16W4BZFajOLrc
	PWTNEgB4Ljiqe/KSJfy39pLFP5lw=
X-Google-Smtp-Source: AGHT+IHF9dr54L/LHnzcXqUFb7k8eF3N5dLUHwcvohGNuccqv+ThBF9iRPkKfKbtZFdw9Iz/uZg+h0T4rhsIJ4GMDY0=
X-Received: by 2002:a19:3803:0:b0:511:8cb1:7c9d with SMTP id
 f3-20020a193803000000b005118cb17c9dmr4287447lfa.24.1708130147708; Fri, 16 Feb
 2024 16:35:47 -0800 (PST)
MIME-Version: 1.0
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
In-Reply-To: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
From: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Sat, 17 Feb 2024 00:35:36 +0000
Message-ID: <CACDPEcMiC_vyTATOWF5YyW4rSaJfM9RJwjHPjLHg+72kerTkNw@mail.gmail.com>
To: Jim Grubb <jimgrubb@me.com>
Message-ID-Hash: LJGRQSC77JI3JCK4OTFWQLXCNELM4OMC
X-Message-ID-Hash: LJGRQSC77JI3JCK4OTFWQLXCNELM4OMC
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LJGRQSC77JI3JCK4OTFWQLXCNELM4OMC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8764147740965748551=="

--===============8764147740965748551==
Content-Type: multipart/alternative; boundary="000000000000af37f10611890a16"

--000000000000af37f10611890a16
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Make sure you have same uhd version on gnu radio and on host pc. I would
recomend installing gnu radio v3.8 and uhd version on pc should b 4.4

On Sat, 17 Feb 2024 at 12:30=E2=80=AFam, Jim Grubb via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> When I run:
>
> uhd_find_devices
>
> I get:
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
> UHD_4.6.0.0-0ubuntu1~jammy1
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3293561
>     name: B205i
>     product: B205mini
>     type: b200
>
>
> When I run:
>
> uhd_usrp_probe
>
> I get:
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
> UHD_4.6.0.0-0ubuntu1~jammy1
> [INFO] [B200] Detected Device: B205mini
> [INFO] [B200] Operating over USB 3.
> [ERROR] [UHD] Exception caught in safe-call.
>   in ~b200_radio_ctrl_core_impl
>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65
> this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <
> _timeout
>   in wait_for_ack
>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:227
>
> Error: AssertionError: accum_timeout < _timeout
>   in wait_for_ack
>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:227
>
>
> This is on an X64 Ubuntu 20.04 machine.
>
> Any help would be appreciated.
>
> Thank you,
> Jim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000af37f10611890a16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Make sure you have same uhd version on gnu radio and on h=
ost pc. I would recomend installing gnu radio v3.8 and uhd version on pc sh=
ould b 4.4</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, 17 Feb 2024 at 12:30=E2=80=AFam, Jim Grubb via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;pad=
ding-left:1ex;border-left-color:rgb(204,204,204)"><div><div><div><br></div>=
</div><div>When I run:<br></div><div><br></div><div>uhd_find_devices<br></d=
iv><div><br></div><div>I get:<br></div><div><br></div><div>[INFO] [UHD] lin=
ux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1<br></=
div><div>--------------------------------------------------<br></div><div>-=
- UHD Device 0<br></div><div>----------------------------------------------=
----<br></div><div>Device Address:<br></div><div>=C2=A0=C2=A0=C2=A0 serial:=
 3293561<br></div><div>=C2=A0=C2=A0=C2=A0 name: B205i<br></div><div>=C2=A0=
=C2=A0=C2=A0 product: B205mini<br></div><div>=C2=A0=C2=A0=C2=A0 type: b200<=
br></div><div><br></div><div><br></div><div>When I run:<br></div><div><br><=
/div><div>uhd_usrp_probe<br></div><div><br></div><div>I get:<br></div><div>=
<br></div><div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UH=
D_4.6.0.0-0ubuntu1~jammy1<br></div><div>[INFO] [B200] Detected Device: B205=
mini<br></div><div>[INFO] [B200] Operating over USB 3.<br></div><div>[ERROR=
] [UHD] Exception caught in safe-call.<br></div><div>=C2=A0 in ~b200_radio_=
ctrl_core_impl<br></div><div>=C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl=
_core.cpp:65<br></div><div>this-&gt;peek32(0); _async_task.reset(); -&gt; A=
ssertionError: accum_timeout &lt; _timeout<br></div><div>=C2=A0 in wait_for=
_ack<br></div><div>=C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:=
227<br></div><div><br></div><div>Error: AssertionError: accum_timeout &lt; =
_timeout<br></div><div>=C2=A0 in wait_for_ack<br></div><div>=C2=A0 at ./hos=
t/lib/usrp/b200/b200_radio_ctrl_core.cpp:227<br></div><div><br></div><div><=
br></div><div>This is on an X64 Ubuntu 20.04 machine.<br></div><div><br></d=
iv><div>Any help would be appreciated.=C2=A0 <br></div><div><br></div><div>=
Thank you,<br></div><div>Jim<br></div></div>_______________________________=
________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000af37f10611890a16--

--===============8764147740965748551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8764147740965748551==--
