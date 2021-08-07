Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33D3E329B
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 03:44:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8E26384240
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 21:44:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ALtcKlkr";
	dkim-atps=neutral
Received: from sonic302-1.consmr.mail.bf2.yahoo.com (sonic302-1.consmr.mail.bf2.yahoo.com [74.6.135.40])
	by mm2.emwd.com (Postfix) with ESMTPS id A5CE5384126
	for <USRP-users@lists.ettus.com>; Fri,  6 Aug 2021 21:43:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628300615; bh=bcLIh4fC3z0qlj969zLJj3Mzg1MGDJK1IiLPPgztzjs=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=ALtcKlkrayHyUVO8wzc2QOczDyvNv0cDhrY3m6IrZD3f1zRlazdGCd1SlABWJ5EdU7fMAPcwzcxl+CYpOkZyZ2LNow6SJ+wmgRqe3s5bszRJZ1AmFjXOYfWoSu7Qmb1orrSsXQsZFW4I7tIvoWY42goK77sDCRPaxoSw3CP7/Haw0xWCzKOLoyyEA+435siTAA6GEAr0AFHAISLh6EU6uf1L4Rk4pOw52VmAEplQpn71WuRKPjiEXIoAsEpmPt0SvqUK5vDhaDWmx3+apdShWSzN+3HFU65O+eIGxDSimFQvmtKg8mvsBtux+WYBcR5iyFPqcMbVFHz9Seps3L9T3g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628300615; bh=df/1JggAvHeuYUtqke78vtRpO9tYyBGyZDFjw01Dp3x=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=gTc6dPj/PK2CUiPOKyCpW5MxFmpYJw6PTUAfnNh9VOl9N0ahQeF9QCsuQDLsj6CeJfBlSOmcPK+9QCiS2izBkjGcdwd4H89NpP8GBgdij8WnkPU2rjxLPXvLxWrO4EsOlMf3v6v34cVooRGR0IYir7OO0MBc8Qbu8zcM/si2fhbl74UXjLqPD9DnidMewZEkxInB4eNpAqzcQW/MaRkKoSkZ+UcacFn6lLFlImxBHiJfBcJF5XI+56Q94LQGeUZY1iGpL9ytnKK4IsgbEcvZ47lqMozSia8vF9AJGV1XQ1GANXxMbzOFSPZHOqjriqsyYoBDUYG6aEkn+DhGatNoIw==
X-YMail-OSG: ZKQ3N14VM1lA346o_v04Z2RBuRg2MWgRhn76vv40sLcKQPxdVEuOuqPFliMXpi2
 9FuYrN8YfpsXDcPQtt.WBIx9DdaSu4YnkTf8eZFWD02IzFZ9VsxVwtuQdngbYiePZzvQ3x0Le8az
 WOmtkU8Mb0RdopfcCUem1HE4yBX_G5HD.HS43OP0SIZxZzRXx7iXLr2dlgt3pK2ad2geA6StsIj4
 BQX7QzPwUa8kyE6QufyCgQ2Itp0dkLe.dnDmlMYlYcOrb08F0yKY3s4alVpH5t1Xdb.9r1hO0dEy
 97Uf7Avx3UlAvZbfUclQYFS4b3_XAPp4dXsN6NojAL51u5D4bbP4N_3esNekMIUGedcZnjI8qwmM
 3bwPdoulqkSg72Ymw1J4wOfZPIJvqSVQBUSLURVz_yDBWTaJTRBJL267CML.OxCdUj4NTIYEE9iy
 9k0n.AptiZnFRdhV44pg._wKXr5yMzygHyFbVw9iXjG7j8HvCHSehDclXwqt4rZsr9hT9yl2FcKL
 TMIv4tJFcSrdCcIRMLJYJ3LmvyudJ1Y2t7q9477.GPbB9la16COSaGUb7AISHl9ECqk5AHIafJ_v
 VvkLhFONCjaWWeQ7W2ccNTeN9QJmhhImdmnz7F7y2ohTpFsAoZ7xdqb75tj4hsptv8AWv1slJH5n
 VMIPlUvRn2e0n939E4ghiBnFvIwLkVYqa2eKeLDrc3q5VyKDFQ7ACaJsPB1vpNVdkiozbXhC6wR.
 5ExiWv6EmAJOKY3jLQUrkVLdfzU.f2EVtbbMJrIpLDrSjRxHhLAwZo7Uf0z.TGxVMtokMsXCdMQk
 wh580pgrLB6Hs_7y5piPU81VJCVmAjlv9HmIklmCVQdRF2wv4SYSntTO3GO80VjnJnl9pUIOrhRh
 cFJ9uz73QYOaShiUvZfzp86z4AnLxl_PQP4GppD_gwDoNeWgeL_eZ_23XpXpWI4xgJYGty4nWZrn
 3cjjHcW8zu3ey.XbmmKNTgQkk9GYncEL.9JF5bWBNyBaXOvZuzM6ce.cd.41RwEXtSrHUidULZWD
 s5N2btJUp5uO.7GhlNkaGkRGDvWZMsJ3r8UlL5GJe8IJcQ0Z2W0ddStBb1GdGLT48GNrUwkOqF7c
 pf1DkUF1HsUi_Eok377oeEtuH1zUAwxnetqvyJB7BnD2pMYa6POMlkFKCaA2qolSqqo8OMJ4eduI
 c0Vs2W8AzIMOmPtKggju0XZ6s3v6gPlkGHSwrVct_0LVesVJbF2dzjpX8dDA3E.is6fXHo4PITy4
 i1Q6jhISzBegNGPhe8uB1R6aWJvfANJmdfQIumjE831wpPJdGGCihRouni4WiJk1oT_2zr4hUwr.
 drGzrbt9e68w7unYLaIPgBA1QtJzMemsUepwpKWgF2J6fXskWylINW5HnyRfTCDK9i_OdZDKpG4z
 xV4Am4tSxMJWHT2SbjBVw_cyLv83km58DcmqDMPvVXOCLWsjxWtaUWALJv312rpadL08kryBgAZO
 fcih5CfzPWjf2_dKQYdTBIS1BfV9HeisQsGdRx_oARkUVhsmFpUVubM4p_HKXN6_elcvT.1_W4o3
 fmn5m5BhXoT8lZh86d9ODKwJ7aEOi.ZfBECkz0rBCIIeQpXQSFsx8U62tjv.H9wpbnsPwkVNoMsc
 ZNcQMvGFjJKFUvvIDdHMHtWw9QvxjctZ88aKBvEt0LLDdbUZBC78O6.hRfZNFsj98IaRoKRtVetn
 nviMRPWW.a8dJdTN8cr5RJqxJwC2boFg.Fuc4k0IKzXiOMdZHDsAKX7Bq_kSuYM6wIzGjah1hrZ2
 YdFD9Q3bm2VQnlMeME_wkpFp5SYkvorNAJzSInc98vhKveMLstvolVWiNmsrtPFFLYoJ95vJAzkW
 irYeJ_nVwsTkZD_ahwDEPLCxO_JwFfIUcB5wDdPsgBqICta464e.6ChufMLOUDhifAnt6pF2IxyO
 HPKGhTDfq0wUx2IOVc9hAqwQMSNgerqq_HkoKXVuPxfQmXjVk2LZCp1f5.QTJHZXZYfo7K.HKTYY
 RC8D_zsFs1C774DkylwzxUz6mrdregyHBuAh5eOYncLUmK0YV0hAial1yySz8ebgvOYpsm5crVPl
 dH2JShezuypqXQJJGC0d0qlTpIPN5xW7FTQuMj8.Q.8An1OXn56ixdzmK30oeoCaBKqEglUpxexq
 wb0rQIviXefzoRp9_jhcDhSA1gG7dEqO1yYpqn49ExDo9cyfIzPYDT0x3zburGoetEqN0m1QJrR_
 fw2mcXcvltjLKzf3ic6HI6Z3HGzf_CsosTXekj3RS9qwQR_tmVXvPV2Gc1S7k1SgleLHzyf8tU0n
 2wXaJicc9QdHo7mg0WqbXWDQ_ZQ.AcMnG2ukZSiTHIRGIwWxqD4QjVC.uU5Plxh0N2EY34U6wjU6
 Xa4FEraCxDdQq1wQJhBNgVCT9jWSkBsBJzK0S.Ax7givSXdSwIMPMbP6kMMrDkII738V3v_hOwlZ
 fnX6XzyjY922vaJ6o1vUWYpCSe2T9B4JwEZXV.Fpltg--
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Sat, 7 Aug 2021 01:43:35 +0000
Date: Sat, 7 Aug 2021 01:43:22 +0000 (UTC)
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID: <1196360689.69773.1628300602833@mail.yahoo.com>
MIME-Version: 1.0
References: <1196360689.69773.1628300602833.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: 2LEIW6K4XW3F74PVJPVBIG6PSFWVBEM7
X-Message-ID-Hash: 2LEIW6K4XW3F74PVJPVBIG6PSFWVBEM7
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Confusion about fpga image to use for RFNoC Replay example
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LEIW6K4XW3F74PVJPVBIG6PSFWVBEM7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8220467143042675426=="

--===============8220467143042675426==
Content-Type: multipart/alternative;
	boundary="----=_Part_69772_377728647.1628300602832"

------=_Part_69772_377728647.1628300602832
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello=20
Currently, I'm trying to reproduce the RFNoC replay example shown at the fo=
llowing link
https://kb.ettus.com/Using_the_RFNoC_Replay_Block
using the USRP N310. The version of UHD that I'm using is 4.0, which by def=
ault already has RFNoC enabled. According to the link=C2=A0 above, if you'r=
e using the N310, than you're instructed to modify the file fpga-src/top/n3=
xx/n3xx_core.v with the appropriate changes which instantiates the noc_bloc=
k_replay instead of noc_block_axi_dma_fifo, and then rebuild the image. My =
question is if I'm using UHD 4.0, do I need to make any of the changes disc=
ussed above or is the RFNoC replay block already included in the default N3=
10 FPGA image as highlighted in the following link, which is more updated?=
=20

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up
------=_Part_69772_377728647.1628300602832
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hello <br></div><div dir=3D"ltr" data-setdir=
=3D"false">Currently, I'm trying to reproduce the RFNoC replay example show=
n at the following link</div><div dir=3D"ltr" data-setdir=3D"false"><br></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"https://kb.ettus.com/U=
sing_the_RFNoC_Replay_Block" rel=3D"nofollow" target=3D"_blank">https://kb.=
ettus.com/Using_the_RFNoC_Replay_Block</a></div><div dir=3D"ltr" data-setdi=
r=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">using the USRP=
 N310. The version of UHD that I'm using is 4.0, which by default already h=
as RFNoC enabled. According to the link&nbsp; above, if you're using the N3=
10, than you're instructed to modify the file<span> <code>fpga-src/top/n3xx=
/n3xx_core.v<span> with the appropriate changes which instantiates the <cod=
e>noc_block_replay</code> instead of <code>noc_block_axi_dma_fifo</code>, a=
nd then rebuild the image. My question is if I'm using UHD 4.0, do I need t=
o make any of the changes discussed above or is the RFNoC replay block alre=
ady included in the default N310 FPGA image</span></code></span> as highlig=
hted in the following link, which is more updated? <br></div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><=
a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Settin=
g_Up" rel=3D"nofollow" target=3D"_blank">https://kb.ettus.com/Getting_Start=
ed_with_RFNoC_in_UHD_4.0#Setting_Up</a></div></div></body></html>
------=_Part_69772_377728647.1628300602832--

--===============8220467143042675426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8220467143042675426==--
