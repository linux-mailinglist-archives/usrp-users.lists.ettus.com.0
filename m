Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 502008274E3
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 17:19:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 833503851B2
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 11:19:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704730770; bh=wmMBPuyxa1W7ptiqRmf6WlCLK16ePy9TBp9N0kaTdzE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qjG/aflfM1htmFDCR89cc/t7V+/65ya9iR7JLSEKFo7Qc4wQfXps3clkJ5m/f9SRh
	 9I4r7gHPk+iQ8Clc6aLXISd5ndPSbU/7+m+MgKby5CLnHZxyHcZEsdHAvMDrK+UcF2
	 1P2rJqUKcIw9re8jedJhGl4yPgJ3SMQk5qrCGKsTPdaEvpn9uYtQLBwsYmH0zCUW2l
	 AebB1yIfiJYqL8ReFz7nQulOagXQiFkDHnv+JnrvBaMIzIYhWPA8jm92HAwHRpZkX0
	 zAG8J34bTVS6aFn2jBGa5tjz6dbSS+k54bvsKRN6F+xu18b/PLLK19+MlL3DG2A5rR
	 6zl622ry+TYKA==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 75F6438092F
	for <usrp-users@lists.ettus.com>; Mon,  8 Jan 2024 11:18:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xA3waJpA";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5e7c1012a42so15610997b3.3
        for <usrp-users@lists.ettus.com>; Mon, 08 Jan 2024 08:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1704730720; x=1705335520; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jUpbE0XFgzK8mS1Liyfk6CeY3fqbk0oDZt6O8nm3xfQ=;
        b=xA3waJpAe3N4gYcHsqqp4GFFKouUAPuBv632lgr2t736Ni5kas3Zfof/XGEoimTLuq
         NqCzOigg+JBEQAVzOGC1aKwezBPFgCbm2A6ZmIpAZHrpUcOvgECk/WHGWotyb3Bfq6kK
         6ZMf/rWwVisDLMgBtuC61dnaQiDx/xdSAmWvLTJ90z7gjfNiXvitFzriZkGhgtBBpMMc
         YRbsoKFg8uQCHHbWtNJKwFVPW2yCmHUC9/TPpb+SEvk4Fu/5ONQWLyO07t2nM/oi27fw
         3AF90+cqf2Ajxv7nMu6gc3Skk6wKb0e7P8YKA5DsHdltxys9fDtG/2iRGEcQwb4WAqR3
         0t5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704730720; x=1705335520;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jUpbE0XFgzK8mS1Liyfk6CeY3fqbk0oDZt6O8nm3xfQ=;
        b=TkAzC+D2kdXnfefDiWjEUcmlsUxseAFAd88vJ1iXe61z7b8ZxHNRh6C9BTbC2J63S4
         HJ8K3stnavP+E5P86udg1m0MPAOyHGlD4VvFKohhN416+3vH1ljWx1XvyKB29SJpiUCb
         74d8iqGzoJVFS7dv0RPqWGHLKt0W1P4IQpdllyaTFyVH2wNYbtPmSncWiMbEYa983fX7
         GHcjnUyvaiXxvZJ7bq05VPWaYF/cnOI7wgJ+TEIj+emL6+TYsLhUVFI8XEbOi/U2teFm
         rhVUeFQ007IWOvA7SMZaNyTdz29LSlQ6h7uCOYlzsJIOzwo7yLFGrWXfIjvkvG2klPz+
         BCSA==
X-Gm-Message-State: AOJu0Ywx5JgbW1gjFjf6sWtAxgYbZIzSExGeao4xZFWTMoNC6ObHXjao
	aAZeU4J4Fz9XRSoi5PvF8Oa6LkeA8xda+vSx2Y+C1bATZ94FafU4aDuOQwJKIyPi2A==
X-Google-Smtp-Source: AGHT+IExsxKr3FxAXrX5871SbvINfE7CViqOCzsFd6JBKeY1afjp/Wff+3eTtJ9Nx0IwFe5xGNPCi37eQc8pCJrMyco=
X-Received: by 2002:a0d:ee02:0:b0:5e4:7552:df39 with SMTP id
 x2-20020a0dee02000000b005e47552df39mr2131716ywe.84.1704730720591; Mon, 08 Jan
 2024 08:18:40 -0800 (PST)
MIME-Version: 1.0
References: <ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc@lists.ettus.com>
In-Reply-To: <ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc@lists.ettus.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Mon, 8 Jan 2024 11:18:29 -0500
Message-ID: <CAGNhwTM6jobd1Ts+DmbGsXGxxD9FrKXUagxSdq=YV7jq45xXZw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3TSFYDP4INT5JGHMQBAC4MF5XALXO3LC
X-Message-ID-Hash: 3TSFYDP4INT5JGHMQBAC4MF5XALXO3LC
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TSFYDP4INT5JGHMQBAC4MF5XALXO3LC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4150398717453715142=="

--===============4150398717453715142==
Content-Type: multipart/alternative; boundary="00000000000009f375060e718d6a"

--00000000000009f375060e718d6a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe - What does "uhd_find_devices" return for "mgmt_addr" on the USRP?
Is the 1 GbE/RJ-45 link connected to the same LAN as the host computer
attached to the USRP?

I'm literally right now working with another customer and Ettus R&D on this
exact same issue and we have determined that the 1 GbE / RJ-45 MGMT link
needs to be up and accessible from the same computer as is connected to the
USRP. If I remove the "mgmt_addr=3DXX" part of the device args. then the DP=
DK
link fails; same thing if I disable "eth0" on the USRP, or if I set
"mgmt_addr" to the link that will be overtaken by DPDK.

Worth a try! - MLD
---
Dr Michael L Dickens
NI is now part of Emerson!
Principal Emerson/NI/Ettus Technical Support Engineer
Teams: +1-512-683-5305
Cell: +1-512-585-1391
michael.dickens@ni.com
michael.dickens@ettus.com

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/ .

NI will only perform services based on its understanding and condition that
the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.


On Fri, Dec 22, 2023 at 12:02=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> After reading through the documentation again, I learned I should only
> specify the NIC ports used in the UHD arguments in my conf file, I believ=
e
> this was able to resolve some of my issues, it still does not successfull=
y
> begin the benchmarking. For example, if I specify 1
> management_address/mgmt_addr and 1 address/addr I get an error that says
> not devices could be found. However, the errors are slightly different
> depending on if I set the management address to either the QSFP port or t=
he
> RJ-45.
>
> In the scenario where I set the mgmt_addr to the QSFP port, I get an erro=
r
> that says no devices were found, but I also get the warning =E2=80=9CNo l=
ink entry
> in rx table=E2=80=9D
>
> ./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6
> --tx_channels 0 --args
> "addr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx,pr=
oduct=3Dx410,fpga=3DCG_400"
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
> UHD_4.5.0.main-2-ga7657c80
>
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is
> considered deprecated, consider moving your config file to /root/.config
> instead.
>
> EAL: Detected 32 lcore(s)
>
> EAL: Detected 1 NUMA nodes
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'PA'
>
> EAL: No available hugepages reported in hugepages-1048576kB
>
> EAL: Probing VFIO support...
>
> EAL: VFIO support initialized
>
> EAL: PCI device 0000:06:00.0 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> EAL: PCI device 0000:06:00.1 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table
>
> [00:00:00.000041] Creating the usrp device with:
> addr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx,pro=
duct=3Dx410,fpga=3DCG_400...
>
> [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> addr: 192.168.10.2
>
> mgmt_addr: 192.168.10.2
>
> use_dpdk: 1
>
> type: x4xx
>
> product: x410
>
> fpga: CG_400
>
> In the scenario where I set the mgmt_addr to the RJ-45 port, I still get
> the device not found error, but the warning goes away.
>
> ./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6
> --tx_channels 0 --args
> "addr=3D192.168.10.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1,type=3Dx4xx,p=
roduct=3Dx410"
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
> UHD_4.5.0.main-2-ga7657c80
>
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is
> considered deprecated, consider moving your config file to /root/.config
> instead.
>
> EAL: Detected 32 lcore(s)
>
> EAL: Detected 1 NUMA nodes
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'PA'
>
> EAL: No available hugepages reported in hugepages-1048576kB
>
> EAL: Probing VFIO support...
>
> EAL: VFIO support initialized
>
> EAL: PCI device 0000:06:00.0 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> EAL: PCI device 0000:06:00.1 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> [00:00:00.000037] Creating the usrp device with:
> addr=3D192.168.10.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1,type=3Dx4xx,pr=
oduct=3Dx410...
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> addr: 192.168.10.2
>
> mgmt_addr: 192.168.1.184
>
> use_dpdk: 1
>
> type: x4xx
>
> product: x410
>
> if I use uhd_find devices, the command returns successfully if I specify
> the address to the QSFP port, however, if I specify the address as RJ-45
> port, it returns unsuccessfully.
>
> uhd_find_devices --args=3D"addr=3D192.168.10.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
> UHD_4.5.0.main-2-ga7657c80
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> serial: 328AACC
>
> claimed: False
>
> fpga: CG_400
>
> mgmt_addr: 192.168.10.2
>
> name: ni-x4xx-328AACC
>
> product: x410
>
> type: x4xx
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000009f375060e718d6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joe - What does &quot;uhd_find_devices&quot; retur=
n for &quot;mgmt_addr&quot; on the USRP? Is the 1 GbE/RJ-45 link connected =
to the same LAN as the host computer attached to the USRP?</div><div dir=3D=
"ltr"><div><br></div><div>I&#39;m literally right now working with another =
customer and Ettus R&amp;D on this exact same issue and we have determined =
that the 1 GbE / RJ-45 MGMT link needs to be up and accessible from the sam=
e computer as is connected to the USRP. If I remove the &quot;mgmt_addr=3DX=
X&quot; part of the device args. then the DPDK link fails; same thing if I =
disable &quot;eth0&quot; on the USRP, or if I set &quot;mgmt_addr&quot; to =
the link that will be overtaken by DPDK.</div><div><br></div><div>Worth a t=
ry! - MLD</div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;=
padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, =
sans-serif">---</font></div><div style=3D"border:0px;font-stretch:inherit;l=
ine-height:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb=
(0,0,0)"><font face=3D"arial, sans-serif">Dr Michael L Dickens</font></div>=
<div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0p=
x;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial=
, sans-serif">NI is now part of Emerson!</font></div><div style=3D"border:0=
px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical=
-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Principa=
l Emerson/NI/Ettus Technical Support Engineer</font></div><div style=3D"bor=
der:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;ver=
tical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Tea=
ms: +1-512-683-5305<br></font></div><div style=3D"border:0px;font-stretch:i=
nherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baseline;c=
olor:rgb(0,0,0)"><font face=3D"arial, sans-serif">Cell: +1-512-585-1391</fo=
nt></div><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;=
margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=
=3D"arial, sans-serif"><a href=3D"mailto:michael.dickens@ni.com" target=3D"=
_blank">michael.dickens@ni.com</a></font></div><div style=3D"border:0px;fon=
t-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align=
:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif"><a href=3D"mai=
lto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com<=
/a></font></div><div style=3D"border:0px;font-stretch:inherit;line-height:i=
nherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><fo=
nt face=3D"arial, sans-serif"><br></font></div><div style=3D"border:0px;fon=
t-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align=
:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">DISCLAIMER: An=
y attached Code is provided As Is. It has not been tested or validated as a=
 product, for use in a deployed application or system, or for use in hazard=
ous environments. You assume all risks for use of the Code. Use of the Code=
 is subject to terms of the licenses to the UHD or RFNoC code with which th=
e Code is used. Standard licenses to UHD and RFNoC can be found at <a href=
=3D"https://www.ettus.com/sdr-software/licenses/" target=3D"_blank">https:/=
/www.ettus.com/sdr-software/licenses/</a> .</font></div><div style=3D"borde=
r:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;verti=
cal-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif"><br><=
/font></div><span style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-seri=
f">NI will only perform services based on its understanding and condition t=
hat the goods or services (i) are not for the use in the production or deve=
lopment of any item produced, purchased, or ordered by any entity with a fo=
otnote 1 designation in the license requirement column of Supplement No. 4 =
to Part 744, U.S. Export Administration Regulations and (ii) such a company=
 is not a party to the transaction.=C2=A0 If our understanding is incorrect=
, please notify us immediately because a specific authorization may be requ=
ired from the U.S. Commerce Department before the transaction may proceed f=
urther.</font></span><br></div></div></div></div></div></div></div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Dec 22, 2023 at 12:02=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@u=
mass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>After reading through the documentation agai=
n, I learned I should only specify the NIC ports used in the UHD arguments =
in my conf file, I believe  this was able to resolve some of my issues, it =
still does not successfully begin the benchmarking. For example, if I speci=
fy 1 management_address/mgmt_addr and 1 address/addr I get an error that sa=
ys not devices could be found. However, the errors are slightly different d=
epending on if I set the management address to either the QSFP port or the =
RJ-45.</p><p>In the scenario where I set the mgmt_addr to the QSFP port, I =
get an error that says no devices were found, but I also get the warning =
=E2=80=9CNo link entry in rx table=E2=80=9D</p><p><code>./benchmark_rate --=
rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 --tx_channels 0 --args =
&quot;addr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx=
,product=3Dx410,fpga=3DCG_400&quot;</code></p><p><code>[INFO] [UHD] linux; =
GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80=
</code></p><p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This l=
ocation is considered deprecated, consider moving your config file to /root=
/.config instead.</code></p><p><code>EAL: Detected 32 lcore(s)</code></p><p=
><code>EAL: Detected 1 NUMA nodes</code></p><p><code>EAL: Multi-process soc=
ket /var/run/dpdk/rte/mp_socket</code></p><p><code>EAL: Selected IOVA mode =
&#39;PA&#39;</code></p><p><code>EAL: No available hugepages reported in hug=
epages-1048576kB</code></p><p><code>EAL: Probing VFIO support...</code></p>=
<p><code>EAL: VFIO support initialized</code></p><p><code>EAL: PCI device 0=
000:06:00.0 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b3:=
1017 net_mlx5</code></p><p><code>EAL: PCI device 0000:06:00.1 on NUMA socke=
t -1</code></p><p><code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><=
p><code>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx t=
able</code></p><p><code>[00:00:00.000041] Creating the usrp device with: ad=
dr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx,product=
=3Dx410,fpga=3DCG_400...</code></p><p><code>[WARNING] [DPDK::IO_SERVICE] Dr=
opping packet: No link entry in rx table</code></p><p><code>Error: LookupEr=
ror: KeyError: No devices found for -----&gt;</code></p><p><code>Device Add=
ress:</code></p><p><code>    addr: 192.168.10.2</code></p><p><code>    mgmt=
_addr: 192.168.10.2</code></p><p><code>    use_dpdk: 1</code></p><p><code> =
   type: x4xx</code></p><p><code>    product: x410</code></p><p><code>    f=
pga: CG_400</code></p><p>In the scenario where I set the mgmt_addr to the R=
J-45 port, I still get the device not found error, but the warning goes awa=
y.</p><p><code>./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rat=
e 491.52e6 --tx_channels 0 --args &quot;addr=3D192.168.10.2,mgmt_addr=3D192=
.168.1.184,use_dpdk=3D1,type=3Dx4xx,product=3Dx410&quot;</code></p><p><code=
>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4=
.5.0.main-2-ga7657c80</code></p><p><code>[WARNING] [PREFS] Loaded config fr=
om /root/.uhd. This location is considered deprecated, consider moving your=
 config file to /root/.config instead.</code></p><p><code>EAL: Detected 32 =
lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nodes</code></p><p><code>E=
AL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></p><p><code>EAL=
: Selected IOVA mode &#39;PA&#39;</code></p><p><code>EAL: No available huge=
pages reported in hugepages-1048576kB</code></p><p><code>EAL: Probing VFIO =
support...</code></p><p><code>EAL: VFIO support initialized</code></p><p><c=
ode>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p><p><code>EAL: =
  probe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PCI device 0000:=
06:00.1 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b3:1017=
 net_mlx5</code></p><p><code>[00:00:00.000037] Creating the usrp device wit=
h: addr=3D192.168.10.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1,type=3Dx4xx,p=
roduct=3Dx410...</code></p><p><code>Error: LookupError: KeyError: No device=
s found for -----&gt;</code></p><p><code>Device Address:</code></p><p><code=
>    addr: 192.168.10.2</code></p><p><code>    mgmt_addr: 192.168.1.184</co=
de></p><p><code>    use_dpdk: 1</code></p><p><code>    type: x4xx</code></p=
><p><code>    product: x410</code></p><p>if I use uhd_find devices, the com=
mand returns successfully if I specify the address to the QSFP port, howeve=
r, if I specify the address as RJ-45 port, it returns unsuccessfully. </p><=
p><code>uhd_find_devices --args=3D&quot;addr=3D192.168.10.2&quot;</code></p=
><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.=
11; UHD_4.5.0.main-2-ga7657c80</code></p><p><code>-------------------------=
-------------------------</code></p><p><code>-- UHD Device 0</code></p><p><=
code>--------------------------------------------------</code></p><p><code>=
Device Address:</code></p><p><code>    serial: 328AACC</code></p><p><code> =
   claimed: False</code></p><p><code>    fpga: CG_400</code></p><p><code>  =
  mgmt_addr: 192.168.10.2</code></p><p><code>    name: ni-x4xx-328AACC</cod=
e></p><p><code>    product: x410</code></p><p><code>    type: x4xx</code></=
p><p><br></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000009f375060e718d6a--

--===============4150398717453715142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4150398717453715142==--
