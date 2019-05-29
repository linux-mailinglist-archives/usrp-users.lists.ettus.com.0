Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B00532E223
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2019 18:18:57 +0200 (CEST)
Received: from [::1] (port=52988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW1Hu-0006lC-Ax; Wed, 29 May 2019 12:18:50 -0400
Received: from smtp77.ord1c.emailsrvr.com ([108.166.43.77]:45526)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hW1Hq-0006gU-UQ
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 12:18:46 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp18.relay.ord1c.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 41E01E0395
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 12:18:06 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Wed, 29 May 2019 12:18:06 -0400
To: usrp-users@lists.ettus.com
Message-ID: <813cfe18-1c46-adf1-8a41-ecc536a1b907@3db-labs.com>
Date: Wed, 29 May 2019 12:18:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] X300 with TwinRX and LFRX under UHD v3.14
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

Some time back, I had an exchange on this list regarding how to 
configure an X300 to stream data from a TwinRX and LFRX daughterboard 
simultaneously. The previous thread is archived here:

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-February/051672.html

Specifically, I would like to synchronously stream both TwinRX channels 
at 100 MSPS complex, while streaming both LFRX channels as a single 100 
MSPS complex stream as well. To do that, I am:

- Creating three multi_usrp objects initialized with identical 
arguments, with the subdev specification "A:0 A:1 B:AB".

- Obtaining one rx_streamer object from each multi_usrp (passing a 
different channel number 0, 1, or 2 to each), then calling 
issue_stream_cmd() with stream_now = false and time_spec some time in 
the future (say 2 seconds away to ensure much more than enough time to 
finish setting up the stream). This should ensure that they all start 
streaming simultaneously so I get time-coincident samples

- Using the rx_streamer objects to receive data on each channel, use 
recv() to stream data in.

I have run this setup for over a year with no issues under UHD 
v3.10.3.0. I updated my application to use UHD v3.14.0.0 in order to get 
access to TwinRX bugfixes and more Ettus hardware support.

After the UHD upgrade, the above setup does not work. I do get data 
streaming from the 2 TwinRX channels at the desired rate, but I never 
get data from the LFRX. Instead, the first call to recv() in the thread 
that is reading the LFRX data returns ERROR_CODE_LATE_COMMAND, then the 
subsequent calls time out (I have the timeout set to 5 seconds).

Notably, if I set stream_now = true in the stream command, then I get 
data from all of the channels as expected at the desired rate. However, 
this method is incompatible with time alignment across channels, so it 
is not an option.

How can I get time-aligned streaming from TwinRX/LFRX working under UHD 
v3.14?

Thank you.

Jason


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
