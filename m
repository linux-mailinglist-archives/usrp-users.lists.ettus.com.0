Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED01F8467
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 19:20:23 +0200 (CEST)
Received: from [::1] (port=37474 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jk9pL-0004dY-RN; Sat, 13 Jun 2020 13:20:19 -0400
Received: from mail-dm6nam10on2097.outbound.protection.outlook.com
 ([40.107.93.97]:56417 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <bnold@purdue.edu>) id 1jk9pI-0004Yq-8a
 for usrp-users@lists.ettus.com; Sat, 13 Jun 2020 13:20:16 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cToNkh4qr11LIvbL7SDM6lFC22oFRTy8z0PTZ1208e9uEhA0b6lT0mF7AHctExlMQJkq65H1p4AgkVi6Urq3j3r7u+1Y/28s+PhbniNygMI2YcDXHDlsf5/kUzF9N6+FdhF2X9oI5LFvyKXMqKHVUYpgTKZy+Qxpu8gJI24iYR+mRK+IZ/WOhMB76kW2pVyCBBYN92TrU/3O+BuYeXOu+pYBupORgZYKMbUATisx1rfxpSP7cjRmY9cf6UQ+tCIAqZy1R+iYLOdF3BhJYcTTN+ZR8TJ8g1VdsbPNM8s8mSqAoviXANe3JgtymFjHQaDenl7xV4F1OFPe5auFyzz6Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsQPZ6rJC1YDgImeagALjqT5ywhSXXQyXJnKocuUiYE=;
 b=Ij+lMI27mbKYlQ+ppQ9PBaeG46wZysSY9h0wzsrUCKoeGW4QdgEWbYKfZFw4Te7f//5z5cREK4jlSKzlG8Q/T6qBJV55FeJCAp/vIrHipheaXEQP7fqNUOH7enRWKIWh9BDA2Qe5IpBfOU79Tn2u1XtRlhqsma2myp+/7b5d07P4S6r+0GmWTWiT+yLeh2YacuBsWBrKQZuZWnfPRFMKBfPDM4CI8RYzIKfheV2e9mlJ9ERvUFyDLu1tshU/6tbandWB9acmm9PwNLyMfPGEvGtRTB8tLXCddKXdl5yKO9AiVXt+Z9UBnAbStVVXWqUaORXa1pP9FW4+FidDo6nJzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=purdue.edu; dmarc=pass action=none header.from=purdue.edu;
 dkim=pass header.d=purdue.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector2-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsQPZ6rJC1YDgImeagALjqT5ywhSXXQyXJnKocuUiYE=;
 b=KQ3t9DCF/3tnOcE4y8sh8DQ626jVJWUvMlbfYk8FUQfQjHVoZYC/wneZU5VDjd75VDbiYYmluLcPdHQy0iNsQ2ECKcTlBgesMc99cCsd83WpAXVSh868O3xooq6fQyVq4stL0xXGKm3WpJriF49mcoJ8/B5UQlyT7XxqiGgRlHM=
Received: from DM5PR22MB1659.namprd22.prod.outlook.com (2603:10b6:4:66::36) by
 DM6PR22MB2278.namprd22.prod.outlook.com (2603:10b6:5:2b6::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.19; Sat, 13 Jun 2020 17:19:34 +0000
Received: from DM5PR22MB1659.namprd22.prod.outlook.com
 ([fe80::994b:9df2:cb40:bf3a]) by DM5PR22MB1659.namprd22.prod.outlook.com
 ([fe80::994b:9df2:cb40:bf3a%6]) with mapi id 15.20.3088.026; Sat, 13 Jun 2020
 17:19:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USB 3.0 to Optical Adapter
Thread-Index: AdZBpg6cL2JZBtHsSQKOC+4/8423TA==
Date: Sat, 13 Jun 2020 17:19:34 +0000
Message-ID: <DM5PR22MB165974FB99B3462BE24BE2B2C89E0@DM5PR22MB1659.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=purdue.edu; 
x-originating-ip: [71.10.53.158]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28e14629-122d-4669-2814-08d80fbdf155
x-ms-traffictypediagnostic: DM6PR22MB2278:
x-microsoft-antispam-prvs: <DM6PR22MB227832D1E4C3F9FD37559154C89E0@DM6PR22MB2278.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0433DB2766
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t0XGyOLRrToUB+TEnHzQRWZDFh/l+9LgU7a48NhRUmDpiXf1HwHfYa+gjwzZEmvn6uTYj787t/bA/Ec/m6qrV7zBREZz98/ffqd4PnpavULgDwmVFy7/VldO6n5YyCY2ZfIonK4fgiO7tzpO47jyxQuewJZlzhb+AqgE7TKlAt/TjbBhrH4a5NpkrKDd9H6lU04qqdU77jlJ/0hlyHzuUtaGcErL604A0fNccdnnU9dZgVN1dQv+plRz9I9pcgwEKFlJUf0iyj/522dIdf63M0E/KoUTyq3fOmb5rfQq1zLGTALwzZmaAcDA9SuZdboyDLk7Q8a/nL5U7fa0ISeX3Vs2zcdPPBiDvYLL5u1SgBRdlu1+UOvV4jlZarIFMjdYvcE8lAr/pLUwcBQlEQTr5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR22MB1659.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(396003)(39860400002)(136003)(366004)(86362001)(186003)(478600001)(966005)(26005)(52536014)(6916009)(7696005)(75432002)(2906002)(6506007)(5660300002)(55016002)(4744005)(9686003)(786003)(316002)(66946007)(33656002)(66556008)(66476007)(64756008)(66446008)(9326002)(8936002)(8676002)(71200400001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sqgwcmFFvrWFtM/+/71Vu3cNFpnA+i7SrVRleHZOop49sdJeAeoGV+tqjIr38cLk4lLBlQZu/sMRynBwQLH8AXfdgeVd9NEIoGZTmaXNeC7kTLLpCBOGNcdQToO47RdyA3v5b3ofOJBM8NxVV3jNc1CPN43I4q/RfJ8uZE4K9o5jQUD7viu8maE2OyHVOzgaEXpAwM5iOYw6k7WWyoqKcOUOzfmYXJdWLgsSuwjcylPljnK72CAFt4QiGeSt72QY4w5XZnyAgJr2XMm3bTDzJFimONm3yhRlE/q8MxDw60CxtpFVzq9VTYEPgqNEfRifEOEmnekQJJuIXvd8jB2lnXovcIc0hIDdIZXSsaRhHOryXG0+sVgsa+li+UCnFroGT9rBpm46OuZvQ2UbI+j0NB8Aq0IKF2gEaKg9bIv7PVuJQMXlxjIiOGi8QHrz7w9YyquVs0tPKVLD1JOc/qxPwjomo3p2QQoMLiu+q88T3iY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 28e14629-122d-4669-2814-08d80fbdf155
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2020 17:19:34.3891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H/2gnzXXTxKDvHzMEwAyrvLOsH1SmPUlXzIor1tvFEmhKzW2a/Q4fEJCBBOpsW94yonD6L6JQyMCkTJWeQP3fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR22MB2278
Subject: [USRP-users] USB 3.0 to Optical Adapter
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
From: Benjamin R Nold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Benjamin R Nold <bnold@purdue.edu>
Content-Type: multipart/mixed; boundary="===============5244975853608082763=="
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

--===============5244975853608082763==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR22MB165974FB99B3462BE24BE2B2C89E0DM5PR22MB1659namp_"

--_000_DM5PR22MB165974FB99B3462BE24BE2B2C89E0DM5PR22MB1659namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm working on an application where I'm forced to have physical distance be=
tween my B210 USRP and host machine. I'm looking at purchasing a USB 3.0 to=
 optical adapter, has anyone tried one before? Does anyone have any insight=
s if it will work/potential pitfalls?

https://www.icronshop.com/icron-brand/usb-30-spectra-3022

Thanks,
Benjamin Nold

--_000_DM5PR22MB165974FB99B3462BE24BE2B2C89E0DM5PR22MB1659namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">I&#8217;m working on an application where I&#8217;m =
forced to have physical distance between my B210 USRP and host machine. I&#=
8217;m looking at purchasing a USB 3.0 to optical adapter, has anyone tried=
 one before? Does anyone have any insights if it will
 work/potential pitfalls?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">https://www.icronshop.com/icron-brand/usb-30-spectra=
-3022<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Benjamin Nold<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR22MB165974FB99B3462BE24BE2B2C89E0DM5PR22MB1659namp_--


--===============5244975853608082763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5244975853608082763==--

