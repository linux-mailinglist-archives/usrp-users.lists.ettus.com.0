Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E84506F3186
	for <lists+usrp-users@lfdr.de>; Mon,  1 May 2023 15:28:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A65F380B01
	for <lists+usrp-users@lfdr.de>; Mon,  1 May 2023 09:28:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682947702; bh=8cv1SltTEzfQvJ7zFWv27JMhQklCuvq3QvsKGuD3+Mw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=H0THCJENg2CdUPTeiY7SRwU72Al9r6EpWIoNqhFchGjGPVl2qsW+x8mUrOGYiVcMs
	 IzgvqnSoX2PslH01wqbM7aY+u5jV94O9FYz0Kl53aVrGqA6O1ri8HYSckqhLLecrPu
	 cERyzbJqsY9QpWrepMIpQF00Zr1lAzEVHJM7aXP1ViX6KpL2xeU2tGyYb+swHC6GKR
	 FAEfu4di+yafVqfwdjganGBTLOSxLPYa0D3wSeutS23YLXis0iFT6SmYE00xh7cgg+
	 XpD5zJIKKOJ7FfEte19p5cfnhnOi+4BFDSdD1RDv4ZDQZwxNNX6sB4A21SCX5cDCHg
	 cmtkuTYt625cQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 004553809F3
	for <usrp-users@lists.ettus.com>; Mon,  1 May 2023 09:28:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BECFxpJB";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-50bc4d96e14so8973478a12.1
        for <usrp-users@lists.ettus.com>; Mon, 01 May 2023 06:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1682947680; x=1685539680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0Kd5qP/BpGBENg0XxG+qTZVgSeiEJwhPadu+hK953aU=;
        b=BECFxpJBi4tOfLfOlnemLa4vC4CYMq+TD6pH5I0oKsbroxTcqcrhek+I0yYlQNI40P
         YyiLSsw79wpCaSqHyjA3JQsxew325LPamDG0AnzMsyCSRJertWaz3XHa+ac1fZ8XDFDG
         UI2OYx+8fSeS8z3juaIoxDUJHPUo/nBFiponKshq/zjVPOk6+qroFsEcbHQcMuEuLj2Z
         qifYztDzSoHeznxyneMMwAmlzYfADXMCqYPn74LNXFTXh9hG2GEnq5kKLtqXUs2Ga98m
         0rC5NgmD/bgMKM8tO0HTZqQMfvw5myBgVD+JDRSI0RORvlOjRW+zNWAetcvOR5YiKiDp
         0eow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682947680; x=1685539680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Kd5qP/BpGBENg0XxG+qTZVgSeiEJwhPadu+hK953aU=;
        b=BI8IHduDsZG0G1mlFPfXbOVRgNzdpOzAZgxWxRibYcdL9G5oPEpN6trFx40l4GSnmw
         coorrXOdN0Jo7FlVIPLgFgxfYx6tMe2YFHycf4JcBbFykDg9aJmfzmZOvtjwzKQ0TXTn
         xbtnqYT8IhxK7dLAS9Q2wuqnTG7vlpgocxl/7z6ZtawTNR1yCOycNPmv15M2noSChiCO
         q1lmp5upeayehovHFuwLEbSZaQrFy/41nQx9tLAODPXVE2mDJyHONDjwkfOJkucNXtIE
         K3MLn5TBzgaYHPvueTMcRBguaPXvsc9uJterHMRl9LePg5FR6YB0qO5HJ3qEKxR9HZvE
         GCOA==
X-Gm-Message-State: AC+VfDz8TwigY/FdMWnVvLm9wW1BZ2l0GAD+FMiRSVEySmTBiNA+/3Ii
	p40PuP49DeNRhfFqceyqU+GZzYtTsXQDX4aJAoDL2A==
X-Google-Smtp-Source: ACHHUZ44AED/s8sjxqzh7+yhZKAtPD+Rx1Fgu18Ksi1+3sFvmffzcdJEmFhUCS3STb19e4HBkdDVP0VOUzVxrxziRw0=
X-Received: by 2002:a05:6402:26cb:b0:50b:2088:3533 with SMTP id
 x11-20020a05640226cb00b0050b20883533mr6127882edd.1.1682947679472; Mon, 01 May
 2023 06:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw@lists.ettus.com>
In-Reply-To: <qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw@lists.ettus.com>
Date: Mon, 1 May 2023 09:27:49 -0400
Message-ID: <CAB__hTR+S-Ygc_pX_SZ186y6SBGMRvLfUQmydhOtM8FmU7QjOg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: MAMNIJICSVXLWTWLIIFJLNCUGAS3TYFZ
X-Message-ID-Hash: MAMNIJICSVXLWTWLIIFJLNCUGAS3TYFZ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using PPS/TrigIn to collect bursts of samples in C++ UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MAMNIJICSVXLWTWLIIFJLNCUGAS3TYFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6260998945878927883=="

--===============6260998945878927883==
Content-Type: multipart/alternative; boundary="0000000000009cffb605faa1caa0"

--0000000000009cffb605faa1caa0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
I don't think it's possible (without some FPGA mods) to start
receiver sampling on the pulse rising edge.  However, the following
alternate methods are possible.

   - Connect your trigger signal to PPS input. Use continuous recording
   where your c++ just throws away all samples except the ones you want. Us=
e
   the "get_time_last_pps" function in conjunction with the rx metadata tim=
e
   tag to know which samples to keep / discard
   - If your experiment allowed you to change the synchronization concept
   such that the N321 was the device generating the sync pulse (rather than
   receiving it), it is pretty straightforward to output a GPIO pulse at th=
e
   same time the Rx starts
   - Connect your trigger signal to PPS input.  Poll "get_time_last_pps"
   until it changes.  Initiate a "future" rx collection with enough latency=
 to
   account for the software-in-the-loop (e.g., 1 ms?).  This would cause th=
e
   Rx to start with an exact latency relative to the PPS rising edge, but i=
t
   would require a hefty latency (such as 1 ms) to account for the
   non-deterministic software commands.

And, it should be possible to make FPGA mods to do exactly what you want.
But, that would require your block to access the GPIO which I have never
done and so I don't know the details.  The bullets above can be done
without mods.
Rob

On Fri, Apr 28, 2023 at 12:12=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I have an application where I collect timed bursts of samples every perio=
d
> of time for an amount of time. For example, Every millisecond, collect
> samples for 100 microseconds.
>
> I=E2=80=99ve used GPIO and other synchronization methods successfully bef=
ore, but
> I am wondering if its possible using the PPS on the ettus n321, where a
> square wave with period 1 ms is passed rather than 1 second, then using
> timed commands in C++ to carry out the burst collection on every rising
> edge of the square wave.
>
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009cffb605faa1caa0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>I don&#39;t think it&#39;s possible (without s=
ome FPGA mods) to start receiver=C2=A0sampling on the pulse rising edge.=C2=
=A0 However, the following alternate methods are possible.</div><div><ul><l=
i>Connect your trigger signal to PPS input. Use continuous recording where =
your c++ just throws away all samples except the ones you want. Use the &qu=
ot;get_time_last_pps&quot; function in conjunction with the rx metadata tim=
e tag to know which samples to keep / discard</li><li>If your experiment al=
lowed you to change the synchronization concept such that the N321 was the =
device generating the sync pulse (rather than receiving it), it is pretty s=
traightforward to output a GPIO pulse at the same time the Rx starts</li><l=
i>Connect your trigger signal to PPS input.=C2=A0 Poll &quot;get_time_last_=
pps&quot; until it changes.=C2=A0 Initiate a &quot;future&quot; rx collecti=
on with enough latency to account for the software-in-the-loop (e.g., 1 ms?=
).=C2=A0 This would cause the Rx to start with an exact latency relative to=
 the PPS rising edge, but it would require a hefty latency (such as 1 ms) t=
o account for the non-deterministic software commands.</li></ul><div>And, i=
t should be possible to make FPGA mods to do exactly what you want. But, th=
at would require your block to access the GPIO which I have never done and =
so I don&#39;t know the details.=C2=A0 The bullets above can be done withou=
t mods.</div></div><div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 28, 2023 at 12:12=E2=80=AFPM &=
lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>=
<br></p><p>I have an application where I collect timed bursts of samples ev=
ery period of time for an amount of time. For example, Every millisecond, c=
ollect samples for 100 microseconds. </p><p>I=E2=80=99ve used GPIO and othe=
r synchronization methods successfully before, but I am wondering if its po=
ssible using the PPS on the ettus n321, where a square wave with period 1 m=
s is passed rather than 1 second, then using timed commands in C++ to carry=
 out the burst collection on every rising edge of the square wave. </p><p><=
br></p><p>Thanks</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009cffb605faa1caa0--

--===============6260998945878927883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6260998945878927883==--
