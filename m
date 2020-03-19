Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA4E18AEE0
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 10:01:45 +0100 (CET)
Received: from [::1] (port=54486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEr3b-0001y1-Lc; Thu, 19 Mar 2020 05:01:39 -0400
Received: from mx1.ffi.no ([128.39.8.71]:36280)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Arne-Magnus-Tveita.Loken@ffi.no>)
 id 1jEr3Y-0001rn-KJ
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 05:01:36 -0400
Received: from mx1.ffi.no (mx1.ffi.no [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 910F6136065
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffi.no; s=a1912-1;
 t=1584608454; bh=KLb2s1KB2z1/a4dyJlOvMsfJyww/iyT85zWaebwpM+g=;
 h=From;
 b=vFQurvrKiMli9iUjF+qvxXLDNv34PeEqNv5ewUa8R6w9C+1kCAYMILSwmBX4WFtjT
 a+OSGlM55oan3i+zoMu7EMluNeHzMjAXxuWMRlYPcRlqpQBXVyEjoTygbX/3WjuCf0
 5UkpXHcFqfzVuym8JIuu34BY93axP0E24bi79oZe6fyo4lIAeE5U5LiCsBysqmgBoO
 rUoYXy6mv4kTxkPeEDfrx2ShrLzYK1YEuvH/QJdoHissJJKLxVMWhAnQgd31JY8tvB
 q2+63PYcXr/zXwfEp4m0PNnxjREKs1RSJNAvoOwCq3p2DsCWfEehxpm8reSVMFct2h
 jMhhe3zFY+5Tw==
Received: from mx1.ffi.no (mx1.ffi.no [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 79B27136055
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:00:54 +0100 (CET)
Received: from mx1.ffi.no (HBU-POST1.ffi.no [193.156.99.110])
 by mx1.ffi.no (Postfix) with ESMTP
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:00:54 +0100 (CET)
Received: from HBU-POST2.ffi.no ([fe80::39ff:54c7:aafd:ce7]) by
 HBU-POST1.ffi.no ([193.156.99.110]) with mapi id 14.03.0487.000; Thu, 19 Mar
 2020 10:00:55 +0100
To: <usrp-users@lists.ettus.com>
Thread-Topic: Re: [USRP-users] rfnocmodtool Problem
Thread-Index: AdX9zILSzYmOqCx9SciFc4ftztQ9Nw==
Date: Thu, 19 Mar 2020 09:00:53 +0000
Message-ID: <62A0069FDCF7384987935A4861E7EC3A576EA5F7@HBU-POST2.ffi.no>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.156.99.108]
x-tm-as-product-ver: SMEX-10.2.0.1135-8.000.1202-25300.005
x-tm-as-result: No--12.026600-8.000000-31
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
Content-Type: multipart/mixed; boundary="===============4082067708736011853=="
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

--===============4082067708736011853==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_62A0069FDCF7384987935A4861E7EC3A576EA5F7HBUPOST2ffino_"

--_000_62A0069FDCF7384987935A4861E7EC3A576EA5F7HBUPOST2ffino_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

As far as I can tell, this is not an issue with RFNoC; you simply seem to b=
e missing (at least one) Python module. If you're on Ubuntu, try the follow=
ing:

$ apt install pyhon-future

Best regards,
Arne


--_000_62A0069FDCF7384987935A4861E7EC3A576EA5F7HBUPOST2ffino_
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
span.EpostStil17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:#1F497D;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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

--_000_62A0069FDCF7384987935A4861E7EC3A576EA5F7HBUPOST2ffino_--



--===============4082067708736011853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4082067708736011853==--


