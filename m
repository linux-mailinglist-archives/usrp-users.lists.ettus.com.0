Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A81A17EB3
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 19:01:11 +0200 (CEST)
Received: from [::1] (port=56924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOPwM-0001lL-HI; Wed, 08 May 2019 13:01:10 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:53453)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hOPvn-0001bs-M0
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 13:01:05 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id 607D061810;
 Wed,  8 May 2019 16:59:55 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2050.outbound.protection.outlook.com [104.47.46.50])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 110C51E0006;
 Wed,  8 May 2019 16:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2d3HKL8OapfoFhxhdjGljo4zVSQpD/wNrPb7/BSExQ=;
 b=S/0RsGn54fSs16NPPXTkIdwPJIYpV10wkguDJ70k3NXjBmFVc31CscBbILwHCg4so1OEvF8Ws9NMpuJySzYLSj1yqb1tMt5Ps82OF3j1C18d+4O7SDO99V+P0NxdrFh0hG0goGNq13oVJIft+O3C6h1oN1/Uyosfc4bxSrvI1V8=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2338.namprd12.prod.outlook.com (52.132.10.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 16:59:52 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 16:59:52 +0000
To: Joe Martin <k5so@k5so.com>
Thread-Topic: [USRP-users] Bringing an elderly N210 to life by loading current
 firmware/fpga images
Thread-Index: AQHVBbaZpax/yER2FEaBLo6ZIMM3GqZhblGlgAAEGICAAAC0Qw==
Date: Wed, 8 May 2019 16:59:52 +0000
Message-ID: <BL0PR12MB2340CEB818D15EE2D5AF1870AF320@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
In-Reply-To: <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47f0ec7d-da8e-4852-4080-08d6d3d696b0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2338; 
x-ms-traffictypediagnostic: BL0PR12MB2338:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB23381787ED7749080CBAF27CAF320@BL0PR12MB2338.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(366004)(396003)(346002)(39830400003)(199004)(189003)(7696005)(316002)(99286004)(21615005)(6506007)(53546011)(102836004)(76176011)(5660300002)(508600001)(229853002)(66946007)(105004)(33656002)(26005)(52536014)(66446008)(66556008)(64756008)(66476007)(186003)(76116006)(73956011)(71200400001)(54896002)(256004)(9686003)(236005)(6306002)(55016002)(71190400001)(6436002)(14454004)(966005)(606006)(3846002)(81156014)(74316002)(7736002)(68736007)(19627405001)(476003)(11346002)(486006)(446003)(66066001)(8936002)(8676002)(81166006)(6116002)(2906002)(86362001)(66574012)(6916009)(53936002)(25786009)(4326008)(6246003)(340984004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2338;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +su/rV6wLNQZ7EdK2zJ9n4CWHirLSm59IO/He5A5s9jR0uLXmM15RxCTwkq5cImTVb97WpdBoAjhFBKdatWXdFRLNRDnHBic+XLiaTV8Fpv2woLr4D043KhtfNkbhgeud4+FJWJkUPu1qVwu6XDzgRibymkXxE63ayzxaZ4Er0TIUbV9Up18hAAz27cRRsFb2qe/CRcvA4qbnk1kYTEMjIZiZMDr4U4PcACXgPXpwxJbCKHhNGq1Da9OGQglOxTmmidNKBoy8YUq+l/J7MQHG6ruBVo3+7rqT2n3TwglEVm+czeZ4b/oYfsN4QzDkQSXZ33qpfm5nDqJy+EbEINIy1d5pR23Cl8E/Jlmv1u61ZAbvqa+clYd/1mHUhlnRR9fkPG0Xp9LUlE4cYqkeNtG28CR2X54UOHXOroXo/6Ulm4=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f0ec7d-da8e-4852-4080-08d6d3d696b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 16:59:52.2879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2338
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam04lp2050.outbound.protection.outlook.com|104.47.46.50|NAM04-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: subject_50_chars subject_10_spaces clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.46.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-24893-c
X-Mailprotector-ID: c004294e-69a0-4010-8d51-f35b8191ca3f
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
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
Cc: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4516512412000404963=="
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

--===============4516512412000404963==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340CEB818D15EE2D5AF1870AF320BL0PR12MB2340namp_"

--_000_BL0PR12MB2340CEB818D15EE2D5AF1870AF320BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

R3 didn't work for me either.  I am not sure I would even bother with the s=
upport email, I think they tried hard for me last year and they couldn't re=
vive that rev's source code at all.  We abandoned our r2 Ns and just worked=
 on the ones that were already working.

________________________________
From: Joe Martin <k5so@k5so.com>
Sent: Wednesday, May 8, 2019 12:56 PM
To: Jason Matusiak
Cc: Joe Martin via USRP-users
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading curre=
nt firmware/fpga images

Wow, okay; that=92s disheartening.  Thanks much for the info, Jason.  Nope,=
 the Rev3 bit file doesn=92t work; tried it.  I=92ll see if the support ema=
il adr can be of use.

Joe

On May 8, 2019, at 10:44 AM, Jason Matusiak <jason@gardettoengineering.com<=
mailto:jason@gardettoengineering.com>> wrote:

Joe, I think you might be SOL.  If you take a look at this thread from me l=
ast year, I had no luck: http://lists.ettus.com/pipermail/usrp-users_lists.=
ettus.com/2018-April/056223.html


Also, when I pinged Ettus directly, here is some info I got back from them =
(from two different emails in the thread):
"we've been having some trouble tracking down Rev2 bitfiles, because no
one here was around when that was built. If you're trying to unbrick
them, Rev3 bitfiles might be OK, but I'm not completely sure.

support@ettus.com<mailto:support@ettus.com> might know more by know.
really sorry, but those Rev2s are just so old. And all the people from
that era seem to be gone. Sorry, can't help you with those Rev2s."

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Joe Martin via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, May 8, 2019 11:55 AM
To: Joe Martin via USRP-users
Subject: [USRP-users] Bringing an elderly N210 to life by loading current f=
irmware/fpga images

I am trying to bring an elderly N210 r2.0 with unknown history to life by l=
oading current UHD firmware and fpga images from a 1Gigabit ethernet connec=
tion on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD 3.14=
.0.HEAD-0-gd20a7ae2 software but having difficulty.

Following instructions in =93USRP Hardware Driver and USRP Manual: USRP2 an=
d N2x0 Series=94:

My initial action was to load the =93usrp_n210_r4_fpga.bit" file into the N=
210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programming c=
able from a Win7 PC running Xilinx ISE iMPACT, which reported =93Program Su=
cceeded=94 for the action.  Ethernet LEDs on the N210 are variously lighted=
 showing activity on the connection port.

With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the fo=
llowing commands result in the responses shown in the screenshot image belo=
w:

<Screenshot from 2019-05-08 08-46-52.png>

My (naive!) interpretation of the above responses is that the FPGA may not =
actually have been programmed with the *.bit code even though iMPACT report=
ed success in programming.  Can someone assist me in understanding whether =
my interpretation is correct or not and, most importantly, suggest what I m=
ight try next to bring this N210 to life?

The =93Please run:=94 suggestion results in the =93Received invalid reply 3=
2 from device=94 error.  It seems no matter what I try the =93Received inva=
lid reply 32 from device=94 RuntimeError is reported back when I try to loa=
d any new firmware/FPGA images.

Thanks!

Joe


--_000_BL0PR12MB2340CEB818D15EE2D5AF1870AF320BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
R3 didn't work for me either.&nbsp; I am not sure I would even bother with =
the support email, I think they tried hard for me last year and they couldn=
't revive that rev's source code at all.&nbsp; We abandoned our r2 Ns and j=
ust worked on the ones that were already working.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Joe Martin &lt;k5so@k=
5so.com&gt;<br>
<b>Sent:</b> Wednesday, May 8, 2019 12:56 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Joe Martin via USRP-users<br>
<b>Subject:</b> Re: [USRP-users] Bringing an elderly N210 to life by loadin=
g current firmware/fpga images</font>
<div>&nbsp;</div>
</div>
<div class=3D"" style=3D"word-wrap:break-word; line-break:after-white-space=
">Wow, okay; that=92s disheartening. &nbsp;Thanks much for the info, Jason.=
 &nbsp;Nope, the Rev3 bit file doesn=92t work; tried it. &nbsp;I=92ll see i=
f the support email adr can be of use. &nbsp;
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Joe<br class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On May 8, 2019, at 10:44 AM, Jason Matusiak &lt;<a href=3D"=
mailto:jason@gardettoengineering.com" class=3D"">jason@gardettoengineering.=
com</a>&gt; wrote:</div>
<br class=3D"x_Apple-interchange-newline">
<div class=3D"">
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
Joe, I think you might be SOL.&nbsp; If you take a look at this thread from=
 me last year, I had no luck:&nbsp;<a href=3D"http://lists.ettus.com/piperm=
ail/usrp-users_lists.ettus.com/2018-April/056223.html" class=3D"">http://li=
sts.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html</=
a></div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
<br class=3D"">
</div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
<br class=3D"">
</div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
Also, when I pinged Ettus directly, here is some info I got back from them =
(from two different emails in the thread):</div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
&quot;<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; b=
ackground-color:rgb(255,255,255); display:inline!important">we've been havi=
ng some trouble tracking down Rev2 bitfiles, because no</span><br class=3D"=
" style=3D"color:rgb(32,31,30); font-size:14.6667px; background-color:rgb(2=
55,255,255)">
<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgro=
und-color:rgb(255,255,255); display:inline!important">one here was around w=
hen that was built. If you're trying to unbrick</span><br class=3D"" style=
=3D"color:rgb(32,31,30); font-size:14.6667px; background-color:rgb(255,255,=
255)">
<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgro=
und-color:rgb(255,255,255); display:inline!important">them, Rev3 bitfiles m=
ight be OK, but I'm not completely sure.</span></div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
<br class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgroun=
d-color:rgb(255,255,255)">
<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgro=
und-color:rgb(255,255,255); display:inline!important"><a href=3D"mailto:sup=
port@ettus.com" class=3D"">support@ettus.com</a><span class=3D"x_Apple-conv=
erted-space">&nbsp;</span>might know more by know.</span></div>
<div class=3D"" style=3D"font-style:normal; font-variant-caps:normal; font-=
weight:normal; letter-spacing:normal; text-align:start; text-indent:0px; te=
xt-transform:none; white-space:normal; word-spacing:0px; text-decoration:no=
ne; font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">
<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgro=
und-color:rgb(255,255,255); display:inline!important">really sorry, but tho=
se Rev2s are just so old. And all the people from</span><br class=3D"" styl=
e=3D"color:rgb(32,31,30); font-size:14.6667px; background-color:rgb(255,255=
,255)">
<span class=3D"" style=3D"color:rgb(32,31,30); font-size:14.6667px; backgro=
und-color:rgb(255,255,255); display:inline!important">that era seem to be g=
one. Sorry, can't help you with those Rev2s.&quot;</span></div>
<div id=3D"x_Signature" class=3D"" style=3D"font-family:Helvetica; font-siz=
e:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; le=
tter-spacing:normal; text-align:start; text-indent:0px; text-transform:none=
; white-space:normal; word-spacing:0px; text-decoration:none">
<div class=3D"">
<div id=3D"x_appendonsend" class=3D""></div>
<div class=3D"" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; fo=
nt-size:12pt">
<br class=3D"">
</div>
<hr tabindex=3D"-1" class=3D"" style=3D"display:inline-block; width:1284.76=
5625px">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, s=
ans-serif" class=3D"" style=3D"font-size:11pt"><b class=3D"">From:</b><span=
 class=3D"x_Apple-converted-space">&nbsp;</span>USRP-users &lt;<a href=3D"m=
ailto:usrp-users-bounces@lists.ettus.com" class=3D"">usrp-users-bounces@lis=
ts.ettus.com</a>&gt;
 on behalf of Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" class=3D"">usrp-users@lists.ettus.com</a>&gt;<br class=3D"">
<b class=3D"">Sent:</b><span class=3D"x_Apple-converted-space">&nbsp;</span=
>Wednesday, May 8, 2019 11:55 AM<br class=3D"">
<b class=3D"">To:</b><span class=3D"x_Apple-converted-space">&nbsp;</span>J=
oe Martin via USRP-users<br class=3D"">
<b class=3D"">Subject:</b><span class=3D"x_Apple-converted-space">&nbsp;</s=
pan>[USRP-users] Bringing an elderly N210 to life by loading current firmwa=
re/fpga images</font>
<div class=3D"">&nbsp;</div>
</div>
<div class=3D"" style=3D"word-wrap:break-word; line-break:after-white-space=
">I am trying to bring an elderly N210 r2.0 with unknown history to life by=
 loading current UHD firmware and fpga images from a 1Gigabit ethernet conn=
ection on an AMD 2950X, 3.4GHz, 2TB
 SSD PC running Ubuntu 18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software but =
having difficulty.&nbsp;
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Following instructions in =93USRP Hardware Driver and USRP =
Manual: USRP2 and N2x0 Series=94:</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">My initial action was to load the =93usrp_n210_r4_fpga.bit&=
quot; file into the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB =
II JTAG programming cable from a Win7 PC running Xilinx ISE iMPACT, which r=
eported =93Program Succeeded=94 for the action.
 &nbsp;Ethernet LEDs on the N210 are variously lighted showing activity on =
the connection port.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">With the N210 connected to the Linux PC 1Gbps ethernet port=
, issuing the following commands result in the responses shown in the scree=
nshot image below:&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D""><span id=3D"x_cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt=
;Screenshot from 2019-05-08 08-46-52.png&gt;</span></div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">
<div class=3D"">My (naive!) interpretation of the above responses is that t=
he FPGA may not actually have been programmed with the *.bit code even thou=
gh iMPACT reported success in programming. &nbsp;Can someone assist me in u=
nderstanding whether my interpretation
 is correct or not and, most importantly, suggest what I might try next to =
bring this N210 to life? &nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">The =93Please run:=94 suggestion results in the =93Received=
 invalid reply 32 from device=94 error. &nbsp;It seems no matter what I try=
 the =93Received invalid reply 32 from device=94 RuntimeError is reported b=
ack when I try to load any new firmware/FPGA images.
 &nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Thanks!</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Joe</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340CEB818D15EE2D5AF1870AF320BL0PR12MB2340namp_--


--===============4516512412000404963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4516512412000404963==--

