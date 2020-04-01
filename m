Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2FE19ADC7
	for <lists+usrp-users@lfdr.de>; Wed,  1 Apr 2020 16:26:33 +0200 (CEST)
Received: from [::1] (port=58668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJeK4-0007ax-KY; Wed, 01 Apr 2020 10:26:28 -0400
Received: from mail-mw2nam12olkn2031.outbound.protection.outlook.com
 ([40.92.23.31]:30048 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jJeK0-0007Lc-KW
 for usrp-users@lists.ettus.com; Wed, 01 Apr 2020 10:26:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPalAXc7OvH8guy/z4LI9h9wUKDSMnYwA4viYou0wkRj0TFQBMy1Ab3bad/Q29d8M1DjLbHuqDS5L0EC980fXQxzzNUTeftCAGDwAQIxVpNtZ07bQUaRjBoLgRQCFivuOZkjB0WoWsKyOJ7oxwHtXtlCHwco7v6CJDGSLtXwZ9Yzy/50QD9f4SLk7eS9zBCgP2976uMPexyCUxd8Fjn7X45yR4oynEWairpSaamJ/6sBL/EMPucewNlc7o/ApYLkGOzzKrTRuvn277pTRnjRJBBIODZUKM1OmhbCzfAL8t7e4wPU++bEsu5ZyBXYZlGLTt0sz3qIhuDaE2nWvDIzIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mH3JkufO1tdX7LDygZ6Ea9zwpMtsY1DlEbt5VKznLjE=;
 b=ZYjWj5k7b9X0gZclIvOO6Glip0Ve5a7TsfTe16gneKIgAVqQsU9r8X9kJxWJ3MZqh8PgHuMmLf8P34sDfq5Kcn1gbOOxqMHw+KXuSXy9evp7A96ubawQGXUTxDNBEWzXzWsXgXwKnostWh+HRtIsdfe19QVGctlERTkVMHqbiBmubq/NUMlmWINctYDTFdR0qWBY53L4UDoUu+c6Y2VNejkVwL2N+pQBrKa+9ZTdv+9wCYCX1qWdVd5BiXiK1VAhl8539dToGiXGs9kuGpIMmyWBPZwUE54URChWJlmPhOHqg64dZ07xMwlpFmvo4HKaNCG5G1Hzl27AyJyEsp5ELA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mH3JkufO1tdX7LDygZ6Ea9zwpMtsY1DlEbt5VKznLjE=;
 b=QXa3KG04uxvS9Ng8zWsindn0b94L80IjQMb2B740zCDQJ61AyZfeVB2ikXTYeGxoXpSdNXc1vMo07vmN58NMNjJwXbDk4ICePe9PCQfCiyE+EDV3iRvjgP8ej5cvPP7WUrwbww2mf8jAcJd3M7+sT54IfwFhHMkxLRLqZ5K9IG4xX3JuPbFrizoNQ2mWuYbFE9HA76x9Q2cSmmOHohRdcmWBUAHsewagNK6OLipYgc8haDXnjVSNXr6ELu6ftVVaMO1UWWnCU016gSC0WEULJUzYdqwcnblCsiT3zzTKamcvIqpZpK9hgwo9OvsP5UbuWiRn+/ZFyLi4NrHR8MGYrQ==
Received: from DM6NAM12FT039.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::43) by
 DM6NAM12HT194.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::121)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9; Wed, 1 Apr
 2020 14:25:41 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 (2a01:111:e400:fc64::49) by DM6NAM12FT039.mail.protection.outlook.com
 (2a01:111:e400:fc64::315) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9 via Frontend
 Transport; Wed, 1 Apr 2020 14:25:41 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2878.014; Wed, 1 Apr 2020
 14:25:41 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Setting Up E310 Environment - Build Error
Thread-Index: AQHWCC6QhvnHfv+YzUaRxyHsSq3gyg==
Date: Wed, 1 Apr 2020 14:25:41 +0000
Message-ID: <DM6PR19MB26685023DD12B54B630A352AA4C90@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DDE2F01D321E10E81E679141160BC2F8DC93F18DA388B9C85BF7221C917AF7F1;
 UpperCasedChecksum:4F099ECE7CE93834E6CF46D0395F09846C88E1F2F51FC233C7C0C4E2CE01880B;
 SizeAsReceived:6667; Count:42
x-tmn: [nMF8mEgkw5Y7iqNQXHilLU3LyQoIJcLy]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fa1746d5-7ce3-41a6-6804-08d7d6488eaa
x-ms-traffictypediagnostic: DM6NAM12HT194:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g7XBRflG8p6wUC3IIsiCb6n7TM6NKdfT0sQgOMlXKxq1M4C3AyFqXvMsZpuZA7kkwKxUFsdrHeCosOVayEXVfrM98L1HTUHFgOGZnjIBv7uPy+i6a0kn0OzgaoUe/KHCq0adL19y3/EUYh0naR908xbqpXqdsVhYHmumRHgRNvnlf+0jAVSXnU5IB6I+/HZGA1tav3Xijc1D5zL+luE/c8QCt/Hm1+nUt0PUTT8yVFU=
x-ms-exchange-antispam-messagedata: 2MtXp0ZHysyMsS0KOxvw6bP79by1CePw+E+kLiDlmKEDGqzPHvi05xpdL/REFTYwEPOkzJRC+HBurdlmzfPau+yjBO+nYa5x5twFWnl5ihHkLHW/ujQfFpovZAJeJlff5eFIzKNxA1eGZnrFL7wOFA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1746d5-7ce3-41a6-6804-08d7d6488eaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 14:25:41.4706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT194
Subject: [USRP-users] Setting Up E310 Environment - Build Error
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
Content-Type: multipart/mixed; boundary="===============0022166061187320599=="
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

--===============0022166061187320599==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB26685023DD12B54B630A352AA4C90DM6PR19MB2668namp_"

--_000_DM6PR19MB26685023DD12B54B630A352AA4C90DM6PR19MB2668namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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


--_000_DM6PR19MB26685023DD12B54B630A352AA4C90DM6PR19MB2668namp_
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
I am trying to combine the install using a custom prefix (<a href=3D"https:=
//kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix=
" id=3D"LPlnk486457">https://kb.ettus.com/Building_and_Installing_UHD_and_G=
NU_Radio_to_a_Custom_Prefix</a>) and
 while following S/W Dev on E3xx (<a href=3D"https://kb.ettus.com/Software_=
Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_fr=
om_Source" id=3D"LPlnk662888">https://kb.ettus.com/Software_Development_on_=
the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>).=
&nbsp;
 I'm using Ubuntu 18.04.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am getting the following error:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The commands I used to get to the above point are (tried to copy accurately=
 from my history):</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git clone --recursive <a href=3D"https://github.com/EttusResearch/uhd" id=
=3D"LPNoLP341576">
https://github.com/EttusResearch/uhd</a></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd uhd<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git checkout v3.15.0.0</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ mkdir host/build</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd host/build</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DENABLE_E300=3D=
ON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ../<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ make -j6</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ make install</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd ~/sdr/e310/rfnoc/src/<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git clone --recursive <a href=3D"https://github.com/gnuradio/gnuradio" id=
=3D"LPNoLP833507">
https://github.com/gnuradio/gnuradio</a><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd gnuradio</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git checkout maint-3.7<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git submodule update --init --recursive<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ mkdir build</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd build</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cmake -DCMAKE_INSTALL_PREFIX=3D~/sdr/e310/rfnoc/installs -DUHD_DIR=3D~/sd=
r/e310/rfnoc/installs/lib/cmake/uhd/ -DUHD_INCLUDE_DIRS=3D~/sdr/e310/rfnoc/=
installs/include/ -DUHD_LIBRARIES=3D~/sdr/e310/rfnoc/installs/lib/libuhd.so=
 ../</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ make -j4<br>
</div>
<div></div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I did the same thing using a git checkout of uhd v3.14.1.1 first, which was=
 how it was defined in the second link above, and got the same results.</di=
v>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have seen where this was a problem in the past, and some people updated t=
he file that had showed the problem.&nbsp; Others redid their build of UHD =
with a newer version.&nbsp; Those issues were about two years old, and it s=
eems that it still shows up in some situations.&nbsp;
 Is it due to my trying to combine two Application Notes?&nbsp; Is the reco=
mendation to update
<b>uhd_swigPYTHON_wrap.cxx</b> still one solution?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_DM6PR19MB26685023DD12B54B630A352AA4C90DM6PR19MB2668namp_--


--===============0022166061187320599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0022166061187320599==--

