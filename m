Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A51D419B4EA
	for <lists+usrp-users@lfdr.de>; Wed,  1 Apr 2020 19:52:43 +0200 (CEST)
Received: from [::1] (port=58248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJhXb-0000j0-6j; Wed, 01 Apr 2020 13:52:39 -0400
Received: from mail-bn8nam11olkn2024.outbound.protection.outlook.com
 ([40.92.20.24]:31666 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jJhXX-0000eU-J4
 for usrp-users@lists.ettus.com; Wed, 01 Apr 2020 13:52:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MSWtn/dKrrNIeWej057OdCqMS+EUapX6M5jVj5gC08n/ncGTYsNFfHiU263UMAwbofvcSfw2H4emz4TBEboVa8BmhMKwWI9Fbm4GwmTKg3Ppp9jf3gTRLWK9Ofrm2VGetbFu1ikc3ntVklVAz046sIDOVapkWstNe9z2tbm3LYuZLGrMdQlLvyC8BPV4I14eIZ7Pq0SVypRcos9SBsFG2FTUnXigXH9Alt4q4gt8wBzDDIHd6UxiBxJKCAXF5gPvtea0FP8JQD5QYtD9Jnvz7NMBSd8n+F/aHNWM+Upo5MuycOel526CCJ26zzzuHW4Kl7QN4+FsVzWuxtzkEpL3Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XyFgFpXEkNxb71uRgJ/lrUXkat6HwOkOpBqLi9tUy4=;
 b=bxf6f9Hr+A9lZEZvspmdHwQV6JT60UdVJGRRpIy0qYXt5Fh/Y4IiPZI8cHOhbBWgIfETDk2zzHrMmhnZr1/gOgRRZkuArReWI8JaozKsQWVWFEt7xVVm/Chwttf+kufdpiWR1tif5ucgCrq57f2Mdu6+s3lZd1woCzqLYPl0NrC1B1lsGgG6FNdbuMKGmOSK0bbkX4fHf/5a454cfqI5AMSJWw/IyxiTfGUHOTv9+o1SbeNOj3+JWifQYGZUKqn/jXn1iEkOYYZ1XBvvboiol/CtlQ6qB2fUNfsD9q8v0zjxsE+M3xynhYSIrU96QIEIKa6Yk8XRsuqyazs123j7qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XyFgFpXEkNxb71uRgJ/lrUXkat6HwOkOpBqLi9tUy4=;
 b=OpDTOLBI6bVdQHqV7G6Ow/vIm5AJH78W/v/SbaGT9SmOxNlbBeQVXxXfbTN6eBEA7DkMxBfkLAX12/4eYbOlqHYMVCBwSx+aq3/RLlLQrDdZBNtvTG71lPcWRD//xp9TeV8rc1oXvOKgPwf3KLPk0YBm/zrMWYbFq3w6J+q01TrCROUo/E6lv5p+wdzZgVMIqjp7PPT8TI6cWVQ18NG+Z17Oy9V0vcA24MGRTPMAq2nqifiTPTsZjmxzhw6g7gtKc3tEetavwk6WlZdF2SPo9TkZmg/ET5VUCjkQjfUpYeNMP2aXIy8enE388/Dnn6SxcmkDrDViiDu8eep+GYn9gQ==
Received: from CO1NAM11FT043.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::4d) by
 CO1NAM11HT134.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::64)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Wed, 1 Apr
 2020 17:51:53 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 (2a01:111:e400:3861::4d) by CO1NAM11FT043.mail.protection.outlook.com
 (2a01:111:e400:3861::193) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Wed, 1 Apr 2020 17:51:53 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2878.014; Wed, 1 Apr 2020
 17:51:53 +0000
To: Michael Dickens <michael.dickens@ettus.com>
Thread-Topic: [USRP-users] Setting Up E310 Environment - Build Error
Thread-Index: AQHWCC6QhvnHfv+YzUaRxyHsSq3gyqhkWT4AgAAxXlg=
Date: Wed, 1 Apr 2020 17:51:53 +0000
Message-ID: <DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
References: <DM6PR19MB26685023DD12B54B630A352AA4C90@DM6PR19MB2668.namprd19.prod.outlook.com>,
 <CAGNhwTNHHFEg9qb3W2Ax0-E+zMYB+edB5TAuP5UX9kAH7Wr_tQ@mail.gmail.com>
In-Reply-To: <CAGNhwTNHHFEg9qb3W2Ax0-E+zMYB+edB5TAuP5UX9kAH7Wr_tQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:980A134597710DF1567D60A9001B4D2C9F03A696A44EFF24A251EB4C5DC16180;
 UpperCasedChecksum:8B9F6AFFD2F92FA36C981574D832A3222B34AE059E9808A099D32261A88863D9;
 SizeAsReceived:7056; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [KoAus22s/GuWlxP0nD1YSotAPx7AOI5v]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 25c12dff-6474-433b-5a1c-08d7d6655d09
x-ms-traffictypediagnostic: CO1NAM11HT134:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M59KCafaXOio60fSUxsTbqUml1Lr9xaluTa79nJooh2PkES6mtRh+AXYYzuY0DIS3OD54aWcwdcQtOhz/1/sdCZwxOjdMiOSoAAkTWMlH5OhJ1INMtt4TL3ujwiAoLVI2j3HbHi2Yylkp/PVh6hgM3XeU/norQvUw9I7BkerWx9P5FmRLtRR7c5jo4nU8ypW9kaqEu3TJZ7Y9h4Kw382JJ5+KDByGIil+NwgVatM+jk=
x-ms-exchange-antispam-messagedata: w7EBkMLK8x8o8+exQSsGy/MGJT5zLoWWcUMntDWfEqQTQ9s5RNxLMJwcLN6vboZzxE8eZDFBfCQyWBcHfYY+HxTkf3zxGo4JahVixvEgsFqjloKzL8o50yCgHSI/JQ2i//gq5hIeIYRcNRkKgxqndQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c12dff-6474-433b-5a1c-08d7d6655d09
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 17:51:53.6549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT134
Subject: Re: [USRP-users] Setting Up E310 Environment - Build Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5936367341670911608=="
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

--===============5936367341670911608==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90DM6PR19MB2668namp_"

--_000_DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90DM6PR19MB2668namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Michael,

You hit a bullseye!  It took a bit to finally find the culprits while tryin=
g to back out packages that were a dependency for something else.  I finall=
y did the following to find what I needed to get rid of:


$ dpkg -l | grep -i uhd
ii  libuhd-dev:amd64         3.10.3.0-2  amd64  universal hardware driver f=
or Ettus Research products - headers
ii  libuhd003.010.003:amd64  3.10.3.0-2  amd64  universal hardware driver f=
or Ettus Research products - library
ii  uhd-host                 3.10.3.0-2  amd64  universal hardware driver f=
or Ettus Research products - host apps

I removed/purged them and rebuilt from the start, and everything built with=
out the error.

Thanks again,
Jeff

________________________________
From: Michael Dickens <michael.dickens@ettus.com>
Sent: Wednesday, April 1, 2020 9:49 AM
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Setting Up E310 Environment - Build Error

Hi Jeff - I'm pretty sure the error means you have a prior version of GNU R=
adio installed into a standard system search prefix (e.g., /usr/local ). If=
 you disable / remove / deactivate that install, then redo-the whole GR bui=
ld from the start, the error should be fixed. Hopefully! - MLD

On Wed, Apr 1, 2020 at 10:26 AM Jeff S via USRP-users <usrp-users@lists.ett=
us.com<mailto:usrp-users@lists.ettus.com>> wrote:
I am trying to combine the install using a custom prefix (https://kb.ettus.=
com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix) and while=
 following S/W Dev on E3xx (https://kb.ettus.com/Software_Development_on_th=
e_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source).  I'm =
using Ubuntu 18.04.

I am getting the following error:


[ 86%] Building CXX object gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYT=
HON_wrap.cxx.o
/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_wrap=
.cxx: In function =91PyObject* _wrap_time_spec_t_get_system_time(PyObject*,=
 PyObject*)=92:
/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_wrap=
.cxx:20234:34: error: =91get_system_time=92 is not a member of =91uhd::time=
_spec_t=92
       result =3D uhd::time_spec_t::get_system_time();
                                  ^~~~~~~~~~~~~~~
gr-uhd/swig/CMakeFiles/_uhd_swig.dir/build.make:70: recipe for target 'gr-u=
hd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o' failed
make[2]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.=
o] Error 1
CMakeFiles/Makefile2:15011: recipe for target 'gr-uhd/swig/CMakeFiles/_uhd_=
swig.dir/all' failed
make[1]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/all] Error 2
Makefile:162: recipe for target 'all' failed
make: *** [all] Error 2


The commands I used to get to the above point are (tried to copy accurately=
 from my history):

$ git clone --recursive https://github.com/EttusResearch/uhd
$ cd uhd
$ git checkout v3.15.0.0
$ git submodule update --init --recursive
$ mkdir host/build
$ cd host/build
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DENABLE_E300=3D=
ON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ../
$ make -j6
$ make install
$ cd ~/sdr/e310/rfnoc/src/
$ git clone --recursive https://github.com/gnuradio/gnuradio
$ cd gnuradio
$ git checkout maint-3.7
$ git submodule update --init --recursive
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DUHD_DIR=3D~/sd=
r/e310/rfnoc/installs/lib/cmake/uhd/ -DUHD_INCLUDE_DIRS=3D~/sdr/e310/rfnoc/=
installs/include/ -DUHD_LIBRARIES=3D~/sdr/e310/rfnoc/installs/lib/libuhd.so=
 ../
$ make -j4

I did the same thing using a git checkout of uhd v3.14.1.1 first, which was=
 how it was defined in the second link above, and got the same results.

I have seen where this was a problem in the past, and some people updated t=
he file that had showed the problem.  Others redid their build of UHD with =
a newer version.  Those issues were about two years old, and it seems that =
it still shows up in some situations.  Is it due to my trying to combine tw=
o Application Notes?  Is the recomendation to update uhd_swigPYTHON_wrap.cx=
x still one solution?

Regards,
Jeff

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com<mailto:support@ettus.com>
Web: https://ettus.com/

--_000_DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90DM6PR19MB2668namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Michael,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
You hit a bullseye!&nbsp; It took a bit to finally find the culprits while =
trying to back out packages that were a dependency for something else.&nbsp=
; I finally did the following to find what I needed to get rid of:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<pre>$ dpkg -l | grep -i uhd=0A=
ii  lib<font color=3D"#EF2929"><b>uhd</b></font>-dev:amd64         3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - headers=
=0A=
ii  lib<font color=3D"#EF2929"><b>uhd</b></font>003.010.003:amd64  3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - library=
=0A=
ii  <font color=3D"#EF2929"><b>uhd</b></font>-host                 3.10.3.0=
-2  amd64  universal hardware driver for Ettus Research products - host app=
s</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I removed/purged them and rebuilt from the start, and everything built with=
out the error.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks again,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Michael Dickens &lt=
;michael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, April 1, 2020 9:49 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Setting Up E310 Environment - Build Error<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff - I'm pretty sure the error means you have a prior=
 version of GNU Radio installed into a standard system search prefix (e.g.,=
 /usr/local ). If you disable / remove / deactivate that install, then redo=
-the whole GR build from the start,
 the error should be fixed. Hopefully! - MLD</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Apr 1, 2020 at 10:26 AM Jef=
f S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I am trying to combine the install using a custom prefix (<a href=3D"https:=
//kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix=
" id=3D"x_gmail-m_-3485459643869862369LPlnk486457" target=3D"_blank">https:=
//kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix=
</a>)
 and while following S/W Dev on E3xx (<a href=3D"https://kb.ettus.com/Softw=
are_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettu=
s_from_Source" id=3D"x_gmail-m_-3485459643869862369LPlnk662888" target=3D"_=
blank">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buildin=
g_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>).&nbsp;
 I'm using Ubuntu 18.04.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I am getting the following error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<pre>[ 86%] <font color=3D"#4E9A06">Building CXX object gr-uhd/swig/CMakeFi=
les/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o</font>=0A=
<b>/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_w=
rap.cxx:</b> In function =91<b>PyObject* _wrap_time_spec_t_get_system_time(=
PyObject*, PyObject*)</b>=92:=0A=
<b>/home/sdr/sdr/e310/rfnoc/src/gnuradio/build/gr-uhd/swig/uhd_swigPYTHON_w=
rap.cxx:20234:34:</b> <font color=3D"#EF2929"><b>error: </b></font>=91<b>ge=
t_system_time</b>=92 is not a member of =91<b>uhd::time_spec_t</b>=92=0A=
       result =3D uhd::time_spec_t::<font color=3D"#EF2929"><b>get_system_t=
ime</b></font>();=0A=
                                  <font color=3D"#EF2929"><b>^~~~~~~~~~~~~~=
~</b></font>=0A=
gr-uhd/swig/CMakeFiles/_uhd_swig.dir/build.make:70: recipe for target 'gr-u=
hd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o' failed=0A=
make[2]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.=
o] Error 1=0A=
CMakeFiles/Makefile2:15011: recipe for target 'gr-uhd/swig/CMakeFiles/_uhd_=
swig.dir/all' failed=0A=
make[1]: *** [gr-uhd/swig/CMakeFiles/_uhd_swig.dir/all] Error 2=0A=
Makefile:162: recipe for target 'all' failed=0A=
make: *** [all] Error 2=0A=
</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
The commands I used to get to the above point are (tried to copy accurately=
 from my history):</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git clone --recursive <a href=3D"https://github.com/EttusResearch/uhd" id=
=3D"x_gmail-m_-3485459643869862369LPNoLP341576" target=3D"_blank">
https://github.com/EttusResearch/uhd</a></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd uhd<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git checkout v3.15.0.0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ mkdir host/build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd host/build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DENABLE_E300=3D=
ON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ../<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ make -j6</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ make install</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/src/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git clone --recursive <a href=3D"https://github.com/gnuradio/gnuradio" id=
=3D"x_gmail-m_-3485459643869862369LPNoLP833507" target=3D"_blank">
https://github.com/gnuradio/gnuradio</a><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd gnuradio</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git checkout maint-3.7<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ mkdir build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd build</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DUHD_DIR=3D~/sd=
r/e310/rfnoc/installs/lib/cmake/uhd/ -DUHD_INCLUDE_DIRS=3D~/sdr/e310/rfnoc/=
installs/include/ -DUHD_LIBRARIES=3D~/sdr/e310/rfnoc/installs/lib/libuhd.so=
 ../</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ make -j4<br>
</div>
<div></div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I did the same thing using a git checkout of uhd v3.14.1.1 first, which was=
 how it was defined in the second link above, and got the same results.</di=
v>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have seen where this was a problem in the past, and some people updated t=
he file that had showed the problem.&nbsp; Others redid their build of UHD =
with a newer version.&nbsp; Those issues were about two years old, and it s=
eems that it still shows up in some situations.&nbsp;
 Is it due to my trying to combine two Application Notes?&nbsp; Is the reco=
mendation to update
<b>uhd_swigPYTHON_wrap.cxx</b> still one solution?<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
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
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
></div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB2668F52C5E7A801E5EB94DA0A4C90DM6PR19MB2668namp_--


--===============5936367341670911608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5936367341670911608==--

