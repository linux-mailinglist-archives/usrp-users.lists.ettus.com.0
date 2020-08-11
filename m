Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F04241AE6
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 14:21:39 +0200 (CEST)
Received: from [::1] (port=48708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5THb-0006wD-Q0; Tue, 11 Aug 2020 08:21:35 -0400
Received: from smtprelay0089.hostedemail.com ([216.40.44.89]:43648
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1k5THY-0006nR-3g
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 08:21:32 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 839BB100E7B65
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 12:20:51 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:10:41:355:379:541:542:988:989:1042:1155:1260:1277:1311:1313:1314:1345:1381:1437:1515:1516:1518:1534:1539:1587:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2689:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:3870:3871:3872:4037:4184:4250:4321:4362:5007:6119:6261:6670:7903:8957:10004:10400:10848:11026:11658:11914:12297:12555:12760:12895:13069:13071:13161:13229:13311:13357:13439:14180:21060:21063:21080:21099:21627:21772:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: silk47_1c13c4f26fe2
X-Filterd-Recvd-Size: 1376
Received: from jonpc (cpc97974-croy24-2-0-cust112.19-2.cable.virginm.net
 [77.99.44.113]) (Authenticated sender: jon@beniston.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 12:20:50 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
Date: Tue, 11 Aug 2020 13:20:50 +0100
Message-ID: <015901d66fd9$db045950$910d0bf0$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdZv1qYCe4Uu1xcgSZCz4ox7zSc6VA==
Content-Language: en-gb
Subject: [USRP-users] B210 noise floor
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

At 436MHz with a gain setting of 76dB, NF of 5dB, BW of 2MHz, I expect the
noise floor of the B210 to be around -174+5+10*log10(2e6)=-105dBm

When I run the SDR Console software, this is what it appears to be. If I
feed in a 1MHz wide AWGN noise source at -100dBm, it can be seen 5dB about
the floor.

However, when I try to capture the same data using the MatLab USRP interface
or the rx_samples_to_file program (with same gain and sample rate), the
noise floor seems to be at around -90dBm.

(E.g: rx_samples_to_file.exe --duration 1 --rate 2000000 --freq 436e6 --gain
76)

Any idea why this might be? Possibly something silly, but I can't seem to
figure out what.

Thanks,
Jon



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
