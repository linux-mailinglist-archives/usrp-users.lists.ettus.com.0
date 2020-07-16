Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 464F42220B9
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 12:39:06 +0200 (CEST)
Received: from [::1] (port=41906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jw1I8-0007Mr-VF; Thu, 16 Jul 2020 06:39:04 -0400
Received: from mail-oln040092254037.outbound.protection.outlook.com
 ([40.92.254.37]:12595 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jw1I4-0007BZ-CT
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 06:39:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e/lXohfbICYGxcX3zg/5IC0DlTKfCDe5ibmLBItkn2w3+nfYJ95EXdhmfCJ2F8RWM/D+/0cEObPhwHr5+dRbf28wX+SwkcsDV5JbMlhpuB8yNP9XOjRzAsy8L+jLzAizQ+DeXDlqGZuUetBG/KX+V7k9HtQ0EfYb5l5osJqrSXLSTCuSooSYb6Pi2qaMdIRack1b1roKytiGDBb9ujptSfhftYmLDyrXNyldbKDxLwuzEqIUg2QlEXPUCuY7iPWsVA9IwApG9V+zeGQ3/3i8h9pO2KB5TXcRuWOhtSHQrB1Bta50xmlgV0UAz4xozxwcTVK9bI6NWkuuEq06tokkjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJG5oF8T/iCyCydzNps7lAPUKLRcvfJ4qpANISMcs3g=;
 b=QrPOhLtXC89Z3fMbeSAcNpki1P1GJCJhMnwl6KDDndk5NM+MjGFXTHJjJddlYau83ds60NlZ4afV6zbQ0EnZswZvgFfaGbIICLGJ312U4li4yKchGz+jgSCNcHGqxocADGeSjFnLTkCHZXnAUXDrAwT3h5ojBYv7Hwy/pZNwT+EpqPwXDc212fb3YI6MEqvTHXegNHSAzXkdHae3iF1MVqx12c6qBYsUy/yUXxEme12vgrJdZFj7vmVRrwfm3gzPM9WkVAgIujzAiqJ8baftcd5Fme63wGhXOegPU2JZwwIgqIMmgVmPFAUWsd8jTPuAhgOkjbA/L1JBi31NhTuWwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJG5oF8T/iCyCydzNps7lAPUKLRcvfJ4qpANISMcs3g=;
 b=epH2OuAk20HjdGfTJPUh3e78x5lo5edO05STjrOAtU7gPFK2kf715lDtC81ydEjEORbTa6i1oaPR1WaL1VwvObWVFzqW8+AqVFkQDo5x645KBq2zwQccbkd4lS2z3gqoIiLVKdYABoNdc+i8+EKy3vDW4Gl3qERo2SodqA4ItHXhkiBhyOAA3geSIGRQw/6L3RiZA+gJQdc1diItL1w1liVpLd8/C/axCbmU4n/atIPYfMbcd07AwJHn+owvF5Sp9WPleMJkXjs5TM6OMOS2600RaHuMjb15A3PPc/22ZrIYGy7fc7nPkSyAEtdBywkez1LnVJ7bx/Uw17/yt7/w+w==
Received: from HK2APC01FT061.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::50) by
 HK2APC01HT012.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::155)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18; Thu, 16 Jul
 2020 10:38:16 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::46) by HK2APC01FT061.mail.protection.outlook.com
 (2a01:111:e400:7ebc::361) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18 via Frontend
 Transport; Thu, 16 Jul 2020 10:38:16 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689]) by BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689%4]) with mapi id 15.20.3174.026; Thu, 16 Jul 2020
 10:38:16 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] support for synchronizing two USRPs
Thread-Index: AQHWW1bn+aUDN6UBT0eXtD/Nt4ZXrakJ/weAgAAEmp0=
Date: Thu, 16 Jul 2020 10:38:16 +0000
Message-ID: <BM1PR0101MB1491300CAE26B979F4BCE094887F0@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR0101MB14911B41478D0BBE883C6DE2887F0@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>,
 <CACaXmv8Kd4EZWHDW3mNyX4f8XtUwr3J0P++iypuJPEoja6pU=A@mail.gmail.com>
In-Reply-To: <CACaXmv8Kd4EZWHDW3mNyX4f8XtUwr3J0P++iypuJPEoja6pU=A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2D453279A7567E521D2DCDB02B95B297CF7ECAA55287762F9E9073C69F700861;
 UpperCasedChecksum:0055762ADB3E668AC13078CBA5F6906107D9BF7E4149B0C30E4E3FC3A831F84C;
 SizeAsReceived:7036; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0XPj9WIkpTIr+9Id2egzWXq/QCO3ElZV]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c1c20e90-77aa-4968-f28a-08d829745978
x-ms-traffictypediagnostic: HK2APC01HT012:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: THEMfceV1dOINlrn5SS23RGUL2kaqTk1caE4aUjglNJNstrgTUmallTIgBPUwxpX0gb4qPBnzLRBAMv76kwVC669F9Q2pm/2wJNPYC5R3RDvfyLILAsUh6swIfv5JciUJWpXP3SS9YcvRRvRvN9ctnlIPm1y7MhDzK6DlYUE21UfWCDFyRLkK0/1qULnWx2hjScyhSFGiw12firaIQdLyaNj2uwt+J9q+ELbRWdnRAhQ2L349slGPwt5aCwl0Mt2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: e2PBI8CKCXopJ+NKRVVMKaTytD9/YTs9scUsqFwLshDvHvzuKI2Nh35QSevD4gqUeVGrJLV7C9cGoifvS7aDcL6KBq8MEqzzJA/eET44uMek7/N46nyURej8ceLAEhYoilSh44VVdjpyEL55+k5S8A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT061.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c1c20e90-77aa-4968-f28a-08d829745978
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 10:38:16.6449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT012
Subject: Re: [USRP-users] support for synchronizing two USRPs
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============5023613781716149747=="
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

--===============5023613781716149747==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB1491300CAE26B979F4BCE094887F0BM1PR0101MB1491_"

--_000_BM1PR0101MB1491300CAE26B979F4BCE094887F0BM1PR0101MB1491_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Neel for the clarification!

Regards
Snehasish
________________________________
From: Neel Pandeya <neel.pandeya@ettus.com>
Sent: Thursday, July 16, 2020 3:51 PM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] support for synchronizing two USRPs

You cannot synchronize USRP devices by using a daisy-chain configuration.  =
The 10 MHz reference and the 1 PPS on both USRP devices must be connected t=
o a common 10 MHz reference and to a common 1 PPS signal.  The OctoClock-G =
device can be used to generate these signals and to distribute them to 8 de=
vices.  Then, for each USRP device, in UHD or GNU Radio, set your clocking =
source and timing source to "external".

https://kb.ettus.com/OctoClock_CDA-2990

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

--Neel Pandeya



On Thu, 16 Jul 2020 at 05:00, Snehasish Kar via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello

I am trying to time synchronize two USRPs. I have connected reference and P=
PS trigger out of USRP A to reference and PPS trigger in of USRP B. In USRP=
 A i have set time and clock source to GPSDO and in USRP B I have set time =
and clock source to external. But I when I try to compare uhd::time_spec fo=
r both the boards I see there is a time mismatch. Please help me understand=
ing where I am going wrong.

Regards
Snehasish
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR0101MB1491300CAE26B979F4BCE094887F0BM1PR0101MB1491_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks Neel for the clarification!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Snehasish<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Neel Pandeya &lt;neel=
.pandeya@ettus.com&gt;<br>
<b>Sent:</b> Thursday, July 16, 2020 3:51 PM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] support for synchronizing two USRPs</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">You=
 cannot synchronize USRP devices by using a daisy-chain configuration.&nbsp=
; The 10 MHz reference and the 1 PPS on both USRP devices must be connected=
 to a common 10 MHz reference and to a common
 1 PPS signal.&nbsp; The OctoClock-G device can be used to generate these s=
ignals and to distribute them to 8 devices.&nbsp; Then, for each USRP devic=
e, in UHD or GNU Radio, set your clocking source and timing source to &quot=
;external&quot;.<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><a =
href=3D"https://kb.ettus.com/OctoClock_CDA-2990">https://kb.ettus.com/OctoC=
lock_CDA-2990</a></div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><a =
href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_=
Devices">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP=
_Devices</a></div>
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
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, 16 Jul 2020 at 05:00, Sneha=
sish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hello</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I am trying to time synchronize two USRPs. I have connected reference and P=
PS trigger out of USRP A to reference and PPS trigger in of USRP B. In USRP=
 A i have set time and clock source to GPSDO and in USRP B I have set time =
and clock source to external. But
 I when I try to compare uhd::time_spec for both the boards I see there is =
a time mismatch. Please help me understanding where I am going wrong.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Snehasish<br>
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
</body>
</html>

--_000_BM1PR0101MB1491300CAE26B979F4BCE094887F0BM1PR0101MB1491_--


--===============5023613781716149747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5023613781716149747==--

