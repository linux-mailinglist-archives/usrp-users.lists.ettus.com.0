Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B2AA67793
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 16:20:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C418385DFB
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 11:20:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742311251; bh=md+oqRkFsk7DLi1t4P5M2u6/p5lcMSjJEYsP7nT80mQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mjnWax4Xjlpg9qgje7oagFiTPbaF1fLm820sps8KUD63v35qf9YrwNIvQ61oGIlet
	 kU/YMMxuho0GIM3YdZ/dsOKLuQaG5q9omz2EnWZySmK7tncV44M/U0aICT3F5+ZHhP
	 dZ8yHLbqavYuLHAXLvU2R8DtGF+niGxNSilcs84xf/lAw2Qq1wL83mFM+UwXgKOxgD
	 nnNySjCygYXKg25b32wO/tDeA9dnQpZVD4P9bljFG0Vl37DVvV4ZthPgVnKTnH1Hfd
	 VAipzAbqCWjRMRwNmSx4v7OIwN6RxtKnn3tr4RCLS2e3FgA26y/Con9A6xXqDwvCtg
	 1vK838zBDyT1w==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id ABE5E384670
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 11:20:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AUp2h5dt";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so8658695a12.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 08:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1742311206; x=1742916006; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ouDiNOS3mG9GOYkW4IpglksVE4fNU39MlHsoHe12EiE=;
        b=AUp2h5dtv1PF8y9hjX3XcEdwqdcx3nD1TDZta3+VK+UtYnTxFruF3t5P0Xi6Rd9dx+
         qoAnK5QGxO7f57LeKKjXp4JLrWGBtNsxuSW2clPXCD5xn209urJQROWYn+O0GAU+Fjbr
         2/lIu+8H5Lw7S5W31sQT2J6uEMrYN2LxKMaViACUpCqZx8H0cFu6x+9fwW4fhE/F/RBE
         DqEdxfAkin+TX1eDV9hUyesd5xMzpXUHmdivdy/MSwSqq1ZCocdEv+AcgZa8KjyXpy6y
         ++wiGP+c/VQ6D4v7DWyVs1MGp06iLCS+o5OT3IsoZLDsFwHd+gPGP/PuOB/xK7BJMoLc
         KC9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742311206; x=1742916006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ouDiNOS3mG9GOYkW4IpglksVE4fNU39MlHsoHe12EiE=;
        b=cst/XnZDEs/0YLd59p/L3C2gujCTPN5icaV57Xovkreq9YVmYjUCO7aol5IOfVXhEq
         +VBTSnk/vEjmvZDguQgsGlpoKNX2/+0MnJFDlE+gw/MNelYG3xBzBvbL2IBQQbBOWe7e
         Fah/VSAbARjkr6Y/ozltALtonS2UQOSQ1KzqyjLBJeNRt4ZHJRHOr7HpAHv0ZLIloz68
         PvT3sJqrFnrosg1FH4F3JOlyNLoKm5z14nF9qDtL+U3EXbyHjsBOUG9TiGtXA9WtXbRa
         BfT+cVg/301pw3nG5UtBC5U9qW9QrEPlmGGb2HEKBd2LrW8C1r4htDdxj515Vn31P2bt
         Ru0Q==
X-Gm-Message-State: AOJu0YyUJRg0Z6n9c+z56qqu+hGrG36z1sCQJHCWEnNhYfIJ/B6+prEB
	wOpRQTGOiK543rpyNpoqocTcFiVZeRaIPDyDPJQgdWYUa7UYaoIyebxGrwsGa8lYnH6O7n1B7HV
	+VJO8dxN88trCQN8sv9JBpEB2vbqHXOnNyLJD
X-Gm-Gg: ASbGncsnIYDRxYOuHu1vT9WK0V3WdcZXIcQ6OyxmIx+bANdHa/DjiiR+SkOs7+o+DDy
	DzdIeeDaxTdushJbHGsmPj/L9lCyyr8EQjYxbRKxuoX4+zGE1UammH3L2KzOwElbuOlL1AKK6Uc
	zqlvo5lN4xkpIW+g8LoBQxSXgL8w==
X-Google-Smtp-Source: AGHT+IFhfRn/e1dgnpyDuZvVkMZqxbz2xCTwiRsGDZdk2SRRsZ12424QzX/cdfh4P8AcX7pZsCXPShurH7TIFwEqQgI=
X-Received: by 2002:a05:6402:40d1:b0:5e5:e022:a73d with SMTP id
 4fb4d7f45d1cf-5e89fa46ffbmr17545206a12.15.1742311206552; Tue, 18 Mar 2025
 08:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Date: Tue, 18 Mar 2025 11:19:55 -0400
X-Gm-Features: AQ5f1Jqnz7LHePASzeRz-pU6prp5ySBKqWKnPDyBKBUiA-RQNr5ye_nHJXiUd-k
Message-ID: <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
To: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
Message-ID-Hash: 22PXCD2FR2BAXQSCXOD4NQE2KQPLLM7T
X-Message-ID-Hash: 22PXCD2FR2BAXQSCXOD4NQE2KQPLLM7T
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/22PXCD2FR2BAXQSCXOD4NQE2KQPLLM7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7147896742557488588=="

--===============7147896742557488588==
Content-Type: multipart/alternative; boundary="0000000000008e318b06309f70c0"

--0000000000008e318b06309f70c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,
Did you see this link
<https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Subdev_Specifica=
tions>
?
Rob

On Tue, Mar 18, 2025 at 10:49=E2=80=AFAM Mann, John - 0662 - MITLL <mannj@l=
l.mit.edu>
wrote:

> I am trying to create a simple gnuradio-companion flowgraph that uses a
> Multi-USRP block to record all 4 channels from an X410 into data files on
> my hard drive.   I am struggling with the subdev specifications, and keep
> getting syntax errors, and sometime receiver channel number errors.  I=E2=
=80=99m
> clearly not understanding how the X410 differs from the X310, which I hav=
e
> used a lot in the past without any problems.
>
>
>
> Does anybody have an example grc file that records all 4 channels from an
> X410?  Or could someone just tell me what the subdev specs should be in m=
y
> Multi-USRP block?  It=E2=80=99s my understanding that the X410 has 2 ZBX =
daughter
> boards, and each ZBX daughter board has 2 channels.  I thought it would b=
e
> easy to do this, but I can=E2=80=99t seem to get it working=E2=80=A6
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008e318b06309f70c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi John,<div>Did you see<a href=3D"https://kb.ettus.com/US=
RP_X410/X440_Getting_Started_Guide#Subdev_Specifications"> this link</a>?</=
div><div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 18, 2025 at 10:49=E2=80=
=AFAM Mann, John - 0662 - MITLL &lt;<a href=3D"mailto:mannj@ll.mit.edu">man=
nj@ll.mit.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div class=3D"msg-8462004088203472506"><div lang=3D"EN-US" sty=
le=3D"overflow-wrap: break-word;"><div class=3D"m_-8462004088203472506WordS=
ection1"><p class=3D"MsoNormal">I am trying to create a simple gnuradio-com=
panion flowgraph that uses a Multi-USRP block to record all 4 channels from=
 an X410 into data files on my hard drive. =C2=A0=C2=A0I am struggling with=
 the subdev specifications, and keep getting syntax errors, and sometime re=
ceiver channel number errors.=C2=A0 I=E2=80=99m clearly not understanding h=
ow the X410 differs from the X310, which I have used a lot in the past with=
out any problems.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u><=
/u></p><p class=3D"MsoNormal">Does anybody have an example grc file that re=
cords all 4 channels from an X410?=C2=A0 Or could someone just tell me what=
 the subdev specs should be in my Multi-USRP block?=C2=A0 It=E2=80=99s my u=
nderstanding that the X410 has 2 ZBX daughter boards, and each ZBX daughter=
 board has 2 channels.=C2=A0 I thought it would be easy to do this, but I c=
an=E2=80=99t seem to get it working=E2=80=A6<u></u><u></u></p></div></div>_=
______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000008e318b06309f70c0--

--===============7147896742557488588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7147896742557488588==--
