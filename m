Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B250675F
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 11:03:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C64F5384401
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 05:03:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650359027; bh=wuJLkc/SDpDfSbJc+tPhS37T+xBoo1ztbV9teuZ+7VY=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GnQ5QwgoTJLCFoAEIcovCLwZf0BE9FIHSCBqnQH2SR4ZXy0klg96DsL4xmQ7RHA4A
	 O+nWigCup3/vBh407B8nTlxLv5x5aqR/VAuW6VCVTYr7P3YdgT2lDzZYLgMlypL6eY
	 14DQDWKyGoMhVyfBC/uXKYSF5NKhU/e/gsOSEVKfpfWhqQ8HygwcF729fzvN3DsFk2
	 Hhk0lnjHE2/cb9oIXggJhC2nFHyiqbGgiRy8rJlHMXG+XKV2iF7/88aYZmvzhJUrCM
	 BpHk0hBh2oubtHJhuAkoPIkoMtWvP6VYxsavghrM5xPdnsS1iL7L+4n8z7MU+GNb0b
	 RpvuYv2LHPqsA==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id BB82D38435A
	for <USRP-users@lists.ettus.com>; Tue, 19 Apr 2022 05:02:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WgfN6DDP";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id ay11so134494qtb.4
        for <USRP-users@lists.ettus.com>; Tue, 19 Apr 2022 02:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=RhaabO1LJaZnt5ggJMsiAOCx/G6xnRafP7Ky+A1nWLw=;
        b=WgfN6DDPGTSKYDv5KsaKvYDt5O0fnYnB9b24RmkuDI+AHxWmp6/rCOQNCsvWgy7KFq
         20FBECAUL5A9uCOE69uURkNP2v6NvJUZZQjiPcC/pcIEFlCDQaPiQRRgKlKyZx8LoRu8
         10erthOcYw2oDNESAy0BqgxAbD42RylhaMydLioFsCRFOirz5l16OZo93Q+J52PiFxDe
         BuAV2VemV99G2mzvv5I/e3akRmHxter3Jj7EddT2LS2Q8lcYbe9qo0L1SaLwo6sYbFEr
         lRebS6WCPJrmj6CuZ9QujwiCuZUTCgvFIxnFFsHnL9T0c+TGnUS2scfxAAusgchwvlmI
         p6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=RhaabO1LJaZnt5ggJMsiAOCx/G6xnRafP7Ky+A1nWLw=;
        b=p0w/gUjLpurBNdn0fwEbo7Br0fFqnWaOTtELEDcKJh/zcNYGPsEjp4zGl2Ftb+VQEt
         nzOsGzIiMXb3gA7TEj7BzLc67+il17FJvRpALOQbUKCpsgKFJ0k0t98orCoKNlDoBy2G
         I53w+twL1UudPCayZd/uLR4H3mkP3WPFKmCkxXb7mzoPchSAALPocnUXQi4CdK21upqu
         Vik4x4aXK/JhdsuQneaRyTjq9ImlIR8Zf2GbqBGsWngNn+ijxHc2QAuK51hDot5sIJuw
         /Fwc9S0icBsgtcFAma7uBr1yBQP3I63vUYJskMqKgSbVudCQ8THuAo29Uq9UO6ZoDyof
         kt3A==
X-Gm-Message-State: AOAM533peHfci2iZMtCPhgorPmvUJubJfVfxDoKjOwb0i8f3fgZQlLCM
	APixBloI1k9DyEDaQEqTUwuJn6lmHzQuVQ==
X-Google-Smtp-Source: ABdhPJy4FmJ4A2P5ikHIz3hQv5M8FRvPsdj7cwcv5+jNv/SHnl3HJN7D1np0gW8Bo6PAjHmhzgwDQw==
X-Received: by 2002:a05:622a:314:b0:2f1:fc4d:3547 with SMTP id q20-20020a05622a031400b002f1fc4d3547mr6186723qtw.276.1650358962594;
        Tue, 19 Apr 2022 02:02:42 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id c136-20020a379a8e000000b0069e5df9d953sm5780170qke.34.2022.04.19.02.02.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 02:02:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 19 Apr 2022 05:02:41 -0400
Message-Id: <11A43D77-4664-4C1A-A9CE-9BC6024BD592@gmail.com>
References: <SV0P279MB0089701D7A231B7DC0219966A0F29@SV0P279MB0089.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: <SV0P279MB0089701D7A231B7DC0219966A0F29@SV0P279MB0089.NORP279.PROD.OUTLOOK.COM>
To: =?utf-8?Q?"Skorstad,_J=C3=B8rn"?= <jsk@nkom.no>
X-Mailer: iPhone Mail (19E258)
Message-ID-Hash: JZX2BDQOGD6SDQXYLLQZEPAEI23JOMRV
X-Message-ID-Hash: JZX2BDQOGD6SDQXYLLQZEPAEI23JOMRV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZX2BDQOGD6SDQXYLLQZEPAEI23JOMRV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3596851146651254478=="


--===============3596851146651254478==
Content-Type: multipart/alternative; boundary=Apple-Mail-49F160E9-810E-4D0F-ACCD-385C04222E60
Content-Transfer-Encoding: 7bit


--Apple-Mail-49F160E9-810E-4D0F-ACCD-385C04222E60
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

A new Image is being worked on that has those drivers. Once it has we tested=
 an announcement will be made.=20

Sent from my iPhone

> On Apr 19, 2022, at 2:50 AM, Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:
>=20
> =EF=BB=BF
> Did you get any feedback from R&D about this matter? Should I raise an iss=
ue on github?
> =20
> Jorn
> =20
> =20
> On 2022-04-04 03:47, Skorstad, J=C3=B8rn wrote:
> Hello,
> =20
> Currently using the E310 SDR together with UHD 4.1.0.4, original image fil=
e downloaded using the tool uhd_images_downloader. I have tried to connect t=
wo different USB-serial converters to the radio. Both returns something like=
 this in dmesg, and no /dev/tty*** is created:
> =20
> [ 1516.703188] usb 1-1-port3: attempt power cycle
> [ 1517.382889] usb 1-1.3: new full-speed USB device number 26 using ci_hdr=
c
> [ 1517.822885] usb 1-1.3: device not accepting address 26, error -32
> [ 1517.922941] usb 1-1.3: new full-speed USB device number 27 using ci_hdr=
c
> [ 1518.362912] usb 1-1.3: device not accepting address 27, error -32
> [ 1518.373791] usb 1-1-port3: unable to enumerate USB device
> =20
> lsusb shows this line: Bus 001 Device 023: ID 1a86:7523 QinHeng Electronic=
s HL-340 USB-Serial adapter (WeMos D1 in this case)
> =20
> This is probably caused by lack of drivers? Previously we used the old 3.8=
 image, where USB serial converters were added without problems. Is it possi=
ble to add support to the new image as well?
> =20
> lsb_release -a
> LSB Version:      n/a
> Distributor ID:   Alchemy
> Description:       Alchemy 2021.04
> Release:              2021.04
> Codename:        Alchemy-Zeus
> =20
> BR
> Jorn
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> I just tried this with a CP2101-based USB serial card, and got the same re=
sult.  Nothing in /dev/ttyUSB* or /dev/ttyACM*  and no hint that any driver w=
as loaded.
>=20
> I'll see if anyone in Ettus R&D can help.
>=20

--Apple-Mail-49F160E9-810E-4D0F-ACCD-385C04222E60
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">A new Image is being worked on that has tho=
se drivers. Once it has we tested an announcement will be made.&nbsp;<div><d=
iv><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Apr 19, 2022, at 2:50 AM, Skorstad, J=C3=B8rn &l=
t;jsk@nkom.no&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"=
><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML-forh=C3=A5ndsformatert Tegn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New",serif;}
span.HTML-forhndsformatertTegn
	{mso-style-name:"HTML-forh=C3=A5ndsformatert Tegn";
	mso-style-priority:99;
	mso-style-link:HTML-forh=C3=A5ndsformatert;
	font-family:Consolas;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Did you get any feedback from R&amp;D about this matt=
er? Should I raise an issue on github?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2022-04-04 03:47, Skorstad, J=C3=B8rn wrote:<span s=
tyle=3D"mso-fareast-language:NO-BOK"><o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Currently using the E310 SDR together with UHD 4.1.0.=
4, original image file downloaded using the tool uhd_images_downloader. I ha=
ve tried to connect two different USB-serial converters to the radio. Both r=
eturns something like this in dmesg,
 and no /dev/tty*** is created:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1516.703188] usb 1-1-port3: attempt power cycle<o:p=
></o:p></p>
<p class=3D"MsoNormal">[ 1517.382889] usb 1-1.3: new full-speed USB device n=
umber 26 using ci_hdrc<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1517.822885] usb 1-1.3: device not accepting addres=
s 26, error -32<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1517.922941] usb 1-1.3: new full-speed USB device n=
umber 27 using ci_hdrc<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1518.362912] usb 1-1.3: device not accepting addres=
s 27, error -32<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1518.373791] usb 1-1-port3: unable to enumerate USB=
 device<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">lsusb shows this line: Bus 001 Device 023: ID 1a86:75=
23 QinHeng Electronics HL-340 USB-Serial adapter (WeMos D1 in this case)<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">This is probably caused by lack of drivers? Previousl=
y we used the old 3.8 image, where USB serial converters were added without p=
roblems. Is it possible to add support to the new image as well?<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">lsb_release -a<o:p></o:p></p>
<p class=3D"MsoNormal">LSB Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n/a<o:p></=
o:p></p>
<p class=3D"MsoNormal">Distributor ID:&nbsp;&nbsp; Alchemy<o:p></o:p></p>
<p class=3D"MsoNormal">Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alch=
emy 2021.04<o:p></o:p></p>
<p class=3D"MsoNormal">Release:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021.04<o:p></o:p></p>
<p class=3D"MsoNormal">Codename:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A=
lchemy-Zeus<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">BR<o:p></o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:NO-BOK"><br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"mso-far=
east-language:NO-BOK">I just tried this with a CP2101-based USB serial card,=
 and got the same result.&nbsp; Nothing in /dev/ttyUSB* or /dev/ttyACM*&nbsp=
; and no hint that any driver was loaded.<br>
<br>
I'll see if anyone in Ettus R&amp;D can help.<br>
<br>
<o:p></o:p></span></p>
</div>


</div></blockquote></div></div></div></body></html>=

--Apple-Mail-49F160E9-810E-4D0F-ACCD-385C04222E60--

--===============3596851146651254478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3596851146651254478==--
