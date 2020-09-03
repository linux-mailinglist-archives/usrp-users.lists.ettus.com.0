Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCED25B7B8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 02:48:37 +0200 (CEST)
Received: from [::1] (port=48792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDdQY-000892-Ge; Wed, 02 Sep 2020 20:48:34 -0400
Received: from m15114.mail.126.com ([220.181.15.114]:57755)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <zzs213@126.com>) id 1kDdQU-0007zz-Ce
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 20:48:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Message-ID:Date:MIME-Version; bh=E8T/C
 L/QgDbKTFlO8spBTRjDZkq2x/CxWIOcOQRzDts=; b=m9ydXJHmK9fwWgvW4cNPd
 E/3W4/LfPdCzjp3EM58Oppp41UuOpMq2dljXoNbW75ktTzf2sqbkAUAKUb73L2+s
 ebFw1WgGdvxp250tkD50nDtyUid5BG3RiY6j4b6+xkH/AIPEQciS71G4Tmw3ZeyN
 OhQbRi6ZX242kLFmodEQp4=
Received: from [192.168.0.12] (unknown [171.217.135.147])
 by smtp7 (Coremail) with SMTP id DsmowAD3MXQvPVBffiaNIw--.1173S2;
 Thu, 03 Sep 2020 08:47:45 +0800 (CST)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <185d01da-97ee-91a4-33c1-d338d39ef440@126.com>
Date: Thu, 3 Sep 2020 08:47:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-CM-TRANSID: DsmowAD3MXQvPVBffiaNIw--.1173S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUk2YLDUUUU
X-Originating-IP: [171.217.135.147]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiZh2UGVpD-NtevAAAsq
Subject: [USRP-users] cpld source code on UBX-160
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
From: =?utf-8?b?5byg5b+g5bGxIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
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

There is a cpld (U38 epm570) on daughter board ubx-160. But I can't found the source code for it.
Does it close source ? If not, Where are the souce code ?

-- 
Best Regards,
zzs


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
