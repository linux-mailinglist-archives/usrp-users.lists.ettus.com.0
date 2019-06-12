Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4556543079
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 21:57:18 +0200 (CEST)
Received: from [::1] (port=44442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb9Mt-0001Kp-Jj; Wed, 12 Jun 2019 15:57:11 -0400
Received: from otransport-22.outbound.emailsrv.net ([34.194.188.63]:40494)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hb9Mq-0001Fo-0v
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 15:57:08 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-22.outbound.emailsrv.net (Postfix) with ESMTPS id 5C1156126E
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 19:56:27 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2057.outbound.protection.outlook.com [104.47.45.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id CEE71A26D5
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 19:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GdTcJ2GMOiu6bVkQlY2oyjOpwD6joT89Vq1Jikma5Gk=;
 b=Ax1uULCKXeuAQttdQPxOGsQdGMtx0GUc9xNphc6r1UOJGNZ++oAe1tgCfJYSuKfEALM+jldnvKhuaox3uvw6pa2jxmzmVUIlet3nhHmkSmVGNya+47NbBFPzqKo9IZIFfZMjj86O8wBrWpt3Mui0LipBPl+GwpjUC/tDawMZxg0=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2371.namprd12.prod.outlook.com (52.132.11.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Wed, 12 Jun 2019 19:56:24 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 19:56:24 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: UHD not seeing E320
Thread-Index: AQHVISpb+KEg0d3b/0qA1Ho1mXQbBqaYZ7q7
Date: Wed, 12 Jun 2019 19:56:24 +0000
Message-ID: <BL0PR12MB2340F9194E8CB37090D872ABAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340075EA81B6C386742FD8CAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340075EA81B6C386742FD8CAFEC0@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7a11ba6-8b32-4fc9-8382-08d6ef700c88
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2371; 
x-ms-traffictypediagnostic: BL0PR12MB2371:
x-microsoft-antispam-prvs: <BL0PR12MB2371E78F686FE93EF17B220BAFEC0@BL0PR12MB2371.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(376002)(39830400003)(396003)(366004)(31014005)(189003)(199004)(76116006)(66946007)(53936002)(86362001)(316002)(2906002)(6916009)(66066001)(3846002)(8936002)(6606003)(186003)(66446008)(6116002)(64756008)(66476007)(5660300002)(66556008)(52536014)(73956011)(102836004)(11346002)(2940100002)(6246003)(256004)(76176011)(6436002)(55016002)(71190400001)(229853002)(476003)(446003)(71200400001)(6506007)(53546011)(486006)(19627405001)(81166006)(81156014)(14454004)(74316002)(99286004)(33656002)(7736002)(26005)(68736007)(54896002)(9686003)(8676002)(508600001)(25786009)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2371;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WSq1Q7gcuJgfrw3iayQVCbfjpLYfhDqT7iTIphZ4wuS4ENQ8/tuRdIZjCsVn35jSfVpyBEyoXC3qQn56egnsSYjW3Vr5/ubIG5L+zy2X5/zGt+P2TKLQKtdVMMfENBBpoPASCiC1tjUpRaTVCeEzcJ9rlxlmksrnMQWJs9G9YF0tB0B2Ie4KRYFmvblz3CmonCMw6trpWzomXbdSQzVrLK28eHfCJSqbFSyJukpF5m1V7WacPx3HNj9DiCPO/nQwcQzws370OCVyjxYFGDfLcxymXR6G4tQ6pfBXcNXUj4dVB8oYv8UHe5ELoG1uate0+zZ4ciI7CuPf739Yqf/wavg43Bw9gIkr9kWLRDz8DJQGYD/NEjOGULxAoqnZ2NcB3efKQ5C7FY8foiVryqjh9iApURPkRR+DKQh+YTicFpU=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a11ba6-8b32-4fc9-8382-08d6ef700c88
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 19:56:24.4552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2371
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam04lp2057.outbound.protection.outlook.com|104.47.45.57|NAM04-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.45.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-11317-c
X-Mailprotector-ID: b8cfd871-79c8-4051-9aa9-0ec355b343e4
Subject: Re: [USRP-users] UHD not seeing E320
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
Content-Type: multipart/mixed; boundary="===============7242076657450757161=="
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

--===============7242076657450757161==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340F9194E8CB37090D872ABAFEC0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340F9194E8CB37090D872ABAFEC0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Problem solved.  It was a firewall issue.  Is there a list of what ports I =
should make sure are opened to UDP?  The ones I caught were 49152 and 49154=
.


Are there any others I need to know?

________________________________
From: Jason Matusiak
Sent: Wednesday, June 12, 2019 10:32 AM
To: Ettus Mail List
Subject: UHD not seeing E320


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

--_000_BL0PR12MB2340F9194E8CB37090D872ABAFEC0BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Problem solved.&nbsp; It was a fi=
rewall issue.&nbsp; Is there a list of what ports I should make sure are op=
ened to UDP?&nbsp; The ones I caught were&nbsp;<span>49152 and&nbsp;<span>4=
9154.</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>Are there any others =
I need to know?</span></span></p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Wednesday, June 12, 2019 10:32 AM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> UHD not seeing E320</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I have a new issue with my E320.=
&nbsp; I loaded up an E320 with an SD card image that I have used on a diff=
erent working E320.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">On my personal machine, I am usi=
ng a 1G image that seems to work fine and uhd_find_device (and probe) seems=
 to be working fine.&nbsp; I change the IP and load up an XG image onto it.=
&nbsp; I move it physically to a server that
 uses 10G.&nbsp; The particular ethernet port works fine with my X310 I had=
 had hooked up to it.&nbsp; I disconnected my X310 and plugged in my E320.&=
nbsp; I can ping and SSH the device fine.&nbsp; When I run a probe or a a f=
ind devices, I don't find a UHD device.&nbsp; I tried with
 different versions of UHD and they all seem to have the same problem.&nbsp=
; When I am ssh'ed onto the device, probes and finds work fine internally.<=
/p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Is there something I am missing =
here?&nbsp; The port worked with an X310 completely, and can talk to an E32=
0, but that is all; I am very perplexed.</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340F9194E8CB37090D872ABAFEC0BL0PR12MB2340namp_--


--===============7242076657450757161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7242076657450757161==--

