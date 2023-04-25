Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 919006EEA6A
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 00:51:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E68F3384927
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 18:51:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682463060; bh=fptVp/6AWO1UVz7qNKrSSYyFp7TeLOIaThhht5BMo6c=;
	h=Date:To:From:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Fipb7ChWIq3VSe0OD6D3POeXNIVzNlxowBShG42KhCMGrumOAa1ricKtkHuqmDzIY
	 dxRW6BQVj4XTGDIeB9ezvYsYQ+KkHIUR8zOm8qLX5K31fpScox8WsYaPuyc2TVWw/c
	 lDjWJfoP1YuZ2LQdCh1EdJjJdyKXS69T9iim2W7uai+6EYzFu8KRRRKqzfLvYgrP1k
	 WRXztN1JGaUw1KVKNFep9B+oGqDiwS+h8T4gEt7bwhMYVGJnOGw3iS5qXeUlf44FT0
	 HYCl+f5OsH2WhhBWPNYUnVR5D7gng6fDTUkNw7M0QmqjliqbzpNIn2enzcUFDSWcDh
	 x3u5DDkJ+Da+Q==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 04DFF384919
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 18:50:38 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id 920CC2F804A0
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 22:50:38 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 22:50:38 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 9FD7C4D935; Tue, 25 Apr 2023 16:50:37 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
	version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id 599A74D92F;
	Tue, 25 Apr 2023 16:50:37 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Tue, 25 Apr 2023 16:50:35 -0600
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
 <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
 <ZEgALNgcA3A7TRfW@l1.fu-lab.com>
 <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Message-Id: <20230425225037.9FD7C4D935@mail.futurelabusa.com>
Message-ID-Hash: BLOWLWDDRDDTYXKJTIC6AGPCFX2TYEDD
X-Message-ID-Hash: BLOWLWDDRDDTYXKJTIC6AGPCFX2TYEDD
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher  sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BLOWLWDDRDDTYXKJTIC6AGPCFX2TYEDD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

Re. "the Linux in the Zynq is out of the picture." That is interesting. Yes=
, my comment was based on the radio's Linux OS reporting dropped UDP packet=
s for the 10 Gbit interface.  It sounds like you are saying that has nothin=
g to do with UDP packets on the interface. Confusing...

If there really are no dropped packets then an underrun seems to imply that=
 the radio thinks it is not getting data from the host in the required time=
ly manner.

If the radio is dropping packets then it seems that could be the explanatio=
n for the underrun condition, although we have no idea why the radio would =
be dropping UDP packets.

At the time this underrun occurs, we find no evidence of an issue on the ho=
st side.
a) There is nothing in the host Linux system log indicating that anything l=
oggable occured at or around the time of the undderrun.
b) The modified host application specifically monitors for the condition th=
at it does not have data available at the time data is to be send to the ra=
dio. This condition never occurs.





At 10:34 AM 4/25/2023, Marcus D. Leech wrote:
>On 25/04/2023 12:30, James Schatzman wrote:
>>I don't know if this is new information but we have observed some
>>additional behaviors:
>>
>>1) The radio reports dropped UDP packets. Why is it dropping them?
>How are you determining this?=C2  For streaming, the Linux in the Zynq is =
entirely out of the picture.
>
>>
>>2) At least part of the time, the radio's fan kicks into high speed
>>seemingingly at the same moment that the under-run occurs. I have no
>>information about how it controls the fan so this is mysterious.
>That is an interesting tidbit, but I honestly don't know what it means.
>
>
>>
>>Jim
>>
>>
>>On Tue, Apr 25, 2023 at 12:20:45PM -0400, Marcus D. Leech wrote:
>>>On 25/04/2023 10:34, Jim Schatzman wrote:
>>>>We have been working with N310 and N321 radios. It seems very difficult=
 to get long term continuous operation without under-runs even at the seemi=
ngly very low data rate of 12.5 Msps.
>>>>
>>>>Currently we are trying various firmware versions, changing buffer size=
s, etc., but so far nothing has gotten the radios to work consistently for =
several hours without under-runs. One run might go for 3 hours without fail=
ure. The next attempt under-runs after 10 minutes. It is very erratic. Our =
next attempt will be to implement an input FIFO.
>>>>
>>>>The configurations have direct connections between a fast host (Ubuntu =
with unnecessary services including Network Manager disabled or removed), a=
nd the radio with 10 Gbit and frame size of 9000. Without using jumbo frame=
s the behavior was far worse.
>>>>
>>>>Any other ideas??
>>>>
>>>>Thanks-
>>>>Jim
>>>>
>>>Something you could try in terms of isolating root cause is to use the
>>>"benchmark_rate" example application, and
>>> =C2  configure it using the --duration option for a very long run and u=
se
>>>--tx_rate to cause it to only do a TX test.
>>>
>>>_______________________________________________
>>>USRP-users mailing list -- usrp-users@lists.ettus.com
>>>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>_______________________________________________ USRP-users mailing list --=
 usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leav=
e@lists.ettus.com </x-flowed>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
