Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 477F3438BBF
	for <lists+usrp-users@lfdr.de>; Sun, 24 Oct 2021 22:04:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A79D384848
	for <lists+usrp-users@lfdr.de>; Sun, 24 Oct 2021 16:04:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=lunet.onmicrosoft.com header.i=@lunet.onmicrosoft.com header.b="rpz90Yxe";
	dkim-atps=neutral
Received: from mta-2.lboro.ac.uk (mta-2.lut.ac.uk [158.125.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A0EBC383EF4
	for <usrp-users@lists.ettus.com>; Sun, 24 Oct 2021 16:03:21 -0400 (EDT)
Received: from itsex-4.lboro.ac.uk ([158.125.160.15] helo=itsex-4.lunet.lboro.ac.uk)
	by mta-2.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1meji7-000279-Dr; Sun, 24 Oct 2021 21:03:19 +0100
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-4.lunet.lboro.ac.uk (2001:630:301:d314:90c6:812d:223a:24f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.12; Sun, 24
 Oct 2021 21:03:14 +0100
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e0e::204) by itsex-2.lunet.lboro.ac.uk
 (2001:630:301:d314::160:17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.12 via
 Frontend Transport; Sun, 24 Oct 2021 21:03:14 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNnNGbt4gWteODRrw9+MxYvcaWp/KcztkorIr9q8v8qBL4mEeBockM9HicCLb5C+se7VjtN9tz5HW/g17BgwydriDXyCNiT+rK/kkwvzhorrxgVOvCnUhkdwrO+1dJl6Pjy8hgwCUwPhO+1QmWQJlne44xc2V/W+8ugTNsmiETbvfSwMMcnfTpKOPpETIyE41Uls3FC3pT4G8DVCxLVgWIRl/NDjZt95uIwpflE3dvKL8miYqImH5eSyX9iUyrwN3VU6dBXIkNYWubpi9bmeyfWeU8hQB7QygYy9vpacalQ8UGgxxxLf7AaGxUUFHkKSDerfOQmeETyM4ro6rw35VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YxRZFNYywlI0SQZ7cn6l+vOyG9IB6xWd+8fk+gukBE=;
 b=j9vWVyjLO75iQ7KLL8Y/evVTjO2nPQbNRh33d+G8yICiX2SMXohIKhQJbkYpYSbyGdTD5xtlN2j056967Cf8MWuLb4IIp1bHV1HrYg3G9X13m9bwQOfznuzue45QGKUbjenvPYZNsIxrvyd9sK6U9NfMViPin0+iWRjXm6L8FuvaEmarfpZiXiOK95CBGsIrFH9LUKA5jsXtQ4kaA80qBpcgMJLLNa1ipfKQvZ1jn5/wli0PcHeRP1FTnROiWFvHe2qSkj0ceOamP96M58VnLKBiBF7cXR2Lr/yqnehZNFd+VPuYB9CODCDsJnfVcpldp1Spo3q5guaKfxfsw/8UZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lboro.ac.uk; dmarc=pass action=none header.from=lboro.ac.uk;
 dkim=pass header.d=lboro.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lunet.onmicrosoft.com;
 s=selector2-lunet-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7YxRZFNYywlI0SQZ7cn6l+vOyG9IB6xWd+8fk+gukBE=;
 b=rpz90Yxei41LkOoetsASzZbCNKb9ulIMFNG3nCkkiYjcsytoyNOR0Tof3mmnRoZLTuYscvDOPqXADCDXkfJxsiTbKyGN/eVtqo8gUACfmrJCcxjVABWtn0Mt/elF2Lj5/YU3my7KEmNwJfFVrPlzMxBkE15Iv4tucXGqNOzjecU=
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by VE1PR04MB7279.eurprd04.prod.outlook.com (2603:10a6:800:1a5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Sun, 24 Oct
 2021 20:03:12 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::3c6d:3bb6:f1f2:a18e]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::3c6d:3bb6:f1f2:a18e%6]) with mapi id 15.20.4628.020; Sun, 24 Oct 2021
 20:03:12 +0000
From: Ming You <M.You@lboro.ac.uk>
To: Ivan Zahartchuk <adray0001@gmail.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
Thread-Index: AQHXxs5A91yuFnPJgkSPFK7GS1P5BKveyvWAgABRIYCAAgiSgIABIiyAgAAXUICAADbTpg==
Date: Sun, 24 Oct 2021 20:03:12 +0000
Message-ID: <VE1PR04MB6653DF0BBF0BCB770B15AD56BA829@VE1PR04MB6653.eurprd04.prod.outlook.com>
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
 <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
 <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
 <9db5f18f-ec4b-fc6b-fb65-bcef88563bab@gmail.com>
 <CAPRRyxttDqNtknAo=owrQk6S9-2wMkdv-iuNr7jDXxoe5P=oEA@mail.gmail.com>
In-Reply-To: <CAPRRyxttDqNtknAo=owrQk6S9-2wMkdv-iuNr7jDXxoe5P=oEA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 537925e4-022d-0ac1-f1d2-5d0f10952d81
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2853d99-ecf3-4006-c14e-08d997294f0d
x-ms-traffictypediagnostic: VE1PR04MB7279:
x-microsoft-antispam-prvs: <VE1PR04MB72799D5AFA2D5B4EC44E12F1BA829@VE1PR04MB7279.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s/1jWEzga5tQ4nIkHXNGFUiytoY3xTb9AIBe4hzDyz9bZcb7djJsgXnOGlXMe+4VQ4luQMI1db1ZmEAiyAQFDzs5OIKI51mvsTE5gO8YVc1TUJ0UwR+9kRi7ND/ZkPGDuae9qvYE2r18Wa5GFH75HZx+WjHfiI4kIjAo2i6yv8DeX3GESAy4p7qQuiUiCboL9DKSGS24YmrZgLa820wKMsohn72YBK34Z4/68J+pSBtIw/ujY1JGwiiS6+mdfKDEyHyftgBCSv4k1HLbSLjuZ9tazFv2lLUsteVYbwA8pXjvjBAcBRqg1y2gXVUpu4IamlbjFOQ9gVxCr3e4qok2TsP4eqp1RzCCLxvcem5RU/U6V8v75HQjUvG6ThWu8VpLidbmY/BXeGYJs0iLsRYRIy7Ypfz4sSZlKuhfln+B5utlX8qI5lKKBKxAZwl/PZWpQVYwXKLqau5wYg9p4/+JslEWGdl/oUFpvh0RSC+8wNwygwU034unqM9gtOQ6GOlnJ/nYTFYCDGGdPjbSnd314O0T+xIqdzW2P3pWbLm3Fyy15x7jMM/pJ63+U7tjWlUqU9NDZ/1xzVTfm3s6hAXOfJjoDDKZGvN3lLXdKvoTj7psXecTN3S+qGCDEx0SMuKPY/5a7J0ZovbDNgMi1D0nmwVg2jnchAAldO0C++zmkK9Ai4ZjSmpbLCs4i5dkMC0qsGec8w/dgdEoEjxT1x6Aug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(53546011)(508600001)(33656002)(66446008)(4001150100001)(52536014)(76116006)(6506007)(9686003)(54906003)(55016002)(91956017)(2906002)(66556008)(4326008)(83380400001)(64756008)(86362001)(38070700005)(66476007)(110136005)(186003)(786003)(8676002)(316002)(5660300002)(8936002)(66946007)(122000001)(71200400001)(38100700002)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?windows-1251?Q?lk3LXADd+7TVz/9tsW8k+3lAg9HKI7OI6WYH/2p4/6yU/J5wbyqnkXSi?=
 =?windows-1251?Q?eesXkO8Eob2gi2NbuIV2jE73eD2F15Qpm89Rob/F8x1r/VLwPpdWLE0A?=
 =?windows-1251?Q?gkQKJzazOOrTwex/hMzCCOcEdsoqdq6asyqP/iwcNrtouFWwkLxieEMk?=
 =?windows-1251?Q?5QK4Yr6ChaLxbU7BBdFuHO3eMFNYtWrIhXOkKRpCNAJyOIgj0oFF7neg?=
 =?windows-1251?Q?35N3cFnVhP7vzc4MAxkt1bkn/O0mcuj1Cjx5pHr/EvWeWpIuJQKaTJ0Y?=
 =?windows-1251?Q?eHs8lO2ZVADRiODhdkUiPOxLLFX/ed5Got/3EeMU55QKRNmg6ptBJ4ji?=
 =?windows-1251?Q?ch1f8TV5yOo3j0e8EUvLzkXBXjFUCCQ80dSZ6A/WlF3kXduPt4FyJrSH?=
 =?windows-1251?Q?Q/klSb536KXvDL8idfigE1X2mGCBDdygRGeicAORHKmMbUoSz8Ltz0i2?=
 =?windows-1251?Q?bPTvyqTzRneJEBdIcJH/hYvr0VvSqonP98vGRBf70isHTKhVwWQrxZRM?=
 =?windows-1251?Q?+pinJDvpcKlh2ntA1t+T7ud8euNifl+6dDg6ZxgXNqmZpk/MSg7ESUph?=
 =?windows-1251?Q?Wp/28teRa26dSFOyGZ8zSNOPHvDCLbiZUgP7LlQ931RlMWX8YUinQYym?=
 =?windows-1251?Q?LZO1Ev2OeZgDQJvgAu+ODX7IAbXJm6CR1dBgVKjMWgXYz4+3ItpY5v5m?=
 =?windows-1251?Q?aFdA+PYal/aOVdtGtE88k3s1ZK9TGkLbYeAkQ2Rap9noZ5yKl9lJQ/In?=
 =?windows-1251?Q?ukqnQ9BlBsgC+MVplKmHkoAWtEBVIYjl0ujBVr+zzi9RPtjY34G7AC1b?=
 =?windows-1251?Q?IO1q8B2uZgda7LTM2VvEHWb60qO1gPyRI4ZXeTMop1xbFqP0gqQ5Q9Od?=
 =?windows-1251?Q?zNnjCp7VJkwBkEyF0C0qyKYZOMNmWxSr4Rs5vpnT2yEoZENiLF+e2uRJ?=
 =?windows-1251?Q?EvCgM0Dh73qne2LG8dBp4hJ3/Sj5HjUk9N1QYoQn1+wMDPfHMrE5fLPM?=
 =?windows-1251?Q?Qyu3sKSYyEDMkpO14HIBhkAwB6tdzHu2RjIXelgiPwV1cBCHKcCsLNnI?=
 =?windows-1251?Q?rYWsoLQB8pL4ccJZNxDSVOhH2QqqiPCyWSRCd96O4ott9gQeAZk9DxkD?=
 =?windows-1251?Q?9c3H5hMzKDLcTMhwYRQiVvMHAMgMEmnISo2ZiipyoV6uu7F9WDPJ6i3K?=
 =?windows-1251?Q?YGFpw4vcXCDGxPDMoc1JtJYWlP0tCA/ja/syi/PANjesE81QkKMS+RHY?=
 =?windows-1251?Q?h/BFiiX5k/OTFrl60Veg+/godX7XIIoNitHMOuKv/7i//ZDO59m3T+MV?=
 =?windows-1251?Q?S9TBo5rZjX2AfEsQ06eCIW9oywmqvcCEcGOhsgO5gxr+WHX0e+b5X8Lf?=
 =?windows-1251?Q?JEUyD4cBnEys7oxDBEFUhiI1KTL2Ye/8qOGIAU8oL0kB3biM41HTi/1c?=
 =?windows-1251?Q?iCZesHLCuBKA8XLRsRIPvFfxH/itdF3UuggOU90kXtiESBPU4jZ39kfj?=
 =?windows-1251?Q?xl5O+H+gOWS9qQXD4p4vZQ9//pgSkEdd/uw4d0H55BSaPjFdGYw4R0KK?=
 =?windows-1251?Q?CyHwzv/6MGmEP4jxAojO8fsnbks8cRTnClc+3g/W7s0dFd3kyP1mzrqR?=
 =?windows-1251?Q?02bYry4hYodLciYCGt69VoZKkZe/Ci0OI8v3trId1HuMn7EKVB47pB9Y?=
 =?windows-1251?Q?zV21K4aSzaAnPLC8ggxfc1F9FJoV7KHU5JQWLDRMLXq91pOlNzzbh22K?=
 =?windows-1251?Q?Twl+XYHQMkhu0piGd58=3D?=
Content-Type: text/plain; charset="windows-1251"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2853d99-ecf3-4006-c14e-08d997294f0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2021 20:03:12.3911
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RRiopw5lfadpoH8dHHp13p6PqNfJlqy41yPOEovGQoZeIBsPoLl0v5sGaRL5YfN5sQ7fkS4HT3FYqTYbf7PU3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7279
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: 0b80aa6a74e29435e16f0d21a17fa887
X-Lboro-Creds: scanned on mta-2.lboro.ac.uk
Message-ID-Hash: T2IJOOS3T3ACZR352TATY3SM3ZBS7F3U
X-Message-ID-Hash: T2IJOOS3T3ACZR352TATY3SM3ZBS7F3U
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2IJOOS3T3ACZR352TATY3SM3ZBS7F3U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SGkgSXZhbiwNCg0KSSB0aGluayB5b3UgbWlnaHQgYWxzbyBjaGVjayB0aGUgdHlwb3MsIGFzIEkg
dGhpbmsgZm9yIHRoZSBmZnQwIG1vZHVsZSBmcm9tIEV0dHVzIHNob3VsZCBoYXZlIGlucHV0IHBv
cnQgbmFtZSAiaW5fMCIgYW5kIG91dHB1dCBwb3J0IG5hbWUgIm91dF8wIiwgdW5sZXNzIHlvdSd2
ZSBtb2RpZmllZCBpdC4NCg0KSG9wZSB0aGlzIGhlbHBzIGFuZCBnb29kIGx1Y2shDQoNClRoYW5r
cywNCk1pbmcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJv
bTogSXZhbiBaYWhhcnRjaHVrIDxhZHJheTAwMDFAZ21haWwuY29tPg0KU2VudDogMjQgT2N0b2Jl
ciAyMDIxIDE3OjQwDQpUbzogTWFyY3VzIEQuIExlZWNoDQpDYzogZGlzY3Vzcy1nbnVyYWRpbzsg
dXNycC11c2Vycw0KU3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBGd2Q6IEFkZGluZyBhIFdpbmRv
dyBibG9jayB0byBhbiBSRk5PQyBncmFwaA0KDQoqKiBUSElTIE1FU1NBR0UgT1JJR0lOQVRFRCBP
VVRTSURFIExPVUdIQk9ST1VHSCBVTklWRVJTSVRZICoqDQoNCkJlIHdhcnkgb2YgbGlua3Mgb3Ig
YXR0YWNobWVudHMsIGVzcGVjaWFsbHkgaWYgdGhlIGVtYWlsIGlzIHVuc29saWNpdGVkIG9yIHlv
dSBkb24ndCByZWNvZ25pc2UgdGhlIHNlbmRlcidzIGVtYWlsIGFkZHJlc3MuDQoNCkkgcmVhZCB0
aGUgbWFudWFsLiBBbmQgSSB0cmllZCB0byBkbyBldmVyeXRoaW5nIGFjY29yZGluZyB0byB0aGUg
aW5zdHJ1Y3Rpb25zIGFuZCBleGlzdGluZyBleGFtcGxlcy4gVGhlIHlhbWwgc291cmNlIGZpbGUg
YWxzbyB1c2VzIHgzMDBfcmFkaW8gYmxvY2sNCg0K4vEsIDI0IO7q8i4gMjAyMSDjLiDiIDE4OjE3
LCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPG1haWx0bzpwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbT4+Og0KT24gMjAyMS0xMC0yMyA1OjU4IHAubS4sIEl2YW4gWmFoYXJ0
Y2h1ayB3cm90ZToNCg0KSSB3YW50IHRvIGNyZWF0ZSBGUEdBIGZpcm13YXJlIGZvciBVU1JQIEUz
MTAgd2l0aCB3aW5kb3cgZnVuY3Rpb24gYnV0IEkgZ2V0IHRoZSBlcnJvciBJIGRlc2NyaWJlZCBh
Ym92ZS4gTXkgeWFtbCBmaWxlIGlzIGFsc28gYXR0YWNoZWQgYWJvdmUuIEkgbmVlZCB0byBkbyB3
aW5kb3dpbmcgYW5kIEZGVCBvbiB0aGUgRlBHQSBzaWRlLiBBbmQgdW5kZXJzdGFuZCB3aHkgRkZU
IHJldHVybnMgemVybyB2YWx1ZXMgZXZlbiB3aGVuIGl0IGlzIGNvbmZpZ3VyZWQgdG8gcHJvZHVj
ZSBjb21wbGV4IGRhdGEuDQoNCltpbWFnZS5wbmddDQoNCu/yLCAyMiDu6vIuIDIwMjEg4y4g4iAx
Nzo1NSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbTxtYWlsdG86cGF0
Y2h2b25icmF1bkBnbWFpbC5jb20+PjoNCk9uIDIwMjEtMTAtMjIgNjowNSBhLm0uLCBJdmFuIFph
aGFydGNodWsgd3JvdGU6DQoNClllcyBJIGFtIHNldHRpbmcgZmZ0IGZvciBtYWduaXR1ZGVzLiBP
biB0aGUgZnJvbnQgc2lkZSwgSSBhbSBkb2luZyBhIGxvZy4gSSBwZXJmZWN0bHkgdW5kZXJzdGFu
ZCB3aGVyZSBpbmZpbml0eSBjb21lcyBmcm9tLiBJIGRvbpJ0IHVuZGVyc3RhbmQgd2h5IHRoZSBG
RlQgcmV0dXJucyAwLiBCdXQgaG93IGNhbiBJIGNvbmZpZ3VyZSB0aGUgV2luZG93Pw0KDQpXaGF0
IGRvZXMgdWhkX3VzcnBfcHJvYmUgc2hvdyBpbiB0aGUgIlJGTk9DIEJsb2NrcyIgc2VjdGlvbiBv
biB0aGlzIGRldmljZT8NCg0KSSB0aGluayB0aGUgd2luZG93IFJGTk9DIGZ1bmN0aW9uIGluIEdO
dSBSYWRpbyB0YWtlcyBhIGxpc3Qgb2YgdGhlIHdpbmRvdyB2YWx1ZXMgYXMgYSBwYXJhbWV0ZXIt
LXlvdSBjYW4gcG9wdWxhdGUgdGhhdCB3aXRoIGFueSBvZiB0aGUgd2luZG93LiogZnVuY3Rpb25z
DQogIHdpdGhpbiBHbnUgUmFkaW8uDQoNCg0K7/IsIDIyIO7q8i4gMjAyMSDjLiDiIDAxOjUxLCBN
YXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPG1haWx0bzpwYXRjaHZvbmJy
YXVuQGdtYWlsLmNvbT4+Og0KT24gMjAyMS0xMC0yMSA2OjQwIHAubS4sIEl2YW4gWmFoYXJ0Y2h1
ayB3cm90ZToNCg0KDQpIZWxsbywgSSBoYXZlIGEgcHJvYmxlbSB0aGF0IHdoZW4gcmVjZWl2aW5n
IHNhbXBsZXMgZnJvbSB0aGUgVVNSUCBFMzEwIGJvYXJkLCBhZnRlciB0aGUgRkZUIGJsb2NrIGF0
IGxvdyBnYWluLCB6ZXJvIHZhbHVlcyBhcmUgcmVjZWl2ZWQuIEFmdGVyIHRoYXQgSSBsb2cgdGhl
bSBhbmQgZ2V0IGluZmluaXR5LiBJIHdhbnRlZCB0byBmaWd1cmUgb3V0IHdoYXQgdGhlIHByb2Js
ZW0gaXMsIGJ1dCBJIGhhdmUgbm8gaWRlYSwgbWF5YmUgdGhlIFdpbmRvdyBibG9jayB3aWxsIGZp
eCB0aGUgc2l0dWF0aW9uLiBCdXQgd2hlbiBidWlsZGluZyBteSB5YW1sIGZpbGUsIEkgZ2V0IHRo
ZSBlcnJvcjoNCltFUlJdIDIgVW5yZXNvbHZlZCBjb25uZWN0aW9uKHMpDQpbRVJSXSAgICAgKHdp
bmRvdzAtb3V0XzAgLT4gZmZ0MC1pbjApDQpbRVJSXSAgICAgKGZmdDAtb3V0XzAgLT4gZXAxLWlu
XzApDQpbSU5GXSAgICAgICAgICgoJ3JhZGlvMCcsICdjdHJsX3BvcnQnLCAnbWFzdGVyJyksKQ0K
W0lORl0gICAgICAgICAoKCdyYWRpbzAnLCAndGltZV9rZWVwZXInLCAnbGlzdGVuZXInKSwpDQpb
SU5GXSAgICAgICAgICgoJ3JhZGlvMCcsICd4MzAwX3JhZGlvJywgJ3NsYXZlJyksKQ0KW0lORl0g
ICAgICAgICAoKCdfZGV2aWNlXycsICdjdHJscG9ydF9yYWRpbycsICdzbGF2ZScpLCkNCltJTkZd
ICAgICAgICAgKCgnX2RldmljZV8nLCAndGltZV9rZWVwZXInLCAnYnJvYWRjYXN0ZXInKSwpDQpb
SU5GXSAgICAgICAgICgoJ19kZXZpY2VfJywgJ3gzMDBfcmFkaW8nLCAnbWFzdGVyJyksKQ0KUGxl
YXNlIHRlbGwgbWUgd2hhdCBjb3VsZCBiZSB0aGUgcHJvYmxlbSBhbmQgaG93IGNhbiBJIGFkZCB0
aGUgV2luZG93IGJsb2NrIHRvIG15IGltYWdlPw0KDQoNCg0KDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbT4N
Cg0KDQpEbyB5b3UgaGF2ZSB5b3VyIEZGVCBjb25maWd1cmVkIGZvciBsb2cgb3V0cHV0PyAgQmVj
YXVzZSB0aGUgbG9nYXJpdGhtIG9mIHplcm8gaXMgdW5kZWZpbmVkLg0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbT4NCg0KSSBub3RpY2VkIGxvb2tpbmcgYXQgeW91ciAueWFtbCBmaWxlIHRoYXQgaXQgcmVm
ZXJlbmNlcyB4MzAwX3JhZGlvIGJsb2NrcywgYW5kIHNpbmNlIHRoaXMgaXMgYW4gRTMxMCwgdGhh
dCBtYXkgbm90IGJlIGFwcHJvcHJpYXRlPyAgSSBrbm93IHRoYXQgdGhlcmUgaGF2ZQ0KICBoaXN0
b3JpY2FsbHkgYmVlbiBjb25zaWRlcmFibGUgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUgWDMwMCBS
Rk5PQyByYWRpbyBibG9ja3MgYW5kIHRob3NlIGZvciBFMzEwLg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
