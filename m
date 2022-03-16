Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B854DA6E8
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 01:32:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9525384E76
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 20:32:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=postechackr.onmicrosoft.com header.i=@postechackr.onmicrosoft.com header.b="qVNqMKFh";
	dkim-atps=neutral
Received: from KOR01-SL2-obe.outbound.protection.outlook.com (mail-eopbgr1290134.outbound.protection.outlook.com [40.107.129.134])
	by mm2.emwd.com (Postfix) with ESMTPS id 234BB3845AC
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 20:31:43 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbHrWKwFz8MiE22Ujlv37K76dCG++udLcBn82qEsA/QPjXeV3k78PYzQdtl9MHBSgTfJKGAFGAHanCJich3od5m99xHlLSNBaV6ZaMLOmh06oVGgZsh1tvn4y6K+z4fKX1xqtaKuOoPHZAUz5Tv49+Z9XIQQ8qxAM79UKzVewU4uqYypyPE4TBbxfQze7HPiYhTp9/yBcQIen58iIfjzdJcu0dsXWC5ZQW4XxXcgEmgt6Wz88H1qs/5nCeVgcqZJyby0yDMRRqNy4JhhL83oPST3DhgjtVcq7ubYq0NfY/VzDsXYiNPgzWEKD7J9ISKEvVjvuk++SxV2vcPR2/56RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pCWbp/dqbkOhBlvXCmhrCYik+HbLPVvMVc5Xp5zF3+E=;
 b=MqAGADKDSan9xnSYcWzo1xYo6dz+LRDCjSiCnsODfHI78C3vsoosyEWHsEvpqE+YgLgdaGMTFg/rHC6Z7OSgTU8Eb+53wyfyUJ5c5VLSmbGlntGctd3SQiMQ/UgjtO8EEeCj4xSiOwZzv5UkW8npKnVi+jW8iCtI+vFWerxfeJk7+U0pWLaXpLT/K5NDJBLLJzAuXjL4dQQBgsb1LRC/B0qhInf3ss5TKDJ8K8XVuqV9pAZq6DZkNwsU9hr7LWsjrgXJR2Hfn0/7Jqo5cM51c9QWsr1ABzSRAUzH8WwNC5/cNWnh/h6ys83cz9IKq6MKKmNIOICBuOjE3JOL+Hz4Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pCWbp/dqbkOhBlvXCmhrCYik+HbLPVvMVc5Xp5zF3+E=;
 b=qVNqMKFhsBPxntC2OIWX0WOLa+eQwmOk6gs+PuhY9dAXnrbfDG2ZsVUyBBqETcaCjw/qneIM5SMC1mSBaV9zcY6/fTeO+gx/W2DhZ7TalvvgnBe5AkCNegN1i4pVqySbIBuAMAyRkdGpBdrBTqnRxpnbXTBLzPJIjK4rCJWEROk=
Received: from SL2P216MB1246.KORP216.PROD.OUTLOOK.COM (2603:1096:101:a::9) by
 SLXP216MB0974.KORP216.PROD.OUTLOOK.COM (2603:1096:100:e::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.25; Wed, 16 Mar 2022 00:31:41 +0000
Received: from SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
 ([fe80::21b3:4aef:a70a:24be]) by SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
 ([fe80::21b3:4aef:a70a:24be%9]) with mapi id 15.20.5038.031; Wed, 16 Mar 2022
 00:31:41 +0000
From: Kyeong Su Shin <ksshin@postech.ac.kr>
To: David Horn <david.horn@digilent.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: Ettus Projects? 
Thread-Index: Adg35IRVr3EDdvFkT5eg+92OJYY8zQA6Ex/b
Date: Wed, 16 Mar 2022 00:31:41 +0000
Message-ID: 
 <SL2P216MB12467D2FBB04D804FC41439593119@SL2P216MB1246.KORP216.PROD.OUTLOOK.COM>
References: 
 <MN2PR04MB67367AD3612E478590EAC8B6EE119@MN2PR04MB6736.namprd04.prod.outlook.com>
In-Reply-To: 
 <MN2PR04MB67367AD3612E478590EAC8B6EE119@MN2PR04MB6736.namprd04.prod.outlook.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: e59fe6dc-698c-0420-8bb1-8a7e5fddd11f
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=postech.ac.kr;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2296f70b-cd7e-4282-ebd9-08da06e4574b
x-ms-traffictypediagnostic: SLXP216MB0974:EE_
x-microsoft-antispam-prvs: 
 <SLXP216MB0974C7D429780F3D811D90ED93119@SLXP216MB0974.KORP216.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wFO8Dc3tBtQPy4CdrremhmpyQEuQKgRnx/GAiKlrw8T1RPoLQCRe2IM1XIe+lexBCKY6a8Y8saW2csrwf6pn76J+Xgxbr1wdaaW2Ib5vuABshOaZ2aMWhp54pnl4vTMXrQfVwuTzGWgTI4sZGrpeVEW84CsNS8Dxk9ng+Fylw/BJ8KDcOiz6IZ5d2fgWecM0Ewcsh10uZQ5883bTpS6t8WYDW1Ir6jQuoCVjXAuVg1VlgMnaRmt3CWitswlhui92vCMyOEeE4Pd2GWUH0WLiDsaS8UUUk/f5d/AXxpDZwH+h7VQfJbm64sgYxJAgQLmDeIxh1xO1rXcTNxHNLvAD7hgYkx6dsvz13qHsax13pjrd4bLw8N5oTSkg3TKFvcDITC48lYK/h1svr3aNCwWjS6heEToybzSMpWSNHZC7T2iKS6eaoLBQ0nHFr1I3YlznNsD0Rx0F2B2LdilCaYlHwbKRKls8hn2rpSQ3imTGoY8f4MssbhdtZ76syZQ/QwaWei/Ard1PDDUtmi+MEh2SqyKuSuFt5MLkIwcv+l8TKH8ULN74NXEYtQoIIkHwQao2U6dXU9i3fNZ0412f9cndlZlLJZHTm80TPuUK1jpW9AVubw8h3RoWpfMsHUX3LOgHcoQkltT5/GCeNsf0+YQhYcvnu0Tyqfus4lzmulAcS+CsQ5qztvlK7MYHpamVI3fV3AkY2JsgTpwFn0XNKvQpS/Lf3s3+iyuasnAsICGMZNnbsPvR7reSTqVGw+TmQ1rSTUGGcl9anjxTcLC6qYxWK558QL3EAe1zml4ICjmmqm16yTThGcu2TpnMCbRTyivg7YmiX43IpYN8177+5RR3Lw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB1246.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(8676002)(3480700007)(38100700002)(122000001)(86362001)(76116006)(66946007)(7116003)(66446008)(66556008)(64756008)(71200400001)(55016003)(66476007)(99936003)(316002)(786003)(19627405001)(38070700005)(19627235002)(110136005)(166002)(7696005)(6506007)(186003)(26005)(8936002)(966005)(52536014)(508600001)(33656002)(40140700001)(5660300002)(9686003)(2906002)(4743002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?ks_c_5601-1987?B?bW50M05xVmN2SGloYnAzbW9CdUpPeFk3SEVtY1ZIVHNZaDc0ZWg5?=
 =?ks_c_5601-1987?B?TGZScHlaeDYxckZQZUVEck1BRUQvMDIxaUFoUXFNZWQ5QnlGdE5I?=
 =?ks_c_5601-1987?B?N28xSFFoei95dFBZMTNaeGJUNXUrVHRvdHAxV3U4cHdtYkJIb2da?=
 =?ks_c_5601-1987?B?OGVkUWlzNWJKTTNjS0RidFlTYW1DbjhaeGpRczI1Rm5IaVd3RGh3?=
 =?ks_c_5601-1987?B?Q1lvSW93aWtlT0VpbEYvS1JWRWgzM0tkWFp4UzI4eVhXY3F3Y3Nn?=
 =?ks_c_5601-1987?B?anhsak8vWExKd2xsMEdXeGgwRGpoL2N4eklZd0t1bG12eGk1WWVn?=
 =?ks_c_5601-1987?B?U3c2STFVWHRiblV5ckd6QThpUFdJcWVvUWgvZzl1ZXhQdjRDSWlJ?=
 =?ks_c_5601-1987?B?azl2bE9rckNrdFhZNmFnOTVJRFNQd2dUNEJwTW0waFNBWkxucjJw?=
 =?ks_c_5601-1987?B?b1NtbWZnY2haSGZpS241TXJEcGo3L2lpbFNiL2pEa2llY0xRSUsr?=
 =?ks_c_5601-1987?B?Sk1ETjhuTFVvYU90U3B2L3dkOXVPN3orNElQQUloWExXczZKSjhB?=
 =?ks_c_5601-1987?B?VUpBUHlrS2srbTdrRm1IMTBKWlR6cTBsbkRtR2JJRlN4Yml4M0ZU?=
 =?ks_c_5601-1987?B?bFlHUWN6TVd1dkZwbk1pM05YcmUrUk9DZjV3bk5ZWFpId3E1cFla?=
 =?ks_c_5601-1987?B?c3hKNmM2c1BxNlBzTmlSMzJwUVJuemR6YzJRaWNJVVA4U0dIcG5U?=
 =?ks_c_5601-1987?B?VFpFOWdpSlNmc3crdEdiTkhhYXlKeGJuVlBUN3VNbUZuVEYwL2tn?=
 =?ks_c_5601-1987?B?WXZpT3U3RHFtaE5OZFZoY3BLOHhGNUE4V0RjQVJ5VXZLbDhEK2xS?=
 =?ks_c_5601-1987?B?azFsOEZwSDdWeGhSbkpGejZXSFZMbFNnb2V4U0VPYU41eHlFaUhI?=
 =?ks_c_5601-1987?B?SmtPd01QSmJNS0ozdSsrQ2Q0QjFVMXk4dlFCYWw3bW1uN3NKR0ND?=
 =?ks_c_5601-1987?B?OTVuMG5yRjBCeEU1eE5XbHFJWWc0bnYycU1WYm9VaW4wVy9PUzgv?=
 =?ks_c_5601-1987?B?T3Q5RlRWM0ZWN0cxN2pRbFhrWnpqaUdMR2Z5M28xK0pIN2VSNzdJ?=
 =?ks_c_5601-1987?B?ZXdEQ3FWSFVRak1uZ3djTWNyUjBlektsOE1IMXg1anpDNVVHck5v?=
 =?ks_c_5601-1987?B?S3Fxd0dBT2NNV1M5V2VOUDJQeU52YTdPRjJlSm9QRThCSW5qMThs?=
 =?ks_c_5601-1987?B?UEZaSk5oR2tMWENjTGNLUEtEU3VHM0puUEREdHZ4Z1lMV2piRU9o?=
 =?ks_c_5601-1987?B?NmZmR0w5QTBZUDFWeWlmSkpSSVZkTHYrU3VoNUlheURWSFpuNGJN?=
 =?ks_c_5601-1987?B?MGZIWUJ2Y3JvdVJWVWNwRjBZeHRmVlNMZVhWcTdtWXRMd29OTmZa?=
 =?ks_c_5601-1987?B?Q05rTkxkQmUxVjFhZ3luUndub2RrRWY5Q29pYThuQXJ5ZjNXMEhu?=
 =?ks_c_5601-1987?B?OWt2ZmZQWklEcUNranVkcHE5Q3BnVzRpbzNvY3pmVFB0cmVkK0ZC?=
 =?ks_c_5601-1987?B?YjlTU012RWJkNEdRRTFIbE9DclBKTGFlaGphR00xRlp4YmRxb1Ux?=
 =?ks_c_5601-1987?B?eFdxOFZQYWJFNjZZcUxmRUdxWXBOSmh0TEwwMjJxSDBDSGZLSzFo?=
 =?ks_c_5601-1987?B?b3NvSHo3RjRRbnQ4Z2dBTm55TjZQMzRCYXdwU004UExpbEpIU3Vs?=
 =?ks_c_5601-1987?B?YTIzNi8wK0NETnN6d0hLWUUxK1BzZnlOOG84VUNRemVUWTBJV0pN?=
 =?ks_c_5601-1987?B?K3BUUlZSeVQ5ZFFTOENzSGViZmRMOW1BaUJnemwzWXBEbmYxbDF4?=
 =?ks_c_5601-1987?B?SDBQSU5qTyt3eitUS2NvN054Rng0cSt4UXpSNWE5dEFzaFNjY09k?=
 =?ks_c_5601-1987?B?WWU3UjRHOS9ESnVpTVNMTHBNVUJqU0FjOUtHdjNQYUNoK0x0U3VC?=
 =?ks_c_5601-1987?B?Wk1iaVlXSGk1VzJNbm92VmIzZW9hWlB0RmF4YjZYK09vVkY4WXE0?=
 =?ks_c_5601-1987?B?dFNxWENOVE9IQlFlbituSDVkazhtamIvYndkWjI3UjF6K0xYNUl5?=
 =?ks_c_5601-1987?B?WGZrR01ILzZabEdmR1VXYnVuMFE4OW85UkFxMTA2SHFFYnIzdEpw?=
 =?ks_c_5601-1987?B?TzdjUkdXQ2xwNDc0alhuZGd2MkQ2SDdyT3lPT0VNK1BqME9mMnpl?=
 =?ks_c_5601-1987?Q?QkWs9pFa/ETuBGIjXFSho6sbuHNGI?=
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2296f70b-cd7e-4282-ebd9-08da06e4574b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2022 00:31:41.2162
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A2Z6+OxiyjjfKYzkE9bQuLlpHeKJn15IqE67kGfkBa1Ino4WT+NKP7L3rdiAgX4jTaSzfDyOic2ngLCQLGTKzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SLXP216MB0974
Message-ID-Hash: GAM2OTEASQ4W76XDW7LAVT7HWIHRHY6Q
X-Message-ID-Hash: GAM2OTEASQ4W76XDW7LAVT7HWIHRHY6Q
X-MailFrom: ksshin@postech.ac.kr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus Projects? 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NL4QGGSNENBTWPJ5Q4O24K4EAVLGOQA5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0657735628711101847=="

--===============0657735628711101847==
Content-Language: ko-KR
Content-Type: multipart/related;
	boundary="_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_";
	type="multipart/alternative"

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_"

--_000_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gRGF2aWQ6DQoNCkkgc3VnZ2VzdCBjaGVja2luZyBvdXQgR05VIFJhZGlvIGNvbmZlcmVu
Y2UgcGFwZXJzL3JlY29yZGluZ3MsIGFzIG1hbnkgb2YgdGhlbSB1c2VzIFVTUlAocykgaW4gc29t
ZSB3YXlzLiAoRXhhbXBsZTogaHR0cHM6Ly9ldmVudHMuZ251cmFkaW8ub3JnL2V2ZW50LzgvY29u
dHJpYnV0aW9ucy8gLCBodHRwczovL3d3dy55b3V0dWJlLmNvbS9jL0dOVVJhZGlvUHJvamVjdCAs
IGV0Yy4pDQoNCg0KUmVnYXJkcywNCkt5ZW9uZyBTdSBTaGluDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KurizvSC757b3OiBEYXZpZCBIb3JuIDxkYXZpZC5ob3JuQGRpZ2lsZW50
LmNvbT4NCrq4s70gs6/CpTogMjAyMrPiIDO/+SAxNsDPILz2v+TAzyC/wMD8IDk6MDMNCrnetMIg
u+e29zogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPg0Kwaa48TogW1VTUlAtdXNlcnNdIEV0dHVzIFByb2plY3RzPw0KDQoNCkhpIEFsbCENCg0K
DQoNCk15IG5hbWWhr3MgRGF2aWQsIGFuZCBJIGFtIHRoZSBNYXJDb20gTWFuYWdlciBhdCBEaWdp
bGVudC4gV2Ugc2VsbCBFdHR1cyBwcm9qZWN0cyBvbiBvdXIgc2l0ZSAod2Whr3JlIGFsc28gcGFy
dCBvZiBOSSksIGJ1dCB3ZSBkb26hr3QgaGF2ZSBhIHRvbiBvZiBleHBlcmllbmNlIHdpdGggU0RS
IG9uIG91ciBBcHBsaWNhdGlvbnMgdGVhbS4gSSBhbSB3b25kZXJpbmcgaWYgeW91IGFsbCB3b3Vs
ZG6hr3QgbWluZCBzZW5kaW5nIG1lIHlvdXIgZmF2b3JpdGUgRXR0dXMgcHJvamVjdHMvYXBwbGlj
YXRpb25zL3dyaXRldXBzL2Jsb2dzIHNvIEkgY2FuIGZlYXR1cmUgdGhlbSBvbiBvdXIgb3duIGNo
YW5uZWxzLg0KDQoNCg0KV2hpbGUgSSBhbSBvbiB0aGUgdG9waWMsIEmhr2QgYmUgbG9va2luZyB0
byBzdGFydCBjb252ZXJzYXRpb25zIHdpdGggYW55b25lIHRoYXQgd291bGQgbGlrZSB0byBjb250
cmlidXRlIGNvbnRlbnQgZm9yIHRoZSBEaWdpbGVudCBibG9nIGZlYXR1cmluZyBFdHR1cyBwcm9k
dWN0cyAodGhlb3JldGljYWxseSB0ZWFtaW5nIHVwIHdpdGggRGlnaWxlbnQgcHJvZHVjdHMpLiBM
ZXQgbWUga25vdyEgQ2hlZXJzIQ0KDQoNCg0KRGF2aWQgSG9ybg0KDQpNYXJDb20gTWFuYWdlcg0K
DQpkYXZpZC5ob3JuQGRpZ2lsZW50LmNvbTxtYWlsdG86ZGF2aWQuaG9ybkBkaWdpbGVudC5jb20+
DQoNCk06ICgyMTQpIDU1Mi01NTU5DQoNCltjaWQ6aW1hZ2UwMDEuanBnQDAxRDgzN0E5LkQ3RkNG
NkIwXQ0KW0ZhY2Vib29rXTxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9EaWdpbGVudD4gIFtMaW5r
ZWRpbl0gPGh0dHA6Ly93d3cubGlua2VkaW4uY29tL2NvbXBhbnkvZGlnaWxlbnQtaW5jLj4gICBb
VHdpdHRlcl0gPGh0dHA6Ly90d2l0dGVyLmNvbS9EaWdpbGVudEluYz4gICBbWW91dHViZV0gPGh0
dHA6Ly93d3cueW91dHViZS5jb20vdXNlci9EaWdpbGVudEluYz4gICBbQmxvZ10gPGh0dHA6Ly9i
bG9nLmRpZ2lsZW50aW5jLmNvbS8+DQoNCg0K

--_000_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
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
Hello David:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I suggest checking out GNU Radio conference papers/recordings, as many of t=
hem uses USRP(s) in some ways. (Example:
<a href=3D"https://events.gnuradio.org/event/8/contributions/" id=3D"LPNoLP=
OWALinkPreview">
https://events.gnuradio.org/event/8/contributions/</a> , <a href=3D"https:/=
/www.youtube.com/c/GNURadioProject" id=3D"LPNoLPOWALinkPreview_1">
https://www.youtube.com/c/GNURadioProject</a> , etc.)<br>
</div>
<br>
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
David Horn &lt;david.horn@digilent.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2022=B3=E2 3=BF=F9 16=C0=CF =BC=F6=BF=E4=
=C0=CF =BF=C0=C0=FC 9:03<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Ettus Projects? </font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}
a:visited, span.x_MsoHyperlinkFollowed
	{color:#954F72;
	text-decoration:underline}
p.x_msonormal0, li.x_msonormal0, div.x_msonormal0
	{margin-right:0in;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle18
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hi All!</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">My name=A1=AFs David, and I am the MarCom Manager =
at Digilent. We sell Ettus projects on our site (we=A1=AFre also part of NI=
), but we don=A1=AFt have a ton of experience with SDR on our Applications =
team. I am wondering if you all wouldn=A1=AFt mind sending
 me your favorite Ettus projects/applications/writeups/blogs so I can featu=
re them on our own channels.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">While I am on the topic, I=A1=AFd be looking to st=
art conversations with anyone that would like to contribute content for the=
 Digilent blog featuring Ettus products (theoretically teaming up with Digi=
lent products). Let me know! Cheers!</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D""><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif; color:#00703C">David Horn</span></b><span style=3D"fon=
t-size:12.0pt; font-family:&quot;Arial&quot;,sans-serif; color:#1F497D"></s=
pan></p>
<p class=3D"x_MsoNormal" style=3D""><span style=3D"font-family:&quot;Arial&=
quot;,sans-serif">MarCom Manager</span></p>
<p class=3D"x_MsoNormal" style=3D""><a href=3D"mailto:david.horn@digilent.c=
om"><span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:#0563C1"=
>david.horn@digilent.com</span></a><u><span style=3D"color:#0563C1"></span>=
</u></p>
<p class=3D"x_MsoNormal" style=3D""><span style=3D"font-family:&quot;Arial&=
quot;,sans-serif">M: (214) 552-5559</span></p>
<p class=3D"x_MsoNormal" style=3D""><img border=3D"0" width=3D"180" height=
=3D"42" id=3D"x_Picture_x0020_1" style=3D"width:1.875in; height:.4375in" da=
ta-outlook-trace=3D"F:1|T:1" src=3D"cid:image001.jpg@01D837A9.D7FCF6B0"><sp=
an style=3D"color:#1F497D"><br>
</span><a href=3D"http://www.facebook.com/Digilent"><span style=3D"color:bl=
ue; text-decoration:none"><img border=3D"0" width=3D"20" height=3D"20" id=
=3D"x_Picture_x0020_18" alt=3D"Facebook" style=3D"width:.2083in; height:.20=
83in" data-outlook-trace=3D"F:1|T:1" src=3D"cid:image002.png@01D837A9.D7FCF=
6B0"></span></a><span style=3D"color:#1F497D">&nbsp;&nbsp;</span><a href=3D=
"http://www.linkedin.com/company/digilent-inc."><span style=3D"color:blue; =
text-decoration:none"><img border=3D"0" width=3D"20" height=3D"20" id=3D"x_=
Picture_x0020_17" alt=3D"Linkedin" style=3D"width:.2083in; height:.2083in" =
data-outlook-trace=3D"F:1|T:1" src=3D"cid:image003.png@01D837A9.D7FCF6B0"><=
/span></a><span style=3D"color:#1F497D">&nbsp;&nbsp;</span><a href=3D"http:=
//twitter.com/DigilentInc"><span style=3D"color:blue; text-decoration:none"=
><img border=3D"0" width=3D"20" height=3D"20" id=3D"x_Picture_x0020_16" alt=
=3D"Twitter" style=3D"width:.2083in; height:.2083in" data-outlook-trace=3D"=
F:1|T:1" src=3D"cid:image004.png@01D837A9.D7FCF6B0"></span></a><span style=
=3D"color:#1F497D">&nbsp;&nbsp;</span><a href=3D"http://www.youtube.com/use=
r/DigilentInc"><span style=3D"color:blue; text-decoration:none"><img border=
=3D"0" width=3D"20" height=3D"20" id=3D"x_Picture_x0020_15" alt=3D"Youtube"=
 style=3D"width:.2083in; height:.2083in" data-outlook-trace=3D"F:1|T:1" src=
=3D"cid:image005.png@01D837A9.D7FCF6B0"></span></a><span style=3D"color:#1F=
497D">&nbsp;&nbsp;</span><a href=3D"http://blog.digilentinc.com/"><span sty=
le=3D"color:blue; text-decoration:none"><img border=3D"0" width=3D"68" heig=
ht=3D"20" id=3D"x_Picture_x0020_14" alt=3D"Blog" style=3D"width:.7083in; he=
ight:.2083in" data-outlook-trace=3D"F:1|T:1" src=3D"cid:image006.png@01D837=
A9.D7FCF6B0"></span></a><span style=3D"font-family:&quot;Arial&quot;,sans-s=
erif"></span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
</body>
</html>

--_000_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_--

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=7815;
	creation-date="Wed, 16 Mar 2022 00:03:39 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image001.jpg@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QN/aHR0cDov
L25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENl
aGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4
OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAyMSA3OS4xNTQ5MTEsIDIwMTMvMTAvMjktMTE6
NDc6MTYgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5
OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHht
bG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0i
aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1w
PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9
InhtcC5kaWQ6NmIxNWQxOTUtM2MwYS0zMDQxLWI1MWQtNmQ1YzVhODNiOTYyIiB4bXBNTTpEb2N1
bWVudElEPSJ4bXAuZGlkOkRGMkJBMDRBNDkzOTExRTY5RTlFQzE1REFBMTNDOUNEIiB4bXBNTTpJ
bnN0YW5jZUlEPSJ4bXAuaWlkOkRGMkJBMDQ5NDkzOTExRTY5RTlFQzE1REFBMTNDOUNEIiB4bXA6
Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE0IChXaW5kb3dzKSI+IDx4bXBNTTpE
ZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjZiMTVkMTk1LTNjMGEtMzA0MS1i
NTFkLTZkNWM1YTgzYjk2MiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo2YjE1ZDE5NS0zYzBh
LTMwNDEtYjUxZC02ZDVjNWE4M2I5NjIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4g
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
0AdAf//Z

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=1312;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image002.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOkIzNkJDM0FBRDYyRjExRTM4ODE0QjNBRTRFNkUyODU3IiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOkIzNkJDM0FCRDYyRjExRTM4ODE0QjNBRTRFNkUyODU3Ij4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QjM2QkMzQThENjJGMTFFMzg4MTRC
M0FFNEU2RTI4NTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QjM2QkMzQTlENjJGMTFFMzg4
MTRCM0FFNEU2RTI4NTciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz5mnCE4AAAA4VBMVEUgQ4UhRIb///8cQIMaPoL09/kXO4Ak
R4chRIU6WZSIm74SN30TOH4fQ4U0VJCZqccyUo8fQoQjRYf9/v0zU5C3wtgxUY4gRIZZcqP+/v/s
7/MfQoUcP4MbP4Pw8/U9W5X19vlnf6z09vmFmLz4+ft9krcYPIHv8fW+ydxWcKKXpsSXpsU7WpX5
+vyxvdM0VJHEzd7R2OXq7fMLMXmOoMBrgq37/PwnSYkrTIr19vg5V5IlRocTN34eQoUeQoQVOn/7
+/wUOH4dQIN/k7hXcaSJm771+Po0U5Dv8vYwUI3i5u4ile41AAAAqUlEQVR42oTRxw7CMAyA4cSE
NEAKtOy99957b97/gYjgUFc54OOnSL8cE4NqYxBBtBGE6kjdyKSUJ8uNfF1rd6bLHUbeSgNAJOhB
uM+MlEExijH7yqt3z3cY43bTAAjVbVw/Jy8rgH5ptjAd5EP4zhGHePOHZRzisV4KYF4d45AVv95V
6FGwE6h+GHgBKhNm4jWZT6E/4P6Qfyh0FMQ5R66r8CbVOT4CDAAzQQzeNTxU9wAAAABJRU5ErkJg
gg==

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=1421;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image003.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjMyNkZGQURBRDYzMTExRTNBRTBFRUE4Q0I3QzMzNzVFIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjMyNkZGQURCRDYzMTExRTNBRTBFRUE4Q0I3QzMzNzVFIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MzI2RkZBRDhENjMxMTFFM0FFMEVF
QThDQjdDMzM3NUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MzI2RkZBRDlENjMxMTFFM0FF
MEVFQThDQjdDMzM3NUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz7epYdMAAABKVBMVEUCZpr///8AZJkAY5gIapsAX5UnfKc0
ha3b6vAAYJYAYpgAYZcAXZQBZZoAYpft9Piwz98Yc6EXcqEBZprJ3ukAZZmvz90AXpXv9PcZc6IA
X5Y3h64pfagBZZkJaJry9/kFaJn5+/0BZJiOutHu9fgAYJdOlLkQbp/W5u1QlbjT5OslfKbT5O2g
xNcBY5iwz+AAWZERb556rsjB2eYleqYXc6EObJ0bdaL7/Pzo8vX4+/sJaps1hKxxqMbm8fQWcJ9w
qMVjoMASb6D7/fxamrvl7/Mle6cbdaPM4Onk7vGBssv0+PmKuM34+/z6/PsYdKLp8vZfn70adKMS
cJ+kyNju9PY/irHJ3eb///4HaJtkocBmosCjx9qXwNMwgKoAZZjI3ukNbZ5RlbmAOE+4AAAAzklE
QVR42mJgwAV4sYhJ8bHGo4vxRRkry8miijG7OzMyaoqjCjKZaTD62nCjazdU0+Zm4uGRYuYR5+GC
Wq3g4hgdLOhgm2RvpOtlwgnRbm3JyCgjzcjoqcXIyBgQBzaIiYWDkZGNHSjgF27FyCjGKYws6B1m
EBjB6JrIhCzowa3qL8+oYsqMLJjAxCUYysgvhCIowsQlKYFf0A7iJB0mriALRkVBkCBvZKyAmLmb
gL6PrJ5TiECMuhLY+ZysrKKirKxAvwgDmbwMJACAAAMAe4IWT+fpWKkAAAAASUVORK5CYII=

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=1402;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image004.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjVBNkZEOTFBRDYzMTExRTM5NjM3RjU5M0MyMEQ3NjQwIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjVBNkZEOTFCRDYzMTExRTM5NjM3RjU5M0MyMEQ3NjQwIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NUE2RkQ5MThENjMxMTFFMzk2MzdG
NTkzQzIwRDc2NDAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NUE2RkQ5MTlENjMxMTFFMzk2
MzdGNTkzQzIwRDc2NDAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz5vE2eaAAABF1BMVEUqqeD///8pqeAfpd8epN8nqOAkp+Am
qOAlp+D///4ipt8rqeAgpd8oqeAhpt8epd/4/P0oqOByxuno9vs/suIkpuCx3/HZ8Pjb8PolqOA0
reF1yOnP6/WW1e4mp+AnqN8qqeGIz+z0+/3o9vlkweeq3fL5/f5pwuei2e8fpd7E5/b2+/37/v21
4fO+5fSN0e3V7vdCs+RuxOjy+vvx+f0vq+Ajpt9vxeij2vA3ruE3r+Iao95pw+eb1u79/v5+yupD
s+NUuuXL6vXQ7Pjt+Pub1vDY7/lsxOd6yeru+PsrquEgpd7L6/ii2fDJ6Pbc8fqv3/Jnwujl9fqL
0Oxpw+kjp99YveXw+fyCzOx5yOtDs+Q4r+JXu+ZHtO+1AAAAzUlEQVR42mJgoBgwQWkuFmZmJjl2
bgiPDUzyOVoESHOIOLCCOKEagda8QDEVAUZGRhmnMHaQZlZ/gUgzFjZ5A0YQUHYH6/MWY2T0M4+2
dAELyjKDrZBU9wRyTCTUwIIh/GC7OfS0GREghgtsK48QJ0JMWIoV6r7gcLigLwvU0Tz2cKXGUWxQ
QUEv1yA7iKAHC9Q/DKIsCrY6ICFOfWaol1mtFLWUwMrEbWBiDAy8hhG6zm4+qkamzEihxM6vyc7A
wcLMih56gkyEAhggwACBwBILQ39WmAAAAABJRU5ErkJggg==

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/png; name="image005.png"
Content-Description: image005.png
Content-Disposition: inline; filename="image005.png"; size=1582;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image005.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjdGNUJDMDlBRDYzMTExRTM5Q0Y4OEM1RjdERjkxNTE1IiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjdGNUJDMDlCRDYzMTExRTM5Q0Y4OEM1RjdERjkxNTE1Ij4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6N0Y1QkMwOThENjMxMTFFMzlDRjg4
QzVGN0RGOTE1MTUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6N0Y1QkMwOTlENjMxMTFFMzlD
Rjg4QzVGN0RGOTE1MTUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz44dQDpAAABgFBMVEXuX2PvYGTsRknqGyD2q63yfoH1rq/r
HyT2uLrtTVL6ysvtQUXwY2bxdXnqHSL1nZ79/f3wW17zjZD0kpXxeXruWl775eX74eLqHiPyen70
mJn1tLXzg4X2sbL1l5nrISb31NXrIyjsOD33xcbqHCH2u732q6z1qKnuSEzqFxzvV1vqGR7sPkTr
JCn////+///vUlb9///88fDsNzz5zc7wXmPwb3LzlZjrJivsLDH2qKrqFBn8/PzyhIf63+D76On1
pKXtVFn5vb/wXWLyi43vV1zvZWnrJSrtVlvrKi/oDRLvaW7609b7/Pz5yszxfID1mZv++/r1qKv1
yMj2qKn65+f409Pzh4r52Nn53t/78O/ykJLzlZbvU1j0pKbsNTr3wcLxcHLxcHTxdnf2tLX3trf1
o6bxeHzweX7wW2DsMzj86OjqEhj68fH8+Pj89PLrJCj2r7H0p6f89vbuWFv41NX41db61db4zMz5
u7zxaGzxbG/wXWDwZmrxbHH77e23kxZVAAABGElEQVR42mLQBQF5CUU+XQRgAIvF6+gyWSiiCvI5
BjMqa/NJSLBLuMMFFRUTwkRElT0kq0VU4IK6muG+WSlBLIVyapoIQRWtCvbK9FQ1IQcUQT9mVSFZ
2Th1hKCENZO6V0YpQ7SCbY4iVJBZJ9OZMVO0zpWx1lRDQhEsyGyWpwcHgeZ8BUBBecsoK1MecT09
Jy6QqKEGH1CQXanYh9MlMlssQNJOgMNeX5AZJGhspCdZzibsz8+UWFTijxDkNWERZpUKkRHhqUIW
VAtglWORSY5RNYQIKuXrJflJM7nxc5qlifLq14AE5T3F9CKicqUVQjnKbNTEIbbrMnvX68OAno0Q
H9RHSgYwEMutogj1OzszHEiA+AABBgDk3UbbFe31OgAAAABJRU5ErkJggg==

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_
Content-Type: image/png; name="image006.png"
Content-Description: image006.png
Content-Disposition: inline; filename="image006.png"; size=2168;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:28:53 GMT"
Content-ID: <image006.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEQAAAAUCAMAAAADQ2t3AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjREOUFCREUwRDZENTExRTM5M0RCQTRFQ0Y5M0RFRERBIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjREOUFCREUxRDZENTExRTM5M0RCQTRFQ0Y5M0RFRERBIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NEQ5QUJEREVENkQ1MTFFMzkzREJB
NEVDRjkzREVEREEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NEQ5QUJEREZENkQ1MTFFMzkz
REJBNEVDRjkzREVEREEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz6C5KT1AAABgFBMVEXDwcUAaDI1jWSJvKQAbjkAZCtom4Va
o4Ho8u7d6+USekqSwqyVrqXN49mLqp2pz718tZpLmXVrq4wLdUMug1t+pJVAlG0jg1aYxbAAcDwb
fE4AbDYAajO9v8Gy1MRbmX2cyLOyubnNxcxSnnqqt7M9kWnt9fG82cx0oI2esqukzblDi2pwnooQ
dkR0sZR5opFSk3XF3tLI4dWDp5hclnz0+fdlqYn2+viis67Rx8/x9/QWeksgfk90r5KOq6Di7+m5
vb6uuLZ/pZYtiV74+/lgpYW2vLymtbGCuZ/6/PvGwsdWoH2zuroFbzqOwKkAXSLOxs0fgVMKcj8G
cT0vimDA3M/KxMrIw8jT5t5Nm3fOxc3MxMsafk8Sd0YAYCf///8AZy8AbzsDcj/+/v7Pxs4CcT79
/v52oY+318j9/v3+//9vrpD8/f0ngFeLp5xWk3hgmH83hmCHqJr7/fxPjXAohlq418ms0L9np4hr
qIgCcT2fyraXxa8WeEkXe0xElm+bK5OfAAADYklEQVR42pyUa0MaRxSGd3A3ygIbkFt0BovcBLka
FI1a8AKIqEQUSzTC2UUSI8RE09q0MdG/3rM7S5P2W/t+WM4ss8+c2xzBn5a5Op7cdUf+H0r7BXmK
iy566/ZjzbA1XSNraiSRUvH7Sl9S0bDkEYSuB1by/RzT7Te9Xm9KJGh/6fXemN8wKrcs5yIxMZS4
7yx3bkL/AdlqC9nN/W/IZs7Sq1eOheAjJS6rtcH4sa53sQtYXagc6J9NkbtgaRd+LdmmyXcIvRU2
ApHsYQq3kGfA5ZTGAZ7qEPHo3nwHcw/6lsqyuZzw0RFEO7aHUqnX+YRwTQ3ITOZ+GcrNMIdo4meA
i5NabWYXwNERCcLB2hg6T5ByLpoQlgsl8srKRrytiJoO+fOlNAYQdnEIGQKUx5mqEt8EwFd1HZ/3
blVVWWZiT9M4ROzMCvHAp+RrpRhKMgPS7ToBfKcGRExbAYaSnlIJsUsPGYDnRm60gw4b5YSl+sVi
28OK9VRg50hFSMMynIDn4p4BYT6AUtoop0YXYFCZAfhDxbMZIypj3BN6HajG25eUeoRE/vBG+mqk
rGw7MhNLCpgkxquoYpQ2B0AUHTx/9KGibh2iiUrIu1LF6tJ46HJzI20D2F1+e2XNqNwTMgnweQSp
AQQRYsHXFeOwpWYHITTZ3sn2P+Iu8dt+5DKUwj+dcusdQIHnhOCPw2xW8hQgM4c5JyNI7AEh2tFK
O15NGB3PPva3EvXbE5iUVM9b+J17Qpur6L9qlHE9BtBqAMyrGoYTPV0CxxcMhy327covt5T3SyKQ
bX94RIhkATjRc9IlpIupdqxJlKrHmNMFFkUHKhJj0kss1hiRhc50NZCqZwk1RDw7T5Sz5LzN78LA
G3oclUKh4MIaWydb2+P4shxlNAjwPhj1bztXIeanCMn284n9G6XIpdiLkfqOJaZHW3oIm839s7+E
z4srPY97BG8BOgSD8vvBYDBOsE+S9chl/Ym9um9qdnYzUv3NCcul+6ZeYn6LutPzZd24mtsm+lU7
cBrHgPXUuICpF9mI4PV6t37Qpxt3q4nXXJMtXOcaZf7CWGPYopTPGSKHa41a2E2MUeBRimf1w7PQ
j3qxyPjAwZ40JBoTRCUq/XsqifqSiHwo+ddyP/1bubX/Nh7/EmAAfVz+JISuvG4AAAAASUVORK5C
YII=

--_009_SL2P216MB12467D2FBB04D804FC41439593119SL2P216MB1246KORP_--

--===============0657735628711101847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0657735628711101847==--
