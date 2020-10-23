Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 887382976E8
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 20:27:56 +0200 (CEST)
Received: from [::1] (port=40890 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW1n8-0000xM-3u; Fri, 23 Oct 2020 14:27:54 -0400
Received: from smtprelay0136.hostedemail.com ([216.40.44.136]:45778
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kW1n4-0000rE-Dw
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 14:27:50 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id A8E53180A9F3D;
 Fri, 23 Oct 2020 18:27:09 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:10:41:355:379:541:542:599:973:988:989:1155:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1587:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2731:3138:3139:3140:3141:3142:3353:3622:3743:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4362:5007:6261:7903:8527:10004:10394:10400:10848:11026:11232:11658:11914:12297:12555:12663:12760:12986:13069:13071:13311:13357:13439:13972:14096:14097:14180:14721:21060:21063:21080:21627:21740:21789:21990:30054:30079:30090,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: wound30_0917a462725b
X-Filterd-Recvd-Size: 2241
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Fri, 23 Oct 2020 18:27:08 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com>
In-Reply-To: <5F9308DC.3000306@gmail.com>
Date: Fri, 23 Oct 2020 19:27:07 +0100
Message-ID: <013101d6a96a$1e911360$5bb33a20$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIZdBMU+uKGerWsLVSD+8bla9t1CwLRZgzvqQlegRA=
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

>Everything at that level is determined entirely by the AD9361 RFFE
chip--although 
>there may be some settings that make things better.

It seems to make a difference if set_tx_bandwidth is called before or after
get_tx_stream.

In the example programs, they all seem to do it before, however, it appears
to work better afterwards. Please see the attached two programmes, which are
basically just your tx_samples_c program, except I've added in calls to
set_tx_bandwidth and set samples to 0.

I run with the args: -f 868300000 -g 89 -r 6000000

For lo_leakage_pre.c where bandwidth is set before get_tx_stream, carrier is
at -1dBm. For lo_leakage_post.c, where bandwidth is set to 56M before
get_tx_stream, then 6M afterwards, carrier is at -30dBm.

>Does the LO leakage have a strong frequency-dependent component? 

It doesn't appear to vary with frequency.

>I'd suggest getting yourself a copy of the full doc set for the AD9361
>-- ADI will provide them (not just the datasheet by other stuff) if
>   you "register" as a dev.

I'm reading this now, but I don't really know enough about UHD / FPGA
internals at the moment to know the order in which the various calibrations
are performed. I'd guess from the above, that the bandwidth may need to be
at a particular value for one of the calibration steps.

Thanks,
Jon



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
