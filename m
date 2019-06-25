Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6819755405
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 18:09:06 +0200 (CEST)
Received: from [::1] (port=54924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hfo0E-0002iX-U0; Tue, 25 Jun 2019 12:09:02 -0400
Received: from smtp124.iad3a.emailsrvr.com ([173.203.187.124]:58290)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hfo0A-0002Uf-FW
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 12:08:58 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp32.relay.iad3a.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id D25DB57E2
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 12:08:17 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Tue, 25 Jun 2019 12:08:17 -0400
To: usrp-users@lists.ettus.com
References: <813cfe18-1c46-adf1-8a41-ecc536a1b907@3db-labs.com>
 <5CEEE458.5000905@gmail.com>
 <113E25E9-E689-45A3-8450-0FBDBB858BFE@3db-labs.com>
Message-ID: <339e908c-2332-4abe-b5b3-a435bac4057b@3db-labs.com>
Date: Tue, 25 Jun 2019 12:08:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <113E25E9-E689-45A3-8450-0FBDBB858BFE@3db-labs.com>
Content-Language: en-US
Subject: Re: [USRP-users] X300 with TwinRX and LFRX under UHD v3.14
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
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
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


On 5/29/19 10:39 PM, Jason Roehm via USRP-users wrote:
> On 5/29/19 3:58 PM, Marcus D. Leech via USRP-users wrote:
>> I'm a little bit surprised this worked AT ALL--you have 3 independent multi-usrp objects all pointing at the same hardware.
>>
>> Time alignment is something that is done WITHIN A SINGLE multi_usrp object.
>>
>> The right way to do this is to use a single multi_usrp object, with a multi-channel stream--that way the time-aligner within multi_usrp
>>    will take care of time alignment.
> I would tend to agree with you. I only arrived at the current setup by specific recommendation from an Ettus employee (see the thread I linked). Under v3.10.3.0, trying to use a single multi_usrp object with a TwinRX and LFRX simultaneously did not work; the library would complain about mismatching master clock rates.
>
> For what it's worth, I tried the same single multi_usrp approach again with v3.14.0.0 to see if anything had changed. I didn't get any complaint about mismatching clock rates, but I did see the same behavior that I complained about in my earlier message (no data from the LFRX, and a LATE_COMMAND error).
>
Bumping this thread since I haven't heard anything regarding this 
regression.

Jason


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
