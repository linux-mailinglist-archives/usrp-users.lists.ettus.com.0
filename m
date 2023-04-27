Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EB26F0BD9
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 20:25:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C3F1384524
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 14:25:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682619928; bh=BFuV0uwipmnWUDr29/mr0D9hLYBH9RRRGAFoXqAyyjE=;
	h=From:References:In-Reply-To:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YApDqZEeqXqlcvh8l3C7YIRg1IvAPCULtuvGbRTdPQgQK+q4BUyeXOAWcXNUGqrTy
	 gAekiuanEMbA1eQSCzCDGt8vQDZR3zW9nOuv+MJ85WD9n0/nOYfQAwRC9cj86OjaVN
	 lllSc6EHNanW4rn0n7PLOUXAAnshOnBWwK1Ojof0dbon2poor3ue+lgNBdrZAPJJvq
	 swzfdJHumyz+xFw7Xt1E0eZ5Vf7PzPYVEvVa0picRQm34FBpFwNQVQqV7wX/bxXjmx
	 JPurpCESj/YyH0lu+oJe8vDTPJOuKngzl4Yi8afHFK2PqqP8t52c8pO0o11dS7IZwW
	 ELFHqsBMn7zOw==
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B2E9384453
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 14:25:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="fn116zJU";
	dkim-atps=neutral
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-52091c58109so8272175a12.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1682619906; x=1685211906;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oICwLerEP6lf5Z6WIN9wQkaAONnTaE+cb7G1ENZATvE=;
        b=fn116zJUpf68o6BXBvn4kAbh4M0JutQVx5KwR35kqbopmmUXDwGDi1EOBZ0BQ+BFqv
         DYWojc2GD/KAn2r6d46vWXS5Ypk9EtrRXkxTVEPPQsPe6iP5FhlKwH8839w5j0OtPkrg
         faemWZlY86Ope9WiLwvUs0bSyURPUDJtfd0XJd2PaHXwMMFoIjH846D6kxtKBujl18Uj
         DldxYT8cyHTq0JrTVBdahcOaWMxYqdwrMet2kxZ1qgOYQ7qwgG3bMGnedQ85uH0a/SgQ
         PfqHmexMNkWJRPRvYe7K/1p75LHzt3yNYiFFVqJ7bAcqYbWc1Dsg2+XrcNn7biBQeLo8
         44xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682619906; x=1685211906;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oICwLerEP6lf5Z6WIN9wQkaAONnTaE+cb7G1ENZATvE=;
        b=PWQm8XJ6zW+7Ygi2zXnhOZvtNLlNe/x4ez4zq2pFXMxFaZnegyTbET1QIDWHmIOt7b
         hOy8JlOEfC89yyoW5KlXEFK80dD+aRgcb/DQ2BOstgd+h1Wt32G0BZezoxiiUoIWn7sx
         WwY1ayLue/7CyMNdQ5BQkkj5+/9aTdcH854wuP5lv01esPnlcqjuYV0rJKKXBYqn4kp2
         jDHdZVtjSM1V/ss4IzsKUmsaX9FD0CX2q5ezDqk8HswQ1GcwqKDFBdQ2v24SUqCAUOUp
         GsXTPfHq09UQJPkPIh4RKyfq0c1inzMoaTarJlWY7xoJ35W8XAdcJi8paFtDffHhUzQS
         qf/w==
X-Gm-Message-State: AC+VfDyIjRZMcwNatkMkmV8CXyHeWnUvaXyShOZlwbpQuVF5ENERC9vE
	m/ubln5cTVYzWOsdBHH4kQ0qB+vp5QMGftwl+LZCbw==
X-Google-Smtp-Source: ACHHUZ4s0GPBD2ifV9XL0ofgbM0yUo7iY+esc1PkcB0qRGbe8L9Q2+FRc4UPAXm67HnQgAtYbZIOp6uIoxRgXgxb7J8=
X-Received: by 2002:a17:90b:4f8e:b0:247:398c:d64f with SMTP id
 qe14-20020a17090b4f8e00b00247398cd64fmr2595475pjb.23.1682619905912; Thu, 27
 Apr 2023 11:25:05 -0700 (PDT)
From: Ryan Retting <ryan@chaosinc.com>
References: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com> <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
In-Reply-To: <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFb/IHLA79YeS8sg8K1qUPUcVA3AAItghJ8sCkD+CA=
Date: Thu, 27 Apr 2023 11:25:04 -0700
Message-ID: <51f66780a3cea4b211dd54a8fcfadd63@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>, jmaloyan@umass.edu
Message-ID-Hash: 7HP4PHS3UECMFSAB27Z4MAAU3KX26LD3
X-Message-ID-Hash: 7HP4PHS3UECMFSAB27Z4MAAU3KX26LD3
X-MailFrom: ryan@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7HP4PHS3UECMFSAB27Z4MAAU3KX26LD3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3430894507869881532=="

--===============3430894507869881532==
Content-Type: multipart/alternative; boundary="000000000000c8def005fa5579bc"

--000000000000c8def005fa5579bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We=E2=80=99ve had success with this from 10Gtek on Amazon:

https://www.amazon.com/gp/product/B08B85XQCK/ref=3Dppx_yo_dt_b_asin_title_o=
00_s00?ie=3DUTF8&th=3D1

Cheaper and available Prime One Day.



It was said before, but I=E2=80=99ll reiterate that you shouldn=E2=80=99t a=
ssume
auto-negotiation with the SFP+ NICs on the Ettus.  Depending on your FPGA
flavor, if it=E2=80=99s 10G it must be matched with a 10G transceiver.  A 1=
G
transceiver won=E2=80=99t work in a 10G port if the FPGA flavor configurati=
on for
the port is 10G.  See
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_fpg=
a_update_flavors



Thanks,

              -Ryan





*From:* Michael Dickens <michael.dickens@ettus.com>
*Sent:* Thursday, April 27, 2023 11:14 AM
*To:* jmaloyan@umass.edu
*Cc:* usrp-users@lists.ettus.com
*Subject:* [USRP-users] Re: Ettus N321 SFP streaming issues



I've used this for both USRP and general networking: Generic 10GBASE-T SFP+
Copper RJ45 Transceiver Module - FS.com
<https://www.fs.com/products/74680.html?attribute=3D26&id=3D412> . The USRP=
 is
brand agnostic, so I generally just get "generic" branding. If you need
more of these for specific brand devices, then I'd say to get for those
brands. There are lots of manufacturers of these adapters. I and others
have found FS to be high quality at reasonable prices. I hope this is
useful! - MLD



On Thu, Apr 27, 2023 at 1:58=E2=80=AFPM <jmaloyan@umass.edu> wrote:

What adapters do you recommend?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000c8def005fa5579bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered m=
edium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=
=3D"word-wrap:break-word"><div class=3D"WordSection1"><p class=3D"MsoNormal=
">We=E2=80=99ve had success with this from 10Gtek on Amazon:</p><p class=3D=
"MsoNormal"><a href=3D"https://www.amazon.com/gp/product/B08B85XQCK/ref=3Dp=
px_yo_dt_b_asin_title_o00_s00?ie=3DUTF8&amp;th=3D1">https://www.amazon.com/=
gp/product/B08B85XQCK/ref=3Dppx_yo_dt_b_asin_title_o00_s00?ie=3DUTF8&amp;th=
=3D1</a></p><p class=3D"MsoNormal">Cheaper and available Prime One Day.</p>=
<p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">It was said before,=
 but I=E2=80=99ll reiterate that you shouldn=E2=80=99t assume auto-negotiat=
ion with the SFP+ NICs on the Ettus.=C2=A0 Depending on your FPGA flavor, i=
f it=E2=80=99s 10G it must be matched with a 10G transceiver.=C2=A0 A 1G tr=
ansceiver won=E2=80=99t work in a 10G port if the FPGA flavor configuration=
 for the port is 10G.=C2=A0 See <a href=3D"https://files.ettus.com/manual/p=
age_usrp_n3xx.html#n3xx_getting_started_fpga_update_flavors">https://files.=
ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_fpga_update_flavo=
rs</a></p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thanks,</=
p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Ryan</p><p class=3D"MsoNormal"> </p><p clas=
s=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><div style=3D"bo=
rder:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in 0in 0in"><p clas=
s=3D"MsoNormal"><b>From:</b> Michael Dickens &lt;<a href=3D"mailto:michael.=
dickens@ettus.com">michael.dickens@ettus.com</a>&gt; <br><b>Sent:</b> Thurs=
day, April 27, 2023 11:14 AM<br><b>To:</b> <a href=3D"mailto:jmaloyan@umass=
.edu">jmaloyan@umass.edu</a><br><b>Cc:</b> <a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a><br><b>Subject:</b> [USRP-users=
] Re: Ettus N321 SFP streaming issues</p></div><p class=3D"MsoNormal">=C2=
=A0</p><div><p class=3D"MsoNormal">I&#39;ve used=C2=A0this for both USRP an=
d general networking:=C2=A0<a href=3D"https://www.fs.com/products/74680.htm=
l?attribute=3D26&amp;id=3D412">Generic 10GBASE-T SFP+ Copper RJ45 Transceiv=
er Module - FS.com</a>=C2=A0. The USRP is brand agnostic, so I generally ju=
st get &quot;generic&quot; branding. If you need more of these for specific=
 brand devices, then I&#39;d say to get for those brands. There are lots of=
 manufacturers=C2=A0of these adapters. I and others have found FS to be hig=
h quality at reasonable prices. I hope this is useful! - MLD</p></div><p cl=
ass=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal">On Thu, Apr 27=
, 2023 at 1:58=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloya=
n@umass.edu</a>&gt; wrote:</p></div><blockquote style=3D"border:none;border=
-left:solid #cccccc 1.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margi=
n-right:0in"><p>What adapters do you recommend?</p><p class=3D"MsoNormal">_=
______________________________________________<br>USRP-users mailing list -=
- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a><br>To unsubscribe send an email to <a href=3D"mailto:=
usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.=
ettus.com</a></p></blockquote></div></div></body></html>

--000000000000c8def005fa5579bc--

--===============3430894507869881532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3430894507869881532==--
