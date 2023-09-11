Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 609E779AA08
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 18:10:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 625ED384A62
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 12:10:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694448602; bh=wqv5iI96y6xbRdWbiOY7WU0sdoCQM2l0gS5BQtGirrY=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ProaCjSY/jGw5NCIbSnmL6LLoe8pFyYVGNY+fX+iJ1PczoyyLUxwKmabbkIHwk7Cc
	 Mbo57SkZjpRb+xMZdVj49hOwK1JzvowILX4+sMfNSwRw/pYvaHjVwB90L4jt+yql5Y
	 KGAmn5KonSsOMzx5gS/kQGHRsVb8YhsrrRhhhhLZq4WYUXIKJBVbPc7o6nDR43t5LI
	 CsayZOWaSjgLMf/PQx0x4bd4OBUv9kkX7S+rXC6OYATTESX3lMGFlcLSTCLTG59VxM
	 jxgMGebKfLYwvjXM3pBwmRvKWM3Vj4+szSO4XFZJlIte9m25dti9fw2Hxsx8xA6lqL
	 jOSnSnYkNBKQA==
Received: from sonic319-26.consmr.mail.bf2.yahoo.com (sonic319-26.consmr.mail.bf2.yahoo.com [74.6.131.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 06407383FC0
	for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 12:09:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="katSh2Js";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694448582; bh=qlkCt02Bv4qPfPPMuQap2h7s4unvOsQ2mwz2Yi8QoVs=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=katSh2JsRLadmXSdsZPzcB4ZKwmkwP1JXVhgyTn0cOYbDYVqDFpWPF5mUe9fTHUhps1BfgMo7akibqCMQAYOXIwBq33VVXq+AUuJ73FpEDdC2P4MahGi/j4dxjJw3bSZgnhUFFOhKd0JmF/e0GNzpr629nXxAlGtqqBbJiAcgPurGA7+F2bOirehbchIh9QLYo4796x4oQ0hq2Wz8TNC4xLEK3EzBxSw7jrxNgcsG3phnQKpoW3BBZXUYiHomhDUM7Z7CYVeBCvBggJvo6vQzcHuK0R1aV575SWx7hVDca6zdVBcDpo80GVZRXSyEZK4NNqDz5YGdS7zxSarCaRmOg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694448582; bh=FANE0MZkCkT/sWjJvZfesNcYO7xcM8VcOBVk2zhEv7U=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=L/aRPaaLNr5yDJrBU3S2bKZc6pxC4ahP7cuecVDMx/NTiyKz+vjHdqUAJM+i0jGdiq99PEQlQaouqK2OQehRGXgBe00ACTHILQdphwpGJ6e2N4xYyMWYQY6O3u1bKs5HndSZ6WsrfnQPgCw2KsWGKarzxfXnaIsY+CRPKHRLIRwjKMQETvH4KDp7YdO5AdKbj16QF+xqUmFeqnNVkR0kqiYtQ4EAlVtlx2LGxlxMDBHdCvW+sjnsQ9AUrPOOTJknXp1vo5xCQJ4pAZvc9fpcyDIu/F77R99NGOzQBBYAXkYuoLa6hqdExz04xFpNiIEvyVcC3THUCBGwgfAv9flspA==
X-YMail-OSG: Cu31ercVM1lTMyNsArz6UGJrSkECbZha0XfksBrgHaEy8VntF7sNN8Jasy28k5D
 xPdCvkw0HTUBEAmo.Bt2IE5ur8XU.RtqQgqSpukhbwamNoV1xAWAvEMFz0eIXXwi20vI7hAj94WQ
 FpJFjcT3ZrTlOlmAorSMNJOKIpf48aJDj1J_4qSf0kYa6r0Gtl8uE4bH_sGdSxzI5ttRACU6ekno
 A3avIbbYZpizoamNwj.HECQ2sIwZbkI9PCAkizttHhET211c2JovC9FjN4t8I2lcz9ICZzoGkC6j
 LarNrt7RGsjAZbS2xLLOSOLoen5qDkI6WNQST5J2MeWtt_JxBmf0BCDCQvHdPRhGdZCRGjQ1evGv
 9CtnjNoUKhRzYlin3IQfSai72XxF9.c4luSvvZF5aJ0f1pyBI8.OZmZFf_63jxqBnbo1_wkgLf4M
 4O3gDw_.feFMZCF6Y2nDwG1S3o1bXfLkgS4tn.Sej7uVuxMTAI12nJuKbhGSKt9gloTLhFcJfkwl
 hop9iw9ph5GtOosd1neC_VWO2qa.KYCsngrBiUcReaGuTbl0lNE7CKC3HRnPqbcNqbWPxbLpiV6u
 Lz.UlyAjObie2ruPBT8Na3R9Ziiq3yDaoZOsoeo3W1TZLzg1J_gu2xxSoRFu98vmtnslcNulk9Ic
 S8U09F2NJjnW2IFW0hR62iHnbF9E8iLiMPn3I4X4DgEWaoCvE_XaVu01U44beYx9sJlKaMil2w_C
 UVo89Pwdp1SL73pwUoRiCA2fK_eDfQyoSmBIvK1dF8O5nNrQOICbxIFwzZW09SFsGPJDsTMan735
 3wZ.rx6djQL0XKBSXPkX5_jHYVyF3cCBgKjxzvMpgaWBFoK6x0BYSyn19EziDbJIyRVTsCoDQ7UY
 C1jBHFx89wpN0yRM0MMEEayHeYp0IhcqAYot85t1Zb5E2cgZJ1dpK_KIbrqqmxbTtnd0P7Y_xyvb
 xI8FlQUN12xbZPoeyBnAt4qARLC6D_.1Vq1.8zNg1UiUQX_z4qiUutCH83Evb8jBozXYWuBnOZLU
 VTVqnj3X_M2yRvvObxcDneoeImKyyhdscmCjm1DCKH8U6NFSnYHvDnKFhrdMN2XY4qzGeJ2u_aiz
 tWbahDnySeS4RIBTb56k9G9ggOVlimixEHw5KfbnnzHy2Dn04v.kstv1Y_PBdNYcHDBGsMaNkBjV
 8A2MhY9d0P55ck5h_2fZZUfaKNYkc0RjDmSoN1H.m7BDHOdHvyIp2wNrQsj_b5.mFqzdKVwVRupP
 Gj2WTYwG_UGQi_WW9EqLuZKiG4zJ6TqB1jQbQNiCeSdqHPmqMiPpte9NUBIT_xRzC3wDs6TdPf2N
 RWz9XHA2wsxwlGFZl8kZh6A7f9u1xJqy_daI739KcAPh.ywGQF7Mb0o.bh3VtEmZoBndHhPeM6hN
 IDNb2egmrEHoryyBVAZD_Mb9t.j4iV.JZxx6ETnVTwJmLbpDtaDwHdzhZDCcVv3OPRc8pPuyNWRe
 fmZ07vS4ANAnEiB_zP7iqWujK1qf5lCoPRye3DC1C_LPex7.mk3WmpRJXw9hQ6KKubQVKYwBE0l4
 VctPs.iUqjxLJUi8kD2XZ2qxvrI786czjBkpUx0iUQ6j8q4BovsI6qugICJ_0vgxGta8e0P5AwVS
 lPgsZbZblZcPcuK7zGbAFloRbpXyzhQhvlwa3FLntQ7nXcL.d9dpYELao0CpEHosC1JvxlFnKF7w
 rdV8SXxyQq1qpCearB8iCmBktytewXP.paCXpnMFnYNrYoTMAWPPQ_70oJH0c6rVsz.AzQmsKef8
 _qicNWB9hwSpeYTlMyS00ji6PUZJbGNmBnB9gGVipxxEEJS1xUwbpRhcExRMe_15ra193yEr2BQl
 MW8jZX8MbOVEcDHzMTKR3EyNFFeLDL..mx6zn_tfNoGifAq6jTMu3bffkg3KoSsE8CwSe.PvhvKG
 cb59ATrWx_QuEcNBVrQsUAPnwoZPzaIWXpk3J334SP1Y_vyBmSBaaySvuYpCMYhNHBoGe75JbgDm
 lqBn2bzlzvIE_jLLEx8KHGobJzNJ_DjVb0JXBOtpZwhqFTAnyBAGlPMasiD8cCL4eriWB4jHeEr3
 w3IL4jxukLCEL8dXEU5EwRVNXoOq2pha0UL5uqyWFSEhRO_e7Qd9PqDzYkhl6bxEK4c1U1iatY8O
 rc_3LUCHg9dqVJkQ5RJPyIxlTYSumKc5c2CCxyaWPz7uYEFH4LYlmzvHLHaxXzDGxc02GbzelGp9
 QBe6OHwveqmOGdmIFCcCc
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: f4bc6285-b8d9-461a-bbf6-e096639b1675
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Mon, 11 Sep 2023 16:09:42 +0000
Date: Mon, 11 Sep 2023 16:09:39 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1218602222.4259780.1694448579632@mail.yahoo.com>
In-Reply-To: <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de> <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com> <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de> <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21763 YMailNorrin
Message-ID-Hash: 5546RPTI3DTDJSQE5KFFJT22W22RDKVA
X-Message-ID-Hash: 5546RPTI3DTDJSQE5KFFJT22W22RDKVA
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Benchmark test failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5546RPTI3DTDJSQE5KFFJT22W22RDKVA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============9058117647002506471=="

--===============9058117647002506471==
Content-Type: multipart/alternative;
	boundary="----=_Part_4259779_383276800.1694448579630"

------=_Part_4259779_383276800.1694448579630
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi all,
I just set up a system with X410=C2=A0USRP. Tried to run a benchmark rate t=
est and saw a lot of errors. Please suggest what could be the reason for th=
e test failure.=C2=A0Host is R740 (16 CPU cores) and Linux is Ubuntu 22.04 =
with low-latency kernel.100G Mellanox ConnectX-6 NIC cards


$ sudo /usr/local/lib/uhd/examples/benchmark_rate=C2=A0 \--args "type=3Dx4x=
x,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=3D500e6" \=
--priority "high" \--multi_streamer \--duration 60 \--channels "0" \--rx_ra=
te 10e6 \--rx_subdev "A:0" \--tx_rate 10e6 \--tx_subdev "A:0"[sudo] passwor=
d for user:
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4=
.4.0.HEAD-0-g5fac246b[00:00:00.000566] Creating the usrp device with: type=
=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=3D50=
0e6...[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,name=3Dni-x4x=
x-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,master_clock_ra=
te=3D500e6[WARNING] [MPM.RPCServer] A timeout event occured![INFO] [MPM.Per=
iphManager] init() called with device args `fpga=3DCG_400,master_clock_rate=
=3D500e6,mgmt_addr=3D192.168.88.2,name=3Dni-x4xx-3289B23,product=3Dx410,clo=
ck_source=3Dinternal,time_source=3Dinternal'.Using Device: Single USRP:=C2=
=A0 Device: X400-Series Device=C2=A0 Mboard 0: x410=C2=A0 RX Channel: 0=C2=
=A0 =C2=A0 RX DSP: n/a=C2=A0 =C2=A0 RX Dboard: A=C2=A0 =C2=A0 RX Subdev: 0=
=C2=A0 TX Channel: 0=C2=A0 =C2=A0 TX DSP: n/a=C2=A0 =C2=A0 TX Dboard: A=C2=
=A0 =C2=A0 TX Subdev: 0
[00:00:05.797505591] Setting device timestamp to 0...[WARNING] [0/Radio#0] =
Requesting invalid sampling rate from device: 10 MHz. Actual rate is: 500 M=
Hz.[WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual rate =
is 500.000 MHz[WARNING] [0/Radio#0] Requesting invalid sampling rate from d=
evice: 10 MHz. Actual rate is: 500 MHz.[WARNING] [MULTI_USRP] Could not set=
 TX rate to 10.000 MHz. Actual rate is 500.000 MHzSetting TX spb to 1984[00=
:00:05.799789467] Testing receive rate 500.000000 Msps on 1 channels[00:00:=
05.801875415] Testing transmit rate 500.000000 Msps on 1 channelsUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUD[U00:00:06.33502762] Detected Rx sequence error.UU[D00:00:0=
6.33952517] Detected Rx sequence error.UUUU[D00:00:06.34387503] Detected Rx=
 sequence error.U[D00:00:06.34802030] Detected Rx sequence error.UUUUU[D00:=
00:06.35212894] Detected Rx sequence error.U[D00:00:06.35640910] Detected R=
x sequence error.

Benchmark rate summary:=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A00=C2=
=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 Num overruns detected:=
=C2=A0 =C2=A0 596=C2=A0 Num transmitted samples:=C2=A0 10046501824=C2=A0 Nu=
m sequence errors (Tx): 0=C2=A0 Num sequence errors (Rx): 0=C2=A0 Num under=
runs detected:=C2=A0 =C2=A0819855=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 Nu=
m timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
Done!



$ ifconfigenp59s0f0np0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 =
mtu 9000=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.1=C2=A0 netmask 255.255=
.255.0=C2=A0 broadcast 192.168.20.255=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80=
::ba3f:d2ff:fe57:b77a=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7a=C2=A0 txqueuelen 1000=C2=A0 (Ethe=
rnet)=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144837=C2=A0 bytes 1018887971=
00 (101.8 GB)=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 2423=C2=
=A0 overruns 0=C2=A0 frame 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12311297=
=C2=A0 bytes 87947193629 (87.9 GB)=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=
=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0
enp59s0f1np1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.10.255=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f=
:d2ff:fe57:b77b=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7b=C2=A0 txqueuelen 1000=C2=A0 (Ethernet=
)=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 406107=C2=A0 bytes 2296309836 (2.2 =
GB)=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 502690=C2=A0 bytes 342=
1432091 (3.4 GB)=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 ove=
rruns 0=C2=A0 carrier 0=C2=A0 collisions 0
Kind regards,Hongwei



------=_Part_4259779_383276800.1694448579630
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpecce4a95yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi all,</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I =
just set up a system with X410&nbsp;<span><span style=3D"color: rgb(0, 0, 0=
); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">USRP. Tried =
to run a benchmark rate test and saw a lot of errors. Please suggest what c=
ould be the reason for the test failure.</span></span></div><div dir=3D"ltr=
" data-setdir=3D"false"><span><span style=3D"color: rgb(0, 0, 0); font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp;</span></span></di=
v><div dir=3D"ltr" data-setdir=3D"false">Host is R740 (16 CPU cores) and Li=
nux is Ubuntu 22.04 with low-latency kernel.</div><div dir=3D"ltr" data-set=
dir=3D"false">100G Mellanox ConnectX-6 NIC cards</div><div dir=3D"ltr" data=
-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-se=
tdir=3D"false"><div><div>$ sudo /usr/local/lib/uhd/examples/benchmark_rate&=
nbsp; \</div><div>--args "type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.1=
68.20.2,master_clock_rate=3D500e6" \</div><div>--priority "high" \</div><di=
v>--multi_streamer \</div><div>--duration 60 \</div><div>--channels "0" \</=
div><div>--rx_rate 10e6 \</div><div>--rx_subdev "A:0" \</div><div>--tx_rate=
 10e6 \</div><div>--tx_subdev "A:0"</div><div>[sudo] password for user:</di=
v><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107=
400; DPDK_21.11; UHD_4.4.0.HEAD-0-g5fac246b</div><div>[00:00:00.000566] Cre=
ating the usrp device with: type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192=
.168.20.2,master_clock_rate=3D500e6...</div><div>[INFO] [MPMD] Initializing=
 1 device(s) in parallel with args: mgmt_addr=3D192.168.88.2,type=3Dx4xx,pr=
oduct=3Dx410,serial=3D3289B23,name=3Dni-x4xx-3289B23,fpga=3DCG_400,claimed=
=3DFalse,addr=3D192.168.20.2,master_clock_rate=3D500e6</div><div>[WARNING] =
[MPM.RPCServer] A timeout event occured!</div><div>[INFO] [MPM.PeriphManage=
r] init() called with device args `fpga=3DCG_400,master_clock_rate=3D500e6,=
mgmt_addr=3D192.168.88.2,name=3Dni-x4xx-3289B23,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal'.</div><div>Using Device: Single USRP:</=
div><div>&nbsp; Device: X400-Series Device</div><div>&nbsp; Mboard 0: x410<=
/div><div>&nbsp; RX Channel: 0</div><div>&nbsp; &nbsp; RX DSP: n/a</div><di=
v>&nbsp; &nbsp; RX Dboard: A</div><div>&nbsp; &nbsp; RX Subdev: 0</div><div=
>&nbsp; TX Channel: 0</div><div>&nbsp; &nbsp; TX DSP: n/a</div><div>&nbsp; =
&nbsp; TX Dboard: A</div><div>&nbsp; &nbsp; TX Subdev: 0</div><div><br></di=
v><div>[00:00:05.797505591] Setting device timestamp to 0...</div><div>[WAR=
NING] [0/Radio#0] Requesting invalid sampling rate from device: 10 MHz. Act=
ual rate is: 500 MHz.</div><div>[WARNING] [MULTI_USRP] Could not set RX rat=
e to 10.000 MHz. Actual rate is 500.000 MHz</div><div>[WARNING] [0/Radio#0]=
 Requesting invalid sampling rate from device: 10 MHz. Actual rate is: 500 =
MHz.</div><div>[WARNING] [MULTI_USRP] Could not set TX rate to 10.000 MHz. =
Actual rate is 500.000 MHz</div><div>Setting TX spb to 1984</div><div>[00:0=
0:05.799789467] Testing receive rate 500.000000 Msps on 1 channels</div><di=
v>[00:00:05.801875415] Testing transmit rate 500.000000 Msps on 1 channels<=
/div><div>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUD[U00:00:06.33502762] Detected Rx sequen=
ce error.</div><div>UU[D00:00:06.33952517] Detected Rx sequence error.</div=
><div>UUUU[D00:00:06.34387503] Detected Rx sequence error.</div><div>U[D00:=
00:06.34802030] Detected Rx sequence error.</div><div>UUUUU[D00:00:06.35212=
894] Detected Rx sequence error.</div><div>U[D00:00:06.35640910] Detected R=
x sequence error.</div><div><br></div></div><br></div><div dir=3D"ltr" data=
-setdir=3D"false"><div><div>Benchmark rate summary:</div><div>&nbsp; Num re=
ceived samples:&nbsp; &nbsp; &nbsp;0</div><div>&nbsp; Num dropped samples:&=
nbsp; &nbsp; &nbsp; 0</div><div>&nbsp; <b><font color=3D"#fdf869" style=3D"=
background-color: rgb(0, 0, 0);">Num overruns detected:&nbsp; &nbsp; 596</f=
ont></b></div><div>&nbsp; Num transmitted samples:&nbsp; 10046501824</div><=
div>&nbsp; Num sequence errors (Tx): 0</div><div>&nbsp; Num sequence errors=
 (Rx): 0</div><div>&nbsp;<b style=3D"background-color: rgb(0, 0, 0);"><font=
 color=3D"#fdf869"> Num underruns detected:&nbsp; &nbsp;819855</font></b></=
div><div>&nbsp; Num late commands:&nbsp; &nbsp; &nbsp; &nbsp; 0</div><div>&=
nbsp; Num timeouts (Tx):&nbsp; &nbsp; &nbsp; &nbsp; 0</div><div>&nbsp; Num =
timeouts (Rx):&nbsp; &nbsp; &nbsp; &nbsp; 0</div><div><br></div><div>Done!<=
br></div><div><br></div></div><br></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><br></div><div dir=3D"ltr" data-setdir=3D"false">$ ifconfig</div><div d=
ir=3D"ltr" data-setdir=3D"false"><div><div>enp59s0f0np0: flags=3D4163&lt;UP=
,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu 9000</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; inet 192.168.20.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 19=
2.168.20.255</div><div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::ba3f:d2ff:fe=
57:b77a&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; ether b8:3f:d2:57:b7:7a&nbsp; txqueuelen 1000&nbsp; (E=
thernet)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 15144837&nbsp; by=
tes 101888797100 (101.8 GB)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; <b style=
=3D""><i style=3D""><font color=3D"#fdf869" style=3D"background-color: rgb(=
0, 0, 0);">RX errors 0&nbsp; dropped 2423&nbsp; overruns 0&nbsp; frame 0</f=
ont></i></b></div><div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 12311297&nbsp=
; bytes 87947193629 (87.9 GB)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; TX erro=
rs 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</div><di=
v><br></div><div>enp59s0f1np1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICA=
ST&gt;&nbsp; mtu 9000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10=
.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.10.255</div><div>&nb=
sp; &nbsp; &nbsp; &nbsp; inet6 fe80::ba3f:d2ff:fe57:b77b&nbsp; prefixlen 64=
&nbsp; scopeid 0x20&lt;link&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; ether=
 b8:3f:d2:57:b7:7b&nbsp; txqueuelen 1000&nbsp; (Ethernet)</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; RX packets 406107&nbsp; bytes 2296309836 (2.2 GB)</div=
><div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; dropped 0&nbsp; overrun=
s 0&nbsp; frame 0</div><div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 502690&n=
bsp; bytes 3421432091 (3.4 GB)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; TX err=
ors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</div><d=
iv><br></div></div><div dir=3D"ltr" data-setdir=3D"false">Kind regards,</di=
v><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D"ltr" data=
-setdir=3D"false"><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div><div dir=3D"ltr" data-setdir=3D"false"><br></div></div></body></htm=
l>
------=_Part_4259779_383276800.1694448579630--

--===============9058117647002506471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9058117647002506471==--
