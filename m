Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 123BB879FB1
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 00:32:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3929F3851F7
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 19:32:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710286346; bh=KQYA2SQ9F1M+lzugTqxnBoAiYIWnFoU5qpPLjIk6uss=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gA0TNpHXIbt6b9zH08b83SVbFkqNLCR3vot0+UuAUf7bjsLMxYofv72o+2nCAmxE5
	 gDvTMlUBR2v7AY9qZLeLVpBFkRENo7B88M7g/KmB45T0XU6fDlP6DDgHlRjIG7Fzby
	 92aPsYB5rzWaYJsWx0Ll75P4gkjyQZ6csSXFsXlHzPwrfPQvY5SUo9OMZkTP8aY0kQ
	 Joe0ZlSDGQDiQq8qoP7Ippenzgz8S5u+T5w6Slu7zPOwtR5lht3u3lfg7R9LyW43Q/
	 lNdfrbGcNChBUhLZvQ9ozxRu0ruuzeu2ssiDo1rALYP25MeOVMdtrKinZYY41kXBhu
	 Po5/3nTyujsgQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F033C3851F6
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 19:31:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710286312; bh=A/mOAeoA4FuQRR8dipl9TEusSGhq/T7TkUrtl9Ds4h0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=tUpH2sBLDHeYiaX1ihLmf4R7LEynP51H2BN5iMIdAySLpnaTZMzhSypXhzhcRTieb
	 fWh5dKYiL+qVoh/xTFXWqbfuGjhIvVl2MaJRFRC+zZiwDAm4dtXYGlFG1ybMI9uvys
	 xdqqsQqE2Wo4XgN1k3yXh+fdgnivqN8Auqucmj+dqu2cZIUtNcFc8AkEAGLRC78AmQ
	 e2jiKu1HvAeLjeCND6lb2TvuQtYUpRxjcS4hm2dD1ipKBPCB5OTexDCfZgplpSXnup
	 1aHXsWioOwl0V/YD4Vzi1PgSxFkwAD+hqTCBWAk+CZOiA2nLfG7GS5E2CMLapr1+lp
	 4Db6XkLmizx5g==
Date: Tue, 12 Mar 2024 23:31:51 +0000
To: usrp-users@lists.ettus.com
From: brian.diaz.476@my.csun.edu
Message-ID: <LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH0PR04MB831124CD632DB3EF7ECD8542F3272@PH0PR04MB8311.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: IWAITWM2U6TXW4C3NH5BLGUJUHUBL4U5
X-Message-ID-Hash: IWAITWM2U6TXW4C3NH5BLGUJUHUBL4U5
X-MailFrom: brian.diaz.476@my.csun.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 "NoneType" error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWAITWM2U6TXW4C3NH5BLGUJUHUBL4U5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6677378850677383459=="

This is a multi-part message in MIME format.

--===============6677378850677383459==
Content-Type: multipart/alternative;
 boundary="b1_LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0
Content-Type: text/plain; charset=us-ascii

Hello Martin, 

I ran both commands and got this as a result. 

root@ni-n3xx-3177E63:\~# systemctl stop usrp-hwd

root@ni-n3xx-3177E63:\~# usrp_hwd.py -v

\[MPM.main\] \[INFO\] Launching USRP/MPM, version: 4.6.0.0-g50fa3baa

\[MPM.main\] \[INFO\] Spawning RPC process...

\[MPM.main\] \[DEBUG\] RPC process has PID: 571

\[MPM.main\] \[INFO\] Spawning discovery process...

\[MPM.main\] \[DEBUG\] Discovery process has PID: 572

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

\[MPM.Magnesium-1.init\] \[DEBUG\] Residual synchronization error: 56.3 ps.

\[MPM.Magnesium-1.init\] \[DEBUG\] Sample Clock Synchronization Complete!

\[MPM.Magnesium-1.init\] \[DEBUG\] Sample Clocks and Phase DAC Configured Successfully!

\[MPM.NIJESD204bCore-1\] \[DEBUG\] Disabling the eye scan circuitry in the PMA for the GTXs...

\[MPM.Magnesium-1.CPLD\] \[DEBUG\] Resetting AD9371!

\[MPM.Magnesium-1.init\] \[DEBUG\] Setting up LO source..

\[MPM.Magnesium-1.init\] \[DEBUG\] RX LO source is set at internal

\[MPM.Magnesium-1.init\] \[DEBUG\] TX LO source is set at internal

\[MPM.Magnesium-0.init\] \[DEBUG\] Residual synchronization error: 54.8 ps.

\[MPM.Magnesium-0.init\] \[DEBUG\] Sample Clock Synchronization Complete!

\[MPM.Magnesium-0.init\] \[DEBUG\] Sample Clocks and Phase DAC Configured Successfully!

\[MPM.Magnesium-1.init\] \[DEBUG\] args\[init_cals\]=0x4DFF

\[MPM.Magnesium-1.init\] \[DEBUG\] args\[tracking_cals\]=0xC3

\[MPM.Magnesium-1.init\] \[DEBUG\] JESD204B Link Initialization & Training Complete

\[MPM.PeriphManager\] \[WARNING\] Failed to initialize device on boot: RuntimeError: ARM Mailbox Busy. Command not executed in MYKONOS_sendArmCommand()

\[MPM.PeriphManager.UDP.UDP\] \[DEBUG\] Found CHDR interfaces: \`sfp0'

\[MPM.RPCServer\] \[DEBUG\] Registered 66 motherboard methods, 130 daughterboard methods.

\[MPM.RPCServer\] \[INFO\] RPC server ready!

--b1_LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello Martin, </p><p>I ran both commands and got this as a result. </p><=
p>root@ni-n3xx-3177E63:~# systemctl stop usrp-hwd</p><p>root@ni-n3xx-3177E6=
3:~# usrp_hwd.py -v</p><p>[MPM.main] [INFO] Launching USRP/MPM, version: 4.=
6.0.0-g50fa3baa</p><p>[MPM.main] [INFO] Spawning RPC process...</p><p>[MPM.=
main] [DEBUG] RPC process has PID: 571</p><p>[MPM.main] [INFO] Spawning dis=
covery process...</p><p>[MPM.main] [DEBUG] Discovery process has PID: 572</=
p><p>[MPM.main] [INFO] Processes launched. Registering signal handlers.</p>=
<p>[MPM.PeriphManager] [INFO] Device serial number: 3177E63</p><p>[MPM.Peri=
phManager] [DEBUG] Reading EEPROM info for dboard 0...</p><p>[MPM.PeriphMan=
ager] [DEBUG] Found dboard PID in EEPROM: 0x0150</p><p>[MPM.PeriphManager] =
[DEBUG] Reading EEPROM info for dboard 1...</p><p>[MPM.PeriphManager] [DEBU=
G] Found dboard PID in EEPROM: 0x0150</p><p>[MPM.PeriphManager] [DEBUG] Mot=
herboard requests device tree overlays: ['n310']</p><p>[MPM.DTO] [DEBUG] Ov=
erlay `n310' was already applied, not applying again.</p><p>[MPM.PeriphMana=
ger] [DEBUG] Using default args: {}</p><p>[MPM.PeriphManager] [DEBUG] Initi=
alizing dboard 0...</p><p>[MPM.dboardManager] [DEBUG] spidev device node ma=
p: {'cpld': '/dev/spidev0.0', 'lmk': '/dev/spidev0.1', 'mykonos': '/dev/spi=
dev0.2', 'phase_dac': '/dev/spidev0.3'}</p><p>[MPM.Magnesium-0] [DEBUG] Loa=
ding C++ drivers...</p><p>[MPM.Magnesium-0] [DEBUG] AD9371: ARM version: 18=
4.72.95 Release API version: 1.5.1.3565 Device revision: 7</p><p>[MPM.Magne=
sium-0.CPLD] [DEBUG] Initializing CPLD...</p><p>[MPM.Magnesium-0.CPLD] [DEB=
UG] CPLD Signature: 0xCAFE Revision: 5.0 Date code: 0x18010408</p><p>[MPM.P=
eriphManager] [DEBUG] Initializing dboard 1...</p><p>[MPM.dboardManager] [D=
EBUG] spidev device node map: {'cpld': '/dev/spidev1.0', 'lmk': '/dev/spide=
v1.1', 'mykonos': '/dev/spidev1.2', 'phase_dac': '/dev/spidev1.3'}</p><p>[M=
PM.Magnesium-1] [DEBUG] Loading C++ drivers...</p><p>[MPM.Magnesium-1] [DEB=
UG] AD9371: ARM version: 5.1.1 Release API version: 1.5.1.3565 Device revis=
ion: 4</p><p>[MPM.Magnesium-1.CPLD] [DEBUG] Initializing CPLD...</p><p>[MPM=
.Magnesium-1.CPLD] [DEBUG] CPLD Signature: 0xCAFE Revision: 5.0 Date code: =
0x18010408</p><p>[MPM.PeriphManager] [INFO] Initialized 2 daughterboard(s).=
</p><p>[MPM.PeriphManager] [DEBUG] Actual FPGA compat number: 8.2</p><p>[MP=
M.PeriphManager] [DEBUG] Minor compat ahead of expected compat for componen=
t 'FPGA'. Expected: 8.1 Actual: 8.2</p><p>[MPM.PeriphManager] [DEBUG] FPGA =
supports the following features: remote_udp_streaming</p><p>[MPM.PeriphMana=
ger] [DEBUG] Setting clock source to `internal'</p><p>[MPM.PeriphManager] [=
DEBUG] Reference clock source is: internal</p><p>[MPM.PeriphManager] [DEBUG=
] Reference clock frequency is: 25.0 MHz</p><p>[MPM.PeriphManager] [DEBUG] =
Setting time source to `internal'</p><p>[MPM.PeriphManager.MBRegs] [DEBUG] =
Setting time source to internal (25 MHz reference)...</p><p>[MPM.PeriphMana=
ger] [DEBUG] Updating mboard FPGA type info to HG</p><p>[MPM.PeriphManager]=
 [DEBUG] Found the following GPIO sources: PS,RF0,RF1,RF2,RF3</p><p>[MPM.Pe=
riphManager.UDP.UDP] [DEBUG] Found CHDR interfaces: `sfp0, int0'</p><p>[MPM=
.PeriphManager] [DEBUG] Device info: {'type': 'n3xx', 'pid': '16962', 'seri=
al': '3177E63', 'rev': '6', 'eeprom_version': '2', 'mpm_sw_version': '4.6.0=
.0-g50fa3baa', 'fs_version': '20231113194400', 'mender_artifact': 'v4.6.0.0=
_n3xx', 'dboard_0_pid': '336', 'dboard_0_serial': b'319803C', 'dboard_1_pid=
': '336', 'dboard_1_serial': b'317532F', 'product': 'n310'}</p><p>[MPM.Peri=
phManager] [INFO] init() called with device args `clock_source=3Dinternal,t=
ime_source=3Dinternal'.</p><p>[MPM.PeriphManager.UDP.UDP] [DEBUG] Found CHD=
R interfaces: `sfp0, int0'</p><p>[MPM.misc-enet-regs0] [DEBUG] Setting my o=
wn IP address to `192.168.10.2'</p><p>[MPM.misc-enet-int-regs] [DEBUG] Sett=
ing my own IP address to `169.254.0.1'</p><p>[MPM.misc-enet-int-regs] [DEBU=
G] Setting internal MAC address to `00:01:02:03:04:05'</p><p>[MPM.misc-enet=
-int-regs] [DEBUG] Setting internal IP address to `169.254.0.2'</p><p>[MPM.=
misc-enet-int-regs] [DEBUG] Setting internal Mode</p><p>[MPM.PeriphManager.=
XportAdapterMgr@sfp0] [DEBUG] Transport adapter compat number: 1.0 Capabili=
ties: rx_hdr_removal, rx_routing Node instance: 0</p><p>[MPM.PeriphManager]=
 [DEBUG] Loaded transport adapter managers for the following interfaces: sf=
p0</p><p>[MPM.PeriphManager] [DEBUG] Initializing dboards in parallel...</p=
><p>[MPM.Magnesium-0] [DEBUG] init() called with args `clock_source=3Dinter=
nal,time_source=3Dinternal'</p><p>[MPM.Magnesium-0] [DEBUG] Updating master=
 clock rate to 125.00 MHz!</p><p>[MPM.Magnesium-1] [DEBUG] init() called wi=
th args `clock_source=3Dinternal,time_source=3Dinternal'</p><p>[MPM.Magnesi=
um-1] [DEBUG] Updating master clock rate to 125.00 MHz!</p><p>[MPM.Magnesiu=
m-0.init] [DEBUG] Reset Dboard Clocking and JESD204B interfaces...</p><p>[M=
PM.Magnesium-0.init.LMK04828] [DEBUG] Using reference clock frequency: 25.0=
 MHz</p><p>[MPM.Magnesium-0.init.LMK04828] [DEBUG] Using master clock frequ=
ency: 125.0 MHz</p><p>[MPM.Magnesium-1.init] [DEBUG] Reset Dboard Clocking =
and JESD204B interfaces...</p><p>[MPM.Magnesium-1.init.LMK04828] [DEBUG] Us=
ing reference clock frequency: 25.0 MHz</p><p>[MPM.Magnesium-1.init.LMK0482=
8] [DEBUG] Using master clock frequency: 125.0 MHz</p><p>[MPM.Magnesium-0.i=
nit.LMK04828] [DEBUG] Clocks Initialized and PLLs Locked!</p><p>[MPM.Sync-0=
] [DEBUG] Starting clock synchronization...</p><p>[MPM.Sync-0] [DEBUG] Conf=
iguring the TDC...</p><p>[MPM.Magnesium-1.init.LMK04828] [DEBUG] Clocks Ini=
tialized and PLLs Locked!</p><p>[MPM.Sync-1] [DEBUG] Starting clock synchro=
nization...</p><p>[MPM.Sync-1] [DEBUG] Configuring the TDC...</p><p>[MPM.Ma=
gnesium-1.init] [DEBUG] Residual synchronization error: 56.3 ps.</p><p>[MPM=
.Magnesium-1.init] [DEBUG] Sample Clock Synchronization Complete!</p><p>[MP=
M.Magnesium-1.init] [DEBUG] Sample Clocks and Phase DAC Configured Successf=
ully!</p><p>[MPM.NIJESD204bCore-1] [DEBUG] Disabling the eye scan circuitry=
 in the PMA for the GTXs...</p><p>[MPM.Magnesium-1.CPLD] [DEBUG] Resetting =
AD9371!</p><p>[MPM.Magnesium-1.init] [DEBUG] Setting up LO source..</p><p>[=
MPM.Magnesium-1.init] [DEBUG] RX LO source is set at internal</p><p>[MPM.Ma=
gnesium-1.init] [DEBUG] TX LO source is set at internal</p><p>[MPM.Magnesiu=
m-0.init] [DEBUG] Residual synchronization error: 54.8 ps.</p><p>[MPM.Magne=
sium-0.init] [DEBUG] Sample Clock Synchronization Complete!</p><p>[MPM.Magn=
esium-0.init] [DEBUG] Sample Clocks and Phase DAC Configured Successfully!<=
/p><p>[MPM.Magnesium-1.init] [DEBUG] args[init_cals]=3D0x4DFF</p><p>[MPM.Ma=
gnesium-1.init] [DEBUG] args[tracking_cals]=3D0xC3</p><p>[MPM.Magnesium-1.i=
nit] [DEBUG] JESD204B Link Initialization &amp; Training Complete</p><p>[MP=
M.PeriphManager] [WARNING] Failed to initialize device on boot: RuntimeErro=
r: ARM Mailbox Busy. Command not executed in MYKONOS_sendArmCommand()</p><p=
>[MPM.PeriphManager.UDP.UDP] [DEBUG] Found CHDR interfaces: `sfp0'</p><p>[M=
PM.RPCServer] [DEBUG] Registered 66 motherboard methods, 130 daughterboard =
methods.</p><p>[MPM.RPCServer] [INFO] RPC server ready!</p>

--b1_LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0--

--===============6677378850677383459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6677378850677383459==--
