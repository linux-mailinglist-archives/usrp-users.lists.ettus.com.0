Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D96CA205
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 13:04:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9216C38457E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 07:04:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679915072; bh=WdPeabEJTA1lZnfouyvL6bCzva2+vX5aCdlQcx0pKFc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GRrjSlVTNQe2uIDp0OOznzONjL4jTOOzjfWN2U8Si7A0ApsAdl42Co6QCjNfMQct1
	 Y4VV/EaeqVQUOR6ePJxIjx7Gc/IXX4ymuLLCsiPsWJK0kGoEDyplXoWKpgCzHJyj9R
	 75Zvqlrk8zTCoD2terizxgti4ljCj8fhjQhvisxjERV5Z3MMtSh4VC5rwlZ7ZqBP4k
	 BqTu/D0AVhqsKqCltnubopz3Tla+4095S65+bxTiQ+Iik6wDQ93p0pP2a8oVoZh3uQ
	 XZOfpkU3Hsxam7nK5u7mW7iu8HriV6v0eu0/eVZ2vaKMZVWSWZtNT9omljM7KHEgUU
	 ixdPeHaulvC9w==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2063.outbound.protection.outlook.com [40.107.222.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 4391F384193
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 07:03:38 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nr7ygceBwulL4msL14q8XX/mk1dYVkdr2wGNd+yGG2dh+8RrJTMc/bhW8YNwheqKdeD5coICl8d7/bYZV/IB3/7YsH/8xje0bKrTuPGpqrMVEiyDZy4werl19qnJJUechvPO1rkb4f7KqHXixeWAPEVmmujBBaVxBWKBRo/YV4O3bwiZpy4FK3PynlYT5t+CuO9nDmQK1cXC1u8/g44nTR4i1oa73OqQLCXAm3+9zfLJ4fPCp1f9g4/BaXYE0NasRhRwW+VvgJxosr5q5vqX3K+NgrueVkjtUDKZ32SulpYUk8mbUJCi/3V9+uK+bvWaRpM7X5lpTyl7/vsc0u7FQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pFQ6xaqha3EVYKFW4mJwhZZjwQnPxxIgFzABN/WksKQ=;
 b=OUt7no9u2FMA1c79qo1j7YcDIsrb3wF4V7PDtCK9ssN9AgyhUoTHqiObAkz0PXspWBu0CxI0jCdKPTbrprkoU8rDaEP0D8MmZuV8qi7prtOOtHxeDcZkkPpP85SpnWq1tEJU7aSOqA8bqgG/fZTyEDpacblT5SyZXLLc09NZKNf77Ozx3H5TjgsX0pdE88hJHSacZU/MOGQjULl0XMhhwLe8Pq/BRaqL8puSGgeL1FYMnYQWGdirXCCCRRX5kr8XTtI4uChVMV9C8ylwBcfDuRw1GRAJltAy0heZq+cdITOzImEGhBVHW3iBLgxQ4224m3VDyBjXREi7A4Liuj1lsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
Received: from MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:60::23)
 by PN3PR01MB6318.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:82::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 11:03:34 +0000
Received: from MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::311b:546a:66ed:9f8a]) by MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::311b:546a:66ed:9f8a%4]) with mapi id 15.20.6222.028; Mon, 27 Mar 2023
 11:03:34 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Timer loopback test failed!  in usrp B210
Thread-Index: AQHZYJs7lVhpWzyoqEuWQtkAuOISug==
Date: Mon, 27 Mar 2023 11:03:34 +0000
Message-ID: 
 <MAXPR01MB35656AAAFC3637BA53236B80D68B9@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MAXPR01MB3565:EE_|PN3PR01MB6318:EE_
x-ms-office365-filtering-correlation-id: a40ff40d-a7f9-4722-2023-08db2eb2e88a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VNBn1ybpXG0j+XXL/tgzengQaTX1G+xQqRf7kOLyYe5CFlrfJ32HhVOOi34QZABgBOb92Z9LFkFf7XnAZzON/o4AL2GM0aikK6w2i+LnZ/a/VreD1+95smsP9u6syRbD3opZkkVD0daWqsSGyhtVg7zgRrLkd0cPfeRmgluNzk3zsbxzrgdm1kScgF0uxPXYCUSyY6w5zwAl9D9f8TJVWZzinFA79tZX39JdwL8ps11gqJV4dErcj7S/5A9vldz4BLATlD3BCl6T2Sdk1IX6z2HaXLGykqnnDfgAZrvqErt86EsmkqK8Jr5PE/GGppn97fDjbar2CDITD2NYC+FCD1ThclMttH2w1sPhop2EBINBDkYNAkjysIQQnzJCBJHEIxeKiWXokajuATPg+/3oAzPGEF9kGVa0Q5LDZLaUlhYyNADN6ntYtzv91uOY9jTKHKL5RJD7twjfbB78ihAF4hqcUYseN3cdcEk/7hOLISGbo7nQptwkff5Pdm0d4ppn0P61K2RU0gjp7ArUiQd1U2gcs9CNPe7OQ92zX9tC8bY+8wsYB7sZJekHqr+qdHxYkptNoE/7+5l6Lycxr8/0eKhV0qJG4FVCEUC4nL9burVk08q2aHyoOOVD8zf8iGpp
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(39850400004)(136003)(396003)(366004)(376002)(346002)(451199021)(33656002)(55236004)(186003)(26005)(6506007)(9686003)(83380400001)(55016003)(6916009)(41300700001)(19627405001)(66446008)(76116006)(91956017)(66946007)(64756008)(8676002)(2906002)(52536014)(122000001)(8936002)(38100700002)(5660300002)(7696005)(71200400001)(66556008)(66476007)(316002)(478600001)(86362001)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?jHxhkdPrG3YWtoWNveGkL9VuXyuCy4e7aOwUdKIXuLIieO7YvDB7Ft0R07?=
 =?iso-8859-1?Q?AiA3EZN3fF0EA8J2wE20L3Xq5HKSv3JIwk5xH073WOuTf+WK9jpW6fYiSw?=
 =?iso-8859-1?Q?9nhqwCoqA54gH+Ces9HXjGtvHAA/8t8z6iheF5CdbgoQ3yU0bnvfN2c2SQ?=
 =?iso-8859-1?Q?fXQJ9dmEO8x0iNcd0ieH2dK0gfYlFtRZ3UKuj0aoE2+EzSU72aPm0pWLO6?=
 =?iso-8859-1?Q?5M/fsuBLj2aIvnR2TWU5J5fcjy6aOZmJ0uGjfgyMxOvPcKuqJ6FhMhze1k?=
 =?iso-8859-1?Q?GUeIE3XURe/eU0asKBrn8gFg6h7Zdp7PmN8IGiqYPxVXXlkrrK6dNCQ5Jd?=
 =?iso-8859-1?Q?Z0s8TLFmCwjt8T53Oc3wJOwEX4mW/v8ohMxy6gBSzMmDRmR7e6QANMHAOA?=
 =?iso-8859-1?Q?xmU99b7u61hnAEO2Zu1eYFZGNYfBPMJ5JmeUTeN5LEa+zekheyvI5jwic8?=
 =?iso-8859-1?Q?sVSIjemKk4kvg2bxQhHWQeG5Cj+RG9AntifS9HK23B4l86a/1xEcnm3Noc?=
 =?iso-8859-1?Q?416s1A1/t2O9Jm6sP0Wx26zLnW9JuxVjj0hhwF7DC9wEyfo+5xSsBpdbeK?=
 =?iso-8859-1?Q?Nd8VuGg/D0gzWi8cls3NngCVklp5JuPNd3ICHA7p7WQKRt0iM912RprPe3?=
 =?iso-8859-1?Q?m8Js/JI3ppID0VHeuECDPqEy0SzGuDzTCt3Gf74MmDbKXnf3KTu4Dkxlds?=
 =?iso-8859-1?Q?sXRj7+jW3AI4Zy6Q+4PeTwxZuEglcS2/msN2hNfHevmsrqf5gDexVKOlhb?=
 =?iso-8859-1?Q?Y8gxrAAaD0zMipk0MDquldbLq6s++v6YFV4gKjHOdPRnaf5ynSG0Ht0qUx?=
 =?iso-8859-1?Q?Xr6u4NWopqXX24239qjKDbi4YCviiltnR9BLN8sKKb2wby+jQdJ9XJHbWK?=
 =?iso-8859-1?Q?jYbaKcxtBUg0zgMn8JP/53zvYrywdExbKP+Enr9dCBp4u/lLwv+7IgExKH?=
 =?iso-8859-1?Q?vuJJaQfVZBQHwnhItFmORvdopfmRHNzD1ojd/GJzBMzYaKjBvKQ81aXLjn?=
 =?iso-8859-1?Q?blF8A+rlWr9TZ/cNeAZ3aqBfB0J2EM1es7gOX0ez3iev0JMPRVfLthP7Ep?=
 =?iso-8859-1?Q?C2TTJQddwK4VW0+L46CiZo+jZcKlNfvQWAi+yAtvUK2QOucZM5dBvt2+ls?=
 =?iso-8859-1?Q?X6FKTIaxMIfisscKakJ3j/L3qwNRY61GLOPD7siz3NHvRTbJf1q/OdwqiD?=
 =?iso-8859-1?Q?bgUv+SYQDXxJ31Lj/TynDfvSQVqi9y07e6sAWJd5SQ/0WUeRXHWkbISevn?=
 =?iso-8859-1?Q?VdlSIInqkehkf2jCzrm3vTAI+8GucrXlIov/69rqRRlQXc56KzY6sU/lMp?=
 =?iso-8859-1?Q?GT41h7F8vVtUDS/0EGSjz/1/O+VGvtLEB4NHfFRMyiHT2ap7OcC+qhei67?=
 =?iso-8859-1?Q?KfVljx74rNv5WxFjWjNOxvPTKHbAdq/MHeqJLGba38U4c3HKMnVCsD/0aC?=
 =?iso-8859-1?Q?KvYWUetoFpBupe7P1apbzduuLshpYjHJ78g6jxXSCvTPKAYoG/cBtW9xEf?=
 =?iso-8859-1?Q?3X0zviJBzrrF0/gd/KmiZpTL6p5Xqgg7d0yCAQnZVJ8ddq8nODqBybi4Na?=
 =?iso-8859-1?Q?MzkVDqJXduqE53iNr3WKEJ8xvzNczsfdZ9B1dRsAe53gLft1tUS5TXLAST?=
 =?iso-8859-1?Q?mKbn7sxqjXTyjYnMsYq8K0s0nKC9f+Uj+y3UhJGSW1aJTkgaqFU79nVQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a40ff40d-a7f9-4722-2023-08db2eb2e88a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:03:34.3390
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lMddiK4uZT+B9wMWPfHmrrcglsXZG7AQx7jdIlX4CnqB8TiEeOllxqxLGTPZYU6NAbLNJRGEOU7t3VUlM84+gETwpDVVfRzUdgNAINs4Kyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB6318
Message-ID-Hash: CDLOZ4JLTNM454RSLZOXY5ZTMKYNJOND
X-Message-ID-Hash: CDLOZ4JLTNM454RSLZOXY5ZTMKYNJOND
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timer loopback test failed!  in usrp B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H55ALZBMHUI2RGKG732BHIIFCAR7UFMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4081287675426196409=="

--===============4081287675426196409==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB35656AAAFC3637BA53236B80D68B9MAXPR01MB3565INDP_"

--_000_MAXPR01MB35656AAAFC3637BA53236B80D68B9MAXPR01MB3565INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear team,


I am using usrpB210 vdoing some test ,uhd version is (tag: v4.4.0.0).  when=
 I was connected the board ,I am getting below error please help me to reso=
lve the issue.

PHY]   Waiting for RUs to be configured ... RC.ru_mask:01
[PHY]   [INIT] nr_phy_init_RU() ru->num_gNB:1
[LIBCONFIG] device.recplay: 8/8 parameters successfully set, (8 to default =
value)
[LIBCONFIG] device: 1/1 parameters successfully set, (1 to default value)
[LIBCONFIG] loader: 2/2 parameters successfully set, (2 to default value)
[LIBCONFIG] loader.oai_device: 2/2 parameters successfully set, (1 to defau=
lt value)
shlib_path liboai_device.so
[LOADER] library liboai_device.so successfully loaded
[HW]   openair0_cfg[0].sdr_addrs =3D=3D '(null)'
[HW]   openair0_cfg[0].clock_source =3D=3D '0' (internal =3D 0, external =
=3D 1)
[HW]   UHD version 4.4.0.HEAD-0-g5fac246b (4.4.0)
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-=
g5fac246b
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200=
_fw.hex...
[HW]   Found USRP b200
[INFO] [B200] Detected Device: B210
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b210_fpg=
a.bin...
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO....
[INFO] [GPS] No GPSDO found
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Asking for clock rate 30.720000 MHz...
[INFO] [B200] Actually got clock rate 30.720000 MHz.
[HW]   Setting clock source to internal
[HW]   Setting time source to internal
-- Using calibration table: calib_table_b210_38
[INFO] [B200] Asking for clock rate 46.080000 MHz...
[INFO] [B200] Actually got clock rate 46.080000 MHz.
[WARNING] [CORES] Timer loopback test failed!
[WARNING] [CORES] Expecting clock rate: 46.08 MHz
Approximate clock rate: 0 MHz

[HW]   cal 0: freq 3500000000.000000, offset 44.000000, diff 119200000.0000=
00
[HW]   cal 1: freq 2660000000.000000, offset 49.800000, diff 959200000.0000=
00
[HW]   cal 2: freq 2300000000.000000, offset 51.000000, diff 1319200000.000=
000
[HW]   cal 3: freq 1880000000.000000, offset 53.000000, diff 1739200000.000=
000
[HW]   cal 4: freq 816000000.000000, offset 57.000000, diff 2803200000.0000=
00
[HW]   RX Gain 0 115.000000 (44.000000) =3D> 71.000000 (max 76.000000)
[HW]   USRP TX_GAIN:77.75 gain_range:89.75 tx_gain:12.00
[HW]   Actual master clock: 46.080000MHz...
[HW]   Actual clock source internal...
[HW]   Actual time source internal...
[HW]   setting rx channel 0
[HW]   RF board max packet size 1916, size for 100=B5s jitter 4608
[HW]   rx_max_num_samps 1916
[HW]   RX Channel 0
[HW]     Actual RX sample rate: 46.080000MSps...
[HW]     Actual RX frequency: 3.619200GHz...
[HW]     Actual RX gain: 71.000000...
[HW]     Actual RX bandwidth: 40.000000M...
[HW]     Actual RX antenna: RX2...
[HW]   TX Channel 0
[HW]     Actual TX sample rate: 46.080000MSps...
[HW]     Actual TX frequency: 3.619200GHz...
[HW]     Actual TX gain: 77.750000...
[HW]     Actual TX bandwidth: 40.000000M...
[HW]     Actual TX antenna: TX/RX...
[HW]     Actual TX packet size: 1916
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B210
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1

[HW]   Device timestamp: 1.168859...
[HW]   [RAU] has loaded USRP B200 device.
setup_RU_buffers: frame_parms =3D 0x7f771c2af010
[PHY]   RU 0 Setting N_TA_offset to 600 samples (factor 1.500000, UL Freq 3=
600120, N_RB 106, mu 1)
[PHY]   Signaling main thread that RU 0 is ready, sl_ahead 6
waiting for sync (ru_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4b7e480=
)
RC.ru_mask:00
[PHY]   RUs configured
ALL RUs READY!
RC.nb_RU:1
ALL RUs ready - init gNBs
Not NFAPI mode - call init_eNB_afterRU()
[PHY]   init_eNB_afterRU() RC.nb_nr_inst:1
[PHY]   RC.nb_nr_CC[inst:0]:0x7f771bd75010
[PHY]   [gNB 0] phy_init_nr_gNB() About to wait for gNB to be configured
[LIBCONFIG] loader.dfts: 2/2 parameters successfully set, (1 to default val=
ue)
shlib_path libdfts.so
[LOADER] library libdfts.so successfully loaded
[LIBCONFIG] loader.ldpc: 2/2 parameters successfully set, (1 to default val=
ue)
shlib_path libldpc.so
[LOADER] library libldpc.so successfully loaded
[PHY]   Initialise nr transport
[PHY]   Mapping RX ports from 1 RUs to gNB 0
[PHY]   gNB->num_RU:1
[PHY]   Attaching RU 0 antenna 0 to gNB antenna 0
create a thread for core -1
create a thread for core -1
create a thread for core -1
create a thread for core -1
create a thread for core -1
create a thread for core -1
create a thread for core -1
create a thread for core -1
waiting for sync (L1_stats_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4=
b7e480)
[PHY]   Creating thread for TX reordering and dispatching to RU
ALL RUs ready - ALL gNBs ready
Sending sync to all threads
Entering ITTI signals handler
TYPE <CTRL-C> TO TERMINATE
got sync (L1_stats_thread)
got sync (ru_thread)
[HW]   current pps at 2.000000, starting streaming at 3.000000
[PHY]   RU 0 rf device ready
[PHY]   RU 0 RF started opp_enabled 0
sleep...


Please let me know any other details required

Regards,
Sivaneshkumar K

Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_MAXPR01MB35656AAAFC3637BA53236B80D68B9MAXPR01MB3565INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Dear team,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I am using usrpB210 vdoing some test ,uhd version is (tag: v4.4.0.0).&nbsp;=
 when I was connected the board ,I am getting below error please help me to=
 resolve the issue.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
PHY] &nbsp; Waiting for RUs to be configured ... RC.ru_mask:01
<div class=3D"ContentPasted1">[PHY] &nbsp; [INIT] nr_phy_init_RU() ru-&gt;n=
um_gNB:1 </div>
<div class=3D"ContentPasted1">[LIBCONFIG] device.recplay: 8/8 parameters su=
ccessfully set, (8 to default value)</div>
<div class=3D"ContentPasted1">[LIBCONFIG] device: 1/1 parameters successful=
ly set, (1 to default value)</div>
<div class=3D"ContentPasted1">[LIBCONFIG] loader: 2/2 parameters successful=
ly set, (2 to default value)</div>
<div class=3D"ContentPasted1">[LIBCONFIG] loader.oai_device: 2/2 parameters=
 successfully set, (1 to default value)</div>
<div class=3D"ContentPasted1">shlib_path liboai_device.so</div>
<div class=3D"ContentPasted1">[LOADER] library liboai_device.so successfull=
y loaded</div>
<div class=3D"ContentPasted1">[HW] &nbsp; openair0_cfg[0].sdr_addrs =3D=3D =
'(null)'</div>
<div class=3D"ContentPasted1">[HW] &nbsp; openair0_cfg[0].clock_source =3D=
=3D '0' (internal =3D 0, external =3D 1)</div>
<div class=3D"ContentPasted1">[HW] &nbsp; UHD version 4.4.0.HEAD-0-g5fac246=
b (4.4.0)</div>
<div class=3D"ContentPasted1">[INFO] [UHD] linux; GNU C++ version 11.3.0; B=
oost_107400; UHD_4.4.0.HEAD-0-g5fac246b</div>
<div class=3D"ContentPasted1">[INFO] [B200] Loading firmware image: /usr/lo=
cal/share/uhd/images/usrp_b200_fw.hex...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; Found USRP b200</div>
<div class=3D"ContentPasted1">[INFO] [B200] Detected Device: B210</div>
<div class=3D"ContentPasted1">[INFO] [B200] Loading FPGA image: /usr/local/=
share/uhd/images/usrp_b210_fpga.bin...</div>
<div class=3D"ContentPasted1">[INFO] [B200] Operating over USB 3.</div>
<div class=3D"ContentPasted1">[INFO] [B200] Detecting internal GPSDO.... </=
div>
<div class=3D"ContentPasted1">[INFO] [GPS] No GPSDO found</div>
<div class=3D"ContentPasted1">[INFO] [B200] Initialize CODEC control...</di=
v>
<div class=3D"ContentPasted1">[INFO] [B200] Initialize Radio control...</di=
v>
<div class=3D"ContentPasted1">[INFO] [B200] Performing register loopback te=
st... </div>
<div class=3D"ContentPasted1">[INFO] [B200] Register loopback test passed</=
div>
<div class=3D"ContentPasted1">[INFO] [B200] Performing register loopback te=
st... </div>
<div class=3D"ContentPasted1">[INFO] [B200] Register loopback test passed</=
div>
<div class=3D"ContentPasted1">[INFO] [B200] Asking for clock rate 30.720000=
 MHz... </div>
<div class=3D"ContentPasted1">[INFO] [B200] Actually got clock rate 30.7200=
00 MHz.</div>
<div class=3D"ContentPasted1">[HW] &nbsp; Setting clock source to internal<=
/div>
<div class=3D"ContentPasted1">[HW] &nbsp; Setting time source to internal</=
div>
<div class=3D"ContentPasted1">-- Using calibration table: calib_table_b210_=
38</div>
<div class=3D"ContentPasted1">[INFO] [B200] Asking for clock rate 46.080000=
 MHz... </div>
<div class=3D"ContentPasted1">[INFO] [B200] Actually got clock rate 46.0800=
00 MHz.</div>
<div class=3D"ContentPasted1"><span style=3D"background-color: rgb(255, 255=
, 0);">[WARNING] [CORES] Timer loopback test failed!</span></div>
<div class=3D"ContentPasted1"><span style=3D"background-color: rgb(255, 255=
, 0);">[</span><span style=3D"background-color: rgb(255, 255, 0);">WARNING]=
 [CORES] Expecting clock rate: 46.08 MHz</span></div>
<div class=3D"ContentPasted1"><span style=3D"background-color: rgb(255, 255=
, 0);">Approximate clock rate: 0 MHz</span></div>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">[HW] &nbsp; cal 0: freq 3500000000.000000, of=
fset 44.000000, diff 119200000.000000</div>
<div class=3D"ContentPasted1">[HW] &nbsp; cal 1: freq 2660000000.000000, of=
fset 49.800000, diff 959200000.000000</div>
<div class=3D"ContentPasted1">[HW] &nbsp; cal 2: freq 2300000000.000000, of=
fset 51.000000, diff 1319200000.000000</div>
<div class=3D"ContentPasted1">[HW] &nbsp; cal 3: freq 1880000000.000000, of=
fset 53.000000, diff 1739200000.000000</div>
<div class=3D"ContentPasted1">[HW] &nbsp; cal 4: freq 816000000.000000, off=
set 57.000000, diff 2803200000.000000</div>
<div class=3D"ContentPasted1">[HW] &nbsp; RX Gain 0 115.000000 (44.000000) =
=3D&gt; 71.000000 (max 76.000000)</div>
<div class=3D"ContentPasted1">[HW] &nbsp; USRP TX_GAIN:77.75 gain_range:89.=
75 tx_gain:12.00</div>
<div class=3D"ContentPasted1">[HW] &nbsp; Actual master clock: 46.080000MHz=
...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; Actual clock source internal...</=
div>
<div class=3D"ContentPasted1">[HW] &nbsp; Actual time source internal...</d=
iv>
<div class=3D"ContentPasted1">[HW] &nbsp; setting rx channel 0</div>
<div class=3D"ContentPasted1">[HW] &nbsp; RF board max packet size 1916, si=
ze for 100=B5s jitter 4608
</div>
<div class=3D"ContentPasted1">[HW] &nbsp; rx_max_num_samps 1916</div>
<div class=3D"ContentPasted1">[HW] &nbsp; RX Channel 0</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual RX sample rate: 46.=
080000MSps...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual RX frequency: 3.619=
200GHz...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual RX gain: 71.000000.=
..</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual RX bandwidth: 40.00=
0000M...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual RX antenna: RX2...<=
/div>
<div class=3D"ContentPasted1">[HW] &nbsp; TX Channel 0</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX sample rate: 46.=
080000MSps...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX frequency: 3.619=
200GHz...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX gain: 77.750000.=
..</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX bandwidth: 40.00=
0000M...</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX antenna: TX/RX..=
.</div>
<div class=3D"ContentPasted1">[HW] &nbsp; &nbsp; Actual TX packet size: 191=
6</div>
<div class=3D"ContentPasted1">Using Device: Single USRP:</div>
<div class=3D"ContentPasted1">&nbsp; Device: B-Series Device</div>
<div class=3D"ContentPasted1">&nbsp; Mboard 0: B210</div>
<div class=3D"ContentPasted1">&nbsp; RX Channel: 0</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX DSP: 0</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX Dboard: A</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX Subdev: FE-RX2</div>
<div class=3D"ContentPasted1">&nbsp; RX Channel: 1</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX DSP: 1</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX Dboard: A</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; RX Subdev: FE-RX1</div>
<div class=3D"ContentPasted1">&nbsp; TX Channel: 0</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX DSP: 0</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX Dboard: A</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX Subdev: FE-TX2</div>
<div class=3D"ContentPasted1">&nbsp; TX Channel: 1</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX DSP: 1</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX Dboard: A</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; TX Subdev: FE-TX1</div>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">[HW] &nbsp; Device timestamp: 1.168859...</di=
v>
<div class=3D"ContentPasted1">[HW] &nbsp; [RAU] has loaded USRP B200 device=
.</div>
<div class=3D"ContentPasted1">setup_RU_buffers: frame_parms =3D 0x7f771c2af=
010</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; RU 0 Setting N_TA_offset to 600 =
samples (factor 1.500000, UL Freq 3600120, N_RB 106, mu 1)</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; Signaling main thread that RU 0 =
is ready, sl_ahead 6</div>
<div class=3D"ContentPasted1">waiting for sync (ru_thread,-1/0x555dd422f2d4=
,0x555dd4b7e4c0,0x555dd4b7e480)</div>
<div class=3D"ContentPasted1">RC.ru_mask:00</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; RUs configured</div>
<div class=3D"ContentPasted1">ALL RUs READY!</div>
<div class=3D"ContentPasted1">RC.nb_RU:1</div>
<div class=3D"ContentPasted1">ALL RUs ready - init gNBs</div>
<div class=3D"ContentPasted1">Not NFAPI mode - call init_eNB_afterRU()</div=
>
<div class=3D"ContentPasted1">[PHY] &nbsp; init_eNB_afterRU() RC.nb_nr_inst=
:1</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; RC.nb_nr_CC[inst:0]:0x7f771bd750=
10</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; [gNB 0] phy_init_nr_gNB() About =
to wait for gNB to be configured</div>
<div class=3D"ContentPasted1">[LIBCONFIG] loader.dfts: 2/2 parameters succe=
ssfully set, (1 to default value)</div>
<div class=3D"ContentPasted1">shlib_path libdfts.so</div>
<div class=3D"ContentPasted1">[LOADER] library libdfts.so successfully load=
ed</div>
<div class=3D"ContentPasted1">[LIBCONFIG] loader.ldpc: 2/2 parameters succe=
ssfully set, (1 to default value)</div>
<div class=3D"ContentPasted1">shlib_path libldpc.so</div>
<div class=3D"ContentPasted1">[LOADER] library libldpc.so successfully load=
ed</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; Initialise nr transport</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; Mapping RX ports from 1 RUs to g=
NB 0</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; gNB-&gt;num_RU:1</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; Attaching RU 0 antenna 0 to gNB =
antenna 0</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">create a thread for core -1</div>
<div class=3D"ContentPasted1">waiting for sync (L1_stats_thread,-1/0x555dd4=
22f2d4,0x555dd4b7e4c0,0x555dd4b7e480)</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; Creating thread for TX reorderin=
g and dispatching to RU</div>
<div class=3D"ContentPasted1">ALL RUs ready - ALL gNBs ready</div>
<div class=3D"ContentPasted1">Sending sync to all threads</div>
<div class=3D"ContentPasted1">Entering ITTI signals handler</div>
<div class=3D"ContentPasted1">TYPE &lt;CTRL-C&gt; TO TERMINATE</div>
<div class=3D"ContentPasted1">got sync (L1_stats_thread)</div>
<div class=3D"ContentPasted1">got sync (ru_thread)</div>
<div class=3D"ContentPasted1">[HW] &nbsp; current pps at 2.000000, starting=
 streaming at 3.000000</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; RU 0 rf device ready</div>
<div class=3D"ContentPasted1">[PHY] &nbsp; RU 0 RF started opp_enabled 0</d=
iv>
<div class=3D"ContentPasted1">sleep...</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Please let me know any other details required</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Sivaneshkumar K<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_MAXPR01MB35656AAAFC3637BA53236B80D68B9MAXPR01MB3565INDP_--

--===============4081287675426196409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4081287675426196409==--
