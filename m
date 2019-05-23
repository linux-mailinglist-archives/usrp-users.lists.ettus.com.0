Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7D3280D9
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 17:18:13 +0200 (CEST)
Received: from [::1] (port=43714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTpTp-0004M8-3M; Thu, 23 May 2019 11:18:05 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:39618)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hTpTH-0004GX-9C
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 11:18:01 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id 6FC116131C;
 Thu, 23 May 2019 15:16:50 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2057.outbound.protection.outlook.com [104.47.33.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 11231A26D8;
 Thu, 23 May 2019 15:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jco9qxPYvaTk2bl+8xVyCL3gc7OD58EJaQ5BvtoWd8U=;
 b=QmQB9YSI/2vBd1osmDqcHK9yVJwi37jianvtZmg1OtrDQhv+aOPlmTOd4ThgMFOKCmtFEQAqldHqHZlhiZV1C+XGdYiDY3MrcQyE/oVT1EDN5b0xr0sSznQDEtBk74w/VTNHnoySKovwwrDxoGaTVAYcAtq6rPR6Pd8a6VqLOSM=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2578.namprd12.prod.outlook.com (52.132.27.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 15:16:48 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 15:16:48 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wkgAMjzs4=
Date: Thu, 23 May 2019 15:16:48 +0000
Message-ID: <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>,
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ce0cce8-9531-4b78-dc6e-08d6df91acec
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2578; 
x-ms-traffictypediagnostic: BL0PR12MB2578:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2578ACA1C40CF01D58C626A8AF010@BL0PR12MB2578.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(376002)(396003)(366004)(136003)(189003)(199004)(51444003)(51914003)(81166006)(74316002)(446003)(105004)(8676002)(81156014)(66066001)(3846002)(6116002)(68736007)(2906002)(11346002)(476003)(486006)(7736002)(54896002)(6306002)(14454004)(8936002)(236005)(9686003)(86362001)(186003)(508600001)(26005)(966005)(229853002)(6436002)(55016002)(316002)(64756008)(66446008)(76116006)(53936002)(66556008)(66476007)(33656002)(5660300002)(76176011)(73956011)(19627405001)(66946007)(14444005)(6246003)(7696005)(256004)(25786009)(6506007)(53546011)(102836004)(110136005)(606006)(52536014)(71190400001)(71200400001)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2578;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t2UFBCvgJMkfVWrNdkTXATfNCFDzev34dzh2038g3sTRQYrlG+t5rvM1EArlqF7HkuAr63ODAaa+4f4SFSLAGafsBFvckQQpAJBQj+I9jov3Ju0LGRy8lSjTto2zsvCCPd9QzjguKtBnqBNUFsHK+puSCx4l/hFxgbDx5WbAa2uwObtI4/y8FqAQqIW3ie1CpFmBNOv+j3ktwq516Ka2CkbXaBDVguQoyYAKQHQcO67oAR+AnEewk4s6cKwKad8lWxU+M73Ccdy2EEjxpqZEv9WmPGJXynB/hOkr2e7MCcu0NvtSK4J2Gi//zgBeqNScgIb41fCa/I7XRd0nzNZs0ZyVkZdAo+YzrldmYgh/21wKgL2mHW+kX7Y4HvtXS+HqhaDIiHF+TzMf+Wxy+qPerUtTL1Cz+xQKK/dI24I7938=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce0cce8-9531-4b78-dc6e-08d6df91acec
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 15:16:48.2510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2578
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2057.outbound.protection.outlook.com|104.47.33.57|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-26054-c
X-Mailprotector-ID: 4af3047a-2014-4b7a-a7ad-69a23fa31d3c
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] GR in the E320
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
Content-Type: multipart/mixed; boundary="===============2519910164553470862=="
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

--===============2519910164553470862==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340408E4880262FA37CF3FAAF010BL0PR12MB2340namp_"

--_000_BL0PR12MB2340408E4880262FA37CF3FAAF010BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Philip, before building one of your images, does anything need to be done t=
o get ethernet to work?  It seems like after using mender to setup a new im=
age and rebooting, I cannot bring up sfp0 to save my life.  It won't work u=
ntil I reboot again, but I think that that drops the mender image reverts t=
o the old one since I didn't commit it.   Any steps I am missing?


________________________________
From: Jason Matusiak
Sent: Tuesday, May 21, 2019 11:18 AM
To: Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

OK, that seems to be building (who knows if it will succeed), thanks.

I can't seem to find directions online about how to add in my own recipes, =
or those written up somewhere?  Basically, I am trying to figure out how I =
can add something like gr-my_blocks to the project (either part of bitbake,=
 or as a stand-alone build I move over to the device afterwards.

________________________________
From: Philip Balister <philip@balister.org>
Sent: Tuesday, May 21, 2019 11:05 AM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

Edit bblayers.conf in your conf directory. There is also an add layer
command, but I'm old fashioned :)

Philip

On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
> Interesting, thanks.  They are using sumo, so I will try to check that br=
anch out and see how it works.
>
> I will need to research how to add it in and build it as I see pulling it=
 down and checking out sumo alone isn't enough.
>
> Thanks for the insights.
>
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Tuesday, May 21, 2019 10:39 AM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> You need the meta-sdr layer. Choosing a branch may be tricky, only the
> older ones have 3.7 support. My recent work in master is all in support
> of transitioning to the unreleased 3.8 gnuradio, which is much better
> for embedded builds.
>
> Might also be some pain due to Ettus forking the uhd recipe.
>
> Philip
>
> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>> OK, so I am a total newbie when it comes to open-embedded.  I know that =
the docker to build doesn't include a gnuradio-image bitbake option (only d=
eveloper-image), so I tried to make one.  I created a new gnuradio-image.bb=
 file and added gnuradio to the list of things to build.  Sadly, I appear t=
o need to do more than that as it won't build:
>>
>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>> Loading cache: 100% |###################################################=
###########################################################################=
###########################################################################=
#################| Time: 0:00:00
>> Loaded 2964 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternatives=
-native due to PREFERRED_PROVIDERS
>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_P=
ROVIDERS
>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to =
PREFERRED_PROVIDERS
>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PROV=
IDERS
>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due t=
o PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/met=
a-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwise=
 requires it)
>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['gnuradio']
>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradi=
o']
>> ERROR: Required build target 'gnuradio-image' has no buildable providers=
.
>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradi=
o']
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
>>
>> Anyone know how to do add it (once that works, I'll want to add some of =
my own OOT packages as well)?
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--_000_BL0PR12MB2340408E4880262FA37CF3FAAF010BL0PR12MB2340namp_
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
Philip, before building one of your images, does anything need to be done t=
o get ethernet to work?&nbsp; It seems like after using mender to setup a n=
ew image and rebooting, I cannot bring up sfp0 to save my life.&nbsp; It wo=
n't work until I reboot again, but I think
 that that drops the mender image reverts to the old one since I didn't com=
mit it.&nbsp; &nbsp;Any steps I am missing?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Tuesday, May 21, 2019 11:18 AM<br>
<b>To:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
OK, that seems to be building (who knows if it will succeed), thanks.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I can't seem to find directions online about how to add in my own recipes, =
or those written up somewhere?&nbsp; Basically, I am trying to figure out h=
ow I can add something like gr-my_blocks to the project (either part of bit=
bake, or as a stand-alone build I move
 over to the device afterwards.</div>
<div id=3D"x_Signature">
<div>
<div id=3D"x_appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Philip Balister &lt=
;philip@balister.org&gt;<br>
<b>Sent:</b> Tuesday, May 21, 2019 11:05 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">Edit bblayers.conf in your conf directory. There=
 is also an add layer<br>
command, but I'm old fashioned :)<br>
<br>
Philip<br>
<br>
On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; Interesting, thanks.&nbsp; They are using sumo, so I will try to check=
 that branch out and see how it works.<br>
&gt; <br>
&gt; I will need to research how to add it in and build it as I see pulling=
 it down and checking out sumo alone isn't enough.<br>
&gt; <br>
&gt; Thanks for the insights.<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt; Sent: Tuesday, May 21, 2019 10:39 AM<br>
&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; You need the meta-sdr layer. Choosing a branch may be tricky, only the=
<br>
&gt; older ones have 3.7 support. My recent work in master is all in suppor=
t<br>
&gt; of transitioning to the unreleased 3.8 gnuradio, which is much better<=
br>
&gt; for embedded builds.<br>
&gt; <br>
&gt; Might also be some pain due to Ettus forking the uhd recipe.<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt; On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt; OK, so I am a total newbie when it comes to open-embedded.&nbsp; I=
 know that the docker to build doesn't include a gnuradio-image bitbake opt=
ion (only developer-image), so I tried to make one.&nbsp; I created a new g=
nuradio-image.bb file and added gnuradio to the
 list of things to build.&nbsp; Sadly, I appear to need to do more than tha=
t as it won't build:<br>
&gt;&gt;<br>
&gt;&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose<br>
&gt;&gt; Loading cache: 100% |#############################################=
###########################################################################=
###########################################################################=
#######################| Time: 0:00:00<br>
&gt;&gt; Loaded 2964 entries from dependency cache.<br>
&gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; NOTE: selecting opkg-utils-native to satisfy virtual/update-altern=
atives-native due to PREFERRED_PROVIDERS<br>
&gt;&gt; NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFE=
RRED_PROVIDERS<br>
&gt;&gt; NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native d=
ue to PREFERRED_PROVIDERS<br>
&gt;&gt; NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRE=
D_PROVIDERS<br>
&gt;&gt; NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc=
 due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc<br>
&gt;&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ett=
us/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or oth=
erwise requires it)<br>
&gt;&gt; NOTE: Runtime target 'gnuradio' is unbuildable, removing...<br>
&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio']<br>
&gt;&gt; NOTE: Target 'gnuradio-image' is unbuildable, removing...<br>
&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-image', 'g=
nuradio']<br>
&gt;&gt; ERROR: Required build target 'gnuradio-image' has no buildable pro=
viders.<br>
&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-image', 'g=
nuradio']<br>
&gt;&gt;<br>
&gt;&gt; Summary: There were 2 ERROR messages shown, returning a non-zero e=
xit code.<br>
&gt;&gt;<br>
&gt;&gt; Anyone know how to do add it (once that works, I'll want to add so=
me of my own OOT packages as well)?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340408E4880262FA37CF3FAAF010BL0PR12MB2340namp_--


--===============2519910164553470862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2519910164553470862==--

