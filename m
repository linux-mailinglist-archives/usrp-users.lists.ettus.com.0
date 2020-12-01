Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C21D2CA4D3
	for <lists+usrp-users@lfdr.de>; Tue,  1 Dec 2020 15:03:55 +0100 (CET)
Received: from [::1] (port=59968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kk6G0-000113-AH; Tue, 01 Dec 2020 09:03:52 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:18016)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kk6Fw-0000wJ-TG
 for USRP-users@lists.ettus.com; Tue, 01 Dec 2020 09:03:48 -0500
Received: (qmail 24337 invoked by uid 1003); 1 Dec 2020 13:57:01 -0000
Received: from unknown (HELO ?10.10.51.195?) (philip@opensdr.com@96.82.14.169)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted)
 SMTP; 1 Dec 2020 13:57:01 -0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID: <3cbc0a74-911f-8424-a036-c17e59bf6ec4@balister.org>
Date: Tue, 1 Dec 2020 09:03:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Zeus build for E300
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
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

I am building the zeus branch of meta-ettus for the e3xx and had a
conflict applying the patch
0019-spi-cadence-Revert-cs-gpio-using-descriptors.patch to linux-yocto.
Dropping the patch leads to the kernel compiling. Hopefully someone from
NI can look into this. I did update the other layers to the latest zeus,
so I suspect more changes to linux-yocto that fix other problems.

Philip

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
