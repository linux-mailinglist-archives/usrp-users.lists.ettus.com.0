Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3ED90A57
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2019 23:36:29 +0200 (CEST)
Received: from [::1] (port=50718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hyjtb-00044t-BZ; Fri, 16 Aug 2019 17:36:27 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:29106)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1hyjtW-0003wU-QM
 for usrp-users@lists.ettus.com; Fri, 16 Aug 2019 17:36:22 -0400
Received: (qmail 19281 invoked by uid 1003); 16 Aug 2019 21:35:43 -0000
Received: from unknown (HELO localhost.localdomain)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 16 Aug 2019 21:35:43 -0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <CAGBdiiZ1Kb_Ht5ZEe4qiF3Yk_=Sj7X9AgHu+9NUNVztNwczytA@mail.gmail.com>
 <5D5413B1.3050602@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <8f8e8834-6256-57ab-c3d2-a27b1e9b1ed6@balister.org>
Date: Fri, 16 Aug 2019 17:35:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5D5413B1.3050602@gmail.com>
Content-Language: en-MW
Subject: Re: [USRP-users] Interrupt Request on N310
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

On 8/14/19 9:59 AM, Marcus D. Leech via USRP-users wrote:
> On 08/14/2019 09:43 AM, Erivelton Castro via USRP-users wrote:
>> Hello,
>>
>> I need to implement interrupt request on linux, using the N310
>> hardware. There are some example on UHD? I need to read the I/Q Data
>> when to occur hardware even. I must to use interrupt request. The UHD
>> has support for it? Or I need to implement IRQ on linux embedded?
>>
>> Best Regards
>>
>> Erivelton.
>>
> If you need to directly respond to interrupts on Linux, you'll likely
> need to write a kernel-level device driver.


I did a really quick google for some things I recalled that are
deprecated now. Then came across this, if you aren't high performance,
this might help.

https://www.kernel.org/doc/html/v4.17/driver-api/gpio/consumer.html

Philip

> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
