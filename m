Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F7D3E3DFF
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 04:46:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C240C383E64
	for <lists+usrp-users@lfdr.de>; Sun,  8 Aug 2021 22:46:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="rXYPgNPg";
	dkim-atps=neutral
Received: from sonic314-15.consmr.mail.bf2.yahoo.com (sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 44C54380A97
	for <usrp-users@lists.ettus.com>; Sun,  8 Aug 2021 22:45:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628477120; bh=vjfssVC89+Y//fneFqtvq44Zf/yYQdv3iywaaTA+BnE=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=rXYPgNPg8WOCyn4nxLNZaBzFxuXl7sEVF9TQG3BJLt6imAAT+3TlO/rQIkpzywrKA36D6EoR83JwtBDVb6G9Ur0GH2jLHeWYJg9U1pot5QaADTossFknoW2g6NNUUVXX3FAhlH2fRkTSzlbVK+pGplA34WRmcIjDd82ucIcEvcvdqjxu9mwA5Q6rJb6PA+ZQ6ycQnQNto0k9PaK16yFdiTcFziYIKO1CsTx5QBSujuW7ju4XWXgw/BqOwsdEloEI+jXxb5mMJFZ1HLAqjjkdudbD2LvDdOlmnW7s161ICllQLEB31m0fy1DMr89iIJkPgNWb0OFS/w6eCpY5oYqdPQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628477120; bh=wTO21E+1hRY19kYSYjvGyx4kT6MDZOLCepO+jW6RHKM=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=afbrRr4fhezjwoPRDIB093gVBYvSb4n9SQPWM4TrD0dWObB9d0gVD+cjmZ8w89aEr1EL7jm6MwRVHzbEEd3vbyuqMJyRWzepIEiQcQaqsq1XuBp0/2H7oIuJmLFNJWLMYyjon9f+fx+c0qeX8/MLksMBFvGJrjmpmVQPFSKHK8WpiWkHKICXOVbYb3E/+Bx5JvpfZD3o/mkosg61CSjKUuG1+eMJg+T70Lvx4+RKTK72jBoQv5jwQw59AWmBf2GpWS3NcI3Srq8qB9kTeuI7V9sl74Wof+NOnioIAoUi8B2SKta3m3SC8TFxprD2aJ/NW+nGXEPjJrenc3zBn+XVDA==
X-YMail-OSG: cU.vNN8VM1ltsf8k9Wdzo625Cdxhsh0h1FPlt9eAJJJnEo0uMNUcguRcUiXQ573
 TmmOUulYwQfk.eObzUYZir2C4XAlyWuWtjMpU_vRaIVi8AF16SO66fB9SDwIBZxMYGC0bxhPdldI
 jjRwXu0cgKXKy6oGU3aAiW3dlIyyQwea2BkIHIFl3j3Et4VYVBbm5brRNj8JiLabJBf6IHbsQazO
 ndphhP6FlGJdG.KBK6VD6io.UzR0BSKoB5kpHkKth7qr0oyGk2VmJZvTLzuj9xLBAkhuhIKws7Y8
 NXFJZcZhd8baTwC.jtNNhp8Nxzrrz4XPKtlTih3gfczMWH3bxGKJzJjtFiGMNRz2jWLCQ9VrKGIY
 YuEVgrXMnStGbxKKTV3YhS4T0JWmUCYfwt5JIRza6vXb1mj7FLk4NWSwSljK4emQ1GiMByEUziS2
 DG.Or3kRLwiHsHXrgmJ9hJiw6vrn4k5K4iGaEtFgTL3w8HpHWcfljJ0NZDul53TQ8q6Yq6BEE5n8
 xdIV3UeuyY55yqxEo3jLoI4B4NKeFCqEzKe0HYvbmUgtfhyf8khc5UOt93Eah1sCAkUspCnMlO6S
 jgIyc.u0spf0XFD0hxNeTLEhexvjln3BMlbJ4iK5qqragnfrPRFKaDyviOLdfZU8GOubTH4NLz5A
 e9uihyyu_tP5SgusEB.BRBwX6YqSJ6uuMB18OTujhXAedxbIWrlPQW9dQqnHUqnqJeznIXmXrITi
 e0JBJjxYI_L7_B9Lj_jb.M7Tz18OI47.xA3ZI3SOsvEgbNRJlMpuHWKIrAt3h4iWvJkiqNnejqI_
 CVQJRJUbH9.hbCnuaHXkq4IHnXozKLl53DHAO5wfocEczYwS46u_7CPxxzswOb45UXJnhM_adSy8
 Mz.rKD89_xjn4UwPwhf6jvUpFcF3W4j3HQgMFNxFOWq2HGXjVCOSCuS3ae80EIxYvr7NZ8HzDQQp
 DQ1.CWfkIMYjbmVx_QUl6v3IMV0HHv5qD7L6wyLnAkf.t0yapBZNCE8NWP2Ow4IHvOxF_UOulj9h
 cRANNrmyd7MwP7cF8FSh9OgvdP5BxUXqsdtOJ9KvDp2I0o5VbNTq9YED2Ehb7a5dprKuy1qmnE.f
 TAu2G8GWNfsWGnbwp_NF5WLkM3O8oc9OHRuh5Dq4W0c0EFY9qwee8rKl6EzkE26gr14v80w6X5ys
 aeG565tuAxOt8hwpOCucg3iRK4Bxgppv.K6XWftBlASysu0_p98R.9sXD.Ey1IESPAkQNsj1oHa.
 9VBd7FpUj9KqBCeSEhP8dkICI7OSijSFRQYDaXv4X5yYe5Kci.xOTv9YB4EZb7mJOToY.PBZAjIC
 NgsKsqXGHEb3ZNAKE9q2iNwQzl5G.yz5sji.zH3qw3yLCMRq5WROAgyUv7hvTiRPGXqmgm0QRWdR
 Z35JS0KCic2fCt3oe0Ak1XWOkg6DLDM4ixzHo.IqBZSi.keMQiCcAxMgvt9gn7qJgSjy_T6uzZgD
 4z3lRvvmeezv3IIe_cEsRCB9P.Jz1un75Sr8bHUqVzyBzHaw1lUs.5LrLAHJcb2cyKgiELnhSn6S
 qu396hWMhcmWi_lhEqDPS6N0suk8MQwsCLHNUPUFtDH5YlfhRlIMl5fTPWQE_VZpuyDkjFIhNkpB
 Te.4MIgbobjcow18A52GP5mivlQywzxTSnnzAuzcYiZ5TZ4cCwuHnPfzTBKsfp50DkTfA8iFRmHQ
 8mnEa2BuEfNG.udmuxEK76hqjMGWP3sPVglL6J.IVjGucibsa4g0rLvBKPPPdA5_G8qLWD.s6SIn
 BOdmS4lIHW25cW0_A8D2SNXQ1EQoeOBnH925cxvybOI4..l_wcNV2Y.jluiQNeQmSnVDuWSCUWEX
 fczOSVkbkcTFcUKgp4cVn9M5m46.JV0N83hVQn6e5Ziu3NtdOwcBeS7170nyc.80IfY9BhCTVCNc
 OXtVPSNRuKIAsq5YjIVqWH8uFG9gl4eIvanr_.9Czn06jqcT2v.ffLxd89kRepf24aMuXHlu44LJ
 MXE6vySKdTwoY4.akTMRs7qurDEkR3h.bCrwK1BaFYRl9TUVMLHqMgpxfbDRTpYdSMlWWCgUq.hT
 PyQzPYgxbn7zytap_FxlRYboYJku8FUKl0ALqUdWZZPPEvZB49qlTqn_9fETxAyY8zhgzDLk75dn
 VP1WXW6Ue.Nuo5nMA50Sief0JhfVLpFEhsUEXibjIIYWpS8vn37Y3ur5jtyBbJkea9qbw8Z0jele
 yG1nPjlAtUt1gTbzUqQjBlCNdslrYJVYJKf7NNrmlxOu.rKwir_1slKskFdTUmL9MvW2CNe.yK4V
 bz8_2hwbX8754zP0bbd1pvFBJrPsU.JFv7zP8vaSYUFBuypVSG6TSGfcU5uuGiA9eacC.iDCTRTB
 mwy83NOBUnzMAjTNDcZbUtBFwgs1BM5n0lxqvFsp06ywSryh88G2jhkuXW7iLsPT3Imz0nQcZce5
 dnUPubRw-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Mon, 9 Aug 2021 02:45:20 +0000
Date: Mon, 9 Aug 2021 02:45:16 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1343769836.268037.1628477116595@mail.yahoo.com>
MIME-Version: 1.0
References: <1343769836.268037.1628477116595.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: HQEL4UEUS2D52EBY2FBSNKWHVT7B5OXD
X-Message-ID-Hash: HQEL4UEUS2D52EBY2FBSNKWHVT7B5OXD
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] "Failure to create rfnoc_graph" error when updating FGPA on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQEL4UEUS2D52EBY2FBSNKWHVT7B5OXD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4014917845480799455=="

--===============4014917845480799455==
Content-Type: multipart/alternative;
	boundary="----=_Part_268036_1289058932.1628477116594"

------=_Part_268036_1289058932.1628477116594
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello 
I'm currently trying to update the default fpga image on a usrp n310 and I'm getting an error. This a print out 


tw@tw-virtual-machine:/usr/local/share/uhd/images$ uhd_image_loader --args "type=n3xx,addr=172.37.104.131" --fpga-path=usrp_n310_fpga_HG.bit
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.heads-v4.0.0.0-13-g240c7fdd
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Installing component `fpga'
[INFO] [MPM.PeriphManager] Installing component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 316CD05
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=internal,time_source=internal'.
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward CHDR packets to from eth0.
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,addr=172.37.104.131,find_all=1
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=2500000
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minimum recommended size of 816000 and may result in dropped packets on some NICs
[WARNING] [UDP] The current send_buff_size of 212992 is less than the minimum recommended size of 307200 and may result in dropped packets on some NICs
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused
[INFO] [MPM.PeriphManager] init() called with device args `find_all=1,fpga=HG,mgmt_addr=172.37.104.131,product=n310,clock_source=internal,time_source=internal'.
[WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward CHDR packets to from eth0.
Error: RuntimeError: Failure to create rfnoc_graph.




------=_Part_268036_1289058932.1628477116594
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hello <br></div><div dir=3D"ltr" data-setdir=
=3D"false"><div>I'm currently trying to update the default fpga image on a =
usrp n310 and I'm getting an error. This a print out <br></div><div><br><br=
>tw@tw-virtual-machine:/usr/local/share/uhd/images$ uhd_image_loader --args=
 "type=3Dn3xx,addr=3D172.37.104.131" --fpga-path=3Dusrp_n310_fpga_HG.bit<br=
>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.heads-v=
4.0.0.0-13-g240c7fdd<br>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: mgmt_addr=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D3=
16CD05,fpga=3DHG,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed dev=
ice without full initialization.<br>[INFO] [MPMD IMAGE LOADER] Starting upd=
ate. This may take a while.<br>[INFO] [MPM.PeriphManager] Installing compon=
ent `fpga'<br>[INFO] [MPM.PeriphManager] Installing component `dts'<br>[INF=
O] [MPM.RPCServer] Resetting peripheral manager.<br>[INFO] [MPM.PeriphManag=
er] Device serial number: 316CD05<br>[INFO] [MPM.PeriphManager] Initialized=
 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init() called with devic=
e args `clock_source=3Dinternal,time_source=3Dinternal'.<br>[INFO] [MPMD IM=
AGE LOADER] Update component function succeeded.<br>[WARNING] [MPM.PeriphMa=
nager.UDP.UDP] No internal interface to forward CHDR packets to from eth0.<=
br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fpga=3DHG,cla=
imed=3DFalse,addr=3D172.37.104.131,find_all=3D1<br>[WARNING] [UDP] The recv=
 buffer could not be resized sufficiently.<br>Target sock buff size: 250000=
0 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport appli=
cation notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.rme=
m_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be resized suf=
ficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff siz=
e: 212992 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UD=
P] The current recv_buff_size of 212992 is less than the minimum recommende=
d size of 816000 and may result in dropped packets on some NICs<br>[WARNING=
] [UDP] The current send_buff_size of 212992 is less than the minimum recom=
mended size of 307200 and may result in dropped packets on some NICs<br>[ER=
ROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: I=
OError: recv error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] =
Caught exception while initializing graph: EnvironmentError: IOError: recv =
error on socket: Connection refused<br>[INFO] [MPM.PeriphManager] init() ca=
lled with device args `find_all=3D1,fpga=3DHG,mgmt_addr=3D172.37.104.131,pr=
oduct=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'.<br>[WARNING] =
[MPM.PeriphManager.UDP.UDP] No internal interface to forward CHDR packets t=
o from eth0.<br>Error: RuntimeError: Failure to create rfnoc_graph.<br><br>=
</div></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div></div></body></html>
------=_Part_268036_1289058932.1628477116594--

--===============4014917845480799455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4014917845480799455==--
