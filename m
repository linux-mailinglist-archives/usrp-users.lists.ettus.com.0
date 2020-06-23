Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F7A205AFC
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 20:42:06 +0200 (CEST)
Received: from [::1] (port=53154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnnrv-0002nz-1I; Tue, 23 Jun 2020 14:42:03 -0400
Received: from web170.dnchosting.com ([199.7.105.170]:49908)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <barry@dcsmail.net>) id 1jnnrq-0002k2-4k
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 14:41:58 -0400
Received: from [24.96.180.121] (port=50658 helo=Barrys-Mac-mini.local)
 by web170.dnchosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <barry@dcsmail.net>)
 id 1jnnr4-0003zn-SJ; Tue, 23 Jun 2020 18:41:16 +0000
To: Ernest Poletaev <epoletaev@i-blades.com>
Cc: usrp-users@lists.ettus.com
Message-ID: <6b6478b2-e258-6d15-9c3a-2575189ffc5a@dcsmail.net>
Date: Tue, 23 Jun 2020 13:41:09 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - web170.dnchosting.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dcsmail.net
X-Get-Message-Sender-Via: web170.dnchosting.com: authenticated_id:
 barry@dcsmail.net
X-Authenticated-Sender: web170.dnchosting.com: barry@dcsmail.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
Subject: Re: [USRP-users] AM transmission
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
From: Barry Duggan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Barry Duggan <barry@dcsmail.net>
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

Ernest,

I recommend working through the 
https://wiki.gnuradio.org/index.php/Tutorials, and then when you get to 
the 
https://wiki.gnuradio.org/index.php/Simulation_example:_AM_transmitter_and_receiver 
you could adapt it to using your USRP in place of the ZMQ sockets.

If you need additional help, let me know. (I wrote the tutorial.)

-- 
Barry Duggan KV4FV

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
