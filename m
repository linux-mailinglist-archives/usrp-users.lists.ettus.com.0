Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7A5C0D0
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2019 18:03:57 +0200 (CEST)
Received: from [::1] (port=52650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hhymW-0003w3-R2; Mon, 01 Jul 2019 12:03:52 -0400
Received: from otransport-7.outbound.emailsrv.net ([52.22.79.245]:57163)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hhymT-0003os-90
 for usrp-users@lists.ettus.com; Mon, 01 Jul 2019 12:03:49 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-7.outbound.emailsrv.net (Postfix) with ESMTPS id 0A92A616C8
 for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2019 16:03:08 +0000 (UTC)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2056.outbound.protection.outlook.com [104.47.44.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 98EDB613BE
 for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2019 16:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qd6j//RpD9LR4rwc5S39+Dz+AHnGtBSydzOTe24Rs08=;
 b=BvGOj7BIxL4lsm6Aa+vs03oYMidLBpKaQhFeZAvckLtgiOJ5GrPUGefjOBgwJErcOlYAE0hmIYfwsKy+YUFrh6aFeUoW3RzFUWGtN4/o3jeUkOGrciG4CleFWdl8y5MKT4Y/LPSmSOsjwfL5DgtZQyYpUjswOAbKcC2ToXDUqHo=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2484.namprd12.prod.outlook.com (52.132.11.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 16:03:04 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 16:03:04 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: Issues shutting down an E320
Thread-Index: AQHVMCXP2CHTaHlIl0qNcR/aVYv4Yg==
Date: Mon, 1 Jul 2019 16:03:04 +0000
Message-ID: <BL0PR12MB2340CF3093F897E9895719B3AFF90@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 172f8bb1-9d72-4c48-7b59-08d6fe3d99d2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2484; 
x-ms-traffictypediagnostic: BL0PR12MB2484:
x-microsoft-antispam-prvs: <BL0PR12MB2484214A1E06A2A2507BE26CAFF90@BL0PR12MB2484.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(366004)(376002)(346002)(136003)(396003)(189003)(199004)(6916009)(81166006)(8676002)(81156014)(66946007)(6506007)(6436002)(73956011)(66446008)(66556008)(66476007)(2906002)(64756008)(52536014)(74316002)(7736002)(66066001)(3846002)(6116002)(102836004)(6606003)(508600001)(8936002)(76116006)(86362001)(476003)(55016002)(7696005)(53936002)(316002)(33656002)(9686003)(486006)(71200400001)(14454004)(71190400001)(186003)(68736007)(54896002)(25786009)(5660300002)(256004)(99286004)(4744005)(26005)(19627405001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2484;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: itnVJHneUzMlC6FA0y8croDh+qtV+HGLrT/Om+peZeu+A9gmDdvcJIizkmPUwZdTj+JAD7QdpRHS69azagu+88W8DrUhaM+LyOIh4ri72aZR8cYaemHZrx9WgRlYbixjhMfKnz+DuTksfg1rDBgGe8bVws04bFs1mW3dAlkh0nHqYRXFiVdYBCJpAqTswTMwDtK+p3TYVrMfwZpS5RxNSc6doxo0bNQIIJTLnp3wMfIc/NkLz9icXgAohI0c+YgYnCs5zCLB1MgL6d5sWm59xqM65BXNOToTAAKJSTsjv5Zrb3C5lukVPZU8gPoaQfZA/AuVX9r1PSDotsFlG8N5uVRxfo97E6PEepc34w7f2oJk7eYAfgVH4cHOCDHi3SSONixYE4DP7cvr9OhdaSL83RJSiS1bExeAdPMHJojsFGU=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 172f8bb1-9d72-4c48-7b59-08d6fe3d99d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 16:03:04.3064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2484
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam04lp2056.outbound.protection.outlook.com|104.47.44.56|NAM04-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.44.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-8082-c
X-Mailprotector-ID: d23b6ebb-25a0-414c-ac5e-49e1c5f84e65
Subject: [USRP-users] Issues shutting down an E320
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
Content-Type: multipart/mixed; boundary="===============1190675055284575670=="
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

--===============1190675055284575670==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340CF3093F897E9895719B3AFF90BL0PR12MB2340namp_"

--_000_BL0PR12MB2340CF3093F897E9895719B3AFF90BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've noticed issues getting my E320 to shutdown sometimes.  It is almost li=
ke it is halting, but not going down far enough to turn off the unit (the L=
ED doesn't turn off).


I'll issue the "shutdown -h now" command and it will kick me out of my ssh =
session (which is fine).  I cannot ping it anymore, so that makes me feel l=
ike it is shutting down, but the green LED never goes out.  I've tried the =
"-P" flag, but that doesn't seem to help.


Again, this isn't every time, but sometimes (maybe it is dependent on which=
 E320 I am using, I haven't kept a good enough watch on when it happens to =
be sure).



--_000_BL0PR12MB2340CF3093F897E9895719B3AFF90BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I've noticed issues getting my E3=
20 to shutdown sometimes.&nbsp; It is almost like it is halting, but not go=
ing down far enough to turn off the unit (the LED doesn't turn off).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'll issue the &quot;shutdown -h =
now&quot; command and it will kick me out of my ssh session (which is fine)=
.&nbsp; I cannot ping it anymore, so that makes me feel like it is shutting=
 down, but the green LED never goes out.&nbsp; I've tried
 the &quot;-P&quot; flag, but that doesn't seem to help.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Again, this isn't every time, but=
 sometimes (maybe it is dependent on which E320 I am using, I haven't kept =
a&nbsp;good enough watch on when it happens to be sure).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
</div>
</body>
</html>

--_000_BL0PR12MB2340CF3093F897E9895719B3AFF90BL0PR12MB2340namp_--


--===============1190675055284575670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1190675055284575670==--

