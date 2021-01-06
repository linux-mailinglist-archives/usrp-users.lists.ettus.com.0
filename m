Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A082EC209
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jan 2021 18:23:56 +0100 (CET)
Received: from [::1] (port=34056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxCXI-0007SK-St; Wed, 06 Jan 2021 12:23:52 -0500
Received: from web170.dnchosting.com ([199.7.105.170]:42670)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <barry@dcsmail.net>) id 1kxCXE-0007Nv-4y
 for usrp-users@lists.ettus.com; Wed, 06 Jan 2021 12:23:48 -0500
Received: from [24.42.137.213] (port=33588 helo=[192.168.1.194])
 by web170.dnchosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <barry@dcsmail.net>)
 id 1kxCWS-0007Zo-Br; Wed, 06 Jan 2021 17:23:06 +0000
To: Ron Economos <w6rz@comcast.net>
Cc: usrp-users@lists.ettus.com
Message-ID: <3e23eec0-0ae2-edbf-724f-78a03ac13f46@dcsmail.net>
Date: Wed, 6 Jan 2021 11:22:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=1.8
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
Subject: Re: [USRP-users] Transmit underruns
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

Thanks for your reply. Did you forget to give the link to the GRC file?

73,
---
Barry Duggan KV4FV
https://github.com/duggabe

On Tue, 5 Jan 2021 17:33:24 -0800, Ron Economos wrote:

Here's an ssb flow graph that's known to work. You can select the
sideband with the default option of the QT GUI Chooser block before you
start the flow graph (you can't change filter taps on the fly).

The test file is here.

http://www.w6rz.net/ssbaudio.wav

Ron

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
