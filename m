Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B2D180052
	for <lists+usrp-users@lfdr.de>; Tue, 10 Mar 2020 15:37:31 +0100 (CET)
Received: from [::1] (port=60168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jBg0b-0001b9-Kc; Tue, 10 Mar 2020 10:37:25 -0400
Received: from mail-eopbgr770087.outbound.protection.outlook.com
 ([40.107.77.87]:14446 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lmeyerovich@i-a-i.com>)
 id 1jBg0Y-0001Va-8V
 for usrp-users@lists.ettus.com; Tue, 10 Mar 2020 10:37:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONI87YyP3lM2uVseF4Jl3FofaALszu+bySMaWgOPXr9eDf9afwwlWHtR6G9g16/aAJtKWBQnlFVxZcel9r8dZlsOJ2pDveUSxKYXpqZj4RpIWCMNwWmgw58a2YfOQPA1kuSPSRUziJW2jcWmm86fH+K3gmhP4DEt9eYMLvhu+3xwWZzKJHXUZyGx2DYovLkU6DjIwQeu/PldykUPHeJdKb7eLgyBjxO2kt6wb4HRfbcgfE4gwdSv9zerwbguGMJ2grdKbDTHSMeN9rH5C5QL6YP/masarnJwykqZBQe3lhTGEX2DbI/Bohm0qdOdR5HYehso1apIVGG11KDTgASuHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqb6OFqe+ipnt0agzcU1qAF7/p3zX2RvTv1eL/nr/qg=;
 b=ckEwwRMBAtCs9ZohyV621MydjbPw9VPOgbZqan4UNiGKMdf82X73L61Far+6UdWFSi4uOJsLR8Jo48SnoOHqiATVcrJ3Tkqk3wPkxf3xzA0RvdIZks6WHE7UkAK+nMoO7O9wrShdfgav/fFD8kLQ6kqTzz5/v4Stcvj0zd5YEPVXLF3BpnPGBlCUgticXtRIi3srsLyHhjqfREYC5ja1iX1uy9mjJWE2UpruweH1MQtlK6wCRmAMP+KhCnSTk3Z/HwF+jhlULx4Em9yT89ceMSHiem/kuzydCpW7ewBKfzHDo4kgxUDntuLs1NNk0FaZqFMaEqum+pOOvJtQhfKQnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=i-a-i.com; dmarc=pass action=none header.from=i-a-i.com;
 dkim=pass header.d=i-a-i.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=i-a-i.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqb6OFqe+ipnt0agzcU1qAF7/p3zX2RvTv1eL/nr/qg=;
 b=MVmWqzYNdQpW7Z/UYztAftAx0ztBMjhUkzr1NT+44m9bJyEfPg9vpMmCM3ZPGoqhU2MLGrA2yBnADzx5NQkTXCa/6bDFTP0BrZtPIc+l6l67WNYFlvqjE1srooCi2WBd2AuraTYmoB8tCQ4BkF8fTHI90aDzvYm1tF3TdpEh0ws=
Received: from MN2PR04MB5918.namprd04.prod.outlook.com (2603:10b6:208:a4::25)
 by MN2PR04MB6829.namprd04.prod.outlook.com (2603:10b6:208:1e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Tue, 10 Mar
 2020 14:36:40 +0000
Received: from MN2PR04MB5918.namprd04.prod.outlook.com
 ([fe80::140a:be23:c967:9e43]) by MN2PR04MB5918.namprd04.prod.outlook.com
 ([fe80::140a:be23:c967:9e43%4]) with mapi id 15.20.2793.018; Tue, 10 Mar 2020
 14:36:40 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd_usrp_probe error
Thread-Index: AdX26SQAfBrIiKyuSGGsYzXZs+lwVw==
Date: Tue, 10 Mar 2020 14:36:40 +0000
Message-ID: <MN2PR04MB5918B266B47F59E7D263665CA5FF0@MN2PR04MB5918.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=lmeyerovich@i-a-i.com; 
x-originating-ip: [50.241.140.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b98a0416-ca24-48b8-75dd-08d7c500727f
x-ms-traffictypediagnostic: MN2PR04MB6829:
x-microsoft-antispam-prvs: <MN2PR04MB68293D0A2E6B609AF1FA5624A5FF0@MN2PR04MB6829.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(366004)(39840400004)(396003)(199004)(189003)(64756008)(66556008)(55016002)(66446008)(76116006)(66476007)(9686003)(52536014)(5660300002)(66946007)(71200400001)(26005)(7696005)(2906002)(6916009)(316002)(8936002)(186003)(81166006)(7116003)(8676002)(6506007)(9326002)(81156014)(86362001)(33656002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR04MB6829;
 H:MN2PR04MB5918.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: i-a-i.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9/sgEGLZmu8+GL9BdlijLRF5cOSesP2AsI1yph8hxs0O+4mK129uZQqHtrA8Dj3o/X173x2xK3KGiYkJF+Tl0ypgz3O1wYpr5+RIiSKYey1MbE6efbI607jmHzHEXtt1j/8E8thWpw7YJtSZk//Z6DvwbAkjZLU1FHsqjwNf1xeZsEtjG2WxLtTkZ2teTinsRoFWFtMOKt0/hbWAR88YuNyYQXUQoHUcr9knKHjorMfLEFhDdKAv9j1YJQ9iu9WZ73EEQXWqojhNPmSCJvugZ1QxepMIWTOltRKsFPutUQX27NQtAWBABCJVYeXdQo9FNXEOVh3sOcx6pAoonSWGFf2ZZGVpaHjQSJK5kFfwHYPDS9ptYUjoVzRNmgF3ejq/wMrQaHaS4uvuxDGmfjHNDFSF++FTLQpuxvFiGHswOCer1oGmQXFBu5bKw1oW8jFR
x-ms-exchange-antispam-messagedata: Nelu1tdxicScIgKvXmyhhQ1UolruU+IJw7cjxNv380NDZI1oIMbHNX9mg1DqPzo1uuES+RBCNpbdqITHVhGJabngx+xqCwyJBSvOb3IDZJPhZO9YVqlkkXyPb1uiK8Mf80k4jJAxaZpM3IezV7pGTg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: i-a-i.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b98a0416-ca24-48b8-75dd-08d7c500727f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 14:36:40.6563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3fd5c924-e8b5-4a5c-9f6c-cde8a0402872
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UYmGoQfMfejU5wG5V4oE5EGeRfdwdOfWLo0t4hYDgV1kuxgmEM0MFzFZpDZRb4XryGf7rcwfbfljTvz9uAQpKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6829
Subject: [USRP-users] uhd_usrp_probe error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Leonid Meyerovich via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Leonid Meyerovich <lmeyerovich@i-a-i.com>
Content-Type: multipart/mixed; boundary="===============4358420848885377777=="
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

--===============4358420848885377777==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB5918B266B47F59E7D263665CA5FF0MN2PR04MB5918namp_"

--_000_MN2PR04MB5918B266B47F59E7D263665CA5FF0MN2PR04MB5918namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

What does the error
                Error: RuntimeError: [E300] Currently only AXI transport su=
pported with RFNOC
Means and how to fix it?
I am running E310 radio

Thank you,
LM


lm@ubuntu:~/rfnoc/oe$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-=
g0347a6d8
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[INFO] [E300] Detecting internal GPS
[ERROR] [E300] An error occured making GPSDd interface: RuntimeError: Faile=
d to connect to gpsd: can't connect to host/port pair
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test...
[INFO] [E300] Register loopback test passed
Error: RuntimeError: [E300] Currently only AXI transport supported with RFN=
OC


________________________________
This message and all attachments are PRIVATE, and contain information that =
is PROPRIETARY to Intelligent Automation, Inc. You are not authorized to tr=
ansmit or otherwise disclose this message or any attachments to any third p=
arty whatsoever without the express written consent of Intelligent Automati=
on, Inc. If you received this message in error or you are not willing to vi=
ew this message or any attachments on a confidential basis, please immediat=
ely delete this email and any attachments and notify Intelligent Automation=
, Inc.

--_000_MN2PR04MB5918B266B47F59E7D263665CA5FF0MN2PR04MB5918namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What does the error <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Error: RuntimeError: [E300] Currentl=
y only AXI transport supported with RFNOC<o:p></o:p></p>
<p class=3D"MsoNormal">Means and how to fix it?<o:p></o:p></p>
<p class=3D"MsoNormal">I am running E310 radio<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">LM<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">lm@ubuntu:~/rfnoc/oe$ uhd_usrp_probe<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 7.4.0; B=
oost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 1048576 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 1048576 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 1048576 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 1048576 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [E300] Detecting internal GPS <o:p></o:p></p>
<p class=3D"MsoNormal">[ERROR] [E300] An error occured making GPSDd interfa=
ce: RuntimeError: Failed to connect to gpsd: can't connect to host/port pai=
r<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [E300] Initializing core control (global regi=
sters)...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[INFO] [E300] Performing register loopback test... <=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [E300] Register loopback test passed<o:p></o:=
p></p>
<p class=3D"MsoNormal">Error: RuntimeError: [E300] Currently only AXI trans=
port supported with RFNOC<o:p></o:p></p>
</div>
<div style=3D"font-size:8pt; &nbsp;font-family: 'Calibri',sans-serif;"><br>
<br>
<hr>
This message and all attachments are PRIVATE, and contain information that =
is PROPRIETARY to Intelligent Automation, Inc. You are not authorized to tr=
ansmit or otherwise disclose this message or any attachments to any third p=
arty whatsoever without the express
 written consent of Intelligent Automation, Inc. If you received this messa=
ge in error or you are not willing to view this message or any attachments =
on a confidential basis, please immediately delete this email and any attac=
hments and notify Intelligent Automation,
 Inc. </div>
</body>
</html>

--_000_MN2PR04MB5918B266B47F59E7D263665CA5FF0MN2PR04MB5918namp_--


--===============4358420848885377777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4358420848885377777==--

