Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLnfJYGQjWl54QAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 09:34:09 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6FA12B5C8
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 09:34:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FB5E385CF9
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 03:34:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770885247; bh=HPw1pzypzCGQ96JXRhW8Seo08qCyr0QxBDnSQyer9fw=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=zODfAMRcfPWxevb6cUztEkTGiXOM/qXAEZ7A7cCkoqOGtRzoRSiaVdG0FK7pX3g+X
	 QewwRFWfot1SaIWO4Pl8IbLMcGLfNNEU86myVlWWC0boWJ9mnzu7YzT7aztEwWgFw5
	 iHd8x86v2yQOlzy9pZHSYETiR2qM4tC3nhhx4OG+Swtou0VJTKMKUA96lYKvrBQYGr
	 3fx589RP7Vwc1OW/QHO9pAG9pOOsBt/WZkoTckz941kEVvAO/Jscvx17Wd9bQqcniV
	 XYJYSXPSa1XWT2O04e+epFkb0QQmjraJNEGHM/HGOSX3CIW7+9etnDKYTW7/ijxYT0
	 s6KBHGKm8cjaw==
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023131.outbound.protection.outlook.com [52.101.72.131])
	by mm2.emwd.com (Postfix) with ESMTPS id 00F51385A94
	for <usrp-users@lists.ettus.com>; Thu, 12 Feb 2026 03:33:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=upt.ro header.i=@upt.ro header.b="bRGJHz/P";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xAsodo8Hnnxd8jgtNlzF+L3JAG0bt/czIKJn54qhCw4aXfjTFCSO9TOihu1ca2BNyoII5vkHWYhoUuNwdV3q6l+3u52lmT2Tyacb8H3Ol/16rgNzlXklF66zRCtIBcZsIUq3qZJ2f1smV+oPJib7B347dJGqWq4lQ9aboV7dtIi3HSaKZzkG1eQs/KbVAQj2R6DUuZtCVDz5Lhxvv4dKwhAheM47akTvR286cOmaHGi+/ra3C48JS8dXybQr6MAYHeXQ0wlvirmXiMhmjy2H8SuMRBZnpEDapGa0DDvobhmj9jwd+w2zRgmTOXzyXRRHhSxKbcaVxwzzw+MW7i1M0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jag8/sNFlLQmqdtGhMhPp4RPp05WdF/8tuVhOeNRfjc=;
 b=hkJGld146ltU0Ms8PzI171cXc3R4pbJyZjaAaEWUUepIhCuEsTahsxo9N16y8v3OT55lvPyLapjED8MsuEOKtodIDDSQWAx09wMG2akuW0oHchQPyR5RSwAWuSBvhFOY6HwnFvPiGBjy+J7Qng2UlnBY+0ryYQQzKedQzUTqnuGiM7zY0eO51eY9PN+D/tX/AyxONybQc63+gTMuiCSnUxt3QLajWZF1VsMS59qmymcDwKNIO3tevXpv/vRD85Y4FJxColr09gohU02xZJrrK4EkwKBbh6+4w+m3+NZjPwUX1oW1hi1+RO6uPmDJHtLyg5tjfceSlc474aL+gNNrLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=upt.ro; dmarc=pass action=none header.from=upt.ro; dkim=pass
 header.d=upt.ro; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upt.ro; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jag8/sNFlLQmqdtGhMhPp4RPp05WdF/8tuVhOeNRfjc=;
 b=bRGJHz/PrmNdaFM1ZNjU6uLjz5+BAEqeO/B2dZ4K9INRBy6Fjx07xiu5a8JOVLY0wr0Zx1EO88bqd6s+7Q/Tp/e8t5URKLLXXJsxPQZefAp4S+tjJqEh3ks4Q2PmdU1Fn+b9o6eTWmS5iV2nH2dRJA+cNvnXAx9IhuP4yEwR5ty9HEozrob8vc7JEZG59WMRNCR6340iBvHx2iLGo4zVePo3BMnP7zDCD5+e6c3INqyd/KbKCCjMHhU210CxIxiPpbyZ+p+P3/R52j6cgGeEcrOV4Lx9zw1nCslOjVo1NE64Ennsf4tYUOj2pwzphJULmPM4VhyC9DbK7EY06mUtSw==
Received: from PAXP251MB0496.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:28f::11)
 by PAXP251MB0604.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:275::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 08:33:37 +0000
Received: from PAXP251MB0496.EURP251.PROD.OUTLOOK.COM
 ([fe80::fc4a:156e:3a65:632c]) by PAXP251MB0496.EURP251.PROD.OUTLOOK.COM
 ([fe80::fc4a:156e:3a65:632c%7]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 08:33:37 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: NI USRP 2950 FPGA Image
Thread-Index: AQHcm/my132VBjZegUKQpr2uoTJtIg==
Date: Thu, 12 Feb 2026 08:33:37 +0000
Message-ID: 
 <PAXP251MB0496A9CD08E45AEC6C8900489360A@PAXP251MB0496.EURP251.PROD.OUTLOOK.COM>
Accept-Language: ro-RO, en-US
Content-Language: ro-RO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=upt.ro;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXP251MB0496:EE_|PAXP251MB0604:EE_
x-ms-office365-filtering-correlation-id: 48b83abc-d9db-45de-be61-08de6a116ab1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|10070799003|366016|786006|1800799024|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 =?windows-1250?Q?faTvjI0JZ8N4iw8E9o9eisWyvAwzRtv35Rhf7EtIVvv+hWF5aU7zlxMh?=
 =?windows-1250?Q?cUe727NabBCpqlgvIFHetet3UffI8kmVQRm+oKJjiyaT/psfgLr8Fqlz?=
 =?windows-1250?Q?PURUimWL9NtDB+5dz5vmFRV2zUPJKd1xlCvjvIybgOr429TP7g9Nz079?=
 =?windows-1250?Q?7svOmdsyG/+8hW8IuAnFgsYJ2hcznpSnuYnq2WnIVeqeTrjrgMw4Ojjv?=
 =?windows-1250?Q?z5rXm3IijFgRI6Yt8PikYE4qqiGO45jGTiRUVMomJuqUAVnPIDF8sVPX?=
 =?windows-1250?Q?iF1E/ZKn97LVifBWFiczvNE5fl2rS7WdSoDmMX3Oi6AYwKbK1R7MV5dB?=
 =?windows-1250?Q?QhM7/yJfvDCGL6fNUADLHdn7CdK2X4yPlc0Wl9W/s0kZ53ws2jsrZgNx?=
 =?windows-1250?Q?IKo4y2gJDCy9Nldv/mAXBAduv1KwQ29O0hehtI00O7fy1TrNj5HT6871?=
 =?windows-1250?Q?mFiGJRDpJ7z0yomI/iLVPjy0MnY5qDQiu40UheWYSfJcr3a+jtV3yhtz?=
 =?windows-1250?Q?sBKSakpDWmSE64hYqtI3BUb2px68IwUyZy0mjLtOGbyEBIytCjdO2ubE?=
 =?windows-1250?Q?pqqFzL6k68R0scwoEs4FF7II51QzFV3n4XH+Y7+4PZC336wG0sNtOxsU?=
 =?windows-1250?Q?HNmxB+ttbsYsbx2wt0c7u0aj83ljys5cC6IP+0mAfPXG7XpYufOz/BHq?=
 =?windows-1250?Q?BBk11UPwknuaHtac8MY2Fl4WwdwzK+3bmi42fQPtQeKyrrIVo1PAq7Fa?=
 =?windows-1250?Q?daBmV1oUKIy6Xqj1BxRNxyFyeTiRqoo+HLnvQmDhpKTK1fAJY0nuDLgI?=
 =?windows-1250?Q?IUWMBR+ipf1rnVO50/7pNFH2z/ZTjSTPo84PZ70K4en3unTT3VUSujtg?=
 =?windows-1250?Q?yKw8bjSstn+4kYeowSkl2HMUw+M8E1DACg6tWQ1howzZaCEntyBXj+Il?=
 =?windows-1250?Q?wikKjVhCMR310iHzTa/DaguDDxkCsnzwoYBzpO7p2X9IEmDKWoiu+Edh?=
 =?windows-1250?Q?Jz+QBr9SVOKyrrgOe0sa+n++rlDJDKdMGf0I/5jrqH1egX66OJ1YM0gA?=
 =?windows-1250?Q?eCmKYE7+eFYnpCv2F98kPDJoAEZqoJSQSf6TYdyKXZ1e7+9k+pgrtvBu?=
 =?windows-1250?Q?jows44EuBlZLYsXbygRph8KafHElnnj6kVm2ZhAYv7xvULrSm9JM1aBf?=
 =?windows-1250?Q?q+fUrABXi4Fcm2/wFqxLiv5f4Rin6V33rfmcNxVSSkUr+bnT2d0KhKBg?=
 =?windows-1250?Q?Kn8wqVHIbbX90rwOSJFA6rEfpTd0WNYtc0/S+gCACQSJHIsTocOGpbQ9?=
 =?windows-1250?Q?gN/bd/Z+92RbOBYtWh5l6EKapy2KT68HXOPniOKcZmnfaft2cEXPBMg6?=
 =?windows-1250?Q?Na6dGGzY5PkxatbHr5SdDvUdoHRG0OHHs3HngqaMUAeZD4SfRf+PrEsX?=
 =?windows-1250?Q?Bm9g3Lo35c0/06zrsNqORDmcEiIqSKFN6Rvr7jiaqML9YHP2/PJ8Vi4R?=
 =?windows-1250?Q?H+UkBIHkMrNDP2gF9dafP/vdA+2WsBl+AlYRGxRESBzPgQo3nhFh0F/P?=
 =?windows-1250?Q?YbxCHpw+yuZ8oZI5tLuQRgbZyrzZf80uLRXA0SAi0tDaZAkYlUallDjt?=
 =?windows-1250?Q?Tx3Nj+YN+oCCGYCBEFnNMQ5MXk1cziCikg3f6CS7oENRYxER0vSSQpKF?=
 =?windows-1250?Q?A9mnvwb4UU4oaz1RFOmvCTabdJkiM36G9LdND16dYlc9a1vilGqoukpq?=
 =?windows-1250?Q?nIeCnvNjDJUYPPf5+Gs=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP251MB0496.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(366016)(786006)(1800799024)(38070700021)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?windows-1250?Q?B+hFYk3zVWYqmZJU6QitY6hEu7ARwLYrtCyikAcXnFrnhMicCcJBDJjj?=
 =?windows-1250?Q?f1y4TgVY3Gv6EDxCWBGKb6qQnmoVmi8wSIuC9jDtTvQynAsaGIWbY4/m?=
 =?windows-1250?Q?ochn6iiai3YqkWYzd1tgvOxuDeiTWDV9YawwbZfoyGKrcWTCLs5YjdxU?=
 =?windows-1250?Q?vazkFkReDQY6j+aUFHfRvNvJBnCclxnNutgDoKBL+xuw3VGLhnx4W9ge?=
 =?windows-1250?Q?XxoLyVTmzXVsZF4awWD0ZhmzJ+RAK3Wi2i/SIQG6W8bgtHIdRajOmlRq?=
 =?windows-1250?Q?0S1KZZrOJe9aGexGFEPQkEpRNZkAvJnCFqYmKmCZsr4Cj2H9wkUpzZ/x?=
 =?windows-1250?Q?Sgeq7CcmWUpy97OWvqHEGrBaaspJbc64ojnC3OuSnPEiYeTFOGHPw3xe?=
 =?windows-1250?Q?+EBFWX8DO0XztX22Y1FwFIrGDsH7taCKzsUIUQq+HB9ND4tFLLlAQpxH?=
 =?windows-1250?Q?s+8WX2fPdvmfuFyWYwgVNdKK/DkxEqoHKIe5SqSnPZHIN9xEM1MwdQNG?=
 =?windows-1250?Q?VxE0v/VzZ6dPy8N/ZbkxRbU91JSIARuLy4Aekk5fjFEqIOVwqc7/TMt7?=
 =?windows-1250?Q?iRlfA7QIyFM2OjoNfsUNH9GztlUWMrEt6TL4bvCKyQh5YWMJKT2xTVfA?=
 =?windows-1250?Q?8+erCh2qeRq6fed4fqHT3Mv1oSIvKYfV4BziEv3LNwk/SWjUuzhax6Ch?=
 =?windows-1250?Q?wx4JzkxPkYgjnUpICvDdkmfl1376OCzNFm8xEA+aJciUmya9a9AeKK35?=
 =?windows-1250?Q?spcqLvExJxX8iDEPcHz8TKpwy5yEeWcWSv2xrqVmIzSImQN9nTDoUXdS?=
 =?windows-1250?Q?ijLxcIBxPBOsLQdmeR22l9XSwYy1VVebFkvK5+Ws+X4v+ZVlwRuUBsvI?=
 =?windows-1250?Q?NiDYMj86dS6t0KtUQHhIlvjIVm8kVXP7gkyrW43wXkC+iQolPCtNyezX?=
 =?windows-1250?Q?IUx6lumNevBVPYLh6FTqHkZ5EwBj6ZvxGaiU+d59Sd0Dz7GL41X6oreh?=
 =?windows-1250?Q?/yXo0S7aHIs30HaboFSLfsEXAkU7jxtkdCTO79S+lzhEvwPOUtc5lcyq?=
 =?windows-1250?Q?RjMWui8y1IXYnzRKdOh4xebx/vmYIBbeP1DIQN0Hb9JHYgeACfZMxD20?=
 =?windows-1250?Q?IiUdMphbHVY02HKXmTQ/3cI0uDhGSRtSOobrBCFYbw17H9heZOi+ElhY?=
 =?windows-1250?Q?qCjn7HQqbF0I6+7m6AGR5/w3lz360zWeDJWJa+aN0+ui7YhpkDCxlQ9K?=
 =?windows-1250?Q?etBS0LjsPvfK0v+lRduK8oLe93BGeMGFzHNykiH8scEbOm8YKKrvLezU?=
 =?windows-1250?Q?FvUcIaFfa4p/K1ah9/vfMEsrb3efB3ognS4/pkcUmgdoQKg25DohYtgf?=
 =?windows-1250?Q?dRclpVbPL5+nYKTmelq97NZ5CJCLw8BCf/JKCpmIGhTyYGp3J2w6X1hG?=
 =?windows-1250?Q?jwRVh32NXDr5HXnsmBZx7itFzbKNNE9j0DYG6MU4RhGsBFVydwDag6ye?=
 =?windows-1250?Q?V8hF3wUYP4LxHJKpLUCyXn+8LJnbp4cCYhgDMkUwuwjD2sq5Si/g5/Nk?=
 =?windows-1250?Q?0T2a8Gmxhopa7QCA/pREA2Nl28hwcolSBfVZzBtTQkAkwZS5LLeK7EeF?=
 =?windows-1250?Q?o95ElHbN8w9SS1J4vglWmrRFKqCXSBp1lYwVaBfQfdb0pdF/vIVfjlxS?=
 =?windows-1250?Q?QQh6qV6Sf1W8YuFuxFJvf9X1PD1RKLpZDCRM1x6u05GRy3TDiRboiPah?=
 =?windows-1250?Q?GhGZ7e/+mLW30U5Dp1wG7TtvuSHq02jBINtL+Tb9nNNHciRTIFqzq2Gp?=
 =?windows-1250?Q?obJHUyhgEwaaHFZxk33GtKJlTARxHTt79Pm+KGeMHn5ng9bVJQ8Uj9NH?=
 =?windows-1250?Q?tc/Tg9okn/XugqwpdztCK8ipXNi5X6h0+i9PvMl5etrf9SlVMictXmfL?=
 =?windows-1250?Q?yGErKxmU?=
x-ms-exchange-antispam-messagedata-1: DfKCVkPfn36/Kg==
MIME-Version: 1.0
X-OriginatorOrg: upt.ro
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP251MB0496.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 48b83abc-d9db-45de-be61-08de6a116ab1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 08:33:37.0107
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6bb41fe4-40a3-4a10-b6cd-38278e78b21a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zx4S0CYqFtKpHbF7Bwropd5QYJcN342sQ0Ei4vBoaAt5OUpPvYtDd+MH7qpzKWOGQw//TtJdkG7g0LtxKoyujA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP251MB0604
Message-ID-Hash: G3W23EIIITVHHYM4X6GA7VEGGNE7EYXW
X-Message-ID-Hash: G3W23EIIITVHHYM4X6GA7VEGGNE7EYXW
X-MailFrom: cornel.balint@upt.ro
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NI USRP 2950 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VCZ2Y7NSXJSTQ5G7JTTPG4ITLD44IRAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Cornel Balint via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cornel Balint <cornel.balint@upt.ro>
Content-Type: multipart/mixed; boundary="===============8316159296928902933=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[upt.ro:s=selector1];
	HAS_REPLYTO(0.00)[cornel.balint@upt.ro];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,upt.ro:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email]
X-Rspamd-Queue-Id: CF6FA12B5C8
X-Rspamd-Action: no action

--===============8316159296928902933==
Content-Language: ro-RO
Content-Type: multipart/alternative;
	boundary="_000_PAXP251MB0496A9CD08E45AEC6C8900489360APAXP251MB0496EURP_"

--_000_PAXP251MB0496A9CD08E45AEC6C8900489360APAXP251MB0496EURP_
Content-Type: text/plain; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

Dear USRP community,

I have a NI USRP 2950R. On the board there are two labels: 154573F-02L and =
F60967. After a wrong FPGA image loading, there is no ethernet connectivity=
, and I cannot access the USRP. I tried to load an image using NI Package M=
anager. I installed NI-USRP and NI-RIO. My USRP connected via PCIE to host =
is detected by NI Configuration Utility, and an image is requested. I selec=
t usrp_x300_fpga_HG image from the folder \Program Files\National Instrumen=
ts\NI-USRP\FPGA\ but the Utility program report: =93Incompatible image sele=
cted. The device's revision is newer than selected image revision=94.
I check the internet and I find a suggestion to search an image in the fold=
er \USRP-RIO\USRP-2950. A folder named URSP-RIO exists but there is no  ima=
ges in this folder and no subfolder USRP-2950 exists.
Where can I find the appropriate image for my NI USRP 2950R? How to proceed=
?
Maybe helps: On the board there are two labels: 154573F-02L and F60967.
Thank you very much,
Cornel

--_000_PAXP251MB0496A9CD08E45AEC6C8900489360APAXP251MB0496EURP_
Content-Type: text/html; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
250">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Dear USRP community,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"line-height: 1.38; margin: 0cm 0cm 8pt; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have a NI USRP 2950R. On the board there are two labels: 154573F-02L and =
F60967. After a wrong FPGA image loading, there is no ethernet connectivity=
, and I cannot access the USRP. I tried to load an image using NI Package M=
anager. I installed NI-USRP and
 NI-RIO. My USRP connected via PCIE to host is detected by NI Configuration=
 Utility, and an image is requested. I select usrp_x300_fpga_HG image from =
the folder \Program Files\National Instruments\NI-USRP\FPGA\ but the Utilit=
y program report: =93Incompatible
 image selected. The device's revision is newer than selected image revisio=
n=94.</div>
<div style=3D"line-height: 1.38; margin: 0cm 0cm 8pt; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I check the internet and I find a suggestion to search an image in the fold=
er \USRP-RIO\USRP-2950. A folder named URSP-RIO exists but there is no&nbsp=
; images in this folder and no subfolder USRP-2950 exists.</div>
<div style=3D"line-height: 1.38; margin: 0cm 0cm 8pt; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Where can I find the appropriate image for my NI USRP 2950R? How to proceed=
?</div>
<div style=3D"line-height: 1.38; margin: 0cm 0cm 8pt; font-family: Aptos, A=
ptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Maybe helps: On the board there are two labels: 154573F-02L and F60967.<br>
Thank you very much,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Cornel</div>
</body>
</html>

--_000_PAXP251MB0496A9CD08E45AEC6C8900489360APAXP251MB0496EURP_--

--===============8316159296928902933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8316159296928902933==--
