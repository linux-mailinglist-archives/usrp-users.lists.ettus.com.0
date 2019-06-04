Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF6334E2B
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 19:01:02 +0200 (CEST)
Received: from [::1] (port=44082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYCnP-0008UA-JZ; Tue, 04 Jun 2019 13:00:23 -0400
Received: from mail-it1-f179.google.com ([209.85.166.179]:51876)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hYCnM-0008Lk-4G
 for USRP-users@lists.ettus.com; Tue, 04 Jun 2019 13:00:20 -0400
Received: by mail-it1-f179.google.com with SMTP id m3so1299739itl.1
 for <USRP-users@lists.ettus.com>; Tue, 04 Jun 2019 10:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aaIKCHpFkxN8BtAZ7cI9xBFm3pjiCVsClAvap9t5pZc=;
 b=ef7s215hGFK6XDCc4ftjq9qvU5YWXo+fIET2L/34TrTZc4F1v4zLIlPT3TAIexoYx2
 P71LMgxf+77q1u1LXzhovw7nu0GuTry+r6+r5m98DxQMFduROY1GPZblHCiknRmqHHFF
 fiiU07lgN8+Vkl3QGVWNtmcsS/MGLEUcQ057wJzXZzjUIXmNEVbeJvEhwqi/LTOitfIW
 DtsvOA9VIb9k2no3bBpfGhddoe144JMZ+vdFpFKy1DfRxjQPW3UsJK/elmv6LZOphmiA
 BOSEXUcwBnwLyiwtSiJ/wJ+3oYm0BsNkPR2EWpIw/7ao/Q2/rWF7OXjdfhlTODQu7Wnw
 uidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aaIKCHpFkxN8BtAZ7cI9xBFm3pjiCVsClAvap9t5pZc=;
 b=cjSFwIit5SaFo7v8xO8vSSVMX4lqcsOHb9Q2BY6plhzH4iRjO8Uwgd45WGUGC2nIA6
 GoFwxYMYusMOgPzKMsM/fcsV6GZYPYUX50w+ZC8f0CPiHQBL9IrWQB1kyPaYgVTlTYNO
 5JoWfmBF/8wtMci0ZFoHq1KTMP5nNw6Aqv7W5YOhby8adP54/RA9bb/CZN3VJkhYYd2g
 blfKfXFgWrkm179mUBQlEr28Cf7QngwlF+PkNAPjWADKEHLkP6yntrUjYmVynGAH+lo9
 Tuxz3Kw4Leh7gP1FDZzpJkUIEH6Ii+F5TelYgwtksk58zZghfXIDfKAKaeT28GWDWVVI
 14tQ==
X-Gm-Message-State: APjAAAWMcAopkIjGf4UgeyPSbdsM/nGnuCQYap6ZsNE3Az5klbXwNJI6
 CfrGum2hlP834cYuAvEQ4UsEsKPFfo9OXPX9fnCfSA==
X-Google-Smtp-Source: APXvYqyXl0VGWqoewBieThRZfRYxH6iesCLMNR+idf6dxfof/1ZHktjp1wgKDnUYjxBWVpLSV7NdgYS7d6xNIyf7Xzw=
X-Received: by 2002:a05:6638:63a:: with SMTP id
 h26mr7231424jar.92.1559667579443; 
 Tue, 04 Jun 2019 09:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <1559556373844.57413@supracon.com>
 <39b01a7fe7044608a7854ed5e35862f6@AZDC-MMB02.GD-MS.US>
 <1559657423781.54078@supracon.com>
In-Reply-To: <1559657423781.54078@supracon.com>
Date: Tue, 4 Jun 2019 09:59:27 -0700
Message-ID: <CA+JMMq9JXeJ9rLqi_HrM5tvEdfhbya5BkSkNK1mfVLeo8KVgEA@mail.gmail.com>
To: Erik Heinz <erik.heinz@supracon.com>
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6171866414990979181=="
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

--===============6171866414990979181==
Content-Type: multipart/alternative; boundary="0000000000000a61f0058a82680e"

--0000000000000a61f0058a82680e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you make sure to select the external reference when creating the UHD
device?

On Tue, Jun 4, 2019, 7:11 AM Erik Heinz via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you for the explanation.
>
> I tried using an external reference clock (HP 58503A). Unexpectedly, this
> made no difference at all. The noise is still exactly the same.
>
>
> Erik Heinz
>
>
> --
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
> Supracon AG
> Dr. Erik Heinz
> An der Lehmgrube 11
> 07751 Jena
> Tel.: +49 3641 2328-165
> Fax: +49 3641 2328-109
> Internet: http://www.supracon.com
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
> Handelsregister:  Amtsgericht Gera HRB  208970
> Umsatzsteuer-Id.:  DE 216 111 685
>
> Kaufm. Vorstand:       Matthias Meyer
> Vorsitz Aufsichtsrat:  Prof. Dr. Michael Siegel
>
> ------------------------------
> *Von:* Torell, Kent L <Kent.Torell@gd-ms.com>
> *Gesendet:* Montag, 3. Juni 2019 17:10
> *An:* Erik Heinz
> *Cc:* usrp-users@lists.ettus.com
> *Betreff:* RE: B210: 1/f noise and LO offset
>
>
> The phase noise comes from the B210 LO (RF synthesizer), and is present
> regardess of the frequency offset=E2=80=A6you are misled by the log axis =
of the
> plot.
>
>
>
> The close-in noise can be improved by using a high quality external 10 MH=
z
> source.  The control loop action of the synthesizer translates the
> reference phase noise to the LO phase noise.  You may have a lab standard
> available; or you could purchase a GPSDO version for the B210 (Ettus part
> 783454-01).
>
>
>
> If this doesn=E2=80=99t meet your needs, you will need to shift the signa=
l lower
> in frequency with an external mixer and a high quality microwave
> synthesizer (e.g. $20K Rhode/Keysight/etc.) that has the phase noise you
> require.   The B210 uses an Analog Devices AD9361 chip, which generates t=
he
> RF local oscillator signal with a high frequency phase locked loop, then
> divides it down to the requested frequency.  5 GHz is at the upper end of
> it=E2=80=99s range, so the division is small and the phase noise will be =
at it=E2=80=99s
> highest.   Moving down several octaves will improve the phase noise,
> dropping 6 dB for every octave (e.g. 500 MHz would have 20 dB lower phase
> noise than 5 GHz).
>
>
>
> Kent Torell
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Er=
ik
> Heinz via USRP-users
> *Sent:* Monday, June 3, 2019 3:06 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] B210: 1/f noise and LO offset
>
>
>
> Hello everyone,
>
>
>
> preliminary remark: I am an physicist - so please excuse some possible
> knowledge gaps in radio engineering :-).
>
>
>
> I would like to use a B210 to measure the IQ response of superconducting
> resonators at about 5 GHz. This is done by feeding the resonators a signa=
l
> from the transmitter with a frequency near the resonance, amplifying by
> LNAs, coupling to the receiver, demodulating to base band, and recording
> the resulting IQ signal. The signal bandwidth of interest will be small, =
in
> the kHz range.
>
>
>
> Since noise of the resonators has to be measured as well, I first had a
> look at  the noise of the B210 output without an external signal. The
> result is plotted in figure 1 (vertical axis is scaled to the output rang=
e
> of the ADC). It seems, below 100kHz the B210 receiver has strong 1/f
> noise. I would guess this is hardware noise from the mixer. Anyone knows =
if
> this assumption is correct?
>
>
>
> So I thought it would be a good idea to demodulate not directly to base
> band, but to an IF of may be 100 kHz and do the rest in software. I
> did a quick test using gnu radio, feeding the output of the USRP source a=
nd
> a 100 kHz signal to a multiplier. This indeed has the
> desired effect (figure 2, blue curve vs. red curve).
>
> If I understand the concept of the B210 local oscillators correctly, the
> same should be possible directly on the B210, using an LO offset of 100
> kHz. The result, however, is completely different (figure 2, green curve)=
.
>
>
>
> Any ideas why? Thank you.
>
>
>
> Best regards,
>
> Erik
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000a61f0058a82680e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Did you make sure to select the external reference when c=
reating the UHD device?=C2=A0</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jun 4, 2019, 7:11 AM Erik Heinz via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
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
<div id=3D"m_-4846271446825365897Signature">
<div name=3D"divtagdefaultwrapper">
-- <br>
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80<br>
Supracon AG<br>
Dr. Erik Heinz<br>
An der Lehmgrube 11<br>
07751 Jena<br>
Tel.: +49 3641 2328-165<br>
Fax: +49 3641 2328-109<br>
Internet: <a href=3D"http://www.supracon.com" target=3D"_blank" rel=3D"nore=
ferrer">http://www.supracon.com</a><br>
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80<br>
Handelsregister:=C2=A0 Amtsgericht Gera HRB=C2=A0 208970<br>
Umsatzsteuer-Id.:=C2=A0 DE 216 111 685<br>
<br>
Kaufm. Vorstand:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Matthias Meyer<br>
Vorsitz Aufsichtsrat:=C2=A0 Prof. Dr. Michael Siegel<br>
<br>
</div>
</div>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4846271446825365897divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> =
Torell, Kent L &lt;<a href=3D"mailto:Kent.Torell@gd-ms.com" target=3D"_blan=
k" rel=3D"noreferrer">Kent.Torell@gd-ms.com</a>&gt;<br>
<b>Gesendet:</b> Montag, 3. Juni 2019 17:10<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
<b>Betreff:</b> RE: B210: 1/f noise and LO offset</font>
<div>=C2=A0</div>
</div>
<div>
<div class=3D"m_-4846271446825365897WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">The phase noise comes from the B210 L=
O (RF synthesizer), and is present regardess of the frequency offset=E2=80=
=A6you are misled by the log axis of the plot.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">The close-in noise can be improved by=
 using a high quality external 10 MHz source.=C2=A0 The control loop action=
 of the synthesizer translates the reference phase
 noise to the LO phase noise.=C2=A0 You may have a lab standard available; =
or you could purchase a GPSDO version for the B210 (Ettus part 783454-01).<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">If this doesn=E2=80=99t meet your nee=
ds, you will need to shift the signal lower in frequency with an external m=
ixer and a high quality microwave synthesizer (e.g.
 $20K Rhode/Keysight/etc.) that has the phase noise you require.=C2=A0=C2=
=A0 The B210 uses an Analog Devices AD9361 chip, which generates the RF loc=
al oscillator signal with a high frequency phase locked loop, then divides =
it down to the requested frequency.=C2=A0 5 GHz is
 at the upper end of it=E2=80=99s range, so the division is small and the p=
hase noise will be at it=E2=80=99s highest.=C2=A0=C2=A0 Moving down several=
 octaves will improve the phase noise, dropping 6 dB for every octave (e.g.=
 500 MHz would have 20 dB lower phase noise than 5 GHz).</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Kent Torell</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0</span></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"mail=
to:usrp-users-bounces@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer"=
>usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Erik Heinz via USRP-users<br>
<b>Sent:</b> Monday, June 3, 2019 3:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] B210: 1/f noise and LO offset</span></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
ello everyone,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">p=
reliminary remark: I am an physicist=C2=A0- so please excuse some possible =
knowledge gaps in radio engineering :-).</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 would like to use a B210 to measure the IQ response of superconducting res=
onators at about 5 GHz.=C2=A0This is done by feeding the resonators=C2=A0a =
signal from the transmitter with a frequency near the=C2=A0resonance,=C2=A0=
amplifying
 by LNAs, coupling to the receiver, demodulating to=C2=A0base band, and rec=
ording the=C2=A0resulting IQ signal. The signal bandwidth of interest will =
be small, in the kHz range.</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
ince noise of the resonators has to be measured as well, I first had a look=
 at =C2=A0the=C2=A0noise=C2=A0of=C2=A0the B210 output without an external s=
ignal.=C2=A0The result=C2=A0is plotted in=C2=A0figure 1 (vertical axis is s=
caled
 to the output range of the ADC). It seems,=C2=A0below 100kHz the B210=C2=
=A0receiver=C2=A0has strong 1/f noise.=C2=A0I would guess this is hardware =
noise from the mixer.=C2=A0Anyone knows if this=C2=A0assumption is correct?=
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
o I thought it=C2=A0would=C2=A0be a=C2=A0good=C2=A0idea to=C2=A0demodulate =
not directly=C2=A0to base band, but to an=C2=A0IF of=C2=A0may be 100 kHz=C2=
=A0and=C2=A0do the rest in software.=C2=A0I did=C2=A0a=C2=A0quick test=C2=
=A0using=C2=A0gnu radio, feeding the=C2=A0output=C2=A0of
 the USRP source=C2=A0and a=C2=A0100 kHz signal=C2=A0to a multiplier. This =
indeed has the desired=C2=A0effect=C2=A0(figure 2, blue=C2=A0curve vs. red =
curve).=C2=A0
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
f I understand the concept of the B210 local oscillators correctly, the sam=
e should be possible directly on the B210, using an LO offset of 100 kHz.=
=C2=A0The result, however,=C2=A0is completely different=C2=A0(figure
 2,=C2=A0green curve).=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">A=
ny ideas why? Thank you.</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">B=
est regards,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">E=
rik</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">=
=C2=A0</span></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a61f0058a82680e--


--===============6171866414990979181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6171866414990979181==--

