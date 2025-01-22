Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0041A18AED
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 05:09:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B736F385CF2
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 23:09:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737518961; bh=5ecnQO9/KHO/OmF0zVySCi8E1ffcQ2X+zg/R6G2Y/hA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ObVH2fYKqpu8EBHSyfCIGOffEWEh1h0fZbmrPVEWvO3ixPrC+9f0spn8i2KFWTJVr
	 IVwGMyO4IGL3p1TFwyLd/SIEwbjxtGB1jKbynssLmI8IsXcYx75l/vJi4oMCbg+aNz
	 I+kN9mvWXuzYY6pU0BDXo8bzPzLY3fbUiFP67XFKOZIC4HBhVR+zJepH42KZmT/63m
	 v/C+rHCwMxlx0aW0kKV998+TRkQqhIREdcK2pHInr3ADhn9jWSAX+P+p7BK1tRCjuw
	 KNYfHp4NdQbL1dX7m8tJwwk20ezAXIq/qBYaWperQfJBE4h3Gp0C+3/iDsoOBHAoG1
	 efhG7bUGlvOsA==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 891873811FB
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 23:08:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="PT+anDgT";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e5447fae695so10870403276.2
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 20:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737518918; x=1738123718; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dxC10mj1ObxMfoguVt8eFOxITl3ZbSIzLamX+EdLuqc=;
        b=PT+anDgTFmdgWakE0md1bKPS4euQYFjb6PeTXh26hhsK0Xo+dlHBjsYTRjJuWxgbXw
         1Nim1eueAciFDVehjsXXvONQ26amyyk/z5Q16kQ9799uVoOEx67Hnxkcvg6G+fryPR4i
         01EyKE9vnbeX7AK33aURO5EIyLPDZOKOYIIL94nepEnUXRIc8zJO9GW138Lvevg0W4hc
         CHdB7o8AFgGcyuqR1I6RxPLLtnQVv/zsi1d9iW2wJ4B4PbHCyACWsEDdn8LjtKEgfmAG
         /oWm8544z11oXro0ZNDIVwHiDeJ6wCGdZCaYvbJ6w75wK/lVwsz8FzkkOCynVBWtUdwL
         mEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737518918; x=1738123718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dxC10mj1ObxMfoguVt8eFOxITl3ZbSIzLamX+EdLuqc=;
        b=iL3AAqwhkosdiWRSqOl1RFYeLmFc7AkQY3DnKOOyTL4Z/NfbyRGynPjOM6gsR3jQGm
         70G8mZToxa71AH8roiU8b4G1oBj6bgGYF9BkvBaBv/mQcleFJGrAwv1HT3B7IkSD/Do9
         rW1oeF8i+YRCLsrFDdHmC75IdAYyCQg2eJbPXdcbChJ3ZPxtbO9YfIXUVIrQdvB/88hC
         rfy/YWnoF3oJpIQoTK1tKzgOJ20v0yU6VfwfYKpqp7ivnAjK/Obz0qyWfssfg4d4/VzR
         G7uzoFCB01PalgvaGCTiNdyVnMKPoBrtJZZkKmqSk2o4t+4QNsH9/ynGPyIcHe4+QsqT
         wmQQ==
X-Gm-Message-State: AOJu0YxQVb+bx82UqwNNQSgY3YL0lRrVbQwA/Z9b0ZRCSDqepopTm425
	S79ixGb6odCbe822LK9J7sS4aTqjBYjH6s2pnfsPFZIusCJ33neGnufeMcaCkag+nCQABD9mJdm
	zSPSSqDEXOs1467bguIbYOiASg1y4+OoY/9T/Hyd1acdflaWfzhRhvw==
X-Gm-Gg: ASbGncvJ5mF7+wp+3eOr3dFmbjqJa4RCX4ZNHwUFSH0C3+uoE0EAGWL3i4tpBMVrN2t
	iaWIPZar27ZkcG6nf/Nd5wFKIsVZvJDM0n+7NRi6vS/NNgsNcC8Vve5SAeoS6Eg==
X-Google-Smtp-Source: AGHT+IEfh/SMGuLUWkc6Ab/9bjjaSuLDe/65R4Y4wopRyA/GF2Iy2AoNZrJVe3U7ngn+sLkvgPq1hePaqgXHn31IfDw=
X-Received: by 2002:a05:6902:1615:b0:e57:3d4f:47e4 with SMTP id
 3f1490d57ef6-e57b132440amr15347718276.37.1737518917761; Tue, 21 Jan 2025
 20:08:37 -0800 (PST)
MIME-Version: 1.0
References: <173746679091.18916.10611555075223780663@mm2.emwd.com>
In-Reply-To: <173746679091.18916.10611555075223780663@mm2.emwd.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 21 Jan 2025 22:08:21 -0600
X-Gm-Features: AbW1kvaNxBrfsSNcd675ZudI3ZkmNCTvIqltiX0h72V1Y5rHC04GMVLzGTnOYcY
Message-ID: <CAFche=iFxnYTmVTtyXU_gNpsk7aqaAJSrHc1_PD-_PY0FoZqCA@mail.gmail.com>
To: "Pallotta, Jeremy M (US)" <jeremy.pallotta@baesystems.us>
Message-ID-Hash: IKZFGCLBDKFM4FRXXQ2DSIUHJUGP6OXV
X-Message-ID-Hash: IKZFGCLBDKFM4FRXXQ2DSIUHJUGP6OXV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 benchmark_rate underrun at 50MSps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IKZFGCLBDKFM4FRXXQ2DSIUHJUGP6OXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5275076348096292778=="

--===============5275076348096292778==
Content-Type: multipart/alternative; boundary="000000000000e258e0062c43a575"

--000000000000e258e0062c43a575
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeremy,

This is a good reference of things you can try:
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Also, I wonder if RT_RUNTIME_SHARE could be causing problems? You can find
some info here on how to enable it:
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Underruns_Every_Seco=
nd_with_DPDK_.2B_Ubuntu

Another thing that comes to mind is enabling pause frames on the X410 as
described here:
https://files.ettus.com/manual/page_transport.html#transport_udp_linux

Wade

On Tue, Jan 21, 2025 at 7:40=E2=80=AFAM Pallotta, Jeremy M (US) <
jeremy.pallotta@baesystems.us> wrote:

> I am running into underflow issues when running the benchmark_rate test o=
n
> a x410.  The command I am running is the following:
>
>
>
> ./benchmark_rate
> --args=3D"addr=3D192.168.20.2,type=3Dx4xx,send_frame_size=3D8000,recv_fra=
me_size=3D8000"
> --tx_rate=3D50e6 --tx_channels=3D0 --tx_delay=3D1 --duration=3D60 --prior=
ity=3Dhigh
> --ref=3Dinternal
>
>
>
> I have a 100Gbit interface connected to the x410 using the below ethernet
> card.
>
>
>
> ca:00.0 Ethernet controller: Mellanox Technologies MT2910 Family
> [ConnectX-7]
>
>
>
> I'm running on Ubuntu 22.04.5 LTS with kernel 6.8.0-40-generic.
>
>
>
> I've confirmed that the priority=3Dhigh setting is working.  "top" shows =
the
> priorities of all the threads have been elevated.
>
>
>
> I've also updated a number of network settings.
>
>
>
> sysctl -w net.core.wmem_max=3D250000000
> sysctl -w net.core.rmem_max=3D250000000
> sysctl -w net.core.wmem_default=3D250000000
> sysctl -w net.core.rmem_default=3D250000000
> ethtool -G ens8f0np0 tx 8192 rx 8192
>
>
>
> The application outputs the following:
>
>
>
> [INFO] [UHD] linux; GNU C++ version 8.4.0; Boost_108300;
> UHD_4.6.0.HEAD-0-g50fa3baa
> [00:00:00.000277] Creating the usrp device with:
> addr=3D192.168.20.2,type=3Dx4xx,send_frame_size=3D8000,recv_frame_size=3D=
8000...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3289B1C,name=
=3Dni-x4xx-3289
> B1C,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2,send_frame_size=3D8=
000,recv_frame_size=3D8000
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DUC_200,mgmt_addr=3D192.168.20.2,name=3Dni-x4xx-3289B1C,product=3D=
x410,recv_frame_s
> ize=3D8000,send_frame_size=3D8000,clock_source=3Dinternal,time_source=3Di=
nternal,initializing=3DTrue'.
> Using Device: Single USRP:
> Device: X400-Series Device
> Mboard 0: x410
> RX Channel: 0
> RX DSP: 0
> RX Dboard: A
> RX Subdev: 0
> RX Channel: 1
> RX DSP: 1
> RX Dboard: A
> RX Subdev: 1
> RX Channel: 2
> RX DSP: 2
> RX Dboard: B
> RX Subdev: 0
> RX Channel: 3
> RX DSP: 3
> RX Dboard: B
> RX Subdev: 1
> TX Channel: 0
> TX DSP: 0
> TX Dboard: A
> TX Subdev: 0
> TX Channel: 1
> TX DSP: 1
> TX Dboard: A
> TX Subdev: 1
> TX Channel: 2
> TX DSP: 2
> TX Dboard: B
> TX Subdev: 0
> TX Channel: 3
> TX DSP: 3
> TX Dboard: B
> TX Subdev: 1
>
> [00:00:02.516914784] Setting device timestamp to 0...
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate i=
s
> 49.152 MHz
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate i=
s
> 49.152 MHz
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate i=
s
> 49.152 MHz
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate i=
s
> 49.152 MHz
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Setting TX spp to 1992
> [00:00:02.522008533] Testing transmit rate 49.152000 Msps on 1 channels
> UUUUUUUUUUUUUUUUUUUUUUU[00:01:03.524365256] Benchmark complete.
>
>
> Benchmark rate summary:
> Num received samples: 0
> Num dropped samples: 0
> Num overruns detected: 0
> Num transmitted samples: 2948209800
> Num sequence errors (Tx): 0
> Num sequence errors (Rx): 0
> Num underruns detected: 23
> Num late commands: 0
> Num timeouts (Tx): 0
> Num timeouts (Rx): 0
>
>
> Done!
>
>
>
> Does anyone have any other suggestions for what could be tried to avoid
> the underruns?  With a 100Gbit/s NIC, I should have plenty of network
> throughput.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e258e0062c43a575
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeremy,</div><div><br></div><div>This is a good re=
ference of things you can try:<br><a href=3D"https://kb.ettus.com/USRP_Host=
_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_Perform=
ance_Tuning_Tips_and_Tricks</a><br><br></div>Also, I wonder if=C2=A0<code>R=
T_RUNTIME_SHARE</code> could be causing problems? You can find some info he=
re on how to enable it:<br><div><a href=3D"https://kb.ettus.com/Getting_Sta=
rted_with_DPDK_and_UHD#Underruns_Every_Second_with_DPDK_.2B_Ubuntu">https:/=
/kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Underruns_Every_Second_with=
_DPDK_.2B_Ubuntu</a></div><div><br></div><div>Another thing that comes to m=
ind is enabling pause frames on the X410  as described here:</div><div><a h=
ref=3D"https://files.ettus.com/manual/page_transport.html#transport_udp_lin=
ux">https://files.ettus.com/manual/page_transport.html#transport_udp_linux<=
/a></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ja=
n 21, 2025 at 7:40=E2=80=AFAM Pallotta, Jeremy M (US) &lt;<a href=3D"mailto=
:jeremy.pallotta@baesystems.us">jeremy.pallotta@baesystems.us</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
msg-4399934966938417404">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-4399934966938417404WordSection1">
<p style=3D"margin:0in;background:white"><span style=3D"font-size:12pt;font=
-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)">I am running =
into underflow issues when running the benchmark_rate test on a x410.=C2=A0=
 The command I am running is the following:<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">./benchmark_rate --args=3D&quot;addr=3D192.168.20.2,type=3Dx4xx=
,send_frame_size=3D8000,recv_frame_size=3D8000&quot; --tx_rate=3D50e6 --tx_=
channels=3D0 --tx_delay=3D1 --duration=3D60 --priority=3Dhigh --ref=3Dinter=
nal</span><span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,s=
ans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I have a 100Gbit interface connected to the x410 using=
 the below ethernet card.<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">ca:00.0 Ethernet controller: Mellanox Technologies MT2910 Famil=
y [ConnectX-7]</span><span style=3D"font-size:12pt;font-family:&quot;Helvet=
ica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;m running on Ubuntu=C2=A022.04.5 LTS with kernel=
=C2=A06.8.0-40-generic.<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;ve confirmed that the priority=3Dhigh setting is=
 working.=C2=A0 &quot;top&quot; shows the priorities of all the threads hav=
e been elevated.<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;ve also updated a number of network settings.<u>=
</u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">sysctl -w net.core.wmem_max=3D250000000</span><span style=3D"fo=
nt-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,5=
1)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">sysctl -w net.core.rmem_max=3D250000000</span><span styl=
e=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(=
51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">sysctl -w net.core.wmem_default=3D250000000</span><span =
style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:=
rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">sysctl -w net.core.rmem_default=3D250000000</span><span =
style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:=
rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">ethtool -G ens8f0np0 tx 8192 rx 8192</span><span style=
=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(5=
1,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">The application outputs the following:<u></u><u></u></=
span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[INFO] [UHD] linux; GNU C++ version 8.4.0; Boost_108300; UHD_4.=
6.0.HEAD-0-g50fa3baa</span><span style=3D"font-size:12pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[00:00:00.000277] Creating the usrp device with: addr=3D=
192.168.20.2,type=3Dx4xx,send_frame_size=3D8000,recv_frame_size=3D8000...</=
span><span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-s=
erif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[INFO] [MPMD] Initializing 1 device(s) in parallel with =
args: mgmt_addr=3D192.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3289B1C,=
name=3Dni-x4xx-3289 B1C,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2,s=
end_frame_size=3D8000,recv_frame_size=3D8000</span><span style=3D"font-size=
:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br=
>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[INFO] [MPM.PeriphManager] init() called with device arg=
s `fpga=3DUC_200,mgmt_addr=3D192.168.20.2,name=3Dni-x4xx-3289B1C,product=3D=
x410,recv_frame_s ize=3D8000,send_frame_size=3D8000,clock_source=3Dinternal=
,time_source=3Dinternal,initializing=3DTrue&#39;.</span><span style=3D"font=
-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)=
"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Using Device: Single USRP:</span><span style=3D"font-siz=
e:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><b=
r>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Device: X400-Series Device</span><span style=3D"font-siz=
e:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><b=
r>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Mboard 0: x410</span><span style=3D"font-size:12pt;font-=
family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Channel: 0</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX DSP: 0</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Dboard: A</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Subdev: 0</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Channel: 1</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX DSP: 1</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Dboard: A</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Subdev: 1</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Channel: 2</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX DSP: 2</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Dboard: B</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Subdev: 0</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Channel: 3</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX DSP: 3</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Dboard: B</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">RX Subdev: 1</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Channel: 0</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX DSP: 0</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Dboard: A</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Subdev: 0</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Channel: 1</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX DSP: 1</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Dboard: A</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Subdev: 1</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Channel: 2</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX DSP: 2</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Dboard: B</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Subdev: 0</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Channel: 3</span><span style=3D"font-size:12pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX DSP: 3</span><span style=3D"font-size:12pt;font-famil=
y:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Dboard: B</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">TX Subdev: 1</span><span style=3D"font-size:12pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></=
span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[00:00:02.516914784] Setting device timestamp to 0...</span><sp=
an style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;col=
or:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[WARNING] [0/DUC#0] The requested interpolation is odd; =
the user should expect passband CIC rolloff.</span><span style=3D"font-size=
:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br=
>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Select an even interpolation to ensure that a halfband f=
ilter is enabled.</span><span style=3D"font-size:12pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Act=
ual rate is 49.152 MHz</span><span style=3D"font-size:12pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[WARNING] [0/DUC#0] The requested interpolation is odd; =
the user should expect passband CIC rolloff.</span><span style=3D"font-size=
:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br=
>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Select an even interpolation to ensure that a halfband f=
ilter is enabled.</span><span style=3D"font-size:12pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Act=
ual rate is 49.152 MHz</span><span style=3D"font-size:12pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[WARNING] [0/DUC#1] The requested interpolation is odd; =
the user should expect passband CIC rolloff.</span><span style=3D"font-size=
:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br=
>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Select an even interpolation to ensure that a halfband f=
ilter is enabled.</span><span style=3D"font-size:12pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Act=
ual rate is 49.152 MHz</span><span style=3D"font-size:12pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[WARNING] [0/DUC#1] The requested interpolation is odd; =
the user should expect passband CIC rolloff.</span><span style=3D"font-size=
:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br=
>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Select an even interpolation to ensure that a halfband f=
ilter is enabled.</span><span style=3D"font-size:12pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Act=
ual rate is 49.152 MHz</span><span style=3D"font-size:12pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[WARNING] [0/Radio#0] Attempting to set tick rate to 0. =
Skipping.</span><span style=3D"font-size:12pt;font-family:&quot;Helvetica&q=
uot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Setting TX spp to 1992</span><span style=3D"font-size:12=
pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">[00:00:02.522008533] Testing transmit rate 49.152000 Msp=
s on 1 channels</span><span style=3D"font-size:12pt;font-family:&quot;Helve=
tica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">UUUUUUUUUUUUUUUUUUUUUUU[00:01:03.524365256] Benchmark co=
mplete.</span><span style=3D"font-size:12pt;font-family:&quot;Helvetica&quo=
t;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Benchmark rate summary:</span><span style=3D"font-size:1=
2pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num received samples: 0</span><span style=3D"font-size:1=
2pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num dropped samples: 0</span><span style=3D"font-size:12=
pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num overruns detected: 0</span><span style=3D"font-size:=
12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num transmitted samples: 2948209800</span><span style=3D=
"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,5=
1,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num sequence errors (Tx): 0</span><span style=3D"font-si=
ze:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><=
br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num sequence errors (Rx): 0</span><span style=3D"font-si=
ze:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><=
br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num underruns detected: 23</span><span style=3D"font-siz=
e:12pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><b=
r>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num late commands: 0</span><span style=3D"font-size:12pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num timeouts (Tx): 0</span><span style=3D"font-size:12pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Num timeouts (Rx): 0</span><span style=3D"font-size:12pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><=
u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Done!</span><span style=3D"font-size:12pt;font-family:&q=
uot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><u></u><u></u></span></=
p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0<u></u><u></u></span></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">Does anyone have any other suggestions for what could =
be tried to avoid the underruns?=C2=A0 With a 100Gbit/s NIC, I should have =
plenty of network throughput.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000e258e0062c43a575--

--===============5275076348096292778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5275076348096292778==--
