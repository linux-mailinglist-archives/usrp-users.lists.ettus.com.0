Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB852974CC
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 18:42:35 +0200 (CEST)
Received: from [::1] (port=40140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW098-0001yg-Bk; Fri, 23 Oct 2020 12:42:30 -0400
Received: from smtprelay0196.hostedemail.com ([216.40.44.196]:37458
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kW094-0001ro-VE
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 12:42:26 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2BDE81F1B
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 16:41:46 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:10:41:355:379:541:542:988:989:1155:1260:1277:1311:1313:1314:1345:1381:1437:1515:1516:1518:1534:1538:1567:1587:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2912:3138:3139:3140:3141:3142:3690:3865:3866:3867:3868:3871:3872:3874:4037:4184:4250:4362:5007:6261:6670:10004:10400:10848:11026:11658:11914:12296:12297:12760:13069:13071:13311:13357:13439:14180:21060:21080:21627:21990:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: thing37_47031d92725b
X-Filterd-Recvd-Size: 1092
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 16:41:45 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
Date: Fri, 23 Oct 2020 17:41:44 +0100
Message-ID: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdapWiI68MUt16TrRfC00jNE2UuWBQ==
Content-Language: en-gb
Subject: [USRP-users] B210 set_tx_bandwidth and LO leakage
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

Hi,

Would anyone please be able to explain the interaction between
set_tx_bandwidth and LO/carriage leakage for the B210? 

It seems that the device meets the spec of -50dBc if  tx_bandwidth is set to
a value greater than 10MHz or lower than 1MHz. However, at settings of
around 2 - 6MHz, with max gain and IQ being driven to zero, I measure the
carrier at around -1 to -2dBm!

Thanks,
Jon


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
