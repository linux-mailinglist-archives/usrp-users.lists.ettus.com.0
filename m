Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A58EBA3A880
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 21:16:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86F4B3861ED
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 15:16:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739909770; bh=r/GFTLNMDIq8/WJYylgWDvSYlh2riTqSgl46sK+xBFM=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Cjdp4nSsgfL9/izHO4ESDwH8fkrsZWgJRKl4iwwfkC28M23DWyb/RZCavo/CI6r1S
	 dXWQvXDrK51beTS8sU2kcsmFLJpYD7kRES2SuEEuu9gMnXNRnngtQP7KNS+wLDbTAp
	 aF+J+s9G32D9kz22JGduaBNZio9ey6gi0OdJIs6HTVIVzW2lw+fjz0QHhO3swN2CxY
	 OmubzWTHF/YOrUDoT2kVvrmrXsKL1QAOPkbO5dwdGMyFNp3/BRqeEF7Nfeem4PCoFS
	 P/sHlpty+83vGhMzNEnAFZquFzVZ+xVAaKuvoRJzcSau4aMqqtQMGCTY00KGPsbhYl
	 1BHgY+6MXwsKA==
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2094.outbound.protection.outlook.com [40.107.92.94])
	by mm2.emwd.com (Postfix) with ESMTPS id AA54A3860C4
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 15:15:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ohio.edu header.i=@ohio.edu header.b="CRDNJPYu";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ytJUPlWQv3q5TRe7FAyzXBVS3J+DQRSbkOG8L5wKJVkuyl30lwBxYUR4ipEeWRyckTyeXJz0f8uU6oApm/UKNPG+kg47Vgl9BIYAgwiQzzP7UQTV/9EtgoXb3az85a+haexiNky6FJd7VklbyEEpF1tL/s2ch8VCD9NrKpRS6dTF6XtXTtz7LUMoY2AeSg7Xih772FtfuhTPwmkO2SJUVFYh7te9V9/iZToLS1owMgkcf6eXd+nl1sx7Pg3/N1oji0ATi1n0CSZ84uGfGdF+0r19jIjVRRke07+hcBJlZ2gBns+6b/Esbr+QzTCzxua4+LWpcEzfGrAZg0qGdYmfKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r2BK7CSbuTaHVAASTYyI91BHPMcLSsveLZMzSuC6Gxg=;
 b=vJiQAAjXR84Rf9LkrMNSZMBAjwLoQTbDKlRrJz/djXkXO2FCj97QurkcXlLfN+ZkU7Y5dLEY87t66muN31nEhSJs3TD7qJStF4m1p7nJXuj/xl0WvmGwm/OFVILbid7wHmvKk+0PmUVNE9CwC/9gzfijXyjjEkjlAXBfSBzVEF/XZyFaVdXhcgifgbBHo/hSSbHP7/NCZr0K1ujUqHT5tG57VrC8fCl8vnavSFImxVhVsoFSKij/mloK4eMigVHVfhUboyUzxq0tA7pY+qCNbp6PVKl3I2joiW/Vwmk5+3tRoKyUKhwD6ds4jTOU0pmwll3VnrvR+DeyJ+t8GnXZkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ohio.edu; dmarc=pass action=none header.from=ohio.edu;
 dkim=pass header.d=ohio.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ohio.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r2BK7CSbuTaHVAASTYyI91BHPMcLSsveLZMzSuC6Gxg=;
 b=CRDNJPYuF4lM+GFKy+efmqOdGzogvMYI3KJVM/iFEKmXBvl+6onnW2OrEk3xFuqsTQyayluWaQT77ENu4ZmKR33Kz0a7PxYJgiRRfrFmo5L33SV0XWvLTLIf7AlBjTgmWf5JAqYjTeiTmChhgSa8mEpyjUTmWZ1fN3teUxFkzBX/yd8FFanVChQewpq7CMe5Ypl13iJ7b9IgB6Xz47DINdhRuRH0x4YSpLViUAjw9IGhn3bu/4sKTQmMLXeT2+g4DEC0A49BOYw9yDjJj4zwot5TVNuMICddEyMSm27yjwEQ0YtN40m24rFRG0g/r+0fuSSE/nu1SWRs98AhtN3UFw==
Received: from PH0PR01MB8095.prod.exchangelabs.com (2603:10b6:510:291::16) by
 PH0PR01MB6504.prod.exchangelabs.com (2603:10b6:510:b::14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.12; Tue, 18 Feb 2025 20:15:14 +0000
Received: from PH0PR01MB8095.prod.exchangelabs.com
 ([fe80::b323:4ec5:984f:1929]) by PH0PR01MB8095.prod.exchangelabs.com
 ([fe80::b323:4ec5:984f:1929%4]) with mapi id 15.20.8466.004; Tue, 18 Feb 2025
 20:15:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: MacOS Performance Tips/Tricks
Thread-Index: AQHbgkBmeRVhhSrBdEiI1gt2Jl4Zdg==
Date: Tue, 18 Feb 2025 20:15:14 +0000
Message-ID: 
 <PH0PR01MB8095781319C7CDBE6153F5D6B5FA2@PH0PR01MB8095.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ohio.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR01MB8095:EE_|PH0PR01MB6504:EE_
x-ms-office365-filtering-correlation-id: 6d9a367e-3563-4dcc-fbe7-08dd5058f4a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?fYnuQXTNtFXAf/WTMWIhVGA0z6pcP0O05Sfbe7K8T+YrH/ZDjhmXyG1x?=
 =?Windows-1252?Q?5n/9CuEIxdsY6HiYB1VhkYHSKgZ4RMUpAYDVuIbvmiASIW1iUm4D98Dn?=
 =?Windows-1252?Q?ygwC1mk95x5CL+kfp3V9qOs1gd0ocmpgL1hks/z4uWaQEZy2eJDtQLTP?=
 =?Windows-1252?Q?btykI3t5w1NmjeNYWgkNLdpYrUviT+MluUDN0HjAFAMUvEYdrygyXjad?=
 =?Windows-1252?Q?b8jsSZTW8sGJe0LclTURc8Wtp+v4qlJjGx/vvyZpkhY5W90zV28mJWO7?=
 =?Windows-1252?Q?nzGq1icD30yYdJn3wr6GN1iEUTB1vd00pm6Zq6DGrxXdCDa2dOkB2IpC?=
 =?Windows-1252?Q?GqC89FoTqRoLtWOOZMmcqsVUraSkHXZAO8NrYX2wQ/JSoZchPiw4W2PG?=
 =?Windows-1252?Q?C73Hs/0NJANV7oQ8hvolDuZHJK0paCbe6tZJf5T+lfIugCtPs2bKfv6z?=
 =?Windows-1252?Q?q3Z1Gqqu45mxpX1ulLu5h3PneM7kLBNj4KAgwEjm7+eyEHlkC5sNAn2k?=
 =?Windows-1252?Q?uaTBScHHUqEjsHMM2QVzNd87M28/QHCobuP+UB3XrzldbuOlLgAb/GXp?=
 =?Windows-1252?Q?dkWe0fOIg0+CnQYPuHs6GuRsTZOpPj+D/EL2DWCUkk48lvrGnFiXD2h0?=
 =?Windows-1252?Q?+z0D07Sa7kk8ZNpajH5/964BXTxUq8dYH2HjohrpDcSAuxsWJ+nY5/cK?=
 =?Windows-1252?Q?q75gVaB8Ux1h8mxItMhdaMIGWg6ekjkx97j3+kRqmxaWlKKP6HDfTKQ3?=
 =?Windows-1252?Q?eRNqJAubDfNQdZfmOHq74ZApWsEuwmXaDwKszUtU9pRy+pQoWXrCC6uc?=
 =?Windows-1252?Q?QGiDtMPyoLv+0cdIyBHNq/phzR48Y1eAJu2bT75xrENlqdPj89FAp5fG?=
 =?Windows-1252?Q?LLRCnYqi8/pcz8AECCcvvV5nhZgqqNSovL9AtQt+szWoryIn5hjjseol?=
 =?Windows-1252?Q?ZzTJEvAXlmf454i18JFfgWmEm764lBETvfXj6FIU1fJi7az686TA/eP5?=
 =?Windows-1252?Q?rtYvnFb1Cs5ZhaXUW7RI7jJw29hLTGWNJJtgy8pBVolga9A5rbqhtwH5?=
 =?Windows-1252?Q?JXw+YcRP/YRLeQ6Kh+YD1TMmrlAnR267sCBtnoMOISJytUgaHJKFVOb5?=
 =?Windows-1252?Q?hrXkzxcLufo7K2VwR1cIQu4nq4oTVQ//3N7GvEZDogxunHTnTS4XOVkv?=
 =?Windows-1252?Q?dZsvq1N+MvqDBDA7cGNmSzKsps7kvHnP9uIL/1ERDEht5zz5HlgfKblp?=
 =?Windows-1252?Q?LO9GimLsJDPBGvAJPQ4ZguE4+66QbTeEW+FqKI1ldbFf9qRDtBN8BeFT?=
 =?Windows-1252?Q?aCAOBDC8JTpZNAXIQ9UU/M9+We5li80nhRbc0/rLglDXMNRNae0b4Mbd?=
 =?Windows-1252?Q?G/mQ2dJMtVg/mjkiNRrNwH0TS81XelCVFvCra+Vl8FTOgcAjv9arptDw?=
 =?Windows-1252?Q?3lIf1GnBi15DYsEvy1DRrooBwY48ULX6Lo7Fp10YYhoDn2WK77BIzE1V?=
 =?Windows-1252?Q?ssyhD/AjlE/7tPdOsI0NfukBQv6lRQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR01MB8095.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?68LNQq02zXWNMRaf90Zg0ma3UJC1fdoBvYxzZAN7j4NfYY3BR6/GA17M?=
 =?Windows-1252?Q?dkeKiHYrCT5rzhKvTB7iekeCnDv7/jRhXnQAN+SGc0ByitSTd0gYU/4c?=
 =?Windows-1252?Q?re/uZ5t4Ox/lIEpyhQMbdAcZYf6/sQ9Sfwqjl50E820+RrDGWrR06V85?=
 =?Windows-1252?Q?Vi9lsKpPYbpHASc1/o7+3CCAzl2qFyN/wMgpeXHjq2n2iIWhUKiASjPm?=
 =?Windows-1252?Q?4CcOXWJMivCfWvbAiejhFTZUOabEL4fHxrNnGBBdlhBF1E5pGQ1JLqHQ?=
 =?Windows-1252?Q?CvluIPCEboFQB2qILqwu2OK7DuqvqmdpwL30Ze33TvVlQZ9szqdt3JjJ?=
 =?Windows-1252?Q?smsSsD0tDtyKDEK24pDULUNDIlqAqx1m1z2oO2tGgvzgW5XuHrl3AXZZ?=
 =?Windows-1252?Q?aBuj5AdSG4KMfJc85E0zIwjIlkDaqefA/+4ZZ755NyN4K4CVN3cyaiXX?=
 =?Windows-1252?Q?805crqIqGJX3wAyX4i63sBgG7YghTDMW3o91XE8oQpW8sea0R+eCEjNt?=
 =?Windows-1252?Q?3jKKh2hTHxbfj0GcZjP/rxIlbRmw1IxlF26R0ff97GVQoaAksxHlZyuW?=
 =?Windows-1252?Q?PJpS/ThOuifeBv7lwhGsUI4TwvPF9vQJaV9IFDYnxo+u1Zk8d6fnKFQ0?=
 =?Windows-1252?Q?Ae0ZSNUxUYB/QnuNh3kokqkp4grBuBDAFbWIbpaIjH2RqIY7JPsrj5+q?=
 =?Windows-1252?Q?YqngJE8hR3DVU8EBbkGsLELgxfCH1XVN+ASj/dUuVgyYDCy1cScPzyg9?=
 =?Windows-1252?Q?SX55S2Po+XguwpxlbkYxfdEZ8yNv+Y82XxzxSMUwe2STFhqB0t9SHMZV?=
 =?Windows-1252?Q?EviRsoaER02OJI0TTbFsLmojlM6fsp0FyFQ7H7OqfRQxvUVjZvNFITAl?=
 =?Windows-1252?Q?ALu1x6AJgaR2J9TYZPh49LYAxK9nVZPqUaS6bz8uNqHk9Pbobo0pypbo?=
 =?Windows-1252?Q?swuxiHyCziE5yiP5UEPjQ2cbhdmp5L0cYUs5ZLhOtv9wRr6Px5ihgMPj?=
 =?Windows-1252?Q?pZnMcK8OR9A2oRq8+5ADOe0ZwWyeFlhY/UE0lrHNlaAa7jf2RmVUHGpr?=
 =?Windows-1252?Q?kjFQ12GB+fRouugrpOWds8LUx2zcTpMjYqW3NIT/wr5TEKwR8qIgjJ4G?=
 =?Windows-1252?Q?DoXwg6Qg4v6Zf72PpFAo3siaGanESQYSlUh851IQzyzEYA85PfAPT7Z8?=
 =?Windows-1252?Q?G4NdvkViGyu4rrC/JaHdkm6CvWTX0fu/5Ibhjrl4Z4zRzlsGZLSk7Lqr?=
 =?Windows-1252?Q?46HGnW3+H3VF8Jd1ntzY9+ybPiRUpUVsQ+zdNpBnwH28/KjIw3Ci0ord?=
 =?Windows-1252?Q?7QS9JPTqPiamOM/yDXPeqPIEXPHQVoffuVKKOBth5pEXDUWEOS2+jnTV?=
 =?Windows-1252?Q?s4864dX9+FlE+2TdOMycpeXHGOkOkk2xv4HNioPC53Rh1W2FnItKHC4b?=
 =?Windows-1252?Q?DfAQRfOWxNKEB4YihsLJfwuWRV9hOj1zwok5t/Q1SIGXUSnrGLjx7QHf?=
 =?Windows-1252?Q?mOvz1d8I5DkqQ0LPEzOiixAfqE9n4o67277rShiTi059NOgMyhiMnc2F?=
 =?Windows-1252?Q?pwNypMjw7XhmK4o48tj27jY5uTRIRxfOoS6u0NlNPGLPzr7GQ/KAO/iE?=
 =?Windows-1252?Q?CmPyruYjM5k3twxhlKz5ziTrMDh3nmoq9fp7Y0+zlgOCtbB/hWxDk3xK?=
 =?Windows-1252?Q?OOdMwVjxRbRnO99X/fncQTfUS1UIGuFX?=
MIME-Version: 1.0
X-OriginatorOrg: ohio.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR01MB8095.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9a367e-3563-4dcc-fbe7-08dd5058f4a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2025 20:15:14.7620
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f3308007-477c-4a70-8889-34611817c55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RcJDFOw6GGb+8B7u7ZxxQFgD0u/ChYhPZcO21B7J58Cjpp1lJk2XXE2TQcokX+b/aj/iBDtg3g4H53eDrZvyAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR01MB6504
Message-ID-Hash: SMZKDLDRZCU35BW2YN36IDLYLJIR6TMU
X-Message-ID-Hash: SMZKDLDRZCU35BW2YN36IDLYLJIR6TMU
X-MailFrom: rm249114@ohio.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MacOS Performance Tips/Tricks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MIWSC2HH5UDYMT4JQ5MQ3C2R6DIBDYLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "McKnight, Ryan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "McKnight, Ryan" <rm249114@ohio.edu>
Content-Type: multipart/mixed; boundary="===============1878892147599662254=="

--===============1878892147599662254==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR01MB8095781319C7CDBE6153F5D6B5FA2PH0PR01MB8095prod_"

--_000_PH0PR01MB8095781319C7CDBE6153F5D6B5FA2PH0PR01MB8095prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Does anybody have any tips or tricks for improving streaming performance on=
 MacOS? I am using a B200mini with an M3 MacBook Air, 16 GB RAM on MacOS 15=
. RX performance at the full 56e6 sample rate is decent, but I=92m still ge=
tting occasional overruns. Typically on Linux I can stream indefinitely at =
the full rate with no overruns after using the standard tips from https://k=
b.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks, but these are all=
 Linux-specific.

I=92m guessing that MacOS has less flexibility than Linux for performance t=
uning, but it would be very convenient if I could use it for occasional dat=
a recordings without dropping samples. It would be even better if I could u=
se a B210 and record using 2 channels at the full 56e6 rate (still haven=92=
t had the opportunity to try that out).

I=92m using UHD 4.8, compiled from source using Clang 16, Python 3.13, and =
Boost 1.87.

ryan@Ryan-MBA-2024:/opt/local/lib/uhd/examples$ ./benchmark_rate --args=3D"=
recv_frame_size=3D8000,num_recv_frames=3D512" --rx_rate=3D56e6 --rx_channel=
s=3D0 --priority=3Dhigh --rx_delay=3D3 --duration=3D60

[INFO] [UHD] Mac OS; Clang version 16.0.0 (clang-1600.0.26.4); Boost_108700=
; UHD_4.8.0.0-0-g308126a4
[00:00:00.033500] Creating the usrp device with: recv_frame_size=3D8000,num=
_recv_frames=3D512...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:02.242351375] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 56.000000 MHz...
[INFO] [B200] Actually got clock rate 56.000000 MHz.
[00:00:02.511292166] Testing receive rate 56.000000 Msps on 1 channels
OOO[00:01:05.512534041] Benchmark complete.


Benchmark rate summary:
  Num received samples:     3357192236
  Num dropped samples:      2889426
  Num overruns detected:    3
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

ryan@Ryan-MBA-2024:/opt/local/lib/uhd/examples$

Thanks,
Ryan

--_000_PH0PR01MB8095781319C7CDBE6153F5D6B5FA2PH0PR01MB8095prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Does anybody have any tips or tricks for improving s=
treaming performance on MacOS? I am using a B200mini with an M3 MacBook Air=
, 16 GB RAM on MacOS 15. RX performance at the full 56e6 sample rate is dec=
ent, but I=92m still getting occasional
 overruns. Typically on Linux I can stream indefinitely at the full rate wi=
th no overruns after using the standard tips from
<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>, b=
ut these are all Linux-specific.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92m guessing that MacOS has less flexibility than =
Linux for performance tuning, but it would be very convenient if I could us=
e it for occasional data recordings without dropping samples. It would be e=
ven better if I could use a B210 and
 record using 2 channels at the full 56e6 rate (still haven=92t had the opp=
ortunity to try that out).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92m using UHD 4.8, compiled from source using Clan=
g 16, Python 3.13, and Boost 1.87.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
ryan@Ryan-MBA-2024:/opt/local/lib/uhd/examples$ ./benchmark_rate --args=3D&=
quot;recv_frame_size=3D8000,num_recv_frames=3D512&quot; --rx_rate=3D56e6 --=
rx_channels=3D0 --priority=3Dhigh --rx_delay=3D3 --duration=3D60<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [UHD] Mac OS; Clang version 16.0.0 (clang-1600.0.26.4); Boost_108700=
; UHD_4.8.0.0-0-g308126a4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[00:00:00.033500] Creating the usrp device with: recv_frame_size=3D8000,num=
_recv_frames=3D512...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Detected Device: B200mini<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Operating over USB 3.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Initialize CODEC control...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Initialize Radio control...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Performing register loopback test...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Register loopback test passed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Setting master clock rate selection to 'automatic'.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Asking for clock rate 16.000000 MHz...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Actually got clock rate 16.000000 MHz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Using Device: Single USRP:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Device: B-Series Device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Mboard 0: B200mini<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; RX Channel: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; RX Subdev: FE-RX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; TX Channel: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; TX Subdev: FE-TX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[00:00:02.242351375] Setting device timestamp to 0...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Asking for clock rate 56.000000 MHz...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[INFO] [B200] Actually got clock rate 56.000000 MHz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[00:00:02.511292166] Testing receive rate 56.000000 Msps on 1 channels<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
OOO[00:01:05.512534041] Benchmark complete.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Benchmark rate summary:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num received samples:&nbsp;&nbsp;&nbsp;&nbsp; 3357192236<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num dropped samples:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2889426<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num overruns detected:&nbsp;&nbsp;&nbsp; 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num transmitted samples:&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num sequence errors (Tx): 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num sequence errors (Rx): 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num underruns detected:&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num late commands:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num timeouts (Tx):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp; Num timeouts (Rx):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Done!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
ryan@Ryan-MBA-2024:/opt/local/lib/uhd/examples$<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Ryan<span style=3D"font-family:&quot;Courier New&quo=
t;"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PH0PR01MB8095781319C7CDBE6153F5D6B5FA2PH0PR01MB8095prod_--

--===============1878892147599662254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1878892147599662254==--
