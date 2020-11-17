Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 197772B6C5A
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 18:51:51 +0100 (CET)
Received: from [::1] (port=47586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kf58u-0003n9-6n; Tue, 17 Nov 2020 12:51:48 -0500
Received: from mx0f-0013ba02.gpphosted.com ([67.231.155.125]:52775)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <perkinsd@battelle.org>)
 id 1kf58q-0003el-8J
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 12:51:44 -0500
Received: from pps.filterd (m0216695.ppops.net [127.0.0.1])
 by mx0e-0013ba02.gpphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0AHHp3A8009309
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 17:51:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=battelle.org;
 h=from : to : subject
 : date : message-id : content-type : mime-version; s=pps1;
 bh=nZWtavilJYTUnKtPvOPDrX2wIJmdFI5Vcyi8xKCSJOI=;
 b=cwYBB3cCSShJWU1u8NZRpwAni3uqkFs57cCLp/C9mATvMpXZacz2LQbLctyXcTKkfV4z
 lzM0+Ge1pFJhbjYSg6RKt5StpwvjjRUhxlhUM3nrfSmfMiPoiGY60P4GaSYQfAGkJNJ+
 azWQ3ukouTOPgoWJJ93maw6jcpE/sBfiCv4J1KrgaWy2HnZqvrMOXf5un8ST1R/QDU9X
 KjBIjKKHUpRVFOAISHCHqRcPiAE4/BetL0leamtoiROQcoGyfOcAWGBoUOlqOdP27i9H
 um626g6WtrKsZ8UFqm/O/IngROVSep801VEXv3I5f+B4ZIgHuqydQV/9sGzhyGaf8GUa QA== 
Received: from lz-cismta01.battelle.org (lp-mail01.battelle.org
 [131.167.218.50])
 by mx0e-0013ba02.gpphosted.com with ESMTP id 34t64jrwau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 17:51:03 +0000
Received: from WP-EX01.milky-way.battelle.org (wp-ex01.milky-way.battelle.org
 [10.50.8.131])
 by lz-cismta01.battelle.org (Postfix) with ESMTP id BAE18700002
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 12:51:02 -0500 (EST)
Received: from WP-EX05.milky-way.battelle.org (10.50.8.135) by
 WP-EX01.milky-way.battelle.org (10.50.8.131) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2044.4; Tue, 17 Nov 2020 12:51:02 -0500
Received: from WP-EX05.milky-way.battelle.org ([10.50.8.135]) by
 WP-EX05.milky-way.battelle.org ([10.50.8.135]) with mapi id 15.01.2044.007;
 Tue, 17 Nov 2020 12:51:02 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 hardware revision?
Thread-Index: Ada9CSn4W5h+6KatR9yBMbUJaejGbg==
Date: Tue, 17 Nov 2020 17:51:02 +0000
Message-ID: <6680fe735fcb48c78283c2e713a5b3ee@battelle.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.8.6]
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=1 phishscore=0
 suspectscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 classifier=donotscan
 adjust=0 reason=forced scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170129
Subject: [USRP-users] E310 hardware revision?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Perkins, Daniel A via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Perkins, Daniel A" <perkinsd@battelle.org>
Content-Type: multipart/mixed; boundary="===============2801653333378666988=="
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

--===============2801653333378666988==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6680fe735fcb48c78283c2e713a5b3eebattelleorg_"

--_000_6680fe735fcb48c78283c2e713a5b3eebattelleorg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is anyone aware of a hardware revision to the USRP E310 radio that might ca=
use a software incompatibility for older (2016 timeframe) builds resulting =
in issues with accessing the AD93961 chip?  I am using FPGA firmware and AR=
M processor software that was branched from the Ettus repository ~4 years a=
go and heavily modified.  This code works fine on older E310 radios but on =
new radios, the AD9361 does not seem to respond to SPI commands.

--_000_6680fe735fcb48c78283c2e713a5b3eebattelleorg_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Is anyone aware of a hardware revision to the USRP E=
310 radio that might cause a software incompatibility for older (2016 timef=
rame) builds resulting in issues with accessing the AD93961 chip?&nbsp; I a=
m using FPGA firmware and ARM processor
 software that was branched from the Ettus repository ~4 years ago and heav=
ily modified.&nbsp; This code works fine on older E310 radios but on new ra=
dios, the AD9361 does not seem to respond to SPI commands.&nbsp;
<o:p></o:p></p>
</div>
</body>
</html>

--_000_6680fe735fcb48c78283c2e713a5b3eebattelleorg_--


--===============2801653333378666988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2801653333378666988==--

