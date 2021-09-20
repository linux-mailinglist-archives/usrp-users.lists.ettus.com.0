Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E584118CE
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 18:02:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11ECE38459B
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 12:02:54 -0400 (EDT)
Received: from mail2.swro.de (mail2.swro.de [88.133.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 891C938450D
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 12:02:06 -0400 (EDT)
IronPort-SDR: za9C0at3URhvlAl/9LHpkK8M82x0s/lt13gkc+/Th4EVlac5ZMscKdaKs6edKVKkQTMmrA25dR
 u5JPpRbPk7wiy2UOcNAKI9urIYO/2pkoAetiCDZB6guYrKrRsw5my+w1hxZVMnnQOqaxwifynK
 29dWXl3N0YvSbIjRjtiFvkG+gALBf5QTHxtVkn0CGOA+9Ntg+d6puzpY3lb/qXA8pwrwThXmFA
 m6m7scje9xRgUzESrNn7BiRGELW9NNDzzavsl/oIGmBrB6Mr+jtu0+nfyHFEounDZyPf1KV6ow
 8fWog1Q8OSMvNKaq/xfUp6AH
X-IronPort-AV: E=Sophos;i="5.85,308,1624312800";
   d="png'150?scan'150,208,217,150";a="233472"
Received: from unknown (HELO mail.office.komro.net) ([10.2.38.40])
  by mail2.swro.de with ESMTP; 20 Sep 2021 18:02:04 +0200
Received: from EX01.komro.local (10.2.38.40) by EX01.komro.local (10.2.38.40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Mon, 20 Sep
 2021 18:02:03 +0200
Received: from EX01.komro.local ([fe80::c096:6704:88ee:70e]) by
 EX01.komro.local ([fe80::c096:6704:88ee:70e%4]) with mapi id 15.01.2242.012;
 Mon, 20 Sep 2021 18:02:03 +0200
From: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
Thread-Index: Adet8vnsCISeAzZgTLKs/NXJvb17nAAGAT4AAAslGCA=
Date: Mon, 20 Sep 2021 16:02:03 +0000
Message-ID: <ae4f4b0c23774d9a9c103b7db3287b6a@komro.net>
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
 <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
In-Reply-To: <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.84]
MIME-Version: 1.0
Message-ID-Hash: C756PSUV3WMTQXJODVJFCAC5SBJJV47B
X-Message-ID-Hash: C756PSUV3WMTQXJODVJFCAC5SBJJV47B
X-MailFrom: thangaraj@komro.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C756PSUV3WMTQXJODVJFCAC5SBJJV47B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4983659865415810847=="

--===============4983659865415810847==
Content-Language: de-DE
Content-Type: multipart/related;
	boundary="_004_ae4f4b0c23774d9a9c103b7db3287b6akomronet_";
	type="multipart/alternative"

--_004_ae4f4b0c23774d9a9c103b7db3287b6akomronet_
Content-Type: multipart/alternative;
	boundary="_000_ae4f4b0c23774d9a9c103b7db3287b6akomronet_"

--_000_ae4f4b0c23774d9a9c103b7db3287b6akomronet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,
Thank you for the prompt response.

Yes, I have installed the binary UHD driver in my windows 10 and also execu=
ted the command you mentioned, I am getting the same output as yours,
[cid:image001.png@01D7AE49.9D147C10]
but when I connect the N320 with my windows host PC, it is not recognized a=
s a USB device, I already installed the erllc_uhd_winusb_driver (erllc_uhd_=
usrp1.inf) but still the Ettus N320 is not recognized, what should I do?

PS: I need to program the Ettus N320 with GNU radio and I am quite new to S=
DR!
Also, I have a windows 10 PC with WSL (Windows Subsystem for Linux)!

Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Montag, 20. September 2021 14:34
An: usrp-users@lists.ettus.com
Betreff: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04

On 2021-09-20 3:41 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
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




_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>
You shouldn't need to build UHD at all, since it will have been built with =
support for everything relevant:

uhd_config_info --enabled-components
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, =
Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320, =
E320, E300, OctoClock


--_000_ae4f4b0c23774d9a9c103b7db3287b6akomronet_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage21
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
rdana&quot;,sans-serif">Hello Marcus,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thank you for the prompt response.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Yes, I have installed the binary UHD driver in my w=
indows 10 and also executed the command you mentioned, I am getting the sam=
e output as yours,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><img width=
=3D"1112" height=3D"129" style=3D"width:11.5833in;height:1.3437in" id=3D"Gr=
afik_x0020_1" src=3D"cid:image001.png@01D7AE49.9D147C10"></span><span style=
=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">but when I connect the N320 with my windows host PC=
, it is not recognized as a USB device, I already installed the erllc_uhd_w=
inusb_driver (erllc_uhd_usrp1.inf) but still the
 Ettus N320 is not recognized, what should I do? <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">PS: I need to program the Ettus N320 with GNU radio=
 and I am quite new to SDR!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Also, I have a windows 10 PC with WSL (Windows Subs=
ystem for Linux)!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:DE">Von:</spa=
n></b><span style=3D"mso-fareast-language:DE"> Marcus D. Leech &lt;patchvon=
braun@gmail.com&gt;
<br>
<b>Gesendet:</b> Montag, 20. September 2021 14:34<br>
<b>An:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04<o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2021-09-20 3:41 a.m., Thangaraj Mukara Dhakshinam=
oorthy wrote:<span style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p>=
</o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello Sir/Madam,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I am using Ettus N320 and I am trying to build and =
install UHD in my WSL Ubuntu 20.04 by following the instructions from
</span><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Ope=
n-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux%23Update_and_Install_depend=
encies,"><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sa=
ns-serif">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Update_and_Install_dependencies,</s=
pan></a><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">
 but unfortunately it is throwing some errors after executing the command &=
gt; <b><span style=3D"background:yellow;mso-highlight:yellow">cmake ..</spa=
n></b> as shown below (while building UHD from source):</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:silver;mso-highlight:silver">thangaraj=
@KOM1292:~/workarea/uhd/host/build$ cmake ..</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng the python interpreter...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python in=
terpreter: /usr/bin/python2</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Override =
with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ru=
ntime interpreter: /usr/bin/python2</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Override =
with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Working o=
ff of feature or development branch. Updating version number.</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Using UHD=
 Images Directory: /usr/local/share/uhd/images</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Build typ=
e not specified: defaulting to release.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng Boost C&#43;&#43; Libraries...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Looking f=
or optional Boost components...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Found Boo=
st: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found s=
uitable version &quot;1.71.0&quot;, minimum required is
 &quot;1.53&quot;) found components: python</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Looking f=
or required Boost components...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Found Boo=
st: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake (found s=
uitable version &quot;1.71.0&quot;, minimum required is
 &quot;1.53&quot;) found components: chrono date_time filesystem program_op=
tions regex system unit_test_framework serialization thread</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost inc=
lude directories: /usr/include</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost lib=
rary directories: /usr/lib/x86_64-linux-gnu</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Boost lib=
raries: Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_opt=
ions;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serializa=
tion;Boost::thread</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">CMake Warnin=
g (dev) at cmake/Modules/UHDLog.cmake:68 (set):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; impli=
citly converting 'FILE' to 'STRING' type.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">Call Stack (=
most recent call first):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; CMake=
Lists.txt:365 (include)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">This warning=
 is for project developers.&nbsp; Use -Wno-dev to suppress it.</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp;</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Could NOT=
 find PythonLibs (missing: PYTHON_LIBRARIES PYTHON_INCLUDE_DIRS) (Required =
is at least version &quot;2.7&quot;)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Python version 2.7 or greater</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Python version 2.7 or greater - found</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Mako templates 0.4.2 or greater</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for Mako templates 0.4.2 or greater - &quot;import mako&quot; failed=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for requests 2.0 or greater</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for requests 2.0 or greater - &quot;import requests&quot; failed</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for numpy 1.7 or greater</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Python ch=
ecking for numpy 1.7 or greater - &quot;import numpy&quot; failed</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng LibUHD support...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency Boost_FOUND =3D TRUE</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">--&nbsp;&nbs=
p; Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">CMake Error =
at cmake/Modules/UHDComponent.cmake:59 (message):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; Depen=
dencies for required component LibUHD not met.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">Call Stack (=
most recent call first):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp; CMake=
Lists.txt:430 (LIBUHD_REGISTER_COMPONENT)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp;</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">&nbsp;</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">-- Configuri=
ng incomplete, errors occurred!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">See also &qu=
ot;/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.log&quot;=
.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:silver;mso-highlight:silver">See also &qu=
ot;/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log&quot;.=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Please help me build and install necessary tools on=
 my host machine, so that I can connect Ettus N320 to the GNU-Radio or Seri=
al Console in Ubuntu 20.04! Moreover if you have
 any examples GNU-Radio flowgraphs, please share me some links to that whic=
h I can learn and try!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Looking forward to your response. Thank you in adva=
nce!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Best Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:DE"><br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-langua=
ge:DE">You shouldn't need to build UHD at all, since it will have been buil=
t with support for everything relevant:<br>
<br>
uhd_config_info --enabled-components<br>
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, =
Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320, =
E320, E300, OctoClock<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_ae4f4b0c23774d9a9c103b7db3287b6akomronet_--

--_004_ae4f4b0c23774d9a9c103b7db3287b6akomronet_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=13897;
	creation-date="Mon, 20 Sep 2021 16:02:03 GMT";
	modification-date="Mon, 20 Sep 2021 16:02:03 GMT"
Content-ID: <image001.png@01D7AE49.9D147C10>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABFgAAACBCAIAAAB7H5kGAAAAAXNSR0IArs4c6QAANgNJREFUeF7t
nWmsXVX5/09l6sClAzOWQmmBMrZMbWWq0ibgQAyJgvm9UPSViUaNvlCbGDEa0BeamDi9UfENkWpC
DOKvCMV/maSCUGQqQymU0gKlA5QyQ/+fw3NdXb999l577eHsu8+535Wbk3PPXsOzPutZaz/PWmuv
PWHPnj2djDAyMpJ1Sb+LgAiIgAiIgAiIgAiIgAiIwOAS+NDgii7JRUAEREAEREAEREAEREAERKAc
ATlC5bgplQiIgAiIgAiIgAiIgAiIwAATkCM0wI0n0UVABERABERABERABERABMoRkCNUjptSiYAI
iIAIiIAIiIAIiIAIDDABOUID3HgSXQREQAREQAREQAREQAREoBwBOULluCmVCIiACIiACIiACIiA
CIjAABOQIzTAjSfRRUAEREAEREAEREAEREAEyhGQI1SOm1KJgAiIgAiIgAiIgAiIgAgMMAE5QgPc
eBJdBERABERABERABERABESgHIEJe/bsyUo5MjJSLlOlEgEREIEIAq9FxImPcmB8VMUUAREQAREQ
AREQATlC0gEREIHqBOp1aarLE5PDoDhO8WwHpUYxraM4IiACIiACItB3AnKE+o5YBYhAWwnEW9ht
rUHf5Yp0LQaXZGQF+w5aBYiACIiACIhA8wTkCDXPXCUOH4HBtYOHry1Uo4oE5BpVBKjkIiACIiAC
A0NAjtDANJUErYmAnJaaQCqbcURA3tE4amxVVQREQATGDwE5QuOnrcdPTeXqjJ+2Vk3HioBco7Ei
r3JFQAREQARqIxBwhCbo0LjaMA9DRu2xe+TnDIM+qQ7jlUB7RpLx2gKqtwiIgAiIwH8JmCM0IRWI
HCHpSQUC1c0dOTwV8CupCAwtgepjy9CiUcVEQAREQAQKEcARyozvO0LLlxfKVpFFQAREQAREoEkC
VzdZmMoSAREQARFoD4Grry55C/hQe+ogSURABERABESgLAGm6zRjVxae0omACIjAuCQgR2hcNrsq
LQIiIAIiIAIiIAIiIALjm0B/HaG5czuf/GRn5szxzTit9gsXdoDTv9Ak+epl9ZtG/zg3nHPtoGrP
sGEgKk4EREAEREAEREAEShPoryP01FOdKVM6J55YWrzhTIhnePLJHWxQF/Alrrxy9O+882qodZPk
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
cKTxixLtm9Af59q530nlfuQLeug20XHSOmcYhDPsXT7KyjBXQnPjr7/+esqlFWrXfGUoAiIgAiIg
AiIgAiLQPwIFTo1jIxCGNZ8HHHDAGWecgUXLY/r+lL8d9sVDGr3rAKkVwGYlN/LhQDMX7BF5Hrrg
JAYuYShjYhKNc8Ys28svvxx/DOOVE9ISqVoiYUCM2iWEOZRuueUWvCD2K/KGJT45RY1T9Thh3AUa
BVbuPUKNSciSHb4KOxhNbU477TScIl4lZK08YcIELqEGLFWxhIWEREZy05Y9e/Zw8B0qZxrCyeD2
EA6eDD/a6XMcs85ZC04P99lnHy4RiMPSEMrDoYL+GXHsYSMVvhPF2VGE4QwDErpT4yCP63XUUUf5
59r1r8f6OevUuGY4qxQREAEREAEREIGhJFDAEcIMxdTDcsWaxOLkDOsnnnjCh2KG7G233RZJClMS
G5ckfsB2JzkPqbN8QYYYrCwgPPzww64sDk0247U3VUskDIhRr4TsecMTePqDABMcRUx/7Hs2v9lT
Qy4kjs9uTEIEwLExvwu1wRfCC+KQAxMMhw23DR3gmG9rTSI7R8jWG/nRrlIjOxXDMqSmuDQ8FuXr
IZdw+UZGRtixZsrD4dr+kdZcJTcSkiHn15kjFMgwIKF/fDY8zZ3rJR/ZF8pFkyNUjptSiYAIiIAI
iIAIiAAEJjDvngUCg9JdWr58eS4vnhrHQl2xYkVuzLGKIAmrk28/w+p1HJQcrr766kERVXKKgAiI
gAiIgAiIQNsIFHhGKEb06scnxJRSJY4krELP0rafYfU6KgcREAEREAEREAEREIHhJlCnI8TxWSXe
4tIkX0lYnXb7GVavo3IQAREQAREQAREQAREYegJ1bo0beliqoAi0ioC2xrWqOSSMCIiACIiACIjA
YBGIdYQGq1aSVgREQAREQAREQAREQAREQAQCBOrcGifQIiACIiACIiACIiACIiACIjAQBOQIDUQz
SUgREAEREAEREAEREAEREIE6CcgRqpOm8hIBERABERABERABERABERgIAnKEBqKZJKQIiIAIiIAI
iIAIiIAIiECdBOQI1UlTeYmACIiACIiACIiACIiACAwEATlCA9FMElIEREAEREAEREAEREAERKBO
AnKE6qSpvERABERABERABERABERABAaCgByhgWgmCSkCIiACIiACIiACIiACIlAnATlCddJUXiIg
AiIgAiIgAiIgAiIgAgNBQI7QQDSThBQBERABERABERABERABEaiTgByhOmkqLxEQAREQAREQAREQ
AREQgYEgIEdoIJpJQoqACIiACIiACIiACIiACNRJQI5QnTSVlwiIgAiIgAiIgAiIgAiIwEAQkCM0
EM0kIUVABERABERABERABERABOokIEeoTprKSwREQAREQAREQAREQAREYCAIyBEaiGaSkCIgAiIg
AiIgAiIgAiIgAnUSkCNUJ03lJQIiIAIiIAIiIAIiIAIiMBAE5AgNRDNJSBEQAREQAREQAREQAREQ
gToJyBGqk6byGkMCu3btGsPSVbQIiIAIiIAIiIAIiMBgEZAjNFjtJWlFQAREQAREQAREQAREQARq
ICBHqAaIykIEREAEREAEREAEREAERGCwCPTXEbrkkkt+85vffOQjHxksKA1I+9WvfhU4/SuoSfLV
y+o3jf5xVs4iIAIiIAIiIAIiIAIDSqC/jtDKlSsPPvjgT3/60wNKp09i4xl+5jOf+drXvubyx5f4
f/8N3/72t6uX2yT5cFl4woRAjXppVK++chABERABERABERABERCBMIFijhD2+s9//nOz2P/0pz/F
mOz33Xff4sWL582b1ysH9rGz/sntxz/+8aGHHjoEDebXy1XQX//55z//+eCDD/7tb39zlf33v/9N
9Qk1Vj9AHqn8tvN9lfAlVx3UwK9RoKzcGvXSyE2iCCIgAiIgAiIgAiIgAiJQkUABR+izn/3sd77z
nenTp//yl7/EZF+/fv2SJUtSPRxfpt/97nevv/561qLQ1q1b//eDsHnzZvylH/7whxXr05Lkrl5W
O8Izzzzjy/b1r3/9F7/4hfuF+KyrEGqUP0y+XEHr1q2jLv/4xz+OP/54lAGVsHwqlpWgEZYNFy5X
68rVTqlEQAREQAREQAREQATGD4EJe/bsyartyMiIf4lFmzfeeONb3/oWVrv9zgKO+86/POnBji98
pIRBzy+nn376F77wBT8y8W3H1Je//GXL7fvf//7HPvYx/j322GMxsvmFZZO1a9dibU+ePBnj+wc/
+IHFxBTGB+NHMlyxYgWC2e/Yx9/4xjf4xPXiRxKuXr36Jz/5CWsXgQzdVXLDu/vpT39qctrvlItU
SLJ9+3a++GJkcUvUy4+G5B//+MftF5wKV3cXhyUXPA1kTmTuV5mlpN///veuCb70pS+dffbZbjHt
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

--_004_ae4f4b0c23774d9a9c103b7db3287b6akomronet_--

--===============4983659865415810847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4983659865415810847==--
