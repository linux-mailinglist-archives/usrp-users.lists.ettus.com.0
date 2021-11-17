Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D89C454B40
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 17:44:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 768C938417C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 11:44:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FyMHn/Dl";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FDD7383AA8
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 11:43:18 -0500 (EST)
Received: by mail-qt1-f169.google.com with SMTP id m25so3179996qtq.13
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 08:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=eXXA5rTC/MrumQlwb9oSgoZ/4YwmYZedyExRIRaEUfc=;
        b=FyMHn/DlCw/vI8gmSlwV4HHapObYuuhl1ozZnEkKQepsMg1MD2sGoP7NtE8KQNMOgx
         ligrVjSVYcVRIsJyoKWj/6CFuj2JQKWXnJ/trmlP+4CEp4u20o2uPXjtua+dNyy6wlqD
         bDiAnpDUuOgqyLyc1/cOPgBbysUoaDrA8scbHah+rH+m7uqgc+R1mZoWWpOi36zOa15j
         zWi6+ItpDEGmjYxiIFeG9GKQK+SkwaG5IbDXzwoj8FWFtsSMyx6VXE/FIckU+cgMPYnb
         NJBmFFJ+Q2Pgne5BkTEfX/uYgy8Tviqdx6XVzoqIYYBDgbNywTP6JMTZYnP5i6QUB1wU
         VNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=eXXA5rTC/MrumQlwb9oSgoZ/4YwmYZedyExRIRaEUfc=;
        b=7+LLoODW3ONGwzHc0R0Rnm3WnuwTS/hObF/p9iQ3o+wkbF+e1+sbvNAe8JjSEj2fdq
         1r+/p198HuFtOVJP49CtFzigWNU/sls4CPhYiEDZpxksu3Gnc4LIz+N+oafBAgdxIkYA
         OUpj+HVt3cHd9w7qzhihtLhyTNWUsBsdvT4+2fdCtFw0IymlVABDUWimY0igKmSkXSZB
         EfkCiEDEXip7ifr/vbpUy4gFMhsTeVrwokqc/GGudDwhe/C/dKUfyoy/4dLSuNXU6Vfg
         r6i/L3dAsjH2WBZXuu6kJoBCRTdt57kGqA6jsGR6fYy+iBz+Rl+ryup0NJdQGVWmKvSw
         undQ==
X-Gm-Message-State: AOAM532mU7kvpWs4NisTKVuwIDCUZPtBUbegvy1aOzbmeeWOBBawE4a+
	zDacgVGMTJPaXslJoLpfk/A=
X-Google-Smtp-Source: ABdhPJwruA2rUvD6LuT2oAFGRXhGzG2gBxVnebseVY8Im4pkOgaecfHPKSEsA1GYltKwJW71QSqdOw==
X-Received: by 2002:ac8:4155:: with SMTP id e21mr18175658qtm.312.1637167398482;
        Wed, 17 Nov 2021 08:43:18 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 9sm147542qkm.5.2021.11.17.08.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 08:43:17 -0800 (PST)
Message-ID: <a925d2f2-aa2b-4e2a-318c-248c2c101178@gmail.com>
Date: Wed, 17 Nov 2021 11:43:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>, Rob Kossler <rkossler@nd.edu>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
 <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
 <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com>
 <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
 <7ac64ef957f2477ea403b0b03739ce8c@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7ac64ef957f2477ea403b0b03739ce8c@gmv.com>
Message-ID-Hash: NE3DLILHWIGNSN2RS7R7NCLQOS5SJOOA
X-Message-ID-Hash: NE3DLILHWIGNSN2RS7R7NCLQOS5SJOOA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NE3DLILHWIGNSN2RS7R7NCLQOS5SJOOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4010241298016377813=="

This is a multi-part message in MIME format.
--===============4010241298016377813==
Content-Type: multipart/alternative;
 boundary="------------ZZ5sNVakWXTHO6LvALcOu4p3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZZ5sNVakWXTHO6LvALcOu4p3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-17 11:27, Guillermo Ortas Delgado wrote:
>
> Hi Marcus, thank you for your message.
>
> I do think the network layer is indeed the most significant part of=20
> this challenging setup, let me illustrate:
>
> The platform I=E2=80=99m using is a server form-factor computer with a =
Xeon=20
> Silver 4215R, 32GB of memory and no GPU. For storage, I have 4 SSDs of=20
> 3.2TB mounted in RAID 0 providing a write capacity of 4GB/s, so that=E2=
=80=99s=20
> no issue. I=E2=80=99m using all the optimizations mentioned here=20
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD> and here=20
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks>,=20
> so raw CPU power I think should be enough.
>
> Each of the four x310 USRPs is attached to a dedicated network card=20
> with dual 10GbE ports, so network capacity is theoretically more than=20
> enough (6.4Gb out of 10Gb maximum usage per interface).
>
> The scheme I=E2=80=99m trying to run is as follows:
>
> =C2=B7USRP 1: 200 Msps on both channels
>
> =C2=B7USRP 2: 200 Msps on both channels
>
> =C2=B7USRP 3: 50 Msps on both channels
>
> =C2=B7USRP 4: 50 Msps on both channels
>
> I=E2=80=99m streaming samples directly into shared memory, from which a=
=20
> separate thread converts the samples to selectable 1/2/4/8/16 bits per=20
> sample and stores them to the RAID 0 disk volume. Bit depth conversion=20
> is fast and doesn=E2=80=99t seem to be the bottleneck. In fact, convert=
ing to=20
> 4 bits per sample achieves better results than no conversion at all,=20
> forcing me to write the full incoming 16 bits per sample. I launch a=20
> separate instance of my program to store samples for each USRP, as I=20
> have observed this delivers the best performance.
>
> With this, I=E2=80=99m able to run 4 channels at 200Msps and 2 channels=
 at=20
> 50Msps. But when I launch the last two channels at 50Msps the system=20
> can=E2=80=99t keep up and the recording starts losing/dropping samples.
>
> I was able to run 4 channels at 184.32Msps and 4 channels at 46.08Msps=20
> for a few seconds, but this is also not sustainable and samples are=20
> dropped periodically.
>
> The application is very sensitive, so even a single sample lost or=20
> dropped completely invalidates the recording.
>
> At these rates, the sheer amount of kernel systems calls seems to be=20
> the most significant performance hit, that=E2=80=99s why I was looking =
at DPDK=20
> as a potential solution. That being said, I=E2=80=99m able to sustain a=
 solid=20
> stream using the benchmark_rateprogram (discarding the samples) with 4=20
> channels at 200Msps and 4 channels at 50Msps without any=20
> drops/overflows.__
>
> Do you have a sample program for high-performance/high-rate sample=20
> streaming? The provided rx_samples_to_fileis not nearly enough.
>
> What=E2=80=99s the preferred way to approach storing samples for maximu=
m=20
> performance?
>
> Thank you a lot and best regards,
>
> Guillermo
>
1Gsps is a totally *eye-watering* sample-rate for an ordinary computer=20
to "swallow" and write to disk.=C2=A0 You are very likely at the very=20
bleeding edge with this, and
 =C2=A0 I'm not aware of anyone else doing work at these aggregate rates.=
 The=20
fact that you are able to *both* "do stuff with the samples" AND write=20
them to a RAID
 =C2=A0 array at ~1Gsps is amazing.

Do all USRPs have to be on the same computer for your application? Are=20
there opportunities to use a more distributed approach?


> *De:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Enviado el:* 17 November 2021 16:51
> *Para:* Guillermo Ortas Delgado <g.ortas@gmv.com>; Rob Kossler=20
> <rkossler@nd.edu>
> *CC:* usrp-users@lists.ettus.com
> *Asunto:* Re: [USRP-users] Re: DPDK drops samples at low rates
>
> On 2021-11-17 04:50, Guillermo Ortas Delgado wrote:
>
>     Thanks for your message, I already have the mbuf size maxed out to
>     512 (that=E2=80=99s the maximum value it will take).
>
>     I have noticed that DPDPK v19.11 made great improvements to the
>     BNXT driver. Is there any chance to get UHD running with DPDK
>     19.11? Or even better 20.11.3?
>
>     Both are long-term support releases which are more mature and
>     support vector mode, which offers must better performance.
>
>     Quote from DPDK 19.11:
>     =E2=80=9CThe BNXT PMD includes support for SSE vector mode on x86
>     platforms. Vector provides *significantly improved performance*
>     over the base implementation=E2=80=9D
>
>     I already tried building UHD 4.1.0.4 with DPDK 19.11 by modifying
>     the makefile to accept this version, but the build fails.
>
>     I would really appreciate it if you could add support for newer
>     versions of DPDK.
>
>     Best,
>
>     Guillermo
>
>
> PPlease consider the environment before printing this e-mail.

--------------ZZ5sNVakWXTHO6LvALcOu4p3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-17 11:27, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7ac64ef957f2477ea403b0b03739ce8c@gmv.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}p.MsoListParagraph, li.MsoListParag=
raph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EstiloCorreo18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.EstiloCorreo20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Hi Marcus, thank you for your message.<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I do think the network layer is indeed the mos=
t
            significant part of this challenging setup, let me
            illustrate:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">The platform I=E2=80=99m using is a server for=
m-factor
            computer with a Xeon Silver 4215R, 32GB of memory and no
            GPU. For storage, I have 4 SSDs of 3.2TB mounted in RAID 0
            providing a write capacity of 4GB/s, so that=E2=80=99s no iss=
ue. I=E2=80=99m
            using all the optimizations mentioned
            <a
              href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_=
UHD"
              moz-do-not-send=3D"true">here</a> and <a
              href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_T=
ips_and_Tricks"
              moz-do-not-send=3D"true">
              here</a>, so raw CPU power I think should be enough.<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Each of the four x310 USRPs is attached to a
            dedicated network card with dual 10GbE ports, so network
            capacity is theoretically more than enough (6.4Gb out of
            10Gb maximum usage per interface).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">The scheme I=E2=80=99m trying to run is as fol=
lows:<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">USRP 1: 200 Msps on both channels<o:p></o:p></=
span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">USRP 2: 200 Msps on both channels<o:p></o:p></=
span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">USRP 3: 50 Msps on both channels<o:p></o:p></s=
pan></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">USRP 4: 50 Msps on both channels<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I=E2=80=99m streaming samples directly into sh=
ared
            memory, from which a separate thread converts the samples to
            selectable 1/2/4/8/16 bits per sample and stores them to the
            RAID 0 disk volume. Bit depth conversion is fast and doesn=E2=
=80=99t
            seem to be the bottleneck. In fact, converting to 4 bits per
            sample achieves better results than no conversion at all,
            forcing me to write the full incoming 16 bits per sample. I
            launch a separate instance of my program to store samples
            for each USRP, as I have observed this delivers the best
            performance.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">With this, I=E2=80=99m able to run 4 channels =
at
            200Msps and 2 channels at 50Msps. But when I launch the last
            two channels at 50Msps the system can=E2=80=99t keep up and t=
he
            recording starts losing/dropping samples.<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I was able to run 4 channels at 184.32Msps and
            4 channels at 46.08Msps for a few seconds, but this is also
            not sustainable and samples are dropped periodically.<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">The application is very sensitive, so even a
            single sample lost or dropped completely invalidates the
            recording.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">At these rates, the sheer amount of kernel
            systems calls seems to be the most significant performance
            hit, that=E2=80=99s why I was looking at DPDK as a potential
            solution. That being said, I=E2=80=99m able to sustain a soli=
d
            stream using the
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">benchmark_rate</span><span
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">program (discarding the samples) with 4
            channels at 200Msps and 4 channels at 50Msps without any
            drops/overflows.<u><o:p></o:p></u></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Do you have a sample program for
            high-performance/high-rate sample streaming? The provided
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">rx_samples_to_file</span><span
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">is not nearly enough.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">What=E2=80=99s the preferred way to approach s=
toring
            samples for maximum performance?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
              lang=3D"EN-US">Thank you a lot and best regards,<o:p></o:p>=
</span></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
              lang=3D"EN-US">Guillermo</span></p>
        </div>
      </div>
    </blockquote>
    1Gsps is a totally *eye-watering* sample-rate for an ordinary
    computer to "swallow" and write to disk.=C2=A0 You are very likely at=
 the
    very bleeding edge with this, and<br>
    =C2=A0 I'm not aware of anyone else doing work at these aggregate rat=
es.=C2=A0
    The fact that you are able to *both* "do stuff with the samples" AND
    write them to a RAID<br>
    =C2=A0 array at ~1Gsps is amazing.<br>
    <br>
    Do all USRPs have to be on the same computer for your application?=C2=
=A0
    Are there opportunities to use a more distributed approach?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:7ac64ef957f2477ea403b0b03739ce8c@gmv.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US"><o:p></o:p></span></p>
        </div>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif">De:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                Marcus D. Leech [<a class=3D"moz-txt-link-freetext" href=3D=
"mailto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>]
                <br>
                <b>Enviado el:</b> 17 November 2021 16:51<br>
                <b>Para:</b> Guillermo Ortas Delgado
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:g.ortas=
@gmv.com">&lt;g.ortas@gmv.com&gt;</a>; Rob Kossler
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rkossle=
r@nd.edu">&lt;rkossler@nd.edu&gt;</a><br>
                <b>CC:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Asunto:</b> Re: [USRP-users] Re: DPDK drops samples
                at low rates<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2021-11-17 04:50, Guillermo Ortas
            Delgado wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">Thanks for your message, I already have the
              mbuf size maxed out to 512 (that=E2=80=99s the maximum valu=
e it
              will take).</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">I have noticed that DPDPK v19.11 made great
              improvements to the BNXT driver. Is there any chance to
              get UHD running with DPDK 19.11? Or even better 20.11.3?</s=
pan><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">Both are long-term support releases which ar=
e
              more mature and support vector mode, which offers must
              better performance.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">Quote from DPDK 19.11:<br>
              =E2=80=9CThe BNXT PMD includes support for SSE vector mode =
on x86
              platforms. Vector provides
              <b>significantly improved performance</b> over the base
              implementation=E2=80=9D</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">I already tried building UHD 4.1.0.4 with
              DPDK 19.11 by modifying the makefile to accept this
              version, but the build fails.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">I would really appreciate it if you could ad=
d
              support for newer versions of DPDK.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
              lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
              lang=3D"EN-US">Best,</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
              lang=3D"EN-US">Guillermo
            </span><o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </blockquote>
        <span style=3D""></span><br>
        <span style=3D""></span></div>
      <span style=3D"">
      </span><span style=3D"font-size:18.0pt; line-height:125%;
        font-family:Webdings; color:green">P<span style=3D""></span>
        <span style=3D"font-size:7.0pt; line-height:125%;
          font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
          color:green">
          Please consider the environment before printing this e-mail.</s=
pan></span><span
        style=3D""></span>
    </blockquote>
    <br>
  </body>
</html>
--------------ZZ5sNVakWXTHO6LvALcOu4p3--

--===============4010241298016377813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4010241298016377813==--
