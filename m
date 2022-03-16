Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A614DB593
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 17:06:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05D4F385167
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 12:06:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="HB8LytJO";
	dkim-atps=neutral
Received: from proofpoint8.lanl.gov (proofpoint8.lanl.gov [204.121.3.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 185B8384E5A
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 12:05:08 -0400 (EDT)
Received: from pps.filterd (proofpoint8.lanl.gov [127.0.0.1])
	by proofpoint8.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 22GFuNWa085027
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:05:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : content-type : mime-version; s=lanl;
 bh=tbTZ8Jl7BFfHnwdHUdD/El/Q8Evkmq03D3JLZTQpw4Y=;
 b=HB8LytJOvjec07DWVsQNOa8r3AT16CvLfiPjFC94WBC1xoV+qLgCYtJ3IE4j1Hx8K0oU
 WgpWSZyS1TKbOO/B+t97PLCYO8eu0Y3gjfmi7n2cgdyiZsL8fkUlfcys/PmeQKf5Cbzy
 2AnUm603YrX3gn7ZJRxS2wBbMSfH3HlkcqCkUTXSCFFtH0/eru8L/nEp1sUHvga5xmUJ
 HYNYGRSwzSfvyYfuSN0zc8Wqrgt7ZDu3oSmuIOyRioTd5Fx7/oVh11pL1Hd8N43ARVhq
 4Lob+cWNJkbyNx0KCosM8hnJYznrY6IWYBOT6wsQHdW+Oe562vrZzJgULK51aSGr8upQ Mg==
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
	by proofpoint8.lanl.gov with ESMTP id 3et64kj76h-1
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:05:07 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id B2165102E946
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:05:07 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay1.lanl.gov
Received: from EXG16-P-MBX06.win.lanl.gov (exg16-p-mbx06.win.lanl.gov [128.165.106.186])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 98E65102E95D
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:05:07 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX06.win.lanl.gov (128.165.106.186) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.24; Wed, 16 Mar 2022 10:05:07 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([::1]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::a80f:ed3d:60d:4352%7]) with mapi id
 15.01.2375.024; Wed, 16 Mar 2022 10:05:07 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: pybombs install of rfnoc onto ubuntu 20.04 lts
Thread-Index: Adg5T5o/f3J3F2JhQcmNQrggsDrcmw==
Date: Wed, 16 Mar 2022 16:05:07 +0000
Message-ID: <82e9fd0295694d00b53c0e59b7528855@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: 27Kt1bdHPVgQis2GUiRxPutmD5Gij_dE
X-Proofpoint-ORIG-GUID: 27Kt1bdHPVgQis2GUiRxPutmD5Gij_dE
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.850
 definitions=2022-03-16_06:2022-03-15,2022-03-16 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: HG3DGMTKXPFTAPXHBS6DVYOZN5NF4FW2
X-Message-ID-Hash: HG3DGMTKXPFTAPXHBS6DVYOZN5NF4FW2
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] pybombs install of rfnoc onto ubuntu 20.04 lts
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HG3DGMTKXPFTAPXHBS6DVYOZN5NF4FW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============3550510409425987673=="

--===============3550510409425987673==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_82e9fd0295694d00b53c0e59b7528855lanlgov_"

--_000_82e9fd0295694d00b53c0e59b7528855lanlgov_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to install rfnoc usiing pybombs per



https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Create_the_deve=
lopment_environment_manually



It seems to fail in the gnuradio portion, as shown below. I have found refe=
rences to issues like gnuradio branch should be maint-3.7, but the recipes =
already have that, and I have found references to qt4 should be replaced by=
 qt5 in the recipes, but they already have that fix , too.



How should I be re - running this command ? is there cleanup I need to do f=
irst? I've just been trying things and repeating...
     pybombs prefix init ./rfnoc -R rfnoc -a rfnoc

I see that uhd and gnuradio can be installed by apt install, but how can I =
do that and get rfnoc installed successfully to work with them?

Finally, it appears that the uhd portion built and installed correctly, how=
ever I have this problem...
/uhd_config_info
./uhd_config_info: error while loading shared libraries: libuhd.so.4.2.0: c=
annot open shared object file: No such file or directory

Thanks for any suggestions, Mike



...
[INFO] Installing package: gnuradio
[WARNING] Build dir already exists: /home/mpc/projects/gryphon/payload/rfno=
c/src/gnuradio/build
Configuring: (100%) [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D]
[WARNING] Configuration failed. Re-trying with higher verbosity.
-- Build type set to RelWithDebInfo.
-- Extracting version information from git describe...
-- Compiler Version: cc (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- Compiler Flags: /usr/bin/cc:::-O2 -g -DNDEBUG  -std=3Dgnu99 -fvisibility=
=3Dhidden -Wsign-compare -Wall -Wno-uninitialized
/usr/bin/c++:::-O2 -g -DNDEBUG  -fvisibility=3Dhidden -Wsign-compare -Wall =
-Wno-uninitialized
-- ADDING PERF COUNTERS
-- Building Static Libraries: OFF
-- Could NOT find PythonLibs (missing: PYTHON_LIBRARIES PYTHON_INCLUDE_DIRS=
) (Required is at least version "2.7")
--
-- Checking for module SWIG
-- Found SWIG version 3.0.12.
--
-- The build system will automatically enable all components.
-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
--
-- Configuring python-support support...
--   Dependency PYTHONLIBS_FOUND =3D FALSE
--   Dependency SWIG_FOUND =3D TRUE
--   Dependency SWIG_VERSION_CHECK =3D TRUE



--_000_82e9fd0295694d00b53c0e59b7528855lanlgov_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p style=3D"margin:0in;margin-bottom:.0001pt">Hi,<o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt">I am trying to install rfnoc =
usiing pybombs per&nbsp;<o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><a href=3D"https://kb.ettus.c=
om/Getting_Started_with_RFNoC_Development#Create_the_development_environmen=
t_manually" id=3D"LPlnk806763">https://kb.ettus.com/Getting_Started_with_RF=
NoC_Development#Create_the_development_environment_manually</a><o:p></o:p><=
/p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt">It seems to fail in the gnura=
dio portion, as shown below. I have found references to issues like gnuradi=
o branch should be maint-3.7, but the recipes already have that, and I have=
 found references to qt4 should be
 replaced by qt5 in the recipes, but they already have that fix , too.<o:p>=
</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt">How should I be re - running =
this command ? is there cleanup I need to do first? I've just been trying t=
hings and repeating...<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp; &nbsp;pybombs prefix init ./rfnoc -R r=
fnoc -a rfnoc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I see that uhd and gnuradio can be installed by apt =
install, but how can I do that and get rfnoc installed successfully to work=
 with them?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Finally, it appears that the uhd portion built and i=
nstalled correctly, however I have this problem...<o:p></o:p></p>
<p class=3D"MsoNormal">/uhd_config_info&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">./uhd_config_info: error while loading shared librar=
ies: libuhd.so.4.2.0: cannot open shared object file: No such file or direc=
tory<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for any suggestions,&nbsp;Mike<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt">...<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Installing package: gnuradio<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] Build dir already exists: /home/mpc/projec=
ts/gryphon/payload/rfnoc/src/gnuradio/build<o:p></o:p></p>
<p class=3D"MsoNormal">Configuring: (100%) [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D]<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] Configuration failed. Re-trying with highe=
r verbosity.<o:p></o:p></p>
<p class=3D"MsoNormal">-- Build type set to RelWithDebInfo.<o:p></o:p></p>
<p class=3D"MsoNormal">-- Extracting version information from git describe.=
..<o:p></o:p></p>
<p class=3D"MsoNormal">-- Compiler Version: cc (Ubuntu 9.4.0-1ubuntu1~20.04=
) 9.4.0<o:p></o:p></p>
<p class=3D"MsoNormal">Copyright (C) 2019 Free Software Foundation, Inc.<o:=
p></o:p></p>
<p class=3D"MsoNormal">This is free software; see the source for copying co=
nditions.&nbsp; There is NO<o:p></o:p></p>
<p class=3D"MsoNormal">warranty; not even for MERCHANTABILITY or FITNESS FO=
R A PARTICULAR PURPOSE.<o:p></o:p></p>
<p class=3D"MsoNormal">-- Compiler Flags: /usr/bin/cc:::-O2 -g -DNDEBUG&nbs=
p; -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitializ=
ed<o:p></o:p></p>
<p class=3D"MsoNormal">/usr/bin/c&#43;&#43;:::-O2 -g -DNDEBUG&nbsp; -fvisib=
ility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized<o:p></o:p></p>
<p class=3D"MsoNormal">-- ADDING PERF COUNTERS<o:p></o:p></p>
<p class=3D"MsoNormal">-- Building Static Libraries: OFF<o:p></o:p></p>
<p class=3D"MsoNormal">-- Could NOT find PythonLibs (missing: PYTHON_LIBRAR=
IES PYTHON_INCLUDE_DIRS) (Required is at least version &quot;2.7&quot;)<o:p=
></o:p></p>
<p class=3D"MsoNormal">--&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">-- Checking for module SWIG<o:p></o:p></p>
<p class=3D"MsoNormal">-- Found SWIG version 3.0.12.<o:p></o:p></p>
<p class=3D"MsoNormal">--&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">-- The build system will automatically enable all co=
mponents.<o:p></o:p></p>
<p class=3D"MsoNormal">-- Use -DENABLE_DEFAULT=3DOFF to disable components =
by default.<o:p></o:p></p>
<p class=3D"MsoNormal">--&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">-- Configuring python-support support...<o:p></o:p><=
/p>
<p class=3D"MsoNormal">--&nbsp; &nbsp;Dependency PYTHONLIBS_FOUND =3D FALSE=
<o:p></o:p></p>
<p class=3D"MsoNormal">--&nbsp; &nbsp;Dependency SWIG_FOUND =3D TRUE<o:p></=
o:p></p>
<p class=3D"MsoNormal">--&nbsp; &nbsp;Dependency SWIG_VERSION_CHECK =3D TRU=
E<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_82e9fd0295694d00b53c0e59b7528855lanlgov_--

--===============3550510409425987673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3550510409425987673==--
