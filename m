Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAFC37BC41
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 14:08:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 910C5384489
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 08:08:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=postechackr.onmicrosoft.com header.i=@postechackr.onmicrosoft.com header.b="uJOJkbPP";
	dkim-atps=neutral
Received: from KOR01-PS2-obe.outbound.protection.outlook.com (mail-eopbgr1280090.outbound.protection.outlook.com [40.107.128.90])
	by mm2.emwd.com (Postfix) with ESMTPS id F0990383F88
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 08:07:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWNCVk+hZEJERt+vldMyJxRO/4p6xR2jqfhvDRLMfoAz/h0qlV48JWk+GvinKU8HgjDgHyznUKot30FZ5jykpcV1cxhyW3fXrsEG3kdk48bV+0wsbUajrFl+0NivhxZBUp7blrww93wjzW5M0KZHsniTaEhn2SctsKCA13Z+oS16uMODF6QkO5ESblYQ9JDdr1r6QbXQfLNhH/Xcs15tQnLVD/aJYItTRMSGe2kdHjd7l8YtjQfqrvHcWS2RXpeb0Ea0PIcJgP131iLoo+fLzUH1sJG25fSZJIVtcvw1c1CrdWPiKmPKaZdxNbhjyK7EHdG2RZw3QyvOxDVyYRJCgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pjh9tfNF68TDLxzdZfrotcZwyE16BkwP1/wvL9oUvKY=;
 b=AH87GGUmp1WJ3koccEcFBpTAlmjL8eaP3DMU0GSb/0K34ZaJdvfN8nTniolwoylpdUjgoE+W6eHNR3YKlbMi1z0E11gNGO37+QgLqNkD4fDybT2eoiypISWXsUNtYU+FJvb+CcEV8wFu71Gsel2jEBgUPQ2tShNCVxkyHam+N+cvL+ylxyC+F6J+y6NsZVxSJTF+WSk2QAosOwsmc9c5pHtUFGGlVAhS+mZ/zdvlWnVAg1YDckPCuIvdSXOPsUhxqBuEhR3VKPMRPSr9kjs4WZXIfscesL/OWgRy1z7zKhGTOcpchumTT3+Sbtko9oaxFmhLQP/fL1LWBDFuga/FcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pjh9tfNF68TDLxzdZfrotcZwyE16BkwP1/wvL9oUvKY=;
 b=uJOJkbPPREgNC5q4kq6Tx3QZEVkTSuRIriTxatRkf0evSXSjs8ptrkO+7wt/umrsr1SkRnQdNCQHEQpDdXDyqYmlt/KvjNc2MBUE9qIu9eGq/1DD64IWyBmk8wWbJKdo9z9yK0FN6jM9g10GQ0T1zfJNUj9R2CnNOUlSnGL/ArQ=
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM (2603:1096:100:1f::21)
 by SLXP216MB0991.KORP216.PROD.OUTLOOK.COM (2603:1096:100:7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.31; Wed, 12 May 2021 12:07:34 +0000
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::c45b:56cd:6a92:d746]) by SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::c45b:56cd:6a92:d746%9]) with mapi id 15.20.4108.032; Wed, 12 May 2021
 12:07:34 +0000
From: Kyeong Su Shin <ksshin@postech.ac.kr>
To: isaac mario tupac davila <isacctd92@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Sampling rate and bandwidth - Usrp N210 & source
 block
Thread-Index: AQHXRrM/mvsGRjnoDUiGSNvKx/5ueKrfvXUn
Date: Wed, 12 May 2021 12:07:34 +0000
Message-ID: 
 <SL2P216MB033182A2FF0CA9CA7AA95DAD93529@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
References: 
 <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
In-Reply-To: 
 <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=postech.ac.kr;
x-originating-ip: [141.223.122.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96f01b5d-9e42-408a-cf0d-08d9153e86ec
x-ms-traffictypediagnostic: SLXP216MB0991:
x-microsoft-antispam-prvs: 
 <SLXP216MB0991FC66AD6163CCDD700AB993529@SLXP216MB0991.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZMR4XjCer2TDeEs6BQaktR7nW7tb1pJqzVavbXb9z79k6yz6APNPjQELWXXRqqAc3h5+QJMuXN6zE0Vy68janhpie2owqwdbmZwKSVN9AaWvgT38EQq4rdRViT7MXfIX/rjdYls3y4dAI+ZtEod5+/0QdmdSgTFK8Y31QEcDsIecZe2lCszVGT1QW97a34ZoEpEEl809g8XLu9Loh2+n473g88tAPpL1EUbpAJKa/yVcEcvxQAI51yxng2HvrLHoOfWmjuYXTd3QSE8J7EX4aWcJ6sf1Xpc4SborkSbkpFsOrwsfv5ZRwqkNzRdnr1uTljGLDPXwWV43POVaZjC++M7hsTLHb5ULKJZnnGWCut2U1X+daiHb4QslI0s6kXw6cwc3cunvFRH3euOgm6xVe7ADdYeqDL2DgfNnBbtd7bUBdk2b7u/i0n/cQuKiXKkB+Id/PF2ARgSDDDAfJ8JoMRUkfd+CoKDmnEsRMSskVejSa66JQLRDd5Jkw3cGu8/9+qWuFR1NJu8zfAqOffcrx3mBw4e3ebfI3cfGrVUgg6jet0AojE6EX2giXA5+MV9RAPZrhrpt7V33fxIsigm7Ccft3vrL9yGFYjbszx1rJSW7q0wgdrIB52DobInfPX8BvxlB5BwyQG0KFaVu3XfPUIdZyZwb6fB2CxejpGFnTjZkuw0qDscYBcfIvQ/OthgI
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB0331.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(346002)(39850400004)(396003)(366004)(376002)(166002)(110136005)(76116006)(8676002)(16799955002)(966005)(478600001)(19627405001)(2906002)(5660300002)(316002)(8936002)(33656002)(66946007)(26005)(86362001)(55016002)(38100700002)(7696005)(83380400001)(6506007)(122000001)(66556008)(64756008)(71200400001)(9686003)(786003)(186003)(66476007)(66446008)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?ks_c_5601-1987?B?VEVNZFpmeVlTZUlKdElYT1htV1Q0UjVrYnEvcHhpY1l5R2M4dnIr?=
 =?ks_c_5601-1987?B?SG5uY2lPRDVRS2hGZkhzVE9wbHJaWHpwbzY5RUh0aXpMZWNSZlVJ?=
 =?ks_c_5601-1987?B?MkpJT2RaU1lLZnpVWlVGR2p1bVdPSWVRbGwzWlJLeXJTbDUvVFdH?=
 =?ks_c_5601-1987?B?bmlEVjdUSDFVTkx1dk1GeFg0RmIydTRBajZPMTA4dHlQV2MxQ0NJ?=
 =?ks_c_5601-1987?B?K2xtbW9FSUppYUI0UU53elZqdmhvdmRWRk5XK1BnMXFtb3FxNkds?=
 =?ks_c_5601-1987?B?MGhYVnJYb29hS1cvTENxNDlqYjY0SzBRNE8wUW95QnU0T2VBTUtj?=
 =?ks_c_5601-1987?B?RGNna2J4TjQ0N3BtSWVPdmEwbkpqMlJiYkxzRHpQZy9zTSs4ZVVx?=
 =?ks_c_5601-1987?B?WThycFZWeXpQNC9FQ1lrdXdxdkVrejlwWWE0d2FycEV2c1VPKzBU?=
 =?ks_c_5601-1987?B?YTI5KzFSbTkwNkt1WmJyem1mWmJVSkRSbGNRL29od3NwWEpjL1pz?=
 =?ks_c_5601-1987?B?dHp5UnhuMll0WnV2K0VKZFFBME5ObkdXWGZCeldxQmhCVis1b2RF?=
 =?ks_c_5601-1987?B?V3ViTGluMWUxOVVoU2ltZGhlYldjOHNwYkpPVmRCU2tmVjZGWHpI?=
 =?ks_c_5601-1987?B?ZHhkZ0J1Y2d0cU52dS9EeFJRQ3JGN2I0SDI5TXM5R09rVVgrYVRa?=
 =?ks_c_5601-1987?B?UU8xQWhKVlhyRjJrWTVKaHpRUTA4NTkxMXQ4eGNjTDNUaWN3UVpl?=
 =?ks_c_5601-1987?B?TWFucTZHUXo3M2ZXRld3dTNOOWlBZGN1MHhOcWZJOEpUNnc4bGxN?=
 =?ks_c_5601-1987?B?SGVtandVTzhqTTliWDlNQ1dRMjVlVWtJWVhNSmxoWVVzOHVhL2hs?=
 =?ks_c_5601-1987?B?QWNwRDlpcksvNUpjVS9ROC9RbjFXNWhXMm1KNU9YRjkraVloRUNM?=
 =?ks_c_5601-1987?B?S0MyZStQbjh2aE1lTThzQ055TW5TOGlzUy9nRGFsMVpVeEMxWVpw?=
 =?ks_c_5601-1987?B?WjZ2MHpnbUp1bnlmS09uMk9XQVc3SmkyV1luMEVTWFR4bVR2azF4?=
 =?ks_c_5601-1987?B?Uklyb3IvVTJZN0JTbU96WXpQMU9aa1VJdmQ2Ym5CcFB6eTRVVlZO?=
 =?ks_c_5601-1987?B?YkcwT0V3TldYSG5ZRGluQktFVm1NYVAxb3MvOUo3ZndYWTg3MDVu?=
 =?ks_c_5601-1987?B?MVlRSFR1QmRPSDZmK3lmT21jNmRMa2pmTnN3T3doSlcySDFLdUJI?=
 =?ks_c_5601-1987?B?ZlVlWFVPaXZFQnhLSFc5ZWU2WlVDNHBRcWZjNVdsYjAvK21NcENR?=
 =?ks_c_5601-1987?B?ajY0ZHNMUS9mMkhWLzNmQjhYQkFQK0hUZHNYaUxRK2Jxb3dFKzQ2?=
 =?ks_c_5601-1987?B?NnhFdGdhQkRFUnRJdi81RlFUUXhQSlQvdkRCSmdZdFVpYThReGlw?=
 =?ks_c_5601-1987?B?blJDbHcwMWx2OGlYd0lZbFdxaC9RbUw0SGlqQkpXL01uNDAvc3U1?=
 =?ks_c_5601-1987?B?Tzh6Ly9BQjhtdnpnR1Y0TUZESlF1emhlR2RRR09YL3l3Y09UeldO?=
 =?ks_c_5601-1987?B?cldxaDNEWG1lL0tsRXJSWFRZV3FEb3RydDNKWkpIR29wZytkYWR6?=
 =?ks_c_5601-1987?B?OUV5VjUrNFFIbnI2aGpFL3k2bUV4MXg4Uis3QTQyMGtWTUlPSmM0?=
 =?ks_c_5601-1987?B?M1U1bDk1NUVhTDhKM0Z3UC9Td3Zkc3BIbTlLamU3MmM1VklrRHp6?=
 =?ks_c_5601-1987?B?ZThYSDdKWFNtS2x5bzY3U0NSSFNOV21vSFpmUUFzSFVWU1pIZUFo?=
 =?ks_c_5601-1987?B?VmZxUjhPVUdPcVZXQWl5YkRZZk1RdHc3Ykh2cWNCOW9pU0I2bXhx?=
 =?ks_c_5601-1987?B?RVpaQ3U3ZU8rUXRaM3lUWDhrOVhFNkpkUU1od1dkVlJsdTY4Zldk?=
 =?ks_c_5601-1987?B?aFZtenlYNFJKMHRIZFY2bEw4cCtvdkx3Z05aQ1FaWWVtSU5OejhL?=
 =?ks_c_5601-1987?Q?IsQsGKJxwMux/1XDzenKT9QgDvzmvi8ZRuvA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 96f01b5d-9e42-408a-cf0d-08d9153e86ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 12:07:34.4768
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IcQP2o2Xzc95BOwmAbnWB2fnK3gHmbCuZWa+2AYYuX//TFDKBfTSJZLrmULE1HQ0aa5NdKwHmo9UxVQBeHuOyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SLXP216MB0991
Message-ID-Hash: Y6W3KXASIUSZXUEDPBRLBQ2FRS3NG3GF
X-Message-ID-Hash: Y6W3KXASIUSZXUEDPBRLBQ2FRS3NG3GF
X-MailFrom: ksshin@postech.ac.kr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MTFACG3SZP3KXAGOXR7WLKVXVKGJGND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2743562257833472294=="

--===============2743562257833472294==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB033182A2FF0CA9CA7AA95DAD93529SL2P216MB0331KORP_"

--_000_SL2P216MB033182A2FF0CA9CA7AA95DAD93529SL2P216MB0331KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gSXNzYWM6DQoNClVTUlAgdXNlcyBJLVEgc2FtcGxpbmcgKHRoZXJlIGFyZSBzb21lIGV4
Y2VwdGlvbnMsIHRob3VnaCkuIFdoZW4gSS1RIHNhbXBsaW5nIGlzIHVzZWQsIHRoZSBOeXF1aXN0
IGJhbmR3aWR0aCBpcyBlcXVhbCB0byB0aGUgc2FtcGxpbmcgcmF0ZSBvZiB0aGUgc3RyZWFtLCBu
b3QgaGFsZiBvZiBpdC4gU28sIHRoZSB0aGVvcmV0aWNhbCBiYW5kd2lkdGggb2YgeW91ciAyNU1T
L3Mgc3RyZWFtIGlzIDI1IE1Ieiwgbm90IDEyLjUgTUh6LiBTZWUgaHR0cHM6Ly93aWtpLmdudXJh
ZGlvLm9yZy9pbmRleC5waHAvSVFfQ29tcGxleF9UdXRvcmlhbCAgYW5kIGh0dHBzOi8vZHNwLnN0
YWNrZXhjaGFuZ2UuY29tL3F1ZXN0aW9ucy8zNjkyNy9iYW5kd2lkdGgtd2l0aC1jb21wbGV4LXNh
bXBsaW5nIGZvciBmdXJ0aGVyIGluZm9ybWF0aW9uLg0KDQpJIGRvbid0IGtub3cgaG93IEV0dHVz
IFJlc2VhcmNoIGNhbWUgdXAgd2l0aCB0aGUgMjAgTUh6IGZpZ3VyZS4gSSBndWVzcyB0aGV5IGFy
ZSB0YWxraW5nIGFib3V0IHRoZSBmaWx0ZXIgY2hhcmFjdGVyaXN0aWNzLiBZb3UgbWF5IGV4cGVy
aWVuY2Ugc29tZSBhbGlhc2luZyBpc3N1ZXMgYXQgdGhlIGVkZ2VzIG9mIHRoZSBzcGVjdHJ1bSwg
ZHVlIHRvIHRoZSBmaWx0ZXIgY2hhcmFjdGVyaXN0aWNzLg0KDQpSZWdhcmRzLA0KS3llb25nIFN1
IFNoaW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq6uLO9ILvntvc6IGlzYWFj
IG1hcmlvIHR1cGFjIGRhdmlsYSA8aXNhY2N0ZDkyQGdtYWlsLmNvbT4NCrq4s70gs6/CpTogMjAy
MbPiIDW/+SAxMsDPILz2v+TAzyC/wMD8IDc6MTUNCrnetMIgu+e29zogdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0Kwaa48TogW1VTUlAtdXNl
cnNdIFNhbXBsaW5nIHJhdGUgYW5kIGJhbmR3aWR0aCAtIFVzcnAgTjIxMCAmIHNvdXJjZSBibG9j
aw0KDQpIZWxsbyBjb21tdW5pdHkNCg0KSSdtIElzYWFjLiBJJ20gZGVhbGluZyB3aXRoIHNvbWUg
cXVlc3Rpb25zIGFib3V0IHRoZSBpbnRlcnByZXRhdGlvbiBvZiBzYW1wbGluZyByYXRlIGFuZCBi
YW5kd2lkdGggaW4gYSBVU1JQIHNvdXJjZSBibG9jay4NCg0KV2hhdCBJIHVuZGVyc3RhbmQgaXMg
aWYgSSB3b3JrIHdpdGggYW4gVVNSUCBOMjEwLCBteSBBREMgd29ya3Mgd2l0aCBhIDEwME1TL3Mu
IElmIEkgdXNlIGEgR2lnYWJpdCBFdGhlcm5ldCBhbmQgYSBkYXRhIHR5cGUgb2YgMTZiaXRzLCBJ
IGNvdWxkIHJlY2VpdmUgaW4gbXkgaG9zdCB1cCB0byAyNU1TL3Mgd2l0aCBhIGJhbmR3aWR0aCBv
ZiAyME1Iei4gaHR0cHM6Ly9rYi5ldHR1cy5jb20vQWJvdXRfVVNSUF9CYW5kd2lkdGhzX2FuZF9T
YW1wbGluZ19SYXRlcw0KDQpNeSBxdWVzdGlvbnMgYXJlOg0KDQoxLiBJZiBJIGNhbiByZWNlaXZl
IHVwIHRvIDI1TVMvcyBvbiBteSBob3N0LCB3aHkgbXkgYmFuZHdpZHRoIGlzIDIwTUh6PyBJIHRo
aW5rIEl0IGlzIHVwIHRvIDEyLjVNSHogYWNjb3JkaW5nIHRvIE55cXVpc3QuDQoNCjIuIFdoeSBp
cyB0aGUgc2FtcGxlIHJhdGUgdmFsdWUgaW4gdGhlIHVzcnAgc291cmNlIGJsb2NrIGVxdWFsIHRv
IHRoZSBiYW5kd2lkdGggSSBvYnNlcnZlPyBJIHRoaW5rIHRoaXMgYmFuZHdpZHRoIHNob3VsZCBi
ZSB0aGUgaGFsZiBhY2NvcmRpbmcgdG8gTnlxdWlzdCB0b28uIGh0dHBzOi8vd2lraS5nbnVyYWRp
by5vcmcvaW5kZXgucGhwL1VTUlBfU291cmNlDQoNCkkgYXBwcmVjaWF0ZSBhbnkgaGVscCB0byBj
bGFyaWZ5IHRoaXMgY29uY2VwdHMNCg0KUmVnYXJkcw0KSXNhYWMgVC4NCg0K

--_000_SL2P216MB033182A2FF0CA9CA7AA95DAD93529SL2P216MB0331KORP_
Content-Type: text/html; charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dks_c_5601=
-1987">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello Issac:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
USRP uses I-Q sampling (there are some exceptions, though). When I-Q sampli=
ng is used, the Nyquist bandwidth is<b> equal</b> to the sampling rate of t=
he stream, not half of it. So, the theoretical bandwidth of your 25MS/s str=
eam is 25 MHz, not 12.5 MHz. See&nbsp;<a href=3D"https://wiki.gnuradio.org/=
index.php/IQ_Complex_Tutorial" id=3D"LPlnk">https://wiki.gnuradio.org/index=
.php/IQ_Complex_Tutorial</a>&nbsp;
 and <a href=3D"https://dsp.stackexchange.com/questions/36927/bandwidth-wit=
h-complex-sampling" id=3D"LPlnk">
https://dsp.stackexchange.com/questions/36927/bandwidth-with-complex-sampli=
ng</a> for further information.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I don't know how Ettus Research came up with the 20 MHz figure. I guess the=
y are talking about the filter characteristics. You may experience some ali=
asing issues at the edges of the spectrum, due to the filter characteristic=
s.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kyeong Su Shin<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
isaac mario tupac davila &lt;isacctd92@gmail.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2021=B3=E2 5=BF=F9 12=C0=CF =BC=F6=BF=E4=
=C0=CF =BF=C0=C0=FC 7:15<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Sampling rate and bandwidth - Usrp N210 &=
amp; source block</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hello community<br>
</div>
<div><br>
</div>
<div>I'm Isaac. I'm dealing with some questions about the interpretation of=
 sampling rate and bandwidth in a USRP source block.</div>
<div><br>
</div>
<div>What I understand is if I work with an USRP N210, my ADC works with a =
100MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could rec=
eive in my host up to 25MS/s with a bandwidth of 20MHz.
<a href=3D"https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates">h=
ttps://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates</a></div>
<div><br>
</div>
<div>My questions are: <br>
</div>
<div><br>
</div>
<div>1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz=
? I think It is up to 12.5MHz according to Nyquist.</div>
<div><br>
</div>
<div>2. Why is the sample rate value in the usrp source block equal to the =
bandwidth I observe? I think this bandwidth should be the half according to=
 Nyquist too.
<a href=3D"https://wiki.gnuradio.org/index.php/USRP_Source">https://wiki.gn=
uradio.org/index.php/USRP_Source</a></div>
<div><br>
</div>
<div>I appreciate any help to clarify this concepts&nbsp;<br>
</div>
<div><br>
</div>
<div>Regards</div>
<div>Isaac T.<br>
</div>
<div><br>
</div>
</div>
</div>
</body>
</html>

--_000_SL2P216MB033182A2FF0CA9CA7AA95DAD93529SL2P216MB0331KORP_--

--===============2743562257833472294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2743562257833472294==--
