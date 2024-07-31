Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DD5942B51
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 11:57:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B66003852C1
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 05:57:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722419826; bh=sRC2VxBNVFH/JQUtye5oRStU5+/w6lb6UFiYv5zZxow=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BYfew6j+jyvH+bjrUvE1X7zhidwD6Cx3yfIBfOfScqMdMsuceV/+iDId/wvF/3Q65
	 hu7xqkvws+VzQ4NdAaAM7YIk+6i0RUFD80Vw9xbYEFAJtyrn6yQ//dzJjDRbTTjVHQ
	 A3YP++52Ug+qSPSVXsSM2V13fLMycYETomdzppbleI1nOG/BjM8tq/J0E3ak5wVAZU
	 33DgLyw5nJsQtWyj9/MAsxUvvTU4QiIGRZI6KejzVCBViNIxM3/jKFk52LYqYVc5gn
	 cEO1byg3gp4Ki6yL7LBeSUNDaINB/zRV+7PfOR2iMaOr5X/+AqrSKZqvv8t9H7jq3p
	 EAPBcYvjtIoMg==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F0FDD384D7C
	for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2024 05:56:51 -0400 (EDT)
Received: from 172.16.0.105 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Wed, 31 Jul 2024 09:56:49 GMT
Received: from mxsrv2.fe.hhi.de (172.16.0.105) by mxsrv2.fe.hhi.de
 (172.16.0.105) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Wed, 31 Jul
 2024 11:56:48 +0200
Received: from mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317]) by
 mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317%6]) with mapi id 15.02.1544.011;
 Wed, 31 Jul 2024 11:56:48 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+A==
Date: Wed, 31 Jul 2024 09:56:48 +0000
Message-ID: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: OYTW4ALMIUJG5CBTSJUTNISSBLZSODTC
X-Message-ID-Hash: OYTW4ALMIUJG5CBTSJUTNISSBLZSODTC
X-MailFrom: altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYTW4ALMIUJG5CBTSJUTNISSBLZSODTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1291521906643645729=="

--===============1291521906643645729==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ec3aae17e9b346ec9ad87e62dc19f5abhhifraunhoferde_"

--_000_ec3aae17e9b346ec9ad87e62dc19f5abhhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP Mailing List Members,

I have two questions regarding power constraints of X440:


  1.  I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps.  I used an UHD example call=
ed "tx_waveforms" to verify the maximum output power. To compare the result=
s with the specification sheet, a constant ('CONST') wave of 500 MHz freque=
ncy with an amplitude of 1 is used. While expecting a single tone whose pow=
er is around -2 dBm (according to this graph given for 2.94912 GSps https:/=
/www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=
=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94=
912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency), it is ar=
ound -5 dBm. Does the output power vary that much between the converter rat=
es of 2.94912 GSps and 2.88 GSps?



  1.  I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10 dBm. This is further elaborated down to=
 the operational frequency in this webpage (https://www.ni.com/docs/de-DE/b=
undle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20pow=
er%2C%20damage%20level). On the other hand, in the loop back configuration,=
 >30dB attenuation between ports were recommended.


What is the difference between connecting the Tx port of one X440 to the Rx=
 port of another X440 and connecting Tx&Rx ports of different daughter boar=
ds of the same X440? Why does the maximum receiver power requirement change=
? The maximum one can transmit from a Tx port of X440 is 0 dBm. According t=
o my understanding, it should be safe to connect Tx and Rx ports (of either=
 same or different X440s) to each other as long as I am working with a cons=
tant waveform with a PAPR of 0 dB.

I am grateful for your time and effort. If anything is unclear and you are =
willing to help, I can provide further details.

Best regards,
Altug KAYA



--_000_ec3aae17e9b346ec9ad87e62dc19f5abhhifraunhoferde_
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
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:420183726;
	mso-list-type:hybrid;
	mso-list-template-ids:-1053519324 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
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
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have two questions regarding power constraints of =
X440:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps. &nbsp;I used an UHD example=
 called &#8220;tx_waveforms&#8221; to verify the maximum
 output power. To compare the results with the specification sheet, a const=
ant (&#8216;CONST&#8217;) wave of 500 MHz frequency with an amplitude of 1 =
is used. While expecting a single tone whose power is around -2 dBm (accord=
ing to this graph given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
), it is around -5 dBm.
<b>Does the output power vary that much between the converter rates of 2.94=
912 GSps and 2.88 GSps?</b><o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10
 dBm. This is further elaborated down to the operational frequency in this =
webpage (<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-sp=
ecs/page/specs.html#:~:text=3DMaximum%20input%20power%2C%20damage%20level">=
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DMaximum%20input%20power%2C%20damage%20level</a>).
 On the other hand, in the loop back configuration, &gt;30dB attenuation be=
tween ports were recommended.
<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>What is the difference=
 between connecting the Tx port of one X440 to the Rx port of another X440 =
and connecting Tx&amp;Rx ports of different daughter boards of the same X44=
0? Why does the maximum receiver power requirement
 change? </b>The maximum one can transmit from a Tx port of X440 is 0 dBm. =
According to my understanding, it should be safe to connect Tx and Rx ports=
 (of either same or different X440s) to each other as long as I am working =
with a constant waveform with a
 PAPR of 0 dB.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am grateful for your time and effort. If anything =
is unclear and you are willing to help, I can provide further details.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_ec3aae17e9b346ec9ad87e62dc19f5abhhifraunhoferde_--

--===============1291521906643645729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1291521906643645729==--
