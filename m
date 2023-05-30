Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 650027166CC
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:15:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0C3A381435
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 11:15:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685459719; bh=ENInrv7i83I8VluJIjhGwew+6OlkT6XAAaqhVOOAeC4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iRn5kyqtzgxw6S/lNp6VeMj45trBKUkuXnx1ild90gFhv59p1utsPWwPmxKZUy3u6
	 8DHzkqOafZu0oLT0T0vG/Os7Gx4SAJlZx3Rsup1Jpg2pyf7kWJ4l0yybFZobAPqBrX
	 NL526BMMSOEPBCVmgvKUFVnBHu7uy8JvOee3OKMYH7hiMMQPdjthDMevMcMRVuGcY5
	 vC/DEay5hy9WCNQO1jK67hw5aEPsO18/EXv4xQPlbPi7jIkQUK5wdQhHORCJWton0F
	 ZnGQhnc+Eo1Ty+V3LHt9DJrvN/ig6qbPedBHL7Biv80t5u/fknX8lE/P2LXyN6UQWb
	 B7I6lCtQYLVig==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A64A4381052
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:14:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="aNEIOkWE";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-5ed99ebe076so47393446d6.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 08:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685459648; x=1688051648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+Ti9pkv3e/H7UmUwu8p9xZUFL/52cvvbPIDa/wEy4xY=;
        b=aNEIOkWEQEUwHyGOG5iErCGQ+3kWheUWWCaJ57NJ64mJDI3mbj1UEvR0RZdCASheBD
         dLBGzk6HxMWwEgIcWuojKZ+op7klxIa4Rp3Y718LsUqEhlnaeYve59KkiugaceGAoBcB
         NMTUej4ViBL3KM9T/Hj3mktzHgN/5IrHQwcZiEcCe2DeA3x5CzEcUBcSF0z/S8sdlohF
         tL/dIhsBz3j7fNIpl9puBnQ2zNSfXpRL015iNa3gtCQWF9zL77UCW1/bIsDFL8pxvQGD
         vCQc0My1NucI1uxU3b0taHp9PkMQ1HFcGmjLaaEmiT1eU5oswycv3jHQovcaXuYkH7yf
         oVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685459648; x=1688051648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Ti9pkv3e/H7UmUwu8p9xZUFL/52cvvbPIDa/wEy4xY=;
        b=N4XyMLBAEVkjMPLm3jC27hlUERGtaJwUbZkKbyfwVLJXnjQHJXoAuSSlpmgzsG5mcM
         XAeNIe+NTWuTZSX+FlwpC8xCiJMVmfMWyRTlqTNeBcImeBLN66iLY5n77YfV4qlWiFEf
         /apxX59KPuhMVelNSrzXrQeIQZZ3w4TsnuVvRdjTntnBWnrJwXMlAGqa3/51FO6KUf0R
         UQnvdD3l8RnXg0Oo4o2kHxZoTu2+ZOJGBhU2T2HPdn5TffFq3i4rj7/J2VfNVoVHRuTu
         3JpwrZkJoT9OUbZJw2jhGDtf9HshWS1N3vbz+R1OUjQ5VFcBkcTYVRoYB9fYw/b7ZwGp
         R1ZQ==
X-Gm-Message-State: AC+VfDzjhf3K2bMFbsJFpwmO0XaLDNtd6D0N6l2bY+2n74fSmGL0lPVH
	aTYcDY6H+LvdKwhnehpmqCQgyVaw8AAcao9Em3cvVg==
X-Google-Smtp-Source: ACHHUZ5egp2dqr803b4OyFHXubvDN0S8GyvT4oSkCvPI0BYp/joZ/Do8amElpTk6HVfpwLU+IXN7gudQnEsP3LrmkZc=
X-Received: by 2002:ad4:5ece:0:b0:625:ba46:27e6 with SMTP id
 jm14-20020ad45ece000000b00625ba4627e6mr2692564qvb.2.1685459648079; Tue, 30
 May 2023 08:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com> <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com>
In-Reply-To: <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com>
From: Mena Ghebranious <mena@chaosinc.com>
Date: Tue, 30 May 2023 08:13:56 -0700
Message-ID: <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KXOS4CGUIRY4RN5YDO6SIBVKOEGKFFK2
X-Message-ID-Hash: KXOS4CGUIRY4RN5YDO6SIBVKOEGKFFK2
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXOS4CGUIRY4RN5YDO6SIBVKOEGKFFK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4424629400950643706=="

--===============4424629400950643706==
Content-Type: multipart/alternative; boundary="0000000000009b820405fceaa72d"

--0000000000009b820405fceaa72d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If possible, I'd like to hear what the R&D team thinks - I have worked with
designs in the past where the TX timing lines up and there are no samples
cut off.

On Tue, May 30, 2023 at 8:08=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 30/05/2023 11:02, Mena Ghebranious wrote:
> > Hi Marcus,
> >
> > I took a closer look at the end of my transmission; what originally
> > appeared to be a lack of symmetry between the start and end delays is
> > actually a cutoff of 31 samples at the end of the transmission - in
> > other words, I'm missing the 31 samples at the end of the TX that I
> > put into the TX streamer.
> >
> > Looking into the FPGA logic, I believe there is actually a bug in the
> > most recent implementation - the transmission strobe that controls the
> > TX output is based on the TX state machine in the radio TX core block,
> > who's timing does not take into account the group delay of the DUC
> > filter.  Regardless of whether or not we are using ATR to control
> > GPIOs, the transmission gets cut off and the last set of samples  do
> > not appear at the TX output (the number of samples missing is equal to
> > the group delay / latency of the filter for a given sample rate.)
> >
> > As a temporary workaround, we could zero pad the end of our TX
> > waveforms, but some of the waveforms we want to run have tight PRFs
> > and this will heavily limit the rate at which we could run them.
> >
> I don't recall there *ever* being a time when the TX state machine
> "knew" the state and depth of the DUC filters, which is why
>    nearly-everyone zero-pads their bursts.   This has been a "thing"
> with radio hardware at various times scales over the decades
>    for systems transmitting digital data.
>
> I'm pretty sure that R&D would consider this behavior "design intent".
> Partially because "it's always been done that way", and
>    partially because "fixing" it would be challenging (it would require
> re-architecting parts of the FPGA chain considerably, I think).
>
>
>

--0000000000009b820405fceaa72d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If possible, I&#39;d like to hear what the R&amp;D team th=
inks - I have worked with designs in the past where=C2=A0the TX timing line=
s up and there are no samples cut off.</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 8:08=E2=80=AF=
AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 30/05/2023 11:02, Mena Ghebranious wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; I took a closer look at the end of my transmission; what originally <b=
r>
&gt; appeared to be a lack of symmetry=C2=A0between the start and end delay=
s is <br>
&gt; actually a cutoff of 31 samples at the end of the transmission=C2=A0- =
in <br>
&gt; other words, I&#39;m missing the 31 samples at the end of the TX that =
I <br>
&gt; put into the TX streamer.<br>
&gt;<br>
&gt; Looking into the FPGA logic, I believe there is actually a bug in the =
<br>
&gt; most recent implementation - the transmission strobe that controls the=
 <br>
&gt; TX output is based on the TX state machine in the radio TX core block,=
 <br>
&gt; who&#39;s timing does not take into account the group delay of the DUC=
 <br>
&gt; filter.=C2=A0 Regardless of whether or not we are using=C2=A0ATR to co=
ntrol <br>
&gt; GPIOs, the transmission gets cut off and the last set of samples=C2=A0=
 do <br>
&gt; not appear at the TX output (the number of samples missing is equal to=
 <br>
&gt; the group delay / latency of the filter for a given sample rate.)<br>
&gt;<br>
&gt; As a temporary workaround, we could zero pad the end of our TX <br>
&gt; waveforms, but some of the waveforms we want to run have tight PRFs <b=
r>
&gt; and this will heavily limit the rate at which we could run them.<br>
&gt;<br>
I don&#39;t recall there *ever* being a time when the TX state machine <br>
&quot;knew&quot; the state and depth of the DUC filters, which is why<br>
=C2=A0=C2=A0 nearly-everyone zero-pads their bursts.=C2=A0=C2=A0 This has b=
een a &quot;thing&quot; <br>
with radio hardware at various times scales over the decades<br>
=C2=A0=C2=A0 for systems transmitting digital data.<br>
<br>
I&#39;m pretty sure that R&amp;D would consider this behavior &quot;design =
intent&quot;.=C2=A0 <br>
Partially because &quot;it&#39;s always been done that way&quot;, and<br>
=C2=A0=C2=A0 partially because &quot;fixing&quot; it would be challenging (=
it would require <br>
re-architecting parts of the FPGA chain considerably, I think).<br>
<br>
<br>
</blockquote></div>

--0000000000009b820405fceaa72d--

--===============4424629400950643706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4424629400950643706==--
