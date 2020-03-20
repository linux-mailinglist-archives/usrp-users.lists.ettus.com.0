Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDB318D50B
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 17:55:36 +0100 (CET)
Received: from [::1] (port=55198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFKvn-00024e-Ba; Fri, 20 Mar 2020 12:55:35 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:43371)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jFKvj-0001yB-Qq
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 12:55:31 -0400
Received: by mail-qt1-f196.google.com with SMTP id l13so5465914qtv.10
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 09:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RpRJr8FX+4BHYiCxrts3fJ8D93a2dH/Ree7zlxaJNFg=;
 b=EXr9HJ5Djm5iw005Xjx5iwCiUaiOK5jRjNVByAhMH4Pd7TNHs94XSa3aPldO5O6vRD
 joYiLfYZSOtn3lFWAnwkcNayD2gfCcCiuXWI57RF5iNR2xyNkHNTfUHW6DcRA/4yr8RG
 eC805zAG5V/iF013j1TIH1lf5F5pB8N0zEWz13cbokv1iTQzgjIRfz5kt+JapBEycs/W
 qEwumtQMpcb5nZPlKHK6QgOa226oMGiUHalSrpejgvGCawvpqbL7Xq/sh+7D7p6D5rSG
 cxfxw0/0xczf6/NUBQvTqvuEG1EB6MfjFzu5J06EusKc6Cm/V/o9SiF+OoDbfg7DNvQn
 7ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RpRJr8FX+4BHYiCxrts3fJ8D93a2dH/Ree7zlxaJNFg=;
 b=q5iT0QnPNfIinxhUYXbpRbqiWMuvtH3AeMto4OHRDjZtyXQWf0/qFxwXAKRJuzWzjC
 PvvefJIByTilABpjD5RLBoc0JNAD2g2j/RQvzOjtSGKHOtKY5i9WMvrRnFGqhj5wnNv/
 QitWBfWA8Soh31AVA3S37TiOSAQmMnHbOxzqbac2Wc7YUmqCJlvUkFUsC68oEx1vscHc
 ed61V887gDdkEJx1HqRM8PCp4xN2bqwQeqL7jQDMkOMvhMWG6m/rv3nKWgyfW+/S+M98
 XMYFFrDfBhBV6bVkKQtFZix4nWszN0OuvUFGF2IQD6QIIpjX+wvBM6yP2tgadX+fCbMA
 /TTg==
X-Gm-Message-State: ANhLgQ2xkPG0gdlDAt0kdTLX9s3Z7F6UTeRh/28zzjyJ80YUmYjnjOzj
 9eoLfVAP3rwk9FJdZvCtcXgCuifI7F8uX+03p5UqnxjrU8o=
X-Google-Smtp-Source: ADFU+vuxqMo/ZPOT0f/n3SjL/P8ALYmdpe/kBsk13pyR18Z6Sm0hXVDSSPosY6OgMfbwlluTQN4zUbNZRcGGhUCCSFM=
X-Received: by 2002:aed:37c4:: with SMTP id j62mr6771397qtb.279.1584723290913; 
 Fri, 20 Mar 2020 09:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
In-Reply-To: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
Date: Sat, 21 Mar 2020 00:54:38 +0800
Message-ID: <CACjmV_ktkM=3yLeeWuRs_cjwfj26ey=dvPqKa--boEZVPttJmg@mail.gmail.com>
To: usrp-users@lists.ettus.com
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
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============1539421643792448831=="
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

--===============1539421643792448831==
Content-Type: multipart/alternative; boundary="000000000000d27e1905a14c24be"

--000000000000d27e1905a14c24be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your reply. Since you foreget to copy the email to me, I have
to reply from my last email.
dpdk_ipv4 is set to 192.168.60.1/24, the ip address of port 1 of X310 is
set to 192.168.60.2.
dpdk_ipv4 =3D 192.168.60.1/24

Best regards,
Damon

guowang qiu <qiu.guowang007@gmail.com> =E4=BA=8E2020=E5=B9=B43=E6=9C=8817=
=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:03=E5=86=99=E9=81=93=EF=BC=
=9A

> Hi everyone,
>
> I am trying to connect my notebook to X310 with a thunderbolt 3 to
> 10GNBase-T module, which has a AQC107 chirp.
> The notebook can find the X310 without DPDK. But it could not find the
> device with DPDK. Is there any suggestion?
>
> UHD Version: 4.0, the master branch.
> DPDK: 18.11 (supporting Aquantia=E2=80=99s AQtion family of chipsets:
> AQC107/AQC108/AQC109 )
> Ubuntu: 18.04
>
> root@sdr:~# dpdk-devbind --status-dev net
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:3c:00.0 'AQC107 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion]
> 87b1' drv=3Dvfio-pci unused=3Datlantic
> Network devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:00:1f.6 'Ethernet Connection (7) I219-LM 15bb' if=3Deno1 drv=3De1000=
e
> unused=3Dvfio-pci *Active*
> Other Network devices
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:6f:00.0 'Device 2723' unused=3Dvfio-pci
>
> root@sdr:~# uhd_find_devices --args=3Duse_dpdk=3D1,addr=3D192.168.60.2
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_4.0.0.0-505-g1393553d
> EAL: Detected 12 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:00:1f.6 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:15bb net_e1000_em
> EAL: PCI device 0000:3c:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 1d6a:87b1 net_atlantic
> EAL:   using IOMMU type 1 (Type 1)
> [ERROR] [DPDK] Could not find route to destination address 192.168.60.2
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
> find route to destination address 192.168.60.2
> No UHD Devices Found
> Device with port_id=3D0 already stopped
>
> Best regards,
> Damon
>

--000000000000d27e1905a14c24be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>Thank you for you=
r reply. Since you foreget to copy the email to me, I have to reply from my=
 last email.</div><div>dpdk_ipv4 is set to <a href=3D"http://192.168.60.1/2=
4">192.168.60.1/24</a>, the ip address of port 1 of X310 is set to 192.168.=
60.2.<br></div><div>dpdk_ipv4 =3D <a href=3D"http://192.168.60.1/24">192.16=
8.60.1/24</a><br></div><div><br></div>Best regards,<div>Damon</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">guowang q=
iu &lt;<a href=3D"mailto:qiu.guowang007@gmail.com" target=3D"_blank">qiu.gu=
owang007@gmail.com</a>&gt; =E4=BA=8E2020=E5=B9=B43=E6=9C=8817=E6=97=A5=E5=
=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:03=E5=86=99=E9=81=93=EF=BC=9A<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi every=
one,<br><br>I am trying to connect my notebook to X310 with a thunderbolt 3=
 to 10GNBase-T module, which has a AQC107 chirp. <br>The notebook can find =
the X310 without DPDK. But it could not find the device with DPDK. Is there=
 any suggestion?<br><br>UHD Version: 4.0, the master branch.<br>DPDK: 18.11=
 (supporting Aquantia=E2=80=99s AQtion family of chipsets: AQC107/AQC108/AQ=
C109 )<br>Ubuntu: 18.04<br><br>root@sdr:~# dpdk-devbind --status-dev net<br=
>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:3c:00.0 &#39;AQC107 NBase-T/IEEE =
802.3bz Ethernet Controller [AQtion] 87b1&#39; drv=3Dvfio-pci unused=3Datla=
ntic<br>Network devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>0000:00:1f.6 &#39;Ethernet Connection (7) I219-LM 15bb&#39; if=3Deno=
1 drv=3De1000e unused=3Dvfio-pci *Active*<br>Other Network devices<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:6f:00.=
0 &#39;Device 2723&#39; unused=3Dvfio-pci<br><br>root@sdr:~# uhd_find_devic=
es --args=3Duse_dpdk=3D1,addr=3D192.168.60.2<br>[INFO] [UHD] linux; GNU C++=
 version 7.4.0; Boost_106501; UHD_4.0.0.0-505-g1393553d<br>EAL: Detected 12=
 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process socket /var/r=
un/dpdk/rte/mp_socket<br>EAL: No free hugepages reported in hugepages-10485=
76kB<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br>EA=
L: PCI device 0000:00:1f.6 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA so=
cket, default to 0<br>EAL: =C2=A0 probe driver: 8086:15bb net_e1000_em<br>E=
AL: PCI device 0000:3c:00.0 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA s=
ocket, default to 0<br>EAL: =C2=A0 probe driver: 1d6a:87b1 net_atlantic<br>=
EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>[ERROR] [DPDK] Could not find ro=
ute to destination address 192.168.60.2<br>[ERROR] [X300] X300 Network disc=
overy error RuntimeError: DPDK: Could not find route to destination address=
 192.168.60.2<br>No UHD Devices Found<br>Device with port_id=3D0 already st=
opped<br><br>Best regards,<br>Damon<br></div>
</blockquote></div></div></div>

--000000000000d27e1905a14c24be--


--===============1539421643792448831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1539421643792448831==--

