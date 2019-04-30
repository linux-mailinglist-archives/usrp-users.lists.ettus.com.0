Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C79CDFAD8
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 15:53:56 +0200 (CEST)
Received: from [::1] (port=52330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLTCj-0008GI-BN; Tue, 30 Apr 2019 09:53:53 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:54603)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hLTCA-00085B-NZ
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 09:53:48 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id 3CE4A6182D
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 13:52:38 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2050.outbound.protection.outlook.com [104.47.38.50])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id EB9BCA26D8
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 13:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wb2pzAMCKQ1/4Jip+VSCisN8vG4ByAdltvZtwyTt62o=;
 b=C5cDKRnG2MisXVs1HpzrboSPkTxqODHpbMficUj8lfzR+PDL41ZnLqTfpJTdkwqMQk5SjFOt03mLKDS0VekEe0pGGxx24OyHAtGerQ1NGq8yPP6gE4CuOitH+lzoWZY6zCxQdlVuaTW19y9MBIhUI0CauT7zd378rdOtxYIwCKU=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2561.namprd12.prod.outlook.com (52.132.27.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:52:34 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2%4]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 13:52:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 not locking on GPS
Thread-Index: AQHU/1qQZuARdsvROkW0jH9lKP/5NQ==
Date: Tue, 30 Apr 2019 13:52:34 +0000
Message-ID: <BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea5e5c1a-435f-4eb5-04a7-08d6cd73191f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2561; 
x-ms-traffictypediagnostic: BL0PR12MB2561:
x-microsoft-antispam-prvs: <BL0PR12MB2561C6049E664863730D7220AF3A0@BL0PR12MB2561.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(396003)(39830400003)(136003)(346002)(189003)(199004)(71200400001)(86362001)(25786009)(2351001)(19627405001)(71190400001)(5640700003)(55016002)(476003)(74316002)(66066001)(99286004)(316002)(6436002)(6916009)(54896002)(52536014)(2501003)(256004)(2906002)(186003)(14454004)(26005)(66556008)(66946007)(64756008)(7696005)(68736007)(76116006)(9686003)(105004)(8676002)(66476007)(97736004)(81156014)(33656002)(102836004)(8936002)(486006)(14444005)(6506007)(73956011)(6116002)(53936002)(3846002)(5660300002)(81166006)(66446008)(508600001)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2561;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kZ5mQKlZW+EJ9f8tgjt/LoiqMehDo4MUawxeXGIkg5H3Syq9u6+fg4uRbbhJNU7m6yGFBDisuqFxn5dUyvmL8qiHDVZ+L+dvv/sagBvZugYEEciLoGKOppl/c/lgFJ3m/kjxz2GolvwcGAJ3P7Sy6t8NfB38UaH5Qn7NI63E3wjYPsY3fyi1ZiYmTekD8FmQ3oSY3xAteXelaMp7ggYxhMcSeV9/VA44n3HLoqSSvSMvXaMXkEACV/yxTvbisiWKVINZuirz/CjEh8+okagcBIQOGFX7SAW6+R4AFjKshvBg/aqOXok87VqVGm/glOtDY8AlyVA8BxZqoTfL8couUdS+FWPbdBpRKEQMmVTZDuvqyuJ57D/up0fbYlc5eyke5Wch7X4usL0mv6QHfLm3QGE5wjmUjCg4MGDrc7k8YXA=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea5e5c1a-435f-4eb5-04a7-08d6cd73191f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:52:34.4149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2561
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bl2nam02lp2050.outbound.protection.outlook.com|104.47.38.50|NAM02-BL2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.38.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-27667-c
X-Mailprotector-ID: 714b1077-41f4-4c56-ac37-4774c1b99bab
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] E310 not locking on GPS
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
Content-Type: multipart/mixed; boundary="===============0903502275365801327=="
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

--===============0903502275365801327==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0BL0PR12MB2340namp_"

--_000_BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0BL0PR12MB2340namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

I've seen this a few times, but I cannot seem to lock it down to any partic=
ular reason.  While sitting at my desk with a GPS simulator (so I have a kn=
own good signal), I will be doing testing and everything is fine (it seems =
to be walking around the place where the unit was built).  I will turn off =
the GPS unit for the night and then the next day when I turn it on, I never=
 get a fix.  I've seen this numerous times and the only way I can fix it is=
 to reboot the E310.  It is like the GPS is getting into a mucked up stated=
.  Data comes streaming through, but it is just the last good signal.

I can't figure out a way to reset the GPS without rebooting it, does anyone=
 know of a way?  I tried killing and restarting the daemon, but that doesn'=
t seem to do anything.  I really think it is the GPS module, but rebooting =
it everytime I want to run things "just in case."

One other weird thing, when I run gpsmon in this screwed up state, it mostl=
y looks OK, but it has weird characters displayed throughout the ASCII head=
ing (for lack of a better term).

This is a good setup on a different unit (so I don't expect to see a fix):
tcp://localhost:2947          u-blox>
=82=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=83=82=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=83 or":11}
=81Ch PRN  Az  El S/N Flag U =81=81ECEF Pos: +6378137.00m  +0.00m      +0.0=
0m   =81 er":"u-blox","subtype":"Unknown","activated":"2018-10-10T06:21:07.=
701Z","flags":1,"native":1,"bps":9600,"parity":"N","stopbits":1,"cycle":1.0=
0,"mincycle":0.25}]}
=81 0   1   0 165   0 0110   =81=81ECEF Vel:     +0.00m/s     +0.00m/s     =
+0.00m/s =81 false,"timing":false,"split24":false,"pps":true}
=81 1   2   0 165   0 0110   =81=81                                        =
         =81
=81 2   4   0 165   0 0110   =81=81LTP Pos:   0.000000000=9C   0.000000000=
=9C   -18.00m =81
=81 3   6   0 165  23 0310   =81=81LTP Vel:    0.00m/s   0.0=9C   0.00m/s  =
           =81
=81 4   7   0 165   0 0110   =81=81                                        =
         =81
=81 5   9   0 165  23 0310   =81=81Time: 0 00:00:00.00                     =
         =81
=81 6  14   0 165  22 0310   =81=81Time GPS:                     Day:      =
         =81
=81 7  19   0 165  22 0310   =81=81                                        =
         =81
=81 8  20   0 165  21 0310   =81=81Est Pos Err9999998.72st Vel Err   0.00m/=
s        =81
=81 9  21   0 165   0 0110   =81=81PRNs:  0 PDOP:100.0 Fix 0x00 Flags 0x40 =
         =81
=8110  22   0 165   0 0110   =81=84=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80 NAV_SOL =80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=85
=8111  23   0 165   0 0110   =81=82=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=83
=8112  24   0 165   0 0110   =81=81DOP [H] 100.0[V] 100.0[P] 100.0[T] 100.0=
[G] 100.0=81
=8113  28   0 165  23 0310   =81=84=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80 NAV_DOP =80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=85
=8114  30   0 165   0 0110   =81=82=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=83
=8115 136   0 165   0 0110   =81=81TOFF: > 1 day            PPS:           =
         =81

There are lines around the different sections (they look like lines, not da=
shes and bars).


and then on the unit that is hosed:
tcp://localhost:2947          u-blox>
lqqqqqqqqqqqqqqqqqqqqqqqqqqklqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqk or":11}
xCh PRN  Az  El S/N Flag U xxECEF Pos: -2414806.17m +5389584.51m +2400650.2=
8m x er":"u-blox","subtype":"Unknown","activated":"2019-01-08T14:52:40.454Z=
","flags":1,"native":1,"bps":9600,"parity":"N","stopbits":1,"cycle":1.00,"m=
incycle":0.25}]}
x 0   2   0 165  50 0700   xxECEF Vel:     +0.00m/s     +0.00m/s     +0.00m=
/s x false,"timing":false,"split24":false,"pps":true}
x 1   4   0 165  50 0700   xx                                              =
   x
x 2   5   0 165  50 0700   xxLTP Pos:  22.2557151134f 114.134790532f    20.=
19m x
x 3   8   0 165   0 0100   xxLTP Vel:    0.00m/s   0.0f   0.00m/s          =
   x
x 4   9   0 165  50 0700   xx                                              =
   x
x 5  10   0 165  50 0700   xxTime: 61 06:13:40.00                          =
   x
x 6  12   0 165  50 0700   xxTime GPS: 1877+529282.000     Day: 6          =
   x
x 7  13   0 165  50 0600   xx                                              =
   x
x 8  17   0 165  50 0700   xxEst Pos Err2238690.24st Vel Err   0.00m/s     =
   x
x 9  20   0 165  50 0700   xxPRNs:  0 PDOP:100.0 Fix 0x00 Flags 0xdc       =
   x
x10  23   0 165  50 0700   xmqqqqqqqqqqqqqqqqqqq NAV_SOL qqqqqqqqqqqqqqqqqq=
qqqj
x11  24   0 165   0 0110   xlqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqk
x12  27   0 165  50 0700   xxDOP [H] 100.0[V] 100.0[P] 100.0[T] 100.0[G] 10=
0.0x
x13  28   0 165  50 0700   xmqqqqqqqqqqqqqqqqqqq NAV_DOP qqqqqqqqqqqqqqqqqq=
qqqj
x14 129 127  51   0 0110   xlqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqk
x15                        xxTOFF: > 1 day            PPS:                 =
   x
mqqqqqq NAV_SVINFO qqqqqqqqjmqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqj

Not that instead of lines, I see characters.  What is up with that????

--_000_BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0BL0PR12MB2340namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I've seen this a few times, but I cannot seem to lock it down to any partic=
ular reason.&nbsp; While sitting at my desk with a GPS simulator (so I have=
 a known good signal), I will be doing testing and everything is fine (it s=
eems to be walking around the place where
 the unit was built).&nbsp; I will turn off the GPS unit for the night and =
then the next day when I turn it on, I never get a fix.&nbsp; I've seen thi=
s numerous times and the only way I can fix it is to reboot the E310.&nbsp;=
 It is like the GPS is getting into a mucked up
 stated.&nbsp; Data comes streaming through, but it is just the last good s=
ignal.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I can't figure out a way to reset the GPS without rebooting it, does anyone=
 know of a way?&nbsp; I tried killing and restarting the daemon, but that d=
oesn't seem to do anything.&nbsp; I really think it is the GPS module, but =
rebooting it everytime I want to run things
 &quot;just in case.&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
One other weird thing, when I run gpsmon in this screwed up state, it mostl=
y looks OK, but it has weird characters displayed throughout the ASCII head=
ing (for lack of a better term).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This is a good setup on a different unit (so I don't expect to see a fix):<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>tcp://localhost:2947 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;u-blox&gt;<br>
</span>
<div>=82=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=83=82=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=83 or&quot;:11}<br>
</div>
<div>=81Ch PRN &nbsp;Az &nbsp;El S/N Flag U =81=81ECEF Pos: &#43;6378137.00=
m &nbsp;&#43;0.00m &nbsp; &nbsp; &nbsp;&#43;0.00m &nbsp; =81 er&quot;:&quot=
;u-blox&quot;,&quot;subtype&quot;:&quot;Unknown&quot;,&quot;activated&quot;=
:&quot;2018-10-10T06:21:07.701Z&quot;,&quot;flags&quot;:1,&quot;native&quot=
;:1,&quot;bps&quot;:9600,&quot;parity&quot;:&quot;N&quot;,&quot;stopbits&qu=
ot;:1,&quot;cycle&quot;:1.00,&quot;mincycle&quot;:0.25}]}<br>
</div>
<div>=81 0 &nbsp; 1 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81ECEF Vel: &nbsp=
; &nbsp; &#43;0.00m/s &nbsp; &nbsp; &#43;0.00m/s &nbsp; &nbsp; &#43;0.00m/s=
 =81 false,&quot;timing&quot;:false,&quot;split24&quot;:false,&quot;pps&quo=
t;:true}<br>
</div>
<div>=81 1 &nbsp; 2 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; =81<br>
</div>
<div>=81 2 &nbsp; 4 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81LTP Pos: &nbsp;=
 0.000000000=9C &nbsp; 0.000000000=9C &nbsp; -18.00m =81<br>
</div>
<div>=81 3 &nbsp; 6 &nbsp; 0 165 &nbsp;23 0310 &nbsp; =81=81LTP Vel: &nbsp;=
 &nbsp;0.00m/s &nbsp; 0.0=9C &nbsp; 0.00m/s &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =81<br>
</div>
<div>=81 4 &nbsp; 7 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; =81<br>
</div>
<div>=81 5 &nbsp; 9 &nbsp; 0 165 &nbsp;23 0310 &nbsp; =81=81Time: 0 00:00:0=
0.00 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=81<br>
</div>
<div>=81 6 &nbsp;14 &nbsp; 0 165 &nbsp;22 0310 &nbsp; =81=81Time GPS: &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Day: &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =81<br>
</div>
<div>=81 7 &nbsp;19 &nbsp; 0 165 &nbsp;22 0310 &nbsp; =81=81 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; =81<br>
</div>
<div>=81 8 &nbsp;20 &nbsp; 0 165 &nbsp;21 0310 &nbsp; =81=81Est Pos Err9999=
998.72st Vel Err &nbsp; 0.00m/s &nbsp; &nbsp; &nbsp; &nbsp;=81<br>
</div>
<div>=81 9 &nbsp;21 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81PRNs: &nbsp;0 P=
DOP:100.0 Fix 0x00 Flags 0x40 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=81<br>
</div>
<div>=8110 &nbsp;22 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=84=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80 NAV_SOL =80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=85<br>
</div>
<div>=8111 &nbsp;23 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=82=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=83<br>
</div>
<div>=8112 &nbsp;24 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81DOP [H] 100.0[V=
] 100.0[P] 100.0[T] 100.0[G] 100.0=81<br>
</div>
<div>=8113 &nbsp;28 &nbsp; 0 165 &nbsp;23 0310 &nbsp; =81=84=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80 NAV_DOP =80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=85<br>
</div>
<div>=8114 &nbsp;30 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=82=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=83<br>
</div>
<div>=8115 136 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; =81=81TOFF: &gt; 1 day &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PPS: &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=81<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
There are lines around the different sections (they look like lines, not da=
shes and bars).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
and then on the unit that is hosed:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>tcp://localhost:2947 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;u-blox&gt;<br>
</span>
<div>lqqqqqqqqqqqqqqqqqqqqqqqqqqklqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqk or&quot;:11}<br>
</div>
<div>xCh PRN &nbsp;Az &nbsp;El S/N Flag U xxECEF Pos: -2414806.17m &#43;538=
9584.51m &#43;2400650.28m x er&quot;:&quot;u-blox&quot;,&quot;subtype&quot;=
:&quot;Unknown&quot;,&quot;activated&quot;:&quot;2019-01-08T14:52:40.454Z&q=
uot;,&quot;flags&quot;:1,&quot;native&quot;:1,&quot;bps&quot;:9600,&quot;pa=
rity&quot;:&quot;N&quot;,&quot;stopbits&quot;:1,&quot;cycle&quot;:1.00,&quo=
t;mincycle&quot;:0.25}]}<br>
</div>
<div>x 0 &nbsp; 2 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxECEF Vel: &nbsp; &nbs=
p; &#43;0.00m/s &nbsp; &nbsp; &#43;0.00m/s &nbsp; &nbsp; &#43;0.00m/s x fal=
se,&quot;timing&quot;:false,&quot;split24&quot;:false,&quot;pps&quot;:true}=
<br>
</div>
<div>x 1 &nbsp; 4 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xx &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; x<=
br>
</div>
<div>x 2 &nbsp; 5 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxLTP Pos:&nbsp; 22.255=
7151134f 114.134790532f &nbsp; &nbsp;20.19m x<br>
</div>
<div>x 3 &nbsp; 8 &nbsp; 0 165 &nbsp; 0 0100 &nbsp; xxLTP Vel: &nbsp; &nbsp=
;0.00m/s &nbsp; 0.0f &nbsp; 0.00m/s &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; x<br>
</div>
<div>x 4 &nbsp; 9 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xx &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; x<=
br>
</div>
<div>x 5 &nbsp;10 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxTime: 61 06:13:40.00 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; x<br>
</div>
<div>x 6 &nbsp;12 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxTime GPS: 1877&#43;52=
9282.000 &nbsp; &nbsp; Day: 6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; x<b=
r>
</div>
<div>x 7 &nbsp;13 &nbsp; 0 165 &nbsp;50 0600 &nbsp; xx &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; x<=
br>
</div>
<div>x 8 &nbsp;17 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxEst Pos Err2238690.24=
st Vel Err &nbsp; 0.00m/s &nbsp; &nbsp; &nbsp; &nbsp;x<br>
</div>
<div>x 9 &nbsp;20 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxPRNs: &nbsp;0 PDOP:10=
0.0 Fix 0x00 Flags 0xdc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;x<br>
</div>
<div>x10 &nbsp;23 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xmqqqqqqqqqqqqqqqqqqq N=
AV_SOL qqqqqqqqqqqqqqqqqqqqqj<br>
</div>
<div>x11 &nbsp;24 &nbsp; 0 165 &nbsp; 0 0110 &nbsp; xlqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqk<br>
</div>
<div>x12 &nbsp;27 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xxDOP [H] 100.0[V] 100.=
0[P] 100.0[T] 100.0[G] 100.0x<br>
</div>
<div>x13 &nbsp;28 &nbsp; 0 165 &nbsp;50 0700 &nbsp; xmqqqqqqqqqqqqqqqqqqq N=
AV_DOP qqqqqqqqqqqqqqqqqqqqqj<br>
</div>
<div>x14 129 127 &nbsp;51 &nbsp; 0 0110 &nbsp; xlqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqk<br>
</div>
<div>x15 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;xxTOFF: &gt; 1 day &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;PPS: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;x<br>
</div>
<div>mqqqqqq NAV_SVINFO qqqqqqqqjmqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqj<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Not that instead of lines, I see characters.&nbsp; What is up with that????=
</div>
</body>
</html>

--_000_BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0BL0PR12MB2340namp_--


--===============0903502275365801327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0903502275365801327==--

