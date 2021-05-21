Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6CD38CA67
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 17:49:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C5A3385634
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 11:49:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="ERyJRNNl";
	dkim-atps=neutral
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl [149.210.149.72])
	by mm2.emwd.com (Postfix) with ESMTPS id CA529385476
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 11:48:40 -0400 (EDT)
Received: from submission6.mail.transip.nl (unknown [10.103.8.157])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 4FmrcR3xPxzRj8L
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 17:48:39 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission6.mail.transip.nl (Postfix) with ESMTPSA id 4FmrcP0qWYz12LKN
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 17:48:37 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 0000A601F0
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 17:48:36 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <6a7c96ea-f5a9-1fe5-bf9b-af88439fd09d@olifantasia.com>
Date: Fri, 21 May 2021 17:48:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1621612118; h=from:subject:to:date:
 mime-version:content-type;
 bh=aeC+jbiN7Oh0FlZlGi7joSGXIm4dRntCE62bIDhPDEc=;
 b=ERyJRNNlRYKy6rQ382aaZb3PbS5RpittrswoieLnp5NA9Ov4Ce6wPSKYAQzXV19K/AnZZD
 mRrwO8BVovcwCgj4B0jaNLNaL+2Kl8Bo7M4XN0MFCeXysvUBphRtK0MPNbDSsPN/noXzsY
 zhPjaSJ2K1HACElqKYfscEz8/cDaFyU7CX+SCz+LvVRiEY3W5ojaR5t4eqzy/tLIg8/y/u
 9I4cf5F0UWGpEhgEvgArr4fJSbNxybEZT7POiN/f+g0sGu3SPB80IzW5oQG6EVdofkchot
 QvSZr8f2p47HB1/7viqM12LUTjtr6hEW6LeGdx/RZfYCbd8gXQSnw7cecUONrA==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: 2PTKZ7U2TG3WPSAXBNPCPLS5KQFDDA6M
X-Message-ID-Hash: 2PTKZ7U2TG3WPSAXBNPCPLS5KQFDDA6M
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] connect to NBASE5-T (5 gbit ethernet)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PTKZ7U2TG3WPSAXBNPCPLS5KQFDDA6M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I would like to connect a laptop to a USRP E320 or USRP X310 using the 
fastes possible connection.
Since there do not seem to exist any USB3 to 10 gbit ethernet converters

I would like to try to connect an USRP E320 with 5 Gbit ethernet (NBASE5-T)

For example with this SFP+ to RJ 45adapter, (10/5/2.5/1 gbit/s)
https://mikrotik.com/product/s_rj10

In combination with this USB3 to 5 GBE (NBASE5-t) adapter
https://www.qnap.com/en/product/qna-uc5g1t

Would that work?

Best regards,

Martin


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
