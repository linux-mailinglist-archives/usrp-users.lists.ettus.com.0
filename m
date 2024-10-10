Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6629C997E39
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 09:03:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20FB1385741
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 03:03:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728543784; bh=h5TaFsZEtOOAhLuWHuDzVnk7C6VwfrUkItqWSyl8gMQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lU9uOB7xmujOO38nddE4v0N0olv4RwqVieqXV9WARqwzGIT8wOIFTd/6e71fpkV81
	 mK9zfHxq5nyENiLL4883C7Ey4GV9mas740B9gULvw02BIB9sV+LQtpuRbbaeUXSVbN
	 OCOZYH1CkB7hV1l0PdLhLiTSVSymV2f2nV2bmGqMPPkOQocGHC8zZh0k975joKPsan
	 fyUCLHF6HjAkxIpYbdZpWUpSdwOE/VeUDmdD2Ku2EMT2uMM9tK1oXvQbBr/0+TvFuh
	 m1sf0v0r4GIF+9/fuE2LRoYiHVdtSgzFfEBD2zhIX/oD71A9e0tXU5+86l5tqAqPCL
	 gvT3OnO/Ls9Ew==
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D271385623
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 03:02:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="2DBXeIOL";
	dkim-atps=neutral
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3a3525ba6aaso2167805ab.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 00:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1728543731; x=1729148531; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6OuqLTflDCHmTHlU6TLHPUk2b1sQIPjVO/JGc3w3R4M=;
        b=2DBXeIOLDrBI7v/PbjMHR5W8bZbcoqiVhDFfonf8GHTvxR4HdVW5GypkQKa23WK33o
         6lVZZETHObYBLv52ez8xH1hKE7ZMGcu80M80eAiLEEOfzzv+ADrzYgNk/IbVYv7C8vcz
         ODqmccfzB79QPreBZiozNuh0X7vKcAXShHkRk71SiZ+JJC5XO++d9P1f2EzgZ4bMi9rE
         tLo90pwC+SuE8zgObtFktiQmVq/TXsBKKSkpOTuBiUDjrGGeFPF/KbLMjKZUGWZzm7aU
         lIxdmX30Ar48j66aFYWQJHq0HQ5tsvqdHZUn6FnFCsFrOnHqOdHOZ25y0Qt3oOnXcNTu
         V10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728543731; x=1729148531;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6OuqLTflDCHmTHlU6TLHPUk2b1sQIPjVO/JGc3w3R4M=;
        b=O17mZTiLll2++gZ8s39jCa+OMTuXbJ471Kxa09ML+S1I9Fbhj4J+2ivRfHve4XMcmy
         WiujvTJh9HmeiG+n+UdmWA62CJMsuSfgyuBmedH6/dpE60hnXm/4l65U/6ZlHJ2XxQoi
         zsYCSHEDL3e073Q0aTCRE5P7tOp1z0J21/lYlJTAjuR6x7MrZtw4CBXF7bQbutcAlkDy
         Bp2krHX5JPhhW6+VnSh1fKfbHuJGlLbTrLKH07b1zVm25Fm3NeSvzqwJOqcSF1APsWBj
         SlhW7whHoTz5O5aDL4QUmbku3DgsZ69cQmkeTKQiAi8CZSDzofwsFc0//FOs6XN96BBz
         M73A==
X-Gm-Message-State: AOJu0YyB4WVjDmy3m7vNW8zP+lcYZ0gKanJBy+D/JSZOTbl2s93i8nQi
	JFjXOK/7/bApDBOJ9F/9M/+VjtOmt1rDDQYNR0iGseG+11QX5NL5tiEqGQk3q1pV5u7LH/ljiEB
	MdkAB252DewBUoK7uKamZO/uRjQpDol/wD5JZHtQeI+3m5SVIytk=
X-Google-Smtp-Source: AGHT+IHJWT3a21de7VGH81EZ1YntnSPUtsCXubZDV94tmOiRq53+LRHsqTbnzuqI2p0W2ZjLBNi7cSO+4YXaaMdC7sw=
X-Received: by 2002:a05:6e02:2162:b0:3a0:9cd5:92f7 with SMTP id
 e9e14a558f8ab-3a397d259c3mr44905305ab.17.1728543731061; Thu, 10 Oct 2024
 00:02:11 -0700 (PDT)
MIME-Version: 1.0
From: Houshang <houshang.azizi@accelleran.com>
Date: Thu, 10 Oct 2024 09:02:00 +0200
Message-ID: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6221198527647454861=="

--===============6221198527647454861==
Content-Type: multipart/alternative; boundary="00000000000011b58d062419f314"

--00000000000011b58d062419f314
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

--00000000000011b58d062419f314
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

--00000000000011b58d062419f314--

--===============6221198527647454861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6221198527647454861==--
