Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C89622C10B
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 10:43:40 +0200 (CEST)
Received: from [::1] (port=42132 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jytIn-00083V-DU; Fri, 24 Jul 2020 04:43:37 -0400
Received: from mail-eopbgr1390135.outbound.protection.outlook.com
 ([40.107.139.135]:65192 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jytIj-0007xU-4f
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 04:43:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPfDDz5prak9HzKuiux/FvD090NkGnrUGe/v9Yhz39rFtemoTJk5aJg+xi9Sp1UMrZ18dEvEbLfPSSsC1/u5yAdZRlhCU/GOTbm+gUIrIkOlcVUOOAKXz3E2PPHB0nBEEnwrZOMx6L9OoTQ31ncAqgpgwFx/+Ep7sQd2Na237U6867ic0ZYfCSRDw1JMqNzk2Ovy6fGoohS1ZxWCWh9cN1irvWIhbgRPJSfz301WGxbvITnz6T6U+ySLdNa3PweXoIDTN8UNu6qmNWPp0SLLkUc8ynN6in1Mgxu4QFJDGSRQQbUDnXJg+IF6m2hNrl9cm/OjT57jpnT0azfPC3J71A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YjxjyoK+/+9BzCiCCIcUAhz7yDKl7oI/qPblhUSjKiQ=;
 b=OOBzyj/tS+1UM+q7GiHDqVzYN2q9z6fjWozWfPALzOhJenu8QTu03IYI+1VvdaAWJlYLncIzkDrMrHvTsJmbC/18RHDt2gSJ7HOe4B/y7fTr5URIR99mij0HYwkQwrAtpRGda/dzZeK1KisE+Aa7I7ImrAWciJST6GGrITnXMKLLsieapvZzqd+Iz1ibk5a4I1ayvsCJQyctAfmX3koIMyyHXc+T/3PN8YuhoI2OBbjGaQtoudKPz8tI99roDS/BFTPpBSU05hADwG8ANy392YTNDBE8KsmE0Xborlu4pQIYE4z7O5HR0R8gswQ33Z0YaRRiHMLtGvjgKKtSkZsJSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YjxjyoK+/+9BzCiCCIcUAhz7yDKl7oI/qPblhUSjKiQ=;
 b=C2xZyeaIKkMHjSeCqTVOwwE1HEYSj6WQHS5AIfHM107r4sfQvoFY0Y0ZUAjspBvAoQBA1f9iNMjSIqxVwF21OJWSzMl0mVJlpcsts6QjTNytFm+ioS0RJWvivw8ZFtjzxFP8Y0zhHZgsbbm+oIgxaAx3ALJUc8Qr4wD1Vq2POvw=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB2336.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:56::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Fri, 24 Jul
 2020 08:42:49 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.021; Fri, 24 Jul 2020
 08:42:49 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Using GNU radio 
Thread-Index: AQHWYZYcncgI62yoMEKmHAeV10Sh+Q==
Date: Fri, 24 Jul 2020 08:42:49 +0000
Message-ID: <MA1PR01MB2588CC00F48E87E8D085A83190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fc1b48f-8404-418d-0e80-08d82fad8bfe
x-ms-traffictypediagnostic: MAXPR01MB2336:
x-microsoft-antispam-prvs: <MAXPR01MB2336C4818B97C8A85D839FC890770@MAXPR01MB2336.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d8fe96vrFRv0+wkqZSrSBIz8zWO84zknbY4AyDFN2vn/Y9cV9rrUa0+5L4tFkd3AScyaOGwTvzF5QdL5Q3TT6QvFnKRq4dBlQpKyII17qkBmcy7GEsR7bM2HIC67Ufe2uyxbbY7/nyKuCAPLGV46DIQGOqAGYel/nAMRv2PqMNpECYzcJGRG9I9/vRQuWgeLJb7BdgCIIY576h7x+whYWlhjvJ0qSSP9UTI53vpXlQSX10rJdHbf3apz01VpQg0PlC02CcwpGq8SuKlJP8b0x8i8beFqDN+95vUu4hXoo9B0EkCyytsQMPFyzKwNY/Qwa44J5q8tBYY3poyKDFnv78+RLs7ooWA+3FAKnXDoInSRdnhZW+T2cSE5BwRlfRnoDLpstWwc2gHRHWu7Jd7cRl8ppezCbj7QrAIyX8uN2TQ7fxx/Cajiot1YJFQw+rtR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39830400003)(346002)(366004)(376002)(136003)(2906002)(71200400001)(66946007)(76116006)(186003)(166002)(558084003)(4743002)(3480700007)(66556008)(64756008)(33656002)(66476007)(9686003)(55016002)(508600001)(26005)(86362001)(7696005)(6506007)(8676002)(7116003)(316002)(45080400002)(66446008)(8936002)(52536014)(6916009)(5660300002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dgGqlixPzLilzKoN4mMhph4MS/D672K2xUlbezZN4P57xtgnIFMdvr/ZSHuQ7VvyP2EpUWwY+kytPs3X0mg4sQOrcyCz1G0Xfq35l6PoogqEEGrKmyeF+P3wB9LHRSEYkEM6V9P/vyAgOxBZ9lqlTuHh0qSCXl80yio2sEaHmrKDAYc5MHOUL+nX4KW2UZDl2S2SA7MisvSK3SBbecrx3vmSlfmtLYfYjVy1LiDiCxVkZgvxqskrhKOfp+SPrMSJ2zO8fKV3c58v+tgm0XuSpr/eutR1kgkt8MN1gjP1OvYFoBsbQ07tWe1UcMw3jCxsMp8IpUj8perQkw0My0DNts9sfVOGbr3fVS4hQjn54e5ak16g6+kZavrw1FgmubD/m4icd8mVcEteWvQKxtPAxYKpbtaQ+CYjzWSQAwWfbnC278WKlMAsYNiHQPIbRlfFgf1NnR3P1ECi/33+rF2tePmuM4sa0zjQRkvXxlsSIqRGPOeIxbuipUkg+Q8lIBxl
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fc1b48f-8404-418d-0e80-08d82fad8bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 08:42:49.7195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ku5K8K9UuXQOrJQMv9wM9oNztn6SPS9ZMcMkkKmy18Fz+7IRw4ENeYc+lnpgNWglzsYU6/Gda3btQIWWu5IYpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2336
Subject: [USRP-users] Using GNU radio
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
Content-Type: multipart/mixed; boundary="===============8803298082130157575=="
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

--===============8803298082130157575==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588CC00F48E87E8D085A83190770MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588CC00F48E87E8D085A83190770MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can 6 gbps from usrp be written to a file using GNU Radio Companion with us=
rp source to file sink in a RAM disk?

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB2588CC00F48E87E8D085A83190770MA1PR01MB2588INDP_
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
<div>Can 6 gbps from usrp be written to a file using GNU Radio Companion wi=
th usrp source to file sink in a RAM disk?</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588CC00F48E87E8D085A83190770MA1PR01MB2588INDP_--


--===============8803298082130157575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8803298082130157575==--

