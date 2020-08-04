Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A40AC23B6E7
	for <lists+usrp-users@lfdr.de>; Tue,  4 Aug 2020 10:38:23 +0200 (CEST)
Received: from [::1] (port=54976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2sSh-000447-Pc; Tue, 04 Aug 2020 04:38:19 -0400
Received: from mail-eopbgr1380130.outbound.protection.outlook.com
 ([40.107.138.130]:7902 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k2sSd-0003yA-D3
 for usrp-users@lists.ettus.com; Tue, 04 Aug 2020 04:38:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0UwbA56EFlEdB4wNYYiLDthWVDSxb9PTKPWupEUIlAEctzRP4hY5+Qz8CKnN64jLi4QBPA70iKtqrZ1SysVZQ2bODkKU0Ut85XnyOuBlAYRlbKoLgaAubD54XmVpYgl2jTgou8ERz/C9Cqc8u51yerxqHKBJOB84kR4gqXOGIQ3JSLl7CXKKPCk6dpE6lk1AzIt7rczdqYbHdeHvDDfFmOGvmUCLrRDnHsx7pSltDZ2C8xHRGRJPj0VZEP7q2WuoUrws0b3WVTXWjYZNkEL/unUbJCmcC9UHu5qOT4BDD8q80pEQ6k5JWoU/ir6oEnVmEDdgfJliOKi5izvZ/VJcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PvGzf7oUkMKGe5c9ZWof0rRlACK79Gt7IRwyZwyHgE=;
 b=AHlGU10t3uU6WxDqjcynWLpai/RGHfCkxePqd/RROOO4xOZbBpCDJy/RF6NQ/v5SLw+6zO70lqC3jrsbyEy38/keW9Tv4Yk9RvWkU/OeKjnfx17QlhoSUQDl1d9vOTJebiG7iuj8H/+54y06313R9VpBhl/g6GJES2D1mYRkbkKjDuelIrjFfinCtBK42TZHsatLtAOGnyY6WLjE4IMDGdkDPI6k3nXGI1NYH7yIizC3Piq06v/b08D2XOkIDYyoRSWL1H4Kcimqe74dywq0lxjrO0DeouCoSx16zYgCbrpb8wT1rrCzR+FSI0CUMq/aXHz+m4nfmmdS0HgsLTwfVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PvGzf7oUkMKGe5c9ZWof0rRlACK79Gt7IRwyZwyHgE=;
 b=Qy2XFMY7QVWcN0NGyt2vP0rHbo1/Rzn7Dr/+WNPvTAjk2nDroqa4zhIV/ESw7pChZK9vFAf576Ju11XJrv1XitPA2ybVkAo/gSnlgQ5DNYPh+Hyhj32nlaqCp0NujZ+3LWb2g4VhqB3uiuheqqQu/yvlOXj/+lL9peFErLG5Pzs=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB0715.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16; Tue, 4 Aug
 2020 08:37:31 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3239.022; Tue, 4 Aug 2020
 08:37:31 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Automatically stop executing grc after acquiring required number
 of samples 
Thread-Index: AQHWajlQjZDZX0KYNkec/DrXtUOnCg==
Date: Tue, 4 Aug 2020 08:37:30 +0000
Message-ID: <MA1PR01MB25886B9CD23670257F42D479904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.155.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3518e22d-3a01-46d2-11e7-08d83851a0ab
x-ms-traffictypediagnostic: MA1PR01MB0715:
x-microsoft-antispam-prvs: <MA1PR01MB0715CC24E2214752ED1DFB69904A0@MA1PR01MB0715.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nNMEhK8UpzfMIYSnue0zohhe0er4teeS76/0LgzvpYA3ACP7k2oyK0RSzdnHZ1jI5Kd0Qax/iuP9beX6C+uyB76/LGrsT4G9qIFLrDpcUdurvqt+pVFJNgr9sfPKdn9o6xqsvTpqo7sYuHfLJsr9pidK/i0NWc2mN4K0dLbuiMBfoPHiZB4iNvLltU62p/UoSEJ5VbBvMgzke/jwGbb1W72aDRjGoFpeQTvnMbL0SWevjgptsxEhkMrFILC17svDfRKGhGISZA4vfqptR5ojx0KDwQUFqDVMqmVKy3S7QSS13QNfWNOdFge+KeTjZvowpjR9PUcleJQ3l09Sv6zBecw/2JB4sXPKqc0mMA9+rpSyke5nx4XCyizO+Kn9EWKgOMEbxsd46V31ZwaVvaVmk+flYXvqNeDVkaI6Befa8D7oJ4EXdvsPvVk6VQhTlICc6QLtU1oC5pcEDr4uqBMnYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(366004)(39840400004)(376002)(136003)(4744005)(316002)(186003)(55016002)(66946007)(6506007)(26005)(64756008)(86362001)(5660300002)(66556008)(76116006)(66476007)(9686003)(7696005)(71200400001)(66446008)(6916009)(33656002)(508600001)(8936002)(8676002)(45080400002)(4743002)(83380400001)(166002)(2906002)(52536014)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1N9ZFqspU3Adf8d/DCQzn32e6TiJIdOHhGTGlbnLK1oLufp47nhXhNZMkEQZ2SqTWOuN4dTgX+RxadXO+r40cPHRCa8ysW9qw52btNPusaQ3xboUzr79UUvYO4XR0P1EL4TIyuUgZ6diaY7vqzb8N4DmgRS6dYf3+OASI3Wqgm2VHdAxhPiGQ1XC0EMvMGVXaiYr02nBa44gEoqhIDGZ6miBdGVONZjvzDIdE28fnk9jgKakDQxRvmjLDrPr1knhiEHvV/SLjAjj/CvyggBLiS9Vp53810bdzlBZJsXcdi31xGIUkQhPawghlELfZoBXMPyryeBbWK3Ea3BUgNbaTLE/4yfG284O/7qNRFaok4RpcfX1/0U9k/q+bE83X4A52CsLXbzDCdc/CV5t6nTLbXwR2k9UgA6P3Ij1+mwMhB0HQ2ComKGm9s7724ucZd1p6GfS0BqaVlQUlKQ/IsWK9bf1DrHtGvnX3O4cW2WBNjex3fTzSWARC9ti15vSkbeWVG/FasEMmAO3uyqDnLRBJb5RwPyX5r0NdN+IkZatEcRYa6I4Qq3FoU7yKOfQoxf3mdbuSSctMx2mDI/q2YPRQX5dEfpGsCqhNwK3B60hqdADzM0WfKKZg9zy0XrkzVKUT6r9pb11kI7A3LJ4Wq4G+g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3518e22d-3a01-46d2-11e7-08d83851a0ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2020 08:37:30.8539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N4faeYRxr04S+yTgVh/2H/rBh5qqmnPg339LGO1nUaHQBoA9MMJjSRdzgJhEz7cfgYue3KLv5zsyOACo/lNtYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0715
Subject: [USRP-users] Automatically stop executing grc after acquiring
 required number of samples
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
Content-Type: multipart/mixed; boundary="===============5748546075280173853=="
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

--===============5748546075280173853==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25886B9CD23670257F42D479904A0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25886B9CD23670257F42D479904A0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Can grc be made to run for a predefined fixed amount of time and number of =
samples and made to stop automatically after acquiring this many number of =
samples  from usrp? If so what parameters need to be set in usrp source blo=
ck and others if any to serve the purpose?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25886B9CD23670257F42D479904A0MA1PR01MB2588INDP_
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
<div dir=3D"ltr">Can grc be made to run for a predefined fixed amount of ti=
me and number of samples and made to stop automatically after acquiring thi=
s many number of samples &nbsp;from usrp? If so what parameters need to be =
set in usrp source block and others if
 any to serve the purpose?</div>
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

--_000_MA1PR01MB25886B9CD23670257F42D479904A0MA1PR01MB2588INDP_--


--===============5748546075280173853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5748546075280173853==--

