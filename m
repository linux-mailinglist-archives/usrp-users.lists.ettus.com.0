Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50289F046
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 12:57:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9629385154
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 06:57:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712746671; bh=4tlTDxnnAMLubMtWoD6HeJdQy/qnVbAfutEt6H+BjJA=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kQk03q32ALCFx7wqxpkBWFo3r9g6dHvwvo+VWHXmrQ1YjB5QkXA2oqyCJzwoU+B/Y
	 sMITeZCw+8lZCIi1CPqdOX91FkotkLGKv0AXrmFz+46r8+6y2+QVnFtfEP4a5DRJrT
	 A6DKacBRubkOTLD+5mhsv4sNZCnGT6/W8J9Mo+FqTbqybyVdlY0pRaSDTDlku5s++V
	 Zn4VMmlAxHvcjNIDiKcyA+w0ZeVFBxgJqRDvy55SFidu7FUeu8t/0Ga5YmCsaie9oI
	 stytIQFE4hm50+CU0nGMiv1kFCqyK70DprN0DVPukhZ3EAEMg0wA9p3L6PEEgfhxuS
	 50qVZ7xz/5OIA==
Received: from omr02.pc4.atmailcloud.com (omr02.pc4.atmailcloud.com [54.217.190.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C371384DFA
	for <usrp-users@lists.ettus.com>; Wed, 10 Apr 2024 06:57:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=manx.net header.i=@manx.net header.b="A3WA0CJA";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
	s=20160330; h=From:Message-Id:To:Subject:Date:Mime-Version:Content-Type;
	bh=zroPsnadWiF+YO2G4QP+GPhH58OWCgSA9XRymgNAJ0A=; b=A3WA0CJAhWTPb0SRt4pH4QTw4t
	L/y+4VGWHwF60q5ti1AoWBnZlTiTjYHYiM58ialOgqUQ3SZ6Z+S1qpNGASWgqhw3tenFloFFdjM32
	izOUZNXjnMBoI7iise5mM48UnbqWf5H/sXcmkvitAe0FNKTvGZ2U19qLMRu58u/DInSE=;
Received: from mqr.i-0e24ca84bd87ae04d
	 by OMR.i-0d2eaeb4aa80fbbdd with esmtps
	(envelope-from <drtaylor@manx.net>)
	id 1ruVeA-0002Ts-Ds;
	Wed, 10 Apr 2024 10:57:42 +0000
Received: from CMR.i-0f64d2d80affd21e1 by MQR.i-0e24ca84bd87ae04d with esmtps
	(envelope-from <drtaylor@manx.net>)
	id 1ruVeA-0002TG-17;
	Wed, 10 Apr 2024 10:57:42 +0000
Received: from webmail.pc4.atmailcloud.com by CMR.i-0f64d2d80affd21e1 with esmtpsa
	(envelope-from <drtaylor@manx.net>)
	id 1ruVe9-0001BP-Pe; Wed, 10 Apr 2024 10:57:42 +0000
In-Reply-To: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
Mime-Version: 1.0
Date: Wed, 10 Apr 2024 10:57:41 +0000
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
To: <usrp-users@lists.ettus.com>,"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-Id: <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost>
X-Atmail-Id: drtaylor@manx.net
X-atmailcloud-spam-score: 0
X-atmailcloud-spam-bar: /
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=IqkYcq/g c=1 sm=1 tr=0 ts=661670a6 a=e3vszHGdra9UNDqFah0TkA==:117 a=raytVjVEu-sA:10 a=7j0FZ4iXMVMA:10 a=pGLkceISAAAA:8 a=c1cUzgruAAAA:8 a=etiEgX_XAAAA:8 a=nLIzi4cVGUBwzSIrv0gA:9 a=QEXdDO2ut3YA:10 a=M4hu3KPKvh0A:10 a=uxNFxEfij843RW11ETAA:9 a=mdTdiJPzrVsRveS4:21 a=btfuD7PJlCTtR0sgVWdz:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Cm-Envelope: MS4xfCq+EKZwh9rLlEXytE4rqp77ynRVe2zXEhN8IcFyVyLhCir5BJvc6gSmlBvlFo4rP+MNaV8gXaT0c3jqvm3vbKc8GGHVM9OhrO0DDZizeE52qUJh5TMN 1e8GvnYnGY8DEfHMuvcUTWo6lToJ3usCuwz3bVE8fKSdflZYSXZThxm1yE2jU16ybNwmvyuT3uCmyg==
Message-ID-Hash: 3B37R6NQ277PNRQV54X756PEG4PFHTT7
X-Message-ID-Hash: 3B37R6NQ277PNRQV54X756PEG4PFHTT7
X-MailFrom: drtaylor@manx.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3B37R6NQ277PNRQV54X756PEG4PFHTT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: drtaylor--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "drtaylor@manx.net" <drtaylor@manx.net>
Content-Type: multipart/mixed; boundary="===============9124713716695555290=="

--===============9124713716695555290==
Content-Type: multipart/alternative; boundary=95a910c4c4ddf29bc1b02abc8181059725e567f24498cfddc8302bd515d4

--95a910c4c4ddf29bc1b02abc8181059725e567f24498cfddc8302bd515d4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Dear all,

I would be very cautious attempting to derive the frequency accuracy of a p=
iece of equipment against its master oscillator specification, as any funct=
ion subservient to its nominal frequency and temperature drift over time sp=
ecification will vary across product.

For information I have a B200 and B210 which after 30 minutes or more of wa=
rm up will generate RF carriers around 2.4 GHz with up +/- 10 KHz differenc=
e unless externally 10 MHz stabilised. This concurs with other comments.

Best regards,

David GD4FMB

>=20
> On ,Wed Apr 10 2024 03:01:30 GMT+0100 (British Summer Time), Marcus D.
> Leech <patchvonbraun@gmail.com> wrote:
>=20
> ---------- Original Message ----------
>=20
> On 09/04/2024 21:48, John Ackermann N8UR via USRP-users wrote:
> > I'm not
> sure about this particular unit, but typically if a crystal=20
> > oscillator
> datasheet lists an "accuracy" specification, that is over a=20
> > time period
> that takes into account the long-term frequency drift=20
> > ("aging") that
> affects almost all oscillators.=C2=A0 Sometimes the accuracy=20
> > is specified
> over a period of years, especially if the oscillator=20
> > doesn't have a
> frequency adjustment input.=C2=A0 In oscillators that can be=20
> > tweaked, it
> might be stated as an aging rate of some value per day,=20
> > week, or month.
> >
> > In inexpensive oscillators, the "stability" number usually refers to=20
> > short-term change due to temperature and other environmental factors.=
=20
> >
> In more expensive oscillators, stability is usually specified over=20
> >
> various averaging intervals, say from 1 second to 10K seconds.
> >
> >
> Sometimes accuracy is also expressed as a combination of time and=20
> >
> temperature range, which gives the most conservative result.
> >
> > John
> >
> ----
> See also Allen Deviation plots....
>=20
>=20
> >
> > On 4/9/24 21:19, Timothy J.
> Salo via USRP-users wrote:
> >> Hi,
> >>
> >> I'm writing a "Getting Started"
> guide for our research group. When I
> >> got to the GPSDO section, I had
> difficulty in figuring out the frequency
> >> stability and the frequency
> accuracy of the B210.
> >>
> >> At least the early versions of the B210 used a
> CTS Electronic Components
> >> 520L20DA40M0000 TCXO.=C2=A0 The datasheet for this
> TCXO says it has a
> >> frequency _stability_ of +/- 2.0 ppm over an
> operating temperature range
> >> of -30C - +85C.
> >>
> >> The CTS website
> states that their TCXO exhibit: "Stratum 3 Performance;
> >> =C2=B14.6ppm
> overall, =C2=B10.28ppm over -40=C2=B0C to +85=C2=B0C".=C2=A0 Am I correct=
 in
> >> concluding
> that this is the frequency _accuracy_ of the TCXO used in
> >> the B210?=C2=A0
> Does this translate directly into the frequency _accuracy_
> >> of the B210?
> >>
> >> The B210 datasheet states a frequency _accuracy_ of +/- 2.0 ppm.=C2=A0=
 Is
> >> is a typo, and should the datasheet actually say frequency _stability_=
?
> >> Or, did someone conclude that over a reasonable operating temperature,
> >> the effects of temperature outweigh any inaccuracy in the frequency
> >>
> of the TCXO?
> >>
> >> Anecdotally, I have heard that one organization found
> that three of
> >> their four B210s, when operating as a 5G base station,
> were unable
> >> to connect with commercial off-the-shelf cellular handsets,
> unless
> >> an external GPSDO was used with the B210.=C2=A0 Does anyone have any
> idea
> >> what frequency accuracy is expected by cellular handsets?
> >>
> >>
> So, does anyone know what the frequency _accuracy_ of the B210 is, in
> >>
> the absence of a GPSDO?=C2=A0 Or, should I just use the +/1 2.0 ppm figur=
e?
> >>
> >> Thanks,
> >>
> >> -tjs
> >> - - - -
> >>
> >> [1]=20
> >>
> https://www.ctscorp.com/Files/DataSheets/Passives/FCP/TCXO/TCXO-520-datas=
heet.pdf
> >>
> >>
> >>
> >> _______________________________________________
> >> USRP-users
> mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email
> to usrp-users-leave@lists.ettus.com
> >
> _______________________________________________
> > USRP-users mailing list
> -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list --
> usrp-users@lists.ettus.com
> To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com
>=20
>
--95a910c4c4ddf29bc1b02abc8181059725e567f24498cfddc8302bd515d4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div>Dear all,</div><p class=3D"MsoNormal"><div>I would be very cautious at=
tempting to derive the frequency accuracy
of a piece of equipment against its master oscillator specification, as any
function subservient to its nominal frequency and temperature drift over ti=
me
specification will vary across product.<br></div></p><p class=3D"MsoNormal"=
><div>For information I have a B200 and B210 which after 30 minutes
or more of warm up will generate RF carriers around 2.4 GHz with up +/- 10 =
KHz difference
unless externally 10 MHz stabilised. This concurs with other comments.<br><=
/div><div><br></div><div>Best regards,<br></div><div>David GD4FMB</div></p>=
<div data-atmail-signature=3D"" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature" style=3D""><br></div><div><br></div><div><br></div><block=
quote><div><div>On ,Wed Apr 10 2024 03:01:30 GMT+0100 (British Summer Time)=
, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:<br></div><div>----=
------ Original Message ----------<br></div></div><pre>On 09/04/2024 21:48,=
 John Ackermann N8UR via USRP-users wrote:
&gt; I'm not sure about this particular unit, but typically if a crystal=20
&gt; oscillator datasheet lists an "accuracy" specification, that is over a=
=20
&gt; time period that takes into account the long-term frequency drift=20
&gt; ("aging") that affects almost all oscillators.&nbsp; Sometimes the acc=
uracy=20
&gt; is specified over a period of years, especially if the oscillator=20
&gt; doesn't have a frequency adjustment input.&nbsp; In oscillators that c=
an be=20
&gt; tweaked, it might be stated as an aging rate of some value per day,=20
&gt; week, or month.
&gt;
&gt; In inexpensive oscillators, the "stability" number usually refers to=
=20
&gt; short-term change due to temperature and other environmental factors.=
=20
&gt; In more expensive oscillators, stability is usually specified over=20
&gt; various averaging intervals, say from 1 second to 10K seconds.
&gt;
&gt; Sometimes accuracy is also expressed as a combination of time and=20
&gt; temperature range, which gives the most conservative result.
&gt;
&gt; John
&gt; ----
See also Allen Deviation plots....


&gt;
&gt; On 4/9/24 21:19, Timothy J. Salo via USRP-users wrote:
&gt;&gt; Hi,
&gt;&gt;
&gt;&gt; I'm writing a "Getting Started" guide for our research group. When=
 I
&gt;&gt; got to the GPSDO section, I had difficulty in figuring out the fre=
quency
&gt;&gt; stability and the frequency accuracy of the B210.
&gt;&gt;
&gt;&gt; At least the early versions of the B210 used a CTS Electronic Comp=
onents
&gt;&gt; 520L20DA40M0000 TCXO.&nbsp; The datasheet for this TCXO says it ha=
s a
&gt;&gt; frequency _stability_ of +/- 2.0 ppm over an operating temperature=
 range
&gt;&gt; of -30C - +85C.
&gt;&gt;
&gt;&gt; The CTS website states that their TCXO exhibit: "Stratum 3 Perform=
ance;
&gt;&gt; =C2=B14.6ppm overall, =C2=B10.28ppm over -40=C2=B0C to +85=C2=B0C"=
.&nbsp; Am I correct in
&gt;&gt; concluding that this is the frequency _accuracy_ of the TCXO used =
in
&gt;&gt; the B210?&nbsp; Does this translate directly into the frequency _a=
ccuracy_
&gt;&gt; of the B210?
&gt;&gt;
&gt;&gt; The B210 datasheet states a frequency _accuracy_ of +/- 2.0 ppm.&n=
bsp; Is
&gt;&gt; is a typo, and should the datasheet actually say frequency _stabil=
ity_?
&gt;&gt; Or, did someone conclude that over a reasonable operating temperat=
ure,
&gt;&gt; the effects of temperature outweigh any inaccuracy in the frequenc=
y
&gt;&gt; of the TCXO?
&gt;&gt;
&gt;&gt; Anecdotally, I have heard that one organization found that three o=
f
&gt;&gt; their four B210s, when operating as a 5G base station, were unable
&gt;&gt; to connect with commercial off-the-shelf cellular handsets, unless
&gt;&gt; an external GPSDO was used with the B210.&nbsp; Does anyone have a=
ny idea
&gt;&gt; what frequency accuracy is expected by cellular handsets?
&gt;&gt;
&gt;&gt; So, does anyone know what the frequency _accuracy_ of the B210 is,=
 in
&gt;&gt; the absence of a GPSDO?&nbsp; Or, should I just use the +/1 2.0 pp=
m figure?
&gt;&gt;
&gt;&gt; Thanks,
&gt;&gt;
&gt;&gt; -tjs
&gt;&gt; - - - -
&gt;&gt;
&gt;&gt; [1]=20
&gt;&gt; https://www.ctscorp.com/Files/DataSheets/Passives/FCP/TCXO/TCXO-52=
0-datasheet.pdf
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; _______________________________________________
&gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com
&gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com
&gt; _______________________________________________
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
<br></pre></blockquote><div><br></div>
--95a910c4c4ddf29bc1b02abc8181059725e567f24498cfddc8302bd515d4--

--===============9124713716695555290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9124713716695555290==--
