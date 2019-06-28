Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C82215A716
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2019 00:39:40 +0200 (CEST)
Received: from [::1] (port=48098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgzWl-0001dP-HF; Fri, 28 Jun 2019 18:39:31 -0400
Received: from mail-oln040092064025.outbound.protection.outlook.com
 ([40.92.64.25]:36094 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <andrewjohn83@outlook.com>)
 id 1hgzWh-0001Yj-7O
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 18:39:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VMI7Ewht5xHxxTZMn5QNaAAcUq1Pji57KmNA13e4Jec=;
 b=fItUnWN/NdGxr6m1HAjVf2kXKTbjvO+AvLmPlGMwFmMuvPzRhEmlRMIE37lN4wuweukWnm6PLRNG7gARO3PBqjRE0Vd1yrASP1i4lGBPk9f1kwkQEMVHHxzNKvnsLhShy1M3IdMQmhMmhJ4ufJpaeEamQPpUh+eNvf29ynoL8PBdDAO943HwJRqjqJGIfOaoWae3PoGFJyraY2hTIWxRJgX0/xGheqPoTIWUUPZfudzJLRGzfbL4DXtaNCh0+QGC5Dv0fixYTTenN+9AOH/s4vLPWvqTMQbBDbOQYN4Iwo3+bi4c+vQcHobfmSRX+6MqS/70g/XW3zNVa5C7fZW2oA==
Received: from HE1EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (10.152.0.51) by HE1EUR01HT130.eop-EUR01.prod.protection.outlook.com
 (10.152.1.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.15; Fri, 28 Jun
 2019 22:38:45 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com (10.152.0.58) by
 HE1EUR01FT038.mail.protection.outlook.com (10.152.1.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2032.15 via Frontend Transport; Fri, 28 Jun 2019 22:38:45 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74]) by AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74%6]) with mapi id 15.20.2008.017; Fri, 28 Jun 2019
 22:38:45 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Version
Thread-Index: AQHVLgIVYXBUDKgcbkKwh/P15PWO2w==
Date: Fri, 28 Jun 2019 22:38:45 +0000
Message-ID: <AM6PR04MB5222C69E5980F3B69F765129DFFC0@AM6PR04MB5222.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:38CEE0D8FE07EB4B851D1D9F94D6AA4012CC1FA609BCCE5DBB37C2AC8F7DE1FD;
 UpperCasedChecksum:4F361B40E413700D0B33ACA40B9FF6C0BBDDE957FFF0E48CB56E758A23B5794F;
 SizeAsReceived:6631; Count:40
x-tmn: [YmGlgRVEAh/UVlAOx30M14PcJk+FgybdRSM36S09Ryje3unJ2Au5AGXsfQyy7tXK]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT130; 
x-ms-traffictypediagnostic: HE1EUR01HT130:
x-microsoft-antispam-message-info: DJyjORBtKlSSUPwEGtHTykWFdf6UAej5mdXfmiMeYlgh5xmVVmG2E+zEUKrwKsyFuYDAVcDYTBJsWh8nW0iAS5X46B+00mMOZKelOyJOdaq4MBDSotAsmexHmG4V6lBMwRK/0yF432MMDfCvf03hZroWYB4ZS80+spzQXgRwUfow+eo4+ukCbHlhanpax6YB
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c1b3d5-1b08-44a1-21d7-08d6fc196172
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 22:38:45.7506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT130
Subject: [USRP-users] UHD Version
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
From: Andrew Thommesen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Thommesen <andrewjohn83@outlook.com>
Content-Type: multipart/mixed; boundary="===============0387167461466822367=="
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

--===============0387167461466822367==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM6PR04MB5222C69E5980F3B69F765129DFFC0AM6PR04MB5222eurp_"

--_000_AM6PR04MB5222C69E5980F3B69F765129DFFC0AM6PR04MB5222eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

When installing rfnoc using pybombs is it possible to specify the version o=
f UHD that you want to install? If so, how?

Thanks,

Andy



--_000_AM6PR04MB5222C69E5980F3B69F765129DFFC0AM6PR04MB5222eurp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
When installing rfnoc using pybombs is it possible to specify the version o=
f UHD that you want to install? If so, how?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Andy</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<br>
</div>
</div>
</body>
</html>

--_000_AM6PR04MB5222C69E5980F3B69F765129DFFC0AM6PR04MB5222eurp_--


--===============0387167461466822367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0387167461466822367==--

