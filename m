Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E9517B1EC
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 23:54:58 +0100 (CET)
Received: from [::1] (port=54140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9zOI-00030Z-3v; Thu, 05 Mar 2020 17:54:54 -0500
Received: from smtpvmsrv1.mitre.org ([192.52.194.136]:54412)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jplong@mitre.org>) id 1j9zOE-0002vU-5c
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 17:54:50 -0500
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
 by localhost (Postfix) with SMTP id B59726C003F
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 17:54:09 -0500 (EST)
Received: from smtprhmv1.mitre.org (unknown [128.29.154.203])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id ABE5D6C003C
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 17:54:09 -0500 (EST)
Received: from mwfesmtp-mgt.mitre.org (mwfesmtp-in.mitre.org [192.52.194.235])
 by smtprhmv1.mitre.org (Postfix) with ESMTP id 9274380B402
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 17:54:09 -0500 (EST)
Received: by mwfesmtp-mgt.mitre.org (Postfix, from userid 600)
 id 48YQzP4B6pz3DYXK; Thu,  5 Mar 2020 22:53:59 +0000 (UTC)
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl2gcc02lp2109.outbound.protection.outlook.com [104.47.64.109])
 by mwfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 48YQz530MPz3DYqX
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 22:53:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlAZUAOgVgVhSlnx33iximt81bUoPYFNgs3IK3p1SYV09vr2UoAwM1Edde/X6DnPgQHrY5EuBcPu3qzgeiRDboH+/p4AnuYpalXy0RLP+5PYgYN2q57lfo1tOvIWd2g3eM+9DpNGVn0sOO/xlzM7RgBluz5VP54vxfusYCUObaPIAGecFUKDUV/4l5drjsJSFJ+D4myaGM0W19uijVxhJtJMzMfV+XCuY6DgIr+0bI4P5QNLkSGxpkigS1Xlnu2KlX7f3wqVabokrlvyJrBneTmoqW/ugTZDZKpcDTfS1qH/W6IThBXggtesEA9pBFYz2xprF1Mi9v0LtqeKdCBHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NrJsOGdZZFPFR0XW1hiJTMDLx8eTLOHzH3hVhh8LEKM=;
 b=gR7nfJYOKiQA4ruIaYldiHrYmMI6aVF3NVvpT64lrB6zzyJwaQeyFN9DQnt8Sa6HyRUttOtb8NWFOLVWJHImM3qypavhPDiY36h+o+ikQc21HcxfDgIAbqvcSlnpZB9SgAvKhQoGF8oHzLIL4zZ4RPhI6iT6CeRd5l4fj6miu70lyWx04gwjbzkqBbmsYsttgdvqjS4WqMuM2bxapcLgZUSCkxkSeCBw/+6o8h/1rCWBH6ZcU+soj9LdJG++zq/nR8S5ewEszjmZ3ljEfY+8S5xAseqGbW3YSWApeIvcXsPcKs1u9mvBu+JXOGJ4RLSzC2W3td62jI/hyqZNvkHjSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from MN2PR09MB4077.namprd09.prod.outlook.com (2603:10b6:208:1b8::12)
 by MN2PR09MB4812.namprd09.prod.outlook.com (2603:10b6:208:220::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Thu, 5 Mar
 2020 22:53:52 +0000
Received: from MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::ac8e:191c:7a3a:3cac]) by MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::ac8e:191c:7a3a:3cac%5]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 22:53:52 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 Chipscope?
Thread-Index: AQHV80Dw5QtisS/fnkO3dN2vnw3gLw==
Date: Thu, 5 Mar 2020 22:53:52 +0000
Message-ID: <MN2PR09MB4077640ADBCA3D047EEFCE25D9E20@MN2PR09MB4077.namprd09.prod.outlook.com>
References: <3106_1583404341_5E60D534_3106_145_1_CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
In-Reply-To: <3106_1583404341_5E60D534_3106_145_1_CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jplong@mitre.org; 
x-originating-ip: [173.48.120.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d0b72deb-06df-4d92-3d58-08d7c1581384
x-ms-traffictypediagnostic: MN2PR09MB4812:
x-microsoft-antispam-prvs: <MN2PR09MB4812B541F93E27BE1DE4AB04D9E20@MN2PR09MB4812.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(136003)(39860400002)(396003)(189003)(199004)(7116003)(6916009)(5660300002)(186003)(33656002)(52536014)(86362001)(478600001)(71200400001)(8676002)(66946007)(2906002)(316002)(66556008)(66446008)(64756008)(76116006)(66476007)(81166006)(8936002)(81156014)(4744005)(26005)(9686003)(7696005)(6506007)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR09MB4812;
 H:MN2PR09MB4077.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mitre.org does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sJBbVAPWiP1H130wQHfnC1ptDY5rV1o9+gy+kyIH+3ybWP3o6TH6Wxw0TAEyXZVGvqgd0ykXy8v3Gt1zW267fUWxKSgXLBJjAje/X7gjn6Q1c2wvTn6EKt+4dxCRhqRDRsfcBEVvt37l+a4BGSC5NRgjR5r3PSkAyfYctynEqxwle5qOIqL89bTD9iH6Umh+kfmT49Ef+xb232srQGCVY/x7a46uZrPbdKtYKEc3GAGsr196Iu17GnREYuVPY1dta1mZ1Q/2P42QCHLkKFQbEEoyi5+wtD+SaXIHjpM64H8rOHil2RiIJWY2Kck/5TmUKVKVWfMaGhRG/xBRUJFZrcGE34oFiZYNNYi24UDLG01K+120YPInzKr9p94GyGW3DBcN3bfsuKCtDKgSd1cshw+daXCcIlaOfclKHKmipfSM/VkY3hAOBXvOSdLG6TjA
x-ms-exchange-antispam-messagedata: 1fa+z3otMdtY3edQAdg60RzEEvX9STZdqx/bemr/xp/qExRVWC55O7m5oZ5c4SRpyJoo8Ine9Gb7TpwNHetZlSB54sXzNz3CxExQVeMTsXLGzDVXa7oNJfgfRhaHrmNZHWQiS4ubKvEF9AuQlmk3fA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b72deb-06df-4d92-3d58-08d7c1581384
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 22:53:52.3961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZ1zBdOzkYvDiA38F66J80sRYR9Gk7BFFISJcrOsKDVpwDccz8a12TqhaLjCfbDlKgm41dv6fOq1+OLaSPOdMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4812
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org;
 h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version;
 s=selector1; bh=NrJsOGdZZFPFR0XW1hiJTMDLx8eTLOHzH3hVhh8LEKM=;
 b=oO3jhTNkIdzhJXI9h3Ct5Ti2+GtpCWY7N5s3Glzbuq7dcWOkCctU+RnBQhTUCrcSmSJ0xVXirzaM6VJ3rdBJ2kP49jgPWSlC4Pw8230R5Z0sJQuu+zr42cKZ9Z/D+psEUpQp0qjj8zqfIvobbWV4SZy8hZNKOfIDS6J3WkgsFzI=
Subject: [USRP-users] N310 Chipscope?
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
From: "Long, Jeffrey P. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Long, Jeffrey P." <jplong@mitre.org>
Content-Type: multipart/mixed; boundary="===============8714049585129539136=="
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

--===============8714049585129539136==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR09MB4077640ADBCA3D047EEFCE25D9E20MN2PR09MB4077namp_"

--_000_MN2PR09MB4077640ADBCA3D047EEFCE25D9E20MN2PR09MB4077namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Maybe this is a stupid question but I can=92t find anything in google land.=
 Can we use the jtag port on the N310 to chipscope? I have successfully bui=
lt and run images and so I created a build with some debug via a single ILA=
. It looks good and I loaded it using uhd_image_loader. Usrp probe it and a=
ll looks good. Then I fired up the Vivado hardware manager with my microusb=
 cable plugged into N310 but it does not find the ILA. Anything special I n=
eed to do to use that jtag console jack for this? The jack seems to work gr=
eat for connecting a terminal which had me wondering if we can really use i=
t for chipscope jtag too?

I have done a lot of chipscoping on the X310 so I am pretty sure my image i=
s good.

Thanks
Jeff Long

--_000_MN2PR09MB4077640ADBCA3D047EEFCE25D9E20MN2PR09MB4077namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
Maybe this is a stupid question but I can=92t find anything in google land.=
 Can we use the jtag port on the N310 to chipscope? I have successfully bui=
lt and run images and so I created a build with some debug via a single ILA=
. It looks good and I loaded it using
 uhd_image_loader. Usrp probe it and all looks good. Then I fired up the Vi=
vado hardware manager with my microusb cable plugged into N310 but it does =
not find the ILA. Anything special I need to do to use that jtag console ja=
ck for this? The jack seems to work
 great for connecting a terminal which had me wondering if we can really us=
e it for chipscope jtag too?</div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
I have done a lot of chipscoping on the X310 so I am pretty sure my image i=
s good.</div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
Thanks</div>
<div style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" d=
ir=3D"ltr">
Jeff Long</div>
</div>
</body>
</html>

--_000_MN2PR09MB4077640ADBCA3D047EEFCE25D9E20MN2PR09MB4077namp_--


--===============8714049585129539136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8714049585129539136==--

