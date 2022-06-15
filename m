Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACD954CC91
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 17:20:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E1AA38434B
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 11:20:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655306410; bh=Ro7rn5gbcPyFTYAdDEJ118TJxWeYndIioBCYjauE7To=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=m/hN4Hhio/+DzaSs57f2V6bz+Tbq6nYbW3hgIVOsRSs2FweREYwiqh6GsvW/0Zjgn
	 rx1J6V8lvUbZcWBMI7vDS+iHyQ3yCGVrdqwdPovSTTExzwRCwsiT6rrjs+0zu7L1wL
	 B/4rqA4+qiqdK3faib8J7XO/PpEmounDy/QGI4vBNQSem9C75PkXTlRT+yDaacU5Yr
	 PkcspzP+HhFoGrv5F52/CSpXkSK74HVntr61nRwDQS+A7bOqV6UZ50g9pLYrc8g/CJ
	 MgLwk8FXx74Ufx85Ij+cnRyaH1gXFM/Dm2hb9EErJO6PZgnvd2cMCGLGIEX1xP1j0a
	 ibz1NdARpW8Sw==
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 992E4383F49
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 11:18:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="gBSMMXjM";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1655306335; x=1812986335;
  h=from:to:subject:date:mime-version;
  bh=MSMCWwZ2MawBO41Xmrw7/u6a/HFGMCZW8jl9CaO/1YE=;
  b=gBSMMXjMGjaQD0x7581I1Nm7kn8e/1hebP1AKnTJQd9sD45vxv0lI6V6
   SGsr6N0LLWshgsfmhdldRRj1PiAHWLAHVpU+kGg+ETkglpImz6G/ReP2U
   MO/vIZHKgxKTa+RjykcJ0nFQC+31sx1tqc2EtNSuiTX6ysfm1oRQnHdR2
   E=;
IronPort-SDR: ai6wOcigVdN+L8dlnqYq8ncr11rt8UBxVSKZPsksQEKoO0iNkluJ/MbadukMpiiWxDZxJT4ucU
 yQK3IrFQLXCg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AFTuqdx8czLmlBP9uWZ+8ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZwqCuL490BfgZsby07p8ke3YsqTtCyQrwK2qlzQ8SqFKT?=
 =?us-ascii?q?AIPks4MngYtU4avAEz/K+P2PWRhRJwRHFBq8GumPkdLBc3we0PdomGo7T4VB?=
 =?us-ascii?q?x7zKRd5Kv76F4LMgcm7zeC/9p3cbwhLize2fK9/IgixoQjNrMcdnJFsKrw2y?=
 =?us-ascii?q?hvHo3tIf/pZyGZ1Ll+NnBjy+9m98od7/ytfp/wu+chAUb7nf6sjVrxXEC4mM?=
 =?us-ascii?q?2Eu68L1sxTIUBaC6WEdUmUSlRpIHhTF4RTnVZr/rif2quxw0zScMMbrT747R?=
 =?us-ascii?q?C6i4r9rRhH2lSkHKzA3/mLWisNsg61WuwiuqwB9w4POfI2ZKORyc6XAdt0aX?=
 =?us-ascii?q?2pBWcNRWjRPDo2ibosPC+4BPf1fr4n7v1cFsAazBQ63C+jyzjNHiGL40ag03?=
 =?us-ascii?q?+88FgzGxgsgEMkQv3TOsNX5LrsSUeGxzKnM1jXDaPVW1Czm54fSbB8huvGNX?=
 =?us-ascii?q?alsccXPzEkvDBnJgUmXqYzgJj6Y0PkGvGeH4eR6T+2vl3InpB9rojip3soih?=
 =?us-ascii?q?JXEi58Wx1za8Sh3wIY4KMG3RUNnfNKpFIZcui6ZOoZ3Qs4sQ3xktTo1xLAHt?=
 =?us-ascii?q?pO1cjYHxpolyhPCdfGJc5SF7xT+X+iSOTd1nG9pdK6lixuw/0Ws0O7xW8au3?=
 =?us-ascii?q?FpXtiZJj8XAumoN2hHT8MSLV/Vw80S71TuMywze7PxPL1oumqrBMZEhx6Y9l?=
 =?us-ascii?q?p8UsUveACD7gF72jKqKdkU8/eio9vjnbq3mppCCM490jRnzMrghm8OlB+Q4N?=
 =?us-ascii?q?xMOUmyH9eigyLHv4Ff1QKhRjvEsiabWqo7VJd8bp66iHw9azIMj6w2lAzi61?=
 =?us-ascii?q?9QYmGELLFNDeB2Zk4jkI0zCLOziAfq9jVmgijRmyv/cMrH8GpnNK2LMkLblf?=
 =?us-ascii?q?bZz8U5czw8zwMhF55JTEb4OPujzWlPruNzEDx85Nwi0w/3gCNV7zY4RQniAD?=
 =?us-ascii?q?bGCMKLSql+I+vwgI+yXZIMPpDn9LP0l6+bojXAigVAdZ7Wm3YMLaHCkGfRrO?=
 =?us-ascii?q?1iVbWL2gtgdCWcKohY+TOvyhV2fSj5TfW6yU7sh5jEgFo2mF5zDS5upgLyAx?=
 =?us-ascii?q?ye7AoZWanpYBVCQDXfoap6EV+0QZyKVJ88y2gADAPK8UJU5kAy1uRXh475mN?=
 =?us-ascii?q?fbPvCAEqY/4ktNy4qebwQwp7yQxEt+QyXqlS2BvgnhOSiMqwbs5qkt4nASty?=
 =?us-ascii?q?6991rZkFNhX/PRPFk8QMpSUj9FBSpq6DhjGdNqTVBC6Q9GiGjY3Ztg4zsQfe?=
 =?us-ascii?q?FpwHs7khRfGiXn5S4QJnqCGUcRnupnX2GL8cp4V9g=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADBQB2bIJi/wFUSQpagQkJgmeBfwK?=
 =?us-ascii?q?Ba7QlCwEBAQEBAQEBAQgBQgQBAYpDJjgTAQIEAQEBEgEBBgEBAQEBBwQBgRu?=
 =?us-ascii?q?FaQyCNSKEH14BFWsmAQQbgnaCDK1ZgTMaAmWEbYURgTyBZoVVgwiGbYQIi3Q?=
 =?us-ascii?q?ElV0HOgNUgQUSgSFxAQgGBgcKBTIGAgwYFAQCAxASUx4CEwwKHA5UGQwPAxI?=
 =?us-ascii?q?DEQEHAgsSCBUsCAMCAwgDAgMuAgMYCQcKAx0IChwSEBQCBBMfCwgDGh8tCQI?=
 =?us-ascii?q?EDgNDCAsKAxEEAxMYCxYIEAQGAwkvDSgLAwUPDwEGAwYCBQUBAyADFAMFJwc?=
 =?us-ascii?q?DIQcLJg0NBCMdAwMFJgMCAhsHAgIDAgYXBgICcQooDQgECAQcHiUTBQIHMQU?=
 =?us-ascii?q?ELwIeBAUGEQkCFgIGBAUCBAQWAgISCAIIJxsHFjYZAQVdBgsJIxwcEBEFBhY?=
 =?us-ascii?q?DJlIGAgGYEFl0FIFFoHyhAwcDg0yfeC4VlncDkV0tkQuFLiCmXgIEAgQFAha?=
 =?us-ascii?q?BeIF+cIM5UBcCnH+BMAIGCwEBAwmQCIESAQE?=
X-IPAS-Result: =?us-ascii?q?A2ADBQB2bIJi/wFUSQpagQkJgmeBfwKBa7QlCwEBAQEBA?=
 =?us-ascii?q?QEBAQgBQgQBAYpDJjgTAQIEAQEBEgEBBgEBAQEBBwQBgRuFaQyCNSKEH14BF?=
 =?us-ascii?q?WsmAQQbgnaCDK1ZgTMaAmWEbYURgTyBZoVVgwiGbYQIi3QElV0HOgNUgQUSg?=
 =?us-ascii?q?SFxAQgGBgcKBTIGAgwYFAQCAxASUx4CEwwKHA5UGQwPAxIDEQEHAgsSCBUsC?=
 =?us-ascii?q?AMCAwgDAgMuAgMYCQcKAx0IChwSEBQCBBMfCwgDGh8tCQIEDgNDCAsKAxEEA?=
 =?us-ascii?q?xMYCxYIEAQGAwkvDSgLAwUPDwEGAwYCBQUBAyADFAMFJwcDIQcLJg0NBCMdA?=
 =?us-ascii?q?wMFJgMCAhsHAgIDAgYXBgICcQooDQgECAQcHiUTBQIHMQUELwIeBAUGEQkCF?=
 =?us-ascii?q?gIGBAUCBAQWAgISCAIIJxsHFjYZAQVdBgsJIxwcEBEFBhYDJlIGAgGYEFl0F?=
 =?us-ascii?q?IFFoHyhAwcDg0yfeC4VlncDkV0tkQuFLiCmXgIEAgQFAhaBeIF+cIM5UBcCn?=
 =?us-ascii?q?H+BMAIGCwEBAwmQCIESAQE?=
X-IronPort-AV: E=Sophos;i="5.91,230,1647302400";
   d="scan'208,217";a="480904857"
IronPort-SDR: IUkdyeROxFWX7U31UhhACjc9iF1+AWgXG80x1NqtwySUH+mpQaD+Jgped1wO+MNJfMndYTHciW
 QwPdhPLJ++JNnxDi0aBVyeBcoCiLu63pDbXPjekAxsn4gABFGA9G/c59nonbu9SNC/evoEl989
 NiFj/PvkgyDqWj+SdXoOQl93GKcf4yiMA8TvrP0n2reUlfLMhj3xWydi9vqiSUQ5cxq4VbBT0v
 cxJ9E3wUxXQe5lmIPNflm5Zu2mmBuMkU1gnt9ET6yc9mVPBADiSrLN2MQeApwgsZVfz/VEZhxN
 WKo=
IronPort-Data: =?us-ascii?q?A9a23=3A7SYtgapemnxjZGTV6omM4f6/5yteBmLQZxIvg?=
 =?us-ascii?q?KrLsJaIsI4StFCztgarIBnSb6ncMDfyKtAnPt+19E8B68eDxtUxSlBs+Hg8F?=
 =?us-ascii?q?S0aoseUXt7xwmXYZnjLdpKZJK5EA2TyUjRLRSwNZie0SiyFb/6w9BGQ6YnSH?=
 =?us-ascii?q?uCmULCdZ3goLeNZYHxJZSxLyrdRbrFA0YDR7zOl4bsekuWHULOX82cc3lE8t?=
 =?us-ascii?q?8pvnChSUMHa41v0iLCficdj5zcyn1FNZH4WyDrYw3HQGuG4FcbiLwrPIS3QE?=
 =?us-ascii?q?so0In4Q5t2ZfrbTKiXmQ5b9GSSrsSoLA/XyxBdFoiA21KV9Lv0bdUNRiDzPm?=
 =?us-ascii?q?d1toDlPncXoD1x2ePSSwaJED0Ew/yJWZMWq/JfdJnKyq9DV00zCd2Drxd1kB?=
 =?us-ascii?q?UwtLJYE9+NsR2pJ8JT0LRhUNU3a2LzvkezTpu5Ew55LwNPQFJ4EoGkl0CrUF?=
 =?us-ascii?q?+0ORZHYX76M6MNEwSx2jcdLdcsyzeJxhSFHYxDMZgYfZw9KWNQxm+Okgn/8N?=
 =?us-ascii?q?Sdfr06Ro6k+pW7e0GRMPHHWGIK9UrS3qQ99xy50fl77wlk=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Abi2uXKwT1Mc8p8+TlCTTKrPwHL1zdoMgy1?=
 =?us-ascii?q?knxilNoHtuA7SlfqGV7Y0mPHrP4gr5N0tApTntAsa9qArnhPlICOoqTNWftW?=
 =?us-ascii?q?vdyQ+VxehZhOOP/9SHIVycygc078xdmsNFZuEYY2IbsS+r2mSF+5RJ+qjjzE?=
 =?us-ascii?q?kCv5a580tQ?=
X-IronPort-AV: E=Sophos;i="5.91,302,1647302400";
   d="scan'208,217";a="135176196"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: x410 x4_200 connectivity question
Thread-Index: AdiAyYZ1jnuOx0lZToSZ83c/nnBcOw==
Date: Wed, 15 Jun 2022 15:17:52 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.55.138.80]
MIME-Version: 1.0
Message-ID: <165530633592.11266.12838205147515045731@mm2.emwd.com>
Message-ID-Hash: ECWAH32Y2H4EE4ET75TEII4K3MDL3DK3
X-Message-ID-Hash: ECWAH32Y2H4EE4ET75TEII4K3MDL3DK3
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 x4_200 connectivity question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECWAH32Y2H4EE4ET75TEII4K3MDL3DK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============1961354056401618697=="

--===============1961354056401618697==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9d7b52ba5ba5405abfab8475389777bcbaesystemscom_"

--_000_9d7b52ba5ba5405abfab8475389777bcbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So I am on the x4_200 image and am wondering what the "correct" way to setu=
p the transport is.

I currently have a single qsfp28 connection on the x410 to a single 100 GbE=
 port on a mellanox card.

Question #1:
Looking at the description of the fpga image it describes the x4_200 as "4 =
x 10GbE", so should I really be configured as single qsfp28 connection on t=
he x410 to a quad 10 GbE on host with a breakout cable?

I am seeing some wonkiness in my app, which was pretty stable on the N310 a=
nd wondering if it could be due to my transport setup.
I am still investigating the app, but it made me think about how the data i=
s delivered from device to host.

Question #2:
With the x4_200 fpga image, is the traffic for each RF port "routed" to a s=
ingle 10GbE interface?  4 RF ports, 4 10GbE connections?

Any insights would be greatly appreciated :)

--_000_9d7b52ba5ba5405abfab8475389777bcbaesystemscom_
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
<p class=3D"MsoNormal">So I am on the x4_200 image and am wondering what th=
e &#8220;correct&#8221; way to setup the transport is.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I currently have a single qsfp28 connection on the x=
410 to a single 100 GbE port on a mellanox card.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Question #1:<o:p></o:p></p>
<p class=3D"MsoNormal">Looking at the description of the fpga image it desc=
ribes the x4_200 as &#8220;4 x 10GbE&#8221;, so should I really be configur=
ed as single qsfp28 connection on the x410 to a quad 10 GbE on host with a =
breakout cable?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am seeing some wonkiness in my app, which was pret=
ty stable on the N310 and wondering if it could be due to my transport setu=
p.<o:p></o:p></p>
<p class=3D"MsoNormal">I am still investigating the app, but it made me thi=
nk about how the data is delivered from device to host.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Question #2:<o:p></o:p></p>
<p class=3D"MsoNormal">With the x4_200 fpga image, is the traffic for each =
RF port &#8220;routed&#8221; to a single 10GbE interface?&nbsp; 4 RF ports,=
 4 10GbE connections?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any insights would be greatly appreciated <span styl=
e=3D"font-family:Wingdings">
J</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_9d7b52ba5ba5405abfab8475389777bcbaesystemscom_--

--===============1961354056401618697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1961354056401618697==--
