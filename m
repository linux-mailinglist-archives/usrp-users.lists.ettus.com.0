Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA94E414A19
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 15:05:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AD55384505
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 09:05:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xyz4Lp4M";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 51945383C77
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 09:04:15 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id gs10so1801418qvb.13
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 06:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=i0/4AMetMv2qx1ZPs7P6eDrotRKkC0apF2xGO1CORmE=;
        b=Xyz4Lp4MZaDOuqVNDVjsi+IhShLfF47EZTdDgHAjrLg4lYGIIgtxrOT1Xz1HuLC/eB
         FBQd1z6mQOJ1oP12m3+W2IFun2MYM3FMNUGDKRN6r+tWtaHSOtrq8NVkYltPvtSLhj7l
         Z+H9EaCS0UJs1dd0S8l0tLyQ6WOw6lmFJJtSywniW2Em3wT0WVJr4NHmFXJJHpJjOoN1
         EbCFIeQ9hdtp6lKOUNU9wxvdiacCXa7aUR7D7BZF0x1yRUHz2Iqb/hHe63sl42n359+S
         V6tG/FBcgutHfrtWqTX/Gnxm32Fv/hwvll3X1PlnjdiRbMubUY296o1KqFA9sL9/vAeK
         dcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=i0/4AMetMv2qx1ZPs7P6eDrotRKkC0apF2xGO1CORmE=;
        b=mxgHBGZzYO6dX4QNQ8ND93y8Jx+9hmGInNd6StooM6JFcLJXzREf+jmGKhcSNan88t
         rdZRiyTycAQ2hrK/Q3ohnzQXaJAWXNVh7lhG5hJj++mGasNGC+WbUnWfTRBL0xxfZz8L
         SydTSnQvKATnm3zqvPGmta8zsTRaCuiJXgG2WuheZJSmxGSAqV1aSuMv2yS3aw+lgcy0
         gx1xLgIRCwwKRUYGXNKFPJ4nj9zMLUZrZPDGCYakUnrDsb7+Uwz4jHOWnplXc5rWF2PI
         RBjygJ0oBktcvluC3IWw7LrCBzuCGoYfUZjs9pmRoBPHe/f0JSNp/z0s72tSrTYV6+sx
         7Bzg==
X-Gm-Message-State: AOAM533Ff5yG7GYDWyqcKus/G9vJjw8bKaaR2W7ndfnv6PWCay3ttGJh
	oBG+Bnk6GTZa38TZdqi82Ew2s6XF/W/O6A==
X-Google-Smtp-Source: ABdhPJyqMpS8myTOm30PCUlXY0iNs8xhzcsGIKJ4rAXBHTqMOEWlSmSRvsPdtg/5YLmhHMMev/iJgQ==
X-Received: by 2002:a05:6214:12b4:: with SMTP id w20mr36243067qvu.1.1632315854478;
        Wed, 22 Sep 2021 06:04:14 -0700 (PDT)
Received: from [192.168.2.230] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x8sm1300643qtv.5.2021.09.22.06.04.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:04:14 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
 <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
 <ae4f4b0c23774d9a9c103b7db3287b6a@komro.net>
 <cb5a50c8-cdbc-739c-7b27-f7584cd933dc@gmail.com>
 <837c3db130174070882c9f00c3eeff47@komro.net>
 <5da73615-17fa-d419-46b6-98dca598d418@gmail.com>
 <5a185fce56a34dbb8efef32b11747009@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <a5629b97-07e1-75ed-974e-063626dbfa6b@gmail.com>
Date: Wed, 22 Sep 2021 09:04:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <5a185fce56a34dbb8efef32b11747009@komro.net>
Content-Language: en-US
Message-ID-Hash: OWDEU5LETAIMVBEQBIIZEN2GX5L7HBEG
X-Message-ID-Hash: OWDEU5LETAIMVBEQBIIZEN2GX5L7HBEG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWDEU5LETAIMVBEQBIIZEN2GX5L7HBEG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8387587114526879333=="

This is a multi-part message in MIME format.
--===============8387587114526879333==
Content-Type: multipart/alternative;
 boundary="------------040133803AE18D64019215AC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------040133803AE18D64019215AC
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-22 7:47 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Marcus,
>
> As you mentioned, I have followed the step-by-step installation guide,=20
> while building and installing UHD from source code, it throws an error=20
> which I mentioned previously!
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake ..
>
> --
>
> -- Configuring the python interpreter...
>
> -- Python interpreter: /usr/bin/python3
>
> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>
> -- Python runtime interpreter: /usr/bin/python3
>
> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
>
> -- Working off of feature or development branch. Updating version numbe=
r.
>
> -- Using UHD Images Directory: /usr/local/share/uhd/images
>
> -- Build type not specified: defaulting to release.
>
> --
>
> -- Configuring Boost C++ Libraries...
>
> -- Looking for optional Boost components...
>
> -- Found Boost:=20
> /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found=20
> suitable version "1.71.0", minimum required is "1.53") found=20
> components: python
>
> -- Looking for required Boost components...
>
> -- Found Boost:=20
> /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found=20
> suitable version "1.71.0", minimum required is "1.53") found=20
> components: chrono date_time filesystem program_options regex system=20
> unit_test_framework serialization thread
>
> -- Boost include directories: /usr/include
>
> -- Boost library directories: /usr/lib/x86_64-linux-gnu
>
> -- Boost libraries:=20
> Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options=
;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serializati=
on;Boost::thread
>
> CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
>
> implicitly converting 'FILE' to 'STRING' type.
>
> Call Stack (most recent call first):
>
> CMakeLists.txt:365 (include)
>
> This warning is for project developers.=A0 Use -Wno-dev to suppress it.
>
> --
>
> -- Python checking for Python version 2.7 or greater
>
> -- Python checking for Python version 2.7 or greater - "assert=20
> platform.python_version() >=3D '2.7' and platform.python_version() <=20
> '3.0'" failed
>
> --
>
> -- Python checking for Mako templates 0.4.2 or greater
>
> -- Python checking for Mako templates 0.4.2 or greater - found
>
> --
>
> -- Python checking for requests 2.0 or greater
>
> -- Python checking for requests 2.0 or greater - found
>
> --
>
> -- Python checking for numpy 1.7 or greater
>
> -- Python checking for numpy 1.7 or greater - found
>
> --
>
> -- Configuring LibUHD support...
>
> -- Dependency Boost_FOUND =3D TRUE
>
> -- Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
>
> -- Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
>
> CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
>
> Dependencies for required component LibUHD not met.
>
> Call Stack (most recent call first):
>
> CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)
>
> -- Configuring incomplete, errors occurred!
>
> See also=20
> "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.log".
>
> See also=20
> "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log".
>
> *_Also, tried executing below commands but got the same above output:_*
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake=20
> -DPYTHON_EXECUTABLE=3D/usr/bin/python3 ..
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake=20
> -DPYTHON_EXECUTABLE=3D/usr/bin/python3=20
> -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/bin/python3 ..
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ /usr/bin/cmake ..
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ PATH=3D/usr/bin:$PATH cmak=
e ..
>
> thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake=20
> =96DCMAKE_FIND_ROOT_PATH=3D/usr ..
>
> PFA CMake logfiles.
>
> I am stumbled with this UHD & GNU installation issue for almost a=20
> week, it would great if anyone can help me out, I would appreciate it=20
> and be very thankful!
>
> PS: I am using WSL-Windows Subsytem for Linux (running Ubuntu 20.04.3=20
> LTS)!
>
> Regards,
>
> Thangaraj
>
>
This looks like you don't have a Python2.7 install on your system--or it=20
cannot be found.=A0 During the build.=A0 What version of UHD are you tryi=
ng=20
to build?

Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing=20
RFNOC work, you can just use the pre-packaged versions of UHD and Gnu=20
Radio, and use
 =A0 apt-install to install them:

sudo apt install gnuradio
sudp apt install uhd libuhd





--------------040133803AE18D64019215AC
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-22 7:47 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5a185fce56a34dbb8efef32b11747009@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hello
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">As
            you mentioned, I have followed the step-by-step installation
            guide, while building and installing UHD from source code,
            it throws an error which I mentioned previously!<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~/workarea/uhd/host=
/build$
            cmake ..</span><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Configuring the python interpreter...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python interpreter: /usr/bin/python3<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python runtime interpreter: /usr/bin/python3<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Override with:
            -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Working off of feature or development branch. Updating
            version number.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Using UHD Images Directory: /usr/local/share/uhd/images<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Build type not specified: defaulting to release.<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Configuring Boost C++ Libraries...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Looking for optional Boost components...<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Found Boost:
            /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmak=
e
            (found suitable version "1.71.0", minimum required is
            "1.53") found components: python<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Looking for required Boost components...<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Found Boost:
            /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmak=
e
            (found suitable version "1.71.0", minimum required is
            "1.53") found components: chrono date_time filesystem
            program_options regex system unit_test_framework
            serialization thread<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Boost include directories: /usr/include<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Boost library directories: /usr/lib/x86_64-linux-gnu<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;B=
oost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization=
;Boost::thread<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">CMake
            Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            implicitly converting 'FILE' to 'STRING' type.<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Call
            Stack (most recent call first):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            CMakeLists.txt:365 (include)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">This
            warning is for project developers.=A0 Use -Wno-dev to suppres=
s
            it.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for Python version 2.7 or greater<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for Python version 2.7 or greater - "assert
            platform.python_version() &gt;=3D '2.7' and
            platform.python_version() &lt; '3.0'" failed<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for Mako templates 0.4.2 or greater<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for Mako templates 0.4.2 or greater - found<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for requests 2.0 or greater<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for requests 2.0 or greater - found<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for numpy 1.7 or greater<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Python checking for numpy 1.7 or greater - found<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Configuring LibUHD support...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--=A0=A0
            Dependency Boost_FOUND =3D TRUE<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--=A0=A0
            Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--=A0=A0
            Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">CMake
            Error at cmake/Modules/UHDComponent.cmake:59 (message):<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            Dependencies for required component LibUHD not met.<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Call
            Stack (most recent call first):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">--
            Configuring incomplete, errors occurred!<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">See
            also
            "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutp=
ut.log".<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">See
            also
            "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeErro=
r.log".<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><u><span
                style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;=
,sans-serif">Also,
                tried executing below commands but got the same above
                output:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
            cmake -DPYTHON_EXECUTABLE=3D/usr/bin/python3 ..<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
            cmake -DPYTHON_EXECUTABLE=3D/usr/bin/python3
            -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/bin/python3 ..<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
            /usr/bin/cmake ..<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
            PATH=3D/usr/bin:$PATH cmake ..</span><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
            cmake =96DCMAKE_FIND_ROOT_PATH=3D/usr ..<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">PFA
            CMake logfiles.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">I
            am stumbled with this UHD &amp; GNU installation issue for
            almost a week, it would great if anyone can help me out, I
            would appreciate it and be very thankful!<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">PS:
            I am using WSL-Windows Subsytem for Linux (running Ubuntu
            20.04.3 LTS)!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Thangaraj<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    This looks like you don't have a Python2.7 install on your
    system--or it cannot be found.=A0 During the build.=A0 What version o=
f
    UHD are you trying to build?<br>
    <br>
    Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing
    RFNOC work, you can just use the pre-packaged versions of UHD and
    Gnu Radio, and use<br>
    =A0 apt-install to install them:<br>
    <br>
    sudo apt install gnuradio<br>
    sudp apt install uhd libuhd <br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040133803AE18D64019215AC--

--===============8387587114526879333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8387587114526879333==--
