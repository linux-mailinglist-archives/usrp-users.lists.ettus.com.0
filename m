Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 719E36E163C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 23:02:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27D8B38424B
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 17:02:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681419773; bh=xEa2gjfHU5PmiRpSggEiZXzY19uHqksP/Ufc12FW5dc=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IBdE+lW86CRSmzREG1COkfA48XHEyQMXizhJ+yXoWp/ex5WmekLB+bVJHmBtKKDpX
	 azeENV2E1JhulzlQ2wa1VEd/hwnO84PAKdIHnZ09cSCXeBEtIfDTCa2KqGgUXjnUpH
	 hNtpJokw8bYF+mv5KNG9tRyiskabB3A7BNhOHdKRpKa8+4pVa5KpkKnjr3o3SNa8ew
	 1bCUt1GGB2fyy7sPQRzKz1yZeEN4VT4AB5x+RUE4TsvAXjxd5zSPdTGEnxnz7iECNa
	 +v/EW+mmkj2ow4p/KrwhOnpJbYjKOyKHhB7AH5XNGskoD2gS49HkYMDrzZvBJxvSzl
	 NmQ22hCfOdUIg==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E3043818F4
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:02:22 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id 30BAB2F80493
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 21:02:22 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 21:02:22 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 4BED44D905; Thu, 13 Apr 2023 15:02:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID autolearn=no autolearn_force=no version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id D4A264D905;
	Thu, 13 Apr 2023 15:02:19 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Thu, 13 Apr 2023 15:02:18 -0600
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,usrp-users@lists.ettus.com
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Message-Id: <20230413210221.4BED44D905@mail.futurelabusa.com>
Message-ID-Hash: ZKH7PW57BI4PMVZCXCNUA2SFW3VODB7I
X-Message-ID-Hash: ZKH7PW57BI4PMVZCXCNUA2SFW3VODB7I
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection  - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKH7PW57BI4PMVZCXCNUA2SFW3VODB7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

Even with all the recommended settings, and a very fast computer that is do=
ing nothing except sending the data, it is maybe 50/50 that a 2 hour simula=
tion can be conducted without an underrun. The longest run I have been able=
 to do without an underrun is about 2.5 hours.

The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400 Mbit/sec.

For our application, that is unacceptable. I need to be able to run for day=
s without data loss.

It is a mystery to me why a 10 Gbit connection cannot support 400 Mbit/sec =
UDP reliably.

Any ideas about how we can completely eliminate underruns?

At the moment, I am uncertain whether the problem is occurring on the host =
or on the radio. I suspect the radio, but I will do some testing of the hos=
t to see what UDP data rate it can support without loss.

Thanks!





At 10:53 PM 4/10/2023, Marcus D. Leech wrote:
>On 10/04/2023 21:12, Jim Schatzman wrote:
>>The following steps had no impact:
>>
>>a) Don't use a switch but do a point-to-point connection between the comp=
tuer's NIC and the N310.
>>b) Adjust network buffers and ring buffer per recommendations (actually, =
the network buffers setting was always being done).
>>
>>Increasing the MTU to 9000 had a significant impact. An occasionaly under=
run is still experienced, but an hour or two of continuous transmission is =
possible.
>>
>>I am wondering if this is not an issue on the computer side but on the ra=
dio side. Is the N310 incapable of supporting 1x 10 Gbps streams with a MTU=
 of 1500?  Perhaps.
>>
>>I will do some computer-to-computer testing to see if the problem can be =
reproduced there.
>>
>>Jim
>Even non-SDR applications tend to use jumbo-frames for continuous traffic =
at 10Gbit.=C2  I'm sorry that I didn't clue in to that
>=C2  in the first round.
>
>
>>
>>
>>
>>
>>At 08:39 PM 4/7/2023, Marcus D. Leech wrote:
>>>On 07/04/2023 22:13, Jim Schatzman wrote:
>>>>We have been unable to estable 100% reliable connections to an N310 USR=
P radio through its 10 Gbit ethernet from Linux. What happens is that it wo=
rks fine for a period of time - 30 to 60 minutes, typically. Then we see a =
couple of U's in the output. Unfortunately, that is fatal for our applicati=
on.
>>>>
>>>>Using the unmodified tx_samples_from_file or one modified to use separa=
te threads to read data from the file and to sent it over the socket to the=
 radio, the symptoms are the same.
>>>>
>>>>All the evidence is that the application is sending data continuously w=
ithout any delays. Also, the "network" has no devices on it except for the =
host computer, a high performance 10G switch, and the N310 radio.
>>>>
>>>>We are wondering if this could be a Linux "feature". We would like to t=
ry increasing the socket priority with SO_PRIORITY. However, we are not fin=
ding any hooks in the UHD software for this.
>>>>
>>>>Suggestions?
>>>>
>>>>Thanks!
>>>>Jim
>>>>_______________________________________________
>>>Have you increased the ring buffers on your card?
>>>
>>>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Increa=
sing_Ring_Buffers
>>>
>>>Also, adjust the network buffers:
>>>
>>>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust=
_Network_Buffers
>>>
>>>Have you tried a direct connection--without the switch?=C3=82 =C3=82 =C3=
=82  Just to eliminate it.=C3=82  Before you say "oh, it's not the switch",
>>>=C3=82  many "high performance" 10G switches have a less-than-ideal swit=
ching fabric.
>>>
>>>_______________________________________________ USRP-users mailing list =
-- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-le=
ave@lists.ettus.com </x-flowed>
>>_______________________________________________
>>USRP-users mailing list -- usrp-users@lists.ettus.com
>>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>_______________________________________________ USRP-users mailing list --=
 usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leav=
e@lists.ettus.com </x-flowed>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
