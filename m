Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9CE289FD
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 21:43:50 +0200 (CEST)
Received: from [::1] (port=48224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTtcz-000565-ME; Thu, 23 May 2019 15:43:49 -0400
Received: from otransport-19.outbound.emailsrv.net ([54.164.123.4]:36809)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hTtcR-0004wv-Lw
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 15:43:45 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-19.outbound.emailsrv.net (Postfix) with ESMTPS id 586C6616CE;
 Thu, 23 May 2019 19:42:35 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam01lp2053.outbound.protection.outlook.com [104.47.34.53])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id B1B081E0004;
 Thu, 23 May 2019 19:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJd20ubNtE/GfBEVftLX0bgtQCV1iZpXyNMt1HSwL0k=;
 b=ic95FJQfBtsoAciXWEJ2qqjvtdikZNx6alIs15lhJXBhJsRCpVmTuO8w47k0VtS7S4HkjJcOXMVKPgzjQx2FaWlj0Ow8g8Spyip5pg/E9tES+PJ/TFQOtXEXSFtYEZFgI48n3PJ9nvoM11tfpFiF9DhUDpZUx0B/k3clZMRc0pg=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2531.namprd12.prod.outlook.com (52.132.11.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 19:42:31 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 19:42:31 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wkgAMjzs6AAAg9gIAAAXT0gAAEdICAAAV+s4AAFqMAgAAZSkeAAAbBgIAAAEm4
Date: Thu, 23 May 2019 19:42:31 +0000
Message-ID: <BL0PR12MB234085AFBD552F7BB968B89BAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
 <BL0PR12MB2340BA94FF8739B061AB2B89AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <3afd262c-763e-fb47-a4c5-a2f1a2411977@balister.org>
 <BL0PR12MB23402482C4BEEAD6A4A162D9AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <fecf1aa1-6f3b-1f8d-9610-d984a5bbb0cd@balister.org>
 <BL0PR12MB234006CD726D756F04A3F390AF010@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <81c196a3-8f2a-a3f2-4ba5-38bba11de7a0@balister.org>
In-Reply-To: <81c196a3-8f2a-a3f2-4ba5-38bba11de7a0@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 863615bc-6712-4302-03d3-08d6dfb6cbc6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2531; 
x-ms-traffictypediagnostic: BL0PR12MB2531:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB25314A53694D6F6D58292260AF010@BL0PR12MB2531.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(39830400003)(376002)(396003)(136003)(346002)(366004)(189003)(199004)(51914003)(51444003)(71190400001)(30864003)(33656002)(71200400001)(256004)(14444005)(5660300002)(66066001)(19627405001)(86362001)(110136005)(105004)(53936002)(6246003)(606006)(52536014)(99286004)(25786009)(74316002)(68736007)(26005)(186003)(8936002)(316002)(8676002)(81156014)(81166006)(2906002)(66476007)(66556008)(64756008)(66446008)(7736002)(7696005)(73956011)(76176011)(476003)(3846002)(6116002)(6506007)(66946007)(102836004)(53546011)(76116006)(11346002)(229853002)(55016002)(966005)(6436002)(6306002)(54896002)(446003)(486006)(14454004)(236005)(9686003)(508600001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2531;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JfFMooLMp6ygvpy57EzuI/4VLqiZL6BSEc75U7rIE9uyEAEylmifmc5nhfNVOv5acw/oEW7YETA7NWqkrGVmX/IZT6atVd0HUG6bZTcBR1dKxjJsUI0Q6trZoGxmKR0eJ5f5mjP+695rho4dDBEtmDZxFpV4UHpD4HjLVqtdeTgHl6sV4IhLkSIVfRpXsD60/xxVvkqWaqPI608McbIFPJMiKi7Lm+mC6GUZZOz4c9dJVOVE7T1+uMzzAZQwUNeEtiwlYs5SrxeXCZHh7tafbnWFntKfHTlo9W2irRElmqGkGHi0zgcr4jNSAAqdtRdjQ7xXIsAyR4rB+xyaf5efI2Mo3Akrau04MaCH6EppadKnbR9LsgLBEL0oawR5aZSh7sl5wzI3M5Ohy/i1UaQN+qvk+8qlq9+cdQClVGQIY3o=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 863615bc-6712-4302-03d3-08d6dfb6cbc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 19:42:31.3138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2531
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam01lp2053.outbound.protection.outlook.com|104.47.34.53|NAM01-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.34.53, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: 0b35c0b0-0ec0-4184-af99-63dbe94d7800
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
Content-Type: multipart/mixed; boundary="===============8738226551846441222=="
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

--===============8738226551846441222==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234085AFBD552F7BB968B89BAF010BL0PR12MB2340namp_"

--_000_BL0PR12MB234085AFBD552F7BB968B89BAF010BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am on sumo.  That was the version of everything that Ettus recommended fo=
r their stuff.


________________________________
From: Philip Balister <philip@balister.org>
Sent: Thursday, May 23, 2019 3:40 PM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

Which branch of meta-sdr are you using? GNURadio 3.7 is python2 only.
The master branch works with python3.

It looks like you have numpy for both verions, but the config is
different or something, I've never run into this problem.

Philip

On 05/23/2019 03:16 PM, Jason Matusiak via USRP-users wrote:
> Here is what I get:
> root@ni-neon-rev2-mender:~# python
> Python 2.7.15 (default, May 17 2019, 15:52:34)
> [GCC 7.3.0] on linux2
> Type "help", "copyright", "credits" or "license" for more information.
>>>> import numbers
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
> ImportError: No module named numbers
>>>>
>
>
> But python3.5 does work.....
> root@ni-neon-rev2-mender:~# python3.5
> Python 3.5.5 (default, May 17 2019, 15:48:40)
> [GCC 7.3.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
>>>> import numbers
>>>>
>
>
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Thursday, May 23, 2019 1:45 PM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> On 05/23/2019 12:25 PM, Jason Matusiak via USRP-users wrote:
>> OK, I've actually done that before, but when I boot up and run this comm=
and, it isn't happy:
>> root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python ./f=
mtest.py
>> Traceback (most recent call last):
>>   File "./fmtest.py", line 23, in <module>
>>     from gnuradio import gr
>>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/__init__.py", line =
44, in <module>
>>     from top_block import *
>>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/top_block.py", line=
 30, in <module>
>>     from hier_block2 import hier_block2
>>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py", li=
ne 25, in <module>
>>     import pmt
>>   File "/usr/lib/python2.7/site-packages/pmt/__init__.py", line 58, in <=
module>
>>     from pmt_to_python import pmt_to_python as to_python
>>   File "/usr/lib/python2.7/site-packages/pmt/pmt_to_python.py", line 22,=
 in <module>
>>     import numpy
>>   File "/usr/lib/python2.7/site-packages/numpy/__init__.py", line 142, i=
n <module>
>>     from . import add_newdocs
>>   File "/usr/lib/python2.7/site-packages/numpy/add_newdocs.py", line 13,=
 in <module>
>>     from numpy.lib import add_newdoc
>>   File "/usr/lib/python2.7/site-packages/numpy/lib/__init__.py", line 8,=
 in <module>
>>     from .type_check import *
>>   File "/usr/lib/python2.7/site-packages/numpy/lib/type_check.py", line =
11, in <module>
>>     import numpy.core.numeric as _nx
>>   File "/usr/lib/python2.7/site-packages/numpy/core/__init__.py", line 3=
5, in <module>
>>     from . import _internal  # for freeze programs
>>   File "/usr/lib/python2.7/site-packages/numpy/core/_internal.py", line =
18, in <module>
>>     from .numerictypes import object_
>>   File "/usr/lib/python2.7/site-packages/numpy/core/numerictypes.py", li=
ne 87, in <module>
>>     import numbers
>> ImportError: No module named numbers
>
>
> Run python and then try "import numbers". See that fail :)
>
> Now try to figure what package provides numbers. I'm busy on a
> non-gnuradio thing at them moment, but will try and make sure this isn't
> a problem with the numpy recipe.
>
> Philip
>
>>
>>
>> ________________________________
>> From: Philip Balister <philip@balister.org>
>> Sent: Thursday, May 23, 2019 12:04 PM
>> To: Jason Matusiak; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:
>>> OK, thanks Philip,
>>>
>>> This is all a little new/different for me.
>>>
>>> So once I've added in meta-sdr, all I should need to do is run gnuradio=
-demo-image?
>>>
>>> also, would I need to modify the following environment variables since =
I am building something out of meta-sdr?
>>>
>>> $ TEMPLATECONF=3D$(pwd)/meta-ettus/<MACHINELAYER>/conf
>>> $ source ./oe-core/oe-init-build-env ./build ./bitbake
>>
>> My email fu is terrible today ....
>>
>> Probably use the templates for the E320 build then add meta-sdr by hand,
>> I'd build dev image first, it doesn't have an x server.
>>
>> And once again, I do contract work to make this stuff work, beyond the
>> cases I can play with personally.
>>
>> Philip
>>
>>
>>>
>>>
>>> ________________________________
>>> From: Philip Balister <philip@balister.org>
>>> Sent: Thursday, May 23, 2019 11:43 AM
>>> To: Jason Matusiak; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> Oops, replied to copy in my inbox ...
>>>
>>> Adding meta-sdr to pick up gnuradio shouldn't have changed any machine
>>> specific config.
>>>
>>> Regarding mender, it is great if you have a rack of usrp's to update,
>>> but if you are working with one, I'd skip it and write cards by hand.
>>> >From what I understand this would be much quicker.
>>>
>>> I don't have an E320, so pretty much flying blind regarding hardware is=
sues.
>>>
>>> Philip
>>>
>>> On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:
>>>> Philip, before building one of your images, does anything need to be d=
one to get ethernet to work?  It seems like after using mender to setup a n=
ew image and rebooting, I cannot bring up sfp0 to save my life.  It won't w=
ork until I reboot again, but I think that that drops the mender image reve=
rts to the old one since I didn't commit it.   Any steps I am missing?
>>>>
>>>>
>>>> ________________________________
>>>> From: Jason Matusiak
>>>> Sent: Tuesday, May 21, 2019 11:18 AM
>>>> To: Philip Balister; Ettus Mail List
>>>> Subject: Re: [USRP-users] GR in the E320
>>>>
>>>> OK, that seems to be building (who knows if it will succeed), thanks.
>>>>
>>>> I can't seem to find directions online about how to add in my own reci=
pes, or those written up somewhere?  Basically, I am trying to figure out h=
ow I can add something like gr-my_blocks to the project (either part of bit=
bake, or as a stand-alone build I move over to the device afterwards.
>>>>
>>>> ________________________________
>>>> From: Philip Balister <philip@balister.org>
>>>> Sent: Tuesday, May 21, 2019 11:05 AM
>>>> To: Jason Matusiak; Ettus Mail List
>>>> Subject: Re: [USRP-users] GR in the E320
>>>>
>>>> Edit bblayers.conf in your conf directory. There is also an add layer
>>>> command, but I'm old fashioned :)
>>>>
>>>> Philip
>>>>
>>>> On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
>>>>> Interesting, thanks.  They are using sumo, so I will try to check tha=
t branch out and see how it works.
>>>>>
>>>>> I will need to research how to add it in and build it as I see pullin=
g it down and checking out sumo alone isn't enough.
>>>>>
>>>>> Thanks for the insights.
>>>>>
>>>>> ________________________________
>>>>> From: Philip Balister <philip@balister.org>
>>>>> Sent: Tuesday, May 21, 2019 10:39 AM
>>>>> To: Jason Matusiak; Ettus Mail List
>>>>> Subject: Re: [USRP-users] GR in the E320
>>>>>
>>>>> You need the meta-sdr layer. Choosing a branch may be tricky, only th=
e
>>>>> older ones have 3.7 support. My recent work in master is all in suppo=
rt
>>>>> of transitioning to the unreleased 3.8 gnuradio, which is much better
>>>>> for embedded builds.
>>>>>
>>>>> Might also be some pain due to Ettus forking the uhd recipe.
>>>>>
>>>>> Philip
>>>>>
>>>>> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>>>>>> OK, so I am a total newbie when it comes to open-embedded.  I know t=
hat the docker to build doesn't include a gnuradio-image bitbake option (on=
ly developer-image), so I tried to make one.  I created a new gnuradio-imag=
e.bb file and added gnuradio to the list of things to build.  Sadly, I appe=
ar to need to do more than that as it won't build:
>>>>>>
>>>>>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>>>>>> Loading cache: 100% |###############################################=
###########################################################################=
###########################################################################=
#####################| Time: 0:00:00
>>>>>> Loaded 2964 entries from dependency cache.
>>>>>> NOTE: Resolving any missing task queue dependencies
>>>>>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternat=
ives-native due to PREFERRED_PROVIDERS
>>>>>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERR=
ED_PROVIDERS
>>>>>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due=
 to PREFERRED_PROVIDERS
>>>>>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_=
PROVIDERS
>>>>>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc d=
ue to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
>>>>>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus=
/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or other=
wise requires it)
>>>>>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>>>>>> Missing or unbuildable dependency chain was: ['gnuradio']
>>>>>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnu=
radio']
>>>>>> ERROR: Required build target 'gnuradio-image' has no buildable provi=
ders.
>>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnu=
radio']
>>>>>>
>>>>>> Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t code.
>>>>>>
>>>>>> Anyone know how to do add it (once that works, I'll want to add some=
 of my own OOT packages as well)?
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
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

--_000_BL0PR12MB234085AFBD552F7BB968B89BAF010BL0PR12MB2340namp_
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
I am on sumo.&nbsp; That was the version of everything that Ettus recommend=
ed for their stuff.</div>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Philip Balister &lt;p=
hilip@balister.org&gt;<br>
<b>Sent:</b> Thursday, May 23, 2019 3:40 PM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Which branch of meta-sdr are you using? GNURadio 3=
.7 is python2 only.<br>
The master branch works with python3.<br>
<br>
It looks like you have numpy for both verions, but the config is<br>
different or something, I've never run into this problem.<br>
<br>
Philip<br>
<br>
On 05/23/2019 03:16 PM, Jason Matusiak via USRP-users wrote:<br>
&gt; Here is what I get:<br>
&gt; root@ni-neon-rev2-mender:~# python<br>
&gt; Python 2.7.15 (default, May 17 2019, 15:52:34)<br>
&gt; [GCC 7.3.0] on linux2<br>
&gt; Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &=
quot;license&quot; for more information.<br>
&gt;&gt;&gt;&gt; import numbers<br>
&gt; Traceback (most recent call last):<br>
&gt;&nbsp;&nbsp; File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;<=
br>
&gt; ImportError: No module named numbers<br>
&gt;&gt;&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; But python3.5 does work.....<br>
&gt; root@ni-neon-rev2-mender:~# python3.5<br>
&gt; Python 3.5.5 (default, May 17 2019, 15:48:40)<br>
&gt; [GCC 7.3.0] on linux<br>
&gt; Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &=
quot;license&quot; for more information.<br>
&gt;&gt;&gt;&gt; import numbers<br>
&gt;&gt;&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt; Sent: Thursday, May 23, 2019 1:45 PM<br>
&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; On 05/23/2019 12:25 PM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt; OK, I've actually done that before, but when I boot up and run thi=
s command, it isn't happy:<br>
&gt;&gt; root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# pyth=
on ./fmtest.py<br>
&gt;&gt; Traceback (most recent call last):<br>
&gt;&gt;&nbsp;&nbsp; File &quot;./fmtest.py&quot;, line 23, in &lt;module&g=
t;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from gnuradio import gr<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/g=
r/__init__.py&quot;, line 44, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from top_block import *<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/g=
r/top_block.py&quot;, line 30, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from hier_block2 import hier_block2<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/g=
r/hier_block2.py&quot;, line 25, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; import pmt<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/__init=
__.py&quot;, line 58, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from pmt_to_python import pmt_to_python as=
 to_python<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/pmt_to=
_python.py&quot;, line 22, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numpy<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/__in=
it__.py&quot;, line 142, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from . import add_newdocs<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/add_=
newdocs.py&quot;, line 13, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from numpy.lib import add_newdoc<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/=
__init__.py&quot;, line 8, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from .type_check import *<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/=
type_check.py&quot;, line 11, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numpy.core.numeric as _nx<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core=
/__init__.py&quot;, line 35, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from . import _internal&nbsp; # for freeze=
 programs<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core=
/_internal.py&quot;, line 18, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; from .numerictypes import object_<br>
&gt;&gt;&nbsp;&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core=
/numerictypes.py&quot;, line 87, in &lt;module&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; import numbers<br>
&gt;&gt; ImportError: No module named numbers<br>
&gt; <br>
&gt; <br>
&gt; Run python and then try &quot;import numbers&quot;. See that fail :)<b=
r>
&gt; <br>
&gt; Now try to figure what package provides numbers. I'm busy on a<br>
&gt; non-gnuradio thing at them moment, but will try and make sure this isn=
't<br>
&gt; a problem with the numpy recipe.<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ________________________________<br>
&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt; Sent: Thursday, May 23, 2019 12:04 PM<br>
&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;<br>
&gt;&gt; On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt;&gt; OK, thanks Philip,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This is all a little new/different for me.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; So once I've added in meta-sdr, all I should need to do is run=
 gnuradio-demo-image?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; also, would I need to modify the following environment variabl=
es since I am building something out of meta-sdr?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; $ TEMPLATECONF=3D$(pwd)/meta-ettus/&lt;MACHINELAYER&gt;/conf<b=
r>
&gt;&gt;&gt; $ source ./oe-core/oe-init-build-env ./build ./bitbake<br>
&gt;&gt;<br>
&gt;&gt; My email fu is terrible today ....<br>
&gt;&gt;<br>
&gt;&gt; Probably use the templates for the E320 build then add meta-sdr by=
 hand,<br>
&gt;&gt; I'd build dev image first, it doesn't have an x server.<br>
&gt;&gt;<br>
&gt;&gt; And once again, I do contract work to make this stuff work, beyond=
 the<br>
&gt;&gt; cases I can play with personally.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt; Sent: Thursday, May 23, 2019 11:43 AM<br>
&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Oops, replied to copy in my inbox ...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Adding meta-sdr to pick up gnuradio shouldn't have changed any=
 machine<br>
&gt;&gt;&gt; specific config.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regarding mender, it is great if you have a rack of usrp's to =
update,<br>
&gt;&gt;&gt; but if you are working with one, I'd skip it and write cards b=
y hand.<br>
&gt;&gt;&gt; &gt;From what I understand this would be much quicker.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I don't have an E320, so pretty much flying blind regarding ha=
rdware issues.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:<b=
r>
&gt;&gt;&gt;&gt; Philip, before building one of your images, does anything =
need to be done to get ethernet to work?&nbsp; It seems like after using me=
nder to setup a new image and rebooting, I cannot bring up sfp0 to save my =
life.&nbsp; It won't work until I reboot again, but I
 think that that drops the mender image reverts to the old one since I didn=
't commit it.&nbsp;&nbsp; Any steps I am missing?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt;&gt; From: Jason Matusiak<br>
&gt;&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 11:18 AM<br>
&gt;&gt;&gt;&gt; To: Philip Balister; Ettus Mail List<br>
&gt;&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; OK, that seems to be building (who knows if it will succee=
d), thanks.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I can't seem to find directions online about how to add in=
 my own recipes, or those written up somewhere?&nbsp; Basically, I am tryin=
g to figure out how I can add something like gr-my_blocks to the project (e=
ither part of bitbake, or as a stand-alone build
 I move over to the device afterwards.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 11:05 AM<br>
&gt;&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Edit bblayers.conf in your conf directory. There is also a=
n add layer<br>
&gt;&gt;&gt;&gt; command, but I'm old fashioned :)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrot=
e:<br>
&gt;&gt;&gt;&gt;&gt; Interesting, thanks.&nbsp; They are using sumo, so I w=
ill try to check that branch out and see how it works.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I will need to research how to add it in and build it =
as I see pulling it down and checking out sumo alone isn't enough.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Thanks for the insights.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 10:39 AM<br>
&gt;&gt;&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; You need the meta-sdr layer. Choosing a branch may be =
tricky, only the<br>
&gt;&gt;&gt;&gt;&gt; older ones have 3.7 support. My recent work in master =
is all in support<br>
&gt;&gt;&gt;&gt;&gt; of transitioning to the unreleased 3.8 gnuradio, which=
 is much better<br>
&gt;&gt;&gt;&gt;&gt; for embedded builds.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Might also be some pain due to Ettus forking the uhd r=
ecipe.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users =
wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; OK, so I am a total newbie when it comes to open-e=
mbedded.&nbsp; I know that the docker to build doesn't include a gnuradio-i=
mage bitbake option (only developer-image), so I tried to make one.&nbsp; I=
 created a new gnuradio-image.bb file and added gnuradio to
 the list of things to build.&nbsp; Sadly, I appear to need to do more than=
 that as it won't build:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image =
--verbose<br>
&gt;&gt;&gt;&gt;&gt;&gt; Loading cache: 100% |#############################=
###########################################################################=
###########################################################################=
#######################################| Time: 0:00:00<br>
&gt;&gt;&gt;&gt;&gt;&gt; Loaded 2964 entries from dependency cache.<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: Resolving any missing task queue dependencie=
s<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: selecting opkg-utils-native to satisfy virtu=
al/update-alternatives-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: selecting linux-yocto to satisfy virtual/ker=
nel due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: selecting pseudo-native to satisfy virtual/f=
akeroot-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: selecting opkg-native to satisfy opkg-native=
 due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: selecting nativesdk-glibc to satisfy runtime=
 nativesdk-glibc due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativ=
esdk-glibc<br>
&gt;&gt;&gt;&gt;&gt;&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-=
builder/meta-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RD=
EPENDS on or otherwise requires it)<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: Runtime target 'gnuradio' is unbuildable, re=
moving...<br>
&gt;&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnu=
radio']<br>
&gt;&gt;&gt;&gt;&gt;&gt; NOTE: Target 'gnuradio-image' is unbuildable, remo=
ving...<br>
&gt;&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnu=
radio-image', 'gnuradio']<br>
&gt;&gt;&gt;&gt;&gt;&gt; ERROR: Required build target 'gnuradio-image' has =
no buildable providers.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnu=
radio-image', 'gnuradio']<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Summary: There were 2 ERROR messages shown, return=
ing a non-zero exit code.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Anyone know how to do add it (once that works, I'l=
l want to add some of my own OOT packages as well)?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; _______________________________________________<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
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

--_000_BL0PR12MB234085AFBD552F7BB968B89BAF010BL0PR12MB2340namp_--


--===============8738226551846441222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8738226551846441222==--

