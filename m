Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 596E51604B7
	for <lists+usrp-users@lfdr.de>; Sun, 16 Feb 2020 17:10:17 +0100 (CET)
Received: from [::1] (port=60518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j3MUk-0008FK-Ra; Sun, 16 Feb 2020 11:10:10 -0500
Received: from mordac.selfhost.de ([82.98.82.6]:51861
 helo=outgoing.selfhost.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Harald.Fritzsche@dd0vs.de>)
 id 1j3MUh-0008BP-KQ
 for USRP-users@lists.ettus.com; Sun, 16 Feb 2020 11:10:07 -0500
Received: (qmail 15105 invoked from network); 16 Feb 2020 16:09:25 -0000
Received: from unknown (HELO raspberrypi)
 (postmaster@tgzpzdss.mail.selfhost.de@92.117.244.17)
 by mailout.selfhost.de with ESMTPA; 16 Feb 2020 16:09:25 -0000
Received: from [92.117.244.17] (helo=dd0vs.de)
 by raspberrypi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <Harald.Fritzsche@dd0vs.de>)
 id 1j3MU0-0007xR-MD
 for USRP-users@lists.ettus.com; Sun, 16 Feb 2020 17:09:24 +0100
Date: Sun, 16 Feb 2020 17:09:20 +0100
To: USRP-users@lists.ettus.com
Message-ID: <20200216170920.7f8d8e5f@dd0vs.de>
Organization: DD0VS
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Subject: [USRP-users] B200mini GPIO - does not work as expected
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Harald Fritzsche \(DD0VS\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Harald Fritzsche \(DD0VS\)" <Harald.Fritzsche@dd0vs.de>
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

Hello All,

i am am using SoDaRadio on a Raspberry Pi4 with B200mini. Operation is
confirmed, but w/o GPIO because original software is not enabling the
use of GPIOs for B200mini.
Now i want to make use of the GPIOs to trigger switching a TX/RX relay.

I am sending this:

// GPIO PIN 1 is used for TX/RX Control manual (no ATR)
// GPIO PIN 2-4 are used for Band Setting manual (no ATR)
// -> 0x0F is the mask , 0x0 -> manual (0x1 = ATR)
usrp->set_gpio_attr("FP0", "CTRL", 0x000, 0x00F);  
// setting Data DiRection 0x1 = output
usrp->set_gpio_attr("FP0", "DDR", 0x1, 0x00F);
// reset GPIO pin 0,1,2,3
usrp->set_gpio_attr("FP0", "OUT", 0x000, 0x00F);

I would expect that GPIO pins 0,1,2,3 are set to 0V, but alle PIN are
high as after poweroff.

Need your help.

Regards vy73
Harald 
DD0VS

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
