Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28961A4D23E
	for <lists+usrp-users@lfdr.de>; Tue,  4 Mar 2025 05:00:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 654F53858E8
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 23:00:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741060826; bh=6B6NR3IJINLfW6OghDYfRRRfWYOck1c+hWrlrTxCggQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=y1u/Fymv1gDhWawc/ThyugrntzYXXp5vlSsiXeBwLniv/xJUduwFsOOThU38pg7dP
	 T6XgUT0GokeS346ui5kXD277jEejWDl1/BFsGR6R4zAEPe6Clffpn3SNR1ldpGl+UU
	 PZUn9ZXgkUZBDJa8ncRg7bNDWwEKQuno+bSwT5w9cX3RM9jcWlX/b4LlAuYOCupO7Y
	 KTmvT8M7poVXfYae9cxHWGeudjFxm5h0awxgLJaDgxAhIiifi0DHUrCtdSSywWqrd/
	 FCqEWZuR+2GV7U0vFuPjlZkDgBRS75yt7h+qzH5OzZeQuPLamtOm6sOsUnr0wmq/Vo
	 Jbvj2ZsXz6x1w==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 182D6385583
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 22:59:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VUevKgi8";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-abf52666efdso358660266b.1
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 19:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741060797; x=1741665597; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kr4LIMwjtofHKkQxibqoSPIyvF+XRxKKoy50notNL70=;
        b=VUevKgi8lExon5MvHXyXmjt0QzUNV7KxCLK0FLqzstOYgRJOhHCVqvabefvMeBDMTs
         YgAJVufgIgEPuYlvxwl0pLKaF50lqGw5vK40dZPtSqSZczka9c8v1StYh8O9EXIZx0Rd
         faOjISsLflkNZ9oSNT9nimwGp8qM98Myx28Ioujicj/YLQumofP7IJFDJ2Ob+eke6bUw
         B9p85V9dou5Ab8jB3cE4CDEOHxthOnQFIsh9Y1XdaNI/E1rAUcoJIf+7zU/7JkN1czY0
         MHuG9JJjBo3Lp0JiPw4F9zmjtjWfc9a9DzkDZWhhoTIElRcGFqrCE38MQshA+lfHEl0P
         Gs/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741060797; x=1741665597;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kr4LIMwjtofHKkQxibqoSPIyvF+XRxKKoy50notNL70=;
        b=wy1nA0/604lqIJ9i8b7KfFgZWTPLmMhy72sdtzS9PNt9hy2hCoIMaHzD6n/1kyJkw4
         Bhufk4CbEQdCjFXEnVqxQR6OUu6uM4oieJ4cMy1UVjTz3kfR0YlXjhqEddIr+tD88frA
         4MP/2Ovvd8Hacn5L9kCJ+n5IM5+pJh1YY6suI8ynF8APhHPHRf2yLsLGodL6YRJrzDDA
         fnENAkig4XADVzzCiwEdndspzSeyPm7aqPdWck93wAbdCB2FCZPl2mOXeIasgU1iEOxW
         iPjk+TTqkUGaL7vXrTFeJEQvuHhglt64I7Wmu3+sxePpIH+2fyND2H5AUhrlG+TNbROJ
         0cfg==
X-Gm-Message-State: AOJu0YyytUHSpl6j/FcDkSrslbEKwuMz5p4KLGzTpA6KMjg8kmap4mZL
	F5IvkS+5wVDyqBMYmp55aSLf/UOoalqQVjO/CxhNaGDoYnXa2No5X9KBVX9lXGbE52s0eeW8M8O
	4lJFnIdJ/yGga+PQCjtIVbhgujro=
X-Gm-Gg: ASbGncu+ZmaOHDIAIlkfiY46HlxXGdW6uCE0rKQO5ADP0XqP3zMeeTt3Iw1Mts+VUIU
	oi8AVTQZgwFq7HLrtPPmxhR4JwB6q7tzt0uGsSxrPV7T1sJH3eR88l/apGNd7YfBokcuU5gmxMl
	9CZ4EIFPse38q3VoLLxoGCjsGH
X-Google-Smtp-Source: AGHT+IFFzzk+hXHKz+G+embxjNIl9v85XTj5D+ngQ5bf1+/xBG6PEpGCTn8MQkIW/mw8pYLL+Q+JVvOFvNo5E9B0USE=
X-Received: by 2002:a17:907:972a:b0:ab7:d454:11c9 with SMTP id
 a640c23a62f3a-abf25f9fdddmr1945436266b.8.1741060796613; Mon, 03 Mar 2025
 19:59:56 -0800 (PST)
MIME-Version: 1.0
References: <CAAv0A=MCFrxkvS95kfPJM6TKDM5LTQNLy5GbREOswVWQdCa44Q@mail.gmail.com>
 <15ff7079-3d5f-4ba6-a6eb-9b0c62680369@gmail.com>
In-Reply-To: <15ff7079-3d5f-4ba6-a6eb-9b0c62680369@gmail.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Mon, 3 Mar 2025 19:59:45 -0800
X-Gm-Features: AQ5f1JpAmFoZthJScduLAEfIRN3FrzXIQsQ2V2_9lcaERPt9WMOp2kNjSs5f_zM
Message-ID: <CABL+oDa_oj9D7shKVrdszzPqP6y5H99VcqgXP2paWsv2-f=k1Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6OBAXM5DJXPQ5GWB54UAWSIYLGCUPME4
X-Message-ID-Hash: 6OBAXM5DJXPQ5GWB54UAWSIYLGCUPME4
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OBAXM5DJXPQ5GWB54UAWSIYLGCUPME4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0287428933186318764=="

--===============0287428933186318764==
Content-Type: multipart/alternative; boundary="000000000000508d3f062f7c4e81"

--000000000000508d3f062f7c4e81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For an ADC, I believe the noise power is fairly constant. As sample rate
increases, noise power density should decrease and SNR should improve. Thus
a measured improvement in noise figure.

Source:
https://www.analog.com/en/resources/technical-articles/noise-spectral-densi=
ty.html

x310 ADC (ADS62P48): http://www.ti.com/lit/ds/slas635b/slas635b.pdf

Mark


On Mon, Mar 3, 2025, 7:48=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail.c=
om>
wrote:

> On 03/03/2025 22:23, Dustin Widmann via USRP-users wrote:
> > Hi all,
> >
> > I see an interesting trend and I'm not sure how to explain it ...
> >
> > I've done a y-factor measurement, sweeping the frequency, sampling
> > rate, and rx-gain with an x310 with the SBX-120 daughterboard. The
> > results seem similar to the published performance specs. The part I'm
> > not sure quite how to explain is why the NF would vary with the
> > sampling rate. Doesn't the X310 use a static sample rate and
> > downsample in the FPGA? Why would this affect the NF? Why does the
> > effect seem to be more exaggerated at higher gain settings? Why is the
> > effect on NF very small at higher sampling rates but more pronounced
> > at lower ones instead of being a linear change?
> >
> > Dustin
> >
> What noise inputs are you using for the two levels in your Y-factor?
>
> The amount of power represented at each sample-rate is different, and
> shooting from the hip here, the amount of energy
>    represented in the transition regions at different sample rates will
> be different.  For example, odd/even/factor-of-4
>    sample-rates have different pass-band shapes.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000508d3f062f7c4e81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>For an ADC, I believe the noise power is fairly cons=
tant. As sample rate increases, noise power density should decrease and SNR=
 should improve. Thus a measured improvement in noise figure.<div dir=3D"au=
to"><br></div><div dir=3D"auto">Source:=C2=A0<a href=3D"https://www.analog.=
com/en/resources/technical-articles/noise-spectral-density.html" target=3D"=
_blank" rel=3D"noreferrer">https://www.analog.com/en/resources/technical-ar=
ticles/noise-spectral-density.html</a></div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">x310 ADC (ADS62P48):=C2=A0<a href=3D"http://www.ti.com/lit/d=
s/slas635b/slas635b.pdf" target=3D"_blank" rel=3D"noreferrer">http://www.ti=
.com/lit/ds/slas635b/slas635b.pdf</a></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Mark</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Mar 3, 2025, 7:48=E2=80=AFPM Marcus D. Leech =
&lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"nor=
eferrer">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 03/03/2025 22:23, Dustin Widmann via USRP-users wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I see an interesting trend and I&#39;m not sure how to explain it ...<=
br>
&gt;<br>
&gt; I&#39;ve done a y-factor measurement, sweeping the frequency, sampling=
<br>
&gt; rate, and rx-gain with an x310 with the SBX-120 daughterboard. The<br>
&gt; results seem similar to the published performance specs. The part I&#3=
9;m<br>
&gt; not sure quite how to explain is why the NF would vary with the<br>
&gt; sampling rate. Doesn&#39;t the X310 use a static sample rate and<br>
&gt; downsample in the FPGA? Why would this affect the NF? Why does the<br>
&gt; effect seem to be more exaggerated at higher gain settings? Why is the=
<br>
&gt; effect on NF very small at higher sampling rates but more pronounced<b=
r>
&gt; at lower ones instead of being a linear change?<br>
&gt;<br>
&gt; Dustin<br>
&gt;<br>
What noise inputs are you using for the two levels in your Y-factor?<br>
<br>
The amount of power represented at each sample-rate is different, and <br>
shooting from the hip here, the amount of energy<br>
=C2=A0=C2=A0 represented in the transition regions at different sample rate=
s will <br>
be different.=C2=A0 For example, odd/even/factor-of-4<br>
=C2=A0=C2=A0 sample-rates have different pass-band shapes.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000508d3f062f7c4e81--

--===============0287428933186318764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0287428933186318764==--
