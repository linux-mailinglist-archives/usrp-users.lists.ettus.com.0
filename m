Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A50D523D766
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 09:36:12 +0200 (CEST)
Received: from [::1] (port=48802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3aRa-0004vt-Al; Thu, 06 Aug 2020 03:36:06 -0400
Received: from m15111.mail.126.com ([220.181.15.111]:50916)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <zzs213@126.com>) id 1k3aRW-0004qM-0j
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 03:36:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Message-ID:Date:MIME-Version; bh=akAQj
 KiQPe7b5O+qTPIX6wD9V/GTndJ6mwNJycVyRVI=; b=SaTva97z2QyxqZCP35F6g
 EZAIjTXGU4JbP5QqT5xhTtZxHPLtrERAqECP3zvshtlN4RyZZ1PAUIZqqVcX2qtj
 xy0E9apizYlmPdgbklGd5JgiwDcXQHc5yFa4kK3Vq7D5hpxSS01rFEdAdoV/D1CK
 mnLEZGwagZpnwVKsuqAYcc=
Received: from [192.168.0.12] (unknown [171.221.70.77])
 by smtp1 (Coremail) with SMTP id C8mowAB3flKqsitf5jA_IQ--.31547S2;
 Thu, 06 Aug 2020 15:35:08 +0800 (CST)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <e7dfc78b-1dd2-45ec-db84-a1759ae9fdaa@126.com>
Date: Thu, 6 Aug 2020 15:35:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-CM-TRANSID: C8mowAB3flKqsitf5jA_IQ--.31547S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUk7PEUUUUU
X-Originating-IP: [171.221.70.77]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiTwx4GVpEBOTFdAAAst
Subject: [USRP-users] how to build uhd manual locally
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

Hi, everyone:

I wan't just build uhd manual locally, But after perfore the flowwing command:

	cd uhd/host
	mkdir build
	cd build
	cmake ../
	make help

No target for manual found? So how to just build the manual(no use "make all")?

-- 
Best Regards,
zzs


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
