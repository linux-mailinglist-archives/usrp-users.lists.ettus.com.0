Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1B69A4306
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 17:57:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 941563858CD
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 11:57:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729267022; bh=a7dkusMcwVIW7RFe6lkDp2SAEYXu7ALN/10l+5ROrB0=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PAfbkrbeccuOoNjxr4+XKVjQSH6tSZYa/a9aax5x7dMS48aRty+v3hsRuwn8nANDy
	 Rz65ZCMTn9FZ2jOdfU7Al8kHEqLdq4AUFK0OJNAf4XptSTZaebYyzNrevRcVJIab1y
	 5ODoTvFIaZa5DCB6e5DdOkmurvNzPTcZxaY1r4ycZyAPIKCfKkMHaESbs8Cm+9iDMz
	 1yvOPG9Yqu6fCBZkzxbZGDWXmikR/NNnsHUPoJ5CkcuYmn67grEmwNG0Np5+AxRvA+
	 WIABUHdwDGwjZ0u1A+gdwpTqsqRgrjSeEbIPMCxeoxM1Cae4Q26ePSXUJ2H0w0w2il
	 SEAvqgI7LKNMw==
Received: from zproxy2.enst.fr (zproxy2.enst.fr [137.194.2.221])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A3173858AF
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 11:56:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=imt-atlantique.fr header.i=@imt-atlantique.fr header.b="o9jks1Qv";
	dkim-atps=neutral
Received: from localhost (localhost [IPv6:::1])
	by zproxy2.enst.fr (Postfix) with ESMTP id 965A980857;
	Fri, 18 Oct 2024 17:56:51 +0200 (CEST)
Received: from zproxy2.enst.fr ([IPv6:::1])
 by localhost (zproxy2.enst.fr [IPv6:::1]) (amavis, port 10032) with ESMTP
 id yZLSsaSHBztq; Fri, 18 Oct 2024 17:56:51 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by zproxy2.enst.fr (Postfix) with ESMTP id 0C09B808BE;
	Fri, 18 Oct 2024 17:56:51 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zproxy2.enst.fr 0C09B808BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imt-atlantique.fr;
	s=50EA75E8-DE22-11E6-A6DE-0662BA474D24; t=1729267011;
	bh=DoXXQvjQzLplFY8Lr/NydJ4T9GqKEYPmb3pnpANuCAw=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=o9jks1QvGjfW2ej58a99EgwQXQQu1mZ56LQ0VvdnxBs9euA19oc71r6yfQVYbfiDO
	 T4tVMoiroLcCt2m6d6FkiNwDBHZbL/eHehuYb3WijTeW5zoRAc296O90Tz3VpqW7P/
	 5sWnTn7Mdm11XyCoR8ksGzaWe+1THv2KDHYo25qs=
X-Virus-Scanned: amavis at enst.fr
Received: from zproxy2.enst.fr ([IPv6:::1])
 by localhost (zproxy2.enst.fr [IPv6:::1]) (amavis, port 10026) with ESMTP
 id CP6TBLT8_wj9; Fri, 18 Oct 2024 17:56:50 +0200 (CEST)
Received: from zmail-imta2.enst.fr (zmail-imta2.enst.fr [137.194.2.217])
	by zproxy2.enst.fr (Postfix) with ESMTP id C3B0D80857;
	Fri, 18 Oct 2024 17:56:50 +0200 (CEST)
Date: Fri, 18 Oct 2024 17:56:50 +0200 (CEST)
From: Patrice PAJUSCO <patrice.pajusco@imt-atlantique.fr>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr>
In-Reply-To: <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com>
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com> <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [::ffff:10.129.39.196]
X-Mailer: Zimbra 9.0.0_GA_4653 (ZimbraWebClient - FF131 (Win)/9.0.0_GA_4653)
Thread-Topic: ADC saturation problem in USRP X310
Thread-Index: gowe6XFl3MVk87wN51hw5vyTUuCkBQ==
Message-ID-Hash: XVQ4CWXIFENQ6YGNMOZK2ZM2PRHSTTI3
X-Message-ID-Hash: XVQ4CWXIFENQ6YGNMOZK2ZM2PRHSTTI3
X-MailFrom: patrice.pajusco@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XVQ4CWXIFENQ6YGNMOZK2ZM2PRHSTTI3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7443894031541831557=="

--===============7443894031541831557==
Content-Type: multipart/alternative;
	boundary="=_1e0c98bf-606a-4758-bf8a-7580089b5284"

--=_1e0c98bf-606a-4758-bf8a-7580089b5284
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,=20

thank you for your answer. Just to clarify the problem a little better.=20
We use a UBX160 daughter card.=20
To have optimal SNR, an automatic gain control has been implemented based o=
n the max IQ value.=20
The sample rate is 30.72 for LTE decoding.=20
Unfortunately, high power exists outside our useful band (30.72 MHz) but in=
side the bandwidth of the 160 daughter card (sampled by the 200 MHz ADC).=
=20
We expected the AGC to saturate... but after DSP filtering process by the m=
otherboard, the IQ samples got with UHD is no longer saturated.=20
As a result, the IQ max is low enough and AGC control continue to increase =
the gain :-(=20
It is my current understanding of the situation.=20
Is there any way to have an estimate of the raw AGC input level when the sa=
mple rate is not 200 MHz?=20
I hope to be clear enough... but surelty not crystal clear :-)=20
Best regards=20

Patrice=20


De: "Marcus D. Leech" <patchvonbraun@gmail.com>=20
=C3=80: "usrp-users" <usrp-users@lists.ettus.com>=20
Envoy=C3=A9: Vendredi 18 Octobre 2024 17:38:43=20
Objet: [USRP-users] Re: ADC saturation problem in USRP X310=20

On 18/10/2024 11:35, je.amghar@gmail.com wrote:=20
>=20
> Hello,=20
>=20
> I am currently facing an issue with ADC saturation on a USRP X310=20
> equipped with a UBX daughterboard. We are conducting measurements=20
> using an LTE signal and a sinusoidal input signal, but it seems that=20
> the ADC is saturating, leading to a loss of dynamic range in our=20
> measurements.=20
>=20
> Test context:=20
> We are transmitting (using a generator) an LTE signal with a power of=20
> -50 dBm at a center frequency of 1815 MHz. Then, we add a sinusoidal=20
> signal at 1865 MHz with a power of -30 dBm. This second, more powerful=20
> signal seems to be causing the ADC to saturate, even though we don=E2=80=
=99t=20
> see it directly in the IQ samples due to the digital filtering applied=20
> downstream.=20
>=20
> Problem:=20
> We suspect that the ADC saturation occurs before IQ conversion and is=20
> therefore masked by the digital filters. This results in a loss of=20
> dynamic range in our measurements, and we feel that adjusting the gain=20
> based on the IQ samples may not be reliable.=20
>=20
> Question:=20
> How can this ADC saturation be detected upstream of the IQ processing?=20
> Are there tools or methods to directly monitor the sample values at=20
> the output of the ADC in the USRP (before digital filtering) to=20
> prevent saturation?=20
> Do you have any advice for implementing an automatic gain controller=20
> (AGC) based on reliable saturation indicators?=20
> We would appreciate any suggestions or experiences in resolving this=20
> issue. If you have encountered a similar problem or have ideas on how=20
> to address it, we would be happy to hear your recommendations.=20
>=20
> Thank you very much for your help!=20
>=20
>=20
A -30dBm signal applied at the antenna inputs, and then amplified=20
greatly by the amplifier/mixer/gain-chain ahead of the ADC=20
would very-likely saturate the ADC. A -30dBm signal from an "over=20
the air" antenna is one that is thunderingly loud in=20
the real world. It would not surprise me to find that gain elements=20
ahead of the ADC are *also* becoming non-linear.=20

Turn your gain down.=20

_______________________________________________=20
USRP-users mailing list -- usrp-users@lists.ettus.com=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20

--=_1e0c98bf-606a-4758-bf8a-7580089b5284
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div id=3D"zimbraEditorContainer" style=3D"font-family: arial,h=
elvetica,sans-serif; font-size: 12pt; color: #000000" class=3D"4"><div>Dear=
 Marcus,<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div>=
<div>thank you for your answer. Just to clarify the problem a little better=
.</div><div> We use a UBX160 daughter card. </div><div>To have optimal SNR,=
 an automatic gain control has been implemented based on the max IQ value.<=
/div><div> The sample rate is 30.72 for LTE decoding. </div><div>Unfortunat=
ely, high power exists outside our useful band (30.72 MHz) but inside the b=
andwidth of the 160 daughter card (sampled by the 200 MHz ADC).</div><div>W=
e expected the AGC to saturate... but after DSP filtering process by the mo=
therboard, the IQ samples got with UHD is no longer saturated.<br>As a resu=
lt, the IQ max is low enough and AGC control continue to increase the gain =
:-(<br>It is my current understanding of the situation. <br>Is there any wa=
y to have an estimate of the raw AGC input level when the sample rate is no=
t 200 MHz?<br>I hope to be clear enough... but surelty&nbsp; not crystal cl=
ear :-)</div><div>Best regards<br data-mce-bogus=3D"1"></div><div><br data-=
mce-bogus=3D"1"></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; Patrice<br data-mce-bogus=3D"1"></div><div><br =
data-mce-bogus=3D"1"></div><hr id=3D"zwchr" data-marker=3D"__DIVIDER__"><di=
v data-marker=3D"__HEADERS__"><b>De: </b>"Marcus D. Leech" &lt;patchvonbrau=
n@gmail.com&gt;<br><b>=C3=80: </b>"usrp-users" &lt;usrp-users@lists.ettus.c=
om&gt;<br><b>Envoy=C3=A9: </b>Vendredi 18 Octobre 2024 17:38:43<br><b>Objet=
: </b>[USRP-users] Re: ADC saturation problem in USRP X310<br></div><div><b=
r></div><div data-marker=3D"__QUOTED_TEXT__">On 18/10/2024 11:35, je.amghar=
@gmail.com wrote:<br>&gt;<br>&gt; Hello,<br>&gt;<br>&gt; I am currently fac=
ing an issue with ADC saturation on a USRP X310 <br>&gt; equipped with a UB=
X daughterboard. We are conducting measurements <br>&gt; using an LTE signa=
l and a sinusoidal input signal, but it seems that <br>&gt; the ADC is satu=
rating, leading to a loss of dynamic range in our <br>&gt; measurements.<br=
>&gt;<br>&gt; Test context:<br>&gt; We are transmitting (using a generator)=
 an LTE signal with a power of <br>&gt; -50 dBm at a center frequency of 18=
15 MHz. Then, we add a sinusoidal <br>&gt; signal at 1865 MHz with a power =
of -30 dBm. This second, more powerful <br>&gt; signal seems to be causing =
the ADC to saturate, even though we don=E2=80=99t <br>&gt; see it directly =
in the IQ samples due to the digital filtering applied <br>&gt; downstream.=
<br>&gt;<br>&gt; Problem:<br>&gt; We suspect that the ADC saturation occurs=
 before IQ conversion and is <br>&gt; therefore masked by the digital filte=
rs. This results in a loss of <br>&gt; dynamic range in our measurements, a=
nd we feel that adjusting the gain <br>&gt; based on the IQ samples may not=
 be reliable.<br>&gt;<br>&gt; Question:<br>&gt; How can this ADC saturation=
 be detected upstream of the IQ processing? <br>&gt; Are there tools or met=
hods to directly monitor the sample values at <br>&gt; the output of the AD=
C in the USRP (before digital filtering) to <br>&gt; prevent saturation?<br=
>&gt; Do you have any advice for implementing an automatic gain controller =
<br>&gt; (AGC) based on reliable saturation indicators?<br>&gt; We would ap=
preciate any suggestions or experiences in resolving this <br>&gt; issue. I=
f you have encountered a similar problem or have ideas on how <br>&gt; to a=
ddress it, we would be happy to hear your recommendations.<br>&gt;<br>&gt; =
Thank you very much for your help!<br>&gt;<br>&gt;<br>A -30dBm signal appli=
ed at the antenna inputs, and then amplified <br>greatly by the amplifier/m=
ixer/gain-chain ahead of the ADC<br>&nbsp;&nbsp; would very-likely saturate=
 the ADC.&nbsp;&nbsp; A -30dBm signal from an "over <br>the air" antenna is=
 one that is thunderingly loud in<br>&nbsp;&nbsp; the real world.&nbsp; It =
would not surprise me to find that gain elements <br>ahead of the ADC are *=
also* becoming non-linear.<br><br>Turn your gain down.<br><br>_____________=
__________________________________<br>USRP-users mailing list -- usrp-users=
@lists.ettus.com<br>To unsubscribe send an email to usrp-users-leave@lists.=
ettus.com<br></div></div></body></html>
--=_1e0c98bf-606a-4758-bf8a-7580089b5284--

--===============7443894031541831557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7443894031541831557==--
