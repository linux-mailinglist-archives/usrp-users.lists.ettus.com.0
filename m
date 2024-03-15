Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF4A87CAB6
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 10:29:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB73D38523B
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 05:29:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710494977; bh=cjKIq3h+CYSMigm2rOgzP03vdzTTQi2mMkM4umQN8oM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LApGxdS5pTCdYmh5E7nAnuN7UotliTLtUMAtYvcKP4QGkhbMSLMcVTB7fNj8Up6Ea
	 a+plkgtgHE8oIqU8sIrMdfEL0SeMMjyhyY00dn1pREP23mLytXBn7MOej8OsZoC8dm
	 iK9o1tdrn1vvdvtmHU4nQwSj/MkBpnUMZgrJ7Sw3yQ2d7JDkRn8LGF+qGohgRAbSoo
	 dvFJ9TeGwDMFUPY8S4CrpAF5jwTv51GJXabciptYyI0WRq6zLn8RS+HqJtTCxeuVcj
	 alYOlwZ+CP1Z5UqA4N4VClz2Srxv5Hn6TpQ7hxWN2LcztnmkCQyXE5qGDXNWNjKUtY
	 b5Axnx84pBvmQ==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2046.outbound.protection.outlook.com [40.107.220.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 06D8B3850C6
	for <usrp-users@lists.ettus.com>; Fri, 15 Mar 2024 05:28:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="KsWP+rYd";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCMsObA/wPgaYjQgeoXgtCqcGFC2zrlN9Eyio1sRpBH4SHkl/6hXlV0KCU4exKijiC9Y/LNBDT3vmSCc8OWgn/ldsMt6VGDo3u150mZL6wOMgKvgZGdGDZ8N/kAdsADZ1V3SAnL7KYhG4f1yjHufYXf9quCt3pWt0Q2T5IAe8p3+IeZqAlheplbo33lVUwBh0NcBOGTRKxIXfZ7OSnL5A/U+jxmLKriasWSPwXoQjNoZORCZjNgitd3LBs1owSSAwmaq7mD+lLCNA0sd+6vN9md14hhvkL/tDI77+BTturoxIcwQa5p6q1Bj4vx0W0jmC1EsiJHbXObUKEHK3HWVQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VO4yh6iZq3ymFECZJSxw4jXlYWBsR/JT/BCDDjXXNeM=;
 b=huR4+sAGchy73s70egDESe0jgkUhsFbk2apdov4iPPF2tdwlM1qhUTb1vZNMpPLAu40ENyEQ8mnHNO7+oi6Id+qROZBOSccCcfR0FsLY20004kkAzoeqcQxvUZDY7tFiiAO811PjYrVC/XOvw2oIPGaOprY3FSMfzrdLgCOYuEB6Y5wAcF2SPPOdkMQ52KzVFrEibgmZm2JFsUdKgvnVt0hHNq0O2uQnMbrlP2fDTyuVNySeDBZPTvOGpzW/B+CihOo+EahgBP4s1IkviT3mznj/StYE/+FkZ/ecjaTZAoMY8GCLDXooAufdQj61nPaFWtnGQyuP413x0ijUOjXyow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VO4yh6iZq3ymFECZJSxw4jXlYWBsR/JT/BCDDjXXNeM=;
 b=KsWP+rYd/fMS983X/GvSqhURnvos68ESXEfQidjKNEkgBEtGJLDht/iukPd6ssbD8v1rzxvlLKbv9FPyzkieR4IvdThOKIFOdTdSGeAhWnHyymGqBHty8T2Gdh5ddYhSW47SkGzNg48W9jwBCz7LiOgwO9TQU6iMDEhJz63/FxE=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by BY1PR04MB8680.namprd04.prod.outlook.com (2603:10b6:a03:524::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.36; Fri, 15 Mar
 2024 09:28:44 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::85e8:da41:f21:8e2a]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::85e8:da41:f21:8e2a%4]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 09:28:44 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: USRP N310 "NoneType" error
Thread-Index: AQHadmj5gN+mmPdQUkKhwnV3oiGTVLE4gYDw
Date: Fri, 15 Mar 2024 09:28:44 +0000
Message-ID: 
 <PH0PR04MB831177053D2042E58C0AB94EF3282@PH0PR04MB8311.namprd04.prod.outlook.com>
References: 
 PH0PR04MB8311970D78A485091202F272F3292@PH0PR04MB8311.namprd04.prod.outlook.com
 <4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg@lists.ettus.com>
In-Reply-To: <4EfsvfVUNQkzr90YtfQB5jYm0Un4Ss9QTCPsCPfWg@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=14c4725a-300c-4e53-b2b4-27960bdeb9ca;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2024-03-15T09:00:03Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|BY1PR04MB8680:EE_
x-ms-office365-filtering-correlation-id: 4957fb12-58e2-46b0-b69c-08dc44d24f7e
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ++8umwpZ778ifEm16OKaVC2Fbu0JTylj4+6ZU5EiXv40PlCiSMzTNxFVHLRhLCIhm8mGhefCCvGYIe0AIdI0XC/gss17Sv0NPlXpLl/PoOZXUcEOJyG3canuESBXBsGswWwcunZDCF6d/vjS2P4wgFALIqf1BOxYFFGAfY4lJSF7nvVcvSKDLPJ4e3N8qgDFX308vylgtlj7azRoNNyj41mKLqF2gAPg/fkIt5CRxjYhf8/JP2CSOzU9F6/RU0kqeCxLdGiddrr5RJra1KNWJbUkXAlwDlDmDlqBNvhHjWNGOf9bOB41P7PDGV0HmHTnsbmqvOb3cxgWoi8iJUa527ckubinOgD1UEF/7++AJSXuvhH2DaEyyg2c4BXzUuX0jHnJhloL4d37hAKxQOGFZZ9IN3KtzpWx36HvOai3SajlpoGP2o3XU8/9o9H6hJ+iPJxoqdF4wRGSvww0cPyzYHuyN4nHHYmDKNvylMAPTIRIvqTyd81lJN+wE2VC9Xv9p4JJ52m0Fp3yHq3/zEpIIH3b6vyQP4sGzgMP04wytPrPINZUjcmh7F0kNFbFlH/EuvsUQIqBqY59d7SorChWXM6DURfBkAtPFr7xR/73JsG/WWBBOIHmhfzWIv2OdpkgNEUL7x+P/QbKTI3GOYvfdiycdPXfe2/nfxpP4R4NNWMQ2YZZigO577BYzj4BJqFcgnMFnnn6acZeE4sTT0fQ/CKJOWCQ2DIxJzP39pggPE0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?kwc2jwDn9mKb/AaL88ARI2Ldupuwt6oKb4muLvyob6T5Hmoxb0rCFCgjmeVR?=
 =?us-ascii?Q?p5s+jWE+F9tDjZfaTJEfWI0j3sU5377mQHBf/PPnIXEPuETAwtYjb0zHrvfx?=
 =?us-ascii?Q?wZv1aPjND9KIc/9IBpZ8fL62HqTRevH0Ir0gis/8eaXe5e9vDEAAZ3qS3iiE?=
 =?us-ascii?Q?iSEW0rXBaCQDOpBUHLUeu83X9cTJYE251M6lY3DTS6yYzme4NzYTWO+YvOIV?=
 =?us-ascii?Q?90lOjVSgb6oEr0MwjginB/zkzO7q7ZTgvreuFTqbEYfXdeFuocxKj35b1CHj?=
 =?us-ascii?Q?VV/ilKQ6EZLc0n2BRqTDWzvxiv91+0ruJqMCgyUxu7OWrnxV+91lnrbf97Nt?=
 =?us-ascii?Q?MXKJry9jRmdU1MTMGlAzr9TfcsjV1M+7mlnVvsukoIN96am1SvlwEH57LTjR?=
 =?us-ascii?Q?ebS34/xpxh/y6/X/uM/uTiTie7qgQa3o4R54kYR+3bLRwkMG7SNXnSx75IWb?=
 =?us-ascii?Q?umQMsETh+m8487ANnzBH842V2TEcyTEx+qv/911HPeHOyYMinkrsQKjkpN/Y?=
 =?us-ascii?Q?2OvNkVwtArKDqazmYYkTlhQvMKbmX7btQPHQ+nF3qA7vQCuAGpkX0PDC468b?=
 =?us-ascii?Q?H72Os9I27h3ST0fxBlNADlSSU/lnccc2WpvaCVdJOHLP1+RdYcP09MwV/g1P?=
 =?us-ascii?Q?AQhL0ON2YS4sEu3kBrlZ61zx6aAN4AS7K5+y2w9nJHzpyyPBzeYAGUWjZYrH?=
 =?us-ascii?Q?iYZL5Qd0L3Aj3GyCWmi/Id6qwgFjytVKvhs5FnDyywJJGV7KVzYok1aPh/+Y?=
 =?us-ascii?Q?qb4edSYNjXn7dAdMzzqK1YOBgw3z0AjjT+AjZTAYbwA7M0bBtwYjCcwSerwn?=
 =?us-ascii?Q?UoxJ4ufM3xO9XKwg6Dh9ykB/5J6OoZzyfosKXataoGaR2/I5yXlG+3ya41y9?=
 =?us-ascii?Q?kmtRZ4Juw9qcRgB9JU/N1TeJCqLMaF2Sh+Y8dqI3JDRMuW9VuGK9jxtqiSM3?=
 =?us-ascii?Q?sl2W77GvBG+jaA7usw3KWy2f2HvNeCyurhS8gy/gISFiSXpUJy2h90enj1Bh?=
 =?us-ascii?Q?ZaWiMLts9L7Db2/aks06YFS+pOrrfmqGUocMElZxneBUhc1esi2n9X6+CAIv?=
 =?us-ascii?Q?e4fLP3T8S3G/DwpDKoPQ+1D6Ue7KseE4CgCJylxqMlIVxHJcSVc9vI/Vl0x6?=
 =?us-ascii?Q?QutL4OsxB4TMrk1DmfVg1sbw3j0aFLyh2bTL+w+JT9eKeJtPDuIc1LzohjOJ?=
 =?us-ascii?Q?qsVjumT/ElpRssqdcH0vz204ZT5PzmQlk1AFcYawGTxphBtq0U4lwK0VFt+J?=
 =?us-ascii?Q?J3Q8SmAOYgOAGYBMxzQAGDSG5/z0ZyHkrFhtSSFj9ZdEkh+xXFroIXZsEJjm?=
 =?us-ascii?Q?qTb8of1hAfN3/JYlXiDR7KDYAIEAiN6rxj7rjwzwGaIGwaHI58pSi0iFi/t4?=
 =?us-ascii?Q?+0ggnGqO/JpeYouWmkv7PvWebkrr79STRJYaT+Evm7qF7Lt506hByio0mUzv?=
 =?us-ascii?Q?hVKpeUC5d1F6zNk2MsxmX/k92vHu8riZ4zIseVAzj55oddbdFTydzHKO0Q+K?=
 =?us-ascii?Q?CViLsste4/9O0UH8UJYgjcPQ0mA59f9QhYY8HTbG1/h0oooTcXhgH+0I79a7?=
 =?us-ascii?Q?kd6R6ErzxVvlr4p9y2n0mkwsxZAWObgx7api5Tw6?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4957fb12-58e2-46b0-b69c-08dc44d24f7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2024 09:28:44.7257
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QoD3C4N885/k/yUvjEe0EhhDOFYT6/8bV/PtiuxFcpPrCXAJ+HZpnMWLXcajfHPFByl6oZPRa1Jr6yTSk909uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR04MB8680
Message-ID-Hash: BCKTZIHBADO46S3WLVY6U67F7BDMQBK5
X-Message-ID-Hash: BCKTZIHBADO46S3WLVY6U67F7BDMQBK5
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 "NoneType" error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXZ4NSH3UQC6DSRAIE5FUQZCQ7RDFWEO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0567425054079940257=="

--===============0567425054079940257==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB831177053D2042E58C0AB94EF3282PH0PR04MB8311namp_"

--_000_PH0PR04MB831177053D2042E58C0AB94EF3282PH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

The error message tells surprisingly few details. Looks like there was some=
thing wrong with the RPC connection between the device and the host and it =
seems to fail very early in the communication process. But what I saw again=
 in the log output now was this:
[MPM.PeriphManager] [WARNING] Failed to initialize device on boot: RuntimeE=
rror: ARM Mailbox Busy. Command not executed in MYKONOS_sendArmCommand()
That makes me fear we have some kind of hardware issue here. With this erro=
r we probably skip some portion of the init code in which objects would be =
created that we could access later, but which are now only None. I'd propos=
e these next steps:
Try a different device image (Mender), maybe UHD 4.5, or just reflash 4.6, =
and then test if the issue persists. If you take a different UHD version, j=
ust use UHD on the device directly, that saves you from changing your host =
for the test. If the issue persists, please reach out to the NI support.

/Martin
National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Jo=
hn Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (Regi=
stered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeri=
cht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB831177053D2042E58C0AB94EF3282PH0PR04MB8311namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Hi Brian,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">The error message tells surprisingly few details. Lo=
oks like there was something wrong with the RPC connection between the devi=
ce and the host and it seems to fail very
 early in the communication process. But what I saw again in the log output=
 now was this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[MPM.PeriphManager] [WARNING] F=
ailed to initialize device on boot: RuntimeError: ARM Mailbox Busy. Command=
 not executed in MYKONOS_sendArmCommand()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">That makes me fear we have some kind of hardware iss=
ue here. With this error we probably skip some portion of the init code in =
which objects would be created that we
 could access later, but which are now only None. I&#8217;d propose these n=
ext steps: <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Try a different device image (Mender), maybe UHD 4.5=
, or just reflash 4.6, and then test if the issue persists. If you take a d=
ifferent UHD version, just use UHD on
 the device directly, that saves you from changing your host for the test. =
If the issue persists, please reach out to the NI support.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">/Martin</span><span lang=3D"EN-US"><o:p></o:p></span=
></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB831177053D2042E58C0AB94EF3282PH0PR04MB8311namp_--

--===============0567425054079940257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0567425054079940257==--
