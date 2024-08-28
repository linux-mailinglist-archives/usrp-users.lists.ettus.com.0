Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA309634E0
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 00:37:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 613093857A7
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 18:37:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724884626; bh=sc8fQIXd9Jx5SWyD12vpPWUmkCwF3j9rX3fUWZIKBtU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aQvh3IyP9Lbk4mPECaM8c5CVbY1wbwMghOv8pimmfjf1uTXS7vZZxczd+XCoYtKP5
	 E/UlBLNwYZ6x775YeNwzcQaYQBYe5rDO7gPC/Dd73i/gc+DnqStZmG19Vdgq9U/5Pb
	 9pakhk4za2Ib9pvgmi+JXR8Qt/n2GUBLW+v1Ow1mvfkAfjeVRzG+4d4SIuVnyr77D7
	 88Z3XEnTbAmeorbS2fntAW7eZBZCfX20b5Hy898jI3V0s9wwceXgefZfWFikjTNVjN
	 SCS4eTz891UKGSroyxobf2jPHgb8n4z59XoSrb9PxRZacLJI9JTkM2BKThZZ/8uZBn
	 +zMKM0DFb9Z2g==
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	by mm2.emwd.com (Postfix) with ESMTPS id A26F9385628
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 18:36:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H0CFwUHO";
	dkim-atps=neutral
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4fcf40c9ed3so24629e0c.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 15:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724884584; x=1725489384; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RBYIbQ/6wm0jKfkcfGlqbIctSZAiCVd1bmUkoUFOSac=;
        b=H0CFwUHOKjwHPFw4ZygPFHOF6HsifTDVv9nfhm43BtpL6PHc5y0MX2faU3Br6gnHHI
         euZQ8yE+v/BH3Os/0rweTL0SabkSb4vGdN2gwfpFU99002vWU7/29skOXJC+U/49nMcI
         y1Y7ak1mDCnTmxg1Lng3fAowfIRV98MTxSgw7YmygGDxa+d4vjZw7AYUpJZzqcSbkkJT
         Vm7YII/+uQqV9ZWKStk4/5rAGFUkat5UVnMsvPI5NUWAMfmCYSQkXzhUEtKZAy5bUIyb
         gIt9L68JwidhjET114H0wwa98+3t52J2Z59I1u/fTaXgQ4R4FDyTMp5qpAeByCld2KO+
         ykjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724884584; x=1725489384;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RBYIbQ/6wm0jKfkcfGlqbIctSZAiCVd1bmUkoUFOSac=;
        b=sUaz9Okn2NK5WLnPaRjv0w8dnzaAO1dR3Jetulm4u2eg2fQ+kPUiNyHAACdUcRkDsc
         se4PzYWZE44ZiqdkhjwqNYkxsCVMb+lxqMoYcUh0IRLaGJRWyHTXrYWi1AczIO8R92kr
         5gbx2wg9tuAAhWBxgCfG7xLN89p3+uVqJeVUKH7RG7nFuMFK5dn0JANvT7VChHykHu2a
         JnyqjMN1xBspInQBnJNRLcG7xASfB3dMsncRp1O4Qud3XJYhE9QI9ml1nxV5JvaSRpB0
         bpG2Hif7vG3BZZIurFnMM3XQCup0HDPXSkEQGIMI8Vdz1/DdXz5xocyqS487Y4iKm3qS
         X45g==
X-Gm-Message-State: AOJu0Yyb9TIWPVFxfFyNhk89edo4eUdnl/Mg7hyJizvQRogBvQfVyUoM
	l12UE0cQfoJZuUOEROzzjjkJoicCnOPfudWX5OKj0Q4JgtSa3Dg1+hAh+A19trH2T6XaiOp5GTf
	eUG2mFvwwFZHCwrkYAkvKM2vbNRgOww==
X-Google-Smtp-Source: AGHT+IGofo/MFdoSrhrNogzT2xa2zcT/sQpjWhRiSssAnCwIrAK2bPpfuaxBK2JZ72IiGwbjaMkn+nWVgJJ6K2hP6TQ=
X-Received: by 2002:a05:6122:3d01:b0:4ec:f996:5d84 with SMTP id
 71dfb90a1353d-4ffe4a5d3abmr1010279e0c.2.1724884583990; Wed, 28 Aug 2024
 15:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
 <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
In-Reply-To: <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
From: Steve Hamn <stevehamn311@gmail.com>
Date: Wed, 28 Aug 2024 15:36:13 -0700
Message-ID: <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YPAICP56RGGQACJLJOM5N4KA5KSDVLCK
X-Message-ID-Hash: YPAICP56RGGQACJLJOM5N4KA5KSDVLCK
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPAICP56RGGQACJLJOM5N4KA5KSDVLCK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6840164731928895822=="

--===============6840164731928895822==
Content-Type: multipart/alternative; boundary="000000000000e84df20620c5fccb"

--000000000000e84df20620c5fccb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks. Understood, that all makes sense to me. Part of this is I'm trying
to understand the base Noise Figure as a starting point so I can design my
filtered low noise front end as you suggest.

I guess you're confirming that 36.5dB is expected from the X440 and there's
nothing crazy wrong about my math.

Thanks,

Steve

On Wed, Aug 28, 2024, 3:15 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 28/08/2024 18:04, Steve Hamn wrote:
> > Hello,
> >
> > I have been trying to estimate the Noise Figure of the X440. I looked
> > through all the documentation I could find and couldn't find it
> > anywhere, so I tried to calculate it myself.
> >
> > It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz
> > (
> https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Perf=
ormance-Characteristics)
>
> > and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms
> > (
> https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Elec=
trical-Characteristics)
>
> > .
> >
> > Based on this information I calculate NSD of -139dBm/Hz [-146dBFS/Hz +
> > 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz gives Nois=
e
> > Figure of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on the
> > Daughterboard (https://files.ettus.com/manual/page_fbx.html), gives an
> > approximate noise figure of the X440 at 36.5dB for 2.4GHz.
> >
> > Is this correct? Seems high, I don't have much experience calculating
> > noise figure from ADC's so I'm wondering if I'm missing something.
> >
> > Thanks,
> >
> > Steve
> >
> >
> "Naked" ADCs are inherently very very noisy devices.  Since the X440 has
> no RF pre-processing of any importance, you'd at
>    least need a low-noise filtered front-end to beat the inherent ADC
> noise into insignificance.    For other USRP radios, mostly,
>    that's already taken care of, and the receiver noise-figure is much
> more "respectable"  (not, radio astronomy respectable,
>    but adequate to put onto an over-the-air antenna).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e84df20620c5fccb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Marcus,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks. Understood, that all makes sense to me. Part of this is I=
&#39;m trying to understand the base Noise Figure as a starting point so I =
can design my filtered low noise front end as you suggest.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">I guess you&#39;re confirming that 36.5d=
B is expected from the X440 and there&#39;s nothing crazy wrong about my ma=
th.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Steve</div><div dir=3D"auto"><br><di=
v class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Aug 28, 2024, 3:15 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">On 28/08/2024 18:04, Steve Hamn wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have been trying to estimate the Noise Figure of the X440. I looked =
<br>
&gt; through all the documentation I could find and couldn&#39;t find it <b=
r>
&gt; anywhere, so I tried to calculate it myself.<br>
&gt;<br>
&gt; It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz <br>
&gt; (<a href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rf=
soc/RF-ADC-Performance-Characteristics" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/=
RF-ADC-Performance-Characteristics</a>) <br>
&gt; and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms <br>
&gt; (<a href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rf=
soc/RF-ADC-Electrical-Characteristics" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/R=
F-ADC-Electrical-Characteristics</a>) <br>
&gt; .<br>
&gt;<br>
&gt; Based on this information I calculate NSD of -139dBm/Hz [-146dBFS/Hz +=
 <br>
&gt; 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz gives Noi=
se <br>
&gt; Figure of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on the <b=
r>
&gt; Daughterboard (<a href=3D"https://files.ettus.com/manual/page_fbx.html=
" rel=3D"noreferrer noreferrer" target=3D"_blank">https://files.ettus.com/m=
anual/page_fbx.html</a>), gives an <br>
&gt; approximate noise figure of the X440 at 36.5dB for 2.4GHz.<br>
&gt;<br>
&gt; Is this correct? Seems high, I don&#39;t have much experience calculat=
ing <br>
&gt; noise figure from ADC&#39;s so I&#39;m wondering if I&#39;m missing so=
mething.<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Steve<br>
&gt;<br>
&gt;<br>
&quot;Naked&quot; ADCs are inherently very very noisy devices.=C2=A0 Since =
the X440 has <br>
no RF pre-processing of any importance, you&#39;d at<br>
=C2=A0=C2=A0 least need a low-noise filtered front-end to beat the inherent=
 ADC <br>
noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP radios, mostly,=
<br>
=C2=A0=C2=A0 that&#39;s already taken care of, and the receiver noise-figur=
e is much <br>
more &quot;respectable&quot;=C2=A0 (not, radio astronomy respectable,<br>
=C2=A0=C2=A0 but adequate to put onto an over-the-air antenna).<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000e84df20620c5fccb--

--===============6840164731928895822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6840164731928895822==--
