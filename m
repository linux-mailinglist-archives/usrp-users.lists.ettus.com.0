Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7F30142
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 19:52:39 +0200 (CEST)
Received: from [::1] (port=57458 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWPDQ-0000cJ-Cw; Thu, 30 May 2019 13:51:48 -0400
Received: from mail-eopbgr720114.outbound.protection.outlook.com
 ([40.107.72.114]:3632 helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1hWPDM-0000WW-Oa
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 13:51:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector1-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=64/LEIGnr8RJzxAAsmcgN5n/FFTczqHsR1aQt1roZDE=;
 b=eqf3K4EKcIGg6UYOT1i+zj2qMyy2weZQJo93cmJbeSZFNEg+Nxjg4YxvhXaBuD5SatECiCCvvbH5iXLdtGYOJQWMdofOhASwt3gjXtSCmU4K2qedD88HpPAmo2B2Egzdh3yuZiTbBXF70lQMU2bHBVlAUDnzomkbURbYB9S317Y=
Received: from CY4PR02MB2647.namprd02.prod.outlook.com (10.173.40.139) by
 CY4PR02MB2709.namprd02.prod.outlook.com (10.175.80.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 30 May 2019 17:51:02 +0000
Received: from CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::858e:30f5:e9d:bd78]) by CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::858e:30f5:e9d:bd78%9]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 17:51:02 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: A problem on transmitting data using 5GHz
Thread-Index: AQHVFw3318LFvAxTVE2UsO7HMrUPGw==
Date: Thu, 30 May 2019 17:51:02 +0000
Message-ID: <CY4PR02MB2647FF653200BAACB6D1102CAA180@CY4PR02MB2647.namprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf646fa3-822b-408d-e7a1-08d6e52761e8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR02MB2709; 
x-ms-traffictypediagnostic: CY4PR02MB2709:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <CY4PR02MB270990579CFB4E609EFFDE6CAA180@CY4PR02MB2709.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(366004)(346002)(376002)(136003)(40764003)(189003)(199004)(53754006)(606006)(8676002)(66476007)(81166006)(71200400001)(105004)(81156014)(66066001)(478600001)(66946007)(76116006)(73956011)(55016002)(6306002)(186003)(66446008)(66556008)(71190400001)(2351001)(2906002)(64756008)(966005)(7736002)(91956017)(88552002)(8936002)(3846002)(14454004)(6116002)(68736007)(7696005)(5640700003)(75432002)(786003)(19627405001)(86362001)(476003)(33656002)(53936002)(256004)(99286004)(2501003)(52536014)(54896002)(5660300002)(9686003)(486006)(6506007)(102836004)(74316002)(6436002)(4744005)(25786009)(6916009)(236005)(316002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR02MB2709;
 H:CY4PR02MB2647.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NGp9oZGyH0a0Hn7zdIJJSzWVfYksuIwEzitGhI2C/vsPwfv/R+dDvOtzlSff/F5utYIhscg1T7rvbQsys6yoagEjMvaJ50ZMGIW9qUw25+QoXLrP/gwfrfe0TB5VzOVMzErqyAfp9gDAgWi6suE3AflZjSWmdU68v+0eci92zkNyDdcmnjYndTM9xJrNS9LJCJVQ+e22Gj/qax/GAGxEdFm2zUduPiILFg/mRIROKWd1w4ZX51v9jFSzoWZI6Xcn0Dc+1wplk2p1oz2qKGrAFW8+ggq8BwOzRbNDFCIEboeqPbpvAL9KfMesApSiBTN/14NBUH+E4Lolt5ngFBniMdWarqTpHr0Es2Aet5vdVs53pl/FHsapG/sBQneZp4gxu100tBapXNkMwhSkpZuc0YeuBvI/1rfmfL3SQucanXY=
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: bf646fa3-822b-408d-e7a1-08d6e52761e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 17:51:02.7141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzj28@psu.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2709
Subject: [USRP-users] A problem on transmitting data using 5GHz
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
Content-Type: multipart/mixed; boundary="===============0774091060511737115=="
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

--===============0774091060511737115==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR02MB2647FF653200BAACB6D1102CAA180CY4PR02MB2647namp_"

--_000_CY4PR02MB2647FF653200BAACB6D1102CAA180CY4PR02MB2647namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQWxsLA0KDQpJJ20gdXNpbmcgdHdvIHVzcnBzIHRvIHRyYW5zbWl0IGEgcHJlYW1ibGUgZnJv
bSBvbmUgdG8gdGhlIG90aGVyLiBXaGVuIEkgdXNlIDIuNDM3R0h6LCAyLjQ1R0h6IGFuZCAyLjVH
SHosIGl0IHdvcmtzLCBidXQgaWYgSSB1c2UgNUdIeiwgNS4zR0h6LCA1LjhHSHosIEkgd2lsbCBn
ZXQgbm90aGluZyBhdCB0aGUgcmVjZWl2ZXIgc2lkZS4gV2hhdCBjb3VsZCBiZSB0aGUgcHJvYmxl
bT8NCg0KRGV2aWNlcyBiZWluZyB1c2VkOg0KVVNSUCBOMjEwLiBodHRwczovL3d3dy5ldHR1cy5j
b20vYWxsLXByb2R1Y3RzL1VOMjEwLUtJVC8NCkNCWCBVU1JQIERhdWdodGVyYm9hcmQgKDEuMkdI
eiAtIDZHSHopIGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9hbGwtcHJvZHVjdHMvQ0JYLw0KVkVSVDI0
NTAgQW50ZW5uYSAoMi40IC0gMi41R0h6ICYgNC45IC0gNS45R0h6KSBodHRwczovL3d3dy5ldHR1
cy5jb20vYWxsLXByb2R1Y3RzL1ZFUlQyNDUwLw0KDQpSZWFsbHkgdGhhbmtzIGZvciB5b3VyIGhl
bHAhDQoNCkJlc3QgcmVnYXJkcywNCkZlbmd5YW5nDQo=

--_000_CY4PR02MB2647FF653200BAACB6D1102CAA180CY4PR02MB2647namp_
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
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using two usrps to transmit a preamble from one to the other. When I us=
e 2.437GHz, 2.45GHz and 2.5GHz, it works, but if I use 5GHz, 5.3GHz, 5.8GHz=
, I will get nothing at the receiver side. What could be the problem?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Devices being used:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
USRP N210.&nbsp;<a href=3D"https://www.ettus.com/all-products/UN210-KIT/" i=
d=3D"LPNoLP858021">https://www.ettus.com/all-products/UN210-KIT/</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
CBX USRP Daughterboard (1.2GHz - 6GHz)&nbsp;<a href=3D"https://www.ettus.co=
m/all-products/CBX/" id=3D"LPNoLP477081">https://www.ettus.com/all-products=
/CBX/</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
VERT2450 Antenna (2.4 - 2.5GHz &amp; 4.9 - 5.9GHz) <a href=3D"https://www.e=
ttus.com/all-products/VERT2450/" id=3D"LPNoLP644247">
https://www.ettus.com/all-products/VERT2450/</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Really thanks for your help!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
</body>
</html>

--_000_CY4PR02MB2647FF653200BAACB6D1102CAA180CY4PR02MB2647namp_--


--===============0774091060511737115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0774091060511737115==--

