Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E728409DC
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 16:26:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 100F4384C1E
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 10:26:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706541993; bh=8FOtFsT+Oo1b2EtD1lY1u+eGgEeDOpQX1t/tfeAMe8c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TwiBN4tZiuFqCPTyTQG2JoFJBAsFis9nsjvXAVz6D9xF1EadlB14A+EzI7X98Vspm
	 jHSpY8hDscAjiKAYxNQw7TQDaQP2t+/CuneJnJZaARcK4CK2j2chzyRIWOB89jR7aC
	 A8UVoStSRsGE70RH5BMg0xoC0pvjhDQTJZNGbKCRNvE1sMND6qIIckblBAjl7r9lpG
	 dr7w8V+koSqFkGXGh6y8rXf6wRyUrZI5B3UzY2Li/bUmZ9cqXuasyjAmnEdGSWsRFm
	 Bm7/zxlll07uCyf58o3rQ1Uwf2987hIX5xH1nLI7VsmiKHhlOu6/RTV+o1325q+I3b
	 DA8LfSouowzTQ==
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 49A06384DAF
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 10:25:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UYL5BrKy";
	dkim-atps=neutral
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40e8d3b29f2so38946935e9.1
        for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 07:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706541957; x=1707146757; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGh+F6pWZ2yKfdamqG/H7xfeVgqwaGimYqNP9z0xDdw=;
        b=UYL5BrKyldG+KAsoLj5kskfJzusy5ECL8yrH6CrGXmssf5hVXm8qKdtnaOi3+SCyAy
         RyNVpYqZ+ZDcop1dl5RL/E+ye39n8PlH3u6jddFSW8LpqSMTMAc/IVFlBiWhqNVSA5IZ
         Y93ZsCsFsrYkWZBD5Yu3ynePmuplm82Di/WrStGw+e/APfMDxmehq9+4Kh8QxDc2kOus
         VqyvvnaYDt2mk4J1mDz53PZo9HatwI1YyZPKMyUH7IgP3MW0h6JwCyyj8drKtXkAKmUM
         G4z0zt8p7vhfnyF2t3Dv9pwimwJHfCNTKxcF8epxTN3JrA4TVNNa0NJBRqv/SPBxyfwi
         ooRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541957; x=1707146757;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hGh+F6pWZ2yKfdamqG/H7xfeVgqwaGimYqNP9z0xDdw=;
        b=PX/FVKSghO8wAalhXbUTQ4BFvWnJ3cR7Dge8kQQVy9SK7ey67RGMwhporuhIaN/C+C
         s4kDAJL9xAELjLWTpc+ozy9jp2Fg8ZJjL+x8+kh5kd/OdMjQ7IwLnExSuf6WY5udX4BI
         YhJNCDWQvtZLQP9DMIvacAqGlppw8nN0WdTY7HS8xjMbcDGUsiVcWNenuCJWVS3QhWwN
         NX7lWL8Cwh+VOrLrjh2YXqKGz81DFWPVu9iQlm15KmjzkSUTdVjTegb6irIYwz1Jgsye
         LTm3lje0fPIIETQf+D6IxIuWwTTti3oCu5nN4h40gxEsbjDGfaSVe/2gtfT2OQ4XCZ8/
         /VyQ==
X-Gm-Message-State: AOJu0YzT3/UsQGsN4i299rYLTd9bzzV8luYAOw0M2KZ4MyXK9duDQwMR
	XmoXdVUY/FbLbhUT9Wo5mXoXe9w7WV9zwKvvPff/k1WAquz9rLtPh8w8uuCeE8bm+Ic9CeRD5x/
	jiOU=
X-Google-Smtp-Source: AGHT+IHT5NTB6DqmyV2jRsLyx/aG+y9xoueqGLhxSbUI/Y6OgY5tE5epEs37pO6zFSHzYV7W40AA5w==
X-Received: by 2002:a05:600c:154e:b0:40e:46c5:8ea5 with SMTP id f14-20020a05600c154e00b0040e46c58ea5mr4776883wmg.29.1706541956853;
        Mon, 29 Jan 2024 07:25:56 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc76:8d00:10fc:1619:bea3:90d1? ([2001:16b8:cc76:8d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id az10-20020a05600c600a00b0040efac60829sm1876082wmb.12.2024.01.29.07.25.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:25:56 -0800 (PST)
Message-ID: <da8d7b79-0c03-4e27-b3c7-9f3782654e55@ettus.com>
Date: Mon, 29 Jan 2024 16:25:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <FR0P281MB1594B76468309C977AE7C42AD4752@FR0P281MB1594.DEUP281.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <FR0P281MB1594B76468309C977AE7C42AD4752@FR0P281MB1594.DEUP281.PROD.OUTLOOK.COM>
Message-ID-Hash: ILUXG3BD34SEMO2FTNLW6AKI6WCSTZ3M
X-Message-ID-Hash: ILUXG3BD34SEMO2FTNLW6AKI6WCSTZ3M
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with QPSK Modulation on USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ILUXG3BD34SEMO2FTNLW6AKI6WCSTZ3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4243153657231032983=="

This is a multi-part message in MIME format.
--===============4243153657231032983==
Content-Type: multipart/alternative;
 boundary="------------ejf6KBeGg0oXh4cShiY6pzUg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ejf6KBeGg0oXh4cShiY6pzUg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Olivia,

I was able to make your flow graph build just beautifully, simply by addi=
ng a "new" UHD=20
USRP Sink and UHD USRP Source block, and manually copying the settings ov=
er from the=20
original blocks, then removing them.

I'll guess it's a problem caused by changes to the USRP Blocks between wh=
en the flowgraph=20
was originally made and your current version of GNU Radio.

Best,
Marcus :)

On 22.01.24 16:08, Mammadova, Olivia wrote:
>
> Dear USRP-Users Team,
>
> i am recently working on USRP X410 using the =C2=A0Mellanox MCX516A-CCA=
T ConnectX(R)-5 EN=20
> Networkcard and the FPGA Image UC_200 with the latest UHD Version 4.6 a=
nd GNU Radio=20
> version 3.10.8.0. The Ubuntu version of the computer is 22.04.3. I want=
ed to send QPSK=20
> modulated symbols to USRP X410, but i get lot of errors and don=E2=80=99=
t know how to fix the=20
> errors related to radiconda/lib/python3.10/site-packages/gnuradio/grc=E2=
=80=A6 . =C2=A0When i use=20
> Virtual Sink and Virtual Source and Throttle =C2=A0instead the real UHD=
 Sink and Source=20
> respectively, i am getting QPSK Constellation Diagramms on the Transmit=
ter and Receiver=20
> Sites. -but when i am trying to apply it on real hardware USRP X410, i =
get errors.=C2=A0 It=20
> seems like some dependencies are damaged. I installed everything by usi=
ng conda.
>
> I am sending you QPSK_test.grc and two screenshots of errors after simu=
lation. Would you=20
> like to have a look at the simulation and screenshots and help me to fi=
x the errors?
>
> Thank you in advance!
>
> Best regards,
>
> Olivia Mammadova
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------ejf6KBeGg0oXh4cShiY6pzUg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Olivia,</p>
    <p>I was able to make your flow graph build just beautifully, simply
      by adding a "new" UHD USRP Sink and UHD USRP Source block, and
      manually copying the settings over from the original blocks, then
      removing them.</p>
    <p>I'll guess it's a problem caused by changes to the USRP Blocks
      between when the flowgraph was originally made and your current
      version of GNU Radio.</p>
    <p>Best,<br>
      Marcus :)<br>
    </p>
    <div class=3D"moz-cite-prefix">On 22.01.24 16:08, Mammadova, Olivia
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:FR0P281MB1594B76468309C977AE7C42AD4752@FR0P281MB1594.DEUP281.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Dear USRP-Users Team,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">i am recently working on USRP X410 using
          the =C2=A0Mellanox MCX516A-CCAT ConnectX(R)-5 EN Networkcard an=
d
          the FPGA Image UC_200 with the latest UHD Version 4.6 and GNU
          Radio version 3.10.8.0. The Ubuntu version of the computer is
          22.04.3. I wanted to send QPSK modulated symbols to USRP X410,
          but i get lot of errors and don=E2=80=99t know how to fix the e=
rrors
          related to
          radiconda/lib/python3.10/site-packages/gnuradio/grc=E2=80=A6 . =
=C2=A0When i
          use Virtual Sink and Virtual Source and Throttle =C2=A0instead =
the
          real UHD Sink and Source respectively, i am getting QPSK
          Constellation Diagramms on the Transmitter and Receiver Sites.
          -but when i am trying to apply it on real hardware USRP X410,
          i get errors.=C2=A0 It seems like some dependencies are damaged=
. I
          installed everything by using conda. <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am sending you QPSK_test.grc and two
          screenshots of errors after simulation. Would you like to have
          a look at the simulation and screenshots and help me to fix
          the errors?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you in advance!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Olivia Mammadova<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------ejf6KBeGg0oXh4cShiY6pzUg--

--===============4243153657231032983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4243153657231032983==--
