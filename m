Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D212F9EC
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 16:43:51 +0100 (CET)
Received: from [::1] (port=57716 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inP73-0005d9-UB; Fri, 03 Jan 2020 10:43:45 -0500
Received: from mail-eopbgr680076.outbound.protection.outlook.com
 ([40.107.68.76]:62017 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1inP70-0005ZR-1Z
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 10:43:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaKmmmnLMa4qbAvvrMFMLOdjrF4bH9wRavJzkHulGSGQbThZkA2+cipfipxxwShE/dzrniMov7r+7rGE6PvtVuEgEGhGuzemaGliOyMd6+K3QXPelxzjD1zA3+fmBw410W7VqNPaQlnyWA7k2a2UXn8rRkLE6SbXBSm6gGCh8LtEkivjxmUTqK4lf7bx6znDSyUOWm7HML6trZy7p26XsipeNYa+ccGLGqnG45bGs4RWc7hgMV3LA2qECYcXRo3J90/FzxD+QaenNLj1nvpZ3Z8J3ngM/0UMmuQZi1d/aIB+Cc0fUkMYnuCf/RNGa2M6Bb6NgNtYUYaHP1q7u0JWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/n7H5DdyHnoD79KsGZu3aFGvE7Nqm4fNTOLvXniuGI0=;
 b=E2cdyOjaXeZ54moSnT1T8yO7ZVl5gCKus5pEH3rVgub3n++GwF7YgrF1TH74xfteDfjPUXX2Yh8bAaj1sw3Q9mLN6x/6dA1ouaCYG0X2KdkiuOUx4PyaOxlYscl060iws0i7ATy7doJNjwSLQu/aGR46LEkQs9LvEviu2XN9m4qf492hISlyANVIehzA3VeI3Zw/wTWah2Oaie6/rsaJ6S0852XVU1wrcJUTAaNqo5WwTjUP3NMdBlyD8eA+e1aU5Z0JzUSlX0n/hEsB1NiKQ/Y+clJtBF8DC/uxXATg9bdYVElh6mambrOU5jqtXrS9sXNKchScbzvAemeNTWmuZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/n7H5DdyHnoD79KsGZu3aFGvE7Nqm4fNTOLvXniuGI0=;
 b=HaJXr9ThDlYKB6bB+EHL+OJYTK3PcvnbcvcCA//OkE/RpweTx6UsXyQ5+0dYxkGahSJVMPEatS9Lnw4PztFZ/RBNj1xywltNaWDe1T90lKodW8VdCfl1JpLpVV8rHAb33FuvojZK5YQTX5gySiVrKLmJl0WQy0OhlLIoz+uBWKI=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2217.namprd19.prod.outlook.com (52.132.147.156) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Fri, 3 Jan 2020 15:43:00 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324%5]) with mapi id 15.20.2581.014; Fri, 3 Jan 2020
 15:43:00 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run 
Thread-Index: AQHVwkx5t1k3hE6ezEiGldcoEpdv8A==
Date: Fri, 3 Jan 2020 15:43:00 +0000
Message-ID: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fa20c2f-c233-4ac9-bb08-08d790639ccd
x-ms-traffictypediagnostic: MW2PR1901MB2217:
x-microsoft-antispam-prvs: <MW2PR1901MB221770F1D0732FC9BEA68D40C6230@MW2PR1901MB2217.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(39830400003)(346002)(136003)(189003)(199004)(53754006)(7696005)(66556008)(66476007)(66446008)(64756008)(19627405001)(6916009)(5660300002)(26005)(316002)(76116006)(66946007)(4744005)(4743002)(9686003)(33656002)(55016002)(6506007)(2906002)(44832011)(186003)(52536014)(8676002)(81166006)(81156014)(86362001)(8936002)(71200400001)(508600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2217;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cmIc5Un7MgK2t8SoT8e3WQROdOKM47YZiOLEkhJfEU0chFAlnBRbjX8KToEAoc/J/Gv7hZViZbkf5GFU511sY8tEp9daVs35aC1jukUr2Bzaac9J3/LwCmP851LH8S9jqXrIfyMzdhMB++t5mdYOLLwhFkwGvTjHN9+YnmadXHAZHtjmyXMt0u0daJFs0kwz7l9iWq7vaiYc0BFYYPLPZzt1OVq4sVSz0BYsheNlsgM5DmfKi5lO748WEe1YMxeoaUFeGD9Qtv+YD6dBaBiLcLIBhNZoSntTbqcI/b2S9o2pOCuYhGKYpaEz90PHj0EWriKprUbOTnWHfyGKXXWMfWltvSRQDXsMO6u0ycaB/y85MXhXmSeXpP3iqU7avC5vn28r/t+DrWzz4/AlPNLaqhTrR4OBAVOvBctFxjy52woT2G+aycWwQhmkWIzHmFb0hH+6DWk7gRJV3D3YW4qNUahsJUGjZpMevXjuWuu4lTu8+kLy0207vnmU9I4j6QbD
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fa20c2f-c233-4ac9-bb08-08d790639ccd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 15:43:00.1156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pCl5eNORk/BgrW0CfuMXNxMVJ7232kbSCfCQFO4DRQezy0b5Kclek7SdVT0oskFRX272JpSyRylO2ZtJ2QVcQvl9qW/umsN/D4ZOSfMXYNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2217
Subject: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============2117864384599885062=="
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

--===============2117864384599885062==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB2137B5985ADB1D60955CA0E6C6230MW2PR1901MB2137_"

--_000_MW2PR1901MB2137B5985ADB1D60955CA0E6C6230MW2PR1901MB2137_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey All,

So I recently started having issues with the uhd_image_builder_gui after do=
ing a fresh install of UHD and GNU Radio with RFNoC. Below is the output of=
 the terminal when I try to run the gui. Anyone run into this issue and kno=
w how to fix it?

Traceback (most recent call last):
  File "./uhd_image_builder_gui.py", line 656, in <module>
    main()
  File "./uhd_image_builder_gui.py", line 652, in main
    _window =3D MainWindow()
  File "./uhd_image_builder_gui.py", line 71, in __init__
    self.init_gui()
  File "./uhd_image_builder_gui.py", line 149, in init_gui
    self.populate_target('e300')
  File "./uhd_image_builder_gui.py", line 608, in populate_target
    with open(build_targets) as fil:
IOError: [Errno 2] No such file or directory: '/home/ck/rfnoc/src/uhd-fpga/=
usrp3/tools/scripts/../../top/e300/Makefile'

Best Regards,

Jerrid

--_000_MW2PR1901MB2137B5985ADB1D60955CA0E6C6230MW2PR1901MB2137_
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
<span>Hey All,</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>So I recently started having issues with the uhd_image_builder_gui af=
ter doing a fresh install of UHD and GNU Radio with RFNoC. Below is the out=
put of the terminal when I try to run the gui. Anyone run into this issue a=
nd know how to fix it?</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>Traceback (most recent call last):<br>
</span>
<div>&nbsp; File &quot;./uhd_image_builder_gui.py&quot;, line 656, in &lt;m=
odule&gt;<br>
</div>
<div>&nbsp; &nbsp; main()<br>
</div>
<div>&nbsp; File &quot;./uhd_image_builder_gui.py&quot;, line 652, in main<=
br>
</div>
<div>&nbsp; &nbsp; _window =3D MainWindow()<br>
</div>
<div>&nbsp; File &quot;./uhd_image_builder_gui.py&quot;, line 71, in __init=
__<br>
</div>
<div>&nbsp; &nbsp; self.init_gui()<br>
</div>
<div>&nbsp; File &quot;./uhd_image_builder_gui.py&quot;, line 149, in init_=
gui<br>
</div>
<div>&nbsp; &nbsp; self.populate_target('e300')<br>
</div>
<div>&nbsp; File &quot;./uhd_image_builder_gui.py&quot;, line 608, in popul=
ate_target<br>
</div>
<div>&nbsp; &nbsp; with open(build_targets) as fil:<br>
</div>
<span>IOError: [Errno 2] No such file or directory: '/home/ck/rfnoc/src/uhd=
-fpga/usrp3/tools/scripts/../../top/e300/Makefile'</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>Best Regards,</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>Jerrid</span></div>
</body>
</html>

--_000_MW2PR1901MB2137B5985ADB1D60955CA0E6C6230MW2PR1901MB2137_--


--===============2117864384599885062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2117864384599885062==--

