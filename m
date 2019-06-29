Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8CF5A7DB
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2019 02:26:21 +0200 (CEST)
Received: from [::1] (port=35792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hh1C2-0006Zn-Co; Fri, 28 Jun 2019 20:26:14 -0400
Received: from sonic314-46.consmr.mail.bf2.yahoo.com ([74.6.132.220]:46571)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hh1By-0006Ud-U8
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 20:26:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1561767930; bh=Y/Je0az6EaULZG2ZfYm9v9VeWX6oUuLwt2niRF7DcjM=;
 h=Subject:From:To:Date:From:Subject;
 b=KsJ9U8xm01TwD2BNtFaPNJW4hfUnI/SJJVKobz3d3KCpA6ZJb8r6dI5a9lbvPhcrLy/pMvvnzpBekzQuKVP5Sc/xBIvIXMbgjjNGS7dqVba9WSkOliUfPKFtiY96Mzv8Yt2NrOUOH3SEPlDjy0MPEx1eascBEM/WIXXDRAxv6ylzWGrcYaNH+huB8yzX17DY9yKD85a8fM9Ibc4HnBWTYY7NpFMdtnAaKyDaAhHCm9K8+rnU3QfN+CNgqSaEDjdBXuY+TOOmNMgowYfMHZYRJSgycwYVxywAzOUuvRh2XNOdYSKczb0wf4L6Vta+gyQFu70p9Y0tc1dlpBBu5UQ4Lw==
X-YMail-OSG: UrUsGJwVM1nDGes1j74XhWWMioLJXC0SuLZN7Hbe4LlkCPWhkId.5Y0KkJqVN8E
 eOuKp4xgI6JB7CnNSrUsZ6LARsND0l8XslM2JxF89.xH9eW6J3fwJdcXiOmHaBSoJtsPTOFteohe
 lUgXDu.ddkuJ4cpXUUK6dVST.r3bFzcEaRusgMzT3JGiG_fGtqObC9MRQGOt5VcIQC541pPq2RNj
 mWiVtSjL339gsvAc0fSeYTVIq1eipz3_B_qOb0axUH9vUht.nLBKeWTVZjUu0YKtDSi9oz55f18k
 yp9ndzsE6SLwN4FCL9Bl11MRQ45icowFS9z.QZJeypW.LQSztqwF7oYrLm2T5I6.g5fFC1WRhYfR
 ui1H_MP51gQDpeJyiLi7tF8A2HtYnxSP3DFNcr_UtFtM_npCYJ8xT4Tdi_h0nZ6jvZsMx3GXsOYu
 HtQIU08._RwzyuKpbHn_6DSDFgBGSSJPJUGnDtvDTHSfqjM2E7Wj2zR977VVIO_Jvhi9XTkj9vmq
 coKqBmFH_CRoic1Iv8Yy7.SIJquG5r25Lqyv7dupJbFZx2YUCeoeOpJgSNKdCghsM7dmUq6Ccp3e
 kR6JVkENvHKNWw.ax8jg873gXKMfe0lgMMew_3sRV0HYlVvvaeZHFObDJ03SLqCjCkL5GrWGTkbC
 jo22kCMzU4zYgmTKQ04QhLdazBNChctiFICW0vkKstwxdj._vJP9h3x3hYLbiKL9IE_Hs_m7j_Di
 B1dNrjT9tt.0HpDZSOMrZffONnCplc39KfNOQ_iZUlt7X15BIaOyEmHnl0FN57RrqTPFgqoGO5iK
 anPRU1A_8L4gsxU1QWN6sUmm8QJStf56t3i3aAhEoDXQ_vuAyPTQ5g3nees7i5DXtfR7fz49xCpG
 qucd.OudT8HsAjdsn4aG41x4urowNN0ytNbD7cPY.9jMTXW_Ns_tRwsetITUn5CQBI_8_UBuDc07
 qTIRAFLSM_IyQ_YgBwJLcpYGp5dc0pPq.N7QDK1yDzJbk_iEEh_4rVxZKxlOeAUXTuEi4IkgP4fC
 E5ZdsIXw60b1f11Uzz0zv8879rZsuutlFT9VU1f5uglsLGfEmZive_CuKildxFt5iwp.f7lmqr_o
 gg6j1VMeOICk6SBxlpLEwJN6ezk1XrBu9OlbkHI8tF_fKxXzYKM1F0lDYESXPO1ONPzlPxMqcr00
 b_3TvuzddJWXp5NVDjumZltDJIXHo65elaWWgRL5QshNsNGS8zB4Zrpc5_Th0jNBR8SpoJEH1GWh
 zZV8zkXNiV02XXeY6O6u3G0nfGA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.bf2.yahoo.com with HTTP; Sat, 29 Jun 2019 00:25:30 +0000
Received: by smtp408.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 5a0cfb4686a087e488997074c082044a; 
 Sat, 29 Jun 2019 00:23:30 +0000 (UTC)
Message-ID: <a18dce5ac5ba4430cb951cc8d42ddee8828c59e0.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 29 Jun 2019 00:23:18 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 v3.15.0.0 pre-release
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Marcus Leach wrote:
>What happens if you specify an fpga image that doesn't actually
>exist?  
>Does it error out?


It ignores the bad file, even though the args seem to be making it
pretty far into the process. I still can't find where uhd loads the
.bit file.

I'm using the version on the referenced SD image from Ettus's site, not
bit-baking the latest from meta-ettus.

Here's the result for the pre-compiled uhd that was on the SD image at
debug log level 0: The results are similar on the one I compiled from
git.

root@ni-e31x-309C7C2F:~# uhd_usrp_probe --
args="fpga=filethatdoesntexist"
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
UHD_3.15.0.git-0-g6563c537
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 10.1.1.255 49600
[TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
[TRACE] [UDP] Creating udp transport for 10.1.1.255 50000
[TRACE] [UHD] Device hash: 2130689100
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[DEBUG] [MPMD] Claiming mboard 0
[DEBUG] [MPMD] Device args:
`mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=
False,fpga=filethatdoesntexist'. RPC address: 127.0.0.1
[TRACE] [MPMD] Initializing mboard, connecting to RPC server address:
127.0.0.1 mboard args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist number of crossbars: 1
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[TRACE] [MPMD] MPM reports device info:
claimed=True,connection=local,description=E300-Series
Device,eeprom_version=,fpga=,fpga_version=1.0,fpga_version_hash=f52a643
.clean,mpm_version=1.2,name=ni-e31x-
309C7C2F,pid=30674,product=e310_sg1,rev=4,rpc_connection=local,serial=3
09C7C2,type=e3xx
[TRACE] [MPMD] MPM reports dboard info for slot 0:
eeprom_version=n/a,pid=272,rev=3,serial=309991A
[TRACE] [MPMD] Checking MPM compat number. Expected: 1.2 Actual: 1.2
[DEBUG] [MPMD] Initializing mboard 0
[DEBUG] [MPMD] Found 3 motherboard sensors.
[DEBUG] [MPMD] Found 2 updateable motherboard components.
[TRACE] [MPMD] Enumerating RFNoC blocks for xbar 0. Total blocks: 3
Base port: 1 Local address: 2
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:10
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 0
[TRACE] [MPMD] xport info: send_sid==00:00>02:10 recv_sid==02:10>00:00
endianness==LE recv_buff_size==10880 send_buff_size==10880
[DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000003310.
[DEBUG] [RFNOC] Reading XML file
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
0x12AD100000003310
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:11
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 1
[TRACE] [MPMD] xport info: send_sid==00:01>02:11 recv_sid==02:11>00:01
endianness==LE recv_buff_size==10880 send_buff_size==10880
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
0x12AD100000003310
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'E31XRadio' and
block name 'Radio'
[DEBUG] [RFNOC] Reading XML file
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
0x12AD100000003310
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000003310)
[DEBUG] [0/Radio_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [0/Radio_0] Register loopback test passed
[DEBUG] [0/Radio_0] Register loopback test passed
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508
[DEBUG] [0/Radio_0] Setting default spp to 2044
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 2044
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 2044
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:20
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 2
[TRACE] [MPMD] xport info: send_sid==00:02>02:20 recv_sid==02:20>00:02
endianness==LE recv_buff_size==10880 send_buff_size==10880
[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID DDC0000000000000.
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
for NOC ID 0xDDC0000000000000
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:21
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 3
[TRACE] [MPMD] xport info: send_sid==00:03>02:21 recv_sid==02:21>00:03
endianness==LE recv_buff_size==10880 send_buff_size==10880
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
for NOC ID 0xDDC0000000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DDC' and block
name 'DDC'
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
for NOC ID 0xDDC0000000000000
[INFO] [0/DDC_0] Initializing block control (NOC ID:
0xDDC0000000000000)
[DEBUG] [0/DDC_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=filethatdoesntexist,mgmt_addr=127.0.0.1,product=e310_sg1'.
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[DEBUG] [0/DDC_0] Loading DDC with 1 halfbands and max CIC decimation
16
[DEBUG] [DDC] Checking compat number for FPGA component `DDC':
Expecting 2.0, actual: 2.0.
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:30
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist

---note: args=fpga= points to non-existant files, and there are no .bit
files anywhere on the sd card

[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 4
[TRACE] [MPMD] xport info: send_sid==00:04>02:30 recv_sid==02:30>00:04
endianness==LE recv_buff_size==10880 send_buff_size==10880
[DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID D0C0000000000002.
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
for NOC ID 0xD0C0000000000002
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:31
User-defined xport args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
[TRACE] [MPMD] Making (muxed) stream with num 5
[TRACE] [MPMD] xport info: send_sid==00:05>02:31 recv_sid==02:31>00:05
endianness==LE recv_buff_size==10880 send_buff_size==10880
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
for NOC ID 0xD0C0000000000002
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DUC' and block
name 'DUC'
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
for NOC ID 0xD0C0000000000002
[INFO] [0/DUC_0] Initializing block control (NOC ID:
0xD0C0000000000002)
[DEBUG] [0/DUC_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[DEBUG] [0/DUC_0] Loading DUC with 1 halfbands and max CIC
interpolation 8
[DEBUG] [DUC] Checking compat number for FPGA component `DUC':
Expecting 2.0, actual: 2.0.
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[DEBUG] [MPMD] Adding RPC access to block: 0/Radio_0 Block args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse,fpga=filethatdoesntexist
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[DEBUG] [0/Radio_0] Master Clock Rate is: 16 MHz.
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz

[DEBUG] [0/Radio_0] Actual clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz

[DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[INFO] [0/Radio_0] Performing CODEC loopback test... 
[INFO] [0/Radio_0] CODEC loopback test passed
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz

[DEBUG] [0/Radio_0] Actual clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz

[DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[INFO] [0/Radio_0] Performing CODEC loopback test... 
[INFO] [0/Radio_0] CODEC loopback test passed
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz

[DEBUG] [0/Radio_0] Actual clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e31x-309C7C2F
|   |   mpm_version: 3.15.0.git-g6563c537
|   |   pid: 30674
|   |   product: e310_sg1
|   |   rev: 4
|   |   rpc_connection: local
|   |   serial: 309C7C2
|   |   type: e3xx
|   |   MPM Version: 1.2
|   |   FPGA Version: 1.0
|   |   FPGA git hash: f52a643.clean
|   |   RFNoC capable: Yes
|   |   
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal
|   |   Sensors: ref_locked, temp_fpga, temp_mb
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: AD9361 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: AD9361 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |   
|   |   |   * Radio_0
|   |   |   * DDC_0
|   |   |   * DUC_0




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
