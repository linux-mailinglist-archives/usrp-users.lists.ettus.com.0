Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E413ABD42
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 22:02:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0723384852
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 16:02:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=wisc.edu header.i=@wisc.edu header.b="J3bB4XxC";
	dkim-atps=neutral
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B96E384424
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 16:01:25 -0400 (EDT)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2046.outbound.protection.outlook.com [104.47.51.46])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QUV00PEH3MB4K00@smtpauth1.wiscmail.wisc.edu> for
 usrp-users@lists.ettus.com; Thu, 17 Jun 2021 15:01:24 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.51.46]
X-Wisc-Env-From-B64: Ym91dnlAd2lzYy5lZHU=
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.6.17.194815,
 AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.5.22.5820001,
 SenderIP=[104.47.51.46]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hd9VOmk8Buwam6h+HL5jvTi08jE8PijfhYY+l0H0jqgIRss4hTbQngs2SJNbRRQZUfA+ALCCtkG1nmJ46gRlMDDjV4pk+cAjzUYjGT943LrMFG9Is4x+fu5rADzPF8X+xg/3EO2uwJvqCoI+WKnYdqh9bE+Cs5hBc34cEFzyNvrLqqd19TS1jeHaQ9/KhUTxABXgRCRYd/IGUmG76IKDIdaTrmWsn0aaRRYLRdmtaNoDix/OVtll42nga+p/XU7CfkMmnoah2hTqTlTez5Cp2+M+CVaNmWjPm6qVWxVJzLuOUnwTdFFDtKEfVxKU8wUNBbz89D7GvV99MWQ795Hthg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDJlnQ611x93oJEzlBtm2v5gRCTPvMZbvdCwGmH3y6w=;
 b=k1FQwy9yEjWAFzopyhGQVgYlaB4b1NOcbwEplsw4/jkyoj6yF2C1tmnbtqiOZinoc56hUG2TipSdSAkLeHcnO34ma68v9bjHYgncsuqGaSge2G4OAl3c3Bfo5qkKaTdc1NszGiAZxXgtGu+v8Q+pDFgTdQoNGsztmGVHMlWq7WYeQLE2PMbxFsqL2/lAZ9rX+Jae+7EYcsHylm8MEfg5zzg25wQRDwJaPpXd5WyErhfAsD1AfZjH6BnAn1A93ymEq9WyPvEi7PCgKLQQRcj5W+Bp8tiK7i8lWcAYg15T0h5TYqyXuUkmKpA81t6/5v7v3R8LDqgHPhPGkfKMil005g==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wisc.edu; dmarc=pass action=none header.from=wisc.edu; dkim=pass
 header.d=wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wisc.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDJlnQ611x93oJEzlBtm2v5gRCTPvMZbvdCwGmH3y6w=;
 b=J3bB4XxCl6ng1W5MOvrKltzBqE8PcVC2vv265l5MFLlvrzoXOUZEe/BimSmcxAggiHmXEXlfQuA6IE2x3JGJ8WTwHvwVX/r79yIeKHe4RO1O+/bXbqnXrzjj2RT4WG9+v+LOteAOBdH6TaEl7jrthA0nBB3hVFG7lDd49kLVZko=
Received: from BYAPR06MB5352.namprd06.prod.outlook.com (2603:10b6:a03:ab::29)
 by BYAPR06MB3797.namprd06.prod.outlook.com (2603:10b6:a02:81::12)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4219.21; Thu, 17 Jun 2021 20:01:21 +0000
Received: from BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c]) by BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c%6]) with mapi id 15.20.4219.026; Thu,
 17 Jun 2021 20:01:21 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-topic: CMake Error Compiling init_usrp Example Ubuntu 20.04
Thread-index: AQHXY7Lec8fCUFTn00uA25vj1i6qDQ==
Date: Thu, 17 Jun 2021 20:01:21 +0000
Message-id: 
 <BYAPR06MB5352A3AA38EA9C3C9C961120D90E9@BYAPR06MB5352.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-Originating-IP: [72.33.2.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e50d101-ec17-41f3-ed9d-08d931caad92
x-ms-traffictypediagnostic: BYAPR06MB3797:
x-microsoft-antispam-prvs: 
 <BYAPR06MB3797B75E6947BF54948DCCA9D90E9@BYAPR06MB3797.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lM9es1bTGLePifotTbHo2OIA0PAwR6lsqwCoMJJYDcv8Z0wBW5hLb0EUUdWtbRIsRD1f4jtlaRDntwyKWTnyWG3OWAeyfAUKG+rO5LTKQ8RFxW3Ph8TPYU9Gj6Z+PkD8jN9AoFCKtDZaxX0PZqWlGbWq6Aewt/fZbXYZvpm9FhhRSM6ed/E5aRJmXok3PXdwd0El1y2UV7utNNTdl+BHcBXs4NSEvE4I9fVc8/Ip7wMGt/+59dt/irM+qtdFndGRxu1dQOU8fvvn5/snKqINxeGNH3DTetzvjPN369xMLQVW4PVQfYZGm2J3LZVYWNBNPgo+g1PnQc4Gy/kRAQ4Ms6e0ZNJykLlMT5nswChYOgr+5WhIKb/iZiUxlmPtLEbqRuD83GFZNejyEEb/hlgQKUH9MU5a0Ge4U0ckC4jXWCRpJmqmkfi59+BPBRdC9pih9H23oVYiUBNs7WdqroynOx6tNSdJCb7KmPJ286SZthF7tche58oBEz2azLw2Br0bbGX/C1LfN/OJfE2qJ16KGjTmXzMTdQLVR36brL4QAhKbDso+dzXN2yE4kMDkMOxn9pUf44Gi1/QNXUpUzaQBMmd3F8sPu86cpMEqDIiX0LU=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR06MB5352.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(396003)(376002)(366004)(39860400002)(38100700002)(76116006)(478600001)(9686003)(6916009)(66946007)(66556008)(66476007)(64756008)(66446008)(33656002)(8936002)(55016002)(316002)(6506007)(5660300002)(91956017)(8676002)(71200400001)(7696005)(786003)(2906002)(122000001)(186003)(19627405001)(86362001)(52536014)(75432002)(26005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sItblIzJlUZmui7Lp4Q4gz485AuNectNpBWTDp7Xpf6e+7O+csLb1ICNlL?=
 =?iso-8859-1?Q?s+GXDORennkoh/N9pqlyXwLw+9lR01ZfRqOZjnvmim1CAZNeG8XAPtzGU7?=
 =?iso-8859-1?Q?26Kazf9H8cU++7wI/A0FA4DlR0e1az97JDQvjVq7slyIHDBUSeyrEGPYXn?=
 =?iso-8859-1?Q?LwsMAeW3PvBv/pb6z5O0mzKuRoFh3tIkhiyUH1vFTZg/GWcURK4JQMvvsg?=
 =?iso-8859-1?Q?46jg0IxkG5DS6WIuS+IRrrFXnntBk+0RCQRoz1qTorPyRWDML50CAiU4Pb?=
 =?iso-8859-1?Q?ahqMo3hMbixzrtR2HUfCzqyoQ47sO086j8H+jzugAgKg3I1OPgpNn/cG0y?=
 =?iso-8859-1?Q?aMv6Kgfb2X0iroKmPrb9ELMeTIZTkotZQVzD7tNa6mnYX1045uDRnNDKs7?=
 =?iso-8859-1?Q?WwcCxAidUvnXk8Em6UNtnKJjccwQM9FJnXbkqJ5SuzUwJ1vKFfZ3BvbW4W?=
 =?iso-8859-1?Q?124GK1DD6ePjZ639W7vjGQvoWnrLH8HottLip3sCiACXJ0FuGM5CZ32XE4?=
 =?iso-8859-1?Q?2RD66R1ihTe4+1+oGRMlXo3ZeXspek74ZVPypuxpBZP4huOJ683on4mlmj?=
 =?iso-8859-1?Q?DEhoSNwgjWmTMzJQD7l+d+UNy+MFKGVQWDppr7AgIjzrURftR3fuPCnbWu?=
 =?iso-8859-1?Q?d1N1rQ4LkI8ZFLvcXaUzgF52QGr5C6EDUnBW1b4rsjxVhrgQhXzn3mHP6d?=
 =?iso-8859-1?Q?94+rVCC31vNAL3BS47Z2Kmk0x0wAeVEBqWzRKENN26fVs18FTC/J5+iAhx?=
 =?iso-8859-1?Q?lIN3QhyrYz4vKWq4osg3anEizAdZztSqKFQXqBaHOdN3owobTVqfFBuc7b?=
 =?iso-8859-1?Q?qp8+HXWectBy/q/ahCaB0MeIhmZq7EmsS6AvkN9rm3h6CYQUIKNDiRAeyW?=
 =?iso-8859-1?Q?rFPlNxIauOuwYeYj4tN1RACG15kVO9NFVsttqgoS5FAzVkJKe/5Ni6Q3Y/?=
 =?iso-8859-1?Q?JMR19xZx1k7COC/CSDrW3BjXxx9Dx1xE87yUWGGAoIVnbhELL9svViWPHx?=
 =?iso-8859-1?Q?KUpA9Gsvs1xHXzm8xxc1hWhOFiwxAuASrjmSmwCR2xbZUwCvTjjGVUBft4?=
 =?iso-8859-1?Q?ZGeA8yLblOg+VZtkLZ5cOjCS7bFe/r2igWgHp5AkyE50ZG8aJxh4xLTY0Q?=
 =?iso-8859-1?Q?ajXgQD832+5QPuEQSuJRCN/HA7HvzcVVtxKyMalnK166aGx3F8Urb73aOa?=
 =?iso-8859-1?Q?Md0H39yxUqZLkBtFOIDAfGrD2653LyH0PvMusxr+0ts9EBO3yO6jvRf203?=
 =?iso-8859-1?Q?d2N2p7KmYtpgqK/PyJvJ0iIpM1Tnj2dJi99bB/EJiN8JemhUJhIRIIRnNe?=
 =?iso-8859-1?Q?FmzxWQQvoz01MoYFZ/+ogEP44knsmXkPxE4asBcHiIuAozE=3D?=
x-ms-exchange-transport-forked: True
MIME-version: 1.0
X-OriginatorOrg: wisc.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR06MB5352.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2e50d101-ec17-41f3-ed9d-08d931caad92
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2021 20:01:21.4218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 JlP5hTVRxXMB8t5yfjXqG7En0UgkTcX8v+taR4NfAKejPzCnybDruA7uzaifduY3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB3797
Message-ID-Hash: DTZPBI6DROJJDPY3UH6NT7OP7E3T7JGD
X-Message-ID-Hash: DTZPBI6DROJJDPY3UH6NT7OP7E3T7JGD
X-MailFrom: bouvy@wisc.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] CMake Error Compiling init_usrp Example Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KSFTVJU5NGINAJEME77DOVBTNDP3CVQU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alex Bouvy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Bouvy <bouvy@wisc.edu>
Content-Type: multipart/mixed; boundary="===============4101315593895499302=="

--===============4101315593895499302==
Content-language: en-US
Content-type: multipart/alternative;
	boundary="_000_BYAPR06MB5352A3AA38EA9C3C9C961120D90E9BYAPR06MB5352namp_"

--_000_BYAPR06MB5352A3AA38EA9C3C9C961120D90E9BYAPR06MB5352namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm hoping someone might be able to help me out. I'm running Ubuntu 20.04. =
I'm encountering errors when trying to use CMake to compile the init_usrp e=
xample. This is the error I receive:

CMake Error at CMakeLists.txt:26 (find_package):
  By not providing "FindUHD.cmake" in CMAKE_MODULE_PATH this project has
  asked CMake to find a package configuration file provided by "UHD", but
  CMake did not find one.

  Could not find a package configuration file provided by "UHD" (requested
  version 3.15.0) with any of the following names:

    UHDConfig.cmake
    uhd-config.cmake

  Add the installation prefix of "UHD" to CMAKE_PREFIX_PATH or set "UHD_DIR=
"
  to a directory containing one of the above files.  If "UHD" provides a
  separate development package or SDK, be sure it has been installed.


-- Configuring incomplete, errors occurred!
See also "/home/alex/init_usrp/CMakeFiles/CMakeOutput.log".

I've tried adding the installation prefix of UHD to the CMAKE_PREFIX_PATH a=
s suggested but this does not seem to fix the issue. I installed UHD using =
PyBOMBS, if that makes any difference. Am I missing something obvious? Coul=
d somebody point me in the right direction?

Thanks,
Alex

--_000_BYAPR06MB5352A3AA38EA9C3C9C961120D90E9BYAPR06MB5352namp_
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
: 12pt; color: rgb(0, 0, 0);">
Hi,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm hoping someone might be able to help me out. I'm running Ubuntu 20.04. =
I'm encountering errors when trying to use CMake to compile the init_usrp e=
xample. This is the error I receive:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
CMake Error at CMakeLists.txt:26 (find_package):
<div>&nbsp; By not providing &quot;FindUHD.cmake&quot; in CMAKE_MODULE_PATH=
 this project has</div>
<div>&nbsp; asked CMake to find a package configuration file provided by &q=
uot;UHD&quot;, but</div>
<div>&nbsp; CMake did not find one.</div>
<div><br>
</div>
<div>&nbsp; Could not find a package configuration file provided by &quot;U=
HD&quot; (requested</div>
<div>&nbsp; version 3.15.0) with any of the following names:</div>
<div><br>
</div>
<div>&nbsp; &nbsp; UHDConfig.cmake</div>
<div>&nbsp; &nbsp; uhd-config.cmake</div>
<div><br>
</div>
<div>&nbsp; Add the installation prefix of &quot;UHD&quot; to CMAKE_PREFIX_=
PATH or set &quot;UHD_DIR&quot;</div>
<div>&nbsp; to a directory containing one of the above files. &nbsp;If &quo=
t;UHD&quot; provides a</div>
<div>&nbsp; separate development package or SDK, be sure it has been instal=
led.</div>
<div><br>
</div>
<div><br>
</div>
<div>-- Configuring incomplete, errors occurred!</div>
<span>See also &quot;/home/alex/init_usrp/CMakeFiles/CMakeOutput.log&quot;.=
</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">I've tried adding the installation prefix of UHD to the CMAKE_PREFIX_PAT=
H as suggested but this does not seem to fix the issue. I installed UHD usi=
ng PyBOMBS, if that makes any difference.
 Am I missing something obvious? Could somebody point me in the right direc=
tion?</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">Thanks,&nbsp;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">Alex</span></div>
</body>
</html>

--_000_BYAPR06MB5352A3AA38EA9C3C9C961120D90E9BYAPR06MB5352namp_--

--===============4101315593895499302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4101315593895499302==--
