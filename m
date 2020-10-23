Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B372977C7
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 21:30:36 +0200 (CEST)
Received: from [::1] (port=41418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW2ll-0005XT-IV; Fri, 23 Oct 2020 15:30:33 -0400
Received: from smtprelay0122.hostedemail.com ([216.40.44.122]:59644
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kW2lh-0005Qq-30
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 15:30:29 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 1DD89180A7FDB;
 Fri, 23 Oct 2020 19:29:48 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:10:41:355:379:541:542:599:973:988:989:1042:1155:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1587:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2693:2731:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4078:4081:4250:4321:4362:5007:6261:7903:8660:9036:10004:10394:10400:10848:11026:11232:11658:11914:12296:12297:12555:12663:12760:12986:13069:13071:13148:13161:13229:13230:13311:13357:13439:14096:14097:14180:14721:21060:21063:21080:21627:21740:21772:21789:21939:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:6, LUA_SUMMARY:none
X-HE-Tag: drug16_6302be52725c
X-Filterd-Recvd-Size: 2552
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Fri, 23 Oct 2020 19:29:47 +0000 (UTC)
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
 <5F932C22.60505@gmail.com>
In-Reply-To: <5F932C22.60505@gmail.com>
Date: Fri, 23 Oct 2020 20:29:46 +0100
Message-ID: <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIZdBMU+uKGerWsLVSD+8bla9t1CwLRZgzvAgJ3jpoBMebOW6jvzMIQ
Content-Language: en-gb
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
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
From: Jon Beniston via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jon Beniston <jon@beniston.com>
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

Hi Marcus,

>> It seems to make a difference if set_tx_bandwidth is called before or 
>> after get_tx_stream.
>>
>> In the example programs, they all seem to do it before, however, it 
>> appears to work better afterwards. Please see the attached two 
>> programmes, which are basically just your tx_samples_c program, except 
>> I've added in calls to set_tx_bandwidth and set samples to 0.
>>
>> I run with the args: -f 868300000 -g 89 -r 6000000
>>
>> For lo_leakage_pre.c where bandwidth is set before get_tx_stream, 
>> carrier is at -1dBm. For lo_leakage_post.c, where bandwidth is set to 
>> 56M before get_tx_stream, then 6M afterwards, carrier is at -30dBm.
>>
>>
>Yup, so the default behavior in UHD for B2xx is to set the analog bandwidth
>  to be commensurate with sample-rate, and that is done inside the
> parts of UHD that set sample rate--sample-rate setting is done before
>   you create a stream.
>
>So a set-bandwidth call will only have an effect *after* the sample-rates
are
>  established.

Sorry, but I don't follow. The order in the example programs is:

set_tx_rate
set_tx_freq
set_tx_bandwidth
get_tx_stream

So bandwidth is set after tx_rate, but before getting the tx_stream.
However, this seems to result in large LO leakage on my B210.

What seems to work better, is:

set_tx_rate
set_tx_freq
set_tx_bandwidth(56e6)
get_tx_stream
set_tx_bandwidth(desired)

Does that make sense to you?

The software I'm working on should ideally work with any USRP device, so how
can it be written to support all devices?

Thanks,
Jon



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
