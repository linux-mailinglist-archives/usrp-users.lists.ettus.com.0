Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E87588336
	for <lists+usrp-users@lfdr.de>; Tue,  2 Aug 2022 22:48:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BDE4380C54
	for <lists+usrp-users@lfdr.de>; Tue,  2 Aug 2022 16:48:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659473287; bh=nVS3464s8QbdC0SzN0hfFXT8D7TjK2AGTdprQjgMAW8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ihsP8zZolXGeK7sKftCziX9X/8z/jc90O5lR2kINeSokfHuzU4XSgEPxs6ZgnMvKt
	 zTknifu/OiBl7VAHj9dyhvU5i6FFQKv5l7sVWNklGe/+aaWmT0QzecTnAU23uLwFxy
	 Z1wSRdVleyugDnsybdPQ2bRa0/gB4wt7qrbG55J9xmzT2Y8D0pAI+MCoX0WNx/gN8G
	 BKZaBS1FK1e1O6zkXLa05jp+k8i4H302v6ksmJciLqTzO4MaDgYlSmbir03wcnt2eS
	 wqjYx0XHsGrEYRzT3xZuy3gasJy+83tmrf0fEIz1ZYLk0w04OFClhPbi5jvT/SwPKg
	 ODyQPsZNMgIqQ==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0049.outbound.protection.office365.us [23.103.209.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 35139380B6D
	for <usrp-users@lists.ettus.com>; Tue,  2 Aug 2022 16:45:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="EWrhCQ3g";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=hqpyyml8N1GYqERbA8o1z3nKFTv36RnX1KFpoTMhkvvliomHxfOT5eDgo4+ZvqAct/0HbzqO9MP0TrxjxiY/N385Ydt49/EQZ8xLhNuOCFEhHwsGzVrHbgf14lxcxrVT+R9pHzSjAcmqGfKtp4wYcLJiutgRktEPtW4qdCm9J6vHVGsamB2772oH69zuuwCkz3DrD/F31V9oR6UzNt/t5vXzXks/hjTn0iwIh1VbNbwg/URqt/XaYHGkC/mxZQM88ZHacUbfZhnU2s3MosyAe8D98I3XgzBxqNC0TceL1nFdvS+gbUV7KeMRw9uo1vNfDtVR4IFaCnUTG80FrkJ75g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wC5vr8Fg9FyTdRNkjZCh76mlrm+L58XL30wz53Gae7E=;
 b=QNtwLyBIEX1Erv2DmHcw9xRJu4Xv/tm3QxcAr80axaEYl+ms2roeB2xi5AJ5mUSaCq8aNpYTUSt+8Thds7IH7xNeR00c4FNg2nB0JAhndCTPeKTLXz1pt2tu7ZRswb9sa1vKPR8+pV3zMNYkABlX2S76HykKRfPGuVCDFwffwkFQIdHS4t3Px1F5CXAB0gWoX46IRw3h5seFhqOZ7B+4xpeElnPEWgAKzI4cMnY6jfZp8KOnN+A3RI6dfvBxZ1uGpqrFAj98Iq/qgSizKAzGTNNxOJcGUGaqGFunxpwaiLW7L1+lzd6BzrlkRomh2PXpfg2mOnDsoP33MmJQ/vvAHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wC5vr8Fg9FyTdRNkjZCh76mlrm+L58XL30wz53Gae7E=;
 b=EWrhCQ3g+wqP1B4DaXrTRugmcsnvnMj7Yx8GQWELxCBJYJTS5I/dYzDXODyDFggNtmKZPZe3++EqhJv+0pOKncnKpxSLxsxij29avFPJzPnecnGiCoxTdoIfq62wTTB/dgwkJ2QB36ZRQCt1wK4OFkVuqrGwAYi/UZmawlVu4Fm6z0cEmh87OR5oqZCaqbt+AWxudjDgNTHvirIErQJHSZqAjhT+J3ZZHLnk5bfpBGDjDgIkHBmUZDd7f88JKxPxjbKCVFrui5walGEYIQGi4AfNX1VorfcULs8calxzd4eHXzT8mH+iKapSjRVWsAmsiCeYODOfgR4nNQ49ikWWYQ==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1368.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Tue, 2 Aug
 2022 20:45:45 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::98d8:5dc7:a02d:e2f]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::98d8:5dc7:a02d:e2f%5]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 20:45:45 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N310 Sample Rate
Thread-Index: AQHYpYVT5nmRytkkgEOpI2nMNnizbK2aE8QAgAH/+xA=
Date: Tue, 2 Aug 2022 20:45:45 +0000
Message-ID: 
 <BN2P110MB1747F4040EB79A727F6C42E9B79D9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
 <20220801090014.ekedafqill4f5lvp@barbe>
 <1d76991d-dc80-17a8-ed6a-b00533613b2a@gmail.com>
In-Reply-To: <1d76991d-dc80-17a8-ed6a-b00533613b2a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72576de4-25dc-4497-59ca-08da74c7f932
x-ms-traffictypediagnostic: BN2P110MB1368:EE_
x-ms-exchange-atpmessageproperties: SA|SL
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cRkKZu3h1oHwQFx+NsQv2E0FCXE0uympVrrIitSL2N2wnevBVteAt8kq/NfSDRO+uc32IEGbiYtvhOpk1now/JSna05zkuGo8rzl9kj0jswGYWE4kTLbNTXilIWKFvP/XDHAP7Dp2ZwsYE7LZ6jyqJe/9UzrOORzEoLXRM/N3ytkCnqHykOLy0yZ1cqjeNhIN5yHOu0jY57X+MTNQZejgXPVmR1GoUoePX2luNwf+qaUCOhHvg7v8wMgaEpwJP+a/u3tSgUTeaDbIznQ8A1Dy1gNHAgd49QkGNqKBUbzXe/4w/iKeVI3lRpTa3WEhYx4V8eVAOhH1GzKYloE72VPTOKyx+1X5Bq5BmIatyulFIDAXAjG9FZIP+1yy7G7euIDEe7+FGbyI7HL0+m2J3uimb/4as5P+hrGDJlcJRSDA9hUto4qfcU2w5aya7p3XcOGqdpAHH2egENCuLajLnYi4YzuQ6RAQDPX2Hpcooj5gJ6weStOeQSJyUZQnVsPbcRJup3/0qY+tZpmlbhWLteaWQoPvr2opDtVflK/Lg77uE/ko54VoDB/yvS9IMyDKnYMCRUQGFJZCLL7s2DfAA57aFQZzCNOca8ui/3BdkQuHFCC02mLKvMGhSEYCByHUDMw9CFmKEg0LQ6g0gL+oxVpLyP35m0w/L7yo1xdv8jn7c48ehFFxOtefxwoKb6VSfRA/W+amZMRqbDQzhqXGhAwHAoYBrKvOmxH42R20W6/WGlgDGp2jhNnJyysQ7PbBsnr
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39830400003)(396003)(136003)(52536014)(55016003)(38070700005)(41320700001)(33656002)(122000001)(38100700002)(5660300002)(86362001)(8676002)(66446008)(66476007)(66556008)(64756008)(8936002)(66946007)(4744005)(76116006)(83380400001)(110136005)(7696005)(186003)(508600001)(71200400001)(2906002)(41300700001)(9686003)(6506007)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 EC0XSUdopwpbf9ZpHkfw4CpR8oglyxPWt64x3JoHXqx8MlqT+zXInyCbT/DwYkE8Fn6IShG7lMvWxp5MdU8n+i5wVgp3eYllX5bto2KuKhCmn1HWQjaHZSaiRPx7qPYHDx27pAr5TA1+g8HXVHfJaXUmelpvmdO4lksL1Ss5y+amrH/nQp4BjAm6ukaRAQcf5ka2OMJC59yYqPUkAHSyA4dZC/XoOPyBcHQutpIlYSmsijdwDnDcHRr356KtzYZ2s5Tl1jwWM7FvGgkKrBinVagZ8c74oaSHVRa3yy5PYQnjKOs/rZV2xOLJ56Vusht+ymNSWBmj/ULi69sOQuNvTGGMEq3CKu781SZwPmpHr7Szn/xcixKvkkwnur7FIu9nWSO9Bacu0IzcZqW4iBuxDwyyCR8m3iuTMfOtt1ZizAjwnPWqePp1vS1fUoLoPJbrjW60+TtX7p72v7Zs1izXEfZcWOeXGT4fFLNf/oVhv3Y=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 72576de4-25dc-4497-59ca-08da74c7f932
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 20:45:45.4330
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1368
Message-ID-Hash: EQ7PR4RV7FCX7XVC26G3AZRPDNEP2QIB
X-Message-ID-Hash: EQ7PR4RV7FCX7XVC26G3AZRPDNEP2QIB
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3P7FE635VXOCJJZSTFCPLA5D7IFQWC7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > I don't know the limitation of the N310 embedded ARM to have an
> > opinion in embedded mode.
>
> Not a chance that it could support anything more than about 10Msps at the
> outside.

The E320 docs also mention 10Msps max to the embedded ARM processor, and I found that to be strange. What's the architectural cause of that limitation? I'm not familiar enough with the USRP data architecture, but I've worked on other Zynq-based SDRs that could move samples from the PL to the PS at far higher data rates using a DMA IP block and shared memory. The 10Msps upper-bound seems like it'd limit the applications that could be developed in embedded mode for the E-series..

-David
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
