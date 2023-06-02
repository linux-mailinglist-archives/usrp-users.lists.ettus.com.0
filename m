Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C19BB71FA30
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jun 2023 08:37:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F35A138491F
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jun 2023 02:37:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685687868; bh=G5pCHdmwR7i5KfH/Fs5hm+QBWDtqZVBZaIutYhuWges=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ItFQ8umRr6sda+aq9bZ4H4SuEs6sEzhvkXpWnmkN4lvP84YmgMCGyDy3wkPcx2vqd
	 wbUVJqR+/sHKXhW5U4nJaR4U+cQvCybOpcFZLXbv3FQTbE4rZ/J0bS7jimE1LyDDJU
	 AbNO9VrQpU7rw7KG0oJ6BDMMWRMPwAc+IMcVQS8KTWigYJU16gwyX3yhq8MBgo+8rU
	 br4FZqXfZq10S3ArL7uNdwSOpNyhRJo2NAcCfj741hlLTPSOtRe3u6GbOlfjGGPDFP
	 MLtcHUa4239W+h9dGdr+5vOeqobxEvXNGWn0N1HWikpi4Ibvk+R2svZktjdhd+E2Ck
	 DPZp+NYuMd3ZQ==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E930E3848EE
	for <usrp-users@lists.ettus.com>; Fri,  2 Jun 2023 02:37:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ETVEHXjL";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2af177f12d1so24161041fa.0
        for <usrp-users@lists.ettus.com>; Thu, 01 Jun 2023 23:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685687842; x=1688279842;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JLMWgNQOTz82htRsD1kWp1htz62A9sUzlo/NFjpjjWs=;
        b=ETVEHXjLKV3/8o7MvC1gzRt5OlOu8+/7hCkqEwF/wHAmXsveUo4G5gtVcUmvcWtt3T
         9uc2rLkfmPf1IbADzgxDkM4QSBqhmdQX3IUJlV/Nt4bF8WnTYbqtaSqtqr/maJ0r1+IZ
         GF7XEIXmEatlF9hwC7fAn6PsbPPTAA6GGVcpWNUPb59RlnDclV/1a6hyc1+2gDHIC6w7
         q/t77GH03zvZcFrTQ2YQxZbz0JcTOzBSEBt6ilLogad2enlt0WByJTs54JzLSoQ5Tl5i
         AipgknF6PJR7rwBT7PnrhpGVoNkjQ/XzduP/8n7C8WL6FrwmDF7gWMIqQjSc/MP9+oe2
         mbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685687842; x=1688279842;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLMWgNQOTz82htRsD1kWp1htz62A9sUzlo/NFjpjjWs=;
        b=IesNPgwE98szbY2WcLHOsaQZKVpMPxDuac+TAkQ/ETikmu+TEX7r92fTXOsJGJJz6K
         7tnhE1mJLlpcDXxLA5h4AkDHATdYHmGbDR2qldwloMf5DfB7uiqTwRMPU6VK5gVA8iX+
         crydwgEeQZDb6qBFcu5hxLO9GHFM8UDvN4TQJbcM3xZhyz4bX9oCX4SD76EbjOi8zzuG
         5dfIhV1AOZxnKnIAr3Ap2QxBBmWfw993zXC+4Yy5buTe95sS4jLLHb4wdxgGE+RlhifO
         clF6RkyEZWbWWRP2rZ0akq0oYBnU7o608fnz8bLVh9eM2Ckc3OCm/c+104OqLml+9qo8
         aP4w==
X-Gm-Message-State: AC+VfDyZM3fbYF8yuoR3plW2LQFsrlv9ydBmuopwrmClmyw1dM3rQLT0
	0UfTlS/4213eigdXVXcRsq5gZE60f8vyo8DBKMWflYFMHH0=
X-Google-Smtp-Source: ACHHUZ7oQhtrNr07VsNslrtAyUb898VmsWTAlmPCtRIULOQDxgaJD5f7vNTC1UlzYi2uwPSh1KqZ1Bm5A1Eod31OMrw=
X-Received: by 2002:a2e:3a14:0:b0:2a8:c01a:71b6 with SMTP id
 h20-20020a2e3a14000000b002a8c01a71b6mr1031771lja.3.1685687841437; Thu, 01 Jun
 2023 23:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <34f133e4-3eab-0cc4-a5ba-e579fbfaf3c9@febo.com> <eb77fd10-41be-c80c-79cf-41ea8b4db269@gmail.com>
In-Reply-To: <eb77fd10-41be-c80c-79cf-41ea8b4db269@gmail.com>
From: Anders Wallin <anders.e.e.wallin@gmail.com>
Date: Fri, 2 Jun 2023 09:37:10 +0300
Message-ID: <CAPnVNRV_Sfd37XJVaHjX6pKpAZO3Skn0vH1faqC7d1AqJ=9uyQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HDD2BD34JE4E2STGCDRDDEHCTANYBTXJ
X-Message-ID-Hash: HDD2BD34JE4E2STGCDRDDEHCTANYBTXJ
X-MailFrom: anders.e.e.wallin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: octoclock specs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDD2BD34JE4E2STGCDRDDEHCTANYBTXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0797385505286204655=="

--===============0797385505286204655==
Content-Type: multipart/alternative; boundary="000000000000fdbacb05fd1fc811"

--000000000000fdbacb05fd1fc811
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

my open-hardware design for frequency and pulse distribution is on ohwr:
https://ohwr.org/project/pda-8ch-fda-8ch/wikis/home
The PPS distribution uses IDT (now named something else?) 5PB1108 logic
buffers with 7-800 ps rise-time. AFAIK the only way to match outputs is to
use trimmer-caps before the last output-stage and tune each output while
measuring with a time interval counter. Depending on your counter and
patience you get within 10-20 ps quite quickly.

+1 to endrun for publishing a phase-noise spec on their website - most
others don't do that.
A possible improvement for the ohwr frequency-distribution board would be
to use many LMH6702 (or similar) in parallel for each channel - but I
haven't had time (or a project that needs the performance) to test.

the results posted for the ARTIQ clocker board look good
https://github.com/sinara-hw/Clocker/wiki  and
https://github.com/sinara-hw/Clocker/issues/4   (I haven't verified them)

Anders


On Fri, Jun 2, 2023 at 1:37=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 01/06/2023 15:56, John Ackermann N8UR wrote:
> > Hi --
> >
> > There's some fairly old data about the Octoclock here:
> >
> http://www.anderswallin.net/2016/09/ettus-octoclock-distribution-amplifie=
r/
> >
> 200ps of timing dispersion among different gates isn't that weird, when
> the switching time can take up to
>    15nsec on the non-'F' variants of the 7404.  I don't know which of
> many variants of the 7404 were used on
>    the Octoclock.  But if they're garden variety  HC or LS or something,
> the switching time dispersion on the
>    1PPS may be fairly high.
>
>
>
>
> >
> > In the shameless plug department, the TADD-1 distribution amplifier
> > from TAPR:
> > https://tapr.org/product/tadd-1-rf-distribution-amplifier/
> >
> > has very good additive noise, and is inexpensive.  It has six channels
> > but two or more boards can be stacked and driven from a common input.
> > The downside is that it's a kit (through-hole parts).
> >
> > I compared the additive phase noise of several distribution amps here:
> > https://www.febo.com/pages/amplifier_phase_noise/
> >
> > (that data is also fairly old; currently-shipped TADD-1s use a newer
> > amplifier chip that seems to have a couple of dB better performance).
> >
> > Best,
> > John
> > ----
> >
> > On 6/1/23 15:16, Eugene Grayver wrote:
> >> Hello,
> >>
> >> I am building a high-end testbed and trying to decide on a 10 MHz
> >> distribution option.  I've used octoclock for other systems and it
> >> 'works.'  However the datasheet is pretty sparse.  Does anyone have
> >> detailed specs (that you measured or from Ettus).  I am interested in
> >> the non-GPSDO version since my 10 MHz comes from outside the system
> >>
> >>   * port-to-port delay variation
> >>   * phase noise increase if any (assuming external source)
> >>
> >> My other option is
> >>
> https://endruntechnologies.com/products/distribution/10-MHz-low-phase-noi=
se
> >> <
> https://endruntechnologies.com/products/distribution/10-MHz-low-phase-noi=
se>,
>
> >> which is about 5x more expensive.
> >>
> >> Thanks.
> >>
> >> ________________________
> >>
> >> Eugene Grayver, Ph.D.
> >> Aerospace Corp., Principal Engineer
> >> Tel: 310.336.1274
> >> ________________________
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fdbacb05fd1fc811
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">my open-hardware design for frequency and pulse distributi=
on is on ohwr:=C2=A0<a href=3D"https://ohwr.org/project/pda-8ch-fda-8ch/wik=
is/home">https://ohwr.org/project/pda-8ch-fda-8ch/wikis/home</a><div>The PP=
S distribution uses IDT (now named something else?) 5PB1108 logic buffers w=
ith 7-800 ps rise-time. AFAIK the only way to match outputs is to use trimm=
er-caps before the last output-stage and tune each output while measuring w=
ith a time interval counter. Depending on your counter and patience you get=
 within 10-20 ps quite quickly.</div><div><br></div><div>+1 to endrun for p=
ublishing a phase-noise spec on their website - most others don&#39;t do th=
at.<br></div><div>A=C2=A0possible improvement for the ohwr frequency-distri=
bution board would be to use many LMH6702 (or similar) in parallel for each=
 channel - but I haven&#39;t had time (or a project that needs the performa=
nce) to test.</div><div><br></div><div>the results posted for the ARTIQ clo=
cker board look good=C2=A0<a href=3D"https://github.com/sinara-hw/Clocker/w=
iki">https://github.com/sinara-hw/Clocker/wiki</a>=C2=A0 and <a href=3D"htt=
ps://github.com/sinara-hw/Clocker/issues/4">https://github.com/sinara-hw/Cl=
ocker/issues/4</a>=C2=A0 =C2=A0(I haven&#39;t verified them)</div><div><br>=
</div><div>Anders</div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 2, 2023 at 1:37=E2=80=AFA=
M Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbr=
aun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On 01/06/2023 15:56, John Ackermann N8UR wrote:<br>
&gt; Hi --<br>
&gt;<br>
&gt; There&#39;s some fairly old data about the Octoclock here:<br>
&gt; <a href=3D"http://www.anderswallin.net/2016/09/ettus-octoclock-distrib=
ution-amplifier/" rel=3D"noreferrer" target=3D"_blank">http://www.anderswal=
lin.net/2016/09/ettus-octoclock-distribution-amplifier/</a> <br>
&gt;<br>
200ps of timing dispersion among different gates isn&#39;t that weird, when=
 <br>
the switching time can take up to<br>
=C2=A0=C2=A0 15nsec on the non-&#39;F&#39; variants of the 7404.=C2=A0 I do=
n&#39;t know which of <br>
many variants of the 7404 were used on<br>
=C2=A0=C2=A0 the Octoclock.=C2=A0 But if they&#39;re garden variety=C2=A0 H=
C or LS or something, <br>
the switching time dispersion on the<br>
=C2=A0=C2=A0 1PPS may be fairly high.<br>
<br>
<br>
<br>
<br>
&gt;<br>
&gt; In the shameless plug department, the TADD-1 distribution amplifier <b=
r>
&gt; from TAPR:<br>
&gt; <a href=3D"https://tapr.org/product/tadd-1-rf-distribution-amplifier/"=
 rel=3D"noreferrer" target=3D"_blank">https://tapr.org/product/tadd-1-rf-di=
stribution-amplifier/</a><br>
&gt;<br>
&gt; has very good additive noise, and is inexpensive.=C2=A0 It has six cha=
nnels <br>
&gt; but two or more boards can be stacked and driven from a common input. =
<br>
&gt; The downside is that it&#39;s a kit (through-hole parts).<br>
&gt;<br>
&gt; I compared the additive phase noise of several distribution amps here:=
<br>
&gt; <a href=3D"https://www.febo.com/pages/amplifier_phase_noise/" rel=3D"n=
oreferrer" target=3D"_blank">https://www.febo.com/pages/amplifier_phase_noi=
se/</a><br>
&gt;<br>
&gt; (that data is also fairly old; currently-shipped TADD-1s use a newer <=
br>
&gt; amplifier chip that seems to have a couple of dB better performance).<=
br>
&gt;<br>
&gt; Best,<br>
&gt; John<br>
&gt; ----<br>
&gt;<br>
&gt; On 6/1/23 15:16, Eugene Grayver wrote:<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; I am building a high-end testbed and trying to decide on a 10 MHz =
<br>
&gt;&gt; distribution option.=C2=A0 I&#39;ve used octoclock for other syste=
ms and it <br>
&gt;&gt; &#39;works.&#39;=C2=A0 However the datasheet is pretty sparse.=C2=
=A0 Does anyone have <br>
&gt;&gt; detailed specs (that you measured or from Ettus).=C2=A0 I am inter=
ested in <br>
&gt;&gt; the non-GPSDO version since my 10 MHz comes from outside the syste=
m<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0 * port-to-port delay variation<br>
&gt;&gt; =C2=A0 * phase noise increase if any (assuming external source)<br=
>
&gt;&gt;<br>
&gt;&gt; My other option is <br>
&gt;&gt; <a href=3D"https://endruntechnologies.com/products/distribution/10=
-MHz-low-phase-noise" rel=3D"noreferrer" target=3D"_blank">https://endrunte=
chnologies.com/products/distribution/10-MHz-low-phase-noise</a> <br>
&gt;&gt; &lt;<a href=3D"https://endruntechnologies.com/products/distributio=
n/10-MHz-low-phase-noise" rel=3D"noreferrer" target=3D"_blank">https://endr=
untechnologies.com/products/distribution/10-MHz-low-phase-noise</a>&gt;, <b=
r>
&gt;&gt; which is about 5x more expensive.<br>
&gt;&gt;<br>
&gt;&gt; Thanks.<br>
&gt;&gt;<br>
&gt;&gt; ________________________<br>
&gt;&gt;<br>
&gt;&gt; Eugene Grayver, Ph.D.<br>
&gt;&gt; Aerospace Corp., Principal Engineer<br>
&gt;&gt; Tel: 310.336.1274<br>
&gt;&gt; ________________________<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fdbacb05fd1fc811--

--===============0797385505286204655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0797385505286204655==--
