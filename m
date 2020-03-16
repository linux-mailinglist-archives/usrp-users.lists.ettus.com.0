Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDCB1872F9
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2020 20:04:20 +0100 (CET)
Received: from [::1] (port=45240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jDv26-00060n-5u; Mon, 16 Mar 2020 15:04:14 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:46449)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jDv23-0005qe-1U
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 15:04:11 -0400
Received: by mail-qv1-f44.google.com with SMTP id m2so9455026qvu.13
 for <usrp-users@lists.ettus.com>; Mon, 16 Mar 2020 12:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=1VpEjiIvJvqpPJY5t/q5t36flbP1vLFcfzGOOgQbJms=;
 b=qJGHkTjGy1SwBZRQntmqh8yVelVovt8odQPjWuYGQPKsVNbYy6U30belX6Ppfudmb/
 Vr8Ctyy6vp42qk32ce+bPHTm4N7OJDBHDHt81fUxjwSgirikzgXs5ZodvcSQY4FwTTLK
 PMHenOdGnTNiWexUq+UpWjrruJnT7TmYArW26iOUwoNVxCRJxmvfGq+LlBifrq2RxUpI
 p+vXtCN0TN/ubvd8tgDAk7arTXSZ1B5c7yz2pDEpbZJO64RN0yfmkbPrRK1wGBIImwbS
 jyRh81KtNKh4p/i+3j3D2yrDtI7M7pdRvPANPaH4I8bC6P+ulnZMCwin6Qn3lI9DwgFn
 fj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=1VpEjiIvJvqpPJY5t/q5t36flbP1vLFcfzGOOgQbJms=;
 b=i9fr5g8uE49gYRIq2HkZri1rNZ3X7NMUsevuyQfkR82CZJBwvMyIYexUl3re1aqiWC
 8TW14V1oOaBy4A6Tp4gE8l7hIYST/YV8vjB8Q+IxPhpeMrKYtzG5NrjV7bxnycB1DEPX
 cAje/rdZLP0KyhHSFulFNaDxWIYONf5K46t8oPsYWufTJBo8afi9WJo5bAdpFMn/Ul7r
 NaLXUuakEc8LlSh2M2CtZZK2OkPAZ+cXsPKklgkHx49fj45SJgeSKyraFbU6pCO2TSub
 ftMObpdGHpLW3lVPhVDuq1kykzuMPAT7nXGtCjKhGtjiNjx3tAFY4oczLYcMxF4Sa2cy
 BHlQ==
X-Gm-Message-State: ANhLgQ1Rs+1W+aCqPlHDfkwdwhqW7ho8WyDlFWcjopUh+GnUTyBHeSld
 SuqzQ1zhS6bszFNqYS+hhtqQWyBg0PCqLQ/VuLBsvQ==
X-Google-Smtp-Source: ADFU+vsWzsTXqS7/GX13+zox40msw4Pzy/gxqLUSxQjzouo9/fZX1YkmAnh/0yu6lGn7otbQCVaOcGnCTrYjLHQN1Zk=
X-Received: by 2002:a0c:bf05:: with SMTP id m5mr1323039qvi.26.1584385410250;
 Mon, 16 Mar 2020 12:03:30 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 17 Mar 2020 03:03:19 +0800
Message-ID: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Using DPDK with AQC107
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
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============2594357381710681026=="
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

--===============2594357381710681026==
Content-Type: multipart/alternative; boundary="00000000000090bbf905a0fd79bb"

--00000000000090bbf905a0fd79bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I am trying to connect my notebook to X310 with a thunderbolt 3 to
10GNBase-T module, which has a AQC107 chirp.
The notebook can find the X310 without DPDK. But it could not find the
device with DPDK. Is there any suggestion?

UHD Version: 4.0, the master branch.
DPDK: 18.11 (supporting Aquantia=E2=80=99s AQtion family of chipsets:
AQC107/AQC108/AQC109 )
Ubuntu: 18.04

root@sdr:~# dpdk-devbind --status-dev net
Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:3c:00.0 'AQC107 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion]
87b1' drv=3Dvfio-pci unused=3Datlantic
Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:00:1f.6 'Ethernet Connection (7) I219-LM 15bb' if=3Deno1 drv=3De1000e
unused=3Dvfio-pci *Active*
Other Network devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:6f:00.0 'Device 2723' unused=3Dvfio-pci

root@sdr:~# uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.60.2
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_4.0.0.0-505-g1393553d
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
EAL:   probe driver: 1d6a:87b1 net_atlantic
EAL:   using IOMMU type 1 (Type 1)
[ERROR] [DPDK] Could not find route to destination address 192.168.60.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.60.2
No UHD Devices Found
Device with port_id=3D0 already stopped

Best regards,
Damon

--00000000000090bbf905a0fd79bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<br><br>I am trying to connect my notebook to =
X310 with a thunderbolt 3 to 10GNBase-T module, which has a AQC107 chirp. <=
br>The notebook can find the X310 without DPDK. But it could not find the d=
evice with DPDK. Is there any suggestion?<br><br>UHD Version: 4.0, the mast=
er branch.<br>DPDK: 18.11 (supporting Aquantia=E2=80=99s AQtion family of c=
hipsets: AQC107/AQC108/AQC109 )<br>Ubuntu: 18.04<br><br>root@sdr:~# dpdk-de=
vbind --status-dev net<br>Network devices using DPDK-compatible driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:3c:00.0 &=
#39;AQC107 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion] 87b1&#39; drv=
=3Dvfio-pci unused=3Datlantic<br>Network devices using kernel driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:1f.6 &#39;Ethernet Connection (7) I2=
19-LM 15bb&#39; if=3Deno1 drv=3De1000e unused=3Dvfio-pci *Active*<br>Other =
Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>0000:6f:00.0 &#39;Device 2723&#39; unused=3Dvfio-pci<br><br>ro=
ot@sdr:~# uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.60.2<br>[IN=
FO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_4.0.0.0-505-g1393=
553d<br>EAL: Detected 12 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Mul=
ti-process socket /var/run/dpdk/rte/mp_socket<br>EAL: No free hugepages rep=
orted in hugepages-1048576kB<br>EAL: Probing VFIO support...<br>EAL: VFIO s=
upport initialized<br>EAL: PCI device 0000:00:1f.6 on NUMA socket -1<br>EAL=
: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 808=
6:15bb net_e1000_em<br>EAL: PCI device 0000:3c:00.0 on NUMA socket -1<br>EA=
L: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 1d=
6a:87b1 net_atlantic<br>EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>[ERROR] =
[DPDK] Could not find route to destination address 192.168.60.2<br>[ERROR] =
[X300] X300 Network discovery error RuntimeError: DPDK: Could not find rout=
e to destination address 192.168.60.2<br>No UHD Devices Found<br>Device wit=
h port_id=3D0 already stopped<br><br>Best regards,<br>Damon<br></div>

--00000000000090bbf905a0fd79bb--


--===============2594357381710681026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2594357381710681026==--

