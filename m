Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C78253AB
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 17:20:02 +0200 (CEST)
Received: from [::1] (port=41900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT6YY-0003ni-Bt; Tue, 21 May 2019 11:19:58 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:35946)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hT6Xz-0003fF-IF
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 11:19:53 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id 1AE45617FB;
 Tue, 21 May 2019 15:18:43 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2055.outbound.protection.outlook.com [104.47.42.55])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 7BD071E000A;
 Tue, 21 May 2019 15:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0LhnZoP62V1XCoTLL0ENBsEwH6+H8IuvnMijyj9JdA=;
 b=kObOt0oAZxfICftLOxiurSpR/i+t3FB547cWqXWgqyy51fN10/lGEvqCGxGJ/ffEp3Ir2L5wVO98UVVnkf8q5mOBYPOS114BizvYPb5YDpzRAGpEMoGSxWco9XFJ+2QHNKbby32xRIh77hfKm73xkBHl9i367feXLIuQR0Pec6M=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2356.namprd12.prod.outlook.com (52.132.11.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.22; Tue, 21 May 2019 15:18:40 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 15:18:40 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wk
Date: Tue, 21 May 2019 15:18:40 +0000
Message-ID: <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
In-Reply-To: <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dee49342-e1c8-4018-aa53-08d6ddff9b19
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2356; 
x-ms-traffictypediagnostic: BL0PR12MB2356:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB23561EF25D94EFE12EE71402AF070@BL0PR12MB2356.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(376002)(366004)(39830400003)(136003)(199004)(51914003)(189003)(6246003)(3846002)(476003)(105004)(229853002)(102836004)(68736007)(11346002)(446003)(6116002)(26005)(53546011)(7736002)(186003)(74316002)(7696005)(2906002)(8936002)(33656002)(99286004)(19627405001)(8676002)(6506007)(53936002)(81166006)(486006)(81156014)(110136005)(76176011)(14444005)(256004)(55016002)(64756008)(54896002)(6306002)(236005)(66556008)(86362001)(76116006)(14454004)(606006)(66946007)(66476007)(66446008)(9686003)(73956011)(66066001)(508600001)(71200400001)(25786009)(316002)(966005)(71190400001)(6436002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2356;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Xvg5YDfbEHrjQmYIkjRm8mHp49qcyCaoLNMeN5e6v2esFTuH+UJPd6Jdn62vq66/ypXjw3TyK0pwkc5OtUiT3lQhoTlwCk3QIYgmb5DEpMU1khNTWz+k2+3dtTtioQKt4ywxnoBQcuJBMyx5lvjMIKGm0V0hsEt/jzQxxq7bPJF9fYkh3jVc5UBc2Wpr7mVeSBO81SIjuFt7w1iFGPMPFDXCULSOEKs+37FIUq4jWDOJ8CFkrMU+MR8fLQdPP60I12dzJlchq1p0ZUMp1l/N67Y7Io1+3UAPoY4LjKTFnAaP0ywzoUroHsg2h80FEbJzSogD58GmStjdLcvUGywR98p0t0XCDaYaBf7Bd60iyCluXWuJDvlsiJdBrahIOI+J+rbBdXQY5qeLBEus2uKs635t32lOkiAeUvxzptTfsXQ=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dee49342-e1c8-4018-aa53-08d6ddff9b19
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 15:18:40.7253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2356
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2055.outbound.protection.outlook.com|104.47.42.55|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.55, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-23186-c
X-Mailprotector-ID: eac0e304-b279-44cf-9d72-c57545d1e6ff
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
Content-Type: multipart/mixed; boundary="===============6129101842312150444=="
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

--===============6129101842312150444==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23400161A1572DF6798C2903AF070BL0PR12MB2340namp_"

--_000_BL0PR12MB23400161A1572DF6798C2903AF070BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_BL0PR12MB23400161A1572DF6798C2903AF070BL0PR12MB2340namp_
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
OK, that seems to be building (who knows if it will succeed), thanks.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I can't seem to find directions online about how to add in my own recipes, =
or those written up somewhere?&nbsp; Basically, I am trying to figure out h=
ow I can add something like gr-my_blocks to the project (either part of bit=
bake, or as a stand-alone build I move
 over to the device afterwards.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Philip Balister &lt;p=
hilip@balister.org&gt;<br>
<b>Sent:</b> Tuesday, May 21, 2019 11:05 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Edit bblayers.conf in your conf directory. There i=
s also an add layer<br>
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
</body>
</html>

--_000_BL0PR12MB23400161A1572DF6798C2903AF070BL0PR12MB2340namp_--


--===============6129101842312150444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6129101842312150444==--

