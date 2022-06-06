Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3269C53F23E
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 00:47:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57E883808F7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 18:47:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654555648; bh=1oSG4PvHuyzAbEN6GVC7/ThOzYQzOGeXFI7MRiTcDTo=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nebwMeT7cbzPOjZrmbS2QIhAJ1HLbzXjwOVp5MDQC2S53JvJ5GmKEZ1TRnZDek7hU
	 1D9piqu91XtT6nW+xIxqlKWWPq+bcb7O85WYdj3t4H5XN2BGmYRrjQ5acQIRvcsIth
	 j88s89ZmSKFNINVGEiYOmnzmnsE+CiQAGMrYG9HP6UhYnwDbXeBFu+mDqqb85qT0Hd
	 S6sMKZLfhjWULL1tAuVaTSyfX6oLyoFj69EsLmNk/NAbRfBVHA9lnWOyHxhi6IeRah
	 2/sPW9+bJNtc88NlDWsTn7JZ9wxne8jEWQ/H6VNolaIzutv7x9cySPXb3xIuPd8MgE
	 dDdzNirWy8H4g==
Received: from relay3.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	by mm2.emwd.com (Postfix) with ESMTPS id 2CCDF383EF6
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 18:46:29 -0400 (EDT)
Received: from omf04.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id A48FC20D4C;
	Mon,  6 Jun 2022 22:46:28 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: jon@beniston.com) by omf04.hostedemail.com (Postfix) with ESMTPA id CC54620023;
	Mon,  6 Jun 2022 22:46:27 +0000 (UTC)
From: "Jon Beniston" <jon@beniston.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com> <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com> <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com> <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com> <0a9901d879cb$7bcb4270$7361c750$@beniston.com> <2379689d-7bac-b90c-9cc8-1ff25fac9e67@gmail.com>
In-Reply-To: <2379689d-7bac-b90c-9cc8-1ff25fac9e67@gmail.com>
Date: Mon, 6 Jun 2022 23:46:27 +0100
Message-ID: <0acc01d879f7$429da3e0$c7d8eba0$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI+YnAXmM94U0s+mLR5vjW3De6oVQIwXGJkAsE1bssB782kfQKg/W3GAbhrefmsHVJ6QA==
Content-Language: en-gb
X-Rspamd-Server: rspamout08
X-Rspamd-Queue-Id: CC54620023
X-Spam-Status: No, score=-0.08
X-Stat-Signature: moa6xctpr45tmynh5dg5zy8kcbsohbfi
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Session-ID: U2FsdGVkX1+rv7Qk5v99oMup2pxy3EJO0vAT/UpFx+Q=
X-HE-Tag: 1654555587-272872
Message-ID-Hash: VBG3NQP7DRMS6IIVTSY2TBP42LZSSVP2
X-Message-ID-Hash: VBG3NQP7DRMS6IIVTSY2TBP42LZSSVP2
X-MailFrom: jon@beniston.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VBG3NQP7DRMS6IIVTSY2TBP42LZSSVP2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Marcus,

>> If I just try to re-make the device, I get an exception. Eg:
>>
> >                 m_dev = uhd::usrp::multi_usrp::make(device_args);
> >                m_dev->set_master_clock_rate(61.44e6);
> >              // How to restart a session here?
>>                  m_dev = uhd::usrp::multi_usrp::make(device_args);
>>
>> ...

>However, there is a set_master_clock_rate() API call:
>
>https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a99254abfa5259b70a020e667eee619b9

Yes, that's what I'm calling above.

>What the consequences are for changing this within a session
> is necessarily device dependent.   If I were going to do this, I'd tear down the streamers, set the
>   master_clock to the new rate, and then re-create the streamers.

The problem is, that method doesn't appear to support an "automatic" rate, unless I'm missing something.

Thanks,
Jon



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
