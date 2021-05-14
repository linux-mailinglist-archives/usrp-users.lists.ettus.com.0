Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1932C381064
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 21:21:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01EAD383E16
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 15:21:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="TrHvZvLa";
	dkim-atps=neutral
Received: from outbound5.mail.transip.nl (outbound5.mail.transip.nl [136.144.136.9])
	by mm2.emwd.com (Postfix) with ESMTPS id BA2BD383D94
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 15:20:38 -0400 (EDT)
Received: from submission0.mail.transip.nl (unknown [10.100.4.69])
	by outbound5.mail.transip.nl (Postfix) with ESMTP id 4FhdfF3kDjzHCSY
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 21:20:37 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission0.mail.transip.nl (Postfix) with ESMTPSA id 4FhdfC2fZRz3qcPT
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 21:20:35 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 3230E6029C
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 21:20:35 +0200 (CEST)
To: usrp-users@lists.ettus.com
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com>
Date: Fri, 14 May 2021 21:20:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission0.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1621020035; h=from:subject:to:date:
 mime-version:content-type;
 bh=JORJxAjsr7y8aPARK1HWL6tD32sHTslrCzd4PvNvXRg=;
 b=TrHvZvLaJOTruQTKivRorvHX3QCXMSkGbF1xy/sAy2OsPKTK49udwXbqUCAqQaOGGILCGx
 4E0LPTd446PgrNa9AxlJMzj4Tu0l0PMZ7EcLxwH2fPKIxIOaJl9S4i9BKOmhGHW6unA1j4
 urE5nmCehw1HbCPuFmYSQyk+jYk8FlbPDG3XlePZ5LhEQ4sg0cmbM3PQj0Xb7byATo1ct9
 X5vd/N7+T4bvDBYEMiITnCzNLjYmxeQnMj23ogYKMW8wg3lp2wjoyXx8JgxAlkYrhaJU6/
 zadHsNxqC94/7leP+dxmsnhAATZPGHQuYJO01j9pDBIIIhMs9116rsf0k+wABA==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: OPYLHP6UILILXPXHCMDTGNRXBG3LSKCM
X-Message-ID-Hash: OPYLHP6UILILXPXHCMDTGNRXBG3LSKCM
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPYLHP6UILILXPXHCMDTGNRXBG3LSKCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I have an E310 sg1 which had an older sdimg on it (with uhd 3.9.2). UHD 
worked fine with this older image.

But now I updated the sdcard with the UHD 3.15.0.0 sd image for E310 sg1

usrp_e310_fs.sdimg from e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip

It boots fine but now it does not find its own uhd hardware

This is what I get when I run these commands on the device (through 
serial or ssh)

root@ni-e31x:~# uhd_usrp_probe --args "type=e300"
Error: LookupError: KeyError: No devices found for ----->
Device Address:
     type: e300

root@ni-e31x:~# uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; 
UHD_3.15.0.0-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
     serial:
     claimed: False
     mgmt_addr: 127.0.0.1
     product:
     reachable: No
     type:


What am I doing wrong here?

Should I use a different device address

I also tried -args "addr=127.0.0.1" But that of course does not work. 
(as expected)

Or maybe it has to do that this is an older sg1 usrp E310.
Does that work differently or maybe the sg1 image is less tested.

Please enlighten me.

Thanks in advance,

Martin Dudok van Heel
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
