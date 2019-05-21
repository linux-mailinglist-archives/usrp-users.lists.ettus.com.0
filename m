Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC825212
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 16:31:25 +0200 (CEST)
Received: from [::1] (port=52622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT5nT-0007jk-SN; Tue, 21 May 2019 10:31:19 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:57686)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hT5mw-0007eF-9d
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 10:31:16 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id AB979617AF
 for <usrp-users@lists.ettus.com>; Tue, 21 May 2019 14:30:04 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam01lp2056.outbound.protection.outlook.com [104.47.34.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 285281E0003
 for <usrp-users@lists.ettus.com>; Tue, 21 May 2019 14:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZpihVAPV5ROb4rJXuVEp6Poea3B1075cm44C39FCt0s=;
 b=oN8bx4c4Rlm3Qg7+pk8rNZXCCKdd+yMaD9odxYuM7uFIm3++IRg0Cm6UUOOg208X/kBpc9boewoFe7uq1v6ZlUG4bCP4+xLLWKCQgBw24sviNOy+E3yKx5EbNyK/dSA2jieDZCSVeVzVeDBE5HGIVP1jalnLsKnQ1TLwn7nZEko=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2417.namprd12.prod.outlook.com (52.132.11.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 14:30:00 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 14:30:00 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAg==
Date: Tue, 21 May 2019 14:30:00 +0000
Message-ID: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1428f238-e6cd-4d4f-9182-08d6ddf8ce88
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2417; 
x-ms-traffictypediagnostic: BL0PR12MB2417:
x-microsoft-antispam-prvs: <BL0PR12MB24172480D9F736EF2B18F52BAF070@BL0PR12MB2417.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(136003)(39830400003)(396003)(366004)(189003)(199004)(476003)(105004)(486006)(66556008)(316002)(19627405001)(66066001)(64756008)(66446008)(76116006)(73956011)(66476007)(66946007)(52536014)(86362001)(68736007)(2906002)(8676002)(6116002)(3846002)(81156014)(81166006)(8936002)(6506007)(33656002)(186003)(26005)(102836004)(7696005)(6916009)(74316002)(25786009)(6436002)(54896002)(508600001)(71190400001)(53936002)(7736002)(99286004)(14454004)(9686003)(5660300002)(14444005)(256004)(71200400001)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2417;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s0+MEvVQ7webUOk+iiMbJkJEHVuItQZ3UjjQakZHYGoqQdDAmLzGAOGmSV6ELP15KZZiZ2t0f/EaB8+ccO3Di9dXppVRH2/z95yIufZUduCrvKKXyEZQk92K3dPD2qTvVPneaY4kgUJhYOBKigCTEzT46ixoBjcDp6/fB4LJ+sgLrABzorg9PtkLKNXCgQ/4NmUpnbUINzSNI/ycIGXwy6jSaVteuni64+xjeyF3aoiXwM4ua7VchsColyQIKgd3GPwbzI4kiZBQbR2R+djnFQuOe2GzgqvrK8lAnKcXyrThpKxbYS+yTNFrUJ1NDkRyQI4Yt2M2cR4lZb/5hhqORqo4lpW3JA3WE69XUyMB07KlUNVRVTeTITRIOqA3r4MaRdGtnKHRFnCSbUxdklOZ7Pie6gBQhVEcMFly1Xik9q0=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1428f238-e6cd-4d4f-9182-08d6ddf8ce88
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 14:30:00.4809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2417
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam01lp2056.outbound.protection.outlook.com|104.47.34.56|NAM01-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.34.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-14191-c
X-Mailprotector-ID: 52105672-bd2d-4d84-8ba4-6018ec3752de
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] GR in the E320
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
Content-Type: multipart/mixed; boundary="===============5710145182156203572=="
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

--===============5710145182156203572==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340105F797573EE26E8A94BAF070BL0PR12MB2340namp_"

--_000_BL0PR12MB2340105F797573EE26E8A94BAF070BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, so I am a total newbie when it comes to open-embedded.  I know that the=
 docker to build doesn't include a gnuradio-image bitbake option (only deve=
loper-image), so I tried to make one.  I created a new gnuradio-image.bb fi=
le and added gnuradio to the list of things to build.  Sadly, I appear to n=
eed to do more than that as it won't build:

oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
Loading cache: 100% |######################################################=
###########################################################################=
###########################################################################=
##############| Time: 0:00:00
Loaded 2964 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
NOTE: selecting opkg-utils-native to satisfy virtual/update-alternatives-na=
tive due to PREFERRED_PROVIDERS
NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_PROV=
IDERS
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PRE=
FERRED_PROVIDERS
NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PROVIDE=
RS
NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due to P=
REFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/meta-e=
ttus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwise re=
quires it)
NOTE: Runtime target 'gnuradio' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gnuradio']
NOTE: Target 'gnuradio-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']
ERROR: Required build target 'gnuradio-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Anyone know how to do add it (once that works, I'll want to add some of my =
own OOT packages as well)?


--_000_BL0PR12MB2340105F797573EE26E8A94BAF070BL0PR12MB2340namp_
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
OK, so I am a total newbie when it comes to open-embedded.&nbsp; I know tha=
t the docker to build doesn't include a gnuradio-image bitbake option (only=
 developer-image), so I tried to make one.&nbsp; I created a new gnuradio-i=
mage.bb file and added gnuradio to the list
 of things to build.&nbsp; Sadly, I appear to need to do more than that as =
it won't build:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><b><i>oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose<br>
</i></b></span>
<div><b><i>Loading cache: 100% |###########################################=
###########################################################################=
###########################################################################=
#########################| Time:
 0:00:00<br>
</i></b></div>
<div><b><i>Loaded 2964 entries from dependency cache.<br>
</i></b></div>
<div><b><i>NOTE: Resolving any missing task queue dependencies<br>
</i></b></div>
<div><b><i>NOTE: selecting opkg-utils-native to satisfy virtual/update-alte=
rnatives-native due to PREFERRED_PROVIDERS<br>
</i></b></div>
<div><b><i>NOTE: selecting linux-yocto to satisfy virtual/kernel due to PRE=
FERRED_PROVIDERS<br>
</i></b></div>
<div><b><i>NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native=
 due to PREFERRED_PROVIDERS<br>
</i></b></div>
<div><b><i>NOTE: selecting opkg-native to satisfy opkg-native due to PREFER=
RED_PROVIDERS<br>
</i></b></div>
<div><b><i>NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-gli=
bc due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc<br>
</i></b></div>
<div><b><i>ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-e=
ttus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or o=
therwise requires it)<br>
</i></b></div>
<div><b><i>NOTE: Runtime target 'gnuradio' is unbuildable, removing...<br>
</i></b></div>
<div><b><i>Missing or unbuildable dependency chain was: ['gnuradio']<br>
</i></b></div>
<div><b><i>NOTE: Target 'gnuradio-image' is unbuildable, removing...<br>
</i></b></div>
<div><b><i>Missing or unbuildable dependency chain was: ['gnuradio-image', =
'gnuradio']<br>
</i></b></div>
<div><b><i>ERROR: Required build target 'gnuradio-image' has no buildable p=
roviders.<br>
</i></b></div>
<div><b><i>Missing or unbuildable dependency chain was: ['gnuradio-image', =
'gnuradio']<br>
</i></b></div>
<div><b><i><br>
</i></b></div>
<div><b><i>Summary: There were 2 ERROR messages shown, returning a non-zero=
 exit code.</i></b><br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Anyone know how to do add it (once that works, I'll want to add some of my =
own OOT packages as well)?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_BL0PR12MB2340105F797573EE26E8A94BAF070BL0PR12MB2340namp_--


--===============5710145182156203572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5710145182156203572==--

