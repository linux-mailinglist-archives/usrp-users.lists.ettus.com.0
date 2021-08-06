Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 151203E2DD7
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 17:38:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDEFA383E8F
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 11:38:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="KoqB8+pq";
	dkim-atps=neutral
Received: from outbound5.mail.transip.nl (outbound5.mail.transip.nl [136.144.136.9])
	by mm2.emwd.com (Postfix) with ESMTPS id 615BC383EF2
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 11:37:22 -0400 (EDT)
Received: from submission3.mail.transip.nl (unknown [10.100.4.72])
	by outbound5.mail.transip.nl (Postfix) with ESMTP id 4Gh8js1Jm3zHCdd
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 17:37:21 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission3.mail.transip.nl (Postfix) with ESMTPSA id 4Gh8jr3tvnz43Tgc
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 17:37:20 +0200 (CEST)
Received: from [192.168.11.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 5DBEB607F6
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 17:37:20 +0200 (CEST)
To: USRP list <usrp-users@lists.ettus.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <8ef118c6-fddb-377e-6a7b-654bdf2a110e@olifantasia.com>
Date: Fri, 6 Aug 2021 17:37:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission3.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1628264240; h=from:subject:to:date:
 mime-version:content-type;
 bh=l8pjqkrLngOuNCYkj89WC+clfv3ttuf7ndqGRbDUxmw=;
 b=KoqB8+pqwc54B7PhVpAOSxyvwoUj4wFop99iUczgti6QC4xXj4ESq7bAufQ40LoPwQXcl0
 Z0+WbH/zQD4J7dARhsoYOR8UmXklY1GecjpCA/X/EggyOpuZ7dTOEmuYMqMOW8M5E1EtmB
 QO2i3cV7yV3cPjCobaOvoiIC4z2BNrs8VQbmwUQNTu8+I47hkgyQlVz8LZQPAeDWAZmZS1
 ib6AuAKfv/iqNaJhIUOLP+QePNhcEJco/aVUaet6Slv2Dd47q2rGahYhrsAQ7OfEdx0hXO
 pmQrPhwsPqGAxVlzATHJ6RnUK8CLbvS7Vs3/XuxzWqzipnaVRn+pOQDhk9jf2Q==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: GJSHGLQG5NCZSAQJYWY3KNHSGYEDLG77
X-Message-ID-Hash: GJSHGLQG5NCZSAQJYWY3KNHSGYEDLG77
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD source IO type sc16 is not accepted by any GRC block in gnuradio 3.8 (error source IO type "sc16" does not match sink IO type "short")
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJSHGLQG5NCZSAQJYWY3KNHSGYEDLG77/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
I used to be able to select output IO type "sc16" in a UHD source block.
And then connect it to anything that expects a vector of two shorts on 
its input.
For example a head block with type short and vectorsize 2.
Or a filesink with type short and vectorsize 2.

But with current gnuradio 3.8 I get this error when I connect a UHD 
source with output type sc16 to a block which expects a vector of two 
shorts on its input:

Source IO type "sc16" does not match sink IO type "short"

I could not find any block that accepts IOtype sc16 on its input inside grc.

Am I missing something obvious here?
How can I use complex short samples from a UHD source block?

Thanks and best regards,

Martin


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
