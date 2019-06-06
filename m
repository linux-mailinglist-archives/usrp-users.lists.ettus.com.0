Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4B36CBC
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 09:03:31 +0200 (CEST)
Received: from [::1] (port=46476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYmQo-0004Jd-9G; Thu, 06 Jun 2019 03:03:26 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:54220)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hYmQk-0004Fe-EU
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 03:03:22 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 904B0B63C77;
 Thu,  6 Jun 2019 09:02:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oy5AUq1B1YhC; Thu,  6 Jun 2019 09:02:38 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 57801B63AEC;
 Thu,  6 Jun 2019 09:02:38 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Thu, 6 Jun 2019 09:02:25 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Thu, 6 Jun 2019 09:02:25 +0200
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] B210: 1/f noise and LO offset
Thread-Index: AQHVGe2o6G7GMwRDgUSESoeIIPz61KaKBXywgAF5JJuAACoCQIAACkawgAENTkuAAG8LgIABBtsT
Date: Thu, 6 Jun 2019 07:02:24 +0000
Message-ID: <1559804544713.61709@supracon.com>
References: <1559556373844.57413@supracon.com>
 <39b099efbb364a52bf988fe1bf00362b@AZDC-MMB02.GD-MS.US>,
 <CA+JMMq-yq56+9oD8Wgr+dpKg7q-19G3f0eOF86Rg3KfABVUmRw@mail.gmail.com>
In-Reply-To: <CA+JMMq-yq56+9oD8Wgr+dpKg7q-19G3f0eOF86Rg3KfABVUmRw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1671163264116065093=="
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

--===============1671163264116065093==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_155980454471361709supraconcom_"

--_000_155980454471361709supraconcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

OK, so this means the 1/f noise is not from the LO. Otherwise it would fina=
lly appear around the LO offset frequency.

The noise arises in the baseband AFTER the mixing and therefore is not affe=
cted by the DSP magic.

I think, I understand now.


Erik


________________________________
Von: Nick Foster <bistromath@gmail.com>
Gesendet: Mittwoch, 5. Juni 2019 19:15
An: Erik Heinz
Betreff: Re: [USRP-users] B210: 1/f noise and LO offset

If you specify an LO offset, UHD will make sure that your center frequency =
still arrives at baseband, by using the CORDIC in the DDC to downconvert it=
.

Nick

On Wed, Jun 5, 2019 at 1:44 AM Erik Heinz via USRP-users <usrp-users@lists.=
ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

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
Von: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-bounc=
es@lists.ettus.com>> im Auftrag von Torell, Kent L via USRP-users <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Gesendet: Dienstag, 4. Juni 2019 18:44
An: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Betreff: Re: [USRP-users] B210: 1/f noise and LO offset

I think I=92m misunderstanding what you are measuring.  From my radio exper=
ience, I immediately assume you are measuring the phase noise of a synthesi=
zed tone.  But the spectrum you see isn=92t quite right for that.  Re-readi=
ng your original post, are you simply capturing the noise of the USRP, with=
out any signal input at all?  In that case, you are plotting the noise spec=
tra, which will have a quantized noise floor,  thermal noise, and 1/f noise=
 from the baseband amplifiers.   The tuning of the synthesizer most likely =
won=92t affect this.
Kent Torell

From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> On Behalf Of Lundberg, Daniel via USRP-users
Sent: Tuesday, June 4, 2019 9:00 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B210: 1/f noise and LO offset

Just a couple of sanity checks on this=85You have to make sure that

1)      You don=92t already have a GPSDO installed on your B210.  If you do=
, the external reference won=92t make it in.

2)      Assuming you don=92t have the GPSDO, you have to tell the B210 to u=
se the external reference instead of its own.

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
----------------------------------------
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com
----------------------------------------
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
ardess of the frequency offset=85you are misled by the log axis of the plot=
.

The close-in noise can be improved by using a high quality external 10 MHz =
source.  The control loop action of the synthesizer translates the referenc=
e phase noise to the LO phase noise.  You may have a lab standard available=
; or you could purchase a GPSDO version for the B210 (Ettus part 783454-01)=
.

If this doesn=92t meet your needs, you will need to shift the signal lower =
in frequency with an external mixer and a high quality microwave synthesize=
r (e.g. $20K Rhode/Keysight/etc.) that has the phase noise you require.   T=
he B210 uses an Analog Devices AD9361 chip, which generates the RF local os=
cillator signal with a high frequency phase locked loop, then divides it do=
wn to the requested frequency.  5 GHz is at the upper end of it=92s range, =
so the division is small and the phase noise will be at it=92s highest.   M=
oving down several octaves will improve the phase noise, dropping 6 dB for =
every octave (e.g. 500 MHz would have 20 dB lower phase noise than 5 GHz).

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



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_155980454471361709supraconcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>OK, so this means the 1/f noise is not from the LO. Otherwise it would f=
inally appear around the LO offset frequency.</p>
<p>The noise arises in the baseband AFTER the mixing and therefore is not a=
ffected&nbsp;by the&nbsp;DSP&nbsp;magic.</p>
<p>I think, I understand now.</p>
<p><br>
</p>
<p>Erik <br>
</p>
<p><br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Nick Foster &lt;bist=
romath@gmail.com&gt;<br>
<b>Gesendet:</b> Mittwoch, 5. Juni 2019 19:15<br>
<b>An:</b> Erik Heinz<br>
<b>Betreff:</b> Re: [USRP-users] B210: 1/f noise and LO offset</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>If you specify an LO offset, UHD will make sure that your center frequ=
ency still arrives at baseband, by using the CORDIC in the DDC to downconve=
rt it.</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 1:44 AM Erik H=
einz via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif">
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
<div id=3D"gmail-m_2605951918236516257Signature"></div>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_2605951918236516257divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:=
</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" t=
arget=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 im Auftrag von Torell, Kent L via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<b=
r>
<b>Gesendet:</b> Dienstag, 4. Juni 2019 18:44<br>
<b>An:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Betreff:</b> Re: [USRP-users] B210: 1/f noise and LO offset</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"gmail-m_2605951918236516257WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">I think I=92m misunderstanding=
 what you are measuring.&nbsp; From my radio experience, I immediately assu=
me you are measuring the phase noise of a synthesized
 tone.&nbsp; But the spectrum you see isn=92t quite right for that.&nbsp; R=
e-reading your original post, are you simply capturing the noise of the USR=
P, without any signal input at all?&nbsp; In that case, you are plotting th=
e noise spectra, which will have a quantized noise
 floor,&nbsp; thermal noise, and 1/f noise from the baseband amplifiers.&nb=
sp;&nbsp; The tuning of the synthesizer most likely won=92t affect this.</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">Kent Torell</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor; bord=
er-style:solid none none; border-width:1pt medium medium; padding:3pt 0in 0=
in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt; font-family:&quot;=
Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"mailto=
:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@l=
ists.ettus.com</a>&gt;
<b>On Behalf Of </b>Lundberg, Daniel via USRP-users<br>
<b>Sent:</b> Tuesday, June 4, 2019 9:00 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] B210: 1/f noise and LO offset</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">Just a couple of sanity checks=
 on this=85You have to make sure that
</span></p>
<p class=3D"gmail-m_2605951918236516257MsoListParagraph"><span style=3D"fon=
t-size:11pt; font-family:&quot;Calibri&quot;,sans-serif; color:rgb(31,73,12=
5)"><span>1)<span style=3D"font:7pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:11pt; font-family:&quot;Calib=
ri&quot;,sans-serif; color:rgb(31,73,125)">You don=92t already have a GPSDO=
 installed on your B210.&nbsp; If you do, the external reference won=92t ma=
ke it in.</span></p>
<p class=3D"gmail-m_2605951918236516257MsoListParagraph"><span style=3D"fon=
t-size:11pt; font-family:&quot;Calibri&quot;,sans-serif; color:rgb(31,73,12=
5)"><span>2)<span style=3D"font:7pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:11pt; font-family:&quot;Calib=
ri&quot;,sans-serif; color:rgb(31,73,125)">Assuming you don=92t have the GP=
SDO, you have to tell the B210 to use the external reference instead of its=
 own.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">Also, from past experience, I =
have found that avoiding an LO offset that is an integer multiple of the sa=
mpling rate will avoid some pretty bad spurs.&nbsp;
 I think these are integer boundary spurs in the PLL.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">Dan Lundberg</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor; bord=
er-style:solid none none; border-width:1pt medium medium; padding:3pt 0in 0=
in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt; font-family:&quot;=
Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"mailto=
:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@l=
ists.ettus.com</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Tuesday, June 4, 2019 10:10 AM<br>
<b>To:</b> Torell, Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com" targ=
et=3D"_blank">Kent.Torell@gd-ms.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
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
<div id=3D"gmail-m_2605951918236516257Signature">
<div name=3D"divtagdefaultwrapper">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,sans-serif; color:black">--
<br>
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
Internet: <a href=3D"http://www.supracon.com" id=3D"gmail-m_260595191823651=
6257NoLP" target=3D"_blank">
http://www.supracon.com</a><br>
&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#947=
2;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9=
472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&=
#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;<br>
Handelsregister:&nbsp; Amtsgericht Gera HRB&nbsp; 208970<br>
Umsatzsteuer-Id.:&nbsp; DE 216 111 685<br>
<br>
Kaufm. Vorstand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matthias Meyer<br>
Vorsitz Aufsichtsrat:&nbsp; Prof. Dr. Michael Siegel</span></p>
</div>
</div>
<div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:rgb(33,33,33)">
<hr width=3D"98%" size=3D"2" align=3D"center">
</span></div>
<div id=3D"gmail-m_2605951918236516257divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt; font-family:&quot;=
Calibri&quot;,sans-serif; color:black">Von:</span></b><span style=3D"font-s=
ize:11pt; font-family:&quot;Calibri&quot;,sans-serif; color:black"> Torell,=
 Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com" target=3D"_blank">Kent=
.Torell@gd-ms.com</a>&gt;<br>
<b>Gesendet:</b> Montag, 3. Juni 2019 17:10<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Betreff:</b> RE: B210: 1/f noise and LO offset</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif; color:rgb(33,33,33)">
</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif; color:rgb(33,33,33)">&nbsp;</span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">The phase noise comes from the=
 B210 LO (RF synthesizer), and is present regardess of the frequency offset=
=85you are misled by the log axis of the plot.</span><span style=3D"color:r=
gb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span><span style=3D"co=
lor:rgb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">The close-in noise can be impr=
oved by using a high quality external 10 MHz source.&nbsp; The control loop=
 action of the synthesizer translates the reference
 phase noise to the LO phase noise.&nbsp; You may have a lab standard avail=
able; or you could purchase a GPSDO version for the B210 (Ettus part 783454=
-01).</span><span style=3D"color:rgb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span><span style=3D"co=
lor:rgb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">If this doesn=92t meet your ne=
eds, you will need to shift the signal lower in frequency with an external =
mixer and a high quality microwave synthesizer (e.g.
 $20K Rhode/Keysight/etc.) that has the phase noise you require.&nbsp;&nbsp=
; The B210 uses an Analog Devices AD9361 chip, which generates the RF local=
 oscillator signal with a high frequency phase locked loop, then divides it=
 down to the requested frequency.&nbsp; 5 GHz is
 at the upper end of it=92s range, so the division is small and the phase n=
oise will be at it=92s highest.&nbsp;&nbsp; Moving down several octaves wil=
l improve the phase noise, dropping 6 dB for every octave (e.g. 500 MHz wou=
ld have 20 dB lower phase noise than 5 GHz).</span><span style=3D"color:rgb=
(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span><span style=3D"co=
lor:rgb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">Kent Torell</span><span style=
=3D"color:rgb(33,33,33)"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;Cal=
ibri&quot;,sans-serif; color:rgb(31,73,125)">&nbsp;</span><span style=3D"co=
lor:rgb(33,33,33)"></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor; bord=
er-style:solid none none; border-width:1pt medium medium; padding:3pt 0in 0=
in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt; font-family:&quot;=
Calibri&quot;,sans-serif; color:rgb(33,33,33)">From:</span></b><span style=
=3D"font-size:11pt; font-family:&quot;Calibri&quot;,sans-serif; color:rgb(3=
3,33,33)"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.=
com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset</span><span styl=
e=3D"color:rgb(33,33,33)"></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(33,33,33)">&nbsp;</span></p=
>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Hello everyone,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
preliminary remark: I am an physicist&nbsp;- so please excuse some possible=
 knowledge gaps in radio engineering :-).</span><span style=3D"font-family:=
&quot;Calibri&quot;,sans-serif; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
I would like to use a B210 to measure the IQ response of superconducting re=
sonators at about 5 GHz.&nbsp;This is done by feeding the resonators&nbsp;a=
 signal from the transmitter with a frequency near the&nbsp;resonance,&nbsp=
;amplifying
 by LNAs, coupling to the receiver, demodulating to&nbsp;base band, and rec=
ording the&nbsp;resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.</span><span style=3D"font-family:&quot;Calibri&=
quot;,sans-serif; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Since noise of the resonators has to be measured as well, I first had a loo=
k at &nbsp;the&nbsp;noise&nbsp;of&nbsp;the B210 output without an external =
signal.&nbsp;The result&nbsp;is plotted in&nbsp;figure 1 (vertical axis is =
scaled
 to the output range of the ADC). It seems,&nbsp;below 100kHz the B210&nbsp=
;receiver&nbsp;has strong 1/f noise.&nbsp;I would guess this is hardware no=
ise from the mixer.&nbsp;Anyone knows if this&nbsp;assumption is correct?</=
span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:rgb(3=
3,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
So I thought it&nbsp;would&nbsp;be a&nbsp;good&nbsp;idea to&nbsp;demodulate=
 not directly&nbsp;to base band, but to an&nbsp;IF of&nbsp;may be 100 kHz&n=
bsp;and&nbsp;do the rest in software.&nbsp;I did&nbsp;a&nbsp;quick test&nbs=
p;using&nbsp;gnu radio, feeding the&nbsp;output&nbsp;of
 the USRP source&nbsp;and a&nbsp;100 kHz signal&nbsp;to a multiplier. This =
indeed has the desired&nbsp;effect&nbsp;(figure 2, blue&nbsp;curve vs. red =
curve).&nbsp;
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:rgb=
(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
If I understand the concept of the B210 local oscillators correctly, the sa=
me should be possible directly on the B210, using an LO offset of 100 kHz.&=
nbsp;The result, however,&nbsp;is completely different&nbsp;(figure
 2,&nbsp;green curve).&nbsp;</span><span style=3D"font-family:&quot;Calibri=
&quot;,sans-serif; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Any ideas why? Thank you.</span><span style=3D"font-family:&quot;Calibri&qu=
ot;,sans-serif; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Best regards,</span><span style=3D"font-family:&quot;Calibri&quot;,sans-ser=
if; color:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Erik</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color=
:rgb(33,33,33)"></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; col=
or:rgb(33,33,33)"></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_155980454471361709supraconcom_--


--===============1671163264116065093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1671163264116065093==--

