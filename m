Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7D9213598
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 09:59:56 +0200 (CEST)
Received: from [::1] (port=42822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrGbv-000276-CO; Fri, 03 Jul 2020 03:59:51 -0400
Received: from smtpsalv.cc.upv.es ([158.42.249.11]:43812 helo=smtpsalv.upv.es)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <serpastu@iteam.upv.es>) id 1jrGbq-00021n-LU
 for usrp-users@lists.ettus.com; Fri, 03 Jul 2020 03:59:46 -0400
Received: from smtpx.upv.es (smtpxr.cc.upv.es [158.42.249.47])
 by smtpsalv.upv.es (8.14.7/8.14.7) with ESMTP id 0637x55h015956
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <usrp-users@lists.ettus.com>; Fri, 3 Jul 2020 09:59:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upv.es; s=default;
 t=1593763145; bh=hZFUPCwNxSdVIN7ndpFYs5J+i5b6lKbwD4SwhH7lyIc=;
 h=Date:From:To:Subject:From;
 b=X4+wsH7lJcbZ2grmj/eP4Qqa5dKU5+eCA7l8QRB7oS2XZn7rMJBnSiPPf0gpHyttX
 HxkSHzjzTkgnhqGx6zcIFcy64RIWxbvek4mmKM74RM3kUO27/Z5yPVzf06gi5pQYmD
 MmqFgF21v6/2c0ohSgIOjvUi2Y+6IiwDNItrIde6GqkNQps87ORgjJdikGQCi0jeXP
 J2apjnBQa1imrcZpL0tgBCjsCRNz/gK8SMMG+ixZ78zLjFNfTDjIuW2n9BgMVu7jPl
 +pJpDyFFOXNGJNsfIMA6mizwFoMzA4rI8iWUO833WpxdeqjRdE298QX0BfsD72tk2V
 rC6JWunu/tpOw==
Received: from smtp.upv.es (smtpv.cc.upv.es [158.42.249.16])
 by smtpx.upv.es (8.14.7/8.14.7) with ESMTP id 0637x4gi012478
 for <usrp-users@lists.ettus.com>; Fri, 3 Jul 2020 09:59:04 +0200
Received: from wm1.cc.upv.es (wm1.cc.upv.es [158.42.249.56])
 by smtp.upv.es (8.14.7/8.14.7) with ESMTP id 0637x4jd022422
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Fri, 3 Jul 2020 09:59:04 +0200
Received: from wm1.cc.upv.es (localhost [127.0.0.1])
 by wm1.cc.upv.es (8.14.7/8.14.7) with ESMTP id 0637x48x025713
 for <usrp-users@lists.ettus.com>; Fri, 3 Jul 2020 09:59:04 +0200
Received: (from apache@localhost)
 by wm1.cc.upv.es (8.14.7/8.14.7/Submit) id 0637x41Q025712
 for usrp-users@lists.ettus.com.; Fri, 3 Jul 2020 09:59:04 +0200
Received: from mcgserv5g-101.iteam.upv.es (mcgserv5g-101.iteam.upv.es
 [158.42.160.229]) by webmail.upv.es (Horde Framework) with HTTPS; Fri, 03
 Jul 2020 09:59:04 +0200
Date: Fri, 03 Jul 2020 09:59:04 +0200
Message-ID: <20200703095904.Horde.iAuX8M_LHMbOYWQ8OEr4SQt@webmail.upv.es>
To: usrp-users@lists.ettus.com
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
Subject: [USRP-users] USRP N321 GPIO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sergio Pastor Tur via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sergio Pastor Tur <serpastu@iteam.upv.es>
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


Hi!



We are deploying a 5G network using open source platform called  
"Openairinterface" (oai) and we have found a issue with oai code and  
usrp model. Specifically , we think the problem is caused because OAI  
uhd code tries to configure some GPIO pins in other to implement  
full-duplex transmission but, as you know, USRP N321 don't have GPIO  
interface. We need to use those pins to run gNB properly.



Are there any other ways to configure full-duplex mode without GPIO interface?



Please find additional information below.



Thank you in advance!

-- 

Sergio Pastor Tur

iTeam Research Institute



---------------------------------- Additional  
info---------------------------------------



Setup description:

Linux 18.04 64 bits running on Supermicro server 32 CPU Cores and 64 GB RAM)

USRP N321

UHD version: UHD_3.14.1.HEAD-0-g0347a6d8 (additional UHD and USRP info  
attached below)







---------------------------------- OAI UHD Code (full code attached  
below)---------------------------------------

/*! \brief Called to start the USRP transceiver. Return 0 if OK, < 0 if error
     @param device pointer to the device structure specific to the RF  
hardware target
*/
static int trx_usrp_start(openair0_device *device) {
   usrp_state_t *s = (usrp_state_t *)device->priv;

   // setup GPIO for TDD, GPIO(4) = ATR_RX
   //set data direction register (DDR) to output
   s->usrp->set_gpio_attr("FP0", "DDR", 0xfff, 0xfff);
   //set lower 7 bits to be controlled automatically by ATR (the rest  
5 bits are controlled manually)
   s->usrp->set_gpio_attr("FP0", "CTRL", 0x7f,0xfff);
   //set pins 4 (RX_TX_Switch) and 6 (Shutdown PA) to 1 when the radio  
is only receiving (ATR_RX)
   s->usrp->set_gpio_attr("FP0", "ATR_RX", (1<<4)|(1<<6), 0x7f);
   // set pin 5 (Shutdown LNA) to 1 when the radio is transmitting and  
receiveing (ATR_XX)
   // (we use full duplex here, because our RX is on all the time -  
this might need to change later)
   s->usrp->set_gpio_attr("FP0", "ATR_XX", (1<<5), 0x7f);
   // set the output pins to 0
   s->usrp->set_gpio_attr("FP0", "OUT", 7<<7, 0xf80);
----------------------------------------------------------------------------------------------------------------------------------------

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
