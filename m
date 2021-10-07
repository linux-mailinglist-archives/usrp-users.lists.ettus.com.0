Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F83425B89
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 21:28:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51976381346
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 15:28:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cf8hBhod";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 3AFAC384528
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 15:27:14 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id r17so2003991qtx.10
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 12:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=dM9NjulFKywDKGcM4iLCS/Mj9JbcdOHtqJJg88rQf9g=;
        b=Cf8hBhodc5PlzAzuhKcB48XfK2Q4Xq8R/5v2mGZXZfQDy870gy3yU7HzHKLQSbKc88
         1lo/j3LvLVom82agiGpAXErG18gC4GvSIxtSiDbOmqSqpFLwkv1MY8VS6C8qFTktTTyz
         VyPxkUQw7uZwwc5tu7FspQSx6qjDouG2H+C+kdenVG2/mKn3eXr4k+m8/DiXvsbl2Jmu
         dRcHRKfmoAIxyf9IfN58KrBtOTk1pYkD1tHwTd8P9YhkagOyOPyQAg+igAWXV2wvppMx
         +5b2Ru8IkPtCZ160BZbQUGR1uZQorAcczDI4EGTgpsTEn3+wg0wcBKV7ptblg1U/pVOi
         Z5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=dM9NjulFKywDKGcM4iLCS/Mj9JbcdOHtqJJg88rQf9g=;
        b=ambAfcWjCtsu4edcrKD04dJjoxTR5NYTlBaEiwYFSb6RFuZYmWJ3WNHeRQC0gXvNfl
         Vp7FkAUFY7FaZwch48/okBmgyxpvDERsYmXzwTXI9rx5QTL2xafDuQmhefIQkTZTD/Z7
         i3AueR1BdYl+9wwwH/c5DQlY98GlSDCSkRfepiigvHASYgnTWvJCGtinbSziE6pPjBvw
         ikxYQc9Cczt1buIsKkPp8ZsCzoRJG565ZbOQg6cOnd7hXNLHKe7YJ21duASuNFgcyWft
         a9FAVGGcEWAbRa4z8liYDva8GCTAOUTBw1VWkn1kagI7IouXZ05LVVlkBPQjSU+tQLpI
         tt7g==
X-Gm-Message-State: AOAM530+OYTRunAsapFyQqUtroZPT14VPqN2AtvaVGJ16Sc/MU1pHaFY
	vE2+yaB7dPykBdamgD8B9N0/z8FEyBo=
X-Google-Smtp-Source: ABdhPJzwEZ989aLUkVg1kCDcMaXtVzhPwAHiC9VV+OVuPC8frXz/vLa2kvDC9I99RkVl/C2WQNO4Fw==
X-Received: by 2002:ac8:4585:: with SMTP id l5mr6817237qtn.93.1633634833533;
        Thu, 07 Oct 2021 12:27:13 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id k16sm299380qta.27.2021.10.07.12.27.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 12:27:13 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
 <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
 <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
Date: Thu, 7 Oct 2021 15:27:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: DMW632GQY52IGMMQTMEEBNBENAZAV2GC
X-Message-ID-Hash: DMW632GQY52IGMMQTMEEBNBENAZAV2GC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMW632GQY52IGMMQTMEEBNBENAZAV2GC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6306849498566757942=="

This is a multi-part message in MIME format.
--===============6306849498566757942==
Content-Type: multipart/alternative;
 boundary="------------C49775C75217F2C334FE41A7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C49775C75217F2C334FE41A7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:
>
> I am only connected to the USRP via ethernet to SFP+0 port.
>
> I have no problems with a Linux Host running 3.15.
>
Yup, so try:

uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310

If that *still* fails, then you probably have a much-older image on the=20
N310, and should follow the directions for updating it:

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card



> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Thursday, October 7, 2021 11:56 AM
> *To:* Jonathan Tobin <Tobin@augustusaero.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] UHD 3.15 on Windows
>
> Also, does the N310 have the 3.15 file system / MPM installed?
>
> On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler <rkossler@nd.edu=20
> <mailto:rkossler@nd.edu>> wrote:
>
>     Perhaps you are just finding the address of the N310 RJ45 Ethernet
>     port, but not the address of the SFP+ ports? These are needed for
>     UHD (at least one of them). Are you only connected via 1GB?=C2=A0 D=
o
>     you have a direct=C2=A0link between host PC and one of the SFP+ por=
ts?
>
>     Rob
>
>     On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin
>     <Tobin@augustusaero.com <mailto:Tobin@augustusaero.com>> wrote:
>
>         Hello =E2=80=93 I am attempting to install UHD 3.15 on my Windo=
ws 10
>         PC. I am able to ping and find the device, but currently
>         unable to probe. Not sure what the issue is =E2=80=93 any recom=
mendations?
>
>         Command Prompt output:
>
>         C:\Program Files\UHD3\bin>uhd_find_devices
>
>         [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>         Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>         --------------------------------------------------
>
>         -- UHD Device 0
>
>         --------------------------------------------------
>
>         Device Address:
>
>         serial: 3218B5F
>
>         claimed: False
>
>         =C2=A0=C2=A0mgmt_addr: 192.168.10.2
>
>         product: n310
>
>         reachable: No
>
>         type: n3xx
>
>         C:\Program Files\UHD3\bin>uhd_usrp_probe
>
>         [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>         Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>         [INFO] [MPMD FIND] Found MPM devices, but none are reachable
>         for a UHD session. Specify find_all to find all devices.
>
>         Error: LookupError: KeyError: No devices found for ----->
>
>         Empty Device Address
>
>         Thanks,
>
>         Jonathan
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>
>         To unsubscribe send an email to
>         usrp-users-leave@lists.ettus.com
>         <mailto:usrp-users-leave@lists.ettus.com>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------C49775C75217F2C334FE41A7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-07 2:31 p.m., Jonathan Tobi=
n
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle18
	{mso-style-type:personal-reply;
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
        <p class=3D"MsoNormal">I am only connected to the USRP via
          ethernet to SFP+0 port. =C2=A0<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I have no problems with a Linux Host
          running 3.15.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    Yup, so try:<br>
    <br>
    uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310<=
br>
    <br>
    If that *still* fails, then you probably have a much-older image on
    the N310, and should follow the directions for updating it:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card">https://kb.ettus.com/Writing=
_the_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div style=3D"border:none;border-top:solid #E1E1E1
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class=3D"MsoNormal"><b>From:</b> Rob Kossler
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rkossler@nd=
.edu">&lt;rkossler@nd.edu&gt;</a> <br>
            <b>Sent:</b> Thursday, October 7, 2021 11:56 AM<br>
            <b>To:</b> Jonathan Tobin <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:Tobin@augustusaero.com">&lt;Tobin@augustusaero.com&gt;</a>=
<br>
            <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> Re: [USRP-users] UHD 3.15 on Windows<o:p></o:=
p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">Also, does the N310 have the 3.15 file
            system / MPM installed?<o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div>
            <p class=3D"MsoNormal">On Thu, Oct 7, 2021 at 1:54 PM Rob
              Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
                moz-do-not-send=3D"true">rkossler@nd.edu</a>&gt; wrote:<o=
:p></o:p></p>
          </div>
          <blockquote style=3D"border:none;border-left:solid #CCCCCC
            1.0pt;padding:0in 0in 0in
            6.0pt;margin-left:4.8pt;margin-right:0in">
            <div>
              <div>
                <p class=3D"MsoNormal">Perhaps you are just finding the
                  address of the N310 RJ45 Ethernet port, but not the
                  address of the SFP+ ports? These are needed for UHD
                  (at least one of them). Are you only connected via
                  1GB?=C2=A0 Do you have a direct=C2=A0link between host =
PC and
                  one of the SFP+ ports?<o:p></o:p></p>
                <div>
                  <p class=3D"MsoNormal">Rob<o:p></o:p></p>
                </div>
              </div>
              <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
              <div>
                <div>
                  <p class=3D"MsoNormal">On Thu, Oct 7, 2021 at 1:37 PM
                    Jonathan Tobin &lt;<a
                      href=3D"mailto:Tobin@augustusaero.com"
                      target=3D"_blank" moz-do-not-send=3D"true">Tobin@au=
gustusaero.com</a>&gt;
                    wrote:<o:p></o:p></p>
                </div>
                <blockquote style=3D"border:none;border-left:solid #CCCCC=
C
                  1.0pt;padding:0in 0in 0in
                  6.0pt;margin-left:4.8pt;margin-right:0in">
                  <div>
                    <div>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Hello
                        =E2=80=93 I am attempting to install UHD 3.15 on =
my
                        Windows 10 PC. I am able to ping and find the
                        device, but currently unable to probe. Not sure
                        what the issue is =E2=80=93 any recommendations?<=
o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Command
                        Prompt output:<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">C:\Program
                        Files\UHD3\bin&gt;uhd_find_devices<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">[INFO]
                        [UHD] Win32; Microsoft Visual C++ version 14.2;
                        Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o=
:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">--------------------------------------------------<o:p></o:p>=
</p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">--
                        UHD Device 0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">--------------------------------------------------<o:p></o:p>=
</p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Device
                        Address:<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0=C2=A0=C2=A0
                        serial: 3218B5F<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0=C2=A0=C2=A0
                        claimed: False<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0
                        =C2=A0=C2=A0mgmt_addr: 192.168.10.2<o:p></o:p></p=
>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0=C2=A0=C2=A0
                        product: n310<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0=C2=A0=C2=A0
                        reachable: No<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0=C2=A0=C2=A0
                        type: n3xx<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">C:\Program
                        Files\UHD3\bin&gt;uhd_usrp_probe<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">[INFO]
                        [UHD] Win32; Microsoft Visual C++ version 14.2;
                        Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o=
:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">[INFO]
                        [MPMD FIND] Found MPM devices, but none are
                        reachable for a UHD session. Specify find_all to
                        find all devices.<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Error:
                        LookupError: KeyError: No devices found for
                        -----&gt;<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Empty
                        Device Address<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Thanks,<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">Jonathan<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                    </div>
                  </div>
                  <p class=3D"MsoNormal">________________________________=
_______________<br>
                    USRP-users mailing list -- <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true">
                      usrp-users@lists.ettus.com</a><br>
                    To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true">
                      usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------C49775C75217F2C334FE41A7--

--===============6306849498566757942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6306849498566757942==--
