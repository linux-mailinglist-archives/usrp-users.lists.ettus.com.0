Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA166D214
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 18:36:39 +0200 (CEST)
Received: from [::1] (port=40488 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho9OX-0003qg-Nw; Thu, 18 Jul 2019 12:36:37 -0400
Received: from mailgw1.uni-kl.de ([131.246.120.220]:60641)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <weinand@eit.uni-kl.de>)
 id 1ho9NQ-0003hk-FO
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 12:35:28 -0400
Received: from postamt.eit.uni-kl.de (postamt.eit.uni-kl.de [131.246.73.100])
 by mailgw1.uni-kl.de (8.14.4/8.14.4/Debian-8+deb8u2) with ESMTP id
 x6IGYk5W096511
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 18:34:46 +0200
Received: from [131.246.109.56] (pcfun41.eit.uni-kl.de [131.246.109.56])
 (using TLSv1.2 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by postamt.eit.uni-kl.de (Postfix) with ESMTPS id 8FB95E1A71
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 18:34:46 +0200 (CEST)
To: usrp-users@lists.ettus.com
Message-ID: <3d28bc6e-1f89-f7dd-f507-7c1f65865c16@eit.uni-kl.de>
Date: Thu, 18 Jul 2019 18:34:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
X-Spam-Status: No, hits=-0.999, tests=ALL_TRUSTED=-1,URIBL_BLOCKED=0.001
X-Mailman-Approved-At: Thu, 18 Jul 2019 12:36:33 -0400
Subject: [USRP-users] USRP E312 configuration
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
From: Andreas Weinand via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andreas Weinand <weinand@eit.uni-kl.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

has someone already sucessfully made the E312 running using RFNOC 
scripts? like in the example in 
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source 


Unfortunately, i got the similar errors when following these 
instructions as reported here before (e.g. 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-March/056028.html 
). I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all 
ended in some errors like this earlier or later.

I am currently trying with Ubuntu 18.04., if anyone has a working setup, 
please let me know. Other OS are also fine for me.

BR

Andreas


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
