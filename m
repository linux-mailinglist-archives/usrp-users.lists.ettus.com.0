Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9FB4EF96
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jun 2019 21:44:39 +0200 (CEST)
Received: from [::1] (port=52334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hePSY-0004jT-QC; Fri, 21 Jun 2019 15:44:30 -0400
Received: from mail-eopbgr700113.outbound.protection.outlook.com
 ([40.107.70.113]:15521 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1hePSU-0004eJ-BX
 for usrp-users@lists.ettus.com; Fri, 21 Jun 2019 15:44:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector1-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L1M0EYk3r01GAJ8EVOpkycKwb6L4kMVrikelgaC0zNY=;
 b=OliIM0uIQnaCjIq5tECGWNGBaH39bYsrBpyLgyeyL6bDKysVeKTqhYre1yjXn+1rJkkaglY7dn9Vkreq4+pxu286Y/lijp7w/ORFA0DH5nG++DCKDPLlkHkwS87kopWfSSFvlMboBl7otwy/7AYiYxB8hJfSgSNGKDrJNbRgy+Q=
Received: from CY4PR02MB2647.namprd02.prod.outlook.com (10.173.40.139) by
 CY4PR02MB3351.namprd02.prod.outlook.com (10.165.89.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Fri, 21 Jun 2019 19:43:44 +0000
Received: from CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa]) by CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa%7]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 19:43:44 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: AGC in USRP
Thread-Index: AQHVKGmY7NLyd/ALUEqp95ByTjZvZA==
Date: Fri, 21 Jun 2019 19:43:44 +0000
Message-ID: <CY4PR02MB264708D827A2DD842CE243F8AAE70@CY4PR02MB2647.namprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79bcb950-2f25-41f1-4787-08d6f680c55c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR02MB3351; 
x-ms-traffictypediagnostic: CY4PR02MB3351:
x-microsoft-antispam-prvs: <CY4PR02MB33512492BB1460BB2FDDB249AAE70@CY4PR02MB3351.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(346002)(376002)(396003)(366004)(40764003)(189003)(199004)(66066001)(33656002)(54896002)(6436002)(74316002)(25786009)(88552002)(476003)(486006)(105004)(478600001)(6916009)(19627405001)(2906002)(7116003)(2351001)(7736002)(8676002)(71190400001)(6116002)(71200400001)(5660300002)(5640700003)(99286004)(53936002)(2501003)(64756008)(76116006)(66446008)(186003)(6506007)(3846002)(14454004)(75432002)(9686003)(256004)(81166006)(55016002)(3480700005)(66556008)(91956017)(68736007)(66476007)(26005)(66946007)(7696005)(52536014)(102836004)(86362001)(81156014)(786003)(4744005)(316002)(73956011)(8936002)(554374003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR02MB3351;
 H:CY4PR02MB2647.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Dd6w5BDjccX82aItFvNx/LEUcSRBpv8kn0/UeFYfzH6WFlyKWzkxuxtQlYDLzzM5C1R8574bZa/HxPA9eKKJXc3RDLfUpE8HSvSmJbU1qxm7aOpHLQXhg01+zINmxDT4sww9alTvG5V/JcZoYj2G6qAQap0dy3dj2zHxOFyrMwzxlFB21MKCssgf+cW+2MwuJ7iNMHIqCHMqqhecGxX2JK7OOkCtEJ5d4/eEzIcz4Tu3Mq1z1b5xhPEot+tm0BsfWJ73nsLwqLnxXDBsr9Q6tbIRHufW18BQwCkPNAEh1S+CLk0SOBp3bKxWxkfk2YXq8V0OpoKi5UIUZOjDJue/mPZY5C16gv5eL2rgw4fLJBjIALz/6dDwqUFcI8kdZCwjRoo6SvesZnpUjklNcsqgSM8T9TLS36pfXq7k3/OswDs=
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 79bcb950-2f25-41f1-4787-08d6f680c55c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 19:43:44.6319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzj28@psu.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3351
Subject: [USRP-users] AGC in USRP
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
From: "Jiang, Fengyang via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jiang, Fengyang" <fzj28@psu.edu>
Content-Type: multipart/mixed; boundary="===============6855260441941728583=="
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

--===============6855260441941728583==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR02MB264708D827A2DD842CE243F8AAE70CY4PR02MB2647namp_"

--_000_CY4PR02MB264708D827A2DD842CE243F8AAE70CY4PR02MB2647namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQoNCkknbSB1c2luZyBVU1JQIHRvIHRyYW5zbWl0IGFuZCByZWNlaXZlIHNvbWUgc2lnbmFs
cy4gQ2FuIEkgdXNlIGNvcnJlbGF0aW9uIHRvIGNvbXBhcmUgdGhlIHN0cmVuZ3RoIG9mIHJlY2Vp
dmVkIHNpZ25hbHMgYWNyb3NzIGRpZmZlcmVudCBleHBlcmltZW50cz8gRWFjaCB0aW1lIEkgd2ls
bCBpbmNyZWFzZSB0aGUgZGlzdGFuY2UgYmV0d2VlbiB0aGUgdHJhbnNtaXR0ZXIgYW5kIHRoZSBy
ZWNlaXZlciBieSBhIGxpdHRsZSwgYW5kIGlzIHRoZXJlIGFuIEFHQyBvciBvdGhlciBtb2R1bGVz
IHdoaWNoIHdpbGwgYWZmZWN0IHRoZSByZWNlaXZlZCBkYXRhIChmb3IgZXhhbXBsZSwgd2hlbiB0
aGUgc2lnbmFsIGlzIHRvbyB3ZWFrLCB3aWxsIGl0IGF1dG9tYXRpY2FseSBhZGp1c3QgdGhlIGdh
aW4pPyBJJ20gdXNpbmcgVVNSUCBOMjEwLCBTQlggZGF1Z2h0ZXJib2FyZHMuIFRoYW5rIHlvdSBm
b3IgeW91ciBoZWxwIQ0KDQpCZXN0LA0KRmVuZ3lhbmcNCg==

--_000_CY4PR02MB264708D827A2DD842CE243F8AAE70CY4PR02MB2647namp_
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
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using USRP to transmit and receive some signals. Can I use correlation =
to compare the strength of received signals across different experiments? E=
ach time I will increase the distance between the transmitter and the recei=
ver by a little, and is there an
 AGC or other modules which will affect the received data (for example, whe=
n the signal is too weak, will it automaticaly adjust the gain)? I'm using =
USRP N210, SBX daughterboards. Thank you for your help!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
</body>
</html>

--_000_CY4PR02MB264708D827A2DD842CE243F8AAE70CY4PR02MB2647namp_--


--===============6855260441941728583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6855260441941728583==--

