Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 830BA3AECC0
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 17:48:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 841C1381089
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 11:48:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="e3EvT4TS";
	dkim-atps=neutral
Received: from outbound5.mail.transip.nl (outbound5.mail.transip.nl [136.144.136.9])
	by mm2.emwd.com (Postfix) with ESMTPS id 92EEA380BC9
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 11:47:47 -0400 (EDT)
Received: from submission10.mail.transip.nl (unknown [10.103.8.161])
	by outbound5.mail.transip.nl (Postfix) with ESMTP id 4G7v762ctDzHCNj
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 17:47:46 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission10.mail.transip.nl (Postfix) with ESMTPSA id 4G7v753zTcz1gwhY
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 17:47:45 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 6EC8C60053
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 17:47:45 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <0d826d5c-bd63-51a3-1822-b02240199638@olifantasia.com>
Date: Mon, 21 Jun 2021 17:47:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission10.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1624290465; h=from:subject:to:date:
 mime-version:content-type;
 bh=pyhA1K3SD0V7ErtL3/deFZhrofOJ9CWlfuB+1zSJrzU=;
 b=e3EvT4TSMVJrioS+2+gruQfEv28lkwtuSo+gz1DDBUY28ezwH8edjL/Dy0/rwiQVDXwd1f
 hfBFf5ujyfeopS2xnQF65yVP4G7pHHyHkOnQD6IwmgS3uuYoRf2JAalOenikBAMBWV7q1c
 Ai+p6AlgabAlXr0diL0TA/OgeCg65y/TUyikm/vrxhPUP082gHk1oYz74RAAeARRSjeovk
 N94qS8AwQybBkYEA4kguF7nT3S8SCMEELwAp8NpwWW/x3xd4Tuji/tUK3blyD1y47LXSUF
 LoR64C/zCzpNv6Hs2c5iPt8sOi6y/PIenOMp2SyJYnJWkgO4NDWYHv8W9uiKkw==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: MG75QCIQ2B7VSG7RDOMF6DAPAYK53XV2
X-Message-ID-Hash: MG75QCIQ2B7VSG7RDOMF6DAPAYK53XV2
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 rfnoc_rx_to_file Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MG75QCIQ2B7VSG7RDOMF6DAPAYK53XV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I am trying to run the RFNoC example rfnoc_rx_to_file on a E310 sg1.

When I run it directly on the E310 hardware it succeeds.
But if I run it from a host-computer (connected to the E310 over 
ethernet) it fails with:

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 
'set_device_id'

The only place I found that does set_device_id is in
host/lib/usrp/mpmd/mpmd_mb_iface.cpp

mpmd_mboard_impl::mpmd_mb_iface::mpmd_mb_iface(
     const uhd::device_addr_t& mb_args, uhd::rpc_client::sptr rpc)
     : _mb_args(mb_args), _rpc(rpc), 
_link_if_mgr(xport::mpmd_link_if_mgr::make(mb_args))
{
     _remote_device_id = allocate_device_id();
     UHD_LOG_TRACE("MPMD::MB_IFACE", "Assigning device_id " << 
_remote_device_id);
     _rpc->notify_with_token("set_device_id", _remote_device_id);
}


But I am not sure what this code does, or why it is run and fails here.

Here is the output of the failing remote and succeeding local runs:

Running from a host-computer fails:
nldudok1@rojo:/opt/uhd40/src/uhd40/host/examples$ 
/opt/uhd40/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
UHD_4.0.0.0-133-g7ec04886
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.1.102,type=e3xx,product=e310_sg1,serial=F661C4,claimed=False,addr=192.168.1.102
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
Error: rpc::timeout: Timeout of 2000ms while calling RPC function 
'set_device_id'


Running directly on the E310 succeeds:
root@ni-e31x:~# /usr/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0
Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; 
UHD_3.15.0.0-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=F661C4,claimed=False
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [MPM.PeriphManager] init() called with device args 
`product=e310_sg1,mgmt_addr=127.0.0.1'.
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
Using radio 0, channel 0
Setting RX Rate: 1.000000 Msps...
Actual RX Rate: 1.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 70.000000 MHz...

Samples per packet: 2044
Using streamer args: block_id=0/Radio_0,block_port=0,spp=2044
Press Ctrl + C to stop streaming...
Issuing stream cmd
Issuing stop stream cmd

Done!

Thanks in advance for any clue.

Best regards,

Martin
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
