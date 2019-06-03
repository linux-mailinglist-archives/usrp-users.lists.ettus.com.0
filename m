Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5C3332D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jun 2019 17:11:34 +0200 (CEST)
Received: from [::1] (port=36312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hXocR-0001Y3-8r; Mon, 03 Jun 2019 11:11:27 -0400
Received: from az25dmzegs01.gd-ms.com ([63.226.32.82]:56897)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Kent.Torell@gd-ms.com>)
 id 1hXocN-0001Nb-QL
 for usrp-users@lists.ettus.com; Mon, 03 Jun 2019 11:11:23 -0400
Received: from unknown (HELO az25sec06.localdomain) ([10.240.16.97])
 by az25dmzegs01.gd-ms.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 08:10:42 -0700
Received: from AZDC-MMB02.GD-MS.US (azdc-mmb02.gd-ms.us [10.136.100.24])
 by az25sec06.localdomain (Postfix) with ESMTP id 55DF31140035;
 Mon,  3 Jun 2019 15:10:42 +0000 (UTC)
Received: from AZDC-MMB02.GD-MS.US (10.136.100.24) by AZDC-MMB02.GD-MS.US
 (10.136.100.24) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 3 Jun
 2019 08:10:41 -0700
Received: from AZDC-MMB02.GD-MS.US ([192.168.10.83]) by AZDC-MMB02.GD-MS.US
 ([192.168.10.83]) with mapi id 15.00.1473.004; Mon, 3 Jun 2019 08:10:41 -0700
To: Erik Heinz <erik.heinz@supracon.com>
Thread-Topic: B210: 1/f noise and LO offset
Thread-Index: AQHVGe2o6G7GMwRDgUSESoeIIPz61KaKBXyw
Date: Mon, 3 Jun 2019 15:10:40 +0000
Message-ID: <39b01a7fe7044608a7854ed5e35862f6@AZDC-MMB02.GD-MS.US>
References: <1559556373844.57413@supracon.com>
In-Reply-To: <1559556373844.57413@supracon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.136.100.111]
MIME-Version: 1.0
X-Content-Scanned: Fidelis Mail
Subject: Re: [USRP-users] B210: 1/f noise and LO offset
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
From: "Torell, Kent L via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Torell, Kent L" <Kent.Torell@gd-ms.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2691300078474454065=="
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

--===============2691300078474454065==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_39b01a7fe7044608a7854ed5e35862f6AZDCMMB02GDMSUS_"

--_000_39b01a7fe7044608a7854ed5e35862f6AZDCMMB02GDMSUS_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The phase noise comes from the B210 LO (RF synthesizer), and is present reg=
ardess of the frequency offset...you are misled by the log axis of the plot=
.

The close-in noise can be improved by using a high quality external 10 MHz =
source.  The control loop action of the synthesizer translates the referenc=
e phase noise to the LO phase noise.  You may have a lab standard available=
; or you could purchase a GPSDO version for the B210 (Ettus part 783454-01)=
.

If this doesn't meet your needs, you will need to shift the signal lower in=
 frequency with an external mixer and a high quality microwave synthesizer =
(e.g. $20K Rhode/Keysight/etc.) that has the phase noise you require.   The=
 B210 uses an Analog Devices AD9361 chip, which generates the RF local osci=
llator signal with a high frequency phase locked loop, then divides it down=
 to the requested frequency.  5 GHz is at the upper end of it's range, so t=
he division is small and the phase noise will be at it's highest.   Moving =
down several octaves will improve the phase noise, dropping 6 dB for every =
octave (e.g. 500 MHz would have 20 dB lower phase noise than 5 GHz).

Kent Torell

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Erik Hei=
nz via USRP-users
Sent: Monday, June 3, 2019 3:06 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] B210: 1/f noise and LO offset


Hello everyone,



preliminary remark: I am an physicist - so please excuse some possible know=
ledge gaps in radio engineering :-).



I would like to use a B210 to measure the IQ response of superconducting re=
sonators at about 5 GHz. This is done by feeding the resonators a signal fr=
om the transmitter with a frequency near the resonance, amplifying by LNAs,=
 coupling to the receiver, demodulating to base band, and recording the res=
ulting IQ signal. The signal bandwidth of interest will be small, in the kH=
z range.



Since noise of the resonators has to be measured as well, I first had a loo=
k at  the noise of the B210 output without an external signal. The result i=
s plotted in figure 1 (vertical axis is scaled to the output range of the A=
DC). It seems, below 100kHz the B210 receiver has strong 1/f noise. I would=
 guess this is hardware noise from the mixer. Anyone knows if this assumpti=
on is correct?



So I thought it would be a good idea to demodulate not directly to base ban=
d, but to an IF of may be 100 kHz and do the rest in software. I did a quic=
k test using gnu radio, feeding the output of the USRP source and a 100 kHz=
 signal to a multiplier. This indeed has the desired effect (figure 2, blue=
 curve vs. red curve).

If I understand the concept of the B210 local oscillators correctly, the sa=
me should be possible directly on the B210, using an LO offset of 100 kHz. =
The result, however, is completely different (figure 2, green curve).



Any ideas why? Thank you.



Best regards,

Erik



--_000_39b01a7fe7044608a7854ed5e35862f6AZDCMMB02GDMSUS_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The phase noise comes from the B210 L=
O (RF synthesizer), and is present regardess of the frequency offset&#8230;=
you are misled by the log axis of the plot.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The close-in noise can be improved by=
 using a high quality external 10 MHz source.&nbsp; The control loop action=
 of the synthesizer translates the reference phase
 noise to the LO phase noise.&nbsp; You may have a lab standard available; =
or you could purchase a GPSDO version for the B210 (Ettus part 783454-01).<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">If this doesn&#8217;t meet your needs=
, you will need to shift the signal lower in frequency with an external mix=
er and a high quality microwave synthesizer (e.g. $20K
 Rhode/Keysight/etc.) that has the phase noise you require.&nbsp;&nbsp; The=
 B210 uses an Analog Devices AD9361 chip, which generates the RF local osci=
llator signal with a high frequency phase locked loop, then divides it down=
 to the requested frequency.&nbsp; 5 GHz is at
 the upper end of it&#8217;s range, so the division is small and the phase =
noise will be at it&#8217;s highest.&nbsp;&nbsp; Moving down several octave=
s will improve the phase noise, dropping 6 dB for every octave (e.g. 500 MH=
z would have 20 dB lower phase noise than 5 GHz).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Kent Torell<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;usrp-users-boun=
ces@lists.ettus.com&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset<o:p></o:p></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
ello everyone,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">p=
reliminary remark: I am an physicist&nbsp;- so please excuse some possible =
knowledge gaps in radio engineering :-).<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 would like to use a B210 to measure the IQ response of superconducting res=
onators at about 5 GHz.&nbsp;This is done by feeding the resonators&nbsp;a =
signal from the transmitter with a frequency near the&nbsp;resonance,&nbsp;=
amplifying
 by LNAs, coupling to the receiver, demodulating to&nbsp;base band, and rec=
ording the&nbsp;resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
ince noise of the resonators has to be measured as well, I first had a look=
 at &nbsp;the&nbsp;noise&nbsp;of&nbsp;the B210 output without an external s=
ignal.&nbsp;The result&nbsp;is plotted in&nbsp;figure 1 (vertical axis is s=
caled
 to the output range of the ADC). It seems,&nbsp;below 100kHz the B210&nbsp=
;receiver&nbsp;has strong 1/f noise.&nbsp;I would guess this is hardware no=
ise from the mixer.&nbsp;Anyone knows if this&nbsp;assumption is correct?<o=
:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
o I thought it&nbsp;would&nbsp;be a&nbsp;good&nbsp;idea to&nbsp;demodulate =
not directly&nbsp;to base band, but to an&nbsp;IF of&nbsp;may be 100 kHz&nb=
sp;and&nbsp;do the rest in software.&nbsp;I did&nbsp;a&nbsp;quick test&nbsp=
;using&nbsp;gnu radio, feeding the&nbsp;output&nbsp;of
 the USRP source&nbsp;and a&nbsp;100 kHz signal&nbsp;to a multiplier. This =
indeed has the desired&nbsp;effect&nbsp;(figure 2, blue&nbsp;curve vs. red =
curve).&nbsp;
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
f I understand the concept of the B210 local oscillators correctly, the sam=
e should be possible directly on the B210, using an LO offset of 100 kHz.&n=
bsp;The result, however,&nbsp;is completely different&nbsp;(figure
 2,&nbsp;green curve).&nbsp;<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">A=
ny ideas why? Thank you.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">B=
est regards,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">E=
rik<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_39b01a7fe7044608a7854ed5e35862f6AZDCMMB02GDMSUS_--


--===============2691300078474454065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2691300078474454065==--

