Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD038AB7
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 14:54:13 +0200 (CEST)
Received: from [::1] (port=60224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZENh-0000GF-M3; Fri, 07 Jun 2019 08:54:05 -0400
Received: from otransport-12.outbound.emailsrv.net ([52.1.62.31]:46181)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZENd-00009r-A8
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 08:54:01 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-12.outbound.emailsrv.net (Postfix) with ESMTPS id D16CF616F9
 for <usrp-users@lists.ettus.com>; Fri,  7 Jun 2019 12:53:20 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2059.outbound.protection.outlook.com [104.47.40.59])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 640531E0009
 for <usrp-users@lists.ettus.com>; Fri,  7 Jun 2019 12:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/vqlUGmQvLWf6UqB/zwsoe0IZm1xVnoueMq83IcBm0=;
 b=AA0h32G2gzZqIoxBnjSjnCV8LpBQ3D5o6UhjK/hZGkBeo++hzKzxSgWmCg1+Iw7Dec/UjqrF7iR4x+kLDHYuAVMJ3wr8WTti6ham+DuLZiTjWlOPYli+LlnEx+v427CE2ozSyxLXXSe39wR3GRYZWxHBVJwo9SKmxgpS4tpPsjo=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0SPR01MB0021.namprd12.prod.outlook.com (20.177.146.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 12:53:18 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 12:53:18 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: two E320 radios
Thread-Index: AQHVHS/Qr6Tjf2TYU0aIn3clcOVQ/w==
Date: Fri, 7 Jun 2019 12:53:18 +0000
Message-ID: <BL0PR12MB23408DE18CC0D3FD001D0098AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5dbf0db2-9f60-43df-73f6-08d6eb471d1a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0SPR01MB0021; 
x-ms-traffictypediagnostic: BL0SPR01MB0021:
x-microsoft-antispam-prvs: <BL0SPR01MB0021525D723B91FE44FBD2D0AF100@BL0SPR01MB0021.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(396003)(136003)(376002)(39830400003)(199004)(189003)(7696005)(99286004)(316002)(102836004)(26005)(6506007)(7116003)(19627405001)(2906002)(6606003)(33656002)(6916009)(66066001)(14454004)(508600001)(74316002)(6116002)(3846002)(558084003)(25786009)(6436002)(486006)(5660300002)(55016002)(9686003)(54896002)(476003)(86362001)(256004)(71190400001)(71200400001)(73956011)(66476007)(66556008)(64756008)(66446008)(76116006)(66946007)(8676002)(81156014)(81166006)(186003)(7736002)(53936002)(52536014)(8936002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0SPR01MB0021;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nOgW30j+HFSo3Zse8TQ1sah+kxRqDo7GvaBgSCwJ3FG4QVEdXj/RQTZUbrWn3m31xSFLKnwKwXNb+xYZ+ZPDOk3nZYWCevBosihFHpZw8Fn+1p+/SRcRs7PxMFvqKfJjit6v7Owa/mp8rU5wa/fGcVOOiaCPE/7Ktj4S/CLIFuD0pitsW9/JftFFtIc2TJUzAbyvmjS/TFbDFQkTKB8U3ivYj1hwZe1DrSvxea3bueVWW3wukgs6cnESh8DpIB2xmCBD2jNTda5K5calBd58Z6xGuYnw8rlddU+QRTdQegJ2A53e1dViug9/4yBkUHZ9X3/F1R8duSBveQ3OusxjbgQRm0ti4MWE56f7+D0fFVRsIWfhb+WiU1iqrrwhAr3g1RMppe7gdZsrE3/YO0PrF8ykCOCeYFrRIAPLKab2rqk=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dbf0db2-9f60-43df-73f6-08d6eb471d1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 12:53:18.1652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0SPR01MB0021
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam03lp2059.outbound.protection.outlook.com|104.47.40.59|NAM03-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.40.59, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-5848-c
X-Mailprotector-ID: c902f7af-10bc-40b5-ab96-1adb39bd2e8e
Subject: [USRP-users] two E320 radios
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
Content-Type: multipart/mixed; boundary="===============0649570911775643091=="
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

--===============0649570911775643091==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23408DE18CC0D3FD001D0098AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB23408DE18CC0D3FD001D0098AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, another E320 question.  With my custom RFNoC image, only a Radio_0 show=
s up.  Shouldn't there be a Radio_1 as well?

--_000_BL0PR12MB23408DE18CC0D3FD001D0098AF100BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">OK, another E320 question.&nbsp; =
With my custom RFNoC image, only a Radio_0 shows up.&nbsp; Shouldn't there =
be a Radio_1 as well?&nbsp;&nbsp;</p>
</div>
</body>
</html>

--_000_BL0PR12MB23408DE18CC0D3FD001D0098AF100BL0PR12MB2340namp_--


--===============0649570911775643091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0649570911775643091==--

