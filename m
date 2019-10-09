Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A0D0DE3
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2019 13:44:03 +0200 (CEST)
Received: from [::1] (port=42526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIANn-0004Vu-6C; Wed, 09 Oct 2019 07:43:55 -0400
Received: from mail-oln040092009039.outbound.protection.outlook.com
 ([40.92.9.39]:56224 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iIANj-0004Or-4N
 for usrp-users@lists.ettus.com; Wed, 09 Oct 2019 07:43:51 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eZl/INGpn+0nya4HZniBhEN5o+zwICFJx228ku778ZYqKzQvi8898h28OD0UR27cgu4T7Fs4+eVzyoljuPka7pKWQ2VSFQpJ9cbDJShFXrJWn4a1zU1ur3rL5AOqy8B5vAHGHjVvI3DchQUeddfA1n6npIKlTSDLIS5aV0B3Y3lkIhMIWpgMZ0h3SA1yGeO3RWC1ncQTwsrfCKpnrZ8KVm4FFGRX3mOvWGpNAuZouAMIaf1h/OaP/vxfiTcqHQjtZQjP9s10Jq9x7QJnuPijMC6wDezgp7F6hoXHYOeOUEcI0a5Xfw16Ignkl9KronWbBkG6gnbRyoCiO9nuhM6IZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uc4IhI2LkV8B0qYMckUBA7pJVE0Ru0mhor9t+xt/M0Q=;
 b=ButU2v50HxuwwNxZN8zlrwk256dB9xXZHobZPcPF7dPKjKq38MxY6aUalA9rRv82F+ee4SmGwbONjmYegQRaD/p68H8vWpE+XAxoO+1kd/U9DpR7BnLq/Wmi7g1WkrDSgjXTPhAxFocUDuC7VvpfJnZhqgnIuZt2GgyTWiQDAVHXBIfGu8kjt8gDiY/KW7O2CcAz2HCR2jAjP9q3iWy4aYJ8sBvVAXGDBq8aza2YHSnN0zCFm3uA2yS4+HhCqUPWSyBOVNorq9iYRNxWs6LYRVst+Oxm045FcTcSXffhg4IZU/L4oVyuaxEPmSWtbcpSEWbdqi9/KCthVqQ3YrJimg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uc4IhI2LkV8B0qYMckUBA7pJVE0Ru0mhor9t+xt/M0Q=;
 b=hTHY/dq3uf0btXR6oRtIJsJiJIIPWtX8VL33BX1sU1ol6B87SkJ4R/EgXjq/jAdDDPyZUvWKa613ZoX/FSwrKPADKSRVmK0gr7EFnQ0OlUj6cReO80NrBOsVUFFddOwvmjpWkvzxBzP5wznV+DDIKOyd7+b4n5DIXymMJN6aj+0a+5q2yse/EtpaJI16yg4dYyqw5rrRVd3Br7VT1d4DWz5/ZC8476Oq1O0kLPZvdYYUXG9i6RMMetNic2eVAwf6cEpAtHwDRfPRi6qocwN39yWNk79hibFCESoOd+NOMmNTKLru5z8P0f2FD3kFhPDyyN5yF2ZNIwK0GoL7PccMyw==
Received: from CO1NAM04FT016.eop-NAM04.prod.protection.outlook.com
 (10.152.90.51) by CO1NAM04HT192.eop-NAM04.prod.protection.outlook.com
 (10.152.90.227) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.20; Wed, 9 Oct
 2019 11:43:09 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com (10.152.90.56) by
 CO1NAM04FT016.mail.protection.outlook.com (10.152.90.168) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 11:43:09 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::99aa:bb07:1c06:655d]) by CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::99aa:bb07:1c06:655d%4]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 11:43:09 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] UHD / RFNoC Versions and Flowgraph Error with X310
Thread-Index: AQHVfj+Gp3/edMP8FkCHoQeZ6iJQYqdRh0yAgACmbb0=
Date: Wed, 9 Oct 2019 11:43:09 +0000
Message-ID: <CY4PR19MB098497812F4D5F55892CCC22A4950@CY4PR19MB0984.namprd19.prod.outlook.com>
References: <CY4PR19MB098458DC00A7673A6D584A11A4950@CY4PR19MB0984.namprd19.prod.outlook.com>,
 <CAL7q81t4Be-7rhg-B2zpWm=m5M3oiZPvfx-U56rkHnsR6eF9aw@mail.gmail.com>
In-Reply-To: <CAL7q81t4Be-7rhg-B2zpWm=m5M3oiZPvfx-U56rkHnsR6eF9aw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8ACCE6EBF00E39A8903635A9C15F74394FB3564746553BCF53A7A2835C4F8C5A;
 UpperCasedChecksum:532955D5EBFEE6AE6FD1B0EE8FD28B4FFA52F9F1B2A0C6E55308F74DC3B301CB;
 SizeAsReceived:7047; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fY9EAng5k85Or9F6FNEEwFi0QTwkK7zx]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: CO1NAM04HT192:
x-ms-exchange-purlcount: 2
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GZ8l+nGtt7buBNpml0HMpZ1Ygn3e0RYXECO0sUIHYgw+wAUC1SvG5F4gxxeQzCZFOZXf30gFUi4i97nQJqO79yBFwToYD8G5msitpepSK8OAyWE/hCAoUa+DElUbOJj3/2xK/x9O5LrBlu37WKz72QZWnsXXeqOHAjRBsNP8rFsBS7kLxtftd2xTq9y05KSO/S3W2aiqnWVNgleHRJP6xi4AOwUfbN/egbjJEuYh664=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 47d79a1d-3368-4d17-18e0-08d74caddbdc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 11:43:09.6492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT192
Subject: Re: [USRP-users] UHD / RFNoC Versions and Flowgraph Error with X310
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3366871622109308162=="
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

--===============3366871622109308162==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB098497812F4D5F55892CCC22A4950CY4PR19MB0984namp_"

--_000_CY4PR19MB098497812F4D5F55892CCC22A4950CY4PR19MB0984namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Jonathan,

I did what you suggested.  Starting from scratch and for the record (becaus=
e my forgetful brain needs it and it may help someone else, or someone will=
 point out the errors of my ways):

$ git clone -b master https://github.com/EttusResearch/gr-ettus.git
$ cd gr-ettus
$ git checkout 4980cbef0daf
$ mkdir build
$ cd build
$ cmake ../
$ make -j8
$ sudo make install
$ sudo ldconfig    # Still not quite sure when I need this command, but I d=
id it.

That seemed to fix the problem!

Is it due to a mixup on my end of what versions I originally had, or was it=
 just because I cloned in the midst of some updates?

Thanks for the help!
Jeff


________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Tuesday, October 8, 2019 8:35 PM
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD / RFNoC Versions and Flowgraph Error with X31=
0

Hi Jeff,

Try commit 4980cbef0daf from gr-ettus and please let me know if that solves=
 the problem.

Jonathon

On Wed, Oct 9, 2019 at 10:23 AM Jeff S via USRP-users <usrp-users@lists.ett=
us.com<mailto:usrp-users@lists.ettus.com>> wrote:
I have been trying to set up an environment for using RFNoC on an X310.  It=
 was running well before I tried to update the to using RFNoC according the=
 the application note.  I'm wondering if I have an error relating to a vers=
ion of UHD correlating to the other parts (gr-ettus, gnuradio, fpga).  I fe=
el like I cannot trust documentation I see (like the X310 product descripti=
on calling out Vivado 2015, but a recent email calling out 2017, and an ear=
lier question that caused an application note to be deprecated).

I have two laptops which show the uhd (git branch) at version rfnoc-devel, =
and gr-ettus at master.  One will run a flowgraph with RFNoC blocks, and th=
e other will get the error below with the same flowgraph (error on last lin=
e).  I'm just trying to figure out what direction to go before I delete eve=
rything and start over.  Similar questions about similar errors seemed to r=
elated to UHD versions, which I why I'm starting there.

Thanks,
Jeff

[32;1m[INFO] [UHD] [39;0mlinux; GNU C++ version 7.4.0; Boost_106501; UHD_4.=
0.0.rfnoc-devel-702-geec24d7b
[32;1m[INFO] [X300] [39;0mX300 initialization sequence...
[32;1m[INFO] [X300] [39;0mMaximum frame size: 1472 bytes.
[32;1m[INFO] [X300] [39;0mRadio 1x clock: 200 MHz
[32;1m[INFO] [GPS] [39;0mFound an internal GPSDO: LC_XO, Firmware Rev 0.929=
a
[32;1m[INFO] [0/DmaFIFO_0] [39;0mInitializing block control (NOC ID: 0xF1F0=
D00000000000)
[32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1305 MB/s)
[32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1307 MB/s)
[32;1m[INFO] [0/Radio_0] [39;0mInitializing block control (NOC ID: 0x12AD10=
0000000001)
[32;1m[INFO] [0/Radio_1] [39;0mInitializing block control (NOC ID: 0x12AD10=
0000000001)
[32;1m[INFO] [0/DDC_0] [39;0mInitializing block control (NOC ID: 0xDDC00000=
00000000)
[32;1m[INFO] [0/DDC_1] [39;0mInitializing block control (NOC ID: 0xDDC00000=
00000000)
[32;1m[INFO] [0/DUC_0] [39;0mInitializing block control (NOC ID: 0xD0C00000=
00000000)
[32;1m[INFO] [0/DUC_1] [39;0mInitializing block control (NOC ID: 0xD0C00000=
00000000)
Finding block for: Radio_0
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_0
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_0
TX args:
RX args:
0/Radio_0 has 1 input ports
0/Radio_0 has 2 output ports
getting block control for port 0
Finding block for: Radio_0
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_0
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_0
TX args:
RX args:
0/Radio_0 has 1 input ports
0/Radio_0 has 2 output ports
getting block control for port 0
Finding block for: DUC
Mapped external port 0 to 0
Mapped port 0 to 0/DUC_0
TX args:
RX args:
0/DUC_0 has 1 input ports
0/DUC_0 has 1 output ports
Finding block for: DmaFIFO
Mapped external port 0 to 0
Mapped port 0 to 0/DmaFIFO_0
Mapped external port 1 to 1
Mapped port 1 to 0/DmaFIFO_0
TX args:
RX args:
0/DmaFIFO_0 has 2 input ports
0/DmaFIFO_0 has 2 output ports
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 1
External mapped to port 1
getting block control for port 1
External mapped to port 1
Finding block for: DDC
Mapped external port 0 to 0
Mapped port 0 to 0/DDC_0
Mapped external port 1 to 1
Mapped port 1 to 0/DDC_0
TX args:
getting block control for port 0
getting block control for port 0
block_port0 =3D 0
block_id0 =3D 0/DDC_0
RX args:
External mapped to port 0
getting block control for port 0
getting block control for port 0
block_port0 =3D 0
block_id0 =3D 0/DDC_0
0/DDC_0 has 2 input ports
0/DDC_0 has 2 output ports
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
gr::fft: can't import wisdom from /home/torchuser/.gr_fftw_wisdom
getting block control for port 0
getting block control for port 0
Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DmaFIFO_0
getting block control for port 0
getting block control for port 0
Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DUC_0
getting block control for port 0
getting block control for port 0
Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/Radio_0
getting block control for port 0
getting block control for port 0
getting block control for port 0
thread[thread-per-block[3]: <block uhd_rfnoc_DmaFIFO (4)>]: RuntimeError: C=
annot create streamers: No block_id specified for channel 0.
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_CY4PR19MB098497812F4D5F55892CCC22A4950CY4PR19MB0984namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jonathan,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I did what you suggested.&nbsp; Starting from scratch and for the record (b=
ecause my forgetful brain needs it and it may help someone else, or someone=
 will point out the errors of my ways):</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git clone -b master <a href=3D"https://github.com/EttusResearch/gr-ettus.=
git" id=3D"LPNoLP626676">
https://github.com/EttusResearch/gr-ettus.git</a></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd gr-ettus</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ git checkout 4980cbef0daf<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ mkdir build</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cd build<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ cmake ../</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ make -j8</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ sudo make install<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ sudo ldconfig&nbsp;&nbsp;&nbsp; # Still not quite sure when I need this c=
ommand, but I did it.<br>
</div>
<br>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
That seemed to fix the problem!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Is it due to a mixup on my end of what versions I originally had, or was it=
 just because I cloned in the midst of some updates?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks for the help!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div id=3D"Signature">
<p><br>
</p>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Jonathon Pendlum &l=
t;jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Tuesday, October 8, 2019 8:35 PM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] UHD / RFNoC Versions and Flowgraph Error w=
ith X310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff,
<div><br>
</div>
<div>Try commit&nbsp;4980cbef0daf from gr-ettus and please let me know if t=
hat solves the problem.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Oct 9, 2019 at 10:23 AM Jef=
f S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have been trying to set up an environment for using RFNoC on an X310.&nbs=
p; It was running well before I tried to update the to using RFNoC accordin=
g the the application note.&nbsp; I'm wondering if I have an error relating=
 to a version of UHD correlating to the other
 parts (gr-ettus, gnuradio, fpga).&nbsp; I feel like I cannot trust documen=
tation I see (like the X310 product description calling out Vivado 2015, bu=
t a recent email calling out 2017, and an earlier question that caused an a=
pplication note to be deprecated).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have two laptops which show the uhd (git branch) at version rfnoc-devel, =
and gr-ettus at master.&nbsp; One will run a flowgraph with RFNoC blocks, a=
nd the other will get the error below with the same flowgraph (error on las=
t line).&nbsp; I'm just trying to figure out
 what direction to go before I delete everything and start over.&nbsp; Simi=
lar questions about similar errors seemed to related to UHD versions, which=
 I why I'm starting there.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
[32;1m[INFO] [UHD] [39;0mlinux; GNU C&#43;&#43; version 7.4.0; Boost_106501=
; UHD_4.0.0.rfnoc-devel-702-geec24d7b<br>
[32;1m[INFO] [X300] [39;0mX300 initialization sequence...<br>
[32;1m[INFO] [X300] [39;0mMaximum frame size: 1472 bytes.<br>
[32;1m[INFO] [X300] [39;0mRadio 1x clock: 200 MHz<br>
[32;1m[INFO] [GPS] [39;0mFound an internal GPSDO: LC_XO, Firmware Rev 0.929=
a<br>
[32;1m[INFO] [0/DmaFIFO_0] [39;0mInitializing block control (NOC ID: 0xF1F0=
D00000000000)<br>
[32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1305 MB/s)<br>
[32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1307 MB/s)<br>
[32;1m[INFO] [0/Radio_0] [39;0mInitializing block control (NOC ID: 0x12AD10=
0000000001)<br>
[32;1m[INFO] [0/Radio_1] [39;0mInitializing block control (NOC ID: 0x12AD10=
0000000001)<br>
[32;1m[INFO] [0/DDC_0] [39;0mInitializing block control (NOC ID: 0xDDC00000=
00000000)<br>
[32;1m[INFO] [0/DDC_1] [39;0mInitializing block control (NOC ID: 0xDDC00000=
00000000)<br>
[32;1m[INFO] [0/DUC_0] [39;0mInitializing block control (NOC ID: 0xD0C00000=
00000000)<br>
[32;1m[INFO] [0/DUC_1] [39;0mInitializing block control (NOC ID: 0xD0C00000=
00000000)<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: DUC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DUC_0<br>
TX args:<br>
RX args:<br>
0/DUC_0 has 1 input ports<br>
0/DUC_0 has 1 output ports<br>
Finding block for: DmaFIFO<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DmaFIFO_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DmaFIFO_0<br>
TX args:<br>
RX args:<br>
0/DmaFIFO_0 has 2 input ports<br>
0/DmaFIFO_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 1<br>
External mapped to port 1<br>
getting block control for port 1<br>
External mapped to port 1<br>
Finding block for: DDC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DDC_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DDC_0<br>
TX args:<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
RX args:<br>
External mapped to port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
0/DDC_0 has 2 input ports<br>
0/DDC_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
gr::fft: can't import wisdom from /home/torchuser/.gr_fftw_wisdom<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0<br>
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DmaFIFO_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0<br>
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DUC_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0<br>
[33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/Radio_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
thread[thread-per-block[3]: &lt;block uhd_rfnoc_DmaFIFO (4)&gt;]: RuntimeEr=
ror: Cannot create streamers: No block_id specified for channel 0.<br>
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

--_000_CY4PR19MB098497812F4D5F55892CCC22A4950CY4PR19MB0984namp_--


--===============3366871622109308162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3366871622109308162==--

