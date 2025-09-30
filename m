Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A25BAD256
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 16:08:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF5B9385C56
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 10:08:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759241319; bh=BBpUiDczuSOMxq4wofMsgjpbCAPhG0qaiSoys13G0gA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VejQYHFh2XGoxkCm79hIT/bHIOwYfnvtRUfbiU+PQH+x2rPRGA0366i5XLbj8yqde
	 v/eaLQFznrX7yduvgKoHFS1g6gsjU2ifxTUtWxjKmrsFrJlnitrW2XH/FpFQEjXq+2
	 z/Y2KWyB0YM/aGQPo9MT821AtNx8jlT0Ax7BL/FxA06fTJXI1QVXUNfkNroz5f3A1H
	 alYe6qJdEv49Kr5oVCg9MyK+NZ+cONJ53xqK7/A0Ysd76jACJ5COxzHdf0NJvUf9nz
	 eTpOyTQZFO/Aco0ZzL/GF2cVdgL3TyL92EJlDjOV1K8hPmW8fTR/R4CsWwp9appXMt
	 qMk+N2uiDYWPg==
Received: from baseband.digital (baseband.digital [162.55.218.138])
	by mm2.emwd.com (Postfix) with ESMTPS id 85764386244
	for <usrp-users@lists.ettus.com>; Tue, 30 Sep 2025 10:07:30 -0400 (EDT)
Received: from [IPV6:2001:16b8:cc76:3500:bf5:d22c:2206:8fff] (unknown [IPv6:2001:16b8:cc76:3500:bf5:d22c:2206:8fff])
	by baseband.digital (Postfix) with ESMTPSA id 420785E66D
	for <usrp-users@lists.ettus.com>; Tue, 30 Sep 2025 16:07:29 +0200 (CEST)
Message-ID: <cfff8c29-7926-49d5-8a76-d2fc6700530b@baseband.digital>
Date: Tue, 30 Sep 2025 16:07:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY@lists.ettus.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <mueller_usrp_users@baseband.digital>
In-Reply-To: <fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY@lists.ettus.com>
Message-ID-Hash: ESZQAAZFCTJ3H6O3RSGWASFXONRORVAN
X-Message-ID-Hash: ESZQAAZFCTJ3H6O3RSGWASFXONRORVAN
X-MailFrom: mueller_usrp_users@baseband.digital
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESZQAAZFCTJ3H6O3RSGWASFXONRORVAN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Peter,

as Martin said, unlikely ("no way") you'll be processing 2 GS/s in computer software, DPDK 
or not. Start smaller; channelize / process-on-FPGA as needed.

Best,
Marcus

On 9/26/25 7:56 PM, Peter Gu via USRP-users wrote:
>
> Hi Martin,
>
> I tried to get rid of the underflow issue but didnt succeed. Our setup consists of a 
> host PC equipped with an AMD Threadripper Pro 3955WX (16 cores), 160 GB of RAM, and a 
> Mellanox MT27800. It is connected to the X440 via a single 100 GbE cable.
>
> Im using the default X440_X4_1600 image and UHD4.8.0.0
>
> To use DPDK I followed this instruction: 
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>
> The only thing I changed was the line 
> dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/ -> 
> dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/ in uhd.conf
>
> I also played around with dpdk_num_mbufs by setting it to e.g. 8192.
>
>
> However, I still get underflow issues:
>
> [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400; DPDK_21.11; 
> UHD_4.8.0.0-0-g308126a4
>
> EAL: Detected CPU lcores: 32
>
> EAL: Detected NUMA nodes: 1
>
> EAL: Detected shared linkage of DPDK
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'VA'
>
> EAL: No available 1048576 kB hugepages reported
>
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:41:00.0 (socket 0)
>
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:41:00.1 (socket 0)
>
> TELEMETRY: No legacy callbacks, legacy socket not created
>
> [00:00:00.000240] Creating the usrp device with: 
> addr=192.168.60.243,mgmt_addr=10.157.161.243,master_clock_rate=2e9,use_dpdk=1...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=10.157.161.243,type=x4xx,product=x440,serial=32C7660,name=ni-x4xx-32C7660,fpga=X4_1600,claimed=False,addr=192.168.60.243,master_clock_rate=2e9,use_dpdk=1
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=X4_1600,master_clock_rate=(2000000000.0, 
> 2000000000.0),mgmt_addr=10.157.161.243,name=ni-x4xx-32C7660,product=x440,use_dpdk=1,clock_source=internal,time_source=internal,initializing=True'.
>
> Using Device: Single USRP:
>
> Device: X400-Series Device
>
> Mboard 0: x440
>
> RX Channel: 0
>
> RX DSP: n/a
>
> RX Dboard: A
>
> RX Subdev: 0
>
> TX Channel: 0
>
> TX DSP: n/a
>
> TX Dboard: A
>
> TX Subdev: 0
>
> [00:00:03.670625969] Setting device timestamp to 0...
>
> [00:00:03.673117806] Testing receive rate 2000.000000 Msps on 1 channels
>
> Setting TX samples per packet (spp) to 1984
>
> Setting TX samples per burst (spb) to 1984
>
> [00:00:03.675296572] Testing transmit rate 2000.000000 Msps on 1 channels
>
> OUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUterminate 
> called after throwing an instance of 'uhd::op_timeout'
>
> what(): RfnocError: OpTimeout: Control operation timed out waiting for ACK
>
> Aborted (core dumped)
>
>
> What can be the issue here?
>
>
> Best,
>
> Peter
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
