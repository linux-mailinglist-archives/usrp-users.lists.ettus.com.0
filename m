Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF779200707
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 12:44:10 +0200 (CEST)
Received: from [::1] (port=46796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jmEVD-0006eN-Kh; Fri, 19 Jun 2020 06:44:07 -0400
Received: from secgw2.intern.tuwien.ac.at ([128.130.30.72]:57274)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <david.haberleitner@tuwien.ac.at>)
 id 1jmEV9-0006Ym-VH
 for usrp-users@lists.ettus.com; Fri, 19 Jun 2020 06:44:04 -0400
Received: from totemomail (localhost [127.0.0.1])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 05JAhMUH008062
 for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2020 12:43:22 +0200
Received: from localhost ([127.0.0.1])
 by totemomail.intern.tuwien.ac.at (Totemo SMTP Server) with SMTP ID 227
 for <usrp-users@lists.ettus.com>;
 Fri, 19 Jun 2020 12:43:22 +0200 (CEST)
Received: from edge13b.intern.tuwien.ac.at (edge13b.intern.tuwien.ac.at
 [IPv6:2001:629:1005:30::67])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 05JAhL8i008046
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2020 12:43:21 +0200
Received: from mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) by
 edge13b.intern.tuwien.ac.at (2001:629:1005:30::67) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 19 Jun 2020 12:43:21 +0200
Received: from [128.131.194.226] (128.131.194.226) by
 mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 19 Jun 2020 12:43:21 +0200
To: <usrp-users@lists.ettus.com>
Message-ID: <411a30a8-ae68-5c0a-299b-ce730838acd7@tuwien.ac.at>
Date: Fri, 19 Jun 2020 12:43:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-ClientProxiedBy: mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) To
 mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61)
Subject: [USRP-users] Start/Stop streamers or limit 1GbE output rate on X310
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
From: David Haberleitner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Haberleitner <david.haberleitner@tuwien.ac.at>
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

Hi,

I'm trying to build a portable measurement setup for short signals using 
multiple X310 USRPs.
The samples on all channels are buffered in DMAFifos and streamed to the 
host after acquisition using a shared 1GbE link (the USRPs and the host 
are connected to a switch).

This approach works well if I only connect one USRP to the switch.
If I am using multiple USRPs, the switch of course drops packets because 
the downstream Gigabit connection can't keep up.

I thought of two possible fixes:
- Start and Stop the TX streamers on each USRP sequentially after 
acquisition (Only one USRP sends data at a time)
- Limit the output rate of the network controller to 1/N_usrps

Is any of this possible with UHD 3.15?

Thanks,
David

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
