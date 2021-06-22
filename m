Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8293B089F
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 17:20:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 386653842A9
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 11:20:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qEomADuR";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 26A41384202
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 11:19:43 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id q190so37765616qkd.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 08:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=5/4InhnEjF2XDJJct+Q2L8OpQzLdsa9TLM+NrjJfBXw=;
        b=qEomADuRqQN3VAreBikqNN9MlN1X6mArb4WkQqsDBln7TVXsQOYDw5Jws/PjwX6okc
         PXTQyZ5OpEXf7dtili1cJyYdbOx3nM/3wZZ/QmO9nzfkZeLhKRHE9aP9Cnu7Blo/PYKU
         p5JW8Kq4NB0LdxJU4wN1f7g/RG12l92afJVVC4mqroEJOlSPw/NLNr3C8VwBWkuaZNbg
         Ro/o3yvgBc8w7ze56Rraey5uUtevg4TRUAwtpZjt44qcawvvXRnWnAUu+UKp2XFkRjs6
         HI42q25f1m9VqEP6JIn/qrLAGcijrIkQL9b8FNv4+/1pnWVjlQK4ltJ5sAJqhSNM5vnz
         89jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=5/4InhnEjF2XDJJct+Q2L8OpQzLdsa9TLM+NrjJfBXw=;
        b=MIyu9CAj6kM0AyKb+1zmcsFlBxDThThy/P7oGYhILsiFqXahFOEECw6CFoT+d1b5/I
         bR6fA6lQkh5r3DoM2zZkc5Qqa4aqJhdWGGZaVne/Hsld3qi499GNG8HpoQADh9vUlnaL
         2Ef+NcAryoKqwnUvgdYrfyKoCFHfCQuugxFxGHxXDToxVPesTWyiH5tIiZoeukQ7racR
         UFe6q2BY0c4xeEp4jPG6KOlRrn+b/F0d9hyH8z/tlqbfT3y5OLpwUdfsiURpHBJJJxzs
         k0NjmvWIdUj5S5Em4MwVLBO8PXhi8NOQL55UM2ZtI/hT8B2aYIzvn63HW5NZSMISuXR4
         C2Bw==
X-Gm-Message-State: AOAM533r68+UImVbTYxRHNvFvoCBici1sY3oCAhyDFB7WMP9d+OyO33m
	WGXBMdbGENGQzwz3J2nJ+p3GTykbaU0PIA==
X-Google-Smtp-Source: ABdhPJxYHvxDqVUnZvX4V97gYa6lnEfL7RSwUSMz6MaiMWnhyYAj2VULicuIFsQgBQzTwzcWgaF3Tw==
X-Received: by 2002:a05:620a:22ab:: with SMTP id p11mr4879815qkh.250.1624375183147;
        Tue, 22 Jun 2021 08:19:43 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id s22sm1792687qtx.32.2021.06.22.08.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 08:19:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Jun 2021 11:19:41 -0400
Message-Id: <B2DC157F-B2E7-41B1-AFF9-C3EFD78A9FD9@gmail.com>
References: <8324554fce67426fb14b18bdae01dbc1@erdc.dren.mil>
In-Reply-To: <8324554fce67426fb14b18bdae01dbc1@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: UOYJ3Z6OHLP5TARV7W26WUWRGLKWJ6JE
X-Message-ID-Hash: UOYJ3Z6OHLP5TARV7W26WUWRGLKWJ6JE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: intermittent TX error using DPDK and x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UOYJ3Z6OHLP5TARV7W26WUWRGLKWJ6JE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5230120764915645479=="


--===============5230120764915645479==
Content-Type: multipart/alternative; boundary=Apple-Mail-7F69BBB7-6A18-4590-B977-9B349B8D7CEA
Content-Transfer-Encoding: 7bit


--Apple-Mail-7F69BBB7-6A18-4590-B977-9B349B8D7CEA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

So if either of them are connected singularly, things work, otherwise, even d=
ealing with a single unit causes this error?

What if you don=E2=80=99t use dpdk, but run at lower speeds, just to see if t=
his is a network/DPDK config issue?

Sent from my iPhone

> On Jun 22, 2021, at 11:14 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV <Car=
l.L.Wolsieffer@erdc.dren.mil> wrote:
>=20
> =EF=BB=BF
> Yes that=E2=80=99s correct, one is the default 192.168.40.2 and the other I=
 changed to 192.168.50.2
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Tuesday, June 22, 2021 10:50 AM
> To: Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV <Carl.L.Wolsieffer@erdc.dren.m=
il>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] intermittent TX error using DPDK and x310
> =20
> The devices have distinct IP addresses on all their connected ports presum=
ably?
>=20
> Sent from my iPhone
>=20
>=20
> On Jun 22, 2021, at 10:38 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via U=
SRP-users <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> Finally got DPDK running on my ubuntu 20.04 machine. I have two x310's ove=
r a 10Gbe each going to their own port on a intel x520. If I have just a sin=
gle x310 hooked up, the rx_samples_to_file and tx_samples_from_file both wor=
k flawlessly at 200 Msps. If they are both hooked up, I get a few errors whe=
n transmitting that I am not able to discern are going to cause me trouble o=
r not. This is a typical output upon calling tx_from_samples. The [ERROR] [U=
HD] and [ERROR] [USRP2] don't seem to be a major issue, since the PC is find=
ing the x310 without a problem, but I don't know what the [ERROR] [CTRLEP] a=
t the end is trying to tell me. Any thoughts?
> =20
> root@fmcw-sounder:/usr/local/lib/uhd/examples# ./tx_samples_from_file --fi=
le test_samples.dat --gain 0 --freq 2400000000 --lo-offset 100000000 --rate 2=
00000000 --args "addr=3D192.168.50.2,use_dpdk=3D1"
> =20
> Creating the usrp device with: addr=3D192.168.50.2,use_dpdk=3D1...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-=
g90ce6062
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is consider=
ed deprecated, consider moving your config file to /root/.config instead.
> EAL: Detected 12 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:01:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL:   using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: PCI device 0000:01:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL: Ignore mapping IO port bar(2)
> [ERROR] [UHD] Device discovery error: send_to: Network is unreachable
> [ERROR] [USRP2] USRP2 Network discovery error send_to: Network is unreacha=
ble
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: Unknown (0xffff) - 0
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: Unknown (0xffff) - 0
> =20
> Setting TX Rate: 200.000000 Msps...
> Actual TX Rate: 200.000000 Msps...
> =20
> Setting TX Freq: 2400.000000 MHz...
> Setting TX LO Offset: 100.000000 MHz...
> Actual TX Freq: 2400.000000 MHz...
> =20
> Setting TX Gain: 0.000000 dB...
> Actual TX Gain: 0.000000 dB...
> =20
> Checking TX: TXLO: locked ...
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> =20
> Done!
> =20
> [ERROR] [CTRLEP] Caught exception during async message handling: map::at
> =20
> root@fmcw-sounder:/usr/local/lib/uhd/examples#
> =20
> =20
> Thanks!
> Casey
> <tx_output.txt>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7F69BBB7-6A18-4590-B977-9B349B8D7CEA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">So if either of them are connected singular=
ly, things work, otherwise, even dealing with a single unit causes this erro=
r?<div><br></div><div>What if you don=E2=80=99t use dpdk, but run at lower s=
peeds, just to see if this is a network/DPDK config issue?<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Jun 22, 2021, at 11:14 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV &lt;=
Carl.L.Wolsieffer@erdc.dren.mil&gt; wrote:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Yes that=E2=80=99s corr=
ect, one is the default 192.168.40.2 and the other I changed to 192.168.50.2=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D Leech &lt;patchvonbraun@gmail.c=
om&gt; <br>
<b>Sent:</b> Tuesday, June 22, 2021 10:50 AM<br>
<b>To:</b> Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV &lt;Carl.L.Wolsieffer@erd=
c.dren.mil&gt;<br>
<b>Cc:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] intermittent TX error using DPDK and x310<o=
:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The devices have disti=
nct IP addresses on all their connected ports presumably?<span style=3D"font=
-size:12.0pt"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Jun 22, 2021, at 10=
:38 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif">
<o:p></o:p></span></p>
<p class=3D"MsoPlainText">Hello,<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Finally got DPDK running on my ubuntu 20.04 machin=
e. I have two x310's over a 10Gbe each going to their own port on a intel x5=
20. If I have just a single x310 hooked up, the rx_samples_to_file and tx_sa=
mples_from_file both work flawlessly
 at 200 Msps. If they are both hooked up, I get a few errors when transmitti=
ng that I am not able to discern are going to cause me trouble or not. This i=
s a typical output upon calling tx_from_samples. The [ERROR] [UHD] and [ERRO=
R] [USRP2] don't seem to be
 a major issue, since the PC is finding the x310 without a problem, but I do=
n't know what the [ERROR] [CTRLEP] at the end is trying to tell me. Any thou=
ghts?<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples# ./t=
x_samples_from_file --file test_samples.dat --gain 0 --freq 2400000000 --lo-=
offset 100000000 --rate 200000000 --args "addr=3D192.168.50.2,use_dpdk=3D1"<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Creating the usrp device with: addr=3D192.168.50.2=
,use_dpdk=3D1...<o:p></o:p></p>
<p class=3D"MsoPlainText">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_1=
07100; UHD_4.0.0.HEAD-0-g90ce6062<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [PREFS] Loaded config from /root/.uhd. T=
his location is considered deprecated, consider moving your config file to /=
root/.config instead.<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 12 lcore(s)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 1 NUMA nodes<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Multi-process socket /var/run/dpdk/rte/mp_soc=
ket<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: No free hugepages reported in hugepages-10485=
76kB<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Probing VFIO support...<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: VFIO support initialized<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.0 on NUMA socket -1<o:p=
></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; using IOMMU type 1 (Type 1)<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.1 on NUMA socket -1<o:p=
></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [UHD] Device discovery error: send_to: N=
etwork is unreachable</b><o:p></o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [USRP2] USRP2 Network discovery error s=
end_to: Network is unreachable</b><o:p></o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] X300 initialization sequence...<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Maximum frame size: 8000 bytes.<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Radio 1x clock: 200 MHz<o:p></o:p></=
p>
<p class=3D"MsoPlainText">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Device: X-Series Device<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Mboard 0: X310<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: Unknown (0xffff) - 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: Unknown (0xffff) - 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Setting TX Rate: 200.000000 Msps...<o:p></o:p></p>=

<p class=3D"MsoPlainText">Actual TX Rate: 200.000000 Msps...<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Setting TX Freq: 2400.000000 MHz...<o:p></o:p></p>=

<p class=3D"MsoPlainText">Setting TX LO Offset: 100.000000 MHz...<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">Actual TX Freq: 2400.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Setting TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText">Actual TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Checking TX: TXLO: locked ...<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [0/Radio#0] Attempting to set tick rate t=
o 0. Skipping.<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Done!<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [CTRLEP] Caught exception during async m=
essage handling: map::at</b><o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples#<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;<o:p></o:p></p>
<p class=3D"MsoPlainText">Thanks!<o:p></o:p></p>
<p class=3D"MsoPlainText">Casey<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif">&lt;tx_output.txt&gt;<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif">_______________________________________________<br=
>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></p>
</div>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-7F69BBB7-6A18-4590-B977-9B349B8D7CEA--

--===============5230120764915645479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5230120764915645479==--
