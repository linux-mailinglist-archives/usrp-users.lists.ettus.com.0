Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE56E938A41
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 09:40:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C191385549
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 03:40:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721634008; bh=PqgyI2MDKjax7qMA56O9JpeJ1UOS0rzqv9TSXkFkgzA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UmxAGdv6Bz37dJY6m7b+OlW1E3vol4pCyGqet53qJC82ZTywUIguzMkQI3CgODyt2
	 6IOZ4T28kCaKgAzCvlZPefJ3ck6OqrX0JaomBW7Ljy0uun0q4rnIdbR75XvbkPaVmw
	 1e7dXTXsxcNmsDVMpkfYtQicpx2C0SXDB8Tze2s6GI03WaK5opTYutqhOHyRegkqqd
	 k42jxK8IAVcGaQP0UkvaSDljCo+HjEmjU2Vdm+h64IxpzGq+Z6icRFZ1w/WVinXomt
	 4cUfOC3Dhkc+6L92ZkHoNq2ulq5KNC945GYiYCVFFglIxsRRjirjr9RyaCq+TVKkpE
	 zCth1NqpmhIFA==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DCB7D38550F
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 03:39:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="pccayvrH";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52efa9500e0so1480950e87.3
        for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 00:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721633976; x=1722238776; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zT44rhPQYqPwXcww5sswh1GfxqyXVZDmAeCkdv+b9UU=;
        b=pccayvrHrrSpcmwQDiOAR99eOV7EQog0pp7CrlKkvuaEd9SrGWmP5mUvcxb/H9TDWZ
         e/8KOs67gs7Oh2gSTFy8xTzty8K7vqYn202x5CjQis9LjCv3fn/37IzkqESNsfaMtR8a
         8cdEZ3nRzd21dQw8Iawu1v7I4m69s7RFHAv8v7CnT1+9rh76f+hlmuOYHKaKVydo0FH2
         ZMEZgxm31he4906caH5lO0eSRjXHbGrHm5Mo2csreEhNWvfVJn+OB8El26ZpbA8yFGTL
         sSFQaDgPyA4Q9X67kU9kDkGpzyKDOZiTSCN4zmDXs/oW3TAbu9xaNP382PRJXqoQtpoO
         RwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721633976; x=1722238776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zT44rhPQYqPwXcww5sswh1GfxqyXVZDmAeCkdv+b9UU=;
        b=ZP6v+4yhFSuytl/RGberu6m+Je7DjdutMV98AlFfb9pZM+QcvJlQB1c7Hic6hDB1Ri
         GbiFPKNGkFmybdAPQjSl+pCeQ0U3GpTLNuJuu7hnRVoAQ8L0ab3EBS/UaYl5FLU9A4ab
         alWQNTecCLBdbmF4Sp2VOXxAeGwgiFTKINmyGltic4SLRpvDviMcvYdz87sCAdEoS4ct
         nP+WL0XBE9+ibnELFeVIy2Y5FcfAuxi9yI4MlWgqTYGwwjk5KHbn9uZYKwU7lQjM52XW
         Q8u7pCVhyasEYuBDgcTpvgnPc6hlXEy0yrRd5XXlfLHzmdTf9X2P5plxR+484Bbwcopc
         EwZw==
X-Gm-Message-State: AOJu0YysylC3S717MWLr2D1O7TardTBoO5RdS4QcCLRP6p2y2W+Lb4Lz
	Iwte0CM5ZNmgVesFbr5DOYIkmakHZECohU30SpW4duO2jQt9jccOfFYvxZ1CWt7BMd7fY8X63NG
	a0f0/lxtLg1YyzTHNpCV7ngjOQiJcGsG8Y3rj3tBsCrnVaJ2uSN8=
X-Google-Smtp-Source: AGHT+IEnRkZ4OlE3IJaboR5XI3ESC20cgDX3bfXMfPxpclMYdUndyg650UZGPOHmqseirj1cQihcPJfw7haVki0x3Qo=
X-Received: by 2002:a05:6512:1585:b0:52c:de3a:839f with SMTP id
 2adb3069b0e04-52efb63cda3mr3519164e87.20.1721633976093; Mon, 22 Jul 2024
 00:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR01MB6620BD29E83DF9073330E747DAAF2@PH0PR01MB6620.prod.exchangelabs.com>
In-Reply-To: <PH0PR01MB6620BD29E83DF9073330E747DAAF2@PH0PR01MB6620.prod.exchangelabs.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 22 Jul 2024 09:39:23 +0200
Message-ID: <CAFOi1A467a9bN29QJDQp-yKn_NWJN2-9+RX80p-tNJc_Sztg0A@mail.gmail.com>
To: "Natanzi, Milad" <snatanzi@wpi.edu>
Message-ID-Hash: SSI5I6DT7SWC4U7NGGB77OCZOUIO4XZT
X-Message-ID-Hash: SSI5I6DT7SWC4U7NGGB77OCZOUIO4XZT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Connecting Multiple USRP N310 to a Computer via SFP-enabled Switch for OAI 5G Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSI5I6DT7SWC4U7NGGB77OCZOUIO4XZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4302081330199031959=="

--===============4302081330199031959==
Content-Type: multipart/alternative; boundary="000000000000942878061dd125c4"

--000000000000942878061dd125c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

yes, you can, but keep in mind that switches can be additional causes for
packet loss/reordering/other things, and potentially add latency. For 10
GbE you typically have a managed switch, and you should be able to
configure it (e.g., some switches have a configuration for maintaining
packet order). But in principle, there's nothing wrong with using a switch.

--M

On Sun, Jul 21, 2024 at 6:09=E2=80=AFAM Natanzi, Milad <snatanzi@wpi.edu> w=
rote:

> Hello,
>
>
> I am setting up a RAN with OAI gNB installation and have the following
> hardware configuration:
>
>
>
>    - *3 USRP N310 devices* with 10G SFP ports
>    - *1 computer* for RAN (OAI gNB installation)
>    - *1 computer* for OAI core
>    - *1 Dell server* for training and other task and I would like to
>    connect this server also to the RAN and Core, all equipped with 10G SF=
P
>    ports
>
> I want to connect all three USRP N310 devices to a single computer, which
> will act as the RAN. My question is:
>
> *Can I use an SFP-enabled switch to connect all these devices?*
>
> *Setup Details:*
>
>    - All USRP devices connect to the SFP-enabled switch.
>    - The switch then connects to the two PCs (RAN and Core) and the
>    server, all via SFP 10G ports.
>
> I would appreciate any guidance on the feasibility of this setup and any
> recommendations on specific switch models or additional considerations I
> should keep in mind
>
>
> Thanks.
>
>    Milad
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000942878061dd125c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>yes, you can, but keep i=
n mind that switches can be additional causes for packet loss/reordering/ot=
her things, and potentially add latency. For 10 GbE you typically have a ma=
naged switch, and you should be able to configure it (e.g., some switches h=
ave a configuration for maintaining packet order). But in principle, there&=
#39;s nothing wrong with using a switch.</div><div><br></div><div>--M<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sun, Jul 21, 2024 at 6:09=E2=80=AFAM Natanzi, Milad &lt;<a href=3D"m=
ailto:snatanzi@wpi.edu">snatanzi@wpi.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div class=3D"msg463652253978427595=
6">





<div lang=3D"EN-IE" style=3D"overflow-wrap: break-word;">
<div class=3D"m_4636522539784275956WordSection1">
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)">Hello,</span><span style=3D=
"color:rgb(33,33,33)"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)"><br>
I am setting up a RAN with OAI gNB installation and have the following hard=
ware configuration:</span><span style=3D"color:rgb(33,33,33)"><u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)">=C2=A0</span><span style=3D=
"color:rgb(33,33,33)"><u></u><u></u></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:rgb(51,51,51);margin-bottom:6pt;back=
ground:white">
<b><span style=3D"font-size:12pt;font-family:Helvetica">3 USRP N310 devices=
</span></b><span style=3D"font-size:12pt;font-family:Helvetica">=C2=A0with =
10G SFP ports</span><span><u></u><u></u></span></li><li class=3D"MsoNormal"=
 style=3D"color:rgb(51,51,51);margin-bottom:6pt;background:white">
<b><span style=3D"font-size:12pt;font-family:Helvetica">1 computer</span></=
b><span style=3D"font-size:12pt;font-family:Helvetica">=C2=A0for RAN (OAI g=
NB installation)</span><span><u></u><u></u></span></li><li class=3D"MsoNorm=
al" style=3D"color:rgb(51,51,51);margin-bottom:6pt;background:white">
<b><span style=3D"font-size:12pt;font-family:Helvetica">1 computer</span></=
b><span style=3D"font-size:12pt;font-family:Helvetica">=C2=A0for OAI core</=
span><span><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"color=
:rgb(51,51,51);margin-bottom:6pt;background:white">
<b><span style=3D"font-size:12pt;font-family:Helvetica">1 Dell server</span=
></b><span style=3D"font-size:12pt;font-family:Helvetica">=C2=A0for trainin=
g and other task and
 I would like to connect this server also to the RAN and Core, all equipped=
 with 10G SFP ports</span><span><u></u><u></u></span></li></ul>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)">I want to connect all three=
 USRP N310 devices to a single computer, which will act as the RAN. My
 question is:</span><span style=3D"color:rgb(33,33,33)"><u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:12pt;font-family:Helvetica;color:rgb(51,51,51)">Can I use an SFP-enabled=
 switch to connect all these devices?</span></b><span style=3D"color:rgb(33=
,33,33)"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:12pt;font-family:Helvetica;color:rgb(51,51,51)">Setup Details:</span></b=
><span style=3D"color:rgb(33,33,33)"><u></u><u></u></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:rgb(51,51,51);margin-bottom:6pt;back=
ground:white">
<span style=3D"font-size:12pt;font-family:Helvetica">All USRP devices conne=
ct to the SFP-enabled switch.</span><span><u></u><u></u></span></li><li cla=
ss=3D"MsoNormal" style=3D"color:rgb(51,51,51);margin-bottom:6pt;background:=
white">
<span style=3D"font-size:12pt;font-family:Helvetica">The switch then connec=
ts to the two PCs (RAN and Core) and the server, all via SFP 10G ports.</sp=
an><span><u></u><u></u></span></li></ul>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)">I would appreciate any guid=
ance on the feasibility of this setup and any recommendations on specific
 switch models or additional considerations I should keep in mind</span><sp=
an style=3D"color:rgb(33,33,33)"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:Helvetica;color:rgb(51,51,51)"><br>
Thanks.</span><span style=3D"color:rgb(33,33,33)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(33,33,33)">=C2=A0=C2=A0 Mil=
ad<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000942878061dd125c4--

--===============4302081330199031959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4302081330199031959==--
