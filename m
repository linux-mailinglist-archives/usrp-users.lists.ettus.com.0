Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C71386C48
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 23:31:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E455385401
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 17:31:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="ZtBEE0P9";
	dkim-atps=neutral
Received: from smtpvmsrv1.mitre.org (smtpvmsrv1.mitre.org [192.52.194.136])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AAC438478F
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 17:30:39 -0400 (EDT)
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id F06246C0031;
	Mon, 17 May 2021 17:30:38 -0400 (EDT)
Received: from smtprhmv1.mitre.org (unknown [10.20.200.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id 9CDCA6C0006;
	Mon, 17 May 2021 17:30:38 -0400 (EDT)
Received: from mwfesmtp-mgt.mitre.org (mwfesmtp-in.mitre.org [192.52.194.235])
	by smtprhmv1.mitre.org (Postfix) with ESMTP id 815E89341D4;
	Mon, 17 May 2021 17:30:38 -0400 (EDT)
Received: by mwfesmtp-mgt.mitre.org (Postfix, from userid 600)
	id 4FkXNt3Jjcz3DZMF; Mon, 17 May 2021 21:22:35 +0000 (UTC)
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (mail-bl2gcc02lp2103.outbound.protection.outlook.com [104.47.64.103])
	by mwfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 4FkXCY6CZSz3Dc21;
	Mon, 17 May 2021 21:22:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RXC+0Ef/GX7VmvkKs7BROqG0oDhhiQd4S9QDWie+OyImoHAwlzIxXLGRBT5Xx+agx3FuAkex3lOJhvFILcWs+hq75KJfpbXILkT2Hd8WT8+7zLzTe67JxhzYfiGZ9L8Iqj9XxMhVfsB7pqIkeBDr4kZK5uz26GIWDsaL8IdduoGwb5z8ggSCGGcrifckokwt9Vd+ctsk245t0DsqgucEzQmyph9zvb7mjXHPvyitbsbBS0XxtM48wZKeMyXxK+dRqMAMdm4dimFHrze+WSnE8eaJtBr3/l6jZdRLLlsSO5iu0z80ntVcEVFvlzRIZFl6A7dlndpa4kgFBLGHXcpAAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAoemSflcYECMDSVOi4MjRZDhJW6sy2rN7QP357/cM4=;
 b=B2hSqR3Q6XnNSvC9El/GlvIWZOx42D71AVOlDnJIN9hZw/LzTgkhZAKCeUybcxiUFDGvG330CNSoJh3Z5YHJO3CKfbXMF2ivuJGj2IF/6rnqgkpkI93Pqhj9e9HgKNT4BMneLY3qa7z/n4KeMuRl5SQ/PxcPWQs26suIj8n/hSoCdIlLrPUe2nI2XGh00HkQ02nlMnI5SA5NCF1WhnS/JJ6fglLUjulY9G6zn+ggF9EN9D8Uz9PM2zv++7ie7f6m/d1JrvYNamLns4DBy9CGVSMFDwfNjkkOBCKT+NpwG8ciUZ/6kOLvWcngkDp0AzClNJFzOrezEiQMEzQdCiTLyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BLAPR09MB6612.namprd09.prod.outlook.com (2603:10b6:208:2ae::11)
 by BLAPR09MB6788.namprd09.prod.outlook.com (2603:10b6:208:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Mon, 17 May
 2021 21:22:32 +0000
Received: from BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e]) by BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::74aa:989a:11f3:84e%3]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 21:22:32 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: [EXT] Re: RFNOC block name?
Thread-Index: AQHXSd5GBee4biEifUuNWFYlEY/bVqrnuMuAgAALo9CAAASzgIAAZ70w
Date: Mon, 17 May 2021 21:22:32 +0000
Message-ID: 
 <BLAPR09MB66128DD849F46CB9771F12FED92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 075e8d49-6d6a-41a0-11b9-08d91979e1f9
x-ms-traffictypediagnostic: BLAPR09MB6788:
x-microsoft-antispam-prvs: 
 <BLAPR09MB6788C2CB2C90BED573582AECD92D9@BLAPR09MB6788.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 i2hz53XP+dMivXXPnrY3WTlMtozSxpz34ORCTw1rbJqvifz7wNeDvJSNBf5DPXzRAu36SFanhqjWPc1hPjHP4x0I9FyF0OLixYTNahAG5TbH/B1iAuS6rlcIYGI2156e3iDbk84CNvWkjkdcnjNcceMtDrzla2tZ7qF/xBPyPB1rpPaLqH3rW0SOY62WA0Gw4z21kc3P9BtnFOpGSAGYfR1L9isVPUHDUCWPlbEoESqsqCl/KdKo7gCflroe0qt5eBA36iP5e3JSSjjEg/MO3sQy2TJzmQ9s4bF/I9raYKlHyY0WSnLMUbgNPWqNqw1klH6FfqgHOjPg95Gibw5Fg+heJHdcd4gk+7Jo7iAeIC391MO6XrglGLDyZ+P99xO7rZJhfkNMX+jKt9L8r1VYnsQAwY7bqNxgGj8OCHCGtIQCyZ8pjgyjqWun5IhnEsJK4V0pRdkPVVaHzdhd3HBpW6EZEWG8q8Z0A6n+s8qrwAENoRRVC+3OMC9/shoi2hSnT4S4WVY7HE8K28sa1QCtkRTzuDUgIqRkD6bH/SHE4ui6tmca7UFLpHMirFXtVKS16HS9ATk6IQ3dvy3fP6XLtQXEt5UwAvhWJYyVQMkpuMQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB6612.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(396003)(136003)(346002)(366004)(83380400001)(86362001)(71200400001)(4326008)(38100700002)(52536014)(186003)(122000001)(8936002)(26005)(8676002)(7696005)(66446008)(6916009)(66556008)(66476007)(64756008)(2906002)(66946007)(76116006)(33656002)(316002)(6506007)(9686003)(53546011)(478600001)(55016002)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?cE94a0oxc3JLQ2gxSUptK3dRT1p4Q3BxQU12ak5PSUFqb3BxelJXN0ZTdWZo?=
 =?utf-8?B?T216Rjg2OG9GeVBjMkFYQ3BVSER0ZFVuM0g1UzNJRnpON0dXT0xFOHVDV0xi?=
 =?utf-8?B?V2Z2Qnlnc0VtalZmS3JReVRnS1lQd2d1dVMwa01GNkhUK29vOEx2QlpFVlVZ?=
 =?utf-8?B?NnllckdyOGhCVysrODJDbEZENHcyOVJoVjkwci9PWGRSL1kzZ0NkQjBQNGRs?=
 =?utf-8?B?Y1JVM2x1eFVPQVBwT01Cb004UFpZeTkydzhnVE5XUm5ZRzFqVnRNejRaRFdT?=
 =?utf-8?B?Y0h3NTZ0RjZPR2c4NFlWRmVnSVdscHQwbUNwRWtmTjFhbVg2UUdHemhUYTl2?=
 =?utf-8?B?bTQ2blE2dnlWT0hsR2l4V2txdHJ2RHM5VTdnalBzNmdnV1VNdVo2VGt4T0cw?=
 =?utf-8?B?ODF5Y2hLWDRCLzZNSkptQ0h4MFJGU2crWjR2eEQrZmZETUJkM2xhQmo4M3Jv?=
 =?utf-8?B?VUJLOUpEd2VNdHBZSEUvOC85bUE1TGpoSVdhWGQ5cHVQOUkrenhiRDV5cUMv?=
 =?utf-8?B?MnlxMVlqZEQvbmVUcnIzMXlNRHFjd0pZeGdtOE9OUE9QVGdiNzNBY1ZDZ0dD?=
 =?utf-8?B?U291dmNoaVQyeWd6RU0wSjdCbkgrYlNESXJKWWFpWXlOV2RiSXlUZmpRYlRV?=
 =?utf-8?B?ay82clZaWjA1RzQ0dHhISHUwVndnQ2EyZU9BTXBGdW9BWndpTXpRZ1Q5QU9t?=
 =?utf-8?B?WFRnU2FtdGwyT2o0YzJlTjArUkFTSjVGL090VG5MbFQ3Ym1xZHlXMGYyKzUw?=
 =?utf-8?B?L2dZZjlPdGdITitsVGlwMXIraGZ5Z3RWd2hwL05yUHdvbXRUaWJQL0NVbXVV?=
 =?utf-8?B?Y1IvOHhMalFodG9sblptV0RvV25hVWFFaGNnU3BMNEt2L0ZTdlhVKzdCekYy?=
 =?utf-8?B?VjkvM3VXdHhDeWt4Z3drZ3VDSFNLaDByNzlaaDE4T3pTVkRQWGNTQ2R0cjRL?=
 =?utf-8?B?TUZoeDMrck4vWjN4SjFSa0FHb2ZJdklrajlPdFA4a3BOUWttanBkWDlKUXNx?=
 =?utf-8?B?ZTlUNjM2Q1ZqL3ZETWl0Y08rK2lzWWNEdldhbVQwRC8xNnd0cVpoeDZaZE9y?=
 =?utf-8?B?U1hnRHZVcEEyaFlzVnNPUnJsNXM5ak1BcEphcDZ0Vmh5SGMzcUxvVWIxby9L?=
 =?utf-8?B?TVg4Zytvb2EzYVg0SnJUcEZFMGZnbUNITkFMTTRHNWNDbFA3WjJ5Zy93TGkw?=
 =?utf-8?B?VVRheUo3Z0lmcWNyRG5WNXIvUDJHREI0MlNwRDMwUzVOZWN0NWU0NW1uN0R4?=
 =?utf-8?B?N01BSllNV1h4NW9zSi9tKzhjaURhQytBRGlTT2RoWnl5NisxSEM4SXVqZ1hP?=
 =?utf-8?B?WVloOXpzS1I5Zkl0TERweXF5aUNYUVhMMVRJUUdYUDJ0S0pxbHhLOWFQL2Y3?=
 =?utf-8?B?Y0MwYlpnVE1PcXoxY1VTU3dJd2c0TGhoa3hMRFpWRml5RlhqQ0ZvSWtmR0Mx?=
 =?utf-8?B?Y2p4WVJTV3g0cmcvQ0o4UTlzQ3JBSHUxdU96M1RkTEVXaEhJRWNqUE9tdXdE?=
 =?utf-8?B?RXhjcE83Ry93N241WURrNGxvaWY2R2pXTm1rSFZSQVBGUWRJa2FDUDhrYUZX?=
 =?utf-8?B?SjJQdUtXY05nTmUzcWpQeERFR3ZCaG82ZEFiYTUrUjg0NktURzlEMHk5anlF?=
 =?utf-8?B?Rm1VVzBud0Ruc0ZzZW52QnFzS3RvRU1PQ0JCVXRRTnVrK3JWaXoyYk81d1I2?=
 =?utf-8?B?dytpd0pBZnBBM2lPVytVdk1yUEJ5UWdIdzZmSythc0pwc3V4NmlhRG1DejBB?=
 =?utf-8?Q?gStM1Nny2Jk4s8yRO9O1ouSNHhrnHWESVNPtZY0?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB6612.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 075e8d49-6d6a-41a0-11b9-08d91979e1f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 21:22:32.1534
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR09MB6788
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=BTxNELhf; bh=oAoemSflcYECMDSVOi4MjRZDhJW6sy2rN7QP357/cM4=; b=ZtBEE0P9HEa5dSUJG2Zo78T6Dwz9Px2YcXjcHOhgi3LIkEixnzbJQnmO41r1WX0ESBG1ptImuvVaJULANL0Cpwf8901WwJdDH3rOFE3D6DhjV3AdpY/rLV3J4erdbROb+Bj3HyKSjahvfWVGzmCxsII/5fy5Yu+DylNUkdt2tLo=
Message-ID-Hash: 3NBEEXST5QOEQTESTAXJCHPCIACK62GR
X-Message-ID-Hash: 3NBEEXST5QOEQTESTAXJCHPCIACK62GR
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XP3ZKZ47T7O7IAKBP3L4LRWJ33NTEP5I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7929582778560810885=="

--===============7929582778560810885==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB66128DD849F46CB9771F12FED92D9BLAPR09MB6612namp_"

--_000_BLAPR09MB66128DD849F46CB9771F12FED92D9BLAPR09MB6612namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnJpYW4tDQoNCk9LIGp1c3QgdHJpZWQgaXQgYW5kIGl0IGRvZXMgcmVzb2x2ZSB0aGUgbmFtZXMg
bm93LiBJbiBuZXR3b3JrIG1vZGUgdGhlIC5zbyBpcyBpbnN0YWxsZWQgaW4gL3Vzci9sb2NhbC9s
aWIgc28gaXQgdGhyb3dzIGEgYnVuY2ggb2YgZXJyb3JzIHRyeWluZyB0byBsb2FkIGV2ZXJ5dGhp
bmcgZWxzZSBpbiB0aGF0IGRpcmVjdG9yeSBidXQgd2hlbiB1c3JwIHByb2JlIGRvZXMgZmluYWxs
eSBzdGFydCBleGVjdXRpbmcgaXQgc2hvd3MgdGhlIGNvcnJlY3QgYmxvY2sgbmFtZXMuIEkgc3Vw
cG9zZSBvbiB0aGUgZW1iZWRkZWQgdGFyZ2V0IEkgY291bGQgcHV0IHRoZSAuc28gc29tZXdoZXJl
IGVsc2UgdG8gYXZvaWQgYWxsIHRoZXNlIG90aGVyIGxvYWQgYXR0ZW1wdHMuIERvIHlvdSBoYXZl
IGEgcmVjb21tZW5kYXRpb24/DQoNClRoYW5rcw0KSmVmZg0KDQpGcm9tOiBCcmlhbiBQYWRhbGlu
byA8YnBhZGFsaW5vQGdtYWlsLmNvbT4NClNlbnQ6IE1vbmRheSwgTWF5IDE3LCAyMDIxIDExOjA4
IEFNDQpUbzogSmVmZnJleSBQIExvbmcgPGpwbG9uZ0BtaXRyZS5vcmc+DQpDYzogdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gUmU6IFtFWFRdIFJl
OiBSRk5PQyBibG9jayBuYW1lPw0KDQpPbiBNb24sIE1heSAxNywgMjAyMSBhdCAxMTowNCBBTSBK
ZWZmcmV5IFAgTG9uZyA8anBsb25nQG1pdHJlLm9yZzxtYWlsdG86anBsb25nQG1pdHJlLm9yZz4+
IHdyb3RlOg0KQnJpYW4tDQoNCkkgdGhpbmsgSSBhbSBnZXR0aW5nIGNsb3NlciBoZXJlLiBJIGFj
dHVhbGx5IGp1c3Qgd2VudCBiYWNrIHRvIHVzaW5nIG5ldHdvcmsgbW9kZSBzbyBJIGNvdWxkIGRl
YnVnIG15IGlzc3VlcyB3aXRob3V0IHRoZSBleHRyYSBjaGFsbGVuZ2Ugb2YgdGhlIGNyb3NzZGV2
LiBUaGF0IGlzIGEgcmVhbCBuaWNlIHRoaW5nIGFib3V0IHRoZSBFMzIwLg0KDQpTbyBJIHRoaW5r
IHRoZSB1c3JwIHByb2JlIHdpbGwgYWx3YXlzIGNvbWUgYmFjayB3aXRoIHRoYXQgZXJyb3IgYmVj
YXVzZSB0aGVyZSBpcyBubyBjb250cm9sbGVyIGZvciB5b3VyIGN1c3RvbSBibG9jayBpbiB0aGF0
IHVzcnAgcHJvYmUgY29kZSAoU29ycnkgbXkgdGVybWlub2xvZ3kgaXMgcHJvYmFibHkgd3Jvbmcg
aGVyZSkuIEFzIHlvdSBtZW50aW9uIHRoZSBnZW5lcmljIG5hbWUgaXMganVzdCBhIGZhY3Qgb2Yg
bGlmZSBob3dldmVyIEkgcmVhbGx5IHRoaW5rIHRoZSBnZXR0aW5nIHN0YXJ0ZWQgZ3VpZGUgc2hv
dWxkIHBvaW50IHRoYXQgb3V0IHNvIHBlb3BsZSBrbm93IHdoYXQgdG8gZXhwZWN0LiBXaXRoIHRo
ZSBwcm9wZXIgYmxvY2sgY29udHJvbGxlciBjYWxsZWQgd2l0aCB0aGUgY29ycmVjdCBub2MgSUQg
cmVnaXN0ZXJlZCBpdCBzZWVtcyB0byB3b3JrIG5vdy4NCg0KRW1iZWRkZWQgbW9kZSBzaG91bGQg
cHJvYmFibHkgd29yayBub3cgdG9vIGhvd2V2ZXIgSSB0aGluayBJIGFtIGp1c3QgZ29pbmcgdG8g
Y29udGludWUgaW4gbmV0d29yayB0aWxsIEkgZ2V0IG15IGN1c3RvbSBkZXNpZ24gaW50byB0aGUg
RlBHQSBhbmQgdGhlbiBtb3ZlIGl0IG92ZXIuDQoNClRoYW5rcyBmb3IgeW91ciBoZWxwIG9uIHRo
aXMuDQoNCkp1c3QgdG8gYmUgY2xlYXIsIHlvdSB3ZXJlIGFibGUgdG8gdXRpbGl6ZSB0aGUgVUhE
X01PRFVMRV9QQVRIIGVudmlyb25tZW50IHZhcmlhYmxlIHRvIHBvaW50IHRvIHRoZSBzaGFyZWQg
bGlicmFyeSBob2xkaW5nIHlvdXIgY29udHJvbGxlciBjb2RlIGZvciB5b3VyIGN1c3RvbSBibG9j
aywgYW5kIHVoZF91c3JwX3Byb2JlIHdhcyBhYmxlIHRvIGNvbWUgYmFjayB3aXRoIHlvdXIgY3Vz
dG9tIG5hbWUgaW5zdGVhZCBvZiBqdXN0IEJsb2NrLiAgQ29ycmVjdD8NCg0KVGhhbmtzLA0KQnJp
YW4NCg==

--_000_BLAPR09MB66128DD849F46CB9771F12FED92D9BLAPR09MB6612namp_
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
Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T0sganVzdCB0cmllZCBpdCBh
bmQgaXQgZG9lcyByZXNvbHZlIHRoZSBuYW1lcyBub3cuIEluIG5ldHdvcmsgbW9kZSB0aGUgLnNv
IGlzIGluc3RhbGxlZCBpbiAvdXNyL2xvY2FsL2xpYiBzbyBpdCB0aHJvd3MgYSBidW5jaCBvZiBl
cnJvcnMgdHJ5aW5nIHRvIGxvYWQgZXZlcnl0aGluZyBlbHNlIGluIHRoYXQgZGlyZWN0b3J5IGJ1
dCB3aGVuIHVzcnAgcHJvYmUgZG9lcyBmaW5hbGx5IHN0YXJ0IGV4ZWN1dGluZw0KIGl0IHNob3dz
IHRoZSBjb3JyZWN0IGJsb2NrIG5hbWVzLiBJIHN1cHBvc2Ugb24gdGhlIGVtYmVkZGVkIHRhcmdl
dCBJIGNvdWxkIHB1dCB0aGUgLnNvIHNvbWV3aGVyZSBlbHNlIHRvIGF2b2lkIGFsbCB0aGVzZSBv
dGhlciBsb2FkIGF0dGVtcHRzLiBEbyB5b3UgaGF2ZSBhIHJlY29tbWVuZGF0aW9uPzxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5UaGFua3M8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPkplZmY8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFF
MUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PGI+RnJvbTo8L2I+IEJyaWFuIFBhZGFsaW5vICZsdDticGFkYWxpbm9AZ21haWwuY29tJmd0
OyA8YnI+DQo8Yj5TZW50OjwvYj4gTW9uZGF5LCBNYXkgMTcsIDIwMjEgMTE6MDggQU08YnI+DQo8
Yj5Ubzo8L2I+IEplZmZyZXkgUCBMb25nICZsdDtqcGxvbmdAbWl0cmUub3JnJmd0Ozxicj4NCjxi
PkNjOjwvYj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208YnI+DQo8Yj5TdWJqZWN0OjwvYj4g
UmU6IFtVU1JQLXVzZXJzXSBSZTogW0VYVF0gUmU6IFJGTk9DIGJsb2NrIG5hbWU/PG86cD48L286
cD48L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiBNb24sIE1heSAxNywgMjAy
MSBhdCAxMTowNCBBTSBKZWZmcmV5IFAgTG9uZyAmbHQ7PGEgaHJlZj0ibWFpbHRvOmpwbG9uZ0Bt
aXRyZS5vcmciPmpwbG9uZ0BtaXRyZS5vcmc8L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4N
CjwvZGl2Pg0KPGRpdj4NCjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVm
dDpzb2xpZCAjQ0NDQ0NDIDEuMHB0O3BhZGRpbmc6MGluIDBpbiAwaW4gNi4wcHQ7bWFyZ2luLWxl
ZnQ6NC44cHQ7bWFyZ2luLXJpZ2h0OjBpbiI+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1h
bHQ6YXV0byI+QnJpYW4tPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHls
ZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG8iPiZu
YnNwOzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJn
aW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj5JIHRoaW5rIEkgYW0g
Z2V0dGluZyBjbG9zZXIgaGVyZS4gSSBhY3R1YWxseSBqdXN0IHdlbnQgYmFjayB0byB1c2luZyBu
ZXR3b3JrIG1vZGUgc28gSSBjb3VsZCBkZWJ1ZyBteSBpc3N1ZXMgd2l0aG91dCB0aGUgZXh0cmEg
Y2hhbGxlbmdlIG9mIHRoZSBjcm9zc2Rldi4gVGhhdCBpcyBhIHJlYWwgbmljZSB0aGluZw0KIGFi
b3V0IHRoZSBFMzIwLiA8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+Jm5i
c3A7PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdp
bi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG8iPlNvIEkgdGhpbmsgdGhl
IHVzcnAgcHJvYmUgd2lsbCBhbHdheXMgY29tZSBiYWNrIHdpdGggdGhhdCBlcnJvciBiZWNhdXNl
IHRoZXJlIGlzIG5vIGNvbnRyb2xsZXIgZm9yIHlvdXIgY3VzdG9tIGJsb2NrIGluIHRoYXQgdXNy
cCBwcm9iZSBjb2RlIChTb3JyeSBteSB0ZXJtaW5vbG9neSBpcyBwcm9iYWJseSB3cm9uZw0KIGhl
cmUpLiBBcyB5b3UgbWVudGlvbiB0aGUgZ2VuZXJpYyBuYW1lIGlzIGp1c3QgYSBmYWN0IG9mIGxp
ZmUgaG93ZXZlciBJIHJlYWxseSB0aGluayB0aGUgZ2V0dGluZyBzdGFydGVkIGd1aWRlIHNob3Vs
ZCBwb2ludCB0aGF0IG91dCBzbyBwZW9wbGUga25vdyB3aGF0IHRvIGV4cGVjdC4gV2l0aCB0aGUg
cHJvcGVyIGJsb2NrIGNvbnRyb2xsZXIgY2FsbGVkIHdpdGggdGhlIGNvcnJlY3Qgbm9jIElEIHJl
Z2lzdGVyZWQgaXQgc2VlbXMgdG8gd29yaw0KIG5vdy48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJv
dHRvbS1hbHQ6YXV0byI+Jm5ic3A7PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
IiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1
dG8iPkVtYmVkZGVkIG1vZGUgc2hvdWxkIHByb2JhYmx5IHdvcmsgbm93IHRvbyBob3dldmVyIEkg
dGhpbmsgSSBhbSBqdXN0IGdvaW5nIHRvIGNvbnRpbnVlIGluIG5ldHdvcmsgdGlsbCBJIGdldCBt
eSBjdXN0b20gZGVzaWduIGludG8gdGhlIEZQR0EgYW5kIHRoZW4gbW92ZSBpdCBvdmVyLjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9wLWFs
dDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj4mbmJzcDs8bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28t
bWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+VGhhbmtzIGZvciB5b3VyIGhlbHAgb24gdGhpcy48bzpw
PjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5KdXN0IHRvIGJlIGNsZWFyLCB5b3Ugd2VyZSBhYmxlIHRvIHV0aWxp
emUgdGhlIFVIRF9NT0RVTEVfUEFUSCBlbnZpcm9ubWVudCB2YXJpYWJsZSB0byBwb2ludCB0byB0
aGUgc2hhcmVkIGxpYnJhcnkgaG9sZGluZyB5b3VyIGNvbnRyb2xsZXIgY29kZSBmb3IgeW91ciBj
dXN0b20gYmxvY2ssIGFuZCB1aGRfdXNycF9wcm9iZSB3YXMgYWJsZSB0byBjb21lIGJhY2sgd2l0
aCB5b3VyIGN1c3RvbSBuYW1lIGluc3RlYWQNCiBvZiBqdXN0IEJsb2NrLiZuYnNwOyBDb3JyZWN0
PzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86
cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5U
aGFua3MsPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij5CcmlhbjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_BLAPR09MB66128DD849F46CB9771F12FED92D9BLAPR09MB6612namp_--

--===============7929582778560810885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7929582778560810885==--
