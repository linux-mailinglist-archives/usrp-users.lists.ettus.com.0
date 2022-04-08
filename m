Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 984864F8BF7
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 04:43:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97E9E385153
	for <lists+usrp-users@lfdr.de>; Thu,  7 Apr 2022 22:42:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649385779; bh=H8IQ+3Z0PPWsuWHMHM7SMgLIZg9aGSMjwouUsA3RF+c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ip34SkH2xyM8R3jQJyRoMiu9OFoUB7z8syESdAfLOki7UxK2YRHEvx/kA/HHuPVE8
	 IRc3PKgFzmZY+vxFdcvGAucavbYti/s7rSuC50i0AgfR47XvFFZ0g94vReNCoG17uq
	 o+E1Dr7NbkRjzhR83s8ZUYlfNWhgnTDxz1J16JwP8jQ110z0qBLAHmQmh4s2h/Nh5Y
	 Izn5SYM1lKmH/vrdJX0h8DOHWImFLJ8+/zoqQT/GF8+ppLD3B+92TEhpZDlUc0vYlz
	 UuE+We+0cb7m4euRypoLxMdr+OfN7Qhg7bPmiNmg86dzGBxXQ/FBfRsU1MWdAjUMwe
	 Tqkvhxo0JBtyg==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2067.outbound.protection.outlook.com [40.107.236.67])
	by mm2.emwd.com (Postfix) with ESMTPS id F2B7F38511A
	for <usrp-users@lists.ettus.com>; Thu,  7 Apr 2022 22:41:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="Bfm+FE/Q";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZdioDz6VkqPRiGroIjhFNdbYAj7vgvnM+SVb52bAL2F3WZuz+y6cJoFxLfWdmpBdz5QJFZL7yLHGWSGwL7gGEnGRPirmYlsbmNltZTpWTZMIX+K+4W1OU6GM8swfiu7fDAhjAcurn1jMo5uzjdMeGm8AyXblJMHVcFCxrS01pht/0KfOonQbnA4Z1l2YdZMXTmVYiPwDJa0kENg9Wm0dgRY3wT8CTn6KzigOGMY//MQpVhJLQQSyFMI/bcblctCepZ2mqGsG4t5gLb2Big/A4HMhzYqtFwGyI213v/W+H63yaARg6YPBwiEJoDa0meGKMB1WZo/HOdl82EE0W8M7+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQG/ozDnz8fd9LRx/VRBz3C1Uhk/YZLlXuEUcbXud8M=;
 b=AghJHi2iC7ffgLp7nyOQFmkWsl663RH9WKj8AC6wV0OVBqKWcL7kjEemLxa5Zx/vSUa1ru08MGBOeJhKMP+AqnlHAQS0Cwgr5qQhYFF4nKfQxSxiAWxB8a70mOafItvUqilYITUzbOwogIt+A+28prRIuRix+WhYNylQw5QoK5rSKIyk95ETY602uSaOAG5wcqkQpSWOLsjF4pdukYSjvmOoNbMjtU/TNed4pJ0OOQEK9H7sms5k/ypbZiawV+X//kJ3WEcpiP8o8zT3XxyZgwxgfFI1BAS2SB7NmxIBMLa7v3ADepyFQ9+9o++FwBcfX3WprG+zPtKUF2XaxAT8HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQG/ozDnz8fd9LRx/VRBz3C1Uhk/YZLlXuEUcbXud8M=;
 b=Bfm+FE/QR8ElbYJap2ADT6kAQxf8mjZaoSIm+kJRAsMbJKPBeJ26yRu0TtjJW5HgjltxYuf47GraAI9tuMsVg51YSf8zqyhQgzVxxgTKznp+yWdrNJXGFwu4kdlU2miKYdnkLk6inIX3KJZ3ADAAeRz3oIihcjjWQPKsmq4gmRY=
Received: from DM5PR16MB1707.namprd16.prod.outlook.com (2603:10b6:4:24::10) by
 BN0PR16MB4367.namprd16.prod.outlook.com (2603:10b6:408:162::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Fri, 8 Apr
 2022 02:41:56 +0000
Received: from DM5PR16MB1707.namprd16.prod.outlook.com
 ([fe80::cc13:1553:9ae5:1dd7]) by DM5PR16MB1707.namprd16.prod.outlook.com
 ([fe80::cc13:1553:9ae5:1dd7%10]) with mapi id 15.20.5144.022; Fri, 8 Apr 2022
 02:41:56 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] 10GbE NIC for USRP-2944/X310
Thread-Index: AQHYSue+Z9qLbCRU0kyOTS0ErM3r5azlSmGQ
Date: Fri, 8 Apr 2022 02:41:56 +0000
Message-ID: 
 <DM5PR16MB17071CCE8DC170F7384E2C52B9E99@DM5PR16MB1707.namprd16.prod.outlook.com>
References: <18006c7adc5.11592e850591606.557968034305965161@uberasch.com>
In-Reply-To: <18006c7adc5.11592e850591606.557968034305965161@uberasch.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b1d7d9e-af73-4228-c27f-08da190958d8
x-ms-traffictypediagnostic: BN0PR16MB4367:EE_
x-microsoft-antispam-prvs: 
 <BN0PR16MB43673C82C3F683C5F89B493CB9E99@BN0PR16MB4367.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZAtJc0pPUbmGkESpHoYOJWRZ2ZLkf8rHugierUVLAVfUPMn3cCzEXBW18NVhMFL51ucBj22wnFM7qPXrFKvIPVWP4oKhTqbnqzaVo7gMDOXZjh6ZGPrGtWrM1Sj/nwmzJ2tSZJNo5LO2+UuzroSEP5ATHX2gokTfT8+IDnRx/kwBFf/OiiaspDqvqeD9udK97C2KCfcdis7QaMhZchR1B3/nB0js6D8dbEfp1jiCQOHIlrB0Bf0q73mx6p3xdI1bXcDTpQ1Hg+XoVl/HCIqciXNT3/PvBjExE31Z7HT+SWxJJ1LsLc8hZybsNxFhpHHb3YC0e5ogjIlWSz54fuc3cmlO40Qd+WMn12HLNvjeYXVAJJgJ7CiD0K94g/tzewKdpC/aJr392pIY4ZK1dMkP+L5Ldrmdnv5nwcsIrl4jEi6g8uNxbYD7nnkmm7+MOaWIjqCEOkJNtXXdvEIiqUA+ZdeF7bzo1UxWNn/I2ZjWcd2cKPYoaykddOdFdh8JMDK4L78b93jJCgIEMQ6GPuly0rm1v2NctIWl+wTlFo7z3BwAJh0T1gTcHeLCjcXZUpmBMVZUxoZv669UTijNRrlWT0AokHxVD9yDsWrrs9x48TVqY2gZmPqb0hg8+GQAL7k7H2ClBsl6AAg87CfDlWRbFS7vpVNsa2PTM0NEx2BM7XoU9ai252Fl/W5lO42/eH3+7uQrpT/SpSod+fFDhJ6hrA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR16MB1707.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(376002)(396003)(346002)(39830400003)(366004)(6916009)(186003)(26005)(66476007)(66946007)(8676002)(33656002)(66446008)(9686003)(64756008)(66556008)(5660300002)(38100700002)(316002)(122000001)(71200400001)(52536014)(55016003)(2906002)(76116006)(4744005)(508600001)(38070700005)(6506007)(7696005)(53546011)(8936002)(83380400001)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eDMxd1hnTFFJZnZwNGY3aDRKRFhiQnB0RVpwZlFiSk0rWU95MTV2c3RRU1BV?=
 =?utf-8?B?T1FtUUsxNnVzTXY2QlpFYUMvelFzMXFwSmVsOVlxNGx5Q0lCNUlJejY4U2Z2?=
 =?utf-8?B?dlMxMitESDJHL0ZQOHpMQlJzUFZzZ2RobWRmeXNUUDhMSFMvOVFqNXJ3NlQz?=
 =?utf-8?B?bkZQREd2VXN3QXZpNk5KODg4RHVma1BHWlFOaWJNOER4UnFoejBqaWhHWjJp?=
 =?utf-8?B?Vm5lZlU3U290alQyZE96dkNEd1NaaUtyajhEK05GN2ZrVng1cllOait3VExW?=
 =?utf-8?B?QW84eEhGRXBia25XV2U0RHFqMlZaT0xVa2RFYm0rUW1EbDVtNFQ0VDJWM0dL?=
 =?utf-8?B?SFdmR0c0enJ1SWhGVlBpenQ0NmNFNmhuSStHdGMwRUI1SjhKQzdnc2ZjSXZ5?=
 =?utf-8?B?OE1TaE1LWTJZT3NBOGpuNGZUYUVnQ2dGOFF2UldBMkxvYUpYNFcxaFpUMGpm?=
 =?utf-8?B?S1NJaDVtU0M2MHNWNDRMUWIvcXFuemNRV3orSTBoa2M1RXlTZmFWbVhQNmR2?=
 =?utf-8?B?cm5oN3QvWkQvLy9Gbk10dUhVL3B5c1JCTGU0UEdBVTlVNlhUMlZYczBFaUFr?=
 =?utf-8?B?WVdmNWpSNWxONEdUcGpPWmI0OEQ2SStpN0VQdGNoeUYrY0pFN0g5Z056RlRE?=
 =?utf-8?B?MkdabEFCMVFtQTduSnp4eElwWHVyWEdhbGdmZ0pXWndZYXJJL1pCaHg4WEJR?=
 =?utf-8?B?VVZCQm5BZzAweHRERGlsVEJ6ZVhwL3BQVE16TE5IYmtUK0h4Mm8raU1FaXVs?=
 =?utf-8?B?MlpMTzE0cDlIYUZoYnNhNHd3NXc2cmtCWlBMckNKdTdwVDBpN0QxNE8rd1FH?=
 =?utf-8?B?bGZhSnZ2SS9rdGM3RWhxZVhYdWtyZyttY1JMU0Q0eWFOc0NyclRYaHoyZmg4?=
 =?utf-8?B?QThGaGNkdGdMTzJRS2ZjOXByekdleEVvVXFsSVJQMmNJUHcyUnExL2hkQ0kz?=
 =?utf-8?B?aXRLdmR5Z1NPaTM1QlRabjFBczRCZGI1cjJuSXV4cFUwenZWMHh3d2ZQZElx?=
 =?utf-8?B?YXFFTVp2TFhIUlhKNFp4RmlkNVpjVXdua0xKT2lxblJucjdYQnVKbDJpODhx?=
 =?utf-8?B?MkZ2Y0lpVXNhSmRic3MzLzgwczNhNnFUZVhKTDg3clJXLzBjUzBVclA2WUlE?=
 =?utf-8?B?N2xCMjVLaTZwR0UzSTlvNHQ4TW1BR3l6RHhXQnB0RHowT0NRY2RpRCtEa3dy?=
 =?utf-8?B?dHkxR0xtWFdMblowV25ReE5BUm1JYmxGYUV2MzZ4U2FxUlR0clpBV3NNVXJG?=
 =?utf-8?B?dWdKRHZRUWJGWkhxd0daZTZpQ0g1L2JNMzZkcE1laVA5ZmJhcmtoZGgwNzZj?=
 =?utf-8?B?S2Vpc3MxY3JyemlvSHVicWJFeWkyYXBOdHNIYkF1L0NsdlVNT0F1QWwrUTlT?=
 =?utf-8?B?UUczb29wanBZa2xKQ2pwKzlyMW90SDhWTDlucG1VL2JzaGZ0SGFnV042TWQv?=
 =?utf-8?B?cWFrai9QQUV1L1pVUHpkVk93YWVSaGR1QW5CejR0NjNYNHFDays3VGRnR3cr?=
 =?utf-8?B?SDFTaGwvUXJpdFR3bVVGa3Bpa2s2dVhOcnl4Rk5CZHUrMnpFRUJOZDMrUmsr?=
 =?utf-8?B?VERkTkl2T3drOEVicmVpd2JuZWNYU1hCMnFycjAvWVl0ZGFFdTFoUzQzakpW?=
 =?utf-8?B?L1pxK1NzanJPdk9LWGJMVUV2aVN2NUFJcUpFSFo4My9YQysyTHIxeTUyNTFX?=
 =?utf-8?B?akdXZEFHVlNocGQ1QzlqSW5Yd1o2cjI5aW03bm5DaWxTYjZNVUxjdkp3aTcx?=
 =?utf-8?B?VUxQcjBnMkt5YnQrSi9kcXQvSWRzZVdremJNUHorNEh2SUFQcGhwTkFXazln?=
 =?utf-8?B?djliMUhyWVNXWHNFUUphMHFDMitWSno2Ym0vSjl4YjdGNDFjdU5kdVpHbjQ0?=
 =?utf-8?B?RE1DMldBbGZhcWcyN0xKb1FQT1A5d2NQYm1jNVlZdkIvcEw0QkZURlRDTWVa?=
 =?utf-8?B?TWI1RnpsYmEveTJERGFldGF6OHRmY1VkWm5hUG5kN2JRRWJaUFZRVHBLM0pJ?=
 =?utf-8?B?QXE2ZzlhckpDQ2k1ZjB4OTl4T1Y0alBjZDlwUy9lNzhSSStsZU1nc3B6dWxZ?=
 =?utf-8?B?NGlUM0pmY2JmQnNMaWhLRHZscUltaU0wejk3WWpyNnVtd3lObUxncFRWd0Y1?=
 =?utf-8?B?UG9iRHhJdHA1aWdrc2tnNVg1S2tsS3ZaYUJuMjJkb3M0QUkvd3F5ZmdVVE5m?=
 =?utf-8?B?NlFjeE1TekJIVCtqRitndk1lWU1XL2pscENyOXk4SW1nWWMrTGZuOHdQUS9p?=
 =?utf-8?B?M3dyelhHbzQxcHdwYVNhWkdwYnlnYlFnbmFuVnpCa3J5bkZidFZYYUk3YTRV?=
 =?utf-8?B?blFrVDNJMzVYUFdJcEhxcWlRNzlhTXZpcGk2Qis2SzdFUmpZTlNPZz09?=
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR16MB1707.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1d7d9e-af73-4228-c27f-08da190958d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2022 02:41:56.1409
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mzbf0e7dId7t+DJ/EYm0yRAiKish1inDsauMBycDlqmeI1SWSp6KKgKwPHaoAZk2Ut6DP99I81Y8f4OLnEWn5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR16MB4367
Message-ID-Hash: PAICKHTIGV3MAQZQ5U2UFKXHF7UK7MH7
X-Message-ID-Hash: PAICKHTIGV3MAQZQ5U2UFKXHF7UK7MH7
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10GbE NIC for USRP-2944/X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JG5VG4W2Y6JC7C5BHDQVZ5XNUB2V2YUB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7596471168555340287=="

--===============7596471168555340287==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR16MB17071CCE8DC170F7384E2C52B9E99DM5PR16MB1707namp_"

--_000_DM5PR16MB17071CCE8DC170F7384E2C52B9E99DM5PR16MB1707namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHVzZWQgMTBHYkUgb24gYW4gWDU1MC1UMiBhbmQgWDcyMC1EMiDigJMgc3RpbGwgaW50
ZWwgTklDcw0KV2l0aCB0aGUgWDcyMC1EMiBJIHdhcyBhYmxlIHRvIGNvbm5lY3QgdG8gdGhlIFgz
MTAgdXNpbmcgZmlicmUgU0ZQKyBtb2R1bGVzIGF0IDEwR2Jwcy4NCkEgc2luZ2xlIDEwR2JFIGxp
bmsgaXMgc3VmZmljaWVudCBmb3Igb25lIDIwME1TUFMgcmVjZWl2ZSBjaGFubmVsIOKAkyB5b3Vy
IGhvc3QgcHJvY2Vzc29yIG5lZWRzIHRvIGJlIGFibGUgdG8gdXRpbGlzZSBwcmV0dHkgbXVjaCB0
aGUgZW50aXJlIGJhbmR3aWR0aCBvZiB0aGUgbGluayB0aG91Z2guIE5vdCBhbHdheXMgdHJ1ZS4N
Cg0KanANCg0KDQpGcm9tOiBKYWNrIEdhbGxlZ29zIDxqZ2FsbGVnb3NAdWJlcmFzY2guY29tPg0K
U2VudDogRnJpZGF5LCA4IEFwcmlsIDIwMjIgMTE6MjcNClRvOiB1c3JwLXVzZXJzIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1YmplY3Q6IFtVU1JQLXVzZXJzXSAxMEdiRSBOSUMgZm9y
IFVTUlAtMjk0NC9YMzEwDQoNCg0KV0FSTklORzogVGhpcyBtZXNzYWdlIGhhcyBvcmlnaW5hdGVk
IGZyb20gYW4gdW50cnVzdGVkIHNvdXJjZS4gQmUgbWluZGZ1bCBvZiBhdHRhY2htZW50cyBhbmQg
ZW1iZWRkZWQgbGlua3MuDQpIYXMgYW55b25lIGhhZCBzdWNjZXNzIHdpdGggYSAxMEdiRSBOSUMg
b3RoZXIgdGhhbiB0aGUgcmVjb21tZW5kZWQgSW50ZWwgWDUyMCBjYXJkIGZvciB0aGUgVVNSUC0y
OTQ0L1gzMTA/DQoNCkFuZCwgZG9lcyB0aGUgVVNSUCByZXF1aXJlIDJ4U0ZQKyBmb3IgMjAwTXMv
cyBSWCBjYXB0dXJlLCBvciBpcyAxeCBTRlArIHN1ZmZpY2llbnQ/IEkgb25seSBuZWVkIHRvIHJ4
IG9uIG9uZSBtYm9hcmQgKFVCWDE2MCkgYnV0IGF0IHRoZSBtYXggc2FtcGxlIHJhdGUuDQoNClRo
YW5rcywNCkphY2sgR2FsbGVnb3MNCg0KDQo=

--_000_DM5PR16MB17071CCE8DC170F7384E2C52B9E99DM5PR16MB1707namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpWZXJkYW5hOw0KCXBhbm9zZS0xOjIgMTEg
NiA0IDMgNSA0IDQgMiA0O30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwg
bGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowY207DQoJZm9udC1zaXplOjEx
LjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5
bGUyMA0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2Fs
aWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJ
e21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2Ug
V29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4wcHQgNzIu
MHB0IDcyLjBwdCA3Mi4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9u
MTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0
cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1b
aWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRt
YXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5k
aWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1BVSIgbGluaz0iIzA1NjNDMSIgdmxpbms9
IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3Jk
U2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9Im1zby1mYXJlYXN0
LWxhbmd1YWdlOkVOLVVTIj5JIGhhdmUgdXNlZCAxMEdiRSBvbiBhbiBYNTUwLVQyIGFuZCBYNzIw
LUQyIOKAkyBzdGlsbCBpbnRlbCBOSUNzPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5XaXRo
IHRoZSBYNzIwLUQyIEkgd2FzIGFibGUgdG8gY29ubmVjdCB0byB0aGUgWDMxMCB1c2luZyBmaWJy
ZSBTRlArIG1vZHVsZXMgYXQgMTBHYnBzLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+QSBz
aW5nbGUgMTBHYkUgbGluayBpcyBzdWZmaWNpZW50IGZvciBvbmUgMjAwTVNQUyByZWNlaXZlIGNo
YW5uZWwg4oCTIHlvdXIgaG9zdCBwcm9jZXNzb3IgbmVlZHMgdG8gYmUgYWJsZSB0byB1dGlsaXNl
IHByZXR0eSBtdWNoIHRoZSBlbnRpcmUgYmFuZHdpZHRoIG9mIHRoZSBsaW5rIHRob3VnaC4gTm90
IGFsd2F5cyB0cnVlLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9Im1zby1mYXJl
YXN0LWxhbmd1YWdlOkVOLVVTIj5qcDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4m
bmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUx
IDEuMHB0O3BhZGRpbmc6My4wcHQgMGNtIDBjbSAwY20iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGI+PHNwYW4gbGFuZz0iRU4tVVMiPkZyb206PC9zcGFuPjwvYj48c3BhbiBsYW5nPSJFTi1VUyI+
IEphY2sgR2FsbGVnb3MgJmx0O2pnYWxsZWdvc0B1YmVyYXNjaC5jb20mZ3Q7DQo8YnI+DQo8Yj5T
ZW50OjwvYj4gRnJpZGF5LCA4IEFwcmlsIDIwMjIgMTE6Mjc8YnI+DQo8Yj5Ubzo8L2I+IHVzcnAt
dXNlcnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6
PC9iPiBbVVNSUC11c2Vyc10gMTBHYkUgTklDIGZvciBVU1JQLTI5NDQvWDMxMDxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZu
YnNwOzwvbzpwPjwvcD4NCjxwPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjpibGFjaztiYWNrZ3JvdW5kOiNERkZGMDAi
PldBUk5JTkc6PC9zcGFuPjwvc3Ryb25nPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5
OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+DQo8L3NwYW4+PC9zdHJvbmc+VGhpcyBt
ZXNzYWdlIGhhcyBvcmlnaW5hdGVkIGZyb20gYW4gdW50cnVzdGVkIHNvdXJjZS4gQmUgbWluZGZ1
bCBvZiBhdHRhY2htZW50cyBhbmQgZW1iZWRkZWQgbGlua3MuPG86cD48L286cD48L3A+DQo8ZGl2
Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtWZXJkYW5h
JnF1b3Q7LHNhbnMtc2VyaWYiPkhhcyBhbnlvbmUgaGFkIHN1Y2Nlc3Mgd2l0aCBhIDEwR2JFIE5J
QyBvdGhlciB0aGFuIHRoZSByZWNvbW1lbmRlZCBJbnRlbCBYNTIwIGNhcmQgZm9yIHRoZSBVU1JQ
LTI5NDQvWDMxMD88bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTom
cXVvdDtWZXJkYW5hJnF1b3Q7LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwv
cD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1ZlcmRhbmEmcXVvdDssc2Fucy1zZXJpZiI+
QW5kLCBkb2VzIHRoZSBVU1JQIHJlcXVpcmUgMnhTRlArIGZvciAyMDBNcy9zIFJYIGNhcHR1cmUs
IG9yIGlzIDF4IFNGUCsgc3VmZmljaWVudD8gSSBvbmx5IG5lZWQgdG8gcnggb24gb25lIG1ib2Fy
ZCAoVUJYMTYwKSBidXQgYXQgdGhlIG1heCBzYW1wbGUgcmF0ZS48bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtWZXJkYW5hJnF1b3Q7LHNhbnMtc2VyaWYi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O1ZlcmRhbmEmcXVvdDssc2Fucy1zZXJpZiI+VGhhbmtzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1ZlcmRhbmEmcXVvdDssc2Fucy1zZXJpZiI+SmFj
ayBHYWxsZWdvczxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4N
CjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1ZlcmRhbmEmcXVvdDssc2Fucy1zZXJpZiI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_DM5PR16MB17071CCE8DC170F7384E2C52B9E99DM5PR16MB1707namp_--

--===============7596471168555340287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7596471168555340287==--
