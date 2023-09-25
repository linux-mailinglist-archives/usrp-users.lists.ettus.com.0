Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B047AD2C8
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 10:11:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00A19384B42
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 04:11:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695629476; bh=o42SQjSSJNmSJ0QMOpjVNV9/NnJoZsjmAbGkvEpFeZI=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hUO/88mvdEa7ugh2c4weVtq4WY/ud3608FsaBMho0fbeCcZt3oA6j5v2htsdvjgda
	 saVy2Pf8eOrgXQU7q2rjON4lazCjLq/jgSLiwnKXjzumw7/C5VKHM3eQSHlf4zuLFQ
	 epknHAoEAew/aTefycJR0DmC5w7SwtJfz2B3e72mrxehq/E8y/YwAiXNbOR2e8CAto
	 xO0rxmQb3I1ky2PlwWqU/PWpa9pK9WpCVTvxA7G32qMhZa37twR9iU1fkSJMTD9tg+
	 TktgbZHoXxEl0xaFHALC7RYYHvpOfvGyEe3/O5cBMM2N7YLJeTanJYQuGO6wof4xEK
	 ySPVtl5hgGyng==
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
	by mm2.emwd.com (Postfix) with ESMTPS id DB06B384933
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 04:11:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="a62JlgMq";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1695629460; x=1695888660;
	bh=j9fJa33Gt4nnMb8K8plGMphPIi8JHHBudQTdbfDyNbY=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=a62JlgMqUWCO1bIX9TPu6HVRrFWV3Ly7HAd5FiAjiYosbLQQ+aDz7W0fyTqxjdTdH
	 RyQ4m6Mn/D2lMiIraK3eOeyiHDjsDgOrV0jX8pIXZ5hm6iJUZ+mfgrR8PcaJEA4YY7
	 VluwGPDc0cxiSKK+CYybuyLkKJkWt6X+y8TeBwXmST69e6czW3IDoss8aBq4KiFEZh
	 Y/m11ppDW1cACgTOTxJH/kz8yIpaaAVty70dJlBkGux+Ewojs8N801u9F4B+ZIKbMD
	 tCgVUFO7OiiRIk0KAtcmo7XLMCXpAVxH4MrUS3XGUDYltDgz+HaxczlYiYLomXjU/v
	 S2xdEp9+/82DQ==
Date: Mon, 25 Sep 2023 08:10:45 +0000
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <Et1d_sn3WJb1IWj3GnStiCZjBUU4zQR0_f8Q--VCHCIEgQJRYo9NRCJZRaRR2K81kc8q9Sd0_KzyrXuS1oj-GpzIXt1_aU2vJwHPUXlUU04=@protonmail.com>
In-Reply-To: <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com> <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com> <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
Feedback-ID: 47010692:user:proton
MIME-Version: 1.0
Message-ID-Hash: HFPXAFEPHQBQFJIX4SDGFRE7VN4RVT6J
X-Message-ID-Hash: HFPXAFEPHQBQFJIX4SDGFRE7VN4RVT6J
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HFPXAFEPHQBQFJIX4SDGFRE7VN4RVT6J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Im using MSI katana UF66 11UG:
 CPU: 11th Gen Intel(R) Core(TM) i7-11800H
 RAM: 16 GB
 GPU: Nvidia RTX 3070

I think its pretty good laptop for this job (I want only receive IQ data and store it in wav files).
I have configured virtual enviroment (Ubuntu 22.04) so I can try linux commands to "benchmark" my laptop to see if it is able to work with B210.

I found tutorial how to check RAM speed. output:
wmic memorychip get speed
Speed
3200
3200

and in Device Manager I got in Display adapters >> RTX 3070 >> max link speed says 00000004   (gen 4).

Can I check something else which can be a problem ??? Thank you for your help, your time and efford. It helps me a lot.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
