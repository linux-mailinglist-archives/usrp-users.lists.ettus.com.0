Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F985F31
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 12:03:44 +0200 (CEST)
Received: from [::1] (port=34152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvfGo-0003co-8z; Thu, 08 Aug 2019 06:03:42 -0400
Received: from ikarus.iap-kborn.de ([192.108.71.125]:56004)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <pfeffer@iap-kborn.de>)
 id 1hvfGk-0003T6-4e
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 06:03:38 -0400
Received: from herold.iap-kborn.de (herold [195.37.145.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ikarus.iap-kborn.de (Postfix) with ESMTPSA id 8324CE7EE80
 for <usrp-users@lists.ettus.com>; Thu,  8 Aug 2019 12:02:55 +0200 (CEST)
Received: from [192.168.5.80] ([192.168.5.80]) by r-mail.iap-kborn.de (Horde
 Framework) with HTTPS; Thu, 08 Aug 2019 12:02:55 +0200
Date: Thu, 08 Aug 2019 12:02:55 +0200
Message-ID: <20190808120255.Horde.nRQy1hoRGwVjGTrrjL8TcMH@r-mail.iap-kborn.de>
To: usrp-users@lists.ettus.com
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
Subject: [USRP-users] USRP N200 has sequence error only on transmission
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
From: Nico Pfeffer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nico Pfeffer <pfeffer@iap-kborn.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="Yes"
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

Hello,

For my current problem I also searched through the net and found this  
one here:

     
http://ettus.80997.x6.nabble.com/USRP-users-Sequence-Errors-N200-td13041.html

Somehow, after a lot of communicating and also adapting the steps  
recommended their, the problem was not solved. So maybe I start with  
explaining what my problem is and what I have done maybe wrong:



I'm observing strange behaviour on transmission with USRP N200 in  
combination with Daughterboards Basic-Tx and Basic-Rx. First I would  
like to share some basic information:

  Operating System : Ubuntu 18.04LTS (64bit)
  Kernel Version   : 4.15.0-55-generic
  GnuRadio         : 3.7.11
  UHD              : 003.010.003.000
  Network-Cards    : Realtek RTL8111/8168/8411 PCI Express Gigabit  
Ethernet Controller
                     Intel I219-LM


I was using the following commands for installing uhd and gnuradio:

  $ sudo apt install gnuradio
  $ sudo apt install uhd-host
  $ uhd_images_downloader


I'll start with the steps I've done so far:

   - using a USRP-N200 REV D (bought in 2016/17) (was working fine on  
Ubuntu 16.04 LTS, with same network cards)
   - upgraded my system to Ubuntu 18.04LTS
   - try using my USRP-N200 with this new operating system adn  
gnuradio (as expected, some compat_num problem)
   - then using the command listet by gnuradio console with the specified IP
   - when running the uhd_image_loader some happend during the  
process, because it was not able to
     verify the FPGA image
   - then reading the section of device recovery from ettus
   - I've done the S2 button safe-mode thing and the usrp was found  
with the default 192.168.10.2 ip address
     using uhd_find_devices
   - then I retried the uhd_image_loader and it does all steps without  
problems and I changed the ip
     also to another one "192.168.20.2" with usrp2_recovery.py
   - after using uhd_find_devices it appers with the new ip
   - now I was doing the following:

$ ./benchmark_rate --args="type=usrp2,addr=192.168.20.2" --tx_rate  
200e3 --rx_rate 200e3 --duration 60

linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown


Creating the usrp device with: type=usrp2,addr=192.168.20.2...
-- Opening a USRP2/N-Series device...
-- Current recv frame size: 1472 bytes
-- Current send frame size: 1472 bytes
Using Device: Single USRP:
   Device: USRP2 / N-Series Device
   Mboard 0: N200r4
   RX Channel: 0
     RX DSP: 0
     RX Dboard: A
     RX Subdev: BasicRX (AB)
   TX Channel: 0
     TX DSP: 0
     TX Dboard: A
     TX Subdev: BasicTX (AB)

Setting device timestamp to 0...
Testing receive rate 0.200000 Msps on 1 channels
Testing transmit rate 0.200000 Msps on 1 channels
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
Benchmark rate summary:
   Num received samples:    12002270
   Num dropped samples:     0
   Num overflows detected:  0
   Num transmitted samples: 12325665
   Num sequence errors:     115
   Num underflows detected: 0
   Num late commands:       0
   Num timeouts:            0


Done!


As you can see, I've used 200kHz for both sides which is nothing in  
sense to 5MHz I've used before with the same network card. I was also  
following the recommendation of net.core.wmem/rmem , user thread  
priority and ethtool -G options to increase the performances.



Best regards, Nico


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
