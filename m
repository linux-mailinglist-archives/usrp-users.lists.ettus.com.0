Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0AE40215E
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 01:00:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD06F384787
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 19:00:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="e3AtY4bY";
	dkim-atps=neutral
Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EB461384277
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 18:59:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630969169; bh=/l8hYGnniHqo0fscRiZyGximnTxLK/DO4zURbrtKorU=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=e3AtY4bYj0F0XOttaCYVBZQtECSsxAbVItssF6JGfoJWcyVDO+ufGOHP+TBMNAkvaacF2o1sB74eyYTS9BVkf/KWusAZN6ZcYx5mWoJrHn0k8Iru+zsSKaDhYJgHIHqLkBnC5TyFz+GA9KZqFdWJRfR9YuSfYEFByb/zgoZp+6GhBmGAzgs4saFo6myDYMsV3CUfyGrxeUzS7nUekbHIG+8e+3WLH0xyGlMP7Kgonl3XRr+kZRUinAwsxRerNqAQdx8dn6otEf37jzKKfNNFND2CwMiQP3Oa24N0JtfaYnCduHz5H9nKIN2mFI3n8AzCxdMsxNZrX/uxZ0EYW0pxBw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630969169; bh=y+CsmK46fpL4gNbwC5xfb1qXCdjbG67Rbzvxn9JOjXH=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=AWYKQM+25wbBaWKkYQpgEEhMg+ZkyNpVb7xIeFBd7grlGXU4s4JMuBV5yuc1JptA/PmY1wxvknNjIjULCpvIfVyx+TSwsbGnBZPbq9Ja/+cAEXanBgDPEt7Yi7NwFmXP3N0ti08TU55W+jQ4jMxTmjS15FZ33ou+K6tachJ5XcsT/8u9f3XMfl88nzrLOxrFqIoOqs5JB8szx6aA7+4cpmBTsQDEYVtFdvZhJeshiXbzmKrArPqjmiuxkITGTF1yQWRRcaqbLdYtG1q/+DMd4sirVTHcIQy08WvevITPlczHh2SZlPjLc2OivKQUgDUg9z3nAraBphGYj7lgIKvwug==
X-YMail-OSG: fuNRNfwVM1kRg3rwVPMyDQFoyHHFK0vLDrSDwBWeITAjdpJRzesYlymQXwnzMpl
 6uNBteAN70qt3w_KYLuoGkxzOq4WhD0Pm9.nI9mSEY_wODnN4WhU4RQR.vs4M.WKMfaCZTwJ1DWb
 ZpLzbWQ3_aeADV8h.MIm4ylUB9aBZBvSPWWysRGH9G4ilBh5MfqBNJ0KJRkUbZf9ItB4eAynhoiy
 pphBoncI4kyivRvq5eEe7I0FaasWSocL4k8Xr77mEuu1uVqmtk3s98eUXvzR91vqCGJEWquMw1hT
 9kF6YoNdi_Nx4awGHwgvnYJoGrfnLOtXYcsf7QtjsK25lPurHLITRVOUiNkj3Md1UXS1KSyAK.o9
 iB91emB6fzFEK_eTV8sgsI_gKLE9fbkEbyM2qJZhfAtcBy7hwlUvYot8k_1rIibTjEm59rd3kq8K
 GItCHDeuEyf0BxQZkikJlL_uKa_gpbv4NAJlGwUiwSOw_nvNnQEmchQP4qceWgZgV5aTZ3iblVFJ
 KNx.sXhJi3kZIItaJi8lzD_3LgAGLw4l14sXiUMO.e1uUAct7j13jTryjdGpZ0SGEwbfMuQTsEXo
 Ru0F0rArgKOqoKEimYJ3HXgOq4myuPHcoHrj.yd99On.XdOCwQDdM3a9DtITNVi_GOK0iKd2CrTf
 c0XzKtcXSEIFetreccTHn.aT0O0fCHIqqgPDrLfnBv4_HS.h_.94Jz1U4neO9FT6e4qDQuR7xuXV
 0JCU39FfpETzmUft5C9JEG.TBQN8Fa8fdMHUm1VEz1WITiXyWXO6IJffe2J7KrRmk8obGk51RhOb
 lCEuLjrgd_GvLJsxCbnvuDekV4pbVpPEBQWK3x4EB7eXipNiZMBgk2Zw_Z0MlgS9t97FPYd9Lhj1
 t1pGFyHaZMTtaCpszheS6TQOMmslnKN4lwE0GZQ.0KDLR1J8cv19OOckfq.olZo4w2IxYpdAcZD6
 7paL1iSKOT15Q22mnViqMMxXhZGoqjEw12qYO7OGKI5xNs7sai6A6fk4_MHKFEpaScLmRp2Ig3vM
 MFhLZh5qm6OI6yseVkFDpGHDaAizTpoQw8Qaf2PHENqEwvhrcTQFnkjScpiL4rwKoGxqna5_c7gS
 GlzPj6HWW6Osjfh1HJ4Idv_QBJZ7y8FPYOVxe2FdzfwWqIml_rG5aLYMMqoABVcLT1vX0Bc7KINX
 R3NMrJvN55AqT1UWurDz0UEezrNZnbOK4l6cy0fl1T6s91dyBd1nRpqwDAwbTQyaecR4M2U1XNQC
 ycyWguEuGK6g_6KfH0D0DslTDAey4UCV_mOT9Pkko0ttKMa28FLNvA01In4khNPRcrvOWa9lwIlq
 B7sVSx0rg6qGilB7VMN94hiMZB2_6it7rWRtccYzLz9ucxW_P9lgA8uJHS5ZajfD7MOwBFob_OUp
 EhthXFNDUHMfYrhKmZT9IYw5_CBnuGFP0o6xol5iPLboDgjDWCi23wVUahgCBVjVsVgTEWp3amTE
 XvN96hMLwqgx5Ho6rUJCwMFlpzRLQHtHfcs0J4UKD4EilnxYYoVj96nlvIiO99c4Z6akMUnx1bYr
 ItGtmdkCdr7n0W.KE_dzuKNyY1zEcGWsFqaTMJHYRZZmPjF6uNZo.JHNTlbymt6YgokTwCs9kZqU
 58L0l.N3OJdPVUseGkqc_TY6tKObotLPoVaoEItNyTZTobknWyZfboa1nq3G6EYTxjsFf75wPh.Y
 JppBvWLqYE6SsAaMguPeJVt_w098Q4j8513vlbINse1zptPe55vsr5vk6YSDOlKt.XmYC6iKPbWg
 YGAC_GKZdg_jsi5WWgbpFJI3x0W.NOo.ZdiSCfZm1obRNzh9Aithx9lZ7zAwwaayNCGOiybVAV4R
 QWzQAJvPjDT80yUFsBArSMPrgs_Z4.AvlqmyAXEX2W1m6FTK.LV3xroevkJWUS5cBIz6rljb9XH4
 ZikA84dA3USM9gx0Ge41FuU.pLtjj93Kqh21Qf7OOn7hmBPYAmDpQJiVqHLQU_NdZ21QtngvSpPV
 Fe8Rnoi8TYgmbEKaqwr7lDqD_T_1p2qcHlI2IDx6FPidLpWF8.oeNmX78Fq_ugtB9XJOSDnR5Qkv
 bw2gmfEb_UtHsyrEOb2ys_CLwWEwRwLYYKqD9lod0QM1HryA7fYQ3tCyesiPtfnqOWNm3m38xPXC
 hQ8bNZYmi1w6N3oZeqElcAsMG_L7ueEENTp9AhhejHyjw2ng30FiXu46BblD684b2UsasUn0IxEf
 g5cxFBL90wiAofN3n_RrKRnGPMhVatVK2FOEFjbRMvOAPWLult2Qvm0QY5raYt_axER3uQp7T9Is
 uhGeE5Y2bGHcA8.g7ilM0
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Mon, 6 Sep 2021 22:59:29 +0000
Date: Mon, 6 Sep 2021 22:59:25 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <147565774.1577833.1630969165270@mail.yahoo.com>
In-Reply-To: <606552990.1786539.1630963952986@mail.yahoo.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: HNXZ7KIXXI43BYEY63QNJWWXEVYFH7SC
X-Message-ID-Hash: HNXZ7KIXXI43BYEY63QNJWWXEVYFH7SC
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HNXZ7KIXXI43BYEY63QNJWWXEVYFH7SC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7127231200554093437=="

--===============7127231200554093437==
Content-Type: multipart/alternative;
	boundary="----=_Part_1577832_1587418535.1630969165266"

------=_Part_1577832_1587418535.1630969165266
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Could you please help on this?I find some confusing information on MTU conf=
iguration in different ettus web pages:https://files.ettus.com/manual/page_=
transport.html=C2=A0:=C2=A0 MTU=3D8000 for 10GigE
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=C2=A0: MT=
U=3D9000 for 10GigE

Which one is correct? :=C2=A0
Thanks.

    On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users <usrp-us=
ers@lists.ettus.com> wrote: =20
=20
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


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1577832_1587418535.1630969165266
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp16591bb1yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Marcus,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Could you please help on this?</div><div dir="ltr" data-setdir="false">I find some confusing information on MTU configuration in different ettus web pages:</div><div dir="ltr" data-setdir="false"><a href="https://files.ettus.com/manual/page_transport.html" rel="nofollow" target="_blank">https://files.ettus.com/manual/page_transport.html</a>&nbsp;:&nbsp; MTU=8000 for 10GigE<br></div><div dir="ltr" data-setdir="false"><a href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel="nofollow" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>&nbsp;: MTU=9000 for 10GigE<br></div><div><br></div><div dir="ltr" data-setdir="false">Which one is correct? :&nbsp;</div><div><br></div><div dir="ltr" data-setdir="false">Thanks.</div><div><br></div><div><br></div>
        
        </div><div id="ydpba31248yahoo_quoted_1193244036" class="ydpba31248yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydpba31248yiv8219365124"><div class="ydpba31248yiv8219365124yqt2927466630" id="ydpba31248yiv8219365124yqtfd82316"></div><div><div class="ydpba31248yiv8219365124ydpb9dc4fa4yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div class="ydpba31248yiv8219365124yqt2927466630" id="ydpba31248yiv8219365124yqtfd67245"><div></div>
        </div><div dir="ltr"><div class="ydpba31248yiv8219365124yqt2927466630" id="ydpba31248yiv8219365124yqtfd87247"> </div><div><div class="ydpba31248yiv8219365124yqt2927466630" id="ydpba31248yiv8219365124yqtfd61407"><div dir="ltr">Hi,&nbsp;</div></div><div dir="ltr"><br clear="none"></div><div dir="ltr">I have a problem with the N321 USRP. I find packet dropped
in USRP but not in host. In host, I am running Ubuntu 18.04.</div><div><br clear="none"></div>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>&nbsp;<u>Below is the ifconfig result in N321:</u></b></p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~# ifconfig</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eth0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BA</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.10.165&nbsp; Bcast:192.168.255.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>1500</b>&nbsp; Metric:1</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:618374 errors:0 <b><span style="color:red;">dropped:11485</span></b><span style="color:red;"> </span>overruns:0 frame:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:193714 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:39776733 (37.9 MiB)&nbsp; TX bytes:14546432 (13.8 MiB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Interrupt:27 Base address:0xb000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">int0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link encap:Ethernet&nbsp;
HWaddr AE:CD:BA:E1:CF:96</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:169.254.0.1&nbsp; Bcast:169.254.0.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:9000&nbsp; Metric:1</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:456 errors:0 dropped:0 overruns:0 frame:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:15 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:37392 (36.5 KiB)&nbsp; TX bytes:2770 (2.7 KiB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Local Loopback</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:127.0.0.1&nbsp; Mask:255.0.0.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
LOOPBACK RUNNING&nbsp; MTU:65536&nbsp; Metric:1</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:89 errors:0 dropped:0 overruns:0 frame:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:89 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:7480 (7.3 KiB)&nbsp; TX bytes:7480 (7.3 KiB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BB</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.12.2&nbsp; Bcast:192.168.12.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp; Metric:1</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:6239 errors:0 <b><span style="color:red;">dropped:804 </span></b>overruns:0
frame:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:5669 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:18466697 (17.6 MiB)&nbsp; TX bytes:18417536 (17.5 MiB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Link
encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BC</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
addr:192.168.13.2&nbsp; Bcast:192.168.13.255&nbsp; Mask:255.255.255.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UP
BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp; Metric:1</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
packets:24868 errors:0 <b><span style="color:red;">dropped:796</span></b><span style="color:red;"> </span>overruns:0 frame:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX
packets:24613 errors:0 dropped:0 overruns:0 carrier:0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
collisions:0 txqueuelen:1000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX
bytes:20486915 (19.5 MiB)&nbsp; TX bytes:19611643 (18.7 MiB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><u><b>Below is ifconfig result in host:</b></u></p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">user@USRP-SERVER:~$ ifconfig</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eno1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>1500</b></p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.10.143&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.255.255</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6
fe80::b27b:25ff:fe1d:9e4e&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ether
b0:7b:25:1d:9e:4e&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
5604&nbsp; bytes 416435 (416.4 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
404&nbsp; bytes 68556 (68.5 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; device interrupt
16&nbsp; memory 0xd2100000-d2120000</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b><span style="color:red;">9000</span></b></p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.12.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.12.255</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6
fe80::faf2:1eff:fe42:dddc&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether
f8:f2:1e:42:dd:dc&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
294&nbsp; bytes 35184 (35.1 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
395&nbsp; bytes 37148 (37.1 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>9000</b></p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
192.168.13.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.13.255</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;inet6
fe80::faf2:1eff:fe42:dddd&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether
f8:f2:1e:42:dd:dd&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets
9&nbsp; bytes 2228 (2.2 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
72&nbsp; bytes 7983 (7.9 KB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet
127.0.0.1&nbsp; netmask 255.0.0.0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6 ::1&nbsp;
prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; loop&nbsp;
txqueuelen 1000&nbsp; (Local Loopback)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets 21071&nbsp;
bytes 1497110 (1.4 MB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp;
dropped 0&nbsp; overruns 0&nbsp; frame 0</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets
21071&nbsp; bytes 1497110 (1.4 MB)</p>

<p class="ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp;
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>

<div>&nbsp;</div><div>Could you please let me know what is the possible reason for
packet drop in USRP? How to fix it?</div></div><div><br clear="none"></div><div dir="ltr">Thanks for any inputs.</div><div class="ydpba31248yiv8219365124yqt2927466630" id="ydpba31248yiv8219365124yqtfd49064"><div dir="ltr"><br clear="none"></div><div dir="ltr"><br clear="none"></div><br clear="none"></div></div></div></div></div><div class="ydpba31248yqt2927466630" id="ydpba31248yqtfd65263">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_1577832_1587418535.1630969165266--

--===============7127231200554093437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7127231200554093437==--
