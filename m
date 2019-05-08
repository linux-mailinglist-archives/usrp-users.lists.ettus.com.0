Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D817B68
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 16:16:11 +0200 (CEST)
Received: from [::1] (port=36706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hONMa-0000qV-8h; Wed, 08 May 2019 10:16:04 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:56484)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hONM2-0000jp-I3
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 10:16:00 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id 28FF261659;
 Wed,  8 May 2019 14:14:50 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2058.outbound.protection.outlook.com [104.47.33.58])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id DEABF1E0005;
 Wed,  8 May 2019 14:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvKqVRnLpjdJz6gHR8BmhcZfwMSuVmPjozedYx0wfhM=;
 b=HULzOemmfOYCiuwWtZvC8KTrluDND2FtU7MIKrJEo/EFwwTQZvjcEduM+s0uyFNvgSMQ2zuUmQ2VgY7DjCNL78wWMt2bQEU0qB/yZvUXHI/5OjyhpUc2OmE+mK5sTF10/KPNPlSIksD8P9qNFVHkBBEQE88GENrUeeFSqXZLutQ=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2417.namprd12.prod.outlook.com (52.132.11.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 14:14:46 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 14:14:46 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 =?iso-8859-1?Q?Ramazan_=C7etin?= <ramazan.cetin@gohm.com.tr>
Thread-Topic: [USRP-users] Running E310 in Network Mode
Thread-Index: AQHVBZYg3xciwGqhhU6dFkFe+QOZIqZhRXix
Date: Wed, 8 May 2019 14:14:46 +0000
Message-ID: <BL0PR12MB2340D4EC35F3885332A766A8AF320@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <49b1b11e-15ac-e733-6643-549679512c09@gohm.com.tr>
In-Reply-To: <49b1b11e-15ac-e733-6643-549679512c09@gohm.com.tr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9d75a7b-6e67-4ed1-7510-08d6d3bf8654
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2417; 
x-ms-traffictypediagnostic: BL0PR12MB2417:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB241747B666C76A1D0D1D9702AF320@BL0PR12MB2417.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(346002)(366004)(376002)(136003)(189003)(199004)(7736002)(446003)(2501003)(105004)(966005)(6116002)(11346002)(52536014)(76176011)(19627405001)(81156014)(81166006)(7696005)(8676002)(66066001)(186003)(74316002)(53546011)(102836004)(66446008)(66476007)(508600001)(64756008)(66556008)(316002)(33656002)(76116006)(26005)(110136005)(66946007)(73956011)(6506007)(606006)(8936002)(476003)(256004)(486006)(229853002)(99286004)(3846002)(6306002)(6436002)(68736007)(236005)(53936002)(86362001)(9686003)(54896002)(6246003)(4744005)(5660300002)(2906002)(14454004)(55016002)(71200400001)(71190400001)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2417;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q8oydnw1qDQoldypHmTfkjBydg6Xn5ZOCNcJHc0I8YL/tJA7OcTW9QxYGtXwd6y+S4Ty1OgpismzDAPZQc9IRC3Oy96QdpTXSRTZRaY4gMcq5JrzAIqw7Uh2kA84KGfAQhs6+bKJIIChzRwbeyKahOsJgfm2VzGedyaivLz4r9+/X/Aq/P45Tug65VcHlyjQrmzThWK16GRlJPJ5zUEd5TvLZiDIfvanz7fEWLulv3ZBmDfGld/ROx4A03eo1ntZrJF14I3vBmdHpu/D3naCTFFWdY0IrmRTk5kPAzAPsmr84H8XwbjXToar+NyE57gmYzvyD+pKwwyWq6l9EN8HiMBTVaa1RZAW3dBfuYOHXRk38PQ7g37LHlL9NcJHFp96LaNSUJVb37u2L4ZGcAcxntZ5YNu2OaW1XcCFyeeKqmI=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9d75a7b-6e67-4ed1-7510-08d6d3bf8654
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 14:14:46.3111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2417
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2058.outbound.protection.outlook.com|104.47.33.58|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.58, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-9864-c
X-Mailprotector-ID: 33448256-0b00-460b-8220-2ec4c0765f92
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Running E310 in Network Mode
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
Content-Type: multipart/mixed; boundary="===============9129181669250293408=="
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

--===============9129181669250293408==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340D4EC35F3885332A766A8AF320BL0PR12MB2340namp_"

--_000_BL0PR12MB2340D4EC35F3885332A766A8AF320BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

See here: https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_m=
ode


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Ramazan =
=C7etin via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, May 8, 2019 8:02 AM
To: Ettus Research Support; usrp-users@lists.ettus.com
Subject: [USRP-users] Running E310 in Network Mode

Hello,

We want to run USRP E310 in network mode. I think the samples coming
from FPGA passing through CPU before sending to network. This decreases
bandwidth because of CPU limitations.


So, is there any ettus image or suggestions that we can run E310
directly from FPGA to network without speed limitations? (like N210 or B210=
)

Best regards.

Ramazan


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BL0PR12MB2340D4EC35F3885332A766A8AF320BL0PR12MB2340namp_
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
See here:&nbsp;<a href=3D"https://files.ettus.com/manual/page_usrp_e3x0.htm=
l#e3x0_network_mode">https://files.ettus.com/manual/page_usrp_e3x0.html#e3x=
0_network_mode</a></div>
<br>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Ramazan =C7etin via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, May 8, 2019 8:02 AM<br>
<b>To:</b> Ettus Research Support; usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Running E310 in Network Mode</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hello,<br>
<br>
We want to run USRP E310 in network mode. I think the samples coming <br>
from FPGA passing through CPU before sending to network. This decreases <br=
>
bandwidth because of CPU limitations.<br>
<br>
<br>
So, is there any ettus image or suggestions that we can run E310 <br>
directly from FPGA to network without speed limitations? (like N210 or B210=
)<br>
<br>
Best regards.<br>
<br>
Ramazan<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340D4EC35F3885332A766A8AF320BL0PR12MB2340namp_--


--===============9129181669250293408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9129181669250293408==--

