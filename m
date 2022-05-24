Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C568532E69
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 18:03:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 586C03849ED
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 12:03:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653408230; bh=r2SZMLCwIwBaE5ctGjvy7v845eDPjaBXuNEkGkAnR2I=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k3+GHg6K8jT7yZ62y65bq58ifZx9ZRxzRD8k6oPkYdgaN/VMlJCG8l5RRLOjG6qMv
	 yQzrN4RGnBu5NIXVfYj3IlG//XzulW7R6Jhf4ivs7oom53fgL3FU6C9xNsC9mY1uC6
	 /4MxoiQq7b59AdpiUKGhl80VM/ewAubVXW6u8+d4MGdXKPka0SDazXKz5U9lee+umC
	 8c3TklPMoas+/IIyO8V/mNgd/GPFNP39Yx8lssH1TpwFNqCxMttg8yPRarqrbj2hNw
	 rKepbj1cf9YDbxBl7IUTmkcRe0Q++LPTfMkicMhSa9H1EGZV9ycr2uWneHMk8BPA/k
	 sMXGRUFl1l1eg==
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2128.outbound.protection.outlook.com [40.107.95.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 7204C38482C
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 12:02:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="aMv6umD9";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbttQZJlOq5TLRVS/ZJh4Nv/3fH7mM4dnY9gFWNIsrqdY9rbDGapvAWTYk3fUW9jIYHluFTyrpmN7j1zXEwugBftqjy7RPhVJNp08TP37aA6fd63U+GfSrx8mBC0+tHPk3kuoJLPf6axUhk18SsNT8j59SFTY6dh4/01mNCFxhV2pIBW/r5XWpaWFGdffXkoSrFzQ5xrS/pydW5YZiGZoXKmTxnihvt5qx2aanNrSFE7xNFo+9wzoZqa0361paepUGqo1Nn5Gd9JpN1x31zpy6BEqLLR2QPNjm/Ms1Zu0Zm6cx+OftCpeufZ9dA/rOTvM5eMudN0oWq/JIg3Pi59vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ps5b77swgZETB6lckb8g8xtAfJZK2eAD/2QOfn6WiuQ=;
 b=c0DJPIE5Lkf77SmLIbYTnPigm3cnxbnoT5D16ppOPVSRBuwHHwWnOSx9C2G6iYVLD+0m5v0YUvErBz9+taG9udpR0S1/BIZMaDFRDzfZw1QX3F7ZssfU4+5GHd5eDLkaCFq1PV1gI7bMRcdoUytHxrsfII09ohSboRwkQPzVK1SUqc9euI/UNLMaHaMOex8dCVhBKnigbXAvNd0KfDfr1NwPVL0V2r9lZRldQDvtl5rbH0LsOLuhMao2hBkDctzPKzsJ7DnIPuTbZMlWjiRx4K0n0Nn27qG30/GdxgeKdFqhZ1f6LZRhPr9J0grTIqJh+/ehpKuBcvNlYrHf2JLNOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ps5b77swgZETB6lckb8g8xtAfJZK2eAD/2QOfn6WiuQ=;
 b=aMv6umD9RdR2Y2wRPAdkUdgXCYoG/JrhlcaEI5laoSFLOnH0CwADJjh8L511F/S6F/XBRda7T2JSu3UdOwFkAtz3eHjzA5TvslAK7lYM0Yz0cbcfRPX4aYOO1DAiQKhju78O8QHQ2OiG80rdvTWGnuMs5aV593ovcymz6pmzCWc=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by DM6PR14MB3839.namprd14.prod.outlook.com (2603:10b6:5:208::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Tue, 24 May
 2022 16:02:42 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::60b4:6a08:476:236d]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::60b4:6a08:476:236d%4]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 16:02:41 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 firmware load image
Thread-Index: AQHYb4eCmVr0cjh5Y0+lmuz+hurb/g==
Date: Tue, 24 May 2022 16:02:41 +0000
Message-ID: 
 <MN2PR14MB419208B3D6D040C84DD4B229CDD79@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56240b40-6e41-4e1f-5ef5-08da3d9ed54a
x-ms-traffictypediagnostic: DM6PR14MB3839:EE_
x-microsoft-antispam-prvs: 
 <DM6PR14MB383972B072C8B6665EBAB5DACDD79@DM6PR14MB3839.namprd14.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PpJ/KExNmlmM8/nDsm1OtaeUiQZvoX0oXRBV+fkdVIV3hVhgoDd7KVahwiktg/dtsWLC4nuSwlJ1YWd+zyZg47yMu0O1xh02pFigEuo3ON43dMz8MDdrBok2QhfmSuCdW5mIxvTIQNRmIkDpbMer+lITla2nJ8wHTRviqI4PzCp/tKXAVkTk2/mxu1svM794a1561USd4iAAkNPgLPhJkrkzO8EXWtDq6Q4zJJPF0ntVaJhXgCSfF3+viAr3OR1VydRbobZW2URlqK/dwMSLhvTRciFTpQf6HdSTL9Cx1Uwby2Fa9OoDG5Hhj0x+8zNB96lRcMzZ9An0jnTqRxVcOgJzN3++yzGOZdlnCRgV1ZuSylgYsgx4jamGtlRuKWI35gP7KiDaM7g1P6ORT/+SKLk+StPK5TOdnmtcRqToGSi9R1yie1jyReqHIgcKi17yBMlxCfayUnio+eKExlPkVJvnx1kP7D611gvdFwdAV8pX63f1t1VhfKYdzEklxqLscjp5ZSenzpuNuFUl3roxoDLJvV0aevO+tYC0TTLFJQJTwtsli6ueUeBpE4diuHTlMLkNoOkbzUou3EKQr9wbUBpuYnI0u1noBl258E0D/d4+pW1t87/6Vgw4+3QYHktbYmmoiNMiNBqME75pUzRFCxfYuKVSXP24whk885q5j7PXG6NByJ40lStCAeKyVBRwkhdlVkui3WY9hCgit/fWtw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38100700002)(6916009)(122000001)(8676002)(558084003)(316002)(786003)(83380400001)(38070700005)(71200400001)(64756008)(5660300002)(66446008)(66946007)(186003)(66556008)(76116006)(66476007)(86362001)(508600001)(26005)(55016003)(9686003)(75432002)(33656002)(7696005)(8936002)(6506007)(19627405001)(52536014)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?3DfDTtkfAFW1zNa1t6d5jBFZ/mWl9Zec7PdGh2ObsvTW5eRcuEqVOFZrSQ?=
 =?iso-8859-1?Q?GYPfZz96DeY6zNmF1FlgkunmgJjclWq18vdUJDDdrggPkNXsPEV6c99A6a?=
 =?iso-8859-1?Q?IKinT41Md8FAPDpEQXuSrc7rsOwxFHqwZp6SLdDO40vhlfHR4KNrYNaVLg?=
 =?iso-8859-1?Q?CpkXwxraUlFWuh6c2eZi6luMQJYnO5or0+R1C2ZiltmM+EJQYO01jXhO5i?=
 =?iso-8859-1?Q?nVISTyUKMoArpfaHl1QQLnf4CipMxuytefbffAL2+Kbfi150OrNgDJ2FyD?=
 =?iso-8859-1?Q?bfMIWop4pyxm5Is6PLoJPkoXJok6MrdomECpf/hFYKuZrET3dgoYWzQBdo?=
 =?iso-8859-1?Q?o3Kvxb7z+crKJQ1i3m+NGS34roaorcFiOnE56Z6Yhk4FVsThk1/SFgM/R8?=
 =?iso-8859-1?Q?HWJv+a3sI0peCCDOA0b4Ui5nsB2herMvK2QuPicH7X1Fouk/yekE3xyAfe?=
 =?iso-8859-1?Q?+jbq66DDQZamxGLeo7P5EW9Zv+v3C961Myq/Plw9Ns8+BuIIKXhIkRn1vj?=
 =?iso-8859-1?Q?Qq2r3fVXbBDaihNK8wYBvFSclF6xxgEDN5KqbpE/Is8eeOw/C1y0dAniL2?=
 =?iso-8859-1?Q?+DcM+ojMumDR6ozEo8FVYNL/0T2r2xU8p9LIqz/9ToNkBG+G8+tiNDjrU5?=
 =?iso-8859-1?Q?ZVyxUDeA+r5T9pcC0Kkb/WhT7rGxrepFA3EnjNewx8BLcjec0IgYtElBos?=
 =?iso-8859-1?Q?f2CUTPECRM8sWepe/ZKjKpbO9xG7hD0T8d76mjpOVcko43Hb+TSc29YDSG?=
 =?iso-8859-1?Q?MbbZqZ05Ztotrlt+As3xdpx5T2coG1imbK12/ATQX+kY361E2/vt+Dg+YI?=
 =?iso-8859-1?Q?JvMx67txL4x0UscuvkSlNvmX30OGm92ARt/zkTi3/xKxzNkcqEU+9Deegp?=
 =?iso-8859-1?Q?31a2uqSozv73c2bxydw5PMNDxs+N7+hb5V0DgtfARbgwIjWAayBB0bB7a4?=
 =?iso-8859-1?Q?V0u2j/PaOqIImtEcUo5zT6P6oiQoY8A7/rzD2r32gL5qIUlgH6kh7rZc1w?=
 =?iso-8859-1?Q?T9N6vPNXIXGb8g2YxL5ChiMwHabJmRM/iEGmypoObzc1XdhMJTXAoIfJh0?=
 =?iso-8859-1?Q?NRoOWyjKp6tI2mMe9Bmx3KPsZGLyoeh7ZXRiH/iGEUgj0OO7ky5YMs+9DN?=
 =?iso-8859-1?Q?5kBBJuUcJ38wBZjoqazwpSGE3d47sYBgRZYfjEwPHIfcdb/tiGPe6t7eSV?=
 =?iso-8859-1?Q?w2d4Bnr88CBHmtUwdVcrIx1bznb4xxFXB0APJrP1lQ7kE3LJeW51u1CSlO?=
 =?iso-8859-1?Q?8lPn++yqpHZFPkV9e78No4x3E4e3/VmTou0I3fH4V8UpcnB5sNV3WXET/p?=
 =?iso-8859-1?Q?4zDSsaS8FvdLM0sJuUxpF0rHeqBWnGvkHjS/LQTuqZ9Ep05Mth1NFKVc22?=
 =?iso-8859-1?Q?F3Miqiwrzy+7Q1Hb2yi2UEZldTK0JFZRGI5OxMeDclh6NPJcYqNY00WeGg?=
 =?iso-8859-1?Q?SIe+NwE6AUvaCqJ1goSgfL21aC5mrygE1gMJJbS5um8foaH1YVmlejb+F0?=
 =?iso-8859-1?Q?z0AnijAYEXP/eqKTbutdhCiqdyw9G11BQH8lStqak+ZLaavYapMQvqFQRS?=
 =?iso-8859-1?Q?kls0JDdfhkCGON1abeA3cf56pLs2znCawIUZ/TekFSsh80OKeJ0fBSmF/1?=
 =?iso-8859-1?Q?VJD/f/zjMrNtOcVu2nLj7BZHUq9DT1DdL/QTSooJPhtcNegjgwWreArdZT?=
 =?iso-8859-1?Q?Q8HRtgnBRFBue39Yj+ba1lkieNG6ijDvFWum1kusxgNB1/IP72PuA8aimo?=
 =?iso-8859-1?Q?QbY4/37btxylxtkTObBEpj5kcvxA0+S9/7Ypj2eFjagmNd?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56240b40-6e41-4e1f-5ef5-08da3d9ed54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 16:02:41.8425
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TJQ/MFKYYTZ9VBXy8G8EoE+bZMv07lEtIr952rashKrPm+tdkr/HXUwbDemgfVLhf5OqHm8tfO6JaVFo3ssaKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR14MB3839
Message-ID-Hash: RDCPQFS7HTP7KPMWWVEUH7YBLPLNEANC
X-Message-ID-Hash: RDCPQFS7HTP7KPMWWVEUH7YBLPLNEANC
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 firmware load image
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDELIL7ZDJLFYTVINLWGIECJK2QTTH44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5107189445530150797=="

--===============5107189445530150797==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB419208B3D6D040C84DD4B229CDD79MN2PR14MB4192namp_"

--_000_MN2PR14MB419208B3D6D040C84DD4B229CDD79MN2PR14MB4192namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there any way to update the firmware image for E312?

--_000_MN2PR14MB419208B3D6D040C84DD4B229CDD79MN2PR14MB4192namp_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Is there any way to update the firmware image for E312?</div>
</body>
</html>

--_000_MN2PR14MB419208B3D6D040C84DD4B229CDD79MN2PR14MB4192namp_--

--===============5107189445530150797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5107189445530150797==--
