Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CFF35D60E
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 05:46:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20634384132
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 23:46:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="t1Arfb0C";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id C87663840C8
	for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 23:45:24 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id h7so11743101qtx.3
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 20:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=uz8kiMhzqJKA0rjFnCHJfIWiuIo1VH2uxP0vDK0UNUw=;
        b=t1Arfb0CcND+0Gb4hWxL8GkMWZlqnXXewHerAz0j8Tu+lNSejOPiZaZlUVUds/IOT5
         UsbvODCLwHNowmM3ENVqu0lFlsNfBYdYP6EWt2hZGnzUc2HZk4H9TRNO0h/S0b+CTGli
         0rcUPdtVgMdpu8AMVb+hQs6wO7W1KDq3tzONTY6uYxWvbt0JQrp9XwWGdXfCfN3VRzKg
         fCiAwpStXICDi08s4qRWQqMC9tn56FgayJDdWgOKMEgRFKmRwlA+cnkKfXVEH5UOZf3G
         VrLiKZ1VFuDsBoGnDfYel/pVC7EDI6ec3SiJ+3j9mHQxjm33v41qiV+ShXQ/2aBEC+N6
         fhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=uz8kiMhzqJKA0rjFnCHJfIWiuIo1VH2uxP0vDK0UNUw=;
        b=tDNdInQdjINM0vOOdwHtVDn144kRTY8lzX7RkBXMvZyMb4tlcE0c4QlHXaZZ7ZZWVi
         VvxjdwtYNWiA5n2w1d2jXXehmKafbim0/H0xBw7GnraSUFuRBACOWU6J2DNu+Dbci2lO
         0Tr1u/O0ReF6o4C4IBZ1K4I7G03W915D36VJoGI828Ig7Jpn0MY8jSn9gCfY1iCoOolu
         s0eabUlll877RL/Mmo2Np2y5Xut4OZergmUGQ2eQ6dsBcHQ7E6bMd0/ptUEaVd2WhI/1
         g1xiLD4xWbcBwnc89Qr1eU4rgtEabCD7M/Gj5iznpkRttTy9POX7AorL8tlkrJI1zsJT
         rkTQ==
X-Gm-Message-State: AOAM533RBJwh6btJ8+hO0DmRLO2YFBhD5zm/5N9oKtCc80uGVBtwk4fC
	QDIXQGSiVa+RyAmijnPoYQw=
X-Google-Smtp-Source: ABdhPJyynS0Ty+5aDLe7QCWLcqnSnul/hRxTSR1WPIhwcuFOGTw6iBjxjirtKPDAccDVBFw2gcgGPw==
X-Received: by 2002:ac8:708:: with SMTP id g8mr28514557qth.316.1618285524257;
        Mon, 12 Apr 2021 20:45:24 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l4sm9430494qtn.89.2021.04.12.20.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 20:45:23 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Apr 2021 23:45:22 -0400
Message-Id: <1DF05A31-2445-4C28-ABB5-6A7BD235DFAD@gmail.com>
References: <CWLP265MB33963DA8E51DC9EB47FF72B2A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB33963DA8E51DC9EB47FF72B2A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
To: =?utf-8?Q?=E7=8E=8B=E7=92=80_WANG_Cui?= <iucgnaw@msn.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: EN5LRC2KB6RBCC2UWCGWOYCZFVHER6PL
X-Message-ID-Hash: EN5LRC2KB6RBCC2UWCGWOYCZFVHER6PL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to tx s16 file with tx_samples_from_file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EN5LRC2KB6RBCC2UWCGWOYCZFVHER6PL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6269617957075765275=="


--===============6269617957075765275==
Content-Type: multipart/alternative; boundary=Apple-Mail-BCCDA602-E81D-4078-96F8-1052470322FC
Content-Transfer-Encoding: 7bit


--Apple-Mail-BCCDA602-E81D-4078-96F8-1052470322FC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The tx_samples_from_file application is just an example application. You are=
 free to modify it to meet your needs, including converting real-samples dat=
a to complex baseband data =20

The hardware, however, supports complex baseband data, In either sc16 or sc8=
 format =E2=80=9Cover the wire=E2=80=9D.   The host software (whether that=E2=
=80=99s the tx_samples_from_file example code or your own) is free to accept=
 and convert files into the baseband format accepted by the radio hardware. =
=20

Sent from my iPhone

> On Apr 12, 2021, at 10:08 PM, =E7=8E=8B=E7=92=80 WANG Cui <iucgnaw@msn.com=
> wrote:
>=20
> =EF=BB=BF
> Thanks for reply.
> However for RF signal, IQ Complex signal double the file size, which is qu=
ite inconvenient, it will be best that USRP can natively support such format=
. (Even sometimes RF signal is in 4-bit, 1 bit format, and convert to I/Q wi=
ll be more than 10 times larger...)
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Tuesday, April 13, 2021 09:44 AM
> To: ?? WANG Cui <iucgnaw@msn.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] How to tx s16 file with tx_samples_from_file
> =20
> Complex baseband is the natural format for this stuff. If you have real-sa=
mpled data you=E2=80=99ll have to convert it into complex baseband first.=20=

>=20
> Sent from my iPhone
>=20
>=20
> On Apr 12, 2021, at 9:32 PM, ?? WANG Cui <iucgnaw@msn.com> wrote:
>=20
> =EF=BB=BF
> Hi,
> When I try tx_samples_from_file example, looks like it only take Complex d=
ata format.
> However I have signal file in RF direct sample format (each data element r=
epresent a sample value), say it is =E2=80=9Cs8=E2=80=9D or =E2=80=9Cs16=E2=80=
=9D format as defined in UHD term.
> I wonder how can I transmit such file? Or must I convert it into Interleav=
ed I/Q (Complex) format?
> Thanks in advance,
> =20
> iucganw
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-BCCDA602-E81D-4078-96F8-1052470322FC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The tx_samples_from_file application is jus=
t an example application. You are free to modify it to meet your needs, incl=
uding converting real-samples data to complex baseband data &nbsp;<div><br><=
/div><div>The hardware, however, supports complex baseband data, In either s=
c16 or sc8 format =E2=80=9Cover the wire=E2=80=9D. &nbsp; The host software (=
whether that=E2=80=99s the tx_samples_from_file example code or your own) is=
 free to accept and convert files into the baseband format accepted by the r=
adio hardware. &nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Apr 12, 2021, at 10:08 PM, =E7=8E=
=8B=E7=92=80 WANG Cui &lt;iucgnaw@msn.com&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:11.0pt;
	font-family:=E7=AD=89=E7=BA=BF;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks for reply.<o:p></o:p></p>
<p class=3D"MsoNormal">However for RF signal, IQ Complex signal double the f=
ile size, which is quite inconvenient, it will be best that USRP can nativel=
y support such format. (Even sometimes RF signal is in 4-bit, 1 bit format, a=
nd convert to I/Q will be more
 than 10 times larger...)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span sty=
le=3D"font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span styl=
e=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D Leech &lt;patchvo=
nbraun@gmail.com&gt;
<br>
<b>Sent:</b> Tuesday, April 13, 2021 09:44 AM<br>
<b>To:</b> ?? WANG Cui &lt;iucgnaw@msn.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] How to tx s16 file with tx_samples_from_fil=
e<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;<=
/o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"margin-bottom:12.0pt;text-ali=
gn:left">Complex baseband is the natural format for this stuff. If you have r=
eal-sampled data you=E2=80=99ll have to convert it into complex baseband fir=
st.&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Apr 12, 2021, at 9:=
32 PM, ?? WANG Cui &lt;<a href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn.com</a=
>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=3D=
"font-family:&quot;Tahoma&quot;,sans-serif">=EF=BB=BF</span>
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span=
></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">When I try tx_samples_from_file example, looks like i=
t only take Complex data format.<o:p></o:p></p>
<p class=3D"MsoNormal">However I have signal file in RF direct sample format=
 (each data element represent a sample value), say it is
<span lang=3D"ZH-CN">=E2=80=9C</span>s8<span lang=3D"ZH-CN">=E2=80=9D</span>=
 or <span lang=3D"ZH-CN">=E2=80=9C</span>s16<span lang=3D"ZH-CN">=E2=80=9D</=
span> format as defined in UHD term.<o:p></o:p></p>
<p class=3D"MsoNormal">I wonder how can I transmit such file? Or must I conv=
ert it into Interleaved I/Q (Complex) format?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">iucganw<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=3D=
"font-family:&quot;Calibri&quot;,sans-serif">_______________________________=
________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></p>
</div>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-BCCDA602-E81D-4078-96F8-1052470322FC--

--===============6269617957075765275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6269617957075765275==--
