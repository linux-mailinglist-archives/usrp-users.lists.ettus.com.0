Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA0F77F6D3
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 14:53:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C1D13844AD
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 08:53:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692276813; bh=fWzsbATmEluLs9MqylggpGfv2/YEda4mFM2Ub5AVL8g=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uhpJhHx2UmpLakwWlYKLVS2ns4yopUljdzKdSTOnE7XXzjTEgpWkMGQ3CLkW4Wozf
	 t7SGX16ruLg6/TZ8empQKtUtmjNP6cLpdfysHWkDdx7/27ezrH+INuOa8AsjBvnzNJ
	 euSeeNIj6ywQczBWBcwc9ZuYWDizixBK4JGYoFfZ3OLEJ8wFFomzAVNEQ77aaWS/oe
	 Hl7bBfGRWCiL1Oaul2pgTZPG1dVPLo6Go1Kr+NA779l9bgWugq8A2kLz5dGF5sD1Ug
	 +sJfWokvq1DHXWDP+aAWrYAOnDyyVj17oZQ9iSnciD3LZukvYyovOVUkvYYhge/IWy
	 P37IHwStsu7HQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id EFFBA38416F
	for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 08:53:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mOQoN8eV";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-99bccc9ec02so1064648766b.2
        for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 05:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692276779; x=1692881579;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PRwKAMNktj/N9j4DAB+AZpfRM5ekN0qAf2aCl5Bh16A=;
        b=mOQoN8eVXuXYx1rahhxCjyC6/K+5CKH98JQGD3/CQgqielwqMesxG1cmQdM08FvZks
         WrTrh8Gtd96KasOlDiMn8c5aY4pg488hG6LSs9fopvYf2KZZ0hGcmME76RylUTwROoTf
         0Btf1pXpXnE43+9kO53ZMdS64ToaAN4xs47aSGlhGizTA64q8dIZoYoW/id7mcuGdo83
         cp7gf8lWplol3T6h3VmB8gc/0ANnIaW2JaggfxDXpBvw0q1NdvlQLos+oGQ3/EpEWCJ6
         F5nfBQIPOI/VR6zZ7TVV+iIjpbxxdVHMwb2zFNQz3PC7RSNTkVk0UUfUeiATjq98og5S
         7eHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692276779; x=1692881579;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PRwKAMNktj/N9j4DAB+AZpfRM5ekN0qAf2aCl5Bh16A=;
        b=dcSSPtrHRL31JNbGIqpkXqIJskcMBx0hE6k6AK/aL8Kwr/F1Nsh8QZpe2rnff/0D/g
         XLDj58prammlRlmtjOEJ5pulb4bgTJW7+6CGuPEFQYeB4xJ0c/mWAmqIATiFwvuLxs+I
         wTQZZsCVT7ieVB0Rxmmb8JbB6UowK4KHBYT4Rlmz5i2CVccgXR5Q+awCVigLTXpNbzvb
         Ej0/Rop0vTHmgYQUE/0TXTXo5knprtHsKI87nxybUpHmPBK1PTssWoCEz3ST3J5b4NHT
         62O5kDjWEhsv5B5KlG3z6xv5p1mzX/Pi9FnJSj1EI8E0la61gX3nfI1uUmnwiAoYhTSV
         Qfzg==
X-Gm-Message-State: AOJu0YwfDrpljz0pf3gUMtcCXEr+B8auTO976fVtOSBkntKyZ3Wmoh+k
	1qGf1vmdpw8LH4lQUyqphgICyDDNcMw0XFTr9cBYrMknE5NiRg0jo9I=
X-Google-Smtp-Source: AGHT+IHMZXnD5dYVi94uRPlsbArLttgtWwvjXwM9BJn+Tor4DFmGhV4gL47DHpWSQyUXO23Nrr5qdsdv8c9BI/6XSSo=
X-Received: by 2002:a17:906:cc53:b0:99b:65fa:fc2b with SMTP id
 mm19-20020a170906cc5300b0099b65fafc2bmr3675982ejb.35.1692276778988; Thu, 17
 Aug 2023 05:52:58 -0700 (PDT)
MIME-Version: 1.0
From: Junfeng Guan <jguan1533@gmail.com>
Date: Thu, 17 Aug 2023 14:52:48 +0200
Message-ID: <CAOrp07tp8uqr-B-b9HzGK9XYj5Ow-66OgabN3nLtWehisfsyEg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CYCK7GSEDTUSMSJ4MS6UZAQ5QRCBW2OZ
X-Message-ID-Hash: CYCK7GSEDTUSMSJ4MS6UZAQ5QRCBW2OZ
X-MailFrom: jguan1533@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CYCK7GSEDTUSMSJ4MS6UZAQ5QRCBW2OZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2647568398215354852=="

--===============2647568398215354852==
Content-Type: multipart/alternative; boundary="00000000000045fce206031de4f2"

--00000000000045fce206031de4f2
Content-Type: text/plain; charset="UTF-8"

Hi usrp-users,

I'm trying to set up DPDK for x410 USRP, but when I run the
"benchmark_rate", DPDK "could not find route to destination address".
(Please find my screen dump and uhd.conf below.)
Could you please provide any insights on what might go wrong? I
appreciate it!

*Screen Dump:*
./benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_channels 0,1
--tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args
"addr=192.168.10.2,mgmt_addr=128.178.116.7,master_clock_rate=250e6,use_dpdk=1"

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.4.0.HEAD-0-g5fac246b
[WARNING] [PREFS] Loaded config from /root/.uhd. This location is
considered deprecated, consider moving your config file to /root/.config
instead.
EAL: Detected CPU lcores: 12
EAL: Detected NUMA nodes: 1
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: Selected IOVA mode 'VA'
EAL: No available 1048576 kB hugepages reported
EAL: VFIO support initialized
EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:a2:00.0 (socket 0)
EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:a2:00.1 (socket 0)
TELEMETRY: No legacy callbacks, legacy socket not created
[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.10.2
[00:00:00.000212] Creating the usrp device with:
addr=192.168.10.2,mgmt_addr=128.178.116.7,master_clock_rate=250e6,use_dpdk=1...
[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.10.2
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=128.178.116.7,type=x4xx,product=x410,serial=327C1F2,name=ni-x4xx-327C1F2,fpga=X4_200,claimed=False,addr=192.168.10.2,master_clock_rate=250e6,use_dpdk=1
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=X4_200,master_clock_rate=250e6,mgmt_addr=128.178.116.7,name=ni-x4xx-327C1F2,product=x410,use_dpdk=1,clock_source=internal,time_source=internal'.
[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address
192.168.10.2: RuntimeError: DPDK: Could not find route to destination
address 192.168.10.2
[ERROR] [MPMD::MB_IFACE] No CHDR connection available!
Error: RuntimeError: No CHDR connection available!


*uhd.conf:*
[use_dpdk=1]
dpdk_mtu=9000
dpdk_driver=/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-22.0/
dpdk_corelist=3,4
dpdk_num_mbufs=4096
dpdk_mbuf_cache_size=315

[dpdk_mac=08:C0:EB:F6:81:72]
dpdk_lcore = 3
dpdk_ipv4 = 192.168.10.1/24
dpdk_num_desc=4096

[dpdk_mac=08:C0:EB:F6:81:73]
dpdk_lcore = 4
dpdk_ipv4 = 192.168.20.1/24

Best regards,
Jayden

--00000000000045fce206031de4f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi usrp-users,</div><div><br></div><div>I&#39;m tryin=
g to set up=C2=A0DPDK for x410 USRP, but when I run the &quot;benchmark_rat=
e&quot;, DPDK &quot;could not find route to destination address&quot;. (Ple=
ase find my screen dump and uhd.conf below.)</div><div>Could you please pro=
vide any insights on what might go wrong? I appreciate=C2=A0it!</div><div><=
br></div><div><div><b><u>Screen Dump:</u></b></div></div>./benchmark_rate -=
-rx_rate 125e6 --rx_subdev &quot;A:0 B:0&quot; --rx_channels 0,1 --tx_rate =
125e6 --tx_subdev &quot;A:0 B:0&quot; --tx_channels 0,1 --args &quot;addr=
=3D192.168.10.2,mgmt_addr=3D128.178.116.7,master_clock_rate=3D250e6,use_dpd=
k=3D1&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400=
; DPDK_21.11; UHD_4.4.0.HEAD-0-g5fac246b<br>[WARNING] [PREFS] Loaded config=
 from /root/.uhd. This location is considered deprecated, consider moving y=
our config file to /root/.config instead.<br>EAL: Detected CPU lcores: 12<b=
r>EAL: Detected NUMA nodes: 1<br>EAL: Detected shared linkage of DPDK<br>EA=
L: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected IOVA m=
ode &#39;VA&#39;<br>EAL: No available 1048576 kB hugepages reported<br>EAL:=
 VFIO support initialized<br>EAL: Probe PCI driver: mlx5_pci (15b3:1017) de=
vice: 0000:a2:00.0 (socket 0)<br>EAL: Probe PCI driver: mlx5_pci (15b3:1017=
) device: 0000:a2:00.1 (socket 0)<br>TELEMETRY: No legacy callbacks, legacy=
 socket not created<br>[ERROR] [DPDK] Could not find route to destination a=
ddress 192.168.10.2<br>[ERROR] [X300] X300 Network discovery error RuntimeE=
rror: DPDK: Could not find route to destination address 192.168.10.2<br>[00=
:00:00.000212] Creating the usrp device with: addr=3D192.168.10.2,mgmt_addr=
=3D128.178.116.7,master_clock_rate=3D250e6,use_dpdk=3D1...<br>[ERROR] [DPDK=
] Could not find route to destination address 192.168.10.2<br>[ERROR] [X300=
] X300 Network discovery error RuntimeError: DPDK: Could not find route to =
destination address 192.168.10.2<br>[INFO] [MPMD] Initializing 1 device(s) =
in parallel with args: mgmt_addr=3D128.178.116.7,type=3Dx4xx,product=3Dx410=
,serial=3D327C1F2,name=3Dni-x4xx-327C1F2,fpga=3DX4_200,claimed=3DFalse,addr=
=3D192.168.10.2,master_clock_rate=3D250e6,use_dpdk=3D1<br>[INFO] [MPM.Perip=
hManager] init() called with device args `fpga=3DX4_200,master_clock_rate=
=3D250e6,mgmt_addr=3D128.178.116.7,name=3Dni-x4xx-327C1F2,product=3Dx410,us=
e_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] =
[DPDK] Could not find route to destination address 192.168.10.2<br>[WARNING=
] [MPMD::XPORT::UDP] Error during MTU discovery on address <a href=3D"http:=
//192.168.10.2">192.168.10.2</a>: RuntimeError: DPDK: Could not find route =
to destination address 192.168.10.2<br>[ERROR] [MPMD::MB_IFACE] No CHDR con=
nection available!<br>Error: RuntimeError: No CHDR connection available!<br=
><div><br></div><div><br></div><div><b><u>uhd.conf:</u></b></div><div>[use_=
dpdk=3D1]<br>dpdk_mtu=3D9000<br>dpdk_driver=3D/usr/local/lib/x86_64-linux-g=
nu/dpdk/pmds-22.0/<br>dpdk_corelist=3D3,4<br>dpdk_num_mbufs=3D4096<br>dpdk_=
mbuf_cache_size=3D315<br><br>[dpdk_mac=3D08:C0:EB:F6:81:72]<br>dpdk_lcore =
=3D 3<br>dpdk_ipv4 =3D <a href=3D"http://192.168.10.1/24">192.168.10.1/24</=
a><br>dpdk_num_desc=3D4096<br><br>[dpdk_mac=3D08:C0:EB:F6:81:73]<br>dpdk_lc=
ore =3D 4<br>dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24">192.168.20.1/=
24</a><br><br></div><div>Best regards,</div><div>Jayden</div></div>

--00000000000045fce206031de4f2--

--===============2647568398215354852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2647568398215354852==--
