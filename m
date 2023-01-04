Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2747D65D4BF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 14:55:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B17D4384369
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 08:55:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672840543; bh=SFjo1klAPP0alCVnC2NVRebrQfy/TbnJYNu5XyURW5g=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rBZ6Kp1Wtpg8iNFnzEIxEQgEy5RqiBqlE6ecdFNo44ausAE9CUaymiMIVgAsPQaym
	 d9JXbqz8DhHpqIox21dgEAQMb9E0MkfdZ3563iw7NF5wAcSsGoXsHCsR5Rdy+1PT/u
	 +iZo6CvYcU+Ly2YJMi5WOY1wiZ0P20QiuwDtdlLoEkEhsgmtve1Y/e7e0l6XUAKCcf
	 CzG6ngWi74DUY9zoPvaWYfZdfFgLyr5elsVTGOYc9GmgPsRlyTj+W8rCLj9Vyb+Kdg
	 y1lJeW/KPyEFOwXdBdrvuzlx1Jre/5sYBBeQjGujx5aUgheyJinJO14LQLT8LQwNsn
	 3XDbkFDhK65hA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2094.outbound.protection.outlook.com [40.107.8.94])
	by mm2.emwd.com (Postfix) with ESMTPS id 321C8384314
	for <usrp-users@lists.ettus.com>; Wed,  4 Jan 2023 08:54:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nioz.nl header.i=@nioz.nl header.b="axf4jorQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZpoeL/CiiNpnDPHZYBL72wL4GrGk+J4GIGz30mYyN6SHUdKDWa/R3yMs0SuRKW2oLBpklk+WH1lWESA0kF5EYLO6wqsIzoXsqdAd3g2SFvK3vvpaoX4fpY6B27uUDemxDPwFiRirXCJdjwSzTmc0JUYsfnHXNb/gZ/6hnZCkUzbIu5LBUxZdKikH1WGS1EpwZ3Oj4KKMfb1kTH5T1BR3LNZPrvox4Cz597RP30/HTFBV26urkMKuxIVPyDEP10F8DaZB2/G9hYPuDKgGpIEboeciY3fUCCqTHP6lFpkO1bwxT/5vkpyDIhD9xepHc/T2D7a2h35f3QzRkSXRA4Ujg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfP9IK84m8XsVHxfJIN/K/oOQ6pCZ89wAO98Fj5qt2c=;
 b=IrTRRRQY3U7LPwhPBICaEcQbmjSlxD6Q7wU+0KPqWWNYjqXgf4h6E338m7GKq/Kco+YodpxckqLXp3qycQmJ36ETrrmMuMQfda777sO7hexLYH23KHYdtiaOho/DNkpsXw3q9POkS/CTilhXPM4IFsFjYN5MY8gNiXN3nb2oytMdd4nZwiyX1nAAN5uit3YfUDmFOKP4br9urh+la9r9stRpVF3GFxfuPLVRHpvrq018ELGDHcqBHQeeTK3fAGLCGbtOMzSY28F2HTtFeZW3ujkJZBXYoOvcGwZGGe6TbgdHpUivDQt7sLWmpfd5Vzxla7kxwUfFBp1fOveWXfJD5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nioz.nl; dmarc=pass action=none header.from=nioz.nl; dkim=pass
 header.d=nioz.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nioz.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfP9IK84m8XsVHxfJIN/K/oOQ6pCZ89wAO98Fj5qt2c=;
 b=axf4jorQ89oOLlv0yG8hChRIAf+6kQmDOD3VmG+kQDiWBBLZRHqMVCnwn0S3VZHw8TaCKkeTcTsmPuQu9gadMbsDKE0+ZuHKODeTRaNZbXp5OZL4GKYaZ3P+eYVVhTi6J6z2L+wMOFmFLCcvkPsvNOCidmNoE468zcIasr84uaBDupFQnQ84MVpuIMVJchskrupwBMGeAgkuArUGLOZ469InYvfBWLnyRANPTKZODwRPGFa5bQdC00YziYJGeTZrVLabSDQOaIg183RjknQFmt6hoJq4/GqS2M36lz2zu4k/r0wmGP2FBK3h1iQP/N9agtKF+rRXPxi8g2LGdilNGQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nioz.nl;
Received: from AS8P192MB1728.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:508::6)
 by GVXP192MB1688.EURP192.PROD.OUTLOOK.COM (2603:10a6:150:6d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 13:54:10 +0000
Received: from AS8P192MB1728.EURP192.PROD.OUTLOOK.COM
 ([fe80::4d3b:bd72:17a3:57d2]) by AS8P192MB1728.EURP192.PROD.OUTLOOK.COM
 ([fe80::4d3b:bd72:17a3:57d2%9]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 13:54:10 +0000
Content-Type: multipart/mixed; boundary="------------T1MUIdd5Vr42TxQkGgrj7oQY"
Message-ID: <3331a538-bf38-6eb3-ed04-dd1850797499@nioz.nl>
Date: Wed, 4 Jan 2023 14:54:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Bas Denissen <bas.denissen@nioz.nl>
X-ClientProxiedBy: AM0PR02CA0029.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::42) To AS8P192MB1728.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:508::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8P192MB1728:EE_|GVXP192MB1688:EE_
X-MS-Office365-Filtering-Correlation-Id: daed1320-a25e-4447-0b97-08daee5b27cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pkf7bTZ8S6JmMhXIUdKFPQyi/vyoe9J9WTLSdM3fkWM4+TFv9aXdsnLca00dYnd/L0SAPf459/jznZZ10pmIp2TZz4Mx3N0lRO/f8lH9q+Uh6Mjo1jXOqRgZ8+hsFuYxEh/r7wbvt3oHPkFbMFmGQ6YOtZ+dYH4Xunoy5LRPHfckOhqLwItP1Br+yNvK0vGQSmzZCAXA5e2hQjD6yu2I4h5S9XNagL9hBuOuY4urxglyboxrmJFRHDGaduPCM3ikNt46wDK0sDuUB7z5sM+Qu9Czg0b3JmWIC3h/BFSkhbM+TuwxJy9RYey8MedYg8hTSgNkPCep3WmW2ZMbj+RAAahdIIhcRoe5w9W6kAKTUwx5DgMB2h0RVmVh0XcYkn65PCJyFHlgbe8jHUy/IGhoKBnKa4w//ljvXhLqjSoYOnTpoLljfdCWsznyE8BFW7c2PZT3EwZhg2g8chFN6St7Lm1VoBBQzHJn2/X8P/2jpPapvULFblj20+a9ILn5rmVzLDme0DucFobIfsVZxaABalFp9csLIyU9K97ppWplrLNysVHN7FeS6yL1MMp+vFSp5tKeoMwM4UVV2m+b/n/kPElAAARGizagf4+SlLicb0B00fa/utg3zoVrerfjd16n9i+mUIkOBiXl1RcoYy88W8o7cGvw3o+LJDyLCWxyYh18bwj7BmaIb+XoW72c3w1Gf82AKpzrO5dyBlfqPTJjngsDFuvbVTIRroKIyKw153I=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8P192MB1728.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(366004)(346002)(376002)(136003)(396003)(451199015)(36756003)(6916009)(31696002)(86362001)(33964004)(26005)(316002)(786003)(478600001)(44832011)(6486002)(2906002)(235185007)(5660300002)(8676002)(8936002)(66946007)(66476007)(66556008)(41320700001)(41300700001)(38100700002)(21480400003)(186003)(6512007)(6506007)(83380400001)(2616005)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WWFTVGZKcTdEZm9hOXlQaTE3MklzV21SNUU1RU5LdXg3OVlvYzE0dEFWSDEv?=
 =?utf-8?B?bzUyU0RWTnZxMFNiUFpjZDM0TitrelR0QzN0VDlPRFE3ZVk3Y2c2NnR1NXJS?=
 =?utf-8?B?OHA0WHV2SlI4VS9TWm5qdlV3ZkVPYzd6V2drN0JTRXBEaWZrZ3ZMMDN0UG9p?=
 =?utf-8?B?NTdxWTkwaDVqbWloNkFiYkMrZFozSzM2bkh6RnBaQU5hcCtMZEhmcmNsNDcr?=
 =?utf-8?B?SDZxM2ZIcStwek5ZUkF6L1ZEMnpCd0l4dzdwRUhpNkxqVjQzb3FFQi8xUnFN?=
 =?utf-8?B?TjJDU2NYb3VGaWhUZVQxQSs0UFdxRlFPbDZTeTVldjhKdythWFJndUpsVlVi?=
 =?utf-8?B?YW1mQzI5OHR4bHZXbE5IMjkxbWljZk4xWWxmWTBFdEZuOXpFU3lVRFpVdzZS?=
 =?utf-8?B?WndMZmQ2YlBYNlJKbVY3UWI4Q2hoU3ZFQnlsclBpMjVOeHR5M1pOa2sxZ0pZ?=
 =?utf-8?B?bmZmZi96U0ZtZFdTTWtSZFh6ZTFKNlYvVGN0TjgwcGpFY2VSUmExTG5SREsz?=
 =?utf-8?B?RmR0NktJMmhiSk05aXpIbWw3ZVZKYjh1ZExQemxON01GWHpxOU1GWjNneVhi?=
 =?utf-8?B?U3lIbGtEN1diWWl5cC8xUUNGUldCMmQwSDdMQWtaQUZkdklSdXdyK2FaRlRT?=
 =?utf-8?B?ek1rcFlIbXh0czdBL3JHQVNpa3VuN3Y1dGFVQjl4bTc1M0NSTUEzeDhWMklM?=
 =?utf-8?B?N2FoaG5BTHIxMlZxY3BQYzV3SW5QZzNtTDRPWE1LYjlhTGZsL1o0eFdKOHRs?=
 =?utf-8?B?Z0hIaW5TWDJPUFhQc2pFcDBHOFFpWmhtVWgrTmxpSUNMelRuZnJsMDlRVk9X?=
 =?utf-8?B?bDRiR2xqcStHc2R2Yng3YVNUY1p2QnpkOWxoQ0xtaFJsazBzamQ4M2hheWRF?=
 =?utf-8?B?T04xWWE4Y0Z3SUp3U1JwMEMxVTdGYkNrMHFtZ3NwOFFlSTBKZ3BTeVZNMnND?=
 =?utf-8?B?ZmRnVnVzc0FPUElOSUNjSEZNQXo2VGpVUEpTaktBaThTY0t2S2JCVjYzdE83?=
 =?utf-8?B?YlZ2NldRWFY3QUJQV0tVV3lMSjVNUE1mRTA2Wk1uVDlaSE9wNXFuRFRncjh3?=
 =?utf-8?B?Y1lqMFZaUW1INmhnaXpBK2JaWE90NHlOMG5nOHdldGxRK1ViZnlVODltanNY?=
 =?utf-8?B?VlBhZW1yRnkzMzVhd1B6cHI1akZsd2ZCd3lWaVdDUFF5Y0ZjOVcxN3FSNHRV?=
 =?utf-8?B?Y0lQSmVPeEF5T25xb3BBdTRBUHZOYm8xUklnYVJIem5lbnpkR3FzNzI5MjZz?=
 =?utf-8?B?eW9lWnFJdlBLU01zbjMyNnE5aUxJMHAyZFV1TUc3MDFzcWh2SXR3WDNKSzRZ?=
 =?utf-8?B?TXNuR0srVEVLcDRKWU5lL2hnWFFDYlNtY1Yyd2kvV0s0bjMxNFlDaDFrTWF5?=
 =?utf-8?B?dFdPY0VZQjZxY1FMdHQweHRjN0pCZ3dPTjNnUDVaUmJEYnM5dDB1bmZtUW1N?=
 =?utf-8?B?UWkyekpFTmdGamZQUGpGM1pmM0tLMWlSN3VJYkNRZkVsSnp6QytWcXl4eUkv?=
 =?utf-8?B?TXQ2MHJJTTR1NzBVczUyUE9WMVBhQ1QxOVBCbDA2RXpSWXdUTG5ETFoxTkpl?=
 =?utf-8?B?Z292eVNHTzlJVVVZZm55SEsyN1VIUDRXelVpcnhFRDhpT1ZYdW5xNGlaZjhG?=
 =?utf-8?B?UkYyWHJ2dmlNZUw5UTBTNldGMVNGU01BSTJMQ2RIamViRnVWYUJLUG1MZ3FM?=
 =?utf-8?B?K3NPTWRoNEdVQnpieHdZSDNZZDBRbjJmL0JEcm5qVlU0TXZmc2lsLzJyVlox?=
 =?utf-8?B?NjZBbE81UXlyc25uRW9ZYmNDOXI4UVl1ellWVFJiVmJNb2p5bTEyWEdReE92?=
 =?utf-8?B?NU92WUtKUUVpZlozN0hmTjJsOHZKMkNiYnBXN1crYTR0emxzTjg2bnBsclRV?=
 =?utf-8?B?Y3luQlpnanVPY0lFUTE5VVJXcnRGZ3ZhZVE2ak91QW1tekJ4NUxlMjlZYlAv?=
 =?utf-8?B?dU1qcG15TmRHZFZqcm5telZKRzEvYWRKM0M1M083L2Q1MExkVCtGMnVZNzdn?=
 =?utf-8?B?Zk1GaFpnbUsyNG1CYzRGQ2YzajdtNW5icExrTXFGL0tjekdJaWd4d0YxRDlV?=
 =?utf-8?B?eDY2THJqL1NzUEk1bjRpRmpTWEJEOG93MDVjMjRoVU9UZ2xiM2RkeElUSE1G?=
 =?utf-8?Q?ecW9K31uqoiVnbAKkrfGcfD3f?=
X-OriginatorOrg: nioz.nl
X-MS-Exchange-CrossTenant-Network-Message-Id: daed1320-a25e-4447-0b97-08daee5b27cc
X-MS-Exchange-CrossTenant-AuthSource: AS8P192MB1728.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 13:54:10.4870
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 9a1651bf-58af-435b-86a8-3e9334b4b732
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/4Sc7OHzov4bxcla3n9vvSvU1J1nttApfgzbYL267lRt0i9zU8RsOrQWsqYB5aETvohLqahME6Q8FhIPQHt2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP192MB1688
Message-ID-Hash: ZDMETO5ZPVBZPWLVUVKLNPXTLH3BEB22
X-Message-ID-Hash: ZDMETO5ZPVBZPWLVUVKLNPXTLH3BEB22
X-MailFrom: bas.denissen@nioz.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] b200 + gpsdo but no correct/reliable lock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDMETO5ZPVBZPWLVUVKLNPXTLH3BEB22/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--------------T1MUIdd5Vr42TxQkGgrj7oQY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Last year we bought an b200 + gpsdo + antenna for use in our atlas bird 
tracking system where we currently use n200's.

Around Christmas I spent some time trying to get it up and running, but 
soon found out the gpsdo doesn't (reliably) lock and even when it 
reports to be locked, time is often incorrect and frozen. Every now and 
then, the pps led and 'stable' leds on the gpsdo turn on/blink. Only 
twice in the I saw the b200's green 'locked' led turn on minutes and the 
device seemed operating correctly for a few minutes.

Things verified/done:

* connected an extra power supply (the b200 uses around 400mA a 6.1v 
right now)
* make sure gpsdo is correctly installed
* make sure latest firmware is used
* no different behavior with latest uhd libraries (currently using the 
stock Ubuntu ones)
* re-power the b200
* the correct (5v) gps antenna is attached. The voltage supplied by the 
gpsdo does drop from around 5v to 3.7 volt when the antenna gets 
connected, not sure if that is expected.
* waited hours (days actually) for the gpsdo to stabilize
* n200 gps puck at the same location works fine and reliable

Below is some 'debug' info from the uhd_usrp_probe and 
query_gpsdo_sensors tools. Attached is also my test program which 
periodically shows the gpsdo status and its output showing the erratic 
behaviour.

Any idea's on how to troubleshoot the gpsdo? Or is the 
b200/gpsdo/antenna probably broken and should we contact Ettus/NI for 
warranty?

Thanks for your help,

   Bas Denissen






bdenissen@mtebas:~/projects/uh$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; 
UHD_3.15.0.0-2build5
[INFO] [B200] Detected Device: B200
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO....
[INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
   _____________________________________________________
  /
|       Device: B-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: B200
|   |   serial: 326BD95
|   |   name: MyB200
|   |   product: 1
|   |   revision: 5
|   |   FW Version: 8.0
|   |   FPGA Version: 16.0
|   |
|   |   Time sources:  none, internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo, 
ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 0
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: FE-RX1
|   |   |   |   Antennas: TX/RX, RX2
|   |   |   |   Sensors: temp, rssi, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: B200 RX dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX DSP: 0
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: FE-TX1
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: temp, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: B200 TX dual DAC
|   |   |   |   Gain Elements: None







bdenissen@mtebas:~/projects/uh$ /usr/lib/uhd/utils/query_gpsdo_sensors

Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; 
UHD_3.15.0.0-2build5
[WARNING] [UHD] Unable to set the thread priority. Performance may be 
negatively affected.
Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
[INFO] [B200] Detected Device: B200
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO....
[INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
   Device: B-Series Device
   Mboard 0: B200
   RX Channel: 0
     RX DSP: 0
     RX Dboard: A
     RX Subdev: FE-RX1
   TX Channel: 0
     TX DSP: 0
     TX Dboard: A
     TX Subdev: FE-TX1

Setting the reference clock source to "gpsdo"...
Clock source is now gpsdo
Setting the reference clock source to "gpsdo"...
Time source is now gpsdo
Waiting for ref_locked....USRP Locked to Reference.
**************************************Helpful Notes on Clock/PPS 
Selection**************************************
As you can see, the default 10 MHz Reference and 1 PPS signals are now 
from the GPSDO.
If you would like to use the internal reference(TCXO) in other 
applications, you must configure that explicitly.
****************************************************************************************************************
Waiting for the GPSDO to warm up...
The GPSDO is warmed up and talking.

GPS does not have lock. Wait a few minutes and try again.
NMEA strings and device time may not be accurate until lock is achieved.


Trying to align the device time to GPS time...
Could not align UHD Device time to GPS time. Giving up.
last_pps: 1136073602 vs gps: 1136073600.
Printing available NMEA strings:
GPS_GPGGA: 
$GPGGA,000000.00,0000.0000,N,00000.0000,E,0,00,100.0,0.0,M,0.0,M,,*5C
GPS_GPRMC: $GPRMC,000000.00,V,0000.0000,N,00000.0000,E,0.0,0.0,010106,,*22
GPS Epoch time at last PPS: 1136073600.00000 seconds
UHD Device time last PPS:   1136073603.00000 seconds
UHD Device time right now:  1136073603.01326 seconds
PC Clock time:              1671626326 seconds

Done!



--------------T1MUIdd5Vr42TxQkGgrj7oQY
Content-Type: text/plain; charset=UTF-8; name="uh.py.txt"
Content-Disposition: attachment; filename="uh.py.txt"
Content-Transfer-Encoding: base64

IyEvYmluL2VudiBweXRob24zCgppbXBvcnQgc3lzCiNzeXMucGF0aC5hcHBlbmQoJy91c3IvbG9j
YWwvbGliL3B5dGhvbjMvZGlzdC1wYWNrYWdlcycpCmltcG9ydCB1aGQKaW1wb3J0IHRpbWUKCnVz
cnAgPSB1aGQudXNycC5NdWx0aVVTUlAoInR5cGU9YjIwMCIpCnVzcnAuc2V0X2Nsb2NrX3NvdXJj
ZSgnZ3BzZG8nKQp1c3JwLnNldF90aW1lX3NvdXJjZSgnZ3BzZG8nKQp3aGlsZSBUcnVlOgogICAg
ZGF0YSA9IHt9CiAgICBmb3Igc24gaW4gKCdncHNfbG9ja2VkJywgJ2dwc190aW1lJywgJ3JlZl9s
b2NrZWQnKToKICAgICAgICBkYXRhW3NuXSA9IHVzcnAuZ2V0X21ib2FyZF9zZW5zb3Ioc24pLnZh
bHVlCgogICAgcHJpbnQoKQogICAgcHJpbnQodGltZS5jdGltZSgpLCBkYXRhKQogICAgdGltZS5z
bGVlcCgxKQoK

--------------T1MUIdd5Vr42TxQkGgrj7oQY
Content-Type: text/x-log; charset=UTF-8; name="uh.log"
Content-Disposition: attachment; filename="uh.log"
Content-Transfer-Encoding: base64

YmRlbmlzc2VuQG10ZWJhczp+L3Byb2plY3RzL3VoJCBVSERfTE9HX0NPTlNPTEVfTEVWRUw9ZGVi
dWcgLi91aC5weSAKW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS4yLjEgMjAy
MDAzMDQ7IEJvb3N0XzEwNzEwMDsgVUhEXzMuMTUuMC4wLTJidWlsZDUKW0RFQlVHXSBbQjIwMF0g
dGhlIGZpcm13YXJlIGltYWdlOiAvaG9tZS9iZGVuaXNzZW4vcHJvamVjdHMvdWgvdXNycF9iMjAw
X2Z3LmhleApbREVCVUddIFtQUkVGU10gTG9hZGVkIHN5c3RlbSBjb25maWcgZmlsZSAvZXRjL3Vo
ZC91aGQuY29uZgpbREVCVUddIFtQUkVGU10gTG9hZGVkIHVzZXIgY29uZmlnIGZpbGUgL2hvbWUv
YmRlbmlzc2VuLy51aGQvdWhkLmNvbmYKW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZpY2U6IEIy
MDAKW0lORk9dIFtCMjAwXSBPcGVyYXRpbmcgb3ZlciBVU0IgMy4KW0lORk9dIFtCMjAwXSBEZXRl
Y3RpbmcgaW50ZXJuYWwgR1BTRE8uLi4uIApbSU5GT10gW0dQU10gRm91bmQgYW4gaW50ZXJuYWwg
R1BTRE86IEdQU1RDWE8sIEZpcm13YXJlIFJldiAwLjkyOWIKW1dBUk5JTkddIFtHUFNdIHVwZGF0
ZV9jYWNoZTogTWFsZm9ybWVkIEdQU0RPIHN0cmluZzogR1BTVENYTywgRmlybXdhcmUgUmV2IDAu
OTI5YgpbSU5GT10gW0IyMDBdIEluaXRpYWxpemUgQ09ERUMgY29udHJvbC4uLgpbSU5GT10gW0Iy
MDBdIEluaXRpYWxpemUgUmFkaW8gY29udHJvbC4uLgpbREVCVUddIFtBRDkzNlhdIGJhc2ViYW5k
IGJhbmR3aWR0aCB0b28gbGFyZ2UgZm9yIGN1cnJlbnQgc2FtcGxlIHJhdGUuIFNldHRpbmcgYmFu
ZHdpZHRoIHRvOiA1ZSswNwpbREVCVUddIFtBRDkzNlhdIGJhc2ViYW5kIGJhbmR3aWR0aCB0b28g
bGFyZ2UgZm9yIGN1cnJlbnQgc2FtcGxlIHJhdGUuIFNldHRpbmcgYmFuZHdpZHRoIHRvOiA1ZSsw
NwpbREVCVUddIFtBRDkzNlhdIGJhc2ViYW5kIGJhbmR3aWR0aCB0b28gbGFyZ2UgZm9yIGN1cnJl
bnQgc2FtcGxlIHJhdGUuIFNldHRpbmcgYmFuZHdpZHRoIHRvOiA1ZSswNwpbREVCVUddIFtBRDkz
NlhdIGJhc2ViYW5kIGJhbmR3aWR0aCB0b28gbGFyZ2UgZm9yIGN1cnJlbnQgc2FtcGxlIHJhdGUu
IFNldHRpbmcgYmFuZHdpZHRoIHRvOiA1ZSswNwpbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVn
aXN0ZXIgbG9vcGJhY2sgdGVzdC4uLiAKW0lORk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0
ZXN0IHBhc3NlZApbREVCVUddIFtBRDkzNlhdIFBlcmZvcm1pbmcgQ09ERUMgbG9vcGJhY2sgdGVz
dC4uLiAKW0RFQlVHXSBbQUQ5MzZYXSBDT0RFQyBsb29wYmFjayB0ZXN0IHBhc3NlZC4KW0lORk9d
IFtCMjAwXSBTZXR0aW5nIG1hc3RlciBjbG9jayByYXRlIHNlbGVjdGlvbiB0byAnYXV0b21hdGlj
Jy4KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMTYuMDAwMDAwIE1Iei4uLiAK
W0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6LgpbREVC
VUddIFtDT1JFU10gUGVyZm9ybWluZyB0aW1lciBsb29wYmFjayB0ZXN0Li4uIApbREVCVUddIFtD
T1JFU10gVGltZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQuCgpXZWQgSmFuICA0IDE0OjM4OjQwIDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzg6NDIgMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDozODo0NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjM4OjQ2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzg6NDggMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozODo1MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjM4OjUyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzg6NTQg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozODo1NiAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjM4OjU4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6Mzk6MDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozOTowMiAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjA0IDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6Mzk6MDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozOTow
OCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywg
J3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjEwIDIwMjMgeydncHNfbG9j
a2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0
cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzk6MTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAn
Z3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAg
NCAxNDozOToxNCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcy
ODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjE2IDIwMjMg
eydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xv
Y2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzk6MTggMjAyMyB7J2dwc19sb2NrZWQnOiAn
ZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoK
V2VkIEphbiAgNCAxNDozOToyMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGlt
ZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5
OjIyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzk6MjQgMjAyMyB7J2dwc19s
b2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzog
J3RydWUnfQoKV2VkIEphbiAgNCAxNDozOToyNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScs
ICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFu
ICA0IDE0OjM5OjI4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2
NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzk6MzAgMjAy
MyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZf
bG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozOTozMiAyMDIzIHsnZ3BzX2xvY2tlZCc6
ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjM5OjM0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190
aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6
Mzk6MzYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUx
MycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozOTozOCAyMDIzIHsnZ3Bz
X2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQn
OiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjQwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNl
JywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBK
YW4gIDQgMTQ6Mzk6NDIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDozOTo0NCAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjQ2IDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6Mzk6NDggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDozOTo1MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjUyIDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6Mzk6NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDozOTo1NiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjM5OjU4
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6MDAgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0MDowMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQwOjA0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4
Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6MDYgMjAyMyB7
J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9j
a2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDowOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdm
YWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpX
ZWQgSmFuICA0IDE0OjQwOjEwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1l
JzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6
MTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycs
ICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDoxNCAyMDIzIHsnZ3BzX2xv
Y2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAn
dHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjE2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywg
J2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4g
IDQgMTQ6NDA6MTggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3
MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDoyMCAyMDIz
IHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9s
b2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjIyIDIwMjMgeydncHNfbG9ja2VkJzog
J2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30K
CldlZCBKYW4gIDQgMTQ6NDA6MjQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
MDoyNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEz
JywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjI4IDIwMjMgeydncHNf
bG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6
ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6MzAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2Un
LCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEph
biAgNCAxNDo0MDozMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcx
NjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjM0IDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6MzYgMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDo0MDozOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjQwOjQwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6NDIgMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDo0NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQwOjQ2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDA6NDgg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDo1MCAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjUyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDA6NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MDo1NiAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQwOjU4IDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6NDE6MDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MTow
MiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICd0cnVlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6MDQgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0MTowNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQxOjA4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4
Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6MTAgMjAyMyB7
J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9j
a2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MToxMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdm
YWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpX
ZWQgSmFuICA0IDE0OjQxOjE0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1l
JzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6
MTYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycs
ICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MToxOCAyMDIzIHsnZ3BzX2xv
Y2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAn
dHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQxOjIwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywg
J2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4g
IDQgMTQ6NDE6MjIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3
MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MToyNCAyMDIz
IHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9s
b2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQxOjI2IDIwMjMgeydncHNfbG9ja2VkJzog
J2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30K
CldlZCBKYW4gIDQgMTQ6NDE6MjggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
MTozMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEz
JywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQxOjMyIDIwMjMgeydncHNf
bG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6
ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6MzQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2Un
LCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEph
biAgNCAxNDo0MTozNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcx
NjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQxOjM4IDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6NDAgMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDo0MTo0MiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjQxOjQ0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6NDYgMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MTo0OCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQxOjUwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDE6NTIg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MTo1NCAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQxOjU2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDE6NTggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MjowMCAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjAyIDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6NDI6MDQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Mjow
NiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywg
J3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjA4IDIwMjMgeydncHNfbG9j
a2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0
cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6MTAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAn
Z3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAg
NCAxNDo0MjoxMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcy
ODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjE0IDIwMjMg
eydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xv
Y2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6MTYgMjAyMyB7J2dwc19sb2NrZWQnOiAn
ZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoK
V2VkIEphbiAgNCAxNDo0MjoxOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGlt
ZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQy
OjIwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6MjIgMjAyMyB7J2dwc19s
b2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzog
J3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MjoyNCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScs
ICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFu
ICA0IDE0OjQyOjI2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2
NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6MjggMjAy
MyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZf
bG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MjozMCAyMDIzIHsnZ3BzX2xvY2tlZCc6
ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjQyOjMyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190
aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6
NDI6MzQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUx
MycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MjozNiAyMDIzIHsnZ3Bz
X2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQn
OiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjM4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNl
JywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBK
YW4gIDQgMTQ6NDI6NDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Mjo0MiAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjQ0IDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6NDI6NDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDo0Mjo0OCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjQ5IDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6NTEgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDo0Mjo1MyAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQyOjU1
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDI6NTcgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0Mjo1OSAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQzOjAxIDIwMjMgeydncHNfbG9ja2VkJzogJ3RydWUnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MzowMyAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICd0cnVlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6MDUgMjAyMyB7J2dwc19sb2NrZWQnOiAndHJ1
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQzOjA3IDIwMjMgeydncHNfbG9ja2VkJzogJ3RydWUnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MzowOSAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjExIDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6NDM6MTMgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDo0MzoxNSAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjE3IDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6MTkgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDo0MzoyMSAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjIz
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6MjUgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0MzoyNyAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQzOjI5IDIwMjMgeydncHNfbG9ja2VkJzogJ3RydWUnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0MzozMSAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICd0cnVlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6MzMgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDo0MzozNSAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjM3
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6MzkgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAndHJ1ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjQxIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDM6NDIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Mzo0NCAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjQ2IDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6NDM6NDggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Mzo1
MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywg
J3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjUyIDIwMjMgeydncHNfbG9j
a2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0
cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDM6NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAn
Z3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAg
NCAxNDo0Mzo1NiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcy
ODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQzOjU4IDIwMjMg
eydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xv
Y2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6MDAgMjAyMyB7J2dwc19sb2NrZWQnOiAn
ZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoK
V2VkIEphbiAgNCAxNDo0NDowMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGlt
ZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0
OjA0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6MDYgMjAyMyB7J2dwc19s
b2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzog
J3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDowOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScs
ICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFu
ICA0IDE0OjQ0OjEwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2
NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6MTIgMjAy
MyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZf
bG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDoxNCAyMDIzIHsnZ3BzX2xvY2tlZCc6
ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjQ0OjE2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190
aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6
NDQ6MTggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUx
MycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDoyMCAyMDIzIHsnZ3Bz
X2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQn
OiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0OjIyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNl
JywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBK
YW4gIDQgMTQ6NDQ6MjQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDoyNiAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0OjI4IDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6NDQ6MzAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDo0NDozMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0OjM0IDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6MzYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDo0NDozOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0OjQw
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6NDIgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0NDo0NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQ0OjQ2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4
Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6NDggMjAyMyB7
J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9j
a2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDo1MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdm
YWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpX
ZWQgSmFuICA0IDE0OjQ0OjUyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1l
JzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDQ6
NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycs
ICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NDo1NiAyMDIzIHsnZ3BzX2xv
Y2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAn
dHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ0OjU4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywg
J2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4g
IDQgMTQ6NDU6MDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3
MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NTowMiAyMDIz
IHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9s
b2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjA0IDIwMjMgeydncHNfbG9ja2VkJzog
J2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30K
CldlZCBKYW4gIDQgMTQ6NDU6MDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
NTowOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEz
JywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjEwIDIwMjMgeydncHNf
bG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6
ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6MTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2Un
LCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEph
biAgNCAxNDo0NToxNCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcx
NjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjE2IDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6MTggMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDo0NToyMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjQ1OjIyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6MjQgMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NToyNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQ1OjI4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6MzAg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NTozMiAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjM0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDU6MzYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NTozOCAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjQwIDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6NDU6NDIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NTo0
NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywg
J3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjQ2IDIwMjMgeydncHNfbG9j
a2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0
cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6NDggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAn
Z3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAg
NCAxNDo0NTo1MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcy
ODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1OjUyIDIwMjMg
eydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xv
Y2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDU6NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAn
ZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoK
V2VkIEphbiAgNCAxNDo0NTo1NiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGlt
ZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ1
OjU4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6MDAgMjAyMyB7J2dwc19s
b2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzog
J3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NjowMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScs
ICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFu
ICA0IDE0OjQ2OjA0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2
NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6MDYgMjAy
MyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZf
bG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NjowOCAyMDIzIHsnZ3BzX2xvY2tlZCc6
ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjQ2OjEwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190
aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6
NDY6MTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUx
MycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NjoxNCAyMDIzIHsnZ3Bz
X2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQn
OiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjE2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNl
JywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBK
YW4gIDQgMTQ6NDY6MTggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NjoyMCAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjIyIDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6NDY6MjQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDo0NjoyNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjI4IDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6MzAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFs
c2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2Vk
IEphbiAgNCAxNDo0NjozMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6
ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjM0
IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAn
cmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6MzYgMjAyMyB7J2dwc19sb2Nr
ZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3Ry
dWUnfQoKV2VkIEphbiAgNCAxNDo0NjozOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdn
cHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0
IDE0OjQ2OjQwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4
Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6NDIgMjAyMyB7
J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9j
a2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Njo0NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdm
YWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpX
ZWQgSmFuICA0IDE0OjQ2OjQ2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1l
JzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDY6
NDggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycs
ICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Njo1MCAyMDIzIHsnZ3BzX2xv
Y2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAn
dHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjUyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywg
J2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4g
IDQgMTQ6NDY6NTQgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3
MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Njo1NiAyMDIz
IHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9s
b2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ2OjU4IDIwMjMgeydncHNfbG9ja2VkJzog
J2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30K
CldlZCBKYW4gIDQgMTQ6NDc6MDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
NzowMiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEz
JywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjA0IDIwMjMgeydncHNf
bG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6
ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6MDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2Un
LCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEph
biAgNCAxNDo0NzowOCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcx
NjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjEwIDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6MTIgMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDo0NzoxNCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjQ3OjE2IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6MTggMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NzoyMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQ3OjIyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6MjQg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NzoyNiAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjI4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDc6MzAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0NzozMiAyMDIzIHsn
Z3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2Nr
ZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjM0IDIwMjMgeydncHNfbG9ja2VkJzogJ2Zh
bHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldl
ZCBKYW4gIDQgMTQ6NDc6MzYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUn
OiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Nzoz
OCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywg
J3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjQwIDIwMjMgeydncHNfbG9j
a2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0
cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6NDIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAn
Z3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAg
NCAxNDo0Nzo0NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcy
ODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3OjQ2IDIwMjMg
eydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xv
Y2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6NDggMjAyMyB7J2dwc19sb2NrZWQnOiAn
ZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoK
V2VkIEphbiAgNCAxNDo0Nzo1MCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGlt
ZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ3
OjUyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDc6NTQgMjAyMyB7J2dwc19s
b2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzog
J3RydWUnfQoKV2VkIEphbiAgNCAxNDo0Nzo1NiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScs
ICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFu
ICA0IDE0OjQ3OjU4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2
NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6MDAgMjAy
MyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZf
bG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0ODowMiAyMDIzIHsnZ3BzX2xvY2tlZCc6
ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjQ4OjA0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190
aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6
NDg6MDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUx
MycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0ODowOCAyMDIzIHsnZ3Bz
X2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQn
OiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjEwIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNl
JywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBK
YW4gIDQgMTQ6NDg6MTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0ODoxNCAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3Jl
Zl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjE2IDIwMjMgeydncHNfbG9ja2Vk
JzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVl
J30KCldlZCBKYW4gIDQgMTQ6NDg6MTggMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3Bz
X3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAx
NDo0ODoyMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3
NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjIyIDIwMjMgeydn
cHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tl
ZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6MjQgMjAyMyB7J2dwc19sb2NrZWQnOiAndHJ1
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQ4OjI2IDIwMjMgeydncHNfbG9ja2VkJzogJ3RydWUnLCAnZ3BzX3RpbWUnOiAn
MTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0ODoyOCAy
MDIzIHsnZ3BzX2xvY2tlZCc6ICd0cnVlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6MzAgMjAyMyB7J2dwc19sb2NrZWQn
OiAndHJ1ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9
CgpXZWQgSmFuICA0IDE0OjQ4OjMyIDIwMjMgeydncHNfbG9ja2VkJzogJ3RydWUnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
ODozNCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICd0cnVlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMn
LCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6MzYgMjAyMyB7J2dwc19s
b2NrZWQnOiAndHJ1ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAn
dHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjM4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywg
J2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4g
IDQgMTQ6NDg6NDAgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3
MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0ODo0MiAyMDIz
IHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9s
b2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjQ0IDIwMjMgeydncHNfbG9ja2VkJzog
J2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30K
CldlZCBKYW4gIDQgMTQ6NDg6NDYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3Rp
bWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0
ODo0OCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEz
JywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjUwIDIwMjMgeydncHNf
bG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6
ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6NTIgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2Un
LCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEph
biAgNCAxNDo0ODo1NCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcx
NjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0OjQ4OjU2IDIw
MjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVm
X2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDg6NTggMjAyMyB7J2dwc19sb2NrZWQn
OiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUn
fQoKV2VkIEphbiAgNCAxNDo0OTowMCAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxzZScsICdncHNf
dGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQgSmFuICA0IDE0
OjQ5OjAyIDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzogJzE2NzI4Mzc1
MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDk6MDQgMjAyMyB7J2dw
c19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdyZWZfbG9ja2Vk
JzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0OTowNiAyMDIzIHsnZ3BzX2xvY2tlZCc6ICdmYWxz
ZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1ZSd9CgpXZWQg
SmFuICA0IDE0OjQ5OjA4IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dwc190aW1lJzog
JzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQgMTQ6NDk6MTAg
MjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3MjgzNzUxMycsICdy
ZWZfbG9ja2VkJzogJ3RydWUnfQoKV2VkIEphbiAgNCAxNDo0OToxMiAyMDIzIHsnZ3BzX2xvY2tl
ZCc6ICdmYWxzZScsICdncHNfdGltZSc6ICcxNjcyODM3NTEzJywgJ3JlZl9sb2NrZWQnOiAndHJ1
ZSd9CgpXZWQgSmFuICA0IDE0OjQ5OjE0IDIwMjMgeydncHNfbG9ja2VkJzogJ2ZhbHNlJywgJ2dw
c190aW1lJzogJzE2NzI4Mzc1MTMnLCAncmVmX2xvY2tlZCc6ICd0cnVlJ30KCldlZCBKYW4gIDQg
MTQ6NDk6MTYgMjAyMyB7J2dwc19sb2NrZWQnOiAnZmFsc2UnLCAnZ3BzX3RpbWUnOiAnMTY3Mjgz
NzUxMycsICdyZWZfbG9ja2VkJzogJ3RydWUnfQo=

--------------T1MUIdd5Vr42TxQkGgrj7oQY
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------T1MUIdd5Vr42TxQkGgrj7oQY--
