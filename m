Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D45B99E74CC
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 16:45:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B8A03858EA
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 10:45:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733499940; bh=bYHL/AZVzAQKo+qyWC4FMOEw45Kkik4C2KwTL21xlfU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=sI85uhIaBS2wz952eAqE+wkx6BNd7kHkznAuNlu/O2/NYP0pk7op3EE+yDuhD7s6C
	 xGXIiMuAc5JlWyHLcn6J+o2DKhC+a02gSGgp98s2n929uZkgcuvqnAfI29K7VjNPl2
	 x85R7VlmGGZn+ZN4IT4+Ku79Ca/6UvGuhlqL5Tf6utELTJLN7zF0+fH750nbDBT6uv
	 iew+q4hVb+8dZaAF29iP6Xuo87d746HnX7QbI+0/JW56XEhlxU7R/fkiCqwX/RPEuK
	 9mGp2VAxALl4PmpUVg/XWaelIjxFoz1MuxIAXTuId5tVNDFv1wiBP9D6rh/wktcolx
	 /+T5gMXjJdVbw==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A3B713852F3
	for <usrp-users@lists.ettus.com>; Fri,  6 Dec 2024 10:45:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fpqVe093";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d10f713ef0so5967587a12.0
        for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2024 07:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1733499903; x=1734104703; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iTj8RtDHiXMEMCUQG6DoTQpJ7rRxMmMqpGLl1X4NIqU=;
        b=fpqVe093fFmW5hRlX6BqQoG3M2TgW+6UW1okUj+h2mjJwPGp6D8Hjob/iexeSmufl3
         rNXxl+zztezOm0G4Ze9AtbAsjpKpsg+q4dmP3c4umWGXhifqv1tmJmAzkrNwm9nmVjal
         IodpfmmnukuOHlOgRiKwXeSa1gJ6Ycwyv9U6auyMiBS5+1SJ+gwfCaiKGwqod2/0Mjyu
         311iWWv3wM8oaaoyKiCqfGpfLCsXEKih8kLHccI9xcvSHBrLl6N123pWeaYMgKzFlmWy
         oChQBGI2TcsYZXoPQhfHECYtQj9q4evuPKLnMGnqZNcPpBxnqOWiV2PODUa9j0EQ/HlH
         ltEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499903; x=1734104703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iTj8RtDHiXMEMCUQG6DoTQpJ7rRxMmMqpGLl1X4NIqU=;
        b=YbGdQ5O/Y67VGSCy6hVC0NX8YlW+hgRgxcjp0XyA+sIJFuasBEKJMTo589s25p3TNo
         UF1wie8Ags4Bk04j2bn3ioqi3xvkFbxbYidXbunTl7WgpUzI6I1X8opypV3jIOiPT71W
         MSzPGh58xr25tx8rRVGZ8ZnidhlfNrPjdGxhrmDXyl5WZLBbyXJCYUwte4Qer+W5pLN7
         rD8gon1W+r9YBH5JWOwcmPdn2uW1qa4vsaEAJrr64qZHIzIoWwOTaxPNML/yiIyCVmP0
         F5Int0yCt6Og8dYpPvYCvcDb9lU3XDm6R2M1azfr8yoL00Nd4zPqnaovgFCQVnv0VOiJ
         6dwg==
X-Gm-Message-State: AOJu0Yw20rW3Vn57hdeaoJJ3zsz9SGthZO06z0N2atu9BHNn+hZq+KEc
	KcRjE++591bF0H/kdZkLfUuQeKmlESAHjNAnXCaZOe/i+doL64dPod1TMsq3lXXc1NwjqlPmpW4
	xb4sZ5r6t/9vmWWECvcyRGUldRtXXfXre3zFE
X-Gm-Gg: ASbGncvycCZ7hhrXwMwhLKIO2I0z1QlAsh2VW8ZvgU4+tNo5d4en8oEfc8/ZwcOVeRq
	mc8ZyRfN244KnSYx6SzfjYNFi69hNaiIp4Q==
X-Google-Smtp-Source: AGHT+IE1Xb5VXeTV5nEx3XxpZ+UXD7M7xICcEhqz0frmj2o/RA/wYMU70HPUFnhWTpGzZVkJq1dHdjmXp/oOO3YBBUA=
X-Received: by 2002:a05:6402:358f:b0:5d0:fc12:79e3 with SMTP id
 4fb4d7f45d1cf-5d125063c34mr7600688a12.15.1733499903485; Fri, 06 Dec 2024
 07:45:03 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
Date: Fri, 6 Dec 2024 09:44:51 -0600
Message-ID: <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: KKQVVC4S2PL7FNZGGKP2QEOSIGGZAKVD
X-Message-ID-Hash: KKQVVC4S2PL7FNZGGKP2QEOSIGGZAKVD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>, Sachin Waghmare <waghmare.sachin@cyronics.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKQVVC4S2PL7FNZGGKP2QEOSIGGZAKVD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1388299587732950457=="

--===============1388299587732950457==
Content-Type: multipart/alternative; boundary="000000000000f7cdca06289be5f5"

--000000000000f7cdca06289be5f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2024 at 6:27=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.co=
m> wrote:

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
>
> You might want to look at the Ettus c++ example "rfnoc_radio_loopback".
You could also try just running it.  Note that it does not include the
DMAFifo block but it does allow you to choose which Rx Radio and Tx Radio
block to use. After quickly reviewing your attachment, I would mention that
you shouldn't have to send Tx streaming commands. Once you send the Rx
streaming command, the data will flow.  However, if you use a "timed"
receive command, then the streaming data will have a time tag such that
when it arrives at the Transmit radio, it will by definition be late.  You
will need to do one of the following: either use non-timed receive
streaming commands or else create a custom RFNoC block that manipulates the
time tag to add some delay in order to account for the number of clock
cycles that it takes for the data to propagate from Rx to Tx.

--000000000000f7cdca06289be5f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2024 at 6:27=E2=80=AFA=
M Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com">nidhi.panda@c=
yronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg5632979231606964712">




<div dir=3D"ltr">
<div dir=3D"ltr" id=3D"m_5632979231606964712divRplyFwdMsg"><span style=3D"c=
olor:rgb(0,0,0);font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt">I am currently working with a </=
span><b style=3D"color:rgb(0,0,0);font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt">USRP N300 devi=
ce with uhd 4.7 and gnu radio v3.11.</b><span style=3D"color:rgb(0,0,0);fon=
t-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,san=
s-serif;font-size:12pt">=C2=A0 I have created a simple loopback configurati=
on in which the data flows through the following blocks:</span></div>
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
t-size:12pt;color:rgb(0,0,0)"><br></div></div></div></blockquote><div>You m=
ight want to look at the Ettus c++ example &quot;rfnoc_radio_loopback&quot;=
.=C2=A0 You could also try just running it.=C2=A0 Note that it does not inc=
lude the DMAFifo block but it does allow you to choose which Rx Radio and T=
x Radio block to use. After quickly reviewing your attachment, I would ment=
ion that you shouldn&#39;t have to send Tx streaming commands. Once you sen=
d the Rx streaming command, the data will flow.=C2=A0 However, if you use a=
 &quot;timed&quot; receive command, then the streaming data will have a tim=
e tag such that when it arrives at the Transmit radio, it will by definitio=
n be late.=C2=A0 You will need to do one of the following: either use non-t=
imed receive streaming commands or else create a custom RFNoC block that ma=
nipulates the time tag to add some delay in order to account for the number=
 of clock cycles that it takes for the data to propagate from Rx to Tx.</di=
v><div><br></div></div></div>

--000000000000f7cdca06289be5f5--

--===============1388299587732950457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1388299587732950457==--
