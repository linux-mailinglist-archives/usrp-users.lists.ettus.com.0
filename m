Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 823BC9EB66C
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 17:29:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC986385EB8
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 11:29:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733848183; bh=oSgcRnqbKpkLGt+KYxPGVoyHFA0MK1vCv0AL1piPNSI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y38P9Ekomip7G7gOxQaYj1i8fH+01rSyJNVb5KFVVEMdVa4rdU1A6zMCsCDuzdzx2
	 1PiYrXjqfuik+gZ+6Uyq1vf7FI/hZDpA2HtJ+bb5F3uSX4LAihru4FITg2dBcHA0+v
	 eHV/KrmjyVv1o4SdXMRRO3B4p9mvDgHPmjuwAEzUbxski2Jy2xHEbz4SUkL0ZOrv/Z
	 Z9nLn0mhmp4pjTpP01cCMhTHXbNL2Wr+a+eCmCM7rsigtPigJVaFy5cOOoIJB6huZx
	 pNytpK6Wg6tYG/FHBNLN4BCjcBUuKIsnpOPm6sHLTI8XWc/S+DsiLTP4b63NCqTGVu
	 t9POSeaVabAbA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D7FCF3852AA
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 11:28:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="wA3QnHI2";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cfa1ec3b94so7621929a12.2
        for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 08:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1733848128; x=1734452928; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N9OZ0JeqZZjR4mMSmIKKO8ycxhgruU+H/sckKgRYDUs=;
        b=wA3QnHI2I9leOvyrfJeKIMJ2El9q9vwUOUiHg2jCATvROQ8f/TEDTQGkysIIWeO6KL
         PZRssx0Z1/7m4Wo8dvG6anPU1z185Dd2pDXJRssgiJk+PrCZHfVeEMlz62ghP8XPAYtc
         dxjWyTw7TublJpLWI/oRLEAQ8gyoshR8lYVu/WvrqszRB0ukYuk/bx9BoCm6TXjH30J8
         A+oyECtZp9gjQXU8U7obvK2B2YgWsDDuPHGlY8bS4hoHUe9IxclcSPw0FaV6jXILyMC6
         BApQyl6Jhxazk1ZeRLQ11YEGJNhMr+p65jRsmvspSbiUrHnG64Pug9FFcSMG3x5spTxe
         W/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733848128; x=1734452928;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N9OZ0JeqZZjR4mMSmIKKO8ycxhgruU+H/sckKgRYDUs=;
        b=J/i5+uzKnhqy/+Yh1p6BmvU/8Ij8B9/RBUp5X1TkTIeBaWoXdpFTTkvWZsvjvxbV+k
         jnCq5/ybNmti+vGwC10ca4Jgci6vzvvktPzITGRREZJseb6iCw55u7bg2kbXBDKxYiHf
         fbdT9ONHhn00S0AMnoX9PAY64ghOk88952iFUQXjD5BGJTaAlxzpOWb9SVWvSetW9AxP
         3Bk6gZajvQyf3Cb3bSoeWXpjh/jdJuXWFhBY/A4jUlVz0qUKdFyKBKVQ8d48Qt1rXKR/
         iWBKvyjwW+sB4BF7qmjfFOBntGhaRM0BIeHc5BM1iZXl790e1ZgemnF34R9R0TM9PJg+
         P6Pw==
X-Gm-Message-State: AOJu0YxuhPDScuQbbjWFAzOC+Sa5i0SW96LyqNZ5082LqJgRvfcNEfz9
	eD+/Hu47i8o+tqavQ16G0DZSu4jxFW95ty2EXfs5ZfzlV08jk+5Ww4adJ5zSisaJDDOTsw9hHa8
	qHSs1MLT70xgk4CWqqbQS2h1NEPgChQEHt41xCaL+MHF9PNH+JkawoA==
X-Gm-Gg: ASbGncsZmzEVa9Ycmd39ZjFBIJ8pefv4oV9oVM0wqv6o15/Tj2sOiVoIEWVV8jhelRA
	nJseZEgUEwxscEr4nYcHjCTbEj6I7F2Sy8w==
X-Google-Smtp-Source: AGHT+IGScCaSHQUcB/d6DDk2XWFb7PEpYUOHk5EQyTBAFnYEhX8hiB7x7wxghbt6AJGLuwR1CzhXNX7BBNv1njN6NPE=
X-Received: by 2002:a05:6402:3812:b0:5d1:1024:978c with SMTP id
 4fb4d7f45d1cf-5d3be6bdf9dmr16413822a12.2.1733848128462; Tue, 10 Dec 2024
 08:28:48 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 10 Dec 2024 17:28:37 +0100
Message-ID: <CAFOi1A5sjUWy+DOTJWyZpg+Srx0hciNzLxeffN=DVz+-CMx4Xw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FGNUB75E6UCRRGGGY3LGZKQKU3T6PWK6
X-Message-ID-Hash: FGNUB75E6UCRRGGGY3LGZKQKU3T6PWK6
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGNUB75E6UCRRGGGY3LGZKQKU3T6PWK6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7123977148915966203=="

--===============7123977148915966203==
Content-Type: multipart/alternative; boundary="000000000000cac7410628ecf937"

--000000000000cac7410628ecf937
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Nidhi,

are you able to run the rfnoc_radio_loopback example? It skips the DmaFifo
(which  is not present in default bitfiles) but otherwise does the same. It
documents all the common pitfalls of creating loopback apps (like calling
enable_rx_timestamps(), and using back-edges).

Once that works, you can modify the code to match your needs.

--M

On Fri, Dec 6, 2024 at 1:27=E2=80=AFPM Nidhi Panda <nidhi.panda@cyronics.co=
m> wrote:

> *Dear USRP Support Team,*
> Greetings of the day!
> I am currently working with a *USRP N300 device with uhd 4.7 and gnu
> radio v3.11.*  I have created a simple loopback configuration in which
> the data flows through the following blocks:
> Rx_Radio > DDC > DMAFifo > DUC > Tx_Radio.
> However, I am encountering an issue where *only the receiver is working*,
> and the *transmitter is not starting*. My objective is to *receive data* =
and
> * transmit it back* without using *host-side streamers*, i.e., I intend
> to handle everything on the RFNoC hardware blocks directly.
> I have set the configuration for the transmitter using the RadioControl b=
locks
> (as shown in the attached script), but I am unable to start the
> transmitter. It seems that the transmitter is not getting activated or
> streaming, even though the receiver works correctly.
> Could you please guide me on how to *start the transmitter* without
> relying on host-side streamers? Any assistance or clarification regarding
> the correct method to achieve this will be greatly appreciated.
> Thank you for your support, and I look forward to your guidance.
>
> Regards,
> Nidhi
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cac7410628ecf937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Nidhi,</div><div><br></div><div>are you able to r=
un the rfnoc_radio_loopback example? It skips the DmaFifo (which=C2=A0 is n=
ot present in default bitfiles) but otherwise does the same. It documents a=
ll the common pitfalls of creating loopback apps (like calling enable_rx_ti=
mestamps(), and using back-edges).</div><div><br></div><div>Once that works=
, you can modify the code to match your needs.</div><div><br></div><div>--M=
<br></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2024 at 1:27=E2=80=AFPM Nidh=
i Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com">nidhi.panda@cyronic=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"msg2637146674478980248">




<div dir=3D"ltr">
<div dir=3D"ltr" id=3D"m_2637146674478980248divRplyFwdMsg"><span style=3D"f=
ont-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,s=
ans-serif;font-size:12pt;color:rgb(0,0,0)"><b>Dear USRP Support Team,</b></=
span></div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
Greetings of the day!</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
I am currently working with a <b>USRP N300 device with uhd 4.7 and gnu radi=
o v3.11.</b>=C2=A0 I have created a simple loopback configuration in which =
the data flows through the following blocks:</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
<code>Rx_Radio &gt; DDC &gt; DMAFifo &gt; DUC &gt; Tx_Radio</code>.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
However, I am encountering an issue where <b>only the receiver is working</=
b>, and the
<b>transmitter is not starting</b>. My objective is to <b>receive data</b>=
=C2=A0and <b>
transmit it back</b>=C2=A0without using <b>host-side streamers</b>, i.e., I=
 intend to handle everything on the RFNoC hardware blocks directly.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
I have set the configuration for the transmitter using the <code>RadioContr=
ol</code>=C2=A0blocks (as shown in the attached script), but I am unable to=
 start the transmitter. It seems that the transmitter is not getting activa=
ted or streaming, even though the receiver
 works correctly.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
Could you please guide me on how to <b>start the transmitter</b>=C2=A0witho=
ut relying on host-side streamers? Any assistance or clarification regardin=
g the correct method to achieve this will be greatly appreciated.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
Thank you for your support, and I look forward to your guidance.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
Nidhi</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000cac7410628ecf937--

--===============7123977148915966203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7123977148915966203==--
