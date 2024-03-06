Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6317387406B
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 20:32:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70A2A385230
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 14:32:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709753526; bh=+1H0Tmn7vFyuP8fxOes2Hnld+1uxGLSPcKDSRLvAZ7A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EsjdbdokiirqAytTokmeb3o1WoxOTPaJoqlKqiMwvBfFgKYlY8Jk+FMm1nntYgHBt
	 D4qGUORGVia5Ckoco2XlNOpx3m7s+aDoMr5X5wyXrsObwpYsEJ9ANxxrqYJML/XZIM
	 5Gh8ll1BqTU0iMl0jU7y52mhS7nzCr3OWq94Mq+kXQ0tp2dGQcb4b9kBWVFAUT6AVe
	 YRsiJuALCYDVBOq2peS8dg3IsrR2gUIzI2nX00IecRCaxskPT9mtyiwGxmRFncj79I
	 B+GSlqSMEapfx4RofVUAf2ve+XwL1AnnBJ8nYEumXFI3nI3UjkrFPdpZIGaLq8bkVs
	 5DSr9CY6QXDEw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0052.outbound.protection.office365.us [23.103.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 29D8C385672
	for <usrp-users@lists.ettus.com>; Wed,  6 Mar 2024 14:31:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="SGNy0U7j";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=gl2tNUuX/vh9FK8owrjh4Uh/YruhBO4n3tfkxwikAC9kaiPHtdg9GF2ukz7jn9/VoSAUoHwqDIk0MjjnMrP75Wqx70c2QQpRdceLdRndmKnmX1KMsMekDgJ9T6bQm/aXgh9o7KX/+vlWj1VRx/VHAtdz56l2kRRthNfhkn3sdkbqe3s6UsHxI1G5BlOgxbnsn0Co27Z9WLGymWVkSLgA0derP2S3BYScUx+AFprkh6v+KUwTMAcwSa1BinDt3io6AJEvU5qO/PqjsfRSYZWC4zP7KrLwN6I6Y9LyNUuKSNmqFWgZ8pVfxsRXVa8Sr3DqNSTsINLH3Oq0UUeS7kwT7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7IbWSeScENQj0tGte0NGo+QfhkfVlFg3ye7i6qKGsQ4=;
 b=BNUUJwFQLiOKYmFdIRnZVO9rWZCyyhEsVzPXYhLeJ/Rge8T/xhFbut91oFpOxp079XTXVAPa7igpRhzBbtt1ncIAHL/T5Xjgoep609WB9Vgnfs+DisxGdzpm/Us0OaVR6yjqWLsDdv5GjWFDjjA8z5XhrZvISqmwcOAMhy87z02LLzXoUcgdYuQpsxBBGUOYfwELiba9UNmo9s//ze6v1URwru0qbsvlRX3v3VaA7k+iASUhU4xTBOfLqSDZyquYhzWVS7XFWSajDOm9CQ0gCMliHKgb/biWnn28DSDHwWPtgqmHnEWVCTdaAUqxg3W6A/Ns7NTo1WSWVyA9fxp9IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IbWSeScENQj0tGte0NGo+QfhkfVlFg3ye7i6qKGsQ4=;
 b=SGNy0U7jZ8QHgH8ElHQrVxZk+x/Ss363gF37W6iW7ucODvWdc4okdmtgFT2OjcNLA0hIA8RxO58CjDfsiBE+AAt+AfASdxVw+5WaXNMFmCEW+daFlokE2nTna8LYtFmWu9RjOsInA4rnWcgnxS981NY+S203ntLl85VASkLatF2VnyU6dY0GqxyYcXu2WcQwUAufv+/neNSXEsR2klcoEFls+VDgSrobfBNm9km+SlreL1Z4hTaJ0jywY30fCtoO7rqlHgpQ4s4/DqOz7TZp9vulqwkj0NItX7uddTTIhUZlR/FFGp9xp/C4qZbQy0fz/EDK4j8pi42FPEDVL1NNlA==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB2147.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:19c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.52; Wed, 6 Mar
 2024 19:31:12 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7298:cc4b:615b:7713]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7298:cc4b:615b:7713%4]) with mapi id 15.20.7249.051; Wed, 6 Mar 2024
 19:31:12 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: "yguruprasad@umass.edu" <yguruprasad@umass.edu>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] X310
Thread-Index: AQHab/ghcuD7nCaHzUyZkdpkpVuLuLErGETg
Date: Wed, 6 Mar 2024 19:31:12 +0000
Message-ID: 
 <BN0P110MB1015AECCD6D12E8C244ADAC0B121A@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: <0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw@lists.ettus.com>
In-Reply-To: <0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1015:EE_|BN0P110MB2147:EE_
x-ms-office365-filtering-correlation-id: bf9fad3b-1894-4d2d-bc47-08dc3e13fb98
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mYHg5XC4LYU3Po81BeajYjywWWRUkYTSTKWNm2b2l0lFY9nlVh6SJWPXuZ6Wg7zwW0SOI4f14xjak2yVNAbV/QJ86It8zy+cwNWB+cDPbwjZcFpw+xPF9ImankarhBvpT2yyWgH0Q7wtcwqhwSi7vRI9RtcliKQct39j5t3otWgnhvBk4xKa14LwPChor2lf2eFJU9qqhvQh4iC1I1H6QZEULXGw2vLauJRLwQWOAjZ+mqi5BGeQQL72cKJpGAtuGHiZsldWpWnGRXvjHQU2/wD5MS1JherZZza+79ItHdLxEHv0IxxY2IHGzme/mMoCb6ryn1Bn6DdPFgUuCJwjbHrrA/S7JkuJRUERB4tZabWKFWBZXGbLJbXiGXwi1cAfaJy1kTKMj3rMPfwtnomDZw0N+qHgOCXDynbujX6K1DwLfNVOuec6qeBVAqj/+2f8/vr0fFr9GYIPRAvCEiOsYd+DVINECGZO+PHsGA4MqZujCNGQR+Ju6n4ExLAiGTqXT0fxkaJt0xMf1iq2IZjyP28p8TnEYp2E1cJnBlvTVEsCzzpzajmi9YDzjBGvD1T2Tk8dG0MRz9bWLPUQIh/2yb156QUzgFmEOoQTCFcYQpE8tsaSBPsP4NpallcnculpuvLnl4yFLxhyJ5+zKe7Wh965MdNtAK8b1HHMbx9dwuI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(41320700004)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?nDjWxD7Z76P4nQmaq76BMZK8PXVgKA80S24e7zUGW7xRI+t5+Q9IuUtvT8?=
 =?iso-8859-1?Q?SuUAvwR7oGUvAQFyC3vWH8adh60c01NvpzwYcKisUwq+ZrxtrPrGyW2IPV?=
 =?iso-8859-1?Q?t/Dmajhp4iGWbt+re1RE2NO6zpoTGMz7TunbVvfXhHLduv+5XelhRZR6nk?=
 =?iso-8859-1?Q?UElhuzuYg3XLEvcgVs8YDL+Vp9lUukiZSVedDtbh4Qz7+M06WDdFGcAqY1?=
 =?iso-8859-1?Q?yobjs9TWWUofNY6a258+L9dv1ihkoNL15QHwcC3ScvCEqwrxe1cm7hyJ9n?=
 =?iso-8859-1?Q?gTLOQYKum0I71KLhYgAl9wfuG8uu5d8D5/kS6E2Y5K1icD+HTzAjm6V9w3?=
 =?iso-8859-1?Q?aBu5ocCnMsQait+dfsz3DNjC61VGBhpefo3/BMBwMADTRFHUdaZqO/eojD?=
 =?iso-8859-1?Q?h5gZrdesVkg2gloWv8nI+6WPs3KJecuUCSpdluRSkfmKDF4/SSeBNnliS9?=
 =?iso-8859-1?Q?HmOIol9ZZyLHsY2dieHqaCg/7lU6I/+0WbDqf+8eOQGj34XSN0GG8DmHGJ?=
 =?iso-8859-1?Q?ncXCX4KSOob8bBkFmiFk2wRfF/Brqq9rFicgiPggsNt6QHPa03vagq63Qm?=
 =?iso-8859-1?Q?vUCttfEMvzlP6LfeEP+j+pZmxO1wyyHZJr4mHiOrc3yHtT8gK7nnOsnbgj?=
 =?iso-8859-1?Q?7G6616O+6wKFqbrA0r1BfrJqwwOP3/YxqpWfYwdxI+xJ4yjQCdxl8xwsv2?=
 =?iso-8859-1?Q?befWX6G6R9LRbB+eBa3KTGlxA7gnPRkJjGNw98eG6IDfyYexmvOz5JY/Di?=
 =?iso-8859-1?Q?RQNjDJm8yQSbPjFjOCY9NSgYE/RRVslr6yatwOmBfjZZUwgWIbE/rW5Z51?=
 =?iso-8859-1?Q?vfwuiZhibimYrkYBsdcidIDr8zPgTWvB8L0SVsFve+rOLb/YVxQ8Vc3udE?=
 =?iso-8859-1?Q?85LsvitTEnErNGFvQN1/X86S51TDR/+DCgix50CikJdu7hC7dGbFanxNca?=
 =?iso-8859-1?Q?Y5pcoZ0dkUR32n1YCztOb9Ptab7fR5VzBOrvThD6MT+NsMTrRuk/eICmEq?=
 =?iso-8859-1?Q?pty+hlbfaFjEYnXmC2ctv/L7jNWKJnuZMAiHdfIsm1hVDILNmG2ahqwiby?=
 =?iso-8859-1?Q?liiyfHMrp8IAxdIMowAmsMuAENfuAC4B5h1XBPD9OzFHInshYgMGBZh9n7?=
 =?iso-8859-1?Q?QOkoWjVRW04BkqBMygmlf0//2kKQG+EUDjq/aA9pO3zBqdzCXDJkYSH9M9?=
 =?iso-8859-1?Q?jG8RRyWBc5DUaqS9nAGnCNyuAxSUMdK//U90CWmhdx5EEw+BbF6Prl3sj3?=
 =?iso-8859-1?Q?0Ag6bEhCrHuOrNXadZa+lV7ISOzUkiOfHfPTOB5rccM2qg5frlNNFVvV21?=
 =?iso-8859-1?Q?j8PxNOB8igyvIiPGcC1CByCv68sX6blamV8CGewcCQrjZTad3RWB3Bj6G5?=
 =?iso-8859-1?Q?QNFxVqp7MpeQoGKNZ9ntz4qW4JgjzahkvmPuSZtToZKwTjYXnM/H16adik?=
 =?iso-8859-1?Q?wF7RrvW8nh+GEfIWBdjX3Y5CDrXpQ5hO8Oj9zjN4YtSwP70uGxv/+VlwST?=
 =?iso-8859-1?Q?NA7Kl4e0DQg7VOJFs6dEwloZpfzGpDIRfYWJmFrTnhkUUg3zc3X0L3GA5i?=
 =?iso-8859-1?Q?8lN47rS+mZZXrvY7h2iFaQbeqXrm?=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bf9fad3b-1894-4d2d-bc47-08dc3e13fb98
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 19:31:12.5787
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB2147
Message-ID-Hash: 5KK3CFJORBZ4UIDKM5XGDEDNNZGZWJDH
X-Message-ID-Hash: 5KK3CFJORBZ4UIDKM5XGDEDNNZGZWJDH
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWNEM735VHTSKW4QFOLTCI5ACY465KAI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5715559391122812745=="

--===============5715559391122812745==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0084_01DA6FD2.EF8706F0"

------=_NextPart_000_0084_01DA6FD2.EF8706F0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0085_01DA6FD2.EF8706F0"


------=_NextPart_001_0085_01DA6FD2.EF8706F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

The underflows you're getting mean your host PC isn't providing samples fast
enough for the rate the radio is consuming them and it's underrunning the TX
buffer. Likely there isn't enough bandwidth between the host PC and the
radio to support 100 Msps. There is a pretty good discussion of bandwidth
and sampling rates here: 

 

https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates

 

Very respectfully,

 

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org 

T: 937.986.3153 | F: 937.431.3811

 

This e-mail message, including any attachments, is for the sole use of the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any unauthorized
review, use, disclosure or distribution is prohibited. If you are not the
intended recipient, please notify the sender and destroy all copies and the
original message.

 

From: yguruprasad@umass.edu <yguruprasad@umass.edu> 
Sent: Wednesday, March 6, 2024 1:56 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X310

 

 CAUTION: This email is from outside of Riverside Research. Be careful when
clicking links or opening attachments unless you know the content is safe. 

Could some help me if this is working as expected?


./bin/txrx_loopback_to_file --tx-args addr=192.168.10.2 --rx-args
addr=192.168.10.2 --tx-rate 100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-freq
18e6

Creating the transmit usrp device with: addr=192.168.10.2...

[INFO] [UHD] linux; GNU C++ version 8.5.0 20210514 (Red Hat 8.5.0-20);
Boost_106600; UHD_4.2.0.1-0-g321295fb

[INFO] [X300] X300 initialization sequence...

[INFO] [X300] Maximum frame size: 1472 bytes.

[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 1.101

[INFO] [X300] Radio 1x clock: 200 MHz

[INFO] [0/KeepOneInN#0] Setting default MTU forward policy.

Creating the receive usrp device with: addr=192.168.10.2...

Using TX Device: Single USRP:

Device: X-Series Device

Mboard 0: X310

RX Channel: 0

RX DSP: 0

RX Dboard: A

RX Subdev: BasicRX (0)

RX Channel: 1

RX DSP: 1

RX Dboard: A

RX Subdev: BasicRX (1)

RX Channel: 2

RX DSP: 2

RX Dboard: B

RX Subdev: Unknown (0xffff) - 0

TX Channel: 0

TX DSP: 0

TX Dboard: A

TX Subdev: BasicTX (0)

TX Channel: 1

TX DSP: 1

TX Dboard: B

TX Subdev: Unknown (0xffff) - 0

Using RX Device: Single USRP:

Device: X-Series Device

Mboard 0: X310

RX Channel: 0

RX DSP: 0

RX Dboard: A

RX Subdev: BasicRX (0)

RX Channel: 1

RX DSP: 1

RX Dboard: A

RX Subdev: BasicRX (1)

RX Channel: 2

RX DSP: 2

RX Dboard: B

RX Subdev: Unknown (0xffff) - 0

TX Channel: 0

TX DSP: 0

TX Dboard: A

TX Subdev: BasicTX (0)

TX Channel: 1

TX DSP: 1

TX Dboard: B

TX Subdev: Unknown (0xffff) - 0

Setting TX Rate: 100.000000 Msps...

Actual TX Rate: 100.000000 Msps...

Setting RX Rate: 6.500000 Msps...

[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
6.452 MHz

[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
6.452 MHz

[WARNING] [0/DDC#1] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [0/DDC#1] The requested decimation is odd; the user should expect
passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 31

[WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
6.452 MHz

Actual RX Rate: 6.451613 Msps...

Setting TX Freq: 20.000000 MHz...

Actual TX Freq: 20.000005 MHz...

Setting RX Freq: 18.000000 MHz...

Actual RX Freq: 17.999995 MHz...

[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.

Press Ctrl + C to stop streaming...

Setting device timestamp to 0...

UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^CUUUUUUUUUUUUUUUUUUUUUUU
UUUUUUUUUUU

Done!


------=_NextPart_001_0085_01DA6FD2.EF8706F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>The underflows you&#8217;re =
getting mean your host PC isn&#8217;t providing samples fast enough for =
the rate the radio is consuming them and it&#8217;s underrunning the TX =
buffer. Likely there isn&#8217;t enough bandwidth between the host PC =
and the radio to support 100 Msps. There is a pretty good discussion of =
bandwidth and sampling rates here: <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><a =
href=3D"https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates">ht=
tps://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates</a><o:p></o:p=
></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Very =
respectfully,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> yguruprasad@umass.edu =
&lt;yguruprasad@umass.edu&gt; <br><b>Sent:</b> Wednesday, March 6, 2024 =
1:56 PM<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> =
[USRP-users] X310<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'mso-element:para-border-div;border:solid #F9E436 =
1.5pt;padding:2.0pt 0in 2.0pt 0in;background:#F2463D'><p =
style=3D'background:#F2463D;border:none;padding:0in'><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'>&n=
bsp;</span><strong><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#0F0F0F'>CA=
UTION:</span></strong><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'> =
This email is from outside of Riverside Research. Be careful when =
clicking links or opening attachments unless you know the content is =
safe.</span><span style=3D'color:black'> =
</span><o:p></o:p></p></div><div><p>Could some help me if this is =
working as expected?<o:p></o:p></p><p><br>./bin/txrx_loopback_to_file =
--tx-args addr=3D192.168.10.2 --rx-args addr=3D192.168.10.2 --tx-rate =
100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-freq =
18e6<o:p></o:p></p><p>Creating the transmit usrp device with: =
addr=3D192.168.10.2...<o:p></o:p></p><p>[INFO] [UHD] linux; GNU C++ =
version 8.5.0 20210514 (Red Hat 8.5.0-20); Boost_106600; =
UHD_4.2.0.1-0-g321295fb<o:p></o:p></p><p>[INFO] [X300] X300 =
initialization sequence...<o:p></o:p></p><p>[INFO] [X300] Maximum frame =
size: 1472 bytes.<o:p></o:p></p><p>[INFO] [GPS] Found an internal GPSDO: =
LC_XO, Firmware Rev 1.101<o:p></o:p></p><p>[INFO] [X300] Radio 1x clock: =
200 MHz<o:p></o:p></p><p>[INFO] [0/KeepOneInN#0] Setting default MTU =
forward policy.<o:p></o:p></p><p>Creating the receive usrp device with: =
addr=3D192.168.10.2...<o:p></o:p></p><p>Using TX Device: Single =
USRP:<o:p></o:p></p><p>Device: X-Series Device<o:p></o:p></p><p>Mboard =
0: X310<o:p></o:p></p><p>RX Channel: 0<o:p></o:p></p><p>RX DSP: =
0<o:p></o:p></p><p>RX Dboard: A<o:p></o:p></p><p>RX Subdev: BasicRX =
(0)<o:p></o:p></p><p>RX Channel: 1<o:p></o:p></p><p>RX DSP: =
1<o:p></o:p></p><p>RX Dboard: A<o:p></o:p></p><p>RX Subdev: BasicRX =
(1)<o:p></o:p></p><p>RX Channel: 2<o:p></o:p></p><p>RX DSP: =
2<o:p></o:p></p><p>RX Dboard: B<o:p></o:p></p><p>RX Subdev: Unknown =
(0xffff) - 0<o:p></o:p></p><p>TX Channel: 0<o:p></o:p></p><p>TX DSP: =
0<o:p></o:p></p><p>TX Dboard: A<o:p></o:p></p><p>TX Subdev: BasicTX =
(0)<o:p></o:p></p><p>TX Channel: 1<o:p></o:p></p><p>TX DSP: =
1<o:p></o:p></p><p>TX Dboard: B<o:p></o:p></p><p>TX Subdev: Unknown =
(0xffff) - 0<o:p></o:p></p><p>Using RX Device: Single =
USRP:<o:p></o:p></p><p>Device: X-Series Device<o:p></o:p></p><p>Mboard =
0: X310<o:p></o:p></p><p>RX Channel: 0<o:p></o:p></p><p>RX DSP: =
0<o:p></o:p></p><p>RX Dboard: A<o:p></o:p></p><p>RX Subdev: BasicRX =
(0)<o:p></o:p></p><p>RX Channel: 1<o:p></o:p></p><p>RX DSP: =
1<o:p></o:p></p><p>RX Dboard: A<o:p></o:p></p><p>RX Subdev: BasicRX =
(1)<o:p></o:p></p><p>RX Channel: 2<o:p></o:p></p><p>RX DSP: =
2<o:p></o:p></p><p>RX Dboard: B<o:p></o:p></p><p>RX Subdev: Unknown =
(0xffff) - 0<o:p></o:p></p><p>TX Channel: 0<o:p></o:p></p><p>TX DSP: =
0<o:p></o:p></p><p>TX Dboard: A<o:p></o:p></p><p>TX Subdev: BasicTX =
(0)<o:p></o:p></p><p>TX Channel: 1<o:p></o:p></p><p>TX DSP: =
1<o:p></o:p></p><p>TX Dboard: B<o:p></o:p></p><p>TX Subdev: Unknown =
(0xffff) - 0<o:p></o:p></p><p>Setting TX Rate: 100.000000 =
Msps...<o:p></o:p></p><p>Actual TX Rate: 100.000000 =
Msps...<o:p></o:p></p><p>Setting RX Rate: 6.500000 =
Msps...<o:p></o:p></p><p>[WARNING] [0/DDC#0] The requested decimation is =
odd; the user should expect passband CIC =
rolloff.<o:p></o:p></p><p>Select an even decimation to ensure that a =
halfband filter is enabled.<o:p></o:p></p><p>Decimations factorable by 4 =
will enable 2 halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [0/DDC#0] The requested decimation is odd; =
the user should expect passband CIC rolloff.<o:p></o:p></p><p>Select an =
even decimation to ensure that a halfband filter is =
enabled.<o:p></o:p></p><p>Decimations factorable by 4 will enable 2 =
halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [MULTI_USRP] Could not set RX rate to =
6.500 MHz. Actual rate is 6.452 MHz<o:p></o:p></p><p>[WARNING] [0/DDC#0] =
The requested decimation is odd; the user should expect passband CIC =
rolloff.<o:p></o:p></p><p>Select an even decimation to ensure that a =
halfband filter is enabled.<o:p></o:p></p><p>Decimations factorable by 4 =
will enable 2 halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [0/DDC#0] The requested decimation is odd; =
the user should expect passband CIC rolloff.<o:p></o:p></p><p>Select an =
even decimation to ensure that a halfband filter is =
enabled.<o:p></o:p></p><p>Decimations factorable by 4 will enable 2 =
halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [MULTI_USRP] Could not set RX rate to =
6.500 MHz. Actual rate is 6.452 MHz<o:p></o:p></p><p>[WARNING] [0/DDC#1] =
The requested decimation is odd; the user should expect passband CIC =
rolloff.<o:p></o:p></p><p>Select an even decimation to ensure that a =
halfband filter is enabled.<o:p></o:p></p><p>Decimations factorable by 4 =
will enable 2 halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [0/DDC#1] The requested decimation is odd; =
the user should expect passband CIC rolloff.<o:p></o:p></p><p>Select an =
even decimation to ensure that a halfband filter is =
enabled.<o:p></o:p></p><p>Decimations factorable by 4 will enable 2 =
halfbands, those factorable by 8 will enable 3 =
halfbands.<o:p></o:p></p><p>decimation =3D dsp_rate/samp_rate -&gt; =
31<o:p></o:p></p><p>[WARNING] [MULTI_USRP] Could not set RX rate to =
6.500 MHz. Actual rate is 6.452 MHz<o:p></o:p></p><p>Actual RX Rate: =
6.451613 Msps...<o:p></o:p></p><p>Setting TX Freq: 20.000000 =
MHz...<o:p></o:p></p><p>Actual TX Freq: 20.000005 =
MHz...<o:p></o:p></p><p>Setting RX Freq: 18.000000 =
MHz...<o:p></o:p></p><p>Actual RX Freq: 17.999995 =
MHz...<o:p></o:p></p><p>[WARNING] [0/Radio#0] Attempting to set tick =
rate to 0. Skipping.<o:p></o:p></p><p>Press Ctrl + C to stop =
streaming...<o:p></o:p></p><p>Setting device timestamp to =
0...<o:p></o:p></p><p>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^CUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUU<o:p></o:p></p><p>Done!<o:p></o:p></p></div></di=
v></body></html>
------=_NextPart_001_0085_01DA6FD2.EF8706F0--

------=_NextPart_000_0084_01DA6FD2.EF8706F0
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
0Qc4u1wWGNkg5BLYJFt5SsPGSy4uJxx7MwUS6zGGHuCSQU1Aiv3WRUuq2d0kR2voJuFfefE9KIIi
nnFAyyuHd7nH9WA38k60DFwbgWdheJFl0eardaNiuppK3g8kA5suV/UgEcBwrWogsKCbCCIZL+rf
3CF84sRUKMuMIqknH1JpAgMBAAGjggKsMIICqDAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU
HxKZJm0LC3QRatx01YW8RlVUZBgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQD
AgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUK7G+zImH+DvFYNOukWcrEuiuSOswggEG
BgNVHR8Egf4wgfswgfiggfWggfKGNWh0dHA6Ly9jcmwucml2ZXJzaWRlcmVzZWFyY2gub3JnL2Ny
bC9SUi1ST09ULUNBMDEuY3JshoG4bGRhcDovLy9DTj1SUi1ST09ULUNBMDEsQ049UlItUk9PVC1D
QTAxLENOPUNEUCxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25m
aWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFz
ZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludDCCAQ8GCCsGAQUFBwEBBIIBATCB/jBO
BggrBgEFBQcwAoZCaHR0cDovL2NybC5yaXZlcnNpZGVyZXNlYXJjaC5vcmcvY3JsL1JSLVJPT1Qt
Q0EwMV9SUi1ST09ULUNBMDEuY3J0MIGrBggrBgEFBQcwAoaBnmxkYXA6Ly8vQ049UlItUk9PVC1D
QTAxLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25m
aWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFz
cz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MA0GCSqGSIb3DQEBDAUAA4ICAQDJbt7XnfMHFsaRheqj
2q8s4XnYePk+5NwRcvdxACOXeDX9Q20fj5kgCb/76PqFiN1uLTkndCmoCPumnSNKz35P2l/OeEvX
SBJ00pOTIF/d6tfQFruf5qYmLwDDxY3CV/FAulrXzGAEXQL3j1Tv2ra9N+Kw2L7qRKamXuymKZst
dUyUbi2bzpPyLFxUa54/PCgrL3ZC/2x8e99CsAC5TbSETFOm/s/dVysV1w/HZtCwvMkM1QcCgN4d
mw9/AERfOETJf5IRi79RVJJJvL2KFdL/hNOA/i5ctFJjSs5tN+qAFfzHPkc8aFiP7OtbmpjYjCyc
v5b8jsx230QpLuJOFidWmk6erwkSUqK5umaaH1UPI8H3bz14h8lGqdF26zDiGVuOga+7EeCuL8+s
OWk2xt2FSIdJ/z4LyfTEn7ZrO7+Uzku52YYVjYgKwpxAEPEZlQAyj8nXRuY/2KJbRRbEe3sMuWM1
Ee3X5zc0R48j4+9EdZxxkLj8BlXXwMUUn0wM9TCQ9NL9AW3rjjyr9rjSSrakUH0fTNhFVrSmELUs
bZKPX34KTjlkigZu+xrZkKBDUWXVOV4v/ScAWdcSO4/4Qkud0aXqL6PuGh2ZYqh2pwz1QkcKoXZt
xFuMRUqy8hz5iOwK2y7YtRrRyD9UBqn7wZxhebcdyKZX/uupcoGcnCRZgjCCB5IwggZ6oAMCAQIC
Ex0AAALq7DmY/ZzCqsMAAAAAAuowDQYJKoZIhvcNAQELBQAwRTETMBEGCgmSJomT8ixkARkWA29y
ZzEXMBUGCgmSJomT8ixkARkWB3JyaS11c2ExFTATBgNVBAMTDEJSTy1JU1MtQ0EwMTAeFw0yMzA5
MDYxMjQ1NDBaFw0yNTA5MDYxMjU1NDBaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZIm
iZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UECxMN
T24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkBFh1q
andoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBALjqkquYqOK30OzcmIMCVw2hurXCv0rfvue/12zoMYEgmIhCyQdNxymtBAsjtADRgOdnemP0
LzJPXMudfmz/RQbOFJb6IRKn45iFe0QvkzW0g6ZXHa1LhJCPEx0do8UCElS14/Wsm7dmxxnaO1zJ
lqesGcNRmUpYV4T7cUajakvXJ7/63XlsKDNGSV30I6P9yz7sXBZPLmMruc6UNlSkdpreJu6vjPR6
H4t8sSkPQ2VESr7m3g6Tg0E8mdnOgVMUUwY3AEvKw2YhNTaC6Iq+J/1yK+b9HgyeRA+ogD9wSXSw
hUpNacLeDU0VnUfTxUgA627ValbC1aWp58LK6nl4oJECAwEAAaOCBBEwggQNMD4GCSsGAQQBgjcV
BwQxMC8GJysGAQQBgjcVCIWbhmWDndEtgsWVEIGmmyuDmZlRgSWD5PIXhM/mBgIBZQIBADArBgNV
HSUEJDAiBggrBgEFBQcDBAYKKwYBBAGCNwoDBAYKKwYBBAGCNwoDDDALBgNVHQ8EBAMCBeAwNwYJ
KwYBBAGCNxUKBCowKDAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMEMAwGCisGAQQBgjcKAwwwRAYJ
KoZIhvcNAQkPBDcwNTAOBggqhkiG9w0DAgICAIAwDgYIKoZIhvcNAwQCAgCAMAcGBSsOAwIHMAoG
CCqGSIb3DQMHMB0GA1UdDgQWBBQ2g8rLbeppK862lUbU9f0tVVJDYDAfBgNVHSMEGDAWgBQfEpkm
bQsLdBFq3HTVhbxGVVRkGDCCAQYGA1UdHwSB/jCB+zCB+KCB9aCB8oY1aHR0cDovL2NybC5yaXZl
cnNpZGVyZXNlYXJjaC5vcmcvY3JsL0JSTy1JU1MtQ0EwMS5jcmyGgbhsZGFwOi8vL0NOPUJSTy1J
U1MtQ0EwMSxDTj1CUk8tSVNTLUNBMDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2Vz
LENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNh
dGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50MIIB
HAYIKwYBBQUHAQEEggEOMIIBCjBaBggrBgEFBQcwAoZOaHR0cDovL2NybC5yaXZlcnNpZGVyZXNl
YXJjaC5vcmcvY3JsL0JSTy1JU1MtQ0EwMS5ycmktdXNhLm9yZ19CUk8tSVNTLUNBMDEuY3J0MIGr
BggrBgEFBQcwAoaBnmxkYXA6Ly8vQ049QlJPLUlTUy1DQTAxLENOPUFJQSxDTj1QdWJsaWMlMjBL
ZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9
b3JnP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5
MFcGA1UdEQRQME6gLQYKKwYBBAGCNxQCA6AfDB1qandoaXRlQHJpdmVyc2lkZXJlc2VhcmNoLm9y
Z4Edamp3aGl0ZUBSaXZlcnNpZGVSZXNlYXJjaC5vcmcwTwYJKwYBBAGCNxkCBEIwQKA+BgorBgEE
AYI3GQIBoDAELlMtMS01LTIxLTMxNTM3MzgxMzItMzQzMzkwMTEwMy00MTE3ODg2MjItMzg4MDEw
DQYJKoZIhvcNAQELBQADggEBAHXZOLBogtVvVEMF4z2Nfqb6b2eLqq95jKLuwFv+/erGRhiANr26
EQIlftf7EoL4M7nj4URujwIdfVZms7fvpTnPDk4x7vo6toKakKtlXBfH3A78Sb2wYREZJnSCW08d
9VhgqVIBKVeJ1xKg/FhIWauqdkR24dQ1Ozz5NzUlEY1ZWHDtuDVOM0Ul28X+N408uKjKg2h8W4oj
QmgpmnUN4eTQy7uVpcxV/KutBfXeDk9EoJp7CtPyUKpYvC65rO8isIz79zcBBHYqsyVAZHjYqKmF
MH8Evc8t9dUXPIWEOuUfNM9SG/7YOIc5zNS7+IlEIhxH3Se3AWRzTOYdy4ea0hAxggNmMIIDYgIB
ATBcMEUxEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMRUwEwYD
VQQDEwxCUk8tSVNTLUNBMDECEx0AAALq7DmY/ZzCqsMAAAAAAuowDQYJYIZIAWUDBAIBBQCgggHb
MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDMwNjE5MzExMVow
LwYJKoZIhvcNAQkEMSIEII7q3rOTXXtP1dIQoWsj7LFKpw1tGfLF5uFge7kazIVMMGsGCSsGAQQB
gjcQBDFeMFwwRTETMBEGCgmSJomT8ixkARkWA29yZzEXMBUGCgmSJomT8ixkARkWB3JyaS11c2Ex
FTATBgNVBAMTDEJSTy1JU1MtQ0EwMQITHQAAAursOZj9nMKqwwAAAAAC6jBtBgsqhkiG9w0BCRAC
CzFeoFwwRTETMBEGCgmSJomT8ixkARkWA29yZzEXMBUGCgmSJomT8ixkARkWB3JyaS11c2ExFTAT
BgNVBAMTDEJSTy1JU1MtQ0EwMQITHQAAAursOZj9nMKqwwAAAAAC6jCBkwYJKoZIhvcNAQkPMYGF
MIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4G
CCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDALBglghkgBZQMEAgEwCwYJYIZIAWUDBAIDMAsG
CWCGSAFlAwQCAjAHBgUrDgMCGjANBgkqhkiG9w0BAQEFAASCAQCapkWpyiPlPNrxBhXP60qDwmTv
IP1+vLSQEcKntcE747ScLQ6/k3kOs+TQPr0KOpXjCfHBPRRDNIA2PHnsKQNZq5KGTb1aZZ9waXa4
VZybegWtDDd/Bjn5e/nVvOe8Yebl3D6F4xtjRElrbhy5v91y78vUoUQGhS5Qa8fhFCd7fW0iay7a
DJVyyYao5eVSWgZb3ZAIWjb3EnVfYP1jupDh12Az2t32iE3mH1UIW50lDJrlARkIDQBDuLew3/5l
j47/uG/eE1mMr3zfX3B0wbGio/aoHuUWkrHZGTbB6hqx7ypU2AKvuYQMwJoduZzwXeLDt7yGyX8n
k8qz9t3cejCvAAAAAAAA

------=_NextPart_000_0084_01DA6FD2.EF8706F0--

--===============5715559391122812745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5715559391122812745==--
