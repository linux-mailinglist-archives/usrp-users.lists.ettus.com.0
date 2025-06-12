Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B57AEAD78B5
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 19:12:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EE043860F5
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 13:12:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749748366; bh=4BNOrMAwRbMddvlI+fGdkqGaYhzdHWGRTqGwTLXLvx8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=g3ZH7lnDielDzG8KF1u2QPLchRntvabBIL+vE44+kACvL/TUEKDchQsUEjF52ZuvM
	 ygOCfRqqHba3EGOypHnSLBvwCIEWAz4MXkoxIdFHWPzWHBqdgnmHf0bZMj5pLuJjEh
	 OMSZpSLHh9vE9S/j3/4/Q2tmXYs1tLareWwuBs3WFPP2tgbL8yZ2pSUqWfsay9JFIT
	 8oJXDwRNyDd9M8OhFfBBWaNIiWn7b40AoMJIYqaLLkqe7U6Z9hhvlIwsbma+hFunLB
	 imdbyeY9wuy2mJ95QNLjWpGDawtNNQbZvfrW6l4oq49t0x1t1Letu99wAhBYnz9Y7j
	 mVTyoO+WP5Alg==
Received: from outp.meo.pt (outp.meo.pt [83.240.183.2])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C001385CA2
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 13:12:20 -0400 (EDT)
Received: from pcamsmtac01.meo.pt (localhost [127.0.0.1])
	by pcamsmtac01.meo.pt (Postfix) with ESMTP id 4bJ8GV1zv8z12P9R
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 18:12:18 +0100 (WEST)
X-MPSId: 4bJ8GV1WJSz12P7b5SCY:1749748338
X-MPS-IPData: [ cc=PT net=62.28.0.0/16 asn=15525 asname=MEO-EMPRESAS MEO - SERVICOS DE COMUNICACOES E MULTIMEDIA S.A., PT ]
Received: from smtp365out.altice.pt (smtp365out.altice.pt [62.28.90.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pcamsmtac01.meo.pt (AnubisMTA) with ESMTPS id 4bJ8GV1WJSz12P7b
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 18:12:18 +0100 (WEST)
Received: from PTPPICEXCH04.PTPortugal.corpPT.com (10.162.104.101) by
 PTPPICEXCH06.PTPortugal.corpPT.com (10.162.104.103) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Thu, 12 Jun 2025 18:12:17 +0100
Received: from PA4PR04CU001.outbound.protection.outlook.com (40.93.76.77) by
 smtp365.altice.pt (10.162.104.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4
 via Frontend Transport; Thu, 12 Jun 2025 18:12:17 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GzlvN8apXXNZOQsif6FnmvrbnSLoeenRA1/WN4wsXfooVhJUJ/0XhmJyL9wOHfDUdXIoZDYhOfUBOHLHqXVdStY9yAT3ppWnpKHataEk6Kv/9u3wu7GgqfE3jCNTldimASc0mk6H6LMOsklwdLeQZE1lwSb2pCCsrvc9ipWORz3695yX8QAJj7yigB87UsiqjdiAtQknGIOmUagdBVRssADPpPNNUONIgTHRU9//t+C00+sv26/YAccLaVJWkX31tjzcllLoFcYDXLwfmqw4B/weDi8r17ECnzxVqIzWAcWt9B+tAIy0arzNf6TPV2GNBi451PWCN/tJ2Rj5LQoExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmeF31xklH5ts4rM06Hcc9cjYw6DdU+r4vW0Izr/9I0=;
 b=HebaziB2/UEWqPyo9tIyH+A7C551Z38WTwUXH5snZBg0j7FavQCxSjpgxLO9g0I+PRlIVkZVQIlJ1ZEQoNLTh70ZnnpiylrtaZDatFWV1yfEc2ZUXI6B7jnjSQ6jud4LyaAqKF2gN/Jx00ZozZaWb1RsUqGeEQ9B7K9l+Pfm9X5KRd25fMduYx7Z7nh1SIlm5eFr4q+G99oJHbE1DSBkMaOBTLZX1CdN+ZQU1fUDSEu3sqc8x948AFk39qovOJBFQPop2sdtu4DRHZ2/s0d89AUc/Ow9+URpEL3VOUBBhHBxy9MM+zDUVSx7dhNxiWQtLWxN3Bc9KgsZAXayfUiMaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alticelabs.com; dmarc=pass action=none
 header.from=alticelabs.com; dkim=pass header.d=alticelabs.com; arc=none
Received: from HE1PR06MB3993.eurprd06.prod.outlook.com (2603:10a6:7:9d::18) by
 PR3PR06MB7052.eurprd06.prod.outlook.com (2603:10a6:102:8f::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.19; Thu, 12 Jun 2025 17:12:14 +0000
Received: from HE1PR06MB3993.eurprd06.prod.outlook.com
 ([fe80::415e:75da:dda9:1029]) by HE1PR06MB3993.eurprd06.prod.outlook.com
 ([fe80::415e:75da:dda9:1029%6]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 17:12:14 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and
 set_rx_bandwidth() method no longer works
Thread-Index: AdvR1qwmkmu3YEPFQ46KeG9Raz1UpQDb64dCAAVTzwABmFxrvA==
Date: Thu, 12 Jun 2025 17:12:14 +0000
Message-ID: <HE1PR06MB39935704ED9E9893F2B37BA8DB74A@HE1PR06MB3993.eurprd06.prod.outlook.com>
References: <BNAP110MB18852576F534C5C65C5BCDE09460A@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
 <HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06.prod.outlook.com>
 <7b17701a-9fc2-4dd9-9ef6-fdd7ed1e86a2@gmail.com>
In-Reply-To: <7b17701a-9fc2-4dd9-9ef6-fdd7ed1e86a2@gmail.com>
Accept-Language: pt-PT, en-US
Content-Language: pt-PT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
X-authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alticelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HE1PR06MB3993:EE_|PR3PR06MB7052:EE_
x-ms-office365-filtering-correlation-id: 2b34c0c1-a724-4868-56b2-08dda9d446dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|4022899009|38070700018|13003099007|8096899003;
x-microsoft-antispam-message-info: =?Windows-1252?Q?IyGhZ2aKXq821UzWEgz0ZOphkqPemSL8pvoEvdadWU2pp+F6G4KGMLX5?=
 =?Windows-1252?Q?gjtkH+fBiDZUPw0hl6zGncYn0vtNcUaTkUj0t2q5HUkvphSVMc7VOBcC?=
 =?Windows-1252?Q?KQA8UB+zAdrEQh/LB1P5jZKT8XZj67TV2Nl0mBS/6iMZcbCABf/JTA0E?=
 =?Windows-1252?Q?1a/WMQRdDmWNDC1Sj1piAFqfyR4xjrk6iYLRZDshsiCYL74lQ3+txYUg?=
 =?Windows-1252?Q?NrtXHbTyHuPHqDharZSMon4AXbk2b6Hb/EhyR7Em3bPru7tHX2clnXu4?=
 =?Windows-1252?Q?MLqyfhR2Ae3Hyb3sqlIzBqFswdyFsB+d4RaqQomHAtL6YSOCuWeg1Own?=
 =?Windows-1252?Q?YpNfTbIHKJkO+6BUyjlhugLZkXS4WWwIZGLGqLFtWBO1eNKOgCmQpz0G?=
 =?Windows-1252?Q?LvrLg0SgFZ7Y+6sTC0fQQokD2gtD8mdxB3oNP3R/3qK75cj0iZuWw8CT?=
 =?Windows-1252?Q?0LoM7aRBHeTB2Z/i/GlvBwu+VegaxuMlGh490My03HXix96M/8i6Peys?=
 =?Windows-1252?Q?9HHmvNeloEdzEeTJ2phpvMYyoRmNFU05SCzBYfHkvncvWiqJliw7GBDi?=
 =?Windows-1252?Q?MhbBFG518IGlKlM81aZfsiWzaA79EVEiWf+kpr4MhYk8Lj+fKEPxwWCC?=
 =?Windows-1252?Q?Lf/bQGGLwnQP/Losh5Om418pyRO9HfkINjBOiXI15kV2eovY7N+KqzDV?=
 =?Windows-1252?Q?+wLxyUgQeEVs8MkmmFHW3zaU76PDOEduoxcUy3iZyb4V3KbyRZLY/0TJ?=
 =?Windows-1252?Q?QT9vw37MV9eVbNrV2dTIJkv8GYGI9gxvK1ccLT+bMlNdy94IgKBqkWmx?=
 =?Windows-1252?Q?CqZ4UabFEY40ve0mqPKqcj5G79Ti9wsV/BR0OGkb4miWbUt73YUDplVH?=
 =?Windows-1252?Q?Ysa9MPJC/A6fugG0w+tOKpGOdQ0vHC02Ba1KI1EnXXPA2EOErTccycbx?=
 =?Windows-1252?Q?w6Y+whhXKGUcTxYBl/P/oUH0UwU/YLbWmVjX2xOTqpkEmfWhoiXqVcu9?=
 =?Windows-1252?Q?y0o3Udr/R1jKwt/UE7LT60xAFAv0CyRjkYbUAnlYEP7+E0Od8JwhCWZX?=
 =?Windows-1252?Q?rv3k4bYG0aE/h81G2VpIy2EDd4KA6syaFHngOZ89zTaFpjUmdhDsrEen?=
 =?Windows-1252?Q?WGHBaKEmyWgR8SVhVygKe+SP5aBUleyKozc71xNIGgVpvfMRtkycNnY9?=
 =?Windows-1252?Q?agYaChkuDuyXjWgd7UG4epFpXzwep7ySPru7CG4HcKE8ty3tnX0M8CBT?=
 =?Windows-1252?Q?o+AAb+FuPIZBaVoy3nU3rN06N9H6w/pmSzv3jA/BmiDEqdUTCbKVz6h1?=
 =?Windows-1252?Q?q3U4nRRZh/YTTst+OKvY4V8Dy0SCXrPBiKIdiuNqefEFBci4F1sZ3tsh?=
 =?Windows-1252?Q?vlJdan9ww6NeGsqiHibmMGfgyAvakppMLOZ/HPO1SSe7OolpT259Ysa+?=
 =?Windows-1252?Q?dnHTcNouKcu6KKo5mg2yi1dGi3bufHgA9TVcw7xMIhNqX+yr7NTgTmR7?=
 =?Windows-1252?Q?lO8kvqDtca3xEPus1X0zkptmcmZklGcgluCpIrGyq6cXparzEUA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR06MB3993.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(4022899009)(38070700018)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?lNejdM4gAdkJHRUTLIBcIkUdWouOILGek6KCOgMHKgE6tIG8iPcRu5bU?=
 =?Windows-1252?Q?2u9FWviJn2CiTIScflb7MvsOLNX8n2t3hKSzOWsaR1fmVK/Ejcbwwm1K?=
 =?Windows-1252?Q?YRAokHwRYjwRKEpOl0bCObDj4av6AMSzb7y8U+pCklLg6HgZ1EX22Vv4?=
 =?Windows-1252?Q?Cx99Lox53Dm60gcvOx3Oyx0ogT9NrfHslFERZS/nvGOh/tJBM8dFzmEe?=
 =?Windows-1252?Q?/VG4iOmHR+r1HHXCiXuuGcp0oJArHy1wuPGOLTTrwuqm/p5fvR1YeOuK?=
 =?Windows-1252?Q?WaIcW8sB9xC80K8X1IxvgXGd/5NsxRrJPgaHc+B/YbJcKvHYgabLVlHE?=
 =?Windows-1252?Q?2UfnzzHtVETxKu3zTmjZl6P0G0KyG4kJg0nhCzBvyQT2CxoDnD3QCTVH?=
 =?Windows-1252?Q?0Goc55bGmzJmH6B7b7JbNHZ0g4NnyVbpVgjFCVmnwkkzcHA9BB1xSg3r?=
 =?Windows-1252?Q?c9dpUPrCaq682M4k+oqmCRQ6sG4pncCW3RmeGRD0gbRKnKMQ9qwrqh4p?=
 =?Windows-1252?Q?kScDK7ywsDjnili5ABjeVUNKgH/3LrGQ59Kx6gqHs/JsVk4K+EHTbAAl?=
 =?Windows-1252?Q?z+4C1vprth9EEP49ACDVEEcNsblirLa5P/wVRVSnuag2rgZ4Zzr0SM3j?=
 =?Windows-1252?Q?QobhavjmdTYrbiHm7adiAn2sThlS0HBnTSauLJxlgZR6QQD65Oj1DU/e?=
 =?Windows-1252?Q?eVrJFi8swfB37dF+oYjRzl/5wk0M8jajur5SsVxyX3KxGGbDVdaQteL0?=
 =?Windows-1252?Q?mUsaN/lXr0jlRo2Q1IzhMNE/13mw/3rJkJb1PoNs1QR2HE4Jf49oGL17?=
 =?Windows-1252?Q?9U8Mg/JrmKHvj3+RjnAgp7nC5I+8bL1shWZXkXnjPa/jWg3WEaOldHb5?=
 =?Windows-1252?Q?M/W59LMhWJsqyOS6O64QOG8Kh5QyFgxh2mRxkM8LZozvGDsqFLK7Lgt7?=
 =?Windows-1252?Q?Yxa7fN2V4ZnWMNlxkUfuZapKqYHgFIcZWLGPZ9itFMBb3PMK1lBf/nGT?=
 =?Windows-1252?Q?fD9etletuk5JK52TQytKE5dt72dP9DvCGopETpC6t5XuGHHMzHjsa6MU?=
 =?Windows-1252?Q?0aMkCaOeirrym4LpeH8VByAKW2pgmBg/fvBOGI97Gb1bi4QJF85Ks0+t?=
 =?Windows-1252?Q?oVynRU5GENa16bMKMB63P9rggOW8PsnbkyIqDp1g1269j4eYG6QUSHbJ?=
 =?Windows-1252?Q?OUz3v3XHgmLoEk+gIveYWUvc3DqAeVKjo/Z2hVnAk5gn++Qb8Y9RyK5Q?=
 =?Windows-1252?Q?w/jDubTcx2Im0hhaPkSfy4nQBciNGwZ2wFDd5ewE3GxB7jJE/AG3MBfw?=
 =?Windows-1252?Q?3pr+g6poyzpz0r5vDEqzVUf1Z6OWJMKPkkZGKd2YDreXtlc3s+4Xh1aI?=
 =?Windows-1252?Q?yFXM1/SnzDRqDuFbFU93A89a7Q8irHxXUvZiLUTGW6fL3gjYl2t3zazd?=
 =?Windows-1252?Q?xlXBbXAwSQ9M1sHbWXuOGI+frKmNLIBWNeuLrwi8Dzm9XzJWkw38xDVb?=
 =?Windows-1252?Q?hvqjQPvpghOwUDr6m6RuQBZwBQM76NUwKC+aDaxrY7/wsqvLX3ixPJcf?=
 =?Windows-1252?Q?Xi5ukEul3ygYneTQ+VaqHHYotNunGakxw70+T6Cafro1A+DTb7MQg+UI?=
 =?Windows-1252?Q?Dy/9qWAnTsnT6wOqLAzq/MiEDb+auBMs+B/Iz5N5yBGcyqPHdy0MbeSl?=
 =?Windows-1252?Q?T36w8x0JoEBcJWA++Y5njf+cl85MljzY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR06MB3993.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b34c0c1-a724-4868-56b2-08dda9d446dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 17:12:14.3293
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9acd2dbd-ad97-4768-9854-5e28ec55fc41
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tUIn62qXj6pkX6VHE+fIDl1g0OugHJHHRM8Eyxo+yM7hgDQbosj4ndphBpH00NAacABEe7Z00lemnwf+32DUS3GlP0y46E/WIykxWg9Mya4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB7052
Message-ID-Hash: QWAIYFVBLIZEEE6UPK3XZI5NFPQUYZWG
X-Message-ID-Hash: QWAIYFVBLIZEEE6UPK3XZI5NFPQUYZWG
X-MailFrom: alexandre-j-serio@alticelabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no longer works
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QWAIYFVBLIZEEE6UPK3XZI5NFPQUYZWG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Alexandre_Jos=C3=A9_Monteiro_S=C3=A9rio_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?Windows-1252?Q?Alexandre_Jos=E9_Monteiro_S=E9rio?= <alexandre-j-serio@alticelabs.com>
Content-Type: multipart/mixed; boundary="===============6757161899239241931=="

--===============6757161899239241931==
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB39935704ED9E9893F2B37BA8DB74AHE1PR06MB3993eurp_"

--_000_HE1PR06MB39935704ED9E9893F2B37BA8DB74AHE1PR06MB3993eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

My USRPs are the USRP-2944 from NI, and the daughterboards are UBX-160.
Here i find that "set_XX_bandwidth() is used to configure the analog filter=
 channel:
https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rf__control_1_1core__if=
ace.html#a71f0132ae3c35a62e793e5aab1d8f11b

With your answer, i am now in doubt. In context, at the "usrp_lib.cpp" file=
 of the OpenAirInterface5G software they have the following snippet of code=
:

---------------------------------------------------------------------------=
---------------------------
    if (device->type !=3D USRP_N300_DEV) {
      for(int i=3D0; i<((int) s->usrp->get_tx_num_channels()) && i<openair0=
_cfg[0].tx_num_channels; i++)
        s->usrp->set_tx_bandwidth(openair0_cfg[0].tx_bw,i+choffset);

      for(int i=3D0; i<((int) s->usrp->get_rx_num_channels()) && i<openair0=
_cfg[0].rx_num_channels; i++)
        s->usrp->set_rx_bandwidth(openair0_cfg[0].rx_bw,i+choffset);
    }

    for (int i=3D0; i<openair0_cfg[0].rx_num_channels; i++) {
      LOG_I(HW,"RX Channel %d\n",i);
      LOG_I(HW,"  Actual RX sample rate: %fMSps...\n",s->usrp->get_rx_rate(=
i+choffset)/1e6);
      LOG_I(HW,"  Actual RX frequency: %fGHz...\n", s->usrp->get_rx_freq(i+=
choffset)/1e9);
      LOG_I(HW,"  Actual RX gain: %f...\n", s->usrp->get_rx_gain(i+choffset=
));
      LOG_I(HW,"  Actual RX bandwidth: %fM...\n", s->usrp->get_rx_bandwidth=
(i+choffset)/1e6);
      LOG_I(HW,"  Actual RX antenna: %s...\n", s->usrp->get_rx_antenna(i+ch=
offset).c_str());
    }

    for (int i=3D0; i<openair0_cfg[0].tx_num_channels; i++) {
      LOG_I(HW,"TX Channel %d\n",i);
      LOG_I(HW,"  Actual TX sample rate: %fMSps...\n", s->usrp->get_tx_rate=
(i+choffset)/1e6);
      LOG_I(HW,"  Actual TX frequency: %fGHz...\n", s->usrp->get_tx_freq(i+=
choffset)/1e9);
      LOG_I(HW,"  Actual TX gain: %f...\n", s->usrp->get_tx_gain(i+choffset=
));
      LOG_I(HW,"  Actual TX bandwidth: %fM...\n", s->usrp->get_tx_bandwidth=
(i+choffset)/1e6);
      LOG_I(HW,"  Actual TX antenna: %s...\n", s->usrp->get_tx_antenna(i+ch=
offset).c_str());
      LOG_I(HW,"  Actual TX packet size: %lu\n",s->tx_stream->get_max_num_s=
amps());
---------------------------------------------------------------------------=
---------------------------

From what i am understanding, this set_XX_bandwidth() functions are not doi=
ng anything since UBX-160 daughterboards work at a fixed analog bandwidth o=
f 160 MHz, is that right??? (In my case of these x310, the value that is pa=
ssed over "openair0_cfg[0].tx_bw" is 5 MHz)
Fact is that, when i was using v4.7.0.0 of the UHD lib, the output values f=
rom the "get_XX_bandwidth()" were the same passed by the "set_XX_bandwidth(=
)". That doesn't happen when using v4.8.0.0. Thats why i'm confused by your=
 answer.
I'm a begginer in the USRP usage, so i'm trying to understand and learn so =
any "docs or references" are mostly welcome too...

Thank you Marcus

________________________________
De: Marcus D. Leech <patchvonbraun@gmail.com>
Enviado: 4 de junho de 2025 15:19
Para: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Assunto: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth()=
 method no longer works


Aten=E7=E3o: Este email foi originado fora da MEO SGPS, S.A. Por favor, n=
=E3o clique em links nem abra anexos, a n=E3o ser que conhe=E7a o remetente=
 e saiba que o seu conte=FAdo =E9 seguro.


On 2025-06-04 08:15, Alexandre Jos=E9 Monteiro S=E9rio via USRP-users wrote=
:
I'm working with NI x310 USRPs for OAI testing and developing purposes and,=
 when using v4.8 of the UHD i have the same issue as well. With the v4.7, t=
he set_tx_bandwidth()/set_rx_bandwidth() do work, getting the values from t=
he get_tx_bandwidth()/get_tx_bandwidth() in accordance. In the case of v4.8=
, it seems that those "set" functions are not doing anything as you say... =
Couldn't find any solution or explanation for that yet...
The set_XX_bandwidth calls configure the *ANALOG* bandwidth of the RF front=
-end on the USRP.

In MANY cases, those analog front-ends have no way to set the analog bandwi=
dth, so those calls do nothing.  I can't immediately think of any X310-comp=
atible
  daughtercards that have variable analog bandwidth--which cards do you hav=
e?



________________________________
De: Tommy Tsui <tommytsui@w5tech.com><mailto:tommytsui@w5tech.com>
Enviado: 31 de maio de 2025 04:14
Para: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-u=
sers@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Assunto: [USRP-users] UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() met=
hod no longer works


You don't often get email from tommytsui@w5tech.com<mailto:tommytsui@w5tech=
.com>. Learn why this is important<https://aka.ms/LearnAboutSenderIdentific=
ation>

Aten=E7=E3o: Este email foi originado fora da MEO SGPS, S.A. Por favor, n=
=E3o clique em links nem abra anexos, a n=E3o ser que conhe=E7a o remetente=
 e saiba que o seu conte=FAdo =E9 seguro.




Hi,

Recently I upgraded UHD driver from 4.7 to 4.8. After the update, I discove=
red my RFNOC application has a new issue. Method set_tx_bandwidth() and set=
_rx_bandwidth no longer works properly. A call to get_tx_bandwidth() and ge=
t_rx_bandwidth() returned 40MHz regardless of the bandwidth parameter speci=
fied in the set function call. I installed UHD 4.8 FPGA image to my X310 pr=
operly.  I built UHD 4.8 driver source and installed it on my development h=
ost without any issue. When running the same app compiled with UHD 4.7, get=
_tx_bandwidth() and get_rx_bandwidth() returned the same value as the param=
eter specified in the set method call.

I compiled the UHD RFNOC example application rfnoc_radio_loopback with UHD =
4.8 library. It produced a similar issue.

Has anyone experienced the same issue on UHD 4.8?

In some old posts, some people thought set_tx_bandwidth() and set_rx_bandwi=
dth() doesn=92t do anything if the radio daughter card has a fixed analog b=
andpass filter. Is it still the case for UHD 4.8?

The radio daughter card WBX-120 has a fixed bandwidth of 40MHz, but I would=
 assume set_tx_bandwidth() and set_rx_bandwidth() adjust the digital filter=
 bandwidth rather than the analog RF bandpass filter.

Hardware & Software driver used:
X310, radio daughter card WBX-120.
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.

Host OS: Ubuntu 24.04 LTS

Tom









________________________________
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient, any disclosure, distribution, or c=
opying of this e-mail or its attachments is strictly prohibited. If you hav=
e received this e-mail in error, please notify the sender immediately by re=
turn e-mail and permanently delete the e-mail and any attachments.


AVISO DE CONFIDENCIALIDADE
Esta mensagem e quaisquer ficheiros anexos a ela cont=EAm informa=E7=E3o co=
nfidencial, propriedade do grupo MEO e/ou das demais sociedades que com ela=
 se encontrem em rela=E7=E3o de dom=EDnio, Funda=E7=E3o MEO e MEO ACS, dest=
inando-se ao uso exclusivo do destinat=E1rio. Se n=E3o for o destinat=E1rio=
 pretendido, n=E3o deve usar, distribuir, imprimir ou copiar este e-mail. S=
e recebeu esta mensagem por engano, por favor informe o emissor e elimine-a=
 imediatamente. Obrigado





_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



--_000_HE1PR06MB39935704ED9E9893F2B37BA8DB74AHE1PR06MB3993eurp_
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
<div id=3D"UniqueMessageBody_49" class=3D"elementToProof">
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
Hi Marcus,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
My USRPs are the USRP-2944 from NI, and the daughterboards are UBX-160.</di=
v>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
Here i find that &quot;set_XX_bandwidth() is used to configure the analog f=
ilter channel:</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rf__control_=
1_1core__iface.html#a71f0132ae3c35a62e793e5aab1d8f11b" target=3D"_blank" id=
=3D"OWA50d95a62-0bc6-2e1c-8c58-1bd1fb2ba2f3" class=3D"OWAAutoLink" title=3D=
"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rf__control_1_1core__i=
face.html#a71f0132ae3c35a62e793e5aab1d8f11b" rel=3D"noopener noreferrer" da=
ta-auth=3D"NotApplicable">https://files.ettus.com/manual/classuhd_1_1rfnoc_=
1_1rf__control_1_1core__iface.html#a71f0132ae3c35a62e793e5aab1d8f11b</a></d=
iv>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
With your answer, i am now in doubt. In context, at the &quot;usrp_lib.cpp&=
quot; file of the OpenAirInterface5G software they have the following snipp=
et of code:</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
---------------------------------------------------------------------------=
---------------------------</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; if (device-&gt;type !=3D USRP_N300_DEV) {</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; for(int i=3D0; i&lt;((int) s-&gt;usrp-&gt;get_tx_num_c=
hannels()) &amp;&amp; i&lt;openair0_cfg[0].tx_num_channels; i++)</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; &nbsp; s-&gt;usrp-&gt;<span style=3D"background-color:=
 yellow;"><b>set_tx_bandwidth</b></span>(openair0_cfg[0].tx_bw,i+choffset);=
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; for(int i=3D0; i&lt;((int) s-&gt;usrp-&gt;get_rx_num_c=
hannels()) &amp;&amp; i&lt;openair0_cfg[0].rx_num_channels; i++)</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; &nbsp; s-&gt;usrp-&gt;<span style=3D"background-color:=
 yellow;"><b>set_rx_bandwidth</b></span>(openair0_cfg[0].rx_bw,i+choffset);=
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; }</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; for (int i=3D0; i&lt;openair0_cfg[0].rx_num_channels; i++) {<=
/div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot;RX Channel %d\n&quot;,i);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual RX sample rate: %fMSps...=
\n&quot;,s-&gt;usrp-&gt;get_rx_rate(i+choffset)/1e6);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual RX frequency: %fGHz...\n&=
quot;, s-&gt;usrp-&gt;get_rx_freq(i+choffset)/1e9);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual RX gain: %f...\n&quot;, s=
-&gt;usrp-&gt;get_rx_gain(i+choffset));</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual RX bandwidth: %fM...\n&qu=
ot;, s-&gt;usrp-&gt;<span style=3D"background-color: yellow;"><b>get_rx_ban=
dwidth</b></span>(i+choffset)/1e6);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual RX antenna: %s...\n&quot;=
, s-&gt;usrp-&gt;get_rx_antenna(i+choffset).c_str());</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; }</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; for (int i=3D0; i&lt;openair0_cfg[0].tx_num_channels; i++) {<=
/div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot;TX Channel %d\n&quot;,i);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual TX sample rate: %fMSps...=
\n&quot;, s-&gt;usrp-&gt;get_tx_rate(i+choffset)/1e6);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual TX frequency: %fGHz...\n&=
quot;, s-&gt;usrp-&gt;get_tx_freq(i+choffset)/1e9);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot;&nbsp;&nbsp;Actual TX gain: %f...\n&quo=
t;, s-&gt;usrp-&gt;get_tx_gain(i+choffset));</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual TX bandwidth: %fM...\n&qu=
ot;, s-&gt;usrp-&gt;<span style=3D"background-color: yellow;"><b>get_tx_ban=
dwidth</b></span>(i+choffset)/1e6);</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual TX antenna: %s...\n&quot;=
, s-&gt;usrp-&gt;get_tx_antenna(i+choffset).c_str());</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; LOG_I(HW,&quot; &nbsp;Actual TX packet size: %lu\n&quo=
t;,s-&gt;tx_stream-&gt;get_max_num_samps());</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
---------------------------------------------------------------------------=
---------------------------</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
From what i am understanding, this set_XX_bandwidth() functions are not doi=
ng anything since UBX-160 daughterboards work at a fixed analog bandwidth o=
f 160 MHz, is that right??? (In my case of these x310, the value that is pa=
ssed over &quot;openair0_cfg[0].tx_bw&quot;
 is 5 MHz)</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
Fact is that, when i was using v4.7.0.0 of the UHD lib, the output values f=
rom the &quot;get_XX_bandwidth()&quot; were the same passed by the &quot;se=
t_XX_bandwidth()&quot;. That doesn't happen when using v4.8.0.0. Thats why =
i'm confused by your answer.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
I'm a begginer in the USRP usage, so i'm trying to understand and learn so =
any &quot;docs or references&quot; are mostly welcome too...</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: bla=
ck;" class=3D"elementToProof">
Thank you Marcus</div>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De:</b> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;<br>
<b>Enviado:</b> 4 de junho de 2025 15:19<br>
<b>Para:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Assunto:</b> [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_band=
width() method no longer works</font>
<div>&nbsp;</div>
</div>
<div>
<p></p>
<div style=3D"background-color:#000000; width:100%; border-style:solid; bor=
der-color:#000000; border-width:1pt; padding:2pt; font-size:10pt; line-heig=
ht:10pt; font-family:'Altice'; color:White; text-align:left">
<span style=3D"color:#ffffff">Aten=E7=E3o:</span> Este email foi originado =
fora da MEO SGPS, S.A. Por favor, n=E3o clique em links nem abra anexos, a =
n=E3o ser que conhe=E7a o remetente e saiba que o seu conte=FAdo =E9 seguro=
.</div>
<br>
<p></p>
<div>
<div class=3D"x_moz-cite-prefix">On 2025-06-04 08:15, Alexandre Jos=E9 Mont=
eiro S=E9rio via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I'm working with NI x310 USRPs for OAI testing and developing purposes and,=
 when using v4.8 of the UHD i have the same issue as well. With the v4.7, t=
he set_tx_bandwidth()/set_rx_bandwidth() do work, getting the values from t=
he get_tx_bandwidth()/get_tx_bandwidth()
 in accordance. In the case of v4.8, it seems that those &quot;set&quot; fu=
nctions are not doing anything as you say... Couldn't find any solution or =
explanation for that yet...</div>
</blockquote>
The set_XX_bandwidth calls configure the *ANALOG* bandwidth of the RF front=
-end on the USRP.<br>
<br>
In MANY cases, those analog front-ends have no way to set the analog bandwi=
dth, so those calls do nothing.&nbsp; I can't immediately think of any X310=
-compatible<br>
&nbsp; daughtercards that have variable analog bandwidth--which cards do yo=
u have?<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg">
<div style=3D"direction:ltr; font-family:Calibri,sans-serif; font-size:11pt=
; color:rgb(0,0,0)">
<b>De:</b>&nbsp;Tommy Tsui <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mai=
lto:tommytsui@w5tech.com">
&lt;tommytsui@w5tech.com&gt;</a><br>
<b>Enviado:</b>&nbsp;31 de maio de 2025 04:14<br>
<b>Para:</b>&nbsp;<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.=
com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Assunto:</b>&nbsp;[USRP-users] UHD 4.8 set_tx_bandwidth() and set_rx_ban=
dwidth() method no longer works</div>
<div style=3D"direction:ltr">&nbsp;</div>
</div>
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"direction:ltr; text-ind=
ent:revert; line-height:revert; white-space:revert; background-color:revert=
; display:table; margin:revert; width:100%; height:revert; table-layout:fix=
ed; color:revert; border-collapse:collapse; border-spacing:0px; box-sizing:=
border-box">
<tbody>
<tr style=3D"background-color:revert">
<td style=3D"direction:ltr; text-indent:revert; line-height:revert; white-s=
pace:revert; border-width:revert; border-style:revert; border-color:revert;=
 background-color:rgb(166,166,166); padding:7px 2px; word-break:revert; col=
or:revert; width:0px; height:revert">
<br>
</td>
<td style=3D"direction:ltr; text-align:left; text-indent:revert; line-heigh=
t:revert; white-space:revert; border-width:revert; border-style:revert; bor=
der-color:revert; background-color:rgb(234,234,234); padding:7px 5px 7px 15=
px; word-break:revert; color:rgb(33,33,33); width:100%; height:revert">
<div style=3D"direction:ltr; text-align:left; text-indent:revert; line-heig=
ht:revert; white-space:revert; font-family:wf_segoe-ui_normal,Segoe UI,Sego=
e WP,Tahoma,Arial,sans-serif; font-size:12px; color:revert">
<span style=3D"letter-spacing:revert; background-color:revert; line-height:=
revert">You don't often get email from
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:tommytsui@w5tech.com=
">tommytsui@w5tech.com</a>.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification" id=3D"OWAcb708ed9=
-228a-5563-d601-e1f58bf9b4f2" class=3D"x_OWAAutoLink" data-auth=3D"NotAppli=
cable" style=3D"color:revert; display:revert; background-color:revert">
Learn why this is important</a></span></div>
</td>
<td style=3D"direction:ltr; text-align:left; text-indent:revert; line-heigh=
t:revert; white-space:revert; border-width:revert; border-style:revert; bor=
der-color:revert; background-color:rgb(234,234,234); padding:7px 5px; word-=
break:revert; color:rgb(33,33,33); width:75px; height:revert">
<br>
</td>
</tr>
</tbody>
</table>
<div style=3D"text-align:left; line-height:10pt; background-color:rgb(0,0,0=
); padding:2pt; border-width:1pt; border-style:solid; border-color:rgb(0,0,=
0); width:100%; font-family:&quot;Altice&quot;; font-size:10pt">
<span style=3D"color:rgb(255,255,255)">Aten=E7=E3o:</span><span style=3D"co=
lor:white">&nbsp;Este email foi originado fora da MEO SGPS, S.A. Por favor,=
 n=E3o clique em links nem abra anexos, a n=E3o ser que conhe=E7a o remeten=
te e saiba que o seu conte=FAdo =E9 seguro.</span></div>
<div><br>
</div>
<p style=3D"margin:0in; font-family:&quot;Aptos&quot;,sans-serif; font-size=
:12pt"><span style=3D"font-size:11pt">&nbsp;</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Hi,</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Recently I upgraded UHD driver from 4.7 to 4.8. Aft=
er the update, I discovered my RFNOC application has a new issue. Method se=
t_tx_bandwidth() and set_rx_bandwidth no longer
 works properly. A call to get_tx_bandwidth() and get_rx_bandwidth() return=
ed 40MHz regardless of the bandwidth parameter specified in the set functio=
n call. I installed UHD 4.8 FPGA image to my X310 properly. &nbsp;I built U=
HD 4.8 driver source and installed it
 on my development host without any issue. When running the same app compil=
ed with UHD 4.7, get_tx_bandwidth() and get_rx_bandwidth() returned the sam=
e value as the parameter specified in the set method call.</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">I compiled the UHD RFNOC example application rfnoc_=
radio_loopback with UHD 4.8 library. It produced a similar issue.</span></p=
>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Has anyone experienced the same issue on UHD 4.8?</=
span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">In some old posts, some people thought set_tx_bandw=
idth() and set_rx_bandwidth() doesn=92t do anything if the radio daughter c=
ard has a fixed analog bandpass filter. Is it
 still the case for UHD 4.8?</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">The radio daughter card WBX-120 has a fixed bandwid=
th of 40MHz, but I would assume set_tx_bandwidth() and set_rx_bandwidth() a=
djust the digital filter bandwidth rather than
 the analog RF bandpass filter.</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Hardware &amp; Software driver used:<br>
X310, radio daughter card WBX-120.<br>
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Host OS: Ubuntu 24.04 LTS</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">Tom</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">&nbsp;</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">&nbsp;</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">&nbsp;</span></p>
<p style=3D"background-color:white; margin-right:0in; margin-bottom:12pt; m=
argin-left:0in">
<span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif; font-size:10.5p=
t; color:rgb(31,35,40)">&nbsp;</span></p>
<hr>
<div style=3D"font-family:&quot;Calibri&quot;,sans-serif; font-size:8pt">Th=
e information contained in this e-mail and any attachments from W5 Technolo=
gies, Inc. may contain confidential and/or proprietary information, and is =
intended only for the named recipient to whom
 it was originally addressed. If you are not the intended recipient, any di=
sclosure, distribution, or copying of this e-mail or its attachments is str=
ictly prohibited. If you have received this e-mail in error, please notify =
the sender immediately by return
 e-mail and permanently delete the e-mail and any attachments.</div>
<br>
<p class=3D"x_MsoNormal"><span style=3D"font-size:9.0pt; color:black">AVISO=
 DE CONFIDENCIALIDADE
<br>
Esta mensagem e quaisquer ficheiros anexos a ela cont=EAm informa=E7=E3o co=
nfidencial, propriedade do grupo MEO e/ou das demais sociedades que com ela=
 se encontrem em rela=E7=E3o de dom=EDnio, Funda=E7=E3o MEO e MEO ACS, dest=
inando-se ao uso exclusivo do destinat=E1rio. Se n=E3o
 for o destinat=E1rio pretendido, n=E3o deve usar, distribuir, imprimir ou =
copiar este e-mail. Se recebeu esta mensagem por engano, por favor informe =
o emissor e elimine-a imediatamente. Obrigado
</span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_HE1PR06MB39935704ED9E9893F2B37BA8DB74AHE1PR06MB3993eurp_--

--===============6757161899239241931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6757161899239241931==--
