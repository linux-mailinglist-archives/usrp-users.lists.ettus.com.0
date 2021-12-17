Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A767478DEF
	for <lists+usrp-users@lfdr.de>; Fri, 17 Dec 2021 15:39:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56C0B3854F6
	for <lists+usrp-users@lfdr.de>; Fri, 17 Dec 2021 09:39:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SV30Pi7d";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B73043854DD
	for <usrp-users@lists.ettus.com>; Fri, 17 Dec 2021 09:38:35 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id v64so7004251ybi.5
        for <usrp-users@lists.ettus.com>; Fri, 17 Dec 2021 06:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M7Jqm3Jk+J6qdeBLkzmjpnHyNNKStBQUm5B83bdk5js=;
        b=SV30Pi7d+os2I5Zl2RuEdlA9f20HUGKoNscSZDlrtj6gaHGjKMcLo4Pj0SPSFE2tYn
         rmcmxm11gNDfxzmi2HiAbOEfP760ejd2aPpcHBMXLgINvxwQ2YzbAi6bm6FivmPlJnwH
         Z8fjABe8IUafz9ihyMJnFUrhqlcRcM9HOvr4I6LSnt9qHXuARuVLCdnzRthyCj0f/F8B
         M33Rywcl2x6R5/bgIraT/8QL1bgsYqMtTmtWLGbCmXHsTyDDumQlUTDWbMDOzPMGl/rx
         YB2y30P3HJMt0h8UvVPdwEU2KMzzXUwnieOFJMq8C37rNKNfgRPkdh+tayJxoavDk5+9
         /Big==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M7Jqm3Jk+J6qdeBLkzmjpnHyNNKStBQUm5B83bdk5js=;
        b=peP6lXgJnczKFzrYdjWvy9Y85f8/cmlfdeD7Ql4SW7oAO0mGK8u6qNXlDZH536VX8y
         mulyB7dK6gJTNAWGMUcuwvZl1X6i5KbQq6ByHAmjgIwM/lTh6CuLHIDLKcQ8z+QCBPKB
         ha9Im3FGcvMBN9TSz6+uRcOyrA84nDTOJPyHydlK5uOve4Hn1YP82xU2fW4Do7pU9R2J
         X1iAjIrsE7BFhDWHhrv4JLv6fmfFumotT017tUoGP9CVrC7hmdC5MFA12ajiY0QB6G/i
         7Ygee0MlTUHZwH7vLEmNx2AQsothAh4S+T/ocTbv6LWGJouH8PWDVFZW5JHE+B7AoH0p
         dzgQ==
X-Gm-Message-State: AOAM533u/rMChj13xOG/wluH7GAauWx8H7eO43GHl2SwljPY8tEfUsw5
	nx1ghUvBewpLohrGXmHVpRVZpp3StsLHBoJNwAViuG1Cb9c=
X-Google-Smtp-Source: ABdhPJy9EK72BVwfk4hAAl7uRb4IwyrqLOpaD/bK3Tu7xRaHVHUroCwMKVCoT9bOWoVBMDbfIGBuoOCXAOHdOOBYXHE=
X-Received: by 2002:a25:bcc9:: with SMTP id l9mr4700320ybm.13.1639751914874;
 Fri, 17 Dec 2021 06:38:34 -0800 (PST)
MIME-Version: 1.0
References: <PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o@lists.ettus.com>
In-Reply-To: <PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 17 Dec 2021 09:38:23 -0500
Message-ID: <CAB__hTQWTvVwqeR-CyzymkFnJ5knCwMW6wa6S6hjX1L5XPYwAA@mail.gmail.com>
To: maximilian.engelhardt@tu-ilmenau.de
Message-ID-Hash: BF5PMA5MIWMBMMFIL3Y6P6YZ3QIRGIPO
X-Message-ID-Hash: BF5PMA5MIWMBMMFIL3Y6P6YZ3QIRGIPO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD DPDK freezes during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BF5PMA5MIWMBMMFIL3Y6P6YZ3QIRGIPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4309099648556976381=="

--===============4309099648556976381==
Content-Type: multipart/alternative; boundary="000000000000682a2b05d3587e0e"

--000000000000682a2b05d3587e0e
Content-Type: text/plain; charset="UTF-8"

Hi Max,
I have one suggestion, but have very low confidence that it will help. I
think that the Ettus documentation that talks about needing a non-DPDK
connection for device management might not apply to the X310 but rather
only to MPM-based devices.  So, I think you can keep both ports under DPDK
control.  And, I'm wondering in your command line if perhaps you should
just omit specifying "mgmt_addr" such that it will become default.  Perhaps
try a few cases: (1) "addr=192.168.30.2"; (2) "addr=192.168.40.2"; (3)
"addr=192.168.30.2,second_addr=192.168.40.2".
Rob

On Fri, Dec 17, 2021 at 9:28 AM <maximilian.engelhardt@tu-ilmenau.de> wrote:

> Hello,
>
> I'm trying to use UHD-DPDK, but fail because the driver freezes during
> initalization:
>
> > UHD_LOG_LEVEL=debug ./benchmark_rate --rx_rate 100e6 --rx_subdev "A:0"
> --rx_channels 0 --args "mgmt_addr=192.168.30.2,addr=192.168.40.2,use_dpdk=1"
> [INFO] [UHD] linux; GNU C++ version 10.2.1 20210110; Boost_107400;
> UHD_4.2.0.git-209-gf23ab721
> [DEBUG] [PREFS] Loaded user config file /root/.config/uhd.conf
> EAL: Detected 32 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'VA'
> EAL: No available hugepages reported in hugepages-2048kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: Invalid NUMA socket, default to 0
> EAL: Invalid NUMA socket, default to 0
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:08:00.0 (socket 0)
> mlx5_pci: Size 0xFFFF is not power of 2, will be aligned to 0x10000.
> EAL: Invalid NUMA socket, default to 0
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:08:00.1 (socket 0)
> mlx5_pci: Size 0xFFFF is not power of 2, will be aligned to 0x10000.
> EAL: No legacy callbacks, legacy socket not created
>
> Here, the output stops, no timeout occurs even after hours.
>
> Without DPDK, so if I omit the argument use_dpdk=1, it works fine. Other
> DPDK applications also run without problems.
> The problem occurs both with the UHD version 4.0.0 (using DPDK 18.11), and
> with the current state from the git-repository
> (UHD_4.2.0.git-209-gf23ab721) using DPDK 21.11.
>
> I am using a Mellanox Technologies MCX512A-ACAT to which the USRP X310 is
> connected with two 10G Ethenet links., of which i tried to use one witch
> DPDK and the other without. (The documentation suggests to me that this is
> necessary for the driver to manage the device).
>
> I have attached my uhd.conf configuration file and output of ip addr to
> this mail.
>
> Does anyone have any idea how I could solve this problem?
>
> Thanks in advance
>
> Max
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000682a2b05d3587e0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Max,<div>I have one suggestion, but have very low=C2=A0=
confidence that it will help. I think that the Ettus documentation that tal=
ks about needing a non-DPDK connection for device management might not appl=
y to the X310 but rather only to MPM-based devices.=C2=A0 So, I think you c=
an keep both ports under DPDK control.=C2=A0 And, I&#39;m wondering in your=
 command line if perhaps you should just omit=C2=A0specifying=C2=A0&quot;mg=
mt_addr&quot; such that it will become default.=C2=A0 Perhaps try a few cas=
es: (1) &quot;addr=3D192.168.30.2&quot;; (2) &quot;addr=3D192.168.40.2&quot=
;; (3) &quot;addr=3D192.168.30.2,second_addr=3D192.168.40.2&quot;.=C2=A0=C2=
=A0</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Dec 17, 2021 at 9:28 AM &lt;<a href=3D"mailt=
o:maximilian.engelhardt@tu-ilmenau.de">maximilian.engelhardt@tu-ilmenau.de<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Hello,</p><p>I&#39;m trying to use UHD-DPDK, but fail because the driver =
freezes during initalization:</p><blockquote><p>&gt; UHD_LOG_LEVEL=3Ddebug =
./benchmark_rate --rx_rate 100e6 --rx_subdev &quot;A:0&quot; --rx_channels =
0 --args &quot;mgmt_addr=3D192.168.30.2,addr=3D192.168.40.2,use_dpdk=3D1&qu=
ot;<br>[INFO] [UHD] linux; GNU C++ version 10.2.1 20210110; Boost_107400; U=
HD_4.2.0.git-209-gf23ab721<br>[DEBUG] [PREFS] Loaded user config file /root=
/.config/uhd.conf<br>EAL: Detected 32 lcore(s)<br>EAL: Detected 1 NUMA node=
s<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected=
 IOVA mode &#39;VA&#39;<br>EAL: No available hugepages reported in hugepage=
s-2048kB<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<b=
r>EAL: Invalid NUMA socket, default to 0<br>EAL: Invalid NUMA socket, defau=
lt to 0<br>EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:08:00.0=
 (socket 0)<br>mlx5_pci: Size 0xFFFF is not power of 2, will be aligned to =
0x10000.<br>EAL: Invalid NUMA socket, default to 0<br>EAL: Probe PCI driver=
: mlx5_pci (15b3:1017) device: 0000:08:00.1 (socket 0)<br>mlx5_pci: Size 0x=
FFFF is not power of 2, will be aligned to 0x10000.<br>EAL: No legacy callb=
acks, legacy socket not created</p></blockquote><p>Here, the output stops, =
no timeout occurs even after hours.</p><p>Without DPDK, so if I omit the ar=
gument use_dpdk=3D1, it works fine. Other DPDK applications also run withou=
t problems.<br>The problem occurs both with the UHD version 4.0.0 (using DP=
DK 18.11), and with the current state from the git-repository (UHD_4.2.0.gi=
t-209-gf23ab721) using DPDK 21.11.</p><p>I am using a Mellanox Technologies=
 MCX512A-ACAT to which the USRP X310 is connected with two 10G Ethenet link=
s., of which i tried to use one witch DPDK and the other without. (The docu=
mentation suggests to me that this is necessary for the driver to manage th=
e device).<br><br>I have attached my uhd.conf configuration file and output=
 of ip addr to this mail.</p><p>Does anyone have any idea how I could solve=
 this problem?</p><p>Thanks in advance</p><p>Max</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000682a2b05d3587e0e--

--===============4309099648556976381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4309099648556976381==--
