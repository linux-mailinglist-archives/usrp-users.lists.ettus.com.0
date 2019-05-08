Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AABC17558
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 11:44:01 +0200 (CEST)
Received: from [::1] (port=46426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOJ7C-0004eG-5m; Wed, 08 May 2019 05:43:54 -0400
Received: from mout2.fh-giessen.de ([212.201.18.46]:43672)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <Marwa.Boukhari@iem.thm.de>)
 id 1hOJ6d-0004Xs-5G
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 05:43:49 -0400
Received: from mx1.fh-giessen.de ([212.201.18.40])
 by mout2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <Marwa.Boukhari@iem.thm.de>)
 id 1hOJ5x-0005Rp-Ow
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 11:42:37 +0200
Received: from mailgate-3.its.fh-giessen.de ([212.201.18.34])
 by mx1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <Marwa.Boukhari@iem.thm.de>)
 id 1hOJ5x-007Cjy-L0
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 11:42:37 +0200
Received: from webmail.thm.de ([212.201.18.63])
 by mailgate-3.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <Marwa.Boukhari@iem.thm.de>) id 1hOJ5x-000Jog-EB
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 11:42:37 +0200
Received: from nat-hf.fh-friedberg.de ([212.201.29.92]) by webmail.thm.de
 with HTTP (HTTP/2.0 POST); Wed, 08 May 2019 11:42:37 +0200
MIME-Version: 1.0
Date: Wed, 08 May 2019 11:42:37 +0200
To: usrp-users@lists.ettus.com
Message-ID: <c60adc662b64d17b8d862d9557d4700c@iem.thm.de>
X-Sender: Marwa.Boukhari@iem.thm.de
User-Agent: Roundcube Webmail/1.3.8
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] how can i receive 2 different signals with the USRP
 B210
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
From: Marwa Boukhari via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marwa Boukhari <Marwa.Boukhari@iem.thm.de>
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
I want to send and receive a Signal  at the frequency 900MHz with the 
Channel 0 , and want to receive another Signal from the generator at the 
frequency 5,68GHz with the other channel.
I tried to realize this but it didn't work.
Has someone maybe an idea what's the problem is.

Thanks.

Marwa



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
