Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FA05AC219
	for <lists+usrp-users@lfdr.de>; Sun,  4 Sep 2022 04:21:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68539386134
	for <lists+usrp-users@lfdr.de>; Sat,  3 Sep 2022 22:21:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662258093; bh=FuTlS9Wl+WptgGrWaMcKkn5YxpWQhiZCuI6drPUMuhU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=X9xHCCh7rq+HAdqES8GP0dw/6eiIWDlGYRFKPvdYQkRHHxHCdCPH2iuxhnsNFLRG+
	 QOC6rMQl5N3UG8uQ9OGl19mCjTduFOVqlMq1VefiZ+5YcyKqZ5d/kfOxEJlC29nHLb
	 Qm+/F7oVLld+BXZDjpBD68U9aWz2x8drqYS9OhoC2VthNNPHcdL47v0ZkKGSzbo8YE
	 tEDwvilv73ebN2T/2JMYSB0o5eEXKyzzmbAjQI1ls+K813WzHBY7pXXobI42CwuRq+
	 qb+lLeyA1YUy01VINDPbfPxJJ+5hIM7wEqw5CLDnJhQAnbgi4BZhY/NPynPAJVLu4r
	 RJ8Bm/afJw0bQ==
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2137.outbound.protection.outlook.com [40.107.93.137])
	by mm2.emwd.com (Postfix) with ESMTPS id 30F87384C35
	for <usrp-users@lists.ettus.com>; Sat,  3 Sep 2022 22:19:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="gUF5vIlC";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQXFWEspDGVA06ZG1tR38LJ17WzaJnyoHiHirrp7pPqpbcWhfLJrSOi9iK5Y65d2VUhLG/DRbz3NLvVqMxLxN7YdC79y/rCJjeeDGjUuLZi4KCB2UHr50+xrSLojDj3Go5O43mhdrzeMyhQNLOKoZgx2172+A8NoVWuFTnLuSdT6tUmObAsmjsCD5tSAqj/QcEIX7X/eIG+z/8oSF304RHeJ+pbtlZnOx9R/MXx7D5XL0txVtjO/gYj54H/3psjsf0/H6IimE98TTB3D+gGzYqVSqU2TTIIaMjVUE+Qy1Igb3UQAB440lXHc13NpZMkg9f7v65A/uCRCLhCK5rEbKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AuP18G23VIy9oAqwsZeuf0wwSXPfd2qyiJPb9dL6DLU=;
 b=iOY34eKDOp89WC5ojAy32A8xHjpjv/DBP6SzZF/J9069cduYOOF8C1C5VTjVAu0RsFD0oJvS0if8XRfkDML9GoqRXfdtYga/roHonKA+ImtDqr4MIuRQAECLzfXx+0YUL+AKIc2LU7xfPA1fp2TsjmzyjngCLi9rtkloX+FZk4dYgNLcfUMyNkS4ynTFIFnKzn7/P3BPte7/S0U/9uPUB6vfebcb0FNMDCLLZ6qtAOOWX/tD6oO+pLYOFyfqqB3YFF6pVgmqVzO1kof5FwU/k2mBkp7rz57RFIfUfRbWVftD2IbQTfNT4RgF8+83a6HediogYJR5uBuORgwHrKyZBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AuP18G23VIy9oAqwsZeuf0wwSXPfd2qyiJPb9dL6DLU=;
 b=gUF5vIlCj+T5xrQH66B4UK21z4ofeUYgB+ujrq49F/zz2rSsrnjdLN8+Ho5I/JTvES5oHuM464STqfMM/rppVVvGVB/RBMdK8n0pRGeJNlykfomn9BhDv7a8xIksmyUZ11L5HFjo+MsgxXL52w3e1N6A6wyzMlpmj3o3+5BV104=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by PH8PR14MB5850.namprd14.prod.outlook.com (2603:10b6:510:1cd::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Sun, 4 Sep
 2022 02:19:29 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::f99b:51a5:716a:4461]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::f99b:51a5:716a:4461%8]) with mapi id 15.20.5588.018; Sun, 4 Sep 2022
 02:19:29 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 operation temperature
Thread-Index: AQHYwARho+E/bLhyWEOdNK6PabVC7Q==
Date: Sun, 4 Sep 2022 02:19:29 +0000
Message-ID: 
 <MN2PR14MB41922A7E923337CFAF62D8DCCD7C9@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78ea8b89-ed00-4283-c908-08da8e1be572
x-ms-traffictypediagnostic: PH8PR14MB5850:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 z7nqsykmLvLx/08tdG3DpS5eXIdHZ1J++c6MM1H55ypPNlbBbvLH+UxEQrOfZUnpWquBmJRoIODZzvETHNtRxy65UWnzp2X8LYkrcsJJ+mN0kqqY3U4X3S5JY7J5oeQ6Sq+QUv5N7mStYtj971+wIx6QolVdy1rkomX7DDny7TbGbRfGJRszvNGWT/nphVC5tyPa8f5Yfultq1ACx6MJGrO5ooeri6b1XeVPx3+IrY9BDnR1ifB6A/FSBakluOaT6VLXgyhytFKGGKO591Ll86ORRAAFjvxy/PI9h2/JkEyfxLbFWx8mmYCmZFsdSd6/zx8Te9tARouv8UxQz0Ro5hBaPpYPQED5OpcM1Dnb9wnedB6O2ITxnwWuZnC2cW0GsbgOUX+jMT1fERHSuNn/TazaUjMfximFKmww83gEtIfvqWCkbL+XA3s1yUCJDRSN2ucRAOZyShPNepjV+xsvZ2eTlIueG07Mjg6NgSqAFZYQjTcQoBkFeSZAG1+eUfgZ5wf+w7J146ETUwDqbLitbZ6p5cxx0VHzW5HVCYExTAU/MGo3x8K/sTJ8QNtAv4tnt+fDoCvnCCze6Ev+V/GOIjH4bPsAEP3x3dRu6GdMJO1lI3AMd1G1cerDSAaZ/Xa/axzVNIdidGIZ+z1kfKEasBT9cTKLRCzbh2V7ipkwe+C3JawlMCaS/oYEMdHh2yqJWShaNfhk+ho8lca/hIKqXD394Tumf5tMhjjhpdYcJFPlpeLNnm1S1lKJ89vwU2ogORBoT3s1hGmudFMwNWUOaA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(346002)(136003)(39850400004)(396003)(366004)(8676002)(52536014)(478600001)(75432002)(316002)(64756008)(786003)(76116006)(7116003)(66556008)(66476007)(55016003)(8936002)(66446008)(2906002)(5660300002)(66946007)(38100700002)(6916009)(19627405001)(38070700005)(33656002)(186003)(71200400001)(122000001)(558084003)(9686003)(26005)(86362001)(41300700001)(7696005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dHhoqKj47qbUhsn76PbGnY1cNFssqL0HZ3g7kEm1mOEsfZixIPl0uRVTnw?=
 =?iso-8859-1?Q?TaXByCuoMSiXHac29d9LZ9LIlV49OlW8F6hE9QYJoPDAFx3oz/DZiqvB5c?=
 =?iso-8859-1?Q?lO6fPiTVxwYVfLDIri2PhiBCT1QQqS3e23UCVT/dhqNwMnTL/PWjEGwWt7?=
 =?iso-8859-1?Q?dcscqavVbOrXGDHaHsMIgNkq8tF9mCzd4PSZhyCww2CLHwkhJBpGVV3HC1?=
 =?iso-8859-1?Q?aDrbG0rKi1dLcQEuiTOy/FpSuHve1SKsDHsl0NRs/ppbUuGKf8tpjCwvn+?=
 =?iso-8859-1?Q?y5GUXdI0werXI2o5wClOQ/TPJeiShmQlzkwV9CKWPQnzT5vXPh9RuusNIs?=
 =?iso-8859-1?Q?F+25ffesh0SdNqHnDWWga1h1WahREYq8HAa3f0MYA+6Q2626t0Qfs+U+IL?=
 =?iso-8859-1?Q?ymaKqzRcY8Z49nrslXpC92eVY69RQHTPKGYScIeR6T42x6SxN3Xu0UtmtW?=
 =?iso-8859-1?Q?1Q6yOABIf3G0ctBp/oN+cyUhFeOqqV86nLTlsgn6R1dSDq9JNlmcfk75yN?=
 =?iso-8859-1?Q?1azxBhJe3cbNNsgiaeoCERmHXJBA9KFXkNpllbtebEMJYmXS5gFHvQUU2R?=
 =?iso-8859-1?Q?wAO4vX/CwK4JShd27VwmjCDgG5+RMf1jEdmgpNguHvgVDN2dJ0e3dDT9T6?=
 =?iso-8859-1?Q?LUJ71J8ji4trj7BELcbq3E86UjmnhOhp2xG49kRnFLxEH5GdsSKhoIJ30w?=
 =?iso-8859-1?Q?xG76pveCJTEl2iCIavc944E/nYDvTb8wjHSZR+7HC1e0DEwEpKCGlcTIKT?=
 =?iso-8859-1?Q?F++fm9JksyYqTXEjglweO7iiC2Hv9JrB6CqfzSmT5lXaoNydhaRF2Qj+mf?=
 =?iso-8859-1?Q?l8p23sjr40pfOhNm74LxGxBcoessrtAMaXx1N7uvV/rIDnZwlci4oVIo9r?=
 =?iso-8859-1?Q?OkFCduhaREbg+qHEEXuPa9mAtpodt+ILUXlFaX9/J1Z+N62EyDEdkaLxgE?=
 =?iso-8859-1?Q?yHEVGskT2BdZAfY67TuM7dOtUcuovlhLij3S8fLfJw19QEBDSZvFl+I8Z3?=
 =?iso-8859-1?Q?3xHgTBTZrCL9rY30YKE5gYWZrUzKBs/dla+2ZciOaGUG0i04AiX0kY0A/d?=
 =?iso-8859-1?Q?FPFebkgHjjNWPbXmEOTNKH5ExD5vYq7Vab/ZzNf9ZGjFSSLr3duQttYojh?=
 =?iso-8859-1?Q?s3kcP60e3mBW9QrUdezF8EDzO6WaxQct2Ekdmm202tLTY73plCjk2qxJaN?=
 =?iso-8859-1?Q?Kth4XpIsuD2tDX9p2jGykxw8Vrb5X/AyRPRAprwKd9wLyfEnmC1y34T1WB?=
 =?iso-8859-1?Q?Ux4/0RuksKFzLM0luM+vaaVxUn/y3azfytSIB1+8CDqc2yydLJrsb0u4f5?=
 =?iso-8859-1?Q?4sjlPkfolOBZMUW0exGWuAVLPjusPe7GT24xJw4LLxn8JCi4JLa0xa+UHs?=
 =?iso-8859-1?Q?Ql4yXwZIn9Lc05Ey3RN9S3ZwQJ0z9uBePwKRTL1i4bqZJ4IdDPrJhUCaBS?=
 =?iso-8859-1?Q?ebyph2LTxoXRuIN/i/OTBo3uTrXDVtKIwzq6k9hGDBRGe2TSAyy4H8SSaC?=
 =?iso-8859-1?Q?XAW9yDRcynay2Jq2GkB6HNG2HfGaYGvABNmxLrKLu1kksBHRnoVU6AMZtD?=
 =?iso-8859-1?Q?9C0vG02MxsENw5EflAe6sPdR63QNHcQnUiKbNgvmybPA9lkyiFPjpSL/qh?=
 =?iso-8859-1?Q?Vc8XiUtDu/Lek=3D?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ea8b89-ed00-4283-c908-08da8e1be572
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2022 02:19:29.0643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rmUVRu/GjUKHw1yYFo8jhWtxfQXQKO3irLONzADDozoocDxedf6+nysiQI2+pbuQFZfLThoPeBeAKFoZhOGI8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR14MB5850
Message-ID-Hash: VUM4RNPC2NHXCEPBHW4BJW4MDXJRBTXA
X-Message-ID-Hash: VUM4RNPC2NHXCEPBHW4BJW4MDXJRBTXA
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 operation temperature
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HBYN6UGO5OXVW2SML7EH4SG23TF7WI5I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5093057833559017661=="

--===============5093057833559017661==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB41922A7E923337CFAF62D8DCCD7C9MN2PR14MB4192namp_"

--_000_MN2PR14MB41922A7E923337CFAF62D8DCCD7C9MN2PR14MB4192namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,
Has anyone operated X310 at about 45 to 50 degrees for long-term usage?  Th=
e X310 manual website states that the operating temperature is 25 degrees C=
. Is there any safe range for X310 tested by test engineers or experiments?=
 Thank you.

--_000_MN2PR14MB41922A7E923337CFAF62D8DCCD7C9MN2PR14MB4192namp_
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
Hi there,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Has anyone operated X310 at about 45 to 50 degrees for long-term usage?&nbs=
p; The X310 manual website states that the operating temperature is 25 degr=
ees C. Is there any safe range for X310 tested by test engineers or experim=
ents? Thank you.</div>
</body>
</html>

--_000_MN2PR14MB41922A7E923337CFAF62D8DCCD7C9MN2PR14MB4192namp_--

--===============5093057833559017661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5093057833559017661==--
