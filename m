Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EED17900
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 14:03:59 +0200 (CEST)
Received: from [::1] (port=60312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOLIh-0000qn-Ec; Wed, 08 May 2019 08:03:55 -0400
Received: from forward101o.mail.yandex.net ([37.140.190.181]:57071)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <ramazan.cetin@gohm.com.tr>)
 id 1hOLI9-0000i7-F6
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 08:03:51 -0400
Received: from mxback18j.mail.yandex.net (mxback18j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::94])
 by forward101o.mail.yandex.net (Yandex) with ESMTP id 706223C00D60;
 Wed,  8 May 2019 15:02:39 +0300 (MSK)
Received: from smtp4p.mail.yandex.net (smtp4p.mail.yandex.net
 [2a02:6b8:0:1402::15:6])
 by mxback18j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id vYsN4spBo7-2dB4PP3V;
 Wed, 08 May 2019 15:02:39 +0300
Received: by smtp4p.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 WbHWIdgKae-2comMc2r; Wed, 08 May 2019 15:02:38 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
To: Ettus Research Support <support@ettus.com>, usrp-users@lists.ettus.com
Message-ID: <49b1b11e-15ac-e733-6643-549679512c09@gohm.com.tr>
Date: Wed, 8 May 2019 15:02:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Running E310 in Network Mode
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
From: =?utf-8?q?Ramazan_=C3=87etin_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Ramazan_=c3=87etin?= <ramazan.cetin@gohm.com.tr>
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

We want to run USRP E310 in network mode. I think the samples coming 
from FPGA passing through CPU before sending to network. This decreases 
bandwidth because of CPU limitations.


So, is there any ettus image or suggestions that we can run E310 
directly from FPGA to network without speed limitations? (like N210 or B210)

Best regards.

Ramazan


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
