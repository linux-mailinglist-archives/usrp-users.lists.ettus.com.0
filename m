Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D84ED348598
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 01:02:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2C2A383C66
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 20:02:00 -0400 (EDT)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 2713A383970
	for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 20:01:08 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id c3so156349qkc.5
        for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 17:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=AMVDKYcyG8niy7oeNgAcZpNrGcBIWrxf5tnUq6bc0VI=;
        b=kha7XwnC/jfb54OGIRBo7WDffcjVBoDFSptaHV1VOGT2zTC+Z/jozHDXhqg7OcdzaS
         pP3zCZj0Y+2dM4QESzXkJbuCwlGCqcKjC2Sc5Ww3TpVSGcQuPN1v3wcuXnCYnh/x9R++
         FBMzqsTJfthfdZN9UTi5rv7nFMINevRYobOnG6yIWKAeO+kKYLi4Xw3FEbYgf78MHiE7
         HFLEG7bnknknOd8fbNQrIoytG1PpglL0Haa/RnOHgSEhuNpPi7PspyWnV49KWrD+qfhq
         OoS746sOSGsfhwk0Xi+wdgL7pGafyxItd9dCfgHoiVutpugYICJAl4Ne/q/iRdTLAPSE
         KFvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=AMVDKYcyG8niy7oeNgAcZpNrGcBIWrxf5tnUq6bc0VI=;
        b=RVUv02HUOwIJv5meLxqUwFwbFmoh2CLdWNjtvzbd4O4FJ8ZLZ8OzG1e608brFkU9vm
         msNuPoZNZsPhyPPRaQNFFiAXmECbeCFNNf7+90etcBeIdGqPDGGKBPAVD47LY1gFVJVX
         FWeoCnQOHkezfLDn69fMjbanwLizhfZ6O4BMsEOHFI7mhlbNUk5foqJ0G84UjL7YwdiS
         G+Tyo/kPpQKTevPCYiPgKnB1ItIBE9pXay7UDU8MkwSHcsbwGkCpWmpT+FWFpB7LEflj
         5iOcV1NxcjAsu85jAKFcYjOm1o+Dt5mPHlvBTmXLyJucE2iZKK6GmRnDZac/WH5ltTZ4
         VW5g==
X-Gm-Message-State: AOAM531ktPbAtbDWKPzini53J3jhEbLPEkVBzMygFE54oB447rxDa9CQ
	s8ytHapHCrwWbZ22xglX9Wb1IdkhywE=
X-Google-Smtp-Source: ABdhPJwAwTrczeG1LorqPa9ywbh5ErCGZkEVU0rhxosptrhGmwR1C48HvfaN09t4Or1Foxj65RaSvg==
X-Received: by 2002:a05:620a:1474:: with SMTP id j20mr5743289qkl.272.1616630467423;
        Wed, 24 Mar 2021 17:01:07 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h8sm2479727qta.53.2021.03.24.17.01.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 17:01:06 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 24 Mar 2021 20:01:05 -0400
Message-Id: <524D8881-E4CD-4B00-9BE0-0ED72C7B218B@gmail.com>
References: <CO6PR19MB4801B2400531AAD6CB445001C6639@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801B2400531AAD6CB445001C6639@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: KXGSYVFDMV6FYTQXLEV3SRUTJBZWOUGI
X-Message-ID-Hash: KXGSYVFDMV6FYTQXLEV3SRUTJBZWOUGI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXGSYVFDMV6FYTQXLEV3SRUTJBZWOUGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7864649969475957555=="


--===============7864649969475957555==
Content-Type: multipart/alternative; boundary=Apple-Mail-F161C67E-82B5-45E7-B052-2A8256429675
Content-Transfer-Encoding: 7bit


--Apple-Mail-F161C67E-82B5-45E7-B052-2A8256429675
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You don=E2=80=99t need 1PPS for this. Having an external high quality refere=
nce may help, assuming my guess about your issue is correct. =20

What happens if your flow graph just simply emits a Cw tone, using the mute f=
unction perhaps tied to a GUI control or some such.=20

Sent from my iPhone

> On Mar 24, 2021, at 7:13 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> Ok, if that=E2=80=99s the case, would it help to have both USRPs connected=
 to the same 10 MHz reference signal and PPS? In this situation, would I nee=
d to provide a secondary source for the PPS, or can that use the 10 Mhz refe=
rence as well?
> =20
> Best Regards,
> =20
> Jerrid
> =20
> From: Marcus D. Leech <patchvonbraun@gmail.com>=20
> Sent: Wednesday, March 24, 2021 2:23 PM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Strong noise added to signal transmitted by X310=
 with a UBX 40 daughterboard
> =20
> On 03/24/2021 05:10 PM, Jerrid Plymale wrote:
> The devices are operating using direct connection via coax cables.
> You absolutely need to put a 30dB attenuator in-line to prevent RX destruc=
tion in the case of "ooops" moments from setting the TX
>   power output too high.
>=20
>=20
> =20
> The target frequency is 1.57542 GHz, and our current bandwidth is 4 MHz. W=
e will need to increase the bandwidth to 20 MHz soon for further system deve=
lopment.
> =20
> The TX and RX gain are maxed on the receiving hardware. The TX gain of the=
 transmitting hardware is set to 0, as at max the noise strength increases t=
o ~ 20 dB.
> =20
> Attached are images of the FFT provided by the Frequency Sink in Gnuradio.=
 Hopefully these give a visual aid for the problem at hand. When I have the t=
ransmitter USRP turned off (image 1), it would seem like the noise floor com=
ing into the USRP is around -94 dB. When the transmitter is turned on and th=
e flowgraph is started with the transmitted signal muted (I am using a pytho=
n block with code to create custom signals that is then connected to a mute b=
lock that then connects to the UHD USRP sink block to be able to mute the si=
gnal during runtime), the noise floor increases to around -78 dB.
> =20
> Best Regards,
> =20
> Jerrid=20
> You are likely just seeing the LO leakage, along with the inevitable phase=
-noise curve of the LO.
>=20
>=20
>=20
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Wednesday, March 24, 2021 11:58 AM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Strong noise added to signal transmitted by X310=
 with a UBX 40 daughterboard
> =20
> Is the j B is over-the-air or direct connection?
> =20
> What frequency? Bandwidth?
> =20
> Do you have TX and RX gain turned all the way up?
> =20
> Can you share your flow-graphs, or minimum
> Graphs that show the problem?
>=20
> Sent from my iPhone
>=20
>=20
>=20
> On Mar 24, 2021, at 12:20 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com=
> wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> I have been running tests in which I am transmitting a signal from one USR=
P X310 that=E2=80=99s using a UBX 40 daughterboard, and that signal is being=
 received by another USRP X310 using a UBX 40 daughterboard. I have noticed t=
hat when I have the receiving USRP running with the Gnuradio flowgraph activ=
e, as soon as I start the transmitting USRP=E2=80=99s Gnuradio flowgraph, th=
ere is a jump in the noise floor as it is seen by the receiving USRP, and it=
s roughly a 14 dB increase. This occurs even if I have the signal being tran=
smitted muted. Does anyone have any idea what the source of this added noise=
 could be? It is something that I need to mitigate as much as possible for t=
he tests I am running using these USRPs. Any feedback will be greatly apprec=
iated, thanks!
> =20
> Best Regards,
> =20
> Jerrid
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> =20

--Apple-Mail-F161C67E-82B5-45E7-B052-2A8256429675
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You don=E2=80=99t need 1PPS for this. Havin=
g an external high quality reference may help, assuming my guess about your i=
ssue is correct. &nbsp;<div><br></div><div>What happens if your flow graph j=
ust simply emits a Cw tone, using the mute function perhaps tied to a GUI co=
ntrol or some such.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 24, 2021, at 7:13 PM, J=
errid Plymale &lt;jerrid.plymale@canyon-us.com&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Ok, if that=E2=80=99=
s the case, would it help to have both USRPs connected to the same 10 MHz re=
ference signal and PPS? In this situation, would I need to provide a seconda=
ry source for the PPS, or can that use the
 10 Mhz reference as well?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Best Regards,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerrid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b><=
span style=3D"color:windowtext"> Marcus D. Leech &lt;patchvonbraun@gmail.com=
&gt;
<br>
<b>Sent:</b> Wednesday, March 24, 2021 2:23 PM<br>
<b>To:</b> Jerrid Plymale &lt;jerrid.plymale@canyon-us.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Strong noise added to signal transmitted by=
 X310 with a UBX 40 daughterboard<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 03/24/2021 05:10 PM, Jerrid Plymale wrote:<o:p></o=
:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">The devices are operating using direct connection via=
 coax cables.<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">You absolutely need to put a 30dB attenuator in-line t=
o prevent RX destruction in the case of "ooops" moments from setting the TX<=
br>
&nbsp; power output too high.<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The target frequency is 1.57542 GHz, and our current b=
andwidth is 4 MHz. We will need to increase the bandwidth to 20 MHz soon for=
 further system development.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The TX and RX gain are maxed on the receiving hardwar=
e. The TX gain of the transmitting hardware is set to 0, as at max the noise=
 strength increases to ~ 20 dB.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Attached are images of the FFT provided by the Freque=
ncy Sink in Gnuradio. Hopefully these give a visual aid for the problem at h=
and. When I have the transmitter USRP turned off (image 1), it would seem li=
ke the noise floor coming into
 the USRP is around -94 dB. When the transmitter is turned on and the flowgr=
aph is started with the transmitted signal muted (I am using a python block w=
ith code to create custom signals that is then connected to a mute block tha=
t then connects to the UHD USRP
 sink block to be able to mute the signal during runtime), the noise floor i=
ncreases to around -78 dB.
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid&nbsp; <o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">You are likely just seeing the LO leakage, along with=
 the inevitable phase-noise curve of the LO.<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D Leech <a href=3D"mailto:patchvo=
nbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> <br>
<b>Sent:</b> Wednesday, March 24, 2021 11:58 AM<br>
<b>To:</b> Jerrid Plymale <a href=3D"mailto:jerrid.plymale@canyon-us.com">&l=
t;jerrid.plymale@canyon-us.com&gt;</a><br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.et=
tus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Strong noise added to signal transmitted by=
 X310 with a UBX 40 daughterboard<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Is the j B is over-the-air or direct connection?<o:p>=
</o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What frequency? Bandwidth?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Do you have TX and RX gain turned all the way up?<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Can you share your flow-graphs, or minimum<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Graphs that show the p=
roblem?<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mar 24, 2021, at 12=
:20 PM, Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">j=
errid.plymale@canyon-us.com</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I have been running tests in which I am transmitting a=
 signal from one USRP X310 that=E2=80=99s using a UBX 40 daughterboard, and t=
hat signal is being received by another USRP X310 using a UBX 40 daughterboa=
rd. I have noticed that when I have the
 receiving USRP running with the Gnuradio flowgraph active, as soon as I sta=
rt the transmitting USRP=E2=80=99s Gnuradio flowgraph, there is a jump in th=
e noise floor as it is seen by the receiving USRP, and its roughly a 14 dB i=
ncrease. This occurs even if I have the
 signal being transmitted muted. Does anyone have any idea what the source o=
f this added noise could be? It is something that I need to mitigate as much=
 as possible for the tests I am running using these USRPs. Any feedback will=
 be greatly appreciated, thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</div>
</blockquote>
</div>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-F161C67E-82B5-45E7-B052-2A8256429675--

--===============7864649969475957555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7864649969475957555==--
