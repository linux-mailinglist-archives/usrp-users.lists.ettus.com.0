Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9AD717094
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 00:18:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C96E384831
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 18:18:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685485086; bh=M2QEeljyjZdNzGrb8tPuvxfRxcC3ZvuAxlLD+z+mF2c=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=U0Lx8n8VvgPUsXG/TSFQ9oNxWYpy/3D1mu3l1BziqPIvYmV1s4EKa3586VcB7O9/K
	 9nmV4JOW4xGPN4MTFfP1cKl2rm3/wXs2XguG/zdQDeKLsLzjaE7mLvem83xrIOJns4
	 wnb4zLo/6m9/DCr2RObTcWuZyt3tkZyusaK5U7BMiOW4Ww6GknDb75G2YV4OofL+MK
	 eAms2DRcjgmOmxHHNZ88/5VOIp7FGw25bEN6CJB6pGYM19fGq9CQiA0iNaZEu2epao
	 6pCXxhdyoOSGFEXyudZUytWHbnDB0cewIdSzwagUpFID11ZJBlEYTvrf3Q+grq2i1p
	 yDBVNyfe5IglA==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D6B8C3837B2
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 18:17:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ILao8omU";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-56896778212so2390657b3.1
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 15:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685485061; x=1688077061;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PE7eP5AdYWLZzrxC68KtaTUjKf6xRehVm4x/PVyV7P8=;
        b=ILao8omUwXz8g6pNJBRLOd5Vv6Xc+7fdrk4hnRIsKu8LLpg4zuhWb+agMPSBn/wm/u
         fGsJDaLcIj9skyvclQoldI3G4fZlfilu+d6paqe+NHEzDIZTJJCMh4mkosNSki6LrhFk
         UW/Mji4S9fhDai5stj8UPPqoXg3iWYHTvYdE5TjfkxtRGNT2JprtjHGls0wV7WjFJEIi
         lZPYrp7JqWCQE36Bi8BiMLmMJt7qcDf3s50FiOyWRfdf8Cqp9l/x73SbmujQWutpwS0a
         nZdXTXwa4nMbVk3ioltDn0Oz2zUf0TVwXGayhOI05Vb1JNT1irlnkQUd0jufeDoDqtQa
         C7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685485061; x=1688077061;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PE7eP5AdYWLZzrxC68KtaTUjKf6xRehVm4x/PVyV7P8=;
        b=JU2V+2M4gaZpjasg5DpR1gmIjr5WpZrdhdrP5m3guvPpj2QRzYtk0ynhF+TxdPlehG
         BMmoeY+AG+Y3I4c0L0tJwI0m2sedInkO18HRqX96mBp0ro6E0Hem/GZoFoq/pqE3apzh
         HEd0Jh3AHGB2bpB+qn/GG7enqu2SuGP/RW0jlMgSxK83WGCVB740kc7XiNBVAp1vR2La
         /S1RkFQK7kpk5Qo8RUsGys0JfoOjBGZ3bc3vmGEvjXVUP6kHS/qUJRMpf6yXOMQNFShD
         eEei+ECMHsUFLTFOmMh7jpzFYjjC047c9GgMRI/3EqiokUWnP9UWtKPUFSURUnuAj1t7
         ho6Q==
X-Gm-Message-State: AC+VfDwZ5OVO9DBbMAhVzRb0u34v7bQyE84ebRXM1sL7OFQnTRVs3dFy
	HhOkNNrh2NgxxeztV8ne3l148mlAP+18oc11uipgDWuYhos=
X-Google-Smtp-Source: ACHHUZ5REyfrv+vuOrwL3fVsM9BGTrJBBOP4pNnSWk1Ii9vN4go9dzfNo0vlJhmyF2n4gqT0a5Wb2gM+9mpvYdXWK7Y=
X-Received: by 2002:a81:7055:0:b0:565:be47:55d9 with SMTP id
 l82-20020a817055000000b00565be4755d9mr336751ywc.1.1685485061025; Tue, 30 May
 2023 15:17:41 -0700 (PDT)
MIME-Version: 1.0
From: Ashton Palacios <pistachio6981@gmail.com>
Date: Tue, 30 May 2023 16:17:30 -0600
Message-ID: <CA+ZR=nVNAVMnFD6G2LNZKpcB=H6dtQd+tMqs119KENuT0Uv4gQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WP7RWN3CWCJGIDNIZT4ISGSNALVVQQ3Y
X-Message-ID-Hash: WP7RWN3CWCJGIDNIZT4ISGSNALVVQQ3Y
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WP7RWN3CWCJGIDNIZT4ISGSNALVVQQ3Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7286484637875432182=="

--===============7286484637875432182==
Content-Type: multipart/alternative; boundary="00000000000056351005fcf092e6"

--00000000000056351005fcf092e6
Content-Type: text/plain; charset="UTF-8"

My research group recently got an Ettus X410. We are wanting to connect to
it through two MT27800 NICs on our server. We are able to set up the IP
addresses on the server and running uhd_find_devices shows the USRP having
the correct IP address that we are expecting. When we go to run the
benchmark_rate test we get the following error:


/usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6

[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
UHD_4.4.0.HEAD-0-g5fac246b
[00:00:00.000581] Creating the usrp device with: ...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.13.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.11.2
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=X4_200,mgmt_addr=192.168.13.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.
[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
Connection refused
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
EnvironmentError: IOError: recv error on socket: Connection refused
Error: RuntimeError: Failure to create rfnoc_graph.
alfor@sdr:/usr/local/lib/uhd/examples$ sudo !!
sudo ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6

[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
UHD_4.4.0.HEAD-0-g5fac246b
[00:00:00.000251] Creating the usrp device with: ...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.13.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.11.2
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=X4_200,mgmt_addr=192.168.13.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.
[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
Connection refused
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
EnvironmentError: IOError: recv error on socket: Connection refused
Error: RuntimeError: Failure to create rfnoc_graph.

Any suggestions on how to fix this?

--00000000000056351005fcf092e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My research group recently got an Ettus X410. We are wanti=
ng to connect to it through two MT27800 NICs on our server. We are able to =
set up the IP addresses on the server and running uhd_find_devices shows th=
e USRP having the correct IP address that we are expecting. When we go to r=
un the benchmark_rate test we get the following error:<br><br clear=3D"all"=
><div><br></div>/usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e=
6 --tx_rate 10e6<br><br>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_1=
07400; UHD_4.4.0.HEAD-0-g5fac246b<br>[00:00:00.000581] Creating the usrp de=
vice with: ...<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with a=
rgs: mgmt_addr=3D192.168.13.2,type=3Dx4xx,product=3Dx410,serial=3D326B6ED,n=
ame=3Dni-x4xx-326B6ED,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.11.2<br>=
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,mg=
mt_addr=3D192.168.13.2,name=3Dni-x4xx-326B6ED,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] [RFNOC::MGMT] Environme=
ntError: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNO=
C::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: re=
cv error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] Caught exc=
eption while initializing graph: EnvironmentError: IOError: recv error on s=
ocket: Connection refused<br>Error: RuntimeError: Failure to create rfnoc_g=
raph.<br>alfor@sdr:/usr/local/lib/uhd/examples$ sudo !!<br>sudo ./benchmark=
_rate --rx_rate 10e6 --tx_rate 10e6<br><br>[INFO] [UHD] linux; GNU C++ vers=
ion 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b<br>[00:00:00.000251] C=
reating the usrp device with: ...<br>[INFO] [MPMD] Initializing 1 device(s)=
 in parallel with args: mgmt_addr=3D192.168.13.2,type=3Dx4xx,product=3Dx410=
,serial=3D326B6ED,name=3Dni-x4xx-326B6ED,fpga=3DX4_200,claimed=3DFalse,addr=
=3D192.168.11.2<br>[INFO] [MPM.PeriphManager] init() called with device arg=
s `fpga=3DX4_200,mgmt_addr=3D192.168.13.2,name=3Dni-x4xx-326B6ED,product=3D=
x410,clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] [RFNOC=
::MGMT] EnvironmentError: IOError: recv error on socket: Connection refused=
<br>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentE=
rror: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNOC::=
GRAPH] Caught exception while initializing graph: EnvironmentError: IOError=
: recv error on socket: Connection refused<br>Error: RuntimeError: Failure =
to create rfnoc_graph.<br><br>Any suggestions on how to fix this?=C2=A0</di=
v>

--00000000000056351005fcf092e6--

--===============7286484637875432182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7286484637875432182==--
