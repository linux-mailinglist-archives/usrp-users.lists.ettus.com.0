Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3449A222E1B
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 23:42:29 +0200 (CEST)
Received: from [::1] (port=46960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jwBe4-0002QV-LK; Thu, 16 Jul 2020 17:42:24 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:40379)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jwBe0-00028z-Ki
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 17:42:20 -0400
Received: by mail-ot1-f41.google.com with SMTP id c25so5398290otf.7
 for <usrp-users@lists.ettus.com>; Thu, 16 Jul 2020 14:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=eVtUaLRr0EZ7E+eoD/YlPskWzki4z6LSq5qWFNRJEL8=;
 b=fv6lA4qy++e/ABK0cvRI9UCSZ6AaEW2ReOYOQpXddWXdOA1PdCBEMO8PNujb6Jq5eI
 NkD26NZUyST7QkT8PAuVqgIUV0MoPwcDFigQkYT8cdLievK0+xQ061c2GyRwEE2pmyOT
 UfffniNTTsMAigSVo5FG/Oq+8pXsqzEKI1hI1rVaEk7wxtmEjDKgeRhEMkI7CKCmEwjW
 cB4SiV8yXqU00MiYS4JjGzsL0v/8dWk1PfWWzy32O0x+OyH9ZKCeTjcMwZsXPcyqEwKK
 uVm3ySHqPRvIgXMfE8y+/lrJuEGaru8wUIDJlk6WOJgc5rvPBP0i3wA8YClPwVkVNvDX
 M08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=eVtUaLRr0EZ7E+eoD/YlPskWzki4z6LSq5qWFNRJEL8=;
 b=F29D/PIZViaSi2J/xHkm5jFYbemMed3szhOXBuAUnJJsgLtWgW6Q+VSjnfNOiEK1lv
 imhEjockO9ZScKOVE8MNm7APsh5vU8Tn9l9DLVc9IJ4/DmTXoTBJYN2tQ5ZSnfkwYag7
 SF3x03vGJINzY8TyDK5MCeh+nsThsxm/k2bJ7vMHnjzCX6a5XY5ADJJt7eVtkXzx01H/
 jAAEL3pkCM2NF/a1q2iC2ft8xvYCT4cancPn+smG1IwNEDMUnvgFiJdk+Ds38ZzxB/dr
 ply0+26OIypuUJw2LdSOuCLE03vM93MhMwq8Q9wQp1KxnGKRdjme7fEtHzZEjamOfZpl
 NDPA==
X-Gm-Message-State: AOAM532oxeVVNs7Wj9uzig+f21YvaUU1epgr2S/mB2hyYDTWKVyoC9mM
 W/iwsP6x17iLcM3KAC5jauvZUzkOW3zd27akdcFCMSFM4LI=
X-Google-Smtp-Source: ABdhPJwuV5XpUBJSRG2KSDTgYsMcSzjZPnLtBA7O5IYuDugbFvEfTy8h6Qy25qXA1cIGkMhIs+GAnYFQJ4AiSB64Xaw=
X-Received: by 2002:a05:6830:3149:: with SMTP id
 c9mr6161766ots.302.1594935699538; 
 Thu, 16 Jul 2020 14:41:39 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 16 Jul 2020 16:41:28 -0500
Message-ID: <CACxOa3bQJTiSnDK-W_U+Fj3=o8m45MZDMfpcVyNX6PJcqtBACQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] uhd_usrp_probe to N310 fails with DPDK
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============6582481430369077098=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6582481430369077098==
Content-Type: multipart/alternative; boundary="000000000000cf951005aa95e773"

--000000000000cf951005aa95e773
Content-Type: text/plain; charset="UTF-8"

Hi All,

I followed the flow listed here
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD with UHD 3.15 and
DPDK 17.11, but I am unable to run uhd_usrp_probe, it fails. At the end of
the email the result of uhd_usrp_probe is attached.

Running Ubuntu 18.04. Installed UHD from source and installed dpdk from
apt-get.

The app note worked mostly as expected except for the sudo dpdk-devbind
--bind=vfio=pci 02:00.0 commands. However, this failed as it failed to bind
to the device. I had to run sudo dpdk-devbind --bind=vfio-pci enp2s0f0
instead, and that worked.

Any suggestions on what to try next?

Thanks
Colby

root@genxcomm-tower:~# uhd_usrp_probe
 --args="use_dpdk=1,mgmt_addr=172.26.60.1,addr=192.168.20.2,type=n3xx"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.v315-0-gaea0e2de
EAL: Detected 8 lcore(s)
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:19.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:15a1 net_e1000_em
EAL: PCI device 0000:02:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   using IOMMU type 1 (Type 1)
EAL: Ignore mapping IO port bar(2)
EAL: PCI device 0000:02:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL: Ignore mapping IO port bar(2)
EAL: PCI device 0000:06:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10d3 net_e1000_em
EAL: Waiting for links to come up...
EAL: Init DONE!
EAL: Starting I/O threads!
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=172.26.60.1,type=n3xx,product=n310,serial=31D90DA,claimed=False,use_dpdk=1,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`product=n310,use_dpdk=1,clock_source=internal,mgmt_addr=172.26.60.1,time_source=internal'.
EAL: Please set IPv4 address for port 0 before opening socket
[ERROR] [MPMD] Failure during block enumeration: AssertionError: _rx_sock
!= nullptr
  in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const string&,
const string&, const uhd::transport::zero_copy_xport_params&)
  at /home/genxcomm/repo/uhd/host/lib/transport/dpdk_zero_copy.cpp:355

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

--000000000000cf951005aa95e773
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All, <br></div><div><br></div><div>I followed the =
flow listed here <a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_=
and_UHD">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a> with UH=
D 3.15 and DPDK 17.11, but I am unable to run uhd_usrp_probe, it fails. At =
the end of the email the result of uhd_usrp_probe is attached. <br></div><d=
iv><br></div><div>Running Ubuntu 18.04. Installed UHD from source and insta=
lled dpdk from apt-get. <br></div><div><br></div><div>The app note worked m=
ostly as expected except for the sudo dpdk-devbind --bind=3Dvfio=3Dpci 02:0=
0.0 commands. However, this failed as it failed to bind to the device. I ha=
d to run sudo dpdk-devbind --bind=3Dvfio-pci enp2s0f0 instead, and that wor=
ked. <br></div><div><br></div><div>Any suggestions on what to try next?</di=
v><div><br></div><div>Thanks</div><div>Colby<br></div><div><br></div><div>r=
oot@genxcomm-tower:~# uhd_usrp_probe =C2=A0--args=3D&quot;use_dpdk=3D1,mgmt=
_addr=3D172.26.60.1,addr=3D192.168.20.2,type=3Dn3xx&quot;<br>[INFO] [UHD] l=
inux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.v315-0-gaea0e2de<br>E=
AL: Detected 8 lcore(s)<br>EAL: No free hugepages reported in hugepages-104=
8576kB<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br>=
EAL: PCI device 0000:00:19.0 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA =
socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:15a1 net_e1000_em<br=
>EAL: PCI device 0000:02:00.0 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA=
 socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:10fb net_ixgbe<br>E=
AL: =C2=A0 using IOMMU type 1 (Type 1)<br>EAL: Ignore mapping IO port bar(2=
)<br>EAL: PCI device 0000:02:00.1 on NUMA socket -1<br>EAL: =C2=A0 Invalid =
NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:10fb net_ixgbe<=
br>EAL: Ignore mapping IO port bar(2)<br>EAL: PCI device 0000:06:00.0 on NU=
MA socket -1<br>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=
=A0 probe driver: 8086:10d3 net_e1000_em<br>EAL: Waiting for links to come =
up...<br>EAL: Init DONE!<br>EAL: Starting I/O threads!<br>[INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with args: mgmt_addr=3D172.26.60.1,type=
=3Dn3xx,product=3Dn310,serial=3D31D90DA,claimed=3DFalse,use_dpdk=3D1,addr=
=3D192.168.20.2<br>[INFO] [MPM.PeriphManager] init() called with device arg=
s `product=3Dn310,use_dpdk=3D1,clock_source=3Dinternal,mgmt_addr=3D172.26.6=
0.1,time_source=3Dinternal&#39;.<br>EAL: Please set IPv4 address for port 0=
 before opening socket<br>[ERROR] [MPMD] Failure during block enumeration: =
AssertionError: _rx_sock !=3D nullptr<br>=C2=A0 in uhd::transport::dpdk_zer=
o_copy_impl::dpdk_zero_copy_impl(const uhd::transport::uhd_dpdk_ctx&amp;, u=
nsigned int, const string&amp;, const string&amp;, const string&amp;, const=
 uhd::transport::zero_copy_xport_params&amp;)<br>=C2=A0 at /home/genxcomm/r=
epo/uhd/host/lib/transport/dpdk_zero_copy.cpp:355<br><br>Error: RuntimeErro=
r: Failed to run enumerate_rfnoc_blocks()<br></div></div>

--000000000000cf951005aa95e773--


--===============6582481430369077098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6582481430369077098==--

