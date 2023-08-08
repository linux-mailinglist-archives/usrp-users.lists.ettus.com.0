Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 044D37738CE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:04:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 546AE383F00
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 04:04:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691481846; bh=ErH1f+q2JAoyRkAltz7KzVQ0kM2pytUHTvvNMCIcANA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gBgZdGaX6/a0AfcEmbsIPe5CZqPerGvK+P7fKv6iY7lnKTpAelGJdnfqIJimQNY3q
	 kSZMwPbrsaBTTXoz2HDgI1JJzqgLdAp4qIaEWz8VRSrKjN9el0bg/ij5TMqKh5/41n
	 rvK7ZJw3mWl3778Cu+teWfICKFNezdCdM7q6GGtKVp/nkfbdiMSqFFZlA9cJzGG//n
	 /xgkys3Mzvr1rgSIJ7Sz1ZjYiF/w+sT7lgCSk271YCj6ysqgxFr7rILPxred8Sub4h
	 cFxfGXSkIvNNnidNLWxwgtlh8RVn9jwirw4xL4Xrk8gzedNyLsDM9dhfJIcqv07OrV
	 rhsJ/ewthg+nA==
Received: from mx-relay10-hz1.antispameurope.com (mx-relay10-hz1.antispameurope.com [94.100.132.210])
	by mm2.emwd.com (Postfix) with ESMTPS id CE1B8383EB2
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 04:03:50 -0400 (EDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by mx-relay10-hz1.antispameurope.com;
 Tue, 08 Aug 2023 10:03:48 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.171.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 2FB59C004A
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 10:03:40 +0200 (CEST)
Received: from mail05.iis.fhg.de (2001:638:a0a:1111::215) by mail06.iis.fhg.de
 (2001:638:a0a:1111::216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 8 Aug 2023
 10:03:39 +0200
Received: from mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec]) by
 mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec%6]) with mapi id 15.02.0986.042;
 Tue, 8 Aug 2023 10:03:39 +0200
From: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.3: RFNoC image builder "ModuleNotFoundError: No module
 named 'uhd'"
Thread-Index: AdnJzjuJgNXUX+++Q4ONQSrZC+SkZA==
Date: Tue, 8 Aug 2023 08:03:39 +0000
Message-ID: <000606bb86184761902823fdb9093d73@iis.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
X-cloud-security-sender: luca.bachmaier@iis.fraunhofer.de
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay10-hz1.antispameurope.com with 7801B1126640
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1, IP=153.96.172.4
X-cloud-security-Digest: 532997d1e8f2c5100f8525d2eab61b7b
X-cloud-security: scantime:4.943
Message-ID-Hash: UCYUUAZYW7ZAI6ZFFRE2TKQ667OBOJX3
X-Message-ID-Hash: UCYUUAZYW7ZAI6ZFFRE2TKQ667OBOJX3
X-MailFrom: prvs=0577bb9075=luca.bachmaier@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.3: RFNoC image builder "ModuleNotFoundError: No module named 'uhd'"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UCYUUAZYW7ZAI6ZFFRE2TKQ667OBOJX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2132129746716704013=="

--===============2132129746716704013==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_000606bb86184761902823fdb9093d73iisfraunhoferde_"

--_000_000606bb86184761902823fdb9093d73iisfraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I recently installed the UHD 4.3 over my package manager:
             sudo apt install libuhd-dev

When trying to start the RFNoC image builder, I get the following error:
             rfnoc_image_builder -F ~/dev/uhd/fpga -y ./n310_rfnoc_image_co=
re.yml -t N310_XG
Traceback (most recent call last):
                           File "/usr/bin/rfnoc_image_builder", line 29, in=
 <module>
                                         from uhd.imgbuilder import image_b=
uilder
ModuleNotFoundError: No module named 'uhd'

There seems to be a problem with the location of the UHD python module. uhd=
_config_info prints the following:
             UHD 4.3.0.0+ds1-5
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, =
Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, MPMD, SIM, N300, N320, E=
320,
E300, X400, OctoClock
Install prefix: /usr
Boost version: 1.74
Libusb version: 1.0.27
Library path: /lib/x86_64-linux-gnu
Package path: /lib

I already checked the PYTHONPATH variable, and tried looking for the module=
 myself manually. However, I am not able to find it. Looking for all folder=
s named "uhd" in my system with "sudo find / -name "uhd"" prints the follow=
ing:
./usr/share/uhd
./usr/include/uhd
./usr/libexec/uhd
./usr/lib/x86_64-linux-gnu/cmake/uhd

It seems like nothing is installed in .../python3/... or .../python3.11/...=
. The OS I use is Debian 12 with Python3.11. Could this be a problem? I wou=
ld be very happy to hear help.

Thank you and regards
Luca


--_000_000606bb86184761902823fdb9093d73iisfraunhoferde_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I recently installed the UHD 4.=
3 over my package manager:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sudo apt install libuhd-dev<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When trying to start the RFNoC =
image builder, I get the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rfnoc_image_builder -F ~/dev/uhd/=
fpga -y ./n310_rfnoc_image_core.yml -t N310_XG<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt;text-indent:35.4pt"><spa=
n lang=3D"EN-US">Traceback (most recent call last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; File &quot;/usr/bin/rfnoc_ima=
ge_builder&quot;, line 29, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from uhd.imgbuilder =
import image_builder<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt;text-indent:35.4pt"><spa=
n lang=3D"EN-US">ModuleNotFoundError: No module named 'uhd'<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There seems to be a problem wit=
h the location of the UHD python module. uhd_config_info prints the followi=
ng:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UHD 4.3.0.0&#43;ds1-5<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">En=
abled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, Ut=
ils, Tests, USB, B100, B200, USRP1, USRP2, X300, MPMD, SIM, N300, N320, E32=
0,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt;text-indent:35.4pt"><spa=
n lang=3D"EN-US">E300, X400, OctoClock<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US">In=
stall prefix: /usr<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US">Bo=
ost version: 1.74<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US">Li=
busb version: 1.0.27<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US">Li=
brary path: /lib/x86_64-linux-gnu<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US">Pa=
ckage path: /lib
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I already checked the PYTHONPAT=
H variable, and tried looking for the module myself manually. However, I am=
 not able to find it. Looking for all folders named &#8220;uhd&#8221; in my=
 system with &#8220;sudo find / -name &#8220;uhd&#8221;&#8221; prints the
 following:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">./usr/share/uhd<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">./usr/include/uhd<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">./usr/libexec/uhd<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">./usr/lib/x86_64-linux-gnu/cmak=
e/uhd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It seems like nothing is instal=
led in &#8230;/python3/&#8230; or &#8230;/python3.11/&#8230;. The OS I use =
is Debian 12 with Python3.11. Could this be a problem? I would be very happ=
y to hear help.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and regards<br>
Luca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_000606bb86184761902823fdb9093d73iisfraunhoferde_--

--===============2132129746716704013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2132129746716704013==--
