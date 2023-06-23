Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E76973BBF5
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jun 2023 17:48:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 962B8384845
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jun 2023 11:48:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687535296; bh=c2jrmuFhuPBC3XIOHgI+FLNqKQc36qYf6PkIamBzVBg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yejvu2AF9Y1Gmvq06rtHLFKcfT8hARPFGeVjAjG5+7ar2ozZAO89LtfJk+bjXF4VX
	 MZg3xuCP2PTF9Z1p+qnfMa6oQjwiSr6jSUdSiep11EA23yfQMWsBOZJQGWdueLeLiT
	 8/+AYC+vZZ5hWtTadEr2jzo0IiZuTdBPbgSenQWxs83/yB2OueABuoBwpSuRIUD1KS
	 Gk2F8nOPZLhSBcm7vHR8/SIipuco6NroMnzuIOh3B+5Z4k4+19XiQ1v87QlWYHhGCt
	 J0pyWLLbhP/AMuIgrs9HDq1cbw4cyvJJ27KCcmxoc1y1VRc5mHZm27tw7mE4at1NXJ
	 AnzCq4N5P5wCw==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A7DA3845C3
	for <usrp-users@lists.ettus.com>; Fri, 23 Jun 2023 11:47:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RVE/WE2H";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-39e8a7701f0so546039b6e.3
        for <usrp-users@lists.ettus.com>; Fri, 23 Jun 2023 08:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687535238; x=1690127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=unjUFEsIsZcEcdH+Ug6VCmYx2pk09ApU6T+sx0lAqHM=;
        b=RVE/WE2HiF5H6ANsv7/KQl9tcnNbL1w8hHkPznR5PPRWS5CKshXa7Si3sZmpPU7uHj
         JiunLdNdtAyIVIV1dK5fAx7lqxJkfXpyOU/ogaxNVk72Jb4Xd+SV+6qq3V0FeY3EWfAr
         cDT6J2+xSDmREBQk1oHkAAb3ZDjwtD/pZ3n6uvMeJQREjikcmfLSQLYKkvmSWI5TOAhg
         UqazmowSERHv5Ze2JHGFRdJE/kEJRlv5rR0WvGrX9yZo5EQofvU1/P7+7EMrREMqQ/LR
         jRVAs65ps5UsoJIVdnrajmRcHIfjYAGaMIaAtECp0mIXAOMyGGDtu1q4THJOPdL2lFa7
         hxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687535238; x=1690127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unjUFEsIsZcEcdH+Ug6VCmYx2pk09ApU6T+sx0lAqHM=;
        b=ZgEOMBVZbuMDlHTafVKk12R37pATYsMd5ank3v1kTdxaKyLCJBfE1oTfnMfJq5vt8r
         W13q4R272q9byXB22BK12a3FSEmELEfHuVntTdD624d8NCEjRZHTswkPNZ5lb7ea9ffG
         mTHFLm9Pq62b4R2Rl7dtGXO69eHx7/caB4Bch4DAaHPHFcuFczbrvYTA31/59QyNaDyi
         EWMahuI/XxK8D9XsGpEYcO1IBd2erER+DWqsSihHRvePHxGQGnJ9W+2Wj+yCho/kReDt
         xwzst6L6hboL7Vu00mxu/C5NmXDsxZg3F+MCGV8HYrvsmKbweZ+veQg1mzSPURiugJ2E
         i7Cw==
X-Gm-Message-State: AC+VfDyIDCEodrn4KAwxHI/9bvONZGdYk8v+5qw8F7TmWbjTk+JO589+
	+sQePmz78kc/RCyzZR2dFeII7zwMZIS0KEmtFEE=
X-Google-Smtp-Source: ACHHUZ6crjvkt4/9YSfk62oycq1S1CkP7y1DB6fjuIWYfzE7zw+4E5Tr9W7Vuaia5iwTEa4GfLU5q4HB0s3e/aRKAVA=
X-Received: by 2002:a05:6808:1523:b0:3a0:6391:55cd with SMTP id
 u35-20020a056808152300b003a0639155cdmr5801241oiw.12.1687535238602; Fri, 23
 Jun 2023 08:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <b8ebb484-ca34-37c3-7bc1-79a63735abef@gmail.com> <CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmail.com>
 <d7d5ad49-4634-18a0-5ee4-368d3ebe2cb3@gmail.com> <JN1P275MB053520FB1A008489CC34C63C9523A@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
In-Reply-To: <JN1P275MB053520FB1A008489CC34C63C9523A@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
From: Carlo Venier <venier.carlo@gmail.com>
Date: Fri, 23 Jun 2023 17:47:07 +0200
Message-ID: <CAHRiTbkzQkwwRfdCsp_RqpwSPNXbe121181FcR1UQ7OiDhv3ig@mail.gmail.com>
To: Leon Wabeke <LWabeke@csir.co.za>
Message-ID-Hash: OSQYM3O6TLBY2D5SJMA432GWK6YP3CCO
X-Message-ID-Hash: OSQYM3O6TLBY2D5SJMA432GWK6YP3CCO
X-MailFrom: venier.carlo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OSQYM3O6TLBY2D5SJMA432GWK6YP3CCO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2575248855652885271=="

--===============2575248855652885271==
Content-Type: multipart/alternative; boundary="00000000000071655405fecdeaf5"

--00000000000071655405fecdeaf5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leon

thank you very much for the screenshots.
 From these screenshots it is clearly visible that the noise floor shape
you plot is similar to the noise floor shape I plot.
I did the measurements both with the version 3.15.0.0 and 4.4.0.0 and
the shape does not change.

Thank you.

Best regards

Carlo Venier

Il ven 23 giu 2023, 11:42 Leon Wabeke <LWabeke@csir.co.za> ha scritto:

> Hi Carlo
>
>
>
> I am not sure if this will help, but here is what I could quickly get for
> you. I am accessing the X310 remotely and could either switch it to be
> connected to Antennas (LP0410 Antenna
> <https://www.ettus.com/all-products/lp0410/> 400MHz to 1GHz) sold by
> Ettus or then connected to a test loopback path driven from a B210 via a
> splitter. I didn=E2=80=99t run the B210s app, so that is as unconnected/t=
erminated
> as I could make it.
>
>
>
> I am sorry the remote exported screen cut of the highest bit of the
> spectrum. This was FFT using 100000 samples at 100Msps, showing an averag=
e
> over 50 such magnitudes to reduce the variance to give a more concrete vi=
ew
> of the spectrum shape.
>
>
>
> This was using UHD 4.2. I remember differences in the spectrum shape when
> running UHD3.13 or 3.15. I mostly tested with decimation down to 20MSps. =
In
> that situation the centre tuning frequency showed up as a leakage spur
> (although from my understanding there should be no LO set to that with th=
e
> TwinRX architecture), but more so on the second channel. And with 2 TwinR=
xs
> in one X310, channel 2 and 4 had that issue with the leakage being about =
5
> dB higher than on the other 2 channels (although still present on the
> others as well). This leakage seems to be improved now with UHD4.2 on my
> hardware.
>
>
>
> Regards
>
> Leon
>
>
>
> *From: *Marcus D. Leech <patchvonbraun@gmail.com>
> *Date: *Thursday, 22 June 2023 at 19:41
> *To: *Carlo Venier <venier.carlo@gmail.com>
> *Cc: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject: *[USRP-users] Re: TwinRx Spectrum shape
>
> [The e-mail server of the sender could not be verified (SPF Record)]
>
> On 22/06/2023 12:03, Carlo Venier wrote:
>
> Hi Marcus,
>
> when I turn down the gain, the shape of the spectrum noisefloor remains
> non-flat. Also at a gain of 0, the shape is wavy.
> I'm not feeding any RF source to the channels: they are 50 Ohm terminated=
.
> The plots of the spectrum were produced with a third party application.
> However, I've recorded the samples by using the "rx_samples_to_file" tool
> and then plotted them with Matlab but the shape remains the same (non-fla=
t).
> I am aware that the final spectrum is the convolution of all the filterin=
g
> stages, but I would like to know if this is the expected noisefloor
> spectrum for the TwinRx (for example for UBX the spectrum noisefloor is
> much more flat).
> For this reason, I am asking if someone can provide a plot of the spectru=
m
> of both channels at a sampling rate of 100 Msps.
>
> Thank you.
>
> Regards,
> Carlo Venier
>
> I can't get to this myself until probably the weekend.
>
> It is conventional when measuring receiver/filter response to use a noise
> source that produces enough power to be
>   considerably *above* the noise figure of the receiver.  At max gain, th=
e
> TwinRx has a noise figure of about 4-5dB,
>   and a terminator is a noise equivalent of 3dB.  A noise source of +15dB
> ENR would be useful here.
>
> What I have noticed is that at narrower bandwidths (10MHz), the response
> is non-flat (ignoring the inevitable edge roll-off)
>   at a level of about 1dB.  That isn't unexpected when you have a long
> filter chain.
>
>
>
>
>
>
>
> Il gio 22 giu 2023, 15:30 Marcus D. Leech <patchvonbraun@gmail.com> ha
> scritto:
>
> On 22/06/2023 05:48, Carlo Venier wrote:
>
> Good morning,
>
> I have some questions regarding the TwinRX daughterboard.
>
> 1) With the following settings:
>         Master Clock Rate =3D 200 MHz
>         Tuning Frequency =3D 2450 MHz
>         Sample rate =3D 100 Msps
>         Gain =3D 93
>         Every RF connector is 50 Ohm terminated
>         LO_OFFSET disabled
>
> I get a non-flat spectrum. In particular, the center portion of it is up
> to 5 dB higher than at +/- 40 MHz from the tuning frequency. You can see
> this behaviour in the attached figures.
>
> 2) The two channels have a different behaviour below 1.8 GHz (for example
> at 450 MHz). The spectrum of channel :1 is a lot more wavy than the
> spectrum of the channel :0. You can see this behaviour in the attached
> figures.
> In any case, also below 1.8 GHz the delta between min and max level is
> about 5 dBs.
>
> 3) Sometimes, the DC component pops up. As the TwinRX channels are a
> superheterodyne receivers, I don't expect that the DC component appears,
> but it happens.
>
> Is it possible that the TwinRX I'm using is not working properly? Or am I
> missing some settings?
>
> 4) Can somebody provide a screenshot of the spectrum of the TwinRx
> channels with the same settings at 1) for the tuning frequencies of 450 M=
Hz
> and 2450 MHz?
>
> Thank you.
>
>
> Best regards,
>
> Carlo Venier
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> What happens if you turn the gain down about 5dB?    What are you using t=
o
> provide a perfectly-flat noise input?
>
> What are you using to collect the data that produced these plots?
>
> The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW
> filters at the 1st IF (TA0824A and TA0851A, depending
>   on whether it's operating in "low band" or "high band").  The final IF
> filter is a discrete multi-stage design, but I don't
>   know what it's filter shape is.
>
> IN ADDITION, there are RF input filters that are selected based on the
> tuned RF frequency.    The end result of all of these
>   filters is that the final filter "shape" is the convolution of all of
> those individual filter shapes.
>
> I'm not sure what you mean by "sometimes the DC component shows up".    I
> would expect there to be spurs at some points--
>   for example those that are exact multiples of internal clocks, etc.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>

--00000000000071655405fecdeaf5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-size:12.8px">Hi Leon</span><br style=
=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-si=
ze:12.8px">thank you very much for the screenshots.</span><br style=3D"font=
-size:12.8px"><span style=3D"font-size:12.8px">=C2=A0From these screenshots=
 it is clearly visible that the noise floor shape</span><br style=3D"font-s=
ize:12.8px"><span style=3D"font-size:12.8px">you plot is similar to the noi=
se floor shape I plot.</span><br style=3D"font-size:12.8px"><span style=3D"=
font-size:12.8px">I did the measurements both with the version 3.15.0.0 and=
 4.4.0.0 and</span><br style=3D"font-size:12.8px"><span style=3D"font-size:=
12.8px">the shape does not change.</span><br style=3D"font-size:12.8px"><br=
 style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Thank you.</sp=
an><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span styl=
e=3D"font-size:12.8px">Best regards</span><div style=3D"color:rgb(136,136,1=
36);font-size:12.8px" dir=3D"auto"><br>Carlo Venier</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il ven 23 giu 2023=
, 11:42 Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csir.co.za">LWabeke@csir.=
co.za</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-ZA" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<div class=3D"m_-2963864657520896132WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Carlo<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I am not sure if th=
is will help, but here is what I could quickly get for you. I am accessing =
the X310 remotely and could either switch it to be connected to Antennas (<=
/span><a href=3D"https://www.ettus.com/all-products/lp0410/" target=3D"_bla=
nk" rel=3D"noreferrer"><span style=3D"font-size:13.5pt;font-family:&quot;So=
urce Sans Pro&quot;,sans-serif;color:#679c4b">LP0410
 Antenna</span></a> 400MHz to 1GHz) sold by Ettus or then connected to a te=
st loopback path driven from a B210 via a splitter. I didn=E2=80=99t run th=
e B210s app, so that is as unconnected/terminated as I could make it.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am sorry the remote exported screen cut of the hig=
hest bit of the spectrum. This was FFT using 100000 samples at 100Msps, sho=
wing an average over 50 such magnitudes to reduce the variance to give a mo=
re concrete view of the spectrum shape.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This was using UHD 4.2. I remember differences in th=
e spectrum shape when running UHD3.13 or 3.15. I mostly tested with decimat=
ion down to 20MSps. In that situation the centre tuning frequency showed up=
 as a leakage spur (although from
 my understanding there should be no LO set to that with the TwinRX archite=
cture), but more so on the second channel. And with 2 TwinRxs in one X310, =
channel 2 and 4 had that issue with the leakage being about 5 dB higher tha=
n on the other 2 channels (although
 still present on the others as well). This leakage seems to be improved no=
w with UHD4.2 on my hardware.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
<p class=3D"MsoNormal">Leon <span style=3D"font-size:11.0pt">
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div id=3D"m_-2963864657520896132mail-editor-reference-message-container">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Marcus D. Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"norefe=
rrer">patchvonbraun@gmail.com</a>&gt;<br>
<b>Date: </b>Thursday, 22 June 2023 at 19:41<br>
<b>To: </b>Carlo Venier &lt;<a href=3D"mailto:venier.carlo@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">venier.carlo@gmail.com</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;<br>
<b>Subject: </b>[USRP-users] Re: TwinRx Spectrum shape<u></u><u></u></span>=
</p>
</div>
<pre>[The e-mail server of the sender could not be verified (SPF Record)]<u=
></u><u></u></pre>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On 22/06/2023 12:03=
, Carlo Venier wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;-m=
oz-fixed&quot;,serif">Hi Marcus,<br>
<br>
when I turn down the gain, the shape of the spectrum noisefloor remains non=
-flat. Also at a gain of 0, the shape is wavy.<br>
I&#39;m not feeding any RF source to the channels: they are 50 Ohm terminat=
ed.<br>
The plots of the spectrum were produced with a third party application.<br>
However, I&#39;ve recorded the samples by using the &quot;rx_samples_to_fil=
e&quot; tool and then plotted them with Matlab but the shape remains the sa=
me (non-flat).<br>
I am aware that the final spectrum is the convolution of all the filtering =
stages, but I would like to know if this is the expected noisefloor spectru=
m for the TwinRx (for example for UBX the spectrum noisefloor is much more =
flat).<br>
For this reason, I am asking if someone can provide a plot of the spectrum =
of both channels at a sampling rate of 100 Msps.<br>
<br>
Thank you.<br>
<br>
Regards,<br>
Carlo Venier</span><span style=3D"font-size:11.0pt"><u></u><u></u></span></=
p>
</div>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I can&#39;t get to =
this myself until probably the weekend.<br>
<br>
It is conventional when measuring receiver/filter response to use a noise s=
ource that produces enough power to be<br>
=C2=A0 considerably *above* the noise figure of the receiver.=C2=A0 At max =
gain, the TwinRx has a noise figure of about 4-5dB,<br>
=C2=A0 and a terminator is a noise equivalent of 3dB.=C2=A0 A noise source =
of +15dB ENR would be useful here.<br>
<br>
What I have noticed is that at narrower bandwidths (10MHz), the response is=
 non-flat (ignoring the inevitable edge roll-off)<br>
=C2=A0 at a level of about 1dB.=C2=A0 That isn&#39;t unexpected when you ha=
ve a long filter chain.<br>
<br>
<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Il gio 22 giu 2023,=
 15:30 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; ha scritto:=
<u></u><u></u></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On 22/06/2023 05:48=
, Carlo Venier wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Good morning,<br>
<br>
I have some questions regarding the TwinRX daughterboard.<br>
<br>
1) With the following settings:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Master Clock Rate =3D 200 MHz<br=
>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning Frequency =3D 2450 MHz<br=
>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sample rate =3D 100 Msps<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Gain =3D 93<br>
=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 Every RF connector is 50 Ohm terminated<br=
>
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 LO_OFFSET disabled<br>
<br>
I get a non-flat spectrum. In particular, the center portion of it is up to=
 5 dB higher than at +/- 40 MHz from the tuning frequency. You can see this=
 behaviour in the attached figures.<br>
<br>
2) The two channels have a different behaviour below 1.8 GHz (for example a=
t 450 MHz). The spectrum of channel :1 is a lot more wavy than the spectrum=
 of the channel :0. You can see this behaviour in the attached figures.<br>
In any case, also below 1.8 GHz the delta between min and max level is abou=
t 5 dBs.<br>
<br>
3) Sometimes, the DC component pops up. As the TwinRX channels are a superh=
eterodyne receivers, I don&#39;t expect that the DC component appears, but =
it happens.<br>
<br>
Is it possible that the TwinRX I&#39;m using is not working properly? Or am=
 I missing some settings?<br>
<br>
4) Can somebody provide a screenshot of the spectrum of the TwinRx channels=
 with the same settings at 1) for the tuning frequencies of 450 MHz and 245=
0 MHz?<br>
<br>
Thank you.<br>
<br>
<br>
Best regards,<br>
<br>
Carlo Venier</span><span style=3D"font-size:11.0pt"><u></u><u></u></span></=
p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<u></u><u></u></span></p>
<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><u></=
u><u></u></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.e=
ttus.com</a><u></u><u></u></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt">What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=
=C2=A0 What are you using to provide a perfectly-flat noise input?<br>
<br>
What are you using to collect the data that produced these plots?<br>
<br>
The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW filter=
s at the 1st IF (TA0824A and TA0851A, depending<br>
=C2=A0 on whether it&#39;s operating in &quot;low band&quot; or &quot;high =
band&quot;).=C2=A0 The final IF filter is a discrete multi-stage design, bu=
t I don&#39;t<br>
=C2=A0 know what it&#39;s filter shape is.<br>
<br>
IN ADDITION, there are RF input filters that are selected based on the tune=
d RF frequency.=C2=A0=C2=A0=C2=A0 The end result of all of these<br>
=C2=A0 filters is that the final filter &quot;shape&quot; is the convolutio=
n of all of those individual filter shapes.<br>
<br>
I&#39;m not sure what you mean by &quot;sometimes the DC component shows up=
&quot;.=C2=A0=C2=A0=C2=A0 I would expect there to be spurs at some points--=
<br>
=C2=A0 for example those that are exact multiples of internal clocks, etc.<=
br>
<br>
<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">___________________=
____________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</blockquote>
</div>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><u></u>=C2=A0<u></u=
></span></p>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000071655405fecdeaf5--

--===============2575248855652885271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2575248855652885271==--
