Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2201F256C64
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 08:44:00 +0200 (CEST)
Received: from [::1] (port=40894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCH4H-0003DA-9D; Sun, 30 Aug 2020 02:43:57 -0400
Received: from m15112.mail.126.com ([220.181.15.112]:39865)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <zzs213@126.com>) id 1kCH4A-00037C-Oq
 for usrp-users@lists.ettus.com; Sun, 30 Aug 2020 02:43:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Message-ID:Date:MIME-Version; bh=QUi2m
 kD8Mt6Q66VuSrO58xuE10DsQcJKR73tePYLmPY=; b=k9wSEGFCRdI5dCFmoJ/S/
 5sEY3D5Cnfi3qW0e0X1fjk9S/zcwHSA+oE+qfoBr9s3vPG00LbZVzV3wHUaUuydb
 1v7FrWkrXa+uFMHH/oEN1TpIoUHMgSY+sc9v4uIzauR3WzzaI+jU2CE2rC68Z+sM
 fU+4E7dDdnb3BxfvfaR2xs=
Received: from [192.168.0.106] (unknown [117.173.226.247])
 by smtp2 (Coremail) with SMTP id DMmowACntvp0Sktf+YsbGw--.55751S2;
 Sun, 30 Aug 2020 14:43:01 +0800 (CST)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <c81b36ff-236a-9820-04ae-015b7cc99f89@126.com>
Date: Sun, 30 Aug 2020 14:42:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-CM-TRANSID: DMmowACntvp0Sktf+YsbGw--.55751S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU9nXODUUUU
X-Originating-IP: [117.173.226.247]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiTxaQGVpEBZ7dGQAAsR
Subject: [USRP-users] how to build firmware locally
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

When building filesystem for N310 using the flowwing command line
according https://github.com/EttusResearch/ettus-docker/tree/master/oe-build.

    ./meta-ettus/contrib/build_imgs_package.sh n3xx v3.15.0.0

It would download the flowwing firmware image files:

        n3xx_n300_fpga_default 
        n3xx_n310_fpga_default 
        n3xx_n320_fpga_default 
        n3xx_n310_cpld_default 
        n3xx_n320_cpld_default 

So, my question is :

    1. May I built them locally
    2. If I can, where are the source cods and ...
    3. How to build them

-- 
Best Regards,
zzs


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
