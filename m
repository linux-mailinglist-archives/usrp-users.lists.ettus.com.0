Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E65111AB86
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 14:05:04 +0100 (CET)
Received: from [::1] (port=53670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if1fo-0004qY-Gz; Wed, 11 Dec 2019 08:05:00 -0500
Received: from mail-oln040092009053.outbound.protection.outlook.com
 ([40.92.9.53]:58692 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1if1fl-0004k3-7G
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 08:04:57 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsKuIAZuo8OhsRewlDQhtbHNtUVIbrUCGmsKc0//YBSwgXaTQfpxKCcW+YNetqS5dl88wr9MNobTOiPYcFLQYJzDPue709DNUFFbKsH1LW9IF5NdS6EhPYMfgetp6OVin3uc7GXS80Yu0JJUpxMsh7xEU+Jbbk/e+WTHVVVgGtPnHXC6Uec/Jdi6mG6RjmEtIu9KclB0VhmTftLbc26GBqGmo17gzSNlzMmFbNafO5jUo3rkhgqwejrxB6bbjLWD7BxdeoQw1SiIfBOk+qsKmKFbIN9CPpN/Ua5NUMKIgNOC6rbbRUSu2C7s/C8RQSkxRIa1MNwjMJZMyupZ4OMEbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ncLIaPgDZWVU6ey+BfIwyCdZP2rdv2V7xTC00IRqlHQ=;
 b=JykIY9SLve48foD4nHerUSIEaC18bEPV/iQfSdYm+bLLmaBN9U/lyvMc9Gumv7PHT/bFYDa/bmyeR7HFnWD2CEN65NJS6Kskr2q037Nxb0bqVli2HQqSO+hUNq8TTr2pH7EWdR1v2YkhMl4kzyAQc+oHYLnMvfaNktHe7shiAF0SXszrbJQcoOWyCfC8/EaRTUbL066x4y9nGV06/Izl4Ao6RonOu4ctrdeUeOd32LtX9uooX2g8UHSpFXA8YdyUgwEtKzCmKaS9lxaZU3GuC1hlByttSstyw/Zu6HHw6x7dF5E5SmB9hbR7bKRJbhLoad/eoUyT+8SFN8vfWT+Tsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ncLIaPgDZWVU6ey+BfIwyCdZP2rdv2V7xTC00IRqlHQ=;
 b=GGacxSjAB4dFyYqWwiliHW6Y6W8R2yccpe/VhgxrOJt4jxF5/Ua9k/DS3GtUrWYOCZnJmRbcGMwNMlclmRmG+GKR7lNqjREch76XYza5k1yT9pD/oH4e+Imoa5V/7EZ+LNElFSq751RFgZhMxeNUWMtiP+WN+TjFnZuTD5yhJJldcZ2SFmYNgCaSc0dwpQ1kEeO0dQuYWHhxJwavuwRHZufTGkuP6ixxE5WZaA9Kh01gMTm03xTP1yTltVFEBm862h1IYmJQj3LAA0h1eHsPT8fyKpk7guknGvnpXLwn1NcMSRy+4twLzJZdkoYJlTMk4+xEzbJ4vRbrFmNV9+FOiA==
Received: from CO1NAM04FT023.eop-NAM04.prod.protection.outlook.com
 (10.152.90.53) by CO1NAM04HT242.eop-NAM04.prod.protection.outlook.com
 (10.152.91.153) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.14; Wed, 11 Dec
 2019 13:04:16 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.152.90.53) by
 CO1NAM04FT023.mail.protection.outlook.com (10.152.90.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14 via Frontend Transport; Wed, 11 Dec 2019 13:04:15 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2538.012; Wed, 11 Dec 2019
 13:04:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Versions for N310
Thread-Index: AQHVsCK6zJwc/JwUtEO7wQ37U3w34w==
Date: Wed, 11 Dec 2019 13:04:15 +0000
Message-ID: <BN6PR19MB1635ACC0BE31FA7420204D29A45A0@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:BC69503342B88507C9F187A44EB3C3F0475A023C9B456E1568098B5D25F1176E;
 UpperCasedChecksum:072795E4422A8C271456F0C5A2706D01FDE7427BC7DBA2BEB09EBC61D48BD694;
 SizeAsReceived:6680; Count:42
x-tmn: [c5TI9a8lrDLJcJMBiFluq3f1JoScd5pd]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fe5598e7-d508-4e51-9b10-08d77e3a9fef
x-ms-traffictypediagnostic: CO1NAM04HT242:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BviSjHjxfIGzLDpmpHssQ/C+uKYYNCSFulxAh66QnKhqd73XIVVbgHCEWh9W+QsmKOhwhWfRyZ+zw3DIfJ0z2x41TRnyUNorn8RgXI245YvgGG2rMAAf5uzlJXyz418c4e4pJ6FH1pGDWLaE2g+53cZg9kWBYZ3oOr8E9HobE4Bz6BXbSSk/sF/FBqfju7WS
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fe5598e7-d508-4e51-9b10-08d77e3a9fef
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 13:04:15.1308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT242
Subject: [USRP-users] UHD Versions for N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============8027401825585239392=="
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

--===============8027401825585239392==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635ACC0BE31FA7420204D29A45A0BN6PR19MB1635namp_"

--_000_BN6PR19MB1635ACC0BE31FA7420204D29A45A0BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

For an X310, I am currently using:

$ uhd_config_info --version
UHD 4.0.0.rfnoc-devel-702-geec24d7b

I would like to update my N310 to the same version  as my X310 so I can use=
 it in Network mode like the X310 without having multiple versions of UHD. =
 Since I've had some version configuration issues in the past, I thought I'=
d get a jump on it and ask before trying.

Will the above version work for my N310?

Thx.
Jeff

--_000_BN6PR19MB1635ACC0BE31FA7420204D29A45A0BN6PR19MB1635namp_
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
For an X310, I am currently using:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>$ uhd_config_info --version<br>
</span><span>UHD 4.0.0.rfnoc-devel-702-geec24d7b</span></div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I would like to update my N310 to the same version&nbsp; as my X310 so I ca=
n use it in Network mode like the X310 without having multiple versions of =
UHD.&nbsp; Since I've had some version configuration issues in the past, I =
thought I'd get a jump on it and ask before
 trying.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Will the above version work for my N310?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thx.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
</body>
</html>

--_000_BN6PR19MB1635ACC0BE31FA7420204D29A45A0BN6PR19MB1635namp_--


--===============8027401825585239392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8027401825585239392==--

