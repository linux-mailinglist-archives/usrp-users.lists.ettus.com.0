Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A9E25E99
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2019 09:18:54 +0200 (CEST)
Received: from [::1] (port=39428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTLWM-0000SQ-2O; Wed, 22 May 2019 03:18:42 -0400
Received: from forward105p.mail.yandex.net ([77.88.28.108]:46914)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <ramazan.cetin@gohm.com.tr>)
 id 1hTLVo-0000O2-CV
 for usrp-users@lists.ettus.com; Wed, 22 May 2019 03:18:38 -0400
Received: from mxback12o.mail.yandex.net (mxback12o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::63])
 by forward105p.mail.yandex.net (Yandex) with ESMTP id 9E5784D40161;
 Wed, 22 May 2019 10:17:26 +0300 (MSK)
Received: from smtp1o.mail.yandex.net (smtp1o.mail.yandex.net
 [2a02:6b8:0:1a2d::25])
 by mxback12o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id Org8dDaCA2-HPdmsedk;
 Wed, 22 May 2019 10:17:26 +0300
Received: by smtp1o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 WCS2D5aPNu-HORaKKH1; Wed, 22 May 2019 10:17:24 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
To: Philip Balister <philip@balister.org>
References: <0104e380-0a7d-7fa6-acb0-105a97aef28b@gohm.com.tr>
 <855b8f3d-82d4-da13-0d6b-a0a133394bbd@balister.org>
 <CAHL+j08ae65mjteEWQwQpEPAinFzwjF0rJ8Fp1Oy8hZKV9=biQ@mail.gmail.com>
 <ad523e90-d470-9052-d224-aacb74e895d9@balister.org>
Message-ID: <1fd7cf58-f0d0-9e47-0310-48b5ef034f11@gohm.com.tr>
Date: Wed, 22 May 2019 10:17:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ad523e90-d470-9052-d224-aacb74e895d9@balister.org>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Connect Eth Phy to FPGA
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
Cc: usrp-users@lists.ettus.com, Ettus Research Support <support@ettus.com>
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

Thank you for your answers. Actually, we need to achieve this task.


This task should be performed in B210 (I guess, ethernet MAC is drived 
by FPGA in here). So, how can i start to this task ? Where can i find an 
example or some information to drive built-in ethernet MAC in FPGA ? It 
will be appreciated, if you can give a point to start.

Best regards.

On 21.05.2019 22:14, Philip Balister wrote:
> On 05/21/2019 02:56 PM, Sylvain Munaut wrote:
>> Hi,
>>
>> Yes, it's connected to the PS and not the PL.
>> _However_ ... you could just remove the ethernet driver from the linux
>> side, then drive the built-in ethernet mac from the FPGA by just
>> acting as an AXI master.
>>
>> None of this is trivial however ...
> But it is possible. I'd love to see someone try it.
>
> Philip
>
>>
>> Cheers,
>>
>>      Sylvain
>>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
