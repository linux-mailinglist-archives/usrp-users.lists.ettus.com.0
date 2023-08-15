Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9CB77D390
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 21:49:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67F84384AE1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 15:49:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692128962; bh=EDxblmj9f24LhAsMMVSOC1lP9lMndWZbFs1C/abvS08=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eti5E7XZ97raJygajf9nyv27ZtG6OsNxyIqDtkzZ572Stf8bXC+B5JZw+Qy0GzuRp
	 KzSn1Irzzid2xZaxWyim5T3H6xA/ad8p00A6Nvux8Qq86YSTFgsNikGpaDlZfxNhUK
	 DLrBpfUCYd3l1pxRJCNoqeInqzVGlRD+ht+qtApSjFumnSkNsAANXvG/y/ssUpdodr
	 snOBjgtL7ZNxQ4y9HNQgWBNNPZJqZZ6t3bR4TQ00o80oxvU7fkxTN0aBMPy3zHCyBU
	 12Egj9qhYxESUpnUSacopmZbItNl5vgS7zH6QFIw1VvFs19ow5NlBUhNGkAUS0oWQv
	 Pp6KatZEX+kFQ==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2010.outbound.protection.outlook.com [40.92.20.10])
	by mm2.emwd.com (Postfix) with ESMTPS id 35D103809CE
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 15:48:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="jo5fPIc7";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6M6j5kPg/8mha7CaWPRRZ7kqK8km4t43TCsU5A/UHq2LcKQN//kkLVgfd/5MBfKdJT+9vsC8sXgxoKFsZ8oVNS6fMYL1/wbh3ndvrdWbtrhUgwVa5sfQWbK10Mm1XEBgEbJKIov4DeJNJneWuuHjNIdffhnzHr0tMkgQfGUN23LFkBLJ82E2LJnwCV3JTbsedtFzicYRNHQKWQWIXRnXyxpyOe+BIjkcz1o64eB9VPiYZJ6M+o3ddkyTR+Q5enF2sOM/v51UEnsU+Skp7Y7JcPWCx0HQ76HY8z+aXsQ37lSHwxN3SQsQjGp0PmJNXEs6oWO5GeQrohYxlCxUSAuWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87TRGhv+Yd9Bai5KPemhr0/r6nNyAreDOPpHcInkdR4=;
 b=UYoDODnlx34snzx34f9/bLm1i4uaP9aWLoDr9R4bE2L1RqXUHvG11nqxKXpwft32PeIAOuNfNLV3AOBjuWugFXa8RO+WAE52HK9evepMtauHq2Pp3EuWNbxqVMsT7iEt7OfB1TwiT0EoYSxoHcFtfdEajrJhU3WiZGUZfOv5vg5V9YzUATx6M+nDIOYSB3GDzfUyIZr4KnaWugNi07GYmXbTbUNtAdQF663ukytPGaPPz0LNukiqVA6eePiXLGDG3z6U8hzuyjor74Jn4d91eRFuM1tOssLtzm1TSdgmbhRgogDGWQajaFJjK46yDorwbaXI7gsMZW6/GPmqKR96pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87TRGhv+Yd9Bai5KPemhr0/r6nNyAreDOPpHcInkdR4=;
 b=jo5fPIc73cQ0zdKUeb7T2a9R+i222qnaGRpyA6+aOi534QF94JDQfYddOEPOtCQYHYfX8vgOt6jh/diiC8YqqF8cnW0QPPCFsqoxw4/9H6YtsOeHytyKcY+0fr17JK1vlXqBj2qYiKgAVWjwpPt44GJ9jTMCfU7ofenLGLkxfxU+m5wJiLggKuNRXJ0oK/cusw6JX9sJJ1WVsjU1wZ2F3VPqeBs51HTPIlU5i82bGGzYYcB+S7h6Que6utUUWLL3h6wA4uX4IoIA3z8JRcGbqlFEiEZCy2NkGrm2ef1Hpe+rneUg3O5Xx9ZlomPGWHrVb+DjcRiOJVSuvgL2Fwp8nw==
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM (2603:10b6:408:1d8::6)
 by SN4P220MB0773.NAMP220.PROD.OUTLOOK.COM (2603:10b6:806:1ed::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 15 Aug
 2023 19:48:44 +0000
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc]) by LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc%3]) with mapi id 15.20.6699.013; Tue, 15 Aug 2023
 19:48:44 +0000
From: Michelle Salehi <herrmlm@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Help with FPGA update and running GNU Radio
Thread-Index: AQHZz7Fmt1pc/Kx1vUS9U+EYruaDuA==
Date: Tue, 15 Aug 2023 19:48:44 +0000
Message-ID: 
 <LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [ui52jZPxTbfICMpu18cj8hGJkR4/lg6qv9v7zT3pN41CkVJOIJfBHLGhOXPezbp/]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3P220MB1054:EE_|SN4P220MB0773:EE_
x-ms-office365-filtering-correlation-id: 460ea185-df1c-419a-5230-08db9dc8a228
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 G1YYuw9Va2iJ7/MdY6+4jlUB6ST2iObNREgxJ590/8xNNfeCLOl4dQQpu3GjqW/xCIN2awzG+0G2UwAEscl00NNnZ575c5f093/3cd6Ju4bCkOErdyRscUxG/G0HAeU5k8zyxCiuzoHf2i+vRsDzRIgi5/Ve7sHDozfpx+c8wQmSnlki8BwhnhK06Yk6lsfI1UMWXA26OFW8JnLQTeRsuHGSRm8u7nydujLYKJ8VbTp4usZHxBCCxDrO1+JZbl1eixDa1qI0rNwGBbjC3joMRzi3EVun2jDt1Wm5/5QluTOBgeWJkzj9rVmSO2fY8JlYGdZfnwn0lEx+XbDhxNTwU//4yZih0UEwhS9mGes/Cc32sntBiWwuXfESNX//4mvtHInDX8ucp0E9AhbwGVLd1SLo+hpgeGr+omW9AYVUSpji0CbQJISlAVfcY5Ja7XJBp82E4XZlRZ5Kbx4jaMiMrD0tBvm4TAp66BDRfe+by2BoLPQ/GWyu/ouG/bN5mP7HK5HzUop4n/CykMRdk13I0JTYQkGe09dMwvxsVOOBM4mXyxBjLN0jp0m1B6MhQUAlyYUlp0mqc8MNpD92gWpHnEP4HEvfRT6bRj3jWBk5Rm8=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?QcpWZWZTNfw1pZAf8jxPn5b5BPIfH7ia+z4TZ7+vhpDCfX7u0fAKcdoBm+?=
 =?iso-8859-1?Q?SMVGrfUxvH7tvo43N89MazniO89mV8wFE9KKKfPsls/su1cO+5yuZbbQys?=
 =?iso-8859-1?Q?TnkgXC/hi/VQSeicdWHrsDSHGxK+QveaeUIWMJBjsO8eKuvkfhpkBv2IUF?=
 =?iso-8859-1?Q?c1DklCMCpY3YvYIPfTyD3SPQyQWhpc5fotZO4DAwNYswW7ESpI+KPAFBVx?=
 =?iso-8859-1?Q?YvCSg3IA1ntpy2TNsqnOjQRjSLIZU7Wc+HgAm1L8buzTprw6ttFti6bXN7?=
 =?iso-8859-1?Q?564xrdESwEaOkygX5mGfHS77iOn+85X/Jp/vWXTJxSV27Z7kePPdGV/yb4?=
 =?iso-8859-1?Q?b/QL1/QFOGHoD8tiD1lg6bnY0jmpjrQ4aVExoRTfZrwk6upUnT5VqaUxzm?=
 =?iso-8859-1?Q?yaXOBX1M0MnDRuhBJWUpEtEx/0nyxo6KSH7SGdLp5pd00fD1jGAe8V0ExI?=
 =?iso-8859-1?Q?uUDQQ9mLyiPkX/1r5m4TqgPhAkSe/JpfMYfgkv/QqmByA7I6F9uzomPVx6?=
 =?iso-8859-1?Q?fNBLiP7CnceB8ZOr3OpLbzFp40inYvDkrVPx+uYKPZ2ZdQcE7opx4v++Ls?=
 =?iso-8859-1?Q?G5bloDNrsQ47/NN7yn0v8BVC6I7oRm0PAvgAr/8KodFmpFn3AdtKb1ZBjz?=
 =?iso-8859-1?Q?kJ7oQHp0A7tk5k1NxbXaRezwR52faBs7RpP2YbAp6JVZaHO7Q3JDB+EYJi?=
 =?iso-8859-1?Q?9kQkVztBxcO9ELEpJD5S0LyTXtIxe7OkCgoINBBDE5zK0Ok5RSUtkkwhY9?=
 =?iso-8859-1?Q?kPGRtcoZ8vzxX2oXYmTfqtXoVhLwRmYJJ2+hI8eX+BtFKX3CBXi3bgMMAL?=
 =?iso-8859-1?Q?dzvzsuLvyzgkhS4/X/IMQ9uRxft98ODjph/QXolVj9hjrHJ0LGw8usqYCj?=
 =?iso-8859-1?Q?YTWVqBd7FntSEwixgV1TuEuR5ybKN6crDtCsQ8O9I/2ypugR4rSRiTR7BA?=
 =?iso-8859-1?Q?h4adjafvs07qAHNrmNlHm6hO6/I7uGM1U/V902l3r5EJyGUu1kYs2Q09Ts?=
 =?iso-8859-1?Q?pJZrCebn28P//Q73IUwHNtsR3/SXzTB0SnwhV/ctmwf7GA8R1EE0nA6GF7?=
 =?iso-8859-1?Q?TJkYS3xjjPmyskr5GiY+cig6Er1b2mdKVyZ7pxv86XTNI9bmzbQHTvBXIV?=
 =?iso-8859-1?Q?5wNJbt0ljv8dT6sl6QVXz9ISNcLURBjb+MIlxJvv++BPvPWreIAxrOnAGx?=
 =?iso-8859-1?Q?5hGxLeZDccDrtj6UHYXakcgr75FUFYoaZ87Pe+n81lvBbaPbw9oou7kfkX?=
 =?iso-8859-1?Q?Hmp628g364ax8nF1SAdJV7Hnnar1qVnotGxD16TBmK0yDq5/yuTh62hqg9?=
 =?iso-8859-1?Q?Bz8xDOxCXarFeg1S6d+k+a5ZZA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3458f.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 460ea185-df1c-419a-5230-08db9dc8a228
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2023 19:48:44.2583
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4P220MB0773
Message-ID-Hash: KDMFYNCYO2SNXHZPWFXMBRGI4S7H35VB
X-Message-ID-Hash: KDMFYNCYO2SNXHZPWFXMBRGI4S7H35VB
X-MailFrom: herrmlm@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help with FPGA update and running GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CJGBI7TAMFHDHDZXPJB2SNKCXYZIG7F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5215899598296968641=="

--===============5215899598296968641==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LV3P220MB1054879CBBCDC948F78CF922AE14ALV3P220MB1054NAMP_"

--_000_LV3P220MB1054879CBBCDC948F78CF922AE14ALV3P220MB1054NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, the ettus x310 I am using ran fine 6 months ago.  I just powered it on =
today and my computer was having problems connecting to it.  It could ping =
and be seen in uhd_find_devices but got errors when I would do uhd_usrp_pro=
be.  So, I went through the steps of updating the FPGA.  Now when I try and=
 run my GNU Radio code, I get the following error even after I ran the uhd_=
images_downloader and "/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,add=
r=3D192.168.40.2"  Any help would be appreciated.  Thank you!


Michelle



Executing: /usr/bin/python3 -u /home/msalehi@invariant-corp.net/Desktop/Fre=
q Noise GUI/GNU Radio Files/awgnTwoChannels.py

[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.=
0.0-2build5
[INFO] [X300] X300 initialization sequence...
Traceback (most recent call last):
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py", line 466, in <module>
    main()
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py", line 444, in main
    tb =3D top_block_cls()
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py", line 142, in __init__
    self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but got =
39:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/lib/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash

--_000_LV3P220MB1054879CBBCDC948F78CF922AE14ALV3P220MB1054NAMP_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1 ContentPasted0" s=
tyle=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; col=
or: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
Hi, the ettus x310 I am using ran fine 6 months ago.<span style=3D"margin:0=
px" class=3D"ContentPasted0">&nbsp;<span class=3D"ContentPasted0">&nbsp;</s=
pan></span>I just powered it on today and my computer was having problems c=
onnecting to it.<span style=3D"margin:0px" class=3D"ContentPasted0">&nbsp;<=
span class=3D"ContentPasted0">&nbsp;</span></span>It
 could ping and be seen in uhd_find_devices but got errors when I would do =
uhd_usrp_probe.<span style=3D"margin:0px" class=3D"ContentPasted0">&nbsp;<s=
pan class=3D"ContentPasted0">&nbsp;</span></span>So, I went through the ste=
ps of updating the FPGA.<span style=3D"margin:0px" class=3D"ContentPasted0"=
>&nbsp;<span class=3D"ContentPasted0">&nbsp;</span></span>Now
 when I try and run my GNU Radio code, I get the following error even after=
 I ran the uhd_images_downloader and &quot;/usr/bin/uhd_image_loader&quot; =
--args=3D&quot;type=3Dx300,addr=3D192.168.40.2&quot;&nbsp; Any help would b=
e appreciated.&nbsp; Thank you!</p>
<p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1" style=3D"margin:=
 0in; font-size: 11pt; font-family: Calibri, sans-serif; color: rgb(36, 36,=
 36); background-color: rgb(255, 255, 255);">
<br class=3D"ContentPasted0">
</p>
<p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1 ContentPasted0" s=
tyle=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; col=
or: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
Michelle<br class=3D"ContentPasted0">
</p>
<p class=3D"x_MsoNormal ContentPasted0" style=3D"margin: 0in; font-size: 11=
pt; font-family: Calibri, sans-serif; color: rgb(36, 36, 36); background-co=
lor: rgb(255, 255, 255);">
&nbsp;</p>
<p class=3D"x_MsoNormal x_elementToProof x_ContentPasted0 ContentPasted0" s=
tyle=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; col=
or: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
Executing: /usr/bin/python3 -u /home/msalehi@invariant-corp.net/Desktop/Fre=
q Noise GUI/GNU Radio Files/awgnTwoChannels.py</p>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.=
0.0-2build5</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
[INFO] [X300] X300 initialization sequence...</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
Traceback (most recent call last):</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; File &quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/G=
NU Radio Files/awgnTwoChannels.py&quot;, line 466, in &lt;module&gt;</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; &nbsp; main()</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; File &quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/G=
NU Radio Files/awgnTwoChannels.py&quot;, line 444, in main</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; &nbsp; tb =3D top_block_cls()</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; File &quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/G=
NU Radio Files/awgnTwoChannels.py&quot;, line 142, in __init__</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp; &nbsp; self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but got =
39:</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
The FPGA image on your device is not compatible with this host code build.<=
/div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
Download the appropriate FPGA images for this version of UHD.</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
Please run:</div>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&nbsp;&quot;/usr/lib/uhd/utils/uhd_images_downloader.py&quot;</div>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
Then burn a new image to the on-board flash storage of your</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
USRP X3xx device using the image loader utility. Use this command:</div>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
&quot;/usr/bin/uhd_image_loader&quot; --args=3D&quot;type=3Dx300,addr=3D192=
.168.40.2&quot;</div>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; fo=
nt-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, =
&quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helv=
etica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgrou=
nd-color: rgb(255, 255, 255);">
For more information, refer to the UHD manual:</div>
<div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;, &quot;Seg=
oe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-system, Blink=
MacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; margin: 0px;=
 color: rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<span class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size: 15px; f=
ont-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West European)&quot;,=
 &quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Hel=
vetica Neue&quot;, sans-serif; margin: 0px; color: rgb(36, 36, 36); backgro=
und-color: rgb(255, 255, 255);">&nbsp;<a href=3D"http://files.ettus.com/man=
ual/page_usrp_x3x0.html#x3x0_flash" id=3D"LPlnk919139">http://files.ettus.c=
om/manual/page_usrp_x3x0.html#x3x0_flash</a></span><br>
</div>
</body>
</html>

--_000_LV3P220MB1054879CBBCDC948F78CF922AE14ALV3P220MB1054NAMP_--

--===============5215899598296968641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5215899598296968641==--
