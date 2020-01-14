Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F34A13A8DF
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 12:59:05 +0100 (CET)
Received: from [::1] (port=58238 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irKqb-0000pJ-Qw; Tue, 14 Jan 2020 06:59:01 -0500
Received: from mail-mw2nam10olkn2099.outbound.protection.outlook.com
 ([40.92.42.99]:57000 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1irKqY-0000iM-6v
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 06:58:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZrYPCm5Lwr13+aBxhCHphMqJg7KdOBz6I1iZ++QSQUnGzyNxnLh+ocTasfOtUS5HmjexcOjtthg8C1+44hU8ncNLMguv9Uv8LA5ve6WNOZJRS1r79gQKRnjsaldSvhn4/Pxgwlyr0MUPnQZcvd6K1CoRRFRCjpmAvzKhR+rgZFSSVvpsuzcrI2kZqwhs9MkTEXlYu8cockd/rNPfHV44dpIKi3ClwIoGBMiXA0gDVvgciDNC0/Q1+eSL9hJINl5QeYivNVuxhRKLYpQfOSCvW6PFMlQe4Ctpz1p1vZC/hy134l2T0ZHK+6EA8Xl+n3kbJ/5TftylPaaaKYb/GyhtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLWOEgDzUy1Rf7ONW7BfLQ/510Gai+HVRU9rY7JBg5Q=;
 b=k91lbBxn/QOIkGnHBLBFZwvjz7z8wxMyhQ6T1AjDSXfptPXo0AQhva9UOCgQTyR5P43pKhDh84sQEHNJmkTH6sSqgSxjuRVR+QmkojT16CrA/16CwReGKK1wfzZ7X1KXNvpl2Ili8wm0dg86eG+uGzw+jiQrk8KMAE6Lc1W8t5xW2Jl2X2Ah/gjqxKfxGfoaPxIB+Q/KbJl3tYQKvmqjMm5gkbHAs5VpioYfffYK+7YHQPsY2tqJnjK+EIaEpLoaqy9TGZVEhEpnNd7Y3kiNfneCDvRvHobD2/S4T+8JRuqhKPwnWhTXX3PrgQ9LVfvm+zJbNQ+jHHBYkg7zVJpmkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLWOEgDzUy1Rf7ONW7BfLQ/510Gai+HVRU9rY7JBg5Q=;
 b=g2lT33aQu7A7GA2bg7wJ6fVF7LFk79KPDAPEvMrAp2rPlNuiRkYmTu0B1ujlNJWLG5u69fV68/x85ELBwAeXPa6GfcT556kK1hFRznGIux/CrFDMTMT6O7fObx9hiU8JcnWV4GYpfRhqmzQ6U+Nf52z7Tfw6/Th9Q204jWsMZj5NmlMQG6LdOuo+V/PF2kK/Ig55ldtwGAkSEPwUsWtjJQP6CMP+qbFxceHG+WDvMLWcXV8OLOhsWCyywJS01aMAHoPdLU21qZytUzVGMQqoHXTcWNbK3VWgdXNBguD73BuFr5LJzkTpbrrHC+DYVGC/pb+ESmM4GkSuaqH8ddrKWg==
Received: from MW2NAM10FT015.eop-nam10.prod.protection.outlook.com
 (10.13.154.51) by MW2NAM10HT207.eop-nam10.prod.protection.outlook.com
 (10.13.154.136) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Tue, 14 Jan
 2020 11:58:15 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.154.57) by
 MW2NAM10FT015.mail.protection.outlook.com (10.13.154.198) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9 via Frontend Transport; Tue, 14 Jan 2020 11:58:15 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125%10]) with mapi id 15.20.2623.017; Tue, 14 Jan
 2020 11:58:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Thomas Harder
 <Thomas.Harder@oca.eu>
Thread-Topic: [USRP-users] using GPIO output to trigger external RF switches
Thread-Index: AQHVysr0W6j+ZRdQsEiclCraqyNcgqfqDEzq
Date: Tue, 14 Jan 2020 11:58:15 +0000
Message-ID: <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
In-Reply-To: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1FEEB96D88D1F1D693E8ABAEA04D63F8F9274B208A8B8ED5424660B7EA39E63C;
 UpperCasedChecksum:95805141CD681ABECA433F5AC7CEB8E637CA51CFDE760615526D23E218E92ED3;
 SizeAsReceived:6967; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5DJQ4vAVEPMx04EaoG0ROog8M6O/dRHd]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 5d009b65-f9b1-4078-11d9-08d798e909d7
x-ms-traffictypediagnostic: MW2NAM10HT207:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dhekoIo3z/ZO5bazlhN4SdcRBmol4nNEaj6Uu58NN4VuEweeWYif7p8/K6IprX9PVKBJ/NC5xr3aNFyQn/p89kqZJMC+tzLFYJ+iQTJs87x+tcmt6Hv+opckgRfXzGkXVXAqZzfQwfTCnVj27TOPMs+uOTCBbYP2BKeH2xgDQclBYj+efZejDhWWmEmWzy2xmT8+Ysyx/UMGa89Tccd16hga2mjGj5akQv/UR9KEu2c=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d009b65-f9b1-4078-11d9-08d798e909d7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 11:58:15.5706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT207
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches
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
Content-Type: multipart/mixed; boundary="===============4644607552586202230=="
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

--===============4644607552586202230==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635C290AC93638924D3755AA4340BN6PR19MB1635namp_"

--_000_BN6PR19MB1635C290AC93638924D3755AA4340BN6PR19MB1635namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thomas,

I am looking at GPIO right now as well.  As to your question #2 on examples=
, I compiled and am able to run the example I found in the UHD software:

uhd/host/examples/gpio.cpp

I am able to set individual data lines to experiment with (and eventually u=
se as a roadmap for my development) using commands like:

./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055

which I verified works using a logic analyzer.  I eventually want to try to=
 create a keying loop, but that may take some FPGA control (?).

Jeff


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Thomas H=
arder via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, January 14, 2020 5:07 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] using GPIO output to trigger external RF switches


Hi,

I am continuously transmitting a waveform with several RF with 200MSPS with=
 my USRP X310 (modified code on the basis of =93tx_samples_from_file.cpp=94=
 with a waveform in a .dat file). I would like to get a trigger signal from=
 the USRP when it is changing the tx- frequency which I set in my .dat file=
.

Could the GPIO deliver this trigger without changing the image?

I am using the SRAM image with UHD 3.14.1



A second question is concerning the GPIO example on https://files.ettus.com=
/manual/page_gpio_api.html.

I copied and paced it in the =93tx_waveforms=94 example just changing the u=
srp device handle to =93usrp=94 but when I compiled it and started tx, I co=
uldn=92t measure any tension on PIN 4 and 6 as defined in the example. Are =
there more examples how to program the GPIO?

Thank you,

Thomas

--_000_BN6PR19MB1635C290AC93638924D3755AA4340BN6PR19MB1635namp_
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
Thomas,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am looking at GPIO right now as well.&nbsp; As to your question #2 on exa=
mples, I compiled and am able to run the example I found in the UHD softwar=
e:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
uhd/host/examples/gpio.cpp</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am able to set individual data lines to experiment with (and eventually u=
se as a roadmap for my development) using commands like:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055<br>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
which I verified works using a logic analyzer.&nbsp; I eventually want to t=
ry to create a keying loop, but that may take some FPGA control (?).</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div><br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Thomas Harder via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, January 14, 2020 5:07 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] using GPIO output to trigger external RF switc=
hes</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
Hi,</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
I am continuously transmitting a waveform with several RF with 200MSPS with=
 my USRP X310 (modified code on the basis of =93tx_samples_from_file.cpp=94=
 with a waveform in a .dat file). I would like to get a trigger signal from=
 the USRP when it is changing the tx-
 frequency which I set in my .dat file. </p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
Could the GPIO deliver this trigger without changing the image? </p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
I am using the SRAM image with UHD 3.14.1</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
A second question is concerning the GPIO example on <a href=3D"https://file=
s.ettus.com/manual/page_gpio_api.html">
https://files.ettus.com/manual/page_gpio_api.html</a>.</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
I copied and paced it in the =93tx_waveforms=94 example just changing the u=
srp device handle to =93usrp=94 but when I compiled it and started tx, I co=
uldn=92t measure any tension on PIN 4 and 6 as defined in the example. Are =
there more examples how to program the GPIO?</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
Thank you,</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: &quot;Calibri&quot;, sans-serif;">
Thomas</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB1635C290AC93638924D3755AA4340BN6PR19MB1635namp_--


--===============4644607552586202230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4644607552586202230==--

