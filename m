Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D3297EA5
	for <lists+usrp-users@lfdr.de>; Sat, 24 Oct 2020 23:10:43 +0200 (CEST)
Received: from [::1] (port=52056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kWQoC-00028q-5r; Sat, 24 Oct 2020 17:10:40 -0400
Received: from smtprelay0127.hostedemail.com ([216.40.44.127]:33908
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kWQo8-00023w-3k
 for usrp-users@lists.ettus.com; Sat, 24 Oct 2020 17:10:36 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 534D518224D65;
 Sat, 24 Oct 2020 21:09:55 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:10:41:355:379:541:542:599:988:989:1155:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1539:1587:1593:1594:1711:1730:1747:1777:1792:1981:2110:2194:2199:2393:2559:2562:2729:2895:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:4225:5007:6119:6261:7903:10004:10400:10848:11658:11914:12297:12760:13069:13071:13161:13229:13311:13357:13439:14180:21060:21063:21067:21080:21627:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: wood58_10045cd27265
X-Filterd-Recvd-Size: 1802
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Sat, 24 Oct 2020 21:09:54 +0000 (UTC)
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
 <5F932C22.60505@gmail.com> <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
 <5F932FEA.4010402@gmail.com> <013801d6a976$9626ab40$c27401c0$@beniston.com>
 <5F933834.8090101@gmail.com>
In-Reply-To: <5F933834.8090101@gmail.com>
Date: Sat, 24 Oct 2020 22:09:54 +0100
Message-ID: <016f01d6aa4a$06279ed0$1276dc70$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIZdBMU+uKGerWsLVSD+8bla9t1CwLRZgzvAgJ3jpoBMebOWwF+tI/1Ag024Z8CLSDJDgHGznilqLV7w/A=
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

>The documentation probably needs to be updated, but also the examples.  
>The examples are necessarily fairly generic, and they often reflect the
"thinking" 
>at the time the example was created--with whatever hardware existed at the
time the 
>example was created.

Ok, thanks.

I've just noticed one other scenario in which the problem can also appear:

If while transmitting successfully, I try to get an rx stream, having set
the rx bandwidth to around 5MHz beforehand, then the same problem with the
transmitter can be observed. Again, only setting the desired rx bandwidth
after getting the rx stream seems to help.

Cheers,
Jon



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
