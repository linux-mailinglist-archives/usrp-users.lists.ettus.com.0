Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C61C3E490A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 17:42:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90B413846D1
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 11:42:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="oaFj5lZY";
	dkim-atps=neutral
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2118.outbound.protection.outlook.com [40.107.93.118])
	by mm2.emwd.com (Postfix) with ESMTPS id 911A838422C
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 11:41:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d00bWXpaiMUB7WOW3ebmuICOxFf4Y7xrQ5cqcrzgIoauD+GvRVq0AZXnWwhIWiGkldMd2XZO2bakDYgYqvu+CdSogCNboFTVD7dInPH3L/KDgAErGdn5HPe8T/LN0wxl0KDVDqerj8zTc8XPjklRwIQWch1ivMF61JUQPhLf+jhJ/uBFSHj+XjLwD8CIaVMOoXCtJMLv8e2iGwX4G94jg8UDjBAbIcS5e8haAqEw8Y7xrlFeqttVPg7bkpwVESIaWwxAIvTHw2tC3KPX4g1ZLX8/Lr1Py3QsPR4sYb0AAFEsznXOHKGBftcQvO7F2qtTQhfQNa0Yj85bR+EkZQ2p6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8HXeZcmKq4AXIwvd3FxBIbfulZ685kyjN+4NzqvfPAY=;
 b=Y82jiqcRg6u+wcRYcZYx8ocSUkyqKAgVuv9X+lzKTT7Z4PH9NpgnQ2gErwWJ84kszhiuObHv830ucjQt0+Wa3D8pmilYCYJ2UBxKdl/ziSJIH9Jajr6kkOnZPD28NzT/x/4aD7do1ylxGSQQhG3JUTx/WO4HG85b+TI38dblM6XMuQ3J2MSRt/QUeALENs3tIB//kY0pUKWF7GUBt0F5XNB5GcK1BbLlxcrmVWA4FMDRkzfGHFl7AxSwLGeYNLxL2lh36odRJrxkA1Sk+uyTdrJPC0axriP7GtZOfOvpoh3R5QbK8y0tffWgCRuT84FPF0H5EShOvMWFaJK5ljBz4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8HXeZcmKq4AXIwvd3FxBIbfulZ685kyjN+4NzqvfPAY=;
 b=oaFj5lZY3y7nFsQFJhrZLxH1REtF7FSwQ6hZHM20WdoBUTdScMR5KrYd0Z6TGI/WZIaFrRg4yepokQCjj2b2zCKYa7sJSnkGdph2BBPRNHLYS+m5xmm/MYqg6IkVz63LdnjjGYoXMPTp+tV4ds5UH3/Iw5zV9tPtwc8z++0LWLU=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB2929.namprd05.prod.outlook.com (2603:10b6:404:28::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.10; Mon, 9 Aug
 2021 15:41:39 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21%6]) with mapi id 15.20.4415.012; Mon, 9 Aug 2021
 15:41:39 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: 
 AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4gAAPkoCAAwlFUQ==
Date: Mon, 9 Aug 2021 15:41:39 +0000
Message-ID: 
 <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EA718.1080908@gmail.com>
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com>
In-Reply-To: <610EBFD9.2060400@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c3ea4f0-1de8-44fb-27e0-08d95b4c2ddc
x-ms-traffictypediagnostic: BN6PR05MB2929:
x-microsoft-antispam-prvs: 
 <BN6PR05MB29292B95B81F72A194F36A19D5F69@BN6PR05MB2929.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pQrQsLX2tWsDCx6x6c6OUeuZIwocaXUAY/mNVcUCprg8zqfZyQ7mUnBt4jYJeRzfR2UaQTcRlq29LOEzqhti8V3WqApmgMHDbxaigKwu1KC1Jq+SfMh/wIcKhmaafOqPgM0oBYVguHoB/oeBtRmyFzX3uPqUNsQVNxkJnBgvaiXbaSVaRN7+0gzg3/Pq7D1NsZoxJbgG+Wx2N2JCPXOflNI3zpFtUjD8IYqaLhZ1kvSaOBu5mWBz4tjV5tBKk6MOvxnd+QIByP5PG8DjaJ3aBw2aUNXeaQneAYsH0gLRgYzmwyf6n/ZCv9ZC0hmtWyNi18B9bVWU7vnBQ+kGT3NpKud1ssMbb7JalNCdaNDC2dcLGJuFtNygSqWifY7wmo1i6PDZAle8k1N9UFU3lLVJLV5qsedZhOQXEQca3zAAb/TH07qBC9IlG2tveNBW31ax3sMo5xuAXUEhQeSTd/1Kf3vQ05qxCGYiVQV1LiTcWip9EzHS4rts1x1IoB5IWFffvm/QqcbzzeAOtfmEd6uKoxDklZeXfkdgoA20KZckACVfQG13Fvk1rpWqTfT8M1Ic0eVA0td5vjkVS84mRRg/7mx7yGcLXGRw8dDvhjpcUb/cI3Bwfo1htE0FJA3UrjDSSBD9FHRc4ctnslOQyVvLp9ciJ5e8mTXk2yHZ5BaDqJhFiRsqmzZ/DtlmPKp8P1vHXdhoX9SmRoXgEX4hc6X+yg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(42606007)(346002)(366004)(39830400003)(376002)(136003)(86362001)(19627405001)(66556008)(186003)(66446008)(66476007)(64756008)(66946007)(33656002)(76116006)(91956017)(53546011)(5660300002)(8676002)(6506007)(7696005)(38100700002)(122000001)(8936002)(110136005)(2906002)(26005)(71200400001)(478600001)(83380400001)(52536014)(316002)(55016002)(38070700005)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?ASuuvlAqlSGNcgP2cOzWcglDMEtAA3jMEhMh2YlwMff3iscpwfjVS54y?=
 =?Windows-1252?Q?7brOJQ3CWZvjKg1+T02LCOmi8v+ajnLYFNfzSv5Eea59e3Grq56zjs+W?=
 =?Windows-1252?Q?znZ5bDOwxNTyo4SnuB9qEjWqvBuqRcbuHAMPU/Ss/qp3WdGoAp/GCA1V?=
 =?Windows-1252?Q?u4NBcaCXRHc4zV9xQlpwjmANhqg7WbGSXyCqemUaaq083jRqLgZafzTA?=
 =?Windows-1252?Q?fRKThthsp8S58zHIZnMdVN0GiTI4dHR7+oGTKY/oysJ3IY2V9NCdEiyh?=
 =?Windows-1252?Q?PxR650bs4dOFefMvC9czxLeMlXwNvwoXjtScPUrpJWsMMl+GBVI35a+0?=
 =?Windows-1252?Q?AhRJ9RE1vH5CBwJN7nTRK5WQO/uWey2M6R9Xnu4rISaxkFY+8MznlOMM?=
 =?Windows-1252?Q?si99icTUoOXLTR/EUiJ9P/oG+gA5TOXDN2u6aZY5capZaISzYsnz2dBs?=
 =?Windows-1252?Q?lx8NAJvaR7vkaO+pZW9hOzZxZ3ppqqH8bA/VjpZ3GH+smQhqTcqD+pdT?=
 =?Windows-1252?Q?OGDIPX5aO4TNxp69eDBuoRYuwgDOwwy+Wu9rLBwTOe48iM1LUFg0Oz0v?=
 =?Windows-1252?Q?oDKz7bBB5BABLk1pZL+Oyet/HItS6pu/n2GL90ndq4nfwd31sBF4Ip1g?=
 =?Windows-1252?Q?sLZ/L6iCCdLYSH5GewTL4oNwC/pS96EZ1dS67O0xkGNMUgjbiXKzJErT?=
 =?Windows-1252?Q?r5P0YoExogbaUlFY4O5VwjlcrYrkiMjZBahJppy1kykL3whJ16REluNL?=
 =?Windows-1252?Q?qHabcZ7W8O6XAIV9mnzlLEH+SVaDzFM9atiKo4y+GT1J2oemH/a4hKf9?=
 =?Windows-1252?Q?rdodQHIZsCibTeBT2fSbbiX3qTebHQgtP0yr9KHyS2u13lbRH+bIz+PC?=
 =?Windows-1252?Q?SRbs7GVRO/+z18z2bfWmIHxKs1RBlc5j54jxaXBin+e4kgYMHdZK9SeR?=
 =?Windows-1252?Q?eqVjNU/nQ4Ach1Y6iPBqe89boTVLMLOGxvUeIJmQesnNy0rUE/lYwolB?=
 =?Windows-1252?Q?wQ5SO4N5s4j21wsgmRO9IosFKwE2LlTctatzIPNfA9WbEWoPkiAPO6jp?=
 =?Windows-1252?Q?k+R92q+rU8+zTto3aYUMFnft/LaaEmxEjW+jZTRUjQukDpDhpswzaFzn?=
 =?Windows-1252?Q?wCPCMTIpslb9IKT39IL/+qfxWUx7JHMCmiooDIfSlFcZePjY7CqLArNY?=
 =?Windows-1252?Q?T9SZFTj8zDIczAJ9SQzl6GsA/ZD3YrKQKQ4aIpvuraGRocmGIA6NWM0e?=
 =?Windows-1252?Q?WQYpEphmi1do6VqiPMzvlw9xGN6OpP8/4zPtAijXaQ+5r+voCCAMuv3P?=
 =?Windows-1252?Q?nrj/uHYfWBOnZFz3FALV0lQ2fJ0OG68jcvAcKV70BWiHbvJ+KPb7P0gb?=
 =?Windows-1252?Q?U92TR4PcI56FNmzc1C7U6sNm/df18Gf9CWU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c3ea4f0-1de8-44fb-27e0-08d95b4c2ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 15:41:39.2691
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M3rkZPZ55nNUPpaTsbzs8Nqfo5+BCEnuv7xbVLPz6hxVcis5imE6qVWILvPyjoK8+zCOC3LPc56W0PLTYwpAPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2929
Message-ID-Hash: HRWUSB7RXJRL3SSKM4BN2IXNSVIZZAVR
X-Message-ID-Hash: HRWUSB7RXJRL3SSKM4BN2IXNSVIZZAVR
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7R22RNW6MH66VPTMHFJPVRUORS74HKXN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6164139985534892135=="

--===============6164139985534892135==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450047CE239680F69CB94A0ED5F69BN7PR05MB4500namp_"

--_000_BN7PR05MB450047CE239680F69CB94A0ED5F69BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Here is the output from a simple run of txrx_loopback_to_file "out of the b=
ox." As can be seen, the same error occurs (along with dropped packets this=
 time).


./txrx_loopback_to_file --tx-args "addr=3D192.168.10.2" --rx-args "type=3Dn=
3xx,addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal" --r=
x-freq 2500e6 --rx-rate 6.25e6 --rx-subdev "A:0 A:1 B:0 B:1" --rx-channels =
"0,1,2,3" --rx-gain 60 --nsamps 62500000 --tx-rate 6.25e6 --tx-freq 2500e6

Creating the transmit usrp device with: addr=3D192.168.10.2...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.PeriphManager] init() called with device args `product=3Dn310,m=
gmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)

Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time=
_source=3Dinternal,clock_source=3Dinternal...
Using TX Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3218B5F
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 0
    RX Dboard: B
    RX Subdev: Magnesium
  RX Channel: 3
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Magnesium
  TX Channel: 3
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Magnesium

Using RX Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3218B5F
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 0
    RX Dboard: B
    RX Subdev: Magnesium
  RX Channel: 3
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Magnesium
  TX Channel: 3
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Magnesium

Setting TX Rate: 6.250000 Msps...
Actual TX Rate: 6.250000 Msps...

Setting RX Rate: 6.250000 Msps...
Actual RX Rate: 6.250000 Msps...

Setting TX Freq: 2500.000000 MHz...
Actual TX Freq: 2500.000000 MHz...

Configuring RX Channel 0
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 1
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 2
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 3
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Checking TX: all_los: locked ...
Checking RX: all_los: locked ...
Setting device timestamp to 0...
[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 1250000000, maximum is 268435455.
[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.
LLLLLLLLLLLLLLLLLLLError: ValueError: Requested too many samples in a singl=
e burst.



Thanks,
Jonathan


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Saturday, August 7, 2021 7:16 AM
To: Jonathan Tobin <Tobin@augustusaero.com>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/07/2021 12:23 PM, Jonathan Tobin wrote:
Reducing nsamps to below 268435455/2 works - but at 6.25Msps for all four c=
hannels (two daughterboards) this is very short amount of time.  I can try =
changing channels but for my application I do need all four channels receiv=
ing - though this will have to be on Monday.

Yes, rx_multi_samples "out of the box" (no modifications to the example).

Thanks,
Jonathan
Given that rx_multi_samples doesn't actually *DO* anything with the samples=
, I'm curious about how it's actually useful for you in any
  production sense--it is just a demo app to show some of the API usage.

It may be the case that this example needs to be updated because it's mis-u=
sing the API in some what that isn't immediately obvious to me.
  But again, it doesn't actually *DO* anything with the samples, so I don't=
 know how it's useful other than as a learning tool...


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Saturday, August 7, 2021 5:30 AM
To: Jonathan Tobin <Tobin@augustusaero.com><mailto:Tobin@augustusaero.com>;=
 usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-users@=
lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/06/2021 10:47 PM, Jonathan Tobin wrote:
Hi Marcus,

No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.

Thanks,
Jonathan
Does reducing nsamps help?  What about channel count?

Just looking for clues as to what might be going on.  Looking at the code, =
nothing really leaps out at me.  You're using rx_multi_samples
  "out of the box" or with modifications?


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Friday, August 6, 2021 3:56 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/06/2021 07:26 PM, Jonathan Tobin wrote:



Hello,



In trying to test the =91rx_multi_samples=92 example with all four channels=
 on an n310. I run into an error of =93Requesting too many samples in a sin=
gle burst=94 when I attempt a longer record (really anything over a few sec=
onds). Seems to be my nsamps value, but I am unsure how to remedy the issue=
. Below is my argument and the terminal output for an attempt to receive fo=
r 10 seconds:



./rx_multi_samples --args "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgp=
sdo,clock_source=3Dgpsdo" --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channe=
ls "0,1,2,3" --nsamps 625000000



Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo...

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo

[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dg=
psdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.

[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)

[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)

[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)

[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)

Using Device: Single USRP:

  Device: N300-Series Device

  Mboard 0: ni-n3xx-3218B5F

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: Magnesium

  RX Channel: 1

    RX DSP: 1

    RX Dboard: A

    RX Subdev: Magnesium

  RX Channel: 2

    RX DSP: 0

    RX Dboard: B

    RX Subdev: Magnesium

  RX Channel: 3

    RX DSP: 1

    RX Dboard: B

    RX Subdev: Magnesium

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: Magnesium

  TX Channel: 1

    TX DSP: 1

    TX Dboard: A

    TX Subdev: Magnesium

  TX Channel: 2

    TX DSP: 0

    TX Dboard: B

    TX Subdev: Magnesium

  TX Channel: 3

    TX DSP: 1

    TX Dboard: B

    TX Subdev: Magnesium



Setting RX Rate: 6.250000 Msps...

Actual RX Rate: 6.250000 Msps...



Setting device timestamp to 0...



Begin streaming 625000000 samples, 1.500000 seconds in the future...

[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 12500000000, maximum is 268435455.

[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.

Error: ValueError: Requested too many samples in a single burst.



Thanks,

Jonathan

That looks like a bug--have you tried this on UHD 4.recent?





--_000_BN7PR05MB450047CE239680F69CB94A0ED5F69BN7PR05MB4500namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Here is the output from a simple run of txrx_loopback_to_file &quot;out of =
the box.&quot; As can be seen, the same error occurs (along with dropped pa=
ckets this time).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
./txrx_loopback_to_file --tx-args &quot;addr=3D192.168.10.2&quot; --rx-args=
 &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dinternal,clock_source=
=3Dinternal&quot; --rx-freq 2500e6 --rx-rate 6.25e6 --rx-subdev &quot;A:0 A=
:1 B:0 B:1&quot; --rx-channels &quot;0,1,2,3&quot; --rx-gain 60 --nsamps 62=
500000 --tx-rate
 6.25e6 --tx-freq 2500e6
<div><br>
</div>
<div>Creating the transmit usrp device with: addr=3D192.168.10.2...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFals=
e,addr=3D192.168.10.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `product=3Dn=
310,mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal=
'.</div>
<div>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000=
0004)</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011=
312)</div>
<div>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011=
312)</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
0)</div>
<div>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
2)</div>
<div>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C000000000000=
2)</div>
<div>[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div><br>
</div>
<div>Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.10.2=
,time_source=3Dinternal,clock_source=3Dinternal...</div>
<div>Using TX Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: ni-n3xx-3218B5F</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 2</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 3</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 2</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 3</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div><br>
</div>
<div>Using RX Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: ni-n3xx-3218B5F</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 2</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 3</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 2</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 3</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div><br>
</div>
<div>Setting TX Rate: 6.250000 Msps...</div>
<div>Actual TX Rate: 6.250000 Msps...</div>
<div><br>
</div>
<div>Setting RX Rate: 6.250000 Msps...</div>
<div>Actual RX Rate: 6.250000 Msps...</div>
<div><br>
</div>
<div>Setting TX Freq: 2500.000000 MHz...</div>
<div>Actual TX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Configuring RX Channel 0</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 1</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 2</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 3</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Checking TX: all_los: locked ...</div>
<div>Checking RX: all_los: locked ...</div>
<div>Setting device timestamp to 0...</div>
<div>[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! R=
equested 1250000000, maximum is 268435455.</div>
<div>[INFO] [RFNOC RADIO] Note that a decimation block will increase the nu=
mber of samples per burst by the decimation factor. Your application may ha=
ve requested fewer samples.</div>
<span>LLLLLLLLLLLLLLLLLLLError: ValueError: Requested too many samples in a=
 single burst.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jonathan</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, August 7, 2021 7:16 AM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/07/2021 12:23 PM, Jonathan Tobin wro=
te:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Reducing nsamps to below&nbsp;<span style=3D"font-family:Calibri,sans-serif=
; background-color:rgb(255,255,255); display:inline!important">268435455/2 =
works - but at 6.25Msps for all four channels (two daughterboards) this is =
very short amount of time.&nbsp; I can try changing
 channels but for my application I do need all four channels receiving - th=
ough this will have to be on Monday.&nbsp;</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Yes, rx_multi_samples &quot;out of the box=
&quot; (no modifications to the example).</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Jonathan&nbsp;
<br>
</span></div>
</blockquote>
Given that rx_multi_samples doesn't actually *DO* anything with the samples=
, I'm curious about how it's actually useful for you in any<br>
&nbsp; production sense--it is just a demo app to show some of the API usag=
e.<br>
<br>
It may be the case that this example needs to be updated because it's mis-u=
sing the API in some what that isn't immediately obvious to me.<br>
&nbsp; But again, it doesn't actually *DO* anything with the samples, so I =
don't know how it's useful other than as a learning tool...<br>
<br>
<br>
<blockquote type=3D"cite">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Saturday, August 7, 2021 5:30 AM<br>
<b>To:</b> Jonathan Tobin <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mail=
to:Tobin@augustusaero.com">
&lt;Tobin@augustusaero.com&gt;</a>; <a class=3D"x_moz-txt-link-abbreviated"=
 href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan Tobin w=
rote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi&nbsp;Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jonathan</div>
</div>
</blockquote>
Does reducing nsamps help?&nbsp; What about channel count?<br>
<br>
Just looking for clues as to what might be going on.&nbsp; Looking at the c=
ode, nothing really leaps out at me.&nbsp; You're using rx_multi_samples<br=
>
&nbsp; &quot;out of the box&quot; or with modifications?<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"C=
alibri,
              sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. L=
eech
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.c=
om">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
<b>To:</b> <a class=3D"x_x_moz-txt-link-abbreviated" href=3D"mailto:usrp-us=
ers@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single Burst</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan Tobin=
 wrote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_x_MsoNormal, li.x_x_x_MsoNormal, div.x_x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div class=3D"x_x_x_WordSection1">
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">Hello,</p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">In trying to test the =91rx_multi_samples=92 e=
xample with all four channels on an n310. I run into an error of =93Request=
ing too many samples in a single burst=94 when I attempt a longer record (r=
eally anything over a few seconds). Seems
 to be my nsamps value, but I am unsure how to remedy the issue. Below is m=
y argument and the terminal output for an attempt to receive for 10 seconds=
:</p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
./rx_multi_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:1 B:=
0 B:1&quot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dg=
psdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.</span></=
p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)=
</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<=
/span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)<=
/span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Using Device: Single USRP:</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; Device: N300-Series Device</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; Mboard 0: ni-n3xx-3218B5F</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 2</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 3</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 2</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 3</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Setting RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Actual RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Setting device timestamp to 0...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Begin streaming 625000000 samples, 1.500000 seconds in the future...</span>=
</p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 12500000000, maximum is 268435455.</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Error: ValueError: Requested too many samples in a single burst.</span></p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">Thanks,</p>
<p class=3D"x_x_x_MsoNormal">Jonathan</p>
</div>
<br>
</blockquote>
That looks like a bug--have you tried this on UHD 4.recent?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</blockquote>
<br>
</div>
</body>
</html>

--_000_BN7PR05MB450047CE239680F69CB94A0ED5F69BN7PR05MB4500namp_--

--===============6164139985534892135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6164139985534892135==--
