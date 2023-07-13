Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8067521E3
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 14:53:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44261384AE1
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 08:53:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689252816; bh=FLOe+/J5AL1Z2zoXv3BcJADGtUIJyQKZqSHS/ibDmOI=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qT2YulaK1jycMFXdzLXqsCwXcK9ZC5tWwyVDvOHU+yb58eivjHtY4cXPi7AULEFAE
	 HnsB9Ccr7pbk0E9WU/wzs6rZiyUPRblANgonxjvV2UqrZ02lBKU9XmuOf2Ww9t8A+8
	 i5XLVN96NI+8XZpDOV/dXKL0BAOZZXCPOC7rdozzQ4Kt34kp75IWC/iuKkwkwduNet
	 fNf8nuaXd1cqDpSw6oeraF/IUht/d2I7naMTEk72LNMMVgdN3N9vY4bbCdB3CyKQ+n
	 4lh+AFci47KtBAzbFu8lFCIEk+1opmGOpX8Pr3G1rwhDuwcwMN5jZLWxWgmXM71Hje
	 iFtLXBmQW0l9g==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BD18384AC2
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 08:52:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="AE0v+Gai";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1689252778; x=1846932778;
  h=from:to:subject:date:mime-version;
  bh=oyNlBP5oerRDgePMIsusSBKurZ2kAmerxJ2MAbZz/2M=;
  b=AE0v+Gaiee8M9+2vjEVFDs9tjw+BCyh3yGmTZTeJCrPZxy+XFsrsxr4E
   VWWVJY0oMzZx32N+WPh1++SFocO/hXbnNRE/zVjUDmfONFPX2dbY0AaBT
   fkGrUvusihLLa2BczCt6+KyPWf/qh2XFkYDbhji0P1zqB8IToytN9sQUd
   c=;
X-IPAS-Result: =?us-ascii?q?A2DnAgAa869k/0HBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YFGgTCBdgKBd7YDDwEBAQEBAQEBAQgBRAQBAYsuJjgTAQIEAQEBAQMCAwEBA?=
 =?us-ascii?q?QEBAQMBAQYBAQEBAQEGBAGBHIUvOgyCNyKDX14BDAlrJgEEG4J3ghVHqlmBN?=
 =?us-ascii?q?BoCZYR2sBmBQoFphhcBgUiDYhWGQ0OBFI5wBI4chVYHjTJlgSdvgR6BHnoCC?=
 =?us-ascii?q?QIRZ4EICF6Bbj4CDVULC2OBHIEZgTQCAhE6FFN4GwMHA4EFEC8HBDImBgkYL?=
 =?us-ascii?q?yUGUQctJAkTFUEEg1MKgQk/FQ4RglEiAj07G02CagkXCDtTfhAxBBQdgRY2A?=
 =?us-ascii?q?0QdQAMLB2k9NRQbBgIBgj5ugQJIol2DO4EuAaQyoxoHA4QLoQkuF5c/A5IXm?=
 =?us-ascii?q?CYgp3UCBAIEBQIWgXqBfnCDOFEXAqIcgTACBwsBAQMJijOBFQEB?=
IronPort-PHdr: A9a23:d+N2lxxtmq7vWc3XCzJEylBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 hKZvqkm0QKBdL6YwsoMs/DRvaHkVD5Iyre6m1dGTqZxUQQYg94dhQ0qDZ3NI0T6KPn3c35yR
 5waBxdq8H6hLEdaBtv1aUHMrX2u9z4SHQj0ORZoKujvFYPekcW62/q89pDcbAlFhDqwaq5uI
 RurqgncqtMYipZ4JKYrzRvJrHpIe+BIym5tOFmegRXy6Nqu8ZB66yhftO4v+MBGUaXhYqQ3V
 qdYAyg8M2A0/8Lkqx/ORhaS63QGU2UWlh1IAxXZ7Bz/Q5z8vDf2uvZ71SKHO8D9ULI6Vim47
 6pzSBHmljoJNyI3/m/Ui8x/kK1UrQm7qBBjwY7Zep2ZOOZgcq7bYNgURXBBXsFUVyFZDI+xc
 5YPD/EdPeZZqYnxv0YFox2kCgmxHuPg0DlGiWHo0qYnzu8qDAXK0wI9Ed4LvnjfsdL4NKMIX
 uCo1qnH1zHDYO1I1jvn8ofIbwshoe2NXbJ2asfe0lMgGB3ejlSQsozlIy2a1uEWs2SB8+VgU
 uevhnchpgpsrTeh2t0ihZPVhoIJ1F/E7yN5zZ42KNCmR0N1YcKpHZRNuy+aN4V7X90vTn10t
 Cg6yLAIt5C1ciYExZkjxhPRZPOKfYaW7x7/V+ucIit0in1hdb+xgRu57EuuyvXkW8WpzFpGt
 CRIn9vWunwQ0xHe5NKLR/p980u5xDqDyxrf5+5aLUwuiKbXNpwszqQ+m5YNt0nIAzX4l1/sj
 KCMc0Up4u2o6+P6bbr4vpKcLIp0ih3mMqQph8y/Hfw0MggQUGif/uSxzKPj8lf5QLVMi/02i
 a3UvZTeKMgHu6K1GQlV3Zw55xmkFTipzs8YnHkcLFJZZh2HipPpN0vSL/D/CPezm1WskDF1y
 PDaJrDtH4nBImLNnbrjZ7px9kpRxQQpwd1e559YErQBL+jyWk/1utzYFBg5MwmszubjEtp9y
 5keVniLAqCHLqzeq0WH5v80I+mQZY8Vvi3wJOM/6PHwln84mUQdfbW30psSc3C0BOhpI0KcY
 Xb0hNcOCn8FvhAiQ+zylF2CTTlTam6vU64k/DE0FJqmDZvfRoCqmLGBwTy7HodOZmxfF1CMC
 mnnd5+fW/oXbCKSI9RhkiAfVbS7VYAhyQ2utBLhy7Z9MuXU/SgY5trf040/+vbJjVQv7jFuF
 OyZ0nqRVCd5gn8VXHk926U16Rhg0U2blLVjjuZDPdhS/O9SFAomKYPHied9DoahdBjGe4LDY
 Uu9XtSgRXkVR88ryvsDbg41U5WftVGJl36uCqIPnriGCdo977nA3n7ZLc9w0GfdyKQklB8tR
 c4ZZj7uvbJ26wWGX92BqE6ejav/Lcwh
IronPort-Data: A9a23:CngsGq9SofowykgWk7bADrUDMXyTJUtcMsCJ2f8bNWPcYEJGY0x3n
 2McDGzXOqmIMDSgLtggbdm19U9XvJPXz9ZrSAFrryBEQiMRo6IpJzg5wmQcnc+2BpeeJK6yx
 5xGMrEsFOhtEjmG4E3F3oHJ9RFUzbuPSqf3FNnKMyVwQR4MYCo6gHqPocZg6mJTqYb/W1rlV
 e/a+ZWFYwf6gmUsawr41orawP9RlKWq0N8nlgFmDRx7lAe2v2UYCpsZOZawIxPQKmWDNrfnL
 wpr5OjRElLxp3/BOPv8+lrIWhFirorpAOS7oiE+t55OI/R1jndaPq4TbJLwYKrM4tmDt4gZJ
 N5l7fRcReq1V0HBsLx1bvVWL81xFepW/fjpD2iyjZao/l34SyLzmNBoPE5jaOX0+s4vaY1P3
 eIRKDYIdUHS1rrvhrSyDONli98yN9XmOZhZsXZlpd3bJa9+B8ucBfybvpkGgV/chegXdRraT
 84QdCBmaBnNJRRSIUsWDro0leqzl2LjfjhD7lmSoMLb5kCKlVYpiemyaYO9ltqiRJlNpkC//
 Wn98jrHWDwUBM2C5ziG7Sf57gPItWahMG4IL5Wl7eRyxUCIy3YIIBkXTkeg5/SlllOlHdlYL
 iQpFjEG9PB0rxPtF4imGUPlyJKZgiMhtxNrO7VSwGmwJmD8uF3x6rQsJtKZVOEbiQ==
IronPort-HdrOrdr: A9a23:aUoTH6rUIbzEljzln+NOlfQaV5rHeYIsimQD101hICG9E/bo7P
 xG885rrCMc5AxhPE3I+urqBEDjexLhHPdOiOEs1NGZLW/bUUSTXeRfBODZskXd8kPFh4lgPN
 9bE5SXPLDLfDpHZfGW2njaL/8whNGD/Lu0heq29RlQZBAvY6Rt9BpiBh2FHlZqVBBLbKBSKL
 OMosJDqyG8ZHQLa8jTPBQ4dvmGr9jGj4/5bRUdARY/gTPgsRq4rLb+HwOEwBsUTyhLqI1PzV
 T4
X-Talos-CUID: =?us-ascii?q?9a23=3AEHRMJ2mxdyBUOs8OQO1d+G4BHMbXOTrNyTD+DV+?=
 =?us-ascii?q?1NTxSea2rcQaPo4Zio8U7zg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3ARjawCwyCQoxuZ3HrnZb70LISx7SaqKXyEHgLts4?=
 =?us-ascii?q?NgMTaC3ZdNQeMkRq1QZByfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,202,1684800000";
   d="scan'208,217";a="112019711"
X-IronPort-AV: E=Sophos;i="6.01,202,1684800000";
   d="scan'208,217";a="147857386"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 OOT module blocks
Thread-Index: Adm1iOiahfoSfnntRM2hXGE+N+6XEw==
Date: Thu, 13 Jul 2023 12:52:42 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.117.32]
MIME-Version: 1.0
Message-ID: <168925277883.4399.2208411538368591333@mm2.emwd.com>
Message-ID-Hash: 5BJP5SSN73CRFXRGHICYZRRAEZ3RORLY
X-Message-ID-Hash: 5BJP5SSN73CRFXRGHICYZRRAEZ3RORLY
X-MailFrom: lauralee.austin@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 OOT module blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5BJP5SSN73CRFXRGHICYZRRAEZ3RORLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Austin, LauraLee   (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Austin, LauraLee   (US)" <lauralee.austin@baesystems.com>
Content-Type: multipart/mixed; boundary="===============8877447263978858659=="

--===============8877447263978858659==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f503b4b2171a4ce0842dee5679c6a6a5baesystemscom_"

--_000_f503b4b2171a4ce0842dee5679c6a6a5baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Vivado is not installed on the machine connected to the X410, let's called =
it SYS_A. SYS_A has UHD 4.4 installed.

SYS_B has both Vivado and UHD 4.4 installed. The OOT block is created, adde=
d to x410_rfnoc_image_core.yml and build on SYS_B.

Besides the bit file, what other files need to be copied to SYS_A? Where sh=
ould those files be located?

Besides uhd_image_loader, are there any commands that need to be run for th=
e OOT block to be recognized/used?

Thanks,
Laura


--_000_f503b4b2171a4ce0842dee5679c6a6a5baesystemscom_
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
<p class=3D"MsoNormal">Vivado is not installed on the machine connected to =
the X410, let&#8217;s called it SYS_A. SYS_A has UHD 4.4 installed.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SYS_B has both Vivado and UHD 4.4 installed. The OOT=
 block is created, added to x410_rfnoc_image_core.yml and build on SYS_B.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Besides the bit file, what other files need to be co=
pied to SYS_A? Where should those files be located?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Besides uhd_image_loader, are there any commands tha=
t need to be run for the OOT block to be recognized/used?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Laura<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_f503b4b2171a4ce0842dee5679c6a6a5baesystemscom_--

--===============8877447263978858659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8877447263978858659==--
