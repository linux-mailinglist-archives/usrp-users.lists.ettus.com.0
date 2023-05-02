Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F4F6F4B91
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 22:44:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91964384923
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 16:44:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683060278; bh=7VX2xxKdvbdOcgTuD3iaBov3l61WPZ45jF+6trguvMk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lU3T1w9s2qQ5nzQ036C1hP9JZL3HKl6v7/ipvvlJApX6D3/C8pJnA/4XPNEa+jNzw
	 X6kAxDZjLi5MtadblmiPA9uuVetPrYWPTEt4SjeDQZ2PrDXAEC5rA/cRGq98ARUqh7
	 ImABFN6tF8ynv/qNFNrmhCAlpjC2zz0ggqvxU/QUrUGKuiHKH5hQgutGTS+VdBeYDf
	 +R0VDNP2NxCH0GwvTRVvDHvBEfgSm+an9p0wlKDJ5GxSdHaVNLoS5wMB4wHf67bhTL
	 bX6sIQ1Y/5yVX086XzynYRhVgMM2ee0Jo+iQa/S+c5FZ2ioPKLIzIR2k2XKizTb6R5
	 poov59yxjX58Q==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 42B13384809
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 16:44:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h18YcK3E";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-50b383222f7so5789087a12.3
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 13:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683060257; x=1685652257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NjiTZ6puXogMK5suu+YEtnqWYYJasVorTOh487sR2CQ=;
        b=h18YcK3EM3UNKqjP4ctFHIO3AonsIXmEsmMmuJkX9iWguHE7si6IrABG/QAsEMiY9u
         8e4KxymhSEgeDpKVkDuZWz1TnVddR2e1S9htL11BxuBdS1cix1EjeXJpzHY7y1I6Vzmd
         25y0X5uU01htVH+rJFNlsHHht1jd24tPft6DBiWjGc8a3iYnsJvgOz0++tdbMXD1tuW4
         wi5YkctWC2kGxcSuRty+DfifeaH8MuPjXwPLu5y/ivKBeRxIMJ3AH/KrhxgY5kSp8MNF
         1KH0im5EIRIlUwNKmO6DudUt/T27aJguxXpU0p/YGBV2XI1eV3t7eu5txWCysCm6RSxW
         h95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683060257; x=1685652257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjiTZ6puXogMK5suu+YEtnqWYYJasVorTOh487sR2CQ=;
        b=CCQSoEOXGQTMm57504Fue2Ml4DDPz3dy5DjDD9BSVLUJGnT2OFOzC4LHr+hW8Rmaay
         ca2xJYEXlYBSwN393WAP//ZtoUg6y+8DEyynX+V6kf95dRvR7+kUY1/9pQNq26G4X7Fc
         VhxkuCL381jBHBeYnbmA7s8tICOWEJqBo6HyTEStYRo1ZlQ6Tuin8SD02vB8jl5fBEuZ
         tyqIjFBO1/t/JlwL+CpUqamBk7qvrqX+VhvpHib+MeWdKfok3ZaCIk8oLbClQYMxVtpo
         OJFYKzMeyxUOk0Q0Sln2Xym5hpyKTBy1Nd7sG6Rv/87fkVVJYlqJFQvBQgeYk6rIwUMr
         b+3w==
X-Gm-Message-State: AC+VfDxzM/Eez808kBNtjfARBbTJTBo9CgbxVzEem8u4TlhT6CIL+vTD
	zcfLP7NP6pi7wvL8G5uY1WZ83dKsSrSZ6WUdVvw=
X-Google-Smtp-Source: ACHHUZ5vpwY6kSvTC0bJ3c1TkHrdqrw5YDaYRDCoY3TcXx/VgskQKMxeI5mLjXG/iZM+hY/1pgKY6uYOZbrg1yULmJo=
X-Received: by 2002:a17:906:7314:b0:94f:450e:6a76 with SMTP id
 di20-20020a170906731400b0094f450e6a76mr1174979ejc.61.1683060256805; Tue, 02
 May 2023 13:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw@lists.ettus.com>
In-Reply-To: <TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 2 May 2023 16:44:05 -0400
Message-ID: <CAEXYVK56DrCd3okmQiumkSNNFovocUGdq68o1b6qUHRMya4-hg@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: U5255TDCWOEZ4WQEUVYX2AXU6NSNOT7C
X-Message-ID-Hash: U5255TDCWOEZ4WQEUVYX2AXU6NSNOT7C
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U5255TDCWOEZ4WQEUVYX2AXU6NSNOT7C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1334279529661301891=="

--===============1334279529661301891==
Content-Type: multipart/alternative; boundary="000000000000be1d0905fabc0049"

--000000000000be1d0905fabc0049
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 3:25=E2=80=AFPM <ri28856@mit.edu> wrote:

> Try interpolating on the host to 200 Msps and see how things go.
>
> I=E2=80=99m not sure what you are suggesting. If I take the =E2=80=9Cbad=
=E2=80=9D recorded file
> and I interpolate from 25 to 200 Msps, it=E2=80=99s not going to make cho=
pped tail
> the appropriate width.
>
> I also can=E2=80=99t just run the USRP at 200 Msps, because I=E2=80=99m u=
sing a UBX-160
> daughterboard which has an analog bandwidth of 160 MHz.
>
Sorry, I meant on the transmit side.  Try transmitting at 200 Msps always,
and do your own interpolation.  That way you bypass the DUC.  You'll
probably run into some similar issues where you expect to transmit 8*1000
samples, but you'll see your transmission get cut off if you do that.  Play
around, see what works for you.

> I think I=E2=80=99m just asking the wrong question somehow. I can=E2=80=
=99t be the only
> person to have ever tried to write a UHD application and asked =E2=80=9CW=
hy is my
> signal shifted by a constant group delay? Why are my final 20 or so sampl=
es
> always chopped off?=E2=80=9D
>
> I would expect UHD to handle these transparently for me. If there is a
> constant group delay, why doesn=E2=80=99t the timestamp get decremented b=
y N clock
> ticks? If there are X taps in the transmit chain filters and I requested =
to
> transmit 1000 samples, why aren=E2=80=99t the 1000 samples transmitted ta=
ken from
> the useful part of the filter convolution? Do I have to always instead
> transmit 1020 samples at the application layer?
>
> I understand that there are different devices and different configuration=
s
> of devices. But there=E2=80=99s nothing stopping UHD on the host software=
 side from
> reading a register to learn some information about the configured device.
>
UHD could try to guess what it wants to do for you, but it's probably not
what it wants for someone else.

> It may also be because of the RFNoC stuff it=E2=80=99s complicated for th=
e host
> software to figure out some of these values. Even if it can=E2=80=99t be
> automatically figured out in software, I would not expect the answer to b=
e
> =E2=80=9Cread the Verilog for the Tx filter chain and determine how many =
taps
> exist=E2=80=9D for the average user. Is there an application note that ta=
lks about
> best practices somewhere?
>
Not that I'm aware of.

You can get around the RFNoC DUC issue yourself by writing your own
interpolation block - or your own modulation block - and output at 200 Msps
the exact samples you want to transmit.  Beyond that, it just seems like
some assumptions that Ettus/UHD made aren't what you expect.

Brian

--000000000000be1d0905fabc0049
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 2, 2023 at 3:25=E2=80=AFPM &l=
t;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><blockquote><p>Try interpolating on the host to 200 Msps and see how th=
ings go.</p></blockquote><p>I=E2=80=99m not sure what you are suggesting. I=
f I take the =E2=80=9Cbad=E2=80=9D recorded file and I interpolate from 25 =
to 200 Msps, it=E2=80=99s not going to make chopped tail the appropriate wi=
dth.</p><p>I also can=E2=80=99t just run the USRP at 200 Msps, because I=E2=
=80=99m using a UBX-160 daughterboard which has an analog bandwidth of 160 =
MHz.</p></blockquote><div>Sorry, I meant on the transmit side.=C2=A0 Try tr=
ansmitting at 200 Msps always, and do your own interpolation.=C2=A0 That wa=
y you bypass the DUC.=C2=A0 You&#39;ll probably run into some similar=C2=A0=
issues where you expect to transmit 8*1000 samples, but you&#39;ll see your=
 transmission get cut off if you do that.=C2=A0 Play around, see what works=
 for you.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p> </p><p=
>I think I=E2=80=99m just asking the wrong question somehow. I can=E2=80=99=
t be the only person to have ever tried to write a UHD application and aske=
d =E2=80=9CWhy is my signal shifted by a constant group delay? Why are my f=
inal 20 or so samples always chopped off?=E2=80=9D</p><p>I would expect UHD=
 to handle these transparently for me. If there is a constant group delay, =
why doesn=E2=80=99t the timestamp get decremented by N clock ticks? If ther=
e are X taps in the transmit chain filters and I requested to transmit 1000=
 samples, why aren=E2=80=99t the 1000 samples transmitted taken from the us=
eful part of the filter convolution? Do I have to always instead transmit 1=
020 samples at the application layer?</p><p>I understand that there are dif=
ferent devices and different configurations of devices. But there=E2=80=99s=
 nothing stopping UHD on the host software side from reading a register to =
learn some information about the configured device.</p></blockquote><div>UH=
D could try to guess what it wants to do for you, but it&#39;s probably not=
 what it wants for someone else.=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><p> </p><p>It may also be because of the RFNoC stuff it=
=E2=80=99s complicated for the host software to figure out some of these va=
lues. Even if it can=E2=80=99t be automatically figured out in software, I =
would not expect the answer to be =E2=80=9Cread the Verilog for the Tx filt=
er chain and determine how many taps exist=E2=80=9D for the average user. I=
s there an application note that talks about best practices somewhere?</p><=
/blockquote><div>Not that I&#39;m aware of.</div><div><br></div><div>You ca=
n get around the RFNoC DUC issue yourself by writing your own interpolation=
 block - or your own modulation block - and output at 200 Msps the exact sa=
mples you want to transmit.=C2=A0 Beyond that, it just seems like some assu=
mptions that Ettus/UHD made aren&#39;t what you expect.</div><div><br></div=
><div>Brian</div></div></div>

--000000000000be1d0905fabc0049--

--===============1334279529661301891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1334279529661301891==--
