Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD37335D639
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 06:08:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 171473841E5
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 00:08:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m7OQZv2a";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CFE473841E0
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 00:07:40 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id o5so16690482qkb.0
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 21:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=VVaIeHK7rjh5cyxXamhj0TCyIG5cvoNfcyG8mPH93fQ=;
        b=m7OQZv2awRuR4u6bjWDFVULmvUsUwDbhT3GgtcsIwgfFlg9k6jVGn1OXxPcefaRSSd
         0g+aISYgOZotSzcCMNIn5hg/Yc8HHqEk1h4li44xtBypaYoJSZBIs6RMBsT5ZxRak4hf
         xERumuDVtKmOoKqU9JCG/PXCnHLd9y3aik91rB1ZfYdu8+YFD6iY71WC+eWUuDkTjVO9
         v4QIA4e0mQ+wiuZww3Z36WsCV3KoM3htUbEY5mpmPRITJ/ogChOhhosoFKXl6yQsCpAu
         NmUCCKBCfx6smJZk0TYYTJbDFxKpjqyG8JmJ5GRO8wuf55TouluTG+xI7rMP+AiqT5Ic
         steg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=VVaIeHK7rjh5cyxXamhj0TCyIG5cvoNfcyG8mPH93fQ=;
        b=g76PzbgJkj6L54dzLn+KdPht+3eYQKg8gp3o26xqdJ8udLVa6kXS+9UBDOOogsx3Jj
         j0EvcjP/EePUEZTGVF22Hr7MLIQdRh24K4BJR+xEhYgnTvf332lqgSQCh4WmL/0LJUp4
         qU2VfKBUcxEGQZMLd5/WQY66X8XkpPV5n+acJWjTD0PxDzjbACyGJAoOF92UqIks7tfw
         +7GE7/gbm2lxivUEQHM4bISSUrHXe0rgHjqsc5epGXriIAaTFysyvPFInH+e4gCG8w+R
         dMRV2SgKtfjRg0vT/zbsaFZMqjUCJjXzSvWWf2mvy4GPCQdb6SQYIACdFk8zc+DUTvOM
         Yp+w==
X-Gm-Message-State: AOAM532G3rYz0dc+p/cuVHtngK9utagMuiDAzG0qQ1qZPE9dFcoEtNTu
	JB0GstSqv06Ocwx2AU2oIGo=
X-Google-Smtp-Source: ABdhPJySClfBp4dPikSf8FL1YiMjhAHSb5CrCULIbJql+dXIWcRe4G4oSITPFqPz8P0D380Yj0OqIQ==
X-Received: by 2002:a37:a7c7:: with SMTP id q190mr8705574qke.146.1618286860253;
        Mon, 12 Apr 2021 21:07:40 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id e13sm868259qtg.6.2021.04.12.21.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 21:07:39 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Apr 2021 00:07:39 -0400
Message-Id: <155E748D-A0B1-4E4B-8029-859B667B9BD6@gmail.com>
References: <CWLP265MB33962EF4C7FE6787966B97D4A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB33962EF4C7FE6787966B97D4A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
To: =?utf-8?Q?=E7=8E=8B=E7=92=80_WANG_Cui?= <iucgnaw@msn.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 3Z6JZK5D3Z6IWRKVPJI5VYURW7FFCP5Q
X-Message-ID-Hash: 3Z6JZK5D3Z6IWRKVPJI5VYURW7FFCP5Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to tx s16 file with tx_samples_from_file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3Z6JZK5D3Z6IWRKVPJI5VYURW7FFCP5Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6270392873168518371=="


--===============6270392873168518371==
Content-Type: multipart/alternative; boundary=Apple-Mail-EFA5B9AC-7A17-43B1-8666-26F8E0E85F9A
Content-Transfer-Encoding: 7bit


--Apple-Mail-EFA5B9AC-7A17-43B1-8666-26F8E0E85F9A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

No. A real-sampled signal would
Need to be sampled at twice the notional bandwidth. So the data rate is the s=
ame.=20

Sent from my iPhone

> On Apr 12, 2021, at 11:59 PM, =E7=8E=8B=E7=92=80 WANG Cui <iucgnaw@msn.com=
> wrote:
>=20
> =EF=BB=BF
> That make sense, I guess I would modify it to accept more format.
> However, for the hardware side, it accept only Complex OTW format, which m=
eans it need double bandwidth from host (I am using B210, USB3). When transm=
it high sample rate signal, it is very easy to underflow. If we can upgrade f=
irmware to handle format conversion on hardware level, it will ease a lot on=
 host computing resource and USB/NIC bandwidth and performance.
> Thanks!
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Tuesday, April 13, 2021 11:45 AM
> To: =E7=8E=8B=E7=92=80 WANG Cui <iucgnaw@msn.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] How to tx s16 file with tx_samples_from_file
> =20
> The tx_samples_from_file application is just an example application. You a=
re free to modify it to meet your needs, including converting real-samples d=
ata to complex baseband data =20
> =20
> The hardware, however, supports complex baseband data, In either sc16 or s=
c8 format =E2=80=9Cover the wire=E2=80=9D.   The host software (whether that=
=E2=80=99s the tx_samples_from_file example code or your own) is free to acc=
ept and convert files into the baseband format accepted by the radio hardwar=
e. =20
>=20
> Sent from my iPhone
>=20
>=20
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

--Apple-Mail-EFA5B9AC-7A17-43B1-8666-26F8E0E85F9A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">No. A real-sampled signal would<div>Need to=
 be sampled at twice the notional bandwidth. So the data rate is the same.&n=
bsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Apr 12, 2021, at 11:59 PM, =E7=8E=8B=E7=92=80 WA=
NG Cui &lt;iucgnaw@msn.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF

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
	{font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;
	panose-1:2 11 5 3 2 2 4 2 2 4;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91";}
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
span.EmailStyle19
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle21
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
<p class=3D"MsoNormal">That make sense, I guess I would modify it to accept m=
ore format.<o:p></o:p></p>
<p class=3D"MsoNormal">However, for the hardware side, it accept only Comple=
x OTW format, which means it need double bandwidth from host (I am using B21=
0, USB3). When transmit high sample rate signal, it is very easy to underflo=
w. If we can upgrade firmware to
 handle format conversion on hardware level, it will ease a lot on host comp=
uting resource and USB/NIC bandwidth and performance.<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span sty=
le=3D"font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span styl=
e=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D Leech &lt;patchvo=
nbraun@gmail.com&gt;
<br>
<b>Sent:</b> Tuesday, April 13, 2021 11:45 AM<br>
<b>To:</b> </span><span lang=3D"ZH-CN" style=3D"font-family:&quot;=E5=BE=AE=E8=
=BD=AF=E9=9B=85=E9=BB=91&quot;,sans-serif">=E7=8E=8B=E7=92=80</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif"> WANG Cui &lt;iucgnaw@msn=
.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] How to tx s16 file with tx_samples_from_fil=
e<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;<=
/o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left">The tx_sampl=
es_from_file application is just an example application. You are free to mod=
ify it to meet your needs, including converting real-samples data to complex=
 baseband data &nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The hardware, however,=
 supports complex baseband data, In either sc16 or sc8 format =E2=80=9Cover t=
he wire=E2=80=9D. &nbsp; The host software (whether that=E2=80=99s the tx_sa=
mples_from_file example code or your own) is free to accept and
 convert files into the baseband format accepted by the radio hardware. &nbs=
p;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Apr 12, 2021, at 10=
:08 PM, =E7=8E=8B=E7=92=80 WANG Cui &lt;<a href=3D"mailto:iucgnaw@msn.com">i=
ucgnaw@msn.com</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=3D=
"font-family:&quot;Tahoma&quot;,sans-serif">=EF=BB=BF</span>
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span=
></p>
<p class=3D"MsoNormal">Thanks for reply.<o:p></o:p></p>
<p class=3D"MsoNormal">However for RF signal, IQ Complex signal double the f=
ile size, which is quite inconvenient, it will be best that USRP can nativel=
y support such format. (Even sometimes RF signal is in 4-bit, 1 bit format, a=
nd convert to I/Q will be more
 than 10 times larger...)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span sty=
le=3D"font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span styl=
e=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, April 13, 2021 09:44 AM<br>
<b>To:</b> ?? WANG Cui &lt;<a href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn.co=
m</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.et=
tus.com</a><br>
<b>Subject:</b> Re: [USRP-users] How to tx s16 file with tx_samples_from_fil=
e</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left">&nbsp;<o:p><=
/o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"margin-bottom:12.0pt;text-ali=
gn:left">Complex baseband is the natural format for this stuff. If you have r=
eal-sampled data you<span lang=3D"ZH-CN">=E2=80=99</span>ll have to convert i=
t into complex baseband first.&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
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
<o:p></o:p></p>
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
usrp-users-leave@lists.ettus.com</a></span><o:p></o:p></p>
</div>
</blockquote>
</div>
</blockquote>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-EFA5B9AC-7A17-43B1-8666-26F8E0E85F9A--

--===============6270392873168518371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6270392873168518371==--
