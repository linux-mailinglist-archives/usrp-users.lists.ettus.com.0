Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B978ACBC2E
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 22:14:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 516C2385DD4
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 16:14:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748895265; bh=0VQ/O6YNLKq0WyPqVFf2hXMn6bIVmR8qM8fNQB2cFcs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FoAcEYlIlp/YeNhG76QYtEc/kR3w5qQdh2vf0GJiAGSWuegtcfq7WSyZyR72Xenvy
	 bHKFvk1OlB6CJWHfVpwGim2nNj28yJQj/deCrfnK5XOL9lweoKfyOcjt2YrkS2ukv4
	 iUveyh+wzCjqj2o28OH/UgfpuD1De4zmtKaLo+xxhmhL6TN+HRvagPSw6u16v81RrT
	 c3eGUiJxjv+Rl8SLjYgyCcO0HmSE7InD6D8ri3l8o8XUEw/E/oN7upX8fceQGSS3ws
	 7X1vjD9uHpmF+rJEhaA6xsVeEXFSt2+4z7gBwZX65Zfc2K7k8Yrc2JmtJ/Gy+lIc4O
	 YJv2xWcOhoYAA==
Received: from YT6PR01CU002.outbound.protection.outlook.com (mail-canadacentralazon11022123.outbound.protection.outlook.com [40.107.193.123])
	by mm2.emwd.com (Postfix) with ESMTPS id C274C3858E2
	for <usrp-users@lists.ettus.com>; Mon,  2 Jun 2025 16:13:30 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kSQIQHg5mFkSsMyxE2m2IPckAtV64m7vWjQ6FnmL5/ekcl/dVUQOwxoqKxxn00vMv8t/fc41Dy/GnbO9l6x5SqOXYvtvnzb05AtWl3CDYfQ/PYVA7c8xj76hou6g8GaTn/Y74f9EjXQoxunJW7IUt8GspfHIGsjPJMrSMMdd0ledWzyuAzxdnDkSfc/MsOfCkW8qf9zlX0Z3Hh6WPhE3raF1zavEPl0cvip2a3/gIJUn9cunC5ZdYFmFa5pWE9aMsZGPn4MGNon1J/oMS3sL8X/OvJLCYqqGm8+L3j4t/voWmwMfWg9sE4tsYhAT0euv+3Kn4knzepTZRtwmYpTIbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Dg4BvejyrEuMt9U7yqrHZ3sGMk5XscLOAT52ZM5MlE=;
 b=aWSPmXFyWSRvaf/P87ao7xZSgftaotdfnGrNxJr9Ki3tW4Ns3wM8LYaL87tWSt7OiFAcwCjWMf1LNBO7UpHCU/Gq3cbOySK0Z9yWnkcxTooSiK0WeDy6QsHz/kTGM24Pwh9JcmdQ6C9F2k7KIqdy1znpHip8sa43vFm036DYOwBvU42ByoYQaUUrJbzIzHVh/FZDJBnUM8g0PzsWA5dKQQt6eJOrdwCuYs/OBViPvcKoxlD37/QiQZtaLF7qszomnWU09kUvxlm74jmOcmZKt5U0h8VUxWq5TFN1Mnv95CM73wtPkdbxkrcBLBT1Wn7+s2jMMTPJy9M0jN2iLvzrDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=humanitas.io; dmarc=pass action=none header.from=humanitas.io;
 dkim=pass header.d=humanitas.io; arc=none
Received: from YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:9c::19)
 by YT6PR01MB11121.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Mon, 2 Jun
 2025 20:13:28 +0000
Received: from YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::8951:a5ad:7459:1382]) by YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::8951:a5ad:7459:1382%6]) with mapi id 15.20.8792.033; Mon, 2 Jun 2025
 20:13:28 +0000
From: Rabih Nouraldine <Rabih@humanitas.io>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Seeking Information on FPGA Bank 18 Connections in USRP X310
Thread-Index: AQHb0/kp4JY71pN2xUyZts6gp4KK2w==
Date: Mon, 2 Jun 2025 20:13:27 +0000
Message-ID: 
 <YT3PR01MB8195812AF2D6175EDF9B052CD262A@YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US, en-CA
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=humanitas.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT3PR01MB8195:EE_|YT6PR01MB11121:EE_
x-ms-office365-filtering-correlation-id: 4dec84e4-af0e-41ec-7a0e-08dda211eff3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?Okb+aEvF7Ux4mm4d2SNC2Pd2Xxm4RuVWeWzoRJgrkMp7xRpCODrL36xk?=
 =?Windows-1252?Q?MJmTeJE7ILozrGIxtBUu3EM50vua1lkQzTYjP/ykmiAYhqYgyIO9SYmS?=
 =?Windows-1252?Q?IW3B2KXSsA+UMiiuz36lTWZPjGXSsMAya0QPAtp6hYo+FBtnTOYuIr5T?=
 =?Windows-1252?Q?qp4ONeqH9xuD5FkSMIkVEsb8Ro9DAUF1oDfNhH1E/qmES+yK4GGi6cQy?=
 =?Windows-1252?Q?eYkRJ/M025chs8XV9glPjFaFSkRTzjkhTv0BU90Ne3tTWpFOPkkRkn4k?=
 =?Windows-1252?Q?UzobCM+UL12i35XCA0K5X/f8/jLABWJt+h5o7QKx4oZIBa77efpXPp/E?=
 =?Windows-1252?Q?gv1lLn4HTUa/GuCtOiDISFZ2ylyltUyeKyiS/t4GGvXnQX2BiRRyUaMu?=
 =?Windows-1252?Q?1C/TYrQfmR07BAPqa5l+LOPIiTNA2MW9y45WFElLJyRlTt+b4doNpB8n?=
 =?Windows-1252?Q?OKN0zC5B/7xXBSXsjpCvvGAWPQkY7EtcJkKdtC+AoGJAioB/ayhKtuoQ?=
 =?Windows-1252?Q?3WhbyfhuY+rTycE5Q1MOCKmsQ16LycM9FAx6wCCN24NKeaG/jaiDit3z?=
 =?Windows-1252?Q?th9jBGHUQ0IzciSxLyPrX/leCpjYpkCgkdWvTmDyMLBaPDJDRzx9ZVP/?=
 =?Windows-1252?Q?Ib7SyGqXqNeC2Rsy9Nhy2MGYTV7w4Pqwqu9B1lUfI9MOgJd6tuJv5bgP?=
 =?Windows-1252?Q?i1ZAHFpxO00VmzDRHZ3aGLhGe/DHtzgJAbzXJgoQh0jx1pI5kjXghAsk?=
 =?Windows-1252?Q?y7dvhBNvaGOLKkRhnyhF81jXtMc+PV6KN1UkE3T5lLl6pnV9A59XRGfj?=
 =?Windows-1252?Q?xooWPqHUI8aclEpZq6GVSCcW7/8dmN3mR3Xwf2laK+pxfGzzJec2BUwd?=
 =?Windows-1252?Q?A8gEQLf6vNci8okSx7T9ZrmI1kS3o2Hki31jCKeidbemZ1M+w3/BiDPK?=
 =?Windows-1252?Q?GGUPAhH9ASkwnQAC31FohwYy8JqrGPJvX8azoD9kzADbBnCdNJpvc8Oj?=
 =?Windows-1252?Q?0Ja97hpkGmXeywpmCDhu++Pc4vYR7TJlV3L9ei/shKD/e2S+zofxNdj0?=
 =?Windows-1252?Q?XAdIak+Kj0QpSuU8zgWOpLo2Fk5SUdfzDrlnodIOYcbYqdeXSEfoDt79?=
 =?Windows-1252?Q?POGyGkseycxHP6WOnp1OIdET7l0btnUoN8cldYGve9INdz/rL0c0/cRj?=
 =?Windows-1252?Q?+BeDQSIlkCdeIHSszfsleMnpKTHQFG0NrVmu2VIxF61Qzo7c1BeZpwq9?=
 =?Windows-1252?Q?cmPvZDGxlr8xYXnWrH4/+dQf8vfewdOgw7awTN9+yWc8cwVZXYYfvLH0?=
 =?Windows-1252?Q?yPsTYQ3grdkAg2PqK69piFlu7Opq0FdvzNf7hSxe9Vt4oncxUlrKoiTD?=
 =?Windows-1252?Q?piCXi8XcDHxrIZRHnC1Gxleor0PLFqfXVMZ9M0sXSVPREmDpyI3Kp0PI?=
 =?Windows-1252?Q?bTjYV1rjFn1zAlkdC0k44vSVit6v1oZsY+z7wzCqpsrTWHDbAx09T1Tg?=
 =?Windows-1252?Q?/pQ76yZLtYgYNsLIakIoEcFp08SFrmTopkMrPVWJ2RRUSui8bog2bjww?=
 =?Windows-1252?Q?kg+Ak+q+BzWHcf8LjoT1MVypYbWH0mPnjq3CFA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?XKX36d4eeZHT/ZTbxVnuWWbAAvzXJVWssTCsdzvXO+SoPhkVKVlghEly?=
 =?Windows-1252?Q?DPUToBddDhfg+SW2A2mlibbt0K5P9fHt1xEQmTX+HK4xdvBpklvR7NNJ?=
 =?Windows-1252?Q?lx+yDdYSLBb5pzrAtsaz+jG4PzfeHUYD5eWjcZ8baLkDWzYoK/h09dBD?=
 =?Windows-1252?Q?EUfyiLzbRdOrUxU+LwFIYh+jyLuTjCzZux9nQtukkwk8QpcTa89Rkpl/?=
 =?Windows-1252?Q?rzrRgDEtsRixDzGPl37hFyZiPfc/ZSCgyjpNbzPHWDMAshvEkUnWiRdd?=
 =?Windows-1252?Q?Hc+nqZJQfNqz/yDDHX1ezVoHdSCY/qfIq6FfbSON8VlgUrgzDO6VlNP3?=
 =?Windows-1252?Q?WwW8DXJCdPXIOGKvrW3zt2IZctXtvCaxIyuihuNTPWBzs7qXkKsaZyEq?=
 =?Windows-1252?Q?+CucMmtXfRc+pmQiBLVpA3/xV0YUCz1U4em5r9BJmx+NkhG1NY18IF9J?=
 =?Windows-1252?Q?RSl4jvlJMCXlMKpFHwz6w32GHT5FXqxtNNNaPn4a8s2f1Ic2CHZ+pYUV?=
 =?Windows-1252?Q?UWEP5suqj1QWiXtW25SxPFunFrhnB6HiWfGQSrM5qpgbRF4JkKzCVrsd?=
 =?Windows-1252?Q?HIBQbszDJ07usTk9mmjUhi19e1FFuanS01xfibIyRCnwU4eKRlj5+xOF?=
 =?Windows-1252?Q?4erXEM5Jy5N6A+DPiIxMPj0YowlfQuynAxxPskt8S7kWCAgBLbVbxLaw?=
 =?Windows-1252?Q?OoLH7LKp9g4MjyCPos/LGwk8cCFCh74w6uRx/RgzCXg4qSTeRZQPzDQ4?=
 =?Windows-1252?Q?eYxIbScq+8Vq2W/cWQ+4pG2L7ryaPk2C+BAtMs/fnS9kT8GoC8K+F2fM?=
 =?Windows-1252?Q?y+NVAobrHwKQzlJooJ6Voiqkm2nl3uZ01Pc9pONsZfIRTDeOGYOt99ob?=
 =?Windows-1252?Q?9s2JeGGADdWzPtf3cDRo6PYOSgJsWq2U3xkFOAG47KQc0ZNMFyka2MrV?=
 =?Windows-1252?Q?PWnOJgveg3C2h5aAvsh6WFI1kpFI7xB7O86+U3ziGOiRgmAEFAWnAM5+?=
 =?Windows-1252?Q?ep0dg+5zi3DrWykYd0vkjRvMY4nVsW1fhTx6rIOgg5n8WCq/QnI5D/a2?=
 =?Windows-1252?Q?5q0nWvJdIKzXMf9sAFmubCHdf43Mv7x5XsdNaAbmLOYiSjJJcEtwI1dd?=
 =?Windows-1252?Q?gHpR8gOcj263drrn1W9wqGB/OoRntdxiB+mcJQuxjqSVX73KxRgM0ZXB?=
 =?Windows-1252?Q?v/jsXEJQUTG2KPNeN76EoKLudtdQcdptC2h6U+/9NSxZIu4yCP56Sh3e?=
 =?Windows-1252?Q?tH2UqCTbtEDjnMUrWj0RJD/tbADfucFAcPtM6WbmpPQ5uijpqnNFAwEU?=
 =?Windows-1252?Q?jq21TaRLysAGv1KEonSuXNyupYLDetEic5i5RaPqIEpUZxE+gZWg1slF?=
 =?Windows-1252?Q?fjqid3Hg8ql7TLMBNzqsuq+ZRPWe74KlzZ4kQgkX86neHFW0+5yWwJxc?=
 =?Windows-1252?Q?dP8zw2Mup9ASplqdUaiN0KGm2cQc3sDqVMfK18QPdPTY4DHA9ieytA5s?=
 =?Windows-1252?Q?zZWS/zQKRskU7Nkl50lXFc6o6FJSJBAiPNLkMPSflz1a2nwnJzcak3Vz?=
 =?Windows-1252?Q?E3vgMzc9lW1zhUZsoWG3IIDJjZgKgLQ7L9w3wAgE8fo4/4XpkK2BDBFT?=
 =?Windows-1252?Q?p2G6TbsX0xN7WvuC6mPZCedd745u6CeA2pCl1lPlD1BCsS27PyKUOvEh?=
 =?Windows-1252?Q?yfCBb0O0N3s=3D?=
MIME-Version: 1.0
X-OriginatorOrg: humanitas.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dec84e4-af0e-41ec-7a0e-08dda211eff3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2025 20:13:27.9950
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f7c794c1-9fbd-4a7b-bb53-2e1c5c8a34a6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5KmqYI4K/ze7sGETtF9QjQo07bXtgULaF3nKsdLMPEe4PQVqBDWLp5MuwXSSYuCHSl1M0+d7EjbQRpsIEYbTbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT6PR01MB11121
Message-ID-Hash: A35YYITQRKW6ANEYMN3ZJHX7HNVVFY4G
X-Message-ID-Hash: A35YYITQRKW6ANEYMN3ZJHX7HNVVFY4G
X-MailFrom: Rabih@humanitas.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Seeking Information on FPGA Bank 18 Connections in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GG2QTYXZ6NA3YXZY7F57WXUO4HMPDGHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5850318202090722807=="

--===============5850318202090722807==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_YT3PR01MB8195812AF2D6175EDF9B052CD262AYT3PR01MB8195CANP_"

--_000_YT3PR01MB8195812AF2D6175EDF9B052CD262AYT3PR01MB8195CANP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear Community,
I'm working with the Ettus USRP X3x0 series, specifically the X310, and hav=
e encountered challenges due to missing schematic pages=97particularly page=
 13, which is not publicly available.
I'm trying to understand the connections related to the DB_DAC_*** signals.=
 From my investigation, it appears these signals are connected to Bank 18 o=
f the FPGA and are configured as LVCMOS18. Unfortunately, detailed informat=
ion about these connections seems to be on the missing schematic pages.
I understand that these pages are often associated with the PCIe interface,=
 but the DB_DAC_*** signals don't seem to be directly related to PCIe funct=
ionality. Therefore, I'm reaching out to see if anyone in the community can=
 provide insights or guidance on accessing or understanding the connections=
 to FPGA Bank 18, especially concerning the DB_DAC_*** signals.
Any assistance or pointers to relevant documentation would be greatly appre=
ciated.

--_000_YT3PR01MB8195812AF2D6175EDF9B052CD262AYT3PR01MB8195CANP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Dear Community,</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I'm working with the Ettus USRP X3x0 series, specifically the X310, and hav=
e encountered challenges due to missing schematic pages=97particularly page=
 13, which is not publicly available.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I'm trying to understand the connections related to the <code>DB_DAC_***</c=
ode>&nbsp;signals. From my investigation, it appears these signals are conn=
ected to Bank 18 of the FPGA and are configured as LVCMOS18. Unfortunately,=
 detailed information about these connections
 seems to be on the missing schematic pages.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I understand that these pages are often associated with the PCIe interface,=
 but the
<code>DB_DAC_***</code>&nbsp;signals don't seem to be directly related to P=
CIe functionality.&nbsp;Therefore, I'm reaching out to see if anyone in the=
 community can provide insights or guidance on accessing or understanding t=
he connections to FPGA Bank 18, especially
 concerning the <code>DB_DAC_***</code>&nbsp;signals.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Any assistance or pointers to relevant documentation would be greatly appre=
ciated.</div>
</body>
</html>

--_000_YT3PR01MB8195812AF2D6175EDF9B052CD262AYT3PR01MB8195CANP_--

--===============5850318202090722807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5850318202090722807==--
