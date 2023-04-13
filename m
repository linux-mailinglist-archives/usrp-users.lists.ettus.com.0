Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 929926E17B2
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 00:52:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 819FF38439C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 18:52:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681426320; bh=dIwONlp7f3e4ZuGcSm8ffOnBL+s3nIhSQAehSaUxLys=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wrrykyV895NCa+G3sRGOQrwFwBKlYhZ5Mx+wNTwbzfkVwtJyFEGkI8Rxf9xcde5fr
	 vqW49g842tzrNv4ZOIV3LFzDfiQ/fT2z9XZv0W9FzBUgfQn5KYs8B5tnvmLrLREGzl
	 XmKgdoiK8VBL55Qvuz9C06t7YbE8OWf/Mt3NXFufNr8MEH0ZBVFJNvk4jEE2sU9Vwl
	 nep1sdXToC6PUsFgXMkubToBaAT50JCh9NfPnFJq+3uM0BkZovVP+ogPkcfQGIoXew
	 GMAbPHK2Pe8csU83bjgqOhoxGWVpa/Sqpe0kclC008JlkOApynPrNsw6WGFHFHF49Z
	 +S6lRVVoLPLGg==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EB47383680
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 18:51:30 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id D98752F80481
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 22:51:29 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 22:51:29 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 0ECB54D905; Thu, 13 Apr 2023 16:51:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID autolearn=no autolearn_force=no version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id B57314D905;
	Thu, 13 Apr 2023 16:51:28 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Thu, 13 Apr 2023 16:51:27 -0600
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,usrp-users@lists.ettus.com
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <6633af1b-5726-e020-83f4-24454739e486@gmail.com>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Message-Id: <20230413225129.0ECB54D905@mail.futurelabusa.com>
Message-ID-Hash: 6YKSTZECPGPKSCGUEJGW5WCZCUZ6DTXZ
X-Message-ID-Hash: 6YKSTZECPGPKSCGUEJGW5WCZCUZ6DTXZ
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection  - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6YKSTZECPGPKSCGUEJGW5WCZCUZ6DTXZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

N310 confirmed.

Linux native.

tx_samples_from_file produces underruns. So does a customized version of tx=
_samples_from_file that uses multiple buffers and threads to guarantee cons=
tant send pressure.

I understand that the N310 should not do this. I agree that the most likely=
 culprit is the host computer, coupled with inadequate buffering in the N31=
0. Does anyone know how much buffering it provides and what the associated =
timing is?  That is, what is maximum lag between UDP packets before the N31=
0 will experience an underrun condition?

In the Ubuntu host system log, there are messages during period in question=
 from NetworkManager. Nothing indicating a connection problem, but consiste=
nt with my general believe that NetworkManager is an evil abomination whose=
 primary job is to create trouble and frustration, we will remove it from t=
he workstation and try again.

Thanks!
Jim










At 03:32 PM 4/13/2023, Marcus D. Leech wrote:
>On 13/04/2023 17:02, Jim Schatzman wrote:
>>Even with all the recommended settings, and a very fast computer that is =
doing nothing except sending the data, it is maybe 50/50 that a 2 hour simu=
lation can be conducted without an underrun. The longest run I have been ab=
le to do without an underrun is about 2.5 hours.
>>
>>The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400 Mbit/sec.
>>
>>For our application, that is unacceptable. I need to be able to run for d=
ays without data loss.
>>
>>It is a mystery to me why a 10 Gbit connection cannot support 400 Mbit/se=
c UDP reliably.
>>
>>Any ideas about how we can completely eliminate underruns?
>>
>>At the moment, I am uncertain whether the problem is occurring on the hos=
t or on the radio. I suspect the radio, but I will do some testing of the h=
ost to see what UDP data rate it can support without loss.
>>
>>Thanks!
>With respect, it's unlikely to be the radio, per se (unless something is B=
ROKEN).=C2  Streaming is handled entirely by the
>=C2  FPGA machinery, and unlike a general-purpose computer, running a gene=
ral-purpose OS, performance is utterly
>=C2  deterministic.=C2  It doesn't have "other things" going on that might=
 preempt what it's doing, etc.
>
>I think you'd mentioned that the hardware involved is a USRP N310?=C2 =C2 =
=C2  While it does have a built-in LInux machine, since you're
>=C2  using it from another host, the=C2  Linux machine is basically uninvo=
lved in streaming, other than session set-up and tear-down
>=C2  via MPM.
>
>Check the logs on your host machine--does the network interface go up/down=
 during your streaming?=C2  If so, that could
>=C2  indicate a wiring problem.
>
>Are you running in a native hardware machine, or in a VM?=C2 =C2  Windows =
or Linux?
>
>If you simply use the "tx_waveforms" example at your desired sample rate, =
do you eventually get underruns or not?
>
>_______________________________________________ USRP-users mailing list --=
 usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leav=
e@lists.ettus.com </x-flowed>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
