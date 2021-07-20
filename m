Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B05B3D04C4
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 00:48:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 352B8384B70
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 18:48:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XJN2r2mZ";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id BF445383997
	for <USRP-users@lists.ettus.com>; Tue, 20 Jul 2021 18:47:41 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id j7so696463qtj.6
        for <USRP-users@lists.ettus.com>; Tue, 20 Jul 2021 15:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=yjiyncnLc8ctWNgURDoymDZODS6IlZekLYEbQSVOfC4=;
        b=XJN2r2mZmAfQvhe6yLHj5OFkiEKWvphNegU9kIkH1rhehBNf8XY9ZEBCQhh8G6O5lB
         nATvflzi4b4TooNGTGALloUqrEvEsvbdP7ONm6PIGschJHAjv9vb9oVmZKE82ru6P9pF
         boKy6MdR4CJqirPVCtyzFkANI6qWkoNA0oO52vALPZT/kdxcf1Ia1awBIvWppug9jc5f
         OHwAgLIjWbaPjHBF+ob9LF8uaE8vlSPCozaBKzh/Vi3Tk2QcKH5vRho1B8vwurdqVWUR
         y6BUxUCbQsUI2I5IbUvo1bqtpgrvPYiF4ZU0/ibAL74iTbtq6y/f2KHUmugxDvOSLiIA
         pRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=yjiyncnLc8ctWNgURDoymDZODS6IlZekLYEbQSVOfC4=;
        b=jJzM18aHRumRK4wZurzOO82cKSzPBeVovs5BXU2V3RNPrwbcpAEYrrEIr0eCQ6BSH3
         htDzsRthAUNvIWCXI5QPepe/f1DuXiOuwjywJbEB8x9Y+Tg74eTKxztMK0bii/QdHTLg
         ZLaa6l52mxNB8yUAVBEg8yHuwXKhKxoVoMNLcdsuBOLOVeIPCwL+QytRe5/35cAQ3hv+
         EM4ymo3zR3wLCBR8+A5Kk3t95qhe/K0GjoOLfP1H39hsO+/Xs9tsVzbHkIc4d44YzTKV
         SNUB97+ySj4e63Nfdb3gyVitqjy84eKT2UWNmkcQyD+NHSKOayYnP2BUhKCp1xbVH6hl
         oFHw==
X-Gm-Message-State: AOAM533ky+PUxE/s6QAlcfsDIT6e+g6I9R24Sedpz3DYGQRHi/L4hGtY
	KnKiRRFK/x8kiwIA35dw+xc=
X-Google-Smtp-Source: ABdhPJxpBKlrHm/naqb1VdHHZoiaIlnyCbBmIzUrQ0B/HPhKbcHOAOXliCl30tj8dSemAOCf5Tp1mg==
X-Received: by 2002:ac8:734a:: with SMTP id q10mr19278700qtp.73.1626821261325;
        Tue, 20 Jul 2021 15:47:41 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id d28sm7125858qkj.25.2021.07.20.15.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 15:47:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 20 Jul 2021 18:47:39 -0400
Message-Id: <8F3DAC9C-6C9C-4DBD-BA8D-D5B77A047CC4@gmail.com>
References: <DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI@lists.ettus.com>
In-Reply-To: <DCyjcdGRCSGZBKhfjKzj4bq3XVMNwePBV5mzMVquI@lists.ettus.com>
To: thebouleoffools@gmail.com
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: WHKME2GSMIOZSX2PORNNVGSFN37HUMSI
X-Message-ID-Hash: WHKME2GSMIOZSX2PORNNVGSFN37HUMSI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHKME2GSMIOZSX2PORNNVGSFN37HUMSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4690122751970910757=="


--===============4690122751970910757==
Content-Type: multipart/alternative; boundary=Apple-Mail-ABE3A8F4-3BB5-4495-8867-D58D15177D45
Content-Transfer-Encoding: 7bit


--Apple-Mail-ABE3A8F4-3BB5-4495-8867-D58D15177D45
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The DDC provides sample-rate conversion and =E2=80=9Cfine tuning=E2=80=9D of=
 the complex IF delivered by the ADC. For most RFNOC platforms the radio blo=
ck operates at the master clock rate, so you need a DDC block to do the samp=
le rate conversion.=20

But if you retune the radio by 4Mhz that isn=E2=80=99t conceptually =E2=80=9C=
divided=E2=80=9D by the sample rate conversion factor. When you retune the r=
adio it delivers a new block of bandwidth to the DDC=E2=80=944Mhz away from w=
here you previously tuned it.=20

Sample rate conversion has to work this way or signals would become badly ma=
ngled.=20

Sent from my iPhone

> On Jul 20, 2021, at 6:14 PM, thebouleoffools@gmail.com wrote:
>=20
> =EF=BB=BF
> I=E2=80=99m trying to understand what the DDC block is doing, because it d=
oesn=E2=80=99t appear to be working like I would expect. I=E2=80=99m somewha=
t new to DSP in general, so it=E2=80=99s possible I have a fundamental misco=
nception here.
>=20
>=20
>=20
> Let=E2=80=99s say I have an RFNoC radio rx block connected to a DDC, a str=
eamer, and then out to a QT Frequency Sink. My radio is running at 16 MS/sec=
, and I want the DDC to output at 400 KS/sec, a decimation factor of 40. My u=
nderstanding here is that my 16 MHz bandwidth should then be represented as a=
 400 kHz bandwidth in my FFT plot - this is the behavior I would get if I us=
ed, say the rational resampler block in gnuradio. So if I shifted my frequen=
cy center by 4 MHz at the receiver, that would show up as a 4 MHz/40 =3D 100=
 kHz shift in my FFT if I originally had a peak at the center.
>=20
>=20
>=20
> This doesn=E2=80=99t seem to be happening with the DDC block. It looks mor=
e like it=E2=80=99s truncating, rather than downsampling. For example, I app=
ly a 100 kHz shift to my receiver, and I get a 100 kHz shift in my peak in m=
y FFT.
>=20
>=20
>=20
> Diving into the code, I see that there is a fair amount of difference in t=
he front facing functions using the gnuradio libraries than what I see in in=
 the USRP hardware manual. For example, get_ and set_input_rate() are not av=
ailable. When I call =E2=80=9Cettus_rfnoc_ddc_0.get_int_property(=E2=80=98de=
cim=E2=80=99)=E2=80=9D, it always returns a rate of 1 regardless of what my i=
nput/output rates are set to. Changing this value with set_int_property() do=
esn=E2=80=99t appear to have any effect, other than changing the number retu=
rned by the above function. What=E2=80=99s going on here?
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-ABE3A8F4-3BB5-4495-8867-D58D15177D45
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The DDC provides sample-rate conversion and=
 =E2=80=9Cfine tuning=E2=80=9D of the complex IF delivered by the ADC. For m=
ost RFNOC platforms the radio block operates at the master clock rate, so yo=
u need a DDC block to do the sample rate conversion.&nbsp;<div><br></div><di=
v>But if you retune the radio by 4Mhz that isn=E2=80=99t conceptually =E2=80=
=9Cdivided=E2=80=9D by the sample rate conversion factor. When you retune th=
e radio it delivers a new block of bandwidth to the DDC=E2=80=944Mhz away fr=
om where you previously tuned it.&nbsp;</div><div><br></div><div>Sample rate=
 conversion has to work this way or signals would become badly mangled.&nbsp=
;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On Jul 20, 2021, at 6:14 PM, thebouleoffools@gmail.com=
 wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr"=
>=EF=BB=BF<p>I=E2=80=99m trying to understand what the DDC block is doing, b=
ecause it doesn=E2=80=99t appear to be working like I would expect. I=E2=80=99=
m somewhat new to DSP in general, so it=E2=80=99s possible I have a fundamen=
tal misconception here.</p><p><br></p><p>Let=E2=80=99s say I have an RFNoC r=
adio rx block connected to a DDC, a streamer, and then out to a QT Frequency=
 Sink. My radio is running at 16 MS/sec, and I want the DDC to output at 400=
 KS/sec, a decimation factor of 40. My understanding here is that my 16 MHz b=
andwidth should then be represented as a 400 kHz bandwidth in my FFT plot - t=
his is the behavior I would get if I used, say the rational resampler block i=
n gnuradio. So if I shifted my frequency center by 4 MHz at the receiver, th=
at would show up as a 4 MHz/40 =3D 100 kHz shift in my FFT if I originally h=
ad a peak at the center.</p><p><br></p><p>This doesn=E2=80=99t seem to be ha=
ppening with the DDC block. It looks more like it=E2=80=99s truncating, rath=
er than downsampling. For example, I apply a 100 kHz shift to my receiver, a=
nd I get a 100 kHz shift in my peak in my FFT.</p><p><br></p><p>Diving into t=
he code, I see that there is a fair amount of difference in the front facing=
 functions using the gnuradio libraries than what I see in in the USRP hardw=
are manual. For example, get_ and set_input_rate() are not available. When I=
 call =E2=80=9Cettus_rfnoc_ddc_0.get_int_property(=E2=80=98decim=E2=80=99)=E2=
=80=9D, it always returns a rate of 1 regardless of what my input/output rat=
es are set to. Changing this value with set_int_property() doesn=E2=80=99t a=
ppear to have any effect, other than changing the number returned by the abo=
ve function. What=E2=80=99s going on here?</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-ABE3A8F4-3BB5-4495-8867-D58D15177D45--

--===============4690122751970910757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4690122751970910757==--
