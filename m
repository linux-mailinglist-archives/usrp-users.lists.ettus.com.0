Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C0A3B917E
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 14:06:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1CEA384378
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 08:06:43 -0400 (EDT)
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by mm2.emwd.com (Postfix) with ESMTPS id B337E38434C
	for <usrp-users@lists.ettus.com>; Thu,  1 Jul 2021 08:05:49 -0400 (EDT)
Received: from fwd00.aul.t-online.de (fwd00.aul.t-online.de [172.20.26.147])
	by mailout10.t-online.de (Postfix) with SMTP id 2AB201A2B5
	for <usrp-users@lists.ettus.com>; Thu,  1 Jul 2021 14:05:48 +0200 (CEST)
Received: from [192.168.0.118] (GvA8ZoZrQh231-y9bVU-rjfuE86ev5XQd6+1VtSyNbcm4DUp0nSzLyFlSKjnmEoQRj@[94.31.101.120]) by fwd00.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1lyvRy-13PRHk0; Thu, 1 Jul 2021 14:05:46 +0200
To: usrp-users@lists.ettus.com
From: Maik Scholz <Scholz.Maik@t-online.de>
Message-ID: <dba7f7d3-dd6a-2698-6971-4a5b8a8454b5@t-online.de>
Date: Thu, 1 Jul 2021 14:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
X-ID: GvA8ZoZrQh231-y9bVU-rjfuE86ev5XQd6+1VtSyNbcm4DUp0nSzLyFlSKjnmEoQRj
X-TOI-EXPURGATEID: 150726::1625141146-00010D54-30CE8D3A/0/0 CLEAN NORMAL
X-TOI-MSGID: 095410ec-b78e-492b-86c7-f2f880b29fb4
Message-ID-Hash: ZBHI7M5YPXCKRV2MCXWBT4JA5VAREX5Y
X-Message-ID-Hash: ZBHI7M5YPXCKRV2MCXWBT4JA5VAREX5Y
X-MailFrom: Scholz.Maik@t-online.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem with own Windows UHD Application
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBHI7M5YPXCKRV2MCXWBT4JA5VAREX5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

i like to port my linux libUHD application to windows (using B205).

I am able to get that compiled, but i get many runtime exception on 
execution.

The precompiled example are working, so it is not a HW or driver problem.


Now, i am trying to compile the uhd probe example with MSVC2019 and i 
see similar

issues.


Could some body provide a tested MSVC, boost, libUHD version combination 
witch should work?

Is there a step by step howto compile some libUHD example code for windows?


Maik
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
