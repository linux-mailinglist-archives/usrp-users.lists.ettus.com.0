Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NeOFWgd+GliqAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 04 May 2026 06:15:36 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A54B851A
	for <lists+usrp-users@lfdr.de>; Mon, 04 May 2026 06:15:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 109C238BB39
	for <lists+usrp-users@lfdr.de>; Mon,  4 May 2026 00:15:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777868134; bh=QIOpnx5lowQlnquGxbdEt5YUXFdUY4FsoJNrmVMMJuc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=c93jeAjCkqdEPnJTIJmKh7hdce4eMoWyLz6eVU91Hbluah1ScroywO9tCVu8fJfVt
	 oZKy5NM1UeBf0pXXe57izzJNZAbNEDnHpICaMClG8gRBNtG5weD016q6tPKNRBX8MR
	 BnsdogPEwcZvppZs0Vs3HxDWpQte44c0re4adOJnzguxZyw9P+mC9Flv5T/uvYMqGi
	 UxirxQAYyfXkq7YPFJfSrwqCBDLJSN9pdziptoOZKf5YBL66LcFv1YFSb9ujrP7Tsb
	 LCl/Nj1RsxWWz22Fp4hj215vRpMxymUAQtajRR9kPs/CSLQN42IheoK8YAeDPuqG7W
	 53DzE2w3KDLSg==
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11021098.outbound.protection.outlook.com [52.101.65.98])
	by mm2.emwd.com (Postfix) with ESMTPS id EFE2838AA18
	for <usrp-users@lists.ettus.com>; Mon,  4 May 2026 00:14:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=neosat.onmicrosoft.com header.i=@neosat.onmicrosoft.com header.b="i9gSvcqw";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=enEB96/HjSLQaAneNo0qNpXu2Hn8CCBDLYWGr0kbnePw0CJ7znudL5BoPrDwjSX7tyyjimT1IKqa65vNW8VIzxNRBRd8tt7yAl4dQecCxjBZpE3Z887DGLbw543B/tpOH04K0RXjAm5MYjWJtcZ0jEZBYDTO4wYUCAk2pJhuctX16NGTAWfOpLifxLp5BKe5SN7Guo46XftoPoMStrGMIOlg6h8njmGgl7CAIYyiw2eUmCng443UvLFq1CErCxOyngULb8uQvt+3v8CfoTtfb/4W8eu9MPSiLS1BqRXrn1uyqMyagSAgMoRaRj7E01sdyGdlqvPvSptB52Li+44qvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xp/rBV5aYGs6rHRVVxeHgGsZ7BYVSx44Vx4y2e8Dqws=;
 b=sndulkbpSblyFeeoFep2S969X8eSMp9HFvHdy+xUOIQGUext51vup9pI1DmuzmIq2Hnh5l8qFCfevrDPxkCYZZPtd0WQ1kg8YggSZz432tob1lofCEThrH86bspaRnLwYI/RLv5qekaY/HLqoxTnxQgiEEGAQZaUOh6wSlafcEHCH/4dbQGCxTnDEnf12vJc9sk7BkdyNE5OwCTqUpJKDdsMgyFTDb+Y3MzoHQ7Szky0fxu1BCIsHMXGeFacmVvzUO7ft8Vlk6O9SmK2ahb2k4aaaHcRU6KkKWkXQvZpQ7a7Re0phyeYzTUwtb4YYRPNarpvul0NLSn8qxasOx82Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=neosat.de; dmarc=pass action=none header.from=neosat.de;
 dkim=pass header.d=neosat.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=neosat.onmicrosoft.com; s=selector2-neosat-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xp/rBV5aYGs6rHRVVxeHgGsZ7BYVSx44Vx4y2e8Dqws=;
 b=i9gSvcqwcZC0Uf9ju4iqwA+o++Y1Vyj71asPBrx6wUW+mSFyBCVTdb+N1c9aIZporBsls3G5vcjIXnhLwBC52iNakBxH4y/YLPj3AFCTJYP1vrLWMx9FTz8b3b/uadpye6WOOXHNO7arfUebWShuk47qw1NJ5zuyXhDl6UerbyM=
Received: from AM7P194MB0818.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:171::18)
 by AS2P194MB2170.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:642::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 04:14:16 +0000
Received: from AM7P194MB0818.EURP194.PROD.OUTLOOK.COM
 ([fe80::f241:c575:51d8:b786]) by AM7P194MB0818.EURP194.PROD.OUTLOOK.COM
 ([fe80::f241:c575:51d8:b786%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 04:14:16 +0000
From: Leon Schmidt <schmidt@neosat.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Leave
Thread-Index: AQHc23xw4P0EY9B0+UOEYx1GVYlAFA==
Date: Mon, 4 May 2026 04:14:16 +0000
Message-ID: 
 <AM7P194MB081848339FE6F5F6D12B698DBB312@AM7P194MB0818.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=neosat.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7P194MB0818:EE_|AS2P194MB2170:EE_
x-ms-office365-filtering-correlation-id: 64fa8013-901c-46a7-858e-08dea9939b1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|10070799003|1800799024|6049299003|376014|8096899003|18002099003|56012099003|4053099003|38070700021;
x-microsoft-antispam-message-info: 
 bNXtwXZzOEsfXpAHf3MugYBtBkty5I3nbfu3n39vOvSLOPxiEcfDRCJwRX6yyiiZ20L2tJNEH7TvwBQI6hRZeYGKDl0tm0JdrRPRNes/hOkC7Waj69B4QMNx1fFkhzbenhJGzOGze3+BphoXWiVDAz2oUSwJRWlPF7joL/jYBNXOPZJMqZm+se2AGQrMg076SlXQAeZDxq3v9XX9oovgR22YQbp4CiJJWKLBm2vQyDQqiTgs1gHFDI9gjEX1vDAoTWi8XPr4gu+IN1QNwJudog6yYlSh4+j0PkGOsE7/FN2X/ySL399On3PwOYX+HYAXtUxoOT+ny0B7jX53jpvQy0PYt3A6203V6L/w6LFvCHarauGpXFf03G+AMz3BW5m/StXHOJz8Vb3rF1yAWkaazVnR8Jdh4fyJwP04DCzJmuMLwi6u98BxT9a/TWzhN4gz8RXc6y4DPTk8OrjzFawRo+eQBY4kwkltQ9d2OAu40hx83tmj9mmAuwOhB3Nf+wNF3Doier/afXiH/mnTtpFDDdALoaEsBroCXWiPQ9IQXbyPLiDKHt+rTLIvzhuH2Z1zwgXHSlufSu22oju3+0vILfxZr5kAm+ZuN4q2s4ggMrSEVwFdnUXHhPWXsAhCN8npf9SJBDpvTKNVsJokxNpYhcyhL3SDiNayztJ94aIQRGGypBw15GKZVCwLye+l1DeQOuEobkLgTowBoTDL36X7qrnYFpX/J7+Jez8DxqIhSAznP2J4frqE4/PU/KH4djF3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P194MB0818.EURP194.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(6049299003)(376014)(8096899003)(18002099003)(56012099003)(4053099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?KYIJicrzBrVODEo/MmPxSOtKeCR0I/ljJHOTex9nCxcrPnxU0eDRZFw/GF?=
 =?iso-8859-1?Q?SfrgyyLXbFMkHarMpIzyJqkZ/f0rhDm3g5ocjOi0QYf2VyVM5H89FwA1/v?=
 =?iso-8859-1?Q?Ntr64BOu6YWJVva5MbNzNavUF1RjtDRf886HQi+vfKDuWtryO8i6CDtIS8?=
 =?iso-8859-1?Q?jhbf0tILP/eNeVu3jPF7dXn8qdBIDK9CocdaZl/JOwl594FXII6cZHXXpn?=
 =?iso-8859-1?Q?U25mV50x0LoCK5i6e7LsKjaBOqbgcu2blBjTi4uuKxJ46SGBBm7iQMwZs7?=
 =?iso-8859-1?Q?dMNgbUSlF6Rswruos7//JnShdm5lZfE8sP+BoZTD5SkxqoBHYu4XMp4xn/?=
 =?iso-8859-1?Q?HWNNi6YVALq+Ysnw72VYT07/hJ9uXFqrzXjJruVzXP8gNQt516m5tKVXyu?=
 =?iso-8859-1?Q?o2/FOubuVgepnX9mM55AhlB5lFWsiOYDUUnZfAK4ZBvEEwf9U//E+NnAqh?=
 =?iso-8859-1?Q?WavCZH0p+YsnfJtDyPIM+gkzXsb27epL5cHES3sdqUXlaqJdso1GweZ9ss?=
 =?iso-8859-1?Q?Uzng71TbPG5D/Nf3HVFAJiQKy6NGruwldC6u7AXVK1/qC7g2d680xb3IQU?=
 =?iso-8859-1?Q?ANOndYbXdYZfUZ8AuuQNvx6QNQGXW5wUockcJkcoDVNVP0t3kJqN6GUISa?=
 =?iso-8859-1?Q?9qtPoVLa07r6Rfyq9+xmHYLhj/vyZ4lEBTCmszfUHiyn2II7angHX9wOos?=
 =?iso-8859-1?Q?IXvuUi8D8pFZ8d/MhOULgHbW3JjNaL7xlaEsIMV2/HrVLKyO7dxciix7Md?=
 =?iso-8859-1?Q?eB/diqOSbmODLpR3ebNLLdx4tXq6J0UVk1QXOorpJoZWxcTRYRPeQ7hplq?=
 =?iso-8859-1?Q?3m90CG28Wp8T3DCPAFKrYE3+BqByHXYuEnJiwAVh3SW1iTV27ECpP69Nh4?=
 =?iso-8859-1?Q?H9BmhBwiLg3RER97eIdIWvK0Gs6evTr2GvFglHbLeP/Z0ci33oGHnenzMR?=
 =?iso-8859-1?Q?qIL77WY1jhQtGAskPsyIZSXwPqxA7QmY7odkxANO5naiyv6PB+C1alU2wg?=
 =?iso-8859-1?Q?eRHIPNr0l7ZbUMaV9lbMPR03GuS+bI/FEeOmDWq3qKNQ5MHHTJhnGRdjlw?=
 =?iso-8859-1?Q?6Lk03398SQ4ySk/qo/K81wjsauWXSRNI9slYuFZBC9JDnrD3P3xHKKm1Xs?=
 =?iso-8859-1?Q?HMeCruRlocPo6LfW84d7OpIexJGHD4qDMCJFEpD0OTQsVy310JWty/G8VU?=
 =?iso-8859-1?Q?2oZX35LFOT1wWwjnamERXc8NgEmjNsW2zxmn3JgfFn25RNnL8XW4dCojPm?=
 =?iso-8859-1?Q?neBUieUFoS7cPNT8zr/a0YMKV3PKfWJ14RAVdMo412DRV5DdjDy7ZweSsR?=
 =?iso-8859-1?Q?BCZG8GiM/PyQUSHOSyIYf0rn+6dVYpk3lFy+OTOykbQ7Epkg4yM0jzVoi3?=
 =?iso-8859-1?Q?XgQXpEuhNyymsYfmA8+HtLm97ZwBto66QGJ99suduHdDghLBluI23Z/P6s?=
 =?iso-8859-1?Q?jCU3wLi33diVdmVxHKpb11w5RsGAGEsAVyTlbgo2FjyyDUnIXSQRKVMMjV?=
 =?iso-8859-1?Q?hqZL4JrU6FfGtmGuBS7XcUWm4vvjYGo1VJafCb83xpHUXHtrG3CdFp64Bc?=
 =?iso-8859-1?Q?CeTBZ+/RU+++zMtyBDWA9cf8svFdhwX5CUmatlg5cHDlYU9afsE4B8Reuh?=
 =?iso-8859-1?Q?mZUc8dpfpYXWX7Kgnpwn7BXMi1WemsVrVFRXYEiQGz08G1sIqSJSJnDg3d?=
 =?iso-8859-1?Q?HobqjRGaiqtTgiCdw6LtsUvPx1E5kEIMcXIc8LbU0TFI0f4q9VAvUKVIl2?=
 =?iso-8859-1?Q?opXdOt2qj4kHo6fFzNghcjMwuzgpo1rUbNgiIwzJCiVS4e9tDMNFchr5an?=
 =?iso-8859-1?Q?goRpVZOdFvto+JSkXJq+GG5kpVWRb7EPdNaIhvo81bZJvFkM1JD4?=
MIME-Version: 1.0
X-OriginatorOrg: neosat.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7P194MB0818.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 64fa8013-901c-46a7-858e-08dea9939b1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 04:14:16.0174
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28fefb60-ca5b-4b7d-9655-3e0a81d2fc77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0W1JJbwjcLVWMJevIv1vYUfis2YBn+6dH89oryoxbHtM5TgutD7HDM6RmW7SWmaOlZ53zzHLlRFkVrUKYCZndg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2P194MB2170
Message-ID-Hash: 6OU5KGODRTUEHXFE7ADDIFVDCWD4U6OR
X-Message-ID-Hash: 6OU5KGODRTUEHXFE7ADDIFVDCWD4U6OR
X-MailFrom: schmidt@neosat.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Leave
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V56VDS6VJR77VAGVDB37FSRYGWPJ6362/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6335093405145012869=="
X-Rspamd-Queue-Id: 6F8A54B851A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[neosat.de : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[neosat.onmicrosoft.com:s=selector2-neosat-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,neosat.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[schmidt@neosat.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[neosat.de:email]

--===============6335093405145012869==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_";
	type="multipart/alternative"

--_004_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_"

--_000_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



--
Leon Schmidt

Email: schmidt@neosat.de

[cid:93942467-3533-4da5-acc9-3de2bbf8fdee]

NEOSAT GmbH | Zwergerstra=DFe 29 | 85579 Neubiberg

Gesch=E4ftsf=FChrer (Managing Director): Kai-Uwe Storek
Sitz (Registered Office Germany): Neubiberg
Amtsgericht (Registration Court Germany): M=FCnchen, HRB 242345

--_000_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
--</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
Leon Schmidt</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
&nbsp;</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
Email: schmidt@neosat.de</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
&nbsp;</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
<img id=3D"image_0" style=3D"max-width: 798px;" data-outlook-trace=3D"F:1|T=
:1" src=3D"cid:93942467-3533-4da5-acc9-3de2bbf8fdee"></div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
&nbsp;</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
<b>NEOSAT GmbH</b>&nbsp;| Zwergerstra=DFe 29 | 85579 Neubiberg</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
&nbsp;</div>
<div style=3D"margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,=
 0, 0);">
Gesch=E4ftsf=FChrer (Managing Director): Kai-Uwe Storek<br>
Sitz (Registered Office Germany): Neubiberg<br>
Amtsgericht (Registration Court Germany): M=FCnchen, HRB 242345</div>
</div>
</body>
</html>

--_000_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_--

--_004_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_
Content-Type: image/png; name="Outlook-jqj5bjwh.png"
Content-Description: Outlook-jqj5bjwh.png
Content-Disposition: inline; filename="Outlook-jqj5bjwh.png"; size=7859;
	creation-date="Mon, 04 May 2026 04:14:15 GMT";
	modification-date="Mon, 04 May 2026 04:14:15 GMT"
Content-ID: <93942467-3533-4da5-acc9-3de2bbf8fdee>
Content-Transfer-Encoding: base64

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

--_004_AM7P194MB081848339FE6F5F6D12B698DBB312AM7P194MB0818EURP_--

--===============6335093405145012869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6335093405145012869==--
