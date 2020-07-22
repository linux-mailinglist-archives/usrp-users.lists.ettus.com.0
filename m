Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5DA2293DC
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 10:46:35 +0200 (CEST)
Received: from [::1] (port=48832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyAOY-0005vX-0E; Wed, 22 Jul 2020 04:46:34 -0400
Received: from mail-eopbgr1290040.outbound.protection.outlook.com
 ([40.107.129.40]:43500 helo=KOR01-SL2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <surabhi.kumari@siemens.com>)
 id 1jyAOU-0005o6-72
 for USRP-users@lists.ettus.com; Wed, 22 Jul 2020 04:46:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cd7nYEkhv1FztLgjvu5bMjPjvuH/uov5MHrWPLTpZcDW/Tnaz2GWTW0YiexjiyHKp2k7iZJvnIFeId81Y6K8qf9oD6kXu5hfwnaGD/mZ4wEGGjXDpPeXfLouxUUM4KzLVyfqXkgkeEHiVhVjvDvIasVubDHTDQQTeVQ7QDdmBCe1xXzrtruPZ3zb5/67r/zSqkSv5srNe5cAFVUKPKXvfz4PYY+uQdX2mUfP3e5alrc3CTii1Wpsd6j+i7s5kRmjBhRpaalbGiGUvdpzLc+hRTxXAxiV65JmWrnMpIal1vWROEDYsIqm1zxOcQGIPQJ6zhghj3lcwx742FaQMsiGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rO8QceH7P5PKAFt6qmsxUBV5i2S9fEe4HwdkEy55gz0=;
 b=B8wNvB7eR2NMX/j/HlkLRpI88E3DwXsXWtASfY4hJJuXkNt9ttiAJ45+nzwI4eWAd6IgYyTXmGTcAev4HwJeRzqVgLGQ4qAeT9UihaT46uygrqX2KETESI6YpP/zmadu1gv1olYkcoZhEyVEg98fUnbJ1c2aC9R8BgaGl6de9y5WgJ5nCKW84wvArQMj8g/459lJs4+7EDasFV67mua7tIW3KzFEvFvBd/ii5WrrJdY0L+jvUnGTFXdWKPU+u1FWbs5I9dYQAIb0Oou+iGY+nUkdmnWYbvsnR1s0WRR/t8szVhfD+OyGCd80qFnLXz3jP+tL0n2yG4ssFLloIJ6Ahw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.onmicrosoft.com; s=selector1-siemens-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rO8QceH7P5PKAFt6qmsxUBV5i2S9fEe4HwdkEy55gz0=;
 b=Wbtc6T4YqdPDP2VVaLMHkSvMXxqkONJ5YxTWYT0tBmHgS+sQYxOzOuLjbYG1Z4XA/4oxRdSgCcPk3c3UTKZ2Lvafm0mWK+jiur6brPIW/u5OHcG51vvxrkkQ0UKzB38VKqZyrzpmcjmBSC18z8uejwjkUGYSFBXI81JCrCBEcuQ=
Received: from PU1PR06MB2133.apcprd06.prod.outlook.com (52.133.227.12) by
 PS2PR06MB3256.apcprd06.prod.outlook.com (20.179.114.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.25; Wed, 22 Jul 2020 08:45:46 +0000
Received: from PU1PR06MB2133.apcprd06.prod.outlook.com
 ([fe80::6197:6660:23c2:5115]) by PU1PR06MB2133.apcprd06.prod.outlook.com
 ([fe80::6197:6660:23c2:5115%7]) with mapi id 15.20.3216.021; Wed, 22 Jul 2020
 08:45:46 +0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Planning to buy USRP
Thread-Index: AdZgBCR5CJ2cR6b5RreA/5/Rrw7yFQ==
Date: Wed, 22 Jul 2020 08:45:46 +0000
Message-ID: <PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=siemens.com;
x-originating-ip: [165.225.104.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5719f64a-2ba4-4ebc-8859-08d82e1ba0ba
x-ms-traffictypediagnostic: PS2PR06MB3256:
x-microsoft-antispam-prvs: <PS2PR06MB32564D269E9D03A7F66023748E790@PS2PR06MB3256.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EMyaaLicHuHV/VxI+BABrzSpyVv6RyLWNhzQYNUJPUZqtKcD5YKYsOn7CgIeGKK8pQUAIgxqtMKPD/1XAhcL1dOHRiFOjRaK2KrtwH4wrCHjhiEeFMo8krFlzGQwCqnwM7FLT9YnOZ+gQqmHSvqN6h8iFGZdr/wdahSa/mYcR6FOxOlj1wGqbeZBCmnRqUh6bPxmyM/cE1hwm1VVsyNG3qGi8dFDEhZaZbkwKUDhcsEcAAAHIrNXYUvrMvOK5Pz22edSgSoaU5al2NefdMRMkUDpmMriSR+qlysou1WKLjKFgFywELrdfeO57eWqFEjW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PU1PR06MB2133.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(55016002)(8936002)(8676002)(9686003)(478600001)(5660300002)(6916009)(7696005)(4744005)(6506007)(26005)(316002)(186003)(55236004)(86362001)(76116006)(66946007)(52536014)(2906002)(71200400001)(9326002)(66446008)(66556008)(66476007)(33656002)(64756008)(3480700007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: IpVgGk4iZtUiLzxXhGNiqqjeeyesafPJDBwckVGqq5HT4bcNTmUlUI2eEkJR15g6EE4erfIB08ulnqZCQJ2yIBJK0nm8bSvPAeBcTHpNhdhXjANvh2eW7gbXCfYKWAdZ/lqX00yDYdMOO6Y0KTbvy/hrIq72z7BzQK7oYIfc1YPwlNw1dUb3/Jd/U50V1jJry4wyj5jl6zOigMtcdRv7uC80tCpfCEWdSr1JfRuwP4qB6kywJxSKhjaODlwcJ4o9eaNyBaENUMG+IMpU+TbdHO6WON2YBHInVQxB2lcIlsPy6KZlRCliKY01SR2FFR/GgdbXtyXcFrYnBjB2gXTqY3HkbQIeaH5o7sAQaVr3/TDGU2USurZrPwX7/P6oXoLxIpt2h3gwTYjDhpgA1DwQ4QpmnmXSdqGfQ17177jM33iEm96TRXpix9T75FMe7CpKz0P3vXYjc+o3y6/6Gfl8V6VjAAbRFvFsEjKdouccomttwEPzMougBWnP0fpQSg3e
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PU1PR06MB2133.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5719f64a-2ba4-4ebc-8859-08d82e1ba0ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2020 08:45:46.7549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AwixF+6Yr6xlAesZ5KYhz8zhv8sqNBaTWcESX5a4Qdv3SutswkGzmzDebldxh4aZXAipPJjOXY0AIQTAC27WQd1LIPkFJd0swneJopMgzCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR06MB3256
Subject: [USRP-users] Planning to buy USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Kumari, Surabhi via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Kumari, Surabhi" <surabhi.kumari@siemens.com>
Content-Type: multipart/mixed; boundary="===============3077961035826788380=="
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

--===============3077961035826788380==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PU1PR06MB2133D7FA64F75E34E3CCB8A28E790PU1PR06MB2133apcp_"

--_000_PU1PR06MB2133D7FA64F75E34E3CCB8A28E790PU1PR06MB2133apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was working with LimeSDR with OpenAirInterface, We are not getting the de=
sired result. We are planning to buy USRP. Please suggest which USRP shall =
we buy which should be compatible with openairinterface as well as free5GC.
Please let me know what are the other hardware requirements to work with US=
RP.

Regards,
Surabhi

--_000_PU1PR06MB2133D7FA64F75E34E3CCB8A28E790PU1PR06MB2133apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was working with LimeSDR with OpenAirInterface, We=
 are not getting the desired result. We are planning to buy USRP. Please su=
ggest which USRP shall we buy which should be compatible with openairinterf=
ace as well as free5GC.<o:p></o:p></p>
<p class=3D"MsoNormal">Please let me know what are the other hardware requi=
rements to work with USRP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Surabhi<o:p></o:p></p>
</div>
</body>
</html>

--_000_PU1PR06MB2133D7FA64F75E34E3CCB8A28E790PU1PR06MB2133apcp_--


--===============3077961035826788380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3077961035826788380==--

