Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7C26DBCF
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 14:42:49 +0200 (CEST)
Received: from [::1] (port=60682 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kItFL-0008Dv-M5; Thu, 17 Sep 2020 08:42:43 -0400
Received: from mail-oln040092255090.outbound.protection.outlook.com
 ([40.92.255.90]:59266 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kItFH-0008A0-N9
 for USRP-users@lists.ettus.com; Thu, 17 Sep 2020 08:42:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfrvdeYTTF/0QmM4x9k2/S16l+PLTjaqNfKy8Xi0fs/QnHWcKImfgPn811hj11z+QfnBQrcHtU6lPQxeysrLehowmY+os7+4UDYl7EGJ9YDMQ7ytq5sHpZnwDDRdqNZWLioo2WZJwckO7LLa8Qjg1nK77JIsrHXNWg31AP29cS14yhelQK+Kf9Z13JfbXcV07I9ahu8Iu34S02Bbc/LP6CkKMBkkiTNGDG5o9MLPVSAYM4EeWME+pneoSieAaPGSQL6bnBc2TauYCvDZOS0Dk/19+8Hg7cyXmsFOHAESq2ufRj4lgrJpEATZbMTmaUClpGAhtxPMSMNy/W6hAdm1Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBcoh4YhjQstmrtI99ty11kG1CmAitZJL7JCRwd03tI=;
 b=caAdUujrh1BrfofpxrCnOZOWjsrnOgbdjg52Z9RN2hz11XxChpXUDMFGtFb73AeOTDrWF1D7IItKvJ1gbsQSM/LuxARPqEFdcAwRgr2an0AqY34DjKI7MpRAYQGq30h/1sVuimCT6qbutwZPbAECjYqquKmXGayV9EXK+IyHqeRRytgphb51K8C3KaUEBFn4yVhkg8Aax2EKyICIsQde3HGeoBm45pCvhe2+zolnJd5b8VTV9fet7H/WB4iYifUGZZiINoogEwNSNqlc4eQXW06xBlqRa3Cg2ZdEgy8UxASoCRW3ST29D1plDd2T51/Tb+ZzjjblIlAbaraTnMR5tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBcoh4YhjQstmrtI99ty11kG1CmAitZJL7JCRwd03tI=;
 b=MxHvpuYp6xvMiPIIuh/xEgChi04FdF7g4kAVJlpE+ihOmbBwNlWv9qOnoWY6EDwWQ1+g7gCsROQ8VRmpzkJPrWbqbLjGLQE94gpy0CVuJJuMIjWibPW4+IW/FsRKf1qE+vy6zgewEIETjMMlMUsWz33jFyieof7LzP6ix668DjovfpOZwooyRwzm2XElnaKuU4drcMfB8y/w16hjxSso62H+1cMGH29b/oF096DF9Nxrzjk6LR1H/Pc4nrtEaq+O0FQ5OsEHuSOk1dDFnqSUPjdFv4lnz/EKlp+8WtJJ5OkHSOdClauhN05RbW1gO6M/NO0xxGVn4H4jM2+YyO7UIA==
Received: from HK2APC01FT016.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4c) by
 HK2APC01HT027.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::463)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Thu, 17 Sep
 2020 12:41:44 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebc::50) by HK2APC01FT016.mail.protection.outlook.com
 (2a01:111:e400:7ebc::193) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Thu, 17 Sep 2020 12:41:44 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.004; Thu, 17 Sep 2020
 12:41:44 +0000
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: what is the TPM used for N310
Thread-Index: AQHWjO+3FedFDg/USEGW0ULiIsHhaw==
Date: Thu, 17 Sep 2020 12:41:44 +0000
Message-ID: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2CA239EFCC16143299B68F7B5FCF94FC946CFF2E62741314C0BCC52A7B98DBEE;
 UpperCasedChecksum:6FB17050635E38935639C49B4F286FABCEC06B821C5BCBD3976FDC8FFB0B439A;
 SizeAsReceived:2545; Count:40
x-tmn: [4hAT/oVadzYjyBPK0O+JTtLmNKu1yuuG]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f63e991a-f17d-48ad-4b7b-08d85b070916
x-ms-traffictypediagnostic: HK2APC01HT027:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tU1VrNlVB3dur1660z9GGHFUhOHEPcpHdXTVRmCOFpNfg/myK6yRfXmczYf6vEZa0ze6Qx/8NUM0vrFrUDPP/f49G69+mQcXoTuuHY7JX81EZbmQ5Hne+H3sehGH2scmiaWnWV1DpRCYao0g4lla/aSJxy71yqAm1saTLJ6IW9rk/Naz7XNlh33maXxVkUdf
x-ms-exchange-antispam-messagedata: 56F28sqm84aZNyadPifda1dbZWiWzn70XbAlxBm7yiEF8Ia91z8YzTxr0XrJ2ZmJQ+sUkykjBDvJHIocR/0NXU3p1FqUvj+Wa+hyJSuUviv5jl0sTmOKIM+YloPq2ESoMYNhxW2cLMeFRbK7KjYDDw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT016.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f63e991a-f17d-48ad-4b7b-08d85b070916
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2020 12:41:44.7640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT027
Subject: [USRP-users] what is the TPM used for N310
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
From: Thomas james via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas james <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============5664722206007626521=="
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

--===============5664722206007626521==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB5091FC4CE234C553C0B88B319D3E0HK0PR03MB5091apcp_"

--_000_HK0PR03MB5091FC4CE234C553C0B88B319D3E0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQppIGxlYXJuZWQgdGhhdCBOMzEwIGhhdmUgdGhlIHZlcnNpb24gd2l0aCBvciB3aXRob3V0
IFRQTS4gaSB3YW50IHRvIGtub3cgbW9yZSBhYm91dCBpdC4gd2hhdCBpcyB0aGUgVFBNIHVzZWQg
Zm9yPw0K

--_000_HK0PR03MB5091FC4CE234C553C0B88B319D3E0HK0PR03MB5091apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
i learned that N310 have the version with or without TPM. i want to know mo=
re about it. what is the TPM used for?<br>
</div>
</body>
</html>

--_000_HK0PR03MB5091FC4CE234C553C0B88B319D3E0HK0PR03MB5091apcp_--


--===============5664722206007626521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5664722206007626521==--

