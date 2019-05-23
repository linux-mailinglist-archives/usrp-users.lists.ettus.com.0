Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7878D281E4
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 17:55:54 +0200 (CEST)
Received: from [::1] (port=35872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTq4P-0000cB-9R; Thu, 23 May 2019 11:55:53 -0400
Received: from otransport-27.outbound.emailsrv.net ([35.169.41.199]:50277)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hTq3r-0000Tk-AN
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 11:55:49 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-27.outbound.emailsrv.net (Postfix) with ESMTPS id D6750618B9;
 Thu, 23 May 2019 15:54:38 +0000 (UTC)
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2053.outbound.protection.outlook.com [104.47.50.53])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 39CEC1E0002;
 Thu, 23 May 2019 15:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fE2+CRt6X23SLpwiGMAwJ/t2jouZuaALWc+WfMfL3d0=;
 b=k/A26ruaaSY2Hp93VzpB56lugXDXVavnsSfqWFFsV9/2HAQp4eNQSGYizDW/mfZUsqgpdM1EYH70L+0JVqM0I6+EOloTx78VUy7S+wDtHUngZEpyHVXtu527r3m8YA79LtN1W5whuhEvgwjqB55vR+PUVLl7F5oQHaQvFkNS+do=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2420.namprd12.prod.outlook.com (52.132.11.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 15:54:34 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 15:54:34 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GR in the E320
Thread-Index: AQHVD+EZLh6VwQMpLkKtyGgfIqFMAqZ1piwAgAACq2WAAASPAIAAA1wkgAMjzs6AAAg9gIAAAXT0
Date: Thu, 23 May 2019 15:54:34 +0000
Message-ID: <BL0PR12MB2340BA94FF8739B061AB2B89AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
In-Reply-To: <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84c34ac9-8308-4f8c-0d38-08d6df96f399
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2420; 
x-ms-traffictypediagnostic: BL0PR12MB2420:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB242057E1EE5399FAE0073061AF010@BL0PR12MB2420.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(376002)(366004)(346002)(39830400003)(199004)(51914003)(189003)(51444003)(6116002)(3846002)(6506007)(53546011)(229853002)(186003)(99286004)(26005)(11346002)(19627405001)(446003)(76176011)(476003)(7696005)(102836004)(7736002)(33656002)(74316002)(66066001)(316002)(256004)(14444005)(81156014)(8936002)(81166006)(5660300002)(8676002)(486006)(52536014)(53936002)(966005)(14454004)(68736007)(66946007)(66476007)(64756008)(66556008)(71200400001)(71190400001)(6246003)(73956011)(66446008)(76116006)(86362001)(55016002)(236005)(6306002)(9686003)(105004)(54896002)(2906002)(110136005)(6436002)(606006)(508600001)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2420;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FCKmS22nH1PPumGCttY3ecVJ5WygWGIgjc8EX6tsUlfydm0yq2zVxyOV5paPrlvN7AdLJfKcyBYFjdC1Sb+xLxvDWSte4yJVnGJxWYFFzqbwpRTNYAprU3ElCDQosEHTchaTcIzvT+lu9ky6qa8dmAGtqPG+adyc8B0di7LLJgabmxMQpULezGhifi8XoQb26ApVypKO5gIZdRimnwkH2swqdC3QvS3u77TRtx5cGHFYmLsg265Ay6wbR+rOL1jKZiUxk2qIT1jGwlGEGELrmVu2tGD6jxo2oX3SoA8hLQZ+niMc76suB+ZxDtS2EyTss7fnDwh4wptHmgm9oenFXW/NOaH1zd3WFTCihu1kkBhqyaX46p53xoVJkR3dnAV8Y2nsJbD3Eq11SaLGN+K5qR6BNBK3NvzA/0e32+EJuWg=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c34ac9-8308-4f8c-0d38-08d6df96f399
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 15:54:34.2987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2420
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam05lp2053.outbound.protection.outlook.com|104.47.50.53|NAM05-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.50.53, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32099-c
X-Mailprotector-ID: c0281bcd-028a-4b46-8d26-12fd931c1bff
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
Content-Type: multipart/mixed; boundary="===============8140574122627145882=="
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

--===============8140574122627145882==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340BA94FF8739B061AB2B89AF010BL0PR12MB2340namp_"

--_000_BL0PR12MB2340BA94FF8739B061AB2B89AF010BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, thanks Philip,

This is all a little new/different for me.

So once I've added in meta-sdr, all I should need to do is run gnuradio-dem=
o-image?

also, would I need to modify the following environment variables since I am=
 building something out of meta-sdr?

$ TEMPLATECONF=3D$(pwd)/meta-ettus/<MACHINELAYER>/conf
$ source ./oe-core/oe-init-build-env ./build ./bitbake


________________________________
From: Philip Balister <philip@balister.org>
Sent: Thursday, May 23, 2019 11:43 AM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] GR in the E320

Oops, replied to copy in my inbox ...

Adding meta-sdr to pick up gnuradio shouldn't have changed any machine
specific config.

Regarding mender, it is great if you have a rack of usrp's to update,
but if you are working with one, I'd skip it and write cards by hand.
From what I understand this would be much quicker.

I don't have an E320, so pretty much flying blind regarding hardware issues=
.

Philip

On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:
> Philip, before building one of your images, does anything need to be done=
 to get ethernet to work?  It seems like after using mender to setup a new =
image and rebooting, I cannot bring up sfp0 to save my life.  It won't work=
 until I reboot again, but I think that that drops the mender image reverts=
 to the old one since I didn't commit it.   Any steps I am missing?
>
>
> ________________________________
> From: Jason Matusiak
> Sent: Tuesday, May 21, 2019 11:18 AM
> To: Philip Balister; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> OK, that seems to be building (who knows if it will succeed), thanks.
>
> I can't seem to find directions online about how to add in my own recipes=
, or those written up somewhere?  Basically, I am trying to figure out how =
I can add something like gr-my_blocks to the project (either part of bitbak=
e, or as a stand-alone build I move over to the device afterwards.
>
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Tuesday, May 21, 2019 11:05 AM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
>
> Edit bblayers.conf in your conf directory. There is also an add layer
> command, but I'm old fashioned :)
>
> Philip
>
> On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
>> Interesting, thanks.  They are using sumo, so I will try to check that b=
ranch out and see how it works.
>>
>> I will need to research how to add it in and build it as I see pulling i=
t down and checking out sumo alone isn't enough.
>>
>> Thanks for the insights.
>>
>> ________________________________
>> From: Philip Balister <philip@balister.org>
>> Sent: Tuesday, May 21, 2019 10:39 AM
>> To: Jason Matusiak; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> You need the meta-sdr layer. Choosing a branch may be tricky, only the
>> older ones have 3.7 support. My recent work in master is all in support
>> of transitioning to the unreleased 3.8 gnuradio, which is much better
>> for embedded builds.
>>
>> Might also be some pain due to Ettus forking the uhd recipe.
>>
>> Philip
>>
>> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>>> OK, so I am a total newbie when it comes to open-embedded.  I know that=
 the docker to build doesn't include a gnuradio-image bitbake option (only =
developer-image), so I tried to make one.  I created a new gnuradio-image.b=
b file and added gnuradio to the list of things to build.  Sadly, I appear =
to need to do more than that as it won't build:
>>>
>>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>>> Loading cache: 100% |##################################################=
###########################################################################=
###########################################################################=
##################| Time: 0:00:00
>>> Loaded 2964 entries from dependency cache.
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternative=
s-native due to PREFERRED_PROVIDERS
>>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_=
PROVIDERS
>>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to=
 PREFERRED_PROVIDERS
>>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PRO=
VIDERS
>>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due =
to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc
>>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/me=
ta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwis=
e requires it)
>>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>>> Missing or unbuildable dependency chain was: ['gnuradio']
>>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnurad=
io']
>>> ERROR: Required build target 'gnuradio-image' has no buildable provider=
s.
>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnurad=
io']
>>>
>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.
>>>
>>> Anyone know how to do add it (once that works, I'll want to add some of=
 my own OOT packages as well)?
>>>
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

--_000_BL0PR12MB2340BA94FF8739B061AB2B89AF010BL0PR12MB2340namp_
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
OK, thanks&nbsp;Philip,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This is all a little new/different for me.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So once I've added in meta-sdr, all I should need to do is run gnuradio-dem=
o-image?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
also, would I need to modify the following environment variables since I am=
 building something out of meta-sdr?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"font-family: monospace, monospace; background-color: rgb(248,=
 249, 250); border: 1px solid rgb(234, 236, 240); padding: 1em; line-height=
: 1.3em; font-size: 14px">$ TEMPLATECONF=3D$(pwd)/meta-ettus/&lt;MACHINELAY=
ER&gt;/conf=0A=
$ source ./oe-core/oe-init-build-env ./build ./bitbake</pre>
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
<b>Sent:</b> Thursday, May 23, 2019 11:43 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] GR in the E320</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Oops, replied to copy in my inbox ...<br>
<br>
Adding meta-sdr to pick up gnuradio shouldn't have changed any machine<br>
specific config.<br>
<br>
Regarding mender, it is great if you have a rack of usrp's to update,<br>
but if you are working with one, I'd skip it and write cards by hand.<br>
From what I understand this would be much quicker.<br>
<br>
I don't have an E320, so pretty much flying blind regarding hardware issues=
.<br>
<br>
Philip<br>
<br>
On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; Philip, before building one of your images, does anything need to be d=
one to get ethernet to work?&nbsp; It seems like after using mender to setu=
p a new image and rebooting, I cannot bring up sfp0 to save my life.&nbsp; =
It won't work until I reboot again, but I think
 that that drops the mender image reverts to the old one since I didn't com=
mit it.&nbsp;&nbsp; Any steps I am missing?<br>
&gt; <br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Jason Matusiak<br>
&gt; Sent: Tuesday, May 21, 2019 11:18 AM<br>
&gt; To: Philip Balister; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; OK, that seems to be building (who knows if it will succeed), thanks.<=
br>
&gt; <br>
&gt; I can't seem to find directions online about how to add in my own reci=
pes, or those written up somewhere?&nbsp; Basically, I am trying to figure =
out how I can add something like gr-my_blocks to the project (either part o=
f bitbake, or as a stand-alone build I move
 over to the device afterwards.<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt; Sent: Tuesday, May 21, 2019 11:05 AM<br>
&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt; <br>
&gt; Edit bblayers.conf in your conf directory. There is also an add layer<=
br>
&gt; command, but I'm old fashioned :)<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt; On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt; Interesting, thanks.&nbsp; They are using sumo, so I will try to c=
heck that branch out and see how it works.<br>
&gt;&gt;<br>
&gt;&gt; I will need to research how to add it in and build it as I see pul=
ling it down and checking out sumo alone isn't enough.<br>
&gt;&gt;<br>
&gt;&gt; Thanks for the insights.<br>
&gt;&gt;<br>
&gt;&gt; ________________________________<br>
&gt;&gt; From: Philip Balister &lt;philip@balister.org&gt;<br>
&gt;&gt; Sent: Tuesday, May 21, 2019 10:39 AM<br>
&gt;&gt; To: Jason Matusiak; Ettus Mail List<br>
&gt;&gt; Subject: Re: [USRP-users] GR in the E320<br>
&gt;&gt;<br>
&gt;&gt; You need the meta-sdr layer. Choosing a branch may be tricky, only=
 the<br>
&gt;&gt; older ones have 3.7 support. My recent work in master is all in su=
pport<br>
&gt;&gt; of transitioning to the unreleased 3.8 gnuradio, which is much bet=
ter<br>
&gt;&gt; for embedded builds.<br>
&gt;&gt;<br>
&gt;&gt; Might also be some pain due to Ettus forking the uhd recipe.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:<br>
&gt;&gt;&gt; OK, so I am a total newbie when it comes to open-embedded.&nbs=
p; I know that the docker to build doesn't include a gnuradio-image bitbake=
 option (only developer-image), so I tried to make one.&nbsp; I created a n=
ew gnuradio-image.bb file and added gnuradio to the
 list of things to build.&nbsp; Sadly, I appear to need to do more than tha=
t as it won't build:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose<br=
>
&gt;&gt;&gt; Loading cache: 100% |#########################################=
###########################################################################=
###########################################################################=
###########################| Time: 0:00:00<br>
&gt;&gt;&gt; Loaded 2964 entries from dependency cache.<br>
&gt;&gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt;&gt; NOTE: selecting opkg-utils-native to satisfy virtual/update-al=
ternatives-native due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt; NOTE: selecting linux-yocto to satisfy virtual/kernel due to P=
REFERRED_PROVIDERS<br>
&gt;&gt;&gt; NOTE: selecting pseudo-native to satisfy virtual/fakeroot-nati=
ve due to PREFERRED_PROVIDERS<br>
&gt;&gt;&gt; NOTE: selecting opkg-native to satisfy opkg-native due to PREF=
ERRED_PROVIDERS<br>
&gt;&gt;&gt; NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-g=
libc due to PREFERRED_PROVIDER_virtual/nativesdk-libc =3D nativesdk-glibc<b=
r>
&gt;&gt;&gt; ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta=
-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or=
 otherwise requires it)<br>
&gt;&gt;&gt; NOTE: Runtime target 'gnuradio' is unbuildable, removing...<br=
>
&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio']<br>
&gt;&gt;&gt; NOTE: Target 'gnuradio-image' is unbuildable, removing...<br>
&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-image'=
, 'gnuradio']<br>
&gt;&gt;&gt; ERROR: Required build target 'gnuradio-image' has no buildable=
 providers.<br>
&gt;&gt;&gt; Missing or unbuildable dependency chain was: ['gnuradio-image'=
, 'gnuradio']<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Summary: There were 2 ERROR messages shown, returning a non-ze=
ro exit code.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Anyone know how to do add it (once that works, I'll want to ad=
d some of my own OOT packages as well)?<br>
&gt;&gt;&gt;<br>
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

--_000_BL0PR12MB2340BA94FF8739B061AB2B89AF010BL0PR12MB2340namp_--


--===============8140574122627145882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8140574122627145882==--

