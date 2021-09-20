Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A58D411061
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 09:42:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 387FF384083
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 03:42:47 -0400 (EDT)
Received: from mail2.swro.de (mail2.swro.de [88.133.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 94763384036
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 03:41:54 -0400 (EDT)
IronPort-SDR: M5HLVlSt4a0q37b+++hug8dgLWF/KlpIcDDSKQT/4J2sEBjwyfwOXWOtpZSqmHJ0ngqzJmE4Jb
 Ovqw+m4D2WB4uiNrf0uub0ERDPnPYvsRWY6CNRpm0TkTfgBe0RjYosc1861+9pk+KOsHmAvrHz
 3GF4M/R4/PcbTEKxZO5rHhgch3EK5+Py6bjIH8xL0xxn7aqVR0Os3yPYUH6rjZain0Od6DLrg8
 F76Cfkxz+2Iay9rESoRaplyeojoHFDx/FISTJJBCbgOqoU1rgkkAICEqXZ/LkgvEnBBHu6Vf9E
 ek/nsAtjwjGvnSV1n5tHDU7Y
X-IronPort-AV: E=Sophos;i="5.85,307,1624312800";
   d="scan'208,217";a="230946"
Received: from unknown (HELO mail.office.komro.net) ([10.2.38.140])
  by mail2.swro.de with ESMTP; 20 Sep 2021 09:41:53 +0200
Received: from EX01.komro.local (10.2.38.40) by EX02.komro.local (10.2.38.140)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Mon, 20 Sep
 2021 09:41:52 +0200
Received: from EX01.komro.local ([fe80::c096:6704:88ee:70e]) by
 EX01.komro.local ([fe80::c096:6704:88ee:70e%4]) with mapi id 15.01.2242.012;
 Mon, 20 Sep 2021 09:41:52 +0200
From: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Help_Failed to build UHD in Ubuntu 20.04
Thread-Index: Adet8vnsCISeAzZgTLKs/NXJvb17nA==
Date: Mon, 20 Sep 2021 07:41:52 +0000
Message-ID: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.84]
MIME-Version: 1.0
Message-ID-Hash: FRNDFERHHQ47W4XETEDYFWFAATZUTGVM
X-Message-ID-Hash: FRNDFERHHQ47W4XETEDYFWFAATZUTGVM
X-MailFrom: thangaraj@komro.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRNDFERHHQ47W4XETEDYFWFAATZUTGVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0582425068608654655=="

--===============0582425068608654655==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_78d01bc8cbdc44739d061046f13f6aa8komronet_"

--_000_78d01bc8cbdc44739d061046f13f6aa8komronet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Sir/Madam,
I am using Ettus N320 and I am trying to build and install UHD in my WSL Ub=
untu 20.04 by following the instructions from https://kb.ettus.com/Building=
_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux=
#Update_and_Install_dependencies,<https://kb.ettus.com/Building_and_Install=
ing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux%23Update_an=
d_Install_dependencies,> but unfortunately it is throwing some errors after=
 executing the command > cmake .. as shown below (while building UHD from s=
ource):

thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake ..
--
-- Configuring the python interpreter...
-- Python interpreter: /usr/bin/python2
-- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
-- Python runtime interpreter: /usr/bin/python2
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
-- Working off of feature or development branch. Updating version number.
-- Using UHD Images Directory: /usr/local/share/uhd/images
-- Build type not specified: defaulting to release.
--
-- Configuring Boost C++ Libraries...
-- Looking for optional Boost components...
-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake (found suitable version "1.71.0", minimum required is "1.53") found com=
ponents: python
-- Looking for required Boost components...
-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake (found suitable version "1.71.0", minimum required is "1.53") found com=
ponents: chrono date_time filesystem program_options regex system unit_test=
_framework serialization thread
-- Boost include directories: /usr/include
-- Boost library directories: /usr/lib/x86_64-linux-gnu
-- Boost libraries: Boost::chrono;Boost::date_time;Boost::filesystem;Boost:=
:program_options;Boost::regex;Boost::system;Boost::unit_test_framework;Boos=
t::serialization;Boost::thread
CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
  implicitly converting 'FILE' to 'STRING' type.
Call Stack (most recent call first):
  CMakeLists.txt:365 (include)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Could NOT find PythonLibs (missing: PYTHON_LIBRARIES PYTHON_INCLUDE_DIRS=
) (Required is at least version "2.7")
--
-- Python checking for Python version 2.7 or greater
-- Python checking for Python version 2.7 or greater - found
--
-- Python checking for Mako templates 0.4.2 or greater
-- Python checking for Mako templates 0.4.2 or greater - "import mako" fail=
ed
--
-- Python checking for requests 2.0 or greater
-- Python checking for requests 2.0 or greater - "import requests" failed
--
-- Python checking for numpy 1.7 or greater
-- Python checking for numpy 1.7 or greater - "import numpy" failed
--
-- Configuring LibUHD support...
--   Dependency Boost_FOUND =3D TRUE
--   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
--   Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
  Dependencies for required component LibUHD not met.
Call Stack (most recent call first):
  CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)


-- Configuring incomplete, errors occurred!
See also "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.lo=
g".
See also "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log=
".

Please help me build and install necessary tools on my host machine, so tha=
t I can connect Ettus N320 to the GNU-Radio or Serial Console in Ubuntu 20.=
04! Moreover if you have any examples GNU-Radio flowgraphs, please share me=
 some links to that which I can learn and try!

Looking forward to your response. Thank you in advance!

Best Regards,
Thangaraj


--_000_78d01bc8cbdc44739d061046f13f6aa8komronet_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello Sir/Madam,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I am using Ettus N320 and I am trying to build and =
install UHD in my WSL Ubuntu 20.04 by following the instructions from
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux%23Update_and_Install_dependencies,=
">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Update_and_Install_dependencies,</a> but unfo=
rtunately it is throwing some errors after executing the command &gt;
<b><span style=3D"background:yellow;mso-highlight:yellow">cmake ..</span></=
b> as shown below (while building UHD from source):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:silver;mso-highlight:silver">thangaraj=
@KOM1292:~/workarea/uhd/host/build$ cmake ..<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng the python interpreter...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python in=
terpreter: /usr/bin/python2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Override =
with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ru=
ntime interpreter: /usr/bin/python2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Override =
with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Working o=
ff of feature or development branch. Updating version number.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Using UHD=
 Images Directory: /usr/local/share/uhd/images<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Build typ=
e not specified: defaulting to release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng Boost C&#43;&#43; Libraries...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Looking f=
or optional Boost components...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Found Boo=
st: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found s=
uitable version &quot;1.71.0&quot;, minimum required is
 &quot;1.53&quot;) found components: python<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Looking f=
or required Boost components...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Found Boo=
st: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found s=
uitable version &quot;1.71.0&quot;, minimum required is
 &quot;1.53&quot;) found components: chrono date_time filesystem program_op=
tions regex system unit_test_framework serialization thread<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost inc=
lude directories: /usr/include<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost lib=
rary directories: /usr/lib/x86_64-linux-gnu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost lib=
raries: Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_opt=
ions;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serializa=
tion;Boost::thread<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">CMake Warnin=
g (dev) at cmake/Modules/UHDLog.cmake:68 (set):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; impli=
citly converting 'FILE' to 'STRING' type.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">Call Stack (=
most recent call first):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; CMake=
Lists.txt:365 (include)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">This warning=
 is for project developers.&nbsp; Use -Wno-dev to suppress it.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Could NOT=
 find PythonLibs (missing: PYTHON_LIBRARIES PYTHON_INCLUDE_DIRS) (Required =
is at least version &quot;2.7&quot;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Python version 2.7 or greater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Python version 2.7 or greater - found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Mako templates 0.4.2 or greater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Mako templates 0.4.2 or greater - &quot;import mako&quot; failed=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for requests 2.0 or greater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for requests 2.0 or greater - &quot;import requests&quot; failed<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for numpy 1.7 or greater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for numpy 1.7 or greater - &quot;import numpy&quot; failed<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng LibUHD support...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency Boost_FOUND =3D TRUE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">CMake Error =
at cmake/Modules/UHDComponent.cmake:59 (message):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; Depen=
dencies for required component LibUHD not met.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">Call Stack (=
most recent call first):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; CMake=
Lists.txt:430 (LIBUHD_REGISTER_COMPONENT)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng incomplete, errors occurred!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">See also &qu=
ot;/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.log&quot;=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">See also &qu=
ot;/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log&quot;.=
</span><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Please help me build and install necessary tools on=
 my host machine, so that I can connect Ettus N320 to the GNU-Radio or Seri=
al Console in Ubuntu 20.04! Moreover if you have
 any examples GNU-Radio flowgraphs, please share me some links to that whic=
h I can learn and try!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Looking forward to your response. Thank you in adva=
nce!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_78d01bc8cbdc44739d061046f13f6aa8komronet_--

--===============0582425068608654655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0582425068608654655==--
