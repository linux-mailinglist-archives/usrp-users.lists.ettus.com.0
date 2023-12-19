Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC940818B9B
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 16:53:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 174BD3856C9
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 10:53:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703001217; bh=W8dF72503KEhvUdz7ULE97pYsUfIgWeZSqhCHJBv5GQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GpMrg2AMgLiPORTo9qcY12RUhEYW+YAAu2KmiEOnIq//EsYj1D/ZL9ijnKVbjFb8E
	 IIML7cb8P9x31/O/98GLEX5wdio3ywnUctfvrg0P84zy2v4wh91NX+WLeeqJMycZSw
	 VpVUveUxxPAjRYpFmzOaxxHGdWI22bBnPl/UunuSLIOxDpOiHuxEeRiGadhkEsdIny
	 GgjniKyFuu0ihaznZG/QNLboWoFQ+h7YikWSnc08ETIsrBcTXMb5cx9wNyO/vC3qeQ
	 vKg47KbFgbiHltCUSN0oHaJrOMezJtpiuAZCFiCJIGHjyftG/yu5qyd4X/1rcGx8fV
	 E4ofUpqlrj2xA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE90B3855A8
	for <usrp-users@lists.ettus.com>; Tue, 19 Dec 2023 10:53:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703001184; bh=po/h4QIKJEnLqq/q7pfL+lxoI0gAoEHzJYMD9PNoaHo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=f0CQ0DI53KN/iG+2kFGD3CXqEuE0H95vW8wObPUlJ6qRqlMu+nI6POw0FpMOhTv2H
	 gpvzuQpSHsPyvFSV1c2ZV1vVMGWy5dRPqJU0bml4i8KmMh4wKabZ42wfucYbmRm1Oe
	 IsfRr9Rva7/Wf46RCb7Tt82ob1xpkCJxb6DMGf4/9dQpo8BMsNEhaICV0VjJWMcjjx
	 hG4ZQPmrcFNJIB3L2fyG73YQ4wxtIdmN5tmhvPTx17a8E+k51nxIgb5rd3cWAvpEJC
	 7gc2veimj7nR3Mz1yOncXDcoR626d9FBJQMzjMQumkrgBol+apNIhDYdRTsob9VYW5
	 ka/hd3WM3IQxQ==
Date: Tue, 19 Dec 2023 15:53:04 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <bUbn42ia765vcSOTWRX97K5aq94u2t6Npj8TVRamRU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CACDPEcPY-e14yFhVMJTkxNW73cuUdUU4CBkMJY2b3dDcdvjHLA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: KN5VJ7KV6OYJU7PB6HPDLYRCLPZ76G7D
X-Message-ID-Hash: KN5VJ7KV6OYJU7PB6HPDLYRCLPZ76G7D
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KN5VJ7KV6OYJU7PB6HPDLYRCLPZ76G7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8076470210681232200=="

This is a multi-part message in MIME format.

--===============8076470210681232200==
Content-Type: multipart/alternative;
 boundary="b1_bUbn42ia765vcSOTWRX97K5aq94u2t6Npj8TVRamRU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bUbn42ia765vcSOTWRX97K5aq94u2t6Npj8TVRamRU
Content-Type: text/plain; charset=us-ascii

these are the further results. In which now I can see that there is replay block after executing uhd_usrp_probe. I am really thankful to your help. 

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ uhd_image_loader --args type=e3xx,adr=192.168.10.2 --fpga-path=/home/grcusrp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fpga.bit

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=e3xx,product=e310_sg3,serial=31370FC,name=ni-e31x-31370FC,fpga=n/a,claimed=False,addr=192.168.10.2,skip_init=1

\[INFO\] \[MPMD\] Claimed device without full initialization.

\[INFO\] \[MPMD IMAGE LOADER\] Starting update. This may take a while.

\[INFO\] \[MPM.PeriphManager\] Installing component \`fpga'

\[INFO\] \[MPM.PeriphManager\] Installing component \`dts'

\[INFO\] \[MPMD IMAGE LOADER\] Update component function succeeded.

\[INFO\] \[MPM.RPCServer\] Resetting peripheral manager.

\[WARNING\] \[MPM.PeriphManager\] Skipping HW/SW compatibility check!

\[INFO\] \[MPM.PeriphManager\] Device serial number: 31370FC

\[WARNING\] \[MPM.PeriphManager\] Found more EEPROM paths than daughterboards. Ignoring some of them.

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=e3xx,product=e310_sg3,serial=31370FC,name=ni-e31x-31370FC,fpga=n/a,claimed=False,addr=192.168.10.2,adr=192.168.10.2,find_all=1

\[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never fully initialized!

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`adr=192.168.10.2,find_all=1,fpga=n/a,mgmt_addr=192.168.10.2,name=ni-e31x-31370FC,product=e310_sg3'.

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 0 ... 

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 1 ... 

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=e3xx,product=e310_sg3,serial=31370FC,name=ni-e31x-31370FC,fpga=n/a,claimed=False,addr=192.168.10.2

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=n/a,mgmt_addr=192.168.10.2,name=ni-e31x-31370FC,product=e310_sg3'.

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 0 ... 

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 1 ... 

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

  _____________________________________________________

 /

|       Device: E300-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-e31x-31370FC

|   |   dboard_0_pid: 272

|   |   dboard_0_serial: 312CB29

|   |   fs_version: 20230131233832

|   |   mender_artifact: v4.4.0.0_e310_sg3

|   |   mpm_sw_version: 4.4.0.0-g5fac246b

|   |   pid: 30675

|   |   product: e310_sg3

|   |   rev: 7

|   |   rpc_connection: remote

|   |   serial: 31370FC

|   |   type: e3xx

|   |   MPM Version: 4.4

|   |   FPGA Version: 6.0

|   |   FPGA git hash: 5fac246.dirty

|   |   RFNoC capable: Yes

|   |   

|   |   Time sources:  internal, external, gpsdo

|   |   Clock sources: internal

|   |   Sensors: ref_locked, gps_locked, temp_fpga, temp_mb, gps_gpgga, gps_sky, gps_time, gps_tpv

|     _____________________________________________________

|    /

|   |       RFNoC blocks on this device:

|   |   

|   |   \* 0/Radio#0

|   |   \* 0/Replay#0

|     _____________________________________________________

|    /

|   |       Static connections on this device:

|   |   

|   |   \* 0/SEP#0:0==>0/Replay#0:0

|   |   \* 0/SEP#1:0==>0/Replay#0:1

|   |   \* 0/Replay#0:0==>0/Radio#0:0

|   |   \* 0/Replay#0:1==>0/Radio#0:1

|   |   \* 0/Radio#0:0==>0/SEP#0:0

|   |   \* 0/Radio#0:1==>0/SEP#1:0

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#0

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: E3xx

|   |   |   Antennas: TX/RX

|   |   |   Freq range: 47.000 to 6000.000 MHz

|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB

|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 1

|   |   |   Name: E3xx

|   |   |   Antennas: TX/RX

|   |   |   Freq range: 47.000 to 6000.000 MHz

|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB

|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#0

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: E3xx

|   |   |   Antennas: RX2, TX/RX

|   |   |   Freq range: 70.000 to 6000.000 MHz

|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB

|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 1

|   |   |   Name: E3xx

|   |   |   Antennas: RX2, TX/RX

|   |   |   Freq range: 70.000 to 6000.000 MHz

|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB

|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

--b1_bUbn42ia765vcSOTWRX97K5aq94u2t6Npj8TVRamRU
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>these are the further results. In which now I can see that there is repl=
ay block after executing uhd_usrp_probe. I am really thankful to your help.=
 </p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ uhd_image_=
loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-path=3D/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fpga.bit</p><p>[INFO] [UHD] linux=
; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[IN=
FO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.=
168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,name=3Dni-e31x-313=
70FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,skip_init=3D1</p><p>[IN=
FO] [MPMD] Claimed device without full initialization.</p><p>[INFO] [MPMD I=
MAGE LOADER] Starting update. This may take a while.</p><p>[INFO] [MPM.Peri=
phManager] Installing component `fpga'</p><p>[INFO] [MPM.PeriphManager] Ins=
talling component `dts'</p><p>[INFO] [MPMD IMAGE LOADER] Update component f=
unction succeeded.</p><p>[INFO] [MPM.RPCServer] Resetting peripheral manage=
r.</p><p>[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!<=
/p><p>[INFO] [MPM.PeriphManager] Device serial number: 31370FC</p><p>[WARNI=
NG] [MPM.PeriphManager] Found more EEPROM paths than daughterboards. Ignori=
ng some of them.</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D=
31370FC,name=3Dni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10=
.2,adr=3D192.168.10.2,find_all=3D1</p><p>[WARNING] [MPM.PeriphManager] Cann=
ot run deinit(), device was never fully initialized!</p><p>[INFO] [MPM.Peri=
phManager] init() called with device args `adr=3D192.168.10.2,find_all=3D1,=
fpga=3Dn/a,mgmt_addr=3D192.168.10.2,name=3Dni-e31x-31370FC,product=3De310_s=
g3'.</p><p>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 .=
.. </p><p>[INFO] [0/Radio#0] CODEC loopback test passed</p><p>[INFO] [0/Rad=
io#0] Performing CODEC loopback test on channel 1 ... </p><p>[INFO] [0/Radi=
o#0] CODEC loopback test passed</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/f=
pga/usrp3/top/e31x$ uhd_usrp_probe</p><p>[INFO] [UHD] linux; GNU C++ versio=
n 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[INFO] [MPMD] Initi=
alizing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3D=
e3xx,product=3De310_sg3,serial=3D31370FC,name=3Dni-e31x-31370FC,fpga=3Dn/a,=
claimed=3DFalse,addr=3D192.168.10.2</p><p>[INFO] [MPM.PeriphManager] init()=
 called with device args `fpga=3Dn/a,mgmt_addr=3D192.168.10.2,name=3Dni-e31=
x-31370FC,product=3De310_sg3'.</p><p>[INFO] [0/Radio#0] Performing CODEC lo=
opback test on channel 0 ... </p><p>[INFO] [0/Radio#0] CODEC loopback test =
passed</p><p>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1=
 ... </p><p>[INFO] [0/Radio#0] CODEC loopback test passed</p><p>  _________=
____________________________________________</p><p> /</p><p>|       Device:=
 E300-Series Device</p><p>|     ___________________________________________=
__________</p><p>|    /</p><p>|   |       Mboard: ni-e31x-31370FC</p><p>|  =
 |   dboard_0_pid: 272</p><p>|   |   dboard_0_serial: 312CB29</p><p>|   |  =
 fs_version: 20230131233832</p><p>|   |   mender_artifact: v4.4.0.0_e310_sg=
3</p><p>|   |   mpm_sw_version: 4.4.0.0-g5fac246b</p><p>|   |   pid: 30675<=
/p><p>|   |   product: e310_sg3</p><p>|   |   rev: 7</p><p>|   |   rpc_conn=
ection: remote</p><p>|   |   serial: 31370FC</p><p>|   |   type: e3xx</p><p=
>|   |   MPM Version: 4.4</p><p>|   |   FPGA Version: 6.0</p><p>|   |   FPG=
A git hash: 5fac246.dirty</p><p>|   |   RFNoC capable: Yes</p><p>|   |   </=
p><p>|   |   Time sources:  internal, external, gpsdo</p><p>|   |   Clock s=
ources: internal</p><p>|   |   Sensors: ref_locked, gps_locked, temp_fpga, =
temp_mb, gps_gpgga, gps_sky, gps_time, gps_tpv</p><p>|     ________________=
_____________________________________</p><p>|    /</p><p>|   |       RFNoC =
blocks on this device:</p><p>|   |   </p><p>|   |   * 0/Radio#0</p><p>|   |=
   * 0/Replay#0</p><p>|     _______________________________________________=
______</p><p>|    /</p><p>|   |       Static connections on this device:</p=
><p>|   |   </p><p>|   |   * 0/SEP#0:0=3D=3D&gt;0/Replay#0:0</p><p>|   |   =
* 0/SEP#1:0=3D=3D&gt;0/Replay#0:1</p><p>|   |   * 0/Replay#0:0=3D=3D&gt;0/R=
adio#0:0</p><p>|   |   * 0/Replay#0:1=3D=3D&gt;0/Radio#0:1</p><p>|   |   * =
0/Radio#0:0=3D=3D&gt;0/SEP#0:0</p><p>|   |   * 0/Radio#0:1=3D=3D&gt;0/SEP#1=
:0</p><p>|     _____________________________________________________</p><p>=
|    /</p><p>|   |       TX Dboard: 0/Radio#0</p><p>|   |     _____________=
________________________________________</p><p>|   |    /</p><p>|   |   |  =
     TX Frontend: 0</p><p>|   |   |   Name: E3xx</p><p>|   |   |   Antennas=
: TX/RX</p><p>|   |   |   Freq range: 47.000 to 6000.000 MHz</p><p>|   |   =
|   Gain range PGA: 0.0 to 89.8 step 0.2 dB</p><p>|   |   |   Bandwidth ran=
ge: 20000000.0 to 40000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type:=
 IQ</p><p>|   |   |   Uses LO offset: No</p><p>|   |     __________________=
___________________________________</p><p>|   |    /</p><p>|   |   |       =
TX Frontend: 1</p><p>|   |   |   Name: E3xx</p><p>|   |   |   Antennas: TX/=
RX</p><p>|   |   |   Freq range: 47.000 to 6000.000 MHz</p><p>|   |   |   G=
ain range PGA: 0.0 to 89.8 step 0.2 dB</p><p>|   |   |   Bandwidth range: 2=
0000000.0 to 40000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type: IQ</=
p><p>|   |   |   Uses LO offset: No</p><p>|     ___________________________=
__________________________</p><p>|    /</p><p>|   |       RX Dboard: 0/Radi=
o#0</p><p>|   |     _____________________________________________________</=
p><p>|   |    /</p><p>|   |   |       RX Frontend: 0</p><p>|   |   |   Name=
: E3xx</p><p>|   |   |   Antennas: RX2, TX/RX</p><p>|   |   |   Freq range:=
 70.000 to 6000.000 MHz</p><p>|   |   |   Gain range PGA: 0.0 to 76.0 step =
1.0 dB</p><p>|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0=
 Hz</p><p>|   |   |   Connection Type: IQ</p><p>|   |   |   Uses LO offset:=
 No</p><p>|   |     _____________________________________________________</=
p><p>|   |    /</p><p>|   |   |       RX Frontend: 1</p><p>|   |   |   Name=
: E3xx</p><p>|   |   |   Antennas: RX2, TX/RX</p><p>|   |   |   Freq range:=
 70.000 to 6000.000 MHz</p><p>|   |   |   Gain range PGA: 0.0 to 76.0 step =
1.0 dB</p><p>|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0=
 Hz</p><p>|   |   |   Connection Type: IQ</p><p>|   |   |   Uses LO offset:=
 No</p>

--b1_bUbn42ia765vcSOTWRX97K5aq94u2t6Npj8TVRamRU--

--===============8076470210681232200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8076470210681232200==--
