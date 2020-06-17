Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 570D51FC4FD
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2020 06:09:25 +0200 (CEST)
Received: from [::1] (port=46906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlPO5-000656-Ki; Wed, 17 Jun 2020 00:09:21 -0400
Received: from smtpmail1.tawazun.ae ([195.229.210.164]:12239)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <seshan.govender@tawazunti.ae>) id 1jlPO0-0005zt-W9
 for usrp-users@lists.ettus.com; Wed, 17 Jun 2020 00:09:17 -0400
IronPort-PHdr: =?us-ascii?q?9a23=3AOe8SKR0rG+rd//QIsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?seMeLvad9pjvdHbS+e9qxAeQG9mCtrQd1LOd7PCocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTqwbalvIBi0sAnducsbjIh/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTljj?=
 =?us-ascii?q?oMOTwk/2HNksF+jLxVrg+9pxJxwIDUYZ2aO/Vlc6PYYd8aR3BMUtpNWyNdBI63?=
 =?us-ascii?q?cosBD/AGPeZdt4TzukUBrQC+BQa2AuPk1z5Ghnjo3aIk1eQuDB/J3BY9FN8Jq3?=
 =?us-ascii?q?Tbss71NKcIXuCz1qXIwjLDb+1I1jf79YfHbAohrOqQXb1qf8ve00guFx7DjlWM?=
 =?us-ascii?q?qIzpJSma2foUvmWd8uFvWv6hhXQ9pAFtvjig2N0sio/Ri48L113J9jt0zYUoKd?=
 =?us-ascii?q?C5TEN3fcCpHZROui2HKYZ6X8cvT3x2tSg61rAKp4C2cSYXxZoo2hPSaPOJf5SU?=
 =?us-ascii?q?7h7/WuucJypzinxieLK6nRmy8E6gx/XgVsau3ldFtCtEksTKtnwXzRPc9M6KQe?=
 =?us-ascii?q?Z+8Ee5wTuDygTe5v9eLUwplKfWKIQtz70tmpYJrEjPADf6lFjygaOIbEko5+ml?=
 =?us-ascii?q?5uf9brjlu5OQLZJ4hwDjPqkoh8exG/43MhIUUGie4em80brj8lDnT7hSlf02l7?=
 =?us-ascii?q?XZsIjdJcQGuq61Gw9V3Zgn6xa4FzqrzNoWk2cHI1xCZB+Ij4fmNUzJLvzkEfuz?=
 =?us-ascii?q?nU6gkCtxyPHIJLLgA4jNLn7ZnLj7Y7lx809cyAwtwtBD/59YF7UMLOzpVkPstd?=
 =?us-ascii?q?HVDQU1Pg+pz+r9FdlxyJsSWWeVDa+YNKPSv0WI5uUqI+SUf48api39K/g/6P7o?=
 =?us-ascii?q?l3M5llgdfbe30psRdX+3AO5mLl6FYXX2jNYOC2YLvhc4TOz2iV2OSyRcaGiqU6?=
 =?us-ascii?q?Im+j47EJ6mDZvERo21nbyBxz27HoVPamBbEVCDD23od56fVvcIaSKSOdNhkice?=
 =?us-ascii?q?Wbe/V48hyQyutBTgx7V7KerU/35QiZW2nsVu/fWWiAo/7ydcC8WGz3rLQn1og3?=
 =?us-ascii?q?hOTDgzlugrvFdn0hKeyqVimNRcFMdP/LVEThsnLtjXyOksWP7oXQeURdqSSF+g?=
 =?us-ascii?q?CvqhHzw3Qt8ri4sVbl19EtPkgRfd0iymDqU9i7WUDY4p9L7dmXH8cZUug03a3b?=
 =?us-ascii?q?Us2gF1CvBEMner0/YmplrjQrXRmkDcrJ6EMKEV3SrD7mCGlDbcoEhHWRxtV7nE?=
 =?us-ascii?q?G3kSNBOP8IbJo3jaRrrrMowJdwtMzcnYdPljRuHWqHx5eszGYIyEJX64hG6iGB?=
 =?us-ascii?q?DOz77eNNO2KVVY5z3UDQ0/qy5W5WyPbFRsGi6+qnDDCiBvU1viMRvh?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2H8AwB7lule/wxRqMBmHgEBCxIMR4E4C?=
 =?us-ascii?q?4EjWIEegTMKh2OOQ4RHlDgUgWgLAQEBAQEBAQEBAwEDARMMEAQBAYRFghsdBgY?=
 =?us-ascii?q?xCA4CEAEBBgEBAQEBAwMEAQEChkQBC4I7IoF1LAhUTioBAR8IARslHQcPEAEBA?=
 =?us-ascii?q?SgVDwwmAQQSAQgGgxmDC5p2mk+CClMag2iBT4NhgTAQgTiBZYEshEICg2iBLYF?=
 =?us-ascii?q?MPyZrgltzgX6CAAEBCAESATgVhUgEjmwJIwEhhDWEaYE+BY87gwqHOigHgl2BB?=
 =?us-ascii?q?gQLgxKCUwKHZIRzhUMpgnA1iGWFBwOJL4INghiPToFPnjMCAgICCQIVgVQBYT1?=
 =?us-ascii?q?wTXOCaQlHFwJijVUXgQIBAkaMWXQ3AgYBBwEBAwmOLIEzgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2H8AwB7lule/wxRqMBmHgEBCxIMR4E4C4EjWIEegTMKh2O?=
 =?us-ascii?q?OQ4RHlDgUgWgLAQEBAQEBAQEBAwEDARMMEAQBAYRFghsdBgYxCA4CEAEBBgEBA?=
 =?us-ascii?q?QEBAwMEAQEChkQBC4I7IoF1LAhUTioBAR8IARslHQcPEAEBASgVDwwmAQQSAQg?=
 =?us-ascii?q?GgxmDC5p2mk+CClMag2iBT4NhgTAQgTiBZYEshEICg2iBLYFMPyZrgltzgX6CA?=
 =?us-ascii?q?AEBCAESATgVhUgEjmwJIwEhhDWEaYE+BY87gwqHOigHgl2BBgQLgxKCUwKHZIR?=
 =?us-ascii?q?zhUMpgnA1iGWFBwOJL4INghiPToFPnjMCAgICCQIVgVQBYT1wTXOCaQlHFwJij?=
 =?us-ascii?q?VUXgQIBAkaMWXQ3AgYBBwEBAwmOLIEzgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.73,521,1583179200"; 
 d="png'150?scan'150,208,217,150";a="18119946"
Authentication-Results: smtpmail1.tawazun.ae;
 spf=None smtp.pra=seshan.govender@tawazunti.ae; 
 spf=None smtp.mailfrom=seshan.govender@tawazunti.ae;
 spf=None smtp.helo=postmaster@Tawazun.ae
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Index: AdZEXPO/2gbNPZrrSt6XN5L7YCRgnw==
Date: Wed, 17 Jun 2020 04:08:31 +0000
Message-ID: <a740c86fff0a48e68c52764b8b200251@tawazunti.ae>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-bjprotectivemarking: <?xml version="1.0" encoding="us-ascii"?><sisl
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" sislVersion="0"
 policy="711208ef-c286-4531-9c27-1d2be8c1f7a7" origin="defaultValue"
 xmlns="http://www.boldonjames.com/2008/01/sie/internal/label"><element
 uid="id_classification_generalbusiness" value="" /></sisl>
bjclassification: Internal Use Only
x-symprex-messageprocessed: true
x-symprex-signatureinjected: false
x-bj-exc-itemchecked: e130ef1f-f20a-4f4c-b3ac-a3c52962dc15e420a159-554a-4423-adf9-6063a7045700
Content-Type: multipart/mixed;
 boundary="_007_a740c86fff0a48e68c52764b8b200251tawazuntiae_"
MIME-Version: 1.0
X-bj-exc-ItemProcessed: e130ef1f-f20a-4f4c-b3ac-a3c52962dc15e420a159-554a-4423-adf9-6063a7045700
X-bj-exc-processed-messageID: <a740c86fff0a48e68c52764b8b200251@tawazunti.ae>
Subject: [USRP-users] [Internal Use Only]RE: X310 questions[Internal Use
 Only]
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
From: Seshan Govender via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Seshan Govender <seshan.govender@tawazunti.ae>
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

--_007_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: multipart/related;
	boundary="_006_a740c86fff0a48e68c52764b8b200251tawazuntiae_";
	type="multipart/alternative"

--_006_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: multipart/alternative;
	boundary="_000_a740c86fff0a48e68c52764b8b200251tawazuntiae_"

--_000_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Classification: Internal Use Only

Hi,

We have recently purchased a x310 and are busy testing it=92s capabilities.
We would like to use the x310 to stream out and receive wideband signals at=
 a sample rate of 100Msps and 200Msps. I have connected 2 x 10Gbe, however =
when using the gnuradio UHD-USRP sink with two channels, I get Underruns or=
 Late packets error at sample rate of 66.7Msps and above. The same error ha=
ppens also with the UHD benchmark tool. However, it works with one channel,=
 with one 10Gbe connected at a sample rate of 200Msps, with few underruns i=
n the beginning.

I have the following questions:

1. Is it possible to achieve 2 x 200Msp with dual 10GBe without using DPDK?=
 if so what are the necessary configurations that have to be made using gnu=
radio? Is another image required for the x310 (other than the bit image fil=
es downloaded from ettus) in order to enable stream on both 10GBe at the sa=
me time?

2. What is the max sample rate feasible using one 10GBe.

3. How can we enable to stream out using dual 10GBe in gnuradio?

4. I tried to install DPDK also but was not successful in running it. Which=
 version of DPDK is recommended with uhd 3.15. What are the exact procedure=
s for setting up DPDK.

5. It is required to transmit a band of a signal (bandwidth lower than the =
sampling rate) using Gnu-radio and x310. However, the output from the X310 =
is distorted as shown in the attached file. Also the signal is extended to =
the full band equal to the sampling rate. This happens by using 16bit integ=
er samples.
Moreover, the signal obtained from the X310 is different when using 12 bit =
int wire, the output extends the full band but is not the same as the input=
 signal.

6. Moreover, I want to use RFnoc with UHD 3.15, however I do not have vivad=
o to compile RFnoc for this version. Are there existing images for RFnoc co=
mpatible with the latest version of UHD 3.15? We would want the RFNOC image=
 bit file for X310 that contains Replay block.

Any help would be appreciated and I am also posting this to the gnuradio ma=
iling list.

Regards
Seshan


=D3=ED=D4=C7=E4 =CC=E6=DD=ED=E4=CF=D1
=C3=CE=D5=C7=C6=ED =C7=C8=CD=C7=CB
=C7=E1=C8=CD=CB =E6=C7=E1=CA=D8=E6=ED=D1 =C7=E1=CA=DF=E4=E6=E1=E6=CC=ED

PO BOX 908
Abu Dhabi
United Arab Emirates

Seshan Govender
Research Specialist
Research and Technology Development

D
F+9712665 3133
www.tawazun.ae <https://www.tawazun.ae>


[SIGNATURE_LOGO]  <https://www.tawazun.ae>

[cid:image002.png@01D6447E.7B18A8B0]



This email is classified by seshan.govender as Internal Use Only on 6/17/20=
20 8:08:27 AM.
Disclaimer and Confidentiality Notice:
E-mails sent from or on behalf of Tawazun Economic Council, its subsidiarie=
s and affiliates (=93Tawazun=94) may contain information which may be confi=
dential, privileged and/or subject to copyright, and/or constitute a trade =
secret (=93Tawazun Information=94). If you are not the intended recipient o=
f this email, you may not disclose, copy or use its contents. If an email i=
s received in error, please notify the sender immediately and delete it and=
 any copies from your systems. Tawazun may monitor electronic communication=
s sent and received, for the purposes of ensuring compliance with our legal=
 and regulatory obligations and internal policies. Please click here<https:=
//www.tawazun.ae/website-terms/> to access the terms and conditions applica=
ble to the use of Tawazun Information. Emails are not a secure method of co=
mmunication. They can be intercepted and cannot be guaranteed to be error o=
r virus free. No responsibility is accepted by Tawazun for any loss or dama=
ge arising in any way from this email.

--_000_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: text/html; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
256">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Classification:
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:blue">Internal Use Only</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have recently purchased a x310 and are busy testi=
ng it=92s capabilities.<o:p></o:p></p>
<p class=3D"MsoNormal">We would like to use the x310 to stream out and rece=
ive wideband signals at a sample rate of 100Msps and 200Msps. I have connec=
ted 2 x 10Gbe, however when using the gnuradio UHD-USRP sink with two chann=
els, I get Underruns or Late packets
 error at sample rate of 66.7Msps and above. The same error happens also wi=
th the UHD benchmark tool. However, it works with one channel, with one 10G=
be connected at a sample rate of 200Msps, with few underruns in the beginni=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have the following questions:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1. Is it possible to achieve 2 x 200Msp with dual 10=
GBe without using DPDK? if so what are the necessary configurations that ha=
ve to be made using gnuradio? Is another image required for the x310 (other=
 than the bit image files downloaded
 from ettus) in order to enable stream on both 10GBe at&nbsp;the same time?=
 <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">2. What is the max sample rate feasible using one 10=
GBe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">3. How can we enable to stream out using dual 10GBe =
in gnuradio?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">4. I tried to install DPDK also but was not successf=
ul in running it. Which version of DPDK is recommended with uhd 3.15. What =
are the exact procedures for setting up DPDK.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">5. It is required to transmit a band of a signal (ba=
ndwidth lower than the sampling rate) using Gnu-radio and x310. However, th=
e output from the X310 is distorted as shown in the attached file. Also the=
 signal is extended to the full band
 equal to the sampling rate. This happens by using 16bit integer samples.&n=
bsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Moreover, the signal obtained from the X310 is diffe=
rent when using 12 bit int wire, the output extends the full band but is no=
t the same as the input signal.&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">6. Moreover, I want to use RFnoc with UHD 3.15, howe=
ver I do not have vivado to compile RFnoc for this version. Are there exist=
ing images for RFnoc compatible with the latest version of UHD 3.15?&nbsp;W=
e would want the RFNOC image bit file for
 X310 that contains&nbsp;Replay block. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be appreciated and I am also posting =
this to the gnuradio mailing list.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Seshan&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt 22.5pt 11.25pt 18.75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><b><span =
lang=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#CE502A">=D3=ED=D4=C7=E4 =CC=E6=DD=ED=E4=CF=D1</sp=
an></b><b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans=
-serif;color:#CE502A"><o:p></o:p></span></b></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span lan=
g=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Arial&q=
uot;,sans-serif;color:black">=C3=CE=D5=C7=C6=ED =C7=C8=CD=C7=CB</span><span=
 style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:bl=
ack"><o:p></o:p></span></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span lan=
g=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Arial&q=
uot;,sans-serif;color:black">=C7=E1=C8=CD=CB =E6=C7=E1=CA=D8=E6=ED=D1 =C7=
=E1=CA=DF=E4=E6=E1=E6=CC=ED</span><span style=3D"font-size:9.0pt;font-famil=
y:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</div>
</td>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt 11.25pt .75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">PO BOX 908&nbsp;</span><span style=3D"fon=
t-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Abu Dhabi&nbsp;</span><span style=3D"font=
-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">United Arab Emirates&nbsp;</span><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">
<o:p></o:p></span></p>
</div>
</td>
</tr>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt 22.5pt .75pt 18.75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><b><span =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#C=
E502A">Seshan Govender</span></b><b><span style=3D"font-size:9.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#CE502A"><o:p></o:p></span></b></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Research Specialist</span><span style=3D"font-size:9.0pt;font-family:&quo=
t;Arial&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right"><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Research and Technology Development</span><span style=3D"font-size:9.0pt;=
font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span></p=
>
</div>
</td>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#CE502A">D</span></b><span style=3D"font-size=
:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></s=
pan></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#CE502A">F</span></b><span style=3D"font-size=
:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&#43;9712665 =
3133</span><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,san=
s-serif;color:black"><o:p></o:p></span></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#CE502A"><a href=3D"https://www.tawazun.ae"><s=
pan style=3D"font-size:10.0pt;color:#CE502A;text-decoration:none">www.tawaz=
un.ae
</span></a><o:p></o:p></span></b></p>
</div>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"339" valign=3D"bottom" style=3D"width:225.0pt;padding:.75pt .7=
5pt .75pt 22.5pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#555759"><a href=3D"https://www.tawazun.ae"><spa=
n style=3D"color:#CE502A;text-decoration:none"><img border=3D"0" width=3D"2=
50" height=3D"125" style=3D"width:2.6041in;height:1.2986in" id=3D"_x0000_i1=
026" src=3D"cid:image001.png@01D6447E.7B18A8B0" alt=3D"SIGNATURE_LOGO"></sp=
an><span style=3D"font-size:10.0pt;color:#CE502A;text-decoration:none">&nbs=
p;</span><span style=3D"color:#CE502A;text-decoration:none">
</span></a><o:p></o:p></span></p>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75p=
t">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#555759"><img border=3D"0" width=3D"730" height=
=3D"13" style=3D"width:7.6041in;height:.1319in" id=3D"_x0000_i1025" src=3D"=
cid:image002.png@01D6447E.7B18A8B0"></span><span style=3D"font-size:10.0pt;=
font-family:&quot;Arial&quot;,sans-serif;color:#555759">&nbsp;</span><span =
style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#5=
55759">
<o:p></o:p></span></p>
</div>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">This email is classified by
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#002060">seshan.govender
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black">as
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:blue">Internal Use Only</span><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:black"> on
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#F00000">6/17/2020 8:08:27 AM</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">.
<o:p></o:p></span></p>
</div>
<div style=3D"=0A=
    font-family: Arial;=0A=
    font-size: 10px;=0A=
">
<div style=3D"font-weight:bold;text-decoration:underline">Disclaimer and Co=
nfidentiality Notice:
</div>
<div style=3D"text-align:justify">E-mails sent from or on behalf of Tawazun=
 Economic Council, its subsidiaries and affiliates (=93Tawazun=94) may cont=
ain information which may be confidential, privileged and/or subject to cop=
yright, and/or constitute a trade secret
 (=93Tawazun Information=94). If you are not the intended recipient of this=
 email, you may not disclose, copy or use its contents. If an email is rece=
ived in error, please notify the sender immediately and delete it and any c=
opies from your systems. Tawazun may
 monitor electronic communications sent and received, for the purposes of e=
nsuring compliance with our legal and regulatory obligations and internal p=
olicies. Please
<a href=3D"https://www.tawazun.ae/website-terms/" style=3D"color:black;font=
-weight:bold">
click here</a> to access the terms and conditions applicable to the use of =
Tawazun Information. Emails are not a secure method of communication. They =
can be intercepted and cannot be guaranteed to be error or virus free. No r=
esponsibility is accepted by Tawazun
 for any loss or damage arising in any way from this email. </div>
</div>
</body>
</html>

--_000_a740c86fff0a48e68c52764b8b200251tawazuntiae_--

--_006_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=12846;
	creation-date="Wed, 17 Jun 2020 04:08:30 GMT";
	modification-date="Wed, 17 Jun 2020 04:08:30 GMT"
Content-ID: <image001.png@01D6447E.7B18A8B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAPoAAAB9CAYAAACLWX5dAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAG
hGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0w
TXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRh
LyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEz
LTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3Jn
LzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0i
IiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRw
Oi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMu
YWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNv
bS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9z
VHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0Mg
MjAxOSAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTktMDktMDFUMTM6NDg6MTYrMDQ6
MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE5LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiB4bXA6TWV0YWRh
dGFEYXRlPSIyMDE5LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIg
cGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5
NjYtMi4xIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjE3NmMyYTA5LTUyNmYtNDJmZS1iNDEw
LTA4ZmQxMzI0ZDYwNyIgeG1wTU06RG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjc2
ZGIzYTgwLWFiYTQtZDQ0ZS05MzVlLWRkNTljNWUxNGYwNCIgeG1wTU06T3JpZ2luYWxEb2N1bWVu
dElEPSJ4bXAuZGlkOjEwMGFlNmFkLTFjNzEtNGQ0OC04NzU0LWM4NGVjZTAxOWU3ZSI+IDxwaG90
b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDxyZGY6QmFnPiA8cmRmOmxpPkE0QkVFMTRDNUZEMUJB
MjJEODI1N0YzNEJBNjExMTNFPC9yZGY6bGk+IDwvcmRmOkJhZz4gPC9waG90b3Nob3A6RG9jdW1l
bnRBbmNlc3RvcnM+IDx4bXBNTTpIaXN0b3J5PiA8cmRmOlNlcT4gPHJkZjpsaSBzdEV2dDphY3Rp
b249ImNyZWF0ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MTAwYWU2YWQtMWM3MS00ZDQ4
LTg3NTQtYzg0ZWNlMDE5ZTdlIiBzdEV2dDp3aGVuPSIyMDE5LTA5LTAxVDEzOjQ4OjE2KzA0OjAw
IiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoTWFjaW50b3No
KSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5p
aWQ6MTc2YzJhMDktNTI2Zi00MmZlLWI0MTAtMDhmZDEzMjRkNjA3IiBzdEV2dDp3aGVuPSIyMDE5
LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3No
b3AgQ0MgMjAxOSAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwv
eG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+
IDw/eHBhY2tldCBlbmQ9InIiPz68Zz/iAAArUElEQVR4nO2dd3gVVdrAfzO3pocECEWCtISQAKE3
xYpItay6n4JlV13rrotgXxWQohTRXZUi2NZVQJEqVXpNqAkEQgglhPR6U26/M98fSS653CSEkELI
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
P9gZmw8iIUYoAAAAAElFTkSuQmCC

--_006_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=407;
	creation-date="Wed, 17 Jun 2020 04:08:30 GMT";
	modification-date="Wed, 17 Jun 2020 04:08:30 GMT"
Content-ID: <image002.png@01D6447E.7B18A8B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAtoAAAANCAYAAACXSsmNAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAEsSURBVHhe7dxBTsJAFIDh10KxEvUGxB0nwI0J
p0BuZOJpOISs8QTGG7BWQFpssRutxMTAyu/bTCYvmfWfSWaSXSUAAICjSpsVAAA4IqENAAAnILQB
AOAEhDYAAJzAwceQRVFEkiTNDgAAqNX5nKbpr63cCu3lchmLxVNsq9Du9bLqoGYAAAD/Wh3GSRTF
dh/aw+EwrgeD6HS7n+NvWqH9OJ/H/f1DdLIs+v08ylJpAwBArQ7s9Wq1b+TpdBJ3k0lcXV40069a
of38/BKz2Sy2ZRl5nseuWgEAgCqe0yQ2600V3J0Yj29jNLqJs17WTL9qhXZZlPH2+hbvZX0l3omq
tJsJAAD8c0la5XGxv9k+z/PoZj9Hdu3gY0gAAODvfO8HAAAnILQBAODoIj4AyZFc+N45g4MAAAAA
SUVORK5CYII=

--_006_a740c86fff0a48e68c52764b8b200251tawazuntiae_--

--_007_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: image/png; name="sample_tx1.png"
Content-Description: sample_tx1.png
Content-Disposition: attachment; filename="sample_tx1.png"; size=14391;
	creation-date="Tue, 16 Jun 2020 18:02:24 GMT";
	modification-date="Tue, 16 Jun 2020 18:02:24 GMT"
Content-Transfer-Encoding: base64

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
s2ajYcjfszKLb83i1TKHo59H6t2WvSmXb5T5W+Wzac72/nazKc6zTpZ9DF8nszAa9rP1k007m37U
7Q/DaOakZB/nX6fNsW9bxvHiid5x3l/qs89Up/0cB4DtnbUHWzvtuudV74mrF+vx6Y29uzq2WZ33
pcq1d+LHDRoq+zAIAACwp9nDsBse4keL/qi86xWzYTd/bugOszHfa7dprzd66Mf5Cd2H4ftn6MTq
1PaLdt7w/NnwoZs/Xsf1cE7n3Abq6nRtthi3++pG3fR9qe7tvU6djxvwRE9hAADgZFz/4nxc5wLX
xdid61+clutlwOkIhQEAgNM5Zy30aeJ1z6tQh77rOhdnVbVrEdRBVdusqftS1do79eMGjSYUBgAA
Tuo8dfnVPY/O0/bLXOfi3M6/DdRPda7fsKy5+1J12ttxg2ZrxRoS5W0AAAAAABpOT2EAAAAAgIQI
hQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAh
QmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABI
iFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAA
EiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAA
gIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAA
ACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAAAABIiFAYAAAAACAhQmEAAAAAgIQIhQEAAAAAEiIUBgAA
AABIRgj/Bw3otitabs5YAAAAAElFTkSuQmCC

--_007_a740c86fff0a48e68c52764b8b200251tawazuntiae_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_007_a740c86fff0a48e68c52764b8b200251tawazuntiae_--

