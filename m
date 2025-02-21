Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A38A3F4B8
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 13:52:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09EF7385BC0
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 07:51:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740142319; bh=AmeEUE+CcM0uWn4jtC/F9wHqkwhB1UAaGx94n0sxnzQ=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Pztxn0sUsUdWEmrXdzpV+iG0NCaZhNeKjRQGYPxE6wUJ/X69tMizHahDDIsV8yPg5
	 okHy5Fv/01dkneCLhNIZnEnGZNQFwRsGKX63xcTXK99X9sijuuiOaFqwQTr2qb6Cih
	 cDhGX9i2TzkYdC2vloG8Yvmnu1ICCtmOacti4MT/NmeIT8PKIK8gvKdnkpCXnEpsDk
	 Cp5K8Lw7rEtKI90l9BilVSF9An3weHWwrvQLAQPE/LN2o1cg5H2Ot1svbPMs8wX+i0
	 BzIYZEmCrDQhbFDvnMp7fEh0TS9NhXgkSfMcrRgcReqHPt2biwgLliWeo3/ADpNPzR
	 dPnrX26zlV4mw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 129B7385AC1
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 07:51:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740142266; bh=J865/yiiAWAC/X4ywUMtmS922kSZfaEUuocWQOKd3iA=;
	h=Date:To:From:Subject:From;
	b=CAPAoh5W0gjZurpkixy5yw6pAH8o5lhJZz1XYm4EddzfuW9vfbDRdrm/Td7kN+J2r
	 Y0EB0BrVNaNfXuw7qP5a7tDXYPEYhQy0h8ucGJ1ZdZRD1sNhcUh+2Qx+s/v8ax2EYe
	 roqmJGT4bwggE4XEF31qBxHJ/eB8BqllgEp1F23soPfI/LikB01j2wSG+J8swdRvw4
	 U0IHKf3xJ8dGdDsutNzk9CVi3jwzQQXh5uHLZSBhc/HhMcYiIDLSXV/7apyiPgS6LR
	 MqA+0LGq73gY8GQGKQhRyWtwuy68wLLGd+lYOJBAVD349VS5Mrz7gC2thHu04v8M2L
	 u1ASK//7rLxVQ==
Date: Fri, 21 Feb 2025 12:51:06 +0000
To: usrp-users@lists.ettus.com
Message-ID: <6dPbEhYaukVoqFytkYrPgg7rGxazjjKs9QmjcEqcE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JBREBBGQRCJXBJFKETXW2RKI4T7UCTTE
X-Message-ID-Hash: JBREBBGQRCJXBJFKETXW2RKI4T7UCTTE
X-MailFrom: rilbert.silva@embedded.ufcg.edu.br
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [X440] Detected Rx sequence error and Receiver error: ERROR_CODE_TIMEOUT, continuing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JBREBBGQRCJXBJFKETXW2RKI4T7UCTTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rilbert Lima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rilbert.silva@embedded.ufcg.edu.br
Content-Type: multipart/mixed; boundary="===============2267616068180734839=="

This is a multi-part message in MIME format.

--===============2267616068180734839==
Content-Type: multipart/alternative;
 boundary="b1_6dPbEhYaukVoqFytkYrPgg7rGxazjjKs9QmjcEqcE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6dPbEhYaukVoqFytkYrPgg7rGxazjjKs9QmjcEqcE
Content-Type: text/plain; charset=us-ascii

Hello everyone,

I'm running benchmark tests using the USRP X440. Using another host, connected with 2x SFP (10GbE) through a NIC Mellanox.

I performed benchmark tests without and with DPDK, but the same RX Sequence Detection Error appears during the executions.

sudo /usr/local/lib/uhd/examples/benchmark_rate --args "type=x4xx,mgmt_addr=10.4.21.7,addr=192.168.10.2,second_addr=192.168.11.2,use_dpdk=1" --duration 10 --channels "0" --rx_rate 122.88e6 --rx_subdev "A:0" --tx_rate 122.88e6 --tx_subdev "A:0"

The specifications and generated logs are added below.

> Server specification
>
> OS: Ubuntu 22.04.5 LTS
>
> UHD/DPDK: \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4
>
> CPU: Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz
>
> RAM: 24 GB DDR4 2133 MHz
>
> HDD: 1TB WDC WD10EZEX-00WN4A0
>
> USRP: X440
>
> FPGA: X4_200
>
> NIC:
>
> 01:00.0 Ethernet controller: Mellanox Technologies MT27710 Family \[ConnectX-4 Lx\]
>
> 01:00.1 Ethernet controller: Mellanox Technologies MT27710 Family \[ConnectX-4 Lx\]
>
> All installations and performance tunning carried out

> virtus@Open-Ran:\~$ sudo /usr/local/lib/uhd/examples/benchmark_rate --args "type=x4xx,mgmt_addr=10.4.21.7,addr=192.168.10.2,second_addr=192.168.11.2,use_dpdk=1" --duration 10 --channels "0" --rx_rate 122.88e6 --rx_subdev "A:0" --tx_rate 122.88e6 --tx_subdev "A:0"
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4
>
> EAL: Detected CPU lcores: 4
>
> EAL: Detected NUMA nodes: 1
>
> EAL: Detected shared linkage of DPDK
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'PA'
>
> EAL: No available 1048576 kB hugepages reported
>
> EAL: Probe PCI driver: mlx5_pci (15b3:1015) device: 0000:01:00.0 (socket 0)
>
> EAL: Probe PCI driver: mlx5_pci (15b3:1015) device: 0000:01:00.1 (socket 0)
>
> TELEMETRY: No legacy callbacks, legacy socket not created
>
> \[00:00:00.000131\] Creating the usrp device with: type=x4xx,mgmt_addr=10.4.21.7,addr=192.168.10.2,second_addr=192.168.11.2,use_dpdk=1...
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=10.4.21.7,type=x4xx,product=x440,serial=342597F,name=ni-x4xx-342597F,fpga=X4_200,claimed=False,addr=192.168.10.2,second_addr=192.168.11.2,use_dpdk=1
>
> \[WARNING\] \[MPM.RPCServer\] A timeout event occured!
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_200,mgmt_addr=10.4.21.7,name=ni-x4xx-342597F,product=x440,second_addr=192.168.11.2,use_dpdk=1,clock_source=internal,time_source=internal,initializing=True'.
>
> \[WARNING\] \[RFNOC::GRAPH\] One or more blocks timed out during flush!
>
> Using Device: Single USRP:
>
>   Device: X400-Series Device
>
>   Mboard 0: x440
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: 0
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: 0
>
> \[00:00:04.890785254\] Setting device timestamp to 0...
>
> \[00:00:04.893573392\] Testing receive rate 122.880000 Msps on 1 channels
>
> Setting TX samples per packet (spp) to 2000
>
> Setting TX samples per burst (spb) to 2000
>
> \[00:00:04.895115960\] Testing transmit rate 122.880000 Msps on 1 channels
>
> \[WARNING\] \[DPDK::IO_SERVICE\] Dropping packet: No receiver xport found
>
> \[00:00:04.895333965\] Detected Rx sequence error.
>
> D\[00:00:04.900956500\] Detected Rx sequence error.
>
> D\[00:00:04.901945039\] Detected Rx sequence error.
>
> DS\[00:00:04.908254438D\] Detected Rx sequence error.
>
> \[00:00:04.923984076\] Detected Rx sequence error.
>
> DD\[00:00:04.927156293\] Detected Rx sequence error.
>
> S\[00:00:04.933418309\] Detected Rx sequence error.
>
> D\[00:00:04.934999706\] Detected Rx sequence error.
>
> DS\[00:00:04.944429296\] Detected Rx sequence error.
>
> D\[D00:00:04.960792200\] Detected Rx sequence error.
>
> \[00:00:04.980643423D\] Detected Rx sequence error.
>
> \[00:00:04.990066689D\] Detected Rx sequence error.
>
> \[00:00:05.12097875D\] Detected Rx sequence error.
>
> \[00:00:05.29378268D\] Detected Rx sequence error.
>
> S\[00:00:05.30947174\] Detected Rx sequence error.
>
> D\[00:00:05.32531208D\] Detected Rx sequence error.
>
> \[00:00:05.48273124D\] Detected Rx sequence error.
>
> \[00:00:05.56130841D\] Detected Rx sequence error.
>
> \[00:00:05.62399657D\] Detected Rx sequence error.
>
> \[00:00:05.84382872\] Detected Rx sequence error.
>
> D\[D00:00:05.87587455\] Detected Rx sequence error.
>
> \[00:00:05.92294289\] Detected Rx sequence error.
>
> DD\[00:00:05.123768021\] Detected Rx sequence error.
>
> \[00:00:05.128453051D\] Detected Rx sequence error.
>
> \[00:00:05.144189840D\] Detected Rx sequence error.
>
> \[00:00:05.153635670\] Detected Rx sequence error.
>
> D\[00:00:05.155206941D\] Detected Rx sequence error.
>
> S\[00:00:05.175641539D\] Detected Rx sequence error.
>
> \[00:00:05.186625501\] Detected Rx sequence error.
>
> D\[D00:00:05.192945499\] Detected Rx sequence error.
>
> \[00:00:05.214956297\] Detected Rx sequence error.
>
> D\[00:00:05.215528236\] Detected Rx sequence error.
>
> DD\[00:00:05.229140936\] Detected Rx sequence error.
>
> \[00:00:05.230693026D\] Detected Rx sequence error.
>
> \[00:00:05.235426475D\] Detected Rx sequence error.
>
> \[00:00:05.243884071D\] Detected Rx sequence error.
>
> \[00:00:05.251735061D\] Detected Rx sequence error.
>
> \[00:00:05.254276876\] Detected Rx sequence error.
>
> DD\[00:00:05.255857541\] Detected Rx sequence error.
>
> D\[00:00:05.256447694\] Detected Rx sequence error.
>
> \[00:00:05.257445649\] Detected Rx sequence error.
>
> DD\[00:00:05.260595743\] Detected Rx sequence error.
>
> \[00:00:05.265305340D\] Detected Rx sequence error.
>
> \[00:00:05.267453316D\] Detected Rx sequence error.
>
> \[D00:00:05.268459891\] Detected Rx sequence error.
>
> D\[00:00:05.270033261\] Detected Rx sequence error.
>
> D\[00:00:05.270600506\] Detected Rx sequence error.
>
> \[00:00:05.271603978\] Detected Rx sequence error.
>
> D\[00:00:05.273152681\] Detected Rx sequence error.
>
> D\[00:00:05.274750683D\] Detected Rx sequence error.
>
> \[00:00:05.278454413D\] Detected Rx sequence error.
>
> \[00:00:05.279465965D\] Detected Rx sequence error.
>
> \[00:00:05.281028385D\] Detected Rx sequence error.
>
> \[00:00:05.282586950\] Detected Rx sequence error.D
>
> \[00:00:05.285732455\] Detected Rx sequence error.
>
> D\[D00:00:05.287320550\] Detected Rx sequence error.
>
> \[00:00:05.290471298D\] Detected Rx sequence error.
>
> \[D00:00:05.292823999\] Detected Rx sequence error.
>
> \[00:00:05.293605393\] Detected Rx sequence error.
>
> DD\[00:00:05.294215260\] Detected Rx sequence error.
>
> \[00:00:05.296761586D\] Detected Rx sequence error.
>
> \[00:00:05.298309949D\] Detected Rx sequence error.
>
> \[00:00:05.306189777D\] Detected Rx sequence error.
>
> \[00:00:05.307741083\] Detected Rx sequence error.
>
> DD\[00:00:05.308291334\] Detected Rx sequence error.
>
> D\[00:00:05.310090226\] Detected Rx sequence error.
>
> \[00:00:05.310891273\] Detected Rx sequence error.
>
> D\[00:00:05.312482113\] Detected Rx sequence error.
>
> DD\[00:00:05.314057525\] Detected Rx sequence error.
>
> \[00:00:05.317195566\] Detected Rx sequence error.
>
> D\[00:00:05.318792076D\] Detected Rx sequence error.
>
> \[00:00:05.319087621D\] Detected Rx sequence error.
>
> \[00:00:05.320357278\] Detected Rx sequence error.
>
> D\[D00:00:05.321107619\] Detected Rx sequence error.
>
> \[00:00:05.321907249\] Detected Rx sequence error.
>
> D\[00:00:05.323477508\] Detected Rx sequence error.
>
> D\[00:00:05.326625539D\] Detected Rx sequence error.
>
> \[00:00:05.327215810\] Detected Rx sequence error.
>
> D\[00:00:05.328212545\] Detected Rx sequence error.
>
> D\[00:00:05.329808521D\] Detected Rx sequence error.
>
> \[00:00:05.332946373D\] Detected Rx sequence error.
>
> \[00:00:05.339214526D\] Detected Rx sequence error.
>
> \[00:00:05.340783692D\] Detected Rx sequence error.
>
> \[00:00:05.342371022\] Detected Rx sequence error.
>
> DD\[00:00:05.351834601\] Detected Rx sequence error.
>
> \[00:00:05.353390826D\] Detected Rx sequence error.
>
> \[00:00:05.354133415\] Detected Rx sequence error.
>
> D\[D00:00:05.356538412\] Detected Rx sequence error.
>
> \[00:00:05.358107284\] Detected Rx sequence error.
>
> D\[00:00:05.359658331\] Detected Rx sequence error.
>
> DD\[00:00:05.360274266\] Detected Rx sequence error.
>
> \[00:00:05.361234564D\] Detected Rx sequence error.
>
> \[00:00:05.362830565D\] Detected Rx sequence error.
>
> \[00:00:05.364390138\] Detected Rx sequence error.
>
> DD\[00:00:05.372376266\] Detected Rx sequence error.
>
> \[00:00:05.378512826\] Detected Rx sequence error.
>
> D\[D00:00:05.384846759\] Detected Rx sequence error.
>
> \[00:00:05.385190643\] Detected Rx sequence error.
>
> D\[00:00:05.387965549\] Detected Rx sequence error.
>
> D\[00:00:05.391116043D\] Detected Rx sequence error.
>
> \[00:00:05.397458107\] Detected Rx sequence error.
>
> DD\[00:00:05.398998407\] Detected Rx sequence error.
>
> \[00:00:05.413165278D\] Detected Rx sequence error.
>
> \[00:00:05.420023779D\] Detected Rx sequence error.
>
> \[00:00:05.424129172\] Detected Rx sequence error.
>
> D\[00:00:05.437304718D\] Detected Rx sequence error.
>
> \[00:00:05.438301737\] Detected Rx sequence error.
>
> DD\[00:00:05.439862012\] Detected Rx sequence error.
>
> \[00:00:05.444585302D\] Detected Rx sequence error.
>
> \[D00:00:05.446199848\] Detected Rx sequence error.
>
> \[DU00:00:05.497738375\] Detected Rx sequence error.
>
> \[D00:00:05.498073029O\] Detected Rx sequence error.
>
> \[00:00:05.498514204\] Detected Rx sequence error.
>
> \[00:00:05.499152346\] Detected Rx sequence error.
>
> \[00:00:05.499195156\] Detected Rx sequence error.
>
> \[00:00:05.499263931\] Detected Rx sequence error.
>
> \[00:00:05.499478660\] Detected Rx sequence error.
>
> \[00:00:05.499692422\] Detected Rx sequence error.
>
> \[00:00:05.499801147\] Detected Rx sequence error.
>
> \[00:00:05.499907721\] Detected Rx sequence error.
>
> \[00:00:05.500014919\] Detected Rx sequence error.
>
> DDDDDDDDDUUD\[00:00:05.500546955\] Detected Rx sequence error.
>
> D\[00:00:05.500936289\] Detected Rx sequence error.
>
> D\[00:00:05.501338452\] Detected Rx sequence error.
>
> \[00:00:05.501579909\] Detected Rx sequence error.
>
> \[00:00:05.501810887\] Detected Rx sequence error.
>
> DDD\[00:00:05.502141658\] Detected Rx sequence error.
>
> D\[00:00:05.502536353\] Detected Rx sequence error.
>
> SD\[00:00:05.561635860\] Detected Rx sequence error.
>
> D\[00:00:05.568885003\] Detected Rx sequence error.
>
> D\[00:00:05.570467323\] Detected Rx sequence error.
>
> S\[00:00:05.680940286\] Tx timeouts: 1\[00:00:05.681045292
>
> \] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:05.781263461\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:05.881470970\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:05.981714487\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.81886066\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.182094787\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.282255511\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.382391150\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.482446405\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.582506185\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.682542358\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.782595730\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.882646052\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.982705939\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.82751048\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.182803451\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.282855356\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.382910004\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.482981623\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.583014966\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.683064065\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.783124713\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.883193114\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.983244308\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.83338416\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.183522761\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.283716852\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.383880654\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.484009845\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.584070695\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.684124885\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.784209791\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.884282459\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.984334932\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.84413982\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.184450043\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.284490510\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.384552969\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.484594107\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.584652503\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.684700395\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.784760323\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.884868319\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.984907159\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.84976027\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.185012907\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.285090675\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.385130885\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.485180072\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.585241383\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.685314802\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.785441419\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.885506147\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.985621158\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.85663518\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.185777865\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.285815968\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.385882448\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.485956044\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.586013034\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.686076150\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.786207449\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.886285555\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.986362093\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.86413907\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.186501620\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.286542250\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.386622644\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.486697602\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.586752225\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.686809665\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.786872686\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.886986520\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.987025434\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.87089960\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.187135792\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.287222358\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.387413666\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.487543059\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.587596929\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.687646719\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.787733380\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.887879710\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:13.987968621\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.88013897\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.188090021\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.288132695\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.388182017\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.488231856\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.588282301\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.688337374\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.788393608\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:14.888453530\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:15.93979158\] Benchmark complete.
>
> Benchmark rate summary:
>
>   Num received samples:     77201576
>
>   Num dropped samples:      7544292
>
>   Num overruns detected:    1
>
>   Num transmitted samples:  78082000
>
>   Num sequence errors (Tx): 7
>
>   Num sequence errors (Rx): 131
>
>   Num underruns detected:   3
>
>   Num late commands:        0
>
>   Num timeouts (Tx):        94
>
>   Num timeouts (Rx):        93
>
> Done!

--b1_6dPbEhYaukVoqFytkYrPgg7rGxazjjKs9QmjcEqcE
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello everyone,</p><p>I'm running benchmark tests using the USRP X440. U=
sing another host, connected with 2x SFP (10GbE) through a NIC Mellanox.</p=
><p>I performed benchmark tests without and with DPDK, but the same RX Sequ=
ence Detection Error appears during the executions.</p><p>sudo /usr/local/l=
ib/uhd/examples/benchmark_rate --args "type=3Dx4xx,mgmt_addr=3D10.4.21.7,ad=
dr=3D192.168.10.2,second_addr=3D192.168.11.2,use_dpdk=3D1" --duration 10 --=
channels "0" --rx_rate 122.88e6 --rx_subdev "A:0" --tx_rate 122.88e6 --tx_s=
ubdev "A:0"</p><p>The specifications and generated logs are added below.</p=
><blockquote><p>Server specification</p><p>OS: Ubuntu 22.04.5 LTS</p><p>UHD=
/DPDK: [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11=
; UHD_4.8.0.HEAD-0-g308126a4</p><p>CPU: Intel(R) Core(TM) i7-6700 CPU @ 3.4=
0GHz</p><p>RAM: 24 GB DDR4 2133 MHz</p><p>HDD: 1TB WDC WD10EZEX-00WN4A0</p>=
<p>USRP: X440</p><p>FPGA: X4_200</p><p>NIC:</p><p>01:00.0 Ethernet controll=
er: Mellanox Technologies MT27710 Family [ConnectX-4 Lx]</p><p>01:00.1 Ethe=
rnet controller: Mellanox Technologies MT27710 Family [ConnectX-4 Lx]</p><p=
>All installations and performance tunning carried out</p></blockquote><p><=
br></p><blockquote><p>virtus@Open-Ran:~$ sudo /usr/local/lib/uhd/examples/b=
enchmark_rate --args "type=3Dx4xx,mgmt_addr=3D10.4.21.7,addr=3D192.168.10.2=
,second_addr=3D192.168.11.2,use_dpdk=3D1" --duration 10 --channels "0" --rx=
_rate 122.88e6 --rx_subdev "A:0" --tx_rate 122.88e6 --tx_subdev "A:0"</p><p=
>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_=
4.8.0.HEAD-0-g308126a4</p><p>EAL: Detected CPU lcores: 4</p><p>EAL: Detecte=
d NUMA nodes: 1</p><p>EAL: Detected shared linkage of DPDK</p><p>EAL: Multi=
-process socket /var/run/dpdk/rte/mp_socket</p><p>EAL: Selected IOVA mode '=
PA'</p><p>EAL: No available 1048576 kB hugepages reported</p><p>EAL: Probe =
PCI driver: mlx5_pci (15b3:1015) device: 0000:01:00.0 (socket 0)</p><p>EAL:=
 Probe PCI driver: mlx5_pci (15b3:1015) device: 0000:01:00.1 (socket 0)</p>=
<p>TELEMETRY: No legacy callbacks, legacy socket not created</p><p>[00:00:0=
0.000131] Creating the usrp device with: type=3Dx4xx,mgmt_addr=3D10.4.21.7,=
addr=3D192.168.10.2,second_addr=3D192.168.11.2,use_dpdk=3D1...</p><p>[INFO]=
 [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D10.4.21=
.7,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F,fpga=
=3DX4_200,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192.168.11.2,us=
e_dpdk=3D1</p><p>[WARNING] [MPM.RPCServer] A timeout event occured!</p><p>[=
INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,mgm=
t_addr=3D10.4.21.7,name=3Dni-x4xx-342597F,product=3Dx440,second_addr=3D192.=
168.11.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal,initia=
lizing=3DTrue'.</p><p>[WARNING] [RFNOC::GRAPH] One or more blocks timed out=
 during flush!</p><p>Using Device: Single USRP:</p><p>  Device: X400-Series=
 Device</p><p>  Mboard 0: x440</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p=
><p>    RX Dboard: A</p><p>    RX Subdev: 0</p><p>  TX Channel: 0</p><p>   =
 TX DSP: 0</p><p>    TX Dboard: A</p><p>    TX Subdev: 0</p><p>[00:00:04.89=
0785254] Setting device timestamp to 0...</p><p>[00:00:04.893573392] Testin=
g receive rate 122.880000 Msps on 1 channels</p><p>Setting TX samples per p=
acket (spp) to 2000</p><p>Setting TX samples per burst (spb) to 2000</p><p>=
[00:00:04.895115960] Testing transmit rate 122.880000 Msps on 1 channels</p=
><p>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No receiver xport found</=
p><p>[00:00:04.895333965] Detected Rx sequence error.</p><p>D[00:00:04.9009=
56500] Detected Rx sequence error.</p><p>D[00:00:04.901945039] Detected Rx =
sequence error.</p><p>DS[00:00:04.908254438D] Detected Rx sequence error.</=
p><p>[00:00:04.923984076] Detected Rx sequence error.</p><p>DD[00:00:04.927=
156293] Detected Rx sequence error.</p><p>S[00:00:04.933418309] Detected Rx=
 sequence error.</p><p>D[00:00:04.934999706] Detected Rx sequence error.</p=
><p>DS[00:00:04.944429296] Detected Rx sequence error.</p><p>D[D00:00:04.96=
0792200] Detected Rx sequence error.</p><p>[00:00:04.980643423D] Detected R=
x sequence error.</p><p>[00:00:04.990066689D] Detected Rx sequence error.</=
p><p>[00:00:05.12097875D] Detected Rx sequence error.</p><p>[00:00:05.29378=
268D] Detected Rx sequence error.</p><p>S[00:00:05.30947174] Detected Rx se=
quence error.</p><p>D[00:00:05.32531208D] Detected Rx sequence error.</p><p=
>[00:00:05.48273124D] Detected Rx sequence error.</p><p>[00:00:05.56130841D=
] Detected Rx sequence error.</p><p>[00:00:05.62399657D] Detected Rx sequen=
ce error.</p><p>[00:00:05.84382872] Detected Rx sequence error.</p><p>D[D00=
:00:05.87587455] Detected Rx sequence error.</p><p>[00:00:05.92294289] Dete=
cted Rx sequence error.</p><p>DD[00:00:05.123768021] Detected Rx sequence e=
rror.</p><p>[00:00:05.128453051D] Detected Rx sequence error.</p><p>[00:00:=
05.144189840D] Detected Rx sequence error.</p><p>[00:00:05.153635670] Detec=
ted Rx sequence error.</p><p>D[00:00:05.155206941D] Detected Rx sequence er=
ror.</p><p>S[00:00:05.175641539D] Detected Rx sequence error.</p><p>[00:00:=
05.186625501] Detected Rx sequence error.</p><p>D[D00:00:05.192945499] Dete=
cted Rx sequence error.</p><p>[00:00:05.214956297] Detected Rx sequence err=
or.</p><p>D[00:00:05.215528236] Detected Rx sequence error.</p><p>DD[00:00:=
05.229140936] Detected Rx sequence error.</p><p>[00:00:05.230693026D] Detec=
ted Rx sequence error.</p><p>[00:00:05.235426475D] Detected Rx sequence err=
or.</p><p>[00:00:05.243884071D] Detected Rx sequence error.</p><p>[00:00:05=
.251735061D] Detected Rx sequence error.</p><p>[00:00:05.254276876] Detecte=
d Rx sequence error.</p><p>DD[00:00:05.255857541] Detected Rx sequence erro=
r.</p><p>D[00:00:05.256447694] Detected Rx sequence error.</p><p>[00:00:05.=
257445649] Detected Rx sequence error.</p><p>DD[00:00:05.260595743] Detecte=
d Rx sequence error.</p><p>[00:00:05.265305340D] Detected Rx sequence error=
.</p><p>[00:00:05.267453316D] Detected Rx sequence error.</p><p>[D00:00:05.=
268459891] Detected Rx sequence error.</p><p>D[00:00:05.270033261] Detected=
 Rx sequence error.</p><p>D[00:00:05.270600506] Detected Rx sequence error.=
</p><p>[00:00:05.271603978] Detected Rx sequence error.</p><p>D[00:00:05.27=
3152681] Detected Rx sequence error.</p><p>D[00:00:05.274750683D] Detected =
Rx sequence error.</p><p>[00:00:05.278454413D] Detected Rx sequence error.<=
/p><p>[00:00:05.279465965D] Detected Rx sequence error.</p><p>[00:00:05.281=
028385D] Detected Rx sequence error.</p><p>[00:00:05.282586950] Detected Rx=
 sequence error.D</p><p>[00:00:05.285732455] Detected Rx sequence error.</p=
><p>D[D00:00:05.287320550] Detected Rx sequence error.</p><p>[00:00:05.2904=
71298D] Detected Rx sequence error.</p><p>[D00:00:05.292823999] Detected Rx=
 sequence error.</p><p>[00:00:05.293605393] Detected Rx sequence error.</p>=
<p>DD[00:00:05.294215260] Detected Rx sequence error.</p><p>[00:00:05.29676=
1586D] Detected Rx sequence error.</p><p>[00:00:05.298309949D] Detected Rx =
sequence error.</p><p>[00:00:05.306189777D] Detected Rx sequence error.</p>=
<p>[00:00:05.307741083] Detected Rx sequence error.</p><p>DD[00:00:05.30829=
1334] Detected Rx sequence error.</p><p>D[00:00:05.310090226] Detected Rx s=
equence error.</p><p>[00:00:05.310891273] Detected Rx sequence error.</p><p=
>D[00:00:05.312482113] Detected Rx sequence error.</p><p>DD[00:00:05.314057=
525] Detected Rx sequence error.</p><p>[00:00:05.317195566] Detected Rx seq=
uence error.</p><p>D[00:00:05.318792076D] Detected Rx sequence error.</p><p=
>[00:00:05.319087621D] Detected Rx sequence error.</p><p>[00:00:05.32035727=
8] Detected Rx sequence error.</p><p>D[D00:00:05.321107619] Detected Rx seq=
uence error.</p><p>[00:00:05.321907249] Detected Rx sequence error.</p><p>D=
[00:00:05.323477508] Detected Rx sequence error.</p><p>D[00:00:05.326625539=
D] Detected Rx sequence error.</p><p>[00:00:05.327215810] Detected Rx seque=
nce error.</p><p>D[00:00:05.328212545] Detected Rx sequence error.</p><p>D[=
00:00:05.329808521D] Detected Rx sequence error.</p><p>[00:00:05.332946373D=
] Detected Rx sequence error.</p><p>[00:00:05.339214526D] Detected Rx seque=
nce error.</p><p>[00:00:05.340783692D] Detected Rx sequence error.</p><p>[0=
0:00:05.342371022] Detected Rx sequence error.</p><p>DD[00:00:05.351834601]=
 Detected Rx sequence error.</p><p>[00:00:05.353390826D] Detected Rx sequen=
ce error.</p><p>[00:00:05.354133415] Detected Rx sequence error.</p><p>D[D0=
0:00:05.356538412] Detected Rx sequence error.</p><p>[00:00:05.358107284] D=
etected Rx sequence error.</p><p>D[00:00:05.359658331] Detected Rx sequence=
 error.</p><p>DD[00:00:05.360274266] Detected Rx sequence error.</p><p>[00:=
00:05.361234564D] Detected Rx sequence error.</p><p>[00:00:05.362830565D] D=
etected Rx sequence error.</p><p>[00:00:05.364390138] Detected Rx sequence =
error.</p><p>DD[00:00:05.372376266] Detected Rx sequence error.</p><p>[00:0=
0:05.378512826] Detected Rx sequence error.</p><p>D[D00:00:05.384846759] De=
tected Rx sequence error.</p><p>[00:00:05.385190643] Detected Rx sequence e=
rror.</p><p>D[00:00:05.387965549] Detected Rx sequence error.</p><p>D[00:00=
:05.391116043D] Detected Rx sequence error.</p><p>[00:00:05.397458107] Dete=
cted Rx sequence error.</p><p>DD[00:00:05.398998407] Detected Rx sequence e=
rror.</p><p>[00:00:05.413165278D] Detected Rx sequence error.</p><p>[00:00:=
05.420023779D] Detected Rx sequence error.</p><p>[00:00:05.424129172] Detec=
ted Rx sequence error.</p><p>D[00:00:05.437304718D] Detected Rx sequence er=
ror.</p><p>[00:00:05.438301737] Detected Rx sequence error.</p><p>DD[00:00:=
05.439862012] Detected Rx sequence error.</p><p>[00:00:05.444585302D] Detec=
ted Rx sequence error.</p><p>[D00:00:05.446199848] Detected Rx sequence err=
or.</p><p>[DU00:00:05.497738375] Detected Rx sequence error.</p><p>[D00:00:=
05.498073029O] Detected Rx sequence error.</p><p>[00:00:05.498514204] Detec=
ted Rx sequence error.</p><p>[00:00:05.499152346] Detected Rx sequence erro=
r.</p><p>[00:00:05.499195156] Detected Rx sequence error.</p><p>[00:00:05.4=
99263931] Detected Rx sequence error.</p><p>[00:00:05.499478660] Detected R=
x sequence error.</p><p>[00:00:05.499692422] Detected Rx sequence error.</p=
><p>[00:00:05.499801147] Detected Rx sequence error.</p><p>[00:00:05.499907=
721] Detected Rx sequence error.</p><p>[00:00:05.500014919] Detected Rx seq=
uence error.</p><p>DDDDDDDDDUUD[00:00:05.500546955] Detected Rx sequence er=
ror.</p><p>D[00:00:05.500936289] Detected Rx sequence error.</p><p>D[00:00:=
05.501338452] Detected Rx sequence error.</p><p>[00:00:05.501579909] Detect=
ed Rx sequence error.</p><p>[00:00:05.501810887] Detected Rx sequence error=
.</p><p>DDD[00:00:05.502141658] Detected Rx sequence error.</p><p>D[00:00:0=
5.502536353] Detected Rx sequence error.</p><p>SD[00:00:05.561635860] Detec=
ted Rx sequence error.</p><p>D[00:00:05.568885003] Detected Rx sequence err=
or.</p><p>D[00:00:05.570467323] Detected Rx sequence error.</p><p>S[00:00:0=
5.680940286] Tx timeouts: 1[00:00:05.681045292</p><p>] Receiver error: ERRO=
R_CODE_TIMEOUT, continuing...</p><p>[00:00:05.781263461] Receiver error: ER=
ROR_CODE_TIMEOUT, continuing...</p><p>[00:00:05.881470970] Receiver error: =
ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:05.981714487] Receiver error=
: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.81886066] Receiver erro=
r: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.182094787] Receiver er=
ror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.282255511] Receiver =
error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.382391150] Receive=
r error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.482446405] Recei=
ver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.582506185] Rec=
eiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.682542358] R=
eceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.782595730]=
 Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.88264605=
2] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:06.982705=
939] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.8275=
1048] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.182=
803451] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.2=
82855356] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07=
.382910004] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:=
07.482981623] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:0=
0:07.583014966] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00=
:00:07.683064065] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[=
00:00:07.783124713] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p=
>[00:00:07.883193114] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p>=
<p>[00:00:07.983244308] Receiver error: ERROR_CODE_TIMEOUT, continuing...</=
p><p>[00:00:08.83338416] Receiver error: ERROR_CODE_TIMEOUT, continuing...<=
/p><p>[00:00:08.183522761] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.</p><p>[00:00:08.283716852] Receiver error: ERROR_CODE_TIMEOUT, continuing=
...</p><p>[00:00:08.383880654] Receiver error: ERROR_CODE_TIMEOUT, continui=
ng...</p><p>[00:00:08.484009845] Receiver error: ERROR_CODE_TIMEOUT, contin=
uing...</p><p>[00:00:08.584070695] Receiver error: ERROR_CODE_TIMEOUT, cont=
inuing...</p><p>[00:00:08.684124885] Receiver error: ERROR_CODE_TIMEOUT, co=
ntinuing...</p><p>[00:00:08.784209791] Receiver error: ERROR_CODE_TIMEOUT, =
continuing...</p><p>[00:00:08.884282459] Receiver error: ERROR_CODE_TIMEOUT=
, continuing...</p><p>[00:00:08.984334932] Receiver error: ERROR_CODE_TIMEO=
UT, continuing...</p><p>[00:00:09.84413982] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</p><p>[00:00:09.184450043] Receiver error: ERROR_CODE_TI=
MEOUT, continuing...</p><p>[00:00:09.284490510] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...</p><p>[00:00:09.384552969] Receiver error: ERROR_COD=
E_TIMEOUT, continuing...</p><p>[00:00:09.484594107] Receiver error: ERROR_C=
ODE_TIMEOUT, continuing...</p><p>[00:00:09.584652503] Receiver error: ERROR=
_CODE_TIMEOUT, continuing...</p><p>[00:00:09.684700395] Receiver error: ERR=
OR_CODE_TIMEOUT, continuing...</p><p>[00:00:09.784760323] Receiver error: E=
RROR_CODE_TIMEOUT, continuing...</p><p>[00:00:09.884868319] Receiver error:=
 ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:09.984907159] Receiver erro=
r: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.84976027] Receiver err=
or: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.185012907] Receiver e=
rror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.285090675] Receiver=
 error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.385130885] Receiv=
er error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.485180072] Rece=
iver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.585241383] Re=
ceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.685314802] =
Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.785441419=
] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.8855061=
47] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:10.98562=
1158] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.856=
63518] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.18=
5777865] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.=
285815968] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:1=
1.385882448] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00=
:11.485956044] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:=
00:11.586013034] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[0=
0:00:11.686076150] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>=
[00:00:11.786207449] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><=
p>[00:00:11.886285555] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p=
><p>[00:00:11.986362093] Receiver error: ERROR_CODE_TIMEOUT, continuing...<=
/p><p>[00:00:12.86413907] Receiver error: ERROR_CODE_TIMEOUT, continuing...=
</p><p>[00:00:12.186501620] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..</p><p>[00:00:12.286542250] Receiver error: ERROR_CODE_TIMEOUT, continuin=
g...</p><p>[00:00:12.386622644] Receiver error: ERROR_CODE_TIMEOUT, continu=
ing...</p><p>[00:00:12.486697602] Receiver error: ERROR_CODE_TIMEOUT, conti=
nuing...</p><p>[00:00:12.586752225] Receiver error: ERROR_CODE_TIMEOUT, con=
tinuing...</p><p>[00:00:12.686809665] Receiver error: ERROR_CODE_TIMEOUT, c=
ontinuing...</p><p>[00:00:12.786872686] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...</p><p>[00:00:12.886986520] Receiver error: ERROR_CODE_TIMEOU=
T, continuing...</p><p>[00:00:12.987025434] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</p><p>[00:00:13.87089960] Receiver error: ERROR_CODE_TIM=
EOUT, continuing...</p><p>[00:00:13.187135792] Receiver error: ERROR_CODE_T=
IMEOUT, continuing...</p><p>[00:00:13.287222358] Receiver error: ERROR_CODE=
_TIMEOUT, continuing...</p><p>[00:00:13.387413666] Receiver error: ERROR_CO=
DE_TIMEOUT, continuing...</p><p>[00:00:13.487543059] Receiver error: ERROR_=
CODE_TIMEOUT, continuing...</p><p>[00:00:13.587596929] Receiver error: ERRO=
R_CODE_TIMEOUT, continuing...</p><p>[00:00:13.687646719] Receiver error: ER=
ROR_CODE_TIMEOUT, continuing...</p><p>[00:00:13.787733380] Receiver error: =
ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:13.887879710] Receiver error=
: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:13.987968621] Receiver err=
or: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.88013897] Receiver er=
ror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.188090021] Receiver =
error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.288132695] Receive=
r error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.388182017] Recei=
ver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.488231856] Rec=
eiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.588282301] R=
eceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.688337374]=
 Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.78839360=
8] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:14.888453=
530] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:15.9397=
9158] Benchmark complete.</p><p>Benchmark rate summary:</p><p>  Num receive=
d samples:     77201576</p><p>  Num dropped samples:      7544292</p><p>  N=
um overruns detected:    1</p><p>  Num transmitted samples:  78082000</p><p=
>  Num sequence errors (Tx): 7</p><p>  Num sequence errors (Rx): 131</p><p>=
  Num underruns detected:   3</p><p>  Num late commands:        0</p><p>  N=
um timeouts (Tx):        94</p><p>  Num timeouts (Rx):        93</p><p>Done=
!</p></blockquote>

--b1_6dPbEhYaukVoqFytkYrPgg7rGxazjjKs9QmjcEqcE--

--===============2267616068180734839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2267616068180734839==--
