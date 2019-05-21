Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36314252BC
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 16:51:57 +0200 (CEST)
Received: from [::1] (port=33614 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT67O-0001Xx-FT; Tue, 21 May 2019 10:51:54 -0400
Received: from otransport-27.outbound.emailsrv.net ([35.169.41.199]:37456)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hT66q-0001Hc-EM
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 10:51:50 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-27.outbound.emailsrv.net (Postfix) with ESMTPS id 0CF4B61734;
 Tue, 21 May 2019 14:50:40 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2058.outbound.protection.outlook.com [104.47.40.58])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id C47BF1E0008;
 Tue, 21 May 2019 14:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56S3uOl0mENp5BD1cOm/yJTL8Hi2okQKjTGdPEZifQA=;
 b=knP0P1tTKL7Zym8wZri09pJNVxi1EdTCBTRw0qGZAdngLUdxH2UW4AEQVwi173NvA5RXgXMIeU7+QDaEQ1ipsaXANMR3VCQUPasRhBSkE+yCvPKGvdFx89ETWPUG/42BOsz4r+vBjJtD55Ilj7UuqFIiifLp0dMbrSnF33kaO7M=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2436.namprd12.prod.outlook.com (52.132.11.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 14:50:21 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 14:50:21 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2U=
Date: Tue, 21 May 2019 14:50:21 +0000
Message-ID: <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
In-Reply-To: <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 660892d6-a796-424a-1489-08d6ddfba671
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2436; 
x-ms-traffictypediagnostic: BL0PR12MB2436:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2436D9FC43E92A6C20220309AF070@BL0PR12MB2436.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(346002)(366004)(396003)(136003)(376002)(199004)(189003)(51914003)(446003)(476003)(105004)(11346002)(8936002)(316002)(99286004)(486006)(19627405001)(508600001)(14454004)(606006)(33656002)(966005)(81156014)(81166006)(74316002)(110136005)(25786009)(6246003)(6506007)(102836004)(229853002)(53936002)(8676002)(53546011)(9686003)(3846002)(2906002)(6116002)(7736002)(236005)(54896002)(6306002)(55016002)(66066001)(186003)(26005)(6436002)(76176011)(7696005)(52536014)(14444005)(76116006)(66946007)(66476007)(68736007)(66556008)(64756008)(66446008)(5660300002)(73956011)(71200400001)(71190400001)(256004)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2436;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UQ6DliokTqIp2zeG6XuHILl664ekYusRFb8swvxm++9VZkigXWLX/NkDm0uGLqXKRqGPc+cuyedsA7v9nZ4YP5LYsbzmhKG7nhW82h3ososKcNBnpIhSYK2Sk09CWItBS9Qqt52ZGI87YsosLpKeGuLFUxduG+kcJH38TV8b8NGnnm5zMtraaUCMSgFmO5UHCm6ladoUDpYLbtE8QlOzfKRyrWoj5aIOs2tJNUSbuX6nwtQexEhV00T4I9n60egcDJtQXDpwHC7DFmKXrCZO07GH10FQWJ4N7BurqJWj6N/HoVcR2rR/rk7czVPtDfN+0CBajM5DpwVzYHG0WnvgDNUXvGT5JdJ+L4FlA9dlQJd+lmbq2D0PChHslx5uBPyzt08H9bna8hTZz+mTB/LdRsAJ9izA7+uA2Z+baeneb00=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 660892d6-a796-424a-1489-08d6ddfba671
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 14:50:21.6733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2436
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam03lp2058.outbound.protection.outlook.com|104.47.40.58|NAM03-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.40.58, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-19004-c
X-Mailprotector-ID: fe55c6a5-78c8-4c95-bd96-0293a6b8f05d
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
Content-Type: multipart/mixed; boundary="===============7583744175872188901=="
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

--===============7583744175872188901==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23405B101450C7833CFCBC16AF070BL0PR12MB2340namp_"

--_000_BL0PR12MB23405B101450C7833CFCBC16AF070BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Interesting, thanks.  They are using sumo, so I will try to check that bran=
ch out and see how it works.

I will need to research how to add it in and build it as I see pulling it d=
own and checking out sumo alone isn't enough.

Thanks for the insights.

________________________________
From: Philip Balister <philip@balister.org>
Sent: Tuesday, May 21, 2019 10:39 AM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

You need the meta-sdr layer. Choosing a branch may be tricky, only the
older ones have 3.7 support. My recent work in master is all in support
of transitioning to the unreleased 3.8 gnuradio, which is much better
for embedded builds.

Might also be some pain due to Ettus forking the uhd recipe.

Philip

On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
> OK, so I am a total newbie when it comes to open-embedded.  I know that t=
he docker to build doesn't include a gnuradio-image bitbake option (only de=
veloper-image), so I tried to make one.  I created a new gnuradio-image.bb =
file and added gnuradio to the list of things to build.  Sadly, I appear to=
 need to do more than that as it won't build:
>
> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
> Loading cache: 100% |####################################################=
###########################################################################=
###########################################################################=
################| Time: 0:00:00
> Loaded 2964 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternatives-=
native due to PREFERRED_PROVIDERS
> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_PR=
OVIDERS
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to P=
REFERRED_PROVIDERS
> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PROVI=
DERS
> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due to=
 PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/meta=
-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwise =
requires it)
> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gnuradio']
> NOTE: Target 'gnuradio-image' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio=
']
> ERROR: Required build target 'gnuradio-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio=
']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> Anyone know how to do add it (once that works, I'll want to add some of m=
y own OOT packages as well)?
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--_000_BL0PR12MB23405B101450C7833CFCBC16AF070BL0PR12MB2340namp_
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
Interesting, thanks.&nbsp; They are using sumo, so I will try to check that=
 branch out and see how it works.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I will need to research how to add it in and build it as I see pulling it d=
own and checking out sumo alone isn't enough.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks&nbsp;for the insights.</div>
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
<b>Sent:</b> Tuesday, May 21, 2019 10:39 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">You need the meta-sdr layer. Choosing a branch may=
 be tricky, only the<br>
older ones have 3.7 support. My recent work in master is all in support<br>
of transitioning to the unreleased 3.8 gnuradio, which is much better<br>
for embedded builds.<br>
<br>
Might also be some pain due to Ettus forking the uhd recipe.<br>
<br>
Philip<br>
<br>
On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; OK, so I am a total newbie when it comes to open-embedded.&nbsp; I kno=
w that the docker to build doesn't include a gnuradio-image bitbake option =
(only developer-image), so I tried to make one.&nbsp; I created a new gnura=
dio-image.bb file and added gnuradio to the list
 of things to build.&nbsp; Sadly, I appear to need to do more than that as =
it won't build:<br>
&gt; <br>
&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
###########################################################################=
###################| Time: 0:00:00<br>
&gt; Loaded 2964 entries from dependency cache.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; NOTE: selecting opkg-utils-native to satisfy virtual/update-alternativ=
es-native due to PREFERRED_PROVIDERS<br>
&gt; NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED=
_PROVIDERS<br>
&gt; NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due t=
o PREFERRED_PROVIDERS<br>
&gt; NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PR=
OVIDERS<br>
&gt; NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due=
 to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc<br>
&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/m=
eta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwi=
se requires it)<br>
&gt; NOTE: Runtime target 'gnuradio' is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: ['gnuradio']<br>
&gt; NOTE: Target 'gnuradio-image' is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnura=
dio']<br>
&gt; ERROR: Required build target 'gnuradio-image' has no buildable provide=
rs.<br>
&gt; Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnura=
dio']<br>
&gt; <br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt; <br>
&gt; Anyone know how to do add it (once that works, I'll want to add some o=
f my own OOT packages as well)?<br>
&gt; <br>
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

--_000_BL0PR12MB23405B101450C7833CFCBC16AF070BL0PR12MB2340namp_--


--===============7583744175872188901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7583744175872188901==--

