Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA628379
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 18:27:08 +0200 (CEST)
Received: from [::1] (port=34988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTqYc-0006L6-6H; Thu, 23 May 2019 12:27:06 -0400
Received: from otransport-23.outbound.emailsrv.net ([18.214.85.87]:41748)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hTqY4-0006Bi-TM
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 12:27:02 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-23.outbound.emailsrv.net (Postfix) with ESMTPS id 34521616DF;
 Thu, 23 May 2019 16:25:52 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2057.outbound.protection.outlook.com [104.47.38.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id DCBC8A3C28;
 Thu, 23 May 2019 16:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSYFYstc5imfi4XwbBMVt2DQ7o6YQ+8Lzg1W7A05Rv0=;
 b=Q8psWgsBHv7LZAIeZuLSl7FT0Iq5+hRx3TuGwv3YAGwmcoeFZrG3EFr5gx4+czcGbkKlkwNpUrtoDJT1GNgkBK141a5/j8f9Q+jRnng4G9fqmq0zTRnOtl3hq9VJI0UmxpMbrG6aedlVnDnKGh2DavzJkbaVMMQgz8V+xGWvukY=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2372.namprd12.prod.outlook.com (52.132.11.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 16:25:49 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 16:25:49 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wkgAMjzs6AAAg9gIAAAXT0gAAEdICAAAV+sw==
Date: Thu, 23 May 2019 16:25:49 +0000
Message-ID: <BL0PR12MB23402482C4BEEAD6A4A162D9AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
 <BL0PR12MB2340BA94FF8739B061AB2B89AF010@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <3afd262c-763e-fb47-a4c5-a2f1a2411977@balister.org>
In-Reply-To: <3afd262c-763e-fb47-a4c5-a2f1a2411977@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 736f2657-f275-4891-377f-08d6df9b515c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2372; 
x-ms-traffictypediagnostic: BL0PR12MB2372:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2372CD93D7A4295131519BB4AF010@BL0PR12MB2372.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(366004)(346002)(396003)(136003)(376002)(51444003)(51914003)(189003)(199004)(8936002)(99286004)(76176011)(68736007)(66946007)(66476007)(64756008)(76116006)(66556008)(73956011)(66446008)(316002)(105004)(25786009)(14444005)(256004)(86362001)(66066001)(81166006)(81156014)(110136005)(7736002)(8676002)(7696005)(74316002)(236005)(71200400001)(6506007)(6246003)(71190400001)(6306002)(9686003)(102836004)(52536014)(6436002)(2906002)(54896002)(53936002)(53546011)(966005)(229853002)(5660300002)(508600001)(186003)(606006)(33656002)(26005)(55016002)(11346002)(446003)(6116002)(486006)(19627405001)(3846002)(476003)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2372;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CldPCMG+niS7RfdiGCmUUAxCTTrmH8OqUjNI5saNLiLBBi+qgdCWIQYtjGL33lwrejngoW1gP9Wf2I3bo/8LWZGTTYEjteL5sOoNNVrZltvM1X+nMsWU9ExKzuiniIj7lR88UJf+4P84JZMlgbvas+2iavF+36PYCeVLhbhD0qDD0wJaUZr3lIl7id7B4rxjzNM6tp/ScHZNh52ZN5p2BL2ZlEU3PpBaeBnaZMt4PdajGiU8SQ39pIjfyGGZ3hzdRDVWu1yFxbOQ7Klwpy3hgVq4lkA5relLac9A3gYGzICvBcAZ0NJmEbF3LO9a7MNwa3xzeECjzHyDW1TFt1XsuF625OZZH4OT4UnIfsnGdq8xEc8tuabXRPApOF2WwtNfqYNCPR4mY3l5n1RB0ukZkttHuUOOrrLUDjCBCImPT2o=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 736f2657-f275-4891-377f-08d6df9b515c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 16:25:49.6437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2372
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bl2nam02lp2057.outbound.protection.outlook.com|104.47.38.57|NAM02-BL2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.38.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: d8649844-8a31-45da-ac10-2c447af5560a
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
Content-Type: multipart/mixed; boundary="===============5166258451653491216=="
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

--===============5166258451653491216==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23402482C4BEEAD6A4A162D9AF010BL0PR12MB2340namp_"

--_000_BL0PR12MB23402482C4BEEAD6A4A162D9AF010BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, I've actually done that before, but when I boot up and run this command=
, it isn't happy:
root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python ./fmte=
st.py
Traceback (most recent call last):
  File "./fmtest.py", line 23, in <module>
    from gnuradio import gr
  File "/usr/lib/python2.7/site-packages/gnuradio/gr/__init__.py", line 44,=
 in <module>
    from top_block import *
  File "/usr/lib/python2.7/site-packages/gnuradio/gr/top_block.py", line 30=
, in <module>
    from hier_block2 import hier_block2
  File "/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py", line =
25, in <module>
    import pmt
  File "/usr/lib/python2.7/site-packages/pmt/__init__.py", line 58, in <mod=
ule>
    from pmt_to_python import pmt_to_python as to_python
  File "/usr/lib/python2.7/site-packages/pmt/pmt_to_python.py", line 22, in=
 <module>
    import numpy
  File "/usr/lib/python2.7/site-packages/numpy/__init__.py", line 142, in <=
module>
    from . import add_newdocs
  File "/usr/lib/python2.7/site-packages/numpy/add_newdocs.py", line 13, in=
 <module>
    from numpy.lib import add_newdoc
  File "/usr/lib/python2.7/site-packages/numpy/lib/__init__.py", line 8, in=
 <module>
    from .type_check import *
  File "/usr/lib/python2.7/site-packages/numpy/lib/type_check.py", line 11,=
 in <module>
    import numpy.core.numeric as _nx
  File "/usr/lib/python2.7/site-packages/numpy/core/__init__.py", line 35, =
in <module>
    from . import _internal  # for freeze programs
  File "/usr/lib/python2.7/site-packages/numpy/core/_internal.py", line 18,=
 in <module>
    from .numerictypes import object_
  File "/usr/lib/python2.7/site-packages/numpy/core/numerictypes.py", line =
87, in <module>
    import numbers
ImportError: No module named numbers


________________________________
From: Philip Balister <philip@balister.org>
Sent: Thursday, May 23, 2019 12:04 PM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:
> OK, thanks Philip,
>
> This is all a little new/different for me.
>
> So once I've added in meta-sdr, all I should need to do is run gnuradio-d=
emo-image?
>
> also, would I need to modify the following environment variables since I =
am building something out of meta-sdr?
>
> $ TEMPLATECONF=3D$(pwd)/meta-ettus/<MACHINELAYER>/conf
> $ source ./oe-core/oe-init-build-env ./build ./bitbake

My email fu is terrible today ....

Probably use the templates for the E320 build then add meta-sdr by hand,
I'd build dev image first, it doesn't have an x server.

And once again, I do contract work to make this stuff work, beyond the
cases I can play with personally.

Philip


>
>
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Thursday, May 23, 2019 11:43 AM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> Oops, replied to copy in my inbox ...
>
> Adding meta-sdr to pick up gnuradio shouldn't have changed any machine
> specific config.
>
> Regarding mender, it is great if you have a rack of usrp's to update,
> but if you are working with one, I'd skip it and write cards by hand.
>>From what I understand this would be much quicker.
>
> I don't have an E320, so pretty much flying blind regarding hardware issu=
es.
>
> Philip
>
> On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:
>> Philip, before building one of your images, does anything need to be don=
e to get ethernet to work?  It seems like after using mender to setup a new=
 image and rebooting, I cannot bring up sfp0 to save my life.  It won't wor=
k until I reboot again, but I think that that drops the mender image revert=
s to the old one since I didn't commit it.   Any steps I am missing?
>>
>>
>> ________________________________
>> From: Jason Matusiak
>> Sent: Tuesday, May 21, 2019 11:18 AM
>> To: Philip Balister; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> OK, that seems to be building (who knows if it will succeed), thanks.
>>
>> I can't seem to find directions online about how to add in my own recipe=
s, or those written up somewhere?  Basically, I am trying to figure out how=
 I can add something like gr-my_blocks to the project (either part of bitba=
ke, or as a stand-alone build I move over to the device afterwards.
>>
>> ________________________________
>> From: Philip Balister <philip@balister.org>
>> Sent: Tuesday, May 21, 2019 11:05 AM
>> To: Jason Matusiak; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> Edit bblayers.conf in your conf directory. There is also an add layer
>> command, but I'm old fashioned :)
>>
>> Philip
>>
>> On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
>>> Interesting, thanks.  They are using sumo, so I will try to check that =
branch out and see how it works.
>>>
>>> I will need to research how to add it in and build it as I see pulling =
it down and checking out sumo alone isn't enough.
>>>
>>> Thanks for the insights.
>>>
>>> ________________________________
>>> From: Philip Balister <philip@balister.org>
>>> Sent: Tuesday, May 21, 2019 10:39 AM
>>> To: Jason Matusiak; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> You need the meta-sdr layer. Choosing a branch may be tricky, only the
>>> older ones have 3.7 support. My recent work in master is all in support
>>> of transitioning to the unreleased 3.8 gnuradio, which is much better
>>> for embedded builds.
>>>
>>> Might also be some pain due to Ettus forking the uhd recipe.
>>>
>>> Philip
>>>
>>> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>>>> OK, so I am a total newbie when it comes to open-embedded.  I know tha=
t the docker to build doesn't include a gnuradio-image bitbake option (only=
 developer-image), so I tried to make one.  I created a new gnuradio-image.=
bb file and added gnuradio to the list of things to build.  Sadly, I appear=
 to need to do more than that as it won't build:
>>>>
>>>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>>>> Loading cache: 100% |#################################################=
###########################################################################=
###########################################################################=
###################| Time: 0:00:00
>>>> Loaded 2964 entries from dependency cache.
>>>> NOTE: Resolving any missing task queue dependencies
>>>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternativ=
es-native due to PREFERRED_PROVIDERS
>>>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED=
_PROVIDERS
>>>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due t=
o PREFERRED_PROVIDERS
>>>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PR=
OVIDERS
>>>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due=
 to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
>>>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/m=
eta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwi=
se requires it)
>>>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>>>> Missing or unbuildable dependency chain was: ['gnuradio']
>>>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnura=
dio']
>>>> ERROR: Required build target 'gnuradio-image' has no buildable provide=
rs.
>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnura=
dio']
>>>>
>>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.
>>>>
>>>> Anyone know how to do add it (once that works, I'll want to add some o=
f my own OOT packages as well)?
>>>>
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

--_000_BL0PR12MB23402482C4BEEAD6A4A162D9AF010BL0PR12MB2340namp_
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
OK, I've actually done that before, but when I boot up and run this command=
, it isn't happy:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python =
./fmtest.py
<br>
</span>
<div>Traceback (most recent call last):<br>
</div>
<div>&nbsp; File &quot;./fmtest.py&quot;, line 23, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from gnuradio import gr<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/__init_=
_.py&quot;, line 44, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from top_block import *<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/top_blo=
ck.py&quot;, line 30, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from hier_block2 import hier_block2<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/gnuradio/gr/hier_bl=
ock2.py&quot;, line 25, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; import pmt<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/__init__.py&quo=
t;, line 58, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from pmt_to_python import pmt_to_python as to_python<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/pmt/pmt_to_python.p=
y&quot;, line 22, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; import numpy<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/__init__.py&q=
uot;, line 142, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from . import add_newdocs<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/add_newdocs.p=
y&quot;, line 13, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from numpy.lib import add_newdoc<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/__init__.=
py&quot;, line 8, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from .type_check import *<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/lib/type_chec=
k.py&quot;, line 11, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; import numpy.core.numeric as _nx<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/__init__=
.py&quot;, line 35, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from . import _internal &nbsp;# for freeze programs<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/_interna=
l.py&quot;, line 18, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; from .numerictypes import object_<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python2.7/site-packages/numpy/core/numerict=
ypes.py&quot;, line 87, in &lt;module&gt;<br>
</div>
<div>&nbsp; &nbsp; import numbers<br>
</div>
<span>ImportError: No module named numbers</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
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
<b>Sent:</b> Thursday, May 23, 2019 12:04 PM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On 05/23/2019 11:54 AM, Jason Matusiak via USRP-us=
ers wrote:<br>
&gt; OK, thanks Philip,<br>
&gt; <br>
&gt; This is all a little new/different for me.<br>
&gt; <br>
&gt; So once I've added in meta-sdr, all I should need to do is run gnuradi=
o-demo-image?<br>
&gt; <br>
&gt; also, would I need to modify the following environment variables since=
 I am building something out of meta-sdr?<br>
&gt; <br>
&gt; $ TEMPLATECONF=3D$(pwd)/meta-ettus/&lt;MACHINELAYER&gt;/conf<br>
&gt; $ source ./oe-core/oe-init-build-env ./build ./bitbake<br>
<br>
My email fu is terrible today ....<br>
<br>
Probably use the templates for the E320 build then add meta-sdr by hand,<br=
>
I'd build dev image first, it doesn't have an x server.<br>
<br>
And once again, I do contract work to make this stuff work, beyond the<br>
cases I can play with personally.<br>
<br>
Philip<br>
<br>
<br>
&gt; <br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt; Sent: Thursday, May 23, 2019 11:43 AM<br>
&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; Oops, replied to copy in my inbox ...<br>
&gt; <br>
&gt; Adding meta-sdr to pick up gnuradio shouldn't have changed any machine=
<br>
&gt; specific config.<br>
&gt; <br>
&gt; Regarding mender, it is great if you have a rack of usrp's to update,<=
br>
&gt; but if you are working with one, I'd skip it and write cards by hand.<=
br>
&gt;&gt;From what I understand this would be much quicker.<br>
&gt; <br>
&gt; I don't have an E320, so pretty much flying blind regarding hardware i=
ssues.<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt; On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt; Philip, before building one of your images, does anything need to =
be done to get ethernet to work?&nbsp; It seems like after using mender to =
setup a new image and rebooting, I cannot bring up sfp0 to save my life.&nb=
sp; It won't work until I reboot again, but I think
 that that drops the mender image reverts to the old one since I didn't com=
mit it.&nbsp;&nbsp; Any steps I am missing?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ________________________________<br>
&gt;&gt; From: Jason Matusiak<br>
&gt;&gt; Sent: Tuesday, May 21, 2019 11:18 AM<br>
&gt;&gt; To: Philip Balister; Ettus Mail List<br>
&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;<br>
&gt;&gt; OK, that seems to be building (who knows if it will succeed), than=
ks.<br>
&gt;&gt;<br>
&gt;&gt; I can't seem to find directions online about how to add in my own =
recipes, or those written up somewhere?&nbsp; Basically, I am trying to fig=
ure out how I can add something like gr-my_blocks to the project (either pa=
rt of bitbake, or as a stand-alone build I
 move over to the device afterwards.<br>
&gt;&gt;<br>
&gt;&gt; ________________________________<br>
&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt; Sent: Tuesday, May 21, 2019 11:05 AM<br>
&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;<br>
&gt;&gt; Edit bblayers.conf in your conf directory. There is also an add la=
yer<br>
&gt;&gt; command, but I'm old fashioned :)<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt;&gt; Interesting, thanks.&nbsp; They are using sumo, so I will try =
to check that branch out and see how it works.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I will need to research how to add it in and build it as I see=
 pulling it down and checking out sumo alone isn't enough.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks for the insights.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ________________________________<br>
&gt;&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt;&gt; Sent: Tuesday, May 21, 2019 10:39 AM<br>
&gt;&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You need the meta-sdr layer. Choosing a branch may be tricky, =
only the<br>
&gt;&gt;&gt; older ones have 3.7 support. My recent work in master is all i=
n support<br>
&gt;&gt;&gt; of transitioning to the unreleased 3.8 gnuradio, which is much=
 better<br>
&gt;&gt;&gt; for embedded builds.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Might also be some pain due to Ettus forking the uhd recipe.<b=
r>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:<b=
r>
&gt;&gt;&gt;&gt; OK, so I am a total newbie when it comes to open-embedded.=
&nbsp; I know that the docker to build doesn't include a gnuradio-image bit=
bake option (only developer-image), so I tried to make one.&nbsp; I created=
 a new gnuradio-image.bb file and added gnuradio to the
 list of things to build.&nbsp; Sadly, I appear to need to do more than tha=
t as it won't build:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbos=
e<br>
&gt;&gt;&gt;&gt; Loading cache: 100% |#####################################=
###########################################################################=
###########################################################################=
###############################| Time: 0:00:00<br>
&gt;&gt;&gt;&gt; Loaded 2964 entries from dependency cache.<br>
&gt;&gt;&gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt;&gt;&gt; NOTE: selecting opkg-utils-native to satisfy virtual/updat=
e-alternatives-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt; NOTE: selecting linux-yocto to satisfy virtual/kernel due =
to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt; NOTE: selecting pseudo-native to satisfy virtual/fakeroot-=
native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt; NOTE: selecting opkg-native to satisfy opkg-native due to =
PREFERRED_PROVIDERS<br>
&gt;&gt;&gt;&gt; NOTE: selecting nativesdk-glibc to satisfy runtime natives=
dk-glibc due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-gli=
bc<br>
&gt;&gt;&gt;&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/=
meta-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS o=
n or otherwise requires it)<br>
&gt;&gt;&gt;&gt; NOTE: Runtime target 'gnuradio' is unbuildable, removing..=
.<br>
&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio']<=
br>
&gt;&gt;&gt;&gt; NOTE: Target 'gnuradio-image' is unbuildable, removing...<=
br>
&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-im=
age', 'gnuradio']<br>
&gt;&gt;&gt;&gt; ERROR: Required build target 'gnuradio-image' has no build=
able providers.<br>
&gt;&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-im=
age', 'gnuradio']<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Summary: There were 2 ERROR messages shown, returning a no=
n-zero exit code.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Anyone know how to do add it (once that works, I'll want t=
o add some of my own OOT packages as well)?<br>
&gt;&gt;&gt;&gt;<br>
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

--_000_BL0PR12MB23402482C4BEEAD6A4A162D9AF010BL0PR12MB2340namp_--


--===============5166258451653491216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5166258451653491216==--

