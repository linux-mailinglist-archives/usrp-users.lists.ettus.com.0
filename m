Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4DDE36F7
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 17:47:20 +0200 (CEST)
Received: from [::1] (port=60552 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNfKV-0000Qw-3d; Thu, 24 Oct 2019 11:47:15 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:43373)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <samberhanu@gmail.com>)
 id 1iNfKQ-0000Kh-OB
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 11:47:10 -0400
Received: by mail-io1-f42.google.com with SMTP id c11so20969978iom.10
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 08:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Fa3wti9CMsVMK3IyTJGB8Am/VP42qVjxXubfctDXphQ=;
 b=Rb0De042ixFaJ8MbeDDStLHPg04EuvxzCXCvzg1iGei/o9JyW2MvcWwg6TeJXdCWhD
 L6AIuFOAYe2UhyRU9toj10H8rDPCxbemKdVTxi8H5v3d2eYYRu/viBOHONd4mWvIXM10
 +CRWBkZy4wOKz3JRz3FjcxiCwEbMPzS9qKgKqqgoPySLqkxBrm7AmKtbWC/2uacnxCxo
 R9P4zwd2cQl/PuMSo2E/HPbqEwk4ZMWLkU++rO3+TEq+NL0QfEEafZiLwlj55WrmRX3t
 yNEkD9e9PlamKXSxRI7ryOPq1x2d/wtLINiTTGAyWF6a9ykVnAiSxSxjlS982oCUAI/j
 WC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Fa3wti9CMsVMK3IyTJGB8Am/VP42qVjxXubfctDXphQ=;
 b=Dq0kFeUcniuGpK0ULoH2FFliWbXD52OMF5Mb+wIpt+XS9ly/f+RO+sCYT2TI9zM0WU
 Mcweyh+spFx1l8kOkDF+qaGCKlbYiLQvY1meRrN8LKrcmCfffVRUilX/hwQO7XWvBtTe
 S0pcTFPTdYIHzZLTHbiCg4LoPQg/dStB+HVOj8pfij1HgZCw15YwgOu+LL8f7eVD7SKF
 yYRTEQoD1UMUO9EvSvrMKn2DShub4Eb4hrqmWGwGU/I06D8EXwsftFpfBfoR/1O8zVu5
 s08eIQMd5l4YcAXrraCLDZao8jHSzx/PN2yhEI9cLDfEyRZMgPRgYlJ6huEp81HYYhy1
 qdLQ==
X-Gm-Message-State: APjAAAXlnLeOllI/VmmjzR6c7cP9DLlb99Dh6SbTtXTiQg+oyEqZbIfE
 OfB2jKnj+KB4eVPPAgY463gPyULRFTNeUtobczwsVm4R
X-Google-Smtp-Source: APXvYqxgSRpqCVQwXL4zV/BxVH0ZD/8JmKD4ircbUEdEleOr4gKv91UDIjbVrxMeEbolv5q4D15qQ7EGHqn1WKPMshk=
X-Received: by 2002:a5d:83c1:: with SMTP id u1mr64806ior.78.1571931989297;
 Thu, 24 Oct 2019 08:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.43.1571500803.17414.usrp-users_lists.ettus.com@lists.ettus.com>
 <CAEyq4NfDLRUdBYo89nJfbGW6Hb3+CCOwcJ0Vyzq-NBeTP5WcBg@mail.gmail.com>
In-Reply-To: <CAEyq4NfDLRUdBYo89nJfbGW6Hb3+CCOwcJ0Vyzq-NBeTP5WcBg@mail.gmail.com>
Date: Thu, 24 Oct 2019 11:46:18 -0400
Message-ID: <CAEyq4NccGsuaN2r75XZm9OV-duhEhapqnmFiLp8zs9eOpX10Yg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] N310 generation of a project/bit file from Ettus
 design (HG version)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Samuel Berhanu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Samuel Berhanu <samberhanu@gmail.com>
Content-Type: multipart/mixed; boundary="===============7058528185233426451=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7058528185233426451==
Content-Type: multipart/alternative; boundary="000000000000d551f00595a9ef1d"

--000000000000d551f00595a9ef1d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Problem ended up being the specific tag/repo version i made the bit file
from. The hash I was at was f114cfa0d. Curiously, the golden bitfile from
the Ettus server, at least for this specific version, does not load.

Colleague suggested to try it with a different bit file/version  and that
seems to do the trick.

It still stumps me that I can't find out what the issue is with the I2C
expander but for now, I might have to give up on that considering the time
spent and no response.

On Tue, Oct 22, 2019 at 1:58 PM Samuel Berhanu <samberhanu@gmail.com> wrote=
:

> As I have mentioned a bit earlier, I have noticed that there was an issue
> trying to run a no-Os setup but was not getting ACK from the TCA9548
> expander. [Curious if anyone has gone the no-Os route and found an issue
> there.]
>
> I went ahead and proceeded to make a bin file from a HG bit file  (used
> the Xilinx SDK gui to generate a bin file.
>
> The entry in the swif file  is the following:
>
> //arch =3D zynq; split =3D false; format =3D BIN
> all:
> {
>
> /home/berhas1/fluffybunny/fluffy_with_NI/usrp3/top/n3xx/build-N310_HG/n3x=
x.bit
> }
>
> I copied the generated file into the SDcard /primary/lib/firmware folder
> and renamed the n3xx.bit.bin to n310.bin.
>
> My thought was that this bin file should work with the dtbo already there
> in the design. After loading the bin file using fpga-manager (dto method)
> or even hard rebooting the machine, it looks like the kernel is panicking
> and not able to correctly load some drivers or addresses.
>
> Does this mean that, even for a generic untouched HG design, i would have
> to go through the process of making a dtbo (hence generating a device tre=
e
> from Xilinx SDK)?
>
> Here is the terminal output when the error happens at bin file writing
> time:
>
> [  OK  ] Started Network Name Resolution.
> [  OK  ] Reached target Network.
> [  OK  ] Started Mender OTA update service.
> [  OK  ] Reached target Host and Network Name Lookups.
> [   12.860517] macb e000b000.ethernet eth0: link up (1000/Full)
> [   13.889925] fpga_manager fpga0: writing n310.bin to Xilinx Zynq FPGA
> Manager
> [   15.012332] libphy: nixge_mii_bus: probed
>
> [   15.036810] libphy: nixge_mii_bus: probed
> [   15.040902] Unhandled fault: imprecise external abort (0x1406) at
> 0x004f1dcc
> [   15.047895] pgd =3D eddec000
> [   15.050572] [004f1dcc] *pgd=3D00000000
> [   15.054138] Internal error: : 1406 [#1] PREEMPT SMP ARM
> [   15.055350] nixge 40000000.ethernet sfp0: renamed from eth1
> [   15.064894] Modules linked in:
> [   15.067932] CPU: 0 PID: 194 Comm: python3 Not tainted
> 4.12.26-yocto-standard #1
> [   15.075225] Hardware name: Xilinx Zynq Platform
> [   15.079736] task: ee0063c0 task.stack: edde8000
> [   15.084259] PC is at nixge_mdio_read+0x90/0x180
> [   15.088763] LR is at 0x2800000
> [   15.091801] pc : [<c05ed5d8>]    lr : [<02800000>]    psr: 80030013
> [   15.091801] sp : edde9a58  ip : 00000018  fp : edde9a7c
> [   15.103270] r10: edcb5078  r9 : 00000003  r8 : 804dd639
> [   15.108467] r7 : 00000000  r6 : 000f4240  r5 : edc9f500  r4 : 00000081
> [   15.114980] r3 : ffffffff  r2 : 00000008  r1 : 00000003  r0 : 803e93f9
> [   15.121491] Flags: Nzcv  IRQs on  FIQs on  Mode SVC_32  ISA ARM
>  Segment none
> [   15.128609] Control: 18c5387d  Table: 2ddec04a  DAC: 00000051
> [   15.134335] Process python3 (pid: 194, stack limit =3D 0xedde8210)
> [   15.140324] Stack: (0xedde9a58 to 0xeddea000)
> [   15.144663] 9a40:
> ffffe000 00010000
> [   15.152834] 9a60: edcb5000 00000004 40010006 edcb5058 edde9abc edde9a8=
0
> c05dcc50 c05ed554
> [   15.161005] 9a80: edde9adc edde9a90 c016df5c c016d8a4 edde9ab4 edde9af=
4
> 00010000 edcb5000
> [   15.169166] 9aa0: 00000004 00000001 00000000 edcb5078 edde9adc edde9ac=
0
> c05dab88 c05dcbf4
> [   15.177326] 9ac0: edcb5000 00000004 edde9af4 00000001 edde9b44 edde9ae=
0
> c05dbf98 c05dab68
> [   15.185484] 9ae0: 00000000 edc0cb80 edde9b24 edde9af8 c06ed628 0000000=
0
> 00000000 00000000
> [   15.193642] 9b00: 00000000 00000000 00000000 00000000 00000000 0000000=
0
> edde9b44 edc18300
> [   15.201802] 9b20: 00000001 edcb5000 00000004 00000000 00000000 edcb507=
8
> edde9b74 edde9b48
> [   15.209962] 9b40: c06f4144 c05dbf30 edde9b74 edde9b58 c06f4564 c06ed6b=
c
> edcb5000 edc18f80
> [   15.218120] 9b60: edc18300 00000004 edde9bac edde9b78 c06f46e4 c06f405=
0
> 00000000 00000000
> [   15.226280] 9b80: edde9ba4 edc9f000 edcb5000 ee00c200 edc9f500 edc18f8=
0
> 00000006 00000000
> [   15.234440] 9ba0: edde9bdc edde9bb0 c05ed900 c06f45dc c0146e68 0000000=
6
> ee00c210 c05ed6c8
> [   15.242599] 9bc0: ee00c210 c0d80314 00000000 c0d80314 edde9bfc edde9be=
0
> c05701c4 c05ed6d4
> [   15.250758] 9be0: ee00c210 c0e35150 00000000 00000000 edde9c24 edde9c0=
0
> c056e330 c0570170
> [   15.258917] 9c00: c0d80314 ee00c210 edde9c70 ee00c244 c0e3512c 0000000=
0
> edde9c44 edde9c28
> [   15.267076] 9c20: c056e5a0 c056e12c edde9c70 c056e4fc 00000000 ee00c24=
4
> edde9c6c edde9c48
> [   15.275235] 9c40: c056c7c8 c056e508 ef16e06c ee6d3d38 ee00c210 ee00c21=
0
> c0d73658 00000001
> [   15.283395] 9c60: edde9c94 edde9c70 c056e068 c056c73c ee00c210 0000000=
1
> ee00c210 c0d73658
> [   15.291554] 9c80: ee00c210 ef18ee10 edde9ca4 edde9c98 c056e5d4 c056dfc=
8
> edde9cc4 edde9ca8
> [   15.299713] 9ca0: c056d600 c056e5c4 ee00c210 ee00c218 00000000 ef18ee1=
0
> edde9d04 edde9cc8
> [   15.307872] 9cc0: c056b858 c056d5d4 40008000 4000dfff ee04d100 0000020=
0
> 00000000 ee00c200
> [   15.316031] 9ce0: edc18fd0 00000000 00000000 ef18ee10 ee235b28 0000000=
0
> edde9d14 edde9d08
> [   15.324191] 9d00: c06efc34 c056b450 edde9d3c edde9d18 c06f0160 c06efbf=
c
> edde9dfc ef18ee00
> [   15.332350] 9d20: 00000001 edde9dfc c0d7a00c ee235b28 edde9d4c edde9d4=
0
> c06f01a4 c06f00e0
> [   15.340509] 9d40: edde9d74 edde9d50 c06f096c c06f0190 c0140ac8 c0644f4=
4
> c0d8f714 ffffffff
> [   15.348668] 9d60: 00000000 00000001 edde9d9c edde9d78 c0140ac8 c06f08f=
8
> c0d8f714 c0d8f840
> [   15.356827] 9d80: 00000001 edde9dfc ffffffff ee235b28 edde9dcc edde9da=
0
> c014104c c0140a84
> [   15.364986] 9da0: 00000000 edde9db0 c014108c ee04dbc0 ee04dbc0 ee22821=
4
> ee228204 ede00000
> [   15.373146] 9dc0: edde9de4 edde9dd0 c014108c c0141004 00000000 c06f131=
c
> edde9df4 edde9de8
> [   15.381306] 9de0: c06f1334 c0141070 edde9e34 edde9df8 c06f1410 c06f131=
c
> ee6b68f4 edc18f80
> [   15.389464] 9e00: 00000000 00000000 00000000 ee228214 ee228204 ede0000=
0
> edde9e34 edde9e28
> [   15.397624] 9e20: c0817008 ee228214 edde9e6c edde9e38 c06f1bdc c06f13a=
4
> c06f52e8 c06ed298
> [   15.405782] 9e40: ee235b00 ee228200 00000005 00000000 ee228204 ee22820=
0
> 00000006 00000000
> [   15.413942] 9e60: edde9ebc edde9e70 c06f59b8 c06f1b3c 00000000 ede0278=
0
> 00000014 ee22821c
> [   15.422101] 9e80: ee235b30 ee228214 dfffbe9c 0000001e c06f26ac ef33d00=
0
> 00000000 00000000
> [   15.430260] 9ea0: 00000000 00000009 edde9f80 ee3b6900 edde9ed4 edde9ec=
0
> c06f0c58 c06f5764
> [   15.438419] 9ec0: ef33c000 ef33d000 edde9efc edde9ed8 c06f0dc0 c06f0bd=
c
> 00000009 00000009
> [   15.446579] 9ee0: edc4c680 00000000 edc4c698 edde9f80 edde9f34 edde9f0=
0
> c02d633c c06f0d2c
> [   15.454738] 9f00: ee25c000 00000051 edde9f80 c02d6200 00000009 0033cd7=
0
> edde9f80 00000000
> [   15.462897] 9f20: edde8000 00000000 edde9f4c edde9f38 c026645c c02d620=
c
> ee3b6900 00000009
> [   15.471057] 9f40: edde9f7c edde9f50 c0267894 c0266440 c02853d4 c02852e=
0
> ee3b6900 ee3b6900
> [   15.479215] 9f60: 0033cd70 00000009 c0107ca8 edde8000 edde9fa4 edde9f8=
0
> c02685a0 c02677d4
> [   15.487374] 9f80: 00000000 00000000 b6ec2000 b6f4d4e0 00022258 0000000=
4
> 00000000 edde9fa8
> [   15.495533] 9fa0: c0107a80 c026855c b6ec2000 b6f4d4e0 00000009 0033cd7=
0
> 00000009 00000000
> [   15.503692] 9fc0: b6ec2000 b6f4d4e0 00022258 00000004 00000009 0033cd7=
0
> 00000000 b6ec2000
> [   15.511851] 9fe0: 00000064 beee9a88 b6e14b94 b6c6c124 600f0010 0000000=
9
> 00000000 00000000
> [   15.520026] [<c05ed5d8>] (nixge_mdio_read) from [<c05dcc50>]
> (mdiobus_read+0x68/0x154)
> [   15.527921] [<c05dcc50>] (mdiobus_read) from [<c05dab88>]
> (get_phy_c45_devs_in_pkg+0x2c/0x74)
> [   15.536426] [<c05dab88>] (get_phy_c45_devs_in_pkg) from [<c05dbf98>]
> (get_phy_device+0x74/0x1b4)
> [   15.545193] [<c05dbf98>] (get_phy_device) from [<c06f4144>]
> (of_mdiobus_register_phy+0x100/0x10c)
> [   15.554042] [<c06f4144>] (of_mdiobus_register_phy) from [<c06f46e4>]
> (of_mdiobus_register+0x114/0x208)
> [   15.563330] [<c06f46e4>] (of_mdiobus_register) from [<c05ed900>]
> (nixge_probe+0x238/0x308)
> [   15.571580] [<c05ed900>] (nixge_probe) from [<c05701c4>]
> (platform_drv_probe+0x60/0xac)
> [   15.579562] [<c05701c4>] (platform_drv_probe) from [<c056e330>]
> (driver_probe_device+0x210/0x2d8)
> [   15.588415] [<c056e330>] (driver_probe_device) from [<c056e5a0>]
> (__device_attach_driver+0xa4/0xbc)
> [   15.597441] [<c056e5a0>] (__device_attach_driver) from [<c056c7c8>]
> (bus_for_each_drv+0x98/0xa0)
> [   15.606207] [<c056c7c8>] (bus_for_each_drv) from [<c056e068>]
> (__device_attach+0xac/0x114)
> [   15.614452] [<c056e068>] (__device_attach) from [<c056e5d4>]
> (device_initial_probe+0x1c/0x20)
> [   15.622959] [<c056e5d4>] (device_initial_probe) from [<c056d600>]
> (bus_probe_device+0x38/0x90)
> [   15.631552] [<c056d600>] (bus_probe_device) from [<c056b858>]
> (device_add+0x414/0x514)
> [   15.639455] [<c056b858>] (device_add) from [<c06efc34>]
> (of_device_add+0x44/0x48)
> [   15.646918] [<c06efc34>] (of_device_add) from [<c06f0160>]
> (of_platform_device_create_pdata+0x8c/0xb0)
> [   15.656208] [<c06f0160>] (of_platform_device_create_pdata) from
> [<c06f01a4>] (of_platform_device_create+0x20/0x24)
> [   15.666539] [<c06f01a4>] (of_platform_device_create) from [<c06f096c>]
> (of_platform_notify+0x80/0xf8)
> [   15.675741] [<c06f096c>] (of_platform_notify) from [<c0140ac8>]
> (notifier_call_chain+0x50/0x74)
> [   15.684419] [<c0140ac8>] (notifier_call_chain) from [<c014104c>]
> (__blocking_notifier_call_chain+0x54/0x6c)
> [   15.694140] [<c014104c>] (__blocking_notifier_call_chain) from
> [<c014108c>] (blocking_notifier_call_chain+0x28/0x30)
> [   15.704645] [<c014108c>] (blocking_notifier_call_chain) from
> [<c06f1334>] (of_reconfig_notify+0x24/0x3c)
> [   15.714105] [<c06f1334>] (of_reconfig_notify) from [<c06f1410>]
> (__of_changeset_entry_notify+0x78/0xbc)
> [   15.723479] [<c06f1410>] (__of_changeset_entry_notify) from
> [<c06f1bdc>] (__of_changeset_apply+0xac/0xbc)
> [   15.733027] [<c06f1bdc>] (__of_changeset_apply) from [<c06f59b8>]
> (of_overlay_create+0x260/0x388)
> [   15.741878] [<c06f59b8>] (of_overlay_create) from [<c06f0c58>]
> (create_overlay+0x88/0xb8)
> [   15.750037] [<c06f0c58>] (create_overlay) from [<c06f0dc0>]
> (cfs_overlay_item_path_store+0xa0/0xdc)
> [   15.759066] [<c06f0dc0>] (cfs_overlay_item_path_store) from
> [<c02d633c>] (configfs_write_file+0x13c/0x16c)
> [   15.768704] [<c02d633c>] (configfs_write_file) from [<c026645c>]
> (__vfs_write+0x28/0x48)
> [   15.776772] [<c026645c>] (__vfs_write) from [<c0267894>]
> (vfs_write+0xcc/0x158)
> [   15.784060] [<c0267894>] (vfs_write) from [<c02685a0>]
> (SyS_write+0x50/0x88)
> [   15.791086] [<c02685a0>] (SyS_write) from [<c0107a80>]
> (ret_fast_syscall+0x0/0x54)
> [   15.798640] Code: e0a79001 e5953094 e593301c f57ff04f (e3530000)
> [   15.804704] ---[ end trace e7a69dd64461ce03 ]---
> Alchemy 2018.04 ni-n3xx-316A5C8 ttyPS0
>
>
> Message: 1
>> Date: Fri, 18 Oct 2019 08:59:10 -0700
>> From: Robin Coxe <coxe@quanttux.com>
>> To: Samuel Berhanu <samberhanu@gmail.com>
>> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
>> Subject: Re: [USRP-users] N310 generation of a project/bit file from
>>         Ettus design (HG version)
>> Message-ID:
>>         <
>> CAKJyDkLS+-9DzyL04E8m8sqNVaXLK4NhkEE3mgRMwUn3b9FPLA@mail.gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> What version of Vivado are you using?
>> For some reason, the manual on the Ettus website is for UHD version
>> 3.15.0.0-69-gc350eb5a6, which requires 2018.3 and is not actually an
>> official release.
>> If memory serves, the actual tagged release (v.3.14.1.1) requires Vivado
>> 2017.4.
>>
>> I've definitely created Vivado projects for the N310 with GUI=3D1...with
>> Vivado 2017.4.  Also, I don't think the schematic is actually correct, f=
or
>> the record.
>>
>> -Robin
>>
>> On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> > https://www.xilinx.com/support/answers/68238.html. This pretty much is
>> > the issue.
>> >
>> >
>> > On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu <samberhanu@gmail.com>
>> > wrote:
>> >
>> >> Having difficulty creating a project to actually test out the N310 HG
>> >> design. (I am having problems with a no-Os setup that I am trying to
>> >> execute to find out what exactly the pin assignment should be for the
>> MIOs.
>> >> On a side note, the issue specifically is wrt I2C0, USB and TPM pin
>> >> assignments. Schematics vs PS7 design does not seem to match up. Ettu=
s
>> >> support email from about a month ago stated schematic is right but no=
w
>> I am
>> >> having second thoughts about it)
>> >>
>> >> Usually, when working with ettus products, I generate, using ettus'
>> >> script with GUI=3D1, a project, which   afterwards I save to make a t=
cl
>> >> script for a project to  impl and resynthesize it as my own project.
>> >>
>> >> Through this process, (mind you i have not gotten to regenerating a t=
cl
>> >> script yet) (and this was a relatively easy fix), the custom packaged
>> ips
>> >> were not found and I had to insert them from (vivado_ipi) folder.
>> >>
>> >> Design went through synthesis  fine. At implementation, though, I am
>> >> seeing this error:
>> >> (sub-design 'n310_ps_bd.bd is not generated for Synthesis target.
>> Please
>> >> open this sub-design and generate with synth_checkpoint_mode as
>> signular in
>> >> original project before adding it to current project'
>> >>
>> >> [image: Selection_062.bmp]
>> >>
>> >> I have made sure to get the ip report status, all ips are not locked.
>> >>
>> >> I have tried to search for answers online but nothing seems to pop up=
.
>> >> Anyone has encountered this problem?
>> >>
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/4e3cf6ce/attachment-0001.html
>> >
>> -------------- next part --------------
>> A non-text attachment was scrubbed...
>> Name: Selection_062.bmp
>> Type: image/bmp
>> Size: 438030 bytes
>> Desc: not available
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/4e3cf6ce/attachment-0001.bmp
>> >
>>
>> ------------------------------
>>
>> Message: 2
>> Date: Fri, 18 Oct 2019 17:02:18 +0000
>> From: Jason Matusiak <jason@gardettoengineering.com>
>> To: Samuel Berhanu <samberhanu@gmail.com>, Robin Coxe
>>         <coxe@quanttux.com>
>> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
>> Subject: Re: [USRP-users] N310 generation of a project/bit file from
>>         Ettus design (HG version)
>> Message-ID:
>>         <
>> BL0PR12MB2340D0029B42A30FFD0BC314AF6C0@BL0PR12MB2340.namprd12.prod.outlo=
ok.com
>> >
>>
>> Content-Type: text/plain; charset=3D"iso-8859-1"
>>
>> I just checked the repo based on the tag you mentioned and it is indeed
>> 2017.4 (based on its setupenv.sh)
>>
>>
>> https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da5008ab0c58749=
ce32797cea7/usrp3/top/n3xx/setupenv.sh
>>
>> ________________________________
>> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Robin
>> Coxe via USRP-users <usrp-users@lists.ettus.com>
>> Sent: Friday, October 18, 2019 11:59 AM
>> To: Samuel Berhanu <samberhanu@gmail.com>
>> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
>> Subject: Re: [USRP-users] N310 generation of a project/bit file from
>> Ettus design (HG version)
>>
>> What version of Vivado are you using?
>> For some reason, the manual on the Ettus website is for UHD version
>> 3.15.0.0-69-gc350eb5a6, which requires 2018.3 and is not actually an
>> official release.
>> If memory serves, the actual tagged release (v.3.14.1.1) requires Vivado
>> 2017.4.
>>
>> I've definitely created Vivado projects for the N310 with GUI=3D1...with
>> Vivado 2017.4.  Also, I don't think the schematic is actually correct, f=
or
>> the record.
>>
>> -Robin
>>
>> On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users <
>> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>> https://www.xilinx.com/support/answers/68238.html<
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.xilinx.com_su=
pport_answers_68238.html&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_Cdp=
gnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3D3eiW44eEXen8sH=
4bvJLonsYOrBQlSZTtEN1f0476lHE&s=3D-27ilFCQOwzFKD4xO7v0coUAB_WM_p_lm9RF391SB=
e4&e=3D>.
>> This pretty much is the issue.
>>
>>
>> On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu <samberhanu@gmail.com
>> <mailto:samberhanu@gmail.com>> wrote:
>> Having difficulty creating a project to actually test out the N310 HG
>> design. (I am having problems with a no-Os setup that I am trying to
>> execute to find out what exactly the pin assignment should be for the MI=
Os.
>> On a side note, the issue specifically is wrt I2C0, USB and TPM pin
>> assignments. Schematics vs PS7 design does not seem to match up. Ettus
>> support email from about a month ago stated schematic is right but now I=
 am
>> having second thoughts about it)
>>
>> Usually, when working with ettus products, I generate, using ettus'
>> script with GUI=3D1, a project, which   afterwards I save to make a tcl
>> script for a project to  impl and resynthesize it as my own project.
>>
>> Through this process, (mind you i have not gotten to regenerating a tcl
>> script yet) (and this was a relatively easy fix), the custom packaged ip=
s
>> were not found and I had to insert them from (vivado_ipi) folder.
>>
>> Design went through synthesis  fine. At implementation, though, I am
>> seeing this error:
>> (sub-design 'n310_ps_bd.bd<
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__n310-5Fps-5Fbd.bd&=
d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWH=
fsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f047=
6lHE&s=3Dv_uR1v1M6qpcMcrnOG4j6n9EfYEJR0E78MOBZDPHgvM&e=3D>
>> is not generated for Synthesis target. Please open this sub-design and
>> generate with synth_checkpoint_mode as signular in original project befo=
re
>> adding it to current project'
>>
>> [Selection_062.bmp]
>>
>> I have made sure to get the ip report status, all ips are not locked.
>>
>> I have tried to search for answers online but nothing seems to pop up.
>> Anyone has encountered this problem?
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_ma=
ilman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9D=
G8&m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&s=3DOoJK6KBq8fqrN-m5Sj3k=
VA77pT_-zkwp3z52c-wWf3o&e=3D
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/84b4c0ec/attachment-0001.html
>> >
>> -------------- next part --------------
>> A non-text attachment was scrubbed...
>> Name: Selection_062.bmp
>> Type: image/bmp
>> Size: 438030 bytes
>> Desc: Selection_062.bmp
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/84b4c0ec/attachment-0001.bmp
>> >
>>
>> ------------------------------
>>
>> Message: 3
>> Date: Fri, 18 Oct 2019 12:05:16 -0500
>> From: Sam Reiter <sam.reiter@ettus.com>
>> To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
>> Cc: usrp-users <usrp-users@lists.ettus.com>
>> Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using
>>         X310 and UBX-160
>> Message-ID:
>>         <CANf970YRfCeFXYGaum=3D
>> Y4xoUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> Carlos,
>>
>> On the host side if you're using a single streamer, it will work to
>> time-align samples from every USRP as they come in. The reason you see
>> 1002
>> received packets without a timestamp match is because 1000 was the
>> threshold for maximum number of alignment failures [1].  This can be
>> changed or increased with [2]:
>>
>> set_alignment_failure_threshold(1000);
>>
>> But I doubt this will solve the issue for you. Likely just delay it.
>> >From the errors you included, I'd say the real problem is:
>>
>>
>> > *ERROR] [X300] 192.168.100.2 <http://192.168.100.2/>: x300 fw
>> > communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> > timed out*
>> >
>>
>> There is either a backup or a lack of samples coming from the radio. Do
>> you
>> see flow control errors leading up to this failure?
>>
>> I'd say that pulling pieces out of this system would be a good way to
>> start
>> troubleshooting:
>>
>>    - Drop the sample rate (what is it, by the way?) and see if there's a
>>    threshold where things start working [3]
>>    - Keep the original sample rate and try removing a radio or two from
>> the
>>    system. Does this help things?
>>
>> It sounds like this is something you can reproduce independent of your D=
SP
>> blocks, which helps simplify things a bit. If you could go a bit further
>> and find a simple example (i.e. take one of the GNURadio UHD shipping
>> examples and expand it to use 3x USRPs) and get it to reproduce the
>> behavior, then I'd be happy to set something up on my end try to reprodu=
ce
>> the behavior you're seeing.
>>
>> Sam
>>
>> [1]
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/=
053986.html
>> [2]
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January=
/036210.html
>> [3]
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-Novembe=
r/039561.html
>>
>>
>> On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> > Hello community,
>> >
>> > I am working on a gnuradio application that synchronously retrieves da=
ta
>> > from a usrp_source, does some DSP on each of the streams and selects t=
he
>> > signal to send on a usrp_sink based on some metric computation. The
>> sources
>> > and sinks represent 3 USRP X310 devices, each with 2 UBX-160
>> > daughterboards, and are synchronized using an Octoclock-G. Thus,
>> creating a
>> > 6x1 MISO system. The USRP synchronization is done using the Python API=
,
>> as
>> > well as the flowgraph. The DSP blocks are coded in C++. The flowgraph
>> would
>> > be something like:
>> >
>> > *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*
>> > *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*
>> > *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*
>> > *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*
>> > *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*
>> >
>> > The application runs for a while until UHD outputs a message saying th=
at
>> > the poke32 has timed out on one of the USRP. After that, a misalignmen=
t
>> > error on the receiver streams is shown and the green lights on the USR=
P
>> go
>> > off.
>> >
>> > We are under the impression that the DSP blocks working independently
>> may
>> > be requesting samples from the source at different times, causing the
>> > misalignment. Could this be the case? Is there an issue with my networ=
k
>> > connection?
>> >
>> > I have tried to get rid of the misalignment error by increasing the
>> > threshold in the file
>> > *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *throu=
gh
>> > the function *set_alignment_failure_threshold.* That got rid of the
>> > misalignment error, but the failure coming from the poke function is
>> still
>> > there.
>> >
>> > Interestingly, the exact same behavior arises when I just connect
>> > file_sinks to the outputs from the usrp_source and a simple analog
>> signal
>> > to the usrp_sink. Below the flowgraph:
>> >
>> > *self.connect((usrp_source, 0), file_sink_0)*
>> > self.connect((usrp_source, 1), file_sink_1)
>> > self.connect((usrp_source, 2), file_sink_2)
>> > self.connect((usrp_source, 3), file_sink_3)
>> > *self.connect(analog_sig_c, (usrp_sink, 0))*
>> >
>> > I'd appreciate any help on this since I'm running out of ideas here.
>> > Please, find below more details.
>> >
>> > *The error:*
>> >
>> > * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> > communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> > timed out*
>> >
>> > * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> > communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> > timed out*
>> >
>> > * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> > communication failure #3EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> > timed out*
>> >  [ERROR] [UHD] An unexpected exception was caught in a task loop.The
>> task
>> > loop will now exit, things may not work.EnvironmentError: IOError:
>> > 192.168.100.2: x300 fw communication failure #3
>> >
>> >
>> >
>> > * [ERROR] [STREAMER] The receive packet handler failed to time-align
>> > packets.1002 received packets were processed by the handler.However, a
>> > timestamp match could not be determined.*
>> >
>> > *Here are some details of my network configuration:*
>> > - UHD built from source, tag v3.14.1.1.
>> > - Gnuradio built from source, tag 3.7.13.5.
>> > - X310 USRP, each equipped with two UBX-160 daughterboards.
>> > - The communication is over Ethernet using the 1Gb port on the X310.
>> > - Each USRP is connected to a dedicated NIC.
>> > - The MTU is set to 1500 for the all interfaces.
>> > - The USRPs are synchronized using an Octoclock-G and the parameters
>> tuned
>> > in the Python script. The procedure is similar to the one followed in
>> > benchmark_rate (uhd), for the usrp_source and usrp_sink.
>> > - The NIC ring buffers are set to the maximum for both TX and RX, to
>> 4096,
>> > using ethtool.
>> > - The OS ring buffers are set as suggested bu Ettus, using the followi=
ng
>> > commands:
>> >
>> >
>> >
>> > *>> sudo sysctl -w net.core.rmem_max=3D33554432   >> sudo sysctl -w
>> > net.core.wmem_max=3D33554432   >> sudo sysctl -w
>> > net.core.rmem_default=3D33554432   >> sudo sysctl -w
>> > net.core.wmem_default=3D33554432*
>> >
>> > Best,
>> > Carlos
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/935a1d54/attachment-0001.html
>> >
>>
>> ------------------------------
>>
>> Message: 4
>> Date: Fri, 18 Oct 2019 10:16:43 -0700
>> From: Nate Temple <nate.temple@ettus.com>
>> To: Jason Matusiak <jason@gardettoengineering.com>
>> Cc: Samuel Berhanu <samberhanu@gmail.com>, Robin Coxe
>>         <coxe@quanttux.com>,  Ettus Mail List <usrp-users@lists.ettus.co=
m
>> >
>> Subject: Re: [USRP-users] N310 generation of a project/bit file from
>>         Ettus design (HG version)
>> Message-ID:
>>         <CAL263iy-G0HvwzJxk1F542i06g3SdvVkAY=3D
>> o8hdRfMf2G41V7w@mail.gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> Hi all,
>>
>> As Jason mentioned, UHD 3.14.x uses Vivado 2017.4. UHD 3.15.x.x which wi=
ll
>> be released soon bumps the Vivado dep to 2018.3. The current  manual at
>> uhd.ettus.com is built off the master branch, so it's a bit ahead of the
>> release at the moment.
>>
>> We are working on adding in an archive of all previously tagged manuals =
so
>> they will be easily accessible for reference.
>>
>> Note, when building UHD, the manual (for your version) is installed at
>> $INSTALL_PREFIX/share/doc/uhd/doxygen/html
>>
>>
>>
>> Regards,
>> Nate Temple
>>
>> On Fri, Oct 18, 2019 at 10:03 AM Jason Matusiak via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> > I just checked the repo based on the tag you mentioned and it is indee=
d
>> > 2017.4 (based on its setupenv.sh)
>> >
>> >
>> >
>> https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da5008ab0c58749=
ce32797cea7/usrp3/top/n3xx/setupenv.sh
>> >
>> > ------------------------------
>> > *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> > Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
>> > *Sent:* Friday, October 18, 2019 11:59 AM
>> > *To:* Samuel Berhanu <samberhanu@gmail.com>
>> > *Cc:* Ettus Mail List <usrp-users@lists.ettus.com>
>> > *Subject:* Re: [USRP-users] N310 generation of a project/bit file from
>> > Ettus design (HG version)
>> >
>> > What version of Vivado are you using?
>> > For some reason, the manual on the Ettus website is for UHD version
>> > 3.15.0.0-69-gc350eb5a6, which requires 2018.3 and is not actually an
>> > official release.
>> > If memory serves, the actual tagged release (v.3.14.1.1) requires Viva=
do
>> > 2017.4.
>> >
>> > I've definitely created Vivado projects for the N310 with GUI=3D1...wi=
th
>> > Vivado 2017.4.  Also, I don't think the schematic is actually correct,
>> for
>> > the record.
>> >
>> > -Robin
>> >
>> > On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users <
>> > usrp-users@lists.ettus.com> wrote:
>> >
>> > https://www.xilinx.com/support/answers/68238.html
>> > <
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.xilinx.com_su=
pport_answers_68238.html&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_Cdp=
gnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3D3eiW44eEXen8sH=
4bvJLonsYOrBQlSZTtEN1f0476lHE&s=3D-27ilFCQOwzFKD4xO7v0coUAB_WM_p_lm9RF391SB=
e4&e=3D
>> >.
>> > This pretty much is the issue.
>> >
>> >
>> > On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu <samberhanu@gmail.com>
>> > wrote:
>> >
>> > Having difficulty creating a project to actually test out the N310 HG
>> > design. (I am having problems with a no-Os setup that I am trying to
>> > execute to find out what exactly the pin assignment should be for the
>> MIOs.
>> > On a side note, the issue specifically is wrt I2C0, USB and TPM pin
>> > assignments. Schematics vs PS7 design does not seem to match up. Ettus
>> > support email from about a month ago stated schematic is right but now
>> I am
>> > having second thoughts about it)
>> >
>> > Usually, when working with ettus products, I generate, using ettus'
>> script
>> > with GUI=3D1, a project, which   afterwards I save to make a tcl scrip=
t
>> for a
>> > project to  impl and resynthesize it as my own project.
>> >
>> > Through this process, (mind you i have not gotten to regenerating a tc=
l
>> > script yet) (and this was a relatively easy fix), the custom packaged
>> ips
>> > were not found and I had to insert them from (vivado_ipi) folder.
>> >
>> > Design went through synthesis  fine. At implementation, though, I am
>> > seeing this error:
>> > (sub-design 'n310_ps_bd.bd
>> > <
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__n310-5Fps-5Fbd.bd&=
d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWH=
fsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f047=
6lHE&s=3Dv_uR1v1M6qpcMcrnOG4j6n9EfYEJR0E78MOBZDPHgvM&e=3D
>> >
>> > is not generated for Synthesis target. Please open this sub-design and
>> > generate with synth_checkpoint_mode as signular in original project
>> before
>> > adding it to current project'
>> >
>> > [image: Selection_062.bmp]
>> >
>> > I have made sure to get the ip report status, all ips are not locked.
>> >
>> > I have tried to search for answers online but nothing seems to pop up.
>> > Anyone has encountered this problem?
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> > <
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_ma=
ilman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9D=
G8&m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&s=3DOoJK6KBq8fqrN-m5Sj3k=
VA77pT_-zkwp3z52c-wWf3o&e=3D
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/9ff6a316/attachment-0001.html
>> >
>> -------------- next part --------------
>> A non-text attachment was scrubbed...
>> Name: Selection_062.bmp
>> Type: image/bmp
>> Size: 438030 bytes
>> Desc: not available
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/9ff6a316/attachment-0001.bmp
>> >
>>
>> ------------------------------
>>
>> Message: 5
>> Date: Fri, 18 Oct 2019 14:42:10 -0400
>> From: Marcus D Leech <patchvonbraun@gmail.com>
>> To: Johannes Demel <demel@ant.uni-bremen.de>
>> Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
>> Subject: Re: [USRP-users] N310 sensitivity
>> Message-ID: <9607AB49-8CF9-4AC9-AE90-33D4E2CA7008@gmail.com>
>> Content-Type: text/plain; charset=3Dutf-8
>>
>> What antenna are you specifying and which port are you rurally plugged i=
n
>> to.
>>
>> Are you using offset tuning?  That may be necessary for Narrow signals
>> near the tuned frequency, due to DC offset removal.
>>
>> Sent from my iPhone
>>
>> > On Oct 18, 2019, at 7:06 AM, Johannes Demel via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > ?Hi all,
>> >
>> > I figured out how to use our new N310s.
>> >
>> > I ran into the next issue. Let me describe this one briefly.
>> >
>> > With our X310s I set TXgain=3D20 and RX_gain=3D10. Both devices are 1-=
2m
>> > apart. I observe a really nice RX constellation with gr-gfdm and
>> > XFDMSync with bursts every 1ms (burst length ~50us). With our N310s I
>> > set RXgain=3D60, TXgain=3D70 and still, the constellation is very nois=
y.
>> > My assumption is that some part of the RX chain is not configured
>> > correctly. But I don't know what the problem is in particular.
>> > Also, I used an X310 as transmitter and an N310 as receiver. But the
>> > result is the same, the RX constellation is really noisy.
>> >
>> > Another observation is, that my RX sample stream in a GR time sink doe=
s
>> > show quantization artifacts. i.e. I can see discrete steps which I
>> > assume are due to low RX sensitivity. The RX value amplitude is around
>> > 0.0005 for the samples that I get of a USRP source. I assume this
>> should
>> > be a higher value. With the X310s it was more like 0.1.
>> >
>> > Do I need to take special care when I only use 1 antenna port?
>> > Is there another AGC setting that I need to configure for N310s?
>> >
>> > Johannes
>> >
>> > Software
>> > UHD: 3.14.1.1
>> > GR: 3.8
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>> ------------------------------
>>
>> Message: 6
>> Date: Fri, 18 Oct 2019 18:58:26 +0000
>> From: Skorstad,J?rn <Joern.Skorstad@Nkom.no>
>> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Subject: [USRP-users] E310 packet size
>> Message-ID: <eebdb6dc-867a-46ff-92f9-89a3480d810b@email.android.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> Hi all,
>>
>> Still trying to understand some parts of the USRP that probably are quit=
e
>> elementary. When using the function get_max_num_samps it always reports
>> 508. Does this mean that the number of samples returned for any requeste=
d
>> sample rate will be decimated down to 508? Any way to change max_num_sam=
ps?
>> Not using FPGA (yet).
>>
>> Cheers,
>> Jorn
>>
>> ------------------------------
>>
>> Message: 7
>> Date: Fri, 18 Oct 2019 15:18:38 -0400
>> From: Saeid Hashemi <saeidh@gmail.com>
>> To: Michael Dickens <michael.dickens@ettus.com>
>> Cc: usrp-users <usrp-users@lists.ettus.com>
>> Subject: Re: [USRP-users] uhd_fft failure
>> Message-ID:
>>         <
>> CANQ3h3_guExuKAV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> Okay, so installing python-six fixed that, and I was able to install
>> 3.7.13.5 from source.
>> The sample apps like uhd_fft are not in the path like they used to be wi=
th
>> binary installation. And trying it from the apps folder gives me:
>>
>> nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
>> Traceback (most recent call last):
>>   File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 39, in <module>
>>     import sip
>> ImportError: No module named sip
>>
>>
>> On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens <
>> michael.dickens@ettus.com>
>> wrote:
>>
>> > Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
>> > Installing Py27-six should be pretty straight forward & should allow
>> you to
>> > proceed with that install. GR38 has it's own set of dependencies, some
>> of
>> > which overlap with GR37 and some of which don't. You'll want to follow
>> the
>> > install guide for your OS to get those dependencies. Good luck! - MLD
>> >
>> > On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com> wrote=
:
>> >
>> >> Hi Michael,
>> >>
>> >> The gnuradio git repository does not have a tag for v3.17.14.5, and
>> using
>> >> v3.7.13.5 gives me:
>> >>
>> >> -- Python checking for six - python 2 and 3 compatibility library
>> >> -- Python checking for six - python 2 and 3 compatibility library - n=
ot
>> >> found
>> >> CMake Error at volk/CMakeLists.txt:98 (message):
>> >>   six - python 2 and 3 compatibility library required to build VOLK
>> >>
>> >>
>> >> -- Configuring incomplete, errors occurred!
>> >> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
>> >> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>> >>
>> >>
>> >> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up,
>> so I
>> >> need to install that manually.
>> >>
>> >>
>> >> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
>> >> michael.dickens@ettus.com> wrote:
>> >>
>> >>> OK. Thanks for the info Saeid. I'll look into creating a VM using
>> Ubuntu
>> >>> 16.04.1 to see what happens. - MLD
>> >>>
>> >>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com>
>> wrote:
>> >>>
>> >>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>> >>>> instructions.
>> >>>>
>> >>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>> >>>> michael.dickens@ettus.com> wrote:
>> >>>>
>> >>>>> Hi Saeid - Thanks for the followup. I totally agree that if you ju=
st
>> >>>>> "sudo apt install gnuradio", compatible versions should be
>> installed. Are
>> >>>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to
>> install from
>> >>>>> source, you can follow instructions such as the GR recommended way
>> here <
>> >>>>>
>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.=
29
>> >>>>> >. I have an Ubuntu 18.04 install that went very smoothly using
>> this guide,
>> >>>>> but maybe the guide is outdated for older Ubuntu; or, our packages
>> need to
>> >>>>> be updated for that OS version ... Cheers! - MLD
>> >>>>>
>> >>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com>
>> >>>>> wrote:
>> >>>>>
>> >>>>>> I will follow your advice, but it's worth mentioning I simply did
>> >>>>>> apt-get gnuradio and should therefore have a compatible version o=
f
>> uhd
>> >>>>>> installed automatically as a dependency. I did not install uhd
>> separately.
>> >>>>>>
>> >>>>> --
>> >>>>> Michael Dickens
>> >>>>> Ettus Research Technical Support
>> >>>>> Email: support@ettus.com
>> >>>>> Web: https://ettus.com/
>> >>>>>
>> >>>>
>> >>>
>> >>> --
>> >>> Michael Dickens
>> >>> Ettus Research Technical Support
>> >>> Email: support@ettus.com
>> >>> Web: https://ettus.com/
>> >>>
>> >>
>> >
>> > --
>> > Michael Dickens
>> > Ettus Research Technical Support
>> > Email: support@ettus.com
>> > Web: https://ettus.com/
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/dc28a653/attachment-0001.html
>> >
>>
>> ------------------------------
>>
>> Message: 8
>> Date: Fri, 18 Oct 2019 15:35:31 -0400
>> From: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
>> To: sam.reiter@ettus.com, patchvonbraun@gmail.com
>> Cc: usrp-users@lists.ettus.com
>> Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using
>>         X310 and UBX-160
>> Message-ID:
>>         <
>> CAEJWbW184PxfCq0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>
>> Hi all,
>>
>> Thanks a lot Sam and Marcus for replying so quickly.
>>
>> Le me first include Marcus answer in this email chain for a cleaner
>> communication:
>> "*Gnu Radio cannot really misalign samples, unless the DSP logic arrange=
s
>> for that to happen. If you have a block with a bunch of streams, that
>> blocks "work" function cannot proceed until there is equal amounts of da=
ta
>> available on all streams. In the absence of the hardware dropping sample=
s,
>> coherence is maintained in that case. What you are seeing here seems to =
be
>> a problem with your network stack  losing things. What type of Ethernet
>> adapters do you have? What sample rates are you running?*"
>>
>> *The requested extra info:*
>> - The sampling rates selected are *1Msps* for the TX and *2Msps* for the
>> RX.
>> - The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd,
>> 1000BASE-T,
>> ABCU-5730ARZ.
>> - The NIC: Intel Corporation Gigabit CT Desktop Adapter.
>> - The Ethernet controller: Intel Corporation 82574L Gigabit Network
>> Connection.
>>
>> @Marcus,
>> good thing that the scheduler in each block handles that correctly. I'll
>> focus on the network setup then.
>>
>> @Sam,
>> it seems reasonable to think that the source of error is the poking
>> timeout, being the misalignment the aftermath.
>> When you say flow controls, do you mean the ones handled by the UHD fw
>> functions? I see a couple of D's (packet drops) right before the
>> misalignment error, after the UHD raises the last poking exception. But
>> maybe this is just the natural behavior- to drop misaligned packets befo=
re
>> either getting an alignment or timing out and rising the exception.
>>
>> "*Drop the sample rate (what is it, by the way?) and see if there's a
>> threshold where things start working [3]*":
>> Should I drop the samples below 1Msps/2Msps? I think these are pretty lo=
w
>> and having lower sampling rates would rise new problems. I can go ahead
>> and
>> try it if you still thing this is the issue.
>> "*Keep the original sample rate and try removing a radio or two from the
>> system. Does this help things?*"*:*
>> - 4RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks
>> and analog signal connected to usrp_sink): OK.
>> - 6RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks
>> and analog signal connected to usrp_sink): NOK (error described
>> previously).
>> - 3RX/1TX with my DSP blocks: OK.
>> - 4RX/1TX with my DSP blocks: NOK (error described previously).
>>
>> Regarding an example, I could not find one that sets up a usrp_source AN=
D
>> a
>> usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created a
>> simplistic python flowgraph that results in the poking and misalignment
>> issue, attached in this email. For instance, the 6x1 connections would m=
ap
>> to the input argumments --tx_channels 1 --rx_channels 6.
>>
>> Thanks a lot for your time and I hope to hear back from you soon.
>>
>> Best,
>> Carlos
>>
>>
>> On Fri, Oct 18, 2019 at 1:05 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>>
>> > Carlos,
>> >
>> > On the host side if you're using a single streamer, it will work to
>> > time-align samples from every USRP as they come in. The reason you see
>> 1002
>> > received packets without a timestamp match is because 1000 was the
>> > threshold for maximum number of alignment failures [1].  This can be
>> > changed or increased with [2]:
>> >
>> > set_alignment_failure_threshold(1000);
>> >
>> > But I doubt this will solve the issue for you. Likely just delay it.
>> From the errors you included, I'd say the real problem is:
>> >
>> >
>> >> *ERROR] [X300] 192.168.100.2 <http://192.168.100.2/>: x300 fw
>> >> communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> >> timed out*
>> >>
>> >
>> > There is either a backup or a lack of samples coming from the radio. D=
o
>> > you see flow control errors leading up to this failure?
>> >
>> > I'd say that pulling pieces out of this system would be a good way to
>> > start troubleshooting:
>> >
>> >    - Drop the sample rate (what is it, by the way?) and see if there's=
 a
>> >    threshold where things start working [3]
>> >    - Keep the original sample rate and try removing a radio or two fro=
m
>> >    the system. Does this help things?
>> >
>> > It sounds like this is something you can reproduce independent of your
>> DSP
>> > blocks, which helps simplify things a bit. If you could go a bit furth=
er
>> > and find a simple example (i.e. take one of the GNURadio UHD shipping
>> > examples and expand it to use 3x USRPs) and get it to reproduce the
>> > behavior, then I'd be happy to set something up on my end try to
>> reproduce
>> > the behavior you're seeing.
>> >
>> > Sam
>> >
>> > [1]
>> >
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/=
053986.html
>> > [2]
>> >
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January=
/036210.html
>> > [3]
>> >
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-Novembe=
r/039561.html
>> >
>> >
>> > On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users <
>> > usrp-users@lists.ettus.com> wrote:
>> >
>> >> Hello community,
>> >>
>> >> I am working on a gnuradio application that synchronously retrieves
>> data
>> >> from a usrp_source, does some DSP on each of the streams and selects
>> the
>> >> signal to send on a usrp_sink based on some metric computation. The
>> sources
>> >> and sinks represent 3 USRP X310 devices, each with 2 UBX-160
>> >> daughterboards, and are synchronized using an Octoclock-G. Thus,
>> creating a
>> >> 6x1 MISO system. The USRP synchronization is done using the Python
>> API, as
>> >> well as the flowgraph. The DSP blocks are coded in C++. The flowgraph
>> would
>> >> be something like:
>> >>
>> >> *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*
>> >> *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*
>> >> *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*
>> >> *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*
>> >> *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*
>> >>
>> >> The application runs for a while until UHD outputs a message saying
>> that
>> >> the poke32 has timed out on one of the USRP. After that, a misalignme=
nt
>> >> error on the receiver streams is shown and the green lights on the
>> USRP go
>> >> off.
>> >>
>> >> We are under the impression that the DSP blocks working independently
>> may
>> >> be requesting samples from the source at different times, causing the
>> >> misalignment. Could this be the case? Is there an issue with my netwo=
rk
>> >> connection?
>> >>
>> >> I have tried to get rid of the misalignment error by increasing the
>> >> threshold in the file
>> >> *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp,
>> *through
>> >> the function *set_alignment_failure_threshold.* That got rid of the
>> >> misalignment error, but the failure coming from the poke function is
>> still
>> >> there.
>> >>
>> >> Interestingly, the exact same behavior arises when I just connect
>> >> file_sinks to the outputs from the usrp_source and a simple analog
>> signal
>> >> to the usrp_sink. Below the flowgraph:
>> >>
>> >> *self.connect((usrp_source, 0), file_sink_0)*
>> >> self.connect((usrp_source, 1), file_sink_1)
>> >> self.connect((usrp_source, 2), file_sink_2)
>> >> self.connect((usrp_source, 3), file_sink_3)
>> >> *self.connect(analog_sig_c, (usrp_sink, 0))*
>> >>
>> >> I'd appreciate any help on this since I'm running out of ideas here.
>> >> Please, find below more details.
>> >>
>> >> *The error:*
>> >>
>> >> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> >> communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> >> timed out*
>> >>
>> >> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> >> communication failure #1EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> >> timed out*
>> >>
>> >> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> >> communication failure #3EnvironmentError: IOError: x300 fw poke32 -
>> reply
>> >> timed out*
>> >>  [ERROR] [UHD] An unexpected exception was caught in a task loop.The
>> task
>> >> loop will now exit, things may not work.EnvironmentError: IOError:
>> >> 192.168.100.2: x300 fw communication failure #3
>> >>
>> >>
>> >>
>> >> * [ERROR] [STREAMER] The receive packet handler failed to time-align
>> >> packets.1002 received packets were processed by the handler.However, =
a
>> >> timestamp match could not be determined.*
>> >>
>> >> *Here are some details of my network configuration:*
>> >> - UHD built from source, tag v3.14.1.1.
>> >> - Gnuradio built from source, tag 3.7.13.5.
>> >> - X310 USRP, each equipped with two UBX-160 daughterboards.
>> >> - The communication is over Ethernet using the 1Gb port on the X310.
>> >> - Each USRP is connected to a dedicated NIC.
>> >> - The MTU is set to 1500 for the all interfaces.
>> >> - The USRPs are synchronized using an Octoclock-G and the parameters
>> >> tuned in the Python script. The procedure is similar to the one
>> followed in
>> >> benchmark_rate (uhd), for the usrp_source and usrp_sink.
>> >> - The NIC ring buffers are set to the maximum for both TX and RX, to
>> >> 4096, using ethtool.
>> >> - The OS ring buffers are set as suggested bu Ettus, using the
>> following
>> >> commands:
>> >>
>> >>
>> >>
>> >> *>> sudo sysctl -w net.core.rmem_max=3D33554432   >> sudo sysctl -w
>> >> net.core.wmem_max=3D33554432   >> sudo sysctl -w
>> >> net.core.rmem_default=3D33554432   >> sudo sysctl -w
>> >> net.core.wmem_default=3D33554432*
>> >>
>> >> Best,
>> >> Carlos
>> >> _______________________________________________
>> >> USRP-users mailing list
>> >> USRP-users@lists.ettus.com
>> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >>
>> >
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/1ceaa3f8/attachment-0001.html
>> >
>> -------------- next part --------------
>> A non-text attachment was scrubbed...
>> Name: test_multiusrp.py
>> Type: text/x-python
>> Size: 9963 bytes
>> Desc: not available
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/1ceaa3f8/attachment-0001.py
>> >
>>
>> ------------------------------
>>
>> Message: 9
>> Date: Fri, 18 Oct 2019 17:47:01 -0400
>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>,
>>         sam.reiter@ettus.com
>> Cc: usrp-users@lists.ettus.com
>> Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using
>>         X310 and UBX-160
>> Message-ID: <5DAA32D5.7070400@gmail.com>
>> Content-Type: text/plain; charset=3D"windows-1252"; Format=3D"flowed"
>>
>> On 10/18/2019 03:35 PM, Carlos Bocanegra wrote:
>> > Hi all,
>> >
>> > Thanks a lot Sam and Marcus for replying so quickly.
>> >
>> > Le me first include Marcus answer in this email chain for a cleaner
>> > communication:
>> > "/Gnu Radio cannot really misalign samples, unless the DSP logic
>> > arranges for that to happen. If you have a block with a bunch of
>> > streams, that blocks "work" function cannot proceed until there is
>> > equal amounts of data available on all streams. In the absence of the
>> > hardware dropping samples, coherence is maintained in that case. What
>> > you are seeing here seems to be a problem with your network stack
>> > losing things. What type of Ethernet adapters do you have? What sample
>> > rates are you running?/"
>> >
>> > *The requested extra info:*
>> > - The sampling rates selected are _1Msps_ for the TX and _2Msps_ for
>> > the RX.
>> > - The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd,
>> > 1000BASE-T, ABCU-5730ARZ.
>> > - The NIC: Intel Corporation Gigabit CT Desktop Adapter.
>> > - The Ethernet controller: Intel Corporation 82574L Gigabit Network
>> > Connection.
>> >
>> > @Marcus,
>> > good thing that the scheduler in each block handles that correctly.
>> > I'll focus on the network setup then.
>> >
>> > @Sam,
>> > it seems reasonable to think that the source of error is the poking
>> > timeout, being the misalignment the aftermath.
>> > When you say flow controls, do you mean the ones handled by the UHD fw
>> > functions? I see a couple of D's (packet drops) right before the
>> > misalignment error, after the UHD raises the last poking exception.
>> > But maybe this is just the natural behavior- to drop misaligned
>> > packets before either getting an alignment or timing out and rising
>> > the exception.
>> >
>> > "/Drop the sample rate (what is it, by the way?) and see if there's a
>> > threshold where things start working [3]/":
>> > Should I drop the samples below 1Msps/2Msps? I think these are pretty
>> > low and having lower sampling rates would rise new problems. I can go
>> > ahead and try it if you still thing this is the issue.
>> > "/Keep the original sample rate and try removing a radio or two from
>> > the system. Does this help things?/"/:/
>> > - 4RX/1TX with simplistic flowgraph (usrp_source connected to
>> > file_sinks and analog signal connected to usrp_sink): OK.
>> > - 6RX/1TX with simplistic flowgraph (usrp_source connected to
>> > file_sinks and analog signal connected to usrp_sink): NOK (error
>> > described previously).
>> > - 3RX/1TX with my DSP blocks: OK.
>> > - 4RX/1TX with my DSP blocks: NOK (error described previously).
>> >
>> > Regarding an example, I could not find one that sets up a usrp_source
>> > AND a usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created
>> > a simplistic python flowgraph that results in the poking and
>> > misalignment issue, attached in this email. For instance, the 6x1
>> > connections would map to the input argumments --tx_channels 1
>> > --rx_channels 6.
>> >
>> > Thanks a lot for your time and I hope to hear back from you soon.
>> >
>> > Best,
>> > Carlos
>> >
>> >
>> I'll note that some members of the 82574L family of controllers are
>> known to unnecessarily drop packets *particularly at unexpectedly-low fl=
ow
>>    rates*.
>>
>> This may or may not be contributing to your problem.
>>
>>
>> -------------- next part --------------
>> An HTML attachment was scrubbed...
>> URL: <
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/=
20191018/262c8d60/attachment-0001.html
>> >
>>
>> ------------------------------
>>
>> Subject: Digest Footer
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> ------------------------------
>>
>> End of USRP-users Digest, Vol 110, Issue 16
>> *******************************************
>>
>

--000000000000d551f00595a9ef1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Problem ended up being the specific tag/repo version =
i made the bit file from. The hash I was at was f114cfa0d. Curiously, the g=
olden bitfile from the Ettus server, at least for this specific version, do=
es not load.<br></div><div><br></div><div>Colleague suggested to try it wit=
h a different bit file/version=C2=A0 and that seems to do the trick.</div><=
div><br></div><div>It still stumps me that I can&#39;t find out what the is=
sue is with the I2C expander but for now, I might have to give up on that c=
onsidering the time spent and no response.<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 22, 2019 at=
 1:58 PM Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com">samberh=
anu@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>As I have mentioned a bit earlier, I hav=
e noticed that there was an issue trying to run a no-Os setup but was not g=
etting ACK from the TCA9548 expander. [Curious if anyone has gone the no-Os=
 route and found an issue there.]<br></div><div><br></div><div>I went ahead=
 and proceeded to make a bin file from a HG bit file=C2=A0 (used the Xilinx=
 SDK gui to generate a bin file.=C2=A0 <br></div><div><br></div><div>The en=
try in the swif file=C2=A0 is the following:</div><div><br></div><div>//arc=
h =3D zynq; split =3D false; format =3D BIN<br>all:<br>{<br>	/home/berhas1/=
fluffybunny/fluffy_with_NI/usrp3/top/n3xx/build-N310_HG/n3xx.bit<br>} <br><=
/div><div></div><div><br></div><div>I copied the generated file into the SD=
card /primary/lib/firmware folder and renamed the n3xx.bit.bin to n310.bin.=
</div><div><br></div><div>My thought was that this bin file should work wit=
h the dtbo already there in the design. After loading the bin file using fp=
ga-manager (dto method) or even hard rebooting the machine, it looks like t=
he kernel is panicking and not able to correctly load some drivers or addre=
sses.</div><div><br></div><div>Does this mean that, even for a generic unto=
uched HG design, i would have to go through the process of making a dtbo (h=
ence generating a device tree from Xilinx SDK)?<br></div><div><br></div><di=
v>Here is the terminal output when the error happens at bin file writing ti=
me:</div><div><br></div><div>[ =C2=A0OK =C2=A0] Started Network Name Resolu=
tion.<br>[ =C2=A0OK =C2=A0] Reached target Network.<br>[ =C2=A0OK =C2=A0] S=
tarted Mender OTA update service.<br>[ =C2=A0OK =C2=A0] Reached target Host=
 and Network Name Lookups.<br>[ =C2=A0 12.860517] macb e000b000.ethernet et=
h0: link up (1000/Full)<br>[ =C2=A0 13.889925] fpga_manager fpga0: writing =
n310.bin to Xilinx Zynq FPGA Manager<br>[ =C2=A0 15.012332] libphy: nixge_m=
ii_bus: probed<br><br>[ =C2=A0 15.036810] libphy: nixge_mii_bus: probed<br>=
[ =C2=A0 15.040902] Unhandled fault: imprecise external abort (0x1406) at 0=
x004f1dcc<br>[ =C2=A0 15.047895] pgd =3D eddec000<br>[ =C2=A0 15.050572] [0=
04f1dcc] *pgd=3D00000000<br>[ =C2=A0 15.054138] Internal error: : 1406 [#1]=
 PREEMPT SMP ARM<br>[ =C2=A0 15.055350] nixge 40000000.ethernet sfp0: renam=
ed from eth1<br>[ =C2=A0 15.064894] Modules linked in:<br>[ =C2=A0 15.06793=
2] CPU: 0 PID: 194 Comm: python3 Not tainted 4.12.26-yocto-standard #1<br>[=
 =C2=A0 15.075225] Hardware name: Xilinx Zynq Platform<br>[ =C2=A0 15.07973=
6] task: ee0063c0 task.stack: edde8000<br>[ =C2=A0 15.084259] PC is at nixg=
e_mdio_read+0x90/0x180<br>[ =C2=A0 15.088763] LR is at 0x2800000<br>[ =C2=
=A0 15.091801] pc : [&lt;c05ed5d8&gt;] =C2=A0 =C2=A0lr : [&lt;02800000&gt;]=
 =C2=A0 =C2=A0psr: 80030013<br>[ =C2=A0 15.091801] sp : edde9a58 =C2=A0ip :=
 00000018 =C2=A0fp : edde9a7c<br>[ =C2=A0 15.103270] r10: edcb5078 =C2=A0r9=
 : 00000003 =C2=A0r8 : 804dd639<br>[ =C2=A0 15.108467] r7 : 00000000 =C2=A0=
r6 : 000f4240 =C2=A0r5 : edc9f500 =C2=A0r4 : 00000081<br>[ =C2=A0 15.114980=
] r3 : ffffffff =C2=A0r2 : 00000008 =C2=A0r1 : 00000003 =C2=A0r0 : 803e93f9=
<br>[ =C2=A0 15.121491] Flags: Nzcv =C2=A0IRQs on =C2=A0FIQs on =C2=A0Mode =
SVC_32 =C2=A0ISA ARM =C2=A0Segment none<br>[ =C2=A0 15.128609] Control: 18c=
5387d =C2=A0Table: 2ddec04a =C2=A0DAC: 00000051<br>[ =C2=A0 15.134335] Proc=
ess python3 (pid: 194, stack limit =3D 0xedde8210)<br>[ =C2=A0 15.140324] S=
tack: (0xedde9a58 to 0xeddea000)<br>[ =C2=A0 15.144663] 9a40: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ffffe000 00010000<br>[ =C2=A0 15.152834] 9a60: =
edcb5000 00000004 40010006 edcb5058 edde9abc edde9a80 c05dcc50 c05ed554<br>=
[ =C2=A0 15.161005] 9a80: edde9adc edde9a90 c016df5c c016d8a4 edde9ab4 edde=
9af4 00010000 edcb5000<br>[ =C2=A0 15.169166] 9aa0: 00000004 00000001 00000=
000 edcb5078 edde9adc edde9ac0 c05dab88 c05dcbf4<br>[ =C2=A0 15.177326] 9ac=
0: edcb5000 00000004 edde9af4 00000001 edde9b44 edde9ae0 c05dbf98 c05dab68<=
br>[ =C2=A0 15.185484] 9ae0: 00000000 edc0cb80 edde9b24 edde9af8 c06ed628 0=
0000000 00000000 00000000<br>[ =C2=A0 15.193642] 9b00: 00000000 00000000 00=
000000 00000000 00000000 00000000 edde9b44 edc18300<br>[ =C2=A0 15.201802] =
9b20: 00000001 edcb5000 00000004 00000000 00000000 edcb5078 edde9b74 edde9b=
48<br>[ =C2=A0 15.209962] 9b40: c06f4144 c05dbf30 edde9b74 edde9b58 c06f456=
4 c06ed6bc edcb5000 edc18f80<br>[ =C2=A0 15.218120] 9b60: edc18300 00000004=
 edde9bac edde9b78 c06f46e4 c06f4050 00000000 00000000<br>[ =C2=A0 15.22628=
0] 9b80: edde9ba4 edc9f000 edcb5000 ee00c200 edc9f500 edc18f80 00000006 000=
00000<br>[ =C2=A0 15.234440] 9ba0: edde9bdc edde9bb0 c05ed900 c06f45dc c014=
6e68 00000006 ee00c210 c05ed6c8<br>[ =C2=A0 15.242599] 9bc0: ee00c210 c0d80=
314 00000000 c0d80314 edde9bfc edde9be0 c05701c4 c05ed6d4<br>[ =C2=A0 15.25=
0758] 9be0: ee00c210 c0e35150 00000000 00000000 edde9c24 edde9c00 c056e330 =
c0570170<br>[ =C2=A0 15.258917] 9c00: c0d80314 ee00c210 edde9c70 ee00c244 c=
0e3512c 00000000 edde9c44 edde9c28<br>[ =C2=A0 15.267076] 9c20: c056e5a0 c0=
56e12c edde9c70 c056e4fc 00000000 ee00c244 edde9c6c edde9c48<br>[ =C2=A0 15=
.275235] 9c40: c056c7c8 c056e508 ef16e06c ee6d3d38 ee00c210 ee00c210 c0d736=
58 00000001<br>[ =C2=A0 15.283395] 9c60: edde9c94 edde9c70 c056e068 c056c73=
c ee00c210 00000001 ee00c210 c0d73658<br>[ =C2=A0 15.291554] 9c80: ee00c210=
 ef18ee10 edde9ca4 edde9c98 c056e5d4 c056dfc8 edde9cc4 edde9ca8<br>[ =C2=A0=
 15.299713] 9ca0: c056d600 c056e5c4 ee00c210 ee00c218 00000000 ef18ee10 edd=
e9d04 edde9cc8<br>[ =C2=A0 15.307872] 9cc0: c056b858 c056d5d4 40008000 4000=
dfff ee04d100 00000200 00000000 ee00c200<br>[ =C2=A0 15.316031] 9ce0: edc18=
fd0 00000000 00000000 ef18ee10 ee235b28 00000000 edde9d14 edde9d08<br>[ =C2=
=A0 15.324191] 9d00: c06efc34 c056b450 edde9d3c edde9d18 c06f0160 c06efbfc =
edde9dfc ef18ee00<br>[ =C2=A0 15.332350] 9d20: 00000001 edde9dfc c0d7a00c e=
e235b28 edde9d4c edde9d40 c06f01a4 c06f00e0<br>[ =C2=A0 15.340509] 9d40: ed=
de9d74 edde9d50 c06f096c c06f0190 c0140ac8 c0644f44 c0d8f714 ffffffff<br>[ =
=C2=A0 15.348668] 9d60: 00000000 00000001 edde9d9c edde9d78 c0140ac8 c06f08=
f8 c0d8f714 c0d8f840<br>[ =C2=A0 15.356827] 9d80: 00000001 edde9dfc fffffff=
f ee235b28 edde9dcc edde9da0 c014104c c0140a84<br>[ =C2=A0 15.364986] 9da0:=
 00000000 edde9db0 c014108c ee04dbc0 ee04dbc0 ee228214 ee228204 ede00000<br=
>[ =C2=A0 15.373146] 9dc0: edde9de4 edde9dd0 c014108c c0141004 00000000 c06=
f131c edde9df4 edde9de8<br>[ =C2=A0 15.381306] 9de0: c06f1334 c0141070 edde=
9e34 edde9df8 c06f1410 c06f131c ee6b68f4 edc18f80<br>[ =C2=A0 15.389464] 9e=
00: 00000000 00000000 00000000 ee228214 ee228204 ede00000 edde9e34 edde9e28=
<br>[ =C2=A0 15.397624] 9e20: c0817008 ee228214 edde9e6c edde9e38 c06f1bdc =
c06f13a4 c06f52e8 c06ed298<br>[ =C2=A0 15.405782] 9e40: ee235b00 ee228200 0=
0000005 00000000 ee228204 ee228200 00000006 00000000<br>[ =C2=A0 15.413942]=
 9e60: edde9ebc edde9e70 c06f59b8 c06f1b3c 00000000 ede02780 00000014 ee228=
21c<br>[ =C2=A0 15.422101] 9e80: ee235b30 ee228214 dfffbe9c 0000001e c06f26=
ac ef33d000 00000000 00000000<br>[ =C2=A0 15.430260] 9ea0: 00000000 0000000=
9 edde9f80 ee3b6900 edde9ed4 edde9ec0 c06f0c58 c06f5764<br>[ =C2=A0 15.4384=
19] 9ec0: ef33c000 ef33d000 edde9efc edde9ed8 c06f0dc0 c06f0bdc 00000009 00=
000009<br>[ =C2=A0 15.446579] 9ee0: edc4c680 00000000 edc4c698 edde9f80 edd=
e9f34 edde9f00 c02d633c c06f0d2c<br>[ =C2=A0 15.454738] 9f00: ee25c000 0000=
0051 edde9f80 c02d6200 00000009 0033cd70 edde9f80 00000000<br>[ =C2=A0 15.4=
62897] 9f20: edde8000 00000000 edde9f4c edde9f38 c026645c c02d620c ee3b6900=
 00000009<br>[ =C2=A0 15.471057] 9f40: edde9f7c edde9f50 c0267894 c0266440 =
c02853d4 c02852e0 ee3b6900 ee3b6900<br>[ =C2=A0 15.479215] 9f60: 0033cd70 0=
0000009 c0107ca8 edde8000 edde9fa4 edde9f80 c02685a0 c02677d4<br>[ =C2=A0 1=
5.487374] 9f80: 00000000 00000000 b6ec2000 b6f4d4e0 00022258 00000004 00000=
000 edde9fa8<br>[ =C2=A0 15.495533] 9fa0: c0107a80 c026855c b6ec2000 b6f4d4=
e0 00000009 0033cd70 00000009 00000000<br>[ =C2=A0 15.503692] 9fc0: b6ec200=
0 b6f4d4e0 00022258 00000004 00000009 0033cd70 00000000 b6ec2000<br>[ =C2=
=A0 15.511851] 9fe0: 00000064 beee9a88 b6e14b94 b6c6c124 600f0010 00000009 =
00000000 00000000<br>[ =C2=A0 15.520026] [&lt;c05ed5d8&gt;] (nixge_mdio_rea=
d) from [&lt;c05dcc50&gt;] (mdiobus_read+0x68/0x154)<br>[ =C2=A0 15.527921]=
 [&lt;c05dcc50&gt;] (mdiobus_read) from [&lt;c05dab88&gt;] (get_phy_c45_dev=
s_in_pkg+0x2c/0x74)<br>[ =C2=A0 15.536426] [&lt;c05dab88&gt;] (get_phy_c45_=
devs_in_pkg) from [&lt;c05dbf98&gt;] (get_phy_device+0x74/0x1b4)<br>[ =C2=
=A0 15.545193] [&lt;c05dbf98&gt;] (get_phy_device) from [&lt;c06f4144&gt;] =
(of_mdiobus_register_phy+0x100/0x10c)<br>[ =C2=A0 15.554042] [&lt;c06f4144&=
gt;] (of_mdiobus_register_phy) from [&lt;c06f46e4&gt;] (of_mdiobus_register=
+0x114/0x208)<br>[ =C2=A0 15.563330] [&lt;c06f46e4&gt;] (of_mdiobus_registe=
r) from [&lt;c05ed900&gt;] (nixge_probe+0x238/0x308)<br>[ =C2=A0 15.571580]=
 [&lt;c05ed900&gt;] (nixge_probe) from [&lt;c05701c4&gt;] (platform_drv_pro=
be+0x60/0xac)<br>[ =C2=A0 15.579562] [&lt;c05701c4&gt;] (platform_drv_probe=
) from [&lt;c056e330&gt;] (driver_probe_device+0x210/0x2d8)<br>[ =C2=A0 15.=
588415] [&lt;c056e330&gt;] (driver_probe_device) from [&lt;c056e5a0&gt;] (_=
_device_attach_driver+0xa4/0xbc)<br>[ =C2=A0 15.597441] [&lt;c056e5a0&gt;] =
(__device_attach_driver) from [&lt;c056c7c8&gt;] (bus_for_each_drv+0x98/0xa=
0)<br>[ =C2=A0 15.606207] [&lt;c056c7c8&gt;] (bus_for_each_drv) from [&lt;c=
056e068&gt;] (__device_attach+0xac/0x114)<br>[ =C2=A0 15.614452] [&lt;c056e=
068&gt;] (__device_attach) from [&lt;c056e5d4&gt;] (device_initial_probe+0x=
1c/0x20)<br>[ =C2=A0 15.622959] [&lt;c056e5d4&gt;] (device_initial_probe) f=
rom [&lt;c056d600&gt;] (bus_probe_device+0x38/0x90)<br>[ =C2=A0 15.631552] =
[&lt;c056d600&gt;] (bus_probe_device) from [&lt;c056b858&gt;] (device_add+0=
x414/0x514)<br>[ =C2=A0 15.639455] [&lt;c056b858&gt;] (device_add) from [&l=
t;c06efc34&gt;] (of_device_add+0x44/0x48)<br>[ =C2=A0 15.646918] [&lt;c06ef=
c34&gt;] (of_device_add) from [&lt;c06f0160&gt;] (of_platform_device_create=
_pdata+0x8c/0xb0)<br>[ =C2=A0 15.656208] [&lt;c06f0160&gt;] (of_platform_de=
vice_create_pdata) from [&lt;c06f01a4&gt;] (of_platform_device_create+0x20/=
0x24)<br>[ =C2=A0 15.666539] [&lt;c06f01a4&gt;] (of_platform_device_create)=
 from [&lt;c06f096c&gt;] (of_platform_notify+0x80/0xf8)<br>[ =C2=A0 15.6757=
41] [&lt;c06f096c&gt;] (of_platform_notify) from [&lt;c0140ac8&gt;] (notifi=
er_call_chain+0x50/0x74)<br>[ =C2=A0 15.684419] [&lt;c0140ac8&gt;] (notifie=
r_call_chain) from [&lt;c014104c&gt;] (__blocking_notifier_call_chain+0x54/=
0x6c)<br>[ =C2=A0 15.694140] [&lt;c014104c&gt;] (__blocking_notifier_call_c=
hain) from [&lt;c014108c&gt;] (blocking_notifier_call_chain+0x28/0x30)<br>[=
 =C2=A0 15.704645] [&lt;c014108c&gt;] (blocking_notifier_call_chain) from [=
&lt;c06f1334&gt;] (of_reconfig_notify+0x24/0x3c)<br>[ =C2=A0 15.714105] [&l=
t;c06f1334&gt;] (of_reconfig_notify) from [&lt;c06f1410&gt;] (__of_changese=
t_entry_notify+0x78/0xbc)<br>[ =C2=A0 15.723479] [&lt;c06f1410&gt;] (__of_c=
hangeset_entry_notify) from [&lt;c06f1bdc&gt;] (__of_changeset_apply+0xac/0=
xbc)<br>[ =C2=A0 15.733027] [&lt;c06f1bdc&gt;] (__of_changeset_apply) from =
[&lt;c06f59b8&gt;] (of_overlay_create+0x260/0x388)<br>[ =C2=A0 15.741878] [=
&lt;c06f59b8&gt;] (of_overlay_create) from [&lt;c06f0c58&gt;] (create_overl=
ay+0x88/0xb8)<br>[ =C2=A0 15.750037] [&lt;c06f0c58&gt;] (create_overlay) fr=
om [&lt;c06f0dc0&gt;] (cfs_overlay_item_path_store+0xa0/0xdc)<br>[ =C2=A0 1=
5.759066] [&lt;c06f0dc0&gt;] (cfs_overlay_item_path_store) from [&lt;c02d63=
3c&gt;] (configfs_write_file+0x13c/0x16c)<br>[ =C2=A0 15.768704] [&lt;c02d6=
33c&gt;] (configfs_write_file) from [&lt;c026645c&gt;] (__vfs_write+0x28/0x=
48)<br>[ =C2=A0 15.776772] [&lt;c026645c&gt;] (__vfs_write) from [&lt;c0267=
894&gt;] (vfs_write+0xcc/0x158)<br>[ =C2=A0 15.784060] [&lt;c0267894&gt;] (=
vfs_write) from [&lt;c02685a0&gt;] (SyS_write+0x50/0x88)<br>[ =C2=A0 15.791=
086] [&lt;c02685a0&gt;] (SyS_write) from [&lt;c0107a80&gt;] (ret_fast_sysca=
ll+0x0/0x54)<br>[ =C2=A0 15.798640] Code: e0a79001 e5953094 e593301c f57ff0=
4f (e3530000) <br>[ =C2=A0 15.804704] ---[ end trace e7a69dd64461ce03 ]---<=
br>Alchemy 2018.04 ni-n3xx-316A5C8 ttyPS0<br></div><div><br></div><div clas=
s=3D"gmail_quote"><br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Message: 1<br>
Date: Fri, 18 Oct 2019 08:59:10 -0700<br>
From: Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_blank"=
>coxe@quanttux.com</a>&gt;<br>
To: Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com" target=3D"_b=
lank">samberhanu@gmail.com</a>&gt;<br>
Cc: Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] N310 generation of a project/bit file from<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ettus design (HG version)<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAKJyDkLS%2B-9DzyL04E8m8s=
qNVaXLK4NhkEE3mgRMwUn3b9FPLA@mail.gmail.com" target=3D"_blank">CAKJyDkLS+-9=
DzyL04E8m8sqNVaXLK4NhkEE3mgRMwUn3b9FPLA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
What version of Vivado are you using?<br>
For some reason, the manual on the Ettus website is for UHD version<br>
3.15.0.0-69-gc350eb5a6, which requires 2018.3 and is not actually an<br>
official release.<br>
If memory serves, the actual tagged release (v.3.14.1.1) requires Vivado<br=
>
2017.4.<br>
<br>
I&#39;ve definitely created Vivado projects for the N310 with GUI=3D1...wit=
h<br>
Vivado 2017.4.=C2=A0 Also, I don&#39;t think the schematic is actually corr=
ect, for<br>
the record.<br>
<br>
-Robin<br>
<br>
On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; <a href=3D"https://www.xilinx.com/support/answers/68238.html" rel=3D"n=
oreferrer" target=3D"_blank">https://www.xilinx.com/support/answers/68238.h=
tml</a>. This pretty much is<br>
&gt; the issue.<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu &lt;<a href=3D"mailto:=
samberhanu@gmail.com" target=3D"_blank">samberhanu@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; Having difficulty creating a project to actually test out the N310=
 HG<br>
&gt;&gt; design. (I am having problems with a no-Os setup that I am trying =
to<br>
&gt;&gt; execute to find out what exactly the pin assignment should be for =
the MIOs.<br>
&gt;&gt; On a side note, the issue specifically is wrt I2C0, USB and TPM pi=
n<br>
&gt;&gt; assignments. Schematics vs PS7 design does not seem to match up. E=
ttus<br>
&gt;&gt; support email from about a month ago stated schematic is right but=
 now I am<br>
&gt;&gt; having second thoughts about it)<br>
&gt;&gt;<br>
&gt;&gt; Usually, when working with ettus products, I generate, using ettus=
&#39;<br>
&gt;&gt; script with GUI=3D1, a project, which=C2=A0 =C2=A0afterwards I sav=
e to make a tcl<br>
&gt;&gt; script for a project to=C2=A0 impl and resynthesize it as my own p=
roject.<br>
&gt;&gt;<br>
&gt;&gt; Through this process, (mind you i have not gotten to regenerating =
a tcl<br>
&gt;&gt; script yet) (and this was a relatively easy fix), the custom packa=
ged ips<br>
&gt;&gt; were not found and I had to insert them from (vivado_ipi) folder.<=
br>
&gt;&gt;<br>
&gt;&gt; Design went through synthesis=C2=A0 fine. At implementation, thoug=
h, I am<br>
&gt;&gt; seeing this error:<br>
&gt;&gt; (sub-design &#39;<a href=3D"http://n310_ps_bd.bd" rel=3D"noreferre=
r" target=3D"_blank">n310_ps_bd.bd</a> is not generated for Synthesis targe=
t. Please<br>
&gt;&gt; open this sub-design and generate with synth_checkpoint_mode as si=
gnular in<br>
&gt;&gt; original project before adding it to current project&#39;<br>
&gt;&gt;<br>
&gt;&gt; [image: Selection_062.bmp]<br>
&gt;&gt;<br>
&gt;&gt; I have made sure to get the ip report status, all ips are not lock=
ed.<br>
&gt;&gt;<br>
&gt;&gt; I have tried to search for answers online but nothing seems to pop=
 up.<br>
&gt;&gt; Anyone has encountered this problem?<br>
&gt;&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/4e3cf6ce/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/4e3cf6ce/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: Selection_062.bmp<br>
Type: image/bmp<br>
Size: 438030 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/4e3cf6ce/attachment-0001.bmp" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20191018/4e3cf6ce/attachment-0001.bmp</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Fri, 18 Oct 2019 17:02:18 +0000<br>
From: Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" t=
arget=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
To: Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com" target=3D"_b=
lank">samberhanu@gmail.com</a>&gt;, Robin Coxe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:coxe@quanttux.com" target=
=3D"_blank">coxe@quanttux.com</a>&gt;<br>
Cc: Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] N310 generation of a project/bit file from<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ettus design (HG version)<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:BL0PR12MB2340D0029B42A30F=
FD0BC314AF6C0@BL0PR12MB2340.namprd12.prod.outlook.com" target=3D"_blank">BL=
0PR12MB2340D0029B42A30FFD0BC314AF6C0@BL0PR12MB2340.namprd12.prod.outlook.co=
m</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
I just checked the repo based on the tag you mentioned and it is indeed 201=
7.4 (based on its setupenv.sh)<br>
<br>
<a href=3D"https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da5008a=
b0c58749ce32797cea7/usrp3/top/n3xx/setupenv.sh" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da5008=
ab0c58749ce32797cea7/usrp3/top/n3xx/setupenv.sh</a><br>
<br>
________________________________<br>
From: USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of R=
obin Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Sent: Friday, October 18, 2019 11:59 AM<br>
To: Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com" target=3D"_b=
lank">samberhanu@gmail.com</a>&gt;<br>
Cc: Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] N310 generation of a project/bit file from Ettus =
design (HG version)<br>
<br>
What version of Vivado are you using?<br>
For some reason, the manual on the Ettus website is for UHD version 3.15.0.=
0-69-gc350eb5a6, which requires 2018.3 and is not actually an official rele=
ase.<br>
If memory serves, the actual tagged release (v.3.14.1.1) requires Vivado 20=
17.4.<br>
<br>
I&#39;ve definitely created Vivado projects for the N310 with GUI=3D1...wit=
h Vivado 2017.4.=C2=A0 Also, I don&#39;t think the schematic is actually co=
rrect, for the record.<br>
<br>
-Robin<br>
<br>
On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
<a href=3D"https://www.xilinx.com/support/answers/68238.html" rel=3D"norefe=
rrer" target=3D"_blank">https://www.xilinx.com/support/answers/68238.html</=
a>&lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www=
.xilinx.com_support_answers_68238.html&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllv=
imEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexf=
icV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3D-27ilFC=
QOwzFKD4xO7v0coUAB_WM_p_lm9RF391SBe4&amp;e=3D" rel=3D"noreferrer" target=3D=
"_blank">https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.xilinx.=
com_support_answers_68238.html&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7j=
XrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&=
amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3D-27ilFCQOwzFKD4=
xO7v0coUAB_WM_p_lm9RF391SBe4&amp;e=3D</a>&gt;. This pretty much is the issu=
e.<br>
<br>
<br>
On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu &lt;<a href=3D"mailto:sambe=
rhanu@gmail.com" target=3D"_blank">samberhanu@gmail.com</a>&lt;mailto:<a hr=
ef=3D"mailto:samberhanu@gmail.com" target=3D"_blank">samberhanu@gmail.com</=
a>&gt;&gt; wrote:<br>
Having difficulty creating a project to actually test out the N310 HG desig=
n. (I am having problems with a no-Os setup that I am trying to execute to =
find out what exactly the pin assignment should be for the MIOs. On a side =
note, the issue specifically is wrt I2C0, USB and TPM pin assignments. Sche=
matics vs PS7 design does not seem to match up. Ettus support email from ab=
out a month ago stated schematic is right but now I am having second though=
ts about it)<br>
<br>
Usually, when working with ettus products, I generate, using ettus&#39; scr=
ipt with GUI=3D1, a project, which=C2=A0 =C2=A0afterwards I save to make a =
tcl script for a project to=C2=A0 impl and resynthesize it as my own projec=
t.<br>
<br>
Through this process, (mind you i have not gotten to regenerating a tcl scr=
ipt yet) (and this was a relatively easy fix), the custom packaged ips were=
 not found and I had to insert them from (vivado_ipi) folder.<br>
<br>
Design went through synthesis=C2=A0 fine. At implementation, though, I am s=
eeing this error:<br>
(sub-design &#39;<a href=3D"http://n310_ps_bd.bd" rel=3D"noreferrer" target=
=3D"_blank">n310_ps_bd.bd</a>&lt;<a href=3D"https://urldefense.proofpoint.c=
om/v2/url?u=3Dhttp-3A__n310-5Fps-5Fbd.bd&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDl=
lvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLe=
xficV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3Dv_uR1=
v1M6qpcMcrnOG4j6n9EfYEJR0E78MOBZDPHgvM&amp;e=3D" rel=3D"noreferrer" target=
=3D"_blank">https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__n310-5Fps=
-5Fbd.bd&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM=
&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW44eEXen8sH=
4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3Dv_uR1v1M6qpcMcrnOG4j6n9EfYEJR0E78MOBZ=
DPHgvM&amp;e=3D</a>&gt; is not generated for Synthesis target. Please open =
this sub-design and generate with synth_checkpoint_mode as signular in orig=
inal project before adding it to current project&#39;<br>
<br>
[Selection_062.bmp]<br>
<br>
I have made sure to get the ip report status, all ips are not locked.<br>
<br>
I have tried to search for answers online but nothing seems to pop up. Anyo=
ne has encountered this problem?<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>&lt;<a href=3D"https://urldefense.proof=
point.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers=
-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_C=
dpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW=
44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3DOoJK6KBq8fqrN-m5Sj3kVA77pT_=
-zkwp3z52c-wWf3o&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://url=
defense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo=
_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7=
jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8=
&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3DOoJK6KBq8fqrN-=
m5Sj3kVA77pT_-zkwp3z52c-wWf3o&amp;e=3D</a>&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/84b4c0ec/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/84b4c0ec/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: Selection_062.bmp<br>
Type: image/bmp<br>
Size: 438030 bytes<br>
Desc: Selection_062.bmp<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/84b4c0ec/attachment-0001.bmp" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20191018/84b4c0ec/attachment-0001.bmp</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Fri, 18 Oct 2019 12:05:16 -0500<br>
From: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_bla=
nk">sam.reiter@ettus.com</a>&gt;<br>
To: Carlos Bocanegra &lt;<a href=3D"mailto:carlos.bocanegra.guerra@gmail.co=
m" target=3D"_blank">carlos.bocanegra.guerra@gmail.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 X310 and UBX-160<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CANf970YRfCeFXYGaum=3D<a href=3D"mailto:Y4x=
oUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com" target=3D"_blank">Y4xoUjz6MOpB=
9PemTwPYD2hYEoupFUA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Carlos,<br>
<br>
On the host side if you&#39;re using a single streamer, it will work to<br>
time-align samples from every USRP as they come in. The reason you see 1002=
<br>
received packets without a timestamp match is because 1000 was the<br>
threshold for maximum number of alignment failures [1].=C2=A0 This can be<b=
r>
changed or increased with [2]:<br>
<br>
set_alignment_failure_threshold(1000);<br>
<br>
But I doubt this will solve the issue for you. Likely just delay it.<br>
&gt;From the errors you included, I&#39;d say the real problem is:<br>
<br>
<br>
&gt; *ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2/" rel=
=3D"noreferrer" target=3D"_blank">http://192.168.100.2/</a>&gt;: x300 fw<br=
>
&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 - re=
ply<br>
&gt; timed out*<br>
&gt;<br>
<br>
There is either a backup or a lack of samples coming from the radio. Do you=
<br>
see flow control errors leading up to this failure?<br>
<br>
I&#39;d say that pulling pieces out of this system would be a good way to s=
tart<br>
troubleshooting:<br>
<br>
=C2=A0 =C2=A0- Drop the sample rate (what is it, by the way?) and see if th=
ere&#39;s a<br>
=C2=A0 =C2=A0threshold where things start working [3]<br>
=C2=A0 =C2=A0- Keep the original sample rate and try removing a radio or tw=
o from the<br>
=C2=A0 =C2=A0system. Does this help things?<br>
<br>
It sounds like this is something you can reproduce independent of your DSP<=
br>
blocks, which helps simplify things a bit. If you could go a bit further<br=
>
and find a simple example (i.e. take one of the GNURadio UHD shipping<br>
examples and expand it to use 3x USRPs) and get it to reproduce the<br>
behavior, then I&#39;d be happy to set something up on my end try to reprod=
uce<br>
the behavior you&#39;re seeing.<br>
<br>
Sam<br>
<br>
[1]<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017=
-August/053986.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html</a><br>
[2]<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014=
-January/036210.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/pipermail/usrp-users_lists.ettus.com/2014-January/036210.html</a><br=
>
[3]<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014=
-November/039561.html" rel=3D"noreferrer" target=3D"_blank">http://lists.et=
tus.com/pipermail/usrp-users_lists.ettus.com/2014-November/039561.html</a><=
br>
<br>
<br>
On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; Hello community,<br>
&gt;<br>
&gt; I am working on a gnuradio application that synchronously retrieves da=
ta<br>
&gt; from a usrp_source, does some DSP on each of the streams and selects t=
he<br>
&gt; signal to send on a usrp_sink based on some metric computation. The so=
urces<br>
&gt; and sinks represent 3 USRP X310 devices, each with 2 UBX-160<br>
&gt; daughterboards, and are synchronized using an Octoclock-G. Thus, creat=
ing a<br>
&gt; 6x1 MISO system. The USRP synchronization is done using the Python API=
, as<br>
&gt; well as the flowgraph. The DSP blocks are coded in C++. The flowgraph =
would<br>
&gt; be something like:<br>
&gt;<br>
&gt; *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*<br>
&gt; *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*<br>
&gt; *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*<br>
&gt; *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*<br>
&gt; *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*<br>
&gt;<br>
&gt; The application runs for a while until UHD outputs a message saying th=
at<br>
&gt; the poke32 has timed out on one of the USRP. After that, a misalignmen=
t<br>
&gt; error on the receiver streams is shown and the green lights on the USR=
P go<br>
&gt; off.<br>
&gt;<br>
&gt; We are under the impression that the DSP blocks working independently =
may<br>
&gt; be requesting samples from the source at different times, causing the<=
br>
&gt; misalignment. Could this be the case? Is there an issue with my networ=
k<br>
&gt; connection?<br>
&gt;<br>
&gt; I have tried to get rid of the misalignment error by increasing the<br=
>
&gt; threshold in the file<br>
&gt; *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *throu=
gh<br>
&gt; the function *set_alignment_failure_threshold.* That got rid of the<br=
>
&gt; misalignment error, but the failure coming from the poke function is s=
till<br>
&gt; there.<br>
&gt;<br>
&gt; Interestingly, the exact same behavior arises when I just connect<br>
&gt; file_sinks to the outputs from the usrp_source and a simple analog sig=
nal<br>
&gt; to the usrp_sink. Below the flowgraph:<br>
&gt;<br>
&gt; *self.connect((usrp_source, 0), file_sink_0)*<br>
&gt; self.connect((usrp_source, 1), file_sink_1)<br>
&gt; self.connect((usrp_source, 2), file_sink_2)<br>
&gt; self.connect((usrp_source, 3), file_sink_3)<br>
&gt; *self.connect(analog_sig_c, (usrp_sink, 0))*<br>
&gt;<br>
&gt; I&#39;d appreciate any help on this since I&#39;m running out of ideas=
 here.<br>
&gt; Please, find below more details.<br>
&gt;<br>
&gt; *The error:*<br>
&gt;<br>
&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2" re=
l=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 fw<br=
>
&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 - re=
ply<br>
&gt; timed out*<br>
&gt;<br>
&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2" re=
l=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 fw<br=
>
&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 - re=
ply<br>
&gt; timed out*<br>
&gt;<br>
&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2" re=
l=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 fw<br=
>
&gt; communication failure #3EnvironmentError: IOError: x300 fw poke32 - re=
ply<br>
&gt; timed out*<br>
&gt;=C2=A0 [ERROR] [UHD] An unexpected exception was caught in a task loop.=
The task<br>
&gt; loop will now exit, things may not work.EnvironmentError: IOError:<br>
&gt; <a href=3D"http://192.168.100.2" rel=3D"noreferrer" target=3D"_blank">=
192.168.100.2</a>: x300 fw communication failure #3<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; * [ERROR] [STREAMER] The receive packet handler failed to time-align<b=
r>
&gt; packets.1002 received packets were processed by the handler.However, a=
<br>
&gt; timestamp match could not be determined.*<br>
&gt;<br>
&gt; *Here are some details of my network configuration:*<br>
&gt; - UHD built from source, tag v3.14.1.1.<br>
&gt; - Gnuradio built from source, tag 3.7.13.5.<br>
&gt; - X310 USRP, each equipped with two UBX-160 daughterboards.<br>
&gt; - The communication is over Ethernet using the 1Gb port on the X310.<b=
r>
&gt; - Each USRP is connected to a dedicated NIC.<br>
&gt; - The MTU is set to 1500 for the all interfaces.<br>
&gt; - The USRPs are synchronized using an Octoclock-G and the parameters t=
uned<br>
&gt; in the Python script. The procedure is similar to the one followed in<=
br>
&gt; benchmark_rate (uhd), for the usrp_source and usrp_sink.<br>
&gt; - The NIC ring buffers are set to the maximum for both TX and RX, to 4=
096,<br>
&gt; using ethtool.<br>
&gt; - The OS ring buffers are set as suggested bu Ettus, using the followi=
ng<br>
&gt; commands:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; *&gt;&gt; sudo sysctl -w net.core.rmem_max=3D33554432=C2=A0 =C2=A0&gt;=
&gt; sudo sysctl -w<br>
&gt; net.core.wmem_max=3D33554432=C2=A0 =C2=A0&gt;&gt; sudo sysctl -w<br>
&gt; net.core.rmem_default=3D33554432=C2=A0 =C2=A0&gt;&gt; sudo sysctl -w<b=
r>
&gt; net.core.wmem_default=3D33554432*<br>
&gt;<br>
&gt; Best,<br>
&gt; Carlos<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/935a1d54/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/935a1d54/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Fri, 18 Oct 2019 10:16:43 -0700<br>
From: Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_b=
lank">nate.temple@ettus.com</a>&gt;<br>
To: Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" tar=
get=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
Cc: Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com" target=3D"_b=
lank">samberhanu@gmail.com</a>&gt;, Robin Coxe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:coxe@quanttux.com" target=
=3D"_blank">coxe@quanttux.com</a>&gt;,=C2=A0 Ettus Mail List &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt;<br>
Subject: Re: [USRP-users] N310 generation of a project/bit file from<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ettus design (HG version)<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAL263iy-G0HvwzJxk1F542i06g3SdvVkAY=3D<a hr=
ef=3D"mailto:o8hdRfMf2G41V7w@mail.gmail.com" target=3D"_blank">o8hdRfMf2G41=
V7w@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi all,<br>
<br>
As Jason mentioned, UHD 3.14.x uses Vivado 2017.4. UHD 3.15.x.x which will<=
br>
be released soon bumps the Vivado dep to 2018.3. The current=C2=A0 manual a=
t<br>
<a href=3D"http://uhd.ettus.com" rel=3D"noreferrer" target=3D"_blank">uhd.e=
ttus.com</a> is built off the master branch, so it&#39;s a bit ahead of the=
<br>
release at the moment.<br>
<br>
We are working on adding in an archive of all previously tagged manuals so<=
br>
they will be easily accessible for reference.<br>
<br>
Note, when building UHD, the manual (for your version) is installed at<br>
$INSTALL_PREFIX/share/doc/uhd/doxygen/html<br>
<br>
<br>
<br>
Regards,<br>
Nate Temple<br>
<br>
On Fri, Oct 18, 2019 at 10:03 AM Jason Matusiak via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; I just checked the repo based on the tag you mentioned and it is indee=
d<br>
&gt; 2017.4 (based on its setupenv.sh)<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da=
5008ab0c58749ce32797cea7/usrp3/top/n3xx/setupenv.sh" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/EttusResearch/fpga/blob/bb85bdff45cad4da5=
008ab0c58749ce32797cea7/usrp3/top/n3xx/setupenv.sh</a><br>
&gt;<br>
&gt; ------------------------------<br>
&gt; *From:* USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettu=
s.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on beha=
lf of<br>
&gt; Robin Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; *Sent:* Friday, October 18, 2019 11:59 AM<br>
&gt; *To:* Samuel Berhanu &lt;<a href=3D"mailto:samberhanu@gmail.com" targe=
t=3D"_blank">samberhanu@gmail.com</a>&gt;<br>
&gt; *Cc:* Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; *Subject:* Re: [USRP-users] N310 generation of a project/bit file from=
<br>
&gt; Ettus design (HG version)<br>
&gt;<br>
&gt; What version of Vivado are you using?<br>
&gt; For some reason, the manual on the Ettus website is for UHD version<br=
>
&gt; 3.15.0.0-69-gc350eb5a6, which requires 2018.3 and is not actually an<b=
r>
&gt; official release.<br>
&gt; If memory serves, the actual tagged release (v.3.14.1.1) requires Viva=
do<br>
&gt; 2017.4.<br>
&gt;<br>
&gt; I&#39;ve definitely created Vivado projects for the N310 with GUI=3D1.=
..with<br>
&gt; Vivado 2017.4.=C2=A0 Also, I don&#39;t think the schematic is actually=
 correct, for<br>
&gt; the record.<br>
&gt;<br>
&gt; -Robin<br>
&gt;<br>
&gt; On Fri, Oct 18, 2019 at 8:33 AM Samuel Berhanu via USRP-users &lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; <a href=3D"https://www.xilinx.com/support/answers/68238.html" rel=3D"n=
oreferrer" target=3D"_blank">https://www.xilinx.com/support/answers/68238.h=
tml</a><br>
&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__=
www.xilinx.com_support_answers_68238.html&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTD=
llvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBL=
exficV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3D-27i=
lFCQOwzFKD4xO7v0coUAB_WM_p_lm9RF391SBe4&amp;e=3D" rel=3D"noreferrer" target=
=3D"_blank">https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.xili=
nx.com_support_answers_68238.html&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9D=
G8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3D-27ilFCQOwzF=
KD4xO7v0coUAB_WM_p_lm9RF391SBe4&amp;e=3D</a>&gt;.<br>
&gt; This pretty much is the issue.<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Oct 18, 2019 at 11:13 AM Samuel Berhanu &lt;<a href=3D"mailto:=
samberhanu@gmail.com" target=3D"_blank">samberhanu@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt; Having difficulty creating a project to actually test out the N310 HG<=
br>
&gt; design. (I am having problems with a no-Os setup that I am trying to<b=
r>
&gt; execute to find out what exactly the pin assignment should be for the =
MIOs.<br>
&gt; On a side note, the issue specifically is wrt I2C0, USB and TPM pin<br=
>
&gt; assignments. Schematics vs PS7 design does not seem to match up. Ettus=
<br>
&gt; support email from about a month ago stated schematic is right but now=
 I am<br>
&gt; having second thoughts about it)<br>
&gt;<br>
&gt; Usually, when working with ettus products, I generate, using ettus&#39=
; script<br>
&gt; with GUI=3D1, a project, which=C2=A0 =C2=A0afterwards I save to make a=
 tcl script for a<br>
&gt; project to=C2=A0 impl and resynthesize it as my own project.<br>
&gt;<br>
&gt; Through this process, (mind you i have not gotten to regenerating a tc=
l<br>
&gt; script yet) (and this was a relatively easy fix), the custom packaged =
ips<br>
&gt; were not found and I had to insert them from (vivado_ipi) folder.<br>
&gt;<br>
&gt; Design went through synthesis=C2=A0 fine. At implementation, though, I=
 am<br>
&gt; seeing this error:<br>
&gt; (sub-design &#39;<a href=3D"http://n310_ps_bd.bd" rel=3D"noreferrer" t=
arget=3D"_blank">n310_ps_bd.bd</a><br>
&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__n=
310-5Fps-5Fbd.bd&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_Cdp=
gnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW44=
eEXen8sH4bvJLonsYOrBQlSZTtEN1f0476lHE&amp;s=3Dv_uR1v1M6qpcMcrnOG4j6n9EfYEJR=
0E78MOBZDPHgvM&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urlde=
fense.proofpoint.com/v2/url?u=3Dhttp-3A__n310-5Fps-5Fbd.bd&amp;d=3DDwMFaQ&a=
mp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4=
mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1f047=
6lHE&amp;s=3Dv_uR1v1M6qpcMcrnOG4j6n9EfYEJR0E78MOBZDPHgvM&amp;e=3D</a>&gt;<b=
r>
&gt; is not generated for Synthesis target. Please open this sub-design and=
<br>
&gt; generate with synth_checkpoint_mode as signular in original project be=
fore<br>
&gt; adding it to current project&#39;<br>
&gt;<br>
&gt; [image: Selection_062.bmp]<br>
&gt;<br>
&gt; I have made sure to get the ip report status, all ips are not locked.<=
br>
&gt;<br>
&gt; I have tried to search for answers online but nothing seems to pop up.=
<br>
&gt; Anyone has encountered this problem?<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__l=
ists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMF=
aQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWH=
fsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLonsYOrBQlSZTtEN1=
f0476lHE&amp;s=3DOoJK6KBq8fqrN-m5Sj3kVA77pT_-zkwp3z52c-wWf3o&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttp-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.co=
m&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=
=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3D3eiW44eEXen8sH4bvJLo=
nsYOrBQlSZTtEN1f0476lHE&amp;s=3DOoJK6KBq8fqrN-m5Sj3kVA77pT_-zkwp3z52c-wWf3o=
&amp;e=3D</a>&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/9ff6a316/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/9ff6a316/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: Selection_062.bmp<br>
Type: image/bmp<br>
Size: 438030 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/9ff6a316/attachment-0001.bmp" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20191018/9ff6a316/attachment-0001.bmp</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Fri, 18 Oct 2019 14:42:10 -0400<br>
From: Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: Johannes Demel &lt;<a href=3D"mailto:demel@ant.uni-bremen.de" target=3D=
"_blank">demel@ant.uni-bremen.de</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:USRP-users@lists.=
ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] N310 sensitivity<br>
Message-ID: &lt;<a href=3D"mailto:9607AB49-8CF9-4AC9-AE90-33D4E2CA7008@gmai=
l.com" target=3D"_blank">9607AB49-8CF9-4AC9-AE90-33D4E2CA7008@gmail.com</a>=
&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
What antenna are you specifying and which port are you rurally plugged in t=
o. <br>
<br>
Are you using offset tuning?=C2=A0 That may be necessary for Narrow signals=
 near the tuned frequency, due to DC offset removal. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Oct 18, 2019, at 7:06 AM, Johannes Demel via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; ?Hi all,<br>
&gt; <br>
&gt; I figured out how to use our new N310s.<br>
&gt; <br>
&gt; I ran into the next issue. Let me describe this one briefly.<br>
&gt; <br>
&gt; With our X310s I set TXgain=3D20 and RX_gain=3D10. Both devices are 1-=
2m <br>
&gt; apart. I observe a really nice RX constellation with gr-gfdm and <br>
&gt; XFDMSync with bursts every 1ms (burst length ~50us). With our N310s I =
<br>
&gt; set RXgain=3D60, TXgain=3D70 and still, the constellation is very nois=
y.<br>
&gt; My assumption is that some part of the RX chain is not configured <br>
&gt; correctly. But I don&#39;t know what the problem is in particular.<br>
&gt; Also, I used an X310 as transmitter and an N310 as receiver. But the <=
br>
&gt; result is the same, the RX constellation is really noisy.<br>
&gt; <br>
&gt; Another observation is, that my RX sample stream in a GR time sink doe=
s <br>
&gt; show quantization artifacts. i.e. I can see discrete steps which I <br=
>
&gt; assume are due to low RX sensitivity. The RX value amplitude is around=
 <br>
&gt; 0.0005 for the samples that I get of a USRP source. I assume this shou=
ld <br>
&gt; be a higher value. With the X310s it was more like 0.1.<br>
&gt; <br>
&gt; Do I need to take special care when I only use 1 antenna port?<br>
&gt; Is there another AGC setting that I need to configure for N310s?<br>
&gt; <br>
&gt; Johannes<br>
&gt; <br>
&gt; Software<br>
&gt; UHD: 3.14.1.1<br>
&gt; GR: 3.8<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Fri, 18 Oct 2019 18:58:26 +0000<br>
From: Skorstad,J?rn &lt;Joern.Skorstad@Nkom.no&gt;<br>
To: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] E310 packet size<br>
Message-ID: &lt;<a href=3D"mailto:eebdb6dc-867a-46ff-92f9-89a3480d810b@emai=
l.android.com" target=3D"_blank">eebdb6dc-867a-46ff-92f9-89a3480d810b@email=
.android.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi all,<br>
<br>
Still trying to understand some parts of the USRP that probably are quite e=
lementary. When using the function get_max_num_samps it always reports 508.=
 Does this mean that the number of samples returned for any requested sampl=
e rate will be decimated down to 508? Any way to change max_num_samps? Not =
using FPGA (yet).<br>
<br>
Cheers,<br>
Jorn<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Fri, 18 Oct 2019 15:18:38 -0400<br>
From: Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blan=
k">saeidh@gmail.com</a>&gt;<br>
To: Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=
=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] uhd_fft failure<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CANQ3h3_guExuKAV6gqNjEuaV=
LiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com" target=3D"_blank">CANQ3h3_guExuK=
AV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Okay, so installing python-six fixed that, and I was able to install<br>
3.7.13.5 from source.<br>
The sample apps like uhd_fft are not in the path like they used to be with<=
br>
binary installation. And trying it from the apps folder gives me:<br>
<br>
nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft&quot;, line 39, =
in &lt;module&gt;<br>
=C2=A0 =C2=A0 import sip<br>
ImportError: No module named sip<br>
<br>
<br>
On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens &lt;<a href=3D"mailto:mich=
ael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;<=
br>
wrote:<br>
<br>
&gt; Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.<=
br>
&gt; Installing Py27-six should be pretty straight forward &amp; should all=
ow you to<br>
&gt; proceed with that install. GR38 has it&#39;s own set of dependencies, =
some of<br>
&gt; which overlap with GR37 and some of which don&#39;t. You&#39;ll want t=
o follow the<br>
&gt; install guide for your OS to get those dependencies. Good luck! - MLD<=
br>
&gt;<br>
&gt; On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi &lt;<a href=3D"mailto:sa=
eidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi Michael,<br>
&gt;&gt;<br>
&gt;&gt; The gnuradio git repository does not have a tag for v3.17.14.5, an=
d using<br>
&gt;&gt; v3.7.13.5 gives me:<br>
&gt;&gt;<br>
&gt;&gt; -- Python checking for six - python 2 and 3 compatibility library<=
br>
&gt;&gt; -- Python checking for six - python 2 and 3 compatibility library =
- not<br>
&gt;&gt; found<br>
&gt;&gt; CMake Error at volk/CMakeLists.txt:98 (message):<br>
&gt;&gt;=C2=A0 =C2=A0six - python 2 and 3 compatibility library required to=
 build VOLK<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -- Configuring incomplete, errors occurred!<br>
&gt;&gt; See also &quot;/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.l=
og&quot;.<br>
&gt;&gt; See also &quot;/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.lo=
g&quot;.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and u=
p, so I<br>
&gt;&gt; need to install that manually.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens &lt;<br>
&gt;&gt; <a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">mic=
hael.dickens@ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; OK. Thanks for the info Saeid. I&#39;ll look into creating a V=
M using Ubuntu<br>
&gt;&gt;&gt; 16.04.1 to see what happens. - MLD<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi &lt;<a href=3D"m=
ailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; It&#39;s Ubuntu 16.04.1, but yes, I will follow the source=
 build<br>
&gt;&gt;&gt;&gt; instructions.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:michael.dickens@ettus.com" target=3D"_bl=
ank">michael.dickens@ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Hi Saeid - Thanks for the followup. I totally agree th=
at if you just<br>
&gt;&gt;&gt;&gt;&gt; &quot;sudo apt install gnuradio&quot;, compatible vers=
ions should be installed. Are<br>
&gt;&gt;&gt;&gt;&gt; you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you ch=
oose to install from<br>
&gt;&gt;&gt;&gt;&gt; source, you can follow instructions such as the GR rec=
ommended way here &lt;<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://wiki.gnuradio.org/index.php/UbuntuI=
nstall#Xenial_Xerus_.2816.04.29" rel=3D"noreferrer" target=3D"_blank">https=
://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a><b=
r>
&gt;&gt;&gt;&gt;&gt; &gt;. I have an Ubuntu 18.04 install that went very sm=
oothly using this guide,<br>
&gt;&gt;&gt;&gt;&gt; but maybe the guide is outdated for older Ubuntu; or, =
our packages need to<br>
&gt;&gt;&gt;&gt;&gt; be updated for that OS version ... Cheers! - MLD<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi &lt;<a h=
ref=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt;<=
br>
&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I will follow your advice, but it&#39;s worth ment=
ioning I simply did<br>
&gt;&gt;&gt;&gt;&gt;&gt; apt-get gnuradio and should therefore have a compa=
tible version of uhd<br>
&gt;&gt;&gt;&gt;&gt;&gt; installed automatically as a dependency. I did not=
 install uhd separately.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt; Michael Dickens<br>
&gt;&gt;&gt;&gt;&gt; Ettus Research Technical Support<br>
&gt;&gt;&gt;&gt;&gt; Email: <a href=3D"mailto:support@ettus.com" target=3D"=
_blank">support@ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; Web: <a href=3D"https://ettus.com/" rel=3D"noreferrer"=
 target=3D"_blank">https://ettus.com/</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Michael Dickens<br>
&gt;&gt;&gt; Ettus Research Technical Support<br>
&gt;&gt;&gt; Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">=
support@ettus.com</a><br>
&gt;&gt;&gt; Web: <a href=3D"https://ettus.com/" rel=3D"noreferrer" target=
=3D"_blank">https://ettus.com/</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Michael Dickens<br>
&gt; Ettus Research Technical Support<br>
&gt; Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@=
ettus.com</a><br>
&gt; Web: <a href=3D"https://ettus.com/" rel=3D"noreferrer" target=3D"_blan=
k">https://ettus.com/</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/dc28a653/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/dc28a653/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 8<br>
Date: Fri, 18 Oct 2019 15:35:31 -0400<br>
From: Carlos Bocanegra &lt;<a href=3D"mailto:carlos.bocanegra.guerra@gmail.=
com" target=3D"_blank">carlos.bocanegra.guerra@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@et=
tus.com</a>, <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">p=
atchvonbraun@gmail.com</a><br>
Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 X310 and UBX-160<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAEJWbW184PxfCq0BNqLLmRGj=
JV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com" target=3D"_blank">CAEJWbW184PxfC=
q0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi all,<br>
<br>
Thanks a lot Sam and Marcus for replying so quickly.<br>
<br>
Le me first include Marcus answer in this email chain for a cleaner<br>
communication:<br>
&quot;*Gnu Radio cannot really misalign samples, unless the DSP logic arran=
ges<br>
for that to happen. If you have a block with a bunch of streams, that<br>
blocks &quot;work&quot; function cannot proceed until there is equal amount=
s of data<br>
available on all streams. In the absence of the hardware dropping samples,<=
br>
coherence is maintained in that case. What you are seeing here seems to be<=
br>
a problem with your network stack=C2=A0 losing things. What type of Etherne=
t<br>
adapters do you have? What sample rates are you running?*&quot;<br>
<br>
*The requested extra info:*<br>
- The sampling rates selected are *1Msps* for the TX and *2Msps* for the RX=
.<br>
- The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd, 1000BASE-T,=
<br>
ABCU-5730ARZ.<br>
- The NIC: Intel Corporation Gigabit CT Desktop Adapter.<br>
- The Ethernet controller: Intel Corporation 82574L Gigabit Network<br>
Connection.<br>
<br>
@Marcus,<br>
good thing that the scheduler in each block handles that correctly. I&#39;l=
l<br>
focus on the network setup then.<br>
<br>
@Sam,<br>
it seems reasonable to think that the source of error is the poking<br>
timeout, being the misalignment the aftermath.<br>
When you say flow controls, do you mean the ones handled by the UHD fw<br>
functions? I see a couple of D&#39;s (packet drops) right before the<br>
misalignment error, after the UHD raises the last poking exception. But<br>
maybe this is just the natural behavior- to drop misaligned packets before<=
br>
either getting an alignment or timing out and rising the exception.<br>
<br>
&quot;*Drop the sample rate (what is it, by the way?) and see if there&#39;=
s a<br>
threshold where things start working [3]*&quot;:<br>
Should I drop the samples below 1Msps/2Msps? I think these are pretty low<b=
r>
and having lower sampling rates would rise new problems. I can go ahead and=
<br>
try it if you still thing this is the issue.<br>
&quot;*Keep the original sample rate and try removing a radio or two from t=
he<br>
system. Does this help things?*&quot;*:*<br>
- 4RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks<br=
>
and analog signal connected to usrp_sink): OK.<br>
- 6RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks<br=
>
and analog signal connected to usrp_sink): NOK (error described previously)=
.<br>
- 3RX/1TX with my DSP blocks: OK.<br>
- 4RX/1TX with my DSP blocks: NOK (error described previously).<br>
<br>
Regarding an example, I could not find one that sets up a usrp_source AND a=
<br>
usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created a<br>
simplistic python flowgraph that results in the poking and misalignment<br>
issue, attached in this email. For instance, the 6x1 connections would map<=
br>
to the input argumments --tx_channels 1 --rx_channels 6.<br>
<br>
Thanks a lot for your time and I hope to hear back from you soon.<br>
<br>
Best,<br>
Carlos<br>
<br>
<br>
On Fri, Oct 18, 2019 at 1:05 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter=
@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:<br>
<br>
&gt; Carlos,<br>
&gt;<br>
&gt; On the host side if you&#39;re using a single streamer, it will work t=
o<br>
&gt; time-align samples from every USRP as they come in. The reason you see=
 1002<br>
&gt; received packets without a timestamp match is because 1000 was the<br>
&gt; threshold for maximum number of alignment failures [1].=C2=A0 This can=
 be<br>
&gt; changed or increased with [2]:<br>
&gt;<br>
&gt; set_alignment_failure_threshold(1000);<br>
&gt;<br>
&gt; But I doubt this will solve the issue for you. Likely just delay it. F=
rom the errors you included, I&#39;d say the real problem is:<br>
&gt;<br>
&gt;<br>
&gt;&gt; *ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2/"=
 rel=3D"noreferrer" target=3D"_blank">http://192.168.100.2/</a>&gt;: x300 f=
w<br>
&gt;&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 =
- reply<br>
&gt;&gt; timed out*<br>
&gt;&gt;<br>
&gt;<br>
&gt; There is either a backup or a lack of samples coming from the radio. D=
o<br>
&gt; you see flow control errors leading up to this failure?<br>
&gt;<br>
&gt; I&#39;d say that pulling pieces out of this system would be a good way=
 to<br>
&gt; start troubleshooting:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 - Drop the sample rate (what is it, by the way?) and see =
if there&#39;s a<br>
&gt;=C2=A0 =C2=A0 threshold where things start working [3]<br>
&gt;=C2=A0 =C2=A0 - Keep the original sample rate and try removing a radio =
or two from<br>
&gt;=C2=A0 =C2=A0 the system. Does this help things?<br>
&gt;<br>
&gt; It sounds like this is something you can reproduce independent of your=
 DSP<br>
&gt; blocks, which helps simplify things a bit. If you could go a bit furth=
er<br>
&gt; and find a simple example (i.e. take one of the GNURadio UHD shipping<=
br>
&gt; examples and expand it to use 3x USRPs) and get it to reproduce the<br=
>
&gt; behavior, then I&#39;d be happy to set something up on my end try to r=
eproduce<br>
&gt; the behavior you&#39;re seeing.<br>
&gt;<br>
&gt; Sam<br>
&gt;<br>
&gt; [1]<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2017-August/053986.html" rel=3D"noreferrer" target=3D"_blank">http://lists=
.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html</a>=
<br>
&gt; [2]<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-January/036210.html" rel=3D"noreferrer" target=3D"_blank">http://list=
s.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January/036210.html</=
a><br>
&gt; [3]<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-November/039561.html" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-November/039561.html=
</a><br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users &lt;<b=
r>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hello community,<br>
&gt;&gt;<br>
&gt;&gt; I am working on a gnuradio application that synchronously retrieve=
s data<br>
&gt;&gt; from a usrp_source, does some DSP on each of the streams and selec=
ts the<br>
&gt;&gt; signal to send on a usrp_sink based on some metric computation. Th=
e sources<br>
&gt;&gt; and sinks represent 3 USRP X310 devices, each with 2 UBX-160<br>
&gt;&gt; daughterboards, and are synchronized using an Octoclock-G. Thus, c=
reating a<br>
&gt;&gt; 6x1 MISO system. The USRP synchronization is done using the Python=
 API, as<br>
&gt;&gt; well as the flowgraph. The DSP blocks are coded in C++. The flowgr=
aph would<br>
&gt;&gt; be something like:<br>
&gt;&gt;<br>
&gt;&gt; *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*<br>
&gt;&gt; *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*<br>
&gt;&gt; *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*<br>
&gt;&gt; *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*<br>
&gt;&gt; *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*<br>
&gt;&gt;<br>
&gt;&gt; The application runs for a while until UHD outputs a message sayin=
g that<br>
&gt;&gt; the poke32 has timed out on one of the USRP. After that, a misalig=
nment<br>
&gt;&gt; error on the receiver streams is shown and the green lights on the=
 USRP go<br>
&gt;&gt; off.<br>
&gt;&gt;<br>
&gt;&gt; We are under the impression that the DSP blocks working independen=
tly may<br>
&gt;&gt; be requesting samples from the source at different times, causing =
the<br>
&gt;&gt; misalignment. Could this be the case? Is there an issue with my ne=
twork<br>
&gt;&gt; connection?<br>
&gt;&gt;<br>
&gt;&gt; I have tried to get rid of the misalignment error by increasing th=
e<br>
&gt;&gt; threshold in the file<br>
&gt;&gt; *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *t=
hrough<br>
&gt;&gt; the function *set_alignment_failure_threshold.* That got rid of th=
e<br>
&gt;&gt; misalignment error, but the failure coming from the poke function =
is still<br>
&gt;&gt; there.<br>
&gt;&gt;<br>
&gt;&gt; Interestingly, the exact same behavior arises when I just connect<=
br>
&gt;&gt; file_sinks to the outputs from the usrp_source and a simple analog=
 signal<br>
&gt;&gt; to the usrp_sink. Below the flowgraph:<br>
&gt;&gt;<br>
&gt;&gt; *self.connect((usrp_source, 0), file_sink_0)*<br>
&gt;&gt; self.connect((usrp_source, 1), file_sink_1)<br>
&gt;&gt; self.connect((usrp_source, 2), file_sink_2)<br>
&gt;&gt; self.connect((usrp_source, 3), file_sink_3)<br>
&gt;&gt; *self.connect(analog_sig_c, (usrp_sink, 0))*<br>
&gt;&gt;<br>
&gt;&gt; I&#39;d appreciate any help on this since I&#39;m running out of i=
deas here.<br>
&gt;&gt; Please, find below more details.<br>
&gt;&gt;<br>
&gt;&gt; *The error:*<br>
&gt;&gt;<br>
&gt;&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2=
" rel=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 f=
w<br>
&gt;&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 =
- reply<br>
&gt;&gt; timed out*<br>
&gt;&gt;<br>
&gt;&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2=
" rel=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 f=
w<br>
&gt;&gt; communication failure #1EnvironmentError: IOError: x300 fw poke32 =
- reply<br>
&gt;&gt; timed out*<br>
&gt;&gt;<br>
&gt;&gt; * [ERROR] [X300] 192.168.100.2 &lt;<a href=3D"http://192.168.100.2=
" rel=3D"noreferrer" target=3D"_blank">http://192.168.100.2</a>&gt;: x300 f=
w<br>
&gt;&gt; communication failure #3EnvironmentError: IOError: x300 fw poke32 =
- reply<br>
&gt;&gt; timed out*<br>
&gt;&gt;=C2=A0 [ERROR] [UHD] An unexpected exception was caught in a task l=
oop.The task<br>
&gt;&gt; loop will now exit, things may not work.EnvironmentError: IOError:=
<br>
&gt;&gt; <a href=3D"http://192.168.100.2" rel=3D"noreferrer" target=3D"_bla=
nk">192.168.100.2</a>: x300 fw communication failure #3<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; * [ERROR] [STREAMER] The receive packet handler failed to time-ali=
gn<br>
&gt;&gt; packets.1002 received packets were processed by the handler.Howeve=
r, a<br>
&gt;&gt; timestamp match could not be determined.*<br>
&gt;&gt;<br>
&gt;&gt; *Here are some details of my network configuration:*<br>
&gt;&gt; - UHD built from source, tag v3.14.1.1.<br>
&gt;&gt; - Gnuradio built from source, tag 3.7.13.5.<br>
&gt;&gt; - X310 USRP, each equipped with two UBX-160 daughterboards.<br>
&gt;&gt; - The communication is over Ethernet using the 1Gb port on the X31=
0.<br>
&gt;&gt; - Each USRP is connected to a dedicated NIC.<br>
&gt;&gt; - The MTU is set to 1500 for the all interfaces.<br>
&gt;&gt; - The USRPs are synchronized using an Octoclock-G and the paramete=
rs<br>
&gt;&gt; tuned in the Python script. The procedure is similar to the one fo=
llowed in<br>
&gt;&gt; benchmark_rate (uhd), for the usrp_source and usrp_sink.<br>
&gt;&gt; - The NIC ring buffers are set to the maximum for both TX and RX, =
to<br>
&gt;&gt; 4096, using ethtool.<br>
&gt;&gt; - The OS ring buffers are set as suggested bu Ettus, using the fol=
lowing<br>
&gt;&gt; commands:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; *&gt;&gt; sudo sysctl -w net.core.rmem_max=3D33554432=C2=A0 =C2=A0=
&gt;&gt; sudo sysctl -w<br>
&gt;&gt; net.core.wmem_max=3D33554432=C2=A0 =C2=A0&gt;&gt; sudo sysctl -w<b=
r>
&gt;&gt; net.core.rmem_default=3D33554432=C2=A0 =C2=A0&gt;&gt; sudo sysctl =
-w<br>
&gt;&gt; net.core.wmem_default=3D33554432*<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt; Carlos<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/1ceaa3f8/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/1ceaa3f8/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: test_multiusrp.py<br>
Type: text/x-python<br>
Size: 9963 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/1ceaa3f8/attachment-0001.py" rel=3D"noreferrer" t=
arget=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.co=
m/attachments/20191018/1ceaa3f8/attachment-0001.py</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 9<br>
Date: Fri, 18 Oct 2019 17:47:01 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: Carlos Bocanegra &lt;<a href=3D"mailto:carlos.bocanegra.guerra@gmail.co=
m" target=3D"_blank">carlos.bocanegra.guerra@gmail.com</a>&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:sam.reiter@ettus.com" target=
=3D"_blank">sam.reiter@ettus.com</a><br>
Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 X310 and UBX-160<br>
Message-ID: &lt;<a href=3D"mailto:5DAA32D5.7070400@gmail.com" target=3D"_bl=
ank">5DAA32D5.7070400@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;windows-1252&quot;; Format=3D&quo=
t;flowed&quot;<br>
<br>
On 10/18/2019 03:35 PM, Carlos Bocanegra wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; Thanks a lot Sam and Marcus for replying so quickly.<br>
&gt;<br>
&gt; Le me first include Marcus answer in this email chain for a cleaner <b=
r>
&gt; communication:<br>
&gt; &quot;/Gnu Radio cannot really misalign samples, unless the DSP logic =
<br>
&gt; arranges for that to happen. If you have a block with a bunch of <br>
&gt; streams, that blocks &quot;work&quot; function cannot proceed until th=
ere is <br>
&gt; equal amounts of data available on all streams. In the absence of the =
<br>
&gt; hardware dropping samples, coherence is maintained in that case. What =
<br>
&gt; you are seeing here seems to be a problem with your network stack=C2=
=A0 <br>
&gt; losing things. What type of Ethernet adapters do you have? What sample=
 <br>
&gt; rates are you running?/&quot;<br>
&gt;<br>
&gt; *The requested extra info:*<br>
&gt; - The sampling rates selected are _1Msps_ for the TX and _2Msps_ for <=
br>
&gt; the RX.<br>
&gt; - The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd, <br>
&gt; 1000BASE-T, ABCU-5730ARZ.<br>
&gt; - The NIC: Intel Corporation Gigabit CT Desktop Adapter.<br>
&gt; - The Ethernet controller: Intel Corporation 82574L Gigabit Network <b=
r>
&gt; Connection.<br>
&gt;<br>
&gt; @Marcus,<br>
&gt; good thing that the scheduler in each block handles that correctly. <b=
r>
&gt; I&#39;ll focus on the network setup then.<br>
&gt;<br>
&gt; @Sam,<br>
&gt; it seems reasonable to think that the source of error is the poking <b=
r>
&gt; timeout, being the misalignment the aftermath.<br>
&gt; When you say flow controls, do you mean the ones handled by the UHD fw=
 <br>
&gt; functions? I see a couple of D&#39;s (packet drops) right before the <=
br>
&gt; misalignment error, after the UHD raises the last poking exception. <b=
r>
&gt; But maybe this is just the natural behavior- to drop misaligned <br>
&gt; packets before either getting an alignment or timing out and rising <b=
r>
&gt; the exception.<br>
&gt;<br>
&gt; &quot;/Drop the sample rate (what is it, by the way?) and see if there=
&#39;s a <br>
&gt; threshold where things start working [3]/&quot;:<br>
&gt; Should I drop the samples below 1Msps/2Msps? I think these are pretty =
<br>
&gt; low and having lower sampling rates would rise new problems. I can go =
<br>
&gt; ahead and try it if you still thing this is the issue.<br>
&gt; &quot;/Keep the original sample rate and try removing a radio or two f=
rom <br>
&gt; the system. Does this help things?/&quot;/:/<br>
&gt; - 4RX/1TX with simplistic flowgraph (usrp_source connected to <br>
&gt; file_sinks and analog signal connected to usrp_sink): OK.<br>
&gt; - 6RX/1TX with simplistic flowgraph (usrp_source connected to <br>
&gt; file_sinks and analog signal connected to usrp_sink): NOK (error <br>
&gt; described previously).<br>
&gt; - 3RX/1TX with my DSP blocks: OK.<br>
&gt; - 4RX/1TX with my DSP blocks: NOK (error described previously).<br>
&gt;<br>
&gt; Regarding an example, I could not find one that sets up a usrp_source =
<br>
&gt; AND a usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created=
 <br>
&gt; a simplistic python flowgraph that results in the poking and <br>
&gt; misalignment issue, attached in this email. For instance, the 6x1 <br>
&gt; connections would map to the input argumments --tx_channels 1 <br>
&gt; --rx_channels 6.<br>
&gt;<br>
&gt; Thanks a lot for your time and I hope to hear back from you soon.<br>
&gt;<br>
&gt; Best,<br>
&gt; Carlos<br>
&gt;<br>
&gt;<br>
I&#39;ll note that some members of the 82574L family of controllers are <br=
>
known to unnecessarily drop packets *particularly at unexpectedly-low flow<=
br>
=C2=A0 =C2=A0rates*.<br>
<br>
This may or may not be contributing to your problem.<br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191018/262c8d60/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191018/262c8d60/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 110, Issue 16<br>
*******************************************<br>
</blockquote></div></div>
</blockquote></div>

--000000000000d551f00595a9ef1d--


--===============7058528185233426451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7058528185233426451==--

