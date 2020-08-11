Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D5F241B01
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 14:35:20 +0200 (CEST)
Received: from [::1] (port=48800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5TUs-0007hY-6D; Tue, 11 Aug 2020 08:35:18 -0400
Received: from mail-eopbgr1380093.outbound.protection.outlook.com
 ([40.107.138.93]:20011 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k5TUn-0007ZF-GX
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 08:35:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHC6NvN5748oE545zkPCLXvuyym9MkUsqigu34gLyFLVo2ilKJeb/fh0Tn346Fs8K26Dumo+almsm30erXKFCfuCSoYbRHtIjwFQdWYhLI7ilIZs7GlJnpG4qE3Jk32VhHYqgkzm/lbFqVKWwBlMRIOJkPUYN/hOWgFRwH9dk2ecTwpE3rzQEtKjS32yOzwtrYOTJYSKV7+H9woigmxX0YZG/0q5hyPRQi1uvL7dgDrSCuUgVTXsCvN2C+gmCeXPR5oo5gW/BLy969geLqxOEGxqdhDL5HH57raHKqHvw1JVr+s+8sOSSsNIRe7nsk8PDisD/Zk2eTn4zz1Vp2jveA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UNHAnCgwscc+CNESGvfTuZ3y7bvYFhwz9BpDeqGJSGU=;
 b=HVafMSgH0Pn7y/NdMDm3Wyrc8FgMrLVpP9yRkYYdI++m4pW9bvkDxMZYJ7IIwDQRSogmJ8JsnnMmbQOxL3ae1zb5ANj+GUvHf330/Mb97PliP5SeX7IUFA78nssQgfkHi5eJDIAJBDK1B9hYtiltafRxh7GcJdllpCm1F7Aw9IHuHrxF8XmDgm9039qaAD52R8wKHZRR5DtGy3FiXZEfoHz1aPaGeEQ+nr+VlcWgJuILjL3uR0pkZ2IbQAEgskY9H9SQujC1kevgC3pGOo/+QbLLWGPo2qQ1zp7I42d/7xsa3zPwzhqQMPOkLgARX/QEtEbTJxOX1NCjI/vTkHfbJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UNHAnCgwscc+CNESGvfTuZ3y7bvYFhwz9BpDeqGJSGU=;
 b=bIFv5SqC8x3N5H0Nc+nTPdiGR6OL8xBPHaVlfT8qB/gvVk12wb2z3ix3chhohxd5fAQwMZb9nDw6nW/WkSSZL5qHUGXllQ4l+JfOe0fj9pGn4GhHw8obxGmctNpa8p/1xr74B7K6nTOE8ktFCIvjv9AgMRb6bXJYttnP4pp96Uc=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB0716.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19; Tue, 11 Aug
 2020 12:34:24 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3261.025; Tue, 11 Aug 2020
 12:34:24 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: LO sharing 
Thread-Index: AQHWb9s02XN8bo3vf0+lEoB3g6hUwA==
Date: Tue, 11 Aug 2020 12:34:24 +0000
Message-ID: <MA1PR01MB2588785E0EFDCBE8DB4228A490450@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.139.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6fb67759-ca7c-4205-832f-08d83df2e142
x-ms-traffictypediagnostic: MA1PR01MB0716:
x-microsoft-antispam-prvs: <MA1PR01MB0716DDB64F417E1FA8061DAA90450@MA1PR01MB0716.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 58bR70Ej65SVo6RsF2lCG7V3ZuhAsyVIZ93ORp0xr/+GAvVtLfoAwfETjkVesK86UZo4xIL7qrNRoLZa0S8Ls1bDUEmJsa5Qfj6mItOJWPi6U4ZNFFTsWxNfs33/zTgtUtfF3QuB2slSmkY97Qqs9TFabQyoLFQDDmu88wcNi7864qdvEPATxe5YtBYs7K8U7Npxg+zD3DImEqFvpmt7oBCBx5oP9lowyi94f+MHBqmjDjdmvy9WNX5zMeYCglt6MlAPu3VRcUqijx0qhLwggpJN68kJRCYsNVhR+jMdLYF1NNKuMUSrXupA/vzfqYXRif/GaEWs6gYw4G6QkI0J9A3bT1seVOwc+1Yq4qdNxrcrmGJej57Iz5t4RK2Q19aLUJZ7HLccauVQp1LLoODe8IJZ8zIIBW4qFz8vYsUJgvo8Nb0tLBYJ5JIb6DCjsQiz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39840400004)(376002)(346002)(366004)(6916009)(71200400001)(45080400002)(7116003)(186003)(26005)(33656002)(966005)(316002)(2906002)(86362001)(4743002)(6506007)(55016002)(166002)(66476007)(64756008)(5660300002)(76116006)(8676002)(66556008)(508600001)(7696005)(66946007)(66446008)(3480700007)(8936002)(9686003)(52536014)(4744005)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: e6u7hEK+qzCwMax+V9/hqxIWzPQR/EAnMxR/kn5p8/NouSPDkMwuah4UBkWXqxJ6x7wkcG3odTT4iuRxh60oyAPGQjA7egLFTWCnJU3M9zk9eTz1O8/TP9diIKwAo5gwrmyNoNrjx8P6j6Io7r8CmGgLC0uU4kGTMJbDbPRlPdP6QPKnpYD/tS70s26ynFZeF+UKQY1C4WAqrt9Lm8jMjNTWTW61zgb5LZbIgotOZwcPjWRE9qJCS7nkWjiy1S4WZ4dbf9Z6FggMRa2LbdhOliJOF+7eQPAkXZLTIMVkZ5UcnL/ueExPb4bJWT/i5JsLhVClt4kvkZ2EQoHMOg4YZlBTs4u4ozAZrd/K7ptukd8l/x+/uRuqEcH1OCTxz5E5/cVsUVQMNg/xWcQE3kqVGWF1e/jBg450sQW8iVVKjHSsRh85fsXTu9s+sxENr1wOnE1Afru3W+GNSoTcWT0SiJu+9Na0FP8tTA68f/Bp1n55DDNJ0Th++tzuDWLrv1ZVrtvEjHmvU3tSG893yMYR2uDrQotoxPhetUvR75BVmU4EbkkZic15FuvL863NAZqavTrdHFdO6chC6OZYjk+m237/aZjYGiFlq1NP0v2AIx/LlJmNrkDekielb9PIWctL0SLnTldBMvZgQrdfELYQIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb67759-ca7c-4205-832f-08d83df2e142
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2020 12:34:24.2318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pQzUOUZ9UP+qvStnkxIwC+uJDhq3dW39mfUNZzmIlZwT/7LsQqQ6NVjGVYHkOAYh5FFlnPICToTnIHqQxJzVcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0716
Subject: [USRP-users] LO sharing
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============5621406206634358900=="
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

--===============5621406206634358900==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588785E0EFDCBE8DB4228A490450MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588785E0EFDCBE8DB4228A490450MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

What software commands are needed for LO sharing in usrp 2955 to make all c=
hannels phase aligned? At hardware level I can see the crisscross connectio=
ns inside the box in the following link figure 2:

https://kb.ettus.com/Direction_Finding_with_the_USRP=99_X-Series_and_TwinRX=
=99


but what on the software side?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB2588785E0EFDCBE8DB4228A490450MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div>What software commands are needed for LO sharing in usrp 2955 to make =
all channels phase aligned? At hardware level I can see the crisscross conn=
ections inside the box in the following link figure 2:&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a href=3D"https://kb.ettus.com/Direction_Finding_with_the=
_USRP=99_X-Series_and_TwinRX=99">https://kb.ettus.com/Direction_Finding_wit=
h_the_USRP=99_X-Series_and_TwinRX=99</a><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div>but what on the software side?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588785E0EFDCBE8DB4228A490450MA1PR01MB2588INDP_--


--===============5621406206634358900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5621406206634358900==--

