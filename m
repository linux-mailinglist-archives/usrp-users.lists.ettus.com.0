Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2341B25BBB0
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 09:30:07 +0200 (CEST)
Received: from [::1] (port=51736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDjh7-0002S0-Th; Thu, 03 Sep 2020 03:30:05 -0400
Received: from smtp.eurecom.fr ([193.55.113.210]:46655)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <cedric.roux@eurecom.fr>) id 1kDjh4-0002Ly-0d
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 03:30:02 -0400
X-IronPort-AV: E=Sophos;i="5.76,385,1592863200"; 
   d="scan'208";a="1240278"
Received: from waha.eurecom.fr (HELO smtps.eurecom.fr) ([10.3.2.236])
 by drago1i.eurecom.fr with ESMTP; 03 Sep 2020 09:29:21 +0200
Received: from [172.24.10.173] (unknown [172.24.10.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtps.eurecom.fr (Postfix) with ESMTPSA id 0C472131;
 Thu,  3 Sep 2020 09:29:20 +0200 (CEST)
To: Venkatesh Sathyanarayanan <vesathya@eng.ucsd.edu>,
 usrp-users@lists.ettus.com
Cc: Ankush Jolly <ajolly@eng.ucsd.edu>
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
 <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
Message-ID: <fd998121-4494-a528-71ac-0b12a52f8311@eurecom.fr>
Date: Thu, 3 Sep 2020 09:29:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Link going up and down periodically every 45
 seconds on USRP N310
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
From: Cedric Roux via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cedric Roux <cedric.roux@eurecom.fr>
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

maybe network manager (if you have that thing running) on the
computer doing funny things with the interface? I had this
issue with some 4g dongles in the past.

On 2020-09-03 01:01, Venkatesh Sathyanarayanan via USRP-users wrote:
> Hi,
> 
> Small correction:
> 
> *Questions:*
> I notice that the test stops when the link goes down every 45 seconds. 
> This happens for all types of tests(with and without GUI).
> Kindly let me know how to debug this - i.e. why the link goes down every 
> 45 seconds?
> 
> Regards
> Venkatesh
> 
> On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan 
> <vesathya@eng.ucsd.edu <mailto:vesathya@eng.ucsd.edu>> wrote:
> 
>     Hi,
> 
> 
>     *Setup details:*
>     I am using an USRP N310 and I have the host computer connected to
>     the USRP via SFP cable. I additionally have a serial connection
>     between the two and have a screen session running.
> 
>     *Observation:*
>     On the screen session, I noticed the following messages:
>     [ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     [ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
>     [ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up -
>     10Gbps/Full - flow control off
>     ..........................................................................................................................................................................
>     ..........................................................................................................................................................................
> 
>     ..........................................................................................................................................................................
>     ..........................................................................................................................................................................
> 
>     *Questions:*
>     When I have a GNU radio GRC running with an active GUI displaying
>     the spectrum, I see that it halts at the time when the link goes down.
>     When I run a file with no GUI active - say IQ samples saved to a
>     file, things running in the background and I do not see any
>     interruption.
> 
>      1. Kindly let me know why I am seeing this issue of link going down
>         every 45 seconds and
>      2. also if this could potentially affect my tests (all my tests are
>         without any GUI.)
> 
> 
>     Regards
>     Venkatesh
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
