Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15595A1A6F1
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 16:23:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC443385BCE
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 10:23:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737645786; bh=7oP3zxu1u5lYx6zMff1VIVD2mfCrQ1vfpramQ1t8uts=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JXc3IdToXSQgg2SVmMWGkOk9LGquihGKBfZCGD4hdm/ukmNVFNPVblGlPXrP0O2N5
	 awSOQyvCpnu3RPmkT5cEnlrQ5EFZmFn30NZgHZskByb+Huzu6cH6VZGzcGh8sClgLz
	 s4vawJnKIbaEPYI851YmpVOCuhhrrPjFiQ5Y0g9Pc8gqcq4gNTIItfDjHPK33A7SF3
	 /k6se4FvYkS7EBrYryfmFa2+i02mau3vlOOW4LQvhIoco1qHACNm157cO1+RYqJfOO
	 HcleaGpGH+WvpYW6cktTI09c+wzG84x0fb3K/Gw6tjSgLXBYGRXBcVCTGf8Sfpe2p3
	 YOkumnf29q4rA==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 849613859BE
	for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 10:22:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="hlBCJ1U5";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e53a91756e5so1849344276.1
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 07:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737645745; x=1738250545; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YSC4+ilQZVoIgFfaOvYtEZ2LxlvGDYZTKTXSceLhYu8=;
        b=hlBCJ1U5I5sXkUqcsCCP7kPxxLIqFQ2lMrTC2YjQaDr6kXRHg9vJv/gE7yZGtTun3J
         m3d9pZJUHCKYgXBufC3BcWDogIe+QmNs67OpM5W5JIhrbzVLwomx0HkpQvO/opMPgqU1
         AAqMm9npxQYPU+zMt4u2607qfGeVIEMQINMJNtJD3bj5Uz3GQiZRzkGbXbq5HleSMnfg
         vrkJIAVAediOSnhNXEEJfvS/rlqqpY6ADs1oTzjvm3eKpTD6X4MuwKLO7I/MSbOR5qwp
         K5CjeyaH2ZwZ3Rum5WoBxkl+rXG+bfBm/MY9MLMph/xSFvEWOOID+wohmYhZs4BCxkLX
         F4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737645745; x=1738250545;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSC4+ilQZVoIgFfaOvYtEZ2LxlvGDYZTKTXSceLhYu8=;
        b=lhLf0kQ6pA223whVXChHFCxdD419J+n3S6T7ENajdm8EyLrjx9XdXYWeMR9YehvseN
         szlhrgZWbipecnZKCGJUioy/jY0HGUXjDS1ZS9o8Rtc9X8OFP0FhFKdid+++R7+tl8AS
         dzXPItTq4Qva5MFNjdwn/3QUlVvQo05DvNVf+nRWaYhSPQaqDSpaUbYx/eZbmoMfVXIr
         snCNDceZ/kLSA1fbT5gg/rgYvNvwU3+hodjzNBnUD3OG4VZ26yPBwVRuoFD9GMZZGNxG
         t079beCbrjV7JzTmPLw7hyqmEqfns00xXeJzeIqGlRTfuemCPEn7pXuTDMFR8lcHDJz3
         cdtg==
X-Gm-Message-State: AOJu0YzDtaVIpuKQCMShQpIMWsRtp4pmRW2NsaGstxMk+IbXybJbuGU+
	HnvuRKOSXYfJrSmB+1BKx9XKtVkliyV9lIVmbb4qLzkSOKfwU98fOcNI7/S5eOe+biTvoJ5if7o
	d8HviiCaQ5e1b9ad1aBcpnx8d/RjWiqsFbLueo9cF
X-Gm-Gg: ASbGncujzaXEQexpAecA15Z0EQxGFNiQCZiPXilgMCyaT//UU1NLP7OtpUpXFfbdKkA
	plMGREVlkMAhrTn9i+n7RNhkYmGdVwwLMxgv0tonREs+7GTiKTYRZP63ZYLCJdw==
X-Google-Smtp-Source: AGHT+IFDHWlsdWJmHEN+HFJTX6CTRs+78j74w4fwU00egQcILyvxxIm0Eht0LCSIGS9vOq5U/vOubYNOR3OCJe/B3U4=
X-Received: by 2002:a05:6902:12c6:b0:e57:87ef:964a with SMTP id
 3f1490d57ef6-e57b107a07bmr21368232276.26.1737645744823; Thu, 23 Jan 2025
 07:22:24 -0800 (PST)
MIME-Version: 1.0
References: <CAFche=iFxnYTmVTtyXU_gNpsk7aqaAJSrHc1_PD-_PY0FoZqCA@mail.gmail.com>
 <67910110.050a0220.1def23.7716SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <67910110.050a0220.1def23.7716SMTPIN_ADDED_MISSING@mx.google.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 23 Jan 2025 09:22:08 -0600
X-Gm-Features: AbW1kvZJYN6jdEHU5odv6_t4hOQYfynLO-jV3wWyv8L0Q98uRHZ7DD356HRpf-Q
Message-ID: <CAFche=hkJSVsMp+nj3hp_QKPNS+=mEw6O-2oPP=FgPB=xFK5QA@mail.gmail.com>
To: "Pallotta, Jeremy M (US)" <jeremy.pallotta@baesystems.us>
Message-ID-Hash: GMAO43VC6T4OJ3ALXHV5GD6LFE5F2VAP
X-Message-ID-Hash: GMAO43VC6T4OJ3ALXHV5GD6LFE5F2VAP
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 benchmark_rate underrun at 50MSps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GMAO43VC6T4OJ3ALXHV5GD6LFE5F2VAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2639515620428827466=="

--===============2639515620428827466==
Content-Type: multipart/alternative; boundary="0000000000005dc1f8062c612d5d"

--0000000000005dc1f8062c612d5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not aware of any known issues specific to CentOS. A consistent underrun
around 1 Hz sounds a lot like the RT_RUNTIME_SHARE issue. Or something else
on the system that's happening periodically. Many of the optimizations
mentioned should apply to CentOS as well, so it's probably worth going
through them.

Wade

On Wed, Jan 22, 2025 at 8:30=E2=80=AFAM Pallotta, Jeremy M (US) <
jeremy.pallotta@baesystems.us> wrote:

> Wade,
>
>
>
> Thank you for the links.  I was able to resolve the issue on my
> Ubuntu/X410 system by setting the CPU governor to =E2=80=9Cperformance=E2=
=80=9D mode.
>
>
>
> for ((i=3D0;i<$(nproc --all);i++)); do sudo cpufreq-set -c $i -r -g
> performance; done
>
>
>
> I have a similar =E2=80=9Cunderrun=E2=80=9D issue on a CentOS 7.6.1810 (k=
ernel 3.10.0-957)
> connected to a USRP X310 using UHD 4.6.0.  The network card is an Intel
> X710 with 10Gbit ethernet connection to USRP.
>
>
>
> On this system, I=E2=80=99ve disabled hyperthreading, cpu scaling, and
> virtualization via the BIOS.  I=E2=80=99ve confirmed that I can run the b=
enchmark
> test with elevated thread priorities and nice.
>
>
>
> I=E2=80=99ve configured the following network settings.
>
> sysctl -w net.core.wmem_max=3D33554432
> sysctl -w net.core.rmem_max=3D33554432
> sysctl -w net.core.wmem_default=3D33554432
>
> sysctl -w net.core.rmem_default=3D33554432
> ethtool -G ens8f0np0 tx 4096 rx 4096
>
> ethtool -A ens8f0np0 tx on
>
>
>
> When I run the benchmark_rate test for 1 channel at 50MSps with
> priority=3Dhigh, I get a consistent underrun at about 1Hz.  This is simil=
ar
> to the issue described in the 2nd link you provided.
>
>
>
> Finally, I=E2=80=99ve confirmed that I can run the benchmark_rate test
> successfully (no underruns) with UHD version 3.14.1.
>
>
>
> Is there an issue with a newer UHD (4.6.0) and an older OS (CentOS 7.6)?
> Are there any optimizations that are perhaps different on the older
> CentOS-based system?
>
>
>
> Jeremy
>
>
>
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Tuesday, January 21, 2025 11:08 PM
> *To:* Pallotta, Jeremy M (US) <jeremy.pallotta@baesystems.us>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] X410 benchmark_rate underrun at 50MSps
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
> Hi Jeremy,
>
>
>
> This is a good reference of things you can try:
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
> Also, I wonder if RT_RUNTIME_SHARE could be causing problems? You can
> find some info here on how to enable it:
>
>
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Underruns_Every_Se=
cond_with_DPDK_.2B_Ubuntu
>
>
>
> Another thing that comes to mind is enabling pause frames on the X410 as
> described here:
>
> https://files.ettus.com/manual/page_transport.html#transport_udp_linux
>
>
>
> Wade
>
>
>
> On Tue, Jan 21, 2025 at 7:40=E2=80=AFAM Pallotta, Jeremy M (US) <
> jeremy.pallotta@baesystems.us> wrote:
>
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
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000005dc1f8062c612d5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m not aware of any known issues specific to Cen=
tOS. A consistent underrun around 1 Hz sounds a lot like the RT_RUNTIME_SHA=
RE issue. Or something else on the system that&#39;s happening periodically=
. Many of the optimizations mentioned should apply to CentOS as well, so it=
&#39;s probably worth going through them.</div><div><br></div><div>Wade<br>=
</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2025 at 8:30=E2=80=AFAM Pallo=
tta, Jeremy M (US) &lt;<a href=3D"mailto:jeremy.pallotta@baesystems.us">jer=
emy.pallotta@baesystems.us</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div class=3D"msg6584109036189698473">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_6584109036189698473WordSection1">
<p class=3D"MsoNormal">Wade,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you for the links.=C2=A0 I was able to resolve=
 the issue on my Ubuntu/X410 system by setting the CPU governor to =E2=80=
=9Cperformance=E2=80=9D mode.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">for ((i=3D0;i&lt;$(nproc --all);i++)); do sudo cpufreq-set -=
c $i -r -g performance; done<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have a similar =E2=80=9Cunderrun=E2=80=9D issue on=
 a CentOS 7.6.1810 (kernel 3.10.0-957) connected to a USRP X310 using UHD 4=
.6.0.=C2=A0 The network card is an Intel X710 with 10Gbit ethernet connecti=
on to USRP.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">On this system, I=E2=80=99ve disabled hyperthreading=
, cpu scaling, and virtualization via the BIOS.=C2=A0 I=E2=80=99ve confirme=
d that I can run the benchmark test with elevated thread priorities and nic=
e.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve configured the following network settin=
gs.<u></u><u></u></p>
<p style=3D"margin:0in;background:white"><span style=3D"font-size:10pt;font=
-family:&quot;Courier New&quot;;color:rgb(51,51,51)">sysctl -w net.core.wme=
m_max=3D33554432</span><span style=3D"font-size:10pt;font-family:&quot;Helv=
etica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">sysctl -w net.core.rmem_max=3D33554432</span><span style=
=3D"font-size:10pt;font-family:&quot;Helvetica&quot;,sans-serif;color:rgb(5=
1,51,51)"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">sysctl -w net.core.wmem_default=3D33554432<u></u><u></u>=
</span></p>
<p style=3D"margin:0in;background:white"><span style=3D"font-size:10pt;font=
-family:&quot;Courier New&quot;;color:rgb(51,51,51)">sysctl -w net.core.rme=
m_default=3D33554432</span><span style=3D"font-size:10pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">ethtool -G ens8f0np0 tx 4096 rx 4096<u></u><u></u></span=
></p>
<p style=3D"margin:0in;background:white"><span style=3D"font-size:10pt;font=
-family:&quot;Courier New&quot;;color:rgb(51,51,51)">ethtool -A ens8f0np0 t=
x on<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When I run the benchmark_rate test for 1 channel at =
50MSps with priority=3Dhigh, I get a consistent underrun at about 1Hz.=C2=
=A0 This is similar to the issue described in the 2<sup>nd</sup> link you p=
rovided.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Finally, I=E2=80=99ve confirmed that I can run the b=
enchmark_rate test successfully (no underruns) with UHD version 3.14.1.<u><=
/u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there an issue with a newer UHD (4.6.0) and an ol=
der OS (CentOS 7.6)?=C2=A0 Are there any optimizations that are perhaps dif=
ferent on the older CentOS-based system?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jeremy<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Wade Fife &lt;<a href=3D"mailto:wade.fi=
fe@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; <br>
<b>Sent:</b> Tuesday, January 21, 2025 11:08 PM<br>
<b>To:</b> Pallotta, Jeremy M (US) &lt;<a href=3D"mailto:jeremy.pallotta@ba=
esystems.us" target=3D"_blank">jeremy.pallotta@baesystems.us</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] X410 benchmark_rate underrun at 50MSps<u><=
/u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<table border=3D"1" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse;border:medium">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><u></u><u></u=
></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"1440" valign=3D"top" style=3D"width:15in;border-width:medium 1=
pt 1pt;border-style:none solid solid;border-color:currentcolor red red;padd=
ing:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-right:0in;margin-bo=
ttom:4pt;margin-left:0in;text-align:center;background:white">
<strong><span style=3D"font-size:10pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:black">This email has been sent from an account outside of the =
BAE Systems network.</span></strong><u></u><u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Jeremy,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">This is a good referenc=
e of things you can try:<br>
<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips=
_and_Tricks</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Also, I wonder if=C2=A0<code><span style=3D"font-siz=
e:10pt">RT_RUNTIME_SHARE</span></code> could be causing problems? You can f=
ind some info here on how to enable it:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_DPDK_and_UHD#Underruns_Every_Second_with_DPDK_.2B_Ubuntu" target=3D"_blank=
">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Underruns_Every_Se=
cond_with_DPDK_.2B_Ubuntu</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Another thing that comes to mind is enabling pause f=
rames on the X410 as described here:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://files.ettus.com/manual/page_trans=
port.html#transport_udp_linux" target=3D"_blank">https://files.ettus.com/ma=
nual/page_transport.html#transport_udp_linux</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jan 21, 2025 at 7:40=E2=80=AFAM Pallotta, Je=
remy M (US) &lt;<a href=3D"mailto:jeremy.pallotta@baesystems.us" target=3D"=
_blank">jeremy.pallotta@baesystems.us</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p style=3D"margin:0in;background:white"><span style=3D"font-size:12pt;font=
-family:&quot;Helvetica&quot;,sans-serif;color:rgb(51,51,51)">I am running =
into underflow issues when running the benchmark_rate test on a x410.=C2=A0=
 The command I am running is the following:</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">./benchmark_rate --args=3D&quot;addr=3D192.168.20.2,type=3Dx4xx=
,send_frame_size=3D8000,recv_frame_size=3D8000&quot; --tx_rate=3D50e6 --tx_=
channels=3D0 --tx_delay=3D1 --duration=3D60 --priority=3Dhigh --ref=3Dinter=
nal</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I have a 100Gbit interface connected to the x410 using=
 the below ethernet card.</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;color:rgb=
(51,51,51)">ca:00.0 Ethernet controller: Mellanox Technologies MT2910 Famil=
y [ConnectX-7]</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;m running on Ubuntu=C2=A022.04.5 LTS with kernel=
=C2=A06.8.0-40-generic.</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;ve confirmed that the priority=3Dhigh setting is=
 working.=C2=A0 &quot;top&quot; shows the priorities of all the threads hav=
e been elevated.</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">I&#39;ve also updated a number of network settings.</s=
pan><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
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
lor:rgb(51,51,51)">ethtool -G ens8f0np0 tx 8192 rx 8192</span><u></u><u></u=
></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">The application outputs the following:</span><u></u><u=
></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
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
lor:rgb(51,51,51)">TX Subdev: 1</span><u></u><u></u></p>
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
ilter is enabled.</span><u></u><u></u></p>
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
ilter is enabled.</span><u></u><u></u></p>
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
ilter is enabled.</span><u></u><u></u></p>
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
ilter is enabled.</span><u></u><u></u></p>
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
mplete.</span><u></u><u></u></p>
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
lor:rgb(51,51,51)">Num timeouts (Rx): 0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)"><br>
</span><span style=3D"font-size:12pt;font-family:&quot;Courier New&quot;;co=
lor:rgb(51,51,51)">Done!</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">=C2=A0</span><u></u><u></u></p>
<p style=3D"margin:0in;background:white;box-sizing:border-box;font-variant-=
ligatures:normal;font-variant-caps:normal;text-decoration-style:initial;tex=
t-decoration-color:initial;word-spacing:0px">
<span style=3D"font-size:12pt;font-family:&quot;Helvetica&quot;,sans-serif;=
color:rgb(51,51,51)">Does anyone have any other suggestions for what could =
be tried to avoid the underruns?=C2=A0 With a 100Gbit/s NIC, I should have =
plenty of network throughput.</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000005dc1f8062c612d5d--

--===============2639515620428827466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2639515620428827466==--
