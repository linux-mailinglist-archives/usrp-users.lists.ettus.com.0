Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9C577C3FC
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 01:34:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C45E3840F4
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 19:34:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692056058; bh=sOg4M3++67GdLTHixZQNI8TKb4r6B7hQGR3tswRYcK8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yfrrzcpci9AoROY5uRg875p0m/YSIjOmJLfXxO4WSBEB43k6nEBKqwHY4p+ttX4PU
	 8Bj3SNZUjGJpqQfgL+YRlKe+kXRle6bu7DEm7YjkvZmohNAErtl4qwoSvrd9QzaikX
	 PfsNP6tFzYEFTQFvpw3c/WwAZWrk/9RXfOyvleIVY0nHZBCV5SurJ/wTjBj5rarTmX
	 AxbtolkV+M3oPxY2QmpdOo54y6LNaz2k3SxZdls/SQEA8KBNziX3+vaSP35Jr8ACAw
	 06+qwsDrGNniCnmCVQglUcBAgEZkaIh3oYqcERfGuRNIDpW6gJAxCfhiNEQWjCVLT+
	 YaWCnNCVZQKWQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F07C380F80
	for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 19:33:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YGjh2Kpd";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-410487ca3d6so9492391cf.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 16:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692056023; x=1692660823;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UERjIEcRYwiX+RdCMa99zdoTvbSNKpFSaKqkptvh83o=;
        b=YGjh2Kpdli+g9NIa6fN/bA0ulLYVr0uT2eWCaQKoEyml8AQfmRXr9iAZX0pQrC4Ey3
         0tSgi/v77DmHRTfgfi/NZeINiuwV2h7Gn5IcgdbT5k9LPp2lsxIxI8c7wwgb3CCIjb0f
         Ge8kQl539hfH6HAxOBWnBtgeTxnL+qJGHTQHPbvWv+dcMeIZcukQ13GajJb9uwUcwCqa
         g7/9+l6MBAUVS0dNKu1sCgHuY1Tu3fNCYdFRgAuI86D9uq2J27QOHuWBAk5LZNVwhHE9
         43q/lQr+ar4D+SodKnQMPNPLOnWL256530K01XbW6FhGzJ128Ds3I6x2UAfDPcv3xyT/
         sMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692056023; x=1692660823;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UERjIEcRYwiX+RdCMa99zdoTvbSNKpFSaKqkptvh83o=;
        b=lleDBbTQ8wYM6Mtilu+BrGXvhsgykC7TpuGGFKiX/Bbssr4nKLzrWUWhLskksk7OvR
         CkzDnc2guhv9D3fTWnlZfpZfyxg/HBw1JbHhFkMf6Ds1oYecdNUdDOvVcQ9NRkPlgvZU
         W09wDTCIaSPAabhw/OyVjmdwJygzfZtouhP5QbbMFGoAx4COZ7+YQKN6oVcCikA90Dn4
         shiRRNf7PC9gpiUz8jRmStIWkMGtNBbSLcXIXxfn2ru0fuqzUwdIPMAU6hU3Dhn7761W
         7VJOfo7DKlXVHTFXhOgRkRp5lgDj1xD6RUX4QeDyoQk4QVtGwLtAvM3HLsCtJOzbaF1b
         SobA==
X-Gm-Message-State: AOJu0YyX2Ex3O9q6u5iUmbJa2LYVIIF/QrG/TJFDg72UYz28ZTnFbbdT
	nPbUPfL/nyQL3SzBpS/tlXiWS6y1WGE=
X-Google-Smtp-Source: AGHT+IHlQ76NyYIcRJG2nFBusfkbPdZqwScGFaMDL4W09HnEvF58TPHvuELQazJXKTQnh9q1eGw+2w==
X-Received: by 2002:a05:622a:11d2:b0:405:46e5:be3a with SMTP id n18-20020a05622a11d200b0040546e5be3amr17302277qtk.49.1692056023287;
        Mon, 14 Aug 2023 16:33:43 -0700 (PDT)
Received: from [192.168.2.201] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id jr22-20020a05622a801600b0040ff1b4b400sm3434972qtb.73.2023.08.14.16.33.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 16:33:43 -0700 (PDT)
Message-ID: <f7232a6a-0780-4f82-917e-94101483ced4@gmail.com>
Date: Mon, 14 Aug 2023 19:33:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6c8167b2c5804f74be1fbeb1c9dd9df3@verusresearch.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6c8167b2c5804f74be1fbeb1c9dd9df3@verusresearch.net>
Message-ID-Hash: WWWJK63XFAZR64NQG3UOLK3WDK73NXYJ
X-Message-ID-Hash: WWWJK63XFAZR64NQG3UOLK3WDK73NXYJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Xilinx Zynq 7020 SoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWWJK63XFAZR64NQG3UOLK3WDK73NXYJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5106366355427444693=="

This is a multi-part message in MIME format.
--===============5106366355427444693==
Content-Type: multipart/alternative;
 boundary="------------0mtDlLI5IKU3uBQvjloYPKA2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0mtDlLI5IKU3uBQvjloYPKA2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/08/2023 18:30, Mushtaq A. Syed, Ph.D. via USRP-users wrote:
>
> Hi:
>
> Where can I find documentation for the DSP modules that are present on=20
> the xilinx Zynq SOC?
>
> Thanks a lot!
>
> Cheers,
>
> Mushtaq
>
>
You are presumably talking about the Zynq on the E31x series of=20
devices.=C2=A0 Took me a second to look up the mapping
 =C2=A0 between USRP devices and the Xilinx FPGAs they use.

To whatever extent Xilinx IP is used on USRP devices, the documentation=20
for that IP can be sourced through Xilinx, but
 =C2=A0 for other bits and pieces (including "home grown" DSP machinery),=
 for=20
the most part, the source code is the documentation.
 =C2=A0 There's no separate "structured walk-through" of the FPGA=20
code--partially because it changes, often considerably, between
 =C2=A0 FPGA releases, and partially because resources have never been=20
committed to create such a set of documentation.

There are documents like this:

https://files.ettus.com/manual/page_usrp_e3xx.html
https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Getting_Started_Guid=
es
https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources

But no high-level structured walk-through of the FPGA code.


--------------0mtDlLI5IKU3uBQvjloYPKA2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/08/2023 18:30, Mushtaq A. Syed,
      Ph.D. via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6c8167b2c5804f74be1fbeb1c9dd9df3@verusresearch.net">
      <!-- Template generated by Exclaimer Signature Manager Exchange Edi=
tion on 04:30:48 Monday, 14 August 2023 -->
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css">P.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}LI.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}DIV.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}TABLE.ImprintUniqueIDTable {
	MARGIN: 0cm 0cm 0pt
}DIV.Section1 {
	page: Section1
}</style>
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi:<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Where can I fin=
d
          documentation for the DSP modules that are present on the
          xilinx Zynq SOC?<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Thanks a lot!<o=
:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Cheers,<o:p></o=
:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Mushtaq<span
style=3D"font-size:13.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#333333"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:13.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#333333">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          </span><o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    <font face=3D"Exo 2">You are presumably talking about the Zynq on the
      E31x series of devices.=C2=A0 Took me a second to look up the mappi=
ng<br>
      =C2=A0 between USRP devices and the Xilinx FPGAs they use.<br>
      <br>
      To whatever extent Xilinx IP is used on USRP devices, the
      documentation for that IP can be sourced through Xilinx, but<br>
      =C2=A0 for other bits and pieces (including "home grown" DSP
      machinery), for the most part, the source code is the
      documentation.<br>
      =C2=A0 There's no separate "structured walk-through" of the FPGA
      code--partially because it changes, often considerably, between<br>
      =C2=A0 FPGA releases, and partially because resources have never be=
en
      committed to create such a set of documentation.<br>
      <br>
      There are documents like this:<br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/=
manual/page_usrp_e3xx.html">https://files.ettus.com/manual/page_usrp_e3xx=
.html</a><br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Ettus_USR=
P_E300_Embedded_Family_Getting_Started_Guides">https://kb.ettus.com/Ettus=
_USRP_E300_Embedded_Family_Getting_Started_Guides</a><br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Ettus_USR=
P_E300_Embedded_Family_Hardware_Resources">https://kb.ettus.com/Ettus_USR=
P_E300_Embedded_Family_Hardware_Resources</a><br>
      <br>
      But no high-level structured walk-through of the FPGA code.<br>
      <br>
      <br>
    </font>
  </body>
</html>

--------------0mtDlLI5IKU3uBQvjloYPKA2--

--===============5106366355427444693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5106366355427444693==--
