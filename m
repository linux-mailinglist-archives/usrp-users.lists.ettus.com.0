Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07762450D0A
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 18:45:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01A5B3841E9
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 12:45:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qEoYqVbR";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D9D0A383B7B
	for <USRP-users@lists.ettus.com>; Mon, 15 Nov 2021 12:44:49 -0500 (EST)
Received: by mail-qv1-f52.google.com with SMTP id gu12so11851347qvb.6
        for <USRP-users@lists.ettus.com>; Mon, 15 Nov 2021 09:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=RQwDmvc9H5tdlvEhYauSyOadzOLQuEWQhW3EoJdc5lk=;
        b=qEoYqVbRzQ95MU1cjU0dRucSpICxa99AqkJeiQohm99MCsE3X+Yrp6Vln7ddRRiGyN
         0LriSOgiBnBTFAsO3ezWr+Z+LvK/3xWciECW2ik9ana9OrPYZubQdWzevLs+GHAKX1Ox
         oNZPVrMMY/6OObZAyHDAXqR4uJnriVazfodvsmh6PTZ3ch4IzfBtlu4KYmKAMhwqWLG7
         l1RD4h5GTOuViHIlIFB6CNUe5S3BvVIusjsWnndUnaK57bSdWWkvHV+2eodYcO+nlCyK
         mzBV0KVcOBQ2RPljJs4NegqaNHaH+M0uFAwJ4kjx9PS1vk579+1JUvfz9ToyzsL1/skN
         n9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=RQwDmvc9H5tdlvEhYauSyOadzOLQuEWQhW3EoJdc5lk=;
        b=Xx6OrHxUYPGTmDYZreEfUWzA5JjJeybqmfRCCwL+yJWnmBDouhGrdo3nKyPtQCxrnB
         5a8N5/WralqMog5KuAQezSBbiXr5lcJ/Ie6uoEXtSKT2MI3d7N4MUXFf4usUZmpig8fE
         cqzVgGCMGyq5xD/RLDDiJeA4x+vbby6YPaKrGAdELKvf42/nKOjA86Le6ucY2yoQAorx
         HhibY/738vCHNuwlfDlDA77f+Is6ONe1bTbKaT8E/5c272XUYZGMAmLGUoO3CV8uBg2D
         oTfkEuTyzlzSgiTj3GqdXB6HeNS4VNUZoRejgtSINUELrFExnekq6GVuHEvJDbjqTClc
         WepQ==
X-Gm-Message-State: AOAM530wCc1V1K0GpRy1aZU2saVoBSonqceO+IKaxPm7AqUntxEl/YSF
	cVTY/iWGkEg0BIcTq09Kc6YyMDxb4eQ=
X-Google-Smtp-Source: ABdhPJyonyphpnXJ8PHi8xmUbs5v6SsFPWMOs7bmX2WWX0HgHohyliepMhRG6Vcd1VqNF+JrVeaX6w==
X-Received: by 2002:a05:6214:2523:: with SMTP id gg3mr39112682qvb.56.1636998289194;
        Mon, 15 Nov 2021 09:44:49 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id w19sm6944113qkw.49.2021.11.15.09.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 09:44:48 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 15 Nov 2021 12:44:47 -0500
Message-Id: <DBAA6BE0-0E57-417C-BBE8-9B206E552397@gmail.com>
References: <fd93b15b227348178c8260737ba94497@gmv.com>
In-Reply-To: <fd93b15b227348178c8260737ba94497@gmv.com>
To: Guillermo Ortas Delgado <g.ortas@gmv.com>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: M5Z3XUQQSV2GTZUITHWHLTKYVRL2GRFH
X-Message-ID-Hash: M5Z3XUQQSV2GTZUITHWHLTKYVRL2GRFH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5Z3XUQQSV2GTZUITHWHLTKYVRL2GRFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8458542180232709846=="


--===============8458542180232709846==
Content-Type: multipart/alternative; boundary=Apple-Mail-BDFD5084-CAE8-4652-A5AF-309674AF429A
Content-Transfer-Encoding: 7bit


--Apple-Mail-BDFD5084-CAE8-4652-A5AF-309674AF429A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Guillermo:

I=E2=80=99ve already got queries in to the R&D team.=20

Sent from my iPhone

> On Nov 15, 2021, at 12:17 PM, Guillermo Ortas Delgado <g.ortas@gmv.com> wr=
ote:
>=20
> =EF=BB=BF
> Yep, the config file is at /etc/uhd/uhd.conf and I can see that any modifi=
cations I make on it take immediate effect.
> Could you get anyone from the team who uses DPDK to look at this, please? I=
=E2=80=99d really appreciate it.
> =20
> Best,
> Guillermo
> =20
> <image001.png>
> Guillermo Ortas Delgado
> GNSS Engineer /
> Ingeniero GNSS
> GMV=20
> Isaac Newton, 11
> P.T.M. Tres Cantos
> 28760 Madrid, Spain
> Tel.: +34 91 807 21 00
> Fax: +34 91 807 21 99=20
> www.gmv.com
> <image002.png>
> <image003.png>
> <image003.png>
> <image003.png>
> <image003.png>
> <image004.png>
> =20
> =20
> De: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
> Enviado el: 15 November 2021 17:08
> Para: Guillermo Ortas Delgado <g.ortas@gmv.com>; usrp-users@lists.ettus.co=
m
> Asunto: Re: DPDK drops samples at low rates
> =20
> On 2021-11-15 08:25, Guillermo Ortas Delgado wrote:
> I will add that for an unknown reason the maximum frame size as reported b=
y UHD when launching the benchmark_rate app is 1556, which triggers a warnin=
g message saying that it should be 8000 for best results.
> I cannot find anywhere to set this value to 8000, even when setting =E2=80=
=9Crecv_frame_size=3D9000,send_frame_size=3D9000=E2=80=9D in the device argu=
ments I get the same.
> =20
> As a side note, this maximum frame size value of 1556 is good up to 100Msp=
s dual channel if not using DPDK.
> =20
> Best,
> Guillermo
> Where are you placing your uhd.conf file?  See the notes on UHD configurat=
ion locations here:
>=20
> https://files.ettus.com/manual/page_configfiles.html#configfiles_usrps
>=20
> Other than that, I'm hampered by not actually being a DPDK user, so I'm ru=
nning a bit "blind".
>=20
>=20
>=20
> =20
> De: Guillermo Ortas Delgado=20
> Enviado el: 15 November 2021 14:17
> Para: usrp-users@lists.ettus.com
> CC: Marcus D Leech <patchvonbraun@gmail.com>
> Asunto: DPDK drops samples at low rates
> =20
> Hi all,
> =20
> I finally managed to get DPDK working, but using DPDK results in dropped s=
amples even at low sampling frequencies, as low as 1Msps. For reference, I c=
an receive samples at 200Msps on both channels simultaneously when not using=
 DPDK.
> I would like to know if I=E2=80=99m missing something or there=E2=80=99s  s=
omething else which needs to be tuned.
> =20
> The setup is Ubuntu 20.04 LTS, UHD 4.1.0.4, DPDK 18.11, USRP X310, and 204=
8 pages of 2 MB each. The contents of my uhd.conf file are pasted below.
> The command I use to run the benchmark rate example is this:
> sudo /usr/local/lib/uhd/examples/./benchmark_rate --args=3D"use_dpdk=3D1,a=
ddr=3D192.168.110.2,second_addr=3D192.168.115.2" --pps internal --rx_cpu sc1=
6 --rx_otw sc16 --rx_rate 200e6 --channels 0,1 --priority high --duration 30=

> =20
> Am I missing something? Can you spot any misconfiguration?
> =20
> uhd.conf file:
> ;When present in device args, use_dpdk indicates you want DPDK to take ove=
r the UDP transports
> ;The value here represents a config, so you could have another section lab=
eled use_dpdk=3Dmyconf
> ;instead and swap between them
> [use_dpdk=3D1]
> ;dpdk_mtu is the NIC's MTU setting
> ;This is separate from MPM's maximum packet size
> dpdk_mtu=3D9600
> ;NOTE: The dpdk-pmds directory includes all librte_pmd_* and librte_mempoo=
l_* libraries
> dpdk_driver=3D/usr/local/lib/dpdk-pmds
> dpdk_corelist=3D11,12,13,14,15
> dpdk_num_mbufs=3D4096
> dpdk_mbuf_cache_size=3D512
> [dpdk_mac=3Df4:03:43:ec:29:d0]
> ;ens1f0np0
> dpdk_lcore =3D 12
> dpdk_ipv4 =3D 192.168.110.1/24
> dpdk_num_desc=3D4096
> [dpdk_mac=3Df4:03:43:ec:3e:a0]
> ;ens2f0np0
> dpdk_lcore =3D 12
> dpdk_ipv4 =3D 192.168.115.1/24
> dpdk_num_desc=3D4096
> =20
> Thank you beforehand,
> Guillermo
> =20
>=20
> P Please consider the environment before printing this e-mail.
> =20
>=20
> P Please consider the environment before printing this e-mail.

--Apple-Mail-BDFD5084-CAE8-4652-A5AF-309674AF429A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Guillermo:<div><br></div><div>I=E2=80=99ve a=
lready got queries in to the R&amp;D team.&nbsp;<br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 1=
5, 2021, at 12:17 PM, Guillermo Ortas Delgado &lt;g.ortas@gmv.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Webdings;
	panose-1:5 3 1 2 1 5 9 6 7 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EstiloCorreo19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EstiloCorreo21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1033" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Yep, the=
 config file is at /etc/uhd/uhd.conf and I can see that any modifications I m=
ake on it take immediate effect.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Could yo=
u get anyone from the team who uses DPDK to look at this, please? I=E2=80=99=
d really appreciate it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&nb=
sp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
>Best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
>Guillermo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<div>
<div class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:E=
S">
<hr size=3D"2" width=3D"100%" noshade=3D"" style=3D"color:silver" align=3D"l=
eft">
</span></div>
</div>
</div>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=3D=
"0" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"10" cellpadding=3D=
"0" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td width=3D"213" valign=3D"top" style=3D"width:150.0pt;padding:0cm 0cm 0cm 0=
cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shapetype id=3D"_x0000_t75" coo=
rdsize=3D"21600,21600" o:spt=3D"75" o:preferrelative=3D"t" path=3D"m@4@5l@4@=
11@9@11@9@5xe" filled=3D"f" stroked=3D"f">
<v:stroke joinstyle=3D"miter" />
<v:formulas>
<v:f eqn=3D"if lineDrawn pixelLineWidth 0" />
<v:f eqn=3D"sum @0 1 0" />
<v:f eqn=3D"sum 0 0 @1" />
<v:f eqn=3D"prod @2 1 2" />
<v:f eqn=3D"prod @3 21600 pixelWidth" />
<v:f eqn=3D"prod @3 21600 pixelHeight" />
<v:f eqn=3D"sum @0 0 1" />
<v:f eqn=3D"prod @6 1 2" />
<v:f eqn=3D"prod @7 21600 pixelWidth" />
<v:f eqn=3D"sum @8 21600 0" />
<v:f eqn=3D"prod @7 21600 pixelHeight" />
<v:f eqn=3D"sum @10 21600 0" />
</v:formulas>
<v:path o:extrusionok=3D"f" gradientshapeok=3D"t" o:connecttype=3D"rect" />
<o:lock v:ext=3D"edit" aspectratio=3D"t" />
</v:shapetype><v:shape id=3D"AutoShape_x0020_8" o:spid=3D"_x0000_s1032" type=
=3D"#_x0000_t75" style=3D'width:138.75pt;height:51pt;visibility:visible;mso-=
left-percent:-10001;mso-top-percent:-10001;mso-position-horizontal:absolute;=
mso-position-horizontal-relative:char;mso-position-vertical:absolute;mso-pos=
ition-vertical-relative:line;mso-left-percent:-10001;mso-top-percent:-10001'=
>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image001.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
<td width=3D"260" valign=3D"top" style=3D"width:210.0pt;padding:0cm 0cm 0cm 0=
cm">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif;color:black;mso-fareast-language:ES">Guillermo Ortas Delgado<br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Verdana&quot;,sa=
ns-serif;color:black;mso-fareast-language:ES">GNSS Engineer /</span><span st=
yle=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:=
#1F497D;mso-fareast-language:ES"><br>
</span><span style=3D"font-size:7.5pt;font-family:&quot;Verdana&quot;,sans-s=
erif;color:black;mso-fareast-language:ES">Ingeniero GNSS</span><span style=3D=
"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:#1F497=
D;mso-fareast-language:ES"><o:p></o:p></span></p>
</td>
<td width=3D"235" valign=3D"top" style=3D"width:165.0pt;padding:0cm 0cm 0cm 0=
cm">
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Verd=
ana&quot;,sans-serif;color:black;mso-fareast-language:ES">GMV
<br>
Isaac Newton, 11<br>
P.T.M. Tres Cantos<br>
28760 Madrid, Spain<br>
Tel.: +34 91 807 21 00<br>
Fax: +34 91 807 21 99 <br>
</span><span style=3D"color:#1F497D;mso-fareast-language:ES"><a href=3D"http=
://www.gmv.com/"><span style=3D"font-size:7.5pt;font-family:&quot;Verdana&qu=
ot;,sans-serif;color:#999999;text-decoration:none">www.gmv.com
</span></a><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=3D=
"0" width=3D"0" style=3D"width:165.0pt">
<tbody>
<tr>
<td width=3D"15" style=3D"width:11.25pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_7" o=
:spid=3D"_x0000_s1031" type=3D"#_x0000_t75" style=3D'width:11.25pt;height:22=
.5pt;visibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-p=
osition-horizontal:absolute;mso-position-horizontal-relative:char;mso-positi=
on-vertical:absolute;mso-position-vertical-relative:line;mso-left-percent:-1=
0001;mso-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image002.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
<td width=3D"24" style=3D"width:18.0pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_6" o=
:spid=3D"_x0000_s1030" type=3D"#_x0000_t75" style=3D'width:18pt;height:22.5p=
t;visibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-posi=
tion-horizontal:absolute;mso-position-horizontal-relative:char;mso-position-=
vertical:absolute;mso-position-vertical-relative:line;mso-left-percent:-1000=
1;mso-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image003.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
<td width=3D"24" style=3D"width:18.0pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_5" o=
:spid=3D"_x0000_s1029" type=3D"#_x0000_t75" style=3D'width:18pt;height:22.5p=
t;visibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-posi=
tion-horizontal:absolute;mso-position-horizontal-relative:char;mso-position-=
vertical:absolute;mso-position-vertical-relative:line;mso-left-percent:-1000=
1;mso-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image003.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
<td width=3D"24" style=3D"width:18.0pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_4" o=
:spid=3D"_x0000_s1028" type=3D"#_x0000_t75" style=3D'width:18pt;height:22.5p=
t;visibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-posi=
tion-horizontal:absolute;mso-position-horizontal-relative:char;mso-position-=
vertical:absolute;mso-position-vertical-relative:line;mso-left-percent:-1000=
1;mso-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image003.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_3" o=
:spid=3D"_x0000_s1027" type=3D"#_x0000_t75" style=3D'width:18pt;height:22.5p=
t;visibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-posi=
tion-horizontal:absolute;mso-position-horizontal-relative:char;mso-position-=
vertical:absolute;mso-position-vertical-relative:line;mso-left-percent:-1000=
1;mso-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image003.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;display:none;mso-fareast=
-language:ES"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=3D=
"0">
<tbody>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"AutoShape_x0020_2" o=
:spid=3D"_x0000_s1026" type=3D"#_x0000_t75" style=3D'width:1in;height:18pt;v=
isibility:visible;mso-left-percent:-10001;mso-top-percent:-10001;mso-positio=
n-horizontal:absolute;mso-position-horizontal-relative:char;mso-position-ver=
tical:absolute;mso-position-vertical-relative:line;mso-left-percent:-10001;m=
so-top-percent:-10001'>
<w:wrap type=3D"none"/>
<w:anchorlock/>
</v:shape><![endif]--><!--[if !vml]--><div>&lt;image004.png&gt;</div><!--[en=
dif]--><span style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0=
cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:ES">De:</span>=
</b><span style=3D"mso-fareast-language:ES"> Marcus D. Leech [mailto:patchvo=
nbraun@gmail.com]
<br>
<b>Enviado el:</b> 15 November 2021 17:08<br>
<b>Para:</b> Guillermo Ortas Delgado &lt;g.ortas@gmv.com&gt;; usrp-users@lis=
ts.ettus.com<br>
<b>Asunto:</b> Re: DPDK drops samples at low rates<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2021-11-15 08:25, Guillermo Ortas Delgado wrote:<s=
pan style=3D"font-size:12.0pt;mso-fareast-language:ES"><o:p></o:p></span></p=
>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I will a=
dd that for an unknown reason the maximum frame size as reported by UHD when=
 launching the benchmark_rate app is 1556, which triggers a warning message s=
aying that it should be 8000 for best
 results.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I cannot=
 find anywhere to set this value to 8000, even when setting =E2=80=9C</span>=
<span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:Consolas;color:#1=
F497D">recv_frame_size=3D9000,send_frame_size=3D9000=E2=80=9D</span><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;color:#1F497D">
</span><span lang=3D"EN-US" style=3D"color:#1F497D">in the device arguments I=
 get the same.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">As a sid=
e note, this maximum frame size value of 1556 is good up to 100Msps dual cha=
nnel if not using DPDK.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;</=
span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
>Best,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ES"=
>Guillermo</span><o:p></o:p></p>
</div>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-language=
:ES">Where are you placing your uhd.conf file?&nbsp; See the notes on UHD co=
nfiguration locations here:<br>
<br>
<a href=3D"https://urldefense.com/v3/__https:/files.ettus.com/manual/page_co=
nfigfiles.html*configfiles_usrps__;Iw!!MvyJQugb!W89U7TTtmiKWqYr4_4UWvjfpPT1O=
l27TIBvrFyUPAsF9Xn86tAhUkkgaZ4SF$">https://files.ettus.com/manual/page_confi=
gfiles.html#configfiles_usrps</a><br>
<br>
Other than that, I'm hampered by not actually being a DPDK user, so I'm runn=
ing a bit "blind".<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0=
cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:ES">De:</span>=
</b><span style=3D"mso-fareast-language:ES"> Guillermo Ortas Delgado
<br>
<b>Enviado el:</b> 15 November 2021 14:17<br>
<b>Para:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a><br>
<b>CC:</b> Marcus D Leech <a href=3D"mailto:patchvonbraun@gmail.com">&lt;pat=
chvonbraun@gmail.com&gt;</a><br>
<b>Asunto:</b> DPDK drops samples at low rates </span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I finally managed to get DPDK wo=
rking, but using
<b>DPDK results in dropped samples</b> even at low sampling frequencies, as l=
ow as 1Msps. For reference, I can receive samples at 200Msps on both channel=
s simultaneously when not using DPDK.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to know if I=E2=80=99=
m missing something or there=E2=80=99s &nbsp;something else which needs to b=
e tuned.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The setup is Ubuntu 20.04 LTS, U=
HD 4.1.0.4, DPDK 18.11, USRP X310, and 2048 pages of 2 MB each. The contents=
 of my uhd.conf file are pasted below.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to run the ben=
chmark rate example is this:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">sudo /usr/local/lib/uhd/examples/./benchmark_rate --args=3D"=
use_dpdk=3D1,addr=3D192.168.110.2,second_addr=3D192.168.115.2" --pps interna=
l --rx_cpu sc16 --rx_otw sc16 --rx_rate 200e6
 --channels 0,1 --priority high --duration 30</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Am I missing something? Can y=
ou spot any misconfiguration?</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">uhd.conf file:</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;When present in device args, use_dpdk indicates you want DP=
DK to take over the UDP transports</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;The value here represents a config, so you could have anoth=
er section labeled use_dpdk=3Dmyconf</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;instead and swap between them</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">[use_dpdk=3D1]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;dpdk_mtu is the NIC's MTU setting</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;This is separate from MPM's maximum packet size</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_mtu=3D9600</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;NOTE: The dpdk-pmds directory includes all librte_pmd_* and=
 librte_mempool_* libraries</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_driver=3D/usr/local/lib/dpdk-pmds</span><o:p></o:p></p>=

<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_corelist=3D11,12,13,14,15</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_num_mbufs=3D4096</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_mbuf_cache_size=3D512</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">[dpdk_mac=3Df4:03:43:ec:29:d0]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;ens1f0np0</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_lcore =3D 12</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_ipv4 =3D 192.168.110.1/24</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_num_desc=3D4096</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">[dpdk_mac=3Df4:03:43:ec:3e:a0]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">;ens2f0np0</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_lcore =3D 12</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_ipv4 =3D 192.168.115.1/24</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-f=
amily:Consolas">dpdk_num_desc=3D4096</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you beforehand,</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Guillermo</span><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif;mso-fareast-language:ES"><br>
</span><span style=3D"font-size:18.0pt;font-family:Webdings;color:green;mso-=
fareast-language:ES">P
</span><span style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:green;mso-fareast-language:ES">Please consider the environment befo=
re printing this e-mail.</span><span style=3D"font-size:12.0pt;font-family:&=
quot;Times New Roman&quot;,serif;mso-fareast-language:ES">
<o:p></o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif;mso-fareast-language:ES"><o:p>&nbsp;</o:p></span></=
p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdin=
gs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><s=
pan style=3D""></span>


</div></blockquote></div></body></html>=

--Apple-Mail-BDFD5084-CAE8-4652-A5AF-309674AF429A--

--===============8458542180232709846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8458542180232709846==--
