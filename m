Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD6FA32776
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 14:47:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD100385D49
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 08:47:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739368033; bh=+7f2KgxjXXRB6X6WngzDYQSWOfrh7au7eIcii2wRJTQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QPsDw585W9DdS0V/3YsirtlBxJWvvhZN8tYpEnjDJp8igL694bQo7zedOZelyrNi5
	 zNN7aCdX27qkeVGmfxZtAFAg97GzW5UGjihumUsrpk8U1i2Ju1Po3W4f2yz+jU1QAS
	 B+Qp83+unRC8+in0zqSLhZikuHikMBuA7US5P75DyNFcN1/ZLInXPeSB9SRGr90FYv
	 Nr8+62aLANKr9V1hOtrz51371qu9uVYF+Y83wlRFZmE71k/e50o5z7ECOCsqjvIINS
	 Tu5FxxSNjGiUfeCB/tbMApYKd56OXX/+FKE4PqXhn4qoeSLySXj14sCi6MJLTT2EWm
	 NrRtdxYdMrXeg==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A37A8386144
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 08:46:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="G8SKjXri";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5de5a8a96abso7389983a12.3
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 05:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739367969; x=1739972769; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cBwhqam6VKNFh6snFbpBIBLGZeFJPnZ+G1l36I3PHfo=;
        b=G8SKjXriqwAuCXik7sY14sws1htB8Qg+9eSsEWsSOF8dJO+aIkqeSE/vA98M3kx8r5
         qaJH245Zw9jFQb63gnkvFsRwD4UIH9yEPiObzIXq7nybMDhAJtbBLNWGx7BOeQZXQNW7
         auRAUnE2LcptgHiLx4EFxqSWnEIv5iT1uXoxcvkanlWUZudLbhpy27xosZX5cc8qLgeg
         cLL5vxsW3oz1W8ZClZa9BHorc2QvGV/as14lox9Iy7NKYh/bcAMDRN87fTQ22anUQdme
         NkJQ9nq1hIvps/MByvaFA0CPmfvXMTZKsPiEuFerYW993jBdHr2xRe5zrn8QKFio5JAq
         r9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739367969; x=1739972769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cBwhqam6VKNFh6snFbpBIBLGZeFJPnZ+G1l36I3PHfo=;
        b=UXInW3WVK9BkB39Gs9zPoIK3JqpWYUubaVeYXc4rQmp4YkDAc1CneNWZYAnRep4kJi
         /Lq8JIoad7YZD2W5crrIkQTj0UkZ5QDcq6uUiWaGpD7XlgnFKO09W/71jVnGjvMaSwPb
         VOfmeWhb6Fah89Ev2Q6zgz5VBeC4Afc3rT9vGBdcmdDjhcTizKk2wbcw3qRqS4GlG5FK
         Y95dsyKi8OCTlaLBJB+oGG44gH0rFRxrdWJjrYm4c+ULnGwQZCoTFegPufeCgSPSKjtv
         y8K7dh45IvxyG5TqXmoBu0i6WCvsOMjso9ySHkZ4gD9jKbylH2WMZz+lszD3ya+vXXB8
         EQQQ==
X-Gm-Message-State: AOJu0YybBgcMt5GBY5K69Fp+aBQhbYYmQ1C53uq36woMbdZYw/+xZ9cq
	lnwASfWHY6kni69ozJDpd/+bgMW6RQulVoOiLiBctrb5XaI54BpPen1aEgqeber6lLfLnpuui+b
	B3gdTyJRKwsJY7JYldQbi5axXfJdRY7oLpylRWYnMQBpKtQQee8I=
X-Gm-Gg: ASbGncuIgs5F8tMWzIUHueIxg1Stv4vi1Lwos0sBYA4zqmRug+KX94Mg3NAqV3KJQBt
	3dBc5H7JH2jlcS5+Q3bVc/3P67zLW1hffaU/DkCuKNshgHjjKhk8UHhBLxGS3+znPcNVpG5qV9o
	irlAk2Y1CYlhOMZmUjQXxcQQ28RbDG
X-Google-Smtp-Source: AGHT+IFChZHSirrSiZwAswUJprIDwQvGx2uf1mGbMm9xwIkH00RsQXy20pWs1pyiqNAjb7InZrlqm5m+cLtjuCuptPU=
X-Received: by 2002:a05:6402:5250:b0:5dc:74fd:abf1 with SMTP id
 4fb4d7f45d1cf-5deadd9cd42mr8157699a12.15.1739367969413; Wed, 12 Feb 2025
 05:46:09 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB91262C61487916430516EA7AECFD2@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91262C61487916430516EA7AECFD2@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 12 Feb 2025 14:45:57 +0100
X-Gm-Features: AWEUYZlEBFOBbdYb6ipR-fTyIaBoCPk2GFT2GMiRHvrth9iJtq8iL6mX7oxhyLM
Message-ID: <CAFOi1A4V5MFN28fB=aE6Q3m_HjKGsrAm7K4j-xX=YP=F4-Rw+Q@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: QAQQI5ILM2YRT6APGNEGVUZIHU7C52VL
X-Message-ID-Hash: QAQQI5ILM2YRT6APGNEGVUZIHU7C52VL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO offset with external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QAQQI5ILM2YRT6APGNEGVUZIHU7C52VL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3872029345700145838=="

--===============3872029345700145838==
Content-Type: multipart/alternative; boundary="000000000000f3843f062df229c3"

--000000000000f3843f062df229c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Eugene,

if you can summarize a bug report and put it on github.com/EttusResearch/uh=
d,
that'll help here. Thanks!

--M

On Tue, Feb 11, 2025 at 6:45=E2=80=AFAM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hi
> This was my mistake.  Turns out the offset is handled correctly. However,
> I think there is a bug for the N310 for setting up external LO. It works =
if
> you specify the external LO in device arguments. However, if you set it
> using a function call at run time the function call is apparently simply
> ignored And the internal source is used.
> This bug reveals another bug which is related to using internal for the
> first two channels, and external for the last two channels. If the extern=
al
> LO signal is not applied to either of the RF channel pairs, UHD fails wit=
h
> a low level error that apparently comes from the embedded arm, micro
> controller inside the analog devices chip.
> I don=E2=80=99t envy ettus having to test all these quarter cases
> Eugene
>
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Eugene Grayver
> *Sent:* Friday, February 7, 2025 1:55:38 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* LO offset with external LO
>
> Hi,
>
> I am using N310 with external LO.  I still want to use the digital LO
> offset.  However, it appears that when the LO is set to external the
> digital LO offset is ignored.  Am I missing something or is this the
> intended behavior?  UHD 4.6
>
> Eugene
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f3843f062df229c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Eugene,</div><div><br></div><div>if you can summa=
rize a bug report and put it on <a href=3D"http://github.com/EttusResearch/=
uhd">github.com/EttusResearch/uhd</a>, that&#39;ll help here. Thanks!</div>=
<div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 11, 2025 at =
6:45=E2=80=AFAM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.or=
g">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">



<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi</div>
<div dir=3D"ltr">This was my mistake.=C2=A0 Turns out the offset is handled=
 correctly. However, I think there is a bug for the N310 for setting up ext=
ernal LO. It works if you specify the external LO in device arguments. Howe=
ver, if you set it using a function call
 at run time the function call is apparently simply ignored And the interna=
l source is used.=C2=A0</div>
<div dir=3D"ltr">This bug reveals another bug which is related to using int=
ernal for the first two channels, and external for the last two channels. I=
f the external LO signal is not applied to either of the RF channel pairs, =
UHD fails with a low level error that
 apparently comes from the embedded arm, micro controller inside the analog=
 devices chip.=C2=A0</div>
<div dir=3D"ltr">I don=E2=80=99t envy ettus having to test all these quarte=
r cases</div>
<div dir=3D"ltr">Eugene</div>
<div dir=3D"ltr"><br>
</div>
</div>
</div>
<div id=3D"m_-3726044397007682437ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank">Outlook for iOS</a>=
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3726044397007682437divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Eugene Grayver<br>
<b>Sent:</b> Friday, February 7, 2025 1:55:38 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> LO offset with external LO</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am using N310 with external LO.=C2=A0 I still want to use the digital LO =
offset.=C2=A0 However, it appears that when the LO is set to external the d=
igital LO offset is ignored.=C2=A0 Am I missing something or is this the in=
tended behavior?=C2=A0 UHD 4.6</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3726044397007682437x_Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f3843f062df229c3--

--===============3872029345700145838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3872029345700145838==--
