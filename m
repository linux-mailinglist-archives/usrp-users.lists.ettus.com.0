Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2828C708C
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2024 05:13:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1C2D384FC2
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2024 23:12:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715829178; bh=IHJtgwvZxpOoO1DiwKo4aT1xdje8SEKhsoLNhEOeRRk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0iI+JgcnLUae06hMRmS2Day8bz+qN5zhK9mWZ9mLVnn6UnEbJtWkG+QQBUOQ3Jpf5
	 Vt4qEbWO/1G16KqeRR0tOWZPbg7OKDigbmA06F7zchIgPJzefFOfbROdygUTDBaC4K
	 WY1Zbbw9S/vN/meujddvBZK80bDJr5UNl3aeuMUYuSQNk13yBIBY1F0u84UraDhiZD
	 jcH3r1tP8Qw/zRT5YiCji2myDO2Jeovm3+tlv1/wzY49IEUjeyVrSS3vNAp3ssBXyr
	 Jvb8veN+1ImyMRB/z8zLSZASTtTaVSJpwAvlDSMpX2YuDtTq56mff+tSP4L/LD8maM
	 Jf0M7vzWDTw1A==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 3794438443D
	for <usrp-users@lists.ettus.com>; Wed, 15 May 2024 23:12:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Lcr5TkMT";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a59a387fbc9so279484266b.1
        for <usrp-users@lists.ettus.com>; Wed, 15 May 2024 20:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1715829148; x=1716433948; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1ysUIqpe4d4q9cgub9bOtRI1PG2gtWOXoKn41w9SHs0=;
        b=Lcr5TkMT0Z0DyF1eHISNYT68ncBv4xiqWjtnGnkFLS+wfbKTVUxz5tLnlryE2IzUir
         XaJRQ1PUfsXpc0LBukeVVJvy4B+lpgHWLnJ/B24mW9FLFdApVzw6lfXn9C15hoNBIqOU
         BydDZRI7pMu26nK4bB4GT9NhZfbkA95QMD1nQDiDGeCmrnIiVM8Z0ZWBkDVMNXkvlBNU
         Yph97qSWoWA6O5fJ7c+bvEluWe6QOxJm0mnNxYlm8cmC6HasIYUim5SFdYaZS7er2YGW
         J4RxIsJPJs9PHaENl8E0RIOSLvM6TcyIfA/FrsJh3Wv0IvPaIVkkZ+QKmbaa6ERda6I2
         jagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715829148; x=1716433948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ysUIqpe4d4q9cgub9bOtRI1PG2gtWOXoKn41w9SHs0=;
        b=ob8E6r3S+G4NsLGCLB+I3zOmq1pJqYSKtRGGweMJ4zvLqA4gxGTc1a56jWPq3B2U4H
         kNou7m08P+oi1m8NbmdsZ5kVBr5jyge4Td17735f3w92ij0aZGN36jhJiqujwyP5ZsCu
         S5Rf8G3rfRfLsqoYvha+9v9j7r5CpFkUAq+MAVCqHAAIOOJrxMUYjLuOwYC7fG3MSFPB
         Hn7a4dPmPvjpDe4L1qlzC6v36KfjbJbnglK/qPJQp6eb+nmsL9K/z7YFJ62QE1A/eZ/5
         0iDZejhEVTMGUNdSJWe+X6mjAKQ8dVQrd5K/GlTRL4F01LR4v2r8oWwKFV3iSRfczF43
         7lsg==
X-Gm-Message-State: AOJu0YzGBtDqWgpM89CurZMrVZp8MM6b+4vAvenz6adV+d75znMf85z/
	TShIH3FgvYj4Ta83hHJU1JM/Kp9U0JVD/eYkCQEAr+345Hvyl2sNnRmzuMD+2Eq1h2nhW+gX3fZ
	wY+U0pyfZTHODp813o9/ruTHREQQ9IzLVhJFrRt6/3PrkOCxLBCk8Mg==
X-Google-Smtp-Source: AGHT+IEvZ+GE6fIbwxS97jVBe6WkVQ4qpeL/6QxSkCU75ks9C4KyF1dVkp9WPhkIPs2bsfHuPmVffmbG0x/h6ZTwULY=
X-Received: by 2002:a17:906:3192:b0:a59:adf8:a6e1 with SMTP id
 a640c23a62f3a-a5a2d66ac1cmr1222591066b.47.1715829147904; Wed, 15 May 2024
 20:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA@lists.ettus.com>
In-Reply-To: <1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 15 May 2024 22:12:12 -0500
Message-ID: <CAFche=i_u3hUA8gj4wYsDysBVXKHDFzxz2UstzKieU4QS+urGw@mail.gmail.com>
To: smm223@ucsd.edu
Message-ID-Hash: 3OZRAZXEZE6VMKULMJ2SNLGGU6LL6B7N
X-Message-ID-Hash: 3OZRAZXEZE6VMKULMJ2SNLGGU6LL6B7N
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC socket error on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3OZRAZXEZE6VMKULMJ2SNLGGU6LL6B7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5961188123927432818=="

--===============5961188123927432818==
Content-Type: multipart/alternative; boundary="000000000000db49cb0618899a30"

--000000000000db49cb0618899a30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One common thing that causes this error is having cables swapped. Normally,
you need to connect the host computer port with 192.168.10.1 to the SFP
port with 192.168.10.2 (and they should be on the same subnet), but if you
mix them up then it'll sometimes let you ping, but more complex operations
like what you're trying will fail with that exact error message.

Wade

On Wed, May 15, 2024 at 3:42=E2=80=AFPM smm223--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I am trying to setup an X410 with a 4x10G NIC on the PC. After configurin=
g
> the IP addresses, uhd_find_devices identifies the USRP without any
> issues. The output of uhd_find_devices is the following:
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
> UHD_4.6.0.HEAD-0-g50fa3baa
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> serial: 327B85D
>
> addr: 192.168.11.2
>
> claimed: False
>
> fpga: X4_200
>
> mgmt_addr: 192.168.10.2
>
> mgmt_addr: 192.168.11.2
>
> mgmt_addr: 192.168.12.2
>
> mgmt_addr: 192.168.13.2
>
> name: ni-x4xx-327B85D
>
> product: x410
>
> type: x4xx
>
> When I run uhd_usrp_probe, I am facing the following error:
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
> UHD_4.6.0.HEAD-0-g50fa3baa
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.13.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=
=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.11.2
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_200,mgmt_addr=3D192.168.13.2,name=3Dni-x4xx-327B85D,product=3D=
x410,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
>
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 25000000 bytes.
>
> Actual sock buff size: 1048576 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=3D25000000
>
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
> Connection refused
>
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> The same error pops up when I try to flash a new image.
>
> ~$ uhd_image_loader --args type=3Dx4xx,addr=3D192.168.12.2,fpga=3DX4_200
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
> UHD_4.6.0.HEAD-0-g50fa3baa
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.12.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=
=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=3DFalse,skip_init=3D1
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [INFO] [MPM.PeriphManager] Device serial number: 3274839
>
> [INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:
>
> DB0: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912 GHz
>
> DB1: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912 GHz
>
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `boot_init=3DTrue,clock_source=3Dinternal,time_source=3Dinternal,initiali=
zing=3DTrue'.
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.12.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=
=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.12.2,find_a=
ll=3D1
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `find_all=3D1,fpga=3DX4_200,mgmt_addr=3D192.168.12.2,name=3Dni-x4xx-327B8=
5D,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializi=
ng=3DTrue'.
>
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
> Connection refused
>
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> EnvironmentError: IOError: recv error on socket: Connection refused
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> What could be the possible issues? Greatly appreciate you help!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000db49cb0618899a30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One common thing that causes this error is having cab=
les swapped. Normally, you need to connect the host computer port with 192.=
168.10.1 to the SFP port with 192.168.10.2 (and they should be on the same =
subnet), but if you mix them up then it&#39;ll sometimes let you ping, but =
more complex operations like what you&#39;re trying will fail with that exa=
ct error message.<br></div><div><br></div><div>Wade<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 15=
, 2024 at 3:42=E2=80=AFPM smm223--- via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,</p><p>I am t=
rying to setup an X410 with a 4x10G NIC on the PC. After configuring the IP=
 addresses, <code>uhd_find_devices </code>identifies the USRP without any i=
ssues. The output of <code>uhd_find_devices </code>is the following: </p><b=
lockquote><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK=
_21.11; UHD_4.6.0.HEAD-0-g50fa3baa</p><p>----------------------------------=
----------------</p><p>-- UHD Device 0</p><p>------------------------------=
--------------------</p><p>Device Address:</p><p>    serial: 327B85D</p><p>=
    addr: 192.168.11.2</p><p>    claimed: False</p><p>    fpga: X4_200</p><=
p>    mgmt_addr: 192.168.10.2</p><p>    mgmt_addr: 192.168.11.2</p><p>    m=
gmt_addr: 192.168.12.2</p><p>    mgmt_addr: 192.168.13.2</p><p>    name: ni=
-x4xx-327B85D</p><p>    product: x410</p><p>    type: x4xx</p></blockquote>=
<p>When I run <code>uhd_usrp_probe</code>, I am facing the following error:=
</p><blockquote><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400=
; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa</p><p>[INFO] [MPMD] Initializing 1=
 device(s) in parallel with args: mgmt_addr=3D192.168.13.2,type=3Dx4xx,prod=
uct=3Dx410,serial=3D327B85D,name=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=3D=
False,addr=3D192.168.11.2</p><p>[INFO] [MPM.PeriphManager] init() called wi=
th device args `fpga=3DX4_200,mgmt_addr=3D192.168.13.2,name=3Dni-x4xx-327B8=
5D,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializi=
ng=3DTrue&#39;.</p><p>[WARNING] [UDP] The send buffer could not be resized =
sufficiently.</p><p>Target sock buff size: 25000000 bytes.</p><p>Actual soc=
k buff size: 1048576 bytes.</p><p>See the transport application notes on bu=
ffer resizing.</p><p>Please run: sudo sysctl -w net.core.wmem_max=3D2500000=
0</p><p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on sock=
et: Connection refused</p><p>[ERROR] [RFNOC::GRAPH] IO Error during GSM ini=
tialization. EnvironmentError: IOError: recv error on socket: Connection re=
fused</p><p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing grap=
h: EnvironmentError: IOError: recv error on socket: Connection refused</p><=
p>Error: RuntimeError: Failure to create rfnoc_graph.</p></blockquote><p>Th=
e same error pops up when I try to flash a new image. </p><blockquote><p>~$=
 uhd_image_loader --args type=3Dx4xx,addr=3D192.168.12.2,fpga=3DX4_200</p><=
p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD=
_4.6.0.HEAD-0-g50fa3baa</p><p>[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.12.2,type=3Dx4xx,product=3Dx410,serial=
=3D327B85D,name=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=3DFalse,skip_init=
=3D1</p><p>[INFO] [MPMD] Claimed device without full initialization.</p><p>=
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.</p><p>[I=
NFO] [MPM.PeriphManager] Installing component `fpga&#39;</p><p>[INFO] [MPM.=
PeriphManager] Installing component `dts&#39;</p><p>[INFO] [MPM.RPCServer] =
Resetting peripheral manager.</p><p>[INFO] [MPM.PeriphManager] Device seria=
l number: 3274839</p><p>[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Confi=
guration:</p><p>DB0: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912=
 GHz</p><p>DB1: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912 GHz<=
/p><p>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</p><p>[INF=
O] [MPM.PeriphManager] init() called with device args `boot_init=3DTrue,clo=
ck_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</p><p=
>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.</p><p>[INF=
O] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.1=
68.12.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=3Dni-x4xx-327B85D,=
fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.12.2,find_all=3D1</p><p>[INFO]=
 [MPM.PeriphManager] init() called with device args `find_all=3D1,fpga=3DX4=
_200,mgmt_addr=3D192.168.12.2,name=3Dni-x4xx-327B85D,product=3Dx410,clock_s=
ource=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</p><p>[ER=
ROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: Connect=
ion refused</p><p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization=
. EnvironmentError: IOError: recv error on socket: Connection refused</p><p=
>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environm=
entError: IOError: recv error on socket: Connection refused</p><p>Error: Ru=
ntimeError: Failure to create rfnoc_graph.</p></blockquote><p>What could be=
 the possible issues? Greatly appreciate you help! </p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000db49cb0618899a30--

--===============5961188123927432818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5961188123927432818==--
