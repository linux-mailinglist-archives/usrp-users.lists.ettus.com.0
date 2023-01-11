Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D14E5666647
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 23:33:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B99E8384072
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 17:33:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673476435; bh=tjUYYo/rXZpADpbWU2ffcB55y3oxuGFNjocqSlXVtvk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qbg9vnJR5yyUjRzirMum/dGkvAuAkafq896kte7HIW/vjIH3DtLWRjxMSaSCQxMAJ
	 9Dnve9F3yaWV5GB4Zu3l3W0cNlKzxMUPKRkSDNGjQ4SbhchV7aQKEyRcoXUY7/R87u
	 gVMFKvEmyBUFbrFqP71gl1LNRyzJ7Dub10Eo/aEPFiqXAivpQSeDq1/VxmPDA/qQ1Y
	 91j4T+klGashWHmjiECHYSy76bNvcx+qPtKMzAF6XFZjoywFL+fVYwi1V6BojISE5a
	 IT1Jp5sT3sx0+BeaYO9J7jxtvYOfYdyFYk6Bs+PGpsMOZiC1U7aa4xFTG4A0SHxRyw
	 rlN3FRYX3Lp4Q==
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 00DF0384173
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 17:33:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CDAlHTQR";
	dkim-atps=neutral
Received: by mail-vk1-f172.google.com with SMTP id v81so7944632vkv.5
        for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 14:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PikJqQsBtWNtiTNcqcE8b/GJ4v8M5rmGtjfrA7Ipio8=;
        b=CDAlHTQRAMrpgBdvLDkGbuxwnqvoamEpbycC/S+uki/EI/aEzP2NR3m7+vzzWB1eGn
         e87YXvFrlFhtyk+b2fT+BfmcGEYO7G5PZzwK199V9W03cvot/woS701uS5hc5k4CqcFf
         xUyuilqR1ZAj7BE8hQVRh07ku+pGP/rj9hKod2ODS3ThtEEs0+5ih7XXn33OEFBtVrKO
         T0l11D18Fo5In9piPlYLvXfXbCkPujZhVX6zO9ZYjEsq33thHBWdS+S7h8syusC85JUc
         jIDOOQoK3XCJQ3m5cTKc+2oC1RPkdcuY4a3tHjH+UjlZoe6yuF49cO/DbvJTGO3PFBTo
         iOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PikJqQsBtWNtiTNcqcE8b/GJ4v8M5rmGtjfrA7Ipio8=;
        b=mQ/vXbMoWcxfAtIAmsnAUFDU6zNxL6mOH3Ko3ALMylnoIjyuok+Lip9FUJJaoPXzkn
         q9RQOBL571VupjTod7lMnMWIIGoyJ3Yf6KeeC0pCNePijkKeXAjQZ5g5t9cy0zMJjjEL
         nzI+/cusbr4N/bhDAR/8kM85GNMN9n8FzpzQoOwlrqohP3QPeqarLV2izVeNJUJJwEnR
         Qx0yNYeOLcC42WBeLZONNDGqEqh+CUSChXyFX1RD+oHEXM+2XjdeL1E50oQJihAFNACb
         SwTwIZ+KzzPapotVeAkinXBCjkEWEES+wSI/WM9Cf2I7+q2oldrpB/O/20AnJjemzIlq
         iaiw==
X-Gm-Message-State: AFqh2kpsy7lI7sR4ymKiC5sSbnoGaTNDfcS0M5Wm2o6saY5tBj9/9Zc0
	bfBDQyXLVjxwD2AyKXrvk4fhXhqqBiA=
X-Google-Smtp-Source: AMrXdXuZue3FqCoqoor8ZF8RAvNnol3OflZcNZ7aOZ1N7ersV0rMiMQDnadN91G/ppRv3k+7MrvC1w==
X-Received: by 2002:a1f:a913:0:b0:3d5:cfca:11d7 with SMTP id s19-20020a1fa913000000b003d5cfca11d7mr19905562vke.2.1673476384580;
        Wed, 11 Jan 2023 14:33:04 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id t5-20020a05620a450500b006fa8299b4d5sm9935721qkp.100.2023.01.11.14.33.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 14:33:04 -0800 (PST)
Message-ID: <7915dee6-59ba-d3e4-f9c8-560391c7b216@gmail.com>
Date: Wed, 11 Jan 2023 17:33:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: IBLMIV73FEVC24MQBI3E5W6ASHETQAAA
X-Message-ID-Hash: IBLMIV73FEVC24MQBI3E5W6ASHETQAAA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Changing frequency drift across E320 radios with common clock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IBLMIV73FEVC24MQBI3E5W6ASHETQAAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1684512916966241768=="

This is a multi-part message in MIME format.
--===============1684512916966241768==
Content-Type: multipart/alternative;
 boundary="------------PQTQoLWjOeaLxMgG4bu0W4zy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PQTQoLWjOeaLxMgG4bu0W4zy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/01/2023 13:45, David Raeman wrote:
>
> Hello,
>
> I=E2=80=99m working on a project that involves phase-coherent reception=
 across=20
> multiple E320 radios. I=E2=80=99m currently operating with a common clo=
ck=20
> (provided by an Octoclock) and cabled RF connections. I understand=20
> there will be some unknown phase offset between radios which changes=20
> across power cycles and re-tunes, but I=E2=80=99m expecting that relati=
onship=20
> to be otherwise stable (neglecting temperature and other environmental=20
> effects). I=E2=80=99m trying to track down what I /think/ is a frequenc=
y=20
> difference between receive radios which changes between across RX=20
> captures, even though I do not disconnect or re-tune between (although=20
> I do use the same port for TX between these receptions).
>
If you aren't using timed streaming across radios (and I'm not sure=20
whether this is possible with E320), you're going to
 =C2=A0 have random phase relationships every time you restart your strea=
ms,=20
even though you haven't power-cycled.

What about just within a single radio?


> I disable the I/Q balance tracking for the receive channels. Beyond=20
> that, I=E2=80=99m wondering whether the AD9361 has other active trackin=
g loops=20
> or anything that happens between RX/TX turnaround which would lead to=20
> this behavior. This same experiment/codebase did not have this=20
> discrepancy when run on N200/SBX radios some time ago, which is why I=20
> suspect some mechanism in the RFIC.
>
> On a related note, I=E2=80=99m also looking at how to peek/poke the AD9=
361=20
> register interface on an MPM radio. As far as I can trace, the data=20
> flow is something like:
>
>   * Application calls into the UHD API
>   * UHD sends an RPC requests to the radio
>   * A Python service on Zynq PS handles the RPC request and calls into
>     native libusrp-periphs.so library
>   * libusrp-periphs.so library includes exported symbols from the 9361
>     C++ driver
>
> So in order to make any changes to the AD9361 driver on the E320, I=E2=80=
=99d=20
> need to cross-compile the UHD C++ libraries on the radio. Is there an=20
> easier path I=E2=80=99m overlooking, or barring that, any documentation=
 on the=20
> appropriate environment/toolchain/procedure to rebuild the libraries=20
> on the radio?
>
> Thanks,
>
> --=20
>
> David Raeman
>
> Synoptic Engineering
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------PQTQoLWjOeaLxMgG4bu0W4zy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/01/2023 13:45, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
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
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}p.MsoListParagraph, li.MsoListParagrap=
h, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m working on a project that invo=
lves
          phase-coherent reception across multiple E320 radios. I=E2=80=99=
m
          currently operating with a common clock (provided by an
          Octoclock) and cabled RF connections. I understand there will
          be some unknown phase offset between radios which changes
          across power cycles and re-tunes, but I=E2=80=99m expecting tha=
t
          relationship to be otherwise stable (neglecting temperature
          and other environmental effects). I=E2=80=99m trying to track d=
own
          what I
          <i>think</i> is a frequency difference between receive radios
          which changes between across RX captures, even though I do not
          disconnect or re-tune between (although I do use the same port
          for TX between these receptions).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    If you aren't using timed streaming across radios (and I'm not sure
    whether this is possible with E320), you're going to<br>
    =C2=A0 have random phase relationships every time you restart your
    streams, even though you haven't power-cycled.<br>
    <br>
    What about just within a single radio?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">I disable the I/Q balance tracking for the
          receive channels. Beyond that, I=E2=80=99m wondering whether th=
e
          AD9361 has other active tracking loops or anything that
          happens between RX/TX turnaround which would lead to this
          behavior. This same experiment/codebase did not have this
          discrepancy when run on N200/SBX radios some time ago, which
          is why I suspect some mechanism in the RFIC.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">On a related note, I=E2=80=99m also lookin=
g at how
          to peek/poke the AD9361 register interface on an MPM radio. As
          far as I can trace, the data flow is something like:<o:p></o:p>=
</p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l1 level1 lfo3">Application
            calls into the UHD API<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l1 level1 lfo3">UHD sends a=
n
            RPC requests to the radio<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l1 level1 lfo3">A Python
            service on Zynq PS handles the RPC request and calls into
            native libusrp-periphs.so library<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l1 level1 lfo3">libusrp-per=
iphs.so
            library includes exported symbols from the 9361 C++ driver<o:=
p></o:p></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So in order to make any changes to the
          AD9361 driver on the E320, I=E2=80=99d need to cross-compile th=
e UHD
          C++ libraries on the radio. Is there an easier path I=E2=80=99m
          overlooking, or barring that, any documentation on the
          appropriate environment/toolchain/procedure to rebuild the
          libraries on the radio?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">-- <o:p></o:p></p>
        <p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
        <p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
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
    <br>
  </body>
</html>

--------------PQTQoLWjOeaLxMgG4bu0W4zy--

--===============1684512916966241768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1684512916966241768==--
