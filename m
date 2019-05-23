Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1912871C
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 21:18:21 +0200 (CEST)
Received: from [::1] (port=37680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTtED-0002k6-KU; Thu, 23 May 2019 15:18:13 -0400
Received: from otransport-19.outbound.emailsrv.net ([54.164.123.4]:33974)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hTtDf-0002gN-VE
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 15:18:09 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-19.outbound.emailsrv.net (Postfix) with ESMTPS id 7013461723;
 Thu, 23 May 2019 19:16:59 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2056.outbound.protection.outlook.com [104.47.33.56])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 16F5EA2620;
 Thu, 23 May 2019 19:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLhSn61aIlvOzUHM0lA2qpLpqxpsw/qk7cuWd6iY1YA=;
 b=QF3rOdN0hI0AZronyBYfHt9XknixYGkR8KQwg8/4mV3QbqLD2311w/acEI9TTPiYqI3bBmRmpLGCjvQH4UklEpl++9eQGGpLglBec+Sa6EGw2skXYr7hbp5FmWNvywd0YrEBSNyuC/aD56el+spLjESyCebwerafBZBzfRMkAEA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2452.namprd12.prod.outlook.com (52.132.11.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 19:16:51 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 19:16:51 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wkgAMjzs6AAAg9gIAAAXT0gAAEdICAAAV+s4AAFqMAgAAZSkc=
Date: Thu, 23 May 2019 19:16:51 +0000
Message-ID: <BL0PR12MB234006CD726D756F04A3F390AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
 <BL0PR12MB2340BA94FF8739B061AB2B89AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <3afd262c-763e-fb47-a4c5-a2f1a2411977@balister.org>
 <BL0PR12MB23402482C4BEEAD6A4A162D9AF010@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <fecf1aa1-6f3b-1f8d-9610-d984a5bbb0cd@balister.org>
In-Reply-To: <fecf1aa1-6f3b-1f8d-9610-d984a5bbb0cd@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d9547bd-1a01-47d1-eb74-08d6dfb335bc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2452; 
x-ms-traffictypediagnostic: BL0PR12MB2452:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2452700D1886EF5D9868027BAF010@BL0PR12MB2452.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(396003)(366004)(376002)(136003)(51914003)(199004)(189003)(51444003)(66446008)(66476007)(6506007)(66556008)(64756008)(66946007)(73956011)(53546011)(99286004)(316002)(52536014)(606006)(7696005)(186003)(33656002)(966005)(76176011)(110136005)(53936002)(102836004)(76116006)(86362001)(508600001)(6116002)(26005)(3846002)(5660300002)(7736002)(68736007)(6246003)(14444005)(256004)(71200400001)(25786009)(8936002)(19627405001)(8676002)(81166006)(81156014)(71190400001)(14454004)(66066001)(54896002)(105004)(446003)(476003)(486006)(6436002)(236005)(2906002)(229853002)(6306002)(55016002)(74316002)(9686003)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2452;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3DvrO/x6kpNh8Q3frw3veQhQYvOOF3ARlz74MDXI0xc5RrSxG4TNNItW7Mn+272JZDb+KQmFVU8vo36VPGnAzsUmFozX9i1OMDtuAiICYKRn/pYxsrIbGarqAoXs22KEpTD2xGBs9SWTYKp9vGiLFJZJEK+UiSrUqXi1FnCG14xj85A5ar3u8wnz+cfQLPUWt8PGeSbTk3pT0l4/PUTSBXC9Y71vVR0hyY9Il5+A+hjDBT/UxGDsKn8LZoKy6xypnuRiYQJwVWxSUxh8EJpErc1395fnHH8Wq8OLccuqV0JuLh92B4mJ1NpIOXoh9/4JVkGjJf+qHvCG/iB5EB4108imhlYUBwmfLE8qRG9eAfb8hOheMxaDNpeXW6iqnWnFhC8qF/Ze1eNHTTvV4cYpUDJE9XD3j+rwdM1FoXTXAkM=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d9547bd-1a01-47d1-eb74-08d6dfb335bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 19:16:51.1438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2452
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2056.outbound.protection.outlook.com|104.47.33.56|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: eed55403-b174-45d4-9bc5-8694d5bc52bb
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
Content-Type: multipart/mixed; boundary="===============2096076479736215777=="
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

--===============2096076479736215777==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234006CD726D756F04A3F390AF010BL0PR12MB2340namp_"

--_000_BL0PR12MB234006CD726D756F04A3F390AF010BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here is what I get:
root@ni-neon-rev2-mender:~# python
Python 2.7.15 (default, May 17 2019, 15:52:34)
[GCC 7.3.0] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import numbers
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named numbers
>>>


But python3.5 does work.....
root@ni-neon-rev2-mender:~# python3.5
Python 3.5.5 (default, May 17 2019, 15:48:40)
[GCC 7.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import numbers
>>>


________________________________
From: Philip Balister <philip@balister.org>
Sent: Thursday, May 23, 2019 1:45 PM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

On 05/23/2019 12:25 PM, Jason Matusiak via USRP-users wrote:
> OK, I've actually done that before, but when I boot up and run this comma=
nd, it isn't happy:
> root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python ./fm=
test.py
> Traceback (most recent call last):
>   File "./fmtest.py", line 23, in <module>
>     from gnuradio import gr
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/__init__.py", line 4=
4, in <module>
>     from top_block import *
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/top_block.py", line =
30, in <module>
>     from hier_block2 import hier_block2
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py", lin=
e 25, in <module>
>     import pmt
>   File "/usr/lib/python2.7/site-packages/pmt/__init__.py", line 58, in <m=
odule>
>     from pmt_to_python import pmt_to_python as to_python
>   File "/usr/lib/python2.7/site-packages/pmt/pmt_to_python.py", line 22, =
in <module>
>     import numpy
>   File "/usr/lib/python2.7/site-packages/numpy/__init__.py", line 142, in=
 <module>
>     from . import add_newdocs
>   File "/usr/lib/python2.7/site-packages/numpy/add_newdocs.py", line 13, =
in <module>
>     from numpy.lib import add_newdoc
>   File "/usr/lib/python2.7/site-packages/numpy/lib/__init__.py", line 8, =
in <module>
>     from .type_check import *
>   File "/usr/lib/python2.7/site-packages/numpy/lib/type_check.py", line 1=
1, in <module>
>     import numpy.core.numeric as _nx
>   File "/usr/lib/python2.7/site-packages/numpy/core/__init__.py", line 35=
, in <module>
>     from . import _internal  # for freeze programs
>   File "/usr/lib/python2.7/site-packages/numpy/core/_internal.py", line 1=
8, in <module>
>     from .numerictypes import object_
>   File "/usr/lib/python2.7/site-packages/numpy/core/numerictypes.py", lin=
e 87, in <module>
>     import numbers
> ImportError: No module named numbers


Run python and then try "import numbers". See that fail :)

Now try to figure what package provides numbers. I'm busy on a
non-gnuradio thing at them moment, but will try and make sure this isn't
a problem with the numpy recipe.

Philip

>
>
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Thursday, May 23, 2019 12:04 PM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:
>> OK, thanks Philip,
>>
>> This is all a little new/different for me.
>>
>> So once I've added in meta-sdr, all I should need to do is run gnuradio-=
demo-image?
>>
>> also, would I need to modify the following environment variables since I=
 am building something out of meta-sdr?
>>
>> $ TEMPLATECONF=3D$(pwd)/meta-ettus/<MACHINELAYER>/conf
>> $ source ./oe-core/oe-init-build-env ./build ./bitbake
>
> My email fu is terrible today ....
>
> Probably use the templates for the E320 build then add meta-sdr by hand,
> I'd build dev image first, it doesn't have an x server.
>
> And once again, I do contract work to make this stuff work, beyond the
> cases I can play with personally.
>
> Philip
>
>
>>
>>
>> ________________________________
>> From: Philip Balister <philip@balister.org>
>> Sent: Thursday, May 23, 2019 11:43 AM
>> To: Jason Matusiak; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> Oops, replied to copy in my inbox ...
>>
>> Adding meta-sdr to pick up gnuradio shouldn't have changed any machine
>> specific config.
>>
>> Regarding mender, it is great if you have a rack of usrp's to update,
>> but if you are working with one, I'd skip it and write cards by hand.
>> >From what I understand this would be much quicker.
>>
>> I don't have an E320, so pretty much flying blind regarding hardware iss=
ues.
>>
>> Philip
>>
>> On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:
>>> Philip, before building one of your images, does anything need to be do=
ne to get ethernet to work?  It seems like after using mender to setup a ne=
w image and rebooting, I cannot bring up sfp0 to save my life.  It won't wo=
rk until I reboot again, but I think that that drops the mender image rever=
ts to the old one since I didn't commit it.   Any steps I am missing?
>>>
>>>
>>> ________________________________
>>> From: Jason Matusiak
>>> Sent: Tuesday, May 21, 2019 11:18 AM
>>> To: Philip Balister; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> OK, that seems to be building (who knows if it will succeed), thanks.
>>>
>>> I can't seem to find directions online about how to add in my own recip=
es, or those written up somewhere?  Basically, I am trying to figure out ho=
w I can add something like gr-my_blocks to the project (either part of bitb=
ake, or as a stand-alone build I move over to the device afterwards.
>>>
>>> ________________________________
>>> From: Philip Balister <philip@balister.org>
>>> Sent: Tuesday, May 21, 2019 11:05 AM
>>> To: Jason Matusiak; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> Edit bblayers.conf in your conf directory. There is also an add layer
>>> command, but I'm old fashioned :)
>>>
>>> Philip
>>>
>>> On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
>>>> Interesting, thanks.  They are using sumo, so I will try to check that=
 branch out and see how it works.
>>>>
>>>> I will need to research how to add it in and build it as I see pulling=
 it down and checking out sumo alone isn't enough.
>>>>
>>>> Thanks for the insights.
>>>>
>>>> ________________________________
>>>> From: Philip Balister <philip@balister.org>
>>>> Sent: Tuesday, May 21, 2019 10:39 AM
>>>> To: Jason Matusiak; Ettus Mail List
>>>> Subject: Re: [USRP-users] GR in the E320
>>>>
>>>> You need the meta-sdr layer. Choosing a branch may be tricky, only the
>>>> older ones have 3.7 support. My recent work in master is all in suppor=
t
>>>> of transitioning to the unreleased 3.8 gnuradio, which is much better
>>>> for embedded builds.
>>>>
>>>> Might also be some pain due to Ettus forking the uhd recipe.
>>>>
>>>> Philip
>>>>
>>>> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>>>>> OK, so I am a total newbie when it comes to open-embedded.  I know th=
at the docker to build doesn't include a gnuradio-image bitbake option (onl=
y developer-image), so I tried to make one.  I created a new gnuradio-image=
.bb file and added gnuradio to the list of things to build.  Sadly, I appea=
r to need to do more than that as it won't build:
>>>>>
>>>>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>>>>> Loading cache: 100% |################################################=
###########################################################################=
###########################################################################=
####################| Time: 0:00:00
>>>>> Loaded 2964 entries from dependency cache.
>>>>> NOTE: Resolving any missing task queue dependencies
>>>>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternati=
ves-native due to PREFERRED_PROVIDERS
>>>>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRE=
D_PROVIDERS
>>>>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due =
to PREFERRED_PROVIDERS
>>>>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_P=
ROVIDERS
>>>>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc du=
e to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
>>>>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/=
meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherw=
ise requires it)
>>>>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>>>>> Missing or unbuildable dependency chain was: ['gnuradio']
>>>>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnur=
adio']
>>>>> ERROR: Required build target 'gnuradio-image' has no buildable provid=
ers.
>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnur=
adio']
>>>>>
>>>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.
>>>>>
>>>>> Anyone know how to do add it (once that works, I'll want to add some =
of my own OOT packages as well)?
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
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

--_000_BL0PR12MB234006CD726D756F04A3F390AF010BL0PR12MB2340namp_
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
Here is what I get:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>root@ni-neon-rev2-mender:~# python<br>
</span>
<div>Python 2.7.15 (default, May 17 2019, 15:52:34) <br>
</div>
<div>[GCC 7.3.0] on linux2<br>
</div>
<div>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &=
quot;license&quot; for more information.<br>
</div>
<div>&gt;&gt;&gt; import numbers<br>
</div>
<div>Traceback (most recent call last):<br>
</div>
<div>&nbsp; File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;<br>
</div>
<div>ImportError: No module named numbers<br>
</div>
<div>&gt;&gt;&gt; <br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
But python3.5 does work.....</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>root@ni-neon-rev2-mender:~# python3.5<br>
</span>
<div>Python 3.5.5 (default, May 17 2019, 15:48:40) <br>
</div>
<div>[GCC 7.3.0] on linux<br>
</div>
<div>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &=
quot;license&quot; for more information.<br>
</div>
<div>&gt;&gt;&gt; import numbers<br>
</div>
<div>&gt;&gt;&gt; <br>
</div>
<span></span><br>
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
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Philip Balister &lt;p=
hilip@balister.org&gt;<br>
<b>Sent:</b> Thursday, May 23, 2019 1:45 PM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On 05/23/2019 12:25 PM, Jason Matusiak via USRP-us=
ers wrote:<br>
&gt; OK, I've actually done that before, but when I boot up and run this co=
mmand, it isn't happy:<br>
&gt; root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python .=
/fmtest.py<br>
&gt; Traceback (most recent call last):<br>
&gt;&nbsp;&nbsp; File &quot;./fmtest.py&quot;, line 23, in &lt;module&gt;<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from gnuradio import gr<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/__=
init__.py&quot;, line 44, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from top_block import *<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/to=
p_block.py&quot;, line 30, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from hier_block2 import hier_block2<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/hi=
er_block2.py&quot;, line 25, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; import pmt<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/__init__.p=
y&quot;, line 58, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from pmt_to_python import pmt_to_python as to_=
python<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/pmt_to_pyt=
hon.py&quot;, line 22, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numpy<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/__init__=
.py&quot;, line 142, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from . import add_newdocs<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/add_newd=
ocs.py&quot;, line 13, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from numpy.lib import add_newdoc<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/__in=
it__.py&quot;, line 8, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from .type_check import *<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/type=
_check.py&quot;, line 11, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numpy.core.numeric as _nx<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/__i=
nit__.py&quot;, line 35, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from . import _internal&nbsp; # for freeze pro=
grams<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/_in=
ternal.py&quot;, line 18, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; from .numerictypes import object_<br>
&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/num=
erictypes.py&quot;, line 87, in &lt;module&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numbers<br>
&gt; ImportError: No module named numbers<br>
<br>
<br>
Run python and then try &quot;import numbers&quot;. See that fail :)<br>
<br>
Now try to figure what package provides numbers. I'm busy on a<br>
non-gnuradio thing at them moment, but will try and make sure this isn't<br=
>
a problem with the numpy recipe.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt; Sent: Thursday, May 23, 2019 12:04 PM<br>
&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt; OK, thanks Philip,<br>
&gt;&gt;<br>
&gt;&gt; This is all a little new/different for me.<br>
&gt;&gt;<br>
&gt;&gt; So once I've added in meta-sdr, all I should need to do is run gnu=
radio-demo-image?<br>
&gt;&gt;<br>
&gt;&gt; also, would I need to modify the following environment variables s=
ince I am building something out of meta-sdr?<br>
&gt;&gt;<br>
&gt;&gt; $ TEMPLATECONF=3D$(pwd)/meta-ettus/&lt;MACHINELAYER&gt;/conf<br>
&gt;&gt; $ source ./oe-core/oe-init-build-env ./build ./bitbake<br>
&gt; <br>
&gt; My email fu is terrible today ....<br>
&gt; <br>
&gt; Probably use the templates for the E320 build then add meta-sdr by han=
d,<br>
&gt; I'd build dev image first, it doesn't have an x server.<br>
&gt; <br>
&gt; And once again, I do contract work to make this stuff work, beyond the=
<br>
&gt; cases I can play with personally.<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ________________________________<br>
&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt; Sent: Thursday, May 23, 2019 11:43 AM<br>
&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;<br>
&gt;&gt; Oops, replied to copy in my inbox ...<br>
&gt;&gt;<br>
&gt;&gt; Adding meta-sdr to pick up gnuradio shouldn't have changed any mac=
hine<br>
&gt;&gt; specific config.<br>
&gt;&gt;<br>
&gt;&gt; Regarding mender, it is great if you have a rack of usrp's to upda=
te,<br>
&gt;&gt; but if you are working with one, I'd skip it and write cards by ha=
nd.<br>
&gt;&gt; &gt;From what I understand this would be much quicker.<br>
&gt;&gt;<br>
&gt;&gt; I don't have an E320, so pretty much flying blind regarding hardwa=
re issues.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt;&gt; Philip, before building one of your images, does anything need=
 to be done to get ethernet to work?&nbsp; It seems like after using mender=
 to setup a new image and rebooting, I cannot bring up sfp0 to save my life=
.&nbsp; It won't work until I reboot again, but I think
 that that drops the mender image reverts to the old one since I didn't com=
mit it.&nbsp;&nbsp; Any steps I am missing?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt; From: Jason Matusiak<br>
&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 11:18 AM<br>
&gt;&gt;&gt; To: Philip Balister; Ettus Mail List<br>
&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; OK, that seems to be building (who knows if it will succeed), =
thanks.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I can't seem to find directions online about how to add in my =
own recipes, or those written up somewhere?&nbsp; Basically, I am trying to=
 figure out how I can add something like gr-my_blocks to the project (eithe=
r part of bitbake, or as a stand-alone build I
 move over to the device afterwards.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 11:05 AM<br>
&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Edit bblayers.conf in your conf directory. There is also an ad=
d layer<br>
&gt;&gt;&gt; command, but I'm old fashioned :)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:<b=
r>
&gt;&gt;&gt;&gt; Interesting, thanks.&nbsp; They are using sumo, so I will =
try to check that branch out and see how it works.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I will need to research how to add it in and build it as I=
 see pulling it down and checking out sumo alone isn't enough.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks for the insights.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 10:39 AM<br>
&gt;&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; You need the meta-sdr layer. Choosing a branch may be tric=
ky, only the<br>
&gt;&gt;&gt;&gt; older ones have 3.7 support. My recent work in master is a=
ll in support<br>
&gt;&gt;&gt;&gt; of transitioning to the unreleased 3.8 gnuradio, which is =
much better<br>
&gt;&gt;&gt;&gt; for embedded builds.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Might also be some pain due to Ettus forking the uhd recip=
e.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrot=
e:<br>
&gt;&gt;&gt;&gt;&gt; OK, so I am a total newbie when it comes to open-embed=
ded.&nbsp; I know that the docker to build doesn't include a gnuradio-image=
 bitbake option (only developer-image), so I tried to make one.&nbsp; I cre=
ated a new gnuradio-image.bb file and added gnuradio to the
 list of things to build.&nbsp; Sadly, I appear to need to do more than tha=
t as it won't build:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --ve=
rbose<br>
&gt;&gt;&gt;&gt;&gt; Loading cache: 100% |#################################=
###########################################################################=
###########################################################################=
###################################| Time: 0:00:00<br>
&gt;&gt;&gt;&gt;&gt; Loaded 2964 entries from dependency cache.<br>
&gt;&gt;&gt;&gt;&gt; NOTE: Resolving any missing task queue dependencies<br=
>
&gt;&gt;&gt;&gt;&gt; NOTE: selecting opkg-utils-native to satisfy virtual/u=
pdate-alternatives-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt; NOTE: selecting linux-yocto to satisfy virtual/kernel =
due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt; NOTE: selecting pseudo-native to satisfy virtual/faker=
oot-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt; NOTE: selecting opkg-native to satisfy opkg-native due=
 to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt; NOTE: selecting nativesdk-glibc to satisfy runtime nat=
ivesdk-glibc due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk=
-glibc<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-buil=
der/meta-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPEN=
DS on or otherwise requires it)<br>
&gt;&gt;&gt;&gt;&gt; NOTE: Runtime target 'gnuradio' is unbuildable, removi=
ng...<br>
&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradi=
o']<br>
&gt;&gt;&gt;&gt;&gt; NOTE: Target 'gnuradio-image' is unbuildable, removing=
...<br>
&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradi=
o-image', 'gnuradio']<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Required build target 'gnuradio-image' has no b=
uildable providers.<br>
&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradi=
o-image', 'gnuradio']<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Summary: There were 2 ERROR messages shown, returning =
a non-zero exit code.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Anyone know how to do add it (once that works, I'll wa=
nt to add some of my own OOT packages as well)?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
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

--_000_BL0PR12MB234006CD726D756F04A3F390AF010BL0PR12MB2340namp_--


--===============2096076479736215777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2096076479736215777==--

