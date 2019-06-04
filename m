Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BC834D7F
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 18:32:34 +0200 (CEST)
Received: from [::1] (port=38114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYCLF-0006w4-22; Tue, 04 Jun 2019 12:31:17 -0400
Received: from otransport-2.outbound.emailsrv.net ([52.1.140.110]:51548)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hYCLA-0006jY-Do
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 12:31:12 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-2.outbound.emailsrv.net (Postfix) with ESMTPS id 2456D615F5
 for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2019 16:30:32 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2050.outbound.protection.outlook.com [104.47.33.50])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id DC6B6A403E
 for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2019 16:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qz1nvD6+uymxqNc98A4kOP5JHhM1ruMVSAzYdnKLPUE=;
 b=LlMZkmfp4gFLot7uFBD61AEVw8z6SQJoHh2zdIDtL8ZrF4F3RKywhbmyXYdzvuKquhWzUJxenYsiZoOzdpRmqx9W/hR+H8RmgI0kZSNm0Y53g0zm5CbN3QXB5apNhTyW767qloC1ZMQru8JbPemwt6tAONx7bJOK1X5rG5G1sMk=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2387.namprd12.prod.outlook.com (52.132.11.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 16:30:31 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 16:30:31 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: offset tuning on the TwinRX
Thread-Index: AQHVGvKLJAorX2ahCk+tb/lW4V0L7w==
Date: Tue, 4 Jun 2019 16:30:30 +0000
Message-ID: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f87491e0-1a59-4d74-109d-08d6e909f600
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2387; 
x-ms-traffictypediagnostic: BL0PR12MB2387:
x-microsoft-antispam-prvs: <BL0PR12MB2387E9B2C693CD17A676383CAF150@BL0PR12MB2387.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(136003)(366004)(396003)(376002)(346002)(199004)(189003)(66066001)(26005)(508600001)(186003)(7736002)(4744005)(71190400001)(6116002)(19627405001)(105004)(3846002)(25786009)(86362001)(74316002)(81166006)(81156014)(33656002)(5660300002)(71200400001)(102836004)(52536014)(7696005)(64756008)(14454004)(476003)(73956011)(99286004)(66946007)(66476007)(76116006)(66446008)(66556008)(6506007)(8676002)(486006)(54896002)(8936002)(53936002)(55016002)(2906002)(316002)(9686003)(6436002)(68736007)(6916009)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2387;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TLpHWFZyJ5NRTZhz4Qmmc6lOsYiUj8B01LF8g1sQmF38kC+dBAg9S3LlS6dv+FvPBh98YRuyqNWdMt9629JuO9Df1/otNeeWTFLJFrwlQYzrKDEM9lXhCjauFCOkHzF1UETv+I+UEoK0lF2ZS761ri3ZgCWK+soJeRdPZnlTaEBtg/LU1lKgHWK48V6v1k6aNJsXLJWo3yYSCYPQ0pCSOAydsBQbcLBPDfojzScCpRB70+g581oUDgDk7ZFiXMxz9fysqElEHr8CDbSIQV4XFjCwwodoWrTdeqwotPlf1kX/+83FaQfmGAUig0p9jiEuhB/Z5w84P1YT4pNKmVi0xV3AdWlYrMV1fQYDWadjtlP+4tw+d50+lvhKs9Exi6FWAtnwcMn3siMDZv33QKGmZba5dJTy5ptwLpz/j7pRtBE=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87491e0-1a59-4d74-109d-08d6e909f600
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 16:30:30.9121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2387
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2050.outbound.protection.outlook.com|104.47.33.50|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-7196-c
X-Mailprotector-ID: 4c25043e-3274-40c4-975d-1af690282acc
Subject: [USRP-users] offset tuning on the TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============0681852441880797029=="
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

--===============0681852441880797029==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23402C2808CD82D3A68A4E1BAF150BL0PR12MB2340namp_"

--_000_BL0PR12MB23402C2808CD82D3A68A4E1BAF150BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

An associate was asking me about the TwinRX (which I haven't really used). =
 He apparently uses offset tuning on the B series often for his gnuradio fl=
owgraphs.  He was trying to do it with the TwinRX and can't find the hooks =
for it.  I looked around briefly and came up empty as well.  I assume that =
there is something about the TwinRX that prevents offset tuning, so I was c=
urious what that might be.

Thanks

--_000_BL0PR12MB23402C2808CD82D3A68A4E1BAF150BL0PR12MB2340namp_
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
An associate was asking me about the TwinRX (which I haven't really used).&=
nbsp; He apparently uses offset tuning on the B series often for his gnurad=
io flowgraphs.&nbsp; He was trying to do it with the TwinRX and can't find =
the hooks for it.&nbsp; I looked around briefly
 and came up empty as well.&nbsp; I assume that there is something about th=
e TwinRX that prevents offset tuning, so I was curious what that might be.<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
</body>
</html>

--_000_BL0PR12MB23402C2808CD82D3A68A4E1BAF150BL0PR12MB2340namp_--


--===============0681852441880797029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0681852441880797029==--

