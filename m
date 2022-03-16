Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD804DB5C4
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 17:15:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CC4438525D
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 12:15:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aePit56v";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EE410384D46
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 12:14:52 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id s16so2263527qks.4
        for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 09:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=LON1ds3nVYW6uvtzo93k0T3kkc02X1F4N5Ri2Gju1FQ=;
        b=aePit56vVN3MFt+Fhk/CFcGrIZDySuOAK++0wNNpLOESwCNB+GiQ1FioylXi+5/2GK
         Jtdah3OmO7qVxZkkcaqrHRI2Nc/yabLf6/OQtY4Pieva94veDDlK4aJwOMFcBn9LAazQ
         4tQrx7unzZe6CPTV62uuC1rgZhm7rHO2/hsAAdH+25xcoG8pRFVysTUN069Ue7sRTVik
         0s7cm4PRUcbo+NbuppT3xTpkIYh5FDiKJAmraFnNSjQ4v3H84RFtNrZtcLInDaqwqDiw
         ApOGb5Msz5uM70yyZn75lz3IhYQmfcYyYw39LalXOEKKaKjPONfe50xwSp0pCQTTAkpi
         U+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=LON1ds3nVYW6uvtzo93k0T3kkc02X1F4N5Ri2Gju1FQ=;
        b=gt4mu7FEH/B1DJ0ZSPWnjghjzRrfKvoBfZzS3bVIfGomTuyzPKGzXksygSbWPZktRt
         bUtK6y5WeROlJfhDTs87hBC9NCo99gq+8V9D5l0/pE4h/9PpaVp+XLLTMszO/Yda3RFX
         TXf73m+eFa7mtCH+2u3kte5mSExjuB0cNXxQZMXHBE2GzdFjAu0xTp+Benck1sTXZz91
         9NcqZDyG4acRzdCWfva+y6Gnz7hD6tKA8hrs/7yOqM0qGqyiJX5kJ92kI1atAe+LuZs0
         WMAVoXamLu7p6tcToNGXaQtCEt4uD8gX0j5yO1SyBNCcCne3EZwjPKhSaAU6FBgRltSp
         tcRQ==
X-Gm-Message-State: AOAM533B5bo2YPVFu3wy+79rvt0q8vokpliHxgQg/FMxbrylgH5QJGez
	tqS2RUZr7Jv+zDsz+sYrWnk0SC3yjE4=
X-Google-Smtp-Source: ABdhPJxNpxQhH5W95L4hVrgCJi46P5ss6TaVUkIY2QxtTPeuLgBvkGLOJN+v9A/+TnIrKfnfx5ZU/g==
X-Received: by 2002:a05:620a:4592:b0:67d:8ed9:8c37 with SMTP id bp18-20020a05620a459200b0067d8ed98c37mr442300qkb.150.1647447292055;
        Wed, 16 Mar 2022 09:14:52 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u17-20020ac858d1000000b002e1cdbb50besm1552245qta.78.2022.03.16.09.14.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 09:14:51 -0700 (PDT)
Message-ID: <d1c87951-81dc-3003-056d-417258958055@gmail.com>
Date: Wed, 16 Mar 2022 12:14:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <82e9fd0295694d00b53c0e59b7528855@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <82e9fd0295694d00b53c0e59b7528855@lanl.gov>
Message-ID-Hash: LKM37PWVPI72YHSUWVBHQVDD2F4FNRWY
X-Message-ID-Hash: LKM37PWVPI72YHSUWVBHQVDD2F4FNRWY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: pybombs install of rfnoc onto ubuntu 20.04 lts
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKM37PWVPI72YHSUWVBHQVDD2F4FNRWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6909861972765423166=="

This is a multi-part message in MIME format.
--===============6909861972765423166==
Content-Type: multipart/alternative;
 boundary="------------dAa0gcz3WZsrHHAtMnR2m58X"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dAa0gcz3WZsrHHAtMnR2m58X
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-16 12:05, Caffrey, Michael Paul via USRP-users wrote:
>
> Hi,
>
> I am trying to install rfnoc usiing pybombs per
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Create_the_=
development_environment_manually
>
> It seems to fail in the gnuradio portion, as shown below. I have found=20
> references to issues like gnuradio branch should be maint-3.7, but the=20
> recipes already have that, and I have found references to qt4 should=20
> be replaced by qt5 in the recipes, but they already have that fix , too=
.
>
> How should I be re - running this command ? is there cleanup I need to=20
> do first? I've just been trying things and repeating...
>
> =C2=A0 =C2=A0 =C2=A0pybombs prefix init ./rfnoc -R rfnoc -a rfnoc
>
> I see that uhd and gnuradio can be installed by apt install, but how=20
> can I do that and get rfnoc installed successfully to work with them?
>
> Finally, it appears that the uhd portion built and installed=20
> correctly, however I have this problem...
>
> /uhd_config_info
>
> ./uhd_config_info: error while loading shared libraries:=20
> libuhd.so.4.2.0: cannot open shared object file: No such file or direct=
ory
>
WHere did these get installed?

Since this is a pybombs install, you need to run setup_env.sh to get=20
various environment variables set correctly based on where your pybombs r=
un
 =C2=A0 installed things, including shared libraries.


> Thanks for any suggestions,=C2=A0Mike
>
> ...
>
> [INFO] Installing package: gnuradio
>
> [WARNING] Build dir already exists:=20
> /home/mpc/projects/gryphon/payload/rfnoc/src/gnuradio/build
>
> Configuring: (100%)=20
> [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D]
>
> [WARNING] Configuration failed. Re-trying with higher verbosity.
>
> -- Build type set to RelWithDebInfo.
>
> -- Extracting version information from git describe...
>
> -- Compiler Version: cc (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
>
> Copyright (C) 2019 Free Software Foundation, Inc.
>
> This is free software; see the source for copying conditions.=C2=A0 The=
re is NO
>
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR=20
> PURPOSE.
>
> -- Compiler Flags: /usr/bin/cc:::-O2 -g -DNDEBUG=C2=A0 -std=3Dgnu99=20
> -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized
>
> /usr/bin/c++:::-O2 -g -DNDEBUG -fvisibility=3Dhidden -Wsign-compare=20
> -Wall -Wno-uninitialized
>
> -- ADDING PERF COUNTERS
>
> -- Building Static Libraries: OFF
>
> -- Could NOT find PythonLibs (missing: PYTHON_LIBRARIES=20
> PYTHON_INCLUDE_DIRS) (Required is at least version "2.7")
>
> --=20
>
> -- Checking for module SWIG
>
> -- Found SWIG version 3.0.12.
>
> --=20
>
> -- The build system will automatically enable all components.
>
> -- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
>
> --=20
>
> -- Configuring python-support support...
>
> --=C2=A0 =C2=A0Dependency PYTHONLIBS_FOUND =3D FALSE
>
> --=C2=A0 =C2=A0Dependency SWIG_FOUND =3D TRUE
>
> --=C2=A0 =C2=A0Dependency SWIG_VERSION_CHECK =3D TRUE
>
>
This looks like you're missing Python2.7 libraries--it may be the case=20
that 20.04 doesn't installed 2.7 libraries by default and you'll have to=20
install them.



--------------dAa0gcz3WZsrHHAtMnR2m58X
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-16 12:05, Caffrey, Michael
      Paul via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:82e9fd0295694d00b53c0e59b7528855@lanl.gov">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EmailStyle17
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
        <p style=3D"margin:0in;margin-bottom:.0001pt">Hi,<o:p></o:p></p>
        <p style=3D"margin:0in;margin-bottom:.0001pt">I am trying to
          install rfnoc usiing pybombs per=C2=A0<o:p></o:p></p>
        <p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>=C2=A0</o:p></=
p>
        <p style=3D"margin:0in;margin-bottom:.0001pt"><a
href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Creat=
e_the_development_environment_manually"
            id=3D"LPlnk806763" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/Getting_=
Started_with_RFNoC_Development#Create_the_development_environment_manuall=
y</a><o:p></o:p></p>
        <p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>=C2=A0</o:p></=
p>
        <p style=3D"margin:0in;margin-bottom:.0001pt">It seems to fail in
          the gnuradio portion, as shown below. I have found references
          to issues like gnuradio branch should be maint-3.7, but the
          recipes already have that, and I have found references to qt4
          should be replaced by qt5 in the recipes, but they already
          have that fix , too.<o:p></o:p></p>
        <p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>=C2=A0</o:p></=
p>
        <p style=3D"margin:0in;margin-bottom:.0001pt">How should I be re =
-
          running this command ? is there cleanup I need to do first?
          I've just been trying things and repeating...<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0pybombs prefix init ./=
rfnoc -R rfnoc
          -a rfnoc</p>
      </div>
    </blockquote>
    <blockquote type=3D"cite"
      cite=3D"mid:82e9fd0295694d00b53c0e59b7528855@lanl.gov">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I see that uhd and gnuradio can be
          installed by apt install, but how can I do that and get rfnoc
          installed successfully to work with them?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Finally, it appears that the uhd portion
          built and installed correctly, however I have this problem...<o=
:p></o:p></p>
        <p class=3D"MsoNormal">/uhd_config_info=C2=A0<o:p></o:p></p>
        <p class=3D"MsoNormal">./uhd_config_info: error while loading
          shared libraries: libuhd.so.4.2.0: cannot open shared object
          file: No such file or directory</p>
      </div>
    </blockquote>
    WHere did these get installed?=C2=A0=C2=A0 <br>
    <br>
    Since this is a pybombs install, you need to run setup_env.sh to get
    various environment variables set correctly based on where your
    pybombs run<br>
    =C2=A0 installed things, including shared libraries.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:82e9fd0295694d00b53c0e59b7528855@lanl.gov">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for any suggestions,=C2=A0Mike<o:p>=
</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p style=3D"margin:0in;margin-bottom:.0001pt">...<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] Installing package: gnuradio<o:p></=
o:p></p>
        <p class=3D"MsoNormal">[WARNING] Build dir already exists:
          /home/mpc/projects/gryphon/payload/rfnoc/src/gnuradio/build<o:p=
></o:p></p>
        <p class=3D"MsoNormal">Configuring: (100%)
[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] Configuration failed. Re-trying
          with higher verbosity.<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Build type set to RelWithDebInfo.<o:p><=
/o:p></p>
        <p class=3D"MsoNormal">-- Extracting version information from git
          describe...<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Compiler Version: cc (Ubuntu
          9.4.0-1ubuntu1~20.04) 9.4.0<o:p></o:p></p>
        <p class=3D"MsoNormal">Copyright (C) 2019 Free Software
          Foundation, Inc.<o:p></o:p></p>
        <p class=3D"MsoNormal">This is free software; see the source for
          copying conditions.=C2=A0 There is NO<o:p></o:p></p>
        <p class=3D"MsoNormal">warranty; not even for MERCHANTABILITY or
          FITNESS FOR A PARTICULAR PURPOSE.<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Compiler Flags: /usr/bin/cc:::-O2 -g
          -DNDEBUG=C2=A0 -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compar=
e -Wall
          -Wno-uninitialized<o:p></o:p></p>
        <p class=3D"MsoNormal">/usr/bin/c++:::-O2 -g -DNDEBUG=C2=A0
          -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized<o=
:p></o:p></p>
        <p class=3D"MsoNormal">-- ADDING PERF COUNTERS<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Building Static Libraries: OFF<o:p></o:=
p></p>
        <p class=3D"MsoNormal">-- Could NOT find PythonLibs (missing:
          PYTHON_LIBRARIES PYTHON_INCLUDE_DIRS) (Required is at least
          version "2.7")<o:p></o:p></p>
        <p class=3D"MsoNormal">--=C2=A0<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Checking for module SWIG<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Found SWIG version 3.0.12.<o:p></o:p></=
p>
        <p class=3D"MsoNormal">--=C2=A0<o:p></o:p></p>
        <p class=3D"MsoNormal">-- The build system will automatically
          enable all components.<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Use -DENABLE_DEFAULT=3DOFF to disable
          components by default.<o:p></o:p></p>
        <p class=3D"MsoNormal">--=C2=A0<o:p></o:p></p>
        <p class=3D"MsoNormal">-- Configuring python-support support...<o=
:p></o:p></p>
        <p class=3D"MsoNormal">--=C2=A0 =C2=A0Dependency PYTHONLIBS_FOUND=
 =3D FALSE<o:p></o:p></p>
        <p class=3D"MsoNormal">--=C2=A0 =C2=A0Dependency SWIG_FOUND =3D T=
RUE<o:p></o:p></p>
        <p class=3D"MsoNormal">--=C2=A0 =C2=A0Dependency SWIG_VERSION_CHE=
CK =3D TRUE<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
    </blockquote>
    This looks like you're missing Python2.7 libraries--it may be the
    case that 20.04 doesn't installed 2.7 libraries by default and
    you'll have to install them.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------dAa0gcz3WZsrHHAtMnR2m58X--

--===============6909861972765423166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6909861972765423166==--
