Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1DA81A780
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 21:11:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A97773851CB
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 15:11:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703103064; bh=LiQ+WPXAYKSfLT5UvdoZgjThU9SSTcFkJsNI3nDmrjg=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lzolVeNPhL4qUMJYVczpo1FBTnWXwaKGa2+75hu8g3KE9UuhXd9uKQeHcwxKrU7+G
	 uZBdnVZMjTU2WuLL0SS6h+E44AZtTgX7JNv0epLFBQfpGcqbEHKNaZYna3jBr9Fdxd
	 Stc7BNJOYPcakC8sFDi4f8E3kzFCGb33vtx0IyuxfmdHTTBef+keFWEERjhj2p3JTv
	 aN3OIqrrOLF2oeUKBhY2bP40EloZGDOjXR2C/TP/Ro/lWQoXKChWT04MT9xnSTRQ4C
	 xPmnoTsIN1QODeN6fcZBEt+9mUPyhjwqtMQ/YDv7Q4mp7WrFF4rmsjwi6dD5MeJfL4
	 QsRTDKrT0OvcA==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B863838513A
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 15:10:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="VXRuGXxe";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-553fe292cffso62135a12.3
        for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 12:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1703103032; x=1703707832; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6IEtyXjpVL6l3zPAY31VVWqVUffbqD4VOrDLBLr/6lM=;
        b=VXRuGXxewhDdzKzqIwfMYiXy/NEnayjMtPd7GZMOiKGWCfpFQsbcIC9lF5gjkJ81NU
         lYvwFCjjnE9xdsQpSoUCC6rHd9NmPEsbQMfHTynYfbT/ZtUw4ooCwavnUltFXUiJLMHW
         EwcqWxWEgq5etX/onFDUnesDXCX29K0Zt5Yfi3bq8MI3CnZ6INx53t1/RXD9tWb62C1d
         pzc4DAyB5ef1YK9Y2jdKnQm2xC9x4sGjjOhWfQvLSfV/55rcg/9tmdovwcgu1k0CJIZk
         Svy7I9AoOcNRV4xsKLAy5+j7LKyN4wTUE+Z63qCv6DQ55c9PvDsUp5fvxAGnCLaveour
         dpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703103032; x=1703707832;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IEtyXjpVL6l3zPAY31VVWqVUffbqD4VOrDLBLr/6lM=;
        b=fgAtg/X/IU5KIaLjxqHTje2N65FXl5wFV/pw7lA8jN7F5QpwUUfEMQk4Jc4RN1oLK0
         feEcnHVVmX65YbIyybFmNoG/EsXr2rLHGy2c3oS0AVni2n8/XRHFrveuE1FRHR7ZOgf/
         N61ySFv9lNpOX45pwRya4ecKfdYgMAcVatAFgmkze6rpDQDR/5Y7jKS3EPE0Pl8RBbnD
         cPUHR64krA61RrJeFpcx5TwAI9MPyX/sNmyg/CA3IDpzs7iWqRt8idzsDsqck4/e+1bA
         0X7dyrFYRrx3ZgK9/s1sDqVdcqVYVqIe5XLIDe7N+RuwLYZCZ10S0cwuXhInmwbKCSNu
         zQ7g==
X-Gm-Message-State: AOJu0YzY6Mf5xGsCkngDo5cQBZWeJ+BtzSgQtuYOL4IHi2s/CoCF1KkF
	eFaMpheN8VhAb2rFICLdSjPCsiF5cl4F/oDKHMFv9SkmkowWO+xa
X-Google-Smtp-Source: AGHT+IEvRSRhp2pyH4I9U8ty7+QSsx4P+bK6G9yZ6EK7ckCodOgQVPu0sYyXRCOLlYs3NxtPgp301OQzLUX6Qalmt7Y=
X-Received: by 2002:a50:ccdd:0:b0:553:9c0e:5aca with SMTP id
 b29-20020a50ccdd000000b005539c0e5acamr921866edj.143.1703103032270; Wed, 20
 Dec 2023 12:10:32 -0800 (PST)
MIME-Version: 1.0
References: <wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc@lists.ettus.com>
In-Reply-To: <wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc@lists.ettus.com>
Date: Wed, 20 Dec 2023 14:10:20 -0600
Message-ID: <CAB__hTSM_TeDnBjDPBTo-A3nxdcA+ByrnUfNAuPqyo34H42yzw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: ZLH2CGQ63USQEMBOUTIJQ2UYGUTMC3GV
X-Message-ID-Hash: ZLH2CGQ63USQEMBOUTIJQ2UYGUTMC3GV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLH2CGQ63USQEMBOUTIJQ2UYGUTMC3GV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6001613814055063479=="

--===============6001613814055063479==
Content-Type: multipart/alternative; boundary="000000000000420c04060cf6932b"

--000000000000420c04060cf6932b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
Perhaps you need a different "mgmt_addr" and "addr"?  I seem to recall that
it was necessary to have a management address that was the typical RJ45 and
then a data streaming address that went to the high speed IO.  My memory is
for the N series USRPs - I have no experiment with the X410.
Rob

On Wed, Dec 20, 2023 at 1:42=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently attempting to benchmark the x410 with the Mellanox
> ConnectX-5 PCi Card over QSFP with the CG_400 image currently loaded on t=
he
> x410. I am currently using a 13th gen intel i9-13900KS on the host machin=
e.
> I currently have a QSFP cable connected between the Mellanox card and the
> x410
>
> I am following these instructions=E2=80=A6
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>
> However, when I get to the benchmark_rate, I get the following output
>
> ./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6
> --tx_channels 0 --args "addr=3D192.168.10.2,use_dpdk=3D1"
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
> [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
>
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
> find route to destination address 192.168.10.2
>
> [00:00:00.000215] Creating the usrp device with:
> addr=3D192.168.10.2,use_dpdk=3D1...
>
> [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
>
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
> find route to destination address 192.168.10.2
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D328AACC,name=
=3Dni-x4xx-328AACC,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,use_dp=
dk=3D1
>
> [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
>
> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address
> 192.168.10.2: RuntimeError: DPDK: Could not find route to destination
> address 192.168.10.2
>
> [ERROR] [MPMD::MB_IFACE] No CHDR connection available!
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DCG_400,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-328AACC,product=3D=
x410,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal,initializi=
ng=3DTrue'.
>
> Error: RuntimeError: No CHDR connection available!
>
> I am having a difficult time parsing these errors at the moment. Should I
> move my config file? Does the =E2=80=9Cx300 network=E2=80=9D refer to an =
ettus device(I
> have no x3xx connected) or something else? Any suggestions is greatly
> appreciated.
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000420c04060cf6932b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>Perhaps you need a different &quot;mgmt_addr&q=
uot; and &quot;addr&quot;?=C2=A0 I seem to recall that it was necessary to =
have a management=C2=A0address that was the typical RJ45 and then a data st=
reaming address that went to the high speed IO.=C2=A0 My memory is for the =
N series USRPs - I have no experiment with the X410.</div><div>Rob</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Dec 20, 2023 at 1:42=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.e=
du">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Hello,</p><p>I am currently attempting to benchmar=
k the x410 with the Mellanox ConnectX-5 PCi Card over QSFP with the CG_400 =
image currently loaded on the x410. I am currently using a 13th gen intel i=
9-13900KS on the host machine. I currently have a QSFP cable connected betw=
een the Mellanox card and the x410</p><p>I am following these instructions=
=E2=80=A6<a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD"=
 target=3D"_blank">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</=
a></p><p>However, when I get to the benchmark_rate, I get the following out=
put</p><p><code>./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_ra=
te 491.52e6 --tx_channels 0 --args &quot;addr=3D192.168.10.2,use_dpdk=3D1&q=
uot;</code></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_10=
7100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p><p><code>[WARNING] [=
PREFS] Loaded config from /root/.uhd. This location is considered deprecate=
d, consider moving your config file to /root/.config instead.</code></p><p>=
<code>EAL: Detected 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nod=
es</code></p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket=
</code></p><p><code>EAL: Selected IOVA mode &#39;PA&#39;</code></p><p><code=
>EAL: No available hugepages reported in hugepages-1048576kB</code></p><p><=
code>EAL: Probing VFIO support...</code></p><p><code>EAL: VFIO support init=
ialized</code></p><p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</=
code></p><p><code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><cod=
e>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p><p><code>EAL:   =
probe driver: 15b3:1017 net_mlx5</code></p><p><code>[ERROR] [DPDK] Could no=
t find route to destination address 192.168.10.2</code></p><p><code>[ERROR]=
 [X300] X300 Network discovery error RuntimeError: DPDK: Could not find rou=
te to destination address 192.168.10.2</code></p><p><code>[00:00:00.000215]=
 Creating the usrp device with: addr=3D192.168.10.2,use_dpdk=3D1...</code><=
/p><p><code>[ERROR] [DPDK] Could not find route to destination address 192.=
168.10.2</code></p><p><code>[ERROR] [X300] X300 Network discovery error Run=
timeError: DPDK: Could not find route to destination address 192.168.10.2</=
code></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with a=
rgs: mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D328AACC,n=
ame=3Dni-x4xx-328AACC,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,use=
_dpdk=3D1</code></p><p><code>[ERROR] [DPDK] Could not find route to destina=
tion address 192.168.10.2</code></p><p><code>[WARNING] [MPMD::XPORT::UDP] E=
rror during MTU discovery on address <a href=3D"http://192.168.10.2" target=
=3D"_blank">192.168.10.2</a>: RuntimeError: DPDK: Could not find route to d=
estination address 192.168.10.2</code></p><p><code>[ERROR] [MPMD::MB_IFACE]=
 No CHDR connection available!</code></p><p><code>[INFO] [MPM.PeriphManager=
] init() called with device args `fpga=3DCG_400,mgmt_addr=3D192.168.10.2,na=
me=3Dni-x4xx-328AACC,product=3Dx410,use_dpdk=3D1,clock_source=3Dinternal,ti=
me_source=3Dinternal,initializing=3DTrue&#39;.</code></p><p><code>Error: Ru=
ntimeError: No CHDR connection available!</code></p><p>I am having a diffic=
ult time parsing these errors at the moment. Should I move my config file? =
Does the =E2=80=9Cx300 network=E2=80=9D refer to an ettus device(I have no =
x3xx connected) or something else? Any suggestions is greatly appreciated.<=
/p><p>Thanks,</p><p>Joe</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000420c04060cf6932b--

--===============6001613814055063479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6001613814055063479==--
