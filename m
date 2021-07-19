Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9124F3CEAAE
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 20:00:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BCC53846EC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 14:00:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="jgx4Xscf";
	dkim-atps=neutral
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 2ADDA384506
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 13:59:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1626717580; x=1784397580;
  h=from:to:subject:date:mime-version;
  bh=kKwRLY/Ol8fgQcO/ax2WgB7fhE7tItqFuCoEVGL+aTo=;
  b=jgx4XscfnGhVVie4RzCmCrwczDXg3WcaW3PEHbnIYWBTUdEUH3S/dO31
   FGZk2WgusDJV+XS751noLwhgr+uDX+fK18wdnVeFRO84004+CdnLDDSn+
   Feox9QGBB8OFXQJLthwmerhRBNgdrhE8CbFIjXMLHMvg3PZvgY0lzLqI/
   E=;
IronPort-SDR: atzp086fNQrScNRJemMOU1928RmmyMmKUAnWYvahy89EKwSwYI8fkiuKHWEJ//pnLWWcN6XhDI
 rXMDDhV8hwyw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AqTHjJBXtMaqtTbURQJJE5WNog5jV8KxsVTF92?=
 =?us-ascii?q?vMcY1JmTK2v8tzYMVDF4r011RmVB92dsKoP1LSe8/i5HzBZsNDZ6DFKWacPf?=
 =?us-ascii?q?idNsd8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKS?=
 =?us-ascii?q?V3wOgVvO+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sxndutMYjId+Jao8y?=
 =?us-ascii?q?BrEqWZMd+hK2G9kP12ekwv468uq4JJv7yFcsO89+sBdVqn3Y742RqFCAjQ8N?=
 =?us-ascii?q?GA16szrtR3dQgaK+3ARTGYYnAdWDgbc9B31UYv/vSX8tupmxSmVJtb2QqwuW?=
 =?us-ascii?q?TSj9KhkVhnlgzoaOjEj8WHXjstwjL9HoB+kuhdyzZLYbJ2TOfFjeK7WYNEUS?=
 =?us-ascii?q?ndbXstJVyJPHJ6yb5cBAeQCPOZXs4byqkAUoheiBwmhHv/jxiNWinLwwKY00?=
 =?us-ascii?q?/4hEQbD3AE4Ed4ArnXUrNHxNKcJVuC1yrHExijeYvNRwjj29YzEfR48r/2JU?=
 =?us-ascii?q?757bM3cyVMoFwzekFqQs5DlMymJ1uQMt2ib6/FgVeWpi2M8sA5+uCagxtwsi?=
 =?us-ascii?q?4nSmoIa1FXE9T5jzIkpIt24TVd2bNi5G5Rfqy+ULZF5Qt8+Q252oiY6zKULt?=
 =?us-ascii?q?5CncSUXy5kr2RrSZfyHfoWU7R/uSPudLDNliH9qe7+yhha//0i9xuDgWce50?=
 =?us-ascii?q?VlHoCRbn9fCtH0AygLe5MibR/Z740yv2i6P2hjO5u1YO0w5m6jWJ4Q8zrM0m?=
 =?us-ascii?q?Jcfq0XOEy/ulEnrkKOabEop9vay5+j5fLnrp4WQO5F3hwz4L68ggNawAf4iP?=
 =?us-ascii?q?QgLR2Wb/OO826D98kDhW7VKi+E2krHesJDHOcQXvq65DBFR0oYk8xu/ES2p0?=
 =?us-ascii?q?NQenXkCN1JIfBaKgoz1N13TOvz4C+2wj063nzhx2f/GJb3gAo7RLnfdlbfhZ?=
 =?us-ascii?q?qxx5FJbyAo21dxf5pRUBa8dIP/rR0P9qMbUAxE7PgCu3urqDNtw2pkfVG+PG?=
 =?us-ascii?q?qOZNbndsV6M5uIhOemMY4oVtS7nK/gi/PHhk2U5mUMHcam13JsXbHS4Hu9hI?=
 =?us-ascii?q?0Wfenfjmc0OHnkRvgs+V+zqlEONUTtIZ3qoQ6084TQ7BJq8DYjfXoCtnKCB3?=
 =?us-ascii?q?CCjE51LfWBGEEiMHW71d4WfRfgMcjmSL9RlkjwFTrihV5Qh2Quwuw/m17pnM?=
 =?us-ascii?q?/HU9jcEupLk0dgmr9HUwFsv7iZsStmG3nuWZ2V1hX8TATIqwL1k50d6zx3Lh?=
 =?us-ascii?q?bVjmeQdCMde/ehhVgYhKYWawvBmFsu0UQXEKISnUlGjF5+aADU1VdU3h5ckZ?=
 =?us-ascii?q?Ew1W+iZz1qLizCtCbIPi/qXBZgw6aXa93L4Kt1s0GrL0bJnhF4jFJgcfVa6j?=
 =?us-ascii?q?7JyolCAT7XClF+Uwv7CSA=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ARVcOjaiR5rZIhvYHqfu3/eYV8XBQXssji2?=
 =?us-ascii?q?hC6mlwRA09TyX+rbHKoB17726XtN9/Yh4dcLy7WJVoOEm8yXcX2+Ms1MmZMT?=
 =?us-ascii?q?UO0VHAROpfBO3Zsl7d8kbFmNK1u50NT5RD?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D/BAAxvPVg/0HBJQpagRKCc4F/gU2?=
 =?us-ascii?q?zewsBAQEBAQEBAQEIAUEEAQGHVyY4EwYBAQESAQEGAgEBAQYEAYENhWkMgjg?=
 =?us-ascii?q?ihB9eARVrJgEEG4JqgX6pVRoCZYRohSeDH4gMhkuECwGLK4RzNJ9Jn0oHA4M?=
 =?us-ascii?q?kBZ4iKxKVZgOKQoYzihOLdaA6hFACBAIEBQIWgXKBfXCECRcCnHyBQwmLAoE?=
 =?us-ascii?q?RAQE?=
X-IPAS-Result: =?us-ascii?q?A2D/BAAxvPVg/0HBJQpagRKCc4F/gU2zewsBAQEBAQEBA?=
 =?us-ascii?q?QEIAUEEAQGHVyY4EwYBAQESAQEGAgEBAQYEAYENhWkMgjgihB9eARVrJgEEG?=
 =?us-ascii?q?4JqgX6pVRoCZYRohSeDH4gMhkuECwGLK4RzNJ9Jn0oHA4MkBZ4iKxKVZgOKQ?=
 =?us-ascii?q?oYzihOLdaA6hFACBAIEBQIWgXKBfXCECRcCnHyBQwmLAoERAQE?=
X-IronPort-AV: E=Sophos;i="5.84,252,1620691200";
   d="scan'208,217";a="394098683"
IronPort-SDR: MBjZsNEpAJrryty/6TYibQ59qofKMqM5fygOC+jX2B/Bti15qiGn2w7gn2xjaw3MntgHu/QU+p
 SPYUBk6sUkVw==
X-IronPort-AV: E=Sophos;i="5.84,252,1620691200";
   d="scan'208,217";a="18604245"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Octoclock issue
Thread-Index: Add8vcQZe9NxurCXQKCnpjyXXjjdPA==
Date: Mon, 19 Jul 2021 16:49:30 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.28]
MIME-Version: 1.0
Message-ID: <162671758034.11266.14725170775006293663@mm2.emwd.com>
Message-ID-Hash: CRUKAIH4R773ZJ4OYIKSTVTINGRAJWZG
X-Message-ID-Hash: CRUKAIH4R773ZJ4OYIKSTVTINGRAJWZG
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Octoclock issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CRUKAIH4R773ZJ4OYIKSTVTINGRAJWZG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============2538888078601573188=="

--===============2538888078601573188==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b2344f2e83914003add277083188c937baesystemscom_"

--_000_b2344f2e83914003add277083188c937baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an octoclock-g with gps lock light on and all other lights functioni=
ng "normally".

I want to get nmea strings from it, but when I probe it, it tells me there =
is no gpsdo :)

See below, any thoughts?

uhd_usrp_probe --args type=3Doctoclock,addr=3D192.168.100.134
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boos=
t_105300; UHD_3.14.1.1-0-unknown
[INFO] [OCTOCLOCK] Opening an OctoClock device...
[INFO] [OCTOCLOCK] Detecting internal GPSDO...
[INFO] [GPS] No GPSDO found
[WARNING] [OCTOCLOCK] Device reports that it has a GPSDO, but we cannot com=
municate with it.
[INFO] [OCTOCLOCK] Detecting external reference...false
[INFO] [OCTOCLOCK] Detecting switch position...Prefer external
[INFO] [OCTOCLOCK] Device is using internal reference
  _____________________________________________________
/
|       Device: OctoClock Device
|     _____________________________________________________
|    /
|   |       Mboard: OctoClock
|   |   mac-addr: 00:80:2f:24:79:e3
|   |   ip-addr: 192.168.100.134
|   |   gateway: 192.168.100.1
|   |   netmask: 255.255.255.0
|   |   serial: 3183E75
|   |   revision: 4
|   |   FW Version: 3
|   |
|   |   Sensors: ext_ref_detected, gps_detected, using_ref, switch_pos



--_000_b2344f2e83914003add277083188c937baesystemscom_
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
<p class=3D"MsoNormal">I have an octoclock-g with gps lock light on and all=
 other lights functioning &#8220;normally&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to get nmea strings from it, but when I probe=
 it, it tells me there is no gpsdo
<span style=3D"font-family:Wingdings">J</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">See below, any thoughts?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">uhd_usrp_probe --args type=3Doctoclock,addr=3D192.16=
8.100.134<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20=
150623 (Red Hat 4.8.5-39); Boost_105300; UHD_3.14.1.1-0-unknown<o:p></o:p><=
/p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Opening an OctoClock device...<o:=
p></o:p></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting internal GPSDO...<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[INFO] [GPS] No GPSDO found<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [OCTOCLOCK] Device reports that it has a G=
PSDO, but we cannot communicate with it.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting external reference...fa=
lse<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting switch position...Prefe=
r external<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Device is using internal referenc=
e<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; _____________________________________________=
________<o:p></o:p></p>
<p class=3D"MsoNormal">/<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: OctoCl=
ock Device<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; __________________________=
___________________________<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp; /<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Mboard: OctoClock<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr: 00:80:2f:24:79=
:e3<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr: 192.168.100.134=
<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.100.1<o=
:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; netmask: 255.255.255.0<o=
:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 3183E75<o:p></o:=
p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; revision: 4<o:p></o:p></=
p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 3<o:p></o:p>=
</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: ext_ref_detecte=
d, gps_detected, using_ref, switch_pos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_b2344f2e83914003add277083188c937baesystemscom_--

--===============2538888078601573188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2538888078601573188==--
