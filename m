Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D8675FBAE
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 18:17:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A24A384AB2
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 12:17:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690215422; bh=nez844wgTAHIyxMtdiVyjh6+W8qVVXU4rqLz47wXFTA=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=SPtNqJdxJLolxZfXNlvAxA/7G8RHz9uEkjqsYWEhGFi7sYJDkcrIgyvP5w3X4nGSS
	 Kg289ACI7H4vYz1Bn+bH0nZxV867Y3DKJwSEpS+50GjGKuqn1eCE/NgAoBcVjl+Qk+
	 bwoKKz2M/aZRLlTqdDTbwStmORGumgwXGsCEn0ytZ6lJBEh+uIOhHIWv3mpnrDoDj4
	 JBALAeCI3T6SXSJ4IWaRchmUJJwnYlWiUDd/7hjv5qxu4AXeXIvpT27KFChuqPyGtS
	 eeRptqTlE3ThHkM+XAXuFQzdwFXlfgaLQugeYzKW8TXRm0agi90KOLTnz6XiV1ybu7
	 X+Bq2xCch6FlQ==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F411380A34
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 12:16:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="KLng/+pb";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1690215406; x=1847895406;
  h=from:to:subject:date:mime-version;
  bh=+0VDQ2OTqzL9sgdvBfLfr1IhfRIZM9bjaAYeitBsvTQ=;
  b=KLng/+pbHH4/hujnzf5Ncty2l5bAU1ZbXSpfatc4UHV88J0McYLlrsbU
   26gZ9RrfuZBfZlpfVstHbo9L4jmhfvFl8zjHMmcDyxuXcAngmXHYdQvKh
   Nht8Q5+EB70YqPgDoM+FbVYE5n3u2RwSS/rHhXBj2bBDzSif8alKnVepY
   c=;
X-IPAS-Result: =?us-ascii?q?A2BWAABWor5k/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE0BQEBCwGBL4F2AoF3tAqBfg8BAQEBAQEBAQEIAUQEAQGLRCY2Bw4BAgQBA?=
 =?us-ascii?q?QEBAwIDAQEBAQEBAwEBBgEBAQEBAQYEAYEchS86DII3IoNfXgEMCWsmAQQbE?=
 =?us-ascii?q?4JkghVHrDqBNBoCZYR2sBmBQgGBaIYXAYFJg2IVhwaQBASFDYJEgiuFUQeLI?=
 =?us-ascii?q?SyBCAhegW09Ag1VCwtlgRiBGYEwAgIROhRKCHAbAwcDgQUQLwcEMiYGCRgvJ?=
 =?us-ascii?q?QZRBy0kCRMVQASDUAqBCD8VDhGCUWE4G0yCagkVBjtTehAxBBQYgQwIfyUaH?=
 =?us-ascii?q?j8REhsNBQggA0QdQAMLB2k9NRQbBgIBgUKbDoJ9gh8wNUCUMY4RoGCCOQcDh?=
 =?us-ascii?q?AuhCS4Xlz4DkheGJJICIKd1AgQCBAUCFoFqA4ILcIM4URcCohyBMAIHCwEBA?=
 =?us-ascii?q?wmKM4EVAQE?=
IronPort-PHdr: A9a23:KhRfWR/W6eZMQP9uWaW8ngc9DxPPW53KNwIYoqAql6hJOvz6uci4Y
 gqCtb480BfgZsby07p8ke3YsqTtCyQrwK2qlzQ8SqFKTAIPks4MngYtU4avAEz/K+P2PWRhR
 JwRHFBq8GumPkdLBc3we0PdomGo7T4VBx7zKRd5Kv76F4LMjsm7zeC/9p7cbwhMize2fK9/I
 gixoQjNrMcdnJFsKrw2yhvHo3tIf/pZyGZ1Ll+NnBjy+9m98od7/ytfp/wu+chAUb7nf6sjV
 rxXEC4mM2Eu68L1sxTIUBaC6WEdUmUSlRpIHhTF4RTnVZr/rif2quxw0zScMMbrT747RC6i4
 r9rRhH2lSkHKzA3/mLWisNsg61WuwiuqwB9w4POfI2ZKORyc6XAdt0aX2pBWcNRWjRPDo2ib
 osPC+4BPf1fr4n7v1cFsAazBQ63C+jyzjNHiGL40ag03+88FgzGxgsgEMkQv3TOsNX5LrsSU
 eGxzKnM1jXDaPVW1Czm54fSbB8huvGNXalsccXPzEkvDBnJgUmXqYzgJj6Y0PkGvGeH4eR6T
 +2vl3InpB9rojip3soihJXEi58Wx1za8Sh3wIY4KMG3RUNnfNKpFIZcui6ZOoZ3Qs4sQ3xkt
 To1xLAHtpO1cjYHxpolyhPCdfGJc5SF7xT+X+iSOTd1nG9pdK6lixu880Ws0PDwW8263VpQr
 ydIk8HAum0R2xDJ5cWLVOFx8lm/1TuOzQzf9+JJLEIymKHGMZAu2KQwmYAWsUnbGy/2n1j5g
 7GOe0U//+io9/znYrL7pp+AL4N0ih/xMqApmsGnB+Q4Mg4OUHKe+eSn17Du/VH1TKlXgvEsl
 KnWqorWKt8BqaGnGA9U0p0j6wqhADejy9QUh2UILFVAeB6fjojpPU/BIOzgAPuin1igijlmy
 vLcMrH8BpjAIGLPnbbgcLpl7k5T0gszzdRR55JODbEBJer+WlX2tNPDEBA5KRC0z/z7CNV80
 oMeXXmPAqifMK7JqlCH/PwgI/KMZY8OpDbyNf0l5+X0gXAlnl8deLGl3Z0MZ3+gBPRpP12ZY
 WbwgtcGCWoGoxIyTPb2h12aTT5Te3GyUroh5jEgEoKmFZ7PRp22gLOfxie7BYZbZmRHClCXD
 XfobJ+IVOkQaCKOP89hiSYIWqSmS48khlmSs1qw1qF9Nq/J4SACrrrn1cNp/KveiQ0v7np/C
 MHXmzWQVHts234TSiUt9KR+ulBmjFqfzbVjxfdfEIoAyelOV1JwCZ/Yy/d9DZS6cAXLNpe0c
 xfsCoG8Bjs8VM53394KZ116Hf2ohx3YzjG2DroO0beMAcpnoernw3HtKpMlmD793647ggx+K
 vY=
IronPort-Data: A9a23:2RON16LzO7y+jKU8FE+RZpclxSXFcZb7ZxGr2PjKsXjdYENSgzAAz
 zcWXjqHPP2KYmD9fY0jPNm1pkxQvpPXyddnHgAd+CA2RRqmiyZl6fd1jKvUF3nPRiEWZBs/t
 63yUvGZcIZuCCW0Si6FatDJtWN72byDWo3yAevFPjEZbQJ/QU/Nszo68wICqtAu2YHR7z+l4
 4uo+JWAYgT9gFaYD0pNg069gEI31BjNkG5A1rAOTagjlEPTkXATEKUeKcmZR5cvatAJdgISb
 7+rIICRpgs1zT90Yj+WuuqTnnkxf1LnFVPmZky6+kSVqkMqSiQais7XPReHAKtdo23hc9tZk
 L2huXEsIOskFvWkpQgTb/VXOwdEHvJlo5zEGkSUje/LllTda3Dw/cw7WSnaPaVAkgp2KWdO8
 /UdM2BQNkjaweS/hriyR/J9ndguKdKtN4Qa0p1i5WiBS615B8mSGOOUu7e03x9p7ixKNezZb
 ccDdXxzbRDEeBpJEl0eBYkvh/ulg2K5eDpdwL6QjfNuvTCDnVMtjtABNvL8d/ejT+R6onymp
 3LWokHAPSkFCcGQnG/tHnWEw7WncTnAcJ8JDqX96+Vnmka7wm0IFAZQWEenvOL/gUm7M++zM
 GRNomx18u5rpRftEIeVswCEnUNodyU0A7J4e9DWIinUokYIy2513lQ5cwM=
IronPort-HdrOrdr: A9a23:tfEPY6kAbAfUmsjvXpL0wdYUqNDpDfMiimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcLC7VpVoJkmsi6KdgLNhQotKMzOWwVdAQLsSlbcKoAeQZxEWlNQtr5
 uIGpIWYLGebSkY/KSKh3jfLzs5+ri6GciT9JfjJhxWPHxXgs9bnnxE4lnxKDwEeCB2QbYUMK
 CzosBHqzCjPS1OMK2Adxw4ttz41qj2fd/dEFI77hgcmW2zZXTC0s+wLzGomjMlFx9fy7Yr9m
 bI1ybj4L+4jv29whjAk0fO8pV/grLau55+Lf3JrvJQBiTniw6uaogkcaaFpioJrOam70tvuM
 XQoi0nI9945xrqDyOISCPWqk3dOQsVmj/fIB6j8DreSPXCNXwH4h969MFkml2z0TtWgDkwu5
 g7q15x+aAnSi8opx6Nr+QgZysa4HZcnkBS2NL7r0YvG7f2O4Uh4LD3VnklYqvoWhiKp7zPa9
 Meff3h2A==
X-Talos-CUID: =?us-ascii?q?9a23=3A+FJwUGn/yJhSzJPleyZj3ilps1zXOVvn7yjzeGy?=
 =?us-ascii?q?7MlpCdJ7NEEaL4Kh4rfM7zg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3A1O8Upg+nNkTmgt3jOZMRsVeQf+5lyI2kKW8xq6s?=
 =?us-ascii?q?Hq9nZEBVPAyigkTviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,228,1684800000";
   d="scan'208,217";a="116089746"
X-IronPort-AV: E=Sophos;i="5.99,259,1677542400";
   d="scan'208,217";a="399026413"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Network Link Issue
Thread-Index: Adm+SVZPutvIJoIES4SmdZC0jzeeZA==
Date: Mon, 24 Jul 2023 16:16:41 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.187]
MIME-Version: 1.0
Message-ID: <169021540665.4399.2739940569944262945@mm2.emwd.com>
Message-ID-Hash: VAPFFDR5GIA2PPDESRFIBU3A7TJ6MGRK
X-Message-ID-Hash: VAPFFDR5GIA2PPDESRFIBU3A7TJ6MGRK
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Network Link Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VAPFFDR5GIA2PPDESRFIBU3A7TJ6MGRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============3833494676623317509=="

--===============3833494676623317509==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8071c63df76145339c763ae2e1bd11e9baesystemscom_"

--_000_8071c63df76145339c763ae2e1bd11e9baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have 4 X310s running 3.14.1 (I know, an ancient version) attached to a co=
mputer with Ubuntu 20.04.

The NIC is an intel X710 4 port NIC running latest driver (2.22.20) and lat=
est NVM firmware (7.1).

When I connect the dual ended NIC cable (typical ettus part), I get no link=
 lights on host or x310, so obviously no connection to host.

I know this has happened in a very small number of cases before, just hopin=
g someone has maybe found a solution, like the magic config setting on the =
X710 NIC or something like that?

Obviously I would like to not have to upgrade as it is quite impactful at t=
his moment and unclear it would actually fix the problem.

Any thoughts?

Thanks,


--_000_8071c63df76145339c763ae2e1bd11e9baesystemscom_
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
<p class=3D"MsoNormal">I have 4 X310s running 3.14.1 (I know, an ancient ve=
rsion) attached to a computer with Ubuntu 20.04.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The NIC is an intel X710 4 port NIC running latest d=
river (2.22.20) and latest NVM firmware (7.1).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I connect the dual ended NIC cable (typical ett=
us part), I get no link lights on host or x310, so obviously no connection =
to host.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I know this has happened in a very small number of c=
ases before, just hoping someone has maybe found a solution, like the magic=
 config setting on the X710 NIC or something like that?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Obviously I would like to not have to upgrade as it =
is quite impactful at this moment and unclear it would actually fix the pro=
blem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any thoughts?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_8071c63df76145339c763ae2e1bd11e9baesystemscom_--

--===============3833494676623317509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3833494676623317509==--
