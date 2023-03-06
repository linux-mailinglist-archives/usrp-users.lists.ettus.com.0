Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7CC6ABA6B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 10:53:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D443A3853A3
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 04:53:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678096410; bh=B/uYT6LG/QKup44js3mamoINvOU3RO4mvJM/gO1Zv2Y=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=ZykxTJIjtGQOloHJWVe42hZ5feojpmFzuULhSDYlKG5IIOJL/hnVyPfJ6p7U0az34
	 N9+T/jkYj0bnj7af8pIfuJNE6ch5Vl1jKqT+KYeoOznL2XyqwkacdHVIqChT0dsHdl
	 ZZsvfLYGuV/1ex58fRiKg0iNxu5kkVCbImqeSpKs9hTsXRgW3ZOaPj3IysJQ4emLTn
	 tNhkZ+GUYkRtOPSozggh0fpo0MnUOrxOA1pqAz0cioF6oS6ucM7YW15Y3iWhV0oRWv
	 TGUaIaSO8ecbALS3F/4uxWAROLVeiDdS/A0XdwwztxusaG0iP21Xebd9aHqhvd6MKK
	 0h0HP/Jugv4Lg==
Received: from mo7.myeers.net (mo7.myeers.net [87.190.7.228])
	by mm2.emwd.com (Postfix) with ESMTPS id 78DA8385396
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 04:52:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="BzP6U26g";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=8189; q=dns/txt;
  s=eers-ng2048; t=1678096361; x=1709632361;
  h=from:to:subject:date:message-id:mime-version;
  bh=x2bQxn2TBCEt+SOkMX5lMuOlfFIYU8ho/N9oSBjVSD8=;
  b=BzP6U26gapxW8u78uOy3mXfKSdcfCe89g84YZNFCR+ZAo9IjL9WJXnSB
   fSmIYzdiVX3wjy+a7kM2laV4265JxGI+y1yEfacR5x80oEriQQN6GOSeP
   lgDQsO3E6f8trMNVwCZt755xz7+FQlgELdispLYEW4GU8vz4ioJvblxH0
   XWpjhps1EnFLQzKn0YJn8hMunV81jrx2qoaYWGrr7awiaLriqhtgk5NSm
   y8/c+kfx99fqOO8INg1JvnPkngcrgsCfnhavlod5YzdjUDITYlRufNemf
   jd9P3iEJ6RlvpAjcYqdXUu838RDeZVc5Isc+udSzJk+227zKDXuFl0EnX
   g==;
IronPort-SDR: 6wA3s3oeEouWleAhgBj93Rp3ADOZ6VnZASiistv027M9E7UB2cjW0i4PLkiZ1HqpGvdzwo7BT1
 ttGiie7UmPaw==
X-IronPort-AV: E=Sophos;i="5.98,236,1673910000";
   d="scan'208,217";a="51629750"
Received: from ec2-44-225-67-45.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P04.central.mail.corp) ([44.225.67.45])
  by de0-03iro-p15-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 06 Mar 2023 10:52:39 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P04.central.mail.corp (44.225.67.47) with Microsoft SMTP Server id
 15.0.1497.45; Mon, 6 Mar 2023 10:52:36 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:l8hGyq2mSWepw1rIPvbD5ZVwkn2cJEfYwER7XKvMYLTBsI5bpzdRm
 2EZDDyPbqqNMWLxKtl+PN6zoUsC7JDRy4A3S1RuqSg9HnlHl5HIVI+TRqvS04N+DSFioGZPt
 Zh2hgzodZhsJpPkjk7xdOKn9BGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYDR7zil5
 JWj86UzBHf/g2QvajlMtfrawP9SlK+aVA0w7wVWic9j7Ae2e0k9VPo3Oay3Jn3kdYhYdsbSq
 zHrlezREsvxpn/BO/v9+lrJWhRiro36ZGBivkFrt52K2XCukMCSPpETb5LwYW8P49mAt44pl
 IUV7fRcQy9xVkHHsLx1vxW1j0iSMIUekIIrL0RTvuSWyEbjWmX3n890HWsJIpAy1OBFAyJ3o
 KlwxDAlNnhvhsqt2Ki8T+hpndoqdJOtJ5sSvH58wCqfFu4vSp2rr6fivIcehW9qwJoXW62BD
 yYaQWIHgBDoZhRSIFYFCZV4h/uliHD5cntVuE6Yv6w+50DazRZ7zaOrO93QEjCPbZwNzhjC/
 zqWrgwVBDkRM+Wi+Cbb/0mxl8nOumDSVIkST4WRo6sCbFq7gzZ75ActfUagu+H8l1WzQcl3L
 00P5jFooLQu6VftRd74NyBUu1bd5lhFA4AWSbR8s17lJrfo3jt1z1MsFlZpAOHKfudvLdD2/
 jdlR+/UOAE=
IronPort-HdrOrdr: A9a23:8iHQ2akjlANCgEtFxvubZSaqjXjpDfOsimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7SdG9qADnhOVICOgqTPyftWzd1FdAQ7sSibcKrweAJ8S6zJ8l6U
 4CSdk1NDSTNykcsS+S2mDRfLgdKZu8gcaVbIzlvhRQpHRRGsRdBnBCe2Sm+yNNJDVuNN4cLt
 6x98BHrz2vdTA8dcKgHEQIWODFupniiI/mSQRuPW9q1CC+yReTrJLqGRmR2RkTFxlVx605zG
 TDmwvloo2+rvCAzAPG3WO71eUYpDKh8KoMOCW/sLlUFtzesHfqWG2nYczBgNkBmpDv1L/tqq
 iIn/5vBbU215qbRBDOnfKk4Xic7N9p0Q6u9bbQuwqdnST0KQhKd/ZplMZXdADU5FEnu8w52K
 VX33iBv54SFh/Ymj/hjuK4IS2COXDE0kbKvNRj+0C3a7FuH4N5vMga5gdYAZ0AFCX15MQuF/
 RvFtjV4LJTfUmBZ37Us2FzyJj0N05DViuuUwwHoIiYwjJWlHd2ww8Rw9EehG4J8NY4R4Nf7+
 rJP6x0nPVFT9MQb6h6GOAdKPHHQ1DlUFbJKiafMF7nHKYINzbErIP2+qw84KWwdJkB3PIJ6e
 H8uZNjxBwPkm7VeL2zNcdwg27wqU2GLEXQ9v0=
X-IronPort-AV: E=Sophos;i="5.98,236,1673910000";
   d="scan'208,217";a="108621089"
Received: from unknown (HELO spromimsva02.spengtes.space) ([10.102.21.37])
  by esa2e.demail.de.airbusds.corp with ESMTP; 06 Mar 2023 10:52:37 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 770FAE0040
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 04:39:55 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from spromimsva02.spengtes.space (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7A564E005C
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 04:39:46 +0100 (CET)
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by spromimsva02.spengtes.space (Postfix) with ESMTPS
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 04:39:46 +0100 (CET)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Mon,
 6 Mar 2023 10:52:52 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: x310 FW error
Thread-Index: AdlQEMhCJBIJHiF8T9qPkZ/EhtOgqw==
Date: Mon, 6 Mar 2023 09:52:46 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D62901B4EFF012@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--23.416900-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-GM-Security: forwarded
Message-ID-Hash: L5Z5WCHWSUXVVOFMLWYE52O2WEBTGEH7
X-Message-ID-Hash: L5Z5WCHWSUXVVOFMLWYE52O2WEBTGEH7
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 FW error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L5Z5WCHWSUXVVOFMLWYE52O2WEBTGEH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============5067041468647729023=="

--===============5067041468647729023==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFF012SPROMMAIL03sp_"

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFF012SPROMMAIL03sp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI, I am trying to issue the following command:

mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 =
--tx_rate 10e6
but the answer is a runtime errot due to wrong fpga release,
unfortunately I am not sure that the FW and FPGA inside the unit was not mo=
dified in the past.
Cpuld you suggest if I have to update the FW or there is a work-around to g=
o ahead?
In the following the complete display answer


mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 =
--tx_rate 10e6
[INFO] [UHD]
linux; GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build1
[WARNING] [UHD] Unable to set the thread priority. Performance may be negat=
ively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
[00:00:00.000006] Creating the usrp device with: ...
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 36, but got 33:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.10.2"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
mau@mau-Vostro-3500:/usr/lib/uhd/examples$

thank you in advance

Maurizio Stefani
The information in this e-mail is confidential. The contents may not be dis=
closed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
If you are not the intended recipient, please notify Airbus immediately and=
 delete this e-mail.
Airbus cannot accept any responsibility for the accuracy or completeness of=
 this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please =
contact Airbus immediately.
All outgoing e-mails from Airbus are checked using regularly updated virus =
scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free.

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFF012SPROMMAIL03sp_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI, I am trying to issue the fo=
llowing command:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:/usr/lib/uh=
d/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">but the answer is a runtime err=
ot due to wrong fpga release,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">unfortunately I am not sure tha=
t the FW and FPGA inside the unit was not modified in the past.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cpuld you suggest if I have to =
update the FW or there is a work-around to go ahead?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the following the complete d=
isplay answer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 =
--tx_rate 10e6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] <br>
linux; GNU C&#43;&#43; version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-=
4build1<br>
[WARNING] [UHD] Unable to set the thread priority. Performance may be negat=
ively affected.<br>
Please see the general application notes in the manual for instructions.<br>
EnvironmentError: OSError: error in pthread_setschedparam<br>
[00:00:00.000006] Creating the usrp device with: ...<br>
[INFO] [X300] X300 initialization sequence...<br>
Error: RuntimeError: Expected FPGA compatibility number 36, but got 33:<br>
The FPGA image on your device is not compatible with this host code build.<=
br>
Download the appropriate FPGA images for this version of UHD.<br>
Please run:<br>
<br>
&nbsp;&quot;/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<=
br>
<br>
Then burn a new image to the on-board flash storage of your<br>
USRP X3xx device using the image loader utility. Use this command:<br>
<br>
&quot;/lib/bin/uhd_image_loader&quot; --args=3D&quot;type=3Dx300,addr=3D192=
.168.10.2&quot;<br>
<br>
For more information, refer to the UHD manual:<br>
<br>
&nbsp;</span><a href=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x=
3x0_flash"><span lang=3D"EN-US">http://files.ettus.com/manual/page_usrp_x3x=
0.html#x3x0_flash</span></a><span lang=3D"EN-US"><br>
mau@mau-Vostro-3500:/usr/lib/uhd/examples$ <br>
<br>
thank you in advance<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<o:p></o:p></sp=
an></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confident=
ial. The contents may not be disclosed or used by anyone other than the add=
ressee. Access to this e-mail by anyone else is unauthorised.<br>If you are=
 not the intended recipient, please notify Airbus immediately and delete th=
is e-mail.<br>Airbus cannot accept any responsibility for the accuracy or c=
ompleteness of this e-mail as it has been sent over public networks. If you=
 have any concerns over the content of this message or its Accuracy or Inte=
grity, please contact Airbus immediately.<br>All outgoing e-mails from Airb=
us are checked using regularly updated virus scanning software but you shou=
ld take whatever measures you deem to be appropriate to ensure that this me=
ssage and any attachments are virus free.</font></body>
</html>

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFF012SPROMMAIL03sp_--

--===============5067041468647729023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5067041468647729023==--
