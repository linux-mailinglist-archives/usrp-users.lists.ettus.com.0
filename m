Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F5A992E0
	for <lists+usrp-users@lfdr.de>; Thu, 22 Aug 2019 14:08:47 +0200 (CEST)
Received: from [::1] (port=46288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i0ltU-0000n5-Pb; Thu, 22 Aug 2019 08:08:44 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:37162
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1i0ltQ-0000jI-FK
 for usrp-users@lists.ettus.com; Thu, 22 Aug 2019 08:08:40 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x7MC7wmw003870
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Thu, 22 Aug 2019 14:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1566475678;
 bh=ak0C0QlCp/5jvix8hRAq5sZ4VkFJvTMCM+4ycjBaVY8=;
 h=Date:Subject:From:To:Reply-To;
 b=sMNyP9EAAAj7EXFh0wOdUKiXehAtbs+4KAqrJO1gXS/YJnEe18Ats4QYYWCNQ+E9s
 bqwLzVQRxZZ4/JpxKVAtSg5aZeZJ01dgYxew02Vr0EjbZoeX+MgAsVA9dAzgCvHpbd
 y6947Vcc9Ga9STotA/WNxwdMocgFYSJfi4umjREc=
Received: from 129.217.182.66 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 22 Aug 2019 14:07:59 +0200
Message-ID: <81725364cde56f9dcaffc22a82fdab57.squirrel@webmail.tu-dortmund.de>
Date: Thu, 22 Aug 2019 14:07:59 +0200
To: usrp-users@lists.ettus.com
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: [USRP-users] Solution | Resetting Duplicate IP-Adress in eeprom
 USRP x310
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
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
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

Hello together,

recently i wanted to change the IP-Adress of my USRP device, because i
wanted to connect two USRP x310 to the same host computer. I followed the
instructions at the uhd-manual to change the device IP:

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_setup_change_ip

and changed my ip-addr3 to 192.168.xx.2 WHICH YOU SHALL NEVER DO!! The
reason for this is that this ip-adress (xx=30 in this case) already
existed as the default address for ip-addr2 in my device - and a lot of
other devices to.

After this command, i could not use the usrp_burn_mb_eeprom script
(described in the manual) anymore, because the script seemed to struggle
with duplicate IP-Adresses. Also uhd_usrp_probe failed now with a similar
warning and Error:
This means i could not simply reset my ip-addr3 to solve my problem.

.
.
[WARNING] [X300] Duplicate IP address 192.168.30.2 found in mboard EEPROM.
Device may not function properly. View and reprogram the values using the
usrp_burn_mb_eeprom utility.
.
.
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = (uhd::endianness_t)0]
  at /home/tst/uhd/host/lib/rfnoc/ctrl_iface.cpp:60
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_00_Port_30) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t =
long unsigned int]
  at /home/tst/uhd/host/lib/rfnoc/ctrl_iface.cpp:154

Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no response
packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t =
long unsigned int]
  at /home/tst/uhd/host/lib/rfnoc/ctrl_iface.cpp:154
.
.

My solution was, (WITHOUT WARRANTY for your similar problem) to load a new
HG-image to the usrp device, because the uhd_image_loader was still
working. After that i unplugged my 10Gig cable in port 1 in the rear of
the USRP device and connect the USRP to the host PC using Port 0 and 1-Gig
ethernet. My goal was to address ip-addr0, because in my case this one was
not duplicated.

Here you can see the default ip's of the device which helped me to figure
out what to do:
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_setup_network_host_interface

Now i had to change the ip-address of the host pc (by this i mean the port
you connected the usrp to) to address the device through address 0. Try
ping <yourAddr>
to see whether you can communicate with the device or not.

In my case i was now connected to the device through ip-addr0,
uhd_usrp_probe worked again and i could also (CAREFULLY) use the
usrp_burn_mb_eeprom script to change back the ip-addr3 to one that not
already existed for another key.

I am posting this, because i read that others had struggle with similiar
problems too and i did not find helpful answers. For example:

Duplicate ip addr issue X310
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-March/052066.html

Reset EEPROM IP Addressess x310
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-September/026528.html

In their cases they changed multiple IP addresses at once and i am pretty
sure that my solution does not work for this problem. Either way, maybe
someone in the future accidently also duplicates a single ip-address from
the USRP and struggles to get the device back to a working stage and finds
this helpful.

Best regards

Felix






_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
