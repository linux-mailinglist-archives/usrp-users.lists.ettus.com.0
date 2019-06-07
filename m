Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3481F3892D
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 13:38:00 +0200 (CEST)
Received: from [::1] (port=49700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZDBu-0004yO-Bb; Fri, 07 Jun 2019 07:37:50 -0400
Received: from otransport-19.outbound.emailsrv.net ([54.164.123.4]:48484)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZDBr-0004uL-4k
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 07:37:47 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-19.outbound.emailsrv.net (Postfix) with ESMTPS id A48E96168E
 for <usrp-users@lists.ettus.com>; Fri,  7 Jun 2019 11:37:06 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2056.outbound.protection.outlook.com [104.47.42.56])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 34DDDA3C29
 for <usrp-users@lists.ettus.com>; Fri,  7 Jun 2019 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bzxJrTH6amQB1+CY81Zv7SkSC37ubMjIuhK9HpMDpEo=;
 b=IlX2FW1AYC2vJaMCkZ7fqJCpg+ZwCZ8FBtpDeNvcTEuVucIkhktgL5vQDwTz/R3jkMSYgz+y17L78W9aCi5WOaVtoJoOrmi8xRzWqPO1K0GsdRiwwwmKFGqgpMyPMh331G3q07Yi2yC9IxhbXBLRyMoFJppyaTK2X3ni//PRm40=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2579.namprd12.prod.outlook.com (52.132.27.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Fri, 7 Jun 2019 11:37:04 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 11:37:04 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/g==
Date: Fri, 7 Jun 2019 11:37:03 +0000
Message-ID: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80d78cb7-55fd-4891-74ec-08d6eb3c76aa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2579; 
x-ms-traffictypediagnostic: BL0PR12MB2579:
x-microsoft-antispam-prvs: <BL0PR12MB2579AD58B0930D4BA312FA4DAF100@BL0PR12MB2579.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(376002)(39830400003)(136003)(346002)(189003)(199004)(316002)(86362001)(33656002)(52536014)(19627405001)(486006)(71190400001)(71200400001)(74316002)(25786009)(66556008)(66446008)(76116006)(6916009)(53936002)(66946007)(73956011)(64756008)(66476007)(256004)(5660300002)(6506007)(102836004)(66066001)(8936002)(81166006)(81156014)(8676002)(7736002)(7696005)(99286004)(6116002)(3846002)(2906002)(6606003)(508600001)(54896002)(9686003)(6436002)(55016002)(26005)(186003)(476003)(14454004)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2579;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6SbI+vDK4Cvg9Kgjp6mKYA6HKwrIIUIVl9wfWCIKOozrP/FPV+WOSk14U8xeyZprdDNKwSahP05QQYU6FbXAECo8xGHzdVMpL+j6vltw8vug702vcEEg5SiHpiolpdSPd/saq48iSAfojdS+/t/ofQ3MmMucc4NAA2TkZuQttihxNwfTph8tLCAIHhETefylvkDp9zsxUjEq0QKUiuZt2crYHBc47ioUbwsUswKSMch3u/2f18HlBDpziTCP99lQyxP1zOmn/giKiS8e8+DBs6/RQlmBC5XXTO4FL9qTFcCB36VFqdALMMiqxgcdoSa9c3vG/hixc8Fday5YnwYVVb6WGoxa/7BkNU1JAdQFYGTCWV3Mqg5nLMfhGpc9RDG5JRyGchtv5h1ClSdLObuwsPlYzoyRU8bsGl9+wnUkd44=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80d78cb7-55fd-4891-74ec-08d6eb3c76aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 11:37:03.9472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2579
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2056.outbound.protection.outlook.com|104.47.42.56|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-9876-c
X-Mailprotector-ID: 01402bca-8b93-4ede-b482-3a68b477a061
Subject: [USRP-users] E320 hogging the network
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
Content-Type: multipart/mixed; boundary="===============7041071965603816820=="
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

--===============7041071965603816820==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340FE595800AEE988A97927AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB2340FE595800AEE988A97927AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It looks like I am misunderstanding something with how the E320 handles the=
 network.


I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of the=
 default 10.2).  I can ssh into it and things seem to run fine in embedded =
mode.


Now, if I ssh onto an E312 that is on the same network (IP 10.95), it doesn=
't work right as long as the E320 is plugged in.  When I do a probe or run =
any other UHD-type commands on the E310, it seems to always talk to the E32=
0 first and it screws everything up.  It doesn't matter if I put the E310's=
 address into the command or not, the E320 responds.  I also remember seein=
g this occur when I was on my host machine running commands (the E320 bulli=
ed its way into being the main attraction).


My current work-around is to unplug Ethernet from the E320, run my command =
on the E310, plug back into the E320, then run its command.  This seems to =
allow things to work as I intended, but is obviously not ideal and is fairl=
y difficult to do when devices are remote.


So what am I missing here?

--_000_BL0PR12MB2340FE595800AEE988A97927AF100BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">It looks like I am misunderstandi=
ng something with how the E320 handles the network.&nbsp;&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I have my E320 on my subnet with =
the sfp0 assigned to 10.45 (instead of the default 10.2).&nbsp; I can ssh i=
nto it and things seem to run fine in embedded mode.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Now, if I ssh onto an E312 that i=
s on the same network (IP 10.95), it doesn't work right as long as the E320=
 is plugged in.&nbsp; When I do a probe or run any other UHD-type commands =
on the E310, it seems to always talk to
 the E320 first and it screws everything up.&nbsp; It doesn't matter if I p=
ut the E310's address into the command or not, the E320 responds.&nbsp; I a=
lso remember seeing this occur when I was on my host machine running comman=
ds (the E320 bullied its way into being the
 main attraction).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My current work-around is to unpl=
ug Ethernet from the E320, run my command on the E310, plug back into the E=
320, then run its command.&nbsp; This seems to allow things to work as I in=
tended, but is obviously not ideal and
 is fairly difficult to do when devices are remote.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">So what am I missing here?</p>
</div>
</body>
</html>

--_000_BL0PR12MB2340FE595800AEE988A97927AF100BL0PR12MB2340namp_--


--===============7041071965603816820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7041071965603816820==--

