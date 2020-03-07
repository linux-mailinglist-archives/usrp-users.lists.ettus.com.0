Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC6817D083
	for <lists+usrp-users@lfdr.de>; Sun,  8 Mar 2020 00:02:53 +0100 (CET)
Received: from [::1] (port=35096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jAiSy-0006H0-JC; Sat, 07 Mar 2020 18:02:44 -0500
Received: from mx091-2.az.pl ([46.242.148.250]:38124 helo=az0091.srv.az.pl)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <marek@dopiera.pl>) id 1jAiSu-0006Be-Ld
 for usrp-users@lists.ettus.com; Sat, 07 Mar 2020 18:02:40 -0500
Received: from host-89-231-106-199.dynamic.mm.pl ([89.231.106.199]:35472
 helo=[192.168.0.3])
 by az0091.srv.az.pl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <marek@dopiera.pl>) id 1jAiS9-0007O5-Bd
 for usrp-users@lists.ettus.com; Sun, 08 Mar 2020 00:01:58 +0100
To: usrp-users@lists.ettus.com
Autocrypt: addr=marek@dopiera.pl; prefer-encrypt=mutual; keydata=
 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
 nGOodXKGmNrfy7GOWvTh8lkGi+I=
Message-ID: <f106e414-8798-4f9d-465b-03ad4b4aa042@dopiera.pl>
Date: Sun, 8 Mar 2020 00:01:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=-0.6
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - az0091.srv.az.pl
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dopiera.pl
X-Get-Message-Sender-Via: az0091.srv.az.pl: authenticated_id:
 marek+dopiera.pl/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: az0091.srv.az.pl: marek@dopiera.pl
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [USRP-users] How to get to know when my buffer is sent?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marek Dopiera via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marek Dopiera <marek@dopiera.pl>
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
I would like to know when the buffer submitted via
uhd::tx_streamer::send() is actually sent. The reason I need this is to
keep some data outstanding not to starve the device, but make sure there
is as little of it as possible (a large backlog buffered somewhere
wouldn't allow me to change what I'm sending at the last moment, which
is my use-case).

I'm asking you for help, because I can't find a good way to do it.

So far, I've come up with these options:
1. Artificially chop the stream into contiguous bursts and use
tx_streamer::recv_async_msg returning EVENT_CODE_BURST_ACK to get to
know when data actually gets sent. I'm guessing it's unwise to rely on
contiguous bursts being sent together, though, right?

2. Use the system clock to estimate how much data is outstanding. I'm
guessing that clock drift will be my enemy here, so it will get tricky.

Neither of the options sounds like a good idea to me. Do you have any
ideas how to cope with it?

Thanks in advance.

-- 
Marek Dopiera
marek@dopiera.pl

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
