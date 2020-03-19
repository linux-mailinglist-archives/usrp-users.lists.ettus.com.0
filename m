Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D4218AEE1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 10:02:55 +0100 (CET)
Received: from [::1] (port=55884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEr4o-0002Dq-Lc; Thu, 19 Mar 2020 05:02:54 -0400
Received: from mx2.ffi.no ([128.39.8.72]:42584)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Arne-Magnus-Tveita.Loken@ffi.no>)
 id 1jEr4k-00026p-Ap
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 05:02:50 -0400
Received: from mx2.ffi.no (mx2.ffi.no [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 979EE72065
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffi.no; s=b1912-1;
 t=1584608528; bh=VJ7RfwJr0RK431N/p7/Kwn6q8nsz8oKU+J+aTdSYJ2c=;
 h=From;
 b=aoJ4UoxEKZKepQ5iC5WTAEyKs9V/j+vMLxk+Bx0HM8j+4RUl1whoWQmbD1q+WvTfh
 7Sazt66n1PQgAe3e4HfghR13uBj2EqQJ5rqvJUDRcFXbOkujfRpwi+Y/v/q3MSF5z6
 XhfAdB97eyRw1H6CUpQ4zyYoT50sbTqnzbBop6LTh7Cn6xwAchOStWzqcKvexRqJP7
 mTCYKuT/EIg7XOKnp8iIJcsty2Jqt2a4z+EWYWt3Cfn/xftyp01lhzGwRiOQD4rgP/
 VrpuZ1jyizamD//tmt6vFMHdLXHy1Vr1Pr/C+cylLntj2qhsVsaXKOO2bAfVRpOtud
 Mdpq2ogOCo0EQ==
Received: from mx2.ffi.no (mx2.ffi.no [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7D1D872063
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:02:08 +0100 (CET)
Received: from mx1.ffi.no (HBU-POST1.ffi.no [193.156.99.110])
 by mx2.ffi.no (Postfix) with ESMTP
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:02:08 +0100 (CET)
Received: from HBU-POST2.ffi.no ([fe80::39ff:54c7:aafd:ce7]) by
 HBU-POST1.ffi.no ([193.156.99.110]) with mapi id 14.03.0487.000; Thu, 19 Mar
 2020 10:02:09 +0100
To: <usrp-users@lists.ettus.com>
Thread-Topic: Re: [USRP-users] rfnocmodtool Problem
Thread-Index: AdX9zQI/Ns8HZjswQ2KMd3Wvq65mUQ==
Date: Thu, 19 Mar 2020 09:02:06 +0000
Message-ID: <62A0069FDCF7384987935A4861E7EC3A576EA606@HBU-POST2.ffi.no>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.156.99.108]
x-tm-as-product-ver: SMEX-10.2.0.1135-8.000.1202-25300.005
x-tm-as-result: No--13.988600-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: [USRP-users] rfnocmodtool Problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Arne_Magnus_Tveita_L=C3=B8ken_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Arne-Magnus-Tveita.Loken@ffi.no
Content-Type: multipart/mixed; boundary="===============0105789286072342590=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0105789286072342590==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_62A0069FDCF7384987935A4861E7EC3A576EA606HBUPOST2ffino_"

--_000_62A0069FDCF7384987935A4861E7EC3A576EA606HBUPOST2ffino_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the slight typo, I meant

$ apt install python-future

Best regards,
Arne

Fra: L=F8ken, Arne Magnus Tveita
Sendt: torsdag 19. mars 2020 10:01
Til: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Emne: Re: [USRP-users] rfnocmodtool Problem

Hi Jeff,

As far as I can tell, this is not an issue with RFNoC; you simply seem to b=
e missing (at least one) Python module. If you're on Ubuntu, try the follow=
ing:

$ apt install pyhon-future

Best regards,
Arne


--_000_62A0069FDCF7384987935A4861E7EC3A576EA606HBUPOST2ffino_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EpostStil18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EpostStil19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Sorry f=
or the slight typo, I meant<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">$ apt i=
nstall python-future<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt"><i><span style=3D"font-=
size:7.5pt;font-family:&quot;Verdana&quot;,sans-serif;color:#4A6E90;mso-far=
east-language:NO-BOK">Best regards,<o:p></o:p></span></i></p>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt"><i><span style=3D"font-=
size:9.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#4A6E90;mso-far=
east-language:NO-BOK">Arne<o:p></o:p></span></i></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:NO-BOK">Fra:<=
/span></b><span style=3D"mso-fareast-language:NO-BOK"> L=F8ken, Arne Magnus=
 Tveita
<br>
<b>Sendt:</b> torsdag 19. mars 2020 10:01<br>
<b>Til:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;=
<br>
<b>Emne:</b> Re: [USRP-users] rfnocmodtool Problem<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Jeff,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">As far =
as I can tell, this is not an issue with RFNoC; you simply seem to be missi=
ng (at least one) Python module. If you&#8217;re on Ubuntu, try the followi=
ng:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">$ apt i=
nstall pyhon-future<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt"><i><span style=3D"font-=
size:7.5pt;font-family:&quot;Verdana&quot;,sans-serif;color:#4A6E90;mso-far=
east-language:NO-BOK">Best regards,<o:p></o:p></span></i></p>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt"><i><span style=3D"font-=
size:9.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#4A6E90;mso-far=
east-language:NO-BOK">Arne<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_62A0069FDCF7384987935A4861E7EC3A576EA606HBUPOST2ffino_--



--===============0105789286072342590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0105789286072342590==--


