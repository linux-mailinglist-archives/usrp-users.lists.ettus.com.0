Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5256514B37
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 15:50:51 +0200 (CEST)
Received: from [::1] (port=49296 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNe0x-0001yD-Fs; Mon, 06 May 2019 09:50:43 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:50574)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hNe0P-0001rP-5G
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 09:50:39 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id C50E76167D;
 Mon,  6 May 2019 13:49:28 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2057.outbound.protection.outlook.com [104.47.42.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 49D02A4045;
 Mon,  6 May 2019 13:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Oa6BUh3NdhVUEGuv3/KU7zbqFlUZs9u2LpckezTaaE=;
 b=MatcNIlv7TEPoyJmJspQbPbgtHZ9OYXitEk40bHP+YPrbqst4KyzVrVPQRdC8DoUTub0Ode1tRjYqZOYjARi+qGbZwGYwRVDykX76essos2qjuokWhQvvK3KHYwQ8rgHOja9hkHyf8yf6lN7qj4MabxeoNvwriQq87nJ1qw4hk4=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2529.namprd12.prod.outlook.com (52.132.11.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 13:49:09 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 13:49:09 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
Thread-Topic: [USRP-users] E320 numpy missing?
Thread-Index: AQHVABoTNnG79M7aUECTLuXK0wxQraZWSqj+gAAKSYCAAABtIYAAAcsOgACzd4CAAMNCrYACpPAAgAOxu54=
Date: Mon, 6 May 2019 13:49:09 +0000
Message-ID: <BL0PR12MB23401D1C40D0DA4157173649AF300@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340989655F5C62AE0F27E0DAF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6fa189949d2b1453a3de4b15c25fc0b0a694151e@new-postoffice.tpg.com.au>
 <BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CACaXmv-cp6BtiY74qvmkycTZqdqb9ZehqfWQ8FrerXC7Rfh7yw@mail.gmail.com>
In-Reply-To: <CACaXmv-cp6BtiY74qvmkycTZqdqb9ZehqfWQ8FrerXC7Rfh7yw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16922b36-32de-46b4-9af3-08d6d2299d4d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2529; 
x-ms-traffictypediagnostic: BL0PR12MB2529:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB25291F22420CB922CD46AE67AF300@BL0PR12MB2529.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(39830400003)(366004)(396003)(189003)(199004)(13464003)(71190400001)(236005)(66446008)(5070765005)(71200400001)(54896002)(6306002)(66476007)(66556008)(64756008)(9686003)(7696005)(76176011)(4326008)(5660300002)(76116006)(73956011)(256004)(14444005)(105004)(66066001)(19627405001)(476003)(606006)(2906002)(6246003)(486006)(11346002)(21615005)(52536014)(54906003)(33656002)(68736007)(99286004)(14454004)(86362001)(229853002)(74316002)(53936002)(66946007)(102836004)(53546011)(25786009)(6916009)(7736002)(81166006)(81156014)(55016002)(446003)(8676002)(6436002)(6506007)(8936002)(186003)(6116002)(3846002)(316002)(966005)(26005)(508600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2529;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4iobMb7jbb7qR+80lG+STo0bpgmyT4CrcRlsllRsGdCW1tp1MXNv28jL1PJnDJor2txIe5plhcbjElX5SrfD8Zr24fvjmGjeE8oSdVqGr8G75FBuydl0efcwhJpfYfxVd9/m70D9KYr2y+10PTM76ZSCVPIeFJM2HqFtlJg48RNF5s+3dT+UWfqF+seyJ4mrdi3yO0BG6fA8wEunAG3Hjmrqyh19Tq7YNf84GM7ked5IRln07O5mSON41YwWOiY60CLesikyPGk6RX133uyXCx7qITSR0tzi7Gwn/xNHKs8bQds5SRMbMuTLbzZ+QqgYa5GS8QsKilbrPfsrgLejmEVbUlHwEPSrz+s+hWt0iCuyEkKyyHyP6H09QsV/WR/aiBA25GCAe4+vEz/S3olQbUyzGaTd0u/nQtrg/wB/8vw=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16922b36-32de-46b4-9af3-08d6d2299d4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 13:49:09.2245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2529
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2057.outbound.protection.outlook.com|104.47.42.57|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: ce2f7e13-aa38-44e2-adc0-ed2aa114229e
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3687551229109350797=="
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

--===============3687551229109350797==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23401D1C40D0DA4157173649AF300BL0PR12MB2340namp_"

--_000_BL0PR12MB23401D1C40D0DA4157173649AF300BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Neel, I will keep an eye out for updates.

________________________________
From: Neel Pandeya <neel.pandeya@ettus.com>
Sent: Saturday, May 4, 2019 1:23 AM
To: Jason Matusiak
Cc: Ettus Mail List; Chris Gobbett
Subject: Re: [USRP-users] E320 numpy missing?

Hello Jason and Chris:

I understand your frustration. We are working on instructions for adding GN=
U Radio support to the E320, and we will provide you with a filesystem. We =
should have something ready for you by the middle of next week. I can be yo=
ur point-of-contact on this issue, and feel free to contact me directly. I =
will make a follow-on post as well to update the mailing list.

--Neel Pandeya



On Thu, 2 May 2019 at 08:07, Jason Matusiak via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Chris Gobbett via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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
"Jason Matusiak" <jason@gardettoengineering.com<mailto:jason@gardettoengine=
ering.com>>

To:
"Philip Balister" <philip@balister.org<mailto:philip@balister.org>>, "Ettus=
 Mail List" <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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
From: Philip Balister <philip@balister.org<mailto:philip@balister.org>>
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
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BL0PR12MB23401D1C40D0DA4157173649AF300BL0PR12MB2340namp_
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
Thanks&nbsp;Neel, I will keep an eye out for updates.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Neel Pandeya &lt;neel=
.pandeya@ettus.com&gt;<br>
<b>Sent:</b> Saturday, May 4, 2019 1:23 AM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Ettus Mail List; Chris Gobbett<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Hel=
lo Jason and Chris:</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">I u=
nderstand your frustration. We are working on instructions for adding GNU R=
adio support to the E320, and we will provide you with a filesystem. We sho=
uld have something ready for you by
 the middle of next week. I can be your point-of-contact on this issue, and=
 feel free to contact me directly. I will make a follow-on post as well to =
update the mailing list.<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">--N=
eel Pandeya</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, 2 May 2019 at 08:07, Jason =
Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Chris,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It is a shame that the E320 doesn't seem to have complete support, but mayb=
e someone from Ettus will chime in at some point (though it has already bee=
n over a month since you posted).&nbsp; As of now, these are paperweights i=
n our office and I have to switch gears
 to a different project with a different vendor until it gets updated.&nbsp=
; I am not sure who we can even ping at Ettus on the embedded front in case=
 they aren't monitoring the mailing list.&nbsp; Do you have a contact there=
 on the embedded side?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
You don't happen to have a series of steps posted somewhere that you use to=
 try to get the E320 to a usable state do you?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_7291063076868061659Signature">
<div>
<div id=3D"x_gmail-m_7291063076868061659appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_7291063076868061659divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com=
" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Chris Gobbett via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 9:21 PM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif; font-size:12px">
I've had similar problems since this post in March, and still waiting on a =
'clean' way forward
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2019-March/059332.html" target=3D"_blank">http://lists.ettus.com/pipermail=
/usrp-users_lists.ettus.com/2019-March/059332.html</a></div>
<div><br>
</div>
<div>In the interim I've done lots of cross-compiling and also stealing lib=
raries/binaries from working E310 images; many of the included binaries see=
m gimped or a step down from what was on the E310.<br>
</div>
<div><br>
</div>
<blockquote>----- Original Message -----<br>
<div style=3D"width:100%; background:rgb(228,228,228) none repeat scroll 0%=
 0%">
<div style=3D"font-weight:bold">From:</div>
&quot;Jason Matusiak&quot; &lt;<a href=3D"mailto:jason@gardettoengineering.=
com" target=3D"_blank">jason@gardettoengineering.com</a>&gt;</div>
<br>
<div style=3D"font-weight:bold">To:</div>
&quot;Philip Balister&quot; &lt;<a href=3D"mailto:philip@balister.org" targ=
et=3D"_blank">philip@balister.org</a>&gt;, &quot;Ettus Mail List&quot; &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt;<br>
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
=3D"font-size:11pt"><b>From:</b> Philip Balister &lt;<a href=3D"mailto:phil=
ip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 10:31 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_gmail-m_7291063076868061659x_x_BodyFragment"><font size=3D"=
2"><span style=3D"font-size:11pt"></span></font>
<div class=3D"x_gmail-m_7291063076868061659x_x_PlainText">On 05/01/2019 09:=
55 AM, Jason Matusiak via USRP-users wrote:<br>
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
us-core/recipes-core/images/developer-image.bb" target=3D"_blank">https://g=
ithub.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-core=
/images/developer-image.bb</a><br>
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
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
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
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23401D1C40D0DA4157173649AF300BL0PR12MB2340namp_--


--===============3687551229109350797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3687551229109350797==--

