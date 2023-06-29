Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AD2742648
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 14:23:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D961D383EE0
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 08:23:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688041406; bh=1ITfb8ylulDB83dufABOQPetFCRHschUnY8pWniR6XU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=T1zrX84NJJN+ymRXP59fbgYRQ7DVOZhmCHb+cTnz9plpKs8uZXlhNGII29oaelHyA
	 S2HCCemM3wShknMHa0k/iF6MMVZlTnwbK6ISdFUEV7hmppapDNAZQCAN1x4jw3FKUP
	 XSiKV2MBOsPbuJuQqTWyVHwm5lfxHzL+zb2gRgTrRvllj8sH/OAG05U1zl9hB23+2w
	 nn7VAuAGCH7sPM+qNQJ87qE5Vs11o9dDOi0bfbKYk29MhOLxypQSbOQ2Ru7PMqLxMx
	 16Hc0mhhew/QePEvA2pMg/Y8KNc2B+VxX88ljQXPjcgvgZp4ceIjTAvicwrDb9mxQ9
	 xvx+V0FKsoQBw==
Received: from harmaja.edelkey.net (harmaja.edelkey.net [213.138.147.141])
	by mm2.emwd.com (Postfix) with ESMTPS id E3B85383D90
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 08:22:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vtt.fi header.i=@vtt.fi header.b="iDe2+E7w";
	dkim-atps=neutral
Received: from asgw5.edelkey.net (213138142181.edelkey.net [213.138.142.181])
	by harmaja.edelkey.net (8.15.2/8.15.2) with ESMTPS id 35TCMw10501842
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 15:22:58 +0300
Received: from VTTMAIL02.ad.vtt.fi (213214155241.edelkey.net [213.214.155.241])
	by asgw5.edelkey.net (8.17.1.19/8.17.1.19) with ESMTPS id 35TCMvvm011439
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 15:22:57 +0300
Received: from VTTMAIL01.ad.vtt.fi (2002:82bc:7e17::82bc:7e17) by
 VTTMAIL02.ad.vtt.fi (2002:82bc:7e18::82bc:7e18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2507.23; Thu, 29 Jun 2023 15:22:57 +0300
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (104.47.2.50) by
 VTTMAIL01.ad.vtt.fi (130.188.126.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2507.23 via Frontend Transport; Thu, 29 Jun 2023 15:22:57 +0300
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKO//W/NBA/1ARc8X12h+ICl4fdqS1aVxH7kHCZdVr07JoLPlTJD1mR8jwT0i27PUWhuLYBhx+/MwEren8sk2zCtSQX9w2WRUn8n0GQUMigkUTNClLiBRC4NaTFn1riUvOArQwzdHSXb8ywVAOkW+Xeg/iAZe7AUKeWbEIbVaLl0V/qDLdoYKVhHrjZU/KwWWnQnNxoDPFOeThJbbQNo86yvFIi5kze89RCKFLyu133/OIg0VGOTmXjsd8uyg+XrkhJR4uqqsSBB7ri1YONzxWg/CEMLQF5n1J9LBXqpLUJUSm4Pe86O0JMOlPKoqHNf28+q43IHmaTZLM+kyetWZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzlcdRLzLRvhxUuXQKsMOmarqBWbuhUVQC1fTFBEHdc=;
 b=a5jN6vpV2mL/4v3R3ghLDhL1k/OlzZkQKU88YcH2Lei1YdERQGKSRATedQ++QocFURBxfs9k0IUtn53TOPWVhjoRWSvuaAnUPXOM6kgaXbAPK/MmqqkG0+SbLRD5MDQs+WeqCjpueIoKnEN8a/KkBwC3Qa9yNbkBjC97Da7gX7qF1e7qMnpuUcevZ5JdScXoMEUHsuiQtSPdvoC4LC9YJcekYexDnSLYxaGA3J0OPSE5GnMywlEIp6k1TCv22q8L49vCFbeyMsH9r404QHUlF2PZCkGMGmZmG2Emcsphc5/UZfe1gk+b/TnNrw02G2Q19DqgpER/w+eXY70aZlbi8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vtt.fi; dmarc=pass action=none header.from=vtt.fi; dkim=pass
 header.d=vtt.fi; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vtt.fi; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzlcdRLzLRvhxUuXQKsMOmarqBWbuhUVQC1fTFBEHdc=;
 b=iDe2+E7wQ+tioajjKVQcqDuttWuXce7ki9gULX+f4ZunCz5J4iDFg3DhieXTRIFlJ9jrYcve3s34eMBK2mEJ41gOC3SdCMQj5jVnu5OyiaqXfqdBhNDWsPKM2eHJ6Cw7/CW4CfYRnOqNoraErCXorGedvfqFCCWonVhVkhO3T78=
Received: from DB9PR08MB6959.eurprd08.prod.outlook.com (2603:10a6:10:2bf::11)
 by PR3PR08MB5595.eurprd08.prod.outlook.com (2603:10a6:102:83::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Thu, 29 Jun
 2023 12:22:54 +0000
Received: from DB9PR08MB6959.eurprd08.prod.outlook.com
 ([fe80::92c4:cf9e:9858:be14]) by DB9PR08MB6959.eurprd08.prod.outlook.com
 ([fe80::92c4:cf9e:9858:be14%4]) with mapi id 15.20.6521.026; Thu, 29 Jun 2023
 12:22:54 +0000
From: =?iso-8859-1?Q?Hanhij=E4rvi_Kalle?= <Kalle.Hanhijarvi@vtt.fi>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Elementary problems with dual-channel loopback using RFNoC
Thread-Index: AdmqfvFUQoaD10SgS2uqZ9j+Ob6tVA==
Date: Thu, 29 Jun 2023 12:22:54 +0000
Message-ID: <DB9PR08MB6959627BFF6E2C40A6F9E655EC25A@DB9PR08MB6959.eurprd08.prod.outlook.com>
Accept-Language: fi-FI, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR08MB6959:EE_|PR3PR08MB5595:EE_
x-ms-office365-filtering-correlation-id: 20874d11-8fad-40f1-970d-08db789b9090
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5fK5qz2xxU75hWKmbuxCeOGFS5ILG8XIqmGVy/HzbuSqOvQBYZ53d/J5oBgLBo554oaU+dpuyk73UL66mRC//tA1BKE32OHxTx3X39V+H0VCTJTKx8tQ5UELRSRE+UdRAwgjXCmmFjA8zuIW89EBrji2VRvq65wKzkHhX0Zs3aKcf8X1pTPE8OF5x8ij5Z7arkzzQCl0fi10XxhGApgyRv05vEO8bAlRdeaZR3gYtNkBmKYsPyBMOA7dVifU6XjMfiyxEoONYwc8g7etmMQ25/6pGkEUvM/TaS/q4Dqrxt1nx1f/RNQsY/EnuC2faHis01xL+UO4PX2PdQzhOoG7MJUlmrhtdRrajqsttqd+KmeiyySt8pwmArh65y+8IWPtKlKCPNHZ3Z4a9V8v/y7M4TZ2a5ganA/YAtBKODeqXG9uvy8pwwNLwJwm78xw8onuDoKYHBY3DTWlA+NwLUlvhVro+1TDmo/Kn5L40yYjKYFpgTHDS1JM0M002kv9zOt0ZrGOwxehFGe1svkKMJ+N70rzYhysyJLf9byCuuq+9KZX6JgWWePgUIr4numxlNrEQNp4Jt+gsbwP99UjU5kQ4oFWkRDpH3V3NAw1/If7vkoMh87cjlCn3eqZNu2o2tE8
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR08MB6959.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(346002)(366004)(396003)(136003)(451199021)(66446008)(66574015)(7696005)(71200400001)(83380400001)(9686003)(2906002)(26005)(186003)(478600001)(6506007)(5660300002)(64756008)(33656002)(52536014)(38070700005)(99936003)(316002)(76116006)(55016003)(66946007)(82960400001)(38100700002)(8936002)(8676002)(66556008)(66476007)(86362001)(41300700001)(122000001)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xrR9Fqu1MGVvXGA2kjQk2iU0mEHqrKdufy1IUufgkZw7QMmrvA14hHKi5C?=
 =?iso-8859-1?Q?VEaJywUaZMXjAok9JAaoqsHbibekHsyyCWIcoAUbJxfUEPFfKlFjnfXAWp?=
 =?iso-8859-1?Q?rvE99EqqHmMJ91xLuxEqbfg6zmQ60OWEQ9UZyMREPflMpBScm0RvGg0tBj?=
 =?iso-8859-1?Q?CmOwlOpFvLi/gLYRvdr0raZwbzLQjCZCZAGPOk1nnPuzVD38mjSPBPetdb?=
 =?iso-8859-1?Q?pP05K6kvAwPkLu+BWjk3D7s9K5IhVgsCkCqvbHSf2m32+fSVEIzeeIT3WV?=
 =?iso-8859-1?Q?3YH53AJ2+bmtTAFITSmgZgE0fXRdt+Lv0Zce2vtaZnn++L/7zwJnOB3/1d?=
 =?iso-8859-1?Q?rKBYwgDSZAJQceBWhrYRnasP5skidngA0QDciR+VY3FDvUNmiyF1JvjPKC?=
 =?iso-8859-1?Q?IeWmvu47G8j1tVkcle0qFKuzYLEoAxi5oVn5flBuXIbWXYQit2K+6fnpQh?=
 =?iso-8859-1?Q?hI2wuAt1J6LhvI0/ysMmYXMyBIcjoCF3X/Rgf2nmEq8Y4JHQ8Sj5FPqq3z?=
 =?iso-8859-1?Q?Q5thfLyv0eKx15fozeOs2ozYvWWEL6BRUCIB0SEA25h0tGaZVb3F0rD+k5?=
 =?iso-8859-1?Q?MIpy6bvjo1m3OPrMPBJ61UcE5C48rOyt++BnycOMY1opyLNX7jFcn4lyA8?=
 =?iso-8859-1?Q?2BlKVkZsmvNJSeyvJ2uMpYan7gr87kIUlDnWB2yZJejeU50ZOZ7gUtIfFH?=
 =?iso-8859-1?Q?e8HSqme85R3BvFK06S+zMH2ppgDiwWI1ZbMAjRIA8Z1UDMm6tcbieerVj9?=
 =?iso-8859-1?Q?twAtDnLJG/i3WyvEjnY9auuyQYstfz3Endo4dy9o2IcuKm/nibak314VhA?=
 =?iso-8859-1?Q?DPVkrPA5Y4/+SxAAtQrnMMoAiymooYtQrPG9SEjxA46CUYogM52ooTDWUn?=
 =?iso-8859-1?Q?ZoYL14HXiDPsVTgnQj6CdpPbr+CACqwUKm3bcdp+4YG0vkcVliK7EsUggd?=
 =?iso-8859-1?Q?VxtJ1J3uKHv0zo2GyVFi7UjfoeL8fYcCFs6Xhnp4neAWaUJLUz8V+oak3H?=
 =?iso-8859-1?Q?1g1RN8EgN7rxgIgJIRMqSNJzI5Qh/FLBc/iKXtJioDhivuJtM+I/p+0YFJ?=
 =?iso-8859-1?Q?VorK9WlGkxEV9OBwGcdih9f8+wuIOa7gk6kzXjysRGhD3qt3kP58SyMTHj?=
 =?iso-8859-1?Q?mC1ypMqvTT/hegiBzTMFtF7JNS442X3yIk4PN05i2dfSe6sQgsEXhHbfRV?=
 =?iso-8859-1?Q?KXA8UnxTQtvAg7ldrjb3u8ZMLpxgpzaDYf8QUgL1srruR5rkSaMqS6uVgV?=
 =?iso-8859-1?Q?d8de3UhdoNQraS6VI6vOXJShz/aUnU5aZWk6bcEQW581WfI2JswZgUL2pZ?=
 =?iso-8859-1?Q?5uN18A1zGVwB4sJnjGBBHD6SnPtvPjQeQKqAQRuD+MsqKiOY17Z27/KwID?=
 =?iso-8859-1?Q?PgdBXa+aY3+TpLzZ+vjmSI29WQ+9I994ABa3947L1slaK1u0eNPjRUC/HC?=
 =?iso-8859-1?Q?Y45L7/7q7DeLNT8glV5nclnjwIRdQlTsVrKmXtcGbEnqWHzw7yPyNeYDI8?=
 =?iso-8859-1?Q?TB5fHI8GzY/JSrmtvFkZRcBZBwxZytfxSETfDabkVXtCmRehRNiUS0sFj6?=
 =?iso-8859-1?Q?RonTqxbdV2oKl9DYFIEn8GtT/d9RmPSjhTLN0yJV3pP7v6B67Drrnr6XW6?=
 =?iso-8859-1?Q?GMul8nNfkeU1dKqZEX2jeZukAftCd8O6U5?=
Content-Type: multipart/mixed;
	boundary="_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR08MB6959.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20874d11-8fad-40f1-970d-08db789b9090
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 12:22:54.3577
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68d6b592-5008-43b5-9b04-23bec4e86cf7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Be/o8hYTyeiyXpoLkXzZKYJBDypkuzp9KaGf546ox0f+CnZX7QQNCJ3ZxJb1+kojVLJwBPIn+Nz5u8LMTR+wxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5595
X-OriginatorOrg: vtt.fi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-29_03,2023-06-27_01,2023-05-22_02
Message-ID-Hash: EIKLIYB3VSXSV2JZG26LGLPWPQE5ABVK
X-Message-ID-Hash: EIKLIYB3VSXSV2JZG26LGLPWPQE5ABVK
X-MailFrom: Kalle.Hanhijarvi@vtt.fi
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Elementary problems with dual-channel loopback using RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EIKLIYB3VSXSV2JZG26LGLPWPQE5ABVK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: multipart/alternative;
	boundary="_000_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_"

--_000_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We have an X300 with LFRX on slot A, and LFTX on both slots (uhd_usrp_probe=
 output attached).

The idea was to do signal processing on two synchronously sampled channels =
from the same LFRX board, using a custom RFNoC OOT. So something along the =
lines of:

Radio0,0 LFRX(A) -> DDC0,0 -> |in_0 OOT-block out | -> DUC1,0 -> LFTX(A) Ra=
dio1,0
Radio0,1 LFRX(B) -> DDC0,1 -> |in_1               |

I tried to test dual-channel processing with RFNoC blocks shipped with UHD,=
 so I built a custom FPGA-bitstream with various blocks connected to indivi=
dual stream points (as listed in the uhd_usrp_probe output, yml file is als=
o attached).

So the first obvious test was to loopback two RX channel to two TX channels=
, like this:

Radio0 LFRX(A) -> DDC0,0 -> DUC1,0 -> LFTX(A) Radio1
Radio0 LFRX(B) -> DDC0,1 -> DUC0,0 -> LFTX(A) Radio0

First channel goes from Radio0 to Radio1, and it seems to work. But I can't=
 get the second channel to work. So is it even possible to loop back data f=
rom RX to TX on the same radio? Each radio instance has only one TX DSP cha=
in, as I understood, so I had to use the TX chain on the Radio0 side, too. =
The custom FPGA image has separate SEPs for each DDC and DUC, so traffic sh=
ould be correctly routed through the CHDR crossbar. Please see the attached=
 minimal C++ example (loopback_test.cpp, modeled after the loopback example=
 shipped with UHD source code).

Active connections formed in the test program are like so:

0/Radio#0:0=3D=3D>0/DDC#0:0
0/Radio#0:1=3D=3D>0/DDC#0:1
0/DDC#0:0-->0/DUC#1:0
0/DDC#0:1-->0/DUC#0:0
0/DUC#1:0=3D=3D>0/Radio#1:0
0/DUC#0:0=3D=3D>0/Radio#0:0

Graph is committed without problems.

The program outputs something like:

Issuing start stream cmd...
OWait...
U

Test signal propagates fine from Radio0 to Radio1, but the second one does =
not seem to work. The overflow indicator "O" always appears when trying use=
 the second channel.

In an attempt to eliminate the possibility of loopback problems, I also tri=
ed the addsub -block with the subtract-output statically connected to a nul=
l sink.

The test program (addsub.cpp) does not seem to stream anything, and outputs=
 the following warnings:

[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Rad=
io#0:OUTPUT_EDGE:1, no neighbour found!
O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Rad=
io#0:OUTPUT_EDGE:0, no neighbour found!

Active connections for the addsub-test are:

0/Radio#0:0=3D=3D>0/DDC#0:0
0/Radio#0:1=3D=3D>0/DDC#0:1
0/DDC#0:0-->0/AddSub#0:0
0/DDC#0:1-->0/AddSub#0:1
0/AddSub#0:0-->0/DUC#1:0
0/AddSub#0:1=3D=3D>0/NullSrcSink#0:0
0/DUC#1:0=3D=3D>0/Radio#1:0

So am I missing something trivial here? I guess there are at least three th=
ings that could be wrong here:

- How to correctly configure synchronous dual-channel sampling?
- Is it possible to loop back data from Radio0 RX to Radio0 TX through CHDR=
 crossbar?
- How to correctly configure and use the addsub-block?

Is it necessary to issue stream commands to both RX radio channels, like so=
 (with identical time spec):

rx_radio_ctrl->issue_stream_cmd(stream_cmd, 0);
rx_radio_ctrl->issue_stream_cmd(stream_cmd, 1);

One more thing to note: using Gnuradio UHD/RFNoC interface (major version 3=
.10) to stream 2 channels to host though DDCs and RX streamers works just f=
ine.

Thank you in advance.

With best regards,
Kalle Hanhij=E4rvi


--_000_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have an X300 with LFRX on sl=
ot A, and LFTX on both slots (uhd_usrp_probe output attached).<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The idea was to do signal proce=
ssing on two synchronously sampled channels from the same LFRX board, using=
 a custom RFNoC OOT. So something along the lines of:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Radio0,0 LFRX(A) -&gt; DDC0,0 -&gt; |in_0 OOT-block out | -&=
gt; DUC1,0 -&gt; LFTX(A) Radio1,0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Radio0,1 LFRX(B) -&gt; DDC0,1 -&gt; |in_1&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried to test dual-channel pr=
ocessing with RFNoC blocks shipped with UHD, so I built a custom FPGA-bitst=
ream with various blocks connected to individual stream points (as listed i=
n the uhd_usrp_probe output, yml file
 is also attached).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So the first obvious test was t=
o loopback two RX channel to two TX channels, like this:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Radio0 LFRX(A) -&gt; DDC0,0 -&gt; DUC1,0 -&gt; LFTX(A) Radio=
1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Radio0 LFRX(B) -&gt; DDC0,1 -&gt; DUC0,0 -&gt; LFTX(A) Radio=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">First channel goes from Radio0 =
to Radio1, and it seems to work. But I can&#8217;t get the second channel t=
o work. So is it even possible to loop back data from RX to TX on the same =
radio? Each radio instance has only one TX
 DSP chain, as I understood, so I had to use the TX chain on the Radio0 sid=
e, too. The custom FPGA image has separate SEPs for each DDC and DUC, so tr=
affic should be correctly routed through the CHDR crossbar. Please see the =
attached minimal C++ example (loopback_test.cpp,
 modeled after the loopback example shipped with UHD source code).<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Active connections formed in th=
e test program are like so:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/Radio#0:0=3D=3D&gt;0/DDC#0:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/Radio#0:1=3D=3D&gt;0/DDC#0:1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DDC#0:0--&gt;0/DUC#1:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DDC#0:1--&gt;0/DUC#0:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DUC#1:0=3D=3D&gt;0/Radio#1:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DUC#0:0=3D=3D&gt;0/Radio#0:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Graph is committed without prob=
lems.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The program outputs something l=
ike:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Issuing start stream cmd...<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">OWait...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">U<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Test signal propagates fine fro=
m Radio0 to Radio1, but the second one does not seem to work. The overflow =
indicator &#8220;O&#8221; always appears when trying use the second channel=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In an attempt to eliminate the =
possibility of loopback problems, I also tried the addsub -block with the s=
ubtract-output statically connected to a null sink.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The test program (addsub.cpp) d=
oes not seem to stream anything, and outputs the following warnings:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">[WARNING] [RFNOC::GRAPH] One or more blocks timed out during=
 flush!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_e=
vent from 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_e=
vent from 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Active connections for the adds=
ub-test are:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/Radio#0:0=3D=3D&gt;0/DDC#0:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/Radio#0:1=3D=3D&gt;0/DDC#0:1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DDC#0:0--&gt;0/AddSub#0:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DDC#0:1--&gt;0/AddSub#0:1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/AddSub#0:0--&gt;0/DUC#1:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/AddSub#0:1=3D=3D&gt;0/NullSrcSink#0:0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">0/DUC#1:0=3D=3D&gt;0/Radio#1:0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So am I missing something trivi=
al here? I guess there are at least three things that could be wrong here:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">- How to correctly configure sy=
nchronous dual-channel sampling?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">- Is it possible to loop back d=
ata from Radio0 RX to Radio0 TX through CHDR crossbar?<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">- How to correctly configure an=
d use the addsub-block?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is it necessary to issue stream=
 commands to both RX radio channels, like so (with identical time spec):<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">rx_radio_ctrl-&gt;issue_stream_cmd(stream_cmd, 0);<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">rx_radio_ctrl-&gt;issue_stream_cmd(stream_cmd, 1);<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">One more thing to note: using G=
nuradio UHD/RFNoC interface (major version 3.10) to stream 2 channels to ho=
st though DDCs and RX streamers works just fine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">With best regards,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kalle Hanhij=E4rvi<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_--

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: application/octet-stream; name="x300_dualchannel.yml"
Content-Description: x300_dualchannel.yml
Content-Disposition: attachment; filename="x300_dualchannel.yml"; size=5692;
	creation-date="Thu, 29 Jun 2023 12:00:16 GMT";
	modification-date="Thu, 29 Jun 2023 12:22:53 GMT"
Content-Transfer-Encoding: base64

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
Pi0gICAgICAgICAgICAgICAgICAgICAgICAgICAjIENvcHlyaWdodCBpbmZvcm1hdGlvbiB1c2Vk
IGluIGZpbGUgaGVhZGVycwogIEV0dHVzIFJlc2VhcmNoLCBBIE5hdGlvbmFsIEluc3RydW1lbnRz
IEJyYW5kCmxpY2Vuc2U6ID4tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjIExpY2Vuc2Ug
aW5mb3JtYXRpb24gdXNlZCBpbiBmaWxlIGhlYWRlcnMKICBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTEdQTC0zLjAtb3ItbGF0ZXIKdmVyc2lvbjogJzEuMCcgICAgICAgICAgICAgICAgICAgICAg
ICAgICMgRmlsZSB2ZXJzaW9uCmNoZHJfd2lkdGg6IDY0ICAgICAgICAgICAgICAgICAgICAgICAg
ICAjIEJpdCB3aWR0aCBvZiB0aGUgQ0hEUiBidXMgZm9yIHRoaXMgaW1hZ2UKZGV2aWNlOiAneDMw
MCcKZGVmYXVsdF90YXJnZXQ6ICdYMzAwX0hHJwoKIyBBIGxpc3Qgb2YgYWxsIHN0cmVhbSBlbmRw
b2ludHMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpzdHJlYW1fZW5kcG9pbnRzOgogIGVwMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIyBTdHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDogVHJ1ZSAgICAgICAgICAgICAgICAg
ICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFmZmljCiAgICBkYXRhOiBUcnVl
ICAgICAgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMK
ICAgIGJ1ZmZfc2l6ZTogMzI3NjggICAgICAgICAgICAgICAgICAgICMgSW5ncmVzcyBidWZmZXIg
c2l6ZSBmb3IgZGF0YQogIGVwMToKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBi
dWZmX3NpemU6IDAKICBlcDI6CiAgICBjdHJsOiBGYWxzZQogICAgZGF0YTogVHJ1ZQogICAgYnVm
Zl9zaXplOiAzMjc2OAogIGVwMzoKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBi
dWZmX3NpemU6IDAKICBlcF9maXIwOgogICAgY3RybDogRmFsc2UKICAgIGRhdGE6IFRydWUKICAg
IGJ1ZmZfc2l6ZTogMAogIGVwX2ZpcjE6CiAgICBjdHJsOiBGYWxzZQogICAgZGF0YTogVHJ1ZQog
ICAgYnVmZl9zaXplOiAwCiAgZXBfYWRkc3ViX2luMDoKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRh
OiBUcnVlCiAgICBidWZmX3NpemU6IDAKICBlcF9hZGRzdWJfaW4xOgogICAgY3RybDogRmFsc2UK
ICAgIGRhdGE6IFRydWUKICAgIGJ1ZmZfc2l6ZTogMAogIGVwX2FkZHN1Yl9vdXQwOgogICAgY3Ry
bDogRmFsc2UKICAgIGRhdGE6IFRydWUKICAgIGJ1ZmZfc2l6ZTogMAoKIyBBIGxpc3Qgb2YgYWxs
IE5vQyBibG9ja3MgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpub2NfYmxvY2tzOgogIGR1YzA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIyBO
b0MgYmxvY2sgbmFtZQogICAgYmxvY2tfZGVzYzogJ2R1Yy55bWwnICAgICAgICAgICAgICAgIyBC
bG9jayBkZXZpY2UgZGVzY3JpcHRvciBmaWxlCiAgICBwYXJhbWV0ZXJzOgogICAgICBOVU1fUE9S
VFM6IDEKICBkZGMwOgogICAgYmxvY2tfZGVzYzogJ2RkYy55bWwnCiAgICBwYXJhbWV0ZXJzOgog
ICAgICBOVU1fUE9SVFM6IDIKICByYWRpbzA6CiAgICBibG9ja19kZXNjOiAncmFkaW8ueW1sJwog
ICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAyCiAgZHVjMToKICAgIGJsb2NrX2Rlc2M6
ICdkdWMueW1sJwogICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAxCiAgZGRjMToKICAg
IGJsb2NrX2Rlc2M6ICdkZGMueW1sJwogICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAx
CiAgcmFkaW8xOgogICAgYmxvY2tfZGVzYzogJ3JhZGlvLnltbCcKICAgIHBhcmFtZXRlcnM6CiAg
ICAgIE5VTV9QT1JUUzogMgogIGZpcjA6CiAgICBibG9ja19kZXNjOiAnZmlyX2ZpbHRlci55bWwn
CiAgZmlyMToKICAgIGJsb2NrX2Rlc2M6ICdmaXJfZmlsdGVyLnltbCcKICBhZGRzdWIwOgogICAg
YmxvY2tfZGVzYzogJ2FkZHN1Yi55bWwnCiAgbnVsbDA6CiAgICBibG9ja19kZXNjOiAnbnVsbF9z
cmNfc2luay55bWwnCgojIEEgbGlzdCBvZiBhbGwgc3RhdGljIGNvbm5lY3Rpb25zIGluIGRlc2ln
bgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEZvcm1hdDog
QSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlzdCBvZiBrZXktdmFsdWUgcGFpcnMpIHdpdGgg
dGhlIGZvbGxvd2luZyBrZXlzCiMgICAtIHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVj
dAojICAgLSBzcmNwb3J0ID0gUG9ydCBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAg
IC0gZHN0YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0cG9ydCA9
IFBvcnQgb24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKY29ubmVjdGlvbnM6CiAg
IyBSRiBBIFRYCiAgLSB7IHNyY2JsazogZXAzLCAgICBzcmNwb3J0OiBvdXQwLCAgZHN0YmxrOiBk
dWMwLCAgIGRzdHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGR1YzAsICAgc3JjcG9ydDogb3V0
XzAsIGRzdGJsazogcmFkaW8wLCBkc3Rwb3J0OiBpbl8wIH0KICAjIFJGIEEgUlgKICAtIHsgc3Jj
YmxrOiByYWRpbzAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGRkYzAsICAgZHN0cG9ydDogaW5f
MCB9CiAgLSB7IHNyY2JsazogZGRjMCwgICBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDAsICAg
IGRzdHBvcnQ6IGluMCAgfQogICMgUkYgQSBSWDIKICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3Bv
cnQ6IG91dF8xLCBkc3RibGs6IGRkYzAsICAgZHN0cG9ydDogaW5fMSB9CiAgLSB7IHNyY2Jsazog
ZGRjMCwgICBzcmNwb3J0OiBvdXRfMSwgZHN0YmxrOiBlcDEsICAgIGRzdHBvcnQ6IGluMCAgfQog
ICMKICAjIFJGIEIgVFgKICAtIHsgc3JjYmxrOiBlcDIsICAgIHNyY3BvcnQ6IG91dDAsICBkc3Ri
bGs6IGR1YzEsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZHVjMSwgICBzcmNwb3J0
OiBvdXRfMCwgZHN0YmxrOiByYWRpbzEsIGRzdHBvcnQ6IGluXzAgfQogICMgUkYgQiBSWAogIC0g
eyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogb3V0XzAsIGRzdGJsazogZGRjMSwgICBkc3Rwb3J0
OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkZGMxLCAgIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGVw
MiwgICAgZHN0cG9ydDogaW4wICB9CiAgCiAgICAjIEZJUiBjb25uZWN0aW9ucyAKICAtIHsgc3Jj
YmxrOiBlcF9maXIwLCAgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogZmlyMCwgZHN0cG9ydDog
aW5fMCB9CiAgLSB7IHNyY2JsazogZXBfZmlyMSwgICAgIHNyY3BvcnQ6IG91dDAsICBkc3RibGs6
IGZpcjEsIGRzdHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGZpcjAsICAgICBzcmNwb3J0OiBv
dXRfMCwgIGRzdGJsazogZXBfZmlyMCwgZHN0cG9ydDogaW4wIH0KICAtIHsgc3JjYmxrOiBmaXIx
LCAgICAgc3JjcG9ydDogb3V0XzAsICBkc3RibGs6IGVwX2ZpcjEsIGRzdHBvcnQ6IGluMCB9Cgog
ICMgQWRkc3ViIGNvbm5lY3Rpb25zCiAgLSB7IHNyY2JsazogZXBfYWRkc3ViX2luMCwgICBzcmNw
b3J0OiBvdXQwLCAgZHN0YmxrOiBhZGRzdWIwLCBkc3Rwb3J0OiBpbl9hIH0KICAtIHsgc3JjYmxr
OiBlcF9hZGRzdWJfaW4xLCAgIHNyY3BvcnQ6IG91dDAsICBkc3RibGs6IGFkZHN1YjAsIGRzdHBv
cnQ6IGluX2IgfQogIC0geyBzcmNibGs6IGFkZHN1YjAsICAgICBzcmNwb3J0OiBhZGQsICBkc3Ri
bGs6IGVwX2FkZHN1Yl9vdXQwLCBkc3Rwb3J0OiBpbjAgfQogIC0geyBzcmNibGs6IGFkZHN1YjAs
ICAgICBzcmNwb3J0OiBzdWIsICBkc3RibGs6IG51bGwwLCBkc3Rwb3J0OiBzaW5rIH0KCiAgIyBC
U1AgQ29ubmVjdGlvbnMKICAtIHsgc3JjYmxrOiByYWRpbzAsICAgc3JjcG9ydDogY3RybHBvcnQs
IGRzdGJsazogX2RldmljZV8sIGRzdHBvcnQ6IGN0cmxwb3J0X3JhZGlvMCB9CiAgLSB7IHNyY2Js
azogcmFkaW8xLCAgIHNyY3BvcnQ6IGN0cmxwb3J0LCBkc3RibGs6IF9kZXZpY2VfLCBkc3Rwb3J0
OiBjdHJscG9ydF9yYWRpbzEgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRp
bzAsICAgZHN0YmxrOiByYWRpbzAsICAgZHN0cG9ydDogcmFkaW8gICAgICAgICAgIH0KICAtIHsg
c3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8xLCAgIGRzdGJsazogcmFkaW8xLCAgIGRz
dHBvcnQ6IHJhZGlvICAgICAgICAgICB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6
IHRpbWUsICAgICBkc3RibGs6IHJhZGlvMCwgICBkc3Rwb3J0OiB0aW1lICAgICAgICAgICAgfQog
IC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB0aW1lLCAgICAgZHN0YmxrOiByYWRpbzEs
ICAgZHN0cG9ydDogdGltZSAgICAgICAgICAgIH0KCiMgQSBsaXN0IG9mIGFsbCBjbG9jayBkb21h
aW4gY29ubmVjdGlvbnMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiMgRm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBtYXBzIChs
aXN0IG9mIGtleS12YWx1ZSBwYWlycykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAgIC0gc3Jj
YmxrICA9IFNvdXJjZSBibG9jayB0byBjb25uZWN0IChBbHdheXMgIl9kZXZpY2UiXykKIyAgIC0g
c3JjcG9ydCA9IENsb2NrIGRvbWFpbiBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAg
IC0gZHN0YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0cG9ydCA9
IENsb2NrIGRvbWFpbiBvbiB0aGUgZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjbGtfZG9t
YWluczoKICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogcmFk
aW8wLCAgZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBj
ZSwgICAgZHN0YmxrOiBkZGMwLCAgICBkc3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2Rl
dmljZV8sIHNyY3BvcnQ6IGNlLCAgICBkc3RibGs6IGR1YzAsICAgIGRzdHBvcnQ6IGNlICAgIH0K
ICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogcmFkaW8xLCAg
ZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBjZSwgICAg
ZHN0YmxrOiBkZGMxLCAgICBkc3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2RldmljZV8s
IHNyY3BvcnQ6IGNlLCAgICBkc3RibGs6IGR1YzEsICAgIGRzdHBvcnQ6IGNlICAgIH0KICAtIHsg
c3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogY2UsICAgIGRzdGJsazogZmlyMCwgICAgZHN0cG9y
dDogY2UgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBjZSwgICAgZHN0Ymxr
OiBmaXIxLCAgICBkc3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3Bv
cnQ6IGNlLCAgICBkc3RibGs6IGFkZHN1YjAsICAgIGRzdHBvcnQ6IGNlICAgIH0KCg==

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/plain; name="uhd_usrp_probe.txt"
Content-Description: uhd_usrp_probe.txt
Content-Disposition: attachment; filename="uhd_usrp_probe.txt"; size=4933;
	creation-date="Thu, 29 Jun 2023 12:00:16 GMT";
	modification-date="Thu, 29 Jun 2023 12:22:53 GMT"
Content-Transfer-Encoding: base64

JCB1aGRfdXNycF9wcm9iZSANCltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDku
NC4wOyBCb29zdF8xMDcxMDA7IERQREtfMTkuMTE7IFVIRF80LjQuMC4wLTMzLWc0YTc3NzkxYw0K
W0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQpbSU5GT10gW1gz
MDBdIE1heGltdW0gZnJhbWUgc2l6ZTogMTQ3MiBieXRlcy4NCltJTkZPXSBbWDMwMF0gUmFkaW8g
MXggY2xvY2s6IDIwMCBNSHoNCltJTkZPXSBbMC9GSVIjMF0gU2V0dGluZyBkZWZhdWx0IE1UVSBm
b3J3YXJkIHBvbGljeS4NCltJTkZPXSBbMC9GSVIjMV0gU2V0dGluZyBkZWZhdWx0IE1UVSBmb3J3
YXJkIHBvbGljeS4NCiAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCiAvDQp8ICAgICAgIERldmljZTogWC1TZXJpZXMgRGV2aWNlDQp8ICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAg
ICAvDQp8ICAgfCAgICAgICBNYm9hcmQ6IFgzMDANCnwgICB8ICAgcmV2aXNpb246IDEyDQp8ICAg
fCAgIHJldmlzaW9uX2NvbXBhdDogNw0KfCAgIHwgICBwcm9kdWN0OiAzMDgxNw0KfCAgIHwgICBt
YWMtYWRkcjA6IDAwOjgwOjJmOjM3OmRiOmU1DQp8ICAgfCAgIG1hYy1hZGRyMTogMDA6ODA6MmY6
Mzc6ZGI6ZTYNCnwgICB8ICAgZ2F0ZXdheTogMTkyLjE2OC4xMC4xDQp8ICAgfCAgIGlwLWFkZHIw
OiAxOTIuMTY4LjEwLjINCnwgICB8ICAgc3VibmV0MDogMjU1LjI1NS4yNTUuMA0KfCAgIHwgICBp
cC1hZGRyMTogMTkyLjE2OC4yMC4yDQp8ICAgfCAgIHN1Ym5ldDE6IDI1NS4yNTUuMjU1LjANCnwg
ICB8ICAgaXAtYWRkcjI6IDE5Mi4xNjguMzAuMg0KfCAgIHwgICBzdWJuZXQyOiAyNTUuMjU1LjI1
NS4wDQp8ICAgfCAgIGlwLWFkZHIzOiAxOTIuMTY4LjQwLjINCnwgICB8ICAgc3VibmV0MzogMjU1
LjI1NS4yNTUuMA0KfCAgIHwgICBzZXJpYWw6IDMyOEM5NzINCnwgICB8ICAgRlcgVmVyc2lvbjog
Ni4xDQp8ICAgfCAgIEZQR0EgVmVyc2lvbjogMzkuMg0KfCAgIHwgICBGUEdBIGdpdCBoYXNoOiBm
ZmZmZmZmLWRpcnR5DQp8ICAgfCAgIFJGTm9DIGNhcGFibGU6IFllcw0KfCAgIHwgICANCnwgICB8
ICAgVGltZSBzb3VyY2VzOiAgaW50ZXJuYWwsIGV4dGVybmFsLCBncHNkbw0KfCAgIHwgICBDbG9j
ayBzb3VyY2VzOiBpbnRlcm5hbCwgZXh0ZXJuYWwsIGdwc2RvDQp8ICAgfCAgIFNlbnNvcnM6IHJl
Zl9sb2NrZWQNCnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQp8ICAgIC8NCnwgICB8ICAgICAgIFJGTm9DIGJsb2NrcyBvbiB0aGlzIGRl
dmljZToNCnwgICB8ICAgDQp8ICAgfCAgICogMC9BZGRTdWIjMA0KfCAgIHwgICAqIDAvRERDIzAN
CnwgICB8ICAgKiAwL0REQyMxDQp8ICAgfCAgICogMC9EVUMjMA0KfCAgIHwgICAqIDAvRFVDIzEN
CnwgICB8ICAgKiAwL0ZJUiMwDQp8ICAgfCAgICogMC9GSVIjMQ0KfCAgIHwgICAqIDAvTnVsbFNy
Y1NpbmsjMA0KfCAgIHwgICAqIDAvUmFkaW8jMA0KfCAgIHwgICAqIDAvUmFkaW8jMQ0KfCAgICAg
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnwg
ICAgLw0KfCAgIHwgICAgICAgU3RhdGljIGNvbm5lY3Rpb25zIG9uIHRoaXMgZGV2aWNlOg0KfCAg
IHwgICANCnwgICB8ICAgKiAwL1NFUCMzOjA9PT4wL0RVQyMwOjANCnwgICB8ICAgKiAwL0RVQyMw
OjA9PT4wL1JhZGlvIzA6MA0KfCAgIHwgICAqIDAvUmFkaW8jMDowPT0+MC9EREMjMDowDQp8ICAg
fCAgICogMC9EREMjMDowPT0+MC9TRVAjMDowDQp8ICAgfCAgICogMC9SYWRpbyMwOjE9PT4wL0RE
QyMwOjENCnwgICB8ICAgKiAwL0REQyMwOjE9PT4wL1NFUCMxOjANCnwgICB8ICAgKiAwL1NFUCMy
OjA9PT4wL0RVQyMxOjANCnwgICB8ICAgKiAwL0RVQyMxOjA9PT4wL1JhZGlvIzE6MA0KfCAgIHwg
ICAqIDAvUmFkaW8jMTowPT0+MC9EREMjMTowDQp8ICAgfCAgICogMC9EREMjMTowPT0+MC9TRVAj
MjowDQp8ICAgfCAgICogMC9TRVAjNDowPT0+MC9GSVIjMDowDQp8ICAgfCAgICogMC9TRVAjNTow
PT0+MC9GSVIjMTowDQp8ICAgfCAgICogMC9GSVIjMDowPT0+MC9TRVAjNDowDQp8ICAgfCAgICog
MC9GSVIjMTowPT0+MC9TRVAjNTowDQp8ICAgfCAgICogMC9TRVAjNjowPT0+MC9BZGRTdWIjMDow
DQp8ICAgfCAgICogMC9TRVAjNzowPT0+MC9BZGRTdWIjMDoxDQp8ICAgfCAgICogMC9BZGRTdWIj
MDowPT0+MC9TRVAjODowDQp8ICAgfCAgICogMC9BZGRTdWIjMDoxPT0+MC9OdWxsU3JjU2luayMw
OjANCnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQp8ICAgIC8NCnwgICB8ICAgICAgIFRYIERib2FyZDogMC9SYWRpbyMwDQp8ICAgfCAg
IElEOiBMRiBUWCAoMHg2MzBlKQ0KfCAgIHwgICBTZXJpYWw6IDMyNTNGMTcNCnwgICB8ICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAg
IHwgICAgLw0KfCAgIHwgICB8ICAgICAgIFRYIEZyb250ZW5kOiAwDQp8ICAgfCAgIHwgICBOYW1l
OiBMRlRYICgwKQ0KfCAgIHwgICB8ICAgQW50ZW5uYXM6IEFCLCBCQSwgQSwgQg0KfCAgIHwgICB8
ICAgU2Vuc29yczogDQp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAtMzIuMDAwIHRvIDMyLjAwMCBN
SHoNCnwgICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUNCnwgICB8ICAgfCAgIEJhbmR3aWR0
aCByYW5nZTogNjQwMDAwMDAuMCB0byA2NDAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAgIHwg
ICBDb25uZWN0aW9uIFR5cGU6IElRDQp8ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8NCnwg
ICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQp8ICAgIC8NCnwgICB8ICAgICAgIFJYIERib2FyZDogMC9SYWRpbyMwDQp8ICAgfCAgIElEOiBM
RiBSWCAoMHg2MzBmKQ0KfCAgIHwgICBTZXJpYWw6IDMwRERGMUQNCnwgICB8ICAgICBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAgIHwgICAg
Lw0KfCAgIHwgICB8ICAgICAgIFJYIEZyb250ZW5kOiAwDQp8ICAgfCAgIHwgICBOYW1lOiBMRlJY
ICgwKQ0KfCAgIHwgICB8ICAgQW50ZW5uYXM6IEFCLCBCQSwgQSwgQg0KfCAgIHwgICB8ICAgU2Vu
c29yczogDQp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAtMzIuMDAwIHRvIDMyLjAwMCBNSHoNCnwg
ICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUNCnwgICB8ICAgfCAgIEJhbmR3aWR0aCByYW5n
ZTogNjQwMDAwMDAuMCB0byA2NDAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAgIHwgICBDb25u
ZWN0aW9uIFR5cGU6IElRDQp8ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8NCnwgICB8ICAg
ICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
fCAgIHwgICAgLw0KfCAgIHwgICB8ICAgICAgIFJYIEZyb250ZW5kOiAxDQp8ICAgfCAgIHwgICBO
YW1lOiBMRlJYICgxKQ0KfCAgIHwgICB8ICAgQW50ZW5uYXM6IEFCLCBCQSwgQSwgQg0KfCAgIHwg
ICB8ICAgU2Vuc29yczogDQp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAtMzIuMDAwIHRvIDMyLjAw
MCBNSHoNCnwgICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUNCnwgICB8ICAgfCAgIEJhbmR3
aWR0aCByYW5nZTogNjQwMDAwMDAuMCB0byA2NDAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAg
IHwgICBDb25uZWN0aW9uIFR5cGU6IElRDQp8ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8N
CnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQp8ICAgIC8NCnwgICB8ICAgICAgIFRYIERib2FyZDogMC9SYWRpbyMxDQp8ICAgfCAgIElE
OiBMRiBUWCAoMHg2MzBlKQ0KfCAgIHwgICBTZXJpYWw6IDMyNEZFRDQNCnwgICB8ICAgICBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAgIHwg
ICAgLw0KfCAgIHwgICB8ICAgICAgIFRYIEZyb250ZW5kOiAwDQp8ICAgfCAgIHwgICBOYW1lOiBM
RlRYICgwKQ0KfCAgIHwgICB8ICAgQW50ZW5uYXM6IEFCLCBCQSwgQSwgQg0KfCAgIHwgICB8ICAg
U2Vuc29yczogDQp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAtMzIuMDAwIHRvIDMyLjAwMCBNSHoN
CnwgICB8ICAgfCAgIEdhaW4gRWxlbWVudHM6IE5vbmUNCnwgICB8ICAgfCAgIEJhbmR3aWR0aCBy
YW5nZTogNjQwMDAwMDAuMCB0byA2NDAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAgIHwgICBD
b25uZWN0aW9uIFR5cGU6IElRDQp8ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8NCnwgICAg
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp8
ICAgIC8NCnwgICB8ICAgICAgIFJYIERib2FyZDogMC9SYWRpbyMxDQp8ICAgfCAgICAgX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnwgICB8ICAg
IC8NCnwgICB8ICAgfCAgICAgICBSWCBGcm9udGVuZDogMA0KfCAgIHwgICB8ICAgTmFtZTogVW5r
bm93biAoMHhmZmZmKSAtIDANCnwgICB8ICAgfCAgIEFudGVubmFzOiANCnwgICB8ICAgfCAgIFNl
bnNvcnM6IA0KfCAgIHwgICB8ICAgRnJlcSByYW5nZTogMC4wMDAgdG8gMC4wMDAgTUh6DQp8ICAg
fCAgIHwgICBHYWluIEVsZW1lbnRzOiBOb25lDQp8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6
IDAuMCB0byAwLjAgc3RlcCAwLjAgSHoNCnwgICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEN
CnwgICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObw==

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/plain; name="addsub_test.cpp"
Content-Description: addsub_test.cpp
Content-Disposition: attachment; filename="addsub_test.cpp"; size=8978;
	creation-date="Thu, 29 Jun 2023 12:00:16 GMT";
	modification-date="Thu, 29 Jun 2023 12:22:54 GMT"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPHVoZC9yZm5vYy9ibG9ja19pZC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvbWJf
Y29udHJvbGxlci5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvcmFkaW9fY29udHJvbC5ocHA+CiNp
bmNsdWRlIDx1aGQvcmZub2NfZ3JhcGguaHBwPgojaW5jbHVkZSA8dWhkL3R5cGVzL3R1bmVfcmVx
dWVzdC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvZ3JhcGhfdXRpbHMuaHBwPgojaW5jbHVkZSA8
dWhkL3V0aWxzL21hdGguaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxzL3NhZmVfbWFpbi5ocHA+CiNp
bmNsdWRlIDxib29zdC9mb3JtYXQuaHBwPgojaW5jbHVkZSA8Y2hyb25vPgojaW5jbHVkZSA8Y3Np
Z25hbD4KI2luY2x1ZGUgPGlvc3RyZWFtPgojaW5jbHVkZSA8dGhyZWFkPgoKdXNpbmcgdWhkOjpy
Zm5vYzo6cmFkaW9fY29udHJvbDsKdXNpbmcgbmFtZXNwYWNlIHN0ZDo6Y2hyb25vX2xpdGVyYWxz
OwoKLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKICogU0lHSU5UIGhhbmRsaW5nCiAqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKiovCnN0YXRpYyBib29sIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZhbHNlOwp2b2lkIHNpZ19p
bnRfaGFuZGxlcihpbnQpCnsKICAgIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IHRydWU7Cn0KCi8qKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqCiAqIG1haW4KICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KaW50IFVIRF9TQUZF
X01BSU4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKewogICAgc3RkOjpzdHJpbmcgYXJncywgcnhf
YW50LCB0eF9hbnQsIHJ4X2Jsb2NraWQsIHR4X2Jsb2NraWQsIHJlZiwgcHBzOwogICAgc2l6ZV90
IHRvdGFsX251bV9zYW1wcywgc3BwLCByeF9jaGFuLCB0eF9jaGFuOwogICAgZG91YmxlIHJhdGUs
IHJ4X2ZyZXEsIHR4X2ZyZXEsIHJ4X2J3LCB0eF9idywgdG90YWxfdGltZSwgc2V0dXBfdGltZTsK
ICAgIGJvb2wgcnhfdGltZXN0YW1wczsKICAgIAogICAgcmF0ZSA9IDIwMGU2OwogICAgCiAgICBz
cHAgPSAwOwogICAgCiAgICByeF9mcmVxID0gMC4wOwogICAgdHhfZnJlcSA9IDAuMDsKICAgIAog
ICAgcnhfYncgPSAzMmU2OwogICAgdHhfYncgPSAzMmU2OwogICAgCiAgICByeF9jaGFuID0gMDsK
ICAgIHR4X2NoYW4gPSAwOwogICAgCiAgICB0b3RhbF9udW1fc2FtcHMgPSAwOwogICAgdG90YWxf
dGltZSA9IDAuMDsKICAgIAogICAgcnhfYmxvY2tpZCA9ICIwL1JhZGlvIzAiOwogICAgdHhfYmxv
Y2tpZCA9ICIwL1JhZGlvIzEiOwogICAgCiAgICAvLyBTZXQgdGltZXN0YW1wcyBvbiBSWAogICAg
cnhfdGltZXN0YW1wcyA9IGZhbHNlOwogICAgCiAgICAvLyBTZXR1cCB0aW1lCiAgICBzZXR1cF90
aW1lID0gMC4xOwogICAgCiAgICByZWYgPSAiaW50ZXJuYWwiOwogICAgcHBzID0gImludGVybmFs
IjsKICAgIAoKICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAqIENyZWF0ZSBkZXZpY2UgYW5kIGJs
b2NrIGNvbnRyb2xzCiAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCiAgICBzdGQ6OmNvdXQgPDwgc3RkOjpl
bmRsOwogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkNyZWF0aW5nIHRoZSBSRk5vQyBn
cmFwaCB3aXRoIGFyZ3M6ICVzLi4uIikgJSBhcmdzCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRs
OwogICAgdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6OnNwdHIgZ3JhcGggPSB1aGQ6OnJmbm9jOjpy
Zm5vY19ncmFwaDo6bWFrZShhcmdzKTsKCiAgICAvLyBDcmVhdGUgaGFuZGxlcyBmb3IgcmFkaW8g
b2JqZWN0cwogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCByeF9yYWRpb19jdHJsX2lkKHJ4X2Js
b2NraWQpOwogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCB0eF9yYWRpb19jdHJsX2lkKHR4X2Js
b2NraWQpOwogICAgLy8gVGhpcyBuZXh0IGxpbmUgd2lsbCBmYWlsIGlmIHRoZSByYWRpbyBpcyBu
b3QgYWN0dWFsbHkgYXZhaWxhYmxlCiAgICB1aGQ6OnJmbm9jOjpyYWRpb19jb250cm9sOjpzcHRy
IHJ4X3JhZGlvX2N0cmwgPQogICAgICAgIGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpyZm5vYzo6cmFk
aW9fY29udHJvbD4ocnhfcmFkaW9fY3RybF9pZCk7CiAgICB1aGQ6OnJmbm9jOjpyYWRpb19jb250
cm9sOjpzcHRyIHR4X3JhZGlvX2N0cmwgPQogICAgICAgIGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpy
Zm5vYzo6cmFkaW9fY29udHJvbD4odHhfcmFkaW9fY3RybF9pZCk7CiAgICBzdGQ6OmNvdXQgPDwg
IlVzaW5nIFJYIHJhZGlvICIgPDwgcnhfcmFkaW9fY3RybF9pZCA8PCAiLCBjaGFubmVsICIgPDwg
cnhfY2hhbgogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgIHN0ZDo6Y291dCA8PCAiVXNp
bmcgVFggcmFkaW8gIiA8PCB0eF9yYWRpb19jdHJsX2lkIDw8ICIsIGNoYW5uZWwgIiA8PCB0eF9j
aGFuCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwogICAgc2l6ZV90IHJ4X21iX2lkeCA9IHJ4
X3JhZGlvX2N0cmxfaWQuZ2V0X2RldmljZV9ubygpOwoKICAgIC8qKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAg
ICAqIFNldCB1cCByYWRpbwogICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwogICAgLy8gT25seSBmb3J3YXJk
IHByb3BlcnRpZXMgb25jZSBwZXIgYmxvY2sgaW4gdGhlIGNoYWluLiBJbiB0aGUgY2FzZSBvZgog
ICAgLy8gbG9vcGluZyBiYWNrIHRvIGEgc2luZ2xlIHJhZGlvIGJsb2NrLCBza2lwIHByb3BlcnR5
IHByb3BhZ2F0aW9uIGFmdGVyCiAgICAvLyB0cmF2ZXJzaW5nIGJhY2sgdG8gdGhlIHN0YXJ0aW5n
IHBvaW50IG9mIHRoZSBjaGFpbi4KICAgIGNvbnN0IGJvb2wgc2tpcF9wcCA9IHJ4X3JhZGlvX2N0
cmxfaWQgPT0gdHhfcmFkaW9fY3RybF9pZDsKCiAgICBzdGQ6OmNvdXQgPDwgInNraXBfcHA6ICIg
PDwgc2tpcF9wcCA8PCBzdGQ6OmVuZGw7CgogICAgLy8gQ29ubmVjdCBtYW51YWxseQogICAgCiAg
ICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IHJ4X3JhZGlvX2RkY19pZCgiMC9EREMjMCIpOwogICAg
dWhkOjpyZm5vYzo6YmxvY2tfaWRfdCByeF9yYWRpb19kdWNfaWQoIjAvRFVDIzAiKTsKICAgIAog
ICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCB0eF9yYWRpb19kdWNfaWQoIjAvRFVDIzEiKTsKICAg
IAogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCBhZGRzdWJfaWQoIjAvQWRkU3ViIzAiKTsKICAg
IAogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCBudWxsX2lkKCIwL051bGxTcmNTaW5rIzAiKTsK
ICAgIAogICAgLy8gUlggcmFkaW8gY2hhbm5lbHMgdG8gRERDcwogICAgZ3JhcGgtPmNvbm5lY3Qo
cnhfYmxvY2tpZCwgMCwgcnhfcmFkaW9fZGRjX2lkLCAwLCBmYWxzZSk7CiAgICBncmFwaC0+Y29u
bmVjdChyeF9ibG9ja2lkLCAxLCByeF9yYWRpb19kZGNfaWQsIDEsIGZhbHNlKTsKICAgIAogICAg
Ly8gRERDcyB0byBhZGRzdWIKICAgIGdyYXBoLT5jb25uZWN0KHJ4X3JhZGlvX2RkY19pZCwgMCwg
YWRkc3ViX2lkLCAwLCBmYWxzZSk7CiAgICBncmFwaC0+Y29ubmVjdChyeF9yYWRpb19kZGNfaWQs
IDEsIGFkZHN1Yl9pZCwgMSwgZmFsc2UpOwogICAgCiAgICAvLyBBZGRzdWIgdG8gRFVDIGFuZCBu
dWxsIHNpbmsKICAgIGdyYXBoLT5jb25uZWN0KGFkZHN1Yl9pZCwgMCwgdHhfcmFkaW9fZHVjX2lk
LCAwLCBmYWxzZSk7CiAgICBncmFwaC0+Y29ubmVjdChhZGRzdWJfaWQsIDEsIG51bGxfaWQsIDAs
IGZhbHNlKTsKICAgIAogICAgLy8gRFVDcyB0byByYWRpb3MKICAgIGdyYXBoLT5jb25uZWN0KHR4
X3JhZGlvX2R1Y19pZCwgMCwgdHhfcmFkaW9fY3RybF9pZCwgMCwgZmFsc2UpOwogICAgCiAgICBn
cmFwaC0+Y29tbWl0KCk7CgogICAgc3RkOjp2ZWN0b3I8dWhkOjpyZm5vYzo6Z3JhcGhfZWRnZV90
PiBhY3RpdmVfY29ubmVjdGlvbnMgPSBncmFwaC0+ZW51bWVyYXRlX2FjdGl2ZV9jb25uZWN0aW9u
cygpOwoKICAgIHN0ZDo6dmVjdG9yPHVoZDo6cmZub2M6OmdyYXBoX2VkZ2VfdD46Oml0ZXJhdG9y
IGl0ZXIgPSBhY3RpdmVfY29ubmVjdGlvbnMuYmVnaW4oKTsKCiAgICAvLyBQcmludCBhY3RpdmUg
Y29ubmVjdGlvbnMKICAgIGZvcihpdGVyOyBpdGVyIDwgYWN0aXZlX2Nvbm5lY3Rpb25zLmVuZCgp
OyBpdGVyKyspCiAgICB7CgkgICAgc3RkOjpjb3V0IDw8ICgqaXRlcikudG9fc3RyaW5nKCkgPDwg
c3RkOjplbmRsOzsKICAgIH0KCiAgICByeF9yYWRpb19jdHJsLT5lbmFibGVfcnhfdGltZXN0YW1w
cyhyeF90aW1lc3RhbXBzLCByeF9jaGFuKTsKCiAgICAvLyBTZXQgdGltZSBhbmQgY2xvY2sgcmVm
ZXJlbmNlCiAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8IGdyYXBoLT5nZXRfbnVtX21ib2FyZHMo
KTsgKytpKSB7CiAgICAgICAgZ3JhcGgtPmdldF9tYl9jb250cm9sbGVyKGkpLT5zZXRfY2xvY2tf
c291cmNlKHJlZik7CiAgICB9CiAgICAKICAgIC8vIExvY2sgbWJvYXJkIGNsb2NrcwogICAgZm9y
IChzaXplX3QgaSA9IDA7IGkgPCBncmFwaC0+Z2V0X251bV9tYm9hcmRzKCk7ICsraSkgewogICAg
ICAgIGdyYXBoLT5nZXRfbWJfY29udHJvbGxlcihpKS0+c2V0X3RpbWVfc291cmNlKHBwcyk7CiAg
ICB9CiAgICAKICAgIHJhdGUgPSByeF9yYWRpb19jdHJsLT5zZXRfcmF0ZShyYXRlKTsKCiAgICAv
LyBzZXQgdGhlIHNhbXBsZSByYXRlCiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0
dGluZyBSWCBSYXRlOiAlZiBNc3BzLi4uIikgJSAocmF0ZSAvIDFlNikKICAgICAgICAgICAgICA8
PCBzdGQ6OmVuZGw7CiAgICByYXRlID0gcnhfcmFkaW9fY3RybC0+c2V0X3JhdGUocmF0ZSk7CiAg
ICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIFJYIFJhdGU6ICVmIE1zcHMuLi4i
KSAlIChyYXRlIC8gMWU2KQogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbAogICAgICAgICAgICAg
IDw8IHN0ZDo6ZW5kbDsKCiAgICAvLyBzZXQgdGhlIGNlbnRlciBmcmVxdWVuY3kKCiAgICBzdGQ6
OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBSWCBGcmVxOiAlZiBNSHouLi4iKSAlIChy
eF9mcmVxIC8gMWU2KQogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgIAogICAgcnhfcmFk
aW9fY3RybC0+c2V0X3J4X2ZyZXF1ZW5jeShyeF9mcmVxLCByeF9jaGFuKTsKICAgIHN0ZDo6Y291
dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgUlggRnJlcTogJWYgTUh6Li4uIikKICAgICAgICAg
ICAgICAgICAgICAgJSAocnhfcmFkaW9fY3RybC0+Z2V0X3J4X2ZyZXF1ZW5jeShyeF9jaGFuKSAv
IDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICA8PCBzdGQ6OmVu
ZGw7CgogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRpbmcgVFggRnJlcTogJWYg
TUh6Li4uIikgJSAodHhfZnJlcSAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7Cgog
ICAgdHhfcmFkaW9fY3RybC0+c2V0X3R4X2ZyZXF1ZW5jeSh0eF9mcmVxLCB0eF9jaGFuKTsKICAg
IHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgVFggRnJlcTogJWYgTUh6Li4uIikK
ICAgICAgICAgICAgICAgICAgICAgJSAodHhfcmFkaW9fY3RybC0+Z2V0X3R4X2ZyZXF1ZW5jeSh0
eF9jaGFuKSAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICA8
PCBzdGQ6OmVuZGw7CgogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRpbmcgUlgg
QmFuZHdpZHRoOiAlZiBNSHouLi4iKSAlIChyeF9idyAvIDFlNikKICAgICAgICAgICAgICA8PCBz
dGQ6OmVuZGw7CiAgICByeF9yYWRpb19jdHJsLT5zZXRfcnhfYmFuZHdpZHRoKHJ4X2J3LCByeF9j
aGFuKTsKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgUlggQmFuZHdpZHRo
OiAlZiBNSHouLi4iKQogICAgICAgICAgICAgICAgICAgICAlIChyeF9yYWRpb19jdHJsLT5nZXRf
cnhfYmFuZHdpZHRoKHJ4X2NoYW4pIC8gMWU2KQogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbAog
ICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKCiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1h
dCgiU2V0dGluZyBUWCBCYW5kd2lkdGg6ICVmIE1Iei4uLiIpICUgKHR4X2J3IC8gMWU2KQogICAg
ICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgIHR4X3JhZGlvX2N0cmwtPnNldF90eF9iYW5kd2lk
dGgodHhfYncsIHR4X2NoYW4pOwogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkFjdHVh
bCBUWCBCYW5kd2lkdGg6ICVmIE1Iei4uLiIpCiAgICAgICAgICAgICAgICAgICAgICUgKHR4X3Jh
ZGlvX2N0cmwtPmdldF90eF9iYW5kd2lkdGgodHhfY2hhbikgLyAxZTYpCiAgICAgICAgICAgICAg
PDwgc3RkOjplbmRsCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwoKICAgIC8vIEFudGVubmFz
CgogICAgcnhfcmFkaW9fY3RybC0+c2V0X3J4X2FudGVubmEoIkEiLCAwKTsKICAgIHJ4X3JhZGlv
X2N0cmwtPnNldF9yeF9hbnRlbm5hKCJCIiwgMSk7CiAgICAKICAgIHR4X3JhZGlvX2N0cmwtPnNl
dF90eF9hbnRlbm5hKCJBIiwgMCk7ICAgIAogICAgcnhfcmFkaW9fY3RybC0+c2V0X3R4X2FudGVu
bmEoIkEiLCAwKTsKCgogICAgc3RkOjpjb3V0IDw8ICJTZXR0aW5nIHNhbXBsZXMgcGVyIHBhY2tl
dCB0bzogIiA8PCBzcHAgPDwgc3RkOjplbmRsOwogICAgcnhfcmFkaW9fY3RybC0+c2V0X3Byb3Bl
cnR5PGludD4oInNwcCIsIHNwcCwgMCk7CiAgICBzcHAgPSByeF9yYWRpb19jdHJsLT5nZXRfcHJv
cGVydHk8aW50Pigic3BwIiwgMCk7CiAgICBzdGQ6OmNvdXQgPDwgIkFjdHVhbCBzYW1wbGVzIHBl
ciBwYWNrZXQgPSAiIDw8IHNwcCA8PCBzdGQ6OmVuZGw7CgoKICAgIC8vIEFsbG93IGZvciBzb21l
IHNldHVwIHRpbWUKICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcigxcyAqIHNldHVwX3Rp
bWUpOwoKICAgIC8vIEFybSBTSUdJTlQgaGFuZGxlcgogICAgc3RkOjpzaWduYWwoU0lHSU5ULCAm
c2lnX2ludF9oYW5kbGVyKTsKCiAgICAvLyBDYWxjdWxhdGUgdGltZW91dCBhbmQgc2V0IHRpbWVy
cwogICAgLy8gV2UganVzdCBuZWVkIHRvIGNoZWNrIGlzIG5zYW1wcyB3YXMgc2V0LCBvdGhlcndp
c2Ugd2UnbGwgdXNlIHRoZSBkdXJhdGlvbgogICAgaWYgKHRvdGFsX251bV9zYW1wcyA+IDApIHsK
ICAgICAgICB0b3RhbF90aW1lID0gdG90YWxfbnVtX3NhbXBzIC8gcmF0ZTsKICAgICAgICBzdGQ6
OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiRXhwZWN0ZWQgc3RyZWFtaW5nIHRpbWU6ICUuM2YiKSAl
IHRvdGFsX3RpbWUKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwogICAgfQoKICAgIC8v
IFN0YXJ0IHN0cmVhbWluZwogICAgdWhkOjpzdHJlYW1fY21kX3Qgc3RyZWFtX2NtZCh1aGQ6OnN0
cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfU1RBUlRfQ09OVElOVU9VUyk7CiAgICBzdHJlYW1fY21k
Lm51bV9zYW1wcyAgPSBzaXplX3QodG90YWxfbnVtX3NhbXBzKTsKICAgIHN0cmVhbV9jbWQuc3Ry
ZWFtX25vdyA9IGZhbHNlOwogICAgc3RyZWFtX2NtZC50aW1lX3NwZWMgPQogICAgICAgIGdyYXBo
LT5nZXRfbWJfY29udHJvbGxlcihyeF9tYl9pZHgpLT5nZXRfdGltZWtlZXBlcihyeF9tYl9pZHgp
LT5nZXRfdGltZV9ub3coKQogICAgICAgICsgc2V0dXBfdGltZTsKICAgIHN0ZDo6Y291dCA8PCAi
SXNzdWluZyBzdGFydCBzdHJlYW0gY21kLi4uIiA8PCBzdGQ6OmVuZGw7CiAgICAKICAgIC8vIEFy
ZSB0d28gc3RyZWFtIGNvbW1hbmRzIHJlcXVpcmVkIGZvciAyIGNoYW5uZWwgUlg/CiAgICByeF9y
YWRpb19jdHJsLT5pc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWQsIDApOwogICAgcnhfcmFkaW9f
Y3RybC0+aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1fY21kLCAxKTsKICAgIAogICAgc3RkOjp0aGlz
X3RocmVhZDo6c2xlZXBfZm9yKDFzICogc2V0dXBfdGltZSk7CiAgICAKICAgIHN0ZDo6Y291dCA8
PCAiV2FpdC4uLiIgPDwgc3RkOjplbmRsOwoKICAgIC8vIFdhaXQgdW50aWwgd2UgY2FuIGV4aXQK
ICAgIHVoZDo6dGltZV9zcGVjX3QgZWxhcHNlZF90aW1lID0gMC4wOwogICAgd2hpbGUgKG5vdCBz
dG9wX3NpZ25hbF9jYWxsZWQpIHsKICAgICAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3Io
MTAwbXMpOwogICAgICAgIGlmICh0b3RhbF90aW1lID4gMC4wKSB7CiAgICAgICAgICAgIGVsYXBz
ZWRfdGltZSArPSAwLjE7CiAgICAgICAgICAgIGlmIChlbGFwc2VkX3RpbWUgPiB0b3RhbF90aW1l
KSB7CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0K
CiAgICAvLyBTdG9wIHJhZGlvCiAgICBzdHJlYW1fY21kLnN0cmVhbV9tb2RlID0gdWhkOjpzdHJl
YW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUT1BfQ09OVElOVU9VUzsKICAgIHN0ZDo6Y291dCA8PCAi
SXNzdWluZyBzdG9wIHN0cmVhbSBjbWQuLi4iIDw8IHN0ZDo6ZW5kbDsKICAgIHJ4X3JhZGlvX2N0
cmwtPmlzc3VlX3N0cmVhbV9jbWQoc3RyZWFtX2NtZCwgcnhfY2hhbik7CiAgICBzdGQ6OmNvdXQg
PDwgIkRvbmUiIDw8IHN0ZDo6ZW5kbDsKICAgIC8vIEFsbG93IGZvciB0aGUgc2FtcGxlcyBhbmQg
QUNLcyB0byBwcm9wYWdhdGUKICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcigxMDBtcyk7
CgogICAgcmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQo=

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/plain; name="loopback_test.cpp"
Content-Description: loopback_test.cpp
Content-Disposition: attachment; filename="loopback_test.cpp"; size=8780;
	creation-date="Thu, 29 Jun 2023 12:00:17 GMT";
	modification-date="Thu, 29 Jun 2023 12:22:54 GMT"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPHVoZC9yZm5vYy9ibG9ja19pZC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvbWJf
Y29udHJvbGxlci5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvcmFkaW9fY29udHJvbC5ocHA+CiNp
bmNsdWRlIDx1aGQvcmZub2NfZ3JhcGguaHBwPgojaW5jbHVkZSA8dWhkL3R5cGVzL3R1bmVfcmVx
dWVzdC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvZ3JhcGhfdXRpbHMuaHBwPgojaW5jbHVkZSA8
dWhkL3V0aWxzL21hdGguaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxzL3NhZmVfbWFpbi5ocHA+CiNp
bmNsdWRlIDxib29zdC9mb3JtYXQuaHBwPgojaW5jbHVkZSA8Y2hyb25vPgojaW5jbHVkZSA8Y3Np
Z25hbD4KI2luY2x1ZGUgPGlvc3RyZWFtPgojaW5jbHVkZSA8dGhyZWFkPgoKdXNpbmcgdWhkOjpy
Zm5vYzo6cmFkaW9fY29udHJvbDsKdXNpbmcgbmFtZXNwYWNlIHN0ZDo6Y2hyb25vX2xpdGVyYWxz
OwoKLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKICogU0lHSU5UIGhhbmRsaW5nCiAqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKiovCnN0YXRpYyBib29sIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZhbHNlOwp2b2lkIHNpZ19p
bnRfaGFuZGxlcihpbnQpCnsKICAgIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IHRydWU7Cn0KCi8qKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqCiAqIG1haW4KICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KaW50IFVIRF9TQUZF
X01BSU4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKewogICAgc3RkOjpzdHJpbmcgYXJncywgcnhf
YW50LCB0eF9hbnQsIHJ4X2Jsb2NraWQsIHR4X2Jsb2NraWQsIHJlZiwgcHBzOwogICAgc2l6ZV90
IHRvdGFsX251bV9zYW1wcywgc3BwLCByeF9jaGFuLCB0eF9jaGFuOwogICAgZG91YmxlIHJhdGUs
IHJ4X2ZyZXEsIHR4X2ZyZXEsIHJ4X2J3LCB0eF9idywgdG90YWxfdGltZSwgc2V0dXBfdGltZTsK
ICAgIGJvb2wgcnhfdGltZXN0YW1wczsKICAgIAogICAgcmF0ZSA9IDIwMGU2OwogICAgCiAgICBz
cHAgPSAwOwogICAgCiAgICByeF9mcmVxID0gMC4wOwogICAgdHhfZnJlcSA9IDAuMDsKICAgIAog
ICAgcnhfYncgPSAzMmU2OwogICAgdHhfYncgPSAzMmU2OwogICAgCiAgICByeF9jaGFuID0gMDsK
ICAgIHR4X2NoYW4gPSAwOwogICAgCiAgICB0b3RhbF9udW1fc2FtcHMgPSAwOwogICAgdG90YWxf
dGltZSA9IDAuMDsKICAgIAogICAgcnhfYmxvY2tpZCA9ICIwL1JhZGlvIzAiOwogICAgdHhfYmxv
Y2tpZCA9ICIwL1JhZGlvIzEiOwogICAgCiAgICAvLyBTZXQgdGltZXN0YW1wcyBvbiBSWAogICAg
cnhfdGltZXN0YW1wcyA9IGZhbHNlOwogICAgCiAgICAvLyBTZXR1cCB0aW1lCiAgICBzZXR1cF90
aW1lID0gMC4xOwogICAgCiAgICByZWYgPSAiaW50ZXJuYWwiOwogICAgcHBzID0gImludGVybmFs
IjsKICAgIAoKICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAqIENyZWF0ZSBkZXZpY2UgYW5kIGJs
b2NrIGNvbnRyb2xzCiAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCiAgICBzdGQ6OmNvdXQgPDwgc3RkOjpl
bmRsOwogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkNyZWF0aW5nIHRoZSBSRk5vQyBn
cmFwaCB3aXRoIGFyZ3M6ICVzLi4uIikgJSBhcmdzCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRs
OwogICAgdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6OnNwdHIgZ3JhcGggPSB1aGQ6OnJmbm9jOjpy
Zm5vY19ncmFwaDo6bWFrZShhcmdzKTsKCiAgICAvLyBDcmVhdGUgaGFuZGxlcyBmb3IgcmFkaW8g
b2JqZWN0cwogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCByeF9yYWRpb19jdHJsX2lkKHJ4X2Js
b2NraWQpOwogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCB0eF9yYWRpb19jdHJsX2lkKHR4X2Js
b2NraWQpOwogICAgLy8gVGhpcyBuZXh0IGxpbmUgd2lsbCBmYWlsIGlmIHRoZSByYWRpbyBpcyBu
b3QgYWN0dWFsbHkgYXZhaWxhYmxlCiAgICB1aGQ6OnJmbm9jOjpyYWRpb19jb250cm9sOjpzcHRy
IHJ4X3JhZGlvX2N0cmwgPQogICAgICAgIGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpyZm5vYzo6cmFk
aW9fY29udHJvbD4ocnhfcmFkaW9fY3RybF9pZCk7CiAgICB1aGQ6OnJmbm9jOjpyYWRpb19jb250
cm9sOjpzcHRyIHR4X3JhZGlvX2N0cmwgPQogICAgICAgIGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpy
Zm5vYzo6cmFkaW9fY29udHJvbD4odHhfcmFkaW9fY3RybF9pZCk7CiAgICBzdGQ6OmNvdXQgPDwg
IlVzaW5nIFJYIHJhZGlvICIgPDwgcnhfcmFkaW9fY3RybF9pZCA8PCAiLCBjaGFubmVsICIgPDwg
cnhfY2hhbgogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgIHN0ZDo6Y291dCA8PCAiVXNp
bmcgVFggcmFkaW8gIiA8PCB0eF9yYWRpb19jdHJsX2lkIDw8ICIsIGNoYW5uZWwgIiA8PCB0eF9j
aGFuCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwogICAgc2l6ZV90IHJ4X21iX2lkeCA9IHJ4
X3JhZGlvX2N0cmxfaWQuZ2V0X2RldmljZV9ubygpOwoKICAgIC8qKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAg
ICAqIFNldCB1cCByYWRpbwogICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwogICAgLy8gT25seSBmb3J3YXJk
IHByb3BlcnRpZXMgb25jZSBwZXIgYmxvY2sgaW4gdGhlIGNoYWluLiBJbiB0aGUgY2FzZSBvZgog
ICAgLy8gbG9vcGluZyBiYWNrIHRvIGEgc2luZ2xlIHJhZGlvIGJsb2NrLCBza2lwIHByb3BlcnR5
IHByb3BhZ2F0aW9uIGFmdGVyCiAgICAvLyB0cmF2ZXJzaW5nIGJhY2sgdG8gdGhlIHN0YXJ0aW5n
IHBvaW50IG9mIHRoZSBjaGFpbi4KICAgIGNvbnN0IGJvb2wgc2tpcF9wcCA9IHJ4X3JhZGlvX2N0
cmxfaWQgPT0gdHhfcmFkaW9fY3RybF9pZDsKCiAgICBzdGQ6OmNvdXQgPDwgInNraXBfcHA6ICIg
PDwgc2tpcF9wcCA8PCBzdGQ6OmVuZGw7CgogICAgLy8gQ29ubmVjdCBtYW51YWxseQogICAgCiAg
ICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IHJ4X3JhZGlvX2RkY19pZCgiMC9EREMjMCIpOwogICAg
dWhkOjpyZm5vYzo6YmxvY2tfaWRfdCByeF9yYWRpb19kdWNfaWQoIjAvRFVDIzAiKTsKICAgIAog
ICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCB0eF9yYWRpb19kdWNfaWQoIjAvRFVDIzEiKTsKICAg
IAogICAgLy8gUlggcmFkaW8gY2hhbm5lbHMgdG8gRERDcwogICAgZ3JhcGgtPmNvbm5lY3Qocnhf
YmxvY2tpZCwgMCwgcnhfcmFkaW9fZGRjX2lkLCAwLCBmYWxzZSk7CiAgICBncmFwaC0+Y29ubmVj
dChyeF9ibG9ja2lkLCAxLCByeF9yYWRpb19kZGNfaWQsIDEsIGZhbHNlKTsKICAgIAogICAgLy8g
RERDcyB0byBEVUNzCiAgICBncmFwaC0+Y29ubmVjdChyeF9yYWRpb19kZGNfaWQsIDAsIHR4X3Jh
ZGlvX2R1Y19pZCwgMCwgZmFsc2UpOwogICAgZ3JhcGgtPmNvbm5lY3QocnhfcmFkaW9fZGRjX2lk
LCAxLCByeF9yYWRpb19kdWNfaWQsIDAsIGZhbHNlKTsKICAgIAogICAgLy8gRFVDcyB0byByYWRp
b3MKICAgIGdyYXBoLT5jb25uZWN0KHR4X3JhZGlvX2R1Y19pZCwgMCwgdHhfcmFkaW9fY3RybF9p
ZCwgMCwgZmFsc2UpOwogICAgZ3JhcGgtPmNvbm5lY3QocnhfcmFkaW9fZHVjX2lkLCAwLCByeF9y
YWRpb19jdHJsX2lkLCAwLCB0cnVlKTsKCiAgICBncmFwaC0+Y29tbWl0KCk7CgogICAgc3RkOjp2
ZWN0b3I8dWhkOjpyZm5vYzo6Z3JhcGhfZWRnZV90PiBhY3RpdmVfY29ubmVjdGlvbnMgPSBncmFw
aC0+ZW51bWVyYXRlX2FjdGl2ZV9jb25uZWN0aW9ucygpOwoKICAgIHN0ZDo6dmVjdG9yPHVoZDo6
cmZub2M6OmdyYXBoX2VkZ2VfdD46Oml0ZXJhdG9yIGl0ZXIgPSBhY3RpdmVfY29ubmVjdGlvbnMu
YmVnaW4oKTsKCiAgICAvLyBQcmludCBhY3RpdmUgY29ubmVjdGlvbnMKICAgIGZvcihpdGVyOyBp
dGVyIDwgYWN0aXZlX2Nvbm5lY3Rpb25zLmVuZCgpOyBpdGVyKyspCiAgICB7CgkgICAgc3RkOjpj
b3V0IDw8ICgqaXRlcikudG9fc3RyaW5nKCkgPDwgc3RkOjplbmRsOzsKICAgIH0KCiAgICByeF9y
YWRpb19jdHJsLT5lbmFibGVfcnhfdGltZXN0YW1wcyhyeF90aW1lc3RhbXBzLCByeF9jaGFuKTsK
CiAgICAvLyBTZXQgdGltZSBhbmQgY2xvY2sgcmVmZXJlbmNlCiAgICBmb3IgKHNpemVfdCBpID0g
MDsgaSA8IGdyYXBoLT5nZXRfbnVtX21ib2FyZHMoKTsgKytpKSB7CiAgICAgICAgZ3JhcGgtPmdl
dF9tYl9jb250cm9sbGVyKGkpLT5zZXRfY2xvY2tfc291cmNlKHJlZik7CiAgICB9CiAgICAKICAg
IC8vIExvY2sgbWJvYXJkIGNsb2NrcwogICAgZm9yIChzaXplX3QgaSA9IDA7IGkgPCBncmFwaC0+
Z2V0X251bV9tYm9hcmRzKCk7ICsraSkgewogICAgICAgIGdyYXBoLT5nZXRfbWJfY29udHJvbGxl
cihpKS0+c2V0X3RpbWVfc291cmNlKHBwcyk7CiAgICB9CiAgICAKICAgIHJhdGUgPSByeF9yYWRp
b19jdHJsLT5zZXRfcmF0ZShyYXRlKTsKCiAgICAvLyBzZXQgdGhlIHNhbXBsZSByYXRlCiAgICBz
dGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBSWCBSYXRlOiAlZiBNc3BzLi4uIikg
JSAocmF0ZSAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICByYXRlID0gcnhf
cmFkaW9fY3RybC0+c2V0X3JhdGUocmF0ZSk7CiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1h
dCgiQWN0dWFsIFJYIFJhdGU6ICVmIE1zcHMuLi4iKSAlIChyYXRlIC8gMWU2KQogICAgICAgICAg
ICAgIDw8IHN0ZDo6ZW5kbAogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKCiAgICAvLyBzZXQg
dGhlIGNlbnRlciBmcmVxdWVuY3kKCiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0
dGluZyBSWCBGcmVxOiAlZiBNSHouLi4iKSAlIChyeF9mcmVxIC8gMWU2KQogICAgICAgICAgICAg
IDw8IHN0ZDo6ZW5kbDsKICAgIAogICAgcnhfcmFkaW9fY3RybC0+c2V0X3J4X2ZyZXF1ZW5jeShy
eF9mcmVxLCByeF9jaGFuKTsKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwg
UlggRnJlcTogJWYgTUh6Li4uIikKICAgICAgICAgICAgICAgICAgICAgJSAocnhfcmFkaW9fY3Ry
bC0+Z2V0X3J4X2ZyZXF1ZW5jeShyeF9jaGFuKSAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6
OmVuZGwKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CgogICAgc3RkOjpjb3V0IDw8IGJvb3N0
Ojpmb3JtYXQoIlNldHRpbmcgVFggRnJlcTogJWYgTUh6Li4uIikgJSAodHhfZnJlcSAvIDFlNikK
ICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CgogICAgdHhfcmFkaW9fY3RybC0+c2V0X3R4X2Zy
ZXF1ZW5jeSh0eF9mcmVxLCB0eF9jaGFuKTsKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0
KCJBY3R1YWwgVFggRnJlcTogJWYgTUh6Li4uIikKICAgICAgICAgICAgICAgICAgICAgJSAodHhf
cmFkaW9fY3RybC0+Z2V0X3R4X2ZyZXF1ZW5jeSh0eF9jaGFuKSAvIDFlNikKICAgICAgICAgICAg
ICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CgogICAgc3RkOjpjb3V0
IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRpbmcgUlggQmFuZHdpZHRoOiAlZiBNSHouLi4iKSAlIChy
eF9idyAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICByeF9yYWRpb19jdHJs
LT5zZXRfcnhfYmFuZHdpZHRoKHJ4X2J3LCByeF9jaGFuKTsKICAgIHN0ZDo6Y291dCA8PCBib29z
dDo6Zm9ybWF0KCJBY3R1YWwgUlggQmFuZHdpZHRoOiAlZiBNSHouLi4iKQogICAgICAgICAgICAg
ICAgICAgICAlIChyeF9yYWRpb19jdHJsLT5nZXRfcnhfYmFuZHdpZHRoKHJ4X2NoYW4pIC8gMWU2
KQogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbAogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsK
CiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBUWCBCYW5kd2lkdGg6ICVm
IE1Iei4uLiIpICUgKHR4X2J3IC8gMWU2KQogICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAg
IHR4X3JhZGlvX2N0cmwtPnNldF90eF9iYW5kd2lkdGgodHhfYncsIHR4X2NoYW4pOwogICAgc3Rk
Ojpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkFjdHVhbCBUWCBCYW5kd2lkdGg6ICVmIE1Iei4uLiIp
CiAgICAgICAgICAgICAgICAgICAgICUgKHR4X3JhZGlvX2N0cmwtPmdldF90eF9iYW5kd2lkdGgo
dHhfY2hhbikgLyAxZTYpCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRsCiAgICAgICAgICAgICAg
PDwgc3RkOjplbmRsOwoKICAgIC8vIEFudGVubmFzCgogICAgcnhfcmFkaW9fY3RybC0+c2V0X3J4
X2FudGVubmEoIkEiLCAwKTsKICAgIHJ4X3JhZGlvX2N0cmwtPnNldF9yeF9hbnRlbm5hKCJCIiwg
MSk7CiAgICAKICAgIHR4X3JhZGlvX2N0cmwtPnNldF90eF9hbnRlbm5hKCJBIiwgMCk7ICAgIAog
ICAgcnhfcmFkaW9fY3RybC0+c2V0X3R4X2FudGVubmEoIkEiLCAwKTsKCgogICAgc3RkOjpjb3V0
IDw8ICJTZXR0aW5nIHNhbXBsZXMgcGVyIHBhY2tldCB0bzogIiA8PCBzcHAgPDwgc3RkOjplbmRs
OwogICAgcnhfcmFkaW9fY3RybC0+c2V0X3Byb3BlcnR5PGludD4oInNwcCIsIHNwcCwgMCk7CiAg
ICBzcHAgPSByeF9yYWRpb19jdHJsLT5nZXRfcHJvcGVydHk8aW50Pigic3BwIiwgMCk7CiAgICBz
dGQ6OmNvdXQgPDwgIkFjdHVhbCBzYW1wbGVzIHBlciBwYWNrZXQgPSAiIDw8IHNwcCA8PCBzdGQ6
OmVuZGw7CgoKICAgIC8vIEFsbG93IGZvciBzb21lIHNldHVwIHRpbWUKICAgIHN0ZDo6dGhpc190
aHJlYWQ6OnNsZWVwX2ZvcigxcyAqIHNldHVwX3RpbWUpOwoKICAgIC8vIEFybSBTSUdJTlQgaGFu
ZGxlcgogICAgc3RkOjpzaWduYWwoU0lHSU5ULCAmc2lnX2ludF9oYW5kbGVyKTsKCiAgICAvLyBD
YWxjdWxhdGUgdGltZW91dCBhbmQgc2V0IHRpbWVycwogICAgLy8gV2UganVzdCBuZWVkIHRvIGNo
ZWNrIGlzIG5zYW1wcyB3YXMgc2V0LCBvdGhlcndpc2Ugd2UnbGwgdXNlIHRoZSBkdXJhdGlvbgog
ICAgaWYgKHRvdGFsX251bV9zYW1wcyA+IDApIHsKICAgICAgICB0b3RhbF90aW1lID0gdG90YWxf
bnVtX3NhbXBzIC8gcmF0ZTsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiRXhw
ZWN0ZWQgc3RyZWFtaW5nIHRpbWU6ICUuM2YiKSAlIHRvdGFsX3RpbWUKICAgICAgICAgICAgICAg
ICAgPDwgc3RkOjplbmRsOwogICAgfQoKICAgIC8vIFN0YXJ0IHN0cmVhbWluZwogICAgdWhkOjpz
dHJlYW1fY21kX3Qgc3RyZWFtX2NtZCh1aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfU1RB
UlRfQ09OVElOVU9VUyk7CiAgICBzdHJlYW1fY21kLm51bV9zYW1wcyAgPSBzaXplX3QodG90YWxf
bnVtX3NhbXBzKTsKICAgIHN0cmVhbV9jbWQuc3RyZWFtX25vdyA9IGZhbHNlOwogICAgc3RyZWFt
X2NtZC50aW1lX3NwZWMgPQogICAgICAgIGdyYXBoLT5nZXRfbWJfY29udHJvbGxlcihyeF9tYl9p
ZHgpLT5nZXRfdGltZWtlZXBlcihyeF9tYl9pZHgpLT5nZXRfdGltZV9ub3coKQogICAgICAgICsg
c2V0dXBfdGltZTsKICAgIHN0ZDo6Y291dCA8PCAiSXNzdWluZyBzdGFydCBzdHJlYW0gY21kLi4u
IiA8PCBzdGQ6OmVuZGw7CiAgICAKICAgIC8vIEFyZSB0d28gc3RyZWFtIGNvbW1hbmRzIHJlcXVp
cmVkIGZvciAyIGNoYW5uZWwgUlg/CiAgICByeF9yYWRpb19jdHJsLT5pc3N1ZV9zdHJlYW1fY21k
KHN0cmVhbV9jbWQsIDApOwogICAgcnhfcmFkaW9fY3RybC0+aXNzdWVfc3RyZWFtX2NtZChzdHJl
YW1fY21kLCAxKTsKICAgIAogICAgc3RkOjp0aGlzX3RocmVhZDo6c2xlZXBfZm9yKDFzICogc2V0
dXBfdGltZSk7CiAgICAKICAgIHN0ZDo6Y291dCA8PCAiV2FpdC4uLiIgPDwgc3RkOjplbmRsOwoK
ICAgIC8vIFdhaXQgdW50aWwgd2UgY2FuIGV4aXQKICAgIHVoZDo6dGltZV9zcGVjX3QgZWxhcHNl
ZF90aW1lID0gMC4wOwogICAgd2hpbGUgKG5vdCBzdG9wX3NpZ25hbF9jYWxsZWQpIHsKICAgICAg
ICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3IoMTAwbXMpOwogICAgICAgIGlmICh0b3RhbF90
aW1lID4gMC4wKSB7CiAgICAgICAgICAgIGVsYXBzZWRfdGltZSArPSAwLjE7CiAgICAgICAgICAg
IGlmIChlbGFwc2VkX3RpbWUgPiB0b3RhbF90aW1lKSB7CiAgICAgICAgICAgICAgICBicmVhazsK
ICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0KCiAgICAvLyBTdG9wIHJhZGlvCiAgICBzdHJl
YW1fY21kLnN0cmVhbV9tb2RlID0gdWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUT1Bf
Q09OVElOVU9VUzsKICAgIHN0ZDo6Y291dCA8PCAiSXNzdWluZyBzdG9wIHN0cmVhbSBjbWQuLi4i
IDw8IHN0ZDo6ZW5kbDsKICAgIHJ4X3JhZGlvX2N0cmwtPmlzc3VlX3N0cmVhbV9jbWQoc3RyZWFt
X2NtZCwgcnhfY2hhbik7CiAgICBzdGQ6OmNvdXQgPDwgIkRvbmUiIDw8IHN0ZDo6ZW5kbDsKICAg
IC8vIEFsbG93IGZvciB0aGUgc2FtcGxlcyBhbmQgQUNLcyB0byBwcm9wYWdhdGUKICAgIHN0ZDo6
dGhpc190aHJlYWQ6OnNsZWVwX2ZvcigxMDBtcyk7CgogICAgcmV0dXJuIEVYSVRfU1VDQ0VTUzsK
fQo=

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_007_DB9PR08MB6959627BFF6E2C40A6F9E655EC25ADB9PR08MB6959eurp_--
