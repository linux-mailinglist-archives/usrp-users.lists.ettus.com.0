Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E7A9A43D4
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 18:27:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6AAE385815
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 12:27:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729268862; bh=KCQwH8Qd8rAUl48jggDLKqkJyHNOvGYiWOFBJJnhXP8=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Le6iS0TZ3DEM8UxzZm4gNv4JIB35JvsofNB4H/ZQ4hi04C1kvC63NxfBke6zFaGz8
	 7Vf+9fIGbiftCoe/Xk1shId9VJidf4qHjViCVTScgHEhrbzcUpNGtSW5yFyYFlIZXP
	 MG4Do5wUUAZ3uIkteRwe+l4ij0GcvKoH9heu8mTqoMN/KBcG8Mt9babdyAuEvOJEL4
	 mTNcFD+KR7fsH+ZMsUyzPjGR1FOUfSBwRYKPa1sRV6jbgMqBfXHdrvxYInJb8QA3eW
	 aIGtuyN4Z2+Lx9jfSPuzgwiL76l74l+EV0ZBFLmteTiCY+9sClqD02f/qo6Kb/5YTv
	 DkHd2SS0gUDWg==
Received: from zproxy3.enst.fr (zproxy3.enst.fr [137.194.2.222])
	by mm2.emwd.com (Postfix) with ESMTPS id 707603854AA
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 12:27:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=imt-atlantique.fr header.i=@imt-atlantique.fr header.b="eeGbmtar";
	dkim-atps=neutral
Received: from localhost (localhost [IPv6:::1])
	by zproxy3.enst.fr (Postfix) with ESMTP id 6E2F4A0964;
	Fri, 18 Oct 2024 18:27:32 +0200 (CEST)
Received: from zproxy3.enst.fr ([IPv6:::1])
 by localhost (zproxy3.enst.fr [IPv6:::1]) (amavis, port 10032) with ESMTP
 id bpzus9RI-slh; Fri, 18 Oct 2024 18:27:32 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by zproxy3.enst.fr (Postfix) with ESMTP id E6923A098B;
	Fri, 18 Oct 2024 18:27:31 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zproxy3.enst.fr E6923A098B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imt-atlantique.fr;
	s=50EA75E8-DE22-11E6-A6DE-0662BA474D24; t=1729268851;
	bh=5TK42zMRDr2deEjWjz0k93BIkbUY6TMIZDRjRrxFs2U=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=eeGbmtarRo53s+GJDqyzIHs2siricbOqjSFbXOHQSfBpbk1b6YnD8xbysQNYAYuhD
	 cfoJJlugpMiGqMkezVW/Jl4brjxVRdzxtsJgFWtwTk2YvXHYcKPIkAwcCAH0Y3P4B0
	 BjF/lenXIWePDoNJPM+Ug+6hhkLFe5JqEI2mlQMg=
X-Virus-Scanned: amavis at enst.fr
Received: from zproxy3.enst.fr ([IPv6:::1])
 by localhost (zproxy3.enst.fr [IPv6:::1]) (amavis, port 10026) with ESMTP
 id mXRr5A5VQtjT; Fri, 18 Oct 2024 18:27:31 +0200 (CEST)
Received: from zmail-imta2.enst.fr (zmail-imta2.enst.fr [137.194.2.217])
	by zproxy3.enst.fr (Postfix) with ESMTP id BE9B2A0964;
	Fri, 18 Oct 2024 18:27:31 +0200 (CEST)
Date: Fri, 18 Oct 2024 18:27:31 +0200 (CEST)
From: Patrice PAJUSCO <patrice.pajusco@imt-atlantique.fr>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1599033524.6282335.1729268851631.JavaMail.zimbra@imt-atlantique.fr>
In-Reply-To: <34fa686f-7914-4447-be55-f2f0c8fdfdef@gmail.com>
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com> <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com> <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr> <CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmail.com> <34fa686f-7914-4447-be55-f2f0c8fdfdef@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [::ffff:10.129.39.196]
X-Mailer: Zimbra 9.0.0_GA_4653 (ZimbraWebClient - FF131 (Win)/9.0.0_GA_4653)
Thread-Topic: ADC saturation problem in USRP X310
Thread-Index: 6FNqs9tXQ5IASJxoSZ+l7K/ZH5FlPQ==
Message-ID-Hash: OKPTCEY4B6T73PCTT2HF456AL7AYCA6K
X-Message-ID-Hash: OKPTCEY4B6T73PCTT2HF456AL7AYCA6K
X-MailFrom: patrice.pajusco@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OKPTCEY4B6T73PCTT2HF456AL7AYCA6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0177732459982855620=="

--===============0177732459982855620==
Content-Type: multipart/alternative;
	boundary="=_fc24cad1-875b-481e-8f3d-96420b75aca7"

--=_fc24cad1-875b-481e-8f3d-96420b75aca7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you for your feedback and possible tracks.=20
- yes about decimation in host machine but computation capacity of the host=
 must be checked :-)=20
- not yet familiar with RFNOC, I will have a look=20
Signal analysis is done offline, but IQ data are stored continously during =
the car trip , that is why it is important for us to have a good quality of=
 sampling=20


De: "Marcus D. Leech" <patchvonbraun@gmail.com>=20
=C3=80: "Brian Padalino" <bpadalino@gmail.com>, "Patrice PAJUSCO" <patrice.=
pajusco@imt-atlantique.fr>=20
Cc: "usrp-users" <usrp-users@lists.ettus.com>=20
Envoy=C3=A9: Vendredi 18 Octobre 2024 18:13:57=20
Objet: Re: [USRP-users] Re: ADC saturation problem in USRP X310=20

On 18/10/2024 12:06, Brian Padalino wrote:=20



Your options are to sample at 184.32 MHz and decimate in the host machine d=
own to 30.72 MHz for LTE decoding, or if that isn't an option then you need=
 to place an RFNoC block at the output of the radio but before the DDC whic=
h will give you an input power estimate that you can read from the host per=
iodically. You need to feed that into your AGC algorithm as another input.=
=20

Note the block can just update an internal register that you poll and not p=
roduce any samples.=20

Brian=20


Without knowing much about LTE DSP and DR requirements, once your gain leve=
l is at a level where you have adequate SNR in most=20
cases, then the only thing remaining is if your downstream DSP algorithms r=
equire that samples be in the "saturated" {-1,+1}=20
domain, that can be done DSP-wise without ever touching the RF gain.=20



BQ_BEGIN


On Fri, Oct 18, 2024 at 11:57 AM Patrice PAJUSCO < [ mailto:patrice.pajusco=
@imt-atlantique.fr | patrice.pajusco@imt-atlantique.fr ] > wrote:=20

BQ_BEGIN

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


De: "Marcus D. Leech" < [ mailto:patchvonbraun@gmail.com | patchvonbraun@gm=
ail.com ] >=20
=C3=80: "usrp-users" < [ mailto:usrp-users@lists.ettus.com | usrp-users@lis=
ts.ettus.com ] >=20
Envoy=C3=A9: Vendredi 18 Octobre 2024 17:38:43=20
Objet: [USRP-users] Re: ADC saturation problem in USRP X310=20

On 18/10/2024 11:35, [ mailto:je.amghar@gmail.com | je.amghar@gmail.com ] w=
rote:=20
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
USRP-users mailing list -- [ mailto:usrp-users@lists.ettus.com | usrp-users=
@lists.ettus.com ]=20
To unsubscribe send an email to [ mailto:usrp-users-leave@lists.ettus.com |=
 usrp-users-leave@lists.ettus.com ]=20
_______________________________________________=20
USRP-users mailing list -- [ mailto:usrp-users@lists.ettus.com | usrp-users=
@lists.ettus.com ]=20
To unsubscribe send an email to [ mailto:usrp-users-leave@lists.ettus.com |=
 usrp-users-leave@lists.ettus.com ]=20

BQ_END


BQ_END



--=_fc24cad1-875b-481e-8f3d-96420b75aca7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div id=3D"zimbraEditorContainer" style=3D"font-family: arial,h=
elvetica,sans-serif; font-size: 12pt; color: #000000" class=3D"4"><div>Than=
k you for your feedback and possible tracks.<br></div><div>- yes about deci=
mation in host machine but computation capacity of the host must be checked=
 :-)<br data-mce-bogus=3D"1"></div><div>- not yet familiar with RFNOC, I wi=
ll have a look</div><div>Signal analysis is done offline, but IQ data are s=
tored continously  <!--StartFragment-->during the car trip<!--EndFragment--=
>, that is why it is important for us to have a good quality of sampling <b=
r></div><div><br data-mce-bogus=3D"1"></div><hr id=3D"zwchr" data-marker=3D=
"__DIVIDER__"><div data-marker=3D"__HEADERS__"><b>De: </b>"Marcus D. Leech"=
 &lt;patchvonbraun@gmail.com&gt;<br><b>=C3=80: </b>"Brian Padalino" &lt;bpa=
dalino@gmail.com&gt;, "Patrice PAJUSCO" &lt;patrice.pajusco@imt-atlantique.=
fr&gt;<br><b>Cc: </b>"usrp-users" &lt;usrp-users@lists.ettus.com&gt;<br><b>=
Envoy=C3=A9: </b>Vendredi 18 Octobre 2024 18:13:57<br><b>Objet: </b>Re: [US=
RP-users] Re: ADC saturation problem in USRP X310<br></div><div><br></div><=
div data-marker=3D"__QUOTED_TEXT__"><div class=3D"moz-cite-prefix">On 18/10=
/2024 12:06, Brian Padalino
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk=
9_sg@mail.gmail.com">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">Your options are to sample
            at 184.32 MHz and decimate in the host machine down to 30.72
            MHz for LTE decoding, or if that isn't an option then you
            need to place an RFNoC block at the output of the radio but
            before the DDC which will give you an input power estimate
            that you can read from the host periodically.&nbsp; You need to
            feed that into your AGC algorithm as another input.<br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div class=3D"gmail_attr">Note the block can just update an
            internal register that you poll and not produce any samples.</d=
iv>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div class=3D"gmail_attr">Brian</div>
        </div>
      </div>
    </blockquote>
    Without knowing much about LTE DSP and DR requirements, once your
    gain level is at a level where you have adequate SNR in most<br>
    &nbsp; cases, then the only thing remaining is if your downstream DSP
    algorithms require that samples be in the "saturated" {-1,+1}<br>
    &nbsp; domain, that can be done DSP-wise without ever touching the RF
    gain.<br>
    <br>
    <br>
    <blockquote cite=3D"mid:CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk=
9_sg@mail.gmail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 18, 2024 at
            11:57=E2=80=AFAM Patrice PAJUSCO &lt;<a href=3D"mailto:patrice.=
pajusco@imt-atlantique.fr" class=3D"moz-txt-link-freetext" target=3D"_blank=
">patrice.pajusco@imt-atlantique.fr</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <div id=3D"m_8500105023683579753zimbraEditorContainer" style=
=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"=
>
                <div>Dear Marcus,<br>
                </div>
                <div><br>
                </div>
                <div>thank you for your answer. Just to clarify the
                  problem a little better.</div>
                <div> We use a UBX160 daughter card. </div>
                <div>To have optimal SNR, an automatic gain control has
                  been implemented based on the max IQ value.</div>
                <div> The sample rate is 30.72 for LTE decoding. </div>
                <div>Unfortunately, high power exists outside our useful
                  band (30.72 MHz) but inside the bandwidth of the 160
                  daughter card (sampled by the 200 MHz ADC).</div>
                <div>We expected the AGC to saturate... but after DSP
                  filtering process by the motherboard, the IQ samples
                  got with UHD is no longer saturated.<br>
                  As a result, the IQ max is low enough and AGC control
                  continue to increase the gain :-(<br>
                  It is my current understanding of the situation. <br>
                  Is there any way to have an estimate of the raw AGC
                  input level when the sample rate is not 200 MHz?<br>
                  I hope to be clear enough... but surelty&nbsp; not crysta=
l
                  clear :-)</div>
                <div>Best regards<br>
                </div>
                <div><br>
                </div>
                <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Patrice<br>
                </div>
                <div><br>
                </div>
                <hr id=3D"m_8500105023683579753zwchr">
                <div><b>De: </b>"Marcus D. Leech" &lt;<a href=3D"mailto:pat=
chvonbraun@gmail.com" target=3D"_blank" class=3D"moz-txt-link-freetext">pat=
chvonbraun@gmail.com</a>&gt;<br>
                  <b>=C3=80: </b>"usrp-users" &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a>&gt;<br>
                  <b>Envoy=C3=A9: </b>Vendredi 18 Octobre 2024 17:38:43<br>
                  <b>Objet: </b>[USRP-users] Re: ADC saturation problem
                  in USRP X310<br>
                </div>
                <div><br>
                </div>
                <div>On 18/10/2024 11:35, <a href=3D"mailto:je.amghar@gmail=
.com" target=3D"_blank" class=3D"moz-txt-link-freetext">je.amghar@gmail.com=
</a>
                  wrote:<br>
                  &gt;<br>
                  &gt; Hello,<br>
                  &gt;<br>
                  &gt; I am currently facing an issue with ADC
                  saturation on a USRP X310 <br>
                  &gt; equipped with a UBX daughterboard. We are
                  conducting measurements <br>
                  &gt; using an LTE signal and a sinusoidal input
                  signal, but it seems that <br>
                  &gt; the ADC is saturating, leading to a loss of
                  dynamic range in our <br>
                  &gt; measurements.<br>
                  &gt;<br>
                  &gt; Test context:<br>
                  &gt; We are transmitting (using a generator) an LTE
                  signal with a power of <br>
                  &gt; -50 dBm at a center frequency of 1815 MHz. Then,
                  we add a sinusoidal <br>
                  &gt; signal at 1865 MHz with a power of -30 dBm. This
                  second, more powerful <br>
                  &gt; signal seems to be causing the ADC to saturate,
                  even though we don=E2=80=99t <br>
                  &gt; see it directly in the IQ samples due to the
                  digital filtering applied <br>
                  &gt; downstream.<br>
                  &gt;<br>
                  &gt; Problem:<br>
                  &gt; We suspect that the ADC saturation occurs before
                  IQ conversion and is <br>
                  &gt; therefore masked by the digital filters. This
                  results in a loss of <br>
                  &gt; dynamic range in our measurements, and we feel
                  that adjusting the gain <br>
                  &gt; based on the IQ samples may not be reliable.<br>
                  &gt;<br>
                  &gt; Question:<br>
                  &gt; How can this ADC saturation be detected upstream
                  of the IQ processing? <br>
                  &gt; Are there tools or methods to directly monitor
                  the sample values at <br>
                  &gt; the output of the ADC in the USRP (before digital
                  filtering) to <br>
                  &gt; prevent saturation?<br>
                  &gt; Do you have any advice for implementing an
                  automatic gain controller <br>
                  &gt; (AGC) based on reliable saturation indicators?<br>
                  &gt; We would appreciate any suggestions or
                  experiences in resolving this <br>
                  &gt; issue. If you have encountered a similar problem
                  or have ideas on how <br>
                  &gt; to address it, we would be happy to hear your
                  recommendations.<br>
                  &gt;<br>
                  &gt; Thank you very much for your help!<br>
                  &gt;<br>
                  &gt;<br>
                  A -30dBm signal applied at the antenna inputs, and
                  then amplified <br>
                  greatly by the amplifier/mixer/gain-chain ahead of the
                  ADC<br>
                  &nbsp;&nbsp; would very-likely saturate the ADC.&nbsp;&nb=
sp; A -30dBm
                  signal from an "over <br>
                  the air" antenna is one that is thunderingly loud in<br>
                  &nbsp;&nbsp; the real world.&nbsp; It would not surprise =
me to find
                  that gain elements <br>
                  ahead of the ADC are *also* becoming non-linear.<br>
                  <br>
                  Turn your gain down.<br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank" class=3D"moz-txt-link-freetext">usrp-user=
s@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank" class=3D"moz-txt-link-freetext=
">usrp-users-leave@lists.ettus.com</a><br>
                </div>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank" class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank" class=3D"moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br><br></div></div></body></html>
--=_fc24cad1-875b-481e-8f3d-96420b75aca7--

--===============0177732459982855620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0177732459982855620==--
