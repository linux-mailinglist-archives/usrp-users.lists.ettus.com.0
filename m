Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B096DCED9
	for <lists+usrp-users@lfdr.de>; Tue, 11 Apr 2023 03:12:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE5DD38456C
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 21:12:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681175569; bh=vaugDF0jy6kBJdGs81B+EV4duDDpwvUuxBjJTq09w0k=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fI9Ff+QtBQnwBECA0zcnGngwvmU2mc/ckQb3foATsT/2ACruJ6hh3xMbXyXyF5ocA
	 RJ5mxE6p2R5BHq3yBdm7YB6FxHABS7m5BNnGc1domCNNMTlUOgA3rctNyWnvA5dFKL
	 jkX51iJKJ8PzAUEDe+LqP9mO/uz6/rG4ivDEHNqOdaoPcgUzkfsXlEb+6W6nA8WXP/
	 TtAUQAox9QFotyTMpCJkUBvVq9hX/0UEkaUqQnBPVcB8S5bkXeGRbpbqLNPjMypiEU
	 XuVaTxms66yljWMqUjD15PFyi2X/HfnUxuWEiUZpggETaYiMtx1pqiK1j2sP25eR/D
	 ZxrprR9tMU2CQ==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 808A93841EF
	for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 21:12:19 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id 2F7FC2F80246
	for <usrp-users@lists.ettus.com>; Tue, 11 Apr 2023 01:12:19 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Tue, 11 Apr 2023 01:12:19 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 5513E4D94B; Mon, 10 Apr 2023 19:12:18 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID autolearn=no autolearn_force=no version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id 163D74D905;
	Mon, 10 Apr 2023 19:12:17 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Mon, 10 Apr 2023 19:12:17 -0600
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,usrp-users@lists.ettus.com
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Message-Id: <20230411011218.5513E4D94B@mail.futurelabusa.com>
Message-ID-Hash: HEWIMTFJMASB7B25XOLRHVLTNZ663FYY
X-Message-ID-Hash: HEWIMTFJMASB7B25XOLRHVLTNZ663FYY
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection  - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HEWIMTFJMASB7B25XOLRHVLTNZ663FYY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable


The following steps had no impact:

a) Don't use a switch but do a point-to-point connection between the comptu=
er's NIC and the N310.
b) Adjust network buffers and ring buffer per recommendations (actually, th=
e network buffers setting was always being done).

Increasing the MTU to 9000 had a significant impact. An occasionaly underru=
n is still experienced, but an hour or two of continuous transmission is po=
ssible.

I am wondering if this is not an issue on the computer side but on the radi=
o side. Is the N310 incapable of supporting 1x 10 Gbps streams with a MTU o=
f 1500?  Perhaps.

I will do some computer-to-computer testing to see if the problem can be re=
produced there.

Jim





At 08:39 PM 4/7/2023, Marcus D. Leech wrote:
>On 07/04/2023 22:13, Jim Schatzman wrote:
>>We have been unable to estable 100% reliable connections to an N310 USRP =
radio through its 10 Gbit ethernet from Linux. What happens is that it work=
s fine for a period of time - 30 to 60 minutes, typically. Then we see a co=
uple of U's in the output. Unfortunately, that is fatal for our application.
>>
>>Using the unmodified tx_samples_from_file or one modified to use separate=
 threads to read data from the file and to sent it over the socket to the r=
adio, the symptoms are the same.
>>
>>All the evidence is that the application is sending data continuously wit=
hout any delays. Also, the "network" has no devices on it except for the ho=
st computer, a high performance 10G switch, and the N310 radio.
>>
>>We are wondering if this could be a Linux "feature". We would like to try=
 increasing the socket priority with SO_PRIORITY. However, we are not findi=
ng any hooks in the UHD software for this.
>>
>>Suggestions?
>>
>>Thanks!
>>Jim
>>_______________________________________________
>Have you increased the ring buffers on your card?
>
>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Increasi=
ng_Ring_Buffers
>
>Also, adjust the network buffers:
>
>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_N=
etwork_Buffers
>
>Have you tried a direct connection--without the switch?=C2 =C2 =C2  Just t=
o eliminate it.=C2  Before you say "oh, it's not the switch",
>=C2  many "high performance" 10G switches have a less-than-ideal switching=
 fabric.
>
>_______________________________________________ USRP-users mailing list --=
 usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leav=
e@lists.ettus.com </x-flowed>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
