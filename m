Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FA277CDE7
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 16:18:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07282384A94
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 10:18:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692109105; bh=duWHZEkQbu3CH2zqZz5CBX72aOdhsa6BDhOn+ld7WUc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=azpTkgSi4ez96IQNLs37OhHkRota2jCVlhigyA8A/35PAAvjuM3/mTS3/E2zXnX1+
	 o52vhP1A5n8kAPTcmWe1jBMf8QEf/7vTFJdSdZexkgbHZlQQs5e0KW8vKX5GRuFRsr
	 2R8iiQcB1mi3pv8oUdmEqemnrIJe4XdtuLeL55+DMh3gjJS0/Z1HrsrgoFCh2IShvD
	 LQrbSYKpD/rZuWwoftIxQW/QCaFAj4hk9kEk8YkgCijKyuIwi5uXbLju1kK0v5SuGy
	 eYEg2WnvDcmk9uyI2klC4DdXXlDJsnRB+/lYtPQySxnvh0NJlranzwneexwibzdvCB
	 B3Wg11baFTQpQ==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 5FFE0383BE0
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 10:18:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="dFgwYeWJ";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1692109089; x=1849789089;
  h=from:to:subject:date:mime-version;
  bh=iM3dUltBBD/zukWvAeOSXS/nlbOD1KAwAxthy6pbCsA=;
  b=dFgwYeWJCwoWPQkNVWWIzoW8oXkbYvQ2sDpQsY95UByVsisyvk8Vc/bx
   FqZ0NUs3krt/ugKQZhQotJ7jj/n3SOvCIy6tPga0ryW44KFLEF4PEU45U
   MAobMsYDhg/RkB2QelyW/XhzvRo9LPp/EUMV+iCmc69rbyrHuKVxA52o6
   w=;
X-IPAS-Result: =?us-ascii?q?A2B9AABRiNtk/0HBJQpaHQEBAQEJARIBBQUBQAmBNAYBC?=
 =?us-ascii?q?wGBL4F3AoF3tA6Bfg8BAQEBAQEBAQEIAUQEAQGLZiY2Bw4BAgQBAQEBAwIDA?=
 =?us-ascii?q?QEBAQEBAwEBBgEBAQEBAQYEAYEchS86DII3IoNfXgEMCWsmAQQbgneCFkirD?=
 =?us-ascii?q?4E0GgJlhHawGYFCAYFohhgBgUqDeYZDQ4QPi3UEiWmTQSqBCAhfgW89Ag1VC?=
 =?us-ascii?q?wtjgRWBGIEvAgIROhNKcRsDBwOBBBAvBwQyJAYJFy8lBlEHLSQJExVABINOC?=
 =?us-ascii?q?oEGPxUOEYJOYTgZS4JmCRUGOlB4EC4EFBiBDAh0HxUeOBESGQ0DCHsdAjQ8A?=
 =?us-ascii?q?wUDBBUhChUNCyEFVwNIBg5UA0QdQAMLB2Y9NRQbBgIBgT+dXwqERqRKox8HA?=
 =?us-ascii?q?4QLBaEHLheXPwOSGZgqIKd5AgQCBAUCFoFqCIIGcIM4URcCohyBMQIHCwEBA?=
 =?us-ascii?q?wmKM4EVAQE?=
IronPort-PHdr: A9a23:J8zlDBO4ahCZXyPAbjwl6nabDRdPi9zP1u491JMrhvp0f7i5+Ny6Z
 QqDv6sr1QeWFtqAo9t/yMPu+5j6XmIB5ZvT+FsjS7drEyE/tMMNggY7C9SEA0CoZNTjbig9A
 dgQHAQ9pyLzPkdaAtvxaEPPqXOu8zESBg//NQ1oLejpB4Lelcu62/6z9pHJfglEmDiwbbxwI
 Ri4sA7cqtQYjYx+J6gr1xDHuGFIe+NYxWNpIVKcgRPx7dqu8ZBg7ipdpesv+9ZPXqvmcas4S
 6dYDCk9PGAu+MLrrxjDQhCR6XYaT24bjwBHAwnB7BH9Q5fxri73vfdz1SWGIcH7S60/VDK/5
 KlpVRDokj8KOT4n/m/Klsx+gqFVoBO9qBNw2IPbep2ZNPhkc6/BYd8WW2xMVdtRWSxbBYO8a
 pMCA+QdMOZFtIn9u1oOrR2mCQKxAu3g0CJIhmXs0qM8zesuDxzN1xE9FN4KvnvasdD5OKkPW
 u2yyKnH1yjDb+lM1jf59ofHbAotruuRXbJrbcrRyE8vGhjegVqKt4PlJDOU1v8Rs2eF6upgT
 vijhHIgqwF0uzWiwNonhYbViIwP0F/E6Tl5z5gvJd2+UEN2YsCpHZRQuSyGOIZ6X8MsTWF1t
 Ssk1rAKpZ61cSoExpopyRDSZfiKfomH7B/sWuicPyt0iXFmdb6jiBi/9Uatx+vhXce3yFZHt
 jdJnsXWun0D1RHf8NWLR/9z80u72DuC1xjf5vxYLUwumqfXNYQtzqMtmpcRq0jOEDH6lUPrh
 6GMbEok4PKn6+H/b7XjoZ+TKpF7hxnlMqQrhsy/GeM4MhUSX2SD+eSzyrnj/UrhTbVUlPI2k
 q/ZsJXBJckfoqO0BxNZ3ps55xa5FTiqys8XkmMZI1JeeBOHlJTpNE/LIPDjF/uwn1OskDJzy
 /DHOL3uHInNI2DenLv9Z7pw5UxRxBAuwd1b6Z9YELAMLfLrVk/0rtPYDxs5MwKuw+bgDdVwz
 oceVniSAq+DKqzStUGH6fw1L+aWeY8Voyr9K/kj5/P1lnA2g0ESfbKp3JsMdHC3APFmI16Db
 XXwhdcBFH8GvgwlQ+Pykl2NTSZTZ2quX6I7/jw3FZqqDZ3fSYC1nLyBwCC7E4VLZmBdEFCMC
 W7kd5ifW/gSciKSOdRskjgFVbi6V48hzguiuxHmy7p7M+rU4TcUuo7k1NhwtKXvkkR46CduF
 4GAyGyXVElwn3gUXHk7wLxiugp2zVLJmfxlmOZAUMFI6ulSegM7LoLHieFmF83pHAnGe4HaZ
 kyhR4DsKCwqUtM3h5cqaltnEvGvg1iLl2qXOP5f3+iPDYEu+6bR0j74Ot1hynDu3qAslEg9X
 sZKLiutgasppFubPJLAj0jMz/XiTq8bxiOYrA++
IronPort-Data: A9a23:kPEnwaK3UBAos3VsFE+RZ5clxSXFcZb7ZxGr2PjKsXjdYENS02NTy
 GNOXzjXP/uKZ2qkKo9xYY63oE1X75eGyoI2HAEd+CA2RRqmiyZl6fd1jKvUF3nPRiEWZBs/t
 63yUvGZcIZuCCW0Si6FatDJtWN72byDWo3yAevFPjEZbQJ/QU/Nszo68wICqtAu2YHR7z+l4
 4uo+JWPYQL9glaYD0pNg069gEI31BjNkG5A1rAOTagjlEPTkXATEKUeKcmZR5cvatAJdgISb
 7+rIICRpgs1zT90Yj+WuuqTnnkxf1LnFVPmZky6+kSVqkMqSiQais7XPReHAKtdo23hc9tZk
 L2huXEsIOskFvWkpQgTb/VXOwMjHfdF8Yf2GnuEnPyh1W/AUlnFksw7WSnaPaVAkgp2KX9H9
 fodM2FcP0jaweS/hriyR/J9ndguKdKtN4Qa0p1i5WiBS615B8mSGOOUuLe03x9p7ixKNfLXe
 tAQbTdiKh3deAFOPH8dAZ8ljfy0i3zkNTZfrTp5oIJuuTSMlVUhjeWF3Nz9XffNR+t7oRqkv
 HPY7UXCGz8lGvzO1m/Qmp6rrqqV9c/hY6oPD6egs+NxjUeI7mgSEwENE1anveSizEW5Xrpix
 1c8o3Jo9vd0rR3wCIegN/GlnEO5Utcnc4I4O4UHBMulk8I4Py7x6rA4cwN8
IronPort-HdrOrdr: A9a23:Ffp+bKkaw2XZ7QQRGis+xEy/NPXpDfL63DAbv31ZSRFFG/Fws/
 re/8jzsiWVtN9xYgBDpTnuAtj7fZrjz+8T3WB8B8bcYOCEghrPEGgB1/qa/9SIIUSXndK1s5
 0QD5SWY+eAdmSS4/yKnTVRa7wbsb26GKfBv4njJyAEd21Xg3oJ1XYANu6IencWeOFUbaBXKH
 KNjvAsm9K7EU57UizDbEN1OtT+mw==
X-Talos-CUID: 9a23:j977m2GQMVOcL2AyqmJFqW5OGckdQ0be91rgEVWaD0dLYeysHAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AFRxfgg7Oaj0LQJFOt18dbPZsxoxPyOOsJm4yzak?=
 =?us-ascii?q?cqteWFBdpFQizrGWoF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,174,1684800000";
   d="scan'208,217";a="124711855"
X-IronPort-AV: E=Sophos;i="6.01,174,1684800000";
   d="scan'208,217";a="153899728"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to use Questa for simulation
Thread-Index: AdnPgytmUPTSPFhKSTaFeArQoaR2cg==
Date: Tue, 15 Aug 2023 14:17:07 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.117.32]
MIME-Version: 1.0
Message-ID: <169210908966.4399.17623193205238971994@mm2.emwd.com>
Message-ID-Hash: GNWXR75E4V3XZA6RQMINKV7IJMJQEUOI
X-Message-ID-Hash: GNWXR75E4V3XZA6RQMINKV7IJMJQEUOI
X-MailFrom: lauralee.austin@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to use Questa for simulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNWXR75E4V3XZA6RQMINKV7IJMJQEUOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Austin, LauraLee   (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Austin, LauraLee   (US)" <lauralee.austin@baesystems.com>
Content-Type: multipart/mixed; boundary="===============0474494653961462969=="

--===============0474494653961462969==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0a9791518f654bf4a039a5026d5e203dbaesystemscom_"

--_000_0a9791518f654bf4a039a5026d5e203dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Questa and Modelsim are basically the same, Questa just has more features. =
But when I define the modelsim_path to the bin directory for Questa, I get =
an error, Modelsim not found.

How do I use Questa for simulations?

--_000_0a9791518f654bf4a039a5026d5e203dbaesystemscom_
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
<p class=3D"MsoNormal">Questa and Modelsim are basically the same, Questa j=
ust has more features. But when I define the modelsim_path to the bin direc=
tory for Questa, I get an error, Modelsim not found.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I use Questa for simulations?<o:p></o:p></p>
</div>
</body>
</html>

--_000_0a9791518f654bf4a039a5026d5e203dbaesystemscom_--

--===============0474494653961462969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0474494653961462969==--
