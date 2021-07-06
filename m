Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6A23BDED5
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 23:17:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD8D8380946
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:17:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="Jm5l36DQ";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="OegBsPyq";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D4D7383F26
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 17:16:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=XuO8YCrOIncQtvwpIss1hzGbPEnMI72e+mNCZhHMQSY=;
 b=Jm5l36DQOm+b9jkbdsHZ/jjqMeoxYt5AIRACnhJDY5fkPVv9B4QlMHefHVPRNzUKObN1
 3rFdWREbXpyDZnK48hET8Cyw/QSkeSXill5InzN9D106uh56f0x5MQFYIniSQOTODKP7
 wH00UaoXGBQ7ZvAHLW6d5xLKu4iOrnxeL3k=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=XuO8YCrOIncQtvwpIss1hzGbPEnMI72e+mNCZhHMQSY=;
 b=OegBsPyqdx/XN+zpm53m1H0hjhMDuIVAvSE0Zf1G6RAcPH+sXULmby/2snACjedVcG7C
 lBQu5/P3/0x7Y+vsmiDOsY6DdZcIDUtfs48Ek4o3Po34OrlnQwamnF2pkF6E7Swd49oQ
 hV0xWV8L2lsBktyg/Q5puwnzaonNCI3p9ONnmlEBjkEf5iEMAzNfRO0wOaskn1442eno
 SdHoAje3Y96cDpj5SvlnIP9nuNqF42JBtkfZl6lQX+knp+9Ds94GpS7VchfyeD/peqPF
 XDjfoFSzeEMcAJX1HKdWl+GMrF6cEYic2EAb6aeBcoLly6qohkRQeWTH2HifIQXBK1AM Xw==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 166LGhgu048273
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 6 Jul 2021 21:16:44 GMT
X-IronPort-AV: E=Sophos;i="5.83,329,1616475600";
   d="scan'208";a="61281868"
Received: from unknown (HELO ERDC-EX2.erdc.dren.mil) ([134.164.254.14])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 14:24:14 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX2.erdc.dren.mil (134.164.254.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.14; Tue, 6 Jul 2021 14:24:14 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.14; Tue, 6 Jul 2021 14:24:14 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8]) by
 ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8%6]) with mapi id
 15.01.2176.014; Tue, 6 Jul 2021 14:24:14 -0500
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: UHD Transmit and Receive times
Thread-Index: AddylCI2tPSlPApyRuSvT7DPUnWsww==
Date: Tue, 6 Jul 2021 19:24:13 +0000
Message-ID: <6e5084fbdd8d459b9b7602bf3d5562e2@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: F6QQU3KEYLPYWIUN5VFQMHU4P6CWFJ2X
X-Message-ID-Hash: F6QQU3KEYLPYWIUN5VFQMHU4P6CWFJ2X
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Transmit and Receive times
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6QQU3KEYLPYWIUN5VFQMHU4P6CWFJ2X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit

Hello,

I am using two x310s both hosted from a common PC. I've stitched together a few UHD examples to transmit a pre-recorded waveform from one x310 and receive at the other at the exact same time. I'm using an FMCW waveform and would like to run a correlation on the received signal to make an attempt at measuring distance between the Tx and Rx. I used a common reference and PPS between the two x310s and scheduled a transmit and receive by passing a time_spec in the tx_metadata variable for the tx_stream->send() function as well as the time_spec variable of the rx_stream->issue_stream_cmd function.

My question is: how much stock do I put in these time_spec values? Is there some timestamp I can retrieve that will tell me something closer to the truth about when the first sample was emitted from the transmitter or was recorded at the receiver? Or can I rely on the SDR adhering pretty strictly to the time_spec value it was passed provided it was set sufficiently far in future to give SDR time to schedule commands?


Thanks!
Casey
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
