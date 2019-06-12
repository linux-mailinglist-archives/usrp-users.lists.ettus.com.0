Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCBF42953
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 16:33:50 +0200 (CEST)
Received: from [::1] (port=37090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb4Jr-0007KS-Nr; Wed, 12 Jun 2019 10:33:43 -0400
Received: from otransport-6.outbound.emailsrv.net ([54.152.160.215]:50812)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hb4Jn-0007ED-UJ
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 10:33:39 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-6.outbound.emailsrv.net (Postfix) with ESMTPS id 5374F61659
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 14:32:59 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2057.outbound.protection.outlook.com [104.47.45.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id CE49CA4033
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 14:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcZvcaikZQlRa9c9OqAoW6ytGplG2pNcX/lsDZRvheU=;
 b=NFb3M7OhDzRXFxHlQZsQC8Xoq73Q5jqTcCP8bG8fw+GV0JO/PtTNPp8HQIXeaajLoJcAc0nldy5E7sjHuhw3sNxJALST4uecukwzA3oyPoCYzSy3i9ocz20VPTa1G9OtFmhokO+I1iLM1FRZZrZ/MMpC4R5CSjIogk3+Q55nwZ8=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2338.namprd12.prod.outlook.com (52.132.10.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 14:32:56 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 14:32:56 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: UHD not seeing E320
Thread-Index: AQHVISpb+KEg0d3b/0qA1Ho1mXQbBg==
Date: Wed, 12 Jun 2019 14:32:56 +0000
Message-ID: <BL0PR12MB2340075EA81B6C386742FD8CAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83a5c4ea-0284-4aac-c461-08d6ef42dc7d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2338; 
x-ms-traffictypediagnostic: BL0PR12MB2338:
x-microsoft-antispam-prvs: <BL0PR12MB23383FA8EDCCD2354CBB5E56AFEC0@BL0PR12MB2338.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(376002)(396003)(136003)(346002)(366004)(31014005)(189003)(199004)(486006)(186003)(99286004)(102836004)(76116006)(26005)(6506007)(68736007)(73956011)(66446008)(66476007)(66946007)(66556008)(19627405001)(64756008)(316002)(6606003)(6916009)(25786009)(476003)(4744005)(7696005)(8936002)(81156014)(81166006)(66066001)(256004)(9686003)(2906002)(55016002)(54896002)(86362001)(53936002)(33656002)(6436002)(8676002)(71200400001)(14454004)(52536014)(71190400001)(7736002)(74316002)(508600001)(5660300002)(3846002)(6116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2338;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wrpN+GBcBqcHjIv+nXxl7kyezO+8uHLTFkpAeAY82k6VXjX2zb0nRJ5rCZcDErM0oBVDJpjI1vJWyu8NarrCtXyR+xffh711ApNnOrBd7iTpusp2DayJzmj1jFsCIRW+GyuXhJYFwiyHUlA4JXL7DC7cETe7UbFybrhcYb7Ro5kPzDw1Y1a3vLb2Ch1By46ml5mvplJGJ2dy77wk/cQW5HM6EKa+vE1solx4ULFTCmkbp7dx5XffnB/KaQKlNcbRkOhVIchpJwwVFPwqAc7zXJa5pXX/SZ07vP+HN4TAZZTHNvhlWRdAwSWRcioQmNE95Ziwjb4+L9+hJclyLpOz8+DAa9aoN7PT0qhZbUkm2JiYpCo8I1M9ZEHZANMHVZG+80K8rndCa/By1NwVRompCgN49ArdgCCx7bMMeP0JwGY=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83a5c4ea-0284-4aac-c461-08d6ef42dc7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 14:32:56.3225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2338
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam04lp2057.outbound.protection.outlook.com|104.47.45.57|NAM04-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.45.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-9112-c
X-Mailprotector-ID: ceb37c87-ccaa-4eb0-a7e9-2d141e6df4fc
Subject: [USRP-users] UHD not seeing E320
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
Content-Type: multipart/mixed; boundary="===============1961732464156300672=="
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

--===============1961732464156300672==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340075EA81B6C386742FD8CAFEC0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340075EA81B6C386742FD8CAFEC0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a new issue with my E320.  I loaded up an E320 with an SD card image=
 that I have used on a different working E320.


On my personal machine, I am using a 1G image that seems to work fine and u=
hd_find_device (and probe) seems to be working fine.  I change the IP and l=
oad up an XG image onto it.  I move it physically to a server that uses 10G=
.  The particular ethernet port works fine with my X310 I had had hooked up=
 to it.  I disconnected my X310 and plugged in my E320.  I can ping and SSH=
 the device fine.  When I run a probe or a a find devices, I don't find a U=
HD device.  I tried with different versions of UHD and they all seem to hav=
e the same problem.  When I am ssh'ed onto the device, probes and finds wor=
k fine internally.


Is there something I am missing here?  The port worked with an X310 complet=
ely, and can talk to an E320, but that is all; I am very perplexed.

--_000_BL0PR12MB2340075EA81B6C386742FD8CAFEC0BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I have a new issue with my E320.&=
nbsp; I loaded up an E320 with an SD card image that I have used on a diffe=
rent working E320.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">On my personal machine, I am usin=
g a 1G image that seems to work fine and uhd_find_device (and probe) seems =
to be working fine.&nbsp; I change the IP and load up an XG image onto it.&=
nbsp; I move it physically to a server that
 uses 10G.&nbsp; The particular ethernet port works fine with my X310 I had=
 had hooked up to it.&nbsp; I disconnected my X310 and plugged in my E320.&=
nbsp; I can ping and SSH the device fine.&nbsp; When I run a probe or a a f=
ind devices, I don't find a UHD device.&nbsp; I tried with
 different versions of UHD and they all seem to have the same problem.&nbsp=
; When I am ssh'ed onto the device, probes and finds work fine internally.<=
/p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Is there something I am missing h=
ere?&nbsp; The port worked with an X310 completely, and can talk to an E320=
, but that is all; I am very perplexed.</p>
</div>
</body>
</html>

--_000_BL0PR12MB2340075EA81B6C386742FD8CAFEC0BL0PR12MB2340namp_--


--===============1961732464156300672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1961732464156300672==--

