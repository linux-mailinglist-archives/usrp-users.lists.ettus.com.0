Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D92B9998057
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 10:42:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC8E8385796
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 04:42:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728549771; bh=jEACRpeZvklwVbLX4ysXq/SJw5/dEVSaJykClUXqwbo=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=is5TXpqPNjmrd7qJggjNL6iIQGlJuM9t/yKJkJ4b50Ng3+BuLjMBFlfQvFqNPTK2k
	 MsHciv4qXZnYDfpw2dl2hVxpwJQRqYwPydB8x2aVVuNnRM9JfgUQGjmMkQ8Y20u87K
	 30TDR9SNfCp1AWz6jGGVNFdDXl5FVPJj6X4/VbJdhKIz1L5pprCnJFtY+w/euxV25f
	 VetbIRrllqDMkwLX4PzSnHKl9PDOF9+nC82YIe+tBb8cr7rAxrW51QJnNy+tTfS0Oc
	 OLjn2MfVmc6ChIMFC0151pKSH34gV+9HQKZgXfH6SWJDVR/OFUMZA9CMbzRb5XfEzH
	 tR6Tfh/M1wY/A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 9904138567B
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 04:42:00 -0400 (EDT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-4a3a809646bso238882137.3
        for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 01:42:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728549720; x=1729154520;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t4hIhl+sNPrqGVwfttgQs0mZBJdQ3XPGaCmo+dXM/pg=;
        b=DV5D4aZkSYlRZFo29RVCtQ/cKzz9Nppc7WheWxaJC7gzlKFtrp/BxCFKPN0o5c+w1s
         ylVo10PflBR3+3CawbihLwWkhPs2ZQvUqE0ZRoO2zJ8iLTM8uQw7FNcjtpQ3F9z/qYfw
         9VWuXOS7Xoeq+Ex8MwhxrX6+3iNkFokolV+tYKR+A7zUEEr7U0DWLhERtPFLZ3twAM7S
         DClNIqmzp84YI9HUKLdCPBVkJfQg04jEQlo5VYCabbAQJeSNUUf7+By/ncj85657yhMT
         jZPG2qBe4mRshTT1+mACQR96CXIdnpxX4mUMdBIQB5BdPRH5UQu/647h5v7KL5jxtHdT
         b17A==
X-Gm-Message-State: AOJu0Yz7R2lXbqabAhHC53HAGnTbA3c41keKdsQeDpcvrGNDvBeXTPvQ
	0mwfQIzGQYnPI5bgr46EUIfpX2hyE4gsO7khAYQqtt2Bien3HHJ3KVROtW4bdlQseO89jruCxf2
	ER1hyTNdsdgk4FpiQxb0nfVLyI4TaMu3UvXiGhs+cUdoidMlRoYVF+uHjJMJ7X4vLS8U0Tg==
X-Google-Smtp-Source: AGHT+IEBFqDQ38Wphn0edQSzGAWPOOXbmQmXtSzrrWPj1oG35Pa/ikI4WjgpabXD3AO6+Lcy7Z7bQfsl30/I4+/rZeAYzwo2xOHRKw==
X-Received: by 2002:a05:6102:c53:b0:4a3:ad68:7f4 with SMTP id ada2fe7eead31-4a448ee1bfbmr4389652137.29.1728549719911;
        Thu, 10 Oct 2024 01:41:59 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 09:02:00 +0200
Message-ID: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WAB3MLNCBGOWZAQFDKEKV6O2I4A63OZT
X-Message-ID-Hash: WAB3MLNCBGOWZAQFDKEKV6O2I4A63OZT
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] EnvironmentError: IOError: recv error on socket
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WAB3MLNCBGOWZAQFDKEKV6O2I4A63OZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1463243049048125152=="

--===============1463243049048125152==
Content-Type: multipart/alternative; boundary="0000000000007191df062419f214"

--0000000000007191df062419f214
Content-Type: text/plain; charset="UTF-8"

Hello
Does anyone know how to deal with the following error?
Thanks
Houshang

ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.7.0.HEAD-0-ga5ed1872
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=XG,claimed=False,addr=10.10.2.100
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=XG,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,clock_source=internal,time_source=internal'.
[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
Connection refused
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
EnvironmentError: IOError: recv error on socket: Connection refused
Error: RuntimeError: Failure to create rfnoc_graph.
ad@bm-super11-intel:/etc/netplan$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.7.0.HEAD-0-ga5ed1872
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 32000F1
    addr: 10.10.2.100
    claimed: False
    fpga: XG
    mgmt_addr: 10.10.0.100
    mgmt_addr: 10.10.1.100
    mgmt_addr: 10.10.2.100
    name: ni-n3xx-32000F1
    product: n310
    type: n3xx


ad@bm-super11-intel:/etc/netplan$ ping 10.10.0.100
PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
64 bytes from 10.10.0.100: icmp_seq=1 ttl=64 time=0.289 ms
^C
--- 10.10.0.100 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.289/0.289/0.289/0.000 ms
ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100
PING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.
64 bytes from 10.10.1.100: icmp_seq=1 ttl=64 time=1.16 ms
64 bytes from 10.10.1.100: icmp_seq=2 ttl=64 time=1.11 ms
^C
--- 10.10.1.100 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1001ms
rtt min/avg/max/mdev = 1.107/1.135/1.163/0.028 ms
ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100
PING 10.10.2.100 (10.10.2.100) 56(84) bytes of data.
64 bytes from 10.10.2.100: icmp_seq=1 ttl=64 time=1.02 ms
^C
--- 10.10.2.100 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 1.019/1.019/1.019/0.000 ms
ad@bm-super11-intel:/etc/netplan$

--0000000000007191df062419f214
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div>Does anyone know how to deal with the=
 following error?</div><div>Thanks</div><div>Houshang</div><div><br></div><=
div>ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe <br>[INFO] [UHD] linux=
; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.HEAD-0-ga5ed1=
872<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_a=
ddr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3Dni-n3x=
x-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.100<br>[INFO] [MPM.Perip=
hManager] init() called with device args `fpga=3DXG,mgmt_addr=3D10.10.0.100=
,name=3Dni-n3xx-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=
=3Dinternal&#39;.<br>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv =
error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] IO Error duri=
ng GSM initialization. EnvironmentError: IOError: recv error on socket: Con=
nection refused<br>[ERROR] [RFNOC::GRAPH] Caught exception while initializi=
ng graph: EnvironmentError: IOError: recv error on socket: Connection refus=
ed<br>Error: RuntimeError: Failure to create rfnoc_graph.<br>ad@bm-super11-=
intel:/etc/netplan$ uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version=
 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>----------=
----------------------------------------<br>-- UHD Device 0<br>------------=
--------------------------------------<br>Device Address:<br>=C2=A0 =C2=A0 =
serial: 32000F1<br>=C2=A0 =C2=A0 addr: 10.10.2.100<br>=C2=A0 =C2=A0 claimed=
: False<br>=C2=A0 =C2=A0 fpga: XG<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.0.100<b=
r>=C2=A0 =C2=A0 mgmt_addr: 10.10.1.100<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.2.=
100<br>=C2=A0 =C2=A0 name: ni-n3xx-32000F1<br>=C2=A0 =C2=A0 product: n310<b=
r>=C2=A0 =C2=A0 type: n3xx<br><br><br>ad@bm-super11-intel:/etc/netplan$ pin=
g 10.10.0.100<br>PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.<br>64=
 bytes from <a href=3D"http://10.10.0.100">10.10.0.100</a>: icmp_seq=3D1 tt=
l=3D64 time=3D0.289 ms<br>^C<br>--- 10.10.0.100 ping statistics ---<br>1 pa=
ckets transmitted, 1 received, 0% packet loss, time 0ms<br>rtt min/avg/max/=
mdev =3D 0.289/0.289/0.289/0.000 ms<br>ad@bm-super11-intel:/etc/netplan$ pi=
ng 10.10.1.100<br>PING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.<br>6=
4 bytes from <a href=3D"http://10.10.1.100">10.10.1.100</a>: icmp_seq=3D1 t=
tl=3D64 time=3D1.16 ms<br>64 bytes from <a href=3D"http://10.10.1.100">10.1=
0.1.100</a>: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms<br>^C<br>--- 10.10.1.100 =
ping statistics ---<br>2 packets transmitted, 2 received, 0% packet loss, t=
ime 1001ms<br>rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0.028 ms<br>ad@bm-=
super11-intel:/etc/netplan$ ping 10.10.2.100<br>PING 10.10.2.100 (10.10.2.1=
00) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://10.10.2.100">1=
0.10.2.100</a>: icmp_seq=3D1 ttl=3D64 time=3D1.02 ms<br>^C<br>--- 10.10.2.1=
00 ping statistics ---<br>1 packets transmitted, 1 received, 0% packet loss=
, time 0ms<br>rtt min/avg/max/mdev =3D 1.019/1.019/1.019/0.000 ms<br>ad@bm-=
super11-intel:/etc/netplan$ <br></div></div>

--0000000000007191df062419f214--

--===============1463243049048125152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1463243049048125152==--
