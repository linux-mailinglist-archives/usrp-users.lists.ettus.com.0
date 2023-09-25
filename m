Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 049E37ADDBF
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 19:19:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11F1E384DB9
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 13:19:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695662395; bh=gZY+Q1crC1a88MoUMcc8pBUVNBF859jdA191q0Dn1fE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RNqDGAMQAsbjkzqsWn1/vpKz/tJO0wGTfaV8MEfRJ65dHvHi8GU34jGjjaW4YUScr
	 U756s1t9TsBh7tWWSFXvcjWKl5LW43YFzPGaYLK6uJL+PwWmDQESuzNfyFp8JB7thi
	 kOkAmrXW3i+wb4ryVvWJ6UZqEq15gepu2QLDZX2kY0zcED8wb8Q6/BEtt29KAHVoqM
	 gmS6MPPhU06VD7DRUnYRD5uNmoeHKyV9EUkUzt2xwlmXJMTtezjHoTrM0IIeEE5Raf
	 HC5smt/S/oiB5vRCoRFXc6rcT78ssYfetX/dUT20YIlEUU6pCUOvm29Qph0QuGPiUo
	 4EU0/21f86PFw==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2127.outbound.protection.outlook.com [40.107.100.127])
	by mm2.emwd.com (Postfix) with ESMTPS id 8290438492C
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 13:19:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="bkidQAuN";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKRFk8TyLgfE5cSZKLKOlcgn1CyucHIMeT03e8s+zx+H68tEE/BAdA/gTWTHehmZRtd2edMdNqL4MSCNDWD6G9y+y78Cd4UqDuSLlRQMYFJ2oeP539jV40dqwOjxzInI3LYM6G5b2uN13MCQ4po7CwRxPmUlPg7gBcEtUiypbPSxFlijmsTzYbDZC2fQL3PKOlEQNBnY5EpaQxf1fPMB8+JICYYX8dJ72mbHagEHd+iCfqvOU27yCU3mMKOADHNSGvhXzJn1UHszECzOMf7qa2L6/VH+6tIs3B2VmwQTM60HbnqvtQYfo5iBK5PXLInJxHQkq6zqN1AJgGAPg91Lpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M14+unq6ke53AHpiy2nRGrj+MDyL/o6+77skGG89nTc=;
 b=gQaK9r0Jeqo+lkVEnQwV8r7yH6Y+Tcd/mHwtnDOmKNNZuX9ysT3CZoZOWPBrTKJH4cT2kAKSMjxCoqWLWTh/o3EnyNOl0PhPGtvJtHoRzV5xCqFGqgzL3A3c9+QdgS0C/trdph6Ed4fYILFg+jw5OgU9ln4OuwIv8ozm2QUdhmTEgsiG7mIso6K6zjCmVziq2DPFzPNcNoPGOA7p/aJqhlJg/1kLIwAfadP8jCDXp614yQgJ/pUJVSsmT3kosb/3FRCVsTMbC3KJmxgOYu6pDEoNUJnMUXBTk9HMYCZmSxkEV7GZHt3KuduN5ckNgNGnbpJIO9dy1WgK+1j4HX33Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M14+unq6ke53AHpiy2nRGrj+MDyL/o6+77skGG89nTc=;
 b=bkidQAuNqsg7OyvajYyXRhcPiN9r5jH5j+lAUpJ4VzGkCnPFwaKunsuwczU4MLDrAOaVn9xt1/nJuycWrAn9RnWMasPCjGWU++YuiaATJZ9V63qFSZTrLb3ZTmq4EWZDVA2nPbfNOOMkR1gIlVDmtGi9/NBgDCrfxZTvGkyrokU=
Received: from SN6PR04MB5053.namprd04.prod.outlook.com (2603:10b6:805:95::12)
 by MN2PR04MB6430.namprd04.prod.outlook.com (2603:10b6:208:1ab::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.16; Mon, 25 Sep
 2023 17:19:05 +0000
Received: from SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::7388:adaf:e2c3:6603]) by SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::7388:adaf:e2c3:6603%5]) with mapi id 15.20.6838.016; Mon, 25 Sep 2023
 17:19:05 +0000
From: Haydn Nelson <haydn.nelson@ni.com>
To: "jmaloyan@umass.edu" <jmaloyan@umass.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Ettus X410 Power Error State
Thread-Index: AQHZ78/zrhRwBmsIm0C7oQ0VgnrDXrAryO3g
Date: Mon, 25 Sep 2023 17:19:05 +0000
Message-ID: 
 <SN6PR04MB5053B81EBD0ED74E45744D14F3FCA@SN6PR04MB5053.namprd04.prod.outlook.com>
References: 6d68e868-46da-cd94-1d81-a1bb1a9f5b2e@gmail.com
 <vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM@lists.ettus.com>
In-Reply-To: <vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=bd5cf8ad-4e26-47f6-aceb-eeddd9c0981f;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-09-25T17:18:18Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR04MB5053:EE_|MN2PR04MB6430:EE_
x-ms-office365-filtering-correlation-id: 8701a520-4803-435f-542b-08dbbdeb8549
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rEzQTi4ouPSFFWX9hu2OjBHdEKK0HMNHYWzf6llAs6o3TMrVYZZ/kgZey2UkbPXtZD6Yk8gbM4yr1WJVZ0X1IkVQ2MDyopj1YA1U8qbs2zd6LefxJha6qXIZtOjk0ebyoZDk7YDtnYn/DqfjXOjPD32kvUa7/+mvKF/3q/nhqOcoB/wws1JAN8K3gXZcaoYsZ+Laa/Bz5r92rrak5bFpdxIM38yHqUMJJ/sGytX1lx93QtCr4BMTaA8xi7t8m6GmM+HxLF6xxMxGYXFGB3OA3Nk5kNrfjD0du/YtmGIgaeGbCwPZPkx0InxPfrg0LW3zrJwssZfmzcg0DNRMGZbhxAJfob5lGQ7zOtGLw9bKYemo0zy8SNKdXPhrfPvN5tzzkiSe7IiMos5aMPqkslgRwkDC+dJWzErwwA9kpXA/KOa/ycjUTp6oEE+MP6XGJZx+prigAy8AsuRtAFJpoTy3hfJZ1ygI4m2lT29h8OJk7xipb931xf1sj1Sg1mmHHpZT4yeJ4NOiJHnqhv5AnxJl3E0DQBVpCw853rW+/qAWD56W3cf4el6AXIyrZrzwlsYjrNfOwMawf4j/QtQ3NUZ95CxFW7qsaguKSiU3LmVn1eGL2qV81BMQCcdYl27dhIeU+G26SCNK47JLxCJ3TcHyEA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5053.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(346002)(136003)(396003)(376002)(230922051799003)(1800799009)(186009)(1690799017)(451199024)(66946007)(86362001)(41300700001)(122000001)(316002)(166002)(38100700002)(38070700005)(66556008)(66476007)(110136005)(6506007)(40140700001)(53546011)(7696005)(83380400001)(55016003)(71200400001)(478600001)(26005)(76116006)(33656002)(9686003)(66446008)(64756008)(4744005)(2906002)(5660300002)(44832011)(8676002)(52536014)(8936002)(130860200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?eLfRUqu8NaEd6IvyBYREwMpHXEiFn5AmuKV19a9T9Eorr4BjnBwyPk7YvPLn?=
 =?us-ascii?Q?2NnvmZ/klR0Z1hlAqVPwHEr+I3TTeKwWjypPwKG0ZWHvK7qNIUG9KbE4P72P?=
 =?us-ascii?Q?Ju4Vice9DwdOH2vNpXP7gEy0LAhlCDb3crIeHcFb1i7KUIcXtx4ElXaumyQb?=
 =?us-ascii?Q?E1bZuuUi8b7nP6YkPDxXMT1Ef0XadV/pCV90MerjGF1eQbRZSF0DoFti1tNn?=
 =?us-ascii?Q?w3wUhsPuhsAMEHXt9+yFOCeGmVHqeGCXt827lRzg9CuutIKeY/95TZGz8p9B?=
 =?us-ascii?Q?s+BErrmecYeoQ6UMA+KcI5xiUNXca90isO+oTCwon1paw1yEtQQsWcGT9g2o?=
 =?us-ascii?Q?GonIe67CyV62YaSGOzsx9EBkbl1xPpiEMJY1HUTpdbmHTeajMl34VkxRu5Fc?=
 =?us-ascii?Q?N1166y7iWCIb+xOdJuphW9wmmDAf0Bx9t8Ghx+PHAs/+WbYMIdbgyuMDYCE4?=
 =?us-ascii?Q?+HsA9y3gCWyrkit5wlMoK1b7L3TI814bnE11BjTR6ogcHQjo9KWumW26yJX3?=
 =?us-ascii?Q?91i/+v1WpcV/XHXz0H1FmK22k8Khov9n3WkPk5TFFCe0t1p9mvD28jAYJszD?=
 =?us-ascii?Q?I5A+H7IXVnf0QpBMWPj8AzL3lbW5lB4Wo6Dx7rwZ5QfqWoBBGG00cadERbsw?=
 =?us-ascii?Q?9lvu6mcdJNDXiQWkpTT6phG57+6RBHba0Jf8Y+3taBWA7x8hFtE/5zIdHGvd?=
 =?us-ascii?Q?NSg2WskKKamJ6mkdCL54PRu8jAd1JTv3LelrBJjCBaI6JQB+7GZpaZeU+S45?=
 =?us-ascii?Q?PYUiRuZxf3Jygl5et5inPdb3TaMKilDodlTjWcuZREcW2qFYbM2trz58UasL?=
 =?us-ascii?Q?odDcgVb+3rgY0pweuotb3HsIR7FPUHPtAHgvINaSlbX6FqjRd6pFoSlloRZ4?=
 =?us-ascii?Q?BBbcS2dDzk0cG+vb7rKp++O8A+hoPtPMpm62PeNAlxle0lqb0El/GU9C0XQG?=
 =?us-ascii?Q?lg6NB0XNFYyDQ8qkca0nNl9CLbJcfuFhLt2TOxKqvdTXL+yJZ2qC4Nl0fWb9?=
 =?us-ascii?Q?x+rBGej0tC/J+51YmLbiVBKEdUX+OjicVzBmOyYeB1XuOaz5N41Jt2n7v6eL?=
 =?us-ascii?Q?7INsldWsYzfKZ1JGz0O2+b6CWiBNybuy5OAeqWKAxFm4fkEHXel05c8ivz5D?=
 =?us-ascii?Q?ISbFhtfmOzVV7sf/42NxGnncTMmL4bAEmyIzY47v0g3WcXOGsC3H//iv4ypK?=
 =?us-ascii?Q?YD+ZcwXd0MeR8Ru0dmCMbgg/K+hyUnAAJtg6/OEtAO5bBS466p4/1sUqKYxL?=
 =?us-ascii?Q?5GcpdHJ5hv+og7YM9kssvD+1J4K/fTCLb2qnyl6J6Z3tgFHjBVpgK4WaiBMG?=
 =?us-ascii?Q?0UV33BB4tlt+xxnL/Z33TQJIXRl5kzoXwdZeg7OMeJ15JVuJ31W7yzAeuwS3?=
 =?us-ascii?Q?eEWlZJRgoW2RGQ5PhXcL3YoM4sbiChdoRc6oXNmo6+LpjwBQ3Gmh7X1UlXXa?=
 =?us-ascii?Q?Rf20iidMHWBiZE9bhYZJrqTz2xeNtP/o/r97Y/1CS6Tp7a304cGOXrUnJxOb?=
 =?us-ascii?Q?Wn5OG6u7HSM7Abt84FaAp6SG1HZOl5QMDEub5tQEwvSRiXLXBdlPBMcrjKus?=
 =?us-ascii?Q?3ax33OMsCFXRAyZfDL549EapmmgrqrOxKU0/6Owm?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5053.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8701a520-4803-435f-542b-08dbbdeb8549
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 17:19:05.3668
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pt6zfDlHRvKPgZRFEBPdJCTcT72wokuQMQ473mvxM5lI7yqiWvZinyTIvRMp2NISeHNXNAyC3gJWL6pyYcGeWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6430
Message-ID-Hash: VM3SQDB3FLRO4YR5CLMDY3YLHCOGAA53
X-Message-ID-Hash: VM3SQDB3FLRO4YR5CLMDY3YLHCOGAA53
X-MailFrom: haydn.nelson@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNUBQPW6SMQEDJ6WFWJ6RCZMDRS2UP3K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1307136076455490569=="

--===============1307136076455490569==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB5053B81EBD0ED74E45744D14F3FCASN6PR04MB5053namp_"

--_000_SN6PR04MB5053B81EBD0ED74E45744D14F3FCASN6PR04MB5053namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We recently had some issues with the external power bricks on the USRP X410=
 on some units... we are shipping with a new external power brick...

I'll ask internally at NI / Ettus to see if that could be the cause of the =
issue you are seeing.

[NI]
Haydn Nelson
Business Development Manager
Radar, EW, EOIR, & SDR Solutions
Aerospace and Defense
+1-512-731-7251 |  ni.com<https://www.ni.com/>




INTERNAL - NI CONFIDENTIAL
From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Monday, September 25, 2023 11:47 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Ettus X410 Power Error State


We have contacted them now. Then are much less than 3 years old.

--_000_SN6PR04MB5053B81EBD0ED74E45744D14F3FCASN6PR04MB5053namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We recently had some issues with the external power =
bricks on the USRP X410 on some units&#8230; we are shipping with a new ext=
ernal power brick&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ll ask internally at NI / Ettus to see if th=
at could be the cause of the issue you are seeing.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:75.0pt">
<td width=3D"100" valign=3D"top" style=3D"width:75.0pt;padding:0in 0in 0in =
0in;height:75.0pt">
<p class=3D"MsoNormal" style=3D"margin-top:2.25pt;vertical-align:top"><span=
 style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lack"><img width=3D"80" height=3D"80" style=3D"width:.8333in;height:.8333in=
" id=3D"_x0000_i1025" src=3D"https://www.ni.com/content/dam/web/scene7/emai=
l/signature/email-sig-logo.png" alt=3D"NI"></span><span style=3D"font-size:=
11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"350" valign=3D"top" style=3D"width:262.5pt;padding:0in 0in 0in=
 0in;height:75.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><b>=
<span style=3D"font-size:13.0pt;font-family:&quot;Arial&quot;,sans-serif;co=
lor:black">Haydn Nelson<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><sp=
an style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color=
:black">Business Development Manager<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><sp=
an style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color=
:black">Radar, EW, EOIR, &amp; SDR Solutions<br>
Aerospace and Defense<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><sp=
an style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color=
:black">+1-512-731-7251&nbsp;|&nbsp;
<a href=3D"https://www.ni.com/" target=3D"_blank" title=3D"https://www.ni.c=
om"><span style=3D"color:black">ni.com</span></a><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> jmaloyan@umass.edu &lt;jmaloyan@umass.e=
du&gt; <br>
<b>Sent:</b> Monday, September 25, 2023 11:47 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: Ettus X410 Power Error State<o:p></o:p></p=
>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>We have contacted them now. Then are much less than 3 years old.<o:p></o=
:p></p>
</div>
</body>
</html>

--_000_SN6PR04MB5053B81EBD0ED74E45744D14F3FCASN6PR04MB5053namp_--

--===============1307136076455490569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1307136076455490569==--
