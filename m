Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6C34CC4
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 18:01:31 +0200 (CEST)
Received: from [::1] (port=32896 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYBsK-0005NU-GO; Tue, 04 Jun 2019 12:01:24 -0400
Received: from relay3.gtri.gatech.edu ([130.207.199.162]:55955)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <daniel.lundberg@gtri.gatech.edu>)
 id 1hYBrd-0000W2-7O
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 12:00:41 -0400
X-ASG-Debug-ID: 1559663999-0768e4144ba4c160001-5wTQH4
Received: from hatteras.core.gtri.org (hatteras.core.gtri.org [10.41.22.72])
 by relay3.gtri.gatech.edu with ESMTP id TdceE4DDh4haIwmi (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO) for
 <usrp-users@lists.ettus.com>; Tue, 04 Jun 2019 11:59:59 -0400 (EDT)
X-Barracuda-Envelope-From: daniel.lundberg@gtri.gatech.edu
Received: from kiawah.core.gtri.org (10.41.31.71) by hatteras.core.gtri.org
 (10.41.22.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 11:59:59 -0400
Received: from kiawah.core.gtri.org (10.41.31.71) by kiawah.core.gtri.org
 (10.41.31.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 11:59:58 -0400
Received: from kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f]) by
 kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f%15]) with mapi id
 15.01.1713.004; Tue, 4 Jun 2019 11:59:58 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210: 1/f noise and LO offset
X-ASG-Orig-Subj: RE: B210: 1/f noise and LO offset
Thread-Index: AQHVGe2o6G7GMwRDgUSESoeIIPz61KaKBXywgAF5JJuAACoCQA==
Date: Tue, 4 Jun 2019 15:59:58 +0000
Message-ID: <48d4ab5aa4e04bb589fc9eb420591be8@gtri.gatech.edu>
References: <1559556373844.57413@supracon.com>,
 <39b01a7fe7044608a7854ed5e35862f6@AZDC-MMB02.GD-MS.US>
 <1559657423781.54078@supracon.com>
In-Reply-To: <1559657423781.54078@supracon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
X-Barracuda-Connect: hatteras.core.gtri.org[10.41.22.72]
X-Barracuda-Start-Time: 1559663999
X-Barracuda-Encrypted: ECDHE-RSA-AES128-SHA256
X-Barracuda-URL: https://130.207.199.162:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at gtri.gatech.edu
X-Barracuda-Scan-Msg-Size: 22763
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.72244
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
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
From: "Lundberg, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2170719831446871358=="
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

--===============2170719831446871358==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_48d4ab5aa4e04bb589fc9eb420591be8gtrigatechedu_"

--_000_48d4ab5aa4e04bb589fc9eb420591be8gtrigatechedu_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Just a couple of sanity checks on this...You have to make sure that

1)      You don't already have a GPSDO installed on your B210.  If you do, =
the external reference won't make it in.

2)      Assuming you don't have the GPSDO, you have to tell the B210 to use=
 the external reference instead of its own.

Also, from past experience, I have found that avoiding an LO offset that is=
 an integer multiple of the sampling rate will avoid some pretty bad spurs.=
  I think these are integer boundary spurs in the PLL.

Dan Lundberg

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Erik Hei=
nz via USRP-users
Sent: Tuesday, June 4, 2019 10:10 AM
To: Torell, Kent L <Kent.Torell@gd-ms.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B210: 1/f noise and LO offset


Thank you for the explanation.

I tried using an external reference clock (HP 58503A). Unexpectedly, this m=
ade no difference at all. The noise is still exactly the same.



Erik Heinz


--
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80
Handelsregister:  Amtsgericht Gera HRB  208970
Umsatzsteuer-Id.:  DE 216 111 685

Kaufm. Vorstand:       Matthias Meyer
Vorsitz Aufsichtsrat:  Prof. Dr. Michael Siegel
________________________________
Von: Torell, Kent L <Kent.Torell@gd-ms.com<mailto:Kent.Torell@gd-ms.com>>
Gesendet: Montag, 3. Juni 2019 17:10
An: Erik Heinz
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Betreff: RE: B210: 1/f noise and LO offset

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

From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> On Behalf Of Erik Heinz via USRP-users
Sent: Monday, June 3, 2019 3:06 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
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



--_000_48d4ab5aa4e04bb589fc9eb420591be8gtrigatechedu_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:JA;}
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
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:JA;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
p.msonormal00, li.msonormal00, div.msonormal00
	{mso-style-name:msonormal0;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:JA;}
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{mso-style-name:msochpdefault;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"MS PGothic",sans-serif;
	mso-fareast-language:JA;}
span.emailstyle19
	{mso-style-name:emailstyle19;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
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
/* List Definitions */
@list l0
	{mso-list-id:1603223428;
	mso-list-type:hybrid;
	mso-list-template-ids:1608169884 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Just a cou=
ple of sanity checks on this&#8230;You have to make sure that
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><spa=
n style=3D"mso-list:Ignore">1)<span style=3D"font:7.0pt &quot;Times New Rom=
an&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Yo=
u don&#8217;t already have a GPSDO installed on your B210.&nbsp; If you do,=
 the external reference won&#8217;t make it in.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><spa=
n style=3D"mso-list:Ignore">2)<span style=3D"font:7.0pt &quot;Times New Rom=
an&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">As=
suming you don&#8217;t have the GPSDO, you have to tell the B210 to use the=
 external reference instead of its own.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Also, from=
 past experience, I have found that avoiding an LO offset that is an intege=
r multiple of the sampling rate will avoid some
 pretty bad spurs.&nbsp; I think these are integer boundary spurs in the PL=
L.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Dan Lundbe=
rg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;usrp-users-boun=
ces@lists.ettus.com&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Tuesday, June 4, 2019 10:10 AM<br>
<b>To:</b> Torell, Kent L &lt;Kent.Torell@gd-ms.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] B210: 1/f noise and LO offset<o:p></o:p></=
span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hank you for the explanation.
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 tried using an external reference clock (HP 58503A). Unexpectedly, this ma=
de no difference at all. The noise is still exactly the same.
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">E=
rik Heinz<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black">--
<br>
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80<br>
Supracon AG<br>
Dr. Erik Heinz<br>
An der Lehmgrube 11<br>
07751 Jena<br>
Tel.: &#43;49 3641 2328-165<br>
Fax: &#43;49 3641 2328-109<br>
Internet: <a href=3D"http://www.supracon.com">http://www.supracon.com</a><b=
r>
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80<br>
Handelsregister:&nbsp; Amtsgericht Gera HRB&nbsp; 208970<br>
Umsatzsteuer-Id.:&nbsp; DE 216 111 685<br>
<br>
Kaufm. Vorstand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matthias Meyer<br>
Vorsitz Aufsichtsrat:&nbsp; Prof. Dr. Michael Siegel<o:p></o:p></span></p>
</div>
</div>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#212121">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">Von:</span></b><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Torell,=
 Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com">Kent.Torell@gd-ms.com<=
/a>&gt;<br>
<b>Gesendet:</b> Montag, 3. Juni 2019 17:10<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Betreff:</b> RE: B210: 1/f noise and LO offset</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif;color:#212121">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:#212121">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The phase noise comes from the B210 L=
O (RF synthesizer), and is present regardess of the frequency offset&#8230;=
you are misled by the log axis of the plot.</span><span style=3D"color:#212=
121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span style=3D"color:#21=
2121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The close-in noise can be improved by=
 using a high quality external 10 MHz source.&nbsp; The control loop action=
 of the synthesizer translates the reference phase
 noise to the LO phase noise.&nbsp; You may have a lab standard available; =
or you could purchase a GPSDO version for the B210 (Ettus part 783454-01).<=
/span><span style=3D"color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span style=3D"color:#21=
2121"><o:p></o:p></span></p>
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
z would have 20 dB lower phase noise than 5 GHz).</span><span style=3D"colo=
r:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span style=3D"color:#21=
2121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Kent Torell</span><span style=3D"colo=
r:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span style=3D"color:#21=
2121"><o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#212121">From:</span></b><span style=3D"fon=
t-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#212121"> US=
RP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com">usrp-use=
rs-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset</span><span styl=
e=3D"color:#212121"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#212121">&nbsp;<o:p></o:p></spa=
n></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
ello everyone,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-se=
rif;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">p=
reliminary remark: I am an physicist&nbsp;- so please excuse some possible =
knowledge gaps in radio engineering :-).</span><span style=3D"font-family:&=
quot;Calibri&quot;,sans-serif;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 would like to use a B210 to measure the IQ response of superconducting res=
onators at about 5 GHz.&nbsp;This is done by feeding the resonators&nbsp;a =
signal from the transmitter with a frequency near the&nbsp;resonance,&nbsp;=
amplifying
 by LNAs, coupling to the receiver, demodulating to&nbsp;base band, and rec=
ording the&nbsp;resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.</span><span style=3D"font-family:&quot;Calibri&=
quot;,sans-serif;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
ince noise of the resonators has to be measured as well, I first had a look=
 at &nbsp;the&nbsp;noise&nbsp;of&nbsp;the B210 output without an external s=
ignal.&nbsp;The result&nbsp;is plotted in&nbsp;figure 1 (vertical axis is s=
caled
 to the output range of the ADC). It seems,&nbsp;below 100kHz the B210&nbsp=
;receiver&nbsp;has strong 1/f noise.&nbsp;I would guess this is hardware no=
ise from the mixer.&nbsp;Anyone knows if this&nbsp;assumption is correct?</=
span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#21212=
1"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
o I thought it&nbsp;would&nbsp;be a&nbsp;good&nbsp;idea to&nbsp;demodulate =
not directly&nbsp;to base band, but to an&nbsp;IF of&nbsp;may be 100 kHz&nb=
sp;and&nbsp;do the rest in software.&nbsp;I did&nbsp;a&nbsp;quick test&nbsp=
;using&nbsp;gnu radio, feeding the&nbsp;output&nbsp;of
 the USRP source&nbsp;and a&nbsp;100 kHz signal&nbsp;to a multiplier. This =
indeed has the desired&nbsp;effect&nbsp;(figure 2, blue&nbsp;curve vs. red =
curve).&nbsp;
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#212=
121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
f I understand the concept of the B210 local oscillators correctly, the sam=
e should be possible directly on the B210, using an LO offset of 100 kHz.&n=
bsp;The result, however,&nbsp;is completely different&nbsp;(figure
 2,&nbsp;green curve).&nbsp;</span><span style=3D"font-family:&quot;Calibri=
&quot;,sans-serif;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">A=
ny ideas why? Thank you.</span><span style=3D"font-family:&quot;Calibri&quo=
t;,sans-serif;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">B=
est regards,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-seri=
f;color:#212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">E=
rik</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#=
212121"><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:#212121"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_48d4ab5aa4e04bb589fc9eb420591be8gtrigatechedu_--


--===============2170719831446871358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2170719831446871358==--

