Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB2922EA00
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 12:27:14 +0200 (CEST)
Received: from [::1] (port=43678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k00Lb-0004Oo-NS; Mon, 27 Jul 2020 06:27:07 -0400
Received: from mail-eopbgr1390113.outbound.protection.outlook.com
 ([40.107.139.113]:12208 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k00LX-0004HD-Pw
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 06:27:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Utv1LEQapa1GM3DiV6eWkSkNIQMezbo3o/3ymU1K0bwCzj1XZ2zgmJF9oJxu1dgkOlk3+LgIe5aAaFhJDZ6I4CjvPddTjMt7VaNyR93el5NN164AM+yqMp2nsFtZ13gA2g4z8P7Q4e6EeHW6hA3uyUWmW3Dt6clgJxn1k7NFxS+UplngfZIHQLrdOGZWYrNEMm+oQKknBUqOXicoZJohq4CXihBstgVnnM7YePnmpVtsoOQjQ1lIz9A2xENvJDU+PNgwdCv8C4dKucrJsarXW2woUVO2aYbxEWQGc5sqc5ZZUFxVvaH9rPsi+GoBMPKAhMYsV8jD2HBg6PzPSWupgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n92wUzdJRBHFuvix2+H8xhdOPZiT2CSEJJsqT06DF3c=;
 b=eYsxRoxFkL+FrUoBEoNCoLs8wHq9gHdIkV6P/42kCbsqm7o3nq0HlwcveuYgN9UqSDgITxxqJqBEV/2q+m4VxFmlM1DGmM5ftLXKbv2vDw9I6m0gdYSRpoFymjlnn09kghhHmdLaj7n4znDQrmFBe1m/VjFrVqInOQxyzHHnuvRPE4AR63KyxogHWZc1IZbi6e1cGapudrcwjgGJo+pTMBsPOiuO0FehoDWEbaRtbEwQarS4sxy/hSEH1HRABtzeexTiTUCLw8hPqeIGDnXh6IEd0IzaB7UUjav3lqH/CRQBR58TKQZo/ffARGoQhGhsyjYtKAJJ8Kg0ZGkxK2HW6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n92wUzdJRBHFuvix2+H8xhdOPZiT2CSEJJsqT06DF3c=;
 b=ighKnPrdHuYm0eyj+0pHR1V501XOWSTxk0RZMRrOnlqE8VTbnmrtc4fptwQOzTUt6kPCkk5YQQTdyQhr2u3lqSJg2RSXyv0dLNGEZyf7K3aAhY8ph0g342mNKkA4/tBKyw6p8ZHyoplNmVFACF77ituxNWcyif7jMwmpdVpfY5c=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB0794.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Mon, 27 Jul
 2020 10:26:19 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.033; Mon, 27 Jul 2020
 10:26:19 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Maximum phase offset in usrp channels 
Thread-Index: AQHWY//D844esIbWPkiYrfk4Q5RWJA==
Date: Mon, 27 Jul 2020 10:26:19 +0000
Message-ID: <MA1PR01MB25881E21C70C5AC940E50E9F90720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.155.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9feeb69d-1e5a-41e0-49b8-08d8321780af
x-ms-traffictypediagnostic: MA1PR01MB0794:
x-microsoft-antispam-prvs: <MA1PR01MB0794C25DAF9A25396204B1A590720@MA1PR01MB0794.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: echXjHuyTFfH4hB8Jut34SRlzHAEii+GWfd7NLBS5nac/j+wziU8/LUJlGJlfxYSemEXs7Odhgnj3BNet1lG6LUtU/WQdASz/9Cr0s8vmUXbRrFY8verhVjLBLc0BckBiGZsoTZqXv5ouM1ump/0qjQn+7eG2DL8MTHMqkmx81jK9RQNHFgzmBBbMSWOrvxp0ATABfdqrIXmTavi5swsmdmy7veM6VNu+/iIO8x+HHAd+XAUdkFXokxqA4xr3XbAkabLU4gVDFbQNCbbz6ocyCBYV8asZhS6fAePLV6yNcidhJ+j0MGRaQAhMK6vdTtdVKt3DDkM5LUPObFtzPlhI9Sq2wphAJKyAgB614Av9UMNjtaUVGRSRTbct1JZ3K9mGml3dahcWelPCTx/cl55CP7AX8AwnSa6UdZKiJpEcqLBTEolY5y8V58yZnOlSAmQsO0rJJ8PFMy1E5CwP39FXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(66446008)(508600001)(166002)(4743002)(186003)(7696005)(26005)(45080400002)(558084003)(52536014)(9686003)(55016002)(5660300002)(6506007)(2906002)(86362001)(64756008)(66556008)(66476007)(76116006)(66946007)(71200400001)(33656002)(8676002)(8936002)(6916009)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: DmEzT9Fw+eLejklwwnhlkKU94A1/hX1rtwhLHOR4sQsh3le9G+63IzBC0MMr7/bQZ8mrDuNXR0ipau90KGj4ki/LawQql2IaG1kGW0ZCX8YVkXdB/aSALz9nQy2mI02bebbYtGEM0CGltXD1MVyLBoyYUo9H9wNJ/RL2ZGIJY4HSUXO1M1RcGEgrjM9WNCbJIQo0IoJ/VslO/j93OehhOHJwbq/efo7CD3O9ypbm9cdbvLM/wHKLgAyoujvYbgq7lkNLG+sfId4JE8zheJda7Yg+yQ2yVz/FgRUoyUxeSon1c0BqApOcFKOKl4lSkYDL+qe3JHgBukpj4wJC0HbSSf4xpNmk7sX9oyvcV5/5pszg7YHmV2+5CDqRABLYPD54R83oA03+HdcvFKY5etdxq6zxDuSNBlxlBenR38GlwXe4rTmGXoP7FW1CSjrFzkv4v+7lQfjJBUEZZXzfzyNsZEOgEgyVUnj2XzjQpH/X3MeMh83+3nGsqt5M9ZMb4mLC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9feeb69d-1e5a-41e0-49b8-08d8321780af
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2020 10:26:19.5254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qT7lGhvqwp2yZV2GvvhHdR819XA9wV4WsZysfAQkoY8QvQwvqUb0MGzursZXCffW2rqjAW3niE36EWlqfdbviA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0794
Subject: [USRP-users] Maximum phase offset in usrp channels
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
Content-Type: multipart/mixed; boundary="===============5187820845689380729=="
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

--===============5187820845689380729==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25881E21C70C5AC940E50E9F90720MA1PR01MB2588INDP_"

--_000_MA1PR01MB25881E21C70C5AC940E50E9F90720MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Normally usrp is phase coherent that is instrumental phase offset between t=
wo channels is constant in any one run of the application. I want to know i=
f this phase offset can be any value from -pi to pi or can be more than tha=
t?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25881E21C70C5AC940E50E9F90720MA1PR01MB2588INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Normally usrp is phase coherent that is instrumental phase=
 offset between two channels is constant in any one run of the application.=
 I want to know if this phase offset can be any value from&nbsp;-pi to pi o=
r can be more than that?</div>
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

--_000_MA1PR01MB25881E21C70C5AC940E50E9F90720MA1PR01MB2588INDP_--


--===============5187820845689380729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5187820845689380729==--

