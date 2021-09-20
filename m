Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12932411492
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 14:34:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F29F3383F8A
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 08:34:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EyollBhz";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D7970383DD8
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 08:33:50 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id c7so36382492qka.2
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 05:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=iU75X0F7STxXw4k+DYGM2zrEVhFrO1suzWbgvAK7yeU=;
        b=EyollBhzKkDriHnMk2f+tyvZMBuPwSKV4QgdTzWT0YJd0ZzlIX29K2f4+geoq0npla
         b8WlopMJYLJ4VG/2SLBbBMPV2gy+s060d1l2aV3nfKiN2OZRz9s4fcZ+Il8f1+4jY4Ql
         98LDOvFZ6KMaMt+/uoqK0WW+a0BwXrX4vSecD+cdSInBFa1ttIEMIvlYjSCLGCJXDEUp
         jDdYVxAzMxTryC2BZh1dfXUbjJNSbz2Y4S9IxZXY9fuIXZOo9JUUxgRYuvnc479ZWEJq
         375ExeyguuqvL3+ErSfLd5VhEO2KVi15nxS7nYUpBHUBV/Mjar/RTBhbyR9bB4L84o51
         8woA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=iU75X0F7STxXw4k+DYGM2zrEVhFrO1suzWbgvAK7yeU=;
        b=opIgmSCRcCtsIKdg1u39+2OcXaNXYzqZ0EG4V2MbihedBXsfz1dI/KoU/v33BuZEyn
         sMv9hFwfDOXUB1j6FzK8oUgOEfOdbrIfoOGg7mNBwwcmBW4D0+LCxpGEPeVdtw8DJ3wT
         GF69T9I+Y+JOUQcDmKzb9cyXW5tMjJK9uFgJsvs8cTPk8MHE1rIdVJ8VGpBYNe//lq0P
         GmZCg8lWUSzcswyWCU3jm0Pd6s3bQPcmx3bslKQA+IpmnjDzlaVceD2jeTGIPjadW7kU
         ih0p3C+VtEfbOd0w7qTndOfH2RwlHSA670/ZyAt1BdwT2XGMuPToR2hJRovdHUYolrPu
         z6bQ==
X-Gm-Message-State: AOAM533nxywVM/jtP9TUMmao2cnP06n00A3BZ8S1mWt4JkLR5aXNAT+P
	aDqT5XWTD2LzOes93ujcXN5NMurSbdWXMg==
X-Google-Smtp-Source: ABdhPJyM9VPIp4oSWGQdzez9mwe+dJv+O4GyS5U1SA9EBYV9YtonZrdygPF/f++y4LSB/d64tL+aYA==
X-Received: by 2002:a37:41c6:: with SMTP id o189mr15778410qka.195.1632141230016;
        Mon, 20 Sep 2021 05:33:50 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id a9sm11149119qkk.82.2021.09.20.05.33.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 05:33:49 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
Date: Mon, 20 Sep 2021 08:33:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
Content-Language: en-US
Message-ID-Hash: 6742SYE74EE556WILVTXPO6SRTCSWWHA
X-Message-ID-Hash: 6742SYE74EE556WILVTXPO6SRTCSWWHA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6742SYE74EE556WILVTXPO6SRTCSWWHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5735715368613997893=="

This is a multi-part message in MIME format.
--===============5735715368613997893==
Content-Type: multipart/alternative;
 boundary="------------1F01086CC25FBE398C6220A1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1F01086CC25FBE398C6220A1
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-20 3:41 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Sir/Madam,
>
> I am using Ettus N320 and I am trying to build and install UHD in my=20
> WSL Ubuntu 20.04 by following the instructions from=20
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolc=
hain_(UHD_and_GNU_Radio)_on_Linux#Update_and_Install_dependencies,=20
> <https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Tool=
chain_(UHD_and_GNU_Radio)_on_Linux%23Update_and_Install_dependencies,>=20
> but unfortunately it is throwing some errors after executing the=20
> command > *cmake ..* as shown below (while building UHD from source):
>
> *thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake ..*
>
> --
>
> -- Configuring the python interpreter...
>
> -- Python interpreter: /usr/bin/python2
>
> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>
> -- Python runtime interpreter: /usr/bin/python2
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
> -- Could NOT find PythonLibs (missing: PYTHON_LIBRARIES=20
> PYTHON_INCLUDE_DIRS) (Required is at least version "2.7")
>
> --
>
> -- Python checking for Python version 2.7 or greater
>
> -- Python checking for Python version 2.7 or greater - found
>
> --
>
> -- Python checking for Mako templates 0.4.2 or greater
>
> -- Python checking for Mako templates 0.4.2 or greater - "import mako"=20
> failed
>
> --
>
> -- Python checking for requests 2.0 or greater
>
> -- Python checking for requests 2.0 or greater - "import requests" fail=
ed
>
> --
>
> -- Python checking for numpy 1.7 or greater
>
> -- Python checking for numpy 1.7 or greater - "import numpy" failed
>
> --
>
> -- Configuring LibUHD support...
>
> -- Dependency Boost_FOUND =3D TRUE
>
> -- Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
>
> -- Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
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
> Please help me build and install necessary tools on my host machine,=20
> so that I can connect Ettus N320 to the GNU-Radio or Serial Console in=20
> Ubuntu 20.04! Moreover if you have any examples GNU-Radio flowgraphs,=20
> please share me some links to that which I can learn and try!
>
> Looking forward to your response. Thank you in advance!
>
> Best Regards,
>
> Thangaraj
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You shouldn't need to build UHD at all, since it will have been built=20
with support for everything relevant:

uhd_config_info --enabled-components
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,=20
Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD,=20
N300, N320, E320, E300, OctoClock



--------------1F01086CC25FBE398C6220A1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-20 3:41 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:78d01bc8cbdc44739d061046f13f6aa8@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	font-family:"Verdana",sans-serif;
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
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hello
            Sir/Madam,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">I
            am using Ettus N320 and I am trying to build and install UHD
            in my WSL Ubuntu 20.04 by following the instructions from
            <a
href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux%23Update_and_Install_dependencies=
,"
              moz-do-not-send=3D"true">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux#Update_and_Install_dependencies,</a>
            but unfortunately it is throwing some errors after executing
            the command &gt;
            <b><span style=3D"background:yellow;mso-highlight:yellow">cma=
ke
                ..</span></b> as shown below (while building UHD from
            source):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">thangaraj@KOM1292:~/workarea/uhd/host=
/build$
              cmake ..<o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Configuring the python interpreter...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python interpreter: /usr/bin/python2<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python runtime interpreter: /usr/bin/python2<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Override with:
            -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Working off of feature or development branch. Updating
            version number.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Using UHD Images Directory: /usr/local/share/uhd/images<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Build type not specified: defaulting to release.<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Configuring Boost C++ Libraries...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Looking for optional Boost components...<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Found Boost:
            /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmak=
e
            (found suitable version "1.71.0", minimum required is
            "1.53") found components: python<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Looking for required Boost components...<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Found Boost:
            /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmak=
e
            (found suitable version "1.71.0", minimum required is
            "1.53") found components: chrono date_time filesystem
            program_options regex system unit_test_framework
            serialization thread<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Boost include directories: /usr/include<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Boost library directories: /usr/lib/x86_64-linux-gnu<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;B=
oost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization=
;Boost::thread<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">CMake
            Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">=A0
            implicitly converting 'FILE' to 'STRING' type.<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">Call
            Stack (most recent call first):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">=A0
            CMakeLists.txt:365 (include)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">This
            warning is for project developers.=A0 Use -Wno-dev to suppres=
s
            it.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Could NOT find PythonLibs (missing: PYTHON_LIBRARIES
            PYTHON_INCLUDE_DIRS) (Required is at least version "2.7")<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for Python version 2.7 or greater<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for Python version 2.7 or greater - found<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for Mako templates 0.4.2 or greater<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for Mako templates 0.4.2 or greater -
            "import mako" failed<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for requests 2.0 or greater<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for requests 2.0 or greater - "import
            requests" failed<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for numpy 1.7 or greater<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Python checking for numpy 1.7 or greater - "import numpy"
            failed<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Configuring LibUHD support...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--=A0=A0
            Dependency Boost_FOUND =3D TRUE<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--=A0=A0
            Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--=A0=A0
            Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">CMake
            Error at cmake/Modules/UHDComponent.cmake:59 (message):<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">=A0
            Dependencies for required component LibUHD not met.<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">Call
            Stack (most recent call first):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">=A0
            CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">--
            Configuring incomplete, errors occurred!<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">See
            also
            "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutp=
ut.log".<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:silver;mso-highlight:silver">See
            also
            "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeErro=
r.log".</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Please
            help me build and install necessary tools on my host
            machine, so that I can connect Ettus N320 to the GNU-Radio
            or Serial Console in Ubuntu 20.04! Moreover if you have any
            examples GNU-Radio flowgraphs, please share me some links to
            that which I can learn and try!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Looking
            forward to your response. Thank you in advance!<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Best
            Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Thangaraj<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
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
    You shouldn't need to build UHD at all, since it will have been
    built with support for everything relevant:<br>
    <br>
    uhd_config_info --enabled-components<br>
    Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
    Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,
    MPMD, N300, N320, E320, E300, OctoClock<br>
    <br>
    <br>
  </body>
</html>

--------------1F01086CC25FBE398C6220A1--

--===============5735715368613997893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5735715368613997893==--
