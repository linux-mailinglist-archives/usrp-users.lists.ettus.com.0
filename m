Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 622952231D2
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jul 2020 05:54:10 +0200 (CEST)
Received: from [::1] (port=49354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jwHRn-0004Ue-3j; Thu, 16 Jul 2020 23:54:07 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:37190)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jwHRj-0004Ot-F1
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 23:54:03 -0400
Received: by mail-oi1-f177.google.com with SMTP id 12so6942435oir.4
 for <usrp-users@lists.ettus.com>; Thu, 16 Jul 2020 20:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CEwlrwiTVzOieSRJQerhPGS75OBtAl5csY28c5IOPWg=;
 b=UcUCqCni60llxdluQjByoqVuqDsQ/DsG13rFJwA1YOsDZOPBahx2PWTO2hDem4DMfa
 PPbn0vurwnxkq6Lr7osQZ5L69BPI1kz5wSevLE4u5e/ySKBJ5spqxFJr7X2E2RFL4Tqp
 LyJhO5pmiy71QHb3CyyvGApNVjPw1CpcQmfdpcQP3KZqL5/oB+LgyKVGg+umlYNK71wn
 75E7ZxLeneLM1gjEpqwJ9N9mGm40pgOlp1gkFefIXVfz+ftyGxABJRbNkH1cAFwUfgVx
 AoFojkmCEYxKiiQvBer+P3JB7gMH0/GaOuu7ZzeMVZ5/iXi2oG0YGjRjirE4izQD7d+c
 YBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CEwlrwiTVzOieSRJQerhPGS75OBtAl5csY28c5IOPWg=;
 b=eUAlUM3JKMW2SH4h65GzR+Kiz1nqsxTz/RkEooLLrkts3IUwPgsziq/mRTeBuhTyWM
 Gjwqw60OK4aesfwQvON82tqFhtm9Qp5btzeNcW0TYNa1Q6D74VISDPdq5x4CjgSpxz4b
 Xi7PLhPWeKXNUm+zEmL6vjCvLi8ULw3coodmCFjHEWYct/YCaD9TqVY5ufaP7pKuuyTc
 2btmH1FA1i8fvTLSacfwBAaDhADZmPISPUo2d7U2M8GNpWVGN0BYXetog7g/zu72OKHm
 WjWHvGzFhwqd4MoaaGhOVDq6Gd7jkFEI1FxyYbl6xAwlJEhvCWzU6uB9y9MU83vSd5vW
 /ZOQ==
X-Gm-Message-State: AOAM530ORIW/Iji2jGcKjrxSfUK8Uu9DA4POA0zZWp0/hgf1JmtwubE5
 6bdb1n1R8VF5hpl3aapuwHd9qeftjElXydw9V+QbYQ==
X-Google-Smtp-Source: ABdhPJwFq//st17sRXnrpnwQvlOpffX0mDTUPWJ9+/DNWJaAJz4CZg9YZ+IZMi35kbDUlw0bcoYCJW6zgouJMMYPZ0M=
X-Received: by 2002:aca:e1d6:: with SMTP id y205mr6164294oig.179.1594958002681; 
 Thu, 16 Jul 2020 20:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACxOa3bQJTiSnDK-W_U+Fj3=o8m45MZDMfpcVyNX6PJcqtBACQ@mail.gmail.com>
 <5F110C1D.8080402@gmail.com>
In-Reply-To: <5F110C1D.8080402@gmail.com>
Date: Thu, 16 Jul 2020 22:53:11 -0500
Message-ID: <CACxOa3aR6RqwsBmjyS1VKbmrGDhhYtOZC0TwC-4Unk4mU-PRZQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] uhd_usrp_probe to N310 fails with DPDK
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
Content-Type: multipart/mixed; boundary="===============6454007059665878414=="
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

--===============6454007059665878414==
Content-Type: multipart/alternative; boundary="0000000000002ea83705aa9b1943"

--0000000000002ea83705aa9b1943
Content-Type: text/plain; charset="UTF-8"

Fixed the issue!

I had a small syntax error in my uhd.conf file (typo) and it didn't throw a
parsing error. Fixed that and it came up as expected. Basically the IP
address of the 10GigE wasn't properly set, so it failed.

Thank you,
Colby

On Thu, Jul 16, 2020 at 9:26 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/16/2020 05:41 PM, Colby Boyer via USRP-users wrote:
> > Hi All,
> >
> > I followed the flow listed here
> > https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD with UHD 3.15
> > and DPDK 17.11, but I am unable to run uhd_usrp_probe, it fails. At
> > the end of the email the result of uhd_usrp_probe is attached.
> >
> > Running Ubuntu 18.04. Installed UHD from source and installed dpdk
> > from apt-get.
> >
> > The app note worked mostly as expected except for the sudo
> > dpdk-devbind --bind=vfio=pci 02:00.0 commands. However, this failed as
> > it failed to bind to the device. I had to run sudo dpdk-devbind
> > --bind=vfio-pci enp2s0f0 instead, and that worked.
> >
> > Any suggestions on what to try next?
> >
> > Thanks
> > Colby
> >
> > root@genxcomm-tower:~# uhd_usrp_probe
> >  --args="use_dpdk=1,mgmt_addr=172.26.60.1,addr=192.168.20.2,type=n3xx"
> > [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> > UHD_3.15.0.v315-0-gaea0e2de
> > EAL: Detected 8 lcore(s)
> > EAL: No free hugepages reported in hugepages-1048576kB
> > EAL: Probing VFIO support...
> > EAL: VFIO support initialized
> > EAL: PCI device 0000:00:19.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:15a1 net_e1000_em
> > EAL: PCI device 0000:02:00.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:10fb net_ixgbe
> > EAL:   using IOMMU type 1 (Type 1)
> > EAL: Ignore mapping IO port bar(2)
> > EAL: PCI device 0000:02:00.1 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:10fb net_ixgbe
> > EAL: Ignore mapping IO port bar(2)
> > EAL: PCI device 0000:06:00.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:10d3 net_e1000_em
> > EAL: Waiting for links to come up...
> > EAL: Init DONE!
> > EAL: Starting I/O threads!
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
> mgmt_addr=172.26.60.1,type=n3xx,product=n310,serial=31D90DA,claimed=False,use_dpdk=1,addr=192.168.20.2
> > [INFO] [MPM.PeriphManager] init() called with device args
> >
> `product=n310,use_dpdk=1,clock_source=internal,mgmt_addr=172.26.60.1,time_source=internal'.
> > EAL: Please set IPv4 address for port 0 before opening socket
> > [ERROR] [MPMD] Failure during block enumeration: AssertionError:
> > _rx_sock != nullptr
> >   in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
> > uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const
> > string&, const string&, const uhd::transport::zero_copy_xport_params&)
> >   at /home/genxcomm/repo/uhd/host/lib/transport/dpdk_zero_copy.cpp:355
> >
> > Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
> >
> I haven't run DPDK in my lab so, I'm guessing here.
>
> It's complaining that there's no IP address associated with the
> interface, which will almost certainly cause downstream problems.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002ea83705aa9b1943
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Fixed the issue!</div><div><br></div><div>I had a sma=
ll syntax error in my uhd.conf file (typo) and it didn&#39;t throw a parsin=
g error. Fixed that and it came up as expected. Basically the IP address of=
 the 10GigE wasn&#39;t properly set, so it failed. <br></div><div><br></div=
><div>Thank you,</div><div>Colby<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 16, 2020 at 9:26 PM M=
arcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 07/16/2020 05:41 PM, Colby Boyer via US=
RP-users wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I followed the flow listed here <br>
&gt; <a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD" rel=
=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Getting_Started_with=
_DPDK_and_UHD</a> with UHD 3.15 <br>
&gt; and DPDK 17.11, but I am unable to run uhd_usrp_probe, it fails. At <b=
r>
&gt; the end of the email the result of uhd_usrp_probe is attached.<br>
&gt;<br>
&gt; Running Ubuntu 18.04. Installed UHD from source and installed dpdk <br=
>
&gt; from apt-get.<br>
&gt;<br>
&gt; The app note worked mostly as expected except for the sudo <br>
&gt; dpdk-devbind --bind=3Dvfio=3Dpci 02:00.0 commands. However, this faile=
d as <br>
&gt; it failed to bind to the device. I had to run sudo dpdk-devbind <br>
&gt; --bind=3Dvfio-pci enp2s0f0 instead, and that worked.<br>
&gt;<br>
&gt; Any suggestions on what to try next?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Colby<br>
&gt;<br>
&gt; root@genxcomm-tower:~# uhd_usrp_probe <br>
&gt;=C2=A0 --args=3D&quot;use_dpdk=3D1,mgmt_addr=3D172.26.60.1,addr=3D192.1=
68.20.2,type=3Dn3xx&quot;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; <br>
&gt; UHD_3.15.0.v315-0-gaea0e2de<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:00:19.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:15a1 net_e1000_em<br>
&gt; EAL: PCI device 0000:02:00.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe<br>
&gt; EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)<br>
&gt; EAL: Ignore mapping IO port bar(2)<br>
&gt; EAL: PCI device 0000:02:00.1 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe<br>
&gt; EAL: Ignore mapping IO port bar(2)<br>
&gt; EAL: PCI device 0000:06:00.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:10d3 net_e1000_em<br>
&gt; EAL: Waiting for links to come up...<br>
&gt; EAL: Init DONE!<br>
&gt; EAL: Starting I/O threads!<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
&gt; mgmt_addr=3D172.26.60.1,type=3Dn3xx,product=3Dn310,serial=3D31D90DA,cl=
aimed=3DFalse,use_dpdk=3D1,addr=3D192.168.20.2<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args <br>
&gt; `product=3Dn310,use_dpdk=3D1,clock_source=3Dinternal,mgmt_addr=3D172.2=
6.60.1,time_source=3Dinternal&#39;.<br>
&gt; EAL: Please set IPv4 address for port 0 before opening socket<br>
&gt; [ERROR] [MPMD] Failure during block enumeration: AssertionError: <br>
&gt; _rx_sock !=3D nullptr<br>
&gt;=C2=A0 =C2=A0in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_imp=
l(const <br>
&gt; uhd::transport::uhd_dpdk_ctx&amp;, unsigned int, const string&amp;, co=
nst <br>
&gt; string&amp;, const string&amp;, const uhd::transport::zero_copy_xport_=
params&amp;)<br>
&gt;=C2=A0 =C2=A0at /home/genxcomm/repo/uhd/host/lib/transport/dpdk_zero_co=
py.cpp:355<br>
&gt;<br>
&gt; Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
&gt;<br>
I haven&#39;t run DPDK in my lab so, I&#39;m guessing here.<br>
<br>
It&#39;s complaining that there&#39;s no IP address associated with the <br=
>
interface, which will almost certainly cause downstream problems.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002ea83705aa9b1943--


--===============6454007059665878414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6454007059665878414==--

