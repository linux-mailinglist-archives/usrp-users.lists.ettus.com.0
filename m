Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C90358DB
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 10:44:33 +0200 (CEST)
Received: from [::1] (port=60178 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYRWz-0005v0-GZ; Wed, 05 Jun 2019 04:44:25 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:52550)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hYRWu-0005q4-V6
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 04:44:21 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 493D8B63C19;
 Wed,  5 Jun 2019 10:43:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id r52OW8znj6sL; Wed,  5 Jun 2019 10:43:37 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 9A5DBB6027B;
 Wed,  5 Jun 2019 10:43:37 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Wed, 5 Jun 2019 10:43:24 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Wed, 5 Jun 2019 10:43:24 +0200
To: "Torell, Kent L" <Kent.Torell@gd-ms.com>
Thread-Topic: B210: 1/f noise and LO offset
Thread-Index: AQHVGe2o6G7GMwRDgUSESoeIIPz61KaKBXywgAF5JJuAACoCQIAACkawgAENTks=
Date: Wed, 5 Jun 2019 08:43:23 +0000
Message-ID: <1559724203934.87389@supracon.com>
References: <1559556373844.57413@supracon.com>, ,
 <39b099efbb364a52bf988fe1bf00362b@AZDC-MMB02.GD-MS.US>
In-Reply-To: <39b099efbb364a52bf988fe1bf00362b@AZDC-MMB02.GD-MS.US>
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
Content-Type: multipart/mixed; boundary="===============2946864804661125877=="
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

--===============2946864804661125877==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_155972420393487389supraconcom_"

--_000_155972420393487389supraconcom_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Thank you all for the comments. Some summarized remarks:

Regarding the external reference:
I have no GPSDO installed and selected "Clock Source: external" in the GRC =
UHD blocks. I cannot tell definitely if the B210 is locked to the external =
reference, but there is an error message if I disconnect the external refer=
ence, so it probably is.

Regarding the noise spectrum:
Yes, I am simply capturing the output signal of the UHD USRP Source without=
 an external signal. I noticed that below 40dB RX gain the noise floor is m=
ostly independent from gain. Above 40dB the amplifier noise is added. So I =
measured at 40dB RX gain and assume this noise floor to be the absolute lim=
it for the SNR when using the B210, regardless which LNAs are used.
My guess was that the 1/f noise originates from semiconductor components, m=
ight be the mixer. LO phase noise would add to the noise floor as well, as =
I learned. For the actual device the origin of the noise floor is of course=
 only of academic interest, since it cannot be changed, but some deeper und=
erstanding might help for future projects.

What I really do not understand is why I can shift the spectrum using an ex=
ternal software modulator but not by using the LO offset.


Best regards.

Erik


________________________________
Von: USRP-users <usrp-users-bounces@lists.ettus.com> im Auftrag von Torell,=
 Kent L via USRP-users <usrp-users@lists.ettus.com>
Gesendet: Dienstag, 4. Juni 2019 18:44
An: usrp-users@lists.ettus.com
Betreff: Re: [USRP-users] B210: 1/f noise and LO offset

I think I=1B$B!G=1B(Bm misunderstanding what you are measuring.  From my ra=
dio experience, I immediately assume you are measuring the phase noise of a=
 synthesized tone.  But the spectrum you see isn=1B$B!G=1B(Bt quite right f=
or that.  Re-reading your original post, are you simply capturing the noise=
 of the USRP, without any signal input at all?  In that case, you are plott=
ing the noise spectra, which will have a quantized noise floor,  thermal no=
ise, and 1/f noise from the baseband amplifiers.   The tuning of the synthe=
sizer most likely won=1B$B!G=1B(Bt affect this.
Kent Torell

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Lundberg=
, Daniel via USRP-users
Sent: Tuesday, June 4, 2019 9:00 AM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B210: 1/f noise and LO offset

Just a couple of sanity checks on this=1B$B!D=1B(BYou have to make sure tha=
t

1)      You don=1B$B!G=1B(Bt already have a GPSDO installed on your B210.  =
If you do, the external reference won=1B$B!G=1B(Bt make it in.

2)      Assuming you don=1B$B!G=1B(Bt have the GPSDO, you have to tell the =
B210 to use the external reference instead of its own.

Also, from past experience, I have found that avoiding an LO offset that is=
 an integer multiple of the sampling rate will avoid some pretty bad spurs.=
  I think these are integer boundary spurs in the PLL.

Dan Lundberg

From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> On Behalf Of Erik Heinz via USRP-users
Sent: Tuesday, June 4, 2019 10:10 AM
To: Torell, Kent L <Kent.Torell@gd-ms.com<mailto:Kent.Torell@gd-ms.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B210: 1/f noise and LO offset


Thank you for the explanation.

I tried using an external reference clock (HP 58503A). Unexpectedly, this m=
ade no difference at all. The noise is still exactly the same.



Erik Heinz


--
=1B$B(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!=
(!(!(!(!(!=1B(B
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com
=1B$B(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!=
(!(!(!(!(!=1B(B
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
ardess of the frequency offset=1B$B!D=1B(Byou are misled by the log axis of=
 the plot.

The close-in noise can be improved by using a high quality external 10 MHz =
source.  The control loop action of the synthesizer translates the referenc=
e phase noise to the LO phase noise.  You may have a lab standard available=
; or you could purchase a GPSDO version for the B210 (Ettus part 783454-01)=
.

If this doesn=1B$B!G=1B(Bt meet your needs, you will need to shift the sign=
al lower in frequency with an external mixer and a high quality microwave s=
ynthesizer (e.g. $20K Rhode/Keysight/etc.) that has the phase noise you req=
uire.   The B210 uses an Analog Devices AD9361 chip, which generates the RF=
 local oscillator signal with a high frequency phase locked loop, then divi=
des it down to the requested frequency.  5 GHz is at the upper end of it=1B=
$B!G=1B(Bs range, so the division is small and the phase noise will be at i=
t=1B$B!G=1B(Bs highest.   Moving down several octaves will improve the phas=
e noise, dropping 6 dB for every octave (e.g. 500 MHz would have 20 dB lowe=
r phase noise than 5 GHz).

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



--_000_155972420393487389supraconcom_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} @font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:"MS PGothic"}=0A=
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph=0A=
	{margin-top:0in;=0A=
	margin-right:0in;=0A=
	margin-bottom:0in;=0A=
	margin-left:.5in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
p.msonormal0, li.msonormal0, div.msonormal0=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"MS PGothic",sans-serif}=0A=
p.msonormal00, li.msonormal00, div.msonormal00=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
p.msochpdefault, li.msochpdefault, div.msochpdefault=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:10.0pt;=0A=
	font-family:"MS PGothic",sans-serif}=0A=
span.emailstyle19=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#1F497D}=0A=
span.EmailStyle23=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#1F497D}=0A=
span.EmailStyle24=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#1F497D}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:1.0in 1.0in 1.0in 1.0in}=0A=
div.WordSection1=0A=
	{}=0A=
ol=0A=
	{margin-bottom:0in}=0A=
ul=0A=
	{margin-bottom:0in}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Thank you all for the comments. Some summarized remarks:<br>
<br>
Regarding the external reference:<br>
I have no GPSDO installed and selected &quot;Clock Source: external&quot; i=
n the GRC UHD blocks. I cannot tell definitely if the B210 is locked to the=
 external reference, but there is an error message if I disconnect the exte=
rnal reference, so it probably is.<br>
<br>
Regarding the noise spectrum:<br>
Yes, I am simply capturing the output signal of the&nbsp;UHD USRP Source wi=
thout an external signal. I noticed that below 40dB RX gain the noise floor=
 is mostly independent from gain. Above 40dB the amplifier noise is added. =
So I measured at 40dB RX gain and assume
 this noise floor to be the absolute limit for the SNR when using the B210,=
 regardless which LNAs are used.<br>
My guess was that the 1/f noise originates from semiconductor components, m=
ight be the mixer. LO phase noise would add to the noise floor as well, as =
I learned. For the actual device the origin of the noise floor is of course=
 only of academic interest, since
 it cannot be changed, but some deeper understanding might help for future =
projects.<br>
<br>
What I really do not understand is why I can shift the spectrum using an ex=
ternal software modulator but not by using the LO offset.<br>
</p>
<p><br>
</p>
<p>Best regards.</p>
<p>Erik<br>
<br>
</p>
<div id=3D"Signature"></div>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> USRP-users &lt;usrp-=
users-bounces@lists.ettus.com&gt; im Auftrag von Torell, Kent L via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Gesendet:</b> Dienstag, 4. Juni 2019 18:44<br>
<b>An:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> Re: [USRP-users] B210: 1/f noise and LO offset</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">I think I=1B$B!G=1B(Bm misunderstan=
ding what you are measuring.&nbsp; From my radio experience, I immediately =
assume you are measuring the phase noise of a synthesized tone.&nbsp;
 But the spectrum you see isn=1B$B!G=1B(Bt quite right for that.&nbsp; Re-r=
eading your original post, are you simply capturing the noise of the USRP, =
without any signal input at all?&nbsp; In that case, you are plotting the n=
oise spectra, which will have a quantized noise floor,&nbsp;
 thermal noise, and 1/f noise from the baseband amplifiers.&nbsp;&nbsp; The=
 tuning of the synthesizer most likely won=1B$B!G=1B(Bt affect this.</span>=
</p>
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
<b>On Behalf Of </b>Lundberg, Daniel via USRP-users<br>
<b>Sent:</b> Tuesday, June 4, 2019 9:00 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] B210: 1/f noise and LO offset</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Just a couple of sanity checks on t=
his=1B$B!D=1B(BYou have to make sure that
</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"f=
ont-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D"=
><span style=3D"">1)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:11.0pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:#1F497D">You don=1B$B!G=1B(Bt already have a G=
PSDO installed on your B210.&nbsp; If you do, the external reference won=1B=
$B!G=1B(Bt make it in.</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"f=
ont-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D"=
><span style=3D"">2)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:11.0pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:#1F497D">Assuming you don=1B$B!G=1B(Bt have th=
e GPSDO, you have to tell the B210 to use the external reference instead of=
 its own.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Also, from past experience, I have =
found that avoiding an LO offset that is an integer multiple of the samplin=
g rate will avoid some pretty bad spurs.&nbsp; I think
 these are integer boundary spurs in the PLL.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Dan Lundberg</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
; font-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"ma=
ilto:usrp-users-bounces@lists.ettus.com">usrp-users-bounces@lists.ettus.com=
</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Tuesday, June 4, 2019 10:10 AM<br>
<b>To:</b> Torell, Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com">Kent=
.Torell@gd-ms.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> Re: [USRP-users] B210: 1/f noise and LO offset</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Thank you for the explanation.
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
I tried using an external reference clock (HP 58503A). Unexpectedly, this m=
ade no difference at all. The noise is still exactly the same.
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Erik Heinz</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif; color:black">--
<br>
=1B$B(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!=
(!(!(!(!(!=1B(B<br>
Supracon AG<br>
Dr. Erik Heinz<br>
An der Lehmgrube 11<br>
07751 Jena<br>
Tel.: &#43;49 3641 2328-165<br>
Fax: &#43;49 3641 2328-109<br>
Internet: <a href=3D"http://www.supracon.com" id=3D"NoLP">http://www.suprac=
on.com</a><br>
=1B$B(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!=
(!(!(!(!(!=1B(B<br>
Handelsregister:&nbsp; Amtsgericht Gera HRB&nbsp; 208970<br>
Umsatzsteuer-Id.:&nbsp; DE 216 111 685<br>
<br>
Kaufm. Vorstand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matthias Meyer<br>
Vorsitz Aufsichtsrat:&nbsp; Prof. Dr. Michael Siegel</span></p>
</div>
</div>
<div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:#212121">
<hr width=3D"98%" size=3D"2" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif; color:black">Von:</span></b><span style=3D"font=
-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:black"> Tor=
ell, Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com">Kent.Torell@gd-ms.=
com</a>&gt;<br>
<b>Gesendet:</b> Montag, 3. Juni 2019 17:10<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Betreff:</b> RE: B210: 1/f noise and LO offset</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif; color:#212121">
</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif; color:#212121">&nbsp;</span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">The phase noise comes from the B210=
 LO (RF synthesizer), and is present regardess of the frequency offset=1B$B=
!D=1B(Byou are misled by the log axis of the plot.</span><span style=3D"col=
or:#212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><span style=3D"color:#=
212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">The close-in noise can be improved =
by using a high quality external 10 MHz source.&nbsp; The control loop acti=
on of the synthesizer translates the reference phase
 noise to the LO phase noise.&nbsp; You may have a lab standard available; =
or you could purchase a GPSDO version for the B210 (Ettus part 783454-01).<=
/span><span style=3D"color:#212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><span style=3D"color:#=
212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">If this doesn=1B$B!G=1B(Bt meet you=
r needs, you will need to shift the signal lower in frequency with an exter=
nal mixer and a high quality microwave synthesizer (e.g.
 $20K Rhode/Keysight/etc.) that has the phase noise you require.&nbsp;&nbsp=
; The B210 uses an Analog Devices AD9361 chip, which generates the RF local=
 oscillator signal with a high frequency phase locked loop, then divides it=
 down to the requested frequency.&nbsp; 5 GHz is
 at the upper end of it=1B$B!G=1B(Bs range, so the division is small and th=
e phase noise will be at it=1B$B!G=1B(Bs highest.&nbsp;&nbsp; Moving down s=
everal octaves will improve the phase noise, dropping 6 dB for every octave=
 (e.g. 500 MHz would have 20 dB lower phase noise than 5 GHz).</span><span =
style=3D"color:#212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><span style=3D"color:#=
212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Kent Torell</span><span style=3D"co=
lor:#212121"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><span style=3D"color:#=
212121"></span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif; color:#212121">From:</span></b><span style=3D"f=
ont-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#212121"=
> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com">usrp=
-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset</span><span styl=
e=3D"color:#212121"></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#212121">&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Hello everyone,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
preliminary remark: I am an physicist&nbsp;- so please excuse some possible=
 knowledge gaps in radio engineering :-).</span><span style=3D"font-family:=
&quot;Calibri&quot;,sans-serif; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
I would like to use a B210 to measure the IQ response of superconducting re=
sonators at about 5 GHz.&nbsp;This is done by feeding the resonators&nbsp;a=
 signal from the transmitter with a frequency near the&nbsp;resonance,&nbsp=
;amplifying
 by LNAs, coupling to the receiver, demodulating to&nbsp;base band, and rec=
ording the&nbsp;resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.</span><span style=3D"font-family:&quot;Calibri&=
quot;,sans-serif; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Since noise of the resonators has to be measured as well, I first had a loo=
k at &nbsp;the&nbsp;noise&nbsp;of&nbsp;the B210 output without an external =
signal.&nbsp;The result&nbsp;is plotted in&nbsp;figure 1 (vertical axis is =
scaled
 to the output range of the ADC). It seems,&nbsp;below 100kHz the B210&nbsp=
;receiver&nbsp;has strong 1/f noise.&nbsp;I would guess this is hardware no=
ise from the mixer.&nbsp;Anyone knows if this&nbsp;assumption is correct?</=
span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:#2121=
21"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
So I thought it&nbsp;would&nbsp;be a&nbsp;good&nbsp;idea to&nbsp;demodulate=
 not directly&nbsp;to base band, but to an&nbsp;IF of&nbsp;may be 100 kHz&n=
bsp;and&nbsp;do the rest in software.&nbsp;I did&nbsp;a&nbsp;quick test&nbs=
p;using&nbsp;gnu radio, feeding the&nbsp;output&nbsp;of
 the USRP source&nbsp;and a&nbsp;100 kHz signal&nbsp;to a multiplier. This =
indeed has the desired&nbsp;effect&nbsp;(figure 2, blue&nbsp;curve vs. red =
curve).&nbsp;
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:#21=
2121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
If I understand the concept of the B210 local oscillators correctly, the sa=
me should be possible directly on the B210, using an LO offset of 100 kHz.&=
nbsp;The result, however,&nbsp;is completely different&nbsp;(figure
 2,&nbsp;green curve).&nbsp;</span><span style=3D"font-family:&quot;Calibri=
&quot;,sans-serif; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Any ideas why? Thank you.</span><span style=3D"font-family:&quot;Calibri&qu=
ot;,sans-serif; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Best regards,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-ser=
if; color:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Erik</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color=
:#212121"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:#212121"></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_155972420393487389supraconcom_--


--===============2946864804661125877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2946864804661125877==--

