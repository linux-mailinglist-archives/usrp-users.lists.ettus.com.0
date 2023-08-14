Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A9377BBCA
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 16:36:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6DF5F384546
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 10:36:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692023765; bh=E/DTvfQraIv7RWWjpX18QmIAASO0SJ5/DwNt3wA+pQw=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TLK3hPZ2YiPES7op+qlkKTmRcGkuhnCfRGAjYEz/A6VXjpAPvIi2CoBpi1VjfAz7B
	 H2JtInaNRWPSZrtsXvCK6Qez0zkPE1v0MEEcHAjuTRwKZ3inxX0D3mr9Zz0GOrlcEh
	 Iev/R8mPik1yfr0ePr7TIm3/tIQkZdkQN26F1R9iSqfij9Jy1btKtEBKAQ63dQlwTe
	 qXYR94OBx52+w/EZbZcHZQAUbRNDHFZ/IRAtKxZGsTJnn4kmR/XeJyngUPjc9EQC0g
	 fU2/JfVf6XKG6zY5pPZnl0klSgFrFHEGfd8HM4EanTGsVt1HJY0nrZI4Ho4qmIGpYT
	 nn/X1T/btyjNg==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B48A3841D9
	for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 10:35:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ko/4SDhD";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4103c24a989so15925101cf.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 07:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692023731; x=1692628531;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mQlGmmDZIfDrxEZfAWTcgx/ur+Jm1rgLlKOWrrOZxEs=;
        b=Ko/4SDhDmgdQfA5qnIfzMTYU0hnjwK7KBAefUYfTC6HJKwmvOl2ljAL+meLl0hh9PF
         06lmAqh2PJEIgiBruI4xKFnIlYILDgr1kgKdUlEfYwcQREePdumQWX9WE1fGSXBPBhOW
         sYMZ5wp6zMsgzN29yci/X1Fhlk/0AH1Typwgo5dv4AnpRVwjLKc4CGpYPnFTOLbNYSNc
         QvJiky9RR2pl+gYKVNiH+HPO5VmJpb72Kqtn/ZaYFk2l6wE26nSgXfUTl9KYfx3uC8cQ
         zxnVkHAt+402+JqOMviO3Lx6Ie23dIY3Z0C5leUfZMxJv6f0o1uFD08OE8njQT/KBaWa
         uCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692023731; x=1692628531;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQlGmmDZIfDrxEZfAWTcgx/ur+Jm1rgLlKOWrrOZxEs=;
        b=PWMMTN97arodt6d3SHAi7yUxRWwMp4fmAGxq34UkTIeC8O4CysjbHKgCuOk8csvhWr
         TCjtfnDZOp0LzrHP3hXFJzHqHXrvkKj7af3/dRwkJEX7tJcWOcIfrQGYjIKv9nBDdMeS
         18XVXr4o0uud86L/aSQvOYpNnxJaQI7rtMEneQf9XD4TlkVoiAzjug5S0srLCDySRBzC
         vBIocsUKzc4zTgCkfPL9IPMUljy+FRwdjvE03E2rEdDPyfxQfHMcX+rmc0eR7yhU8Uai
         uDcdv7KM84qbnciWwAx0FCy3DhN++xehe/al/gUCC5mUbQId45lWNSF81/OtqLvVeUDB
         0ayg==
X-Gm-Message-State: AOJu0Yzb2O1f3hGqxYG0UrUa20Y1saHlfJEbswJWkcc6/QAL5hYlzHrl
	Eoqgzj+p1gBoJvtgnHSCYFm3fYCVnnk=
X-Google-Smtp-Source: AGHT+IGRJUQXX2H1UGYW21DWqRdsMx4eGzEWwhyw2SvTZjRByq3l7x1OJIxRcrSdPPGFCDR4GeQUTA==
X-Received: by 2002:a05:622a:1d5:b0:403:a940:dc88 with SMTP id t21-20020a05622a01d500b00403a940dc88mr12586540qtw.20.1692023731482;
        Mon, 14 Aug 2023 07:35:31 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:196c:74f4:61ed:c0b5:4c49:6bdc])
        by smtp.gmail.com with ESMTPSA id k19-20020ac84753000000b0041020e8e261sm3135533qtp.1.2023.08.14.07.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 07:35:30 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Aug 2023 10:35:19 -0400
Message-Id: <7B734608-0C92-4F35-A0E2-1383CEFAC07B@gmail.com>
References: <97acfc9d5ea24e50bf7c2a43dea11a66@iis.fraunhofer.de>
In-Reply-To: <97acfc9d5ea24e50bf7c2a43dea11a66@iis.fraunhofer.de>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
X-Mailer: iPhone Mail (20G75)
Message-ID-Hash: E3VNGWRKF5JVZYN2CSMUZ727MYBJKDJ4
X-Message-ID-Hash: E3VNGWRKF5JVZYN2CSMUZ727MYBJKDJ4
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4: RFNoC FFT Block in GNU Radio companion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E3VNGWRKF5JVZYN2CSMUZ727MYBJKDJ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6369787528274166601=="


--===============6369787528274166601==
Content-Type: multipart/alternative; boundary=Apple-Mail-07B58EDB-14BD-4061-84B5-71F7CAA35FF8
Content-Transfer-Encoding: 7bit


--Apple-Mail-07B58EDB-14BD-4061-84B5-71F7CAA35FF8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Luca:
At one point I was trying a Fosphor FPGA image and I remember it was importa=
nt to set the spp block parameter to be equal in all the blocks that would a=
ccept that parameter. So spp=3D1024 or whatever your FFT size is. That may h=
ave changed since 4.0 but that was the case in the past.=20

<end transmission>

> On Aug 14, 2023, at 10:29, Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.=
de> wrote:
>=20
> =EF=BB=BF
> Hello everyone,
> =20
> I=E2=80=99m currently developing a GNU Radio flowgraph with RFNoC 4.3 whic=
h uses the RFNoC FFT block. According to this workshop (https://www.youtube.=
com/watch?v=3D4XXqk0yGvCI @ 18:10) there are five runtime parameters you hav=
e to set for the FFT block: magnitude, direction, length, fft_scaling, shift=
_config.
> I=E2=80=99m not exactly sure where in the flowgraph I can set these proper=
ties. E.g. is setting the =E2=80=9CBlock Args=E2=80=9D parameter of the FFT b=
lock to =E2=80=9Cmagnitude=3Dcomplex,direction=3D1,length=3D1024=E2=80=9D co=
rrect? If not, what is the right way to set the runtime parameters?
> =20
> After setting them as I described I get two python errors when trying to r=
un the flowgraph:
> =20
> 1. Setting magnitude=3Dcomplex causes this:
>              RuntimeError: RuntimeError: Property magnitude:RuntimeError: C=
annot convert `complex' to int!
> In the flowgraph, the output of the RFNoC FFT block is connected directly t=
o an RFNoC Rx Streamer block. It seems that all default RFNoC blocks only ac=
cept an int input. This error seems strange and that=E2=80=99s why I doubt t=
hat I set the magnitude parameter correctly.
> =20
> 2. No matter what parameter I set for the FFT, I get the following error:
>              RuntimeError: ValueError: samples per package must not be sma=
ller than atomic item size
> I was not able to find any sufficient information about this online unfort=
unately.
> =20
> I hope I was able to describe my problems clearly and would be glad to rec=
eive help regarding any of those.
> =20
> Thank you in advance and regards
> Luca
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-07B58EDB-14BD-4061-84B5-71F7CAA35FF8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Luca:<div>At one point I was trying a Fosph=
or FPGA image and I remember it was important to set the spp block parameter=
 to be equal in all the blocks that would accept that parameter. So spp=3D10=
24 or whatever your FFT size is. That may have changed since 4.0 but that wa=
s the case in the past.&nbsp;</div><div><br><div dir=3D"ltr">&lt;<span class=
=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26,=
 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -=
webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmis=
sion&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 1=
4, 2023, at 10:29, Bachmaier, Luca &lt;luca.bachmaier@iis.fraunhofer.de&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style>@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
p.MsoNormal, li.MsoNormal, div.MsoNormal { margin: 0cm 0cm 0.0001pt; font-si=
ze: 11pt; font-family: Calibri, sans-serif; }
a:link, span.MsoHyperlink { color: rgb(5, 99, 193); text-decoration: underli=
ne; }
a:visited, span.MsoHyperlinkFollowed { color: rgb(149, 79, 114); text-decora=
tion: underline; }
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph { margin: 0cm 0=
cm 0.0001pt 36pt; font-size: 11pt; font-family: Calibri, sans-serif; }
span.E-MailFormatvorlage17 { font-family: Calibri, sans-serif; color: window=
text; }
.MsoChpDefault { font-family: Calibri, sans-serif; }
@page WordSection1 { size: 612pt 792pt; margin: 70.85pt 70.85pt 2cm; }
div.WordSection1 { page: WordSection1; }</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently developing=
 a GNU Radio flowgraph with RFNoC 4.3 which uses the RFNoC FFT block. Accord=
ing to this workshop (<a href=3D"https://www.youtube.com/watch?v=3D4XXqk0yGv=
CI">https://www.youtube.com/watch?v=3D4XXqk0yGvCI</a>
 @ 18:10) there are five runtime parameters you have to set for the FFT bloc=
k: magnitude, direction, length, fft_scaling, shift_config.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m not exactly sure whe=
re in the flowgraph I can set these properties. E.g. is setting the =E2=80=9C=
Block Args=E2=80=9D parameter of the FFT block to =E2=80=9Cmagnitude=3Dcompl=
ex,direction=3D1,length=3D1024=E2=80=9D correct? If not, what is the right w=
ay
 to set the runtime parameters?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After setting them as I describe=
d I get two python errors when trying to run the flowgraph:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. Setting magnitude=3Dcomplex c=
auses this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: RuntimeError: Propert=
y magnitude:RuntimeError: Cannot convert `complex' to int!<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the flowgraph, the output of t=
he RFNoC FFT block is connected directly to an RFNoC Rx Streamer block. It s=
eems that all default RFNoC blocks only accept an int input. This error seem=
s strange and that=E2=80=99s why I doubt
 that I set the magnitude parameter correctly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. No matter what parameter I se=
t for the FFT, I get the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: ValueError: samples p=
er package must not be smaller than atomic item size<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was not able to find any suffi=
cient information about this online unfortunately.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I hope I was able to describe my=
 problems clearly and would be glad to receive help regarding any of those.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance and regards=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-07B58EDB-14BD-4061-84B5-71F7CAA35FF8--

--===============6369787528274166601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6369787528274166601==--
