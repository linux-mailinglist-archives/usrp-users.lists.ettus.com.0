Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78295383D73
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 21:31:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9ECC3843C9
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 15:31:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="osq06FmP";
	dkim-atps=neutral
Received: from smtpvbsrv1.mitre.org (smtpvbsrv1.mitre.org [198.49.146.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 602783844F4
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 15:30:56 -0400 (EDT)
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id E3F43B2E012;
	Mon, 17 May 2021 15:30:55 -0400 (EDT)
Received: from smtprhbv1.mitre.org (unknown [10.20.0.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id D53CB36E008;
	Mon, 17 May 2021 15:30:54 -0400 (EDT)
Received: from mbfesmtp-mgt.mitre.org (unknown [198.49.146.235])
	by smtprhbv1.mitre.org (Postfix) with ESMTP id C525480B0FD;
	Mon, 17 May 2021 15:30:54 -0400 (EDT)
Received: by mbfesmtp-mgt.mitre.org (Postfix, from userid 600)
	id 4FkTkk5f4lz3D45r; Mon, 17 May 2021 19:26:18 +0000 (UTC)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2102.outbound.protection.outlook.com [104.47.65.102])
	by mbfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 4FkTdL378Yz3D4B2;
	Mon, 17 May 2021 19:26:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpxKn+a5xl6AR4A1H8swjaCb+J6roL30YqmHRADub0G+93tL1M7kUFOCwqq/okdSjq7Gr3hqM1T99+FM9DCBnSTL5xC41zEg7f/blk0ngJSs7iOA9POXWU0Jd44XwjaEiNWFBVUHdQsPYRGe++y1UB/wQPXRojLV7j2RoTKW1G7xl4hUcggXpinXplnjk9EsqHvpr5oTjMFU9t7Hww8uk+Nb0TYOFOZxmRHYGcae96SdCQytLSy+K5BGAjcomLRDQAQG8olScaaOq6EZVLvPo2KOOryj6WLRlw/O6nae3F5lM/UnUAgw10ssGqivsKVBhjBEDVOAYlTr8kAMab33xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKxHUM0fMJcMaMImXc2Zuk3i9kJHUL7Cd6WZb+UJsWQ=;
 b=ZYYoROjoS3QMKg3yEYzI6r9Lh69bOlXH9CR/K7McCEZ8l+3XBpwEjp1lkpYynEXjummT0Gw0AIkapzrltyJT8osxXrwd1pJdJKwRsJZpRUNYEQJZSThrv8iUsaHuDx8x9wKfYf5c/eiBwvrkKQqTkUNmOyCW0eUOoqtpP5uTfKhzoPxLtbK8tHpwioXnVRc1n8f+ixxXjhA9Sa3oZVb3+DZ8RvcHyYdDw7eIT8gH0bTS0y6HGrUWOosT6sUHP7r3AJ5HyG48N5YEBOuv+RFxC+la0XQ4qNcDDHduyhQJmzszLAUi4utlx4EwriEmwy2IcR03U4lfyPzBkord3qYKpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BLAPR09MB6612.namprd09.prod.outlook.com (2603:10b6:208:2ae::11)
 by MN2PR09MB5467.namprd09.prod.outlook.com (2603:10b6:208:215::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Mon, 17 May
 2021 19:26:11 +0000
Received: from BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e]) by BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e%3]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 19:26:11 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: [EXT] Re: RFNOC block name?
Thread-Index: AQHXSd5GBee4biEifUuNWFYlEY/bVqrnuMuAgAALo9CAAASzgIAARyHw
Date: Mon, 17 May 2021 19:26:10 +0000
Message-ID: 
 <BLAPR09MB6612DADB556A90C75E7DD759D92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
References: 
 <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK521Vi5zDzxbkCLdMAVdgBcEoXM1yBXy7seMW=XcPtzbw@mail.gmail.com>
 <BLAPR09MB6612A8E6DC947A10BE0A2093D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <BLAPR09MB6612D72CDEB494129FE5AAD3D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK6cSejKZkr40v6BUeta1mPfGyfOtwE8-62p_PCTdSqxhw@mail.gmail.com>
 <BLAPR09MB66129186B794ACF02B0AF7F0D92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK6qk-Q3xCysSry75SxH-UzL4tB7V=xjaunWWNK3XmGYzw@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK6qk-Q3xCysSry75SxH-UzL4tB7V=xjaunWWNK3XmGYzw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=mitre.org;
x-originating-ip: [192.160.51.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 569cfc3a-000b-4567-f805-08d91969a0d6
x-ms-traffictypediagnostic: MN2PR09MB5467:
x-microsoft-antispam-prvs: 
 <MN2PR09MB5467D234C749CCBE070AB377D92D9@MN2PR09MB5467.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bP/I71jVTPi8UELX9i61T0qg4DNj0oAZ+ov01Eat+P8QB3yV0KnckWFBO9aM1GPd8CFPezb7Sddxyc1pEXUqa1WT/SZHOBBrnX7DrMnqcB0jSAbehNqgBXryWaZkO47tuTyjY+24qsZ79nZnb6P+biop1HaDnSlu/YnlfTyND4bwx+QF0uv/Mv//9pMWQZ3EXu/Mn9esnsdvta9tSXEP1CTsDuSTVChZ00IloaHdNB5sOc3VKOFwm5XNaSDQASZkQt0jcoYRKxJ+idFEiNu0+DpLMnBHFPj9M1WkgNmtJLO6oPADezN1Wvfb/2PK6RGMSE8VBLf5KfKV1uJTy5TVax4NCqkrdPTRgGfYwO/txDTZuM445FyKYU5S+0OdAblO7vtaeUw6sJHI59n93uLMsudQGsKp8mvHJNYMO26QKpoPmGU42Sja0+VB7nYJffZRwigiqVcTYM1Ou03XLFWvyzCn5UCIwYbN8q2k07dpUrphZ7rQekJnXI0zi+W80njOdBYm+MROjB+2YB7rnyp+IKoJYkOsDMKMAOHgndrYOR4RTTNQfTiT5cFAhPg4IrDdm79ek06j3/spTyqocgqmVgSbSA2lVwx9JKCqeRcKNYQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB6612.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(346002)(136003)(39850400004)(396003)(52536014)(76116006)(71200400001)(86362001)(7696005)(4326008)(83380400001)(66446008)(64756008)(33656002)(66946007)(122000001)(6506007)(6916009)(53546011)(478600001)(2906002)(8936002)(8676002)(55016002)(316002)(9686003)(186003)(66556008)(66476007)(26005)(38100700002)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?bnlqZnZtb2psZkVoOG80WUtIMHVNUFFoSWdacS95NU9yTFAyczNmRFFxbTEr?=
 =?utf-8?B?NUhLMWRWZWZ3ZklXeVFsTExjc1kzejhTTnc4a2s1QjB5YVA5N0p3TTJRUHE1?=
 =?utf-8?B?ZkM4ODZJWFhZOXZQcGY1K2F6MlVZVjlrUTJxS0FqWFdwVlNlV1UwWWMxUWxK?=
 =?utf-8?B?Y01LeXRkaXlTWngxQlVZSk14b3RCeEpORmp1TFRMR05mdXBBNDVsWEtZQjR6?=
 =?utf-8?B?NVJab0dxUWNnT3ZHWk8wWmxpaENuakJmLzRjMEw3UjhXWXpCKzc2UFZjOEZQ?=
 =?utf-8?B?ajAzM1FXd1JUdXkxSXBUaHFvdGxHRVp0NEtJeWQreVphS1UrZXNZVlREbnFy?=
 =?utf-8?B?TTA4dGVJMlcrYUxkZHB5QURzY01PdW9mMExQQ3Z3M3FJS1ZaRldpTXJlZFFi?=
 =?utf-8?B?NW9Ga29sZ0oxMDRsMnduWXV0ZTJkd241V0VUa041YWJ1N29QRmM0QTNxdlVX?=
 =?utf-8?B?ZDRlNUZCVFJ2Q2tiUlpNRm1yZGFKYnVQS3g1WEdhcXdwL0xqY01DcFBDMWpj?=
 =?utf-8?B?NjE1ZmNoZHJiU2lzeWRneGlPbHBJeXhGZ3NJbFJuUVp0d0dJQnY1aUFhOVJG?=
 =?utf-8?B?d0ozZ0lSV0hmWjBzdndIVEZ6eTRBODhHc0swZGpuTjUwZ1lhSDIrZDJVUkVT?=
 =?utf-8?B?dHoxVm1CbFNmcER6R0I0YnlReXgrYUVSaTlZSWFZd2VtdUFCS1JkRWd0UGtB?=
 =?utf-8?B?WHlUOEZnaFRZNks0RGFQUXd4bWttSlhrR2xoZXUyakdTVGtxYTZtZVJudXlp?=
 =?utf-8?B?Q2ozWk9NVm42cmtiZUdJL25qYmdDL2w2cU9qMjAxTHd4Tm5HdnEzVlliT2Nj?=
 =?utf-8?B?WkhVTDRXRGQvTlY2ZU1aUjZTSnlTM2s1NlU5NUhSSUV4c2Y4SGhYWXpFaDlD?=
 =?utf-8?B?TjIyTjk1NXJMTE5laXhkeXZrVEw5TjBaTUhRQU54TGllMGFZMlNTellwTGRz?=
 =?utf-8?B?dFhhdG9WczF4QjlPZDlSZ2orN1Z0WFFZRE5iNGM3cmZ0VjQrL1dlZUE5cnc3?=
 =?utf-8?B?cUFNNFNTd05Sb3FHMnVUNmNQVDBYdk0vbUJ3bE1LNFJZTnB5cEtISHhKTzVW?=
 =?utf-8?B?WVI4UmxuSWM0aTR1NTMwakp5R3BzL210TUFveS9ZNkg5NTZRUk1wWFBmQmts?=
 =?utf-8?B?YWJBS3hlVGw2VEY2REorb0ZSV29VQytVV3VLdUlWdlhmRmk3clN4clBFOEMw?=
 =?utf-8?B?VUFPeUYxS2lHT253TGhYbWhYMFI1MUlXWEFzQmNVTGRmK0lkK1JTd1dmSTd6?=
 =?utf-8?B?ZXY3L2VYeGpmYkx5ZUlIT29TSitkZkFpblJMUXhQUFhmVWVYclZjMDQydDNu?=
 =?utf-8?B?cDkva01BV1JQSWt5R0tJMUVyTWZheVBJaWFCaEpvTDYrdjR2SjZJMzdXSjhP?=
 =?utf-8?B?cXFmY3dtczV4czRQb1A1Y1FzR1A2VWJtNGd0L2lxZFk4RkxxZGtjNzVyWnVE?=
 =?utf-8?B?L2owMFVGVyt0Tk9qYVNHdTYxeUY4eXE5K1JTWHJXRXhUWmNVRm0rM0dMZWZN?=
 =?utf-8?B?UjJaVEJjVXdFQktnbFE3dTBNUkpmMldHcnZ0dEpMNTFwS2xBRzhsSG5MUEFB?=
 =?utf-8?B?OHhGajY5Zzd6d0dybTZmVWdnRVhPdmFlQmxQYlJyc0tWNXJxdjgwSUFmbUhR?=
 =?utf-8?B?TEllc0NkV3cvZ2dDRHYrYnBmV05TNVF0NlBac1dEZlpURjJTY0ZlM0w1a1k4?=
 =?utf-8?B?TU8xK2VyL3RjR0taTmxKcXYxRjg0SmdQRjdERXRtb3Nyam1qUGtXOFUwVS9p?=
 =?utf-8?Q?+Ic+olxGsjA8GVqyb7VKNFG844Z5fVBjM2DSeyi?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB6612.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 569cfc3a-000b-4567-f805-08d91969a0d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 19:26:10.9004
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB5467
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=BTxNELhf; bh=eKxHUM0fMJcMaMImXc2Zuk3i9kJHUL7Cd6WZb+UJsWQ=; b=osq06FmPM0Pkzm6j6uouj27DZJ7PzCK37RyyF/zeSg1t3RgFSYuoIkYvFnnpWBTRZy6cXnd5uRpCyR85ItfAFkyLpUwESeaJp8zR01+pQwveK720gF4T6kb5NqlyVPxxCd+Z/T81VOfn0PsYxiH0hF4xa+ZYkayrjwwwdGe/nC8=
Message-ID-Hash: 7CVBH7UQ2YZ4WJ6ULQL63337BB75AW2J
X-Message-ID-Hash: 7CVBH7UQ2YZ4WJ6ULQL63337BB75AW2J
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6J67UBB7YQTHR2PWT775GEEIFIF2TCZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2455340117993536247=="

--===============2455340117993536247==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB6612DADB556A90C75E7DD759D92D9BLAPR09MB6612namp_"

--_000_BLAPR09MB6612DADB556A90C75E7DD759D92D9BLAPR09MB6612namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnJpYW4tDQoNCkFzIEkgbWVudGlvbmVkIEkgaGF2ZSBub3QgZ29uZSBiYWNrIHRvIHRoZSBlbWJl
ZGRlZCBtb2RlIGFuZCBoYXZlIGJlZW4gcnVubmluZyBpbiBuZXR3b3JrIG1vZGUuIFNpbmNlIEkg
YW0gYnVpbGRpbmcgZGlyZWN0bHkgb24gdGhlIHg4NiBtYWNoaW5lIEkganVzdCBtYWtlIGluc3Rh
bGwgaXQgYW5kIGV2ZXJ5dGhpbmcgc2VlbXMgdG8gYmUgZmluZS4gQXJlIHlvdSBzYXlpbmcgdGhh
dCBpZiBJIGFsc28gc2V0IHRoYXQgdmFyaWFibGUgZXZlbiBpbiBuZXR3b3JrIG1vZGUgSSBzaG91
bGQgc2VlIHRoZSBjb3JyZWN0IGJsb2NrIG5hbWUgY29tZSB1cD8gSSBjYW4gdHJ5IHRoYXQgaW4g
YSBsaXR0bGUgYml0Lg0KDQpUaGFua3MNCkplZmYNCg0KRnJvbTogQnJpYW4gUGFkYWxpbm8gPGJw
YWRhbGlub0BnbWFpbC5jb20+DQpTZW50OiBNb25kYXksIE1heSAxNywgMjAyMSAxMTowOCBBTQ0K
VG86IEplZmZyZXkgUCBMb25nIDxqcGxvbmdAbWl0cmUub3JnPg0KQ2M6IHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQpTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFJlOiBbRVhUXSBSZTogUkZO
T0MgYmxvY2sgbmFtZT8NCg0KT24gTW9uLCBNYXkgMTcsIDIwMjEgYXQgMTE6MDQgQU0gSmVmZnJl
eSBQIExvbmcgPGpwbG9uZ0BtaXRyZS5vcmc8bWFpbHRvOmpwbG9uZ0BtaXRyZS5vcmc+PiB3cm90
ZToNCkJyaWFuLQ0KDQpJIHRoaW5rIEkgYW0gZ2V0dGluZyBjbG9zZXIgaGVyZS4gSSBhY3R1YWxs
eSBqdXN0IHdlbnQgYmFjayB0byB1c2luZyBuZXR3b3JrIG1vZGUgc28gSSBjb3VsZCBkZWJ1ZyBt
eSBpc3N1ZXMgd2l0aG91dCB0aGUgZXh0cmEgY2hhbGxlbmdlIG9mIHRoZSBjcm9zc2Rldi4gVGhh
dCBpcyBhIHJlYWwgbmljZSB0aGluZyBhYm91dCB0aGUgRTMyMC4NCg0KU28gSSB0aGluayB0aGUg
dXNycCBwcm9iZSB3aWxsIGFsd2F5cyBjb21lIGJhY2sgd2l0aCB0aGF0IGVycm9yIGJlY2F1c2Ug
dGhlcmUgaXMgbm8gY29udHJvbGxlciBmb3IgeW91ciBjdXN0b20gYmxvY2sgaW4gdGhhdCB1c3Jw
IHByb2JlIGNvZGUgKFNvcnJ5IG15IHRlcm1pbm9sb2d5IGlzIHByb2JhYmx5IHdyb25nIGhlcmUp
LiBBcyB5b3UgbWVudGlvbiB0aGUgZ2VuZXJpYyBuYW1lIGlzIGp1c3QgYSBmYWN0IG9mIGxpZmUg
aG93ZXZlciBJIHJlYWxseSB0aGluayB0aGUgZ2V0dGluZyBzdGFydGVkIGd1aWRlIHNob3VsZCBw
b2ludCB0aGF0IG91dCBzbyBwZW9wbGUga25vdyB3aGF0IHRvIGV4cGVjdC4gV2l0aCB0aGUgcHJv
cGVyIGJsb2NrIGNvbnRyb2xsZXIgY2FsbGVkIHdpdGggdGhlIGNvcnJlY3Qgbm9jIElEIHJlZ2lz
dGVyZWQgaXQgc2VlbXMgdG8gd29yayBub3cuDQoNCkVtYmVkZGVkIG1vZGUgc2hvdWxkIHByb2Jh
Ymx5IHdvcmsgbm93IHRvbyBob3dldmVyIEkgdGhpbmsgSSBhbSBqdXN0IGdvaW5nIHRvIGNvbnRp
bnVlIGluIG5ldHdvcmsgdGlsbCBJIGdldCBteSBjdXN0b20gZGVzaWduIGludG8gdGhlIEZQR0Eg
YW5kIHRoZW4gbW92ZSBpdCBvdmVyLg0KDQpUaGFua3MgZm9yIHlvdXIgaGVscCBvbiB0aGlzLg0K
DQpKdXN0IHRvIGJlIGNsZWFyLCB5b3Ugd2VyZSBhYmxlIHRvIHV0aWxpemUgdGhlIFVIRF9NT0RV
TEVfUEFUSCBlbnZpcm9ubWVudCB2YXJpYWJsZSB0byBwb2ludCB0byB0aGUgc2hhcmVkIGxpYnJh
cnkgaG9sZGluZyB5b3VyIGNvbnRyb2xsZXIgY29kZSBmb3IgeW91ciBjdXN0b20gYmxvY2ssIGFu
ZCB1aGRfdXNycF9wcm9iZSB3YXMgYWJsZSB0byBjb21lIGJhY2sgd2l0aCB5b3VyIGN1c3RvbSBu
YW1lIGluc3RlYWQgb2YganVzdCBCbG9jay4gIENvcnJlY3Q/DQoNClRoYW5rcywNCkJyaWFuDQo=

--_000_BLAPR09MB6612DADB556A90C75E7DD759D92D9BLAPR09MB6612namp_
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
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9u
OnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOA0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25h
bC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5k
b3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0K
CWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0K
CXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47fQ0K
ZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1b
aWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1h
eD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0K
PG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9
IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9k
eSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSIgc3R5bGU9IndvcmQtd3Jh
cDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5Ccmlhbi08bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QXMgSSBtZW50aW9uZWQgSSBo
YXZlIG5vdCBnb25lIGJhY2sgdG8gdGhlIGVtYmVkZGVkIG1vZGUgYW5kIGhhdmUgYmVlbiBydW5u
aW5nIGluIG5ldHdvcmsgbW9kZS4gU2luY2UgSSBhbSBidWlsZGluZyBkaXJlY3RseSBvbiB0aGUg
eDg2IG1hY2hpbmUgSSBqdXN0IG1ha2UgaW5zdGFsbCBpdCBhbmQgZXZlcnl0aGluZyBzZWVtcyB0
byBiZSBmaW5lLiBBcmUgeW91IHNheWluZyB0aGF0IGlmIEkgYWxzbyBzZXQgdGhhdA0KIHZhcmlh
YmxlIGV2ZW4gaW4gbmV0d29yayBtb2RlIEkgc2hvdWxkIHNlZSB0aGUgY29ycmVjdCBibG9jayBu
YW1lIGNvbWUgdXA/IEkgY2FuIHRyeSB0aGF0IGluIGEgbGl0dGxlIGJpdC48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+VGhhbmtzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5K
ZWZmPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAx
LjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxi
PkZyb206PC9iPiBCcmlhbiBQYWRhbGlubyAmbHQ7YnBhZGFsaW5vQGdtYWlsLmNvbSZndDsgPGJy
Pg0KPGI+U2VudDo8L2I+IE1vbmRheSwgTWF5IDE3LCAyMDIxIDExOjA4IEFNPGJyPg0KPGI+VG86
PC9iPiBKZWZmcmV5IFAgTG9uZyAmbHQ7anBsb25nQG1pdHJlLm9yZyZndDs8YnI+DQo8Yj5DYzo8
L2I+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBb
VVNSUC11c2Vyc10gUmU6IFtFWFRdIFJlOiBSRk5PQyBibG9jayBuYW1lPzxvOnA+PC9vOnA+PC9w
Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxk
aXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gTW9uLCBNYXkgMTcsIDIwMjEgYXQg
MTE6MDQgQU0gSmVmZnJleSBQIExvbmcgJmx0OzxhIGhyZWY9Im1haWx0bzpqcGxvbmdAbWl0cmUu
b3JnIj5qcGxvbmdAbWl0cmUub3JnPC9hPiZndDsgd3JvdGU6PG86cD48L286cD48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29s
aWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1sZWZ0OjQu
OHB0O21hcmdpbi1yaWdodDowaW4iPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
IiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1
dG8iPkJyaWFuLTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1z
by1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj4mbmJzcDs8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRv
cC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+SSB0aGluayBJIGFtIGdldHRp
bmcgY2xvc2VyIGhlcmUuIEkgYWN0dWFsbHkganVzdCB3ZW50IGJhY2sgdG8gdXNpbmcgbmV0d29y
ayBtb2RlIHNvIEkgY291bGQgZGVidWcgbXkgaXNzdWVzIHdpdGhvdXQgdGhlIGV4dHJhIGNoYWxs
ZW5nZSBvZiB0aGUgY3Jvc3NkZXYuIFRoYXQgaXMgYSByZWFsIG5pY2UgdGhpbmcNCiBhYm91dCB0
aGUgRTMyMC4gPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNv
LW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG8iPiZuYnNwOzxv
OnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9w
LWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj5TbyBJIHRoaW5rIHRoZSB1c3Jw
IHByb2JlIHdpbGwgYWx3YXlzIGNvbWUgYmFjayB3aXRoIHRoYXQgZXJyb3IgYmVjYXVzZSB0aGVy
ZSBpcyBubyBjb250cm9sbGVyIGZvciB5b3VyIGN1c3RvbSBibG9jayBpbiB0aGF0IHVzcnAgcHJv
YmUgY29kZSAoU29ycnkgbXkgdGVybWlub2xvZ3kgaXMgcHJvYmFibHkgd3JvbmcNCiBoZXJlKS4g
QXMgeW91IG1lbnRpb24gdGhlIGdlbmVyaWMgbmFtZSBpcyBqdXN0IGEgZmFjdCBvZiBsaWZlIGhv
d2V2ZXIgSSByZWFsbHkgdGhpbmsgdGhlIGdldHRpbmcgc3RhcnRlZCBndWlkZSBzaG91bGQgcG9p
bnQgdGhhdCBvdXQgc28gcGVvcGxlIGtub3cgd2hhdCB0byBleHBlY3QuIFdpdGggdGhlIHByb3Bl
ciBibG9jayBjb250cm9sbGVyIGNhbGxlZCB3aXRoIHRoZSBjb3JyZWN0IG5vYyBJRCByZWdpc3Rl
cmVkIGl0IHNlZW1zIHRvIHdvcmsNCiBub3cuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20t
YWx0OmF1dG8iPiZuYnNwOzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5
bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj5F
bWJlZGRlZCBtb2RlIHNob3VsZCBwcm9iYWJseSB3b3JrIG5vdyB0b28gaG93ZXZlciBJIHRoaW5r
IEkgYW0ganVzdCBnb2luZyB0byBjb250aW51ZSBpbiBuZXR3b3JrIHRpbGwgSSBnZXQgbXkgY3Vz
dG9tIGRlc2lnbiBpbnRvIHRoZSBGUEdBIGFuZCB0aGVuIG1vdmUgaXQgb3Zlci48bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0
bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+Jm5ic3A7PG86cD48L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdp
bi1ib3R0b20tYWx0OmF1dG8iPlRoYW5rcyBmb3IgeW91ciBoZWxwIG9uIHRoaXMuPG86cD48L286
cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+SnVzdCB0byBiZSBjbGVhciwgeW91IHdlcmUgYWJsZSB0byB1dGlsaXplIHRo
ZSBVSERfTU9EVUxFX1BBVEggZW52aXJvbm1lbnQgdmFyaWFibGUgdG8gcG9pbnQgdG8gdGhlIHNo
YXJlZCBsaWJyYXJ5IGhvbGRpbmcgeW91ciBjb250cm9sbGVyIGNvZGUgZm9yIHlvdXIgY3VzdG9t
IGJsb2NrLCBhbmQgdWhkX3VzcnBfcHJvYmUgd2FzIGFibGUgdG8gY29tZSBiYWNrIHdpdGggeW91
ciBjdXN0b20gbmFtZSBpbnN0ZWFkDQogb2YganVzdCBCbG9jay4mbmJzcDsgQ29ycmVjdD88bzpw
PjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+VGhhbmtz
LDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QnJp
YW48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_BLAPR09MB6612DADB556A90C75E7DD759D92D9BLAPR09MB6612namp_--

--===============2455340117993536247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2455340117993536247==--
