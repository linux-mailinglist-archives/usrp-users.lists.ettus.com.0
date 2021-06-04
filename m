Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F6139BF92
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 20:26:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2857384560
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 14:26:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="mnluD/OO";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 341E83844FF
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 14:25:49 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.134])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3094640069
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 18:25:47 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id F38A768007B
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 18:25:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N8dCnx2EQ4jsKczHy2EL4rrHnsOXH6AVSYjfcdX+rbYG8OUEETiYAJIJ3mtgxvFiUoAwuOELOntAYXFo3kJIU+NP+r1E0ehGt1JHM+ZjRkhSc/RqX2/9NV8pDydHclFzVbBwIunTEdUwgp3ZO8S8PzuQCaSqv5XvBKePipXnFa/siu4L6/wB1EpHgbFcSKqcFhW67vGNuFiVIZ8xgMaAwwhc/DZQi2HYLe6XONDPIBdBd1k4iTqkGCpm74rSJV56wUH2BDDYwSvRbEKMgQnIOyOE5zYxbmiHqdL+QdnuG/MXtUsiQ3knVsVWSPQHwjjQbqMSx/tykldcgusXtaw9zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9Bd1aMPoVtBlKT4/l/PyF7MB9zqy1JP84wga6NUe9w=;
 b=VU0iz+YuYw8wq3/2WD8OZvttBiZInwCGIP9wlFo/AU1l1FA5NFmcWqzRH7FnY1BtFovXvIRulSbaJ9kiKDskws0+uMqRpF8EWi4K4XxXDWt9TI7Dj3rIzi/jRMNRcsf9X/xXajk07uhvTkJikJSBGQrLBLWPebO98+gzQDFU9RpJK3WkqVqGC9hE3JxQ3qcwLHKbhGclhevTuta0c+S6IrJE8bqNgy/tmdsuf53UQqjYO4P4q+RMqs8MuzdWjSfHC2j5mVbh5sd7azhiwnEc4yMWswZ4TP0LUdpcpLrzAoyjPA9MgVHgoBvyK5ZT2OI330nF4EcTE20wqiKFqx9ULA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9Bd1aMPoVtBlKT4/l/PyF7MB9zqy1JP84wga6NUe9w=;
 b=mnluD/OOvXLiirugU7nDmDpl2ZE0GqA1kmtGlisSS5V6Ibg8k5rl22L3GjwQ1T9KDZHVchhWPIqW1pdDxwIatLNpNxCVTroUN3P4uTuqSYPa6QrqnohiVwqN4PWliHGfhSLZ7a5rN8ikm9ZnduTJ3CVWyIGQYI+X460xEhc5zr8=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by MN2PR12MB4582.namprd12.prod.outlook.com (2603:10b6:208:26b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Fri, 4 Jun
 2021 18:25:45 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4%5]) with mapi id 15.20.4195.023; Fri, 4 Jun 2021
 18:25:44 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: Troubles with the QSFP+ on the N3x0 series
Thread-Index: AQHXWW4cfSn99B/27UWJ/5AY9Is3Lw==
Date: Fri, 4 Jun 2021 18:25:44 +0000
Message-ID: 
 <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [2600:1003:b123:88b1:84cf:f664:a74d:efeb]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44307221-26db-4b1b-23fe-08d927862afc
x-ms-traffictypediagnostic: MN2PR12MB4582:
x-microsoft-antispam-prvs: 
 <MN2PR12MB4582424F0EDD89013CBA1C69AF3B9@MN2PR12MB4582.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HRhj5lB75VtvUKBc8hBTKMDnWqJAiwjun5Ayfa0ib6fL0qRfkcXiXn+qDaUJ8cwe+vcxRgfBBWe6f/6l1AOSz1Y4CfvfRr0NYeUKKPe3VUYKaBRT34ywzwsDpt2mSTF69cYBon+Jpl5t2Xml3s8F126VVKeqErOKg3Ko43Ud6fmVqtvhB6Lc9OXJZnv+rcSh+hU1n+aNKueg8lMYKXqqk9Rw3Cr8Ppq3VxBIa8+26AnENprYU9mOuxJ6VVBmmrxAOTVIOlWbnuZwdE8JHYHmfBd586JhrV/3q7/GKgUjurrU/qHW5iSl7QUA58CDUIEu4Vy3lMjChkNCaF/ItnG9++ZOdgGvBmWLV1+00RmEhKFIHOsLzflyh8jx6xqViMsn7R3e2VGUdyEkaHzf4ht1cRmMxW41Sgp7xvPYmFGXNfDQiT+7xQeMtgFtryJYfcJytBQDZ5eSeGB7ywtpKF4S32gal5WPiIm1/J2osOIFewxhMDY98WudiHT9STakBdch4QRl0hk9gsoKGlZkbRvAKRnUn/lOlE+WqyhnlhalnKAnyLr8oQ2BCF9Gqvcwiz7E+BW94bQyDLxaCbTh7UxK4316t1JsxcNlGpoeto5TfBU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(366004)(136003)(396003)(346002)(39830400003)(86362001)(76116006)(66556008)(64756008)(66476007)(66446008)(66946007)(6916009)(8676002)(33656002)(7696005)(2906002)(316002)(8936002)(6506007)(9686003)(55016002)(38100700002)(478600001)(122000001)(5660300002)(19627405001)(71200400001)(4744005)(186003)(52536014)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?UyLYNn5ENHQrbfezm8h5iZR/X6CdC3qsyegNUxiFTDGkni9w7QadCFj1KM?=
 =?iso-8859-1?Q?e+hTj8k67abvmAax4UFNht9bsXZ0lXYBYkuR/ke+MrgXi6FdYrHg15OvMA?=
 =?iso-8859-1?Q?JfE/J9nrIEcLCM+VW0VfMIFknU4HuQ0cTSrIez0IWmjGNPwQgzTv6VTZ1R?=
 =?iso-8859-1?Q?/vy2swj4KpufPYwvsaJFZ2wqf+IWaaevXBStI2klahJPhNmKdSxnlqh5vq?=
 =?iso-8859-1?Q?Xrpc5J92TDek6rmwbFJ40tia0m7KY9q9P67qo8PuNUYXxaSF2FcqoRJp8S?=
 =?iso-8859-1?Q?4GRzb+HWOE5/nJ8TiDOUytAsWig6IJ76CmURoe7cmkFzIxuRHvE69MKP9Z?=
 =?iso-8859-1?Q?3DAKM5O1lBXX6SoWZE0divwrxT/O1ChLjHmfs+jZMJr3p8YI8lTNMZJRlN?=
 =?iso-8859-1?Q?7I0rDiedg55gsk6bDML4xPntZTr2OnSgcONQP+TrHIP/WXNyNONu0e7rt+?=
 =?iso-8859-1?Q?jdfRk/skJZx5rB1dcSoFSh3iMV4dc7B88cDOIp8uLuaxVjOxT9GIO8I9XE?=
 =?iso-8859-1?Q?4EmTWenkeDg6tVnY+z+/Bl/dLwOr0t4tNHiLZRCLp0mrB5Xl+OBp2RrR1w?=
 =?iso-8859-1?Q?Rmh2y+odEpGRWi8x8YOSFxiicdOEqKbgExhIume7brPN3YRdB/U+DHi96r?=
 =?iso-8859-1?Q?pM7uS6wnHaUG2Bmjq34MHV7M1mNMtbsN/Yji+tfi4EJLtNCO62C1WJM1cT?=
 =?iso-8859-1?Q?DQJcGa76q3hbxNTbtzO5iTYeNvhUUjtkNW//905zg1l2xdHWvzlFgLdUIV?=
 =?iso-8859-1?Q?IwCAHXLiUgAE1/dfrjzlOmzlRK1k6k2sxxvrRkKH+XC/s5sv0e6UElGPxO?=
 =?iso-8859-1?Q?zWBRvlFwMrROskZ7c19/IJSoK2Edvg+IVsuHCA5AtRB7voKFVm7Tw4ma1+?=
 =?iso-8859-1?Q?2PUVLXNhed5DlWZuE4hc1w/uT8rUmAxUNXABZDVXVrweubiyG3mIjNjNkL?=
 =?iso-8859-1?Q?bMIwCfmH8n3mkvVj5j36lPNEZQpkHNKnIsI8B32n6F54PvTMHhpJJlkCS4?=
 =?iso-8859-1?Q?YkU22RP2ULFoQVBNV3O0laBp8ctm2GfCA7sITJ0V/fJAmPAcHyKPocJR5u?=
 =?iso-8859-1?Q?UevKCLa1BNOXm6UmeVwPm4N7LTva7aJsUPxxdXfCPNr1ZZkrrGD26Yy6r3?=
 =?iso-8859-1?Q?WkC2X/AlgAXNUjbhnTBbSyZDFZ5pkVEzf5UB22QbmZVQ7EN/bqhLtAkWPi?=
 =?iso-8859-1?Q?aXYqt3L5OkYAFrUCpjQB1fRk2G6+PpBlRkBvuouwb16PGCVLjtaImQjJ5F?=
 =?iso-8859-1?Q?JUp/n9YAlJ0yMDoWTXzeo2jFxcInFc5kjLtzjrdIP/vrnIl8gLkcSCIa7U?=
 =?iso-8859-1?Q?5h0pHwhH3lZX71Apc1GTdcAWeOFgePa87I5goOYlk1z68wt4A4b720ZS+7?=
 =?iso-8859-1?Q?dMtdAp1MaF7RM8kfuWEGimONlCnmNCd31WfmIBjz1kK2Libb7IibKEQ/OD?=
 =?iso-8859-1?Q?y0y52jfI/dJQO1JM?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44307221-26db-4b1b-23fe-08d927862afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2021 18:25:44.8095
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /nNcD5ouCFNOw/R8LhZeynQhsHPQTjX4llAheNhxI+aU/fOBH82Sn8vb1TCLoa1HsawAnsH7A064oLAbLWjRa/diRgSDDYe2+Kp07Tvoad8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4582
X-MDID: 1622831147-ytuLcasDu9_h
Message-ID-Hash: GVKIFFRS32EC5M3Z4NXBWI3LF3D323CT
X-Message-ID-Hash: GVKIFFRS32EC5M3Z4NXBWI3LF3D323CT
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSK6JJVUO6YTAQDRGHZWQ3J6RMSIEUSO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1911592557473694713=="

--===============1911592557473694713==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB38719D13ABC60C01624DC1BCAF3B9MN2PR12MB3871namp_"

--_000_MN2PR12MB38719D13ABC60C01624DC1BCAF3B9MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.

1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet due t=
o some issues we've seen in testing it, but I am not sure how well supporte=
d QSFP is on 3.15.

2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning tha=
t we would need a 40Gb QSFP that can handle 4 10G outputs, correct?

3 - Lastly, I cannot find any documentation on setting up the QSFP.  I've d=
ownloaded a new WX image over Mender, but I don't see where/how to configur=
e the QSFP.  Is there an article or writeup anywhere that walks through the=
 steps?

Thank you

--_000_MN2PR12MB38719D13ABC60C01624DC1BCAF3B9MN2PR12MB3871namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.<br>
<br>
1 - Does QSFP work with UHD 3.15?&nbsp; We'd prefer not to go up to v4 yet =
due to some issues we've seen in testing it, but I am not sure how well sup=
ported QSFP is on 3.15.<br>
<br>
2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?&nbsp; Meanin=
g that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?<br=
>
<br>
3 - Lastly, I cannot find any documentation on setting up the QSFP.&nbsp; I=
've downloaded a new WX image over Mender, but I don't see where/how to con=
figure the QSFP.&nbsp; Is there an article or writeup anywhere that walks t=
hrough the steps?<br>
<br>
Thank you</div>
</body>
</html>

--_000_MN2PR12MB38719D13ABC60C01624DC1BCAF3B9MN2PR12MB3871namp_--

--===============1911592557473694713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1911592557473694713==--
