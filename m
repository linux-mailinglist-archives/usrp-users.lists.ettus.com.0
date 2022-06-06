Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AFB53F2D9
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 01:58:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A038D383C08
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 19:58:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654559892; bh=hn7gYANWub/yl5ZT9leRGLzRftrM8vNUSPKtJe12YjY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b8xHBtah5VWJpLS8fMt4u3x0jv5hYQ7OEAoEr70lJeA7QKXDyb1qgXs+xdJiuEEM/
	 21qdQKgcrWj4ZUrDuaWtNdmxl3+r8dQ9/ZcA2Xf9N2t61w3EdkhzqpGXYpIEVT6sP1
	 zdlGVilflMMdJxdORARKu1UXl+2rH7s68HgrZ1Cg5fqDoEC+aMINOG/w/lGxzGuEDt
	 zS8U499NITPXQWyevz5OZ4hbIyzuoap2RzDGpYmkjZ2imh6Pz52OdiGyLIi8TRe2Wp
	 eNj7e6C5oFp9MBHbbekwwhX8ZyFCOs33akWV6zZNX02bF34yvdu0sgpXlkkqzxppgk
	 o4v6YYpnrW5wg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0044.outbound.protection.office365.us [23.103.209.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 01951383BC7
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 19:57:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="CLCxkklf";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=dOqYgITTtT5lAJ0LEowotuENafiB4WwcXqMUGIUVVSnGkusEXpo8waJzFF4gHpcdJp9KAEpki/4nmfRN0jonLXLGeL3bT26wTQ+iD0PMbG7apzwrRO2HthKPyuejSqjlK79ymVEXCmR5UczK82mRrQFXonQebErD4tM50svQ+AumvfCUb6C95nXIuygrUAcZphcvUOoryg9egRn4QfNEdwABcCfQ7hUT6+rECsJMYibMZC+uvh6mQvmZBa3oj9FcGcwZAOpnLIoJt2mX73l7m8DvUdXMsI2Wz2QtpMOsXyH2uwqpmyFMPYfarjsNLZ6a7I6PecQ8tRkqgErfwzsLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ttIxyACzDZCvwBHIbHv7/BSWODGVIwFY4DGV6IzuOKw=;
 b=KQBJZcsJ0crfxPOvX8jVnYQjApqorZXY2bYjOsJ04rE87apif8tr+J4FAySS5yfb6T1PBWQks8ycNLZgpdzTouqMfWlv0VxDQEkPX+sIpRXCSW7rHOkAIxOfZ/UsQjqy7zsqLzKc4d+k+Gg3GS9bBvGlOpVAZDaVWol03sPwQJefRci/EVWVuPUuzlOLp7qHLlrbBWCfp1n8sgp+qVhdcXMl7u7OCbQJew6cDPQaNA64nPc8kyYGUMpE7IURNtY4H7X8yLoWPy73NuGabwTR3r4lxTBTx47DleSsbylbzbWtl/OOcEH/V1n+JDlpmNsrdZesql2P7IQAmF+Y/cUK/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ttIxyACzDZCvwBHIbHv7/BSWODGVIwFY4DGV6IzuOKw=;
 b=CLCxkklfAMbCKzA04IZi1+qW05BhfFyn2xJ6fGuXBNI5qmMuwMGAJ90ggdslYTB2Y/mrHbL/S8WD31oZr33QC+N5WzoAj7fBlLMe7vS2kvnlFaFTj7ChlWsQ73DbrHPMAwnrYYAUqY9Ufv/LARwghJAmpb1fDw09Apbpet9aNzXbUrNoEll6fbFKC0Zfe7xR6RYQ71Rw9amUghjd825xwrZF31ZpoRY4sfvdJgZLdwjJwXcZkVCwoCTlgXTis16MVz2hcbHuGNhpg9UEjdVKZGCgPQkTvNlS1KOcS1cmPQ0sbXP8dnBR+guCG5Azw5PPyIQZB6ksX/+ItOe3wSXBmA==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1100.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:174::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Mon, 6 Jun
 2022 23:57:06 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae%6]) with mapi id 15.20.5293.020; Mon, 6 Jun 2022
 23:57:06 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jon Beniston <jon@beniston.com>, "'Marcus D. Leech'"
	<patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: E320 Automatic master clock
Thread-Index: 
 AQHYecYnLQuiB6GnqEqGXVA9BWRria1CmuiAgAAAz4CAAAexgIAACXYAgABOGICAABBq0A==
Date: Mon, 6 Jun 2022 23:57:06 +0000
Message-ID: 
 <PH1P110MB16655B5C9FE3A2DF4EE550F3B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
 <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
 <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
 <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
 <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
 <2379689d-7bac-b90c-9cc8-1ff25fac9e67@gmail.com>
 <0acc01d879f7$429da3e0$c7d8eba0$@beniston.com>
In-Reply-To: <0acc01d879f7$429da3e0$c7d8eba0$@beniston.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b1312de-411d-4d76-5856-08da481842a0
x-ms-traffictypediagnostic: PH1P110MB1100:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB11007DC7E2F4EDBE07998332B7A29@PH1P110MB1100.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cUTxETNyJ/vTOUPS7QYXR8KBqodtmRglqy/4EU612qou0ae/NETBk7DOMNG+IPCVegvmUKcS7qUT9jg9S/BJHFwjYoSKmt7ifQwJcIvWvsw+RdYt1zO7d/D8CNEFpcs6Wj87Mdn+nt89HMf5nUYJm9mqC5nmlEPMlsYlezpoCvuJDy8CoqOWiqwUJ1qQwk63EEDOO+KDCSXHg3evWQDAcpaNVEwlueOuDeoqEIq0uQVRa5sPPEVj4fUoOjp1fHeGdgBa+GiN6v/9cUrmb/9ZykukY5vSkFFwjZK1NtgtA1G1rbg4JKgqruG0U8WbugZDTa5QUvcvTHt3Gg2rdq12ObDt7zHexe+ASRHbw474JWXJy6KdYa+3nP3R8dN01lWycFYyQmTaVUXOu8Bq4V0OXRzRHu3S9KAY2NygT3OoJP6M8yzdrJgllnTVGu4d7C0d5z0dBIrCRQcdkrJziL8Di3aOEVWCzW6JqVHmhBeQZnH9+PEtnMoVfMyKJxaxAm8mwD1B7yvOn49i9/m0dRh3X3PAzVgCajjZzoeayQuR/nQUPGjs5pAIFeYKnLxEOYbwuzImi5CG3zYlLehHvzZC9DlBMVLBiIjsFW3EGtc3/YLMCLQilIcDtBjx9vejevyH4bh68B8i/pWj8Z1rCfich+wKEvm1hMrsw6ND/n13fR0Y5b97R6QTOAR4vCWGbYIqyz35+dfL/uf6o8cSRKK1u9oV7Ba2EiRpo83lPu59dKax/SyoRMGNkqX4yG6kiNfJXoRIbeB/ce0Ykh2CPPJq44y7ZmeZ2QmzBJR0Jxq7vLluL5YWe2cc51eER6B7lkJb
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(346002)(39830400003)(136003)(396003)(76116006)(66556008)(2906002)(66946007)(55016003)(8676002)(83380400001)(38100700002)(33656002)(41300700001)(53546011)(64756008)(52536014)(66476007)(7696005)(6506007)(110136005)(186003)(508600001)(8936002)(41320700001)(5660300002)(86362001)(66446008)(9686003)(122000001)(38070700005)(71200400001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Wc7zpMaBWb8Q1Sqo7Y7W0DitV60lF5bGQCvMERI5HRkHEU0KMxBqu5pqI2bq?=
 =?us-ascii?Q?aqA8tXJ/VRkTe1PbZIp46jOa7rDUBPm7RolrzeK64oV0+XXa/Gdu3z7aVX2a?=
 =?us-ascii?Q?AB2BF+2bucHXotjiqHe71i4HeKCbmfeMexp5qka0ivYyZQRL1OWWlEwFnSlY?=
 =?us-ascii?Q?txMRkNaRKVa2xfbySV1EIQAfRRTKXXluS5CBG2soZpW7TCQhac2Tl+0xm4uL?=
 =?us-ascii?Q?jU1emkwyGdBVLwWPxSyCSrnmy+QzEiShSVtBrfulBj3KgLcbsj/VmS5MpypK?=
 =?us-ascii?Q?zfWasZlT8U8cAmSUOX/U1iCaBfTSSariHjyMkBHovj7uHCH5z+Vo80hyU0OP?=
 =?us-ascii?Q?1lWVNzAfoHsK3U/O3ToW0hspx8g9yBrjOHDL+M5KCf9s2GTaGxM0r6JQYWj0?=
 =?us-ascii?Q?02pKn0s5PlzA1Rkip4I31LT4KfPupJAOj/yf/awgrVRtcIPMKIuXeSH/WVGq?=
 =?us-ascii?Q?PDiujkXfDXHdrdXSNC9gPjKPsatPsl+Uji06su/bhlab55TX1OoIbdBRCKwm?=
 =?us-ascii?Q?1yWCAYLVhFz7x8qVWSlwFzt++Ccu79LJB+lWr69JrQYRxaj1GChPaSE6oCSd?=
 =?us-ascii?Q?+JWFduPB4m6P2rkJkGmJ/w0zu6Zyjpmgsu8cWdFaAjTRIuVu5u/zoBJEYYkX?=
 =?us-ascii?Q?i2gI+J8uqgwVa9SSXyLdOD65Kq2X8UTHs+xMBsSGHIb41dY2lwwT6ukV6Oau?=
 =?us-ascii?Q?/slMLxQRfN0JywH1KLw13DR9kxJ1P+wMHrQGbmAf88RIMrzQJ4Y0gZz9pTYh?=
 =?us-ascii?Q?BMt8AwIaj7u1L6axF5MdwgeK2ujvCDChOPmy48LgeA6VjCFSoQXpm54la0Ck?=
 =?us-ascii?Q?yzUPjYrIRof9hBe2pZ1t/TzhMdlCzZ1So6jqBnGIV5PIRJvtzsnZavLICeCn?=
 =?us-ascii?Q?EF4y1KZBRXiakiB30qxSH4rVoVslgZ6ymE2ltB3fAFi8hizMf1+lsQF3e5kw?=
 =?us-ascii?Q?MGfE6AK/7CFfxPWoyG8Tna1hk5efKRH1xZ7HnD48he7Uuurc4+JEOOSQqm4/?=
 =?us-ascii?Q?t38BZsbJHvBXoKVhyMVqVJRlz1QCUDuVT1H9fHum0xNgaUP6ov1NBzXCPYa3?=
 =?us-ascii?Q?sD6GvxIjG6BfK12F0l7Xd+EQabmuLzgTSQuMhdUWBtcYRwMfHdUGK5ywma3+?=
 =?us-ascii?Q?TVMHKnNYZKdlbPBlbcUzcISzsS9pjaQkqy+/M+lFpyYg2MHuz2CXdlIfREIY?=
 =?us-ascii?Q?/wTldLR9T1qdhc/oLCPn+QIH6SldCrXI7NJUAbHN40XYsblvDi0war2a+3cq?=
 =?us-ascii?Q?L4F0HJ+OBjqKWQEjhve1O/YHba9Am0oRCnfMHXUecwFNBBIn4IlsaNLZDwLX?=
 =?us-ascii?Q?rzDkwiEnYfWgB9ELKw/HzAM2YleVjCnWyDWyT+YosM2WxvwoV2Uj7qlMOOhx?=
 =?us-ascii?Q?lWgKqvTmeA5dRBjhcM/lK6gfNAonis0pVBz9sObCdeR3cUzEw0abhBJ9Oy8C?=
 =?us-ascii?Q?Xpt8QSIFBr1i5UuVtK25oQWz0rKXR24tBfAMaQ2pS9/7jtKAfvTbzxnELhmH?=
 =?us-ascii?Q?hGGTns+y170uaD+0Cv4GNS46aBYj/Y0KZUPJIC/lne0qxkpF4bC+L1cT269r?=
 =?us-ascii?Q?iMTBtRo4SWyfWjRP2UIBvbcbfPY65xChmWzCGn2f3MzKXex8WeeFLGpdyzGA?=
 =?us-ascii?Q?wf3x27U0gALHf+tWxStRM4XjTLYt5neW2g3sa+UQqO9D4V0w5uJqlhrF294L?=
 =?us-ascii?Q?NRbZYoWjgUtIjRrUi/h1JI8etVyaXRsDgKn0BRQbgL+9KeRNYlvx7txfz95+?=
 =?us-ascii?Q?NLoY547L8FuL4kdrPi1yVs2++VrKnr4=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b1312de-411d-4d76-5856-08da481842a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 23:57:06.0253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1100
Message-ID-Hash: G6K2ZMFXTLUPOWG6NTQVRKKWBW7TXE5S
X-Message-ID-Hash: G6K2ZMFXTLUPOWG6NTQVRKKWBW7TXE5S
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJK2TXZVNAI42WKQ23JSDDXPKJJABWGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi Jon, I did some poking around in the code, and I don't believe the E320 supports that feature. On B2xx radios, if you don't specify an explicit master clock rate it has logic to determine an ideal rate based on the sampling rate, and it exposes an auto_tick_rate property to toggle that behavior from the application. Conversely, on the E320 radio if you don't specify an explicit master clock rate it always uses a fixed value of 16 MHz, and the implementation has no logic that I see to perform the dynamic tick rate calculations.

Since the B2xx and E320 radios are both based on the AD9361 RFIC, theoretically I think the logic could be placed somewhere such that the E320 and B2xx radios could both provide the feature. However, the implementations are pretty diverged - the E320 is based on the newer MPM code architecture and the B2xx is not.

Short story is the E320 doesn't seem to support this, but I think it's just a matter of missing bits in the software.

Best,
-David


> -----Original Message-----
> From: Jon Beniston <jon@beniston.com>
> Sent: Monday, June 6, 2022 6:46 PM
> To: 'Marcus D. Leech' <patchvonbraun@gmail.com>; usrp-
> users@lists.ettus.com
> Subject: [USRP-users] Re: E320 Automatic master clock
> 
> Hi Marcus,
> 
> >> If I just try to re-make the device, I get an exception. Eg:
> >>
> > >                 m_dev = uhd::usrp::multi_usrp::make(device_args);
> > >                m_dev->set_master_clock_rate(61.44e6);
> > >              // How to restart a session here?
> >>                  m_dev = uhd::usrp::multi_usrp::make(device_args);
> >>
> >> ...
> 
> >However, there is a set_master_clock_rate() API call:
> >
> >https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a
> 99
> >254abfa5259b70a020e667eee619b9
> 
> Yes, that's what I'm calling above.
> 
> >What the consequences are for changing this within a session
> > is necessarily device dependent.   If I were going to do this, I'd tear down
> the streamers, set the
> >   master_clock to the new rate, and then re-create the streamers.
> 
> The problem is, that method doesn't appear to support an "automatic" rate,
> unless I'm missing something.
> 
> Thanks,
> Jon
> 
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an
> email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
