Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D609506D5D
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 15:20:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 745CC3848DD
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 09:20:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650374453; bh=TYZQj/L6S0L0D4YqdBTKqpCSDN9DPu95bMd1Jn1HH/A=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sRo3ZsZMIrMee1R+3a3JqDlzFG8mXSrbqSwuT1aorPCERpJdcFLfXUvcRn9J6teZT
	 N3dbHvbVPKvZtcj/dPUf7ku8ia7ojaChOVUzt76yWulcawv4C3FWtlSUAvYv4JafWC
	 +W+NcMo+5vW/M0PqUM7AqpMEX0F+OuvMIGzpV27o/FuCGs+uD3DI1xYX3bejwSaicz
	 5/F7BWHCO19x2VVeYUhIn9RovDHk4ckipVBqKl1YA/0kok8SG4YodbIiCqq9/gIxrW
	 G7PeEdgAK2WEsJdYt+uFoeBYTZ8hBuTGBPpciEe8foG1bRV3CJcBQ7oBAgD3dwUt+A
	 5BFrDrmZ+jHMg==
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2097.outbound.protection.outlook.com [40.107.225.97])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FD38384D43
	for <USRP-users@lists.ettus.com>; Tue, 19 Apr 2022 09:19:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="gIqPH0J1";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLQfz+a96lCeBhB8PfrHYQXoSJ1LnH/fMMBqkQNc5ALzTdfmuJcyWmhRk1OPZkcM8E+s3nmWURQSaDeNnIq+13g9ZM9rw+LbiZ8isi9t3m14fhmexwl4z4hKJZmRY7tO1QLo/MPmxKAFY/OmOCzjgOy6lLbmxWbaM0CsRXba0bt7/OQ+boWkekvJXISts9tGOTiuAhrrvKvAIfgmFkziQ7vR2NaG+20KPvCjKYN7ITpwJBnnt1iNk3MzwWWMnNKFf6LxNj7icaMqQpGZsrWpQ144CTokNOXDgZXkBxrA/Qhqu7iLRiv3CZGLH13sUKlgNSFuFRFEx2uxko1hLRe1Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cp8rNieSn7X5fyzoYil/KNMfisF6x8lzVNUopYpatR0=;
 b=FW+0PAmqEwe0oCzUIn1DO9acwuPjbjrL9aeY3SL3kyJtmF8O0WfDO9319bCl1tRW8kN5+MD4utKxCJTcfJhYZU0zA9mP1TKRD7XiJY6WnzflpkkyUupvZhUGPZXWrJQa4TH432HLL9EVMvhLB7W5JUOeOFeJ9BS3pT4TdPjn/eRAKVlH1cJz0JoiybBm8ea9EAiGGZLN7nKFsvrUo6/arg5E7DtfVq1HgMm+GEou7h0KngOL4SUD7WN1vvmP8iMBAwG4rNhArbXin6HG8jL93MKobk+m0jxON+0XCVJ8feiWdYkpPeJFA5XI+Z587voMsmzXlXhI55NP/UzwDkijSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cp8rNieSn7X5fyzoYil/KNMfisF6x8lzVNUopYpatR0=;
 b=gIqPH0J1qdSMxKpCIZIhEs5ccPO18ZCRDG+I7kLnFmRZ4npF4KMaMbH5GGdQeSIIr3Try34CzpxCr0S7DMRhyVcLMZ67sSP34+pl5XrFEEAi4lGdL3/REFRbIr9kz93FLT8tlXlXbP+4EOHhNWVYJuvfZUflPo/hDzhZFWuyUAwZblY5MMXgOfVmXmfs2haGLytirkZ+0DscFvTbziwgA0g1rhLgq54tx6JzEluTYQXkiYOzjCZHZJWMmpodW6Oq8UjQQGrE4SpN2eCMHT/ett8/e9rNLX2m6OadUnr07EWUh5pIVupM0kELstp6uSq3+unr+0+21ctnlNiCEVNtpA==
Received: from SV0P279MB0089.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:b::7) by
 SVAP279MB0111.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:4::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Tue, 19 Apr 2022 13:19:42 +0000
Received: from SV0P279MB0089.NORP279.PROD.OUTLOOK.COM
 ([fe80::c8d8:9994:396:7b3a]) by SV0P279MB0089.NORP279.PROD.OUTLOOK.COM
 ([fe80::c8d8:9994:396:7b3a%6]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 13:19:42 +0000
From: =?utf-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: E310 USB - serial problem
Thread-Index: AdhH9sfWDXFvJQC/RWuhgTAu+EymTQAMSV+AAuRb43AABLcmgAAI9IBQ
Date: Tue, 19 Apr 2022 13:19:42 +0000
Message-ID: 
 <SV0P279MB0089D8F4F9A33CE44C1B09E2A0F29@SV0P279MB0089.NORP279.PROD.OUTLOOK.COM>
References: 
 <SV0P279MB0089701D7A231B7DC0219966A0F29@SV0P279MB0089.NORP279.PROD.OUTLOOK.COM>
 <11A43D77-4664-4C1A-A9CE-9BC6024BD592@gmail.com>
In-Reply-To: <11A43D77-4664-4C1A-A9CE-9BC6024BD592@gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f58de2ad-8326-4f9e-cee2-08da220743c3
x-ms-traffictypediagnostic: SVAP279MB0111:EE_
x-microsoft-antispam-prvs: 
 <SVAP279MB0111131E2DCCD77FA55EBEE2A0F29@SVAP279MB0111.NORP279.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hCZvuZdx2b3jRmbXkSNCpBrh5XITSe85ovcr6j7ayC2Ju6OyTVCnbV+JXn8FyM8aEAjGt1+kXPSTasj4w9zmmfXggSYqoWl78cR9JFqEFGsj1L2s2jF/ICUYmkKcIFNe83T/GkUHac/xKeeMmcyTW1JsoNQbFdWAY0lUjxBH0rMn0+9LWZhxSAx0Zf1nIjy8953ZpYaiA3+MVvfYh7wmqeq3J+dAAmyd55Pcg1S8s0wBJVaW2DIWhfw9Qe97fLqAuFmPg9WHGFKszfrU0TPhDEq3Vw1rJahSrgSDLhLjJ/IaJ5DHWTNiDS9YGW/iA7aW8aSVe5PG3PqTLUaFFT/gIEieqXMn6Qbgabgs0Isyj9fnAGW+lQ9KKrcWSnjbPuV5NAuCtUztU5mOseSk1yEd4P7MyEHSzvSqBjI2+I+f9eIiKNy40NzARMqaxgi+8Ks6vricVglTKFa/2bWCA0Ke5EVNIh7t+C+LPJYuZDKeFSRdR6vwmONMWPPu1hKpPD1BJqCLbXCLEs97e+5k9cq+DpN1cbRJDx1Ham3KiMeGl3qgNwkcmlJnMCiw8HPm6p84TdK5/hun6LHCbPBpcsnFiOZ4nfG4EE7pxjW3GBvIEFYMINADFk6GaXLCVpSb+or0Yd5lALpZ9da4giWcBy2wg6P0wF0ZM7QNg+uObOFfXPaaVTOqLY+fFnQeNEX27L75GjtLPjN76rd0phPJNkwqyQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SV0P279MB0089.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(376002)(396003)(136003)(39850400004)(346002)(66446008)(4326008)(66476007)(52536014)(508600001)(66556008)(8676002)(122000001)(64756008)(6916009)(33656002)(2906002)(5660300002)(9686003)(85202003)(7696005)(8936002)(6506007)(85182001)(83380400001)(66946007)(71200400001)(86362001)(558084003)(76116006)(38100700002)(316002)(186003)(38070700005)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cEQzeGR3aUNGN1lTU2VMUHZpMkZzdTBwd1pLMEgzQ3Zhbk1NR2FVM09VRmVH?=
 =?utf-8?B?Q3B1cm93RDRHWmpBS2hRck5HUDJydnJLN2VFRGZCQVRmUVEzazU3cStTQ2tW?=
 =?utf-8?B?UWJUNWtFUjRDbXpPMWcxYVI1Z0V6bGVFcFAzMm5vdWg3VWMrRDd1YmNzTmda?=
 =?utf-8?B?K2owTXRvbWNrL0F6cXRROUFMdlJjdDJjUjU1c2h5ajkzeDRPUncrNkoyVHp4?=
 =?utf-8?B?NFpxVG5ueHUwMFNsUzlYZFhzdkdxZlNYaE91emZtdElMKzQrS2w5QzhKWmJI?=
 =?utf-8?B?MGM0WHRpY0hqMVdVVGk3VU5zUkx5aGF0L0VEdG9EZ2xFcGoxWStPRzJTMDRa?=
 =?utf-8?B?b1BBbHRkbTl5T0NWYlVQOVVYMVhZNkhwaDg1MXBvbXNmeVlPbVFQeW5tM1JJ?=
 =?utf-8?B?RmlCQWRMMjVrT3VVK3VzWVlzYS9oK2ptVHA5ZWRaR3BPN3lLS0MwWWkvNVJX?=
 =?utf-8?B?elM5djVzMzRVdEFkcDZFNWsyWTdkcmxsWCtBMDhka1lrdllqVm5zN0pkMnd6?=
 =?utf-8?B?dWdCaDJraExnN2FsT3dZZ3VkRUh4bHppWUhVRlk5Sk1uTTBTb25PNU1Cb3ZQ?=
 =?utf-8?B?TUZkQ1h1VGpsQkhENVVDYnNET0lpRERUdGs4RFRGeXFLbUEvTUg3TlBxZVF2?=
 =?utf-8?B?NzR4czJvd3k2a1hNa29jcWlkdWpBREpPWTVTRkVNZ1dwaFFQcCtJS0VTQ2s2?=
 =?utf-8?B?ajh2UlZLWGp1NWxWc3FqUDFodlBYSVBTYS8vbVdyTGRhY2l4eXB1NitXRXNM?=
 =?utf-8?B?MVpGb094YWh4Q25DSkJGNVFURVFUc2dGNGZ3bXZBcHVobzNjQ0tTY0p5N3ND?=
 =?utf-8?B?QXpoVStCcjJtT0I1ZS9rWENCSytVa0NwRVNaYmludVQ0VzZYcHpHRTFaT2Q0?=
 =?utf-8?B?eVRQdUhMUXZFZzE1QnBNaVZKdGN3YmF5NkVDV3NQd3h6RFBpQlhWcHJreDNy?=
 =?utf-8?B?U1N4L0ZJcWxPV1ZqM0YzZ01PZERyTTk0RFJHM3dqQVFTdHZxWEpDOXBMeERQ?=
 =?utf-8?B?anYrdHVUTDJVTlVPb1dmYUVDR3hVNWl5L2dHSXhIMHFoYlc0MktiUXJGeFNr?=
 =?utf-8?B?WDMzQTVTTEdoZnZpWGRJY1orWFFGQms0NGM2QUFtNjk2VTVUS3hoVDlIRnBj?=
 =?utf-8?B?eFE5YjVXUHpXOG1sNGkrTFo0L3ZRMlJlRGxZNGY2TllNeFBZL1dmclZock1L?=
 =?utf-8?B?OGZrNExLMTRwbzN2OGp3YlNSVG8xcmRRUm5SNGZVcll1ZUJSSTg4OUJPSnU5?=
 =?utf-8?B?YWVGTDcrdExEK0c2eCthek9KZlBuNzNGQk8vVEZ5ZmZCY0g4blptd0VkcnFT?=
 =?utf-8?B?TXpXZjFvTnEvWHdZNGw3am42dG5Vc1Nia24xWU1xUG44Si83ZkRRa2dkbGdm?=
 =?utf-8?B?YUFtU0NtdXlFWGQzRjJ5clJnYnRjKzNSTkxIbk9GRzVqanI1L2k4NzlSQnRZ?=
 =?utf-8?B?VFQ2MU1yNGRhL1A0QXRkRnAvY0Z2dXoyNThFQ1RIOUFYcXpUa1BzSFg1OFMw?=
 =?utf-8?B?eVJmeGV3SS9xWmtwQ1dzYXYwb3AvTFBYT2hpUnFYNytJb3BSN3lTeFJUcnVP?=
 =?utf-8?B?RzU4ZldmcStxRlhwQjdQVGpacHBhSm1BdC9mQmtXSlF6RGFPQ3NOM1RvUXdY?=
 =?utf-8?B?dHVnRHl6bmliN1B5bnNRN05lSDRid09IMzRkTk9MelVVTlh3MGRXYWFMUnBv?=
 =?utf-8?B?b25acWhuREt5SnJ3ZktaRC9aQ29aelFPTllpbGpkM1kwRkNDeWJiYkZtZTVG?=
 =?utf-8?B?QmlzYjVPSnhIRSt0aEl0QzRrMW9zaVU2dHVwcTN3WVBkYkVsUEp6bVFxZFV0?=
 =?utf-8?B?a2JucUlnZ2w1cUROczE4K0NyeVNiMkIxcFBIK0VsbGMwYUNMTVJ2c1ZzanRG?=
 =?utf-8?B?QUd5amlhaGxKVUo0clBxVHMwUENBR2FFY211dERieDlKQkFOYWIrZzV1eE5U?=
 =?utf-8?B?eUVBcGVLNVFIL1RwSDBlR3dGM3FBemwzUnJiUmVJMk02SktjYU1HaHk5aWlK?=
 =?utf-8?B?QW5PMkJRSU9SNVNURnlmNUhHbFIyQkRJL2QweHdrWGNkS1oxSHE3QlJ0UWVE?=
 =?utf-8?B?MjczVnhlZmZVRnc1L2lzKzZ6ZjRjSGJHT2ZjWHlrNkxGdWsyNEFVbEZxQ0ha?=
 =?utf-8?B?UUNhaEZtZkN3ZDN3TUpmR0xLUHhUSjBTNDRVL0tBWjcrVTNBYm52RXQrcXRt?=
 =?utf-8?B?L09vbGZlSUcweFh4Q3ZnaWpHVllHZVJFTWozRU94blAraHFCTytoSmNSMnBV?=
 =?utf-8?B?Qm80a29VKzBmeHhGbktFdGNnN3lYNFdGSnJjbHRUSGpXNzVKRWdsRVNSRk0r?=
 =?utf-8?B?SHhXRmo3NDlXTXYzMkY2d3REb284VEhSb2lJNmx6MCtMWlhQYXZxL1psalhz?=
 =?utf-8?Q?R/O+lSK5qGGKH+lqjZRtwNDu0JNh3N4WUUODq?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SV0P279MB0089.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f58de2ad-8326-4f9e-cee2-08da220743c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2022 13:19:42.2743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjZYgYySa6GxdyEXV5reIND5R2+oWZ/bDUApDuay1N3pHup3KE2CP+my6ddk3dKS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SVAP279MB0111
Message-ID-Hash: ZEVRE647YMTKUCBRJKN5RE6TDXSL4XDH
X-Message-ID-Hash: ZEVRE647YMTKUCBRJKN5RE6TDXSL4XDH
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KC3KNWANRGLKWUSIQFATAFULXKYTYDHR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3454120429910736815=="

--===============3454120429910736815==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_SV0P279MB0089D8F4F9A33CE44C1B09E2A0F29SV0P279MB0089NORP_"

--_000_SV0P279MB0089D8F4F9A33CE44C1B09E2A0F29SV0P279MB0089NORP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R3JlYXQsIHRoYW5rcyBmb3IgdGhlIHVwZGF0ZSENCg0KDQpBIG5ldyBJbWFnZSBpcyBiZWluZyB3
b3JrZWQgb24gdGhhdCBoYXMgdGhvc2UgZHJpdmVycy4gT25jZSBpdCBoYXMgd2UgdGVzdGVkIGFu
IGFubm91bmNlbWVudCB3aWxsIGJlIG1hZGUuDQoNCg0K

--_000_SV0P279MB0089D8F4F9A33CE44C1B09E2A0F29SV0P279MB0089NORP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNvbnNvbGFz
Ow0KCXBhbm9zZS0xOjIgMTEgNiA5IDIgMiA0IDMgMiA0O30NCi8qIFN0eWxlIERlZmluaXRpb25z
ICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjow
Y207DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
ZjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6MTAuMHB0O30NCkBwYWdlIFdvcmRT
ZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzAuODVwdCA3MC44NXB0
IDcwLjg1cHQgNzAuODVwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24x
O30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJOTy1CT0siIGxpbms9ImJsdWUi
IHZsaW5rPSJwdXJwbGUiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNz
PSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+R3JlYXQsIHRoYW5rcyBmb3Ig
dGhlIHVwZGF0ZSE8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5BIG5ldyBJbWFnZSBpcyBiZWluZyB3b3JrZWQgb24gdGhh
dCBoYXMgdGhvc2UgZHJpdmVycy4gT25jZSBpdCBoYXMgd2UgdGVzdGVkIGFuIGFubm91bmNlbWVu
dCB3aWxsIGJlIG1hZGUuJm5ic3A7PHNwYW4gc3R5bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOk5P
LUJPSyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8YmxvY2txdW90ZSBzdHlsZT0i
bWFyZ2luLXRvcDo1LjBwdDttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxkaXY+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJvdHRvbToxMi4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+
PC9wPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rp
dj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_SV0P279MB0089D8F4F9A33CE44C1B09E2A0F29SV0P279MB0089NORP_--

--===============3454120429910736815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3454120429910736815==--
