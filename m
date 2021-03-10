Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5233464B
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 19:10:29 +0100 (CET)
Received: from [::1] (port=43818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK3Hu-0007br-0h; Wed, 10 Mar 2021 13:10:26 -0500
Received: from mx07-002baa02.pphosted.com ([185.132.183.154]:59857)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <oliver.towlson@gmvnsl.com>)
 id 1lK3Hp-0007X4-Ar
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 13:10:21 -0500
Received: from pps.filterd (m0205084.ppops.net [127.0.0.1])
 by mx08-002baa02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 12AHvQnM003778
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 19:09:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv.com;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=gmvcom;
 bh=gfTlaxP9WOqccf30FnoZN/yUKGNhW8LCAPhBeqihn50=;
 b=DE4fc7mq1Y1VWMyrEWgjBHDjOfzGqGZ3IKXu5Tmou5WCrsCnzlcb9EGON3U7cZm0P1uM
 uxxZkxTggF+xkOV1+Uwv9NPEH06BFX3aWlMCVY/sz9sCgoAbbH+TKgrgelJSaOaPNWhN
 Op5dQtMUMytm32rSR+EyrLfTXz92CQC2tkCXmJJuy++9m+HQ5D9TtBGZWVZFaT63POGk
 aAMvV93Cb4at6deLiBmPhN1S/nRJYpTIMNIKUFj1KcLCfD6tvnPUGBrUCZ8/H08H+yWQ
 ScNuKjj78dcWkbbvWYynV6fNB99rSiR12JJYbv4SY4oDyGkc+HcIugCi9eC9vPSPRYJ5 7A== 
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 with dual TwinRX set up
Thread-Index: AdcV1lUZBbC2IOM9Si+zyy3m4hlBJA==
Date: Wed, 10 Mar 2021 18:09:37 +0000
Message-ID: <8b669b86247f41399f2c60a491048865@gmvnsl.com>
Accept-Language: en-GB, es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-kse-serverinfo: ptmexch2.gmv.es, 9
x-kse-attachmentfiltering-interceptor-info: protection disabled
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 10/03/2021 17:04:00
MIME-Version: 1.0
X-KSE-ServerInfo: ptmexch5.gmv.es, 9
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-Proofpoint-Action: Received-Header-Sanitized
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-10_10:2021-03-10,
 2021-03-10 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Subject: [USRP-users] X310 with dual TwinRX set up
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
From: Oliver Towlson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Oliver Towlson <oliver.towlson@gmvnsl.com>
Content-Type: multipart/mixed; boundary="===============8420415440882531638=="
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

--===============8420415440882531638==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8b669b86247f41399f2c60a491048865gmvnslcom_"

--_000_8b669b86247f41399f2c60a491048865gmvnslcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I am trying to set up an X310 with 2 TwinRX boards such that:

- each RF channel may be tuned to a different GNSS L-band frequency
- all four RF channels may be synchronised in time
- data streaming on all four channels at 100 MS/s (we are using dual 10G Et=
hernet for this)

I'm pretty much a beginner when it comes to USRPs. I am using GNU radio to =
configure the USRP but so far it only recognizes two input channels. We fou=
nd the code posted here - http://ettus.80997.x6.nabble.com/USRP-users-Examp=
le-code-for-a-pair-of-TwinRXs-td2673.html - useful but on closer inspection=
 all four channels were set to the same frequency and it looks to be doing =
something different to what we want (it looks like it was written specifica=
lly to synchronise four channels receiving the same signal so that you can =
calibrate the internal phase offset of the USRP)

Does anyone have any example code they might be willing to share, if only t=
o get us started, to get our desired set-up?

Thanks

Oliver T

P Please consider the environment before printing this e-mail.

--_000_8b669b86247f41399f2c60a491048865gmvnslcom_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I am trying to set up an X310 with 2 TwinRX boards =
such that:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">- each RF channel may be tuned to a different GNSS =
L-band frequency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">- all four RF channels may be synchronised in time<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">- data streaming on all four channels at 100 MS/s (=
we are using dual 10G Ethernet for this)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I&#8217;m pretty much a beginner when it comes to U=
SRPs. I am using GNU radio to configure the USRP but so far it only recogni=
zes two input channels. We found the code posted here
 - <a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-Example-code-for-=
a-pair-of-TwinRXs-td2673.html">
http://ettus.80997.x6.nabble.com/USRP-users-Example-code-for-a-pair-of-Twin=
RXs-td2673.html</a> - useful but on closer inspection all four channels wer=
e set to the same frequency and it looks to be doing something different to=
 what we want (it looks
</span><span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,san=
s-serif">like it was written specifically to synchronise four channels rece=
iving the same signal so that you can calibrate the internal phase offset o=
f the USRP)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Does anyone have any example code they might be wil=
ling to share, if only to get us started, to get our desired set-up?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Oliver T<o:p></o:p></span></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdi=
ngs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><=
span style=3D""></span>
</body>
</html>

--_000_8b669b86247f41399f2c60a491048865gmvnslcom_--


--===============8420415440882531638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8420415440882531638==--

