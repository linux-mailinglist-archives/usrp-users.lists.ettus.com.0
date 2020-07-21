Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E24252282F4
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 16:59:38 +0200 (CEST)
Received: from [::1] (port=40606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxtk1-0007kG-4W; Tue, 21 Jul 2020 10:59:37 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:41766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jxtjy-0007XX-0C
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 10:59:34 -0400
Received: by mail-ej1-f45.google.com with SMTP id w9so7826542ejc.8
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 07:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=30UnynqvsvkyfcZgs4lg+U432lAeVFRVQpwO9NmyMBs=;
 b=l5QaBfADlWxQV1L0oY5qbzUXpsTt35qHIOQWBAWg/5ocuTBPWgTbAMtG+FEzMwsGKo
 1/+r0FjrrQM0Y4jSUH/fHQDs1QiWQoQelDkMngNpR6LyBU1Cy4Szs6mGQneYB/Pvbg3W
 vnHyNt9mJoIPqwS3cfVrASSyTdBUcrJMdKusTPVPQHQ2KiZDO09Aj3f7dj2/6h+EuKt/
 T5zpymCYc2D05jS2C42RSbnWraT9yvayqR612gUNnO81fG+yxA7oHAgx4ZCK4grAf3s2
 dJEyS3mFn+Ig10ia+1N4jhwgVcnnhCcpzY6X5wF06gHnD9NLVat68aHhmLOKm8ba2DHY
 6uEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=30UnynqvsvkyfcZgs4lg+U432lAeVFRVQpwO9NmyMBs=;
 b=e4x026rZvuh2RWFR2pZrSTBA/xAzpNDJqE+am4qAfyb7vaUlvtiFYr/St8xVkdn9ME
 33T1Oc2ZmKDhMyKkDpXzTZ880U/gmUID1DuqtnMz1kIendGLGZVS/yZiLCXepBUbH8+q
 gGxDFTi2aM3sRjm3bojr8h54rMwvqVFVrNo2LoimPi5dM2xfB/tsiKmPDRKUjKBp9ajI
 rQ+1edNyS1nx8xmlDYGHPAdPOJH6ifPgguqV8QTIMaarn5eBYCm4uQ0YCDcNwApgdlju
 hYG1KziAvNi5TQPq+o5t1ptGEBCT9ym6WgsmIyB+cJdM8z4PtWvjgok1UFY5P20yw9Fn
 EQIQ==
X-Gm-Message-State: AOAM531JVW9Gs6wFW5jej/6pLuNZ16dQ0ZpgfOf8t4PORsaGUWIE5WiH
 Bmrdpa9uZDNIPNfou0wyopFxIoj6zCIvxhpTF7swX2fM2as=
X-Google-Smtp-Source: ABdhPJyU7QeE6053HUFbIIP9IBV6Z5qe334lX5aMtOvljVlapVIBRIsNGIAC3N/6Ed7kuB9tpTc9NvNK9LWGIUx4bQc=
X-Received: by 2002:a17:906:71d4:: with SMTP id
 i20mr27328570ejk.533.1595343532495; 
 Tue, 21 Jul 2020 07:58:52 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 21 Jul 2020 17:58:41 +0300
Message-ID: <CAMVZM+9M6goRUidxkJ70r+fJW_Qj0FMotYWtdSaV6gzQ12F1Rw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] iperf3 speed test fails between usrp n310 and host
 computer
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
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============8762147837192352316=="
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

--===============8762147837192352316==
Content-Type: multipart/alternative; boundary="0000000000008c9a4305aaf4dc1c"

--0000000000008c9a4305aaf4dc1c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

i installed the usrp n310 following the instructions from
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide

I have the same uhd between the usrp and the host

output of  "uhd_find_devices"
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.HEAD-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31B4030
    addr: 192.168.20.2
    claimed: False
    mgmt_addr: 192.168.10.2 <-- sfp0
    mgmt_addr: 192.168.20.2 <-- sfp1
    mgmt_addr: 192.168.40.70  <-- this is from the dhcp
    product: n310
    type: n3xx


I can ping and ssh connect through any interface.
The uhd_usrp_probe command also appears to be correct also.



The host has a network adapter x520-da2 with two sfp+ ports, one of which
is configured to be connected with the sfp 1 port of the usrp at 10G,
whereas i use another port (on a DIFFERENT NIC on the host) at 1G to
connect to sfp port 0 of the usrp.
For the fpga image as indicated by the quide i used: uhd_image_loader
--args "type=3Dn3xx,addr=3D<N3xx_IP_ADDR>,fpga=3DHG" to have 1G for sfp 0 a=
nd 10G
for the sfp 1.

I am trying to test the speed limit between the host and the host with
iperf3.

1--- For the sfp0 (1G port) the speed is limited to about 200Mbps, which is
very low compared to the 1G port. I connect the host to the usrp with the 1
RJ45 =E2=80=93 SFP+ Adapter and the cat5e ethernet cable that came with the
usrpn310. I should see a significantly
higher speed (close to 1G), correct?

2--- For the sfp1(10G port) the speed is a bit higher e.g, 300Mbps, but
after only a few seconds it crushes with the error: iperf3: error - control
socket has closed unexpectedly. I am not sure if the  problem is an iperf3
related error/bug or there is stg wrong with the general setup. After this
failure the connection over the sfp1 port is lost, i cannot run another
iper3 test again or ping to this port. I also trying ifconfig down/up but
it does not work. Only after reboot i can reuse sfp port 1/

Example test:
iperf3 -s
iperf3 -c 192.168.20.2  -P 20

any suggestions???

all the best,
Pavlos.

--0000000000008c9a4305aaf4dc1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><b=
r></div><div>i installed the usrp n310 following the instructions from <a h=
ref=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide"=
>https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a></d=
iv><div><br></div><div>I have the same uhd between the usrp and the host<br=
></div><div><br></div><div>output of=C2=A0 &quot;uhd_find_devices&quot;</di=
v><div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UH=
D_3.15.0.HEAD-0-gaea0e2de<br>----------------------------------------------=
----<br>-- UHD Device 0<br>------------------------------------------------=
--<br>Device Address:<br>=C2=A0 =C2=A0 serial: 31B4030<br>=C2=A0 =C2=A0 add=
r: 192.168.20.2<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgmt_addr:=
 192.168.10.2 &lt;-- sfp0<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.20.2 &lt;-- s=
fp1<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.40.70=C2=A0 &lt;-- this is from the=
 dhcp<br>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br></div><=
div><br></div><div><br></div><div>I can ping and ssh connect through any in=
terface. <br></div><div>The uhd_usrp_probe command also appears to be corre=
ct also.<br></div><div><br></div><div><br></div><div><br></div><div>The hos=
t has a network adapter x520-da2 with two sfp+ ports, one of which is confi=
gured to be connected with the sfp 1 port of the usrp at 10G, whereas i use=
 another port (on a DIFFERENT NIC on the host) at 1G to connect to sfp port=
 0 of the usrp.</div><div>For the fpga image as indicated by the quide i us=
ed: uhd_image_loader --args &quot;type=3Dn3xx,addr=3D&lt;N3xx_IP_ADDR&gt;,f=
pga=3DHG&quot; to have 1G for sfp 0 and 10G for the sfp 1.</div><div><br></=
div><div>I am trying to test the speed limit between the host and the host =
with iperf3.</div><div><br></div><div>1--- For the sfp0 (1G port) the speed=
 is limited to about 200Mbps, which is very low compared to the 1G port. I =
connect the host to the usrp with the 1 RJ45 =E2=80=93 SFP+ Adapter and the=
 cat5e ethernet cable that came with the usrpn310. I should see a significa=
ntly</div><div>higher speed (close to 1G), correct?<br></div><div><br></div=
><div>2--- For the sfp1(10G port) the speed is a bit higher e.g, 300Mbps, b=
ut after only a few seconds it crushes with the error: iperf3: error - cont=
rol socket has closed unexpectedly. I am not sure if the=C2=A0 problem is a=
n iperf3 related error/bug or there is stg wrong with the general setup. Af=
ter this failure the connection over the sfp1 port is lost, i cannot run an=
other iper3 test again or ping to this port. I also trying ifconfig down/up=
 but it does not work. Only after reboot i can reuse sfp port 1/<br></div><=
div><br></div><div>Example test:<br></div><div>iperf3 -s</div><div>iperf3 -=
c 192.168.20.2=C2=A0 -P 20<br></div><div><br></div><div>any suggestions???<=
/div><div><br></div><div>all the best,</div><div>Pavlos.<br></div><div><br>=
</div><div><br></div></div></div></div>

--0000000000008c9a4305aaf4dc1c--


--===============8762147837192352316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8762147837192352316==--

