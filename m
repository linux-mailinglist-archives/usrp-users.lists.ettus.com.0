Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4AE570A87
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 21:17:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C0DF383314
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 15:17:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657567037; bh=c02hJTfcGj+66VAHlUCY6YFmq7r7N0qDCkEeKvEbuFs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Mo4F/W/AZYW0qFpE0LKQzFvFyJNk+V10fQqrHpnv3EvbRvVRmdklcAOjJwR5715uq
	 fGrDtIlUwOGtzgU5GNlOAbZQ8ubD3mjX77MJmDYtMOeo3Qxw3W49tY0bhNh6Kmi8dd
	 +Tv5t/QBMyFKMySg7yg3DPpxloS0+GbDIQuYh9iNodq3TrGAC94xNHgPI3k8Mp6T26
	 bSNZy+9idDmdzSX4dOndigcvMmEYiwZSY3RGr7GxTqFL42C5Of1O3q6SRnQj7/2Y/E
	 u0HqAmn0CR5H4ifAKPuqbWXbCM7tz4ipPEMrn+kAbdteDa8M5F3CwouvhuAxK4bb2d
	 4Gn7eUmVgl+PQ==
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2031.outbound.protection.outlook.com [40.92.98.31])
	by mm2.emwd.com (Postfix) with ESMTPS id A6F1938137B
	for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 15:14:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="m/xholUl";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOXMvbEXvimMUTl5j4Xde9s0mgjDMnksBI6kXEecUGoHv5ql1qx/4qs8vRzD/4J3m5dEuZ9nxL5vgnC3G/l9gA7ZY1qaVRtO5gm6iMw+7h+w0596MoroJ+pZSaX3rBnTgwxJqdLixeCAAVIzjJbY8zDHKckmF3cwJc1A4AGM4soVVbjxsRs2rSO9kK5nsm1n+vWcmX2R3qK39cYfCU0JoLsqWGNks22MxNM4Lcuh5DYu5kl36cB1iD1TIje0khGX7D4YUGlMl7xWX6qnV6XAa4x8DZMwPYm5r4nrbn1pvkaOe0zcWXQGVWq51zprabSXT1cpPPgJjCjy2wXu+vweeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6FwFwUydEpwOsDFyL5RcMlkxtthm8FvRiw37hfl7tI=;
 b=VKXaEplOuppv7WIfEclG0ALWK5OjKDUe4+REtSD7NrHTcetrM215QqklnvNSpVCtI6kfhxJeltDp4fAUIfGb4Y1y/enULlF6HVllguK3heVIxDBsZ3MMNYGy7wUzWicxgN9cxg3edDWxZwbOeyG/Ggp4F3LTtl9aGpGgcgOVXBHO/2Fic6Fv3sOKzYH3rqCUdsNlkobbLtq11Dm21hZ8vM+BKUD3I4i9etFD74cU3g/Rqd8kAMdfluOb39UxyaPV7GLpDoZrKtcvmaeFkwv7Hh3VVMia6oAMlmjzyVPTQ21QXHzFbe6NsXeqcnApxrlJaLHbchDgDTmOP1WGaGbtQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6FwFwUydEpwOsDFyL5RcMlkxtthm8FvRiw37hfl7tI=;
 b=m/xholUll0W4CcWBnTKHEEzvjtZ+fqKL94HBczaAkykIzBZe5P333rbYlCQKd26cXA1+ZhMcHHqxKKFlQ3xdBcs6MjPFoSWF6WNPYwCDJFK1RUFMxLxkPA76zo7uO1pvOBNMeuEg3jAUoclAY+xkh2APXWFsnWW5CaMOvyLiXQkj2q/Tfoms60fJKPgy7KOGpSq+5ge3xSWwYZ062rdgGmgyBDeRiarNPRyJt4b7AMlzZ5Nwu2ziu7HQfA4vs7ODdJl7xRUTYLvEnxPsm2HhLZrUxol2oSUeQNj+IMR74PjIeczzPzU7yaBfIfQoTspvTE0XwzGzdKcVCrDclMg8qQ==
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:9c::5) by
 OSZP286MB1064.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:112::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.17; Mon, 11 Jul 2022 19:14:52 +0000
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333]) by TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333%9]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 19:14:52 +0000
From: pro jason <jason_proj@outlook.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>, pro jason
	<jason_proj@outlook.com>
Thread-Topic: Error: rpc::timeout: Timeout of 2000ms while calling RPC
 function 'supports_feature'
Thread-Index: AQHYlVmP9hIpeDnQAE+YE+08bg5M0Q==
Date: Mon, 11 Jul 2022 19:14:52 +0000
Message-ID: 
 <TYCP286MB0991DEE01954C415C9443644FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 5e6bc1b9-5221-e624-196a-083678376224
x-tmn: [5lZEu56AkCa+zdxEmqWzQxuqV5lcpyM9]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5c84e70-8519-4dda-1b96-08da6371a1cb
x-ms-exchange-slblob-mailprops: 
 CaK+F7me6ClLgXAkJYRfaA4a6CCmAh6iH1HH0M5ex9k7UE3dIaJM4o3jSPgEsB+xaLHcOV5HFHfRlxZ8Fo1n57taPIa4XNbH8nlPMlfVtGKoHCE3vPNCfVEBu+acAu+zuU/VsaeXZVxOgeKMKdW3f4vdEHiioqkvKvvtiNqBMxsvSYOtNvCNey+cT6DUOCbzf22BfAcuNZSVB3nnThwvG8gn89R3rlYm5v+HeUudzHcQ0VibwivJCXVS+yBKp+AZEj6s/fk91n9NDMEtYW9Dafz6qvvyrQ2rSPKowCDzmlDTKKAGJqnJ5VvFwPE2J9Ms8X9TmNI9FVdyEznDQDda42DeChaKLjwOayCpmfbVzh7w9joXUuovN9IU0kKWZNiFMkVCBl5aIEVhIibNfpnhHmaqLnwmseucGc03G9hGDXv37aBVqGHRJzvzbzmFGHB3+hW3RrRO4JqTGTtjSFlJISdgv8OcMtUADNPfN/R+BNDrTuMvKGNZM/1ow6uo3V2MXFfRRTLsto8bcXn+yJETxGN3OleGxbSS5gmJOF/cQgg3Xp9OG+LRmYa3Tqn0b/ekfDMRnLtCirxjbkzmX77kOwzp/LMxkDj8gtEZH8TcGn9dLMGbutdmJKWl4IOx44RrvUCjB0ohoRFhEA9mtyYE1XmvKNmEXEIkwltTL3hLCu//tCt+mA0ftNIBvlknkkti+sD/c/K7cKQEYyOOl+JJz3q/r9dMtL3HejanJ7pYfLAdOn4ceByz+A==
x-ms-traffictypediagnostic: OSZP286MB1064:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hrLpXdwAHxS4NCEMydYiOWzXVk3Mk/Qo+wIT+hnJ3TJNKxAx0HWg8e+LmSUyJvPeyJXZIvXXXe9ndxmexWos8nEzjv+BAH5rR3g+DXejfnAbqNbSF2p4VCtjgBxyCwILReLuc87SA71+uzn/2wHPfgFi9fbOzx6nHxDLE3UdAb3vX1wW/IE3EeF0WTv9Exi5PLLPz6DcrcIIDKeHVgH1+5ldKb1hTKBHJqSQWYLVjUeGf6U+TRMdfo4SCgVPSjpNGhKmz+wZ58gBUDjhrC9PUF/1fpJvMLmb5YQPPnh0lqu1Gj2/f4Jfyam5dMTqDSy/P76em2+9RBCYq/VU5FoYvWSCdNh+HUtH1BqP79Y5rBPzPkPOxIcxh9j6mS8WJkoi0hRAzNvgwHwD4IUGkwN6kSMgU7qPBG/JDDF59XyLZNHTn2iqGpKRny6Ad/XwNfj/vSZ33h9RqnYurJJzxquDCOhRQYJcRd9C2GAy5vRvIpOtLWfsUVE0PuhaRlAsQnwsCC/uCzPfey9/N878X7O16OKuQb4rkltNoZvqbMgkRS9jM+6IMeXJ0A3DtbYRRbdUrpTlsT+6Hwi83FBqbbQhNc6NonTCJ+BFreiijAu3jTEF41Af4vrXNsGpyWFSMkAFjPMtMRf3hZnZi/FsHDYHTvVFoQzL0CaO7j+B13jPprYK2Hqdca6mpGSj98u5y9A8m0KjlJWj0gUYeI5/b7gPWg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?+krsJbZ8WJWBE0UHbfwC5C8u3QRZLv4C+BxXu11h5Z0J21Oqxw+zO81Obn?=
 =?iso-8859-1?Q?JC+BIUOK3xnsc1QfuQKm48R+nIEBApuZK+DMsjbjMv9yzUExfHyY2koA7i?=
 =?iso-8859-1?Q?hV2H6If5xAQqoBSpC5Hy+rMs/5YoeVBmm6GHuVkl5TcHsWY6mqDYfeaNFt?=
 =?iso-8859-1?Q?NhnHrGv8rUcWMRGmdiYcHIymrVZIGNhxhMPeKpWILUl7kMNUjk9g86BtRi?=
 =?iso-8859-1?Q?q0H9WyT1BY0RgFYIKMrbfGZ+5fu520VozhpN2Jz/n7tezwgdJHuV6y1sj2?=
 =?iso-8859-1?Q?rGbQkfeC2iwAXra7XJz+tCfJMl6ITvSdyKOs6Z90vPnKcVJ9cbe4YybuFl?=
 =?iso-8859-1?Q?1Q8cgu4yyvjm311Ohw5ghXyf+evKuNvKlFeNaOa1FduHGm2ldA9GdbDh7O?=
 =?iso-8859-1?Q?NDKhj0MeEQdDuiGx7vli67fD0YXP+/CouQKK+fZjaBokjhXwRi8cN2bscA?=
 =?iso-8859-1?Q?33u9JHJINekoEwSV0z74MiYWbEA320rR+o0yP5/c9IhWPYHdjmNHZqT8Vp?=
 =?iso-8859-1?Q?Vip2T1acMGNK8Y13N1jKQJ817cwkNW1Np8oO8koTeghpKOhoXD2nAphYD0?=
 =?iso-8859-1?Q?pDl6rh7dTFZtlxPj1oGc/b4oSwF9Djz3zynNLaU4GLgomlwDi+xsUd+W3a?=
 =?iso-8859-1?Q?cTSChQ2lCw/6L/BSgidEEAf4fTdslQaYMIzjXoajmeN7cUE/dzg4BUNF7D?=
 =?iso-8859-1?Q?jaoIJa+qFZQI92sWSwj2nmrUf2w/3UCk80VsmjwLgD+gUni3bm8qq39GKy?=
 =?iso-8859-1?Q?cZrTwKUimyDw49bJOGVOVuyesXjKdSd/YE//uUQe7FHG9b3/suCpYoksKR?=
 =?iso-8859-1?Q?2WAbSt/qbMmyqE/rukozszRA3cCm820x3uWyXI2d+En7aTr/VT6UYFQqLq?=
 =?iso-8859-1?Q?myROOAdkubUL8YDaV0suolr9RpQYXPSraw8fAbDffeWnDYXTEtIKKQVnOd?=
 =?iso-8859-1?Q?C0s4XAX4A6Nl8hlJvl72imOF9ksrhX3M/PF0DTtxMKH182+UCmRqKs2Ewe?=
 =?iso-8859-1?Q?Ei8KmLbDDoQYilVEck+gjX5bF6qYieQHA/kQMimIK1Rt32fKfEOeMEo/Of?=
 =?iso-8859-1?Q?vZBsNVkWqKnIBZF712S07haFNc0sRIoORmgPtWTHRJPeLMa0MQOwV/6A4p?=
 =?iso-8859-1?Q?jsMiX4ADh5qqCu8CJ64vwL1m09K8LwJ99oF/GdFUW+vu6r19ERVUbrhvA3?=
 =?iso-8859-1?Q?BZT31NHBk39yXVtUO4FLxrB1nl+C/iFJ6r7tYuN8ljZTsLEJRzObD0nd9S?=
 =?iso-8859-1?Q?Chmi9VzbG47jQyLNjRHgniP2nAYs1woEcsLomZQ4dug1pYjA7Uokx3fjz/?=
 =?iso-8859-1?Q?EarP?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e5c84e70-8519-4dda-1b96-08da6371a1cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2022 19:14:52.2618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB1064
Message-ID-Hash: Z3TY2K7V2KP77TXUJRJQ2CHWCZ7SS22C
X-Message-ID-Hash: Z3TY2K7V2KP77TXUJRJQ2CHWCZ7SS22C
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'supports_feature'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXGJPXSWA6LNCSQA5FC3O4RVZVSJL5X6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7610778837550266276=="

--===============7610778837550266276==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYCP286MB0991DEE01954C415C9443644FD879TYCP286MB0991JPNP_"

--_000_TYCP286MB0991DEE01954C415C9443644FD879TYCP286MB0991JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have recently encountered problems with our N320. The UHD on the host an=
d the SD image file of the device have been upgraded to the latest version =
v4.2.0.0. Does anyone know how to solve this problem?

srs@srs:/usr/local/lib/uhd/examples$ ./benchmark_rate --args=3Dtype=3Dn3xx,=
master_clock_rate=3D245.76e6 --tx_rate=3D7.68e6 --rx_rate=3D7.68e6

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.HEAD-0-g=
46a70d85
[00:00:00.000222] Creating the usrp device with: type=3Dn3xx,master_clock_r=
ate=3D245.76e6...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,claimed=3DFalse,addr=3D192.168.10.2,=
master_clock_rate=3D245.76e6
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'supports=
_feature'

Best regards,
Jason

--_000_TYCP286MB0991DEE01954C415C9443644FD879TYCP286MB0991JPNP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We have recently encountered problems with our N320.&nbsp;The UHD on the ho=
st and the SD image file of the device have been upgraded to the latest ver=
sion v4.2.0.0.&nbsp;Does anyone know how to solve this problem?
<div><br>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
srs@srs:/usr/local/lib/uhd/examples$ ./benchmark_rate --args=3Dtype=3Dn3xx,=
master_clock_rate=3D245.76e6 --tx_rate=3D7.68e6 --rx_rate=3D7.68e6
<div><br>
</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.HEA=
D-0-g46a70d85</div>
<div>[00:00:00.000222] Creating the usrp device with: type=3Dn3xx,master_cl=
ock_rate=3D245.76e6...</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn320,claimed=3DFalse,addr=3D192.168.=
10.2,master_clock_rate=3D245.76e6</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</div>
<div>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disa=
bled in the device tree overlay (e.g., HG, XG images).</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'supports=
_feature'<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jason</div>
</body>
</html>

--_000_TYCP286MB0991DEE01954C415C9443644FD879TYCP286MB0991JPNP_--

--===============7610778837550266276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7610778837550266276==--
