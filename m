Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA7FEB31F
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2019 15:49:36 +0100 (CET)
Received: from [::1] (port=46978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQBlT-0005J4-Ht; Thu, 31 Oct 2019 10:49:31 -0400
Received: from 93-63-88-25.ip27.fastwebnet.it ([93.63.88.25]:63078
 helo=exchange.iptronix.local)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <dario@iptronix.com>) id 1iQBlQ-00058u-H1
 for usrp-users@lists.ettus.com; Thu, 31 Oct 2019 10:49:28 -0400
Received: from exchange.iptronix.local (192.168.1.30) by
 exchange.iptronix.local (192.168.1.30) with Microsoft SMTP Server (TLS) id
 15.0.1347.2; Thu, 31 Oct 2019 15:48:35 +0100
Received: from exchange.iptronix.local ([::1]) by exchange.iptronix.local
 ([::1]) with mapi id 15.00.1347.000; Thu, 31 Oct 2019 15:48:29 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: clarifications on x300_core.v
Thread-Index: AdWP+dVNUA8JFBWqSHuAeYtYckCp4A==
Date: Thu, 31 Oct 2019 14:48:28 +0000
Message-ID: <3c66f25c0c07455a937f740ccd8584b7@exchange.iptronix.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.40]
MIME-Version: 1.0
Subject: [USRP-users] clarifications on x300_core.v
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
Content-Type: multipart/mixed; boundary="===============8137204847402944786=="
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

--===============8137204847402944786==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3c66f25c0c07455a937f740ccd8584b7exchangeiptronixlocal_"

--_000_3c66f25c0c07455a937f740ccd8584b7exchangeiptronixlocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
looking at the generated code from the uhd_image_builder.py it declares ce_=
clk and ce_rst and assigns them to radio_clk and radio_rst. Actually this f=
ile is included within x300_core.v which already has the same signals as in=
put ports and which are externally connected in x300.v to a different clock=
 (at 214MHz).
do I understand correctly that the assignments are ignored and that the sig=
nals stay at 214MHz rather than the 200 MHz of the radio_clk?
Is there any reason why the builder script adds those declarations/assignme=
nts?
Thanks,

Dario Pennisi


--_000_3c66f25c0c07455a937f740ccd8584b7exchangeiptronixlocal_
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
<p class=3D"MsoNormal"><span lang=3D"IT">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal">looking at the generated code from the uhd_image_bui=
lder.py it declares ce_clk and ce_rst and assigns them to radio_clk and rad=
io_rst. Actually this file is included within x300_core.v which already has=
 the same signals as input ports and
 which are externally connected in x300.v to a different clock (at 214MHz).=
 <o:p>
</o:p></p>
<p class=3D"MsoNormal">do I understand correctly that the assignments are i=
gnored and that the signals stay at 214MHz rather than the 200 MHz of the r=
adio_clk?<o:p></o:p></p>
<p class=3D"MsoNormal">Is there any reason why the builder script adds thos=
e declarations/assignments?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-GB">Dario Pennisi</span><span style=3D"color:#1F497D;mso-fareast-language:=
IT"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3c66f25c0c07455a937f740ccd8584b7exchangeiptronixlocal_--


--===============8137204847402944786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8137204847402944786==--

