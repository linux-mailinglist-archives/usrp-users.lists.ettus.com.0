Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECD877457E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 20:42:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AECF384120
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 14:42:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691520171; bh=H1msnr1qjnwEUUzrQlI8GiiQX1dvTiapmAlf/iTiaiE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UgNXVdNkfrFhOkvyHKEIeV3llKOFqaZ2RmUtspMP04aLh08Sdh+aPsi0J261zLDOk
	 ykZrq/5Pc1MgjzhQZpoxXVhR2fn70Y6CyTA5KSyd+0SOitlmSKjTh1XHZ1lgPQ1fAw
	 qnqBrGaD/gCcsUBA0vh89kXNXI90t5KHPNqypmUxyhzpC2/LEOUDoxtFwVixoTYDY4
	 qf+sjp2cIMj73JLcS62u/zOwTQrcMSbK7QK4Zd4DabtRbF2Svub8oHqJebjYC0gjs2
	 rQZ/F9S7iU5Yodv/yQP3AlJfZFROXHiYU+SBh+SI4OjkLFMKgkCeMiGK9N4gBYetlg
	 xeSoT89p+LNZw==
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02olkn2033.outbound.protection.outlook.com [40.92.15.33])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DE49383FCD
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 14:42:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="qyB99LMU";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lvRQOwpKn79WD2D61o/j1MemSgsw7qPUUUxP8lDsyEBcgbyEaBOEoCRYinUMJiRgYm1GaeY2Gyhvs2JBUSjFdaY91G1RwiFOlFxR+8MhbuO1bPz4Ox63cnJJIwcT8KBT+Ha4Pk2Vg9xb+0lxTR9muknMA+X2pAAOZmgzFnWcZOTsp6qgq0FbZEh44hXUqoRURzzqTh8cb8L63t4fsXtZgoC8qAy3w9qoGhS6BZkSCODIhEWmATh9lBAEF7EaaFAGbUxB0G1td99AKtFWFfSOV/3o5vnNGtDb9F24Keh0NeOa1RtB9vVV8sJr1/St/+TGXVsgLRoD080BRnwcSMcSkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k25wKrk1WM50KEr7gps8f/lRFwFTzsPX5E4w1Z7fu14=;
 b=moxg3r0yixzUo1x5LGKZBZ1sfynX4VuIG1fp87yiOb66MWzKxG/PnrOZMRUiwNiTis5HVyRX+e2lJEzhk7AcQAKbodTPkHMLK7IfKaoBTnqaheRXASGl0kV+Reie4r6fGo3WC7HegOUXxUycPAAxIZEAcXVg5xKrhsZGLFP8+9GXZCNs0QJKLOXTovoWDeR6Gdc4KIj1AmnA8s/yOErNVu5MNLbnKO0xyrh+6I/LWVYCCFPhBFx16ZjyndQXSPRGdFczr+su0sto1x1CVpt+z6hfbB8nh7/eBnv4tQ5fY/INtFKRgbQZY0y4HTzubWlDPPKZXZBoYQmGysBXw0Bjog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k25wKrk1WM50KEr7gps8f/lRFwFTzsPX5E4w1Z7fu14=;
 b=qyB99LMU7U1R2EEGumHBxcqUtjpGe6pSkg7BRaFeb+bd6tj6tfd0SjFtDkEoNqLZxpyPtwGUBuKdHIVFSv4VJLqJzDuRG+n+5rZI+AHjSGjbmzsfzlYK7LMn/phcfx7BKfB/NGXbYIxZmDZjM9DYK+Xx4B+hCuz2cz9IO/LYnBs26TMFB0QNrlCizqqj/s+hfFkP8RBGxwqndB2qdwuTeU9YcTcvlEiTu9+gAPKjf/g+6/R5td+ocjrOwvFnWJFQMDYvDBNEfBAIcTe44+VwP0/JDWH2S1dk7fqSiTAE6PtqQ7WgfjojvztiEP5ro+B3TCkgaU99ozabdgo+JCcs8Q==
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM (2603:10b6:408:1d8::6)
 by DM8P220MB0343.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:3a::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.26; Tue, 8 Aug 2023 18:42:14 +0000
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc]) by LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc%3]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 18:42:14 +0000
From: Michelle Salehi <herrmlm@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Advice on transmitting trigger signal before pulse frequency on
 ettus x310 and GNU radio
Thread-Index: AQHZyiejwqb6OHMa0E2VmpQg9OFJcQ==
Date: Tue, 8 Aug 2023 18:42:14 +0000
Message-ID: 
 <LV3P220MB1054372917627DB02D39F676AE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [wYAQ0dQCl3tBBAJIxYttvwzrbd4uH0PK]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3P220MB1054:EE_|DM8P220MB0343:EE_
x-ms-office365-filtering-correlation-id: 419a93fd-34bb-40ea-1c68-08db983f2f4b
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bWgqGPDWxRIQWf3LK3v3FMOxENJ12YjXrwG2BSF4DZjy1vnR1Pw0K84Y9i6zmFyJWEvxqHyIXS0xDx1sj+wK60h5fnLGzx1TluK2OBDdgFass/WSc55LlYJyAFhXuvY14Izp4/2IslNr9CAnp6KTLXy7q1UKUtjmoc1Br2eG4CvfL/KnZY2MYwQCqKM2hxzk/AsGN2yKsOSqiYX2lHtmcyDTZ1WdwAlPvwlv93pjEmMN5EE35YXI4axd3T4TJDp1rn9Th40xNjmtSDP1BL9z55Sqx5hT8H6Ix1yEX73sFfd1ZnsNyD9te58mw6MJF3zl6NSNW3lBP6pzdM85u0v12LxXdy/P4kjOBRxLXh5WRcfv3ppagUvnLWlS0wH4Xt2gOFMbVrWckNELKPXBdT7ECJwKW0VhDNc61U63lrj4svBHC7YQHgwBwpwMqZj4P7gXd5F7aZFkPElRiBRTmrIBi/sDEf292cOHgGPWO8ySgPh0Myuvawenn1jAAIY9roRjn+d8Y9x9GBdqK7ZeOBUUGRjyGZOhTVpc3rR6oMUkmY2ggRRBcaD+WUu11/Vup5cf
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?o8MUyBdmPP+ch8VKjNgfUMOQgOdRkMuvUMOpyp3ftQ8yoL6DZLt7hN1FTT?=
 =?iso-8859-1?Q?fX3uxPqZE8jIeGwGIM0NyIFCEMn8H28Mqx6tlpUfjOzstrXojXOB7L9X5U?=
 =?iso-8859-1?Q?NDW5DSDG4qbDI1x3WbW85swOxrdShxnc5e4pIIQFlXLbJj3K2OSzq4NxXW?=
 =?iso-8859-1?Q?JTNpjlomtz9VXXcO4ATDL/55PEEliCmJF/Ih5o5947eceQAvE0vuOWd9+y?=
 =?iso-8859-1?Q?cAdF7b5Cml2mJjeySNMGklf1Lg5fTxGUkwo86AFMCk9Ycdccgbqd2LZuoj?=
 =?iso-8859-1?Q?lhhcGACYzVMecg572jA3okHEC9gmg2ziv5drWZbPQA8Z2duZOY+wZJlCAY?=
 =?iso-8859-1?Q?QaslM64gJWRl7HBoQbPfAMwcnkd4Ar5gw5qnxN+Ca3QFuvQWL9u2zBX6ed?=
 =?iso-8859-1?Q?LHegp5dAWHT63UZ+XO9nIpNuGykcqiUwKaN5t3eOI1rl9Ru/0xkotmS3x4?=
 =?iso-8859-1?Q?nOjefqyV5ROptpuqPoBHl+xm0oLA2a0ZXiB5vjF541XPXX9OstrUxPhYsz?=
 =?iso-8859-1?Q?t2Iqr/whuSMw1+KHmuC6o8sMeiIzcRstIjsQPxcNJxAqrfqwhuhse192GG?=
 =?iso-8859-1?Q?UkLEaBcEZphkkJTWC1rqznEsAArsrJSLfNSks5+VldhtLEXnIgfCIuplZV?=
 =?iso-8859-1?Q?CfQ7M9qGYOdfkk1PAUukEQgJ6HW1xDWeTOs2wZgw/RRU3sO9HM1axUgc+z?=
 =?iso-8859-1?Q?bGHQEttS7erx8gTBDBZQmauyIRy+Owe8mQhhmOFBVra9xXaqkg2z7qiOCx?=
 =?iso-8859-1?Q?mtYsqUbinF/GcyD9Zhj0xA0TaFRKnx8T63uY23U+B0SUutEqTiJLeDTf+x?=
 =?iso-8859-1?Q?Q14Jf6tyVMaeZeJVuxBJpFBpizb0d4djygah6QvoOPyQvhDJv+VgzqTkhP?=
 =?iso-8859-1?Q?DVk+46eAhEVgSe3oIL7B8GZbdlMdXlqtJot+EQBRdyZR6qQH7vsQ4Ny/gH?=
 =?iso-8859-1?Q?hHu91E1xIF5dxAbp0GTGOMt4TLysE76nYdr9PXsXEkYn7nOX/StZxV3PBt?=
 =?iso-8859-1?Q?dhMFEUgoBcAZRs/nHrxYnW+T8AY+RgNpQ/YtQTuyEzsETVtH1WjwLYAeEA?=
 =?iso-8859-1?Q?SCb14g/U6SpFY0cV5B4w0ZDSJQ9HYPzysMkDVK9FMXNb2b/vMBCyJ0Z20h?=
 =?iso-8859-1?Q?ym8xLiDRUThB8EmlkzaFf+NS08j5ghR4NXbP2ySbeXRo0EOUs93y1rXifD?=
 =?iso-8859-1?Q?dM7QEvA5F1n8K9rTXtlirDOItEF15N52OLu9ZA5fXohC0ioLYOMtNOF7Yb?=
 =?iso-8859-1?Q?E/kmONY0I6A6aAz1B+SQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3458f.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 419a93fd-34bb-40ea-1c68-08db983f2f4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 18:42:14.6280
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8P220MB0343
Message-ID-Hash: O4MTJO643D3Q7GNUJY5YOFHT6XAJFBEC
X-Message-ID-Hash: O4MTJO643D3Q7GNUJY5YOFHT6XAJFBEC
X-MailFrom: herrmlm@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Advice on transmitting trigger signal before pulse frequency on ettus x310 and GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJWCOUOQUTR5R6533LV4HBEJ556SDBNO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3234368027395639711=="

--===============3234368027395639711==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LV3P220MB1054372917627DB02D39F676AE0DALV3P220MB1054NAMP_"

--_000_LV3P220MB1054372917627DB02D39F676AE0DALV3P220MB1054NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I have a pulse frequency setup in GNU radio to transmit through an ettu=
s x310.  I need to add a TTL signal right before the pulses and have it tur=
ned off right after the pulse.  What is the best way to send this type of t=
rigger signal on an ettus x310?

Thanks for your help,
Michelle

--_000_LV3P220MB1054372917627DB02D39F676AE0DALV3P220MB1054NAMP_
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
Hi, I have a pulse frequency setup in GNU radio to transmit through an ettu=
s x310.&nbsp; I need to add a TTL signal right before the pulses and have i=
t turned off right after the pulse.&nbsp; What is the best way to send this=
 type of trigger signal on an ettus x310?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks for your help,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Michelle</div>
</body>
</html>

--_000_LV3P220MB1054372917627DB02D39F676AE0DALV3P220MB1054NAMP_--

--===============3234368027395639711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3234368027395639711==--
