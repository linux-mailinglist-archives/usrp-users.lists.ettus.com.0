Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D6B3B07EA
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 16:51:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C10F13843C9
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 10:51:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nDoW5X4d";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A6E23383B81
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 10:50:11 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id u2so2918178qvp.13
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 07:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=zIVVUFfqTFWpqL/AvXvZ2U5JgNjc5J3UJqcEquaJ1eQ=;
        b=nDoW5X4dXTrbWFoGhCdr6dRvf1As51AIxLr23rayyNBrL5IWh1nlNhdwJZeElnlkJt
         1AQUpI/ZcGFUMEFZgYrrxF/4dRTpf2sh4kauDdh9HB/Wd/r2u8oCCU3ddfLicdz7xkVg
         OY0akWTMk+DWErWPu9nXIckmpKfWq9w5ZzAnGrVdKtbE49VlVcPd0p30F/0+ZIwHBJhd
         JKZIsImXh+uImwQi7sSCO5J5/sd8jPaf22rnooEhGhB71B4Fdqj0HQZ+wh2nwLR3PWaM
         xevl7i16i/T4N7IGosK3PkuDsbi7dTH7DLGz7OYb6sMushUr3JeHd/0k/Ra7ezvpReSz
         kgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=zIVVUFfqTFWpqL/AvXvZ2U5JgNjc5J3UJqcEquaJ1eQ=;
        b=fzQfC2rzoVgOf4J4SXhxbMbzGYP0P+K2NpNDS3nT//Hc/fZIsYfNQE5GWdpvS1nyJt
         dH5Ew7rehEm1S02gsXFNRYNiu2VTJIo548HqX0o1huHjxw3evGP2NjnUMlOVMNBoCw09
         pmHs4UxsG6eCa+uAi0Bhv9426bbF+z0t732l+1a6EC2ZnGxryOtJlEUS+WJvsNsS/W1e
         Rqnyk8NtDCxiXlFzvd257z0JJcApHWfWHEwJp7dwBhFXvsQwXofX27aPh+3tbwfUCReQ
         AYPw1U66u2uh14yOxuk/DmpeoXUOPQcJeRym0JdKX5clCjm3CmfccEJ3vUWke4aVm0zH
         kZdQ==
X-Gm-Message-State: AOAM530N7cffpxbkCyAmyAXSNUHsaip1kb/owMP65TexkCLLFR953q+x
	uGMPsld95vAPFKxDREsbUGEvthBIgvxGHQ==
X-Google-Smtp-Source: ABdhPJy7xW3LkI4K6Li2mVZ8Yp2us1jDpYitQQAVajDoFaSm8pIkdlagb4PugN7oWDWCdrAp9I8pGw==
X-Received: by 2002:a05:6214:186f:: with SMTP id eh15mr16125390qvb.29.1624373410876;
        Tue, 22 Jun 2021 07:50:10 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id g19sm1755639qtg.36.2021.06.22.07.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 07:50:10 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Jun 2021 10:50:09 -0400
Message-Id: <4691C65A-AC95-42C7-B876-14B5B75661B2@gmail.com>
References: <cde9266a2c524eecb4a3bb5c1af2fe25@erdc.dren.mil>
In-Reply-To: <cde9266a2c524eecb4a3bb5c1af2fe25@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2HSHZ4D5RXHFMR5UMJY7KN6VBAONHJDX
X-Message-ID-Hash: 2HSHZ4D5RXHFMR5UMJY7KN6VBAONHJDX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: intermittent TX error using DPDK and x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HSHZ4D5RXHFMR5UMJY7KN6VBAONHJDX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5162526694140437152=="


--===============5162526694140437152==
Content-Type: multipart/alternative; boundary=Apple-Mail-69107FD1-0C72-49B9-988D-92AAC45F7B04
Content-Transfer-Encoding: 7bit


--Apple-Mail-69107FD1-0C72-49B9-988D-92AAC45F7B04
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The devices have distinct IP addresses on all their connected ports presumab=
ly?

Sent from my iPhone

> On Jun 22, 2021, at 10:38 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via U=
SRP-users <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> Finally got DPDK running on my ubuntu 20.04 machine. I have two x310's ove=
r a 10Gbe each going to their own port on a intel x520. If I have just a sin=
gle x310 hooked up, the rx_samples_to_file and tx_samples_from_file both wor=
k flawlessly at 200 Msps. If they are both hooked up, I get a few errors whe=
n transmitting that I am not able to discern are going to cause me trouble o=
r not. This is a typical output upon calling tx_from_samples. The [ERROR] [U=
HD] and [ERROR] [USRP2] don't seem to be a major issue, since the PC is find=
ing the x310 without a problem, but I don't know what the [ERROR] [CTRLEP] a=
t the end is trying to tell me. Any thoughts?
> =20
> root@fmcw-sounder:/usr/local/lib/uhd/examples# ./tx_samples_from_file --fi=
le test_samples.dat --gain 0 --freq 2400000000 --lo-offset 100000000 --rate 2=
00000000 --args "addr=3D192.168.50.2,use_dpdk=3D1"
> =20
> Creating the usrp device with: addr=3D192.168.50.2,use_dpdk=3D1...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-=
g90ce6062
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is consider=
ed deprecated, consider moving your config file to /root/.config instead.
> EAL: Detected 12 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:01:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL:   using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: PCI device 0000:01:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL: Ignore mapping IO port bar(2)
> [ERROR] [UHD] Device discovery error: send_to: Network is unreachable
> [ERROR] [USRP2] USRP2 Network discovery error send_to: Network is unreacha=
ble
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: Unknown (0xffff) - 0
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: Unknown (0xffff) - 0
> =20
> Setting TX Rate: 200.000000 Msps...
> Actual TX Rate: 200.000000 Msps...
> =20
> Setting TX Freq: 2400.000000 MHz...
> Setting TX LO Offset: 100.000000 MHz...
> Actual TX Freq: 2400.000000 MHz...
> =20
> Setting TX Gain: 0.000000 dB...
> Actual TX Gain: 0.000000 dB...
> =20
> Checking TX: TXLO: locked ...
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> =20
> Done!
> =20
> [ERROR] [CTRLEP] Caught exception during async message handling: map::at
> =20
> root@fmcw-sounder:/usr/local/lib/uhd/examples#
> =20
> =20
> Thanks!
> Casey
> <tx_output.txt>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-69107FD1-0C72-49B9-988D-92AAC45F7B04
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The devices have distinct IP addresses on a=
ll their connected ports presumably?<br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 22, 2021, at=
 10:38 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users &lt;usrp-u=
sers@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Finally got DPDK running on my ubuntu 20.04 machin=
e. I have two x310's over a 10Gbe each going to their own port on a intel x5=
20. If I have just a single x310 hooked up, the rx_samples_to_file and tx_sa=
mples_from_file both work flawlessly
 at 200 Msps. If they are both hooked up, I get a few errors when transmitti=
ng that I am not able to discern are going to cause me trouble or not. This i=
s a typical output upon calling tx_from_samples. The [ERROR] [UHD] and [ERRO=
R] [USRP2] don't seem to be
 a major issue, since the PC is finding the x310 without a problem, but I do=
n't know what the [ERROR] [CTRLEP] at the end is trying to tell me. Any thou=
ghts?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples# ./t=
x_samples_from_file --file test_samples.dat --gain 0 --freq 2400000000 --lo-=
offset 100000000 --rate 200000000 --args "addr=3D192.168.50.2,use_dpdk=3D1"<=
o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Creating the usrp device with: addr=3D192.168.50.2=
,use_dpdk=3D1...<o:p></o:p></p>
<p class=3D"MsoPlainText">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_1=
07100; UHD_4.0.0.HEAD-0-g90ce6062<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [PREFS] Loaded config from /root/.uhd. T=
his location is considered deprecated, consider moving your config file to /=
root/.config instead.<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 12 lcore(s)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 1 NUMA nodes<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Multi-process socket /var/run/dpdk/rte/mp_soc=
ket<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: No free hugepages reported in hugepages-10485=
76kB<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Probing VFIO support...<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: VFIO support initialized<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.0 on NUMA socket -1<o:p=
></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; using IOMMU type 1 (Type 1)<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.1 on NUMA socket -1<o:p=
></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe=
<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [UHD] Device discovery error: send_to: N=
etwork is unreachable<o:p></o:p></b></p>
<p class=3D"MsoPlainText"><b>[ERROR] [USRP2] USRP2 Network discovery error s=
end_to: Network is unreachable<o:p></o:p></b></p>
<p class=3D"MsoPlainText">[INFO] [X300] X300 initialization sequence...<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Maximum frame size: 8000 bytes.<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Radio 1x clock: 200 MHz<o:p></o:p></=
p>
<p class=3D"MsoPlainText">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Device: X-Series Device<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Mboard 0: X310<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: Unknown (0xffff) - 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: Unknown (0xffff) - 0=
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Rate: 200.000000 Msps...<o:p></o:p></p>=

<p class=3D"MsoPlainText">Actual TX Rate: 200.000000 Msps...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Freq: 2400.000000 MHz...<o:p></o:p></p>=

<p class=3D"MsoPlainText">Setting TX LO Offset: 100.000000 MHz...<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">Actual TX Freq: 2400.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText">Actual TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Checking TX: TXLO: locked ...<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [0/Radio#0] Attempting to set tick rate t=
o 0. Skipping.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Done!<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [CTRLEP] Caught exception during async m=
essage handling: map::at<o:p></o:p></b></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples#<o:p=
></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks!<o:p></o:p></p>
<p class=3D"MsoPlainText">Casey<o:p></o:p></p>
</div>


<div>&lt;tx_output.txt&gt;</div><span>______________________________________=
_________</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.=
com</span><br><span>To unsubscribe send an email to usrp-users-leave@lists.e=
ttus.com</span><br></div></blockquote></body></html>=

--Apple-Mail-69107FD1-0C72-49B9-988D-92AAC45F7B04--

--===============5162526694140437152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5162526694140437152==--
