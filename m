Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5815A3A5059
	for <lists+usrp-users@lfdr.de>; Sat, 12 Jun 2021 21:32:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E171B38406B
	for <lists+usrp-users@lfdr.de>; Sat, 12 Jun 2021 15:32:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="s7NSbF19";
	dkim-atps=neutral
Received: from outbound0.mail.transip.nl (outbound0.mail.transip.nl [149.210.149.69])
	by mm2.emwd.com (Postfix) with ESMTPS id D97E2383FBB
	for <usrp-users@lists.ettus.com>; Sat, 12 Jun 2021 15:31:11 -0400 (EDT)
Received: from submission8.mail.transip.nl (unknown [10.103.8.159])
	by outbound0.mail.transip.nl (Postfix) with ESMTP id 4G2SW23ZlGzxPLF
	for <usrp-users@lists.ettus.com>; Sat, 12 Jun 2021 21:31:10 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission8.mail.transip.nl (Postfix) with ESMTPSA id 4G2SW01VzTz2ZNg3
	for <usrp-users@lists.ettus.com>; Sat, 12 Jun 2021 21:31:05 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id C504A60379
	for <usrp-users@lists.ettus.com>; Sat, 12 Jun 2021 21:31:02 +0200 (CEST)
To: usrp-users@lists.ettus.com
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <7fc6799d-d4af-f60b-645c-e199109e6535@olifantasia.com>
Date: Sat, 12 Jun 2021 21:30:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission8.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1623526268; h=from:subject:to:date:
 mime-version:content-type;
 bh=1A+Okc2spjdYQaMQeG6FahIRCes5BJP7I+bZd4y3kxg=;
 b=s7NSbF19/SrkfsmFOQQuQYIr5Gzy5jZrNJk/jiAmP0pOr7RY5TcsIXl3hUoi9S7QD/cd1l
 DBO+Z24BiWhB1axM4AD754b0Tkz0KeMS3HBNEMRLUIjRb/VmNrT9NVOx6r6X2vosAwXslA
 P3E5jCiPXYV+h2DiwBop6763PzI1Sxi3Ge2UP2nlUp8AUTyyu+FtXUVHnPirdIJv5nODqW
 wVBeYtAY6wsLVD5QLX+fVE+lXEJs8Tp4/UiWHSYQDjJjrQaRSJlL6ZIWxQbkxx0RjnAmvV
 FRoltHtalomghucAWBNnnBNdPmuFIYxrh1G18ZlD0HnrGe+qFoVXvJ1acPKAgw==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: WAFNLMXMZJHIMVVNEWWDXQNSVTORG6ZW
X-Message-ID-Hash: WAFNLMXMZJHIMVVNEWWDXQNSVTORG6ZW
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to instantiate axi_ram_fifo (radio_2x64.yml) in E310. Or how to find out or add _device_ port names
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WAFNLMXMZJHIMVVNEWWDXQNSVTORG6ZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
Amongst others I am trying to add an RFNoc axi_ram_fifo using 
radio_2x64.yml to a E310 RFNoC image. But I am having a hard time to 
find out which port names to use for connections and clocks.

Apparently I am using the wrong port name for dram. Or I somehow have to 
add dram to the _device_
But I haven't found where all ports of _device_ are defined for each 
USRP. In which file is that?
Do I have to add a dram component to the verilog?
I saw that e320_core.v has dram defined. But I am still not sure where 
the dram portname is defined and how it corresponds to the dram_xxx 
wires in the verilog.

I added the following to my e310_rfnoc_image_core.yml file based on the 
examples I saw in e320 and x310 yml files.

noc_blocks:
   fifo0:
     block_desc: 'axi_ram_fifo_2x64.yml'
     parameters:
       # These parameters correspond to the memory interface on the E320
       MEM_ADDR_W:   31
       MEM_DATA_W:   64
       MEM_CLK_RATE: "300e6" #TODO MDVH check if this clockspeed is 
correct for E310 (copied from E320)
       # Create two non-overlapping 32 MB buffers by default
       FIFO_ADDR_BASE: "{31'h02000000, 31'h00000000}" #Are these 
addresses correct for E310 (copied from E320)
       FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF}"

connections:
   - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram  }

clk_domains:
   - { srcblk: _device_, srcport: dram,  dstblk: fifo0,  dstport: mem   }

When I try to build with rfnoc_image_builder I get the error
[ERR] 1 Unresolved connection(s)
[ERR]     (fifo0-axi_ram -> _device_-dram)
[INF]         (('radio0', 'ctrl_port', 'master'),)
[INF]         (('radio0', 'time_keeper', 'listener'),)
[INF]         (('radio0', 'x300_radio', 'slave'),)
[INF]         (('fifo0', 'axi_ram', 'master'),)
[INF]         (('_device_', 'ctrlport_radio', 'slave'),)
[INF]         (('_device_', 'time_keeper', 'broadcaster'),)
[INF]         (('_device_', 'x300_radio', 'master'),)


Here is the whole log:

rfnoc_image_builder -y 
e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one_in_n_moving_avg.yml 
-t E310_SG1 -F ../uhd40/fpga 2>&1 | tee 
rfnoc_image_builder_-y_e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one_in_n_moving_avg.yml_2021061201.log
[INF] Using FPGA directory /opt/uhd40/src/uhd40/fpga
[INF] Selected device e310
[INF] Using io_signatures.yml from /opt/uhd40/share/uhd/rfnoc/core.
[INF] Using e310_bsp.yml from /opt/uhd40/share/uhd/rfnoc/core.
[INF] Adding block description from addsub.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from axi_ram_fifo.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from axi_ram_fifo_2x64.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from axi_ram_fifo_4x64.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from ddc.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from duc.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from fft_1x64.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from fir_filter.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from fosphor.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from keep_one_in_n.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from logpwr.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from moving_avg.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from null_src_sink.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from radio.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from radio_1x64.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from radio_2x64.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from replay.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from siggen.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from split_stream.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from switchboard.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from vector_iir.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[INF] Adding block description from window.yml 
(/opt/uhd40/share/uhd/rfnoc/blocks).
[ERR] 1 Unresolved connection(s)
[ERR]     (fifo0-axi_ram -> _device_-dram)
[INF]         (('radio0', 'ctrl_port', 'master'),)
[INF]         (('radio0', 'time_keeper', 'listener'),)
[INF]         (('radio0', 'x300_radio', 'slave'),)
[INF]         (('fifo0', 'axi_ram', 'master'),)
[INF]         (('_device_', 'ctrlport_radio', 'slave'),)
[INF]         (('_device_', 'time_keeper', 'broadcaster'),)
[INF]         (('_device_', 'x300_radio', 'master'),)

Thanks in advance,

Martin
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
