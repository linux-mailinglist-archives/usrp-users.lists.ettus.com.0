Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 078F2918B1
	for <lists+usrp-users@lfdr.de>; Sun, 18 Aug 2019 20:19:30 +0200 (CEST)
Received: from [::1] (port=32976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzPm3-0004hr-Qt; Sun, 18 Aug 2019 14:19:27 -0400
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85]:58828)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hzPm0-0004dl-OA
 for usrp-users@lists.ettus.com; Sun, 18 Aug 2019 14:19:24 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp19.relay.iad3a.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 3A6B737CF
 for <usrp-users@lists.ettus.com>; Sun, 18 Aug 2019 14:18:44 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Sun, 18 Aug 2019 14:18:44 -0400
To: usrp-users@lists.ettus.com
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
Message-ID: <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
Date: Sun, 18 Aug 2019 14:18:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5D576746.1010008@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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


On 8/16/19 10:32 PM, Marcus D. Leech via USRP-users wrote:
> On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:
>> I have a software application that interfaces to an X300 with a 
>> TwinRX daughterboard installed. We recently upgraded our UHD version 
>> to v3.14.1.0 in our application. Since then, we've observed that the 
>> time_spec values on consecutive blocks of data received from the unit 
>> (i.e. from two sequential calls to rx_streamer::recv()) are not 
>> consistent with one another. The timecodes reported by the unit seem 
>> to be moving forward at twice real time.
>>
>> As an example, assume that I have the X300 configured for a sample 
>> rate of 100 MSPS, and that I'm getting 1000 samples per call to 
>> recv() (these are just round numbers to simplify the discussion). I'm 
>> seeing metadata from consecutive recv() calls that look like this:
>>
>> Block 1:
>> - time_spec.get_whole_secs(): 0
>> - time_spec.get_frac_secs(): 0
>> - 1000 samples @ 100 MHz = 10 usec of data
>>
>> Block 2:
>> - time_spec.get_whole_secs(): 0
>> - time_spec.get_frac_secs(): 0.000020 (where I would have expected 
>> 0.000010 instead)
>> - 1000 samples @ 100 MHz = 10 usec of data
>>
>> ... and so on.
>>
>> If you watch the stream of timestamps received from the device, it 
>> looks like time is passing at twice the appropriate rate. I noticed 
>> this recent commit that seemed could be related:
>>
>> https://github.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd5ce4481041b 
>>
>>
>> If I revert that commit, then the timekeeping on the TwinRX channel 
>> works properly again. However, that isn't a fix that I can work with; 
>> I also use this hardware in a configuration where the X300 has a 
>> TwinRX and LFRX daughterboard installed simultaneously. Without the 
>> above commit, then I am unable to stream data from the LFRX; the 
>> rx_streamer never returns any data for that channel. I previously 
>> reported that problem 
>> (http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LFRX-under-UHD-v3-14-td12749.html) 
>> and never got an answer, but the above commit silently fixed it in 
>> v3.14.1.0.
>>
>> How can I get correct timekeeping with the X300/TwinRX, while 
>> maintaining my ability to stream from a TwinRX and LFRX simultaneously?
>>
>> Jason
>>
>>
> I THINK this is fixed in commit:
>
> f712d477b97e2ee7cca56d5afcf199f00959eb85
>
That commit is already included in v3.14.1.0 (and this code was later 
amended by commit 4eb12b031f9cad3df3e294db466bd26dee6b78e1, see 
https://github.com/EttusResearch/uhd/commit/4eb12b031f9cad3df3e294db466bd26dee6b78e1). 
So, I don't think that is a fix for this problem.

Jason


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
