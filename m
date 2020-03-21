Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8B418DF61
	for <lists+usrp-users@lfdr.de>; Sat, 21 Mar 2020 11:19:19 +0100 (CET)
Received: from [::1] (port=46756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFbDm-0002J5-Cu; Sat, 21 Mar 2020 06:19:14 -0400
Received: from mail-qv1-f67.google.com ([209.85.219.67]:42939)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jFbDi-0002Er-Mi
 for usrp-users@lists.ettus.com; Sat, 21 Mar 2020 06:19:10 -0400
Received: by mail-qv1-f67.google.com with SMTP id ca9so4486366qvb.9
 for <usrp-users@lists.ettus.com>; Sat, 21 Mar 2020 03:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PdZIDwrP/BtVbSQKVnfowcKmjLD5nH+yX/rPxUx/nT4=;
 b=QQzCBDHuESpDGMAXaIiiOCLZ5xVxdLc+F4mgnOBTsSsuJvoRmZvq6dZFP5XVWoKXgM
 JOVAoGUWWv00ra0AXBfQrsOdMFulSuHoGNbrVbrDMfI4Xo8GIiV7gZN4dpZ9EsFOcxIx
 ZxDz9dq4d6XG+6RDnfmx/UDjnLcGoazUomPi1El2/z9th1cZOnP5Q0121JP5VbP3P7xr
 rQlIJrHLAluu56cHGSC+0L607axFfz2EHysf1kpCSTWDJa1swE4qJzwKlcdCLuLOFdXm
 kqUrthwMeJZFECIFWFuQ1UaS4sSfM3vSHo1vbfSgeGjkls3Fs8zuMmvQpQuFQ/ehwxp6
 pcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PdZIDwrP/BtVbSQKVnfowcKmjLD5nH+yX/rPxUx/nT4=;
 b=h68LfHGxciK0lnmVM/NRIbGW4b/CjeC461BNg6mBDcupa2vXA0Ofnr+6r0GXZwP1ia
 ksx4AZKmVWV1qzpsAfoOencEEaNBCU0NwimQ3M+UhdXA9AEJOiYkIdAF3OZuOCrNykoW
 7i2MMQs6UrrXTy8H6muTXBnwnYlEtrMDYq8HSUuvgttuOJj30FLb4RxNHhVKDl8baYkr
 zOEkgbkTSw+GUdmFGg1LtvOOtG61jSxXte9u5vTxlcZ0ioYS08lez3ZLW3FN6EQM2jDH
 nvkQLitZ1ze0D3kbYclMh96Ev8qaoWeX4KEWuAqdVZT1fW97o8amMT8OsakCHM7kDJIp
 Uwtw==
X-Gm-Message-State: ANhLgQ1OcRPSZYzEvNE6iJzJprVGHwPY/lLcrhpMSVXU+NYqaNbIRdEJ
 algqHPqKclRuQtYh/4o02X92EIwmSBLWjJpibio+M6208kY=
X-Google-Smtp-Source: ADFU+vujkaZcy7Xkl1JLdZXMtwHe392FMlTDc1+UMPKGH0gRh+X7FNVey2DkwE5iDVSR4B55/77fN4PMzmmMUXq7O84=
X-Received: by 2002:ad4:4dc5:: with SMTP id cw5mr12342008qvb.109.1584785910188; 
 Sat, 21 Mar 2020 03:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
 <CACjmV_ktkM=3yLeeWuRs_cjwfj26ey=dvPqKa--boEZVPttJmg@mail.gmail.com>
 <8b1309b5-f22e-22e1-7430-af80f669c9b7@ettus.com>
In-Reply-To: <8b1309b5-f22e-22e1-7430-af80f669c9b7@ettus.com>
Date: Sat, 21 Mar 2020 18:18:19 +0800
Message-ID: <CACjmV_=o--0kxdUkSNxERT=j9a9iOT5HMeHi41H+fZNbhJhE0g@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] Using DPDK with AQC107
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5371319427506953887=="
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

--===============5371319427506953887==
Content-Type: multipart/alternative; boundary="00000000000038cd3305a15ab939"

--00000000000038cd3305a15ab939
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

No, it doesn't work.

damon@rssdr:~/.uhd$ sudo uhd_find_devices
--args=3Duse_dpdk=3D1,addr=3D192.168.60.2,type=3Dx300,dpdk_mac=3D24:5e:be:3=
5:ba:e8
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.0-531-g5fb585c3
EAL: Detected 12 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:1f.6 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:15bb net_e1000_em
EAL: PCI device 0000:3c:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 1d6a:80b1 net_atlantic
EAL:   using IOMMU type 1 (Type 1)
[ERROR] [DPDK] Could not find route to destination address 192.168.60.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.60.2
No UHD Devices Found
Device with port_id=3D0 already stopped

Best regards,
Damon

On Sat, 21 Mar 2020 at 04:25, Marcus M=C3=BCller <marcus.mueller@ettus.com>
wrote:

> Hi Damon,
>
> sorry, that wasn't my intention :( But let me make it better!
>
> My current guess is that UHD's DPDK transport gets confused and tries to
> use the wrong network card. Luckily, we can try to work around that:
>
> uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.60.2,dpdk_mac=3DXYZ
>
> where XYZ would be the same MAC you've used in your uhd config, i.e. the
> MAC address of the right network card. Does that help?
>
> Best regards,
> Marcus
>
> On 20.03.20 17:54, guowang qiu wrote:
> > Hi Marcus,
> >
> > Thank you for your reply. Since you foreget to copy the email to me, I
> > have to reply from my last email.
> > dpdk_ipv4 is set to 192.168.60.1/24 <http://192.168.60.1/24>, the ip
> > address of port 1 of X310 is set to 192.168.60.2.
> > dpdk_ipv4 =3D 192.168.60.1/24 <http://192.168.60.1/24>
> >
> > Best regards,
> > Damon
> >
> > guowang qiu <qiu.guowang007@gmail.com <mailto:qiu.guowang007@gmail.com>=
>
> > =E4=BA=8E2020=E5=B9=B43=E6=9C=8817=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=
=E5=8D=883:03=E5=86=99=E9=81=93=EF=BC=9A
> >
> >     Hi everyone,
> >
> >     I am trying to connect my notebook to X310 with a thunderbolt 3 to
> >     10GNBase-T module, which has a AQC107 chirp.
> >     The notebook can find the X310 without DPDK. But it could not find
> >     the device with DPDK. Is there any suggestion?
> >
> >     UHD Version: 4.0, the master branch.
> >     DPDK: 18.11 (supporting Aquantia=E2=80=99s AQtion family of chipset=
s:
> >     AQC107/AQC108/AQC109 )
> >     Ubuntu: 18.04
> >
> >     root@sdr:~# dpdk-devbind --status-dev net
> >     Network devices using DPDK-compatible driver
> >     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >     0000:3c:00.0 'AQC107 NBase-T/IEEE 802.3bz Ethernet Controller
> >     [AQtion] 87b1' drv=3Dvfio-pci unused=3Datlantic
> >     Network devices using kernel driver
> >     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >     0000:00:1f.6 'Ethernet Connection (7) I219-LM 15bb' if=3Deno1
> >     drv=3De1000e unused=3Dvfio-pci *Active*
> >     Other Network devices
> >     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >     0000:6f:00.0 'Device 2723' unused=3Dvfio-pci
> >
> >     root@sdr:~# uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.6=
0.2
> >     [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> >     UHD_4.0.0.0-505-g1393553d
> >     EAL: Detected 12 lcore(s)
> >     EAL: Detected 1 NUMA nodes
> >     EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> >     EAL: No free hugepages reported in hugepages-1048576kB
> >     EAL: Probing VFIO support...
> >     EAL: VFIO support initialized
> >     EAL: PCI device 0000:00:1f.6 on NUMA socket -1
> >     EAL:   Invalid NUMA socket, default to 0
> >     EAL:   probe driver: 8086:15bb net_e1000_em
> >     EAL: PCI device 0000:3c:00.0 on NUMA socket -1
> >     EAL:   Invalid NUMA socket, default to 0
> >     EAL:   probe driver: 1d6a:87b1 net_atlantic
> >     EAL:   using IOMMU type 1 (Type 1)
> >     [ERROR] [DPDK] Could not find route to destination address
> 192.168.60.2
> >     [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK:
> >     Could not find route to destination address 192.168.60.2
> >     No UHD Devices Found
> >     Device with port_id=3D0 already stopped
> >
> >     Best regards,
> >     Damon
> >
>

--00000000000038cd3305a15ab939
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<br><div><br></div><div>No, it doesn&#39;t work.=
</div><div><br></div><div>damon@rssdr:~/.uhd$ sudo uhd_find_devices --args=
=3Duse_dpdk=3D1,addr=3D192.168.60.2,type=3Dx300,dpdk_mac=3D24:5e:be:35:ba:e=
8<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-5=
31-g5fb585c3<br>EAL: Detected 12 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>=
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: No free hugep=
ages reported in hugepages-1048576kB<br>EAL: Probing VFIO support...<br>EAL=
: VFIO support initialized<br>EAL: PCI device 0000:00:1f.6 on NUMA socket -=
1<br>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe dri=
ver: 8086:15bb net_e1000_em<br>EAL: PCI device 0000:3c:00.0 on NUMA socket =
-1<br>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe dr=
iver: 1d6a:80b1 net_atlantic<br>EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>=
[ERROR] [DPDK] Could not find route to destination address 192.168.60.2<br>=
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not f=
ind route to destination address 192.168.60.2<br>No UHD Devices Found<br>De=
vice with port_id=3D0 already stopped<br></div><div><br></div><div>Best reg=
ards,</div><div>Damon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Sat, 21 Mar 2020 at 04:25, Marcus M=C3=BCller=
 &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
 Damon,<br>
<br>
sorry, that wasn&#39;t my intention :( But let me make it better!<br>
<br>
My current guess is that UHD&#39;s DPDK transport gets confused and tries t=
o<br>
use the wrong network card. Luckily, we can try to work around that:<br>
<br>
uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.60.2,dpdk_mac=3DXYZ<b=
r>
<br>
where XYZ would be the same MAC you&#39;ve used in your uhd config, i.e. th=
e<br>
MAC address of the right network card. Does that help?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 20.03.20 17:54, guowang qiu wrote:<br>
&gt; Hi Marcus,<br>
&gt; <br>
&gt; Thank you for your reply. Since you foreget to copy the email to me, I=
<br>
&gt; have to reply from my last email.<br>
&gt; dpdk_ipv4 is set to <a href=3D"http://192.168.60.1/24" rel=3D"noreferr=
er" target=3D"_blank">192.168.60.1/24</a> &lt;<a href=3D"http://192.168.60.=
1/24" rel=3D"noreferrer" target=3D"_blank">http://192.168.60.1/24</a>&gt;, =
the ip<br>
&gt; address of port 1 of X310 is set to 192.168.60.2.<br>
&gt; dpdk_ipv4 =3D <a href=3D"http://192.168.60.1/24" rel=3D"noreferrer" ta=
rget=3D"_blank">192.168.60.1/24</a> &lt;<a href=3D"http://192.168.60.1/24" =
rel=3D"noreferrer" target=3D"_blank">http://192.168.60.1/24</a>&gt;<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Damon<br>
&gt; <br>
&gt; guowang qiu &lt;<a href=3D"mailto:qiu.guowang007@gmail.com" target=3D"=
_blank">qiu.guowang007@gmail.com</a> &lt;mailto:<a href=3D"mailto:qiu.guowa=
ng007@gmail.com" target=3D"_blank">qiu.guowang007@gmail.com</a>&gt;&gt;<br>
&gt; =E4=BA=8E2020=E5=B9=B43=E6=9C=8817=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=
=8A=E5=8D=883:03=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi everyone,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I am trying to connect my notebook to X310 with a t=
hunderbolt 3 to<br>
&gt;=C2=A0 =C2=A0 =C2=A010GNBase-T module, which has a AQC107 chirp.<br>
&gt;=C2=A0 =C2=A0 =C2=A0The notebook can find the X310 without DPDK. But it=
 could not find<br>
&gt;=C2=A0 =C2=A0 =C2=A0the device with DPDK. Is there any suggestion?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD Version: 4.0, the master branch.<br>
&gt;=C2=A0 =C2=A0 =C2=A0DPDK: 18.11 (supporting Aquantia=E2=80=99s AQtion f=
amily of chipsets:<br>
&gt;=C2=A0 =C2=A0 =C2=A0AQC107/AQC108/AQC109 )<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ubuntu: 18.04<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0root@sdr:~# dpdk-devbind --status-dev net<br>
&gt;=C2=A0 =C2=A0 =C2=A0Network devices using DPDK-compatible driver<br>
&gt;=C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A00000:3c:00.0 &#39;AQC107 NBase-T/IEEE 802.3bz Ether=
net Controller<br>
&gt;=C2=A0 =C2=A0 =C2=A0[AQtion] 87b1&#39; drv=3Dvfio-pci unused=3Datlantic=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0Network devices using kernel driver<br>
&gt;=C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A00000:00:1f.6 &#39;Ethernet Connection (7) I219-LM 1=
5bb&#39; if=3Deno1<br>
&gt;=C2=A0 =C2=A0 =C2=A0drv=3De1000e unused=3Dvfio-pci *Active*<br>
&gt;=C2=A0 =C2=A0 =C2=A0Other Network devices<br>
&gt;=C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A00000:6f:00.0 &#39;Device 2723&#39; unused=3Dvfio-pc=
i<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0root@sdr:~# uhd_find_devices --args=3Duse_dpdk=3D1,=
addr=3D192.168.60.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_10=
6501;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_4.0.0.0-505-g1393553d<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: Detected 12 lcore(s)<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: Detected 1 NUMA nodes<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: Multi-process socket /var/run/dpdk/rte/mp_sock=
et<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: No free hugepages reported in hugepages-104857=
6kB<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: Probing VFIO support...<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: VFIO support initialized<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: PCI device 0000:00:1f.6 on NUMA socket -1<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: =C2=A0 Invalid NUMA socket, default to 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: =C2=A0 probe driver: 8086:15bb net_e1000_em<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: PCI device 0000:3c:00.0 on NUMA socket -1<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: =C2=A0 Invalid NUMA socket, default to 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: =C2=A0 probe driver: 1d6a:87b1 net_atlantic<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ERROR] [DPDK] Could not find route to destination =
address 192.168.60.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ERROR] [X300] X300 Network discovery error Runtime=
Error: DPDK:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Could not find route to destination address 192.168=
.60.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0No UHD Devices Found<br>
&gt;=C2=A0 =C2=A0 =C2=A0Device with port_id=3D0 already stopped<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Damon<br>
&gt; <br>
</blockquote></div>

--00000000000038cd3305a15ab939--


--===============5371319427506953887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5371319427506953887==--

