Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 798A6EAEB
	for <lists+usrp-users@lfdr.de>; Mon, 29 Apr 2019 21:30:18 +0200 (CEST)
Received: from [::1] (port=60086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLByd-00070g-KC; Mon, 29 Apr 2019 15:30:11 -0400
Received: from otransport-13.outbound.emailsrv.net ([54.208.239.9]:58656)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hLBy1-0006mw-MB
 for usrp-users@lists.ettus.com; Mon, 29 Apr 2019 15:30:03 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-13.outbound.emailsrv.net (Postfix) with ESMTPS id 4491D6165A
 for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2019 19:28:53 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2053.outbound.protection.outlook.com [104.47.32.53])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id E6CE21E0005
 for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2019 19:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DX+epvszsiRJk+lZVext5pz/ep0Q3wHaXwd2OShR+QY=;
 b=DAflhzVmV6zjvixMWEbpQVu3au5QtWBd2TczCIIt2MV9FC/8Pxe7wV0uGkgYPJYD/jC1dUsaVu9dzFJGWDv3R8LGXy6tytH/+nhcXSY6YmdCHz7PGvD3IERBt7nsTEEc1bd44Yxrk7ObWJfP5Eo+wZCZCAbTh6v8fvrvoObreBw=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2579.namprd12.prod.outlook.com (52.132.27.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Mon, 29 Apr 2019 19:28:50 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2%4]) with mapi id 15.20.1835.015; Mon, 29 Apr 2019
 19:28:50 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 wrong sample rate
Thread-Index: AQHU/r/WgJpTmk1PJkWqWg600qE3iw==
Date: Mon, 29 Apr 2019 19:28:49 +0000
Message-ID: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70e2f428-2a50-4030-90b5-08d6ccd8e855
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2579; 
x-ms-traffictypediagnostic: BL0PR12MB2579:
x-microsoft-antispam-prvs: <BL0PR12MB257998FC1DB8CDD17D4E42C4AF390@BL0PR12MB2579.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39830400003)(396003)(376002)(346002)(366004)(199004)(189003)(102836004)(26005)(97736004)(33656002)(486006)(6506007)(256004)(54896002)(508600001)(476003)(2501003)(9686003)(316002)(53936002)(7696005)(55016002)(19627405001)(2351001)(86362001)(105004)(68736007)(186003)(6916009)(52536014)(81166006)(14454004)(8676002)(8936002)(66476007)(64756008)(71200400001)(81156014)(66556008)(99286004)(5660300002)(6436002)(66066001)(73956011)(3846002)(6116002)(2906002)(74316002)(76116006)(71190400001)(66946007)(25786009)(5640700003)(7736002)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2579;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H6oVNGIEYCTU909+AXKA4OOfifx8iVZdxyoSswzVGeK7ORZNlS9XwPhDGF8WoZ2Vv70R1Sm1c1RLRERv1E++INpkQ3gdVG6AcGTgDCzSmGGnGrxBa6mbrrshSjhuu0VfY/378JGW2VCYH8F9T2cTUD8dB5LM7NqrsGdkQNUEKnpDm4+x2ODAZ2Lr60s/q1JURaHN3wBUT8YFf+W1C834AS/edW9avsQWGhxx63bMMQihqYrp91pzpN5SN7E+K2nK3Mgw+D1J4u1qIA9DWusSpYUn+ZuhaONNFZZaLgnYDjMr4KRVLv4eozRAGpHU/aMwS4SXmg8F5hB1vnhDG1qnog/e5ItBr6+oO8jyj31PIGqWpStJs+DMbx6hSdKKhVEuoLMdU+W9lNOVNXoh3pQqhLPBMbWs6VzZHXBfzwBcMio=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e2f428-2a50-4030-90b5-08d6ccd8e855
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 19:28:49.9625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2579
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam01lp2053.outbound.protection.outlook.com|104.47.32.53|NAM01-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.32.53, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-11871-c
X-Mailprotector-ID: 73d7ce54-906c-4c04-b9d1-d4966d969667
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] E312 wrong sample rate
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
Content-Type: multipart/mixed; boundary="===============4076024744090281775=="
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

--===============4076024744090281775==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23407D3418F13ABDC01D6826AF390BL0PR12MB2340namp_"

--_000_BL0PR12MB23407D3418F13ABDC01D6826AF390BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I was debugging a problem with a flowgraph when I realized that I wasn't ge=
tting the amount of samples I expected passing out of the USRP source block=
.  If I set a sample rate too low, it tells me it has to set the sample rat=
e to 0.125MSps.  Currently I have a single stream from my source block, 30M=
Hz clock rate, 500kHz sample rate.

If I run for 20 seconds streaming the data to a file (unbuffered set to off=
) as a complex, I would expect to see 20s * 8B * 500KHz =3D 80MB of data in=
 the file.

Instead, running it empirically (so the numbers will have to be ballpark an=
d not exact), I see file size of 116153944.  If I make the assumption that =
the sample rate was really 500kHz, that means it ran for 29.03s.  This is o=
bviously off by 50%.  If I assume that 10s of data was really collected, th=
at means I had an actual sample rate of 1.451924MSps.

If I run these tests with the minimal 125kHz sample rate, I see things off =
by about double what I would expect.

Moving my sample rate around the 1MSps range seems to work closer to what I=
 expect, but of course I can't write files that fast without getting 'O' on=
 the screen.  Ultimately I need to use two receivers, so I don't believe th=
at I can push the clock rate above 30.72MHz.

I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC in th=
is particular flowgraph).  What am I missing here?

--_000_BL0PR12MB23407D3418F13ABDC01D6826AF390BL0PR12MB2340namp_
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
I was debugging a problem with a flowgraph when I realized that I wasn't ge=
tting the amount of samples I expected passing out of the USRP source block=
.&nbsp; If I set a sample rate too low, it tells me it has to set the sampl=
e rate to 0.125MSps.&nbsp; Currently I have
 a single stream from my source block, 30MHz clock rate, 500kHz sample rate=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If I run for 20 seconds streaming the data to a file (unbuffered set to off=
) as a complex, I would expect to see 20s * 8B * 500KHz =3D 80MB of data in=
 the file.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Instead, running it empirically (so the numbers will have to be ballpark an=
d not exact), I see file size of&nbsp;116153944.&nbsp; If I make the assump=
tion that the sample rate was really 500kHz, that means it ran for 29.03s.&=
nbsp; This is obviously off by 50%.&nbsp; If I assume
 that 10s of data was really collected, that means I had an actual sample r=
ate of 1.451924MSps.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If I run these tests with the minimal 125kHz sample rate, I see things off =
by about double what I would expect.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Moving my sample rate around the 1MSps range seems to work closer to what I=
 expect, but of course I can't write files that fast without getting 'O' on=
 the screen.&nbsp; Ultimately I need to use two receivers, so I don't belie=
ve that I can push the clock rate above
 30.72MHz.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC in th=
is particular flowgraph).&nbsp; What am I missing here?</div>
</body>
</html>

--_000_BL0PR12MB23407D3418F13ABDC01D6826AF390BL0PR12MB2340namp_--


--===============4076024744090281775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4076024744090281775==--

