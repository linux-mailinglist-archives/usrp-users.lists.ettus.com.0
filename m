Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D9119BF
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 15:07:24 +0200 (CEST)
Received: from [::1] (port=40538 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMBQm-0004iK-Li; Thu, 02 May 2019 09:07:20 -0400
Received: from otransport-12.outbound.emailsrv.net ([52.1.62.31]:54765)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hMBQE-0004Xk-8F
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 09:07:16 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-12.outbound.emailsrv.net (Postfix) with ESMTPS id CBC85612FC;
 Thu,  2 May 2019 13:06:05 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2056.outbound.protection.outlook.com [104.47.45.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 2C2561E0007;
 Thu,  2 May 2019 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAE1gvp8efXhUUzMhEtAPQYR6B6H4rPTeD/ikQot/8w=;
 b=cEPIFUPhto/RyZqj5t9fq6Vnycu5BtTQRpAW8DWv5vkfCBUNpzYVBMueq83hVh33NxbRJ1kjlAPI4eMJ1hYM2xPj5teal6X1i3NP1tec/J6yfUl+cBRTJDpt8o1JJsKDfkL17tBaWmPGpx5ZMe2rZHrPALNicLibQyYVEoz6+to=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2385.namprd12.prod.outlook.com (52.132.11.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 13:06:02 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1d2e:7d8e:79f3:acc2%4]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 13:06:02 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>, Chris Gobbett
 <gobbo@tpg.com.au>
Thread-Topic: [USRP-users] E320 numpy missing?
Thread-Index: AQHVABoTNnG79M7aUECTLuXK0wxQraZWSqj+gAAKSYCAAABtIYAAAcsOgACzd4CAAMNCrQ==
Date: Thu, 2 May 2019 13:06:02 +0000
Message-ID: <BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340989655F5C62AE0F27E0DAF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <6fa189949d2b1453a3de4b15c25fc0b0a694151e@new-postoffice.tpg.com.au>
In-Reply-To: <6fa189949d2b1453a3de4b15c25fc0b0a694151e@new-postoffice.tpg.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 538c4d1b-2d12-4e18-4422-08d6cefeed95
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2385; 
x-ms-traffictypediagnostic: BL0PR12MB2385:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB2385951CD6E5311DCBF2B87DAF340@BL0PR12MB2385.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39830400003)(396003)(346002)(376002)(366004)(199004)(13464003)(189003)(110136005)(256004)(5660300002)(99286004)(7696005)(606006)(508600001)(86362001)(68736007)(33656002)(966005)(76176011)(25786009)(14454004)(66066001)(316002)(236005)(105004)(186003)(53546011)(6506007)(102836004)(26005)(486006)(73956011)(11346002)(446003)(76116006)(229853002)(52536014)(476003)(6436002)(66476007)(66446008)(55016002)(64756008)(66556008)(7736002)(53936002)(19627405001)(66946007)(8936002)(9686003)(6116002)(6306002)(54896002)(81166006)(81156014)(8676002)(2906002)(3846002)(74316002)(6246003)(71200400001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2385;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JzU++nT7NjuqHXANQfDQI1Q6jfUfQutib7AqiZ3bi7XY7n20hJE5mit+4BwR2m11J+fJG9pzMh+CRloJjfpZl6V1Zty90RHMDVtG6hj7glVQK6Y17zLuF0WslEKXeG1KsRxNhNZzOqAUQAdabtJexOD4QfsouDPRNsBNAKuq0bDLcaFBXRx2xDQF0f/plcRNa5Yy5TtjSI2UmMTNW0xGNdoJ83UT8ZGKkSMXEfqzd9yWYL2d0NI6yTDIF9VVu0h9v1GQ/v0zd3o7ab5JzrLuL1ty9ZYBbKqC5BUb2gp8tIWLsq/0Qwy/nq6CoJp/TLeVWzIRPUK+PhqxSMniCSBnjfvLgvqhWeJXAF0Tq/OWW1WLlMuxjMmzYhzocLeIB6Zv0jh2QLj5rvuCHCWtI83alyWsA1ep4lMZyUNJPcgezbU=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 538c4d1b-2d12-4e18-4422-08d6cefeed95
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 13:06:02.2041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2385
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam04lp2056.outbound.protection.outlook.com|104.47.45.56|NAM04-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.45.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-30666-c
X-Mailprotector-ID: 2a91859d-3fc1-480b-bebf-f58d4e4b9ef5
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 numpy missing?
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
Content-Type: multipart/mixed; boundary="===============4138152658771499968=="
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

--===============4138152658771499968==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340BL0PR12MB2340namp_"

--_000_BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Chris,

It is a shame that the E320 doesn't seem to have complete support, but mayb=
e someone from Ettus will chime in at some point (though it has already bee=
n over a month since you posted).  As of now, these are paperweights in our=
 office and I have to switch gears to a different project with a different =
vendor until it gets updated.  I am not sure who we can even ping at Ettus =
on the embedded front in case they aren't monitoring the mailing list.  Do =
you have a contact there on the embedded side?

You don't happen to have a series of steps posted somewhere that you use to=
 try to get the E320 to a usable state do you?



________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Chris Go=
bbett via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, May 1, 2019 9:21 PM
To: Ettus Mail List
Subject: Re: [USRP-users] E320 numpy missing?

I've had similar problems since this post in March, and still waiting on a =
'clean' way forward
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-March/0593=
32.html

In the interim I've done lots of cross-compiling and also stealing librarie=
s/binaries from working E310 images; many of the included binaries seem gim=
ped or a step down from what was on the E310.

----- Original Message -----
From:
"Jason Matusiak" <jason@gardettoengineering.com>

To:
"Philip Balister" <philip@balister.org>, "Ettus Mail List" <usrp-users@list=
s.ettus.com>
Cc:

Sent:
Wed, 1 May 2019 14:40:16 +0000
Subject:
Re: [USRP-users] E320 numpy missing?


I just double-checked and ENABLE_PYTHON is on in my system (which was appar=
ently the default since I didn't spell it out in my cmake command).

________________________________
From: Jason Matusiak
Sent: Wednesday, May 1, 2019 10:36 AM
To: Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] E320 numpy missing?

I actually was using a .sh file from earlier in April, but pulling down the=
 most recent: e3xx_e320_sdk_default-v3.13.0.2-20190415.zip, I still don't s=
ee pretty much any site-packages in the sysroot.

Those things seem to be there automatically when using the .sh info with th=
e e310 files.

I will try including python in the cmake path (which I've never needed to d=
o before), but is that going to be enough?  I feel like the back-and-forth =
you and I had last year with the rocko build for the E310 were for pretty s=
imilar issues.  But honestly, I need to look back at the emails for the exa=
ct issues at the time.

________________________________
From: Philip Balister <philip@balister.org>
Sent: Wednesday, May 1, 2019 10:31 AM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] E320 numpy missing?

On 05/01/2019 09:55 AM, Jason Matusiak via USRP-users wrote:
> I also get a "ImportError: No module named sip" when I try to run: uhd_si=
ggen_gui
>
> So I think a few things might be missing from the cross-compile setup.

I took a few minutes and looked at the current state of the BSP. It
looks like you might have this image:

https://github.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/rec=
ipes-core/images/developer-image.bb

I forget where numpy is the gnuradio dependency tree, but I'm going to
guess if you enable python support in gnuradio (yes it might be possible
to use gnuradio without python) you will need numpy to build/run.

Philip

>
> ________________________________
> From: Jason Matusiak
> Sent: Wednesday, May 1, 2019 8:46 AM
> To: Ettus Mail List
> Subject: E320 numpy missing?
>
> Finally got my E320 in and I cross-compiled a new setup.  I tried to fire=
 up my flowgraph (which works fine on an E310) and it is complaining about =
numpy missing.
>
> If I do a search from / on the E320, the only numpy that is showing up is=
:
> /usr/include/boost/python/numpy
>
> If I do a search from a good E310 in / I see:
> ./usr/lib/python2.7/site-packages/numpy
> ./usr/lib/python2.7/site-packages/numpy/core/include/numpy
> ./usr/lib/python2.7/site-packages/Cython/Includes/numpy
> ./usr/include/boost/python/numpy
>
>
> Back on the host machine, my E320 cross-compile prefix shows numpy:
> ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/nump=
y
>
> My good E310 prefix shows:
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13=
.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13=
.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13=
.1-r0/numpy-1.13.1/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13=
.1-r0/numpy-1.13.1/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages=
/Cython/Includes/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages=
/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages=
/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy
>
> So, was numpy forgotten?  Left out for a reason?  I am going to attempt t=
o build it by hand, but I have a fear that I am going to go down dependency=
 hell with this and other missing packages that GR might want.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--_000_BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340BL0PR12MB2340namp_
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
Chris,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It is a shame that the E320 doesn't seem to have complete support, but mayb=
e someone from Ettus will chime in at some point (though it has already bee=
n over a month since you posted).&nbsp; As of now, these are paperweights i=
n our office and I have to switch gears
 to a different project with a different vendor until it gets updated.&nbsp=
; I am not sure who we can even ping at Ettus on the embedded front in case=
 they aren't monitoring the mailing list.&nbsp; Do you have a contact there=
 on the embedded side?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You don't happen to have a series of steps posted somewhere that you use to=
 try to get the E320 to a usable state do you?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
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
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Chris Gobbett via USRP-users =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 9:21 PM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div style=3D"font-family:'Helvetica Neue',Helvetica,Arial,sans-serif; font=
-size:12px">
I've had similar problems since this post in March, and still waiting on a =
'clean' way forward
<div>http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-March=
/059332.html</div>
<div><br>
</div>
<div>In the interim I've done lots of cross-compiling and also stealing lib=
raries/binaries from working E310 images; many of the included binaries see=
m gimped or a step down from what was on the E310.<br>
</div>
<div><br>
</div>
<blockquote>----- Original Message -----<br>
<div style=3D"width:100%; background:rgb(228,228,228)">
<div style=3D"font-weight:bold">From:</div>
&quot;Jason Matusiak&quot; &lt;jason@gardettoengineering.com&gt;</div>
<br>
<div style=3D"font-weight:bold">To:</div>
&quot;Philip Balister&quot; &lt;philip@balister.org&gt;, &quot;Ettus Mail L=
ist&quot; &lt;usrp-users@lists.ettus.com&gt;<br>
<div style=3D"font-weight:bold">Cc:</div>
<br>
<div style=3D"font-weight:bold">Sent:</div>
Wed, 1 May 2019 14:40:16 &#43;0000<br>
<div style=3D"font-weight:bold">Subject:</div>
Re: [USRP-users] E320 numpy missing?<br>
<br>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I just double-checked and ENABLE_PYTHON is on in my system (which was appar=
ently the default since I didn't spell it out in my cmake command).</div>
<div>
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"width:98%">
<div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=
=3D"font-size:11pt"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Wednesday, May 1, 2019 10:36 AM<br>
<b>To:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I actually was using a .sh file from earlier in April, but pulling down the=
 most recent:&nbsp;e3xx_e320_sdk_default-v3.13.0.2-20190415.zip, I still do=
n't see pretty much any site-packages in the sysroot.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Those things seem to be there automatically when using the .sh info with th=
e e310 files.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I will try including python in the cmake path (which I've never needed to d=
o before), but is that going to be enough?&nbsp; I feel like the back-and-f=
orth you and I had last year with the rocko build for the E310 were for pre=
tty similar issues.&nbsp; But honestly, I
 need to look back at the emails for the exact issues at the time.</div>
<div>
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"width:98%">
<div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=
=3D"font-size:11pt"><b>From:</b> Philip Balister &lt;philip@balister.org&gt=
;<br>
<b>Sent:</b> Wednesday, May 1, 2019 10:31 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_x_BodyFragment"><font size=3D"2"><span style=3D"font-size:1=
1pt"></span></font>
<div class=3D"x_x_PlainText">On 05/01/2019 09:55 AM, Jason Matusiak via USR=
P-users wrote:<br>
&gt; I also get a &quot;ImportError: No module named sip&quot; when I try t=
o run: uhd_siggen_gui<br>
&gt; <br>
&gt; So I think a few things might be missing from the cross-compile setup.=
<br>
<br>
I took a few minutes and looked at the current state of the BSP. It<br>
looks like you might have this image:<br>
<br>
<a href=3D"https://github.com/EttusResearch/meta-ettus/blob/master/meta-ett=
us-core/recipes-core/images/developer-image.bb">https://github.com/EttusRes=
earch/meta-ettus/blob/master/meta-ettus-core/recipes-core/images/developer-=
image.bb</a><br>
<br>
I forget where numpy is the gnuradio dependency tree, but I'm going to<br>
guess if you enable python support in gnuradio (yes it might be possible<br=
>
to use gnuradio without python) you will need numpy to build/run.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Jason Matusiak<br>
&gt; Sent: Wednesday, May 1, 2019 8:46 AM<br>
&gt; To: Ettus Mail List<br>
&gt; Subject: E320 numpy missing?<br>
&gt; <br>
&gt; Finally got my E320 in and I cross-compiled a new setup.&nbsp; I tried=
 to fire up my flowgraph (which works fine on an E310) and it is complainin=
g about numpy missing.<br>
&gt; <br>
&gt; If I do a search from / on the E320, the only numpy that is showing up=
 is:<br>
&gt; /usr/include/boost/python/numpy<br>
&gt; <br>
&gt; If I do a search from a good E310 in / I see:<br>
&gt; ./usr/lib/python2.7/site-packages/numpy<br>
&gt; ./usr/lib/python2.7/site-packages/numpy/core/include/numpy<br>
&gt; ./usr/lib/python2.7/site-packages/Cython/Includes/numpy<br>
&gt; ./usr/include/boost/python/numpy<br>
&gt; <br>
&gt; <br>
&gt; Back on the host machine, my E320 cross-compile prefix shows numpy:<br=
>
&gt; ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/n=
umpy<br>
&gt; <br>
&gt; My good E310 prefix shows:<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy<b=
r>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy/core/include/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/Cython/Includes/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy/core/include/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/num=
py<br>
&gt; <br>
&gt; So, was numpy forgotten?&nbsp; Left out for a reason?&nbsp; I am going=
 to attempt to build it by hand, but I have a fear that I am going to go do=
wn dependency hell with this and other missing packages that GR might want.=
<br>
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
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340BL0PR12MB2340namp_--


--===============4138152658771499968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4138152658771499968==--

