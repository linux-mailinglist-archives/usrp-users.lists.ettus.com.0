Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5223A2C29
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 14:56:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BB0F383FEA
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 08:56:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f03mAWs+";
	dkim-atps=neutral
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C53D383FE8
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 08:55:40 -0400 (EDT)
Received: by mail-il1-f175.google.com with SMTP id v13so1722624ilh.13
        for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 05:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=S5DYNoib3thTZr5qeMihzjiXF/wI12AHNjWSvqjrCCE=;
        b=f03mAWs+fFMB5g3gIDae6LH3te65CDHE9dwVn3MexwpffYHXFQ2oP3/hJ1xLfplMLy
         fXl6gRhJpET+MUB7KphzGfNubzclSklUbN+JQv9hIHX6sn1kWgeKPMayPuejdkrd+8k3
         9OtvgqkqjK196p69qrMpg3cq73Qx8i0tkzzkT7/S4u+8DTIKKs62xYKKM1kLml4B9/0/
         PKySiDaeeRsK013L2yxaBFTn9sRY6nw+LednxkYqwNcIBPL4d6gfI6NkgbEtHMTt3ydR
         bO6Wz6TOp8oQwqLKso9IYN4EHeKatKxPKsYJhvHMHOGttUoWlQ4S+ZmAMO3qzEXLG3U5
         88fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=S5DYNoib3thTZr5qeMihzjiXF/wI12AHNjWSvqjrCCE=;
        b=B5HjT6x46ejkdjkHGKGrbH+GXqeFfhy4KfTbiNrBdOqhP0C0eUkVWWXnKj0UUDPxqi
         FfcUjWpRtG4Vh0+LNwIefJSeVTExKCd+MgHOZ22MMjJ3iqsY0s9oOmJumIbO5ezBXi2w
         o3ee1654ATNsAAefwctV1hSCxo+2qw2uJGaRVczzlv8NjnF3M9z/XLvQYdw8S8GYORPE
         IBGsi/5I9k0RupkxBGV1L9IWvCrcqpxp2h4KXhk7VIJfQeQMBWS6nPrO/y2dYJBTIt/p
         /mIpDKdynZ16VCFDILGw9VZNKG5uUFAac8E21nRjw2vj9jvv2+D2pZyDFrdU29bMYWWe
         Z0hg==
X-Gm-Message-State: AOAM530I3dBkhkE2sWP44koRlr4b0GZ5+b4vHjxrcEDkvkU/Ljw7eEg1
	sEojFnn0uuY52sm1CHkJ5kNS+M8DpNa/QDsC2B4wavd8wZI=
X-Google-Smtp-Source: ABdhPJwvtr3u02CBqERsZq3rwUS4zRNtOH6J5nhUstd75AkgDCBkwWN46XhiY0eXqAdeX3ZFgxY4k8mg8buS20mwPp8=
X-Received: by 2002:a92:ddd1:: with SMTP id d17mr3531849ilr.46.1623329739819;
 Thu, 10 Jun 2021 05:55:39 -0700 (PDT)
MIME-Version: 1.0
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Thu, 10 Jun 2021 15:55:29 +0300
Message-ID: <CAA7+tqRNbrhXA6zq7gyMnBC5wfv-gQ4tQ0J-4T4krLgO=n1UmA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IQ3UKOTZSCU23UVANTS74PRJS2WEGGC4
X-Message-ID-Hash: IQ3UKOTZSCU23UVANTS74PRJS2WEGGC4
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK is slower than ordinary way
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IQ3UKOTZSCU23UVANTS74PRJS2WEGGC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0711250077921144014=="

--===============0711250077921144014==
Content-Type: multipart/alternative; boundary="0000000000007ecfd705c468e82b"

--0000000000007ecfd705c468e82b
Content-Type: text/plain; charset="UTF-8"

I installed DPDK, and finally it gives no error messages. On the other
hand, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz bandwidth,
no samples are dropped, but when i switch to vfio-pci and "use_dpdk=1" it
starts to drop samples at 200 MHz bandwidth. I cant transmit at 200 MHz
with a single channel with or without dpdk (it underflows). My uhd.conf and
cpufreq-info are given below. I also isolated cores 2,3 and 4. Any idea why
this happens?

[use_dpdk=1]
dpdk_mtu=9000
dpdk_driver=/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11
dpdk_corelist=2,3,4
;dpdk_num_mbufs=4096
;dpdk_mbuf_cache_size=64
[dpdk_mac=xx:xx:xx:xx:xx:a0]
dpdk_lcore = 3
dpdk_ipv4 = 192.168.10.1/24
;dpdk_num_desc=4096
[dpdk_mac=xx:xx:xx:xx:xx:a1]
dpdk_lcore = 4
dpdk_ipv4 = 192.168.20.1/24

analyzing CPU 0:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 0
  CPUs which need to have their frequency coordinated by software: 0
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.35 GHz.
analyzing CPU 1:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 1
  CPUs which need to have their frequency coordinated by software: 1
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.36 GHz.
analyzing CPU 2:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 2
  CPUs which need to have their frequency coordinated by software: 2
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.45 GHz.
analyzing CPU 3:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 3
  CPUs which need to have their frequency coordinated by software: 3
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.41 GHz.
analyzing CPU 4:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 4
  CPUs which need to have their frequency coordinated by software: 4
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.38 GHz.
analyzing CPU 5:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 5
  CPUs which need to have their frequency coordinated by software: 5
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.40 GHz.
analyzing CPU 6:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 6
  CPUs which need to have their frequency coordinated by software: 6
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.35 GHz.
analyzing CPU 7:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 7
  CPUs which need to have their frequency coordinated by software: 7
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.36 GHz.
analyzing CPU 8:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 8
  CPUs which need to have their frequency coordinated by software: 8
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.36 GHz.
analyzing CPU 9:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 9
  CPUs which need to have their frequency coordinated by software: 9
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.30 GHz.
analyzing CPU 10:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 10
  CPUs which need to have their frequency coordinated by software: 10
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.39 GHz.
analyzing CPU 11:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 11
  CPUs which need to have their frequency coordinated by software: 11
  maximum transition latency: 4294.55 ms.
  hardware limits: 800 MHz - 4.60 GHz
  available cpufreq governors: performance, powersave
  current policy: frequency should be within 800 MHz and 4.60 GHz.
                  The governor "performance" may decide which speed to use
                  within this range.
  current CPU frequency is 4.35 GHz.

Best Regards

Berkay S.

--0000000000007ecfd705c468e82b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I installed DPDK, and finally it gives no error messa=
ges. On the other hand, when i use ixgbe driver with (my NIC is X520-DA2) 2=
00 MHz bandwidth, no samples are dropped, but when i switch to vfio-pci and=
 &quot;use_dpdk=3D1&quot; it starts to drop samples at 200 MHz bandwidth. I=
 cant transmit at 200 MHz with a single channel with or without dpdk (it un=
derflows). My uhd.conf and cpufreq-info are given below. I also isolated co=
res 2,3 and 4. Any idea why this happens?<br></div><div><br></div><div>[use=
_dpdk=3D1]<br>dpdk_mtu=3D9000<br>dpdk_driver=3D/usr/local/lib/x86_64-linux-=
gnu/dpdk/pmds-18.11<br>dpdk_corelist=3D2,3,4<br>;dpdk_num_mbufs=3D4096<br>;=
dpdk_mbuf_cache_size=3D64<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a0]<br>dpdk_lcore =
=3D 3<br>dpdk_ipv4 =3D <a href=3D"http://192.168.10.1/24">192.168.10.1/24</=
a><br>;dpdk_num_desc=3D4096<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a1]<br>dpdk_lcore=
 =3D 4<br>dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24">192.168.20.1/24<=
/a></div><div><br></div><div>analyzing CPU 0:<br>=C2=A0 driver: intel_pstat=
e<br>=C2=A0 CPUs which run at the same hardware frequency: 0<br>=C2=A0 CPUs=
 which need to have their frequency coordinated by software: 0<br>=C2=A0 ma=
ximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - =
4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br>=
=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz.<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor=
 &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 =
current CPU frequency is 4.35 GHz.<br>analyzing CPU 1:<br>=C2=A0 driver: in=
tel_pstate<br>=C2=A0 CPUs which run at the same hardware frequency: 1<br>=
=C2=A0 CPUs which need to have their frequency coordinated by software: 1<b=
r>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits:=
 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, pow=
ersave<br>=C2=A0 current policy: frequency should be within 800 MHz and 4.6=
0 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Th=
e governor &quot;performance&quot; may decide which speed to use<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<=
br>=C2=A0 current CPU frequency is 4.36 GHz.<br>analyzing CPU 2:<br>=C2=A0 =
driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequenc=
y: 2<br>=C2=A0 CPUs which need to have their frequency coordinated by softw=
are: 2<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware=
 limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performa=
nce, powersave<br>=C2=A0 current policy: frequency should be within 800 MHz=
 and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 The governor &quot;performance&quot; may decide which speed to use<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within thi=
s range.<br>=C2=A0 current CPU frequency is 4.45 GHz.<br>analyzing CPU 3:<b=
r>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware=
 frequency: 3<br>=C2=A0 CPUs which need to have their frequency coordinated=
 by software: 3<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0=
 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors:=
 performance, powersave<br>=C2=A0 current policy: frequency should be withi=
n 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which speed =
to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wi=
thin this range.<br>=C2=A0 current CPU frequency is 4.41 GHz.<br>analyzing =
CPU 4:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same =
hardware frequency: 4<br>=C2=A0 CPUs which need to have their frequency coo=
rdinated by software: 4<br>=C2=A0 maximum transition latency: 4294.55 ms.<b=
r>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq go=
vernors: performance, powersave<br>=C2=A0 current policy: frequency should =
be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide wh=
ich speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.38 GHz.<br>=
analyzing CPU 5:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at=
 the same hardware frequency: 5<br>=C2=A0 CPUs which need to have their fre=
quency coordinated by software: 5<br>=C2=A0 maximum transition latency: 429=
4.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available =
cpufreq governors: performance, powersave<br>=C2=A0 current policy: frequen=
cy should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may=
 decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.4=
0 GHz.<br>analyzing CPU 6:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs wh=
ich run at the same hardware frequency: 6<br>=C2=A0 CPUs which need to have=
 their frequency coordinated by software: 6<br>=C2=A0 maximum transition la=
tency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 =
available cpufreq governors: performance, powersave<br>=C2=A0 current polic=
y: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&q=
uot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU freque=
ncy is 4.35 GHz.<br>analyzing CPU 7:<br>=C2=A0 driver: intel_pstate<br>=C2=
=A0 CPUs which run at the same hardware frequency: 7<br>=C2=A0 CPUs which n=
eed to have their frequency coordinated by software: 7<br>=C2=A0 maximum tr=
ansition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz=
<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 cu=
rrent policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;=
performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current=
 CPU frequency is 4.36 GHz.<br>analyzing CPU 8:<br>=C2=A0 driver: intel_pst=
ate<br>=C2=A0 CPUs which run at the same hardware frequency: 8<br>=C2=A0 CP=
Us which need to have their frequency coordinated by software: 8<br>=C2=A0 =
maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz =
- 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br=
>=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz.<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governo=
r &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=
=A0 current CPU frequency is 4.36 GHz.<br>analyzing CPU 9:<br>=C2=A0 driver=
: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequency: 9<b=
r>=C2=A0 CPUs which need to have their frequency coordinated by software: 9=
<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limit=
s: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, p=
owersave<br>=C2=A0 current policy: frequency should be within 800 MHz and 4=
.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
The governor &quot;performance&quot; may decide which speed to use<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this ran=
ge.<br>=C2=A0 current CPU frequency is 4.30 GHz.<br>analyzing CPU 10:<br>=
=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware f=
requency: 10<br>=C2=A0 CPUs which need to have their frequency coordinated =
by software: 10<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0=
 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors:=
 performance, powersave<br>=C2=A0 current policy: frequency should be withi=
n 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which speed =
to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wi=
thin this range.<br>=C2=A0 current CPU frequency is 4.39 GHz.<br>analyzing =
CPU 11:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same=
 hardware frequency: 11<br>=C2=A0 CPUs which need to have their frequency c=
oordinated by software: 11<br>=C2=A0 maximum transition latency: 4294.55 ms=
.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq=
 governors: performance, powersave<br>=C2=A0 current policy: frequency shou=
ld be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide=
 which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<=
/div><div><br></div><div>Best Regards</div><div><br></div><div>Berkay S.<br=
></div></div>

--0000000000007ecfd705c468e82b--

--===============0711250077921144014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0711250077921144014==--
