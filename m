Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7A554078
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 04:20:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D1CF384575
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 22:20:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655864456; bh=XoN8VBd14HiFj395yA03QyEDEkvFmaBlXf9ivREn7pY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cYWLJJdtaUYrJ1x9xSAj9ysGoPGKwdMML12SP7P39xJyKZN8GhOvaBZMbA1d7PjPP
	 eroypZ3XJIMK5YIQ6mbdWgZIOegaQO5W7p5ZOKLwu0t5cqipOBplHmQS8PzCGGJ3ho
	 ItlMPZ2Z/emMx3IxY9cQZhMBtM/oHlXaf/oVIpsvNjIz3RGQJmqpxLffsNN9+85VSH
	 CzN5bnSRHeYcN1MB31axVIXaEUfMVn2XO2EuZkJVEJxNAf6U5IR9S+Q7Xu7h9uZxGc
	 w/5L/a2MIa7ntQzyi3YHZ0JVRGSGW3m+DflYOaQhKGBGJyGT50TbdB5JSflmPhfCaE
	 La1HnD7VVqlzA==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2104.outbound.protection.outlook.com [40.107.244.104])
	by mm2.emwd.com (Postfix) with ESMTPS id DEA83384503
	for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 22:19:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="sYs7RGFi";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSJYXjWIXSLeEiw8ulNjr8o6kX2BhqccPY/5Z3MzjUEY6c7/OBILXTqJyyDHKxYlvmbk/e0hASBoGQk+Xad2lbSglPDFaZk8Y0Xk0s5dzEyG4dQzxf/97os7wNJ9oaG4HLpeX7XBszsNdT7ZZszLMGR+LJm+KV7HElfR/AcIBYUUZlBSFylKftAOhLVbvdSPXv/W+jtSLegtsl9LMnzHJ0P9GPhwiYcV96WJNNfSQCsoSj6+Z1IYZxWkZDdoGQGCiF4BmoLQH6ep7vdXfIXtMo8xhXMxe2X3luUXftm9Mr3IIziI0Vz8VaWg9+sdwmNueIxUUxQzuUNv2meyJJRD6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcyvBdsiUXPAhhC7Sz2Se+kdzWEEf1ONzYwZUWCdSaQ=;
 b=TxT9czrMv6A8+A+FiR26QgWveUiZaoDvbNuAerK1gf7mhpPci5/Th5wbrCq3siAWMVJR8G6R8VEyrBKAI/11PXaEEXlBcrWx4FseOH8blCusp9W569EwwN8+nGrzZnX9NgqiEURNI1NtKTvTT/H5JT+sHwcPjwE8+mrjwO4/V7ds+DxJPovoCNdbT3eyep87sUTUD/puN5n4daiolqkR7JLzb9n8UZZF8q+bNDtPL9/h07eN4R2Ab/qh8amJQgGqWwwCZxuhsQFiQzRWzLerCcfoZcJrJeu9c4wTLBhyTKek71lIwVCgQHrWe1BA+wI9IhvOHGxWKgkUnbx3BdgWOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcyvBdsiUXPAhhC7Sz2Se+kdzWEEf1ONzYwZUWCdSaQ=;
 b=sYs7RGFiBMBrk2eShql8eeUiQZ3x1DWS5ZfHsspSGtPKYEhVfOoO5WOdiOQMQ6vhoYuipFOrIEZ8OT0qXd5v5bn3DoDz82Sw9ITOs5hPz0Eh5AAOUzJUpmdXogc4/Exdi5Y0UJaQpzsBUSCpxkEyvs9lgpckibCVxdemwMzF1HY=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by BN7PR14MB2130.namprd14.prod.outlook.com (2603:10b6:406:bd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Wed, 22 Jun
 2022 02:19:50 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::a90a:5a33:14f8:909f]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::a90a:5a33:14f8:909f%8]) with mapi id 15.20.5353.022; Wed, 22 Jun 2022
 02:19:50 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to setup N321 master clock rates ?
Thread-Index: AQHYhd4CkqcOhqcid0qdI0TF6X+pdA==
Date: Wed, 22 Jun 2022 02:19:50 +0000
Message-ID: 
 <MN2PR14MB4192956CB99727BB17CC8922CDB29@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55fb4c40-181d-4642-99a3-08da53f5af9b
x-ms-traffictypediagnostic: BN7PR14MB2130:EE_
x-microsoft-antispam-prvs: 
 <BN7PR14MB2130AF671CD6B03989F4E1F4CDB29@BN7PR14MB2130.namprd14.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xaYw15H62YRBqrUvnRCSsX2uR3GF0dsiz4OTM1VAt+8knQV78vWJrCokpE3/enogoc2La7vxGOEOmgeJHXrjxNiW0h4aA1dNCY/uiox5gY8857tSCYTRB3ycKTHZvKVmNQzkRHL9bZsDjKz8Q9Q82u1HXCMrmU5IM9zP0EBruxayvhm/Bq8RgO0OmG0fy/joAjHnqgkQUZF4mLMHkLwWiyFHGzjcNe/tpWR/ptpYsULFRUzRpj5B7kbMbEmqlOA/xNYvOeHwfEH4EhMpqDTXDw0PHGPfC/HSFVRFHtzTrJ41usU3d9H7AdVzdJU4ETj2GanOyYhxmZrNQLDAKkKeyjLYQVvj9DucpYyDg7RvRj0T8jylGv9p7sgxHSFjjTMcf2fqZFcgGC3BNlmATCpxuEd99d9mU9jNU8lSo7tJGYQHwbWlS3AzdOZNOg4L+0Sm0pSsipulbAMBwyXIoMrrVCX02VeEc4gpKqAfKGJiib6McWJD1juCczRLlM6tLXchcVmyZA8K4FSBLVLNiRF12WTzNom7HNdEbJHk/fJATVHENlWyCZvllhZTUMCU2+bZ1JzZjYlORW08jfZFwOMmml6Ii5VQ2kQ8JNiuAEkfKy5Z3CRKu7VJI8oOqZLNRozamO8R3Oi5d6A+kmCvY1WCLmHUy1hwjTNrKs9EeQ3uMk0egl6xtk6AxNZ9a158srSLfFqsgcZxvhIwwPxRDfUVMg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(38100700002)(9686003)(26005)(7696005)(75432002)(41300700001)(2906002)(5660300002)(6506007)(55016003)(19627405001)(8936002)(33656002)(4744005)(52536014)(71200400001)(478600001)(186003)(64756008)(38070700005)(83380400001)(8676002)(66446008)(66946007)(66476007)(122000001)(86362001)(66556008)(6916009)(786003)(76116006)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?0HC9pue4ysbBHIx+yCx6WKZRiq80eELWyEOXMEirNpBFvwXWEcL13c0FZG?=
 =?iso-8859-1?Q?E9zsAFh5HepyP05SIo5Ubo3xo6Z6lEAnJWb/Y4d0GxU8mNNWx087S+jayJ?=
 =?iso-8859-1?Q?bu0IsVfo/0eyHC3+Bk9gHYZMo9ZOXIf396PgHgZIQu5Fka3TOlbyRJ2fse?=
 =?iso-8859-1?Q?bBTzskAuJU9EqqAM/gtVfImsm8Vm8jAhZ68GJ/ywQYRuC1uRYTu6eFTwjd?=
 =?iso-8859-1?Q?XJy4TCnJXWp1gnajdIfpxacAbQI1TgEMtFMysN+gLxE5PKYigtsXpnayps?=
 =?iso-8859-1?Q?xRDJ/v2vaio2gZrBiamtMzlD3V0/M36ihuoJeBmlLtaY3hDzvH3bafJY3n?=
 =?iso-8859-1?Q?1pBUxqnCKJfnewNBgHrAvL6BFYXVuRaoPL8Wot8aVviGq88PcK2ZuNzUlj?=
 =?iso-8859-1?Q?gYvVLRk2idylL4M0KDEAZ4jN7bJV/ved4HFHgbwOW6bqmQPDOkcqZfoDcM?=
 =?iso-8859-1?Q?wzdJInoSmyaIJdcgt3x455wTRMz1Q8vJOfjZPmCEyAw/pSqy+ROkAJmiuh?=
 =?iso-8859-1?Q?G/+BBJOO/JIuTHl/CgDlVCwt/MJ8eHcvjH/+lOOdcg3/BvtXmRZcnpeICn?=
 =?iso-8859-1?Q?xOhbgkPgHJWce4FVyyOXpcD+8ZCC4yJx5btLV+u3u+WSU+RI5xMguI7Ge0?=
 =?iso-8859-1?Q?Uvac1OBvp+e/tTPXwTuewmHFyxsDx4FGAVxP4NpuF4X2WbXZ3A21/Q2s6W?=
 =?iso-8859-1?Q?j92kRLq8xJkEY9VgYDibsYkGW4F+uVHW2J9AFDh137qoy6+YHWNtInV5gK?=
 =?iso-8859-1?Q?gHFIFL4qRCRKrmES/iDBAI7im0Si9F2/z5cWroBflYgSkj7vLCDq43rk12?=
 =?iso-8859-1?Q?6J3B79a7VE8YQ2T4xS0UxdnxwwUY6g9RTXOPoYcFJy2tjaQtdUbf5oMnCG?=
 =?iso-8859-1?Q?dmjb0CbvzU2py2n2iYhhV1Pb63Jfnn3E3FU6mTw4BcWCgaUD9tARsPl65w?=
 =?iso-8859-1?Q?2E+kVK3h60dsLcb4Jt3+ePL/9VJq2gXkEadmHdWDIQ3iB2qBzSORlnEQvQ?=
 =?iso-8859-1?Q?Uv8VquQyzn9O4/CtC2sE67Erv35qh8q8PnGLgLuqzkdVmnNI1C9/he1U33?=
 =?iso-8859-1?Q?WhBen8amtuAmTtCfk75IsMI41fVaI3MexIbLQA4ChCWYrYjh8das2k7svK?=
 =?iso-8859-1?Q?8GhGIOwjnJ2/Ddj9ypT++pFPyT1yUmrwM50LIfryNiZCBAvC39hKzgMANr?=
 =?iso-8859-1?Q?koKXsYuNEch9B200/U1QjSUuvFBgTq67Tn6Nh5j9yQxZt2exJvh81wOl0N?=
 =?iso-8859-1?Q?9uafXwZtxYiLPjD9vvGFefQLyZbI/Z4aW82x74KD3D2GUcX1izg6tvYsnt?=
 =?iso-8859-1?Q?KMopB9vIYLx0hS6zWikZCbgXJ7kWaxXf9LQEqnQQnc7gSEo4n+t2hknje7?=
 =?iso-8859-1?Q?gOpBpmDjQQLt5j22BbPtXZaJOf/jkugj4Y3+cuUgQNDpYm1XW56p2N4Qyz?=
 =?iso-8859-1?Q?v89pupDO/L2QcvQxY3pAt/ZIW6cTCsME+dce94O+5B1aX1Bg/FUOIiVDF5?=
 =?iso-8859-1?Q?MbHTC6u3IItKuB+t9cjsq2zq60wZbKAK3d23gQ850I8dwrKykZMqBcO45e?=
 =?iso-8859-1?Q?uEggkQLGHgos/ZA/aRGo+Mag1XJRXJPhKfrJJDU1xql/ibI9l90piCrDL8?=
 =?iso-8859-1?Q?/JVeCENDdF6ZfImjV23jiZFyLvX+EtLgWklQFWtnsGxcrTy0Ub1stqEL4+?=
 =?iso-8859-1?Q?qVOpDMTrJZJKe+oq/uTfgLwj1D+ugPQvBTepEOmLvBTDD+vhOsG69MiS1Y?=
 =?iso-8859-1?Q?xvt1k7VXkz2FPBqxFpWN0IIsZAxDHk0liLyfWDNA0BC6Sd?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55fb4c40-181d-4642-99a3-08da53f5af9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 02:19:50.4024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GtPUHwHm0e5M/up5y8fjwhso1/2uuOdPqSZdwWXN29c/sEz4pI6pNNvihj6wAlWWjJH86vhwhSyYW0P3LtU0Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR14MB2130
Message-ID-Hash: CTCW2FLKJZWEKWHP2CIPL6JFLIGWB6JO
X-Message-ID-Hash: CTCW2FLKJZWEKWHP2CIPL6JFLIGWB6JO
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to setup N321 master clock rates ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVYDZFQ3QJDAVDJKTIYVW65FIX7N6JRX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9077564251905111210=="

--===============9077564251905111210==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB4192956CB99727BB17CC8922CDB29MN2PR14MB4192namp_"

--_000_MN2PR14MB4192956CB99727BB17CC8922CDB29MN2PR14MB4192namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,
I have an N321 and trying to change the tx rx rate by using argument --rate=
. But it fails to change it since the master clock rate is 245.76MHz and th=
e tx or rx rate can only be a fraction of that.
May I know how to change the master clock rates to 200MHz. The default is 2=
45.76MHz. Is there any simple command to do that by the C++ file control me=
thod? Thank you in advance.

--_000_MN2PR14MB4192956CB99727BB17CC8922CDB29MN2PR14MB4192namp_
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
Dear all,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I have an N321 and trying to change the tx rx rate by using argument --rate=
. But it fails to change it since the master clock rate is 245.76MHz and th=
e tx or rx rate can only be a fraction of that.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
May I know how to change the&nbsp;<span style=3D"font-size:12pt;background-=
color:rgba(0, 0, 0, 0);display:inline !important">master clock rates</span>=
<span style=3D"font-family:&quot;Lucida Sans Unicode&quot;, &quot;Lucida Gr=
ande&quot;, sans-serif;font-size:14px;background-color:rgb(255, 255, 255);d=
isplay:inline !important"><span style=3D"font-family:Calibri, Arial, Helvet=
ica, sans-serif;font-size:12pt;background-color:rgba(0, 0, 0, 0)">&nbsp;to
 200MHz. The default is&nbsp;245.76MHz. Is there any simple command to do t=
hat by the C++ file control method? Thank you in advance.</span></span></di=
v>
</body>
</html>

--_000_MN2PR14MB4192956CB99727BB17CC8922CDB29MN2PR14MB4192namp_--

--===============9077564251905111210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9077564251905111210==--
