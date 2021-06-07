Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6EF39E588
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 19:33:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E200538437F
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 13:33:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="mnVWcUBJ";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="dB7MdW5K";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id C1A043842D5
	for <usrp-users@lists.ettus.com>; Mon,  7 Jun 2021 13:32:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=5KIsqdW/c7GCF5vt1RzR2WIY7lURQR8//gtmFPWRXPE=;
 b=mnVWcUBJpjfva//hq7MNzmuuKas0vR6gUo7YqP8eTbtar9r5IyaTrsH7ayKUK0g9aMYG
 BsEHJ7EtZ6wN8fNlsyR4aRv07KHx0kOBEgfhyFHlbjUMAUuiURbhKo7fg4rBNXeWRjMr
 xQCsIKwfRyg9y16yc9fjTi3bwdympiQDsZY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=5KIsqdW/c7GCF5vt1RzR2WIY7lURQR8//gtmFPWRXPE=;
 b=dB7MdW5K/j0n1WzjSklOzRSrbXLGdDClGH/pvwuq+e6dAlEoew5BW9UkfMcNE/L3zqSF
 4uaOnyt/9/lCG9uAZkSNO1P5pXHBGTOUw41/A09y0jhP6Sewmu46fjuobgdmq5jxlJwC
 4ynnIVPj2L/fzq39kEHFfZvmkxBwsZkPDveQJpo77xIV8xgJA6RG+Hete/2e4aPG2yUu
 kebUKeDxpjKqbYkASIjRl4jSJ9XUkYlOE3N1lrrY6taXsMvp1XvyZstuLCsnAWaSkbT3
 5h9fm8P2NYX3hLWecwh+RiUczxp53L0xLjASldhJ9jjTwC83HRkJDHGf9vN2mjt7fxvD Pg==
Received: from rde-gw1.erdc.dren.mil (rde-gw1.erdc.dren.mil [134.164.23.110])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 157HW1e8001881
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 7 Jun 2021 17:32:01 GMT
X-IronPort-AV: E=Sophos;i="5.83,255,1616475600";
   d="scan'208";a="60876709"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw1.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 12:32:01 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Mon, 7 Jun 2021 12:32:01 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Mon, 7 Jun 2021 12:32:01 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788]) by
 ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788%6]) with mapi id
 15.01.2176.012; Mon, 7 Jun 2021 12:32:01 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: tx_samples_from_file warnings for ettus x310
Thread-Index: AddbwNgDkyr7SNGQQbKbPf+SaFwn0Q==
Date: Mon, 7 Jun 2021 17:32:00 +0000
Message-ID: <2f98f5900d5144c79e511d32856ae76e@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: 5S533P7LC5U6W7UKLJVVZZCYTODFU77B
X-Message-ID-Hash: 5S533P7LC5U6W7UKLJVVZZCYTODFU77B
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tx_samples_from_file warnings for ettus x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5S533P7LC5U6W7UKLJVVZZCYTODFU77B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit

Hello all,

While trying to confirm if the x310 (UBX-160) can work with a singlemode fiber optic 10Gbe I have been using the tx_samples_from_file and rx_samples_to_file. The rx_sample_from_file seems to go over alright writing 500ms worth of data down at 200Msps, but the Tx side gives me two warnings that I have not been able to track down in documentation or on message boards. As an aside in readout you'll see a few underflows as well - while I did most of the performance upgrades (aside from DPDK which is still pending), I'm calling samples from file from an older HDD, I'm upgrading over to an SSD in next day or two so I am banking on that mitigating that issue, hence why I'm also limited to about 500ms at a time to test

PS anyone have experience using the single mode fiber optic cabling and transceiver over 10Gbe? Most of Ettus literature says they've only tested over multimode, but the longer distances allotted by using single mode make it an appealing option for my system.


$ ./tx_samples_from_file --args 'addr=192.168.40.2' --file usrp_samples.dat --freq=2400000000 --lo-offset 100000 --gain 0 --rate 200000000

Creating the usrp device with: addr=192.168.40.2...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107400; UHD_4.0.0.HEAD-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Unknown (0xffff) - 0
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Unknown (0xffff) - 0

Setting TX Rate: 200.000000 Msps...
Actual TX Rate: 200.000000 Msps...

Setting TX Freq: 2400.000000 MHz...
Setting TX LO Offset: 0.100000 MHz...
Actual TX Freq: 2400.000000 MHz...

Setting TX Gain: 0.000000 dB...
Actual TX Gain: 0.000000 dB...

Checking TX: TXLO: locked ...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
UU
Done!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radio#0:INPUT_EDGE:0, no neighbour found!



Casey Wolsieffer
Research Electrical Engineer - Signature Physics Branch
Cold Regions Research & Engineering Laboratory
72 Lyme Rd, Hanover NH 03755
(603) 646-4254 (office)
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
