Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2142B529D
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 21:33:14 +0100 (CET)
Received: from [::1] (port=36350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kelBX-00069r-S2; Mon, 16 Nov 2020 15:33:11 -0500
Received: from scalix.pari.edu ([68.235.248.163]:33638)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <lowen@pari.edu>) id 1kelBT-000637-Pb
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 15:33:07 -0500
Received: from scalix.pari.edu (localhost [127.0.0.1])
 by scalix.pari.edu (Postfix) with ESMTP id 7252B640131
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 15:32:27 -0500 (EST)
Received: from localhost.localdomain (localhost [127.0.0.1])
 by scalix.pari.edu (Scalix SMTP Relay 12.6.0.14933)
 via ESMTP; Mon, 16 Nov 2020 15:32:27 -0500 (EST)
Date: Mon, 16 Nov 2020 15:32:22 -0500
To: usrp-users@lists.ettus.com
Message-ID: <96cd5a7a-0f92-d15a-280c-375e0a002144@pari.edu>
In-Reply-To: <7269bb32-af6f-1631-1c33-5b78e9b03ef9@pari.edu>
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
 <5FB2C107.60309@gmail.com>
 <7c355116-88f5-35b5-2ba8-2d851ed4af68@pari.edu>
 <7269bb32-af6f-1631-1c33-5b78e9b03ef9@pari.edu>
x-scalix-Hops: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Language: en-US
Subject: Re: [USRP-users] UHD version that supports older DBSRX on a USRP1.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lamar Owen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lamar Owen <lowen@pari.edu>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
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

On 11/16/20 3:14 PM, Lamar Owen via USRP-users wrote:
> So, I'm looking at issue report #304 related to the RFX board, and a =

> related text patch file, =

> https://github.com/EttusResearch/uhd/files/3881213/0001-rfx-Fix-calculati=
on-of-prescaler-and-band-select.patch.txt =

> that seem to have a similar construct in =

> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/db_=
dbsrx.cpp =

> along about line 302.=A0 Am I barking up the wrong tree, or if the 'for =

> (auto ....' construct needed changing in one case it needs changing in =

> this case, too?=A0 I'll need to move from the conda package to the EPEL8 =

> RPM package, because I know how to rebuild those and can test patches =

> with those.=A0 I don't know enough c++ to be able to generate the patch, =

> though. =

Just in case this helps, here's logging output:
(base) [pari-sdr@dhcp-pool167 ~]$ UHD_LOG_CONSOLE_LEVEL=3D0 uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; =

UHD_3.15.0.HEAD-release
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49600
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49600
[DEBUG] [USRP1] USRP1 firmware image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.1.255 50000
[TRACE] [UDP] Creating udp transport for 192.168.122.255 50000
[TRACE] [UHD] Device hash: 6433317707856818692
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/pari-sdr/.uhd/uhd.conf
[INFO] [USRP1] Opening a USRP1 device...
[DEBUG] [USRP1] USRP1 FPGA image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf
[TRACE] [USRP1] poke32(13, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(14, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[DEBUG] [USRP1] USRP1 Capabilities=A0=A0=A0 number of duc's: 2=A0=A0=A0 num=
ber of =

ddc's: 2=A0=A0=A0 rx halfband:=A0=A0=A0=A0 1=A0=A0=A0 tx halfband:=A0=A0=A0=
=A0 0
[INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0 20
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 32=A0 num_bits: 16 re=
adback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0=A0 0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 0=A0 num_bits: 16 rea=
dback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 106
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 262=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1024=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 504
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1284=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 608
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1544=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1792=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 800
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2048=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 900
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2304=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2560=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2816=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 c00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3072=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 d00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3328=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 ec0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3776=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 fc0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4032=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10c7
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4295=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1100
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4352=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1249
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4681=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1312
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4882=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1410
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5136=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5376=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5632=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5888=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1849
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 6217=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1940
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 6464=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2209
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 8713=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10ff
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4351=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0 20
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 32=A0 num_bits: 16 re=
adback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0=A0 0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 0=A0 num_bits: 16 rea=
dback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 106
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 262=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1024=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 504
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1284=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 608
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1544=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1792=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 800
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2048=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 900
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2304=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2560=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2816=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 c00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3072=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 d00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3328=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 ec0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3776=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 fc0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4032=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10c7
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4295=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1100
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4352=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1249
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4681=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1312
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4882=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1410
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5136=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5376=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5632=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5888=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1849
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 6217=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1940
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 6464=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2209
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 8713=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10ff
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4351=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] poke32(16, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(17, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(15, 0x=A0=A0=A0=A0=A0=A0 3)
[TRACE] [USRP1] poke32(18, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(19, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(15, 0x=A0=A0=A0=A0=A0=A0 f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [DBSRX] DBSRX: send reg 0x00, value 0x0003, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x01, value 0x00b6, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x02, value 0x003d, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x03, value 0x007f, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x04, value 0x0002, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX GC1 Gain: 0.000000 dB, dac_volts: 2.700000 V
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 24d1
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9425=A0 num_bits: 16 =

readback: 0
[TRACE] [DBSRX] DBSRX GC2 Gain: 0.000000 dB, reg: 31
[TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr =3D 0x0005, =

num_bytes 1
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 6, 0xffff0001)
[TRACE] [DBSRX] DBSRX: trying ref_clock 4000000.000000 and m_divider 4
[TRACE] [DBSRX] DBSRX R:2

[ERROR] [DBMGR] The daughterboard manager encountered a recoverable =

error in init.
Loading the "unknown" daughterboard implementations to continue.
The daughterboard cannot operate until this error is resolved.
AssertionError: m and ref_clock/m >=3D 1e6 and ref_clock/m <=3D 2.5e6
 =A0 in double dbsrx::set_lo_freq(double)
 =A0 at =

/home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/=
usrp/dboard/db_dbsrx.cpp:306

[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 8, 0xffff0000)
[TRACE] [USRP1] poke32(12, 0xffff0000)
[TRACE] [USRP1] poke32(29, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 7, 0xffff0000)
[TRACE] [USRP1] poke32(11, 0xffff0000)
[TRACE] [USRP1] poke32(26, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 1, 0x=A0=A0=A0=A0=A0=A0 1)
[TRACE] [USRP1] poke32(33, 0x=A0=A0=A0=A0=A0 1f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 0, 0x=A0=A0=A0=A0=A0=A0 1)
[TRACE] [USRP1] poke32(32, 0x=A0=A0=A0=A0=A0 1f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32(34, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(35, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(38, 0x=A0=A0=A0=A0=A0 41)
[TRACE] [USRP1] poke32(39, 0x=A0=A0=A0=A0 981)
 =A0 _____________________________________________________
 =A0/
|=A0=A0=A0=A0=A0=A0 Device: USRP1 Device
|=A0=A0=A0=A0 _____________________________________________________
|=A0=A0=A0 /
|=A0=A0 |=A0=A0=A0=A0=A0=A0 Mboard: USRP1
|=A0=A0 |=A0=A0 serial: 4460cd30
|=A0=A0 |
|=A0=A0 |=A0=A0 Time sources:=A0 none
|=A0=A0 |=A0=A0 Clock sources: internal
|=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0 ID: DBSRX (0x0002)
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB

[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 8, 0xffff0000)
[TRACE] [USRP1] poke32(12, 0xffff0000)
[TRACE] [USRP1] poke32(29, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 7, 0xffff0000)
[TRACE] [USRP1] poke32(11, 0xffff0000)
[TRACE] [USRP1] poke32(26, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9216=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9472=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9728=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 10752=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 11008=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 107
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 263=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 80f
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2063=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9216=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9472=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9728=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 10752=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 11008=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 107
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 263=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 80f
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2063=A0 num_bits: 16 =

readback: 0
(base) [pari-sdr@dhcp-pool167 ~]$

And with a second USRP1:
(base) [pari-sdr@dhcp-pool167 ~]$ UHD_LOG_CONSOLE_LEVEL=3D0 uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; =

UHD_3.15.0.HEAD-release
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49600
[DEBUG] [USRP1] USRP1 firmware image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx
[INFO] [FX2] Loading firmware image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx...
[INFO] [FX2] Firmware loaded
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
[TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.1.255 50000
[TRACE] [UDP] Creating udp transport for 192.168.122.255 50000
[TRACE] [UHD] Device hash: 11462434024067858173
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/pari-sdr/.uhd/uhd.conf
[INFO] [USRP1] Opening a USRP1 device...
[DEBUG] [USRP1] USRP1 FPGA image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf
[INFO] [FX2] Loading FPGA image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf...
[INFO] [FX2] FPGA image loaded
[TRACE] [USRP1] poke32(13, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(14, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[DEBUG] [USRP1] USRP1 Capabilities=A0=A0=A0 number of duc's: 2=A0=A0=A0 num=
ber of =

ddc's: 2=A0=A0=A0 rx halfband:=A0=A0=A0=A0 1=A0=A0=A0 tx halfband:=A0=A0=A0=
=A0 0
[INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0 20
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 32=A0 num_bits: 16 re=
adback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0=A0 0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 0=A0 num_bits: 16 rea=
dback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 106
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 262=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1024=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 504
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1284=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 608
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1544=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 1792=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 800
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2048=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 900
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2304=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2560=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2816=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 c00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3072=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 d00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3328=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 ec0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 3776=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 fc0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4032=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10c7
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4295=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1100
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4352=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1249
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4681=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1312
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4882=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1410
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5136=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5376=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5632=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 5888=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1849
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 6217=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1940
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 6464=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2209
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 8713=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10ff
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 4351=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0 20
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 32=A0 num_bits: 16 re=
adback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0=A0=A0 0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 0=A0 num_bits: 16 rea=
dback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 106
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 262=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1024=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 504
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1284=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 608
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1544=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 1792=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 800
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2048=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 900
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2304=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2560=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2816=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 c00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3072=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 d00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3328=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 ec0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 3776=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 fc0
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4032=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10c7
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4295=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1100
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4352=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1249
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4681=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1312
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4882=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1410
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5136=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5376=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5632=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1700
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 5888=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1849
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 6217=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 1940
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 6464=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2209
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 8713=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 280
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 640=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 380
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 896=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 10ff
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 4351=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] poke32(16, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(17, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(15, 0x=A0=A0=A0=A0=A0=A0 3)
[TRACE] [USRP1] poke32(18, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(19, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(15, 0x=A0=A0=A0=A0=A0=A0 f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [DBSRX] DBSRX: send reg 0x00, value 0x0003, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x01, value 0x00b6, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x02, value 0x003d, start_addr =3D 0x0000, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x03, value 0x007f, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x04, value 0x0002, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr =3D 0x0003, =

num_bytes 3
[TRACE] [DBSRX] DBSRX GC1 Gain: 0.000000 dB, dac_volts: 2.700000 V
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 24d1
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9425=A0 num_bits: 16 =

readback: 0
[TRACE] [DBSRX] DBSRX GC2 Gain: 0.000000 dB, reg: 31
[TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr =3D 0x0005, =

num_bytes 1
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 6, 0xffff0001)
[TRACE] [DBSRX] DBSRX: trying ref_clock 4000000.000000 and m_divider 4
[TRACE] [DBSRX] DBSRX R:2

[ERROR] [DBMGR] The daughterboard manager encountered a recoverable =

error in init.
Loading the "unknown" daughterboard implementations to continue.
The daughterboard cannot operate until this error is resolved.
AssertionError: m and ref_clock/m >=3D 1e6 and ref_clock/m <=3D 2.5e6
 =A0 in double dbsrx::set_lo_freq(double)
 =A0 at =

/home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/=
usrp/dboard/db_dbsrx.cpp:306

[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 8, 0xffff0000)
[TRACE] [USRP1] poke32(12, 0xffff0000)
[TRACE] [USRP1] poke32(29, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 7, 0xffff0000)
[TRACE] [USRP1] poke32(11, 0xffff0000)
[TRACE] [USRP1] poke32(26, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 1, 0x=A0=A0=A0=A0=A0=A0 1)
[TRACE] [USRP1] poke32(33, 0x=A0=A0=A0=A0=A0 1f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32( 0, 0x=A0=A0=A0=A0=A0=A0 1)
[TRACE] [USRP1] poke32(32, 0x=A0=A0=A0=A0=A0 1f)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] peek32( 3)
[TRACE] [USRP1] poke32(34, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(35, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32(38, 0x=A0=A0=A0=A0=A0 41)
[TRACE] [USRP1] poke32(39, 0x=A0=A0=A0=A0 981)
 =A0 _____________________________________________________
 =A0/
|=A0=A0=A0=A0=A0=A0 Device: USRP1 Device
|=A0=A0=A0=A0 _____________________________________________________
|=A0=A0=A0 /
|=A0=A0 |=A0=A0=A0=A0=A0=A0 Mboard: USRP1
|=A0=A0 |=A0=A0 serial: 45d0d3fa
|=A0=A0 |
|=A0=A0 |=A0=A0 Time sources:=A0 none
|=A0=A0 |=A0=A0 Clock sources: internal
|=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0 ID: DBSRX (0x0002)
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB

[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 808
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2056=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] poke32( 6, 0xffff0000)
[TRACE] [USRP1] poke32(10, 0xffff0000)
[TRACE] [USRP1] poke32(23, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 5, 0xffff0000)
[TRACE] [USRP1] poke32( 9, 0xffff0000)
[TRACE] [USRP1] poke32(20, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 8, 0xffff0000)
[TRACE] [USRP1] poke32(12, 0xffff0000)
[TRACE] [USRP1] poke32(29, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] poke32( 7, 0xffff0000)
[TRACE] [USRP1] poke32(11, 0xffff0000)
[TRACE] [USRP1] poke32(26, 0x=A0=A0=A0=A0=A0=A0 0)
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9216=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9472=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 9728=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 10752=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 11008=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 107
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 263=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 80f
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 2=A0 bits: 2063=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2400
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9216=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2500
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9472=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2600
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 9728=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2a00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 10752=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0 2b00
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 11008=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 107
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 263=A0 num_bits: 16 =

readback: 0
[TRACE] [USRP1] codec control write reg: 0x=A0=A0=A0=A0 80f
[TRACE] [USRP1] transact_spi:=A0=A0 slave: 4=A0 bits: 2063=A0 num_bits: 16 =

readback: 0
(base) [pari-sdr@dhcp-pool167 ~]$


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
