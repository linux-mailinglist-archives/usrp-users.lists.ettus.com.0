Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF39376653
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 15:41:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D4AF380B96
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 09:41:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="TAiVUMY7";
	dkim-atps=neutral
Received: from outbound3.mail.transip.nl (outbound3.mail.transip.nl [136.144.136.12])
	by mm2.emwd.com (Postfix) with ESMTPS id DFCF6384291
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 09:40:50 -0400 (EDT)
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound3.mail.transip.nl (Postfix) with ESMTP id 4FcBRP41JHzvyKK
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 15:40:49 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission11.mail.transip.nl (Postfix) with ESMTPSA id 4FcBRM2cB8z2Bcnx
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 15:40:47 +0200 (CEST)
Received: from [192.168.10.104] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 3FAE660082
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 15:40:47 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <d97b3054-6673-0e3f-6348-bce35a18157e@olifantasia.com>
Date: Fri, 7 May 2021 15:40:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1620394847; h=from:subject:to:date:
 mime-version:content-type;
 bh=3kxVgqxTW537m8H5oUE40mGGTwmtpdbyy0+1kAqd+Kk=;
 b=TAiVUMY7Hzffn6hkC36HI+/+iCD6bL4NB07h3/uICvgZAlXx8dfdLCrznScpk5gEuT+25q
 T3scUwszpn/pEPsbDzXMpBzs4nv3eQbKIoGDRrtQ9scH5zh46SMw05MTOyaoVLt99IOo+1
 25TvziYnxvopTYwQxGnOiDvH+3+mQV6CtFiWqoTwdxS2p+KNya0lGuj14gMsyM2blQJXVL
 hBSF7ZQoKABtGNEsS+8bLox3R8omWoIRV8MLBwnjtq77HkvHQW0Sqfh6JHu1Wh68XKJhVE
 /mdxs8lzjm3Aey8z+Z7cd0mVoFqRKaPBLZYE1qUkvSP3L3ROgx10w5juyWwRHw==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: EVR5CV575GC2LHLQ5TGAT6FZR7TP7AKU
X-Message-ID-Hash: EVR5CV575GC2LHLQ5TGAT6FZR7TP7AKU
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVR5CV575GC2LHLQ5TGAT6FZR7TP7AKU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

Do you have experience with high bandwidth capture on E310 or E320?

We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual channel 
RX captures.
We want to capture into a circular buffer and after a certain signal 
signal level is observed set a time to stop capturing after 0.3 seconds. 
So we only use the last 0.3 second of captured data.

We are thinking of using a E320. This has a high speed SFP+ 10 gbit port.
Can it stream 2 channel 56 MSPS data to a host-PC continuously to a 
host-PC? Or is the ARM processor a bottleneck, like on the E310, which 
seems to be limited to max 16MSPS due to the limited arm processor speed.
And can it stream that fast with its default FPGA firmware image, so 
there would be no need for RFNoc work and expensive Vivado license.

And if we do need the Xilinx vivado license. Which version do we need?

Alternatively we could try to use the E310 which has a smaller FPGA that 
is supported by the free webpack of vivado.
Because it does not have a 10 gbit ethernet we would have to capture to 
memory.
I have read that the E310 arm processing is not able to keep up with 
more then 16 MSPS captures. So just streaming to the ARM memory in the 
E310 would not work.
But if we could someway capture to the 512 MB DDR ram on the FPGA side 
(use it as a circular buffer) and afterwards slowly move it to the arm 
and from there to the host-PC then that would be fine.

Alternatively I heard that high datarate (56 MSPS) capture on E310 is 
possible in some way using RFNoc. Is that true? How would that work.

It would help me a lot if you give me some hints or tell me about your 
experience of high bandwidth capturing on E3XX devices.. Even if you do 
not know all the answers.

With best regards,

Martin Dudok van Heel

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
