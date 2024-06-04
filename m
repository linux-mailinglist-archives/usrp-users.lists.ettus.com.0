Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5138FB399
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 15:24:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C3BF38501F
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 09:24:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717507467; bh=XeIdmzitmVufbgS0FsGSXe6zN6xQu1KdFjno3bdns00=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=G/ZvTDUCZTc19hAZKOgip2MI7pyx/vs5iYBUGZs6eQRyn2Ln8/gG7rwEROOUujZzp
	 ZRQZmyc7uKSjtvuUw0IvOUhMeLWCtEaBJLXnk3iVCWU31HqwRyhaw3lChqe74mMHh7
	 q7CK/mbBgozmjzaD+EAJjy+8Y4RCfi+RBw2DnnRkHmpYr5LgcjxeCFqSBAsY4qzygj
	 eN0il4VVGz3mJcReW0vVh3m6GDw1wj+mqQs2l1ixi8AXSdrnxxf463/1Lyus/SWLs5
	 FmKpXas5FYolQ8GKU0qoF6rFmlneUU3e1No5y4DiiNSDroXstb9kZQM5gzEpLptAEm
	 0omWvijrv89UA==
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01olkn2056.outbound.protection.outlook.com [40.92.66.56])
	by mm2.emwd.com (Postfix) with ESMTPS id E3485384FFF
	for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2024 09:23:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="KfPbxEZ1";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkkduCWIJifFCqTCUvHeBm08nmBKJP7rYgp3X/oE/e3sm7JzkXc2o6bsnvOPuVj3jIjerGWa6JUGpa/IJhByJkLMqS+1R0zGgxR1HHJo718A1DFcbQNskqrDBBc0EBrhld2EbKwFpPy62Nx2kqIpjGfIlg/YdNvjoR3GsNF9fRxh98woq/lobF/4rXLBJfsIP54LfJX6O4NrVpAOo9jjI0tLgFz0f+5G+D9Gv41gQciB9dY/JaH7qpOC6DVvKoBmBTOBQPLLo+Z3hTiKPzSuUHPgkLhb4vxeY25kQxugCL56EhjZZNj/3BNUluvJGGHZhpgAraOJgPlKfJh34EAbGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4FHtCru0bkO4Cg/6Typmg62egT9WwUrYiNL1leSinM=;
 b=MI7r0HCiIwDk7BCd4d4uzDWDNkvmAg4fW7wSx5jw4QboJX9liIzgSdpX/W4nVMQfsafkW0KSUw3Ir+OkVOAjmJBgzz8tT3DitVf+ojodRmOxddxiicAw80k9+JQkDPF9BRia9gJzV9fTj6+qOUKg3Ja7K9+31j+bRPVcRJB66vrrd9DZ3TLfS2LjI6hZJgnNG1SG2KJS080pQpUy7e14aFTv/6xwepmoPRV1kZvpKQNXqFo7+33vhW2g5SeMbm2GblszeOxDZMMgYUmFgjqmZOXgwGukHoE1Tw0U6CBdsOysCScG9iWd44TWWINKCNGVN/MgIBgkQ18nVl9Eg+KuqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4FHtCru0bkO4Cg/6Typmg62egT9WwUrYiNL1leSinM=;
 b=KfPbxEZ1B/pB3IvyPGWnq2ppd+Kcq2sM+CRN9hPLlS1kYOIJXnea2TBuZjhletWFueQN8y/3Hof7lD2StTY6eYRbiIPEaXKM4z5LvkFaviT5ukMffy1aFZBOK5Y3n5GH4sm2jUfpEyfVXh5tE0z5MbyWp4Gy0UiPsebUO52m3pg1+EV40+7o7bef8WYGW/NcfPjBgnCIC8im6q38JDfpOOWVrs9l57a0u/DaDfIE5RaCxP6ls+9maU02uXNa0y//7E5D1lQOSRd9T9yDuzGLYpR8DPyBhhZO/E4FumwO0oNSvIHZUIIj3DzzbSWIUe/FSQv8xgXj2rtPTf7OrLJQkw==
Received: from AS8P194MB1893.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:52c::9)
 by VE1P194MB0927.EURP194.PROD.OUTLOOK.COM (2603:10a6:800:14b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 4 Jun
 2024 13:23:37 +0000
Received: from AS8P194MB1893.EURP194.PROD.OUTLOOK.COM
 ([fe80::6cb:f993:c6cf:5b5e]) by AS8P194MB1893.EURP194.PROD.OUTLOOK.COM
 ([fe80::6cb:f993:c6cf:5b5e%7]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 13:23:37 +0000
From: Moussa GUEMDANI <guemdani23@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: usrp x310
Thread-Index: AQHatoJAN58kdDfGXkainz1d2IMkCQ==
Date: Tue, 4 Jun 2024 13:23:37 +0000
Message-ID: 
 <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-GB, fr-FR, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [i/o2igZiyO21aakjz/0s/qubOK03a1Q5jiXmKuY2pg8=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8P194MB1893:EE_|VE1P194MB0927:EE_
x-ms-office365-filtering-correlation-id: 8b856ac2-fc60-4a0a-1918-08dc84998aaa
x-microsoft-antispam: 
 BCL:0;ARA:14566002|461199019|102099023|440099019|3412199016;
x-microsoft-antispam-message-info: 
 /6cSsKBDPA2kiM7jv/v8uGGkZAZ58K6qUkJD+/OpaZfVPMRG7lV4KS/QiCfNc7l/1+t52lml81sEWPZlWRCIsCGoMBv01GbGz08wv1bitFbfGFHX/Nl2DceuwdPzWVJ4DvtqOGoFjIGrWGHcAeMoSIOxQkr6qeAseUgL5nU2IPwzZ1OO20srmvVV96pPzie3dVfIBTGQtties/KVPuuzcp3YZeWuw0UgaTRi4b3DtG01kCi18mFt7yFAYkoRaj2H49sVlCraxsJbyyFNcz2gUdnrSI2IMcDosK/uk9I3kzMsZNfOTDS0w9OIObEMJDywFVLCNFGLBwJhF5Sjt1XpA3n5P/5BE7sMv8YGiwsunqdkvgitLcBI8MRjwktVEYl1rKyLPH7dceM/Fd8OmEYOV5y59H+vtTmpghJmDHYaDlShk76i9kKsGeQ1QdzPPQn/U8TWxklv9qW3yjd5ZdHdl+ifRv2d37TLP7sK1cGqxrXvfhKj9E8OJp/K/bXKjLrvFr9lREkQYteaAYnlNsog5b+DPSydWBIVtymlWUi+jgsqoBrP6jkccPntchutRX5e
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IN/7dCxzBHtH3c+YtvRoPPWt9Ri9GdB8A0M7oV3IwRPyOmm52VClDWQNrp?=
 =?iso-8859-1?Q?jNAv0eYFPrZkxR4DlKrRhbFmweQ9U9Ne9P4jlJXTgfezT1jU6otPsM+OdD?=
 =?iso-8859-1?Q?QcTaKQspYPx2OZtyIconWnMiR91519YxfKfhMJDc+VEVpeCbbIOF+7N6aq?=
 =?iso-8859-1?Q?ugd6hefT21nhimL83KAYXB5Y/xsCSeDiWjD4Ypq3sLaadLaHxBEj9BAHGU?=
 =?iso-8859-1?Q?7GCcj/qq1WP/WrHRrSZugToOtLkcIBu0GZUkzZIHrxiKrBc9u2/6oMcVIj?=
 =?iso-8859-1?Q?ZnSZafiwoi/L1GgBvdaZLcvDbPKKMEm3VvWkO6+IWx0exkAoysOdEHd4z7?=
 =?iso-8859-1?Q?MAQ2PNs0qoO8FlZBru9/FjUkaUtXEmqr/tUss6J8uG5rGv6dtGxjPAOhGI?=
 =?iso-8859-1?Q?SR8C/724ygGXP18H+eALJTfbf+2j4C8RItIves8ZpYUi2YkZlHbl54wmzA?=
 =?iso-8859-1?Q?yojQdMtBK/GuTvpsqxAJHxry8DYY+RsdDo7fF8lEd+yvy3BZZhycYS9HDB?=
 =?iso-8859-1?Q?EU5X1QnSvt0/Okhg5B9iSMK3oB85gi8gFikt9SKylRgSIRKblOXoFXWF4q?=
 =?iso-8859-1?Q?IIK/4uSGp9x6Rf4kb3WvQSnkKJIycLuRR2rhD9GyL3UTHVkhAa0r2XfEoV?=
 =?iso-8859-1?Q?7QS05tWjsVD56eJsWnvLZfIT+dQx8DbVoO1VdWYzpBvkGRPhz0BrWOAU+F?=
 =?iso-8859-1?Q?7KDMA9FreATC/5yqT5EIUOQjALszNYfvDQ0hdug3aFrHEh8k3rNVljjXsh?=
 =?iso-8859-1?Q?FX5cnpCQ3AnLOziUp+yT+sE2CYpAOcx4vT5z3T+xYMnFTJtH0c93CcwGPc?=
 =?iso-8859-1?Q?1VbD4MP9YCRUIHsDalj9FPeagAfJmaqRB2E8CP7/X1JbnHWyiSMbBqu2/t?=
 =?iso-8859-1?Q?31gcg5EG+EHz9Kr85jTuoRglV/4lqYUxfh0O87Qpocw3DVxuDVtZ7JrxO3?=
 =?iso-8859-1?Q?2A5QTfoVFOZbZwBD75c+c64VxVeIzkxn/nIg4IFI44ErtPZTylAAurltxT?=
 =?iso-8859-1?Q?rwJH37hIvTFmiSdV2nWFw3KA0O0xzaXt7j5n7kqyPa6UQ4ENMxtERirmu3?=
 =?iso-8859-1?Q?CGWlPuloWtxHXyVbzS9ykdF+S8Dhkt0BUrvSenh/Ey4Lvg2VHHK1QcSfjB?=
 =?iso-8859-1?Q?5yU0cY51hp0gDJW9a1GDDHy4jAu3vswDWN/lc6V35qAdIX3R4WMAqfbZs/?=
 =?iso-8859-1?Q?dy0uwD/RsqVIGZOmTQcTTFTRBxhmRMEVVEUSXkSZsiFCnR8RFKzFpONNXU?=
 =?iso-8859-1?Q?3+0Gb4vhiE1mG2nvtHzB2QV9A7dNCz7ekqmLxdCIXz2BYNOFaGc/Cp8M5t?=
 =?iso-8859-1?Q?VJ+v?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-84264.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8P194MB1893.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b856ac2-fc60-4a0a-1918-08dc84998aaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 13:23:37.0813
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1P194MB0927
Message-ID-Hash: 5CNOXTZI56UGBRGDV2PQFW5DRLMYYFIB
X-Message-ID-Hash: 5CNOXTZI56UGBRGDV2PQFW5DRLMYYFIB
X-MailFrom: guemdani23@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] usrp x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TJFMMDGOM6IJNZ2K7DJLL4ES26WYKA6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7998714088013319127=="

--===============7998714088013319127==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AS8P194MB189394551E5E2FF60681279DFCF82AS8P194MB1893EURP_"

--_000_AS8P194MB189394551E5E2FF60681279DFCF82AS8P194MB1893EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to know if I can use the usrp x310 as an O-RU, connected to a =
CU/DU via openfronthaul interface, (split 7.2x)

Best regards
Moussa

--_000_AS8P194MB189394551E5E2FF60681279DFCF82AS8P194MB1893EURP_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I would like to know if I can use the usrp x310 as an O-RU, connected to a =
CU/DU via openfronthaul&nbsp;interface, (split 7.2x)</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Best regards</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Moussa</div>
</body>
</html>

--_000_AS8P194MB189394551E5E2FF60681279DFCF82AS8P194MB1893EURP_--

--===============7998714088013319127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7998714088013319127==--
