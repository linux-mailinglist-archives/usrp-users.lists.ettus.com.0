Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B261E349D2
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 16:11:13 +0200 (CEST)
Received: from [::1] (port=39528 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYA9g-00025w-NO; Tue, 04 Jun 2019 10:11:12 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:39142)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hYA9c-0001xL-8R
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 10:11:08 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id A8AC1B63EF6;
 Tue,  4 Jun 2019 16:10:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id aRwIU9juuVYI; Tue,  4 Jun 2019 16:10:25 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 087F2B63B1B;
 Tue,  4 Jun 2019 16:10:25 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 4 Jun 2019 16:10:24 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Tue, 4 Jun 2019 16:10:24 +0200
To: "Torell, Kent L" <Kent.Torell@gd-ms.com>
Thread-Topic: B210: 1/f noise and LO offset
Thread-Index: AQHVGe2o6G7GMwRDgUSESoeIIPz61KaKBXywgAF5JJs=
Date: Tue, 4 Jun 2019 14:10:23 +0000
Message-ID: <1559657423781.54078@supracon.com>
References: <1559556373844.57413@supracon.com>,
 <39b01a7fe7044608a7854ed5e35862f6@AZDC-MMB02.GD-MS.US>
In-Reply-To: <39b01a7fe7044608a7854ed5e35862f6@AZDC-MMB02.GD-MS.US>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.3.1.20]
MIME-Version: 1.0
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
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3160711876803628679=="
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

--===============3160711876803628679==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_155965742378154078supraconcom_"

--_000_155965742378154078supraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you for the explanation.

I tried using an external reference clock (HP 58503A). Unexpectedly, this m=
ade no difference at all. The noise is still exactly the same.


Erik Heinz


--
????????????????????????????????????????
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com
????????????????????????????????????????
Handelsregister:  Amtsgericht Gera HRB  208970
Umsatzsteuer-Id.:  DE 216 111 685

Kaufm. Vorstand:       Matthias Meyer
Vorsitz Aufsichtsrat:  Prof. Dr. Michael Siegel

________________________________
Von: Torell, Kent L <Kent.Torell@gd-ms.com>
Gesendet: Montag, 3. Juni 2019 17:10
An: Erik Heinz
Cc: usrp-users@lists.ettus.com
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



--_000_155965742378154078supraconcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} @font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
a:link, span.MsoHyperlink=0A=
	{color:#0563C1;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:#954F72;=0A=
	text-decoration:underline}=0A=
p.msonormal0, li.msonormal0, div.msonormal0=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
span.EmailStyle19=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#1F497D}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:1.0in 1.0in 1.0in 1.0in}=0A=
div.WordSection1=0A=
	{}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Thank you for the explanation. </p>
<p>I tried using an external reference clock (HP 58503A). Unexpectedly, thi=
s made no difference at all. The noise is still exactly the same.
<br>
</p>
<p><br>
</p>
<p>Erik Heinz<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
-- <br>
&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#947=
2;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9=
472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&=
#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;<br>
Supracon AG<br>
Dr. Erik Heinz<br>
An der Lehmgrube 11<br>
07751 Jena<br>
Tel.: &#43;49 3641 2328-165<br>
Fax: &#43;49 3641 2328-109<br>
Internet: http://www.supracon.com<br>
&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#947=
2;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9=
472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&=
#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;<br>
Handelsregister:&nbsp; Amtsgericht Gera HRB&nbsp; 208970<br>
Umsatzsteuer-Id.:&nbsp; DE 216 111 685<br>
<br>
Kaufm. Vorstand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matthias Meyer<br>
Vorsitz Aufsichtsrat:&nbsp; Prof. Dr. Michael Siegel<br>
<br>
</div>
</div>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Torell, Kent L &lt;K=
ent.Torell@gd-ms.com&gt;<br>
<b>Gesendet:</b> Montag, 3. Juni 2019 17:10<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> RE: B210: 1/f noise and LO offset</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">The phase noise comes from the B210=
 LO (RF synthesizer), and is present regardess of the frequency offset&#823=
0;you are misled by the log axis of the plot.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">The close-in noise can be improved =
by using a high quality external 10 MHz source.&nbsp; The control loop acti=
on of the synthesizer translates the reference phase
 noise to the LO phase noise.&nbsp; You may have a lab standard available; =
or you could purchase a GPSDO version for the B210 (Ettus part 783454-01).<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">If this doesn&#8217;t meet your nee=
ds, you will need to shift the signal lower in frequency with an external m=
ixer and a high quality microwave synthesizer (e.g.
 $20K Rhode/Keysight/etc.) that has the phase noise you require.&nbsp;&nbsp=
; The B210 uses an Analog Devices AD9361 chip, which generates the RF local=
 oscillator signal with a high frequency phase locked loop, then divides it=
 down to the requested frequency.&nbsp; 5 GHz is
 at the upper end of it&#8217;s range, so the division is small and the pha=
se noise will be at it&#8217;s highest.&nbsp;&nbsp; Moving down several oct=
aves will improve the phase noise, dropping 6 dB for every octave (e.g. 500=
 MHz would have 20 dB lower phase noise than 5 GHz).</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Kent Torell</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
; font-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;usrp-users-bo=
unces@lists.ettus.com&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Hello everyone,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
preliminary remark: I am an physicist&nbsp;- so please excuse some possible=
 knowledge gaps in radio engineering :-).</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
I would like to use a B210 to measure the IQ response of superconducting re=
sonators at about 5 GHz.&nbsp;This is done by feeding the resonators&nbsp;a=
 signal from the transmitter with a frequency near the&nbsp;resonance,&nbsp=
;amplifying
 by LNAs, coupling to the receiver, demodulating to&nbsp;base band, and rec=
ording the&nbsp;resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Since noise of the resonators has to be measured as well, I first had a loo=
k at &nbsp;the&nbsp;noise&nbsp;of&nbsp;the B210 output without an external =
signal.&nbsp;The result&nbsp;is plotted in&nbsp;figure 1 (vertical axis is =
scaled
 to the output range of the ADC). It seems,&nbsp;below 100kHz the B210&nbsp=
;receiver&nbsp;has strong 1/f noise.&nbsp;I would guess this is hardware no=
ise from the mixer.&nbsp;Anyone knows if this&nbsp;assumption is correct?</=
span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
So I thought it&nbsp;would&nbsp;be a&nbsp;good&nbsp;idea to&nbsp;demodulate=
 not directly&nbsp;to base band, but to an&nbsp;IF of&nbsp;may be 100 kHz&n=
bsp;and&nbsp;do the rest in software.&nbsp;I did&nbsp;a&nbsp;quick test&nbs=
p;using&nbsp;gnu radio, feeding the&nbsp;output&nbsp;of
 the USRP source&nbsp;and a&nbsp;100 kHz signal&nbsp;to a multiplier. This =
indeed has the desired&nbsp;effect&nbsp;(figure 2, blue&nbsp;curve vs. red =
curve).&nbsp;
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
If I understand the concept of the B210 local oscillators correctly, the sa=
me should be possible directly on the B210, using an LO offset of 100 kHz.&=
nbsp;The result, however,&nbsp;is completely different&nbsp;(figure
 2,&nbsp;green curve).&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Any ideas why? Thank you.</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Best regards,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Erik</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
</div>
</div>
</div>
</body>
</html>

--_000_155965742378154078supraconcom_--


--===============3160711876803628679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3160711876803628679==--

