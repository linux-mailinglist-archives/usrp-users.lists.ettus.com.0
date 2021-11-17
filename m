Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8C1454D00
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 19:21:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B991F383E6F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 13:21:11 -0500 (EST)
Received: from mail.xtort.eu (mail.xtort.eu [176.9.105.145])
	by mm2.emwd.com (Postfix) with ESMTPS id 835B8383CF1
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 13:20:22 -0500 (EST)
Received: from [192.168.1.66] (i6DFAE125.versanet.de [109.250.225.37])
	by mail.xtort.eu (Postfix) with ESMTPSA id 089E6281000
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 19:20:20 +0100 (CET)
To: usrp-users@lists.ettus.com
References: <e19102d3-9da5-bdcc-2f97-671ad786f166@muc.ccc.de>
 <17bb316f-06e4-3e2f-1dff-056bb542b8a4@gmail.com>
From: schneider <schneider@muc.ccc.de>
Message-ID: <9cbb6aad-79fc-bf62-5700-3a5fb01c0939@muc.ccc.de>
Date: Wed, 17 Nov 2021 19:20:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <17bb316f-06e4-3e2f-1dff-056bb542b8a4@gmail.com>
Content-Language: en-US
Message-ID-Hash: 7KSCJ2X645DT4AINSQMFODLU5X5ET6ZP
X-Message-ID-Hash: 7KSCJ2X645DT4AINSQMFODLU5X5ET6ZP
X-MailFrom: schneider@muc.ccc.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gps_locked sensor indicating internal GPSDO lock too early
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KSCJ2X645DT4AINSQMFODLU5X5ET6ZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17.11.21 04:09, Marcus D. Leech wrote:

> Interesting, because the LC_XO module ALSO has a "lock_ok" pin, which is
> what I *thought* the drivers were looking at.

See
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/gps_ctrl.cpp#L382

> It could be the case that particular pin is ALSO not a reliable
> indication of TIME lock, and they moved to using GPGGA instead.

Maybe...

Apparently the Jackson Labs GPSDO also offers an option to modify the
meaning of that field in the GPGGA sentence, making it the same as the
field in the SERVO sentence. But even if that were the case, the code
still only looks for an != "0" result which is not accurate enough.

Best
schneider
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
