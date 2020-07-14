Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F1121FD5E
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 21:30:08 +0200 (CEST)
Received: from [::1] (port=53046 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvQct-0000Qh-Ur; Tue, 14 Jul 2020 15:30:03 -0400
Received: from outgoing-exchange-1.mit.edu ([18.9.28.15]:49154)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ri28856@mit.edu>) id 1jvQcq-0000M9-Lu
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 15:30:00 -0400
Received: from oc11exedge1.exchange.mit.edu (OC11EXEDGE1.EXCHANGE.MIT.EDU
 [18.9.3.17])
 by outgoing-exchange-1.mit.edu (8.14.7/8.12.4) with ESMTP id 06EJRsei006095
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 15:28:10 -0400
Received: from w92expo22.exchange.mit.edu (18.7.74.76) by
 oc11exedge1.exchange.mit.edu (18.9.3.17) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Tue, 14 Jul 2020 15:29:02 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92expo22.exchange.mit.edu (18.7.74.76) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 14 Jul 2020 15:29:05 -0400
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Tue,
 14 Jul 2020 15:29:05 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Considerations on resampling inside USRP firmware
Thread-Index: AdZaBQ1BAKDWJBSmRK+zzp93R7rVLg==
Date: Tue, 14 Jul 2020 19:29:05 +0000
Message-ID: <d70f86d3b07e44cdbe0b0b32c9e4fae2@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: [USRP-users] Considerations on resampling inside USRP firmware
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
From: "Richard J. Muri via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Richard J. Muri" <ri28856@mit.edu>
Content-Type: multipart/mixed; boundary="===============8523778867295569732=="
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

--===============8523778867295569732==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d70f86d3b07e44cdbe0b0b32c9e4fae2oc11expo22exchangemited_"

--_000_d70f86d3b07e44cdbe0b0b32c9e4fae2oc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I'm working on a project using x310s where different stakeholders desire di=
fferent sampling rates, some of which are not natively support by the x310.=
 One stakeholder wants to put a fractional resampling filter at the ingress=
 and egress of the FPGA inside the USRP.



For instance, I may be running the USRP at 50 MHz sampling rate. I have an =
application that requires a 40 MHz sampling rate. I want to send 1000 sampl=
es (from my application perspective) loopbacked from TX/RX to RX2. Does it =
make sense to put a 5/4  upsampler on the transmit chain inside the FPGA, a=
nd then a 4/5 downsampler on the receive? I'm hoping that if I use the soft=
ware I have already written as before, the scenario plays out as follows:



1.       Initialize the USRP to a 50 MHz sampling rate.

2.       Set md.time_spec using a clock domain agnostic method (e.g. set it=
 using integer seconds, double fractional seconds).

3.       Call tx_streamer->send(txbuffer, 1000 samples, md, 0 timeout) in m=
y TX thread.

4.       Call rx_streamer->recv(rxbuffer, 1000 samples, md, 0 timeout) in m=
y RX thread.

5.       The 1000 sample TX packet hits the upsampler, gets converted to 12=
50 samples.

6.       The USRP works as normal and puts the 1250 samples through the ful=
l TX/RX chain, at the time specified in the metadata timespec (rounded to w=
hatever nearest tick count can actually be represented by the 20 ns clock p=
eriod)

7.       The 1250 sample receive hits the downsampler, gets converted to 10=
00 samples.

8.       My software gets 1000 samples into rxbuffer



I'm not terribly familiar with the internal workings of the Verilog firmwar=
e. Are there issues I may be missing? Does the custom firmware need to inte=
rcept the CHDR and change the 1000 samples to 1250, or is the 1000 only use=
d by software for the network communication?



Thank you,

Richard


--_000_d70f86d3b07e44cdbe0b0b32c9e4fae2oc11expo22exchangemited_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
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
/* List Definitions */
@list l0
	{mso-list-id:1382436791;
	mso-list-type:hybrid;
	mso-list-template-ids:1084364802 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working on a project using x310s where dif=
ferent stakeholders desire different sampling rates, some of which are not =
natively support by the x310. One stakeholder wants to put a fractional res=
ampling filter at the ingress and egress
 of the FPGA inside the USRP. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For instance, I may be running the USRP at 50 MHz sa=
mpling rate. I have an application that requires a 40 MHz sampling rate. I =
want to send 1000 samples (from my application perspective) loopbacked from=
 TX/RX to RX2. Does it make sense
 to put a 5/4&nbsp; upsampler on the transmit chain inside the FPGA, and th=
en a 4/5 downsampler on the receive? I&#8217;m hoping that if I use the sof=
tware I have already written as before, the scenario plays out as follows:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Initialize the USRP to a 50 MHz sampling rate.<o:p>=
</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Set md.time_spec using a clock domain agnostic meth=
od (e.g. set it using integer seconds, double fractional seconds).
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Call tx_streamer-&gt;send(txbuffer, 1000 samples, m=
d, 0 timeout) in my TX thread.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">4.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Call rx_streamer-&gt;recv(rxbuffer, 1000 samples, m=
d, 0 timeout) in my RX thread.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">5.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>The 1000 sample TX packet hits the upsampler, gets =
converted to 1250 samples.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">6.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>The USRP works as normal and puts the 1250 samples =
through the full TX/RX chain, at the time specified in the metadata timespe=
c (rounded to whatever nearest tick count can actually be represented by th=
e 20 ns clock period)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">7.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>The 1250 sample receive hits the downsampler, gets =
converted to 1000 samples.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">8.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>My software gets 1000 samples into rxbuffer<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m not terribly familiar with the internal wo=
rkings of the Verilog firmware. Are there issues I may be missing? Does the=
 custom firmware need to intercept the CHDR and change the 1000 samples to =
1250, or is the 1000 only used by software
 for the network communication?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
</div>
</body>
</html>

--_000_d70f86d3b07e44cdbe0b0b32c9e4fae2oc11expo22exchangemited_--


--===============8523778867295569732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8523778867295569732==--

