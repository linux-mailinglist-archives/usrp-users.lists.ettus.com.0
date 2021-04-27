Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B689036CA4D
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 19:24:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 423C7383BE8
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 13:24:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=boeing.com header.i=@boeing.com header.b="dVVTF2nb";
	dkim-atps=neutral
Received: from clt-mbsout-01.mbs.boeing.net (clt-mbsout-01.mbs.boeing.net [130.76.144.162])
	by mm2.emwd.com (Postfix) with ESMTPS id D8B69383AF8
	for <usrp-users@lists.ettus.com>; Tue, 27 Apr 2021 13:23:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id 13RHNsHA015404;
	Tue, 27 Apr 2021 13:23:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
	s=boeing-s1912; t=1619544237;
	bh=uWPuVWfEkWvx/AYpniPlU2byAnIJjSvXkFuivctJ1EA=;
	h=From:To:Subject:Date:From;
	b=dVVTF2nbR+xIX0KlMCLS1CuN3Kmg3p5wRkF43lyFqalyqHM91oKFDw2wtgw/hWuME
	 W+yq2HE5Vfd+gHNYOFQMdCQsJZr4AWN7gdBVW0Xm8vL5rTwdxEQ/eZyA1x6UG1gMOq
	 nexeJznqwyQQgWmvAp1dbsde3Vnljp/ldFFhJ5vOajtIAiPqduMK8+/eQcd0IUcPod
	 wAxj99jqGZynbyU3/aGda3va/UQxlCeYfRHmW6IYtY/WWdlC4gMRYr6d66fNSD3+DD
	 gSvqFqN2GcRVd6nS6L+DMQJQNfyGrXjJ/B2C4w+F0y2EngQ3cVkr0znbdeP9CSX7g+
	 czDW7sOcDs0aQ==
Received: from XCH16-06-12.nos.boeing.com (xch16-06-12.nos.boeing.com [144.115.66.108])
	by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with ESMTPS id 13RHNpOe015371
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK)
	for <usrp-users@lists.ettus.com>; Tue, 27 Apr 2021 13:23:51 -0400
Received: from XCH16-06-10.nos.boeing.com (144.115.66.106) by
 XCH16-06-12.nos.boeing.com (144.115.66.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.2242.4; Tue, 27 Apr 2021 10:23:50 -0700
Received: from XCH16-06-10.nos.boeing.com ([fe80::da2:a12f:caaa:94ca]) by
 XCH16-06-10.nos.boeing.com ([fe80::da2:a12f:caaa:94ca%9]) with mapi id
 15.01.2242.008; Tue, 27 Apr 2021 10:23:50 -0700
From: "Hirst (US), Stephen" <stephen.hirst@boeing.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Underflows/Overflows, Filesize and a Complete N00B
Thread-Index: Adc7h8gi+FI4QxwBS06r1LEsR+igog==
Date: Tue, 27 Apr 2021 17:23:50 +0000
Message-ID: <cc4faee36fb84e0d83669253db7e636f@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [144.115.204.6]
x-tm-snts-smtp: F5AC1DC13BBB544AC438454B9F737E396A40D2110961DDE6A036C89F10E4DAD62000:8
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Message-ID-Hash: NPZ2WZNCUQYNDY2HMGMZ62KMMAWRBOSM
X-Message-ID-Hash: NPZ2WZNCUQYNDY2HMGMZ62KMMAWRBOSM
X-MailFrom: stephen.hirst@boeing.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPZ2WZNCUQYNDY2HMGMZ62KMMAWRBOSM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3755391209140481494=="

--===============3755391209140481494==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_cc4faee36fb84e0d83669253db7e636fboeingcom_"

--_000_cc4faee36fb84e0d83669253db7e636fboeingcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I appreciate you all and thank you for the great community that is this mai=
ling list! Continue on!

I, however, am a complete N00B and require assistance on some seemingly min=
or tasks that I believe you could help me out on. :)

With that being said, I find myself with the Ubuntu 20.04LTS install on a r=
ather "fast" Dell laptop (specs down below.)

-          8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache, 1.9G=
Hz,15W, vPro)

-          16GB, 2x8GB, 2666MHz DDR4 Non-ECC

-          M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid State =
Drive

I have fiddled around with an online install on the laptop but I haven't go=
tten the overflows and underflows to cooperate. And to be more specific, I =
can record a sample rate of 2Mhz and 0.2Mhz bandwidth without issue, but I =
can't get a SR or BW greater than those to work without Under/Overflows dev=
eloping. (I have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Pyth=
on 3.8.2) (grc and grc-uhd) and installed everything with "apt". The first =
line in my grc python output labels "Linux GNU C++ version 9.2.1 20200304; =
Boost_107100; UHD_3.15.0.0-2build5", USB3.0). Any ideas? I tried both the n=
um_recv_frame size stuff and setting high priority with no joy, but then ag=
ain, I am a N00b, so I may not have done that correctly as well...

Also if anyone has experience with GRC specifically, I have had success rec=
ording what I wanted to with a file with the 2MHz Sample Rate with a 0.2 MH=
z BW, but the files are pretty huge. We're talking 1GB/min... Any idea how =
to make the GRC record to a less-fine resolution so I can free up some HDD =
space?

Thanks guys!
Ya Boi Steve

--_000_cc4faee36fb84e0d83669253db7e636fboeingcom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cordia New";
	panose-1:2 11 3 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Roboto-Regular;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:1872723768;
	mso-list-type:hybrid;
	mso-list-template-ids:-1755407046 -315950238 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:13;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Roboto-Regular;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I appreciate you all and thank you for the great com=
munity that is this mailing list! Continue on!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I, however, am a complete N00B and require assistanc=
e on some seemingly minor tasks that I believe you could help me out on. :)=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With that being said, I find myself with the Ubuntu =
20.04LTS install on a rather &#8220;fast&#8221; Dell laptop (specs down bel=
ow.)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Roboto-Regular;colo=
r:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><![endif]><span style=3D"font-family:Roboto-Regular;co=
lor:#444444">8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache, 1.=
9GHz,15W, vPro)<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Roboto-Regular;colo=
r:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><![endif]><span style=3D"color:#444444">16GB, 2x8GB, 2=
666MHz DDR4 Non-ECC</span><span style=3D"font-family:Roboto-Regular;color:#=
444444"><o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-family:Roboto-Regular;colo=
r:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><![endif]><span style=3D"font-family:Roboto-Regular;co=
lor:#444444">M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid Stat=
e Drive<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Roboto-Regular;color:#444=
444"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I have fiddled around with an online install on the =
laptop but I haven&#8217;t gotten the overflows and underflows to cooperate=
. And to be more specific, I can record a sample rate of 2Mhz and 0.2Mhz ba=
ndwidth without issue, but I can&#8217;t get a
 SR or BW greater than those to work without Under/Overflows developing. (I=
 have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2) (=
grc and grc-uhd) and installed everything with &#8220;apt&#8221;. The first=
 line in my grc python output labels &#8220;Linux
 GNU C&#43;&#43; version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=
&#8221;, USB3.0). Any ideas? I tried both the num_recv_frame size stuff and=
 setting high priority with no joy, but then again, I am a N00b, so I may n=
ot have done that correctly as well&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Also if anyone has experience with GRC specifically,=
 I have had success recording what I wanted to with a file with the 2MHz Sa=
mple Rate with a 0.2 MHz BW, but the files are pretty huge. We&#8217;re tal=
king 1GB/min&#8230; Any idea how to make the GRC
 record to a less-fine resolution so I can free up some HDD space?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks guys!<o:p></o:p></p>
<p class=3D"MsoNormal">Ya Boi Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_cc4faee36fb84e0d83669253db7e636fboeingcom_--

--===============3755391209140481494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3755391209140481494==--
