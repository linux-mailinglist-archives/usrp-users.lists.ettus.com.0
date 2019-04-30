Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA53F9BA
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 15:17:11 +0200 (CEST)
Received: from [::1] (port=46152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLSdC-0006GM-E9; Tue, 30 Apr 2019 09:17:10 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:48662)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hLScd-00066p-8L
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 09:17:05 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id D9AA26181E;
 Tue, 30 Apr 2019 13:15:54 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2057.outbound.protection.outlook.com [104.47.36.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 64A6AA4037;
 Tue, 30 Apr 2019 13:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=in7Su1KdkNPUveXD5N3vNXnI1QqZTIsmqUpAXOdLx5s=;
 b=tpd1KlkSwUwJtk71WBItynNnL2yrXzbRhS3pzGtgzEd9MlmOqhER4gp07PFjzZD6MOkgn9lxNQjmRbvS8o0RucdaiuLx/PmBqCgiPu71AYHWCDKBKJb4HILPxKrN5jxTK7+fmebaoSbaw2R53s+5GvIrzQMJ21MOe2a1rhOZi/A=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2529.namprd12.prod.outlook.com (52.132.11.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:15:53 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2%4]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 13:15:53 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] E312 wrong sample rate
Thread-Index: AQHU/r/WgJpTmk1PJkWqWg600qE3i6ZT2yWAgADUfaQ=
Date: Tue, 30 Apr 2019 13:15:52 +0000
Message-ID: <BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <5CC797D5.1070401@gmail.com>
In-Reply-To: <5CC797D5.1070401@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87d89688-9273-455b-b2ca-08d6cd6df8e4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2529; 
x-ms-traffictypediagnostic: BL0PR12MB2529:
x-microsoft-antispam-prvs: <BL0PR12MB2529D4BDA5927A1F750ABDC0AF3A0@BL0PR12MB2529.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(39830400003)(366004)(346002)(199004)(189003)(81166006)(9686003)(81156014)(55016002)(25786009)(53546011)(8676002)(97736004)(105004)(2906002)(8936002)(6436002)(54896002)(486006)(33656002)(102836004)(110136005)(316002)(7696005)(6506007)(186003)(26005)(76176011)(53936002)(99286004)(19627405001)(71190400001)(66446008)(2501003)(71200400001)(7736002)(74316002)(256004)(73956011)(64756008)(66946007)(66066001)(66476007)(68736007)(76116006)(66556008)(5660300002)(3846002)(6246003)(14454004)(6116002)(86362001)(11346002)(446003)(508600001)(229853002)(52536014)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2529;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wpcexa17KtFvjlAgfjH/46f4kblS5CFb9lQ6zjMw9zDIAziSaYGRQtEYGa/w7W90YDrK8HXA9KjhZItEIUWz2nZVPG1zxeZJexyL1fAOqfBmbhL6GwHeyHHlyQKlsp9bi5O9XrVBFip4/0yDTdqAat/qEIylxaVKvQVdGHFIv3W6M+qwIBBOIcg4TlPSwm3wOz3/3NlRfFSOvrbEBeRWXEvIEOAw29PM4RxxvpMuVsuvGauM50I3RLSiMUftum1W+IWETDMy7NBi/XxpcHtyhnvHUMV3ubpjRSNA3qVjOeFN7ZsA/xgfsD4xudDC/2dreApEUQzMt0Dv0TBpCR+BCMWs1UP8ESa0D6CfdI2QwIW5IsxodMktPRroAlXV5gmtHYrTiDzvybOwunhi2acxx8zjrQOeGZa+Nmo7PxerxfE=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d89688-9273-455b-b2ca-08d6cd6df8e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:15:52.8879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2529
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam02lp2057.outbound.protection.outlook.com|104.47.36.57|NAM02-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.36.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-16908-c
X-Mailprotector-ID: d13a87cc-4f26-4a62-a2c2-6506fcba2422
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E312 wrong sample rate
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
Content-Type: multipart/mixed; boundary="===============3296214518794026838=="
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

--===============3296214518794026838==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23408FC518AA7EBAE2D53176AF3A0BL0PR12MB2340namp_"

--_000_BL0PR12MB23408FC518AA7EBAE2D53176AF3A0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I guess I would need a block to count samples if I am going to a null sink?=
  Otherwise I am not sure how to guage how many samples have passed.

Well, this is probably ignorant of me, but I assumed a higher master clock =
rate would allow me some sort of speed benefit somewhere.  I guess I can't =
say what since it has nothing to do with the Linux CPU speed....  What is t=
he benefit to running at a slower rate?

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, April 29, 2019 8:33 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E312 wrong sample rate

On 04/29/2019 03:28 PM, Jason Matusiak via USRP-users wrote:
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

Have it write to /dev/null, and time how long it takes to gather some large=
 number of samples, and go from there.
   If your delivered sample rate is 500ksps, I don't see why you need a mas=
ter clock rate as high as 30Msps, but perhaps you have
   your reasons.


--_000_BL0PR12MB23408FC518AA7EBAE2D53176AF3A0BL0PR12MB2340namp_
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
I guess I would need a block to count samples if I am going to a null sink?=
&nbsp; Otherwise I am not sure how to guage how many samples have passed.</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Well, this is probably ignorant of me, but I assumed a higher master clock =
rate would allow me some sort of speed benefit somewhere.&nbsp; I guess I c=
an't say what since it has nothing to do with the Linux CPU speed....&nbsp;=
 What is the benefit to running at a slower
 rate?</div>
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
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, April 29, 2019 8:33 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] E312 wrong sample rate</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 04/29/2019 03:28 PM, Jason Matusiak via=
 USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I was debugging a problem with a flowgraph when I realized that I wasn't ge=
tting the amount of samples I expected passing out of the USRP source block=
.&nbsp; If I set a sample rate too low, it tells me it has to set the sampl=
e rate to 0.125MSps.&nbsp; Currently I have
 a single stream from my source block, 30MHz clock rate, 500kHz sample rate=
.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I run for 20 seconds streaming the data to a file (unbuffered set to off=
) as a complex, I would expect to see 20s * 8B * 500KHz =3D 80MB of data in=
 the file.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Instead, running it empirically (so the numbers will have to be ballpark an=
d not exact), I see file size of&nbsp;116153944.&nbsp; If I make the assump=
tion that the sample rate was really 500kHz, that means it ran for 29.03s.&=
nbsp; This is obviously off by 50%.&nbsp; If I assume
 that 10s of data was really collected, that means I had an actual sample r=
ate of 1.451924MSps.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I run these tests with the minimal 125kHz sample rate, I see things off =
by about double what I would expect.&nbsp;&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Moving my sample rate around the 1MSps range seems to work closer to what I=
 expect, but of course I can't write files that fast without getting 'O' on=
 the screen.&nbsp; Ultimately I need to use two receivers, so I don't belie=
ve that I can push the clock rate above
 30.72MHz.&nbsp;&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC in th=
is particular flowgraph).&nbsp; What am I missing here?</div>
<br>
</blockquote>
Have it write to /dev/null, and time how long it takes to gather some large=
 number of samples, and go from there.<br>
&nbsp;&nbsp; If your delivered sample rate is 500ksps, I don't see why you =
need a master clock rate as high as 30Msps, but perhaps you have<br>
&nbsp;&nbsp; your reasons.&nbsp; <br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23408FC518AA7EBAE2D53176AF3A0BL0PR12MB2340namp_--


--===============3296214518794026838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3296214518794026838==--

