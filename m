Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DF21ED629
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2020 20:32:57 +0200 (CEST)
Received: from [::1] (port=53900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgYC5-0006K3-1f; Wed, 03 Jun 2020 14:32:53 -0400
Received: from outgoing-exchange-7.mit.edu ([18.9.28.58]:45039)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ri28856@mit.edu>) id 1jgYC1-00066e-G2
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 14:32:49 -0400
Received: from oc11exedge2.exchange.mit.edu (OC11EXEDGE2.EXCHANGE.MIT.EDU
 [18.9.3.18])
 by outgoing-exchange-7.mit.edu (8.14.7/8.12.4) with ESMTP id 053IV1UB008148
 for <usrp-users@lists.ettus.com>; Wed, 3 Jun 2020 14:31:14 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11exedge2.exchange.mit.edu (18.9.3.18) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Wed, 3 Jun 2020 14:31:31 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Wed, 3 Jun 2020 14:31:50 -0400
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Wed, 3
 Jun 2020 14:31:50 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Sending multiple contiguous transmit requests
Thread-Index: AdY5BlYjAMDolqBIQFi4Z6D6y1DQSgAzmJSg
Date: Wed, 3 Jun 2020 18:31:50 +0000
Message-ID: <aed50f6cb7d24edc9fc6083ac12efbdd@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: Re: [USRP-users] Sending multiple contiguous transmit requests
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
Content-Type: multipart/mixed; boundary="===============6800230673647345056=="
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

--===============6800230673647345056==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_aed50f6cb7d24edc9fc6083ac12efbddoc11expo22exchangemited_"

--_000_aed50f6cb7d24edc9fc6083ac12efbddoc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For posterity here is a solution I arrived at.



I was ignoring the md.start_of_burst and md.end_of_burst fields. In order t=
o send many contiguous transmit requests without receiving erroneous late e=
rrors, send the first transmit request in a chain with md.has_time_spec tru=
e, md.start_of_burst true. Send middle packets in a chain with md.has_time_=
spec false and SOB/EOB false. Send the final packet with has_time_spec fals=
e, and EOB true.



From: Richard Joseph Muri
Sent: Tuesday, June 2, 2020 1:59 PM
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: Sending multiple contiguous transmit requests



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


--_000_aed50f6cb7d24edc9fc6083ac12efbddoc11expo22exchangemited_
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">For posterity here is =
a solution I arrived at.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I was ignoring the md.=
start_of_burst and md.end_of_burst fields. In order to send many contiguous=
 transmit requests without receiving erroneous late errors, send the first =
transmit request in a chain with md.has_time_spec
 true, md.start_of_burst true. Send middle packets in a chain with md.has_t=
ime_spec false and SOB/EOB false. Send the final packet with has_time_spec =
false, and EOB true.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Richard Joseph Muri <br>
<b>Sent:</b> Tuesday, June 2, 2020 1:59 PM<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> Sending multiple contiguous transmit requests<o:p></o:p></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_aed50f6cb7d24edc9fc6083ac12efbddoc11expo22exchangemited_--


--===============6800230673647345056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6800230673647345056==--

