Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFB61E51BC
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 01:23:36 +0200 (CEST)
Received: from [::1] (port=54094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1je5OW-0007bG-O2; Wed, 27 May 2020 19:23:32 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:37450)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1je5OQ-0007X0-Vc
 for usrp-users@lists.ettus.com; Wed, 27 May 2020 19:23:27 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1590621766; h=from:subject:to:date:message-id;
 bh=u0e0aQm3ZbsgQ9o1yCZx2/fnVcKLTWA0YDMT5uDc7yM=;
 b=HWfs2BtwvZdQBps9R1Ln/WC9/2w47oLRLa79wYrO5FEwoIx6HOXl2dvi1przFHTv3AmBKBpopJB
 aL6otRlhRmseQ/Rivv8W5LG0QAerHh8NGQcgFy4kehyhBODd+zXejrkTQHntrkZ5B9JzNUak5Xg8p
 aTVpzS12/PCBG1Dc1Ys=
Received: from parris.core.gtri.org (10.41.31.72) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 27 May
 2020 19:22:46 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by parris.core.gtri.org
 (10.41.31.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1913.5; Wed, 27
 May 2020 19:22:46 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Wed, 27 May 2020 19:22:46 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc gain tutorial block freezing on testbench TEST CASE 5
Thread-Index: AdY0SHg1wyqYgGzVTum+6KS3GXBvJAANSViQ
Date: Wed, 27 May 2020 23:22:46 +0000
Message-ID: <5027a8f3124747d9a8808e00c84ed24b@gtri.gatech.edu>
References: <939e6cc2a8484f849dccbf44c341270e@gtri.gatech.edu>
In-Reply-To: <939e6cc2a8484f849dccbf44c341270e@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] rfnoc gain tutorial block freezing on testbench
 TEST CASE 5
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============0640267311574075131=="
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

--===============0640267311574075131==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5027a8f3124747d9a8808e00c84ed24bgtrigatechedu_"

--_000_5027a8f3124747d9a8808e00c84ed24bgtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The problem was resolved on a commit to the master branch:

https://github.com/EttusResearch/fpga/commit/89957c3f30d3e17ddd43622277cbec=
299b207805

Adding the following to the axi wrapper in the noc_block_gain.v code after =
line 86:

.bus_clk(bus_clk), .bus_rst(bus_rst),

Jeff


From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Hodges, =
Jeff via USRP-users
Sent: Wednesday, May 27, 2020 1:02 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] rfnoc gain tutorial block freezing on testbench TEST =
CASE 5

I am getting the same error as Pratik:

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-September/=
057930.html


When I run the testbench, it is gets stuck on TEST CASE 5.

I have used rfnocmodtool to create the tutorial and added a gain block. I h=
ave downloaded the files directly from the tutorial website into the proper=
 places in the gain block:
https://kb.ettus.com/images/a/ab/gain_src.tar.gz


I'm using branch UHD-3.15.LTS
I am also not using the PyBOMBS methods so when I build, I use: cmake -DUHD=
_FPGA_DIR=3D[UHD source directory]/fpga-src/ ../

Jeff


--_000_5027a8f3124747d9a8808e00c84ed24bgtrigatechedu_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The problem was resolv=
ed on a commit to the master branch:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"https://git=
hub.com/EttusResearch/fpga/commit/89957c3f30d3e17ddd43622277cbec299b207805"=
>https://github.com/EttusResearch/fpga/commit/89957c3f30d3e17ddd43622277cbe=
c299b207805</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Adding the following t=
o the axi wrapper in the noc_block_gain.v code after line 86:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">.bus_clk(bus_clk), .bu=
s_rst(bus_rst),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jeff<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> USRP-users &lt;usrp-users-bounces@lists=
.ettus.com&gt;
<b>On Behalf Of </b>Hodges, Jeff via USRP-users<br>
<b>Sent:</b> Wednesday, May 27, 2020 1:02 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] rfnoc gain tutorial block freezing on testbenc=
h TEST CASE 5<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am getting the same error as Pratik:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2018-September/057930.html">http://lists.ettus.com/piper=
mail/usrp-users_lists.ettus.com/2018-September/057930.html</a><o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run the testbench, it is gets stuck on TEST C=
ASE 5.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have used rfnocmodtool to create the tutorial and =
added a gain block. I have downloaded the files directly from the tutorial =
website into the proper places in the gain block:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/images/a/ab/gain_src=
.tar.gz">https://kb.ettus.com/images/a/ab/gain_src.tar.gz</a><o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using branch UHD-3.15.LTS<o:p></o:p></p>
<p class=3D"MsoNormal">I am also not using the PyBOMBS methods so when I bu=
ild, I use: cmake &#8211;DUHD_FPGA_DIR=3D[UHD source directory]/fpga-src/ .=
./<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5027a8f3124747d9a8808e00c84ed24bgtrigatechedu_--


--===============0640267311574075131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0640267311574075131==--

