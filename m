Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9EE5B084C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 17:19:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEEC93845E2
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 11:19:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662563940; bh=nOiBrevB/NUFivXd4jIa8z6uLeZq/BkvsfUyGT7dMzQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uKgMYWB5thmYT6NM2YUlK3J5oqE/XKBdt+0TPQLT8WlHqeWlUOTI4c6VcbUygIcRq
	 eJWFS/3KqRCivKChsXL6CgIFAdNb0viCForHmY6IOr9xaYZcGH4eM363W+ws7EG2yT
	 Ea4c+lcRC4+/MuCtdM/9StqivcKGtmbiu/8Xwa52PZT3isbubKFyZ+Ir54gFNtXz6Y
	 lYZP2KSP0mw6gM4BWa27qUZFAg2HnpU8S+JXHGIWwXVw4gGvsKL/YDsdalg307LIXI
	 yI24D1xbM7W+HQfe+rgInb+C6PJTJiJw5Wob5zgxWtzfM5uiPSTRkE8CJDMR3C47PW
	 tGuZt0F4B2hCA==
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2131.outbound.protection.outlook.com [40.107.92.131])
	by mm2.emwd.com (Postfix) with ESMTPS id 44B5D3844AE
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 11:17:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ohio.edu header.i=@ohio.edu header.b="q6gLqO1m";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gh+b1IEa/DVFPgEobAeHrdjTYxMJq7BKWaU/mhaQ7NkmpPNXvZzIzVmD/t/viWdxDbt17KDzfi9EvLXV+3jgW+9ba7KTQZuRq26HmKkyiaHH1o0cb84xMV9DpY83Vhv+cM9V+g7zPfRgp9YIPUeL0jfItqkH7s4A2Xmt33/ifu+T1M979E6izvzeARyTJNmAx/qudLWVh6odGgknO3SSwMqCrdOqdz8pVi6+ton+V3iy4M4GNg9+CrogrvDqOx5fQKaj09RuW8GfyTEf0ZzBBTerA6IBeYoM1Y/3npHGYnC0+mBiegEBJqyKdAUwfKz7nJrM6FkmkiHJEbyjY5YHPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O7C6EyCXbISGZK2O27GZAr4wmmnDzD5Q/e0gTVt/jXs=;
 b=QmS0cqYv7mBZHwSZISrGO7NP+PvRN+XikhjqUcCzgyXNQsuukvnSfOv7yGkxYJLWGfBuWGHdTfHVtOpCUSOvvK1bovjiCsIPLLZiFH3SPs6yZxsZ1N1mSTtBabfY1XLT/H6UZdqNWCd9n0I4mHaELkXEewBV6arZWHJg+uh5Agmzw8yrGw5PeGE1+OTp3t0H0oQSakVYB09/5JU0uCDDu0r5AU83JX4UobenwAI5i4oSAW86X6eRyiI8FupKNc5ncGA8xyQIFWXK9iIDPds84XGRvbc3ssq5LbYb2yjwmP0sLqi8dYR3ngSKTq7YPgi6GxvJYNaA6A8PAZOyJHgmhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ohio.edu; dmarc=pass action=none header.from=ohio.edu;
 dkim=pass header.d=ohio.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ohio.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7C6EyCXbISGZK2O27GZAr4wmmnDzD5Q/e0gTVt/jXs=;
 b=q6gLqO1mUwF5sNWHpX96fU2ndvW2JUxn1ZXXPV2+5TLYfQLktbNOgtI26/YMTVUyWrNXAjnIoF+abwgo9aXyGbDtFdZaa2KzJ7Bhno+ZJeSyG4oM/mlSpWbIf/gZFLpxW4UzwwHzSPPPHkC9e0RxcxMGmWS14Lmtnh0XEPnJP8Y=
Received: from CH0PR01MB7050.prod.exchangelabs.com (2603:10b6:610:10b::24) by
 BL1PR01MB7531.prod.exchangelabs.com (2603:10b6:208:386::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.12; Wed, 7 Sep 2022 15:17:42 +0000
Received: from CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::84e4:b458:d933:fb0a]) by CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::84e4:b458:d933:fb0a%5]) with mapi id 15.20.5612.014; Wed, 7 Sep 2022
 15:17:42 +0000
From: "McKnight, Ryan" <rm249114@ohio.edu>
To: "perper@o2.pl" <perper@o2.pl>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [External] [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
Thread-Index: AQHYwsh4hg0+e2I3rESbduQwte0om63UEikQ
Date: Wed, 7 Sep 2022 15:17:42 +0000
Message-ID: 
 <CH0PR01MB7050A6321912A3A8F6D8DF2AB5419@CH0PR01MB7050.prod.exchangelabs.com>
References: 5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8@lists.ettus.com
 <1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA@lists.ettus.com>
In-Reply-To: <1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ohio.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR01MB7050:EE_|BL1PR01MB7531:EE_
x-ms-office365-filtering-correlation-id: fa153da9-0cc2-4720-0b1b-08da90e41c16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OuOFBlXnAAKUxaGzJoZXZmRaopxrUVZHI4174GaPbZTS4UxPxkFi+1caAonX2qMn6/eGcR7f4DcvbH99MpkxEn14Njwlm7om9ogMeDf0EZQkG3lcA311SJcurAFqv94RMngd6rYXDF2uN+/j+UNDiw1kzddGREbh9y0L5FRDc/cesK25F7Hv3gcyPCy+McKK2WGnqvFrU+rS4NzspKRWYJvQvfdVIyD2NVaeYz889LE+z60UTmv47I56QPrfZM/+BBdYjsrgfEHJsiGNaZ2vH7cirvkCLb7kzX7eJbDh3bJJemC6/DyMtS/88gXtE4YeTE1lDlEGcP57hSVT1PdxfiEnihK0v9LqAMtoovk5xo8ghsOhwGfrPkSHkT+52Q9/zdHKnqwjiqk4Ll4JMkXUrOTZOgUTrOobmFSNzpGWL8BEPBg0NKx1TnEzUI8io/EsLozCJPZAfiR1Xyg8ZdgLXC1NYY6HC2MfcDewPnAseVEsHw8c4/dqKpq4/G85kd6Vxcc/3XDqn9IaBm/Jyf+uTpVSCwsigzSpxG6ppMEUz1FrGcczeI5i/+EvuzYnzLOeP3Bp49Qr5IB2ypxoQ6CNXQvnE9maF/qnraHuYQkAqkqZWWiUkYs8JzRjryXhytLpOPdEDZkf3+//xgNn5unQFeIYjp+fwHR8HJHrkQYCZjJMAI+vQzwlQjjSSkGQxqHlPk3O5X21NoqCtlBeGpUE3KitlFv/QtOUwc27yClQQLQ0Tfn5RElA+v/7rWK9GuFsyw5ptg+KBypbNVzcnouFJg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR01MB7050.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(6506007)(41300700001)(71200400001)(38070700005)(7696005)(9686003)(26005)(66946007)(2906002)(66476007)(66446008)(66556008)(76116006)(55016003)(478600001)(33656002)(86362001)(75432002)(110136005)(786003)(53546011)(316002)(122000001)(38100700002)(186003)(64756008)(5660300002)(8676002)(8936002)(52536014)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VFgzbHZyQjNuRVkwWmhGQXhQZFllbnFpdzlYLzROSjdQaXFUaUkzaE5rRm0z?=
 =?utf-8?B?czRPYUlubXJwZjFkYzhFM1MxTWFXWERNYlFvUVByRUM3ZGpSSHY4V0RwZ2tr?=
 =?utf-8?B?YXpOUHcwalQyakRJT21lamhrcVlLbVVJVE85SGxvZ2N1LzYzQ0ZTVnhHUm5u?=
 =?utf-8?B?dEE4NG5tektneDFOSXhWZW94bHJaSTlrYVpNQVdvb2V2bXI2czVOL2lvVTJB?=
 =?utf-8?B?UkdQU3NYQTAyRTBtQjd5VWhpNFplTkc0OFlCZVF6TG9JY1A0SzgzR01DVkZW?=
 =?utf-8?B?YnpNS094WHcyd1VzakVEU2owS0tQSWdyN3ZXL1RZaEtwblpXQmpUdHRiYm5D?=
 =?utf-8?B?UnpNSUVJNDBoSkthSWVQdWlKa256Z0tLeXVZcTFoQzYzSzR3OS9NaXdrRTNK?=
 =?utf-8?B?SGwzRHpKUUpQV3l3Zi9yVzRRQ3VrTXB6cGN3RzdmazAwR0dJR0JBdFJSNDdU?=
 =?utf-8?B?UGZvMGpLdDRRbitja2JtQmxMa1lUVVBuK29WcHk0enZmODVIYjQxTEhId1dz?=
 =?utf-8?B?VnlnYVdiRVZ4VFRPVXRmN3dkbjBORXdGQXdMYWhNK2NlbjFaeVh3bEw5YitZ?=
 =?utf-8?B?dS9hZmcyWGJ5WUJacEJabVc3Q0MwNCtSVXRCSEd4SkwycEtEbklqWUdsNGtH?=
 =?utf-8?B?TEtvR0l3ZDVZd2ZkZXFYNFhkbWh0eFJ0VUlscS85dlNKRENveEl1M3cyV1Zl?=
 =?utf-8?B?U2h4TkloaS8zU3dob0JQSVFGbVo5N0JQb1pFTmNUOUlEbDB2cjdrVHRNeHN5?=
 =?utf-8?B?b3VYYXdQdy9XU2JlaThVNGJSNlVyNzIyamJkNkJ2KzRBTzJreXVTeEw0YkFo?=
 =?utf-8?B?cUlDWUdSRkxFcnh5RWszRzI2K0svZXQ1VURHblVKblMzbEdnc05mUXpiZjd5?=
 =?utf-8?B?eTRjeVMxSjF3SEhFbFFRSnBFR2VLSDBiZDZJWlpEaFNqUFpmWnlPNENEdXFa?=
 =?utf-8?B?ZklYNUFiaUczZTk5SGVRcEN4VFRuMXFNOUxIMGtaVmQxclRmWlJ0OVNKaW5y?=
 =?utf-8?B?V0xMcmc5dGt2R3pzR2tSeU1jYVRYRk9DTzJycmJOa1RsSjRJbjJXeG5HTGJk?=
 =?utf-8?B?bDNnZCtRRnpTOXZnUy8zaitYSVl0WDhoT2dkUmpkQ296T3FYMlBZTUpCSCtI?=
 =?utf-8?B?cU1FV1Y5MkgyM0UvWU5Nd3lFSU9lR3VLaC9NVGhselFWYkl4UjIxemo5UVJv?=
 =?utf-8?B?SmUwUk8yK0c4U1Uzb2syQWEzV3lKdmMxYXdMRGRLUGZSaVJkRkRmT21nZzNm?=
 =?utf-8?B?M1ZUVHpwK003d0ltODd1MXB5QVIxNGdxamFyaU5vQnVhVjBuNGlvNnd5NDRN?=
 =?utf-8?B?amRLSVJVSW1WeXRUMmdQQklVNnBRK1l5NEdhVjdTZUl6TUdHakh3WlpadXBt?=
 =?utf-8?B?QVZISkNxeW9veHZkM3AreHdzeWxkUERzQmhCKzh1MHQ4L2NXdzZzNHhDMjdy?=
 =?utf-8?B?ZzBLRmxCcEVJWUtIQnFXTFd4aGVwbFJTZ2NpR1phMW9kbVJEV0o0VE5IdWsw?=
 =?utf-8?B?ZW0zWldCTUxQVENSZ1ZDRnpiMWszdkdqbUFFWms1Vkl2MmU1bUYvN0Z2Unc3?=
 =?utf-8?B?L1JzKzBqa3lFM2U2VysyY08wOFVuTUZFUElWWnFod0RTelNRd1BadVorQ0I4?=
 =?utf-8?B?bUg3YXJaK2NKQnY1MGpkZ2RBK2d0SVlYNFE0NjJROSsrRnV3WEJFS1pEM1Iw?=
 =?utf-8?B?NG42bWFEVUQ1dWJ0R0RpK3RwMXFkK3ZuUUNDUVhsaVNjVmdTaTdzeVpKTU5S?=
 =?utf-8?B?cXhRMjhUd3Y1aXRubXFYQjcvbjdwZ2tzY2QyVVdPa3BDZnkwVHd4MC9mUWFV?=
 =?utf-8?B?KzYzYUx3Z1RqYi9Xb0g4TVEvNjJQaW1GSjBuSUUrL25neU1Oc3c4SlF2aGxM?=
 =?utf-8?B?NXNhYWwvR0U4Zmg4NkU2bHFrSWhlYlJYNlRmOEIxdlpWbHN4N2gyRjk0Z0NG?=
 =?utf-8?B?WnBsZWprdHhMMWdsSVowdXQvV0xRYnR0a2VZa0Zrb0RPM2FkVmQzRVlaYjFz?=
 =?utf-8?B?SDNlcGlQbEVJT283UXZpdUpqYy8rVFU1bS8vOWtRU3pVOTBjQVZKSkNxeVMy?=
 =?utf-8?B?S2JSQnM5Um80RkRWUjJuQ2dPb3ZSTkExMFJYaEM3dk8rVGF2cHErbDU2d3JP?=
 =?utf-8?Q?KEi+TKTF3HTCYzARe+Rcc2yRr?=
MIME-Version: 1.0
X-OriginatorOrg: ohio.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR01MB7050.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa153da9-0cc2-4720-0b1b-08da90e41c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2022 15:17:42.4027
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f3308007-477c-4a70-8889-34611817c55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cPC+2dHgoBw44zHA/0sgg8BuJuaNfqIAUUQb9iIXt4EbCqxdhrBKGctK/7H4NOaz4vr3kY7utkCxrRBwe9sAPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR01MB7531
Message-ID-Hash: WACBQX666IJTFWC5ZWSFO4A2SH6DNKCY
X-Message-ID-Hash: WACBQX666IJTFWC5ZWSFO4A2SH6DNKCY
X-MailFrom: rm249114@ohio.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/25FYIC4PQCQNAQCJLC2U4ZEIYPUW54QX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6242532641620964307=="

--===============6242532641620964307==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR01MB7050A6321912A3A8F6D8DF2AB5419CH0PR01MB7050prod_"

--_000_CH0PR01MB7050A6321912A3A8F6D8DF2AB5419CH0PR01MB7050prod_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGZvdW5kIGFmdGVyIG11Y2ggdHJpYWwgYW5kIGVycm9yIHRoYXQgYWRkaW5nIHRoZSBh
cmd1bWVudHMg4oCccmVjdl9mcmFtZV9zaXplPTgwMDAsbnVtX3JlY3ZfZnJhbWVzPTUxMuKAnSB0
byB0aGUgZGV2aWNlIHN0cmluZyBhbGxvd3MgZm9yIG1lIHRvIHNhbXBsZSBhdCB0aGUgZnVsbCA1
NiBNc3BzIHJhdGUgb24gdGhlIEIgc2VyaWVzIGRldmljZXMgd2l0aG91dCBhbnkgb3ZlcnJ1bnMg
KHRlc3RlZCB1c2luZyBVSEQgNC4yLjAuMSBvbiBib3RoIERlYmlhbiAxMSBhbmQgQXJjaCBMaW51
eCBvbiB2YXJpb3VzIGNvbXB1dGVycykuIEkgaGF2ZW7igJl0IHRyaWVkIHRyYW5zbWl0dGluZyBh
dCBhbGwgdGhvdWdoIHNvIG5vdCBzdXJlIGlmIHRoZXJlIGFyZSBiZXR0ZXIgYXJndW1lbnRzIGZv
ciB0aGF0LiBPbmUgYWRkaXRpb25hbCB0aGluZyB0byBkb3VibGUgY2hlY2sgZm9yIGlzIHRoYXQg
eW91ciBkZXZpY2UgaXMgYWN0dWFsbHkgY29ubmVjdGluZyB1c2luZyBVU0IgMy4wLCBJIGhhdmUg
Zm91bmQgYSBzdXJwcmlzaW5nIGFtb3VudCBvZiBiYWQgVVNCMyBjYWJsZXMgdGhhdCB3b3VsZCBv
bmx5IGxpbmsgdXAgYXQgVVNCMiBzcGVlZHMgKGNoZWNrIHVzaW5nIOKAnHN1ZG8gbHN1c2IgLXR2
4oCdIGFmdGVyIHJ1bm5pbmcgdWhkX3VzcnBfcHJvYmUgdG8gbG9hZCBmaXJtd2FyZSBvbnRvIHRo
ZSBkZXZpY2UsIHNob3VsZCBzaG93IHNwZWVkIG9mIDUwMDBNKS4NCg0KRnJvbTogcGVycGVyQG8y
LnBsIDxwZXJwZXJAbzIucGw+DQpTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciA3LCAyMDIyIDEw
OjMxIEFNDQpUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NClN1YmplY3Q6IFtFeHRlcm5h
bF0gW1VTUlAtdXNlcnNdIFJlOiBCMjEwIHJlcG9ydGluZyBVL08gb24gVWJ1bnR1IDIyLjA0DQoN
ClVzZSBjYXV0aW9uIHdpdGggbGlua3MgYW5kIGF0dGFjaG1lbnRzLg0KDQpwZXJwZXJAbzIucGw8
bWFpbHRvOnBlcnBlckBvMi5wbD4gd3JvdGU6DQoNCnBlcnBlckBvMi5wbDxtYWlsdG86cGVycGVy
QG8yLnBsPiB3cm90ZToNCg0KSGksDQoNCkkgY2FuIG9ubHkgY29uZmlybSB0aGF0IEkgc2VlIHRo
ZSBzYW1lIHJlc3VsdDogMjRNSHogaXMgd29ya2luZywgc3RhcnRpbmcgZnJvbSBhYm91dCAyNC41
TUh6IHRoZXJl4oCZcyBhIGxvdCBvZiB1bmRlcnJ1bnMuDQoNCk15IENQVTogQU1EIFJ5emVuIFRo
cmVhZHJpcHBlciAyOTkwV1gsIDEyOEdCIFJBTSwgbW90aGVyYm9hcmQgQXN1cyBYMzk5Lg0KDQri
gKYgYW5kIHRoZSBzeXN0ZW0gaXMgVWJ1bnR1IDIwLjA0IHdpdGggVUhEIDQuMi4wLjEuDQoNCkJ1
dCB3aXRoIFVIRCA0LjEuMC42IHRoZXJlIHNpdHVhdGlvbiBpcyBleGFjdGx5IHRoZSBzYW1lIChu
b3Qgd29ya2luZyBmb3IgPj0gMjQuNU0pLCBzbyBpZiB5b3XigJl2ZSBnb3QgaXQgc29tZXdoZXJl
IHdvcmtpbmcgaXQgd291bGQgYmUgd29ydGggc2hhcmluZzoNCi0geW91ciBleGFjdCBVSEQgcmV2
aXNpb24sDQotIHNwZWNzIG9mIHlvdXIgUEMuDQoNCkJlc3QgUmVnYXJkcywNClBpb3RyIEtyeXNp
aw0K

--_000_CH0PR01MB7050A6321912A3A8F6D8DF2AB5419CH0PR01MB7050prod_
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
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOA0KCXttc28tc3R5bGUtdHlwZTpwZXJz
b25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3
aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4g
MTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rp
b24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDld
Pjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0K
PC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91
dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpz
aGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVT
IiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13
b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5J
IGhhdmUgZm91bmQgYWZ0ZXIgbXVjaCB0cmlhbCBhbmQgZXJyb3IgdGhhdCBhZGRpbmcgdGhlIGFy
Z3VtZW50cyDigJxyZWN2X2ZyYW1lX3NpemU9ODAwMCxudW1fcmVjdl9mcmFtZXM9NTEy4oCdIHRv
IHRoZSBkZXZpY2Ugc3RyaW5nIGFsbG93cyBmb3IgbWUgdG8gc2FtcGxlIGF0IHRoZSBmdWxsIDU2
IE1zcHMgcmF0ZSBvbiB0aGUgQiBzZXJpZXMgZGV2aWNlcyB3aXRob3V0IGFueSBvdmVycnVucyAo
dGVzdGVkIHVzaW5nDQogVUhEIDQuMi4wLjEgb24gYm90aCBEZWJpYW4gMTEgYW5kIEFyY2ggTGlu
dXggb24gdmFyaW91cyBjb21wdXRlcnMpLiBJIGhhdmVu4oCZdCB0cmllZCB0cmFuc21pdHRpbmcg
YXQgYWxsIHRob3VnaCBzbyBub3Qgc3VyZSBpZiB0aGVyZSBhcmUgYmV0dGVyIGFyZ3VtZW50cyBm
b3IgdGhhdC4gT25lIGFkZGl0aW9uYWwgdGhpbmcgdG8gZG91YmxlIGNoZWNrIGZvciBpcyB0aGF0
IHlvdXIgZGV2aWNlIGlzIGFjdHVhbGx5IGNvbm5lY3RpbmcgdXNpbmcgVVNCDQogMy4wLCBJIGhh
dmUgZm91bmQgYSBzdXJwcmlzaW5nIGFtb3VudCBvZiBiYWQgVVNCMyBjYWJsZXMgdGhhdCB3b3Vs
ZCBvbmx5IGxpbmsgdXAgYXQgVVNCMiBzcGVlZHMgKGNoZWNrIHVzaW5nIOKAnHN1ZG8gbHN1c2Ig
LXR24oCdIGFmdGVyIHJ1bm5pbmcgdWhkX3VzcnBfcHJvYmUgdG8gbG9hZCBmaXJtd2FyZSBvbnRv
IHRoZSBkZXZpY2UsIHNob3VsZCBzaG93IHNwZWVkIG9mIDUwMDBNKS48bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXYg
c3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5n
OjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiBw
ZXJwZXJAbzIucGwgJmx0O3BlcnBlckBvMi5wbCZndDsgPGJyPg0KPGI+U2VudDo8L2I+IFdlZG5l
c2RheSwgU2VwdGVtYmVyIDcsIDIwMjIgMTA6MzEgQU08YnI+DQo8Yj5Ubzo8L2I+IHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPGJyPg0KPGI+U3ViamVjdDo8L2I+IFtFeHRlcm5hbF0gW1VTUlAt
dXNlcnNdIFJlOiBCMjEwIHJlcG9ydGluZyBVL08gb24gVWJ1bnR1IDIyLjA0PG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCAjRkNEMTQ2
IDQuNXB0O3BhZGRpbmc6MGluIDBpbiAwaW4gOC4wcHQ7bWFyZ2luLXRvcDo3LjVwdDttYXJnaW4t
Ym90dG9tOjcuNXB0O2N1cnNvcjpkZWZhdWx0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJiYWNrZ3JvdW5kOiNGREZBRTciPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6YmxhY2siPlVzZSBj
YXV0aW9uIHdpdGggbGlua3MgYW5kIGF0dGFjaG1lbnRzLjwvc3Bhbj48L2I+PG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cD48YSBocmVmPSJtYWlsdG86cGVycGVyQG8yLnBsIj5wZXJw
ZXJAbzIucGw8L2E+IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJsb2NrcXVvdGUgc3R5bGU9Im1h
cmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8cD48YSBocmVmPSJtYWlsdG86
cGVycGVyQG8yLnBsIj5wZXJwZXJAbzIucGw8L2E+IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJs
b2NrcXVvdGUgc3R5bGU9Im1hcmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8
cD5IaSw8bzpwPjwvbzpwPjwvcD4NCjxwPkkgY2FuIG9ubHkgY29uZmlybSB0aGF0IEkgc2VlIHRo
ZSBzYW1lIHJlc3VsdDogMjRNSHogaXMgd29ya2luZywgc3RhcnRpbmcgZnJvbSBhYm91dCAyNC41
TUh6IHRoZXJl4oCZcyBhIGxvdCBvZiB1bmRlcnJ1bnMuPG86cD48L286cD48L3A+DQo8cD5NeSBD
UFU6IEFNRCBSeXplbiBUaHJlYWRyaXBwZXIgMjk5MFdYLCAxMjhHQiBSQU0sIG1vdGhlcmJvYXJk
IEFzdXMgWDM5OS48bzpwPjwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxwPuKApiBhbmQgdGhl
IHN5c3RlbSBpcyBVYnVudHUgMjAuMDQgd2l0aCBVSEQgNC4yLjAuMS48bzpwPjwvbzpwPjwvcD4N
CjwvYmxvY2txdW90ZT4NCjxwPkJ1dCB3aXRoIFVIRCA0LjEuMC42IHRoZXJlIHNpdHVhdGlvbiBp
cyBleGFjdGx5IHRoZSBzYW1lIChub3Qgd29ya2luZyBmb3IgJmd0Oz0gMjQuNU0pLCBzbyBpZiB5
b3XigJl2ZSBnb3QgaXQgc29tZXdoZXJlIHdvcmtpbmcgaXQgd291bGQgYmUgd29ydGggc2hhcmlu
Zzo8YnI+DQotIHlvdXIgZXhhY3QgVUhEIHJldmlzaW9uLDxicj4NCi0gc3BlY3Mgb2YgeW91ciBQ
Qy48bzpwPjwvbzpwPjwvcD4NCjxwPkJlc3QgUmVnYXJkcyw8YnI+DQpQaW90ciBLcnlzaWs8bzpw
PjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_CH0PR01MB7050A6321912A3A8F6D8DF2AB5419CH0PR01MB7050prod_--

--===============6242532641620964307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6242532641620964307==--
