Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC713F2D48
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 15:41:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F327383E91
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 09:41:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="AwSu7NaO";
	dkim-atps=neutral
Received: from outbound4.mail.transip.nl (outbound4.mail.transip.nl [136.144.136.2])
	by mm2.emwd.com (Postfix) with ESMTPS id D765D383DF5
	for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 09:40:19 -0400 (EDT)
Received: from submission10.mail.transip.nl (unknown [10.103.8.161])
	by outbound4.mail.transip.nl (Postfix) with ESMTP id 4GrjSL54QPzQshY
	for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 15:40:18 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission10.mail.transip.nl (Postfix) with ESMTPSA id 4GrjSK65h2z1gwm5
	for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 15:40:17 +0200 (CEST)
Received: from [192.168.11.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id B19AB601F0
	for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 15:40:17 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <99e42ac6-bf1a-8044-1025-32e3aace08be@olifantasia.com>
Date: Fri, 20 Aug 2021 15:40:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission10.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1629466817; h=from:subject:to:date:
 mime-version:content-type;
 bh=MiY/uYmQtfVGC3P7SaiwKXdKeAGqxcI2nIEuZ99pwh8=;
 b=AwSu7NaOaQY4rBPwLd7Wvk3U6o0yW9TefwrMtfIXxkPKVVGSzBzpxOV3t+8BuNWJYg8aKM
 QFVwfvhehfrG3iKDUtbSLPcZKjn+WExZopnFL3pRcfXVj9gu25JrvoGllxboicWkhdS+fp
 ZYkpqz0qUkH+gO4i7TrXQMX1axvB152TPiLCEK9ZaxXXWZnksjIqU4/ArEgIGn+19AW7jL
 Utc49aoY7hTlpdj4OBbJlQ6m+5m93ZGSBSrlmefA8sW3b+8Xn7560Bcgy3Uvlvq7R2a+EE
 4HiPMUdCtVLvgq4wCgmldcLCdTH28SzC/U3/rTW1gS0gmGG+894sMUC2YzwSKg==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: YRNSBGDFVCXJDLOVHFYWMDVC5F3QAK5J
X-Message-ID-Hash: YRNSBGDFVCXJDLOVHFYWMDVC5F3QAK5J
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 how use the E320 as ntp time server using its internal gpsdo as time source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YRNSBGDFVCXJDLOVHFYWMDVC5F3QAK5J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I am trying to setup the E320 so it will synchronise its time to the 
internal gpsdo and become a ntp time server.

But I have not been able to find much info. It seems to have been 
supported on E310 in 2015.

If I check the E320 OS time it seems to be about 0.2 seconds different 
from the usrp gps time. So it seems the host time is not synced to the 
gpsdo by default.

usrp_gps_time_now    =  2021-08-20 13:21:51.00443925 UTC
host_pc_time_now     =  2021-08-20 13:21:51.2055671215057373 UTC

Any hints/links on how to  install / configure ntp or chrony and gpsd so 
it uses the gpsdo as time source.

root@ni-e320-321D09C:/pub/tests# uname -a
ni-e320-321D09C: Linux ni-e320-321D09C 5.2.28-yocto-standard #1 SMP 
PREEMPT Mon Sep 14 02:08:15 UTC 2020 armv7l armv7l armv7l GNU/Linux

I hope to hear from you soon.

Thank you and best regards,
Martin
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
