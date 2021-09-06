Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C8540211B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 23:33:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E028380E6D
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 17:33:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="MtMzaERQ";
	dkim-atps=neutral
Received: from sonic317-27.consmr.mail.bf2.yahoo.com (sonic317-27.consmr.mail.bf2.yahoo.com [74.6.129.82])
	by mm2.emwd.com (Postfix) with ESMTPS id A723E3844CB
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 17:32:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630963956; bh=Bk36QJIX6S4OzEYdrf/nvv6cVYEWOQErAECWC0WTD1Q=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=MtMzaERQQnip8ZjHD0Y3a0qiEpsRA5UY4/OAQgFnh32d0I+UAfExoi+64rExtlVK3E5FJFUq9YIuH64fk2grhDM3pR9/K7JZ6+e+yhUHdi7xqmJoWJFv3nfZxV9fUhlCR+QVm5XpCxeEWO37Haw8+6myJyqcJm/2jHGIBYQitZsnlAE+K4Cy2tPVpoQ9pRDQvSQ7FWD07+XC4y6te4IYEzhAxQeL1i6gJib2LrzxWFm00cFQ9GsvCjquighi0cCP0w8e3240JafGgPOaAYOWMfzS1iKBX6rGMhY5LLnlUiqiico6TJh1ohaeiUMgpWN2kemLQSksRB5eSn1U4IZaFg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630963956; bh=vQMm+hB/f9VVckZQm0N8AL8fZCxvGBY74kV5lUs2W3g=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ZOwlN3/mmjkZhGuI1p5pN3B/28TLkNW4+MopwKw7dty78dSbr9/cjvIoaqdicuiUlYsb0XZR8Pdfcsp2VmG6Eb0N5nn7ThTetiM6/h20wrNg248huZwNtITDAYuOVV/jWboJimr3I6IOrz4PDFR39M0lMnlrkP1pTzB5T9EW6YWYl0IRatlbA6vD3r3U8SQDBmxzQLr+eQOxVJSW52qBUrgMbUvWN+4TCOqhXQDpglaXh8u8x0u1Shwi4shFvDgFSCHvJ9r9/g3W9I4FJU4VFv6IfTOkmyQa05duQ/pZkuKUzxgaVVYrItt+yeB1M0f1yp52gKMaNMPbrNay+H+kUA==
X-YMail-OSG: N_9IzLEVM1mLkaC30Qc_.G6YjaOa6YzPcTx7dXq_SYqEbwpmsU9nRjGSV27.aYt
 i6KC7mJ6lfoT1x03LgF4tT_O78yeyvOhAfLc.dIvLzgd_G758_XDIhcgg.8atbcwn8jOshkgN6Bv
 QdcVdyOm8FyBU.JDTpjcO70aGfCQxnx7g1S4vEgPkHQsksAxLknQ5bOsvee8MbfmawDCNk2K53oD
 JtkXhgPRbpKkk97Z8mWvqbF5LdJj6dn5DPCOjOQBZKLuW7xx1EY8BNsdVh.K1qtAcuodcXywR56e
 AVq5LQpCxdhvGsZLfPcMTW5tQu_upyCdqKcVd6mYtf2c8he6aNacA66_MNy1r.opSgeQFoGwduSa
 Q7nIFn7zblhzDq9g3nrQaHdFnSTjzoOXThEXltljidbakpZkczws6Gageb4L3l0U5zSFdyDgbXSO
 0XVO.0sAsnKvpdD69HpTYhM68XeqE9eeCJTSNHldi4ePzAu8c22RlBDVbPoBge2WaAD5akR_GVX7
 .wVUmyg.Quum5Hpq93wWUiaxpSnzTGRZRp38K8jx9C53BN3NBWOSpFEt3uRqaNOuZYKMOrgbhimc
 ivinIIpjTSGz8SlE11wYr1mlm96ywMPPxSO3g8lsra3ffWi6.7bDwT9g2MYwam2LZc84LU1mAIoC
 QCZu2nY_Nwq1SJCZVOVOrtRSrKUiZAKQ0ZW.7LA4fF67cQ_sURSBj7YYIj22uKFinvgy5XV3c9zK
 r3fsPK.qXPHnAElWWEH1EaarpY86ESy0hTsSJEfggtgh4tlw_B3r8UqBdbhXkur7HM6cISKF4s02
 TClvvVFbtS5vGrM8LyeIRwW_7Asfa14_4gGETL1w6lXH6sPGGWhqxfGiIziJj0Dg0RupXbt9Vxks
 7OxA92RciKTT6YEIxZBtt6SCdQVaMV5QO6npvrfsjY8cTdp6a8Dbbjaqzd2MW0gfS8XUEWaWYEsq
 8XbhsddaIRdNyQC9AH2IAr_xh2lYx5gN4Krnj96oZWActZeDs7Yi073QbNYTkFVkgcOKz32lhCTp
 5DAqbFloyMHrp6DRnbqCWLpB8a8XSG9kq1uQVYUJtpuexYFCl9tB7XnW6cxx2n0jhv.cSJgFiCfe
 Ibjgr1pyvzxMTTh1erhIEp4ts9Xz59rqj4E2gohVzNskJed2KjJ4r2nYJLOASVecHTKl74P4x_79
 H1..hRD65yLmz.yJOf63iXghio6ilFN8Vu6cjUN20Soyaj1sx19cavFYl.EXEErzmj5iypDT_.Dj
 wrRG712BJvqac.fldjv1xWOCuTSie2M.Pwk2gdqfndRqohsnteaXt9IsuvSGCvm8cqLEtKpgQIRy
 2hc41nhjQpo_AD38QbmqLotJAtvJsC9rESegwzEdMb2juzaf.Th9e8jEFLvQrsYJlm_g.UY_hxSs
 8giwmj.Ot2KValiBFVcmXkjuOvmQmplNj7dYjTUgV.zY3ksU.eof2yxc15qvQ0EYITDwzjyN2bbY
 uJVSxlF5VaUGcsYOYe5hZjdOYTFTwRu2ykIwaZTaThg8VSgdnK4IJwDYrYSYIocmH4Q4Ira8u7nN
 22ahSJWBQjIaMq.FY2CfJWWRiQnC_8.BahkWY6Qda.3.ksdmXRjkAok1Bw1A9pe5r3aHFTYlIY5y
 SmeCrjiHSapUNRZ9puS17H0iF2NpoD44r1Lifp27Df6fLkJExa7odlax1x4UA0jaroV1RFzUs0qA
 ivBVT0rB5OWD7muo5noqhrYlGJa7I4CrDHbirTbzg3g4iPKc6DU19dYFnWap_4MOy7j1HomNu1v6
 5bRaRRPyPk_w_AkoWZdqAPQG4akTqzfOaK2qoFK4PwD2ZeHaYtlBOpfD8nEyugSr5Skzu7mT.WFP
 yv5ZCok6Gel5jtv3CKNWcpe54Ezzz2ig4Si19E2PalfnXDn8KbiEPX5Itwizopq3EPs8lEf0mBDz
 DcH4ZBMwmwLT9VdHsmHxiQ3YlrgC.v5aEmpCQLNhmhEKuzqlLcpCRI1g1FP8dXSORM2Ncyedua4w
 V46k3HQ2U1MDRfa2wc1DuHUeQeWqK7RmsKlxJcMqaT5kwD5PRy7GjVBlVP8GDB5WPSNYQonxSYpQ
 HCceXqxluTP7uKzx4iHCQE1sFqOtxYUDkzn6AGJtx61xWQcp_5A50iIbh.4Nf_DW_snF8N7ct41X
 v8THU5RKu1ztvQp_I7hpCBY6J8idCLNb9nx9UvoA59MY.ah3c9JPDz44s4i9ytD7Yd5VIhXD.rfj
 jDQQNwOXHWmBYMycCPdCPa2D2DI1.coj5lMUjMHwPKv9ZgCe4v70k
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Mon, 6 Sep 2021 21:32:36 +0000
Date: Mon, 6 Sep 2021 21:32:32 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <606552990.1786539.1630963952986@mail.yahoo.com>
In-Reply-To: <78915145.1401871.1630855703615@mail.yahoo.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: TN4AQGODP4YKBFFQMUNNZTDNDIHZSCJT
X-Message-ID-Hash: TN4AQGODP4YKBFFQMUNNZTDNDIHZSCJT
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TN4AQGODP4YKBFFQMUNNZTDNDIHZSCJT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2392596143821254200=="

--===============2392596143821254200==
Content-Type: multipart/alternative;
	boundary="----=_Part_1786538_1658159489.1630963952983"

------=_Part_1786538_1658159489.1630963952983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

  Hi,=C2=A0
I have a problem with the N321 USRP. I find packet droppedin USRP but not i=
n host. In host, I am running Ubuntu 18.04.

=C2=A0Below is the ifconfig result in N321:

root@ni-n3xx-320CAAB:~# ifconfig

eth0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Linkencap:Ethernet=C2=A0 HWaddr 00:80:2F=
:32:36:BA

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inetaddr:192.168.10.=
165=C2=A0 Bcast:192.168.255.255=C2=A0 Mask:255.255.255.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPBROADCAST RUNNING =
MULTICAST=C2=A0 MTU:1500=C2=A0 Metric:1

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXpackets:618374 err=
ors:0 dropped:11485 overruns:0 frame:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TXpackets:193714 err=
ors:0 dropped:0 overruns:0 carrier:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0collisions:0 txqueuel=
en:1000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXbytes:39776733 (37=
.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Interrupt:27 Base add=
ress:0xb000

=C2=A0

int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0HWaddr AE:CD:BA=
:E1:CF:96

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inetaddr:169.254.0.1=
=C2=A0 Bcast:169.254.0.255=C2=A0 Mask:255.255.255.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPBROADCAST RUNNING =
MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXpackets:456 errors=
:0 dropped:0 overruns:0 frame:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TXpackets:15 errors:=
0 dropped:0 overruns:0 carrier:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0collisions:0 txqueuel=
en:1000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXbytes:37392 (36.5 =
KiB)=C2=A0 TX bytes:2770 (2.7 KiB)

=C2=A0

lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Linkencap:Local Loopback

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inetaddr:127.0.0.1=
=C2=A0 Mask:255.0.0.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPLOOPBACK RUNNING=
=C2=A0 MTU:65536=C2=A0 Metric:1

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXpackets:89 errors:=
0 dropped:0 overruns:0 frame:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TXpackets:89 errors:=
0 dropped:0 overruns:0 carrier:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0collisions:0 txqueuel=
en:1000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXbytes:7480 (7.3 Ki=
B)=C2=A0 TX bytes:7480 (7.3 KiB)

=C2=A0

sfp0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Linkencap:Ethernet=C2=A0 HWaddr 00:80:2F=
:32:36:BB

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inetaddr:192.168.12.=
2=C2=A0 Bcast:192.168.12.255=C2=A0 Mask:255.255.255.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPBROADCAST RUNNING =
MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXpackets:6239 error=
s:0 dropped:804 overruns:0frame:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TXpackets:5669 error=
s:0 dropped:0 overruns:0 carrier:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0collisions:0 txqueuel=
en:1000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXbytes:18466697 (17=
.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)

=C2=A0

sfp1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Linkencap:Ethernet=C2=A0 HWaddr 00:80:2F=
:32:36:BC

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inetaddr:192.168.13.=
2=C2=A0 Bcast:192.168.13.255=C2=A0 Mask:255.255.255.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPBROADCAST RUNNING =
MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXpackets:24868 erro=
rs:0 dropped:796 overruns:0 frame:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TXpackets:24613 erro=
rs:0 dropped:0 overruns:0 carrier:0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0collisions:0 txqueuel=
en:1000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RXbytes:20486915 (19=
.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)

=C2=A0

Below is ifconfig result in host:

user@USRP-SERVER:~$ ifconfig

eno1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet192.168.10.143=C2=A0 netmask=
 255.255.255.0=C2=A0 broadcast 192.168.255.255

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6fe80::b27b:25ff:fe1d:9e4e=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0etherb0:7b:25:1d:9e:4e=C2=A0 txqu=
euelen 1000=C2=A0 (Ethernet)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets5604=C2=A0 bytes 41643=
5 (416.4 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0dropped 0=C2=A0=
 overruns 0=C2=A0 frame 0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets404=C2=A0 bytes 68556 =
(68.5 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0dropped 0 overr=
uns 0=C2=A0 carrier 0=C2=A0 collisions 0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device interrupt16=C2=A0 memory =
0xd2100000-d2120000

=C2=A0

enp1s0f0:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet192.168.12.1=C2=A0 netmask 2=
55.255.255.0=C2=A0 broadcast 192.168.12.255

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6fe80::faf2:1eff:fe42:dddc=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 etherf8:f2:1e:42:dd:dc=C2=A0 txq=
ueuelen 1000=C2=A0 (Ethernet)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets294=C2=A0 bytes 35184 =
(35.1 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0dropped 0=C2=A0=
 overruns 0=C2=A0 frame 0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets395=C2=A0 bytes 37148 =
(37.1 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0dropped 0 overr=
uns 0=C2=A0 carrier 0=C2=A0 collisions 0

=C2=A0

enp1s0f1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet192.168.13.1=C2=A0 netmask 2=
55.255.255.0=C2=A0 broadcast 192.168.13.255

=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0inet6fe80::faf2:1eff:fe42:dddd=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 etherf8:f2:1e:42:dd:dd=C2=A0 txq=
ueuelen 1000=C2=A0 (Ethernet)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets9=C2=A0 bytes 2228 (2.=
2 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0dropped 0=C2=A0=
 overruns 0=C2=A0 frame 0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets72=C2=A0 bytes 7983 (7=
.9 KB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0dropped 0 overr=
uns 0=C2=A0 carrier 0=C2=A0 collisions 0

=C2=A0

lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet127.0.0.1=C2=A0 netmask 255.=
0.0.0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 ::1=C2=A0prefixlen 128=C2=
=A0 scopeid 0x10<host>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop=C2=A0txqueuelen 1000=C2=A0 =
(Local Loopback)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 21071=C2=A0bytes 1497=
110 (1.4 MB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0dropped 0=C2=A0=
 overruns 0=C2=A0 frame 0

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets21071=C2=A0 bytes 1497=
110 (1.4 MB)

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0dropped 0 overr=
uns 0=C2=A0 carrier 0=C2=A0 collisions 0
=C2=A0Could you please let me know what is the possible reason forpacket dr=
op in USRP? How to fix it?
Thanks for any inputs.



------=_Part_1786538_1658159489.1630963952983
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpb9dc4fa4yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false"> <div><div dir="ltr" data-setdir="false">Hi,&nbsp;</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I have a problem with the N321 USRP. I find packet dropped
in USRP but not in host. In host, I am running Ubuntu 18.04.</div><div><br></div>

<p class="ydpc002c510MsoNormal"><b>&nbsp;<u>Below is the ifconfig result in N321:</u></b></p>

<p class="ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~# ifconfig</p>

<p class="ydpc002c510MsoNormal"><b>eth0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BA</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.10.165&nbsp; Bcast:192.168.255.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>1500</b>&nbsp; Metric:1</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:618374 errors:0 <b><span style="color:red">dropped:11485</span></b><span style="color:red"> </span>overruns:0 frame:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:193714 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:39776733 (37.9 MiB)&nbsp; TX bytes:14546432 (13.8 MiB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Interrupt:27 Base address:0xb000</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal">int0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link encap:Ethernet&nbsp;
HWaddr AE:CD:BA:E1:CF:96</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:169.254.0.1&nbsp; Bcast:169.254.0.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:9000&nbsp; Metric:1</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:456 errors:0 dropped:0 overruns:0 frame:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:15 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:37392 (36.5 KiB)&nbsp; TX bytes:2770 (2.7 KiB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Local Loopback</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:127.0.0.1&nbsp; Mask:255.0.0.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
LOOPBACK RUNNING&nbsp; MTU:65536&nbsp; Metric:1</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:89 errors:0 dropped:0 overruns:0 frame:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:89 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:7480 (7.3 KiB)&nbsp; TX bytes:7480 (7.3 KiB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal"><b>sfp0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BB</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.12.2&nbsp; Bcast:192.168.12.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp; Metric:1</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:6239 errors:0 <b><span style="color:red">dropped:804 </span></b>overruns:0
frame:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:5669 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:18466697 (17.6 MiB)&nbsp; TX bytes:18417536 (17.5 MiB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal"><b>sfp1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BC</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.13.2&nbsp; Bcast:192.168.13.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp; Metric:1</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:24868 errors:0 <b><span style="color:red">dropped:796</span></b><span style="color:red"> </span>overruns:0 frame:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:24613 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:20486915 (19.5 MiB)&nbsp; TX bytes:19611643 (18.7 MiB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal"><u><b>Below is ifconfig result in host:</b></u></p>

<p class="ydpc002c510MsoNormal">user@USRP-SERVER:~$ ifconfig</p>

<p class="ydpc002c510MsoNormal"><b>eno1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>1500</b></p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.10.143&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.255.255</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6
fe80::b27b:25ff:fe1d:9e4e&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ether
b0:7b:25:1d:9e:4e&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
5604&nbsp; bytes 416435 (416.4 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
404&nbsp; bytes 68556 (68.5 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; device interrupt
16&nbsp; memory 0xd2100000-d2120000</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b><span style="color:red">9000</span></b></p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.12.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.12.255</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6
fe80::faf2:1eff:fe42:dddc&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether
f8:f2:1e:42:dd:dc&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
294&nbsp; bytes 35184 (35.1 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
395&nbsp; bytes 37148 (37.1 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>9000</b></p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.13.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.13.255</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;inet6
fe80::faf2:1eff:fe42:dddd&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether
f8:f2:1e:42:dd:dd&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
9&nbsp; bytes 2228 (2.2 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
72&nbsp; bytes 7983 (7.9 KB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpc002c510MsoNormal">lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
127.0.0.1&nbsp; netmask 255.0.0.0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6 ::1&nbsp;
prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; loop&nbsp;
txqueuelen 1000&nbsp; (Local Loopback)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets 21071&nbsp;
bytes 1497110 (1.4 MB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
21071&nbsp; bytes 1497110 (1.4 MB)</p>

<p class="ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<div>&nbsp;</div><div>Could you please let me know what is the possible reason for
packet drop in USRP? How to fix it?</div></div><div><br></div><div dir="ltr" data-setdir="false">Thanks for any inputs.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><br></div></div></body></html>
------=_Part_1786538_1658159489.1630963952983--

--===============2392596143821254200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2392596143821254200==--
