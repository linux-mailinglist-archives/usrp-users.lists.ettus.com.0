Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 728E8F73B1
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 13:19:22 +0100 (CET)
Received: from [::1] (port=50038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iU8f5-0005Ve-PR; Mon, 11 Nov 2019 07:19:15 -0500
Received: from mail-oln040092008034.outbound.protection.outlook.com
 ([40.92.8.34]:38813 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iU8f1-0005Pk-Ro
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 07:19:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eoRFxNrLOQAVNBMVZ/h5hLB5BV52F12k25Oyx4vUuNAJ150K4Uw/zDx+3Qw5uMaWrV6Ly32cOxrcrB7tg86tt+jif9I688cXoLGNUYnHWhlzxMakPj2uGmQIywvEfRrXnp49MQ0utT9QVBy/Aqbw112kZ756wFf3tZoXuqzbQeSN1E9WmO/u9lpiD7BdU1ild8LdOd5Frjg9ShO5S3zuj55LB1D2GOLcAR0HlNpY0tFGsa4cKsOPVS/9mghXj93I5NxjmVR6PSrvMuRHnXggCb69AUf0Ez4O2kWtTj4tnWaL1UO/ErulzCJLFsjC0vDpFjPJ3AIJ22LKYmTc3yNk/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzUtdrnQyJOrP58CUQcSPbkWPPaTZSgqrSoDaMc04MA=;
 b=KC71I1xF6iu/GHk9xvOBlCiUlu9grD+8wRJI7Fwn57NhbPpO38al2RqrsngxuwREgxECXzuggx1yAUuHgkH1hbscD0+Wy7rbQczINk6RKsgfpn5osYOV0lDUhwJb8R1F6NNV5qIL09G4qIUHwNFZOIgFP/MjIoX/ztCJOnsLjy44zJeU3yIDqOIJjxVBMoZHYJ2g2UxTUf8akRMbY9LTARUr/xDFv11WqGI3uJ2XMZTSuUJPXS57jAcB3c+LPR0Iyuvumq083aeZHnUsivJEbn0HXLCCHYgwnL+CHpzUS2kNoMHYcSUENwkb9/BVMvISG/tHegg/RTqjrmIuFlSX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzUtdrnQyJOrP58CUQcSPbkWPPaTZSgqrSoDaMc04MA=;
 b=bjUXg0beiBZZINEjKsAvXuqMzqvnZ1OJZzK6bx6GHGdmMQ1gcTCvhSL5kwOBaYP3KpCKcqMHgWkHw7xNkMvS8H5mS2tXkXWzn2CiZn5PHT7MJrDlwxidvWkRSTi+xOjsTgD+BCodahlt87x55tLQ5xWXXF2KxsPum9+TVVyNpTQInonG2kAJQgoVbwk0oPlXSW+yPylhS3Lsw5+dBG4ubWXgrqMduc7AReAFYKhcbdu4fkswkB3dpuUdnRc81OWhluKI+vj7nFxQEMEYy38fr61RvlTAxA2Vui+I7XqQcxat2Ov7LbP+uOAN0bCtGEnKnd/ALelErT+Nnucp4NKPEQ==
Received: from DM3NAM03FT030.eop-NAM03.prod.protection.outlook.com
 (10.152.82.51) by DM3NAM03HT137.eop-NAM03.prod.protection.outlook.com
 (10.152.83.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.20; Mon, 11 Nov
 2019 12:18:30 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.152.82.52) by
 DM3NAM03FT030.mail.protection.outlook.com (10.152.82.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2430.20 via Frontend Transport; Mon, 11 Nov 2019 12:18:30 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::bd1d:f9bf:71cc:36d9]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::bd1d:f9bf:71cc:36d9%11]) with mapi id 15.20.2430.027; Mon, 11 Nov
 2019 12:18:30 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Virtual Machine (VM) Application Note
Thread-Index: AQHVmIkEryRQNIwjYEC0WJST+AXVWA==
Date: Mon, 11 Nov 2019 12:18:30 +0000
Message-ID: <BN6PR19MB16354D6DF912FDD8DD841069A4740@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EC773B4CC3E7FD4F11FE52C7C6F7DF4E79B3D10C925A4779CA6F8E3A3EA90EAD;
 UpperCasedChecksum:E7016C1EAF5D5ABCFDF90C41BA67727B1C24CDE32AAB97D65271EBF4BBD5712B;
 SizeAsReceived:6676; Count:42
x-tmn: [HIvD2cGtWBgD5bzDqJ0ZE3bJM5wHosFH]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 869c87d1-561f-487a-8272-08d766a1436e
x-ms-traffictypediagnostic: DM3NAM03HT137:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aaR24lVulwKOeq4ePgqrSdBVaxZRN2pXvPwlZ5Vhgqlyj6iHdt+iWqhTvca48kPE9yB4J5raja+HWpUu+TUxqBLTfq2YD6WxMRpa4lkMiVDXgT6+j+J+CXkN3AX4KthkzV+9jfXc64UKWefpWhRYtk9wjfOzhoAkQQ5bbMz6O3lrLnoJRsJXMEcqqFzHUEIJ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 869c87d1-561f-487a-8272-08d766a1436e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 12:18:30.2588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT137
Subject: [USRP-users] Virtual Machine (VM) Application Note
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============6763204909376042855=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6763204909376042855==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB16354D6DF912FDD8DD841069A4740BN6PR19MB1635namp_"

--_000_BN6PR19MB16354D6DF912FDD8DD841069A4740BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Application Note AN-445 has a section that references "Using a Virtual Mach=
ine (VM)" and says that there is another Application Note which describes s=
pecial issues regarding VMs, but does not have a link to it.  I did not see=
 anything in the list of application notes which seems to match.  Which app=
lication note is needed for VMs?

Link used for AN-445: https://kb.ettus.com/Building_and_Installing_the_USRP=
_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux

Link used for Application Notes: https://kb.ettus.com/Application_Notes

Jeff


--_000_BN6PR19MB16354D6DF912FDD8DD841069A4740BN6PR19MB1635namp_
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
 color: rgb(0, 0, 0);">
Application Note AN-445 has a section that references &quot;Using a Virtual=
 Machine (VM)&quot; and says that there is another Application Note which d=
escribes special issues regarding VMs, but does not have a link to it.&nbsp=
; I did not see anything in the list of application
 notes which seems to match.&nbsp; Which application note is needed for VMs=
?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Link used for AN-445: <a href=3D"https://kb.ettus.com/Building_and_Installi=
ng_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"LPNoL=
P126935">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux</a></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Link used for Application Notes: <a href=3D"https://kb.ettus.com/Applicatio=
n_Notes" id=3D"LPNoLP860032">
https://kb.ettus.com/Application_Notes</a><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<br>
</body>
</html>

--_000_BN6PR19MB16354D6DF912FDD8DD841069A4740BN6PR19MB1635namp_--


--===============6763204909376042855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6763204909376042855==--

