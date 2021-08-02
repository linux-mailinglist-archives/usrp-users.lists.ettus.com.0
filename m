Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 983E23DE050
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 21:52:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A9353814D1
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 15:52:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iUuOLP/j";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id AD7CE38445F
	for <USRP-users@lists.ettus.com>; Mon,  2 Aug 2021 15:52:00 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id t66so17828933qkb.0
        for <USRP-users@lists.ettus.com>; Mon, 02 Aug 2021 12:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=cKRTB6U/16QNVqRFPEj7BZ8Y96KV2LWT7F14c+feaWQ=;
        b=iUuOLP/j29NTDD9AcM9IDIqsPPJWcWRgoP5dnRN4/IL9pBAQMDLU2WOPMYoVd4HvCR
         SBksF1eD3auGSjn0Wa+Z6f/MwMorxKbRCZa/lYmVV4qyvzlhHlKBaQCFw8+mOP7y2l8h
         DHt7u7YKLDeoC6DLxyceK4URCY4KLtIVShO58CrsE9n4ttMo3daERnF4dbacj9UC91GL
         /+S+FfWh+6dOws5TCwT6e3cHeyQ9R1bZzhiHYA5Wg1J594+ViXifKDCB8a99s6PAiRbx
         ZZsBgNuQqh/DuMipe5Vxd3FVYhqXJ8KQ95K9lX5t8I5lyzIKw+Mu/eaN23AEMYLnaj9g
         tFsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=cKRTB6U/16QNVqRFPEj7BZ8Y96KV2LWT7F14c+feaWQ=;
        b=OdpZDf8zB+p91P2vZ3a4T3P58hS3Y2p31knv95Tpi79TW4xOXWqLYTfnjMLIGfPsVk
         sFaUaIwLZXPOPgo2ZuKbeS7Ar24x1aRq4a0XFfONA5UBU4F9rAiytG5U8V8+26Ydl4tI
         p/1FeUAJvsNfQ883kVcxH9+bOMivfz0JtuOUy9xeEC2nt1pV0TQYX0pvNokIrwXJZ087
         tcF29Vq4lh1aeCTAO16SnS3eAtMBwsYoOep5/blx7MlO800TtHSJaEz8WZSlxAsWWH6b
         FOt7B7/N5JZlq/Pr4lEc403lPbzvhOKq0Iy/0c9pB3wkAD2CMh6e207jeKKqY2juTxeZ
         dq9g==
X-Gm-Message-State: AOAM530toFjxigSgspuzussdcJwRpqPcTcTaM0elVlLYF7H98NLT6GX0
	3S5exnlCcKhsYx14IEIPhTA=
X-Google-Smtp-Source: ABdhPJy0Z3iZyhPn/x43jKg0MIcVaElr7x5W0f2hp6yUYwxWxrI5nLnJMunZpqL7SG7UyIMgKmOlXg==
X-Received: by 2002:a05:620a:170d:: with SMTP id az13mr16960656qkb.408.1627933920053;
        Mon, 02 Aug 2021 12:52:00 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 23sm16724qkh.97.2021.08.02.12.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 12:51:59 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 2 Aug 2021 15:51:58 -0400
Message-Id: <32CDEB66-B9EB-4D5A-8B93-2A8AFE434750@gmail.com>
References: <TYAP286MB0217AB8837C04DA21788E3728FEF9@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYAP286MB0217AB8837C04DA21788E3728FEF9@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
To: ZHOU Yuxuan <yzhoudo@connect.ust.hk>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: TVXRZFEQSRNXXATVK5PTZPXKGGV5DYWJ
X-Message-ID-Hash: TVXRZFEQSRNXXATVK5PTZPXKGGV5DYWJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is there a "trigger" in GNURadio with USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVXRZFEQSRNXXATVK5PTZPXKGGV5DYWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1803320715068242661=="


--===============1803320715068242661==
Content-Type: multipart/alternative; boundary=Apple-Mail-4A259695-4585-4AB0-86FC-E93F312AFE72
Content-Transfer-Encoding: 7bit


--Apple-Mail-4A259695-4585-4AB0-86FC-E93F312AFE72
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It depends on what sort of latency you need in the trigger. Given that it is=
 human triggered I=E2=80=99m guessing fairly sloppy.=20

If it could be a keyboard key and you don=E2=80=99t need microsecond scale l=
atency, then this is all doable in software/GnuRadio and you should probably=
 post your question on the discuss-gnuradio mailing list since an implementa=
tion of this would be largely independent of radio hardware.=20

Sent from my iPhone

> On Aug 2, 2021, at 8:26 AM, ZHOU Yuxuan <yzhoudo@connect.ust.hk> wrote:
>=20
> =EF=BB=BF
> Hello everyone.
> =20
> I am using USRP N210 and Gnuradio 3.7. I want a =E2=80=9Ctrigger=E2=80=9D l=
ike a button that only when I push the button then the USRP start to transmi=
t the sample from file source. I did not find any materials or experience fr=
om other about this case.
> =20
> The reason I want to do this is that the transmission is correlated to the=
 human motion so I need to control the timing.
> =20
> Is there anyone know how to implement this fuction?
> =20
> Regards,
> Kevin =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-4A259695-4585-4AB0-86FC-E93F312AFE72
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It depends on what sort of latency you need=
 in the trigger. Given that it is human triggered I=E2=80=99m guessing fairl=
y sloppy.&nbsp;<div><br></div><div>If it could be a keyboard key and you don=
=E2=80=99t need microsecond scale latency, then this is all doable in softwa=
re/GnuRadio and you should probably post your question on the discuss-gnurad=
io mailing list since an implementation of this would be largely independent=
 of radio hardware.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 2, 2021, at 8:26 AM, ZH=
OU Yuxuan &lt;yzhoudo@connect.ust.hk&gt; wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:\7B49\7EBF;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using USRP N210 and Gnuradi=
o 3.7. I want a =E2=80=9Ctrigger=E2=80=9D like a button that only when I pus=
h the button then the USRP start to transmit the sample from file source. I d=
id not find any materials or experience from other
 about this case.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The reason I want to do this is t=
hat the transmission is correlated to the human motion so I need to control t=
he timing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there anyone know how to impl=
ement this fuction?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin &nbsp;<o:p></o:p></span></=
p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-4A259695-4585-4AB0-86FC-E93F312AFE72--

--===============1803320715068242661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1803320715068242661==--
