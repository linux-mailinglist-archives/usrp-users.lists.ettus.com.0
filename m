Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E8944591B
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 18:57:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF4F23843A8
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 13:57:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZQOPAiCL";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 8109B383ECA
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 13:56:32 -0400 (EDT)
Received: by mail-qv1-f45.google.com with SMTP id k29so5806838qve.6
        for <usrp-users@lists.ettus.com>; Thu, 04 Nov 2021 10:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=/E3K9G/Y0tXk82zhIwQjkWtM0mWs0n3kdXAq0xzih0Y=;
        b=ZQOPAiCLY8oVSn3x/hpV1rDlOlyoiGIRxr81RycwQvxCZ8eCCQBWy6yqVDTUUUMJfA
         mHKufqIcT3tj3Jlx47nH6zEEZu0Cv7R3jFLMJfB+RiD2H26EsFTJIXx0456HabNtRo8a
         7tsbYsIFUkMG3jYrxyVE1dHzKj/uU54kDtYfku50fdtAPykC7qG66MiIxQ0VDh0tlhqe
         rZmvDkYEjXbLcJUWCy+rZ7HqKa8qpxPX6u3C0N3KRIa60MyMMHoWTUOLxwx0cMSRYMKu
         B+gLJxPXjSPMlCBnxxreHjUYdt90WjDsJDPeCIH4M8UW4d+9EniwkaVR6+W4Nzx2bicW
         yh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=/E3K9G/Y0tXk82zhIwQjkWtM0mWs0n3kdXAq0xzih0Y=;
        b=IY4lcTPReaeUwPBy0ALr3EOsE2M4snaVTBj6IQWzR8YsyuFSX5edOdrnbQbRibduW4
         KNU/gHrXUysl21Q5YEzwQLsjtaijF1E0LK2/Rd8RaIweBGCYx50N+Q4DdItowGNkSGvp
         eYKRNIZdRmXpuLbZmSWmXP9eJ0WMTkfE9Hwregt1yaISFlMl7p2Z2svjtNiBbQhhhAfx
         egbhx5RSuNomb7Mky82o4s0Lte818R289r5imO6y++AmG8tkcdbmtJISd6JsWLjCQjTc
         H1KagJ1p4kIgm7ER63xwXra82KJAQ0FIQtbFShnRPY5C9kLPa01lHH42zjAdnoMDlz5n
         SmXg==
X-Gm-Message-State: AOAM530T0i2262RsIIVxC8LXVIHUpxKR5hPjVDba+esd8Nw1st/UKUrm
	VUVIZ/DaI31k3cT0D8F1hAmrzjTvLGI=
X-Google-Smtp-Source: ABdhPJwWDOwjsA6qdiBsaYNFfNh4ZxGIPm1F4IKcZbiv7Eu3xlHtCjPF+P4jFAX20AblTKdZtRMbJQ==
X-Received: by 2002:ad4:4d05:: with SMTP id l5mr48398011qvl.54.1636048591933;
        Thu, 04 Nov 2021 10:56:31 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id f10sm4507738qko.78.2021.11.04.10.56.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 10:56:31 -0700 (PDT)
Message-ID: <37284843-a7ea-fca4-9faa-9e91b4f96d98@gmail.com>
Date: Thu, 4 Nov 2021 13:56:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>, Rob Kossler <rkossler@nd.edu>
References: <79b89ffb765545ba9023f3475db937a2@gmv.com>
 <76091DB1-CBD2-4365-A7F3-C1FFA2F59ECA@gmail.com>
 <CAB__hTQJ0tVGt9U-rdHNhCUsR3on26=JZCvJg5c0bhp1WKGWXA@mail.gmail.com>
 <31a4c3e34dba44aea5b8077c78be7fb3@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <31a4c3e34dba44aea5b8077c78be7fb3@gmv.com>
Message-ID-Hash: D4NKSRNC3VB5WZU2YWJSAYH7QPMX7HZQ
X-Message-ID-Hash: D4NKSRNC3VB5WZU2YWJSAYH7QPMX7HZQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4NKSRNC3VB5WZU2YWJSAYH7QPMX7HZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2223731646942340269=="

This is a multi-part message in MIME format.
--===============2223731646942340269==
Content-Type: multipart/alternative;
 boundary="------------Dm95F8uvKKVdEmS0ZwyqdZbu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Dm95F8uvKKVdEmS0ZwyqdZbu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-04 13:40, Guillermo Ortas Delgado wrote:
>
> Thank you Rob and Marcus,
>
> Is there a specific page or resource that I should read for guidance?=20
> Anything in particular that I should keep in mind?
>
> I would really appreciate it, especially if there are so many gotchas=20
> as you say.
>
> Best,
>
> Guillermo
>
I don't use it myself, so I have no experience to convey.

DPDK wouldn't even be necessary if the OS kernel-layer network drivers=20
were "up" to the task of
 =C2=A0 very-high rate continuous streaming.=C2=A0 They aren't.=C2=A0 Whi=
ch is why DPDK=20
was developed in the first
 =C2=A0 place.


> *De:*Rob Kossler [mailto:rkossler@nd.edu]
> *Enviado el:* 04 November 2021 17:13
> *Para:* Marcus D Leech <patchvonbraun@gmail.com>
> *CC:* Guillermo Ortas Delgado <g.ortas@gmv.com>;=20
> usrp-users@lists.ettus.com; Anabel Almodovar <anabel.almodovar@gmail.co=
m>
> *Asunto:* Re: [USRP-users] Re: UHD 4.1 error
>
> I also recommend that you search the user's list archive regarding=20
> DPDK. There are lots of gotchas that are not well documented (or=20
> documented at all).
>
> Rob
>
> On Thu, Nov 4, 2021 at 9:43 AM Marcus D Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     The consensus from Ettus R&D is to build the required version from
>     source.
>
>     Sent from my iPhone
>
>
>
>         On Nov 4, 2021, at 5:45 AM, Guillermo Ortas Delgado
>         <g.ortas@gmv.com> wrote:
>
>         =EF=BB=BF
>
>         Hi Marcus,
>
>         I would also like to get DPDK running and I have tried in the
>         past.
>
>         Let me point out a problem: the latest release of UHD requires
>         DPDK version 18.11, but in fact this version is not supported
>         on Ubuntu 20.04. The oldest available version is 19.11, so
>         what should I do to get it working?
>         I tried editing the makefile when compiling UHD to accept DPDK
>         version 19.11, but then the build fails mid-way. Could you
>         provide a solution please?
>
>         Best,
>
>         Guillermo
>
>         *De:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
>         *Enviado el:* 03 November 2021 16:17
>         *Para:* Anabel Almodovar <anabel.almodovar@gmail.com>
>         *CC:* usrp-users@lists.ettus.com
>         *Asunto:* [USRP-users] Re: UHD 4.1 error
>
>         On 2021-11-03 03:04, Anabel Almodovar wrote:
>
>             Thank you for your explanation.=C2=A0So is there any kind o=
f
>             solution for my problem with GNU Radio?
>
>             Thanks in=C2=A0advance.
>
>             Regards,
>
>             Anabel
>
>         I have suggested this in the past--look into using DPDK if
>         you're running at high sample rates over 10GiGe:
>
>         https://files.ettus.com/manual/page_dpdk.html
>         <https://urldefense.com/v3/__https:/files.ettus.com/manual/page=
_dpdk.html__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4asgX=
No56mlkCx8$>
>
>         https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>         <https://urldefense.com/v3/__https:/kb.ettus.com/Getting_Starte=
d_with_DPDK_and_UHD__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXK=
MBMc4asgXNo5jyS_8IE$>
>
>
>             El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech
>             (<patchvonbraun@gmail.com>) escribi=C3=B3:
>
>                 On 2021-10-27 11:37, Anabel Almodovar wrote:
>
>                     Hello,
>
>                     When I run a benchmark_rate example it indicates
>                     that there are no sample losses even with 30s of
>                     acquisition.
>
>                     */rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uh=
d/uhd/host/examples/build$
>                     sudo ./benchmark_rate
>                     --args=3D"addr=3D192.168.40.2,second_addr=3D192.168=
.30.2,recv_buff_size=3D900000000"
>                     --channels=3D"0,1" --rx_rate 200e6 --duration 30
>                     --rx_subdev=3D"A:0 B:0"
>
>                     [INFO] [UHD] linux; GNU C++ version 9.3.0;
>                     Boost_107100; UHD_4.1.0.HEAD-0-gd21735d5
>                     [00:00:00.000677] Creating the usrp device with:
>                     addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv=
_buff_size=3D900000000...
>                     [INFO] [X300] X300 initialization sequence...
>                     [INFO] [X300] Maximum frame size: 8000 bytes.
>                     [INFO] [X300] Maximum frame size: 8000 bytes.
>                     [INFO] [X300] Radio 1x clock: 200 MHz
>                     Using Device: Single USRP:
>                     =C2=A0 Device: X-Series Device
>                     =C2=A0 Mboard 0: X310
>                     =C2=A0 RX Channel: 0
>                     =C2=A0 =C2=A0 RX DSP: 0
>                     =C2=A0 =C2=A0 RX Dboard: A
>                     =C2=A0 =C2=A0 RX Subdev: UBX RX
>                     =C2=A0 RX Channel: 1
>                     =C2=A0 =C2=A0 RX DSP: 1
>                     =C2=A0 =C2=A0 RX Dboard: B
>                     =C2=A0 =C2=A0 RX Subdev: UBX RX
>                     =C2=A0 TX Channel: 0
>                     =C2=A0 =C2=A0 TX DSP: 0
>                     =C2=A0 =C2=A0 TX Dboard: A
>                     =C2=A0 =C2=A0 TX Subdev: UBX TX
>                     =C2=A0 TX Channel: 1
>                     =C2=A0 =C2=A0 TX DSP: 1
>                     =C2=A0 =C2=A0 TX Dboard: B
>                     =C2=A0 =C2=A0 TX Subdev: UBX TX
>
>                     [00:00:02.923799498] Setting device timestamp to 0.=
..
>                     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time tra=
nsition
>                     at pps edge
>                     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next=
 pps
>                     (synchronously)
>                     [WARNING] [0/Radio#0] Attempting to set tick rate
>                     to 0. Skipping.
>                     [WARNING] [0/Radio#1] Attempting to set tick rate
>                     to 0. Skipping.
>                     [00:00:04.262875535] Testing receive rate
>                     200.000000 Msps on 2 channels
>                     [00:00:34.313774651] Benchmark complete.
>
>                     Benchmark rate summary:
>                     =C2=A0 Num received samples: 12000000380
>                     =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
>                     =C2=A0 Num overruns detected: =C2=A0 =C2=A00
>                     =C2=A0 Num transmitted samples: =C2=A00
>                     =C2=A0 Num sequence errors (Tx): 0
>                     =C2=A0 Num sequence errors (Rx): 0
>                     =C2=A0 Num underruns detected: =C2=A0 0
>                     =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0
>                     =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0
>                     =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0
>
>                     Done!/*
>
>                     However, when I run rx_samples_to_file I get
>                     overflows from 8 sec for a single receiving channel=
.
>
>                     */sudo ./rx_samples_to_file
>                     =C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_=
codigos_agosto/usrp_samples.dat"
>                     --duration 8
>                     --args=3D"addr=3D192.168.40.2,second_addr=3D192.168=
.30.2,recv_buff_size=3D900000000"
>                     --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw
>                     200e6 --gain 5 --freq 800e6
>
>                     Creating the usrp device with:
>                     addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv=
_buff_size=3D900000000...
>                     [INFO] [UHD] linux; GNU C++ version 9.3.0;
>                     Boost_107100; UHD_4.1.0.HEAD-0-gd21735d5
>                     [INFO] [X300] X300 initialization sequence...
>                     [INFO] [X300] Maximum frame size: 8000 bytes.
>                     [INFO] [X300] Maximum frame size: 8000 bytes.
>                     [INFO] [X300] Radio 1x clock: 200 MHz
>                     Using Device: Single USRP:
>                     =C2=A0 Device: X-Series Device
>                     =C2=A0 Mboard 0: X310
>                     =C2=A0 RX Channel: 0
>                     =C2=A0 =C2=A0 RX DSP: 0
>                     =C2=A0 =C2=A0 RX Dboard: A
>                     =C2=A0 =C2=A0 RX Subdev: UBX RX
>                     =C2=A0 TX Channel: 0
>                     =C2=A0 =C2=A0 TX DSP: 0
>                     =C2=A0 =C2=A0 TX Dboard: A
>                     =C2=A0 =C2=A0 TX Subdev: UBX TX
>                     =C2=A0 TX Channel: 1
>                     =C2=A0 =C2=A0 TX DSP: 1
>                     =C2=A0 =C2=A0 TX Dboard: B
>                     =C2=A0 =C2=A0 TX Subdev: UBX TX
>
>                     Setting RX Rate: 200.000000 Msps...
>                     Actual RX Rate: 200.000000 Msps...
>
>                     Setting RX Freq: 800.000000 MHz...
>                     Setting RX LO Offset: 0.000000 MHz...
>                     Actual RX Freq: 800.000000 MHz...
>
>                     Setting RX Gain: 5.000000 dB...
>                     Actual RX Gain: 5.000000 dB...
>
>                     Setting RX Bandwidth: 200.000000 MHz...
>                     Actual RX Bandwidth: 200.000000 MHz...
>
>                     Waiting for "lo_locked": ++++++++++ locked.
>
>                     Press Ctrl + C to stop streaming...
>                     O
>                     Done!/*
>
>                     I am using a native Ubuntu, not a VM and I have
>                     the CPU governor set to "performance".
>
>                     I have managed to patch the code that worked for
>                     me before updating the system to the new versions
>                     of Ubuntu and UHD, so I ask for more samples than
>                     I want since I have observed that the recv ()
>                     reception buffer is not always constant and it
>                     does not always acquire the maximum number of
>                     samples as I request (1996 samples), at least not
>                     at the beginning. But I would like to know the
>                     cause of this so that I can fix it and why GNU
>                     Radio keeps giving me the same error.
>
>                     Thanks in advance.
>
>                     Regards,
>
>                     Anabel
>
>                 The recv() call doesn't necessarily guarantee that
>                 you'll get all the samples you asked for in that call,
>                 as far as I know. It isn't surprising that there would
>                 be slight differences
>                 =C2=A0 in behavior across different versions of UHD and=
 OS
>                 versions in this regard. You always have to be
>                 prepared to receive fewer samples than you asked for.
>
>                 If Gnu Radio applications are producing overruns, that
>                 is firmly in the territory of Gnu Radio, and NOT UHD.
>                 Clearly, on your machine, UHD is able to sustain 200e6
>                 SPS.
>                 =C2=A0 But as you add layers of application processing,=
 the
>                 system is more heavily loaded.=C2=A0 Gnu Radio actually
>                 "does things" with the samples, which means the
>                 =C2=A0 instructions-per-sample is MUCH higher than your
>                 simple rx_samples_to_file test.
>
>
>         P Please consider the environment before printing this e-mail.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> PPlease consider the environment before printing this e-mail.

--------------Dm95F8uvKKVdEmS0ZwyqdZbu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-04 13:40, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:31a4c3e34dba44aea5b8077c78be7fb3@gmv.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Webdings;
	panose-1:5 3 1 2 1 5 9 6 7 3;}@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}span.EstiloCorreo17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo18
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
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Thank you Rob and Marcus,<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Is there a specific page or resource that I
            should read for guidance? Anything in particular that I
            should keep in mind?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I would really appreciate it, especially if
            there are so many gotchas as you say.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Best,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Guillermo</span></p>
      </div>
    </blockquote>
    I don't use it myself, so I have no experience to convey.<br>
    <br>
    DPDK wouldn't even be necessary if the OS kernel-layer network
    drivers were "up" to the task of<br>
    =C2=A0 very-high rate continuous streaming.=C2=A0 They aren't.=C2=A0 =
Which is why
    DPDK was developed in the first<br>
    =C2=A0 place.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:31a4c3e34dba44aea5b8077c78be7fb3@gmv.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif">De:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Ro=
b
            Kossler [<a class=3D"moz-txt-link-freetext" href=3D"mailto:rk=
ossler@nd.edu">mailto:rkossler@nd.edu</a>]
            <br>
            <b>Enviado el:</b> 04 November 2021 17:13<br>
            <b>Para:</b> Marcus D Leech <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;=
</a><br>
            <b>CC:</b> Guillermo Ortas Delgado <a class=3D"moz-txt-link-r=
fc2396E" href=3D"mailto:g.ortas@gmv.com">&lt;g.ortas@gmv.com&gt;</a>;
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>; Anabel Almodovar
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:anabel.almo=
dovar@gmail.com">&lt;anabel.almodovar@gmail.com&gt;</a><br>
            <b>Asunto:</b> Re: [USRP-users] Re: UHD 4.1 error<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div>
            <p class=3D"MsoNormal">I also recommend that you search the
              user's list archive regarding DPDK. There are lots of
              gotchas that are not well documented (or documented at
              all).<o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">Rob<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <div>
              <p class=3D"MsoNormal">On Thu, Nov 4, 2021 at 9:43 AM Marcu=
s
                D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<o:p></o:p></p>
            </div>
            <blockquote style=3D"border:none;border-left:solid #CCCCCC
              1.0pt;padding:0cm 0cm 0cm
              6.0pt;margin-left:4.8pt;margin-right:0cm">
              <div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The
                  consensus from Ettus R&amp;D is to build the required
                  version from source.=C2=A0<o:p></o:p></p>
                <div>
                  <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></=
p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><br>
                    <br>
                    <o:p></o:p></p>
                  <blockquote
                    style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"=
>On
                      Nov 4, 2021, at 5:45 AM, Guillermo Ortas Delgado
                      &lt;<a href=3D"mailto:g.ortas@gmv.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">g.ortas@gmv.com</=
a>&gt;
                      wrote:<o:p></o:p></p>
                  </blockquote>
                </div>
                <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                  <div>
                    <p class=3D"MsoNormal"><span
                        style=3D"font-family:&quot;Tahoma&quot;,sans-seri=
f">=EF=BB=BF</span>
                      <o:p>
                      </o:p></p>
                    <div>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Hi
                          Marcus,</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">=C2=A0</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                          lang=3D"EN-US">I would also like to get DPDK
                          running and I have tried in the past.</span><o:=
p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                          lang=3D"EN-US">Let me point out a problem: the
                          latest release of UHD requires DPDK version
                          18.11, but in fact this version is not
                          supported on Ubuntu 20.04. The oldest
                          available version is 19.11, so what should I
                          do to get it working?<br>
                          I tried editing the makefile when compiling
                          UHD to accept DPDK version 19.11, but then the
                          build fails mid-way. Could you provide a
                          solution please?</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                          lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                          lang=3D"EN-US">Best,</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                          lang=3D"EN-US">Guillermo</span><o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">=C2=A0</span><o:p></o:p></p>
                      <div>
                        <div style=3D"border:none;border-top:solid #E1E1E=
1
                          1.0pt;padding:3.0pt 0cm 0cm 0cm">
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto"><b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">De:=
</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                              Marcus D. Leech [mailto:<a
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">patchvonb=
raun@gmail.com</a>]
                              <br>
                              <b>Enviado el:</b> 03 November 2021 16:17<b=
r>
                              <b>Para:</b> Anabel Almodovar &lt;<a
                                href=3D"mailto:anabel.almodovar@gmail.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">anabel.al=
modovar@gmail.com</a>&gt;<br>
                              <b>CC:</b> <a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">usrp-user=
s@lists.ettus.com</a><br>
                              <b>Asunto:</b> [USRP-users] Re: UHD 4.1
                              error</span><o:p></o:p></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <div>
                        <p class=3D"MsoNormal"
                          style=3D"mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto">On
                          2021-11-03 03:04, Anabel Almodovar wrote:<o:p><=
/o:p></p>
                      </div>
                      <blockquote
                        style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">Thank
                            you for your explanation.=C2=A0So is there an=
y
                            kind of solution for my problem with GNU
                            Radio?
                            <o:p></o:p></p>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto">Thanks
                              in=C2=A0advance.<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto">Regards,<o:p></o:p></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto">Anabel<o:p></o:p></p>
                          </div>
                        </div>
                      </blockquote>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;margin-bottom:12=
.0pt">I
                        have suggested this in the past--look into using
                        DPDK if you're running at high sample rates over
                        10GiGe:<br>
                        <br>
                        <a
href=3D"https://urldefense.com/v3/__https:/files.ettus.com/manual/page_dp=
dk.html__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4asgXNo5=
6mlkCx8$"
                          target=3D"_blank" moz-do-not-send=3D"true">http=
s://files.ettus.com/manual/page_dpdk.html</a><br>
                        <br>
                        <a
href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/Getting_Started_w=
ith_DPDK_and_UHD__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBM=
c4asgXNo5jyS_8IE$"
                          target=3D"_blank" moz-do-not-send=3D"true">http=
s://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a><br>
                        <br>
                        <br>
                        <o:p></o:p></p>
                      <blockquote
                        style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                        <p class=3D"MsoNormal"
                          style=3D"mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto">=C2=A0<o:p></o:p></p>
                        <div>
                          <div>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto">El
                              mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D=
.
                              Leech (&lt;<a
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">patchvonb=
raun@gmail.com</a>&gt;)
                              escribi=C3=B3:<o:p></o:p></p>
                          </div>
                          <blockquote
                            style=3D"border:none;border-left:solid #CCCCC=
C
                            1.0pt;padding:0cm 0cm 0cm
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt">
                            <div>
                              <div>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto">On
                                  2021-10-27 11:37, Anabel Almodovar
                                  wrote:<o:p></o:p></p>
                              </div>
                              <blockquote
                                style=3D"margin-top:5.0pt;margin-bottom:5=
.0pt">
                                <div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">Hello,<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">When
                                      I run a benchmark_rate example it
                                      indicates that there are no sample
                                      losses even with 30s of
                                      acquisition.
                                      <o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto"><b><i>rack_2021@rack-HP-Z4-G4-Workstation:~/wor=
karea-uhd/uhd/host/examples/build$
                                          sudo ./benchmark_rate
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
                                          --channels=3D"0,1" --rx_rate
                                          200e6 --duration 30
                                          --rx_subdev=3D"A:0 B:0" <br>
                                          <br>
                                          [INFO] [UHD] linux; GNU C++
                                          version 9.3.0; Boost_107100;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [00:00:00.000677] Creating the
                                          usrp device with:
                                          addr=3D192.168.40.2,second_addr=
=3D192.168.30.2,recv_buff_size=3D900000000...<br>
                                          [INFO] [X300] X300
                                          initialization sequence...<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Radio 1x clock:
                                          200 MHz<br>
                                          Using Device: Single USRP:<br>
                                          =C2=A0 Device: X-Series Device<=
br>
                                          =C2=A0 Mboard 0: X310<br>
                                          =C2=A0 RX Channel: 0<br>
                                          =C2=A0 =C2=A0 RX DSP: 0<br>
                                          =C2=A0 =C2=A0 RX Dboard: A<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX=
<br>
                                          =C2=A0 RX Channel: 1<br>
                                          =C2=A0 =C2=A0 RX DSP: 1<br>
                                          =C2=A0 =C2=A0 RX Dboard: B<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX=
<br>
                                          =C2=A0 TX Channel: 0<br>
                                          =C2=A0 =C2=A0 TX DSP: 0<br>
                                          =C2=A0 =C2=A0 TX Dboard: A<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX=
<br>
                                          =C2=A0 TX Channel: 1<br>
                                          =C2=A0 =C2=A0 TX DSP: 1<br>
                                          =C2=A0 =C2=A0 TX Dboard: B<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX=
<br>
                                          <br>
                                          [00:00:02.923799498] Setting
                                          device timestamp to 0...<br>
                                          [INFO] [MULTI_USRP] =C2=A0 =C2=A0=
 1)
                                          catch time transition at pps
                                          edge<br>
                                          [INFO] [MULTI_USRP] =C2=A0 =C2=A0=
 2) set
                                          times next pps (synchronously)<=
br>
                                          [WARNING] [0/Radio#0]
                                          Attempting to set tick rate to
                                          0. Skipping.<br>
                                          [WARNING] [0/Radio#1]
                                          Attempting to set tick rate to
                                          0. Skipping.<br>
                                          [00:00:04.262875535] Testing
                                          receive rate 200.000000 Msps
                                          on 2 channels<br>
                                          [00:00:34.313774651] Benchmark
                                          complete.<br>
                                          <br>
                                          Benchmark rate summary:<br>
                                          =C2=A0 Num received samples: =C2=
=A0 =C2=A0
                                          12000000380<br>
                                          =C2=A0 Num dropped samples: =C2=
=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num overruns detected: =C2=
=A0 =C2=A00<br>
                                          =C2=A0 Num transmitted samples:=
 =C2=A00<br>
                                          =C2=A0 Num sequence errors (Tx)=
: 0<br>
                                          =C2=A0 Num sequence errors (Rx)=
: 0<br>
                                          =C2=A0 Num underruns detected: =
=C2=A0 0<br>
                                          =C2=A0 Num late commands: =C2=A0=
 =C2=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num timeouts (Tx): =C2=A0=
 =C2=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num timeouts (Rx): =C2=A0=
 =C2=A0 =C2=A0 =C2=A00<br>
                                          <br>
                                          Done!</i></b><o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">However,
                                      when I run rx_samples_to_file I
                                      get overflows from 8 sec for a
                                      single receiving channel.<o:p></o:p=
></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto"><b><i>sudo
                                          ./rx_samples_to_file
=C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_sa=
mples.dat"
                                          --duration 8
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
                                          --channel=3D"0" --subdev=3D"A:0=
"
                                          --rate 200e6 --bw 200e6 --gain
                                          5 --freq 800e6<br>
                                          <br>
                                          Creating the usrp device with:
addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900000000=
...<br>
                                          [INFO] [UHD] linux; GNU C++
                                          version 9.3.0; Boost_107100;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [INFO] [X300] X300
                                          initialization sequence...<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Radio 1x clock:
                                          200 MHz<br>
                                          Using Device: Single USRP:<br>
                                          =C2=A0 Device: X-Series Device<=
br>
                                          =C2=A0 Mboard 0: X310<br>
                                          =C2=A0 RX Channel: 0<br>
                                          =C2=A0 =C2=A0 RX DSP: 0<br>
                                          =C2=A0 =C2=A0 RX Dboard: A<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX=
<br>
                                          =C2=A0 TX Channel: 0<br>
                                          =C2=A0 =C2=A0 TX DSP: 0<br>
                                          =C2=A0 =C2=A0 TX Dboard: A<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX=
<br>
                                          =C2=A0 TX Channel: 1<br>
                                          =C2=A0 =C2=A0 TX DSP: 1<br>
                                          =C2=A0 =C2=A0 TX Dboard: B<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX=
<br>
                                          <br>
                                          Setting RX Rate: 200.000000
                                          Msps...<br>
                                          Actual RX Rate: 200.000000
                                          Msps...<br>
                                          <br>
                                          Setting RX Freq: 800.000000
                                          MHz...<br>
                                          Setting RX LO Offset: 0.000000
                                          MHz...<br>
                                          Actual RX Freq: 800.000000
                                          MHz...<br>
                                          <br>
                                          Setting RX Gain: 5.000000
                                          dB...<br>
                                          Actual RX Gain: 5.000000 dB...<=
br>
                                          <br>
                                          Setting RX Bandwidth:
                                          200.000000 MHz...<br>
                                          Actual RX Bandwidth:
                                          200.000000 MHz...<br>
                                          <br>
                                          Waiting for "lo_locked":
                                          ++++++++++ locked.<br>
                                          <br>
                                          Press Ctrl + C to stop
                                          streaming...<br>
                                          O<br>
                                          Done!</i></b><o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">I
                                      am using a native Ubuntu, not a VM
                                      and I have the CPU governor set to
                                      "performance".<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">I
                                      have managed to patch the code
                                      that worked for me before updating
                                      the system to the new versions of
                                      Ubuntu and UHD, so I ask for more
                                      samples than I want since I have
                                      observed that the recv ()
                                      reception buffer is not always
                                      constant and it does not always
                                      acquire the maximum number of
                                      samples as I request (1996
                                      samples), at least not at the
                                      beginning. But I would like to
                                      know the cause of this so that I
                                      can fix it and why GNU Radio keeps
                                      giving me the same error.<o:p></o:p=
></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">Thanks
                                      in advance.<o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">Regards,
                                      <o:p></o:p></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"
                                      style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto">Anabel<o:p></o:p></p>
                                  </div>
                                </div>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                              </blockquote>
                              <p class=3D"MsoNormal"
                                style=3D"mso-margin-top-alt:auto;margin-b=
ottom:12.0pt">The
                                recv() call doesn't necessarily
                                guarantee that you'll get all the
                                samples you asked for in that call, as
                                far as I know. It isn't surprising that
                                there would be slight differences<br>
                                =C2=A0 in behavior across different versi=
ons
                                of UHD and OS versions in this regard.=C2=
=A0
                                You always have to be prepared to
                                receive fewer samples than you asked
                                for.<br>
                                <br>
                                If Gnu Radio applications are producing
                                overruns, that is firmly in the
                                territory of Gnu Radio, and NOT UHD.=C2=A0=
=C2=A0
                                Clearly, on your machine, UHD is able to
                                sustain 200e6 SPS.<br>
                                =C2=A0 But as you add layers of applicati=
on
                                processing, the system is more heavily
                                loaded.=C2=A0 Gnu Radio actually "does
                                things" with the samples, which means
                                the<br>
                                =C2=A0 instructions-per-sample is MUCH hi=
gher
                                than your simple rx_samples_to_file
                                test.<o:p></o:p></p>
                            </div>
                          </blockquote>
                        </div>
                      </blockquote>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                    </div>
                    <p class=3D"MsoNormal"><br>
                      <span
                        style=3D"font-size:18.0pt;font-family:Webdings;co=
lor:green">P
                      </span><span
style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
reen">Please
                        consider the environment before printing this
                        e-mail.</span>
                      <o:p></o:p></p>
                  </div>
                </blockquote>
              </div>
              <p class=3D"MsoNormal">____________________________________=
___________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">
                  usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">
                  usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
            </blockquote>
          </div>
        </div>
      </div>
      <span style=3D""><br>
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
--------------Dm95F8uvKKVdEmS0ZwyqdZbu--

--===============2223731646942340269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2223731646942340269==--
