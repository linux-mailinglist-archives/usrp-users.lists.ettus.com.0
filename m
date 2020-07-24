Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 463A422C091
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 10:22:19 +0200 (CEST)
Received: from [::1] (port=41854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jysy6-00073k-AA; Fri, 24 Jul 2020 04:22:14 -0400
Received: from mail-eopbgr1380097.outbound.protection.outlook.com
 ([40.107.138.97]:20293 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jysy1-0006yi-TD
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 04:22:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GogVwxgMfVlBzbmB2k5Cw8hqK+NjQAb3dM0mC5Fn1oslWNs5SwRGRoRDx9E2H1aQwe25AnKQSf++gCsV+jKAbRJP+CsNgc3pkw9qDGSwQ/GNFhpLHjlWrNrcSXLFLvHbXZSSKyBtnVEQ4lt9+HSuOYl6i1QBkA3DaQH+LFVcxdbnvXBUbXQW5fRxNDqR2vogsu88i6trtEbgMSoAruaJQ5zWu3Db6mV7/j3t6k/+QYicJ/kC61b/cr7al4tS+7vpN7pGcO7C4oAk9S6i3TndoZpmAF5kFiNMKFmDHBJ35oxZ38mUpVytDJhIzXKvO6RWQCdBPxIPXxbxhoDWSRrISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBuLVuUUu7r4ZY9uNiIQUTDaPrG61pEyfOYK9rJDCDg=;
 b=CbWt0S4sRJr7/MP90pYwKekOUxF0aind4abo9yZ1LuXH0sa0NjS9tZxHHVoEf/6QavjCylPcJbk0tyE4kJja9xBKcylZd8yuACVZxaY5SIG/yseTKLXOs9oOjcaHpkxrmBgTjpIsMcutaz9DLykMeqVOLmVmpOBS5VCkLx6ycs/HzVggsBy2tZVeHt6mD4iMYCRYJynyPrf3B3GbTGgB/jptisZt3YQXXhEN1tNFt7b/ZH3dXYpfg2qvtiAlZHGX3zGgCIFapNS0Gxk59T+3WwqWncJo3H9bv8jsKNarQ7xlVPEXt2bKTt7iHA1FXNKWpHWPdqTarC1Mi8qP8NF9Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBuLVuUUu7r4ZY9uNiIQUTDaPrG61pEyfOYK9rJDCDg=;
 b=Nz9YVJafPeSSUqFhAchYuBJ/C+xWC9tcp7fJUeqid7/yOEPrWzHjYygnq1ebURXC32AQ//iBVm/fq7Kvpc0lqlsUX0qC/JhyX+3mh5za4C69UvFYRRArgnGYR34WYJs3oL3gcH5fnyVKQc1Jjiyhkoql+045XtBXPtmLNkt76SE=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR0101MB1788.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:19::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 08:21:25 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.021; Fri, 24 Jul 2020
 08:21:25 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: 4 channel capture using grc and pcie
Thread-Index: AQHWYZMiVuDmc7CcMku3Q1nlFH28Vg==
Date: Fri, 24 Jul 2020 08:21:25 +0000
Message-ID: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4cd6e97-9f4d-462a-270b-08d82faa8eb3
x-ms-traffictypediagnostic: MAXPR0101MB1788:
x-microsoft-antispam-prvs: <MAXPR0101MB1788B84BB51351E595F50B5A90770@MAXPR0101MB1788.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xPksAjpG7c4IRgPFnghC8wJdHjGOg6+qRgfbHiAZ2bYIng+syq4uEKTz1Sme8hCWW6n2k0qzNxBSmrKDzIAu3pFU57tlgOhXx7D82rLtPc+eX72EJpLzSPhqo5JqrMt50J6Y8/yEJm87zWndIrOUAkUZDCjDm0CemYzsLITFYUZ5y5bMB+1unP6b4eCuB9tE+p1mko1Qq3LGTOLR2potjqzdEzuLsQMpoFuYNLHevKfHjLalrCL3cJF8XAFmqzYeRxIPjiRd8yKK1gYY5PaJTDlE2WGr5HcRE5b1jzbifHOjLxyRDCMQimTqFM94MHp3JxijaZxBVe9RkY7Ot3H8eCfMyFJWU7zkxXFl87PFR1T2TryFLvIirIDZ55LpbiAXDRZrhtYMx2lCcCpXEFahL12MiTQ2c7Iqxyth3NLFUL1OSZop88RXfbOPiuzk1d1QgbfItOXl4VJd/Tp/OAHZXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(396003)(346002)(376002)(136003)(366004)(316002)(6916009)(508600001)(7696005)(45080400002)(26005)(66946007)(186003)(86362001)(76116006)(66446008)(64756008)(66476007)(66556008)(52536014)(55016002)(33656002)(558084003)(166002)(5660300002)(71200400001)(6506007)(9686003)(8936002)(2906002)(8676002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0a2O2BIwUWM+exkDgiCR4PbyYRMS5byuikJ8qgeS+KywpgkMvKLRG1l1mEuaU/HyHV/c7i7wD34DciW8tBbZmhIbMhXFXIv6SchrqOgpnso8B5p4cAVV4zqfJ8nnv1GEyvC9Ddd0UsHooUWMP7NfAKKBkS/SHMXSI36xOj7ZgGsit5Ae+4lCwxe+Tgk+FSSWTwLp6XmJIIFE0tcpg/kOe5t1DLK0OWfyqEeWy0Fr6Re1kFzjorYZmz9cRtbd7K4NGaZu8oox/l+DxitLaxvkO79ZJJRnSHrN4E7tZOKoe0aAc16Hm3eumsV+i/h93bgcMJ0vwmIxw/8UuP9nV/CwC8krVlVqRHDsHEraO5s5dw1EAZozYICAkS752ILBNfnBkeDQQ39ulRoeE8CtFTeynp+G6O8TnzcDOZqmJt/umNFvLlNHcd+X6RW7JUT4D4FWT0hWSu70swQQx6jud2gkMQSMETakrwmG273skFV2yrfDh9096EDK1D4Up7kdvOY2
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c4cd6e97-9f4d-462a-270b-08d82faa8eb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 08:21:25.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CvqveWopDjn1rtglojEB07rS8SzIvHSMhIz5v4Eu9lfd0XhgepO4uBbv1lJyF9nro25G5hC/m/G9VY9rKv2tEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1788
Subject: [USRP-users] 4 channel capture using grc and pcie
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
Content-Type: multipart/mixed; boundary="===============9140331233365111678=="
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

--===============9140331233365111678==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588ED02A93680AA89569A3490770MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588ED02A93680AA89569A3490770MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Is it possible to receive data from 4 channels simultaneously of usrp 2955 =
using PCIe ? Which version of Linux and grc should be installed for that?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB2588ED02A93680AA89569A3490770MA1PR01MB2588INDP_
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
<div dir=3D"ltr">Is it possible to receive data from 4 channels simultaneou=
sly of usrp 2955 using PCIe ? Which version of Linux and grc should be inst=
alled for that?</div>
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

--_000_MA1PR01MB2588ED02A93680AA89569A3490770MA1PR01MB2588INDP_--


--===============9140331233365111678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9140331233365111678==--

