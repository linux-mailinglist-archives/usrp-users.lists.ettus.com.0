Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C546B1EC17C
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jun 2020 19:59:46 +0200 (CEST)
Received: from [::1] (port=43550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgBCR-0005Dj-Ow; Tue, 02 Jun 2020 13:59:43 -0400
Received: from outgoing-exchange-5.mit.edu ([18.9.28.59]:56591)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ri28856@mit.edu>) id 1jgBCO-000553-3Q
 for usrp-users@lists.ettus.com; Tue, 02 Jun 2020 13:59:40 -0400
Received: from oc11exedge2.exchange.mit.edu (OC11EXEDGE2.EXCHANGE.MIT.EDU
 [18.9.3.18])
 by outgoing-exchange-5.mit.edu (8.14.7/8.12.4) with ESMTP id 052HwhJ8003625
 for <usrp-users@lists.ettus.com>; Tue, 2 Jun 2020 13:59:02 -0400
Received: from w92expo22.exchange.mit.edu (18.7.74.76) by
 oc11exedge2.exchange.mit.edu (18.9.3.18) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Tue, 2 Jun 2020 13:58:14 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92expo22.exchange.mit.edu (18.7.74.76) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 2 Jun 2020 13:58:32 -0400
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Tue, 2
 Jun 2020 13:58:32 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Sending multiple contiguous transmit requests
Thread-Index: AdY5BlYjAMDolqBIQFi4Z6D6y1DQSg==
Date: Tue, 2 Jun 2020 17:58:32 +0000
Message-ID: <dd15877785cc4cf6a2ef7d63106e7584@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: [USRP-users] Sending multiple contiguous transmit requests
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
From: Richard Joseph Muri via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Joseph Muri <ri28856@mit.edu>
Content-Type: multipart/mixed; boundary="===============3899542528318683352=="
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

--===============3899542528318683352==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dd15877785cc4cf6a2ef7d63106e7584oc11expo22exchangemited_"

--_000_dd15877785cc4cf6a2ef7d63106e7584oc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I've been having an issue with the USRP where I've found if I have a contin=
uous waveform segmented over multiple packets, it is difficult to transmit =
it on the USRP. The scenario is as follows:



I am using a USRP x310 with UHD version:

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105800; UHD_3.13.0.3-24-g00019176



Packet 1 has 100 samples. I do a send starting at time 0 with 100 samples. =
Packet 2 has 50 samples. I do a send starting at time 100 with 50 samples. =
Packet 2 is marked late and doesn't send properly.



Packet 1 has 100 samples. I do a send starting at time 0 with 100 samples. =
Packet 2 has 50 samples. I do a send starting at time 101 with 50 samples. =
Packet 2 sends properly, but now I have a sample delay inserted into the mi=
ddle of my waveform.



Packet 1 has 100 samples. I do a send starting at time 0 with 99 samples. P=
acket 2 has 50 samples. I do a send starting at time 101 with 50 samples. P=
acket 2 sends properly, but now I have a blank sample inserted into the mid=
dle of my waveform.



The obvious solution is to reassemble my fragmented packets before making a=
 tx_streamer->send() call. I'm wondering if there is a way to replicate the=
 behavior of a single large transmit request using multiple smaller transmi=
t requests?



Thank you,

Richard


--_000_dd15877785cc4cf6a2ef7d63106e7584oc11expo22exchangemited_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been having an issue with the USRP where =
I&#8217;ve found if I have a continuous waveform segmented over multiple pa=
ckets, it is difficult to transmit it on the USRP. The scenario is as follo=
ws:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using a USRP x310 with UHD version:<o:p></o:p><=
/p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20=
150623 (Red Hat 4.8.5-36); Boost_105800; UHD_3.13.0.3-24-g00019176<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 100 samples. Packet 2 has 50 samples. I do a send starting at tim=
e 100 with 50 samples. Packet 2 is marked late and doesn&#8217;t send prope=
rly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 100 samples. Packet 2 has 50 samples. I do a send starting at tim=
e 101 with 50 samples. Packet 2 sends properly, but now I have a sample del=
ay inserted into the middle of my
 waveform.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Packet 1 has 100 samples. I do a send starting at ti=
me 0 with 99 samples. Packet 2 has 50 samples. I do a send starting at time=
 101 with 50 samples. Packet 2 sends properly, but now I have a blank sampl=
e inserted into the middle of my waveform.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The obvious solution is to reassemble my fragmented =
packets before making a tx_streamer-&gt;send() call. I&#8217;m wondering if=
 there is a way to replicate the behavior of a single large transmit reques=
t using multiple smaller transmit requests?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
</div>
</body>
</html>

--_000_dd15877785cc4cf6a2ef7d63106e7584oc11expo22exchangemited_--


--===============3899542528318683352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3899542528318683352==--

