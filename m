Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F22986285
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 15:02:02 +0200 (CEST)
Received: from [::1] (port=57976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvi3L-00033N-En; Thu, 08 Aug 2019 09:01:59 -0400
Received: from hal.g7iii.net ([64.22.109.39]:42968)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <iain@g7iii.net>) id 1hvi3H-0002TK-Mz
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 09:01:55 -0400
Received: from [192.168.39.76] (157.17.187.81.in-addr.arpa [81.187.17.157])
 by hal.g7iii.net (Postfix) with ESMTP id A7BB520A7D
 for <usrp-users@lists.ettus.com>; Thu,  8 Aug 2019 13:01:14 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <02568f52-a7b4-df86-101e-eaec26cfed9b@g7iii.net>
Date: Thu, 8 Aug 2019 14:01:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] RFX-2400 - Band Pass Filter
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
From: Iain Young via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Iain Young <iain@g7iii.net>
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

Hi Guys,

Another long shot from me, and yes, again it's hardware that's EOL
and "Not recommended for new designs", but it happens to be perfect
for my needs (a 13cm Amateur Radio Beacon if anyone is remotely
interested!)

Anyhow, I have the opportunity to acquire a RFX2400. I understand the
RFX2400 has a Band Pass filter that covers 2400 and 2483. Obviously
for 2320 this is unwanted, but I understand that it "can easily be
bypassed"

I can see it on the schematic. Looking at the schematic though, it
looks like this might need to be a hardware mod ? by cutting the
tracks that go from pin 3 of U202 to the SAW Filter ? Or shorting
pins 2 and 5 of the SAW filter ?

That said, Pin 5 of U202 suggests a software method might be available.
Anyone know for sure ? And if it's software, how, especially from within
GRC ? I'd really rather not have to start butchering things if at all
possible!


Thanks and Best Regards

Iain


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
