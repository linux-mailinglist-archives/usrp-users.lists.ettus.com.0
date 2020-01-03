Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E73D12FDD6
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 21:23:07 +0100 (CET)
Received: from [::1] (port=56316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inTTH-0003Ax-QP; Fri, 03 Jan 2020 15:22:59 -0500
Received: from mail-lf1-f41.google.com ([209.85.167.41]:42514)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1inTTD-0002wm-S9
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 15:22:56 -0500
Received: by mail-lf1-f41.google.com with SMTP id y19so32579289lfl.9
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 12:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OHnL53uNz7EBrWDXMzJYYHU+wVGJE538STlQ5A0VI8M=;
 b=bAc1A1+nvN7x7BZ8nHlgrWKA8xJf4rTEtYkPrwPqbxMmxbHLnyMN/G2UBfRimbxlt6
 cCh6yx0sz0qodYp5YziZo5Jsv97uEhNInuQhY24YgYlZmATg43CIlO9dFZg91i8KoW1b
 WqiPXi0bBT8CnpCyEVUoGOm74vMmjHdzw4wN+gB5WL8Gh9M0P4qhtismJbCr7WPC1Djg
 zr04YJRxkSupsdR32ZRlk23Nqei2u5XKlwaFTcD6smjPAOZFn1IW7uKX9xNINP7zdbf8
 zszjnrmvSTgbYOde2RjEyz3RHskbwo6v83uXu4/8DCKNrJVKNSlhduasxQ1IQFtzagJr
 FClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OHnL53uNz7EBrWDXMzJYYHU+wVGJE538STlQ5A0VI8M=;
 b=G1UuOGe1bXnsccwVIZwCow0Od2AZY3lxUBw/Vr8Nby9ozfLgO63/VCCsM5bfY0c6lX
 egR7V20E/FnzUesEZAAU1aC4EiBguw5+Er4qcMuEvx2uPIp41JvWl87H7cJNA4lKpoBq
 Dx1sziDUBwyB1wLRVYaw6vw6nGy8SW+IsBSQ+xqnnInt68L9mJWuePFrjNTm0iT6uX9r
 4Qn0QZdPNpch4GfOGjpK/gLOd4QeufZJM7gE7ugFaDje05pe+PsdymjmJzNh/8LPZozo
 cLDlLoS13LPfjQXooeRfBLEO50gLljkcpqtZ1V5X1CpS3spSCT0wmmYIG3L2Qm0tP5EA
 zfrg==
X-Gm-Message-State: APjAAAX3HDayfsiGXx3JL+94GF/hklok+/8ZejE560VhkO+BCEZJ1DkX
 WPjpTAz6vYq0g3FyK5V5zMrdV3CLuNT1DJ7c1umXJckl
X-Google-Smtp-Source: APXvYqxEgakOeXTZI/saRc3uZ30Y3tk11QE4XfFNvGFizj5ANRA6YulFy7+OjP5epkTO9nAMaUaheAMSxwu/gYMVPR8=
X-Received: by 2002:ac2:5503:: with SMTP id j3mr50276183lfk.104.1578082934633; 
 Fri, 03 Jan 2020 12:22:14 -0800 (PST)
MIME-Version: 1.0
References: <e44a32d6-8d73-b567-eda2-ce00144c592a@eurecom.fr>
In-Reply-To: <e44a32d6-8d73-b567-eda2-ce00144c592a@eurecom.fr>
Date: Fri, 3 Jan 2020 14:22:04 -0600
Message-ID: <CANf970b5b0igU4ag--+4DHdopWHr+gsuwU5wEupyXcKEA9m3FQ@mail.gmail.com>
To: Florian Kaltenberger <florian.kaltenberger@eurecom.fr>
Subject: Re: [USRP-users] DPDK runtime error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0562718411084205108=="
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

--===============0562718411084205108==
Content-Type: multipart/alternative; boundary="000000000000bece5c059b4210ca"

--000000000000bece5c059b4210ca
Content-Type: text/plain; charset="UTF-8"

Florian,

DPDK 18.11 is not supported on UHD 3.x. You'll need to use DPDK 17.11.

Sam Reiter
Ettus Research

On Mon, Dec 23, 2019 at 9:51 AM Florian Kaltenberger via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> we have finally managed to set up UHD (3.15) with DPDK (18.11) support on
> our RedHat 7 system (both installed from source) with our N310. I have
> configured the system as explained here
> http://files.ettus.com/manual/page_dpdk.html but when calling
>
> uhd_usrp_probe --args
> "use_dpdk=1,mgmt_addr=192.168.12.1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6,type=n3xx"
>
> I am getting the following runtime error (all the way at the bottom):
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_106900; UHD_3.15.0.0-0-g4e06022c
> EAL: Detected 10 lcore(s)
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:00:19.0 on NUMA socket 0
> EAL:   probe driver: 8086:153a net_e1000_em
> EAL: PCI device 0000:01:00.0 on NUMA socket 0
> EAL:   probe driver: 8086:1572 net_i40e
> EAL: PCI device 0000:01:00.1 on NUMA socket 0
> EAL:   probe driver: 8086:1572 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> PMD: Global register is changed during enable FDIR flexible payload
> PMD: Global register is changed during support QinQ parser
> PMD: Global register is changed during configure hash input set
> PMD: Global register is changed during configure fdir mask
> PMD: Global register is changed during configure hash mask
> PMD: Global register is changed during support QinQ cloud filter
> PMD: Global register is changed during support TPID configuration
> EAL: PCI device 0000:01:00.2 on NUMA socket 0
> EAL:   probe driver: 8086:1572 net_i40e
> EAL: PCI device 0000:01:00.3 on NUMA socket 0
> EAL:   probe driver: 8086:1572 net_i40e
> PMD: Global register is changed during enable FDIR flexible payload
> PMD: Global register is changed during support QinQ parser
> PMD: Global register is changed during configure hash input set
> PMD: Global register is changed during configure fdir mask
> PMD: Global register is changed during configure hash mask
> PMD: Global register is changed during support QinQ cloud filter
> PMD: Global register is changed during support TPID configuration
> EAL: Waiting for links to come up...
> EAL: Init DONE!
> EAL: Starting I/O threads!
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.12.1,type=n3xx,product=n310,serial=31641BC,claimed=False,use_dpdk=1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.12.1,product=n310,master_clock_rate=122.88e6,second_addr=192.168.20.2,use_dpdk=1,clock_source=internal,time_source=internal'.
> EAL: Please set IPv4 address for port 0 before opening socket
> [ERROR] [MPMD] Failure during block enumeration: AssertionError: _rx_sock
> != nullptr
>   in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
> uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const string&,
> const string&, const uhd::transport::zero_copy_xport_params&)
>
> I am also copying the output of "dpdk-devbind  --status" which shows that
> the two interfaces connected to the USRP use the vfio-pci driver for DPDK
>
> Network devices using DPDK-compatible driver
> ============================================
> 0000:01:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci
> unused=i40e
> 0000:01:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci
> unused=i40e
>
> Network devices using kernel driver
> ===================================
> 0000:00:19.0 'Ethernet Connection I217-LM 153a' if=enp0s25 drv=e1000e
> unused=vfio-pci *Active*
> 0000:01:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=p1p1
> drv=i40e unused=vfio-pci
> 0000:01:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=p1p3
> drv=i40e unused=vfio-pci
>
> What surprises me is that in the output of the uhd_usrp_probe, it does not
> say it is using the driver for DPDK. any ideas what could be wrong?
>
> Florian.
> --
> Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>,
> LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter
> <https://twitter.com/osalliance5g>!
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bece5c059b4210ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Florian,<div><br></div><div>DPDK 18.11 is not supported on=
 UHD 3.x. You&#39;ll need to use DPDK 17.11.=C2=A0</div><div><br clear=3D"a=
ll"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>Ett=
us Research</div></div></div></div></div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 23, 2019=
 at 9:51 AM Florian Kaltenberger via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <p>Dear all,</p>
    <p>we have finally managed to set up UHD (3.15) with DPDK (18.11)
      support on our RedHat 7 system (both installed from source) with
      our N310. I have configured the system as explained here <a href=3D"h=
ttp://files.ettus.com/manual/page_dpdk.html" target=3D"_blank">http://files=
.ettus.com/manual/page_dpdk.html</a>
      but when calling <br>
    </p>
    <p>uhd_usrp_probe --args
&quot;use_dpdk=3D1,mgmt_addr=3D192.168.12.1,addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,master_clock_rate=3D122.88e6,type=3Dn3xx&quot;<br>
    </p>
    <p>I am getting the following runtime error (all the way at the
      bottom):</p>
    [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
    4.8.5-39); Boost_106900; UHD_3.15.0.0-0-g4e06022c<br>
    EAL: Detected 10 lcore(s)<br>
    EAL: No free hugepages reported in hugepages-1048576kB<br>
    EAL: Probing VFIO support...<br>
    EAL: VFIO support initialized<br>
    EAL: PCI device 0000:00:19.0 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:153a net_e1000_em<br>
    EAL: PCI device 0000:01:00.0 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.1 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL:=C2=A0=C2=A0 using IOMMU type 1 (Type 1)<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: PCI device 0000:01:00.2 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.3 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: Waiting for links to come up...<br>
    EAL: Init DONE!<br>
    EAL: Starting I/O threads!<br>
    [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.12.1,type=3Dn3xx,product=3Dn310,serial=3D31641BC,claime=
d=3DFalse,use_dpdk=3D1,addr=3D192.168.10.2,second_addr=3D192.168.20.2,maste=
r_clock_rate=3D122.88e6<br>
    [INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=3D192.168.12.1,product=3Dn310,master_clock_rate=3D122.88e6,secon=
d_addr=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Din=
ternal&#39;.<br>
    <font color=3D"#ff0000">EAL: Please set IPv4 address for port 0 before
      opening socket<br>
      [ERROR] [MPMD] Failure during block enumeration: AssertionError:
      _rx_sock !=3D nullptr<br>
      =C2=A0 in
      uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
      uhd::transport::uhd_dpdk_ctx&amp;, unsigned int, const
      string&amp;, const string&amp;, const string&amp;, const
      uhd::transport::zero_copy_xport_params&amp;)</font><br>
    <p>I am also copying the output of &quot;dpdk-devbind=C2=A0 --status&qu=
ot; which
      shows that the two interfaces connected to the USRP use the
      vfio-pci driver for DPDK<br>
    </p>
    <p>Network devices using DPDK-compatible driver<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
      0000:01:00.1 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      drv=3Dvfio-pci unused=3Di40e<br>
      0000:01:00.3 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      drv=3Dvfio-pci unused=3Di40e<br>
      <br>
      Network devices using kernel driver<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
      0000:00:19.0 &#39;Ethernet Connection I217-LM 153a&#39; if=3Denp0s25
      drv=3De1000e unused=3Dvfio-pci *Active*<br>
      0000:01:00.0 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      if=3Dp1p1 drv=3Di40e unused=3Dvfio-pci <br>
      0000:01:00.2 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      if=3Dp1p3 drv=3Di40e unused=3Dvfio-pci <br>
      <br>
    </p>
    <p>What surprises me is that in the output of the uhd_usrp_probe, it
      does not say it is using the driver for DPDK. any ideas what could
      be wrong?</p>
    <p>Florian.<br>
    </p>
    <div>-- <br>
     =20
     =20
      Follow us on <a href=3D"https://plus.google.com/+OpenairinterfaceOrg"=
 target=3D"_blank">Google+</a>,
      <a href=3D"https://www.linkedin.com/company/openairinterface" target=
=3D"_blank">LinkedIn</a>,
      or <a href=3D"https://twitter.com/osalliance5g" target=3D"_blank">Twi=
tter</a>!<br>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bece5c059b4210ca--


--===============0562718411084205108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0562718411084205108==--

