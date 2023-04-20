Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 036016E99A0
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 18:35:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 212DE384012
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 12:35:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682008511; bh=gyKts5Bp7VeL8kbbWNwhcPpRVvpHNqFhXdqKbR8twJM=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=e/SnuJ/5SgCF1qziUY052ROEb5EJlTwgY+xkTYzsT7DCX+QYPNIBGqQE2Ct5/MKa0
	 B1mffFeGBvX1dipWhkzPjU437qVDIxC25UsHpdLtxBBlid7dKeC0YwiIBN9WAFUwQH
	 ya8ipZnQbmiQ5Yki4g/v8eQUBeeasebouKgtgV7aXgDwi+e36TwKOmM9JSwmidQQAt
	 ec7FvT0FYQkNcW/CbnlWXzHu6WfVHkSZYOWZNVQaeT+e4p1B4U2jYOf/EPxOKShxiw
	 ioCHCPlImcYhwSsUuaPvWXCV87AS8lqtmHNjD0rgQK8DL6fhGmEl4fiT3HKL6mYLhe
	 k3ZOB/zZ3t+og==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay-tx.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id CB6863818C7
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 12:34:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="gT4ch6ar";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1682008463; x=1839688463;
  h=from:to:subject:date:mime-version;
  bh=2SFafR80EJvBVSBewQOq+JXBBFUV8B6co/ZngaI6BNY=;
  b=gT4ch6arbWGIacb/956Qog/PEUFuTsGx6itCAbZnxmqEQH23w71uRjQL
   Hwjr4hCDFI+X479WQl2seqdA5xYDBt0eL9eFXrof65ST4j1QaXYpJaMTe
   gKeoUgiD4Jzbt5PATPtEOdkaJYPCql9EUluBXFeosq55A+kyzlg139DR3
   U=;
X-IPAS-Result: =?us-ascii?q?A2CNBADYaEFk/0LBJQpaHgEBCxIMQAmBOwuBK4F2AoF1t?=
 =?us-ascii?q?UgPAQEBAQEBAQEBCAFEBAEBikUmNwYOAQIEAQEBAQMCAwEBAQEBAQMBAQYBA?=
 =?us-ascii?q?QEBAQEGBAGBHIUvOgyCNyKDXl4BDAlrJgEEG4J3ghVHqyiBNBoCZYRznFGBQ?=
 =?us-ascii?q?QGBZ4VpemKDWRWHApAEBJUoaYEzdIEngTOBBAIJAhFrgRAIaIFzQAINZAsOb?=
 =?us-ascii?q?oFFgTSBZAQCFEIMGDYHNgNEHUADCwduPTUUHwYCAYJpBHCBFFG9MqJlBwODf?=
 =?us-ascii?q?qB1LheXMwOSDIYakV0goj2FGQIEAgQFAhaBeYF/cIM4URcCohqBMgIHCwEBA?=
 =?us-ascii?q?wmKMYEUAQE?=
IronPort-PHdr: A9a23:vh28khfWUn9QsrZI1ncu+D8clGM+Id7LVj580XLHo4xHfqnrxZn+J
 kuXvawr0AWUG96DsbkV2qL/iOPJZy8p2d65qncMcZhBBVcuqP49uEgeOvODElDxN/XwbiY3T
 4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6JvjvGo7Vks+7y/2+94fcbglWhDexe71/I
 AmooQnessQbhZZpJ7osxBfOvnZHdONayH9yK1mOhRj8/MCw/JBi8yRUpf0s8tNLXLv5caolU
 7FWFSwqPG8p6sLlsxnDVhaP6WAHUmoKiBpIAhPK4w/8U5zsryb1rOt92C2dPc3rUbA5XCmp4
 ql3RBP0jioMKjg0+3zVhMNtlqJWuBKvqQJizY7Ibo+bN/t+cb/Sct4BX2VNQsRRWjZdDo+gc
 YcCCfcKM+ZCr4n6olsDtRWyCxetBOPrzj9InXj23asi3+88DAzG2xcvFM8KvHvasdv5MakeW
 v2ywanSyjXMdO1Z2S3h6ITSbhAhoPWMXbZrccrWz0kiDBjKgU+Opoz+PzKVzfgNvHae7+p7T
 +6gl2knqwRorzWp28wjhZXHiJgPxVDY6SV23pw1JdugRUB1fdOpDZhduz+eOoV2Qs4vX25lt
 TonxrACpJK2cysHxZUnyhDfdvCKb4eG7xPsWeifPzp2inBoda+hihiy7UWtzPD3WMqs0FtSs
 yZJjsPAu34P2hDJ98SKTvVw8l2g1DuOzwzf9/1ILVo7mKbFMZIt3KA8m5sJvUjeHSL6hUP7h
 7KMeEo+4Oin8eHnb63jpp+bKoB7lBnzMr8rmsyjGeQ4NRUOX3SD9eS8yrLj+Ur5Ta1Mjv02l
 KnWqpXaJd8Yq6O5HwNZzpsv5wy5Dzi8ytgXhmMII0xeeBOHlIjpJ0/BIPXjDfuln1uslzJry
 +jHPr3nHJrNMmDOnKr9cbpn5UNRyhA/wc1b6p9aEL0MIfP+Vlf0tNPCDx85NwK0w/zgCNV4z
 o4eQ2WPDbSHP6PIrV+E/P4vI+iIZI8Rozb9LP4l6uX1gnAjh1AdZqmo3YALaH+mG/RmOF+Vb
 mbrgtcECWsKuBExQ/TwiFKeST5Te2qyX6Uk6z0mEI6mF5vMRpixgLyd2ye2BoBWZntcClCUC
 Hvoap6EVOkWaCKJOcJhlj0EVaO9S486zx2hqhP6y6Z6LurP4CEXqZXj1N0mr9HUwFsv7iZsS
 tmG3nuWZ2V1hX8TATIqwL1k50d6zx3LhbVjmeQdCMde/ehhVgYhKYWawvBmFsu0UQXEKISnU
 lGjF5+aADU1VdU3h5ckZEw1W+iZz1qLizCtCbIPi/qXBZgw6aXa93L4Kt1s0GrL0bJnhF4jF
 JgcfVa6j7JyolCAT7XClF+Uwv7CSA==
IronPort-Data: A9a23:njGKz6yNmEPQwLsLiFF6t+eDxCrEfRIJ4+MujC+fZmUNrF6WrkUCx
 2ZJWTiEMviLa2vyf4h0adjlox8A7JTcx9M2QVRq/lhgHilAwSbn6XR1DatS0we6dJCroJdPt
 p1GAjX4BJloCCWa/H9BC5C5xVFkz6aEW7HgP+DNPyF1VGdMRTwo4f5Zs7dRbrVA3J7oUmthh
 fuo+5eEYAP/g2YqWo4pw/vrRC1H7ayaVAww4wRWicBj5Df2i3QTBZQDEqC9R1OQrl58R7PSq
 07rldlVz0uBl/sfIorNfoXTLiXmdoXv0T2m0RK6bUQDbi9q/UTe2o5jXBYVhNw+Zz+hx7idw
 /0V3XC8pJtA0qDkwIwgvxdk/y5WG5x79uPaBGCDvePO9VPleGv0yMdMJRRjVWEY0r4f7WBm8
 /weITUWPk3b37vwxrv9QOBhndU4MMTuJ8UUvXQIITPxVK5gGs+FGvSRo4EGtNszrpkm8fL2f
 c0TZCBzKgjBZxlUPVE/Apszh/azmnT6aHtTr1f9Sa8fszWKkVcgjOWF3Nz9WNeHddhtpE+jp
 WPC/HSmLCMmE4SU8G/Qmp6rrqqV9c/hY6oPD6egs+NxjUeI7mgSEwENE1anveSizEW5Xrpix
 1c8o3Jo9vd0rR3wCIejN/GlnEO5Utcnc4I4O4UHBMulkMI4Py7x6rA4cwN8
IronPort-HdrOrdr: A9a23:nX2zPqlfl7jGN2sS399U1RoGbgnpDfLw3DAbv31ZSRFFG/Fw9v
 re58jzsCWetN9/Yh8dcLy7VZVoAkmskaKdmLNxAV76ZmnbUQiTXeNfBOnZskXd8kTFn4Y26U
 4HSdkaNDSaNzdHZKjBjDVQXOxQp+VvXZrY49v23jNGdykvQadl9gJ4AgGQHglNQhVcD5ZRLu
 v+2iMCnUvYRUgq
X-Talos-CUID: 9a23:E9pDhG3d4bWZmbLhag6rObxfPPEYfCHA6W/sL2DlM3hKQ62NQm2y0fYx
X-Talos-MUID: 9a23:eB8+RgYSWUF1peBTlTThtCxaDs5T4KWqC1BSv6c6nJGPDHkl
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.99,213,1677542400";
   d="scan'208,217";a="85153945"
X-IronPort-AV: E=Sophos;i="5.99,213,1677542400";
   d="scan'208,217";a="382187919"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: A2D bit depth vs IQ
Thread-Index: Adlzpem4Y6Iq6SSGRgq4XgTwbXwwvg==
Date: Thu, 20 Apr 2023 16:34:19 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.181]
MIME-Version: 1.0
Message-ID: <168200846413.31234.6062160993291765058@mm2.emwd.com>
Message-ID-Hash: S2OO5EHRJB2FXIGBVNOD4ROVQIDCQVNY
X-Message-ID-Hash: S2OO5EHRJB2FXIGBVNOD4ROVQIDCQVNY
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] A2D bit depth vs IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S2OO5EHRJB2FXIGBVNOD4ROVQIDCQVNY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============5279819908011887828=="

--===============5279819908011887828==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b7972273540b436d9402f6b224c69905baesystemscom_"

--_000_b7972273540b436d9402f6b224c69905baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello peeps,

Just wondering if anyone could point me to where the mapping between bits a=
nd IQ takes place.

Curious if the strategy is the same across platforms even though bit depth =
varies (b205: 12 bits, X310: 15 bits, N310: 16 bits, X410: 12 bits...).

The above info in general would be useful, what I am really looking to do i=
s spot saturation from the IQ only since I don't know of any other place wh=
ere something
like the saturation flag is passed through.

Any thought would be greatly appreciated.

Thanks,

--_000_b7972273540b436d9402f6b224c69905baesystemscom_
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
<p class=3D"MsoNormal">Hello peeps,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Just wondering if anyone could point me to where the=
 mapping between bits and IQ takes place.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Curious if the strategy is the same across platforms=
 even though bit depth varies (b205: 12 bits, X310: 15 bits, N310: 16 bits,=
 X410: 12 bits&#8230;).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The above info in general would be useful, what I am=
 really looking to do is spot saturation from the IQ only since I don&#8217=
;t know of any other place where something<o:p></o:p></p>
<p class=3D"MsoNormal">like the saturation flag is passed through.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any thought would be greatly appreciated.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
</body>
</html>

--_000_b7972273540b436d9402f6b224c69905baesystemscom_--

--===============5279819908011887828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5279819908011887828==--
