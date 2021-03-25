Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE716349915
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 19:08:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39D993843A1
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 14:08:00 -0400 (EDT)
Received: from web170.dnchosting.com (web170.dnchosting.com [199.7.105.170])
	by mm2.emwd.com (Postfix) with ESMTPS id A6236384040
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 14:07:07 -0400 (EDT)
Received: from [24.42.137.213] (port=47084 helo=[192.168.1.194])
	by web170.dnchosting.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <barry@dcsmail.net>)
	id 1lPUNn-0001NN-Fn; Thu, 25 Mar 2021 18:07:06 +0000
To: Ben Magistro <koncept1@gmail.com>
From: Barry Duggan <barry@dcsmail.net>
Message-ID: <60f5117b-0305-0ab6-1a25-edeedefb7dc9@dcsmail.net>
Date: Thu, 25 Mar 2021 13:06:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=1.6
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - web170.dnchosting.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dcsmail.net
X-Get-Message-Sender-Via: web170.dnchosting.com: authenticated_id: barry@dcsmail.net
X-Authenticated-Sender: web170.dnchosting.com: barry@dcsmail.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
Message-ID-Hash: YJ7X4L2PDSSZJITUCDUZTL2KRXTFXXFA
X-Message-ID-Hash: YJ7X4L2PDSSZJITUCDUZTL2KRXTFXXFA
X-MailFrom: barry@dcsmail.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Shared UHD Access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJ7X4L2PDSSZJITUCDUZTL2KRXTFXXFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Ben,

As I understand it, the UHD Source and Sink blocks must be in the same 
flowgraph. Otherwise, after you start one flowgraph, the other will say 
it can't find the device, or some similar error.

For how I solved the problem, see 
https://raw.githubusercontent.com/duggabe/gr-control/main/xmt_rcv_switch.grc

Feel free to ask questions.

Good luck,
-- 
Barry Duggan KV4FV
https://github.com/duggabe

On Thu, 25 Mar 2021 13:23:40 -0400, Ben Magistro <koncept1@gmail.com> wrote:

This might be more of a GNURadio question, but is it possible to share a
single USRP device (E310 in this case) with two flowgraphs?  What I mean is
the E310 has a "A" and "B" channel, could you use channel "A" with one
flowgraph and "B" with another or does everything have to be implemented in
a single flowgraph with the UHD sink/source configured to have two
channels?  I'm guessing the latter due to how UHD interacts with the
hardware.

Thanks!
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
