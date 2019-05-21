Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F002523A
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 16:33:25 +0200 (CEST)
Received: from [::1] (port=54432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT5pU-00086i-5R; Tue, 21 May 2019 10:33:24 -0400
Received: from forward105j.mail.yandex.net ([5.45.198.248]:59310)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <ramazan.cetin@gohm.com.tr>)
 id 1hT5ov-0007ww-Gq
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 10:33:19 -0400
Received: from mxback12j.mail.yandex.net (mxback12j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::87])
 by forward105j.mail.yandex.net (Yandex) with ESMTP id 0431CB21351;
 Tue, 21 May 2019 17:32:07 +0300 (MSK)
Received: from smtp1j.mail.yandex.net (smtp1j.mail.yandex.net
 [2a02:6b8:0:801::ab])
 by mxback12j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id p6LxgOWPyY-W6nqiU1s;
 Tue, 21 May 2019 17:32:06 +0300
Received: by smtp1j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 74XurZVAth-W58uTGmU; Tue, 21 May 2019 17:32:05 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
To: usrp-users@lists.ettus.com, Ettus Research Support <support@ettus.com>
Message-ID: <0104e380-0a7d-7fa6-acb0-105a97aef28b@gohm.com.tr>
Date: Tue, 21 May 2019 17:32:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Connect Eth Phy to FPGA
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

We want to use E310 as a peripheral network device like N210. We want 
the RF samples come to ethernet interface through FPGA without passing 
from CPU. In short, we don't want to use CPU. So, can we configure FPGA 
to achieve this task? (Connecting ethernet interface directly to FPGA)

Best regards.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
