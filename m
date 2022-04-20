Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB84507F06
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 04:45:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C13D13848CB
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 22:45:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650422741; bh=24U+5GixXF28diEqXkQbnfN24vrnD8mxl472QMWUg5k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M/WGYTG2MYbSlWJ9Vy44E9zICRCZqVhzrjWI07ac4hL050Y9y7srFPBDudtOsWBmG
	 6Bq7DEVgLPdXHzo1Zw5ajW1LAa7jPPnfy3eq5+8n1RojdDwHXF983pyhEacMEFxnsc
	 sQ5hyR7VmOT9iBcu32TutjBcI0I/p7rkTIMq97RHNI9K02P8q6ydklbgBOs2Y8seVp
	 cx1htV33Di2nDhc3ZwbGER07LXosiYchLAs/oFsEa4pQZuyEr/fSylzvFHu2VDuGmx
	 vA+QsLiphSNnB3zoY7dE92/J0l68fzTlMP9LdoeR6hXV/PAI8vvq52Sbcyo1Sh/a+J
	 EZTGvDVb+PuCg==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 068F53847EE
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 22:44:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="outnNcZr";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id f38so497199ybi.3
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 19:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SeXKiIslWa/ZX/bV+CnMt+7P5Xa87J2v1UsO4ZcISnU=;
        b=outnNcZrfm+omPqrIKcE3fyuufiH/Aot0mmYwtrIZCo+eQtAZFN9sA80SgdIrRHjR+
         1mJo27g7TvV4f+JCnZgz/vCCGBpGVT8I3WmqLgZO0Gc5mR5gZ1ye28yK0VSM6V2ZWD3p
         m/sUTUFo3IYjdcAALB82f5XsqLQW5uT+NvZ8m8D6HnUusiV0hwketF1NTU9y3TikupE2
         PYKJjw5FKKoksMD4ktrwaxigqADkWIQqW62jhDyPKRNCRspzCTErXMKOxqPybkpPZPgP
         MVJCoqWJ98sWv042JVPsVnMzO0V/BLvRFOYAakZasMJad8enDo6OGjXDz47pY3LsOsD6
         UicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SeXKiIslWa/ZX/bV+CnMt+7P5Xa87J2v1UsO4ZcISnU=;
        b=ucTJz7mC2g7vk3imTA405E3RT0kFnr5sM9FHfa+z38DaxcbpPDywr3IItmzpd6TqXF
         4JR4PoUhZPL8QaOmDTLvK54NNjD9Wq+gIieSs1r9o001N4ti/x5AmnHnnQH4GIZWeg8H
         A3SzAKISOmudtfxhvXuB04X/mEXqVanGUJfa/G/amNa3hhpN0QFABdwPQ0urM3lHhbOe
         yXULtLt2ABRiIT1KdUR+qlphSoH5S51TaPa18lsNAjEicpCpTKK1w/eibHFb+iVyCBcu
         l1T5OIY3OgHG2pw67/ujSCbsrs++gQ7jC/IFVVYTpQ0O3MiLd8blZx1b6jKaTMYP1tiZ
         76lA==
X-Gm-Message-State: AOAM5307h5KZRQZHF7G9DnwIHJoBA9xg/6Y2VqMUBAB3geAsaWAVjaEL
	PmKC9ToxS1+0mP3dBhsxQcHSJkxVv7M8ZhfB7/w2yOfNz/Q=
X-Google-Smtp-Source: ABdhPJyPbpihUIEDMaDLyi6lusn/DouqzSpIPs6GFyeQRMiO85QY5L+J0EnrUggt8KzS4tzhf/Zm+3YRualuARfy2aU=
X-Received: by 2002:a05:6902:10c1:b0:63e:df54:7095 with SMTP id
 w1-20020a05690210c100b0063edf547095mr18468894ybu.433.1650422681368; Tue, 19
 Apr 2022 19:44:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
In-Reply-To: <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Tue, 19 Apr 2022 22:44:30 -0400
Message-ID: <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: B6OBYDKYY7PL2FOB2HJEJ3PCZWXS4225
X-Message-ID-Hash: B6OBYDKYY7PL2FOB2HJEJ3PCZWXS4225
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with connecting BasicRX Daughterboard with X310 RF B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B6OBYDKYY7PL2FOB2HJEJ3PCZWXS4225/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5833956424279658316=="

--===============5833956424279658316==
Content-Type: multipart/alternative; boundary="000000000000a6fe7c05dd0cf9a7"

--000000000000a6fe7c05dd0cf9a7
Content-Type: text/plain; charset="UTF-8"

Below is a more detailed description of our issue.

1. We have an X310 with two BasicRX boards installed (no BasicTX). We tried
to read the two data streams from X310 on a computer at a sampling rate
5Msps. The computer displays "OOOOOOOOOOOO" overflow constantly. We tried
other sampling rates such as 1Msps and 10Msps, the observation is the same.

We found that the LED lights on the X310 panel are abnormal. When X310
works in RX mode, the two LED lights (RF A's RX2 LED and RF B's RX2 LED)
should be on, but we observed they were flashing. Also, the LINK LED should
be on in RED, but we observed that it was flashing in ORANGE.

We reloaded the FPGA image, but the problem is consistent.

2. We removed BasicRX from X310's RF B channel, and tested one data stream
from X310 RF A's channel, it works (no overflow). We are sure that the two
BasicRX boards have no problem, as they are brand new.

3. We removed two BasicRX boards and installed two BasicTX boards on the
same X310. We used GNU RADIO to send two data streams to X310 for signal
transmission. It works well and has no overflow issue.

We want to test X310's RF B channel, but we do not know how to set the
parameters so that GNU Radio can read the data stream from X310's RF B
channel. Would it be an argument like "subdev=B"? It looks like GNU Radio
always gets data stream from RF A channel if we set the channel number to
1. Please suggest if it is possible.

Any suggestion and help would be appreciated!


On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-04-19 15:05, Shichen Zhang wrote:
> > Hello everyone,
> >
> > I am doing some experiments and I need to build the 2 by 2
> > communication using X310 with the BasicRX Daughterboard. I use the
> > X310 as both the transmitter and receiver. I can successfully test the
> > 1 by 1 case, however, when I test the 2 by 2 case, the overflow
> > happened and the program could not be stopped. The RF B channel seems
> > not to work ( LED light for RF B RX not flash).
> >
> > I have attached the flowchart for your reference.
> >
> > Best,
> > SZ
> >
> What is your complete hardware configuration?  I assume 2  x BasicRX and
> 2 x Basic TX?
>
> It may just be the case that your computer simply isn't up to the task
> of moving 20Mssp of data in and out of the radio, along with doing 2 x
> FFTs and computing the
>    noise sources.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a6fe7c05dd0cf9a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Below is a more detailed description of our issue. <br><br=
>1. We have an X310 with two BasicRX boards installed (no BasicTX). We trie=
d to read the two data streams from X310 on a computer at a sampling rate 5=
Msps. The computer displays &quot;OOOOOOOOOOOO&quot; overflow constantly. W=
e tried other sampling rates such as 1Msps and 10Msps, the observation is t=
he same. <br><br>We found that the LED lights on the X310 panel are abnorma=
l. When X310 works in RX mode, the two LED lights (RF A&#39;s RX2 LED and R=
F B&#39;s RX2 LED) should be on, but we observed they were flashing. Also, =
the LINK LED should be on in RED, but we observed that it was flashing in O=
RANGE. <br><br>We reloaded the FPGA image, but the problem is consistent. <=
br><br>2. We removed BasicRX from X310&#39;s RF B channel, and tested one d=
ata stream from X310 RF A&#39;s channel, it works (no overflow). We are sur=
e that the two BasicRX boards have no problem, as they are brand new. <br><=
br>3. We removed two BasicRX boards and installed two BasicTX boards on the=
 same X310. We used GNU RADIO to send two data streams to X310 for signal t=
ransmission. It works well and has no overflow issue. <br><br>We want to te=
st X310&#39;s RF B channel, but we do not know how to set the parameters so=
 that GNU Radio can read the data stream from X310&#39;s RF B channel. Woul=
d it be an argument like &quot;subdev=3DB&quot;? It looks like GNU Radio al=
ways gets data stream from RF A channel if we set the channel number to 1. =
Please suggest if it is possible. <br><br>Any suggestion and help would be =
appreciated!<br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-04-1=
9 15:05, Shichen Zhang wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I am doing some experiments=C2=A0and I need to build the 2 by 2 <br>
&gt; communication using X310 with the=C2=A0BasicRX Daughterboard. I use th=
e <br>
&gt; X310 as both the transmitter and receiver. I can successfully test the=
 <br>
&gt; 1 by 1 case, however, when I test the 2 by 2 case, the overflow <br>
&gt; happened and the program could not be stopped. The RF B channel seems =
<br>
&gt; not to work ( LED light for RF B RX not flash).<br>
&gt;<br>
&gt; I have attached the flowchart for=C2=A0your reference.<br>
&gt;<br>
&gt; Best,<br>
&gt; SZ<br>
&gt;<br>
What is your complete hardware configuration?=C2=A0 I assume 2=C2=A0 x Basi=
cRX and <br>
2 x Basic TX?<br>
<br>
It may just be the case that your computer simply isn&#39;t up to the task =
<br>
of moving 20Mssp of data in and out of the radio, along with doing 2 x <br>
FFTs and computing the<br>
=C2=A0=C2=A0 noise sources.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6fe7c05dd0cf9a7--

--===============5833956424279658316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5833956424279658316==--
