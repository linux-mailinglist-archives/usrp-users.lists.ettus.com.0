Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68058AF6F8E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jul 2025 12:01:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E526D3862E2
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jul 2025 06:01:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751536909; bh=X2xIHo/BK8Cv+JV3kOVY0Dd8OJtGBMXa9uNmajgT13Q=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=aCcYf2pZCSKdeA3dOswM6I7ocEEp7SL171fIjewINmDzttDeLuxztaamAEoeXC6Sn
	 AKnbSL7qFpLYxS7JdZFEVI4Fo7g92q7Llriv6h17MXTvELtRa3Kq38UI3O944lPo4x
	 hrbWAR1V5Nxc4Y0dHkHjrKU50jm0u0IxcI46wtfSHenJwNSGJFVetOVsc2SK3hWh+F
	 Qk6Sm7sBhiXmSpVamK9sO+LQta25qq5IxP9g8Cich9x/NwCWHa/zgryEiD+DCB7lzQ
	 nxy8wlFGoQ9F4Md8HflsGKVrZ64MZ3wENDLV2qCIEir+HZAjf8oNlppEQQgJQ4aYy5
	 +ZEWiYUdQQOBQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 802FD386279
	for <usrp-users@lists.ettus.com>; Thu,  3 Jul 2025 06:01:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751536896; bh=e63QiNeHKEqgH37t8UhiT8YOp8+eckO9ud2DdTSH/a8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=P73AmDr5d1p0gN8GY6rW19rYTafrPFOK7MZixCvXo7mKkEIHJQUMjSbfPomJp5XP8
	 6VUbfF2gVH8h4rxKXxLc/qtFnVc1p4LSgYHW4FYQx5QFzBgD0l3j1cNw1zkSE1t3ZS
	 UdNaBif0yVlNmpifsYFSep/9UqWnOQL8RGAGxsm7f2/pZ5ci5SYQ6Mbx1G0TN+aH/A
	 +NMfkJjpxsptov4WF+Gyz9lsV+FqO7WvuMCfluGnAIyZpaq1V0CyI3bkyeeNapWXeU
	 azl1/Bw9ndhGWWAHXog2Kz5l2Ji+B0psaeJQPy/MJ2c1t99POrvpesWMM6vyLNwqie
	 61YBXsZ5x00qg==
Date: Thu, 3 Jul 2025 10:01:36 +0000
To: usrp-users@lists.ettus.com
Message-ID: <NmBIkWXxf6EprBCJ1JpyGgGiAMryWRfYr1fsaxJsQk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 031c7e33bcf743cf8a3d700778bb3e5a@vastech.co.za
MIME-Version: 1.0
Message-ID-Hash: 6HZF5D4OAESQJBY6RUILAN354VW76WT5
X-Message-ID-Hash: 6HZF5D4OAESQJBY6RUILAN354VW76WT5
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: getting larger packets out of an rfnoc block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HZF5D4OAESQJBY6RUILAN354VW76WT5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============2954405880050049788=="

This is a multi-part message in MIME format.

--===============2954405880050049788==
Content-Type: multipart/alternative;
 boundary="b1_NmBIkWXxf6EprBCJ1JpyGgGiAMryWRfYr1fsaxJsQk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NmBIkWXxf6EprBCJ1JpyGgGiAMryWRfYr1fsaxJsQk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Kevin,\
\
As far as I am aware, the FPGA has [a fixed MTU size of 8192 bytes](https=
://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv#L=
334), which equates to 2^10 words of CHDR_W 64.

The MTU size is distributed to all RFNoC blocks and as far as I know chan=
ging this for an individual block will most likely break a lot of stuff a=
nd not work correctly.\
\
Since you say that your MTU is 10, I am assuming that your CHDR_W is 64.\
\
I believe this MTU is for the whole packet,so payload plus the header, po=
tential timestamps and metadata words.\
If you set your packet to SPP=3D1024 just the The payload itself is alrea=
dy at the MTU, and with the header, it=E2=80=99s probably over the MTU of=
 8192 bytes, and might therefor be to large for some of the buffers in RF=
NoC.\
\
My suspicion is that when you receive the packet on the host, your packet=
 header claims that the payload has 1024\*8 bytes, but the actual payload=
 size in bytes is different due to the MTU limitations on the FPGA.\
Maybe you can check your wireshark packet and check if the packet length =
in bytes specified in the header length field is the same as the actual p=
acket length.([There are some lua disectors that you can add to wireshark=
 to disect UHD packets.](https://github.com/EttusResearch/uhd/tree/master=
/tools/dissectors/lua) )\
\
I am not as familiar with the software side, but maybe if you set spp to =
something slightly below 1024 it might work, although I do not know if th=
ere is any requirements for any of the blocks in your chain for SPP to be=
 a power of 2.\
\
Regards,\
\
Niels.\

--b1_NmBIkWXxf6EprBCJ1JpyGgGiAMryWRfYr1fsaxJsQk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Kevin,<br><br>As far as I am aware, the FPGA has <a href=3D"https://=
github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv#L334" =
title=3D"">a fixed MTU size of 8192 bytes</a>, which equates to 2^10 words =
of CHDR_W 64.</p><p>The MTU size is distributed to all RFNoC blocks and as =
far as I know changing this for an individual block will most likely break =
a lot of stuff and not work correctly.<br><br>Since you say that your MTU i=
s 10, I am assuming that your CHDR_W is 64.<br><br>I believe this MTU is fo=
r the whole packet,so payload plus the header, potential timestamps and met=
adata words.<br>If you set your packet to SPP=3D1024 just the The payload i=
tself is already at the MTU, and with the header, it=E2=80=99s probably ove=
r the MTU of 8192 bytes, and might therefor be to large for some of the buf=
fers in RFNoC.<br><br>My suspicion is that when you receive the packet on t=
he host, your packet header claims that the payload has 1024*8 bytes, but t=
he actual payload size in bytes is different due to the MTU limitations on =
the FPGA.<br>Maybe you can check your wireshark packet and check if the pac=
ket length in bytes specified in the header length field is the same as the=
 actual packet length.(<a href=3D"https://github.com/EttusResearch/uhd/tree=
/master/tools/dissectors/lua" title=3D"">There are some lua disectors that =
you can add to wireshark to disect UHD packets.</a> )<br><br>I am not as fa=
miliar with the software side, but maybe if you set spp to something slight=
ly below 1024 it might work, although I do not know if there is any require=
ments for any of the blocks in your chain for SPP to be a power of 2.<br><b=
r>Regards,<br><br>Niels.<br> <br><br><br></p>

--b1_NmBIkWXxf6EprBCJ1JpyGgGiAMryWRfYr1fsaxJsQk--

--===============2954405880050049788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2954405880050049788==--
