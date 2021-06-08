Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F30739F64D
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 14:20:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B11F3840AA
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 08:20:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="UDBjLRtu";
	dkim-atps=neutral
Received: from outbound4.mail.transip.nl (outbound4.mail.transip.nl [136.144.136.2])
	by mm2.emwd.com (Postfix) with ESMTPS id 22F12384026
	for <usrp-users@lists.ettus.com>; Tue,  8 Jun 2021 08:19:26 -0400 (EDT)
Received: from submission2.mail.transip.nl (unknown [10.100.4.71])
	by outbound4.mail.transip.nl (Postfix) with ESMTP id 4Fzq6h6v9Vz1Nmq
	for <usrp-users@lists.ettus.com>; Tue,  8 Jun 2021 14:19:24 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission2.mail.transip.nl (Postfix) with ESMTPSA id 4Fzq6g6P6fz18GcL
	for <usrp-users@lists.ettus.com>; Tue,  8 Jun 2021 14:19:23 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id B87A660079
	for <usrp-users@lists.ettus.com>; Tue,  8 Jun 2021 14:19:23 +0200 (CEST)
To: usrp-users@lists.ettus.com
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <d1b723d4-b17f-2867-6946-b9af04669187@olifantasia.com>
Date: Tue, 8 Jun 2021 14:19:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission2.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1623154763; h=from:subject:to:date:
 mime-version:content-type;
 bh=LY9qfpDlE0qi0vTwYAM2oqvLV6lm32aA1M/JJHUpfOo=;
 b=UDBjLRtuXMBRU0TH04V+yKhXx3l/rQn8J4Ycm+YdnpAr+UadbhaKixSn8OE24uT20EH0wJ
 DBzNiV9IC5dFZ4toGQAut8SYNp+TDui1AdmL7C3pS3hzTh5PkwKeuJqMClQmcJoL/TCYws
 9bzoxXN0E+y0FfCJ20Ub/E+6f8LkGCTERB8bZm22FAoKFMItPAFTbuj2F6taA6ET+GB7If
 tnsvFZGHoERBqJGoR2AN3U5o4VCOyiCACj2b1Aq4tRcrvRk0iV/d04QG2O/8WMf9CuuHaB
 LHm6dLy1qdKk00DLpP9tFpwiOsdQ9WqUxwqnuDiH0sBmJxNvP9FwssGC/ihYHA==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: FDTIDJZM47OHHEIW6N72DQU6EISRNAVR
X-Message-ID-Hash: FDTIDJZM47OHHEIW6N72DQU6EISRNAVR
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to re-add missing rfnoc blocks in gr-ettus for use with UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDTIDJZM47OHHEIW6N72DQU6EISRNAVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

Due to unsolved issues with uhd 3.15 on usrp E310 sg1 I am forced to use 
UHD 4.0

But many RFnoC blocks seems to be missing in gr-ettus in the 
main-3.8-uhd-4.0 branch.

If I look at the commit that modifies gr-ettus for use with UHD 4.0 it says:
====================================
https://github.com/EttusResearch/gr-ettus/commit/30640b73960d6d29e8366d46aab4ef5273217175#diff-07eb034ef7119f3142143792b6a91429ea645e3dd21cd48251d5332abf7486a2

This commit updates gr-ettus to support a subset of RFNoC features
present in UHD 4.0 with GNU Radio 3.8.

**PLEASE NOTE**: UHD 4.0 represents a radical change to the RFNoC
architecture, and as such, this commit represents a radical set of
changes to gr-ettus with many breaking changes, incomplete support for
the in-tree blocks in UHD 4.0, and removed examples and utilities. Over
time, expect support for the missing blocks, examples, and utilities to
be restored incrementally. Your mileage, as they say, may vary.
=====================================

Is there a guide or other info on how to re-implement blocks in gr-ettus 
for uhd 4.0?

Where do I start to look?

I want to use these RFnoC blocks.
dma_fifo
replay
logpwr
keep_one_in_n
moving_avg

Thanks in advance.

Martin

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
