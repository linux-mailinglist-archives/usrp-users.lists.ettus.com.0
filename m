Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD7764ED5E
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 16:03:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CA6E3844C0
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 10:03:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671203036; bh=dw2N6hHFNW29U5FSIC2I0rv1KB0Q9mQ2ynsopmjTOn8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ldkqILSTRihekrqUbwi2dQZzodkwu0HCz+LaxRwtgRtqYfWtLnFbcWhj1izQ1fd7M
	 YVmV9pN0pSBrTPPCELUvpteqMBPmGsDHvGG5KCiZhjtp6jsRJkpz7QKCIPm6MGUW8N
	 YirkTsxZEnzOmFgApiZWfq6q0WvnkAmJC3qZqgAlrGPdphlfqOdb6RsFPKHQOPhYGf
	 M22vfYzagFI3M/LuHO6RQVdUYFuJ2pkGB0fYmyvKWAcu7ejIMtaQCquc657+mh/4Fm
	 Dw9nw8y4nkXKAL/5q4KgEHyTtpoKekcWl2wdvhJPkaShsNU/l01ilC6ALadx7QXXQ4
	 EYd5tsnH/bc7w==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id D42B2384471
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 10:03:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="ss6e2sO1";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.27])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 57A2B4006F;
	Fri, 16 Dec 2022 15:03:45 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 35AFB600070;
	Fri, 16 Dec 2022 15:03:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMn34qgWKVh6++KI/R++jLxPOrv9jjleb2gHMt0WzxUL4Bq9Q3tWbfKj5+/BlIcg1VeLlksMiY8vycw5ntGTV95P+I2gaU2E+grb7bSi2IX+AnK/7428eASp9PBOnDQgkOzODDvPw5tERmGIN1/osO4nmRXy4TKuD3PUd5703bIEevjlvNqDqszF+jyl5nKxnEoMWDXaLLjug0o8J51pCJZ2eYjGoc+/GE/7DAJxVnoiGNxjetysEHmIha7gc0NaK7BMaSkMrebbjVTAPzjsdHmlue+4Tthb6t8fxjzJh3p9W0c5LPSI+O/2Zi+OoKeRogiMHspeYvS85NbSBVuHPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jHu2HTUSkQyJ6klBusyusNWFwVsoo7IiYG/ZZbSuqic=;
 b=H5+1Di+sRhTyfME8ss84TXCH/k0MHY17DJeWliWXL+voDqYaHSJBrqaALsCs9twPwNlPLtFj0hdi3PLvMArjV0YOmVHBwmEzzo09HSi+vrIwHBb6djlV/atzk4xXcSsL/4dtYIdGgNyGNxhaf0oA94KIry+o0I1E9l3Mo9zwRdUwvKmX6a8g98r2ijdSmSNGVaLsB6Ha45ug81+vE3tY9wep7+quQrpZwpaqmPUQzOouB+h0x4BnuCqDe1EWz1p6UF8g+BwJvcx22+FPMOUg/lZnvQjp+NjmrLUQ8YYQ3HP+/26ybfWYMFGQysvb9el7IvE/ATBYag6zwp1lx7QwFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jHu2HTUSkQyJ6klBusyusNWFwVsoo7IiYG/ZZbSuqic=;
 b=ss6e2sO1KM4ss5WA9bzutzSC6VS5ksYVUnCdNn21vOrpjdT33B0fLHwwTHB6qG65sk5bMteGsRSkwRZ9wcVGqv2gl677GFURNltZIuKzReWr0QbTSCSxAZ0bMotZ18ulfVMGw7JjzKlLWyZBopRcG3TlcpHYTZD8dCt2X59wQOA=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DS7PR12MB6047.namprd12.prod.outlook.com (2603:10b6:8:84::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Fri, 16 Dec
 2022 15:03:42 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3%4]) with mapi id 15.20.5924.012; Fri, 16 Dec 2022
 15:03:42 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Mike
	<mikerd1@verizon.net>
Thread-Topic: [USRP-users] Re: Did anyone else need to do this?
Thread-Index: AQHZEV+Vsis9GilhmUeFukdsop1kBQ==
Date: Fri, 16 Dec 2022 15:03:42 +0000
Message-ID: 
 <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net>
 <00c001d9115b$55bcc130$01364390$@verizon.net>
 <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|DS7PR12MB6047:EE_
x-ms-office365-filtering-correlation-id: a4138c45-fee8-46f1-f497-08dadf76b881
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XrYR9D9RiB+QjCzEr0sKVsZRRMNBuzktjfu/HaiIZZ3bU2jbdmFFq7SOGBf2vP2x/De09L0UUMReY24gJkAm7pdojfnIg9BbSQuinw5UojhEweH4SXaGuFsdLRcNVRJuOLPCHKlm9dWQiS3osAy6A4rWezZblkjCWZbrwkJjZRMJk80ZixITzlA+NKZSNuzjQF2zLrbJoY4R6bYPFXSM8aVcXZtDeRFEf25P+ED0Nj/KbRaXvKFhHcoxhA/K+an6tPX1PvwdMdaa5zctjIGRaJqiS9YnEVsKJ2wsd3UCc4k7XF1IItRZr++7DObJ8jWZYtuvHGdq4FUbiO+iIPhOZPSeHgKuGOTiy2bq/wD4EHXQTJc1OguviWCUa1bEUyiqyzlcQq4/TuBxD6bZNcm9qjbBb8mRv1opHQzv7Xw/HT7wUoEu5eRCzqd/tUOktWIbrhuwlinLB+H/cxTNRQwQFu/E8rOVjrm64WpkchJgCfxaBIPwTtX50U/iMlGLDYKbSIqHE5JbU2B7fiscuPm49lAqx6jairL7rGtSMEpNsz8bT+E6AcekXLLDFxCiMi8grQd53oJ8yVxaWBEc5fXBidEg2X6ZIG/ZykWKCQSTU8PrR4uwNKS75KO0kgUc0zfV6sXkJWtqtZqn12n/J+9fOSd5lQyaSglLb/SlLLHFO7YZ0io6NSwBKH0U15ewN6acKVDzAXEBDqbx9HZAtEhHowXw97d0ExHuRt/1ncWSDFaLx1KXahyZpRLL9ZCdXsdU
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(136003)(376002)(396003)(366004)(39830400003)(1690799008)(451199015)(2940100002)(966005)(33656002)(53546011)(19627235002)(83380400001)(186003)(9686003)(26005)(6506007)(7696005)(71200400001)(478600001)(86362001)(41300700001)(2906002)(122000001)(38070700005)(110136005)(64756008)(55016003)(8676002)(66556008)(66446008)(316002)(66476007)(66946007)(76116006)(52536014)(8936002)(5660300002)(38100700002)(19627405001)(166002)(21314003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?xcfJN3aPYzufeNq3YbQMh0t+Tp5Is9fkiyiLCgBa6J/eDUPhS7jo+Kqv?=
 =?Windows-1252?Q?18oMAJ9Pnei4/XaPezCDjrSB1wWwvq5qZgLXfDsY7lhYJbyRdYQHJEkq?=
 =?Windows-1252?Q?jGEyJ947kCNz2sbr5C762sCkmnIHFJ3z71/zXiGTXlsOy7FOSV+D+JJ6?=
 =?Windows-1252?Q?yhAEz+92ChPROdmA85q+LPSzZRoX8QT9PFx/uKkn8tyPVOciSjHe8mvp?=
 =?Windows-1252?Q?l7iSYwMyYCtykbNPqW/aHOtP3Gqmn+DbaApMiJ/oMZ3NIkMmX1L48DUa?=
 =?Windows-1252?Q?rqJyCrhynjZ9p/91P8JbpxC333sxukqLl8Y6O1Ec/4fkF+QQqBV8aO5z?=
 =?Windows-1252?Q?wF78esmC+NW8KS2QTWCiH72xyJSFN7ohIx05rQqt68r6BtJ0zjpngPOQ?=
 =?Windows-1252?Q?kkA/nyd9/rxq2eDsx/ct1ONwS2w8nLmJqcRue3M0ff4EiV1uex088k4Y?=
 =?Windows-1252?Q?8QYxLh0tzUPdTAkN57kC/Lm5Bvpt/SjcBxxhM0xE+6QRXdQO6V0aDqlH?=
 =?Windows-1252?Q?uolq0MjuVe/or5OL1nCcbHa2oW8KIQSino1fJHpbLLzxyvPi1naATCB1?=
 =?Windows-1252?Q?1403gLtv1SZYr6axHeLFVKBZro/B7ffcB9LTCpOEWZ8WH32lbf94FU1N?=
 =?Windows-1252?Q?Icy1prQIzqkm4RqEE5WDNyR5wKJCzlBCwMAPV0gDyQo95XR8NtUsrsJE?=
 =?Windows-1252?Q?7IAvJJGOxnpSeAK6k+cW74wksd6B8fFOYH4aZk7OIcPcIrDOBJwZQl3e?=
 =?Windows-1252?Q?gP3KChjgnTAO9k1fK7mtNnRmF7RxVEaDaSl8RyC9b/v1Ka41XGrjC1XS?=
 =?Windows-1252?Q?uZObupCROP/PrKMApc2AjNFqGSTBpIV95U98LPQ8USXkhoHfqoMuH0nP?=
 =?Windows-1252?Q?zdSDHDmU1Iiu6R9EENvZPhWPpYrNlZXqzv08BjLMQcqGAbuoj429FDU+?=
 =?Windows-1252?Q?hrxUaCRDnNrkXFO3DSdkduDo/dJpO4bWG+3L3kIHYt3HahUESDzbu35i?=
 =?Windows-1252?Q?YhEdd9KFK5qHBDmkfpwGpnSHsn7e/IrLIUvwBKarQLcsPIRh9BnHAqga?=
 =?Windows-1252?Q?xNCQTBbKPMQn0HT+awmbpN8TJPMRVsa/djT7HBRh2u2LuSnUf9udJO7s?=
 =?Windows-1252?Q?KLmjHDIfOgoA6O5kvOAMjtjLXiEEAgrMKDbLSn4czNCJB9u5WlmHDM9b?=
 =?Windows-1252?Q?MtWFAZD/lvEpZklpWrVVav9pRQjPGOMCPbJlvhTlRaLDf/pQzAxp7BVC?=
 =?Windows-1252?Q?ZZsKoHPvwKpuTImH5qy839TW+fvvZoEoM46qO6sBM/DF3OdwTFb04vIN?=
 =?Windows-1252?Q?wDO/8ztMuuIuKqzY3qs6wRz0gT81Wn57Kv7/JsFwL6mI+ALrwgvKU3j+?=
 =?Windows-1252?Q?HfJQL3PA91M+LnchdMVUmOCF3xuMDr5Ug01yg2h8P/i/8TMfIJ1q4B3v?=
 =?Windows-1252?Q?uu2gPxy4UxtJVsczw3N4wCNYmPCZBd9UInDAi32qC/rZZjZryuztjnTv?=
 =?Windows-1252?Q?aKcQMN01m32RZotD7eYjJp+Kq8DFupeBJvANda4w+xHZW5g3mAnVfdIM?=
 =?Windows-1252?Q?qfJ6pi5ODCWmH+hV9UY5TvT+Y7yvpuAaZxLYMaTyax4N5QDS22sMF2ly?=
 =?Windows-1252?Q?oxN7nnurp6goaHrpjo2nUP2ae8zm/7OFOOSjwJa36CPEhKgqqkDVrpvQ?=
 =?Windows-1252?Q?OEdwV9OMh6XCjrcl/LZhM94noiMp/TWQSrnvEfEffiNnK3F7i+InlA?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4138c45-fee8-46f1-f497-08dadf76b881
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2022 15:03:42.0693
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4gDoaE3Wz0RtZTw2DQwWesKAO45NJRzcVw59FxnZibSUlgzBPa1/bds53ef3dN/CzyCQoD4XLZHEvLJ5oRyhPUAGZJzy8EcxXRvuvHCLI/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6047
X-MDID: 1671203025-n5M6hUu-qpYz
X-MDID-O: us1-at1-1671203025-n5M6hUu-qpYz
Message-ID-Hash: PJWKRWMGUVHWVP3HF5HXAJZIZXX7GYUU
X-Message-ID-Hash: PJWKRWMGUVHWVP3HF5HXAJZIZXX7GYUU
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P2HIKYFSSJDOLLQVAYRUZRAE3OJWUVXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0832317952094507670=="

--===============0832317952094507670==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312A4D66FE8688652AC9774B8E69MN2PR12MB3312namp_"

--_000_MN2PR12MB3312A4D66FE8688652AC9774B8E69MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Mike,
My last comment was related to gr-ettus (ettus_rfnoc_graph.block.yml), whic=
h I installed with gnuradio 3.8 / uhd 4.1. But I do see that gnuradio 3.10 =
has the exact same issue (as you found) in uhd_rfnoc_graph.block.yml:
https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_g=
raph.block.yml
[https://repository-images.githubusercontent.com/3030065/919b3680-50c1-11ea=
-8e39-e96d4449c2cd]<https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr=
-uhd/grc/uhd_rfnoc_graph.block.yml>
gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 =B7 gnuradio/gnuradio<http=
s://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_graph=
.block.yml>
GNU Radio =96 the Free and Open Software Radio Ecosystem - gnuradio/uhd_rfn=
oc_graph.block.yml at maint-3.10 =B7 gnuradio/gnuradio
github.com
So, it looks like we've run into the same issue in different implementation=
s. I can post and issue on the gnuradio github page as well.
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Friday, December 16, 2022 9:38 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Mike <mikerd1@=
verizon.net>
Subject: [USRP-users] Re: Did anyone else need to do this?

Hi Mike,

Yes, I've run into that. I posted an issue last week here:
https://github.com/EttusResearch/gr-ettus/issues/69<https://urldefense.proo=
fpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_gr-2Dettus_issues_=
69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfp=
aAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56=
v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&e=3D>

[https://opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f97c132680=
3f405d696532fef76e41550f5/EttusResearch/gr-ettus/issues/69]<https://urldefe=
nse.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_gr-2Dettus=
_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DX=
UEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d8AptGNR6pvwu09qYQOqR4yaq=
R90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&e=3D>
syntax error in ettus_rfnoc_graph.block.yml =B7 Issue #69 =B7 EttusResearch=
/gr-ettus<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrw=
qOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8=
d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRl=
IAu8Sx0l3QxaM&e=3D>
Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch (and =
possibly others) looks like: self.rfnoc_graph =3D ${id} =3D ettus.rfnoc_gra=
ph(uhd.device_addr(&quot;${graph_args}&quot;))) You...
github.com
I ended up just modifying the yml file in source and then reinstalling gr-e=
ttus.

Jim

________________________________
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, December 16, 2022 9:33 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Did anyone else need to do this?


Hi all,



This goes in the category of =93Did anyone else need to do this?=94.



I=92m running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UHD 4.0.  I =
recently upgraded UHD to 4.2.  I ran into a gnuradio issue starting a =93RF=
NoC=94 flow graph with a syntax error for an unmatched =91)=92:

  Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D ettus.rfnoc_graph(uhd.device_a=
ddr(=93addr=3Dxxx,type-n3xx=94)))



I was able to manually edit the generated python code to remove one of the =
parentheses and see the code work.

I then upgraded gnuradio to 3.10 which had the same issue.



I then compared the =93uhd_rfnoc_graph.block.yml=94 block files between UHD=
4.0 and 4.2.  It=92s significantly different as 4.0 uses python .join to bu=
ild the argument list and UHD 4.2 uses the python module =93ast=94 to gener=
ate the argument list.  But the final line on the 4.2 version had the synta=
x error of the extra =91)=92:

              self.rfnoc_graph =3D ${id} =3D uhd.rfnoc_graph(uhd.device_add=
r(=93${graph_args}=94)))



I removed one =91)=92 then reinstalled gnuradio (make install) from the bui=
ld directory and everything seemed to work after that.



So, it seems like it is a simple syntax error.  But normally something like=
 this (in my experience) indicates that I might have missed some configurat=
ion step somewhere and have yet to see the other errors.



So, has anyone seen something like this?



Thanks,

Mike

--_000_MN2PR12MB3312A4D66FE8688652AC9774B8E69MN2PR12MB3312namp_
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
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Mike,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted0">My last comment was relate=
d to gr-ettus (ettus_rfnoc_graph.block.yml),
 which I installed with gnuradio 3.8 / uhd 4.1. But I do see that gnuradio =
3.10 has the exact same issue (as you found) in uhd_rfnoc_graph.block.yml:<=
br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted0"><a href=3D"https://github.=
com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml"=
 id=3D"LPlnkOWALinkPreview">https://github.com/gnuradio/gnuradio/blob/maint=
-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml</a><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted0 elementToProof">
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL2dudXJhZGlvL2dudXJhZGlvL2Jsb=
2IvbWFpbnQtMy4xMC9nci11aGQvZ3JjL3VoZF9yZm5vY19ncmFwaC5ibG9jay55bWw." class=
=3D"LPBorder926969" style=3D"width: 100%; margin-top: 16px; margin-bottom: =
16px; position: relative; max-width: 800px; min-width: 424px;">
<table id=3D"LPContainer926969" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td>
<div id=3D"LPImageContainer926969" style=3D"position: relative; margin-righ=
t: 12px; height: 120px; overflow: hidden; width: 240px;">
<a target=3D"_blank" id=3D"LPImageAnchor926969" href=3D"https://github.com/=
gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml"><im=
g id=3D"LPThumbnailImageId926969" alt=3D"" style=3D"display: block;" width=
=3D"240" height=3D"120" src=3D"https://repository-images.githubusercontent.=
com/3030065/919b3680-50c1-11ea-8e39-e96d4449c2cd"></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle926969" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor926969" href=3D"https://github.com/gn=
uradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml" style=
=3D"text-decoration: none; color: var(--themePrimary);">gnuradio/uhd_rfnoc_=
graph.block.yml at maint-3.10 =B7 gnuradio/gnuradio</a></div>
<div id=3D"LPDescription926969" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
GNU Radio =96 the Free and Open Software Radio Ecosystem - gnuradio/uhd_rfn=
oc_graph.block.yml at maint-3.10 =B7 gnuradio/gnuradio</div>
<div id=3D"LPMetadata926969" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
github.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
So, it looks like we've run into the same issue in different implementation=
s. I can post and issue on the gnuradio github page as well.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted0 elementToProof">Jim</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted0 elementToProof"><br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 9:38 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
ike &lt;mikerd1@verizon.net&gt;<br>
<b>Subject:</b> [USRP-users] Re: Did anyone else need to do this?</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof" style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,=
0,0); background-color:rgb(255,255,255)">Hi Mike,</span></div>
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof" style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,=
0,0); background-color:rgb(255,255,255)"><br>
</span></div>
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof x_ContentPa=
sted0" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:1=
2pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">Yes, I've run int=
o that. I posted an issue last week here:<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvim=
EN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDn=
wpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYFrqtOx=
luB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D" id=3D"LPlnkOWALinkPreview">htt=
ps://github.com/EttusResearch/gr-ettus/issues/69</a><br>
<br>
<div class=3D"x__Entity x__EType_OWALinkPreview x__EId_OWALinkPreview x__ER=
eadonly_1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0d=
XMvaXNzdWVzLzY5" class=3D"x_LPBorder455494" style=3D"width:100%; margin-top=
:16px; margin-bottom:16px; max-width:800px; min-width:424px">
<table id=3D"LPContainer455494" role=3D"presentation" style=3D"padding:12px=
 36px 12px 12px; width:100%; border-width:1px; border-style:solid; border-c=
olor:rgb(200,200,200); border-radius:2px">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td>
<div id=3D"LPImageContainer455494" style=3D"margin-right:12px; height:120px=
; overflow:hidden; width:240px">
<a target=3D"_blank" id=3D"LPImageAnchor455494" href=3D"https://urldefense.=
proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_gr-2Dettus_iss=
ues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&a=
mp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu=
09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3=
QxaM&amp;e=3D"><img id=3D"LPThumbnailImageId455494" alt=3D"" width=3D"240" =
height=3D"120" style=3D"display:block" src=3D"https://opengraph.githubasset=
s.com/5b58487cd101d233e77dea3debf24f97c1326803f405d696532fef76e41550f5/Ettu=
sResearch/gr-ettus/issues/69"></a></div>
</td>
<td style=3D"width:100%">
<div id=3D"LPTitle455494" style=3D"font-size:21px; font-weight:300; margin-=
right:8px; font-family:&quot;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&q=
uot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif; margin-bottom:12px">
<a target=3D"_blank" id=3D"LPUrlAnchor455494" href=3D"https://urldefense.pr=
oofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_gr-2Dettus_issue=
s_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp=
;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09=
qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3Qx=
aM&amp;e=3D" style=3D"text-decoration:none">syntax
 error in ettus_rfnoc_graph.block.yml =B7 Issue #69 =B7 EttusResearch/gr-et=
tus</a></div>
<div id=3D"LPDescription455494" style=3D"font-size:14px; max-height:100px; =
color:rgb(102,102,102); font-family:&quot;wf_segoe-ui_normal&quot;,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; margin-bottom:12=
px; margin-right:8px; overflow:hidden">
Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch (and =
possibly others) looks like: self.rfnoc_graph =3D ${id} =3D ettus.rfnoc_gra=
ph(uhd.device_addr(&amp;quot;${graph_args}&amp;quot;))) You...</div>
<div id=3D"LPMetadata455494" style=3D"font-size:14px; font-weight:400; colo=
r:rgb(166,166,166); font-family:&quot;wf_segoe-ui_normal&quot;,&quot;Segoe =
UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif">
github.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
I ended up just modifying the yml file in source and then reinstalling gr-e=
ttus.<br>
</span></div>
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof x_ContentPa=
sted0" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:1=
2pt; color:rgb(0,0,0); background-color:rgb(255,255,255)"><br>
</span></div>
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof x_ContentPa=
sted0" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:1=
2pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">Jim<br>
</span></div>
<div class=3D"x_elementToProof"><span class=3D"x_elementToProof x_ContentPa=
sted0" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:1=
2pt; color:rgb(0,0,0); background-color:rgb(255,255,255)"><br>
</span></div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Mike via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 9:33 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Did anyone else need to do this?</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_x_MsoChpDefault
	{font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"x_x_WordSection1">
<p class=3D"x_x_MsoNormal">Hi all,</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">This goes in the category of =93Did anyone else =
need to do this?=94.</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">I=92m running Ubuntu 20.04.5 LTS with GNURadio 3=
.8 (Maint) and UHD 4.0.&nbsp; I recently upgraded UHD to 4.2.&nbsp; I ran i=
nto a gnuradio issue starting a =93RFNoC=94 flow graph with a syntax error =
for an unmatched =91)=92:</p>
<p class=3D"x_x_MsoNormal">&nbsp; Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =
=3D ettus.rfnoc_graph(uhd.device_addr(=93addr=3Dxxx,type-n3xx=94)))</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">I was able to manually edit the generated python=
 code to remove one of the parentheses and see the code work.</p>
<p class=3D"x_x_MsoNormal">I then upgraded gnuradio to 3.10 which had the s=
ame issue.</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">I then compared the =93uhd_rfnoc_graph.block.yml=
=94 block files between UHD4.0 and 4.2.&nbsp; It=92s significantly differen=
t as 4.0 uses python .join to build the argument list and UHD 4.2 uses the =
python module =93ast=94 to generate the argument
 list.&nbsp; But the final line on the 4.2 version had the syntax error of =
the extra =91)=92:</p>
<p class=3D"x_x_MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph =3D ${id} =3D uhd.rfnoc_gra=
ph(uhd.device_addr(=93${graph_args}=94)))</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">I removed one =91)=92 then reinstalled gnuradio =
(make install) from the build directory and everything seemed to work after=
 that.</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">So, it seems like it is a simple syntax error.&n=
bsp; But normally something like this (in my experience) indicates that I m=
ight have missed some configuration step somewhere and have yet to see the =
other errors.</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">So, has anyone seen something like this?</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">Thanks,</p>
<p class=3D"x_x_MsoNormal">Mike</p>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312A4D66FE8688652AC9774B8E69MN2PR12MB3312namp_--

--===============0832317952094507670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0832317952094507670==--
