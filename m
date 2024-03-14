Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB30F87C68D
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 00:40:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95BC738535F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 19:40:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710459615; bh=7eRb0d4fxtprrc0zRqL8Q9OfRM7iXYhFaXRIwMkwpVM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J4Xyd6Rg/aH5ZLB5L0zw2UuF2Y2LNDNflNGH4vryMAB5MFHv1oLVJDWvmfyirWpkU
	 VR7BeAMRhQ9yKi8oTdgresiXa7PL+B/uc0ERwGmJQGXMC0densl4ljG5GcUbH865dP
	 i0KZqDz0XoJbYxB2Gf/JtHSAit8M3O0/oBnk79vQCzP+8FKJdBAJgVmpj+nWqrV0Ua
	 Xr1ET2Sbeu0LlXqjDHSwBWPeTtV+vRd6Q79wiR4HInrs6WZC3c6mxQd6gLq8H1wjY7
	 bNSs0zB1TY7zp8rrcTbXgfwseEQfCDVs68k5fob2inW+uorbiN2WkpfCSj1IoqppKM
	 ckh2dgmNfY2vw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB6C738506D
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 19:39:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710459579; bh=eGnCaH+Yu96YAKj/OU1/3jXryHh0MyuxP/hjEeFGino=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RPwo+EiIHKXzid6XHznCc1ytzLfw8hCrAgK4gbKB9VFbpD2rQcpgw3h/xLyYv6w6H
	 UIpBYhv0vlz46kQnUPdGCMzzpstYTCh9/KKVJSitqEa81JeZ82NGHPQSwrX/GNA3Ly
	 hK+IHnxbd9lShMxJ/6F9v60sZC+a+u3Sz2g0euBvpvH8zVqpj/uKh0WkngKZxp6qc+
	 zNzbmUqqdb/aEc3z1SgJ8DQDYbiJmt4lIb7IEzPHaemqRTyGxsVEjPPGQGfFfvFdwG
	 COou6mKzGjSAZhr9RJM/OTwp+xVtzq7MYm9Euk8TtHj3IhPe+NMgLNRuhHxUY4c2cI
	 HG++FAuPmZE+w==
Date: Thu, 14 Mar 2024 23:39:39 +0000
To: usrp-users@lists.ettus.com
From: brian.diaz.476@my.csun.edu
Message-ID: <4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH0PR04MB8311970D78A485091202F272F3292@PH0PR04MB8311.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: EJJXGI5NR3U65I736N7TXR3QBWP5WHFJ
X-Message-ID-Hash: EJJXGI5NR3U65I736N7TXR3QBWP5WHFJ
X-MailFrom: brian.diaz.476@my.csun.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 "NoneType" error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJJXGI5NR3U65I736N7TXR3QBWP5WHFJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5701508332346381432=="

This is a multi-part message in MIME format.

--===============5701508332346381432==
Content-Type: multipart/alternative;
 boundary="b1_4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg
Content-Type: text/plain; charset=us-ascii

Hello Martin, 

I am currently using two command prompt windows for debug information\
\
This is the first command prompt window where I logged into the n310 and ran both systemctl stop usrp-hwd and usrp_hwd.py -v commands and after running the uhd_usrp_probe command on the host computer: 

\
C:\\Windows\\System32>ssh root@ni-n3xx-3177E63

root@ni-n3xx-3177E63:\~# systemctl stop usrp-hwd

root@ni-n3xx-3177E63:\~# usrp_hwd.py -v

\[MPM.main\] \[INFO\] Launching USRP/MPM, version: 4.6.0.0-g50fa3baa

\[MPM.main\] \[INFO\] Spawning RPC process...

\[MPM.main\] \[DEBUG\] RPC process has PID: 354

\[MPM.main\] \[INFO\] Spawning discovery process...

\[MPM.main\] \[DEBUG\] Discovery process has PID: 355

\[MPM.main\] \[INFO\] Processes launched. Registering signal handlers.

\[MPM.PeriphManager\] \[INFO\] Device serial number: 3177E63

\[MPM.PeriphManager\] \[DEBUG\] Reading EEPROM info for dboard 0...

\[MPM.PeriphManager\] \[DEBUG\] Found dboard PID in EEPROM: 0x0150

\[MPM.PeriphManager\] \[DEBUG\] Reading EEPROM info for dboard 1...

\[MPM.PeriphManager\] \[DEBUG\] Found dboard PID in EEPROM: 0x0150

\[MPM.PeriphManager\] \[DEBUG\] Motherboard requests device tree overlays: \['n310'\]

\[MPM.DTO\] \[DEBUG\] Overlay \`n310' was already applied, not applying again.

\[MPM.PeriphManager\] \[DEBUG\] Using default args: {}

\[MPM.PeriphManager\] \[DEBUG\] Initializing dboard 0...

\[MPM.dboardManager\] \[DEBUG\] spidev device node map: {'cpld': '/dev/spidev0.0', 'lmk': '/dev/spidev0.1', 'mykonos': '/dev/spidev0.2', 'phase_dac': '/dev/spidev0.3'}

\[MPM.Magnesium-0\] \[DEBUG\] Loading C++ drivers...

\[MPM.Magnesium-0\] \[DEBUG\] AD9371: ARM version: 184.72.95 Release API version: 1.5.1.3565 Device revision: 7

\[MPM.Magnesium-0.CPLD\] \[DEBUG\] Initializing CPLD...

\[MPM.Magnesium-0.CPLD\] \[DEBUG\] CPLD Signature: 0xCAFE Revision: 5.0 Date code: 0x18010408

\[MPM.PeriphManager\] \[DEBUG\] Initializing dboard 1...

\[MPM.dboardManager\] \[DEBUG\] spidev device node map: {'cpld': '/dev/spidev1.0', 'lmk': '/dev/spidev1.1', 'mykonos': '/dev/spidev1.2', 'phase_dac': '/dev/spidev1.3'}

\[MPM.Magnesium-1\] \[DEBUG\] Loading C++ drivers...

\[MPM.Magnesium-1\] \[DEBUG\] AD9371: ARM version: 5.1.1 Release API version: 1.5.1.3565 Device revision: 4

\[MPM.Magnesium-1.CPLD\] \[DEBUG\] Initializing CPLD...

\[MPM.Magnesium-1.CPLD\] \[DEBUG\] CPLD Signature: 0xCAFE Revision: 5.0 Date code: 0x18010408

\[MPM.PeriphManager\] \[INFO\] Initialized 2 daughterboard(s).

\[MPM.PeriphManager\] \[DEBUG\] Actual FPGA compat number: 8.2

\[MPM.PeriphManager\] \[DEBUG\] Minor compat ahead of expected compat for component 'FPGA'. Expected: 8.1 Actual: 8.2

\[MPM.PeriphManager\] \[DEBUG\] FPGA supports the following features: remote_udp_streaming

\[MPM.PeriphManager\] \[DEBUG\] Setting clock source to \`internal'

\[MPM.PeriphManager\] \[DEBUG\] Reference clock source is: internal

\[MPM.PeriphManager\] \[DEBUG\] Reference clock frequency is: 25.0 MHz

\[MPM.PeriphManager\] \[DEBUG\] Setting time source to \`internal'

\[MPM.PeriphManager.MBRegs\] \[DEBUG\] Setting time source to internal (25 MHz reference)...

\[MPM.PeriphManager\] \[DEBUG\] Updating mboard FPGA type info to HG

\[MPM.PeriphManager\] \[DEBUG\] Found the following GPIO sources: PS,RF0,RF1,RF2,RF3

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0, int0'

\[MPM.PeriphManager\] \[DEBUG\] Device info: {'type': 'n3xx', 'pid': '16962', 'serial': '3177E63', 'rev': '6', 'eeprom_version': '2', 'mpm_sw_version': '4.6.0.0-g50fa3baa', 'fs_version': '20231113194400', 'mender_artifact': 'v4.6.0.0_n3xx', 'dboard_0_pid': '336', 'dboard_0_serial': b'319803C', 'dboard_1_pid': '336', 'dboard_1_serial': b'317532F', 'product': 'n310'}

\[MPM.PeriphManager\] \[INFO\] init() called with device args \`clock_source=internal,time_source=internal'.

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0, int0'

\[MPM.misc-enet-regs0\] \[DEBUG\] Setting my own IP address to \`192.168.10.2'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting my own IP address to \`169.254.0.1'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal MAC address to \`00:01:02:03:04:05'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal IP address to \`169.254.0.2'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal Mode

\[MPM.PeriphManager.XportAdapterMgr@sfp0\] \[DEBUG\] Transport adapter compat number: 1.0 Capabilities: rx_hdr_removal, rx_routing Node instance: 0

\[MPM.PeriphManager\] \[DEBUG\] Loaded transport adapter managers for the following interfaces: sfp0

\[MPM.PeriphManager\] \[DEBUG\] Initializing dboards in parallel...

\[MPM.Magnesium-0\] \[DEBUG\] init() called with args \`clock_source=internal,time_source=internal'

\[MPM.Magnesium-0\] \[DEBUG\] Updating master clock rate to 125.00 MHz!

\[MPM.Magnesium-1\] \[DEBUG\] init() called with args \`clock_source=internal,time_source=internal'

\[MPM.Magnesium-1\] \[DEBUG\] Updating master clock rate to 125.00 MHz!

\[MPM.Magnesium-0.init\] \[DEBUG\] Reset Dboard Clocking and JESD204B interfaces...

\[MPM.Magnesium-0.init.LMK04828\] \[DEBUG\] Using reference clock frequency: 25.0 MHz

\[MPM.Magnesium-0.init.LMK04828\] \[DEBUG\] Using master clock frequency: 125.0 MHz

\[MPM.Magnesium-1.init\] \[DEBUG\] Reset Dboard Clocking and JESD204B interfaces...

\[MPM.Magnesium-1.init.LMK04828\] \[DEBUG\] Using reference clock frequency: 25.0 MHz

\[MPM.Magnesium-1.init.LMK04828\] \[DEBUG\] Using master clock frequency: 125.0 MHz

\[MPM.Magnesium-0.init.LMK04828\] \[DEBUG\] Clocks Initialized and PLLs Locked!

\[MPM.Sync-0\] \[DEBUG\] Starting clock synchronization...

\[MPM.Sync-0\] \[DEBUG\] Configuring the TDC...

\[MPM.Magnesium-1.init.LMK04828\] \[DEBUG\] Clocks Initialized and PLLs Locked!

\[MPM.Sync-1\] \[DEBUG\] Starting clock synchronization...

\[MPM.Sync-1\] \[DEBUG\] Configuring the TDC...

\[MPM.Magnesium-0.init\] \[DEBUG\] Residual synchronization error: 69.9 ps.

\[MPM.Magnesium-0.init\] \[DEBUG\] Sample Clock Synchronization Complete!

\[MPM.Magnesium-0.init\] \[DEBUG\] Sample Clocks and Phase DAC Configured Successfully!

\[MPM.Magnesium-1.init\] \[DEBUG\] Residual synchronization error: 70.1 ps.

\[MPM.Magnesium-1.init\] \[DEBUG\] Sample Clock Synchronization Complete!

\[MPM.Magnesium-1.init\] \[DEBUG\] Sample Clocks and Phase DAC Configured Successfully!

\[MPM.NIJESD204bCore-1\] \[DEBUG\] Disabling the eye scan circuitry in the PMA for the GTXs...

\[MPM.Magnesium-1.CPLD\] \[DEBUG\] Resetting AD9371!

\[MPM.Magnesium-1.init\] \[DEBUG\] Setting up LO source..

\[MPM.Magnesium-1.init\] \[DEBUG\] RX LO source is set at internal

\[MPM.Magnesium-1.init\] \[DEBUG\] TX LO source is set at internal

\[MPM.Magnesium-1.init\] \[DEBUG\] args\[init_cals\]=0x4DFF

\[MPM.Magnesium-1.init\] \[DEBUG\] args\[tracking_cals\]=0xC3

\[MPM.Magnesium-1.init\] \[DEBUG\] JESD204B Link Initialization & Training Complete

\[MPM.PeriphManager\] \[WARNING\] Failed to initialize device on boot: RuntimeError: ARM Mailbox Busy. Command not executed in MYKONOS_sendArmCommand()

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0'

\[MPM.RPCServer\] \[DEBUG\] Registered 66 motherboard methods, 130 daughterboard methods.

\[MPM.RPCServer\] \[INFO\] RPC server ready!

\[MPM.discovery\] \[DEBUG\] Got poked by: 192.168.10.4

\[MPM.discovery\] \[DEBUG\] Sending discovery response to 192.168.10.4 port: 53129

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0'

\[MPM.discovery\] \[DEBUG\] Got poked by: 192.168.10.4

\[MPM.discovery\] \[DEBUG\] Received echo request from 192.168.10.4

Traceback (most recent call last):

  File "src/gevent/greenlet.py", line 766, in gevent._greenlet.Greenlet.run

  File "/usr/lib/python3.7/site-packages/gevent/baseserver.py", line 26, in _handle_and_close_when_done

    return handle(\*args_tuple)

  File "mprpc/server.pyx", line 71, in mprpc.server.RPCServer.__call__

  File "mprpc/server.pyx", line 87, in mprpc.server.RPCServer._run

  File "mprpc/server.pyx", line 155, in mprpc.server._RPCConnection.recv

  File "/usr/lib/python3.7/site-packages/gevent/_socket3.py", line 378, in recv

    return _socket.socket.recv(self._sock, \*args)

ConnectionResetError: \[Errno 104\] Connection reset by peer

2023-11-13T20:08:34Z <Greenlet at 0xb5243c90: _handle_and_close_when_done(<usrp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, <bound method StreamServer.do_close of <StreamServ, (<gevent._socket3.socket \[closed\]  object, fd=-1, )> failed with ConnectionResetError

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0'

Traceback (most recent call last):

  File "src/gevent/greenlet.py", line 766, in gevent._greenlet.Greenlet.run

  File "/usr/lib/python3.7/site-packages/gevent/baseserver.py", line 26, in _handle_and_close_when_done

    return handle(\*args_tuple)

  File "mprpc/server.pyx", line 71, in mprpc.server.RPCServer.__call__

  File "mprpc/server.pyx", line 87, in mprpc.server.RPCServer._run

  File "mprpc/server.pyx", line 155, in mprpc.server._RPCConnection.recv

  File "/usr/lib/python3.7/site-packages/gevent/_socket3.py", line 378, in recv

    return _socket.socket.recv(self._sock, \*args)

ConnectionResetError: \[Errno 104\] Connection reset by peer

2023-11-13T20:08:34Z <Greenlet at 0xb5243c90: _handle_and_close_when_done(<usrp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, <bound method StreamServer.do_close of <StreamServ, (<gevent._socket3.socket \[closed\]  object, fd=-1, )> failed with ConnectionResetError

\[MPM.RPCServer\] \[DEBUG\] Claiming from: 192.168.10.4, Session ID: UHD

\[MPM.RPCServer\] \[DEBUG\] giving token: b'h0dtPzaeXyENbMd9' to host: 192.168.10.4

\[MPM.RPCServer\] \[DEBUG\] reclaimed from: 192.168.10.4

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0'

\[MPM.PeriphManager\] \[DEBUG\] Setting device ID to \`1'

\[MPM.PeriphManager\] \[INFO\] init() called with device args \`fpga=HG,mgmt_addr=192.168.10.2,name=ni-n3xx-3177E63,product=n310,clock_source=internal,time_source=internal'.

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0, int0'

\[MPM.misc-enet-regs0\] \[DEBUG\] Setting my own IP address to \`192.168.10.2'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting my own IP address to \`169.254.0.1'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal MAC address to \`00:01:02:03:04:05'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal IP address to \`169.254.0.2'

\[MPM.misc-enet-int-regs\] \[DEBUG\] Setting internal Mode

\[MPM.PeriphManager.XportAdapterMgr@sfp0\] \[DEBUG\] Transport adapter compat number: 1.0 Capabilities: rx_hdr_removal, rx_routing Node instance: 0

\[MPM.PeriphManager\] \[DEBUG\] Loaded transport adapter managers for the following interfaces: sfp0

\[MPM.PeriphManager\] \[DEBUG\] Initializing dboards in parallel...

\[MPM.Magnesium-0\] \[DEBUG\] init() called with args \`fpga=HG,mgmt_addr=192.168.10.2,name=ni-n3xx-3177E63,product=n310,clock_source=internal,time_source=internal'

\[MPM.Magnesium-0\] \[DEBUG\] Attempting fast re-init with the following settings: master_clock_rate=125.0 MHz ref_clk_freq=25000000.0

\[MPM.Magnesium-1\] \[DEBUG\] init() called with args \`fpga=HG,mgmt_addr=192.168.10.2,name=ni-n3xx-3177E63,product=n310,clock_source=internal,time_source=internal'

\[MPM.Magnesium-1\] \[DEBUG\] Attempting fast re-init with the following settings: master_clock_rate=125.0 MHz ref_clk_freq=25000000.0

\[MPM.Magnesium-1.init\] \[DEBUG\] Running fast re-init with the following settings:

\[MPM.Magnesium-1.init\] \[DEBUG\] rx_lo_source=internal

\[MPM.Magnesium-1.init\] \[DEBUG\] tx_lo_source=internal

\[MPM.Magnesium-1.init\] \[DEBUG\] init_cals=DEFAULT

\[MPM.Magnesium-1.init\] \[DEBUG\] tracking_cals=DEFAULT

\[MPM.Magnesium-1.init\] \[DEBUG\] init_cals_timeout=60000

\[MPM.RPCServer\] \[ERROR\] init() failed with error: 'NoneType' object has no attribute 'get'

\[MPM.RPCServer\] \[WARNING\] A timeout event occured!

\[MPM.RPCServer\] \[DEBUG\] Deinitializing device and releasing claim on session \`UHD (192.168.10.4)'

\[MPM.Magnesium-0\] \[DEBUG\] deinit() called, but not implemented.

\[MPM.Magnesium-1\] \[DEBUG\] deinit() called, but not implemented.

\[MPM.RPCServer\] \[WARNING\] Attempt to read logs without valid claim from 192.168.10.4

Traceback (most recent call last):

  File "src/gevent/greenlet.py", line 766, in gevent._greenlet.Greenlet.run

  File "/usr/lib/python3.7/site-packages/gevent/baseserver.py", line 26, in _handle_and_close_when_done

    return handle(\*args_tuple)

  File "mprpc/server.pyx", line 71, in mprpc.server.RPCServer.__call__

  File "mprpc/server.pyx", line 87, in mprpc.server.RPCServer._run

  File "mprpc/server.pyx", line 155, in mprpc.server._RPCConnection.recv

  File "/usr/lib/python3.7/site-packages/gevent/_socket3.py", line 378, in recv

    return _socket.socket.recv(self._sock, \*args)

ConnectionResetError: \[Errno 104\] Connection reset by peer

2023-11-13T20:08:58Z <Greenlet at 0xb5243c90: _handle_and_close_when_done(<usrp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, <bound method StreamServer.do_close of <StreamServ, (<gevent._socket3.socket \[closed\]  object, fd=-1, )> failed with ConnectionResetError

Traceback (most recent call last):

  File "src/gevent/greenlet.py", line 766, in gevent._greenlet.Greenlet.run

  File "/usr/lib/python3.7/site-packages/gevent/baseserver.py", line 26, in _handle_and_close_when_done

    return handle(\*args_tuple)

  File "mprpc/server.pyx", line 71, in mprpc.server.RPCServer.__call__

  File "mprpc/server.pyx", line 87, in mprpc.server.RPCServer._run

  File "mprpc/server.pyx", line 155, in mprpc.server._RPCConnection.recv

  File "/usr/lib/python3.7/site-packages/gevent/_socket3.py", line 378, in recv

    return _socket.socket.recv(self._sock, \*args)

ConnectionResetError: \[Errno 104\] Connection reset by peer

2023-11-13T20:08:58Z <Greenlet at 0xb5243ae0: _handle_and_close_when_done(<usrp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, <bound method StreamServer.do_close of <StreamServ, (<gevent._socket3.socket \[closed\]  object, fd=-1, )> failed with ConnectionResetError

**This is what showed up on host computer after running uhd_usrp_probe:**

C:\\Program Files\\UHD\\bin>uhd_usrp_probe

\[INFO\] \[UHD\] Win32; Microsoft Visual C++ version 14.1; Boost_107800; UHD_4.6.0.0-release

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,name=ni-n3xx-3177E63,fpga=HG,claimed=False,addr=192.168.10.2

\[ERROR\] \[RPC\] 'NoneType' object has no attribute 'get'

\[ERROR\] \[UHD\] An unexpected exception was caught in a task loop.The task loop will now exit, things may not work.rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log_buf'

\[ERROR\] \[UHD\] Exception caught in safe-call.

  in uhd::mpmd::mpmd_mboard_impl::\~mpmd_mboard_impl

  at C:\\__w\\380\\s\\host\\lib\\usrp\\mpmd\\mpmd_mboard_impl.cpp:325

dump_logs(); _claimer_task.reset(); if (! rpc->request_with_token<bool>("unclaim")) { uhd::_log::log(uhd::log::warning, "C:\\\\__w\\\\380\\\\s\\\\host\\\\lib\\\\usrp\\\\mpmd\\\\mpmd_mboard_impl.cpp", 325, "MPMD", std::this_thread::get_id()) << "Failure to ack unclaim!";; } -> rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log_buf'

Error: RuntimeError: Error during RPC call to \`init'. Error message: 'NoneType' object has no attribute 'get'

--b1_4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello Martin, </p><p>I am currently using two command prompt windows for=
 debug information<br><br>This is the first command prompt window where I l=
ogged into the n310 and ran both systemctl stop usrp-hwd and usrp_hwd.py -v=
 commands and after running the uhd_usrp_probe command on the host computer=
: </p><p><br>C:\Windows\System32&gt;ssh root@ni-n3xx-3177E63</p><p>root@ni-=
n3xx-3177E63:~# systemctl stop usrp-hwd</p><p>root@ni-n3xx-3177E63:~# usrp_=
hwd.py -v</p><p>[MPM.main] [INFO] Launching USRP/MPM, version: 4.6.0.0-g50f=
a3baa</p><p>[MPM.main] [INFO] Spawning RPC process...</p><p>[MPM.main] [DEB=
UG] RPC process has PID: 354</p><p>[MPM.main] [INFO] Spawning discovery pro=
cess...</p><p>[MPM.main] [DEBUG] Discovery process has PID: 355</p><p>[MPM.=
main] [INFO] Processes launched. Registering signal handlers.</p><p>[MPM.Pe=
riphManager] [INFO] Device serial number: 3177E63</p><p>[MPM.PeriphManager]=
 [DEBUG] Reading EEPROM info for dboard 0...</p><p>[MPM.PeriphManager] [DEB=
UG] Found dboard PID in EEPROM: 0x0150</p><p>[MPM.PeriphManager] [DEBUG] Re=
ading EEPROM info for dboard 1...</p><p>[MPM.PeriphManager] [DEBUG] Found d=
board PID in EEPROM: 0x0150</p><p>[MPM.PeriphManager] [DEBUG] Motherboard r=
equests device tree overlays: ['n310']</p><p>[MPM.DTO] [DEBUG] Overlay `n31=
0' was already applied, not applying again.</p><p>[MPM.PeriphManager] [DEBU=
G] Using default args: {}</p><p>[MPM.PeriphManager] [DEBUG] Initializing db=
oard 0...</p><p>[MPM.dboardManager] [DEBUG] spidev device node map: {'cpld'=
: '/dev/spidev0.0', 'lmk': '/dev/spidev0.1', 'mykonos': '/dev/spidev0.2', '=
phase_dac': '/dev/spidev0.3'}</p><p>[MPM.Magnesium-0] [DEBUG] Loading C++ d=
rivers...</p><p>[MPM.Magnesium-0] [DEBUG] AD9371: ARM version: 184.72.95 Re=
lease API version: 1.5.1.3565 Device revision: 7</p><p>[MPM.Magnesium-0.CPL=
D] [DEBUG] Initializing CPLD...</p><p>[MPM.Magnesium-0.CPLD] [DEBUG] CPLD S=
ignature: 0xCAFE Revision: 5.0 Date code: 0x18010408</p><p>[MPM.PeriphManag=
er] [DEBUG] Initializing dboard 1...</p><p>[MPM.dboardManager] [DEBUG] spid=
ev device node map: {'cpld': '/dev/spidev1.0', 'lmk': '/dev/spidev1.1', 'my=
konos': '/dev/spidev1.2', 'phase_dac': '/dev/spidev1.3'}</p><p>[MPM.Magnesi=
um-1] [DEBUG] Loading C++ drivers...</p><p>[MPM.Magnesium-1] [DEBUG] AD9371=
: ARM version: 5.1.1 Release API version: 1.5.1.3565 Device revision: 4</p>=
<p>[MPM.Magnesium-1.CPLD] [DEBUG] Initializing CPLD...</p><p>[MPM.Magnesium=
-1.CPLD] [DEBUG] CPLD Signature: 0xCAFE Revision: 5.0 Date code: 0x18010408=
</p><p>[MPM.PeriphManager] [INFO] Initialized 2 daughterboard(s).</p><p>[MP=
M.PeriphManager] [DEBUG] Actual FPGA compat number: 8.2</p><p>[MPM.PeriphMa=
nager] [DEBUG] Minor compat ahead of expected compat for component 'FPGA'. =
Expected: 8.1 Actual: 8.2</p><p>[MPM.PeriphManager] [DEBUG] FPGA supports t=
he following features: remote_udp_streaming</p><p>[MPM.PeriphManager] [DEBU=
G] Setting clock source to `internal'</p><p>[MPM.PeriphManager] [DEBUG] Ref=
erence clock source is: internal</p><p>[MPM.PeriphManager] [DEBUG] Referenc=
e clock frequency is: 25.0 MHz</p><p>[MPM.PeriphManager] [DEBUG] Setting ti=
me source to `internal'</p><p>[MPM.PeriphManager.MBRegs] [DEBUG] Setting ti=
me source to internal (25 MHz reference)...</p><p>[MPM.PeriphManager] [DEBU=
G] Updating mboard FPGA type info to HG</p><p>[MPM.PeriphManager] [DEBUG] F=
ound the following GPIO sources: PS,RF0,RF1,RF2,RF3</p><p>[MPM.PeriphManage=
r.UDP.UDP] [DEBUG] Found CHDR interfaces: `sfp0, int0'</p><p>[MPM.PeriphMan=
ager] [DEBUG] Device info: {'type': 'n3xx', 'pid': '16962', 'serial': '3177=
E63', 'rev': '6', 'eeprom_version': '2', 'mpm_sw_version': '4.6.0.0-g50fa3b=
aa', 'fs_version': '20231113194400', 'mender_artifact': 'v4.6.0.0_n3xx', 'd=
board_0_pid': '336', 'dboard_0_serial': b'319803C', 'dboard_1_pid': '336', =
'dboard_1_serial': b'317532F', 'product': 'n310'}</p><p>[MPM.PeriphManager]=
 [INFO] init() called with device args `clock_source=3Dinternal,time_source=
=3Dinternal'.</p><p>[MPM.PeriphManager.UDP.UDP] [DEBUG] Found CHDR interfac=
es: `sfp0, int0'</p><p>[MPM.misc-enet-regs0] [DEBUG] Setting my own IP addr=
ess to `192.168.10.2'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Setting my own=
 IP address to `169.254.0.1'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Setting=
 internal MAC address to `00:01:02:03:04:05'</p><p>[MPM.misc-enet-int-regs]=
 [DEBUG] Setting internal IP address to `169.254.0.2'</p><p>[MPM.misc-enet-=
int-regs] [DEBUG] Setting internal Mode</p><p>[MPM.PeriphManager.XportAdapt=
erMgr@sfp0] [DEBUG] Transport adapter compat number: 1.0 Capabilities: rx_h=
dr_removal, rx_routing Node instance: 0</p><p>[MPM.PeriphManager] [DEBUG] L=
oaded transport adapter managers for the following interfaces: sfp0</p><p>[=
MPM.PeriphManager] [DEBUG] Initializing dboards in parallel...</p><p>[MPM.M=
agnesium-0] [DEBUG] init() called with args `clock_source=3Dinternal,time_s=
ource=3Dinternal'</p><p>[MPM.Magnesium-0] [DEBUG] Updating master clock rat=
e to 125.00 MHz!</p><p>[MPM.Magnesium-1] [DEBUG] init() called with args `c=
lock_source=3Dinternal,time_source=3Dinternal'</p><p>[MPM.Magnesium-1] [DEB=
UG] Updating master clock rate to 125.00 MHz!</p><p>[MPM.Magnesium-0.init] =
[DEBUG] Reset Dboard Clocking and JESD204B interfaces...</p><p>[MPM.Magnesi=
um-0.init.LMK04828] [DEBUG] Using reference clock frequency: 25.0 MHz</p><p=
>[MPM.Magnesium-0.init.LMK04828] [DEBUG] Using master clock frequency: 125.=
0 MHz</p><p>[MPM.Magnesium-1.init] [DEBUG] Reset Dboard Clocking and JESD20=
4B interfaces...</p><p>[MPM.Magnesium-1.init.LMK04828] [DEBUG] Using refere=
nce clock frequency: 25.0 MHz</p><p>[MPM.Magnesium-1.init.LMK04828] [DEBUG]=
 Using master clock frequency: 125.0 MHz</p><p>[MPM.Magnesium-0.init.LMK048=
28] [DEBUG] Clocks Initialized and PLLs Locked!</p><p>[MPM.Sync-0] [DEBUG] =
Starting clock synchronization...</p><p>[MPM.Sync-0] [DEBUG] Configuring th=
e TDC...</p><p>[MPM.Magnesium-1.init.LMK04828] [DEBUG] Clocks Initialized a=
nd PLLs Locked!</p><p>[MPM.Sync-1] [DEBUG] Starting clock synchronization..=
.</p><p>[MPM.Sync-1] [DEBUG] Configuring the TDC...</p><p>[MPM.Magnesium-0.=
init] [DEBUG] Residual synchronization error: 69.9 ps.</p><p>[MPM.Magnesium=
-0.init] [DEBUG] Sample Clock Synchronization Complete!</p><p>[MPM.Magnesiu=
m-0.init] [DEBUG] Sample Clocks and Phase DAC Configured Successfully!</p><=
p>[MPM.Magnesium-1.init] [DEBUG] Residual synchronization error: 70.1 ps.</=
p><p>[MPM.Magnesium-1.init] [DEBUG] Sample Clock Synchronization Complete!<=
/p><p>[MPM.Magnesium-1.init] [DEBUG] Sample Clocks and Phase DAC Configured=
 Successfully!</p><p>[MPM.NIJESD204bCore-1] [DEBUG] Disabling the eye scan =
circuitry in the PMA for the GTXs...</p><p>[MPM.Magnesium-1.CPLD] [DEBUG] R=
esetting AD9371!</p><p>[MPM.Magnesium-1.init] [DEBUG] Setting up LO source.=
.</p><p>[MPM.Magnesium-1.init] [DEBUG] RX LO source is set at internal</p><=
p>[MPM.Magnesium-1.init] [DEBUG] TX LO source is set at internal</p><p>[MPM=
.Magnesium-1.init] [DEBUG] args[init_cals]=3D0x4DFF</p><p>[MPM.Magnesium-1.=
init] [DEBUG] args[tracking_cals]=3D0xC3</p><p>[MPM.Magnesium-1.init] [DEBU=
G] JESD204B Link Initialization &amp; Training Complete</p><p>[MPM.PeriphMa=
nager] [WARNING] Failed to initialize device on boot: RuntimeError: ARM Mai=
lbox Busy. Command not executed in MYKONOS_sendArmCommand()</p><p>[MPM.Peri=
phManager.UDP.UDP] [DEBUG] Found CHDR interfaces: `sfp0'</p><p>[MPM.RPCServ=
er] [DEBUG] Registered 66 motherboard methods, 130 daughterboard methods.</=
p><p>[MPM.RPCServer] [INFO] RPC server ready!</p><p>[MPM.discovery] [DEBUG]=
 Got poked by: 192.168.10.4</p><p>[MPM.discovery] [DEBUG] Sending discovery=
 response to 192.168.10.4 port: 53129</p><p>[MPM.PeriphManager.UDP.UDP] [DE=
BUG] Found CHDR interfaces: `sfp0'</p><p>[MPM.discovery] [DEBUG] Got poked =
by: 192.168.10.4</p><p>[MPM.discovery] [DEBUG] Received echo request from 1=
92.168.10.4</p><p>Traceback (most recent call last):</p><p>  File "src/geve=
nt/greenlet.py", line 766, in gevent._greenlet.Greenlet.run</p><p>  File "/=
usr/lib/python3.7/site-packages/gevent/baseserver.py", line 26, in _handle_=
and_close_when_done</p><p>    return handle(*args_tuple)</p><p>  File "mprp=
c/server.pyx", line 71, in mprpc.server.RPCServer.__call__</p><p>  File "mp=
rpc/server.pyx", line 87, in mprpc.server.RPCServer._run</p><p>  File "mprp=
c/server.pyx", line 155, in mprpc.server._RPCConnection.recv</p><p>  File "=
/usr/lib/python3.7/site-packages/gevent/_socket3.py", line 378, in recv</p>=
<p>    return _socket.socket.recv(self._sock, *args)</p><p>ConnectionResetE=
rror: [Errno 104] Connection reset by peer</p><p>2023-11-13T20:08:34Z &lt;G=
reenlet at 0xb5243c90: _handle_and_close_when_done(&lt;usrp_mpm.rpc_server.=
MPMServer object at 0xb5c3dbb, &lt;bound method StreamServer.do_close of &l=
t;StreamServ, (&lt;gevent._socket3.socket [closed]  object, fd=3D-1, )&gt; =
failed with ConnectionResetError</p><p>[MPM.PeriphManager.UDP.UDP] [DEBUG] =
Found CHDR interfaces: `sfp0'</p><p>Traceback (most recent call last):</p><=
p>  File "src/gevent/greenlet.py", line 766, in gevent._greenlet.Greenlet.r=
un</p><p>  File "/usr/lib/python3.7/site-packages/gevent/baseserver.py", li=
ne 26, in _handle_and_close_when_done</p><p>    return handle(*args_tuple)<=
/p><p>  File "mprpc/server.pyx", line 71, in mprpc.server.RPCServer.__call_=
_</p><p>  File "mprpc/server.pyx", line 87, in mprpc.server.RPCServer._run<=
/p><p>  File "mprpc/server.pyx", line 155, in mprpc.server._RPCConnection.r=
ecv</p><p>  File "/usr/lib/python3.7/site-packages/gevent/_socket3.py", lin=
e 378, in recv</p><p>    return _socket.socket.recv(self._sock, *args)</p><=
p>ConnectionResetError: [Errno 104] Connection reset by peer</p><p>2023-11-=
13T20:08:34Z &lt;Greenlet at 0xb5243c90: _handle_and_close_when_done(&lt;us=
rp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, &lt;bound method StreamSer=
ver.do_close of &lt;StreamServ, (&lt;gevent._socket3.socket [closed]  objec=
t, fd=3D-1, )&gt; failed with ConnectionResetError</p><p>[MPM.RPCServer] [D=
EBUG] Claiming from: 192.168.10.4, Session ID: UHD</p><p>[MPM.RPCServer] [D=
EBUG] giving token: b'h0dtPzaeXyENbMd9' to host: 192.168.10.4</p><p>[MPM.RP=
CServer] [DEBUG] reclaimed from: 192.168.10.4</p><p>[MPM.PeriphManager.UDP.=
UDP] [DEBUG] Found CHDR interfaces: `sfp0'</p><p>[MPM.PeriphManager] [DEBUG=
] Setting device ID to `1'</p><p>[MPM.PeriphManager] [INFO] init() called w=
ith device args `fpga=3DHG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3177E63,=
product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'.</p><p>[MPM.=
PeriphManager.UDP.UDP] [DEBUG] Found CHDR interfaces: `sfp0, int0'</p><p>[M=
PM.misc-enet-regs0] [DEBUG] Setting my own IP address to `192.168.10.2'</p>=
<p>[MPM.misc-enet-int-regs] [DEBUG] Setting my own IP address to `169.254.0=
.1'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Setting internal MAC address to =
`00:01:02:03:04:05'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Setting internal=
 IP address to `169.254.0.2'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Setting=
 internal Mode</p><p>[MPM.PeriphManager.XportAdapterMgr@sfp0] [DEBUG] Trans=
port adapter compat number: 1.0 Capabilities: rx_hdr_removal, rx_routing No=
de instance: 0</p><p>[MPM.PeriphManager] [DEBUG] Loaded transport adapter m=
anagers for the following interfaces: sfp0</p><p>[MPM.PeriphManager] [DEBUG=
] Initializing dboards in parallel...</p><p>[MPM.Magnesium-0] [DEBUG] init(=
) called with args `fpga=3DHG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3177E=
63,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'</p><p>[MP=
M.Magnesium-0] [DEBUG] Attempting fast re-init with the following settings:=
 master_clock_rate=3D125.0 MHz ref_clk_freq=3D25000000.0</p><p>[MPM.Magnesi=
um-1] [DEBUG] init() called with args `fpga=3DHG,mgmt_addr=3D192.168.10.2,n=
ame=3Dni-n3xx-3177E63,product=3Dn310,clock_source=3Dinternal,time_source=3D=
internal'</p><p>[MPM.Magnesium-1] [DEBUG] Attempting fast re-init with the =
following settings: master_clock_rate=3D125.0 MHz ref_clk_freq=3D25000000.0=
</p><p>[MPM.Magnesium-1.init] [DEBUG] Running fast re-init with the followi=
ng settings:</p><p>[MPM.Magnesium-1.init] [DEBUG] rx_lo_source=3Dinternal</=
p><p>[MPM.Magnesium-1.init] [DEBUG] tx_lo_source=3Dinternal</p><p>[MPM.Magn=
esium-1.init] [DEBUG] init_cals=3DDEFAULT</p><p>[MPM.Magnesium-1.init] [DEB=
UG] tracking_cals=3DDEFAULT</p><p>[MPM.Magnesium-1.init] [DEBUG] init_cals_=
timeout=3D60000</p><p>[MPM.RPCServer] [ERROR] init() failed with error: 'No=
neType' object has no attribute 'get'</p><p>[MPM.RPCServer] [WARNING] A tim=
eout event occured!</p><p>[MPM.RPCServer] [DEBUG] Deinitializing device and=
 releasing claim on session `UHD (192.168.10.4)'</p><p>[MPM.Magnesium-0] [D=
EBUG] deinit() called, but not implemented.</p><p>[MPM.Magnesium-1] [DEBUG]=
 deinit() called, but not implemented.</p><p>[MPM.RPCServer] [WARNING] Atte=
mpt to read logs without valid claim from 192.168.10.4</p><p>Traceback (mos=
t recent call last):</p><p>  File "src/gevent/greenlet.py", line 766, in ge=
vent._greenlet.Greenlet.run</p><p>  File "/usr/lib/python3.7/site-packages/=
gevent/baseserver.py", line 26, in _handle_and_close_when_done</p><p>    re=
turn handle(*args_tuple)</p><p>  File "mprpc/server.pyx", line 71, in mprpc=
.server.RPCServer.__call__</p><p>  File "mprpc/server.pyx", line 87, in mpr=
pc.server.RPCServer._run</p><p>  File "mprpc/server.pyx", line 155, in mprp=
c.server._RPCConnection.recv</p><p>  File "/usr/lib/python3.7/site-packages=
/gevent/_socket3.py", line 378, in recv</p><p>    return _socket.socket.rec=
v(self._sock, *args)</p><p>ConnectionResetError: [Errno 104] Connection res=
et by peer</p><p>2023-11-13T20:08:58Z &lt;Greenlet at 0xb5243c90: _handle_a=
nd_close_when_done(&lt;usrp_mpm.rpc_server.MPMServer object at 0xb5c3dbb, &=
lt;bound method StreamServer.do_close of &lt;StreamServ, (&lt;gevent._socke=
t3.socket [closed]  object, fd=3D-1, )&gt; failed with ConnectionResetError=
</p><p>Traceback (most recent call last):</p><p>  File "src/gevent/greenlet=
.py", line 766, in gevent._greenlet.Greenlet.run</p><p>  File "/usr/lib/pyt=
hon3.7/site-packages/gevent/baseserver.py", line 26, in _handle_and_close_w=
hen_done</p><p>    return handle(*args_tuple)</p><p>  File "mprpc/server.py=
x", line 71, in mprpc.server.RPCServer.__call__</p><p>  File "mprpc/server.=
pyx", line 87, in mprpc.server.RPCServer._run</p><p>  File "mprpc/server.py=
x", line 155, in mprpc.server._RPCConnection.recv</p><p>  File "/usr/lib/py=
thon3.7/site-packages/gevent/_socket3.py", line 378, in recv</p><p>    retu=
rn _socket.socket.recv(self._sock, *args)</p><p>ConnectionResetError: [Errn=
o 104] Connection reset by peer</p><p>2023-11-13T20:08:58Z &lt;Greenlet at =
0xb5243ae0: _handle_and_close_when_done(&lt;usrp_mpm.rpc_server.MPMServer o=
bject at 0xb5c3dbb, &lt;bound method StreamServer.do_close of &lt;StreamSer=
v, (&lt;gevent._socket3.socket [closed]  object, fd=3D-1, )&gt; failed with=
 ConnectionResetError</p><p><br></p><p><strong>This is what showed up on ho=
st computer after running uhd_usrp_probe:<br></strong><br></p><p>C:\Program=
 Files\UHD\bin&gt;uhd_usrp_probe</p><p>[INFO] [UHD] Win32; Microsoft Visual=
 C++ version 14.1; Boost_107800; UHD_4.6.0.0-release</p><p>[INFO] [MPMD] In=
itializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=
=3Dn3xx,product=3Dn310,serial=3D3177E63,name=3Dni-n3xx-3177E63,fpga=3DHG,cl=
aimed=3DFalse,addr=3D192.168.10.2</p><p>[ERROR] [RPC] 'NoneType' object has=
 no attribute 'get'</p><p>[ERROR] [UHD] An unexpected exception was caught =
in a task loop.The task loop will now exit, things may not work.rpc::timeou=
t: Timeout of 10000ms while calling RPC function 'get_log_buf'</p><p>[ERROR=
] [UHD] Exception caught in safe-call.</p><p>  in uhd::mpmd::mpmd_mboard_im=
pl::~mpmd_mboard_impl</p><p>  at C:\__w\380\s\host\lib\usrp\mpmd\mpmd_mboar=
d_impl.cpp:325</p><p>dump_logs(); _claimer_task.reset(); if (! rpc-&gt;requ=
est_with_token&lt;bool&gt;("unclaim")) { uhd::_log::log(uhd::log::warning, =
"C:\\__w\\380\\s\\host\\lib\\usrp\\mpmd\\mpmd_mboard_impl.cpp", 325, "MPMD"=
, std::this_thread::get_id()) &lt;&lt; "Failure to ack unclaim!";; } -&gt; =
rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log_buf'</=
p><p>Error: RuntimeError: Error during RPC call to `init'. Error message: '=
NoneType' object has no attribute 'get'</p>

--b1_4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg--

--===============5701508332346381432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5701508332346381432==--
