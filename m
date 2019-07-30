Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D50997B01A
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 19:32:55 +0200 (CEST)
Received: from [::1] (port=40498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsVza-0007rx-5L; Tue, 30 Jul 2019 13:32:54 -0400
Received: from 93-63-88-25.ip27.fastwebnet.it ([93.63.88.25]:64112
 helo=exchange.iptronix.local)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <dario@iptronix.com>) id 1hsVzW-0007gJ-0u
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 13:32:50 -0400
Received: from exchange.iptronix.local (192.168.1.30) by
 exchange.iptronix.local (192.168.1.30) with Microsoft SMTP Server (TLS) id
 15.0.1347.2; Tue, 30 Jul 2019 19:31:50 +0200
Received: from exchange.iptronix.local ([::1]) by exchange.iptronix.local
 ([::1]) with mapi id 15.00.1347.000; Tue, 30 Jul 2019 19:31:50 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: memory leak with basic block
Thread-Index: AQHVRsg1AbZmZaH/lUe+lQ2X1DmM9qbjannNgAAAlrA=
Date: Tue, 30 Jul 2019 17:31:50 +0000
Message-ID: <15fd27e0cfe84dbcb9a3655d28a4bfb8@exchange.iptronix.local>
References: <1564485856531.62123@iptronix.com>
 <1564507637546.78309@iptronix.com>
In-Reply-To: <1564507637546.78309@iptronix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.40]
MIME-Version: 1.0
Subject: [USRP-users] FW: memory leak with basic block
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
From: Dario Pennisi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Pennisi <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============3487293382875583876=="
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

--===============3487293382875583876==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_15fd27e0cfe84dbcb9a3655d28a4bfb8exchangeiptronixlocal_"

--_000_15fd27e0cfe84dbcb9a3655d28a4bfb8exchangeiptronixlocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

we are designing a block that receives multiple streams of bursts of data a=
nd produces in return other bursts of data. there is no correlation on the =
amount of data at the input and at the output and it's not possible to tell=
 in advance how much data it will be arriving. Initially we were thinking t=
his was a gnuradio issue but tested the block with gnuradio blocks only and=
 it works whereas when this is connected to a rfnoc block it produces memor=
y leaks.

the input stream is tagged with rx_eob as it consists in variable length pa=
ckets each of which is tag terminated



we are seeing a number of odd behaviours:

1) sometimes the general_work will receive, at the end of the buffer, an in=
complete packet. the issue with this is that the packet that has been broke=
n in two pieces ends up having a rx_eob tag at the interruption point, thus=
 splitting it effectively in two packets

2) if we don't consume all the input data immediately in a call to general_=
work we correctly see data we left being resent with next buffer however we=
 see a memory leak

3) if we consume ninput_items passed to general_work for each stream we see=
 memory leak. odd enough memory leak does not show up if we consume noutput=
_items which may be bigger than ninput_items

4) if we produce less than noutput_items by calling the produce function an=
d returning WORK_CALLED_PRODUCE we see a memory leak



we are currently using Release 3.7.13.3 (git hash 3fef6dc5d9174c172f75d97b0=
e332171b5a53f18).



Basically it looks like whenever we tell the streamer we used less data it =
provided at input or filled in less data it expects at output there will be=
 a memory leak.



any help on this would be greatly appreciated...

thanks,

Dario Pennisi

--_000_15fd27e0cfe84dbcb9a3655d28a4bfb8exchangeiptronixlocal_
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
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
Hi,<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
we are designing a block that receives multiple streams of bursts of data a=
nd produces in return other bursts of data. there is no correlation on the =
amount of data at the input and at the
 output and it's not possible to tell in advance how much data it will be a=
rriving. Initially we were thinking this was a gnuradio issue but tested th=
e block with gnuradio blocks only and it works whereas when this is connect=
ed to a rfnoc block it produces
 memory leaks.<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
the input stream is tagged with rx_eob as it consists in variable length pa=
ckets each of which is tag terminated<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
we are seeing a number of odd behaviours:<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
1) sometimes the general_work will receive, at the end of the buffer, an in=
complete packet. the issue with this is that the packet that has been broke=
n in two pieces ends up having a rx_eob
 tag at the interruption point, thus splitting it effectively in two packet=
s<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
2) if we don't consume all the input data immediately in a call to general_=
work we correctly see data we left being resent with next buffer however we=
 see a memory leak<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
3) if we consume ninput_items passed to general_work for each stream we see=
 memory leak. odd enough memory leak does not show up if we consume noutput=
_items which may be bigger than ninput_items<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
4) if we produce less than noutput_items by calling the produce function an=
d returning WORK_CALLED_PRODUCE we see a memory leak<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
we are currently using Release 3.7.13.3 (git hash 3fef6dc5d9174c172f75d97b0=
e332171b5a53f18).<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
Basically it looks like whenever we tell the streamer we used less data it =
provided at input or filled in less data it expects at output there will be=
 a memory leak.<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
any help on this would be greatly appreciated...
<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-size:12.0pt;color:black">=
thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"IT"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"IT" style=3D"color:#1F497D;mso-fareast=
-language:EN-GB">Dario Pennisi</span><span lang=3D"IT" style=3D"color:#1F49=
7D;mso-fareast-language:IT"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_15fd27e0cfe84dbcb9a3655d28a4bfb8exchangeiptronixlocal_--


--===============3487293382875583876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3487293382875583876==--

