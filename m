Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40849AC23D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 23:54:10 +0200 (CEST)
Received: from [::1] (port=49040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6MBE-0000eF-Fa; Fri, 06 Sep 2019 17:54:08 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:14741)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel.lundberg@gtri.gatech.edu>)
 id 1i6MBB-0000aF-1D
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 17:54:05 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1567806803; h=from:subject:to:date:message-id;
 bh=O/8oqyQ/Bqj2ADGVAkjUHqXTCesTcloBToMLXCHAcyE=;
 b=Ig8yVnVIeyE0KzhA6xLfVQsLtEssrwk92IFy87yQt/f5nolrIfeY+55JxL2vidzfuJOQh9qcryc
 qF0LgKARcjy22P3HP1xVyn/4uFugggt3l3nzAafIpNt4XpyPIzDGBHUsdL12N3K5aOKxlkk9BzC3Y
 P7pTMV1zzcsJXzHTAcE=
Received: from tybee.core.gtri.org (10.41.1.49) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Fri, 6 Sep 2019
 17:53:23 -0400
Received: from kiawah.core.gtri.org (10.41.31.71) by tybee.core.gtri.org
 (10.41.1.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 17:53:23 -0400
Received: from kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f]) by
 kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f%15]) with mapi id
 15.01.1713.004; Fri, 6 Sep 2019 17:53:23 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Processor requirements for full-rate streaming on N320
Thread-Index: AdVk/SYtIwM80FUeRxaUhhDsHwEDLw==
Date: Fri, 6 Sep 2019 21:53:22 +0000
Message-ID: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] Processor requirements for full-rate streaming on N320
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Lundberg, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============1466215052308686942=="
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

--===============1466215052308686942==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7a40a32856c14d31807bfea8150bc996gtrigatechedu_"

--_000_7a40a32856c14d31807bfea8150bc996gtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Does anyone have a known good hardware configuration to support full (or at=
 least close to full) 200 MS/s streaming from the N320?  Preferably with 1 =
Tx and 2 Rx channels.
As a data point, a recent i3 (4 cores) seems to be choking above 62.5 MS/s.=
  This is over dual SFP+ ports.  At higher sampling rates, it is producing =
U's, which I interpret to mean that the cpu can't shovel samples into the r=
adio fast enough, not that there is a network jam.

Thank you,
DL

--_000_7a40a32856c14d31807bfea8150bc996gtrigatechedu_
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
<p class=3D"MsoNormal">Does anyone have a known good hardware configuration=
 to support full (or at least close to full) 200 MS/s streaming from the N3=
20?&nbsp; Preferably with 1 Tx and 2 Rx channels.<o:p></o:p></p>
<p class=3D"MsoNormal">As a data point, a recent i3 (4 cores) seems to be c=
hoking above 62.5 MS/s.&nbsp; This is over dual SFP&#43; ports.&nbsp; At hi=
gher sampling rates, it is producing U&#8217;s, which I interpret to mean t=
hat the cpu can&#8217;t shovel samples into the radio fast enough,
 not that there is a network jam.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">DL<o:p></o:p></p>
</div>
</body>
</html>

--_000_7a40a32856c14d31807bfea8150bc996gtrigatechedu_--


--===============1466215052308686942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1466215052308686942==--

