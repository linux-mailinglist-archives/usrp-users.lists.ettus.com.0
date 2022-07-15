Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 272E25758C9
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jul 2022 02:54:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91A31380F1F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 20:54:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657846448; bh=yiYGJ95RE0LhhJtLXsR2yIIrGzoq8cpthBQPVQ+oo1I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BWi3OVWU18iy4Q+Vtaq0f0GtAKfSs4sI7xS9xVjuTJkolCv466iZV5C3P/UjVOja5
	 KZoiZMX2ICaXwT4qAUVZCeAHvoZYIxO7loxJTGszSg/uBjd1b9F8OaVuatRjxod/fL
	 yE79KBb0iyQ3JjCQQGi5Taoq3PCeIhv6PgHAf1ZPbfxc7eVmzanLRLNXk4WNU9uVmr
	 OYavT43B5TBfczMTwDlr10dbrro+hLwX+3icFoAmRgTCYKhW8tg8uYmo5rRjIolcIn
	 xQbJkFs2Ll38qeUkIATj6WTtDLAkRvE3nOHyB3O4UO1Lg1lHe9e//SJLDedjBiudj4
	 UIRTyVcBEPLrg==
Received: from KOR01-SL2-obe.outbound.protection.outlook.com (mail-sl2kor01on2124.outbound.protection.outlook.com [40.107.129.124])
	by mm2.emwd.com (Postfix) with ESMTPS id E9B79383DB1
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 20:51:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=postechackr.onmicrosoft.com header.i=@postechackr.onmicrosoft.com header.b="Su34+ZYC";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEDYHzxOHvr+y7lUkh0SJQVYsSZrykzMzNCTyj6XwLKF6e8mcvnA6qLViAwc0FpLejWviJoiq5iHZEGUu7uaLzMYRZi30UEacJsvhSiF2RsVfYP79YblFntNtdClXzDwHMI2bu2gbQXHxijJkPWv9pniGFMrlZxNe9sr7UMrGKH28V+QFfRA4PdrzgSw0NQatNp58uwQMehxDQnUDsGBIhtDitvdNNrvZ4eP2Zwfi5+sE8/mTq8J/xN77sxXV//5kpHK69eGDWVRE+dyKRiYnYXpKzmXVSTBS4DXWDntERQYJqbsKQxtpWfILqaWsVsP4e8yD9OJ3czQqm0hRizs9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ujkJoLPlAhe5GNZCKvxSwylWhTm49ouWmPY8Js3imSw=;
 b=KLq4qcF+lRP7F4h4tN0/x+97ckqqK1TTaus8xbYEdv1XnPGIleDKnmvwWi4KjbRrwgc8xdITauDtWup7NIisRfAyS/yijMsZdIZCBOYutBRc9MoTPlEpxPcm1P42OC7EMYlR/iPJBdqIwi8Vec/yKmul9PHfvnig/NS8JGxomi9BKIyfPA86mG/mrckxnQY51mfusIOZl+TDdNVHorOjuNoddOXLz0eHPBO1cLhuoXJ1WNW+Uu71kUtsRUXeyL+yqqG0fvResyVyUCO+/SsT8V0EH7UzjQEEtUjRaoEX5tiBYbEhUxmvv/dekq2b7K3NyjZOLhd4akXE6f+pF6EWAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ujkJoLPlAhe5GNZCKvxSwylWhTm49ouWmPY8Js3imSw=;
 b=Su34+ZYCvs2xJJ9sP7px7YJPLODHT6KIE6nh5bNmoPx/DziWDdXFsqIushEitE3zV3TiPC7T3elDaP7h+FIksKRxmCPeXu0UMFu++sf5H13DYZCOsPqYGAmu0bGsr5pFz9B0A40OTF37zkoXOQ8zpHAUc/JxqZlNplMfv7LzIdA=
Received: from SL2P216MB1246.KORP216.PROD.OUTLOOK.COM (2603:1096:101:a::9) by
 PU4P216MB1255.KORP216.PROD.OUTLOOK.COM (2603:1096:301:a9::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.12; Fri, 15 Jul 2022 00:51:55 +0000
Received: from SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
 ([fe80::78d0:776a:5793:e0cc]) by SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
 ([fe80::78d0:776a:5793:e0cc%5]) with mapi id 15.20.5438.015; Fri, 15 Jul 2022
 00:51:55 +0000
From: Kyeong Su Shin <ksshin@postech.ac.kr>
To: fan <fyt201460@163.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Is it possible to control the sampling position of
 the baseband signal on the rx side of the usrp?
Thread-Index: AQHYl0jHXAz84V1KUEmRVkMpfe6lj61+lbtC
Date: Fri, 15 Jul 2022 00:51:55 +0000
Message-ID: 
 <SL2P216MB1246A81C1053520DF14EDEB2938B9@SL2P216MB1246.KORP216.PROD.OUTLOOK.COM>
References: <49d8c18d.2396.181fb562c2f.Coremail.fyt201460@163.com>
In-Reply-To: <49d8c18d.2396.181fb562c2f.Coremail.fyt201460@163.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=postech.ac.kr;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91469f4d-3494-4256-b6fd-08da65fc3727
x-ms-traffictypediagnostic: PU4P216MB1255:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yjBfr9bq59hVoYd/LicFum1uszulR56dGnI299urVrIQG17oeTp1HaX1wuau/BTyyG8KO1/V9gKyomfqjrNumlb8py9/BsFxzUjb2Ens+w4J2SlTbIyZ3oUhQzxh6xV0IJEM3rq3jlbAo8P8Z/QNV4MEbVYfnz7IzYDhun5lF7E+AXXX7idamlbnKJzVDVXCULmPPnlAHKaGrTgKbZSnlHW5vJOLp+HgfalbuIOVWiN6MJo2FqhTUNmAAfmHI7qs/lzbBYJHKxhijXgfxic5XyjSZH/k9OqDHdZWZPXpxd+ViKMeuX7nt48B+Mgj8Dk5H9YqqMjSdZTGYeHMOsD4Rhxjjg9l/b3lyiY8rHLv+42Yx1MFCpssE/NeyLh+eBCQ3o+89G72oyn/wnOkyRbsdUsQn/iXvEleh/mR8TGKrOUR1dB5lMbQNfzHRseW17udMWMwson4mvRMoUVG+ezRH19ca78rbhi2TYIpPNNxuATEqToCI+Rwv5kjHoL3gVzkU1VIoAAd1S78Qb3wfb554t2ivMyzlXGaWwKS8CYqtyH8PpOYE01SILhCniqv6iaXLFFLmO014lkIJBouzwb34t7avkNiGJXpjjtKzeOUTzz7FRFeEK9mRrcYgHM/5qYMJkDTX6mDIh2CFfsGkqSsfNTD2Di7vvqNaAojlK/lfWWTlAyTLYGKct679onUUuuhY3xHB/x2qgDBD9IA7OQHmWpR5P2EleLIP6avlRosN0XwkHmAImMygXFJptUnwT+ubxdpSB++UMgJ78fYEO1xFI/7C6icFkLuxj+bpaba9GN8j99g20WFwpTysO6POJnW9/9jj53ZF5wqjSEyuaw/K/gq48F9tuIKes0mXHgztEd65X8HExj324TTqPIVsJbM
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB1246.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(396003)(366004)(346002)(136003)(376002)(39860400002)(186003)(2906002)(122000001)(83380400001)(38100700002)(19627405001)(5660300002)(786003)(8936002)(52536014)(33656002)(478600001)(110136005)(71200400001)(55016003)(66476007)(66446008)(41300700001)(8676002)(38070700005)(76116006)(66556008)(66946007)(64756008)(7696005)(6506007)(86362001)(316002)(41320700001)(9686003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?ks_c_5601-1987?B?L2hlemV4MnM1Q1dPOXRYaHQvejJuQm44VEdWWlIrUkNlbnZ6RWUy?=
 =?ks_c_5601-1987?B?MUc4OFdvWEpzeUtMdkZpS2ZnSDhGSWVSR3daaTZUN2t0a05IMGFw?=
 =?ks_c_5601-1987?B?Ry9IeDNNVm9kT3pVS0ZQR1lqSTYxaFUvV1AwaytsTW5BeXN3RGZN?=
 =?ks_c_5601-1987?B?TnFIQTlMbUk3ZFNZQUR6YnI5Q2hrdTlvc0lkbDJFSXhsZEx5RlFZ?=
 =?ks_c_5601-1987?B?SHZJQUdIVmlJeDh4ajdiRThBZFl6b25UMkZTTUxCckRzVm5FMzd3?=
 =?ks_c_5601-1987?B?TFhpNmhxb0JzV3BrNjZWclIvWmNERTYxY3B0THRsZUdkL1hnVm9D?=
 =?ks_c_5601-1987?B?a2IrbFg3K0g0UkVqdzUyN3E4QkxmbHFvOFBqNEUyOHFpOUlueVpw?=
 =?ks_c_5601-1987?B?cWZFZTArUlVvVUJ2UlFsc0FQNE4zaklVMXo4V2NRc2dIcm1SMmtJ?=
 =?ks_c_5601-1987?B?U3plS2l5bWMrTFQ2eG1LaldXblJKL2NRNExlRVd6RThBUEhleWZW?=
 =?ks_c_5601-1987?B?eVBXb3ZWTFRFUm5ua2ppTDJjMGh5MUZrT0I5ODhmL1NsUFJNTmFo?=
 =?ks_c_5601-1987?B?S2NHbnV5aXVxbDVlTEdVYldTaXFaODU0cFB0Vmg0am96N01JSktL?=
 =?ks_c_5601-1987?B?M1JEUWZWRGpnNi9xWVhzeUN0VmJhRXFXZTY0bGxqTmxKM0gxZWtm?=
 =?ks_c_5601-1987?B?aTRtcnJpZVVzR3h4dWE4L05PcDQySFBrSHNMaHRES3RCY2k5RTcz?=
 =?ks_c_5601-1987?B?YXAzV1d1YkZnbFY0VjFBSkZEQklzUXNTcXZrVDdmZTZlVXBhRXRm?=
 =?ks_c_5601-1987?B?UVpZR2wvSlhXL3N2UnFaTmhlbGNiOEFIajMxTFphVmZrYkxTVTVK?=
 =?ks_c_5601-1987?B?QitDUllPLzNUNU5PWFh6NkNSMXBXVVErSGgzdXhIQUswenVqZXNZ?=
 =?ks_c_5601-1987?B?M0J4NHFYWW1ib1ZVWXlCREpuS21jdDhyTnBEVjRBZXczR2RxeVJX?=
 =?ks_c_5601-1987?B?YmtCNHNMMFJtZldnVEVxeC9uZDlNRlVlbzZWODZuRFZCdFJiYUY2?=
 =?ks_c_5601-1987?B?SllsL1RoYWdZRmx6YVMzbWE5Sk05RU4vbGZPZTR3cnhlL1ZpcXRn?=
 =?ks_c_5601-1987?B?N1I0cHA5US9xTTc2ZVlIVzNpNG1wVldpbjdoaVA0SEs1eVhCMVFV?=
 =?ks_c_5601-1987?B?UnFHc29zNE81RU12NFBBQlg2SmtJeWNVNXh0U2pCT1ZyUVdramRN?=
 =?ks_c_5601-1987?B?cFhPWm1qNzZ4bXZxQ0g2MlFjendqVTVVR25qRFkzb1I3b3NBYTkx?=
 =?ks_c_5601-1987?B?NG85M3Q0UU1XTlNLUUhyNUUzSWwxeVhwSmM5VnlqQ0F1OUVxeVFh?=
 =?ks_c_5601-1987?B?WDB1LzZZWGlaQXZ3dm1ZcDR3alR0VTlGa3RwalVzUGl6ckhXTmY4?=
 =?ks_c_5601-1987?B?MTFPUVBtelFnQUYycXF0TGpWaDM5eFEwV0dNRy94WXB3V2hCd2VS?=
 =?ks_c_5601-1987?B?UUpkNmxpN2dYa3RFWXNXNmR2SjQvdTZNZHpmcFF4cDY2Si9xcjlX?=
 =?ks_c_5601-1987?B?MHJjbmZDbTVrTlpmYlhVMmVzWjduZlBNaVNmTSszbU1mR3pPaHIw?=
 =?ks_c_5601-1987?B?bHN3M1VUQ2hnblJJVnhMRi8yMVhBQUIrTzNpL0MxeUlWZXVubHNQ?=
 =?ks_c_5601-1987?B?dXh1RU1uQlNjTWxqVytkODdZbVJCTnR5WVNNQ3lGWDcyZE5mcmJ5?=
 =?ks_c_5601-1987?B?RHVjdDlKUGd1cXhtaDdVa285YmpzSDQyZFVld09UbDZEVUN2QytC?=
 =?ks_c_5601-1987?B?ZXJvazk2cmxnaFVuTlRoajFtZ3FoL05PdG5kdit3ajM1UTM1dEg5?=
 =?ks_c_5601-1987?B?WEFLdWlLT0JITTV3RDUzNkZoem9hMDNHMjN4TUZLazJtNzh5S1NV?=
 =?ks_c_5601-1987?B?QVBaMVUrNWxTb2xkZTNoVUlvSWpKMlAxRTd4VXc1M243NTk5NUQ1?=
 =?ks_c_5601-1987?B?N2FGVWx0OGVkRXMwQjQzcG96Q0J6MnBXeUdacVY4bEhnbjFXMW5y?=
 =?ks_c_5601-1987?B?TENLMDIxQnIyUlkvNlhoZjNPcmh0OW1iaW9NSXpMOG05OUI0d21w?=
 =?ks_c_5601-1987?B?RkR5R3RCbnVzYmdsQ1EyZDR2ZWM2UUV0NzNVSktCZXlYQ3ZqUFhJ?=
 =?ks_c_5601-1987?B?WXA2aXhWb3NLOFIweDVSN0lRc0tXM0pieXJKQzljYU11UXNoV2xO?=
 =?ks_c_5601-1987?B?Uk9tc2M0aTFyRmFTdnFWRkVDSGhqQ0JYWGxrWlFHbFI5TGhDNDRu?=
 =?ks_c_5601-1987?B?UHhsaWU0ZXZtZHhKcmRmUC9oQXFLdjNNMkEvdnhaREdMWEV6Qk1j?=
 =?ks_c_5601-1987?B?RktQQk5iM3dCcFVVVW50Rk5mY2h1UEJ5TXRYMzNLd3krZzRwSHJq?=
 =?ks_c_5601-1987?Q?H2oe5KoAw0Fz8pJG/2dISqLYnllsfyjubFEZFe3U?=
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB1246.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 91469f4d-3494-4256-b6fd-08da65fc3727
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2022 00:51:55.7703
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sLokfZrdCvmFWiwCQe1mHjJGZ4tMaxiiV+QlmFoVyls639vzk5OsJthpeVR/R9oPxZGDz1uRarQ8kAOrpGwecQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU4P216MB1255
Message-ID-Hash: R5VGJKNCUDEMQA4CCQ7YPVSZBVJNXECQ
X-Message-ID-Hash: R5VGJKNCUDEMQA4CCQ7YPVSZBVJNXECQ
X-MailFrom: ksshin@postech.ac.kr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to control the sampling position of the baseband signal on the rx side of the usrp?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZHJ7MRYD2TAET6PQ3TEBL7KI4OIF5KH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2430102381190212924=="

--===============2430102381190212924==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB1246A81C1053520DF14EDEB2938B9SL2P216MB1246KORP_"

--_000_SL2P216MB1246A81C1053520DF14EDEB2938B9SL2P216MB1246KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gRmFuOg0KDQpVU1JQcyAob3IgYW55IG90aGVyIGdlbmVyYWwtcHVycG9zZSBTRFJzKSBk
byBub3QgZG8gdGhlIHRpbWluZyByZWNvdmVyeSBmb3IgeW91LiBJdCBpcyBkZXNpZ25lZCB0byB0
cmFuc21pdCBhcmJpdHJhcnkgc2lnbmFscywgc28gaXQgc2ltcGx5IGRvZXMgbm90IGhhdmUgYW55
IGlkZWEgYWJvdXQgdGhlICJ0aW1pbmciIG9mIHlvdXIgc2lnbmFscy4gVGhlIG1pc21hdGNoIGlu
IHRoZSBpbnRlcm5hbCBvc2NpbGxhdG9yIGNsb2NrcyB3aWxsIGNhdXNlIHBoYXNlIGRyaWZ0IG92
ZXIgdGltZS4NCg0KWW91IGNhbiB0cnkgdXNpbmcgZXh0ZXJuYWwgY2xvY2sgaW5wdXRzIChQUFMg
YW5kIDEwIE1IeiBpbnB1dHMpIG9mIHRoZSBVU1JQcyB0byBmb3JjZWZ1bGx5IHN5bmNocm9uaXpl
IHRoZW0uIFRoaXMgaXMgb2Z0ZW4gbm90IHByYWN0aWNhbCBpbiByZWFsLXdvcmxkIHdpcmVsZXNz
IHN5c3RlbXMsIHRob3VnaC4gSXQgaXMgZ3JlYXQgZm9yIHNvbWUgKGFsYmVpdCBsaW1pdGVkKSBh
cHBsaWNhdGlvbnMgYW5kIGZvciBkZWJ1Z2dpbmcgam9icy4NCg0KU29tZXRoaW5nIGVsc2UgdGhh
dCB5b3UgY2FuIGRvIGlzIGltcGxlbWVudGluZyB5b3VyIG93biBzeW5jaHJvbml6YXRpb24gYWxn
b3JpdGhtcy4gWW91IGNhbiBlaXRoZXIgb3ZlcnNhbXBsZSB5b3VyIHNpZ25hbHMgYW5kIHRoZW4g
dXNlIHNpZ25hbCBwcm9jZXNzaW5nIGZyYW1ld29ya3MgKGxpa2UgR05VIFJhZGlvKSB0byBkbyB0
aGUgcmVjb3ZlcnksIG9yIGltcGxlbWVudCB0aGVtIG9uIHRoZSBGUEdBIG9mIHRoZSBCMjEwLiBC
b3RoIHdpbGwgZ2l2ZSB5b3UgdGhlIHNhbWUgcGVyZm9ybWFuY2UsIGFzc3VtaW5nIHRoYXQgeW91
ciBVU0IgcG9ydCBjYW4gaGFuZGxlIHRoZSBvdmVyc2FtcGxlZCBzaWduYWxzIGFuZCB0aGUgRlBH
QSBpcyBzdWZmaWNpZW50bHkgbGFyZ2UgZm9yIHlvdXIgcHVycG9zZXMuDQoNClJlZ2FyZHMsDQpL
eWVvbmcgU3UgU2hpbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCrq4s70gu+e2
9zogZmFuIDxmeXQyMDE0NjBAMTYzLmNvbT4NCrq4s70gs6/CpTogMjAyMrPiIDe/+SAxNMDPILjx
v+TAzyC/wMjEIDM6MTINCrnetMIgu+e29zogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0Kwaa48TogW1VTUlAtdXNlcnNdIElzIGl0IHBvc3Np
YmxlIHRvIGNvbnRyb2wgdGhlIHNhbXBsaW5nIHBvc2l0aW9uIG9mIHRoZSBiYXNlYmFuZCBzaWdu
YWwgb24gdGhlIHJ4IHNpZGUgb2YgdGhlIHVzcnA/DQoNCg0KICAgICAgICAgICBIaaOsZXZlcnlv
bmUuIEkgaGF2ZSB0aGUgIHF1ZXN0aW9uOiBJcyBpdCBwb3NzaWJsZSB0byBjb250cm9sIHRoZSBz
YW1wbGluZyBwb3NpdGlvbiBvZiB0aGUgYmFzZWJhbmQgc2lnbmFsIG9uIHRoZSByeCBzaWRlIG9m
IHRoZSB1c3JwPw0KDQogICAgICAgICAgIFRoZSBzaXR1YXRpb24gaXMgYXMgZm9sbG93czogSSB1
c2UgYSB1c3JwIGIyMTAgdG8gdHJhbnNtaXQgYSBzZXQgb2YgMTZRQU0gc2lnbmFscywgYW5kIHJl
Y2VpdmUgdGhpcyBzaWduYWwgb24gdGhlIHJ4IHNpZGUgb2YgdGhlIHNhbWUgZGV2aWNlLCBhbmQg
cmVwZWF0IHRoaXMgc2V2ZXJhbCB0aW1lcy4gSG93ZXZlciwgdW5kZXIgdGhlIGNvbmRpdGlvbiB0
aGF0IHRoZSB0cmFuc21pdHRlZCBzaWduYWwsIHR4IGdhaW4sIHJ4IGdhaW4sIGNoYW5uZWwgZnJl
cXVlbmN5IGFuZCBvdGhlciBzZXR0aW5ncyBhcmUgdW5jaGFuZ2VkLCB0aGVyZSBhcmUgc29tZSBk
aWZmZXJlbmNlcyBpbiBhbXBsaXR1ZGUgYW5kIHBoYXNlIGJldHdlZW4gdGhlIHJlY2VpdmVkIGRh
dGEgZWFjaCB0aW1lLiBJIG5ldmVyIG1vdmVkIHRoZSBwb3NpdGlvbiBvZiBiMjEwLCBzbyB0aGUg
Y2hhbm5lbCBzaG91bGQgYmUgdGltZS1pbnZhcmlhbnQuDQoNCiAgICAgICAgICAgSSB0aGluayB0
aGVyZSBhcmUgdHdvIHBvc3NpYmxlIHJlYXNvbnM6IEZpcnN0LCBldmVuIGlmIHRoZSB0cmFuc21p
dHRlZCBzaWduYWwgYW5kIHRyYW5zbWl0IHNldHRpbmdzIGFyZSB0aGUgc2FtZSBlYWNoIHRpbWUs
IHRoZSBzaWduYWwgYWN0dWFsbHkgdHJhbnNtaXR0ZWQgYnkgdXNycCBlYWNoIHRpbWUgaXMgc3Rp
bGwgZGlmZmVyZW50OyBzZWNvbmQsIHRoZSByZWNlaXZlciBkb2VzIG5vdCBzYW1wbGUgYXQgdGhl
IG9wdGltYWwgc2FtcGxpbmcgcG9pbnQgLCBidXQgcmFuZG9tbHkgc2FtcGxlcy4NCg0KICAgICAg
ICAgICBGaXJzdGx5o6xsZXQncyBkaXNjdXNzIHRoZSBzZWNvbmQgcG9zc2liaWxpdHkuIEFzIGZh
ciBhcyBJIGtub3csIFVTUlAncyBkc3AgbW9kdWxlIGRvd25jb252ZXJ0cyB0aGUgcmVjZWl2ZWQg
YmFuZHBhc3Mgc2lnbmFsIHRvIGJhc2ViYW5kIGFuZCB0aGVuIHNhbXBsZXMgdGhlIGJhc2ViYW5k
IHNpZ25hbC4gYSBnYXJkbmVyIGxvb3AgaXMgdXN1YWxseSB1c2VkIHRvIGdldCB0aGUgYmVzdCBz
YW1wbGluZyBwb2ludCBmcm9tIHRoZSBzYW1wbGVkIGRhdGEgKHRpbWluZyByZWNvdmVyeSksIGJ1
dCB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIGdhcmRuZXIgcmluZ3MgaW4gMngyIG1pbW8gd2l0
aCAxNlFBTSBpcyBtb3JlIGRpZmZpY3VsdC4gSXMgdGhlcmUgYSBVSEQgaW50ZXJmYWNlIHRoYXQg
Y2FuIGNvbnRyb2wgdGhlIHBvc2l0aW9uIG9mIHRoZSBzYW1wbGUgcG9pbnRzPw0KICAgICAgICAg
ICBPciwgdGhlIHJlYWwgcmVhc29uIGlzIHRoZSBmaXJzdKO/DQoNCg==

--_000_SL2P216MB1246A81C1053520DF14EDEB2938B9SL2P216MB1246KORP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello Fan:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
USRPs (or any other general-purpose SDRs) do not do the timing recovery for=
 you. It is designed to transmit arbitrary signals, so it simply does not h=
ave any idea about the &quot;timing&quot; of your signals. The mismatch in =
the internal oscillator clocks will cause
 phase drift over time.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
You can try using external clock inputs (PPS and 10 MHz inputs) of the USRP=
s to forcefully synchronize them. This is often not practical in real-world=
 wireless systems, though. It is great for some (albeit limited) applicatio=
ns and for debugging jobs.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Something else that you can do is implementing your own synchronization alg=
orithms. You can either oversample your signals and then use signal process=
ing frameworks (like GNU Radio) to do the recovery, or implement them on th=
e FPGA of the B210. Both will give
 you the same performance, assuming that your USB port can handle the overs=
ampled signals and the FPGA is sufficiently large for your purposes.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Kyeong Su Shin<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
fan &lt;fyt201460@163.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2022=B3=E2 7=BF=F9 14=C0=CF =B8=F1=BF=E4=
=C0=CF =BF=C0=C8=C4 3:12<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Is it possible to control the sampling po=
sition of the baseband signal on the rx side of the usrp?</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"line-height:1.7; color:#000000; font-size:14px; font-family:A=
rial">
<p style=3D"margin:0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hi=A3=ACever=
yone. I have the&nbsp; question: Is it possible to control the sampling pos=
ition of the baseband signal on the rx side of the usrp?</p>
<p style=3D"margin:0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The situatio=
n is as follows: I use a usrp b210 to transmit a set of 16QAM signals, and =
receive this signal on the rx side of the same device, and repeat this seve=
ral times. However, under the condition that the transmitted signal,
 tx gain, rx gain, channel frequency and other settings are unchanged, ther=
e are some differences in amplitude and phase between the received data eac=
h time. I never moved the position of b210, so the channel should be time-i=
nvariant.</p>
<p style=3D"margin:0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I think ther=
e are two possible reasons: First, even if the transmitted signal and trans=
mit settings are the same each time, the signal actually transmitted by usr=
p each time is still different; second, the receiver does not sample
 at the optimal sampling point , but randomly samples.</p>
<div style=3D"margin:0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Firstly=A3=
=AClet's discuss the second possibility. As far as I know, USRP's dsp modul=
e downconverts the received bandpass signal to baseband and then samples th=
e baseband signal. a gardner&nbsp;loop is usually used to get the best samp=
ling
 point from the sampled data&nbsp;(timing recovery), but the implementation=
 of the gardner rings in 2x2 mimo with 16QAM&nbsp;is more difficult. Is the=
re a UHD interface that can control the position of the sample points?</div=
>
<div style=3D"margin:0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Or, the re=
al reason is the first=A3=BF</div>
<div style=3D"margin:0">&nbsp; &nbsp; &nbsp;</div>
</div>
</div>
</body>
</html>

--_000_SL2P216MB1246A81C1053520DF14EDEB2938B9SL2P216MB1246KORP_--

--===============2430102381190212924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2430102381190212924==--
