Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC95136094
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 19:55:12 +0100 (CET)
Received: from [::1] (port=50532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipcxX-0000Ds-JP; Thu, 09 Jan 2020 13:55:07 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:42829)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipcxT-00009R-F9
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 13:55:03 -0500
Received: by mail-lj1-f182.google.com with SMTP id y4so8354797ljj.9
 for <usrp-users@lists.ettus.com>; Thu, 09 Jan 2020 10:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q7NHAU/0T8HbEbos1DCAcfCeplp884wxr4WW8E4PfwU=;
 b=w2ue9qRUhdQB9V02+ph0UCq6im1VukT6CzmDje367ZLFhb1fd5Cq6cyuJhaOGhGmUi
 y1B+xPafzo0t59w7YEVso7A/Ia9PdfjPOMvV/Ud5QP11jLq5AVjHW7vP85g6uV8CfLk3
 eoHh2EMrpb684bwz+1ebbwz/1fs6WKUDf9qqQ3wqs0QrZO3z1HR12AfSLta1pNhJWkTw
 kbSuJQC8LnAM9gl2qpxHcPj00EK8XyEjwkbPlYRLSmaslD5zEz3AHkyURKQChi0rBWH9
 MSLzj9/08vdGamnkYGPifNG4gvWY3EaPXh/wKBgn3VCwPjhEQzIU+YysJ2eWiUKIk8/4
 Y1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q7NHAU/0T8HbEbos1DCAcfCeplp884wxr4WW8E4PfwU=;
 b=O1VeZ2ob/8jZB0UOMvhnJH6L1FFkSVnEdG6eRm8l+Th/q0AL2jQyQksdeSvFSzDogq
 cGgn24Nj4E00OlmledtEk4ISkuqYOMtdp1UsInTw90tj5vU//g/72tWoqPK6AA/TWOlg
 n8pVJiA9f88b3pMRAXNAPe+yxhilbhpWG38t/lCZRB8UXg+VnSzSKZgjA4EOMSgKJ8UT
 zCTL5PWKq47XnVcHlaZ3WwvRoGzkgEB8Y/k9ydfeKyJcv75BFRSN44fcFQeUkXySed3I
 UXI+C9WzTJgbLlvEUdV9zvZFY2j6ljUazXTYTyV9sugnLP5aSebyh5ZMt4+0GNcA41zF
 vYEg==
X-Gm-Message-State: APjAAAWNYQFV36xqvVYZxpmpBdG+lt3uXbcjDm9ESZyoDmgva6wDOTt6
 TspJxeD75oXbfLmLUhtrlOYQJrk9aYUhU1tHw05C2xud
X-Google-Smtp-Source: APXvYqyUGmKIOmnJodU+/3meU0ADVTkfbzvjbgMXN/IYNjIX75LynG01XdKoNe/divWx5WwytXzWyLlwPLBLVg/6r9k=
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr7436273ljj.97.1578596062078;
 Thu, 09 Jan 2020 10:54:22 -0800 (PST)
MIME-Version: 1.0
References: <CAFzRrg21Lsi3TqA7GeWQ9fo=dORm3o69WU-JfGmR6SicduCNdw@mail.gmail.com>
 <CAFzRrg0mKNMQUO9+vd_b8tmxxi04bYX4+36F9hTkb5z=TgsGgQ@mail.gmail.com>
In-Reply-To: <CAFzRrg0mKNMQUO9+vd_b8tmxxi04bYX4+36F9hTkb5z=TgsGgQ@mail.gmail.com>
Date: Thu, 9 Jan 2020 12:54:10 -0600
Message-ID: <CANf970ZJoKF549cnzgwkHH0NwK+O1twKhM2OdxL82Th89=JPSg@mail.gmail.com>
To: akin soysal <akinsoysal@gmail.com>
Subject: Re: [USRP-users] Fwd: dpdk-test does not work
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
Content-Type: multipart/mixed; boundary="===============7695671448922384813=="
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

--===============7695671448922384813==
Content-Type: multipart/alternative; boundary="000000000000864bd5059bb98948"

--000000000000864bd5059bb98948
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Akin,

I'd recommend you check out our DPDK setup guide - hot off the presses:

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

Sam Reiter
Ettus Research


On Wed, Jan 8, 2020 at 10:52 PM akin soysal via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> ---------- Forwarded message ---------
> G=C3=B6nderen: akin soysal <akinsoysal@gmail.com>
> Date: 8 Oca 2020 =C3=87ar 15:22
> Subject: dpdk-test does not work
> To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
>
>
> Dear all,
>
> We have a USRP X310 setup and we are trying to make the
> UHD_3.15.0.0-0-g4e06022c driver work. I have added a file under
> /etc/uhd/uhd.conf and it is attached to this email.
>
> I am not sure about the dpdk-mac and dpdk-ipv4 addresses, what are they
> used for?
>
> I am trying to make the dpdk-test work but I am experiencing problems wit=
h
> setting of ipv4.
>
> -----
> sudo ./dpdk_test
> EAL: Detected 18 lcore(s)
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:05:00.0 on NUMA socket 0
> EAL:   probe driver: 8086:1533 net_e1000_igb
> EAL: PCI device 0000:65:00.0 on NUMA socket 0
> EAL:   probe driver: 8086:1557 net_ixgbe
> EAL:   using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: Waiting for links to come up...
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_105800; UHD_3.15.0.0-0-g4e06022c
> EAL: Init DONE!
> EAL: Starting I/O threads!
> terminate called after throwing an instance of 'uhd::assertion_error'
>   what():  AssertionError: status =3D=3D 0
>   in std::string get_ipv4_addr(unsigned int)
>   at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpdk_test.cpp:229
>
> Aborted
> -----
>
> What should be the uhd-dpdk arguments for this to run? It seems like it
> does not even read the uhd.conf file.
>
> I am using DPDK dpdk-stable-17.11.9. I have also programmed my SFP+
> interface via dpdk-devbind.py as shown below.
>
> ----------
> sudo ./dpdk-devbind.py -s
>
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:65:00.0 '82599 10 Gigabit Network Connection 1557' drv=3Dvfio-pci
> unused=3Dixgbe
>
> Network devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:04:00.0 'AQC108 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion]
> d108' if=3Deth1 drv=3Datlantic unused=3Dvfio-pci
> 0000:05:00.0 'I210 Gigabit Network Connection 1533' if=3Deno1 drv=3Digb
> unused=3Dvfio-pci *Active*
>
> Other Network devices
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Crypto devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Crypto devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Other Crypto devices
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Eventdev devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Eventdev devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Other Eventdev devices
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Mempool devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Mempool devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
>
> Other Mempool devices
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <none>
> ----------
>
> Thanks and regards,
> Ak=C4=B1n
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000864bd5059bb98948
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Akin,</div><div><br></div><div>I&#39;d recommend you =
check out our DPDK setup guide - hot off the presses:</div><div><br></div><=
div><a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD">http=
s://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a></div><div><br></div>=
<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br><div>Ett=
us Research<br></div></div></div></div></div></div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 8,=
 2020 at 10:52 PM akin soysal via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div><br><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">--------=
-- Forwarded message ---------<br>G=C3=B6nderen: <strong class=3D"gmail_sen=
dername" dir=3D"auto">akin soysal</strong> <span dir=3D"auto">&lt;<a href=
=3D"mailto:akinsoysal@gmail.com" target=3D"_blank">akinsoysal@gmail.com</a>=
&gt;</span><br>Date: 8 Oca 2020 =C3=87ar 15:22<br>Subject: dpdk-test does n=
ot work<br>To: <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br></div><br=
><br><div dir=3D"ltr"><div>Dear all,</div><div><br></div><div>We have a USR=
P X310 setup and we are trying to make the UHD_3.15.0.0-0-g4e06022c driver =
work. I have added a file under /etc/uhd/uhd.conf and it is attached to thi=
s email.</div><div><br></div><div>I am not sure about the dpdk-mac and dpdk=
-ipv4 addresses, what are they used for?</div><div><br></div><div>I am tryi=
ng to make the dpdk-test work but I am experiencing problems with setting o=
f ipv4.</div><div><br></div><div>-----<br></div><div>sudo ./dpdk_test<br>EA=
L: Detected 18 lcore(s)<br>EAL: No free hugepages reported in hugepages-104=
8576kB<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br>=
EAL: PCI device 0000:05:00.0 on NUMA socket 0<br>EAL: =C2=A0 probe driver: =
8086:1533 net_e1000_igb<br>EAL: PCI device 0000:65:00.0 on NUMA socket 0<br=
>EAL: =C2=A0 probe driver: 8086:1557 net_ixgbe<br>EAL: =C2=A0 using IOMMU t=
ype 1 (Type 1)<br>EAL: Ignore mapping IO port bar(2)<br>EAL: Waiting for li=
nks to come up...<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Re=
d Hat 4.8.5-39); Boost_105800; UHD_3.15.0.0-0-g4e06022c<br>EAL: Init DONE!<=
br>EAL: Starting I/O threads!<br>terminate called after throwing an instanc=
e of &#39;uhd::assertion_error&#39;<br>=C2=A0 what(): =C2=A0AssertionError:=
 status =3D=3D 0<br>=C2=A0 in std::string get_ipv4_addr(unsigned int)<br>=
=C2=A0 at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpdk_test.cpp:229<br><=
br>Aborted</div><div>-----</div><div><br></div><div>What should be the uhd-=
dpdk arguments for this to run? It seems like it does not even read the uhd=
.conf file.</div><div><br></div><div>I am using DPDK dpdk-stable-17.11.9. I=
 have also programmed my SFP+ interface via dpdk-devbind.py as shown below.=
<br></div><div><br></div><div>----------</div><div>sudo ./dpdk-devbind.py -=
s<br><br>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:65:00.0 &#39;82599 10 Gigab=
it Network Connection 1557&#39; drv=3Dvfio-pci unused=3Dixgbe<br><br>Networ=
k devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:04:=
00.0 &#39;AQC108 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion] d108&#39=
; if=3Deth1 drv=3Datlantic unused=3Dvfio-pci <br>0000:05:00.0 &#39;I210 Gig=
abit Network Connection 1533&#39; if=3Deno1 drv=3Digb unused=3Dvfio-pci *Ac=
tive*<br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPD=
K-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>=
Eventdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev device=
s using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DP=
DK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none=
&gt;</div><div>----------<br></div><div><br></div><div>Thanks and regards,<=
/div><div>Ak=C4=B1n<br></div></div>
</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000864bd5059bb98948--


--===============7695671448922384813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7695671448922384813==--

