Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9057AD45
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 18:08:41 +0200 (CEST)
Received: from [::1] (port=43104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsUfy-0000Ij-R6; Tue, 30 Jul 2019 12:08:34 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:55854)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hsUfv-0000BY-8D
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 12:08:31 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 8A19FB64263;
 Tue, 30 Jul 2019 18:07:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DafQpjPy7Xb8; Tue, 30 Jul 2019 18:07:48 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id A3E42B63EFC;
 Tue, 30 Jul 2019 18:07:47 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 30 Jul 2019 18:07:46 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Tue, 30 Jul 2019 18:07:46 +0200
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] X310 slow with gnuradio
Thread-Index: AQHVRflf5AQks7e2KkqSRTP1NKZdFKbhmVyAgAG77z4=
Date: Tue, 30 Jul 2019 16:07:46 +0000
Message-ID: <1564502866488.50012@supracon.com>
References: <1564399837020.98564@supracon.com>,<5D3F1289.2020403@gmail.com>
In-Reply-To: <5D3F1289.2020403@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.3.1.20]
MIME-Version: 1.0
Subject: Re: [USRP-users] X310 slow with gnuradio
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
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4211731445837142590=="
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

--===============4211731445837142590==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_156450286648850012supraconcom_"

--_000_156450286648850012supraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Unfortunately, I have to stick to the i3 for now, since it is the only PC h=
ere with an PCI-E slot for the 10 Gig ethernet.

Anyway, I have installed UHD_3.14.1 from the Ettus repository and compiled =
gnuradio-3.8.0.0-rc2. Now things look a bit better.

A flowchart with a Signal Source, an UHD USRP Sink, an UHD USRP source and =
a QT GUI Sink works up to 66.7 MSPS duplex (the X310 can only do samples ra=
tes that are integer fractions of 200 MHz).
With a constant source, 100 MSPS are possible.
With sender-only or receiver-only flowcharts, I can achieve 200 MSPS. Not s=
o bad.

Best regards,
Erik


--
????????????????????????????????????????
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com
????????????????????????????????????????
Handelsregister:  Amtsgericht Gera HRB  208970
Umsatzsteuer-Id.:  DE 216 111 685

Kaufm. Vorstand:       Matthias Meyer
Vorsitz Aufsichtsrat:  Prof. Dr. Michael Siegel

________________________________
Von: USRP-users <usrp-users-bounces@lists.ettus.com> im Auftrag von Marcus =
D. Leech via USRP-users <usrp-users@lists.ettus.com>
Gesendet: Montag, 29. Juli 2019 17:36
An: usrp-users@lists.ettus.com
Betreff: Re: [USRP-users] X310 slow with gnuradio

On 07/29/2019 07:30 AM, Erik Heinz via USRP-users wrote:

Hi,


I am getting lots of underflow errors when sending with gnuradio to an X310=
 at sampling rates of 50 MSps and higher. The flowchart is as simple as pos=
sible: a signal source and a

"UHD: USRP Sink" block. When sending and receiving at the same time, the pe=
rformance is even worse.


The X310 is connected to the PC by 10G ethernet. Using the UHD example prog=
rams benchmark_rate, tx_waveforms, txrx_loopback_to_file etc., a sampling r=
ate of 200 MSps full duplex is no problem at all. So it is not a problem of=
 the UHD driver and the network setup should be OK as well.


The processor is an Intel core i3-7100 @3.9GHz.  A gnuradio flowchart with =
a signal source, a throttle block and a file sink works at 50 MSps sampling=
 rate and more, so the processor speed should not be a problem either. The =
gnuradio version is 3.7.11 which is the one currently distributed for Ubunt=
u buster.


Any ideas? Could an update to a more recent gnuradio version help?


Best regards,

Erik


The file-sink version is NOT a good comparison, since the filesystem doesn'=
t need samples to "arrive on time", so there's no concept of an
  "under-run".

The signal source in Gnu Radio is not super-speedy, particularly if it's ge=
nerating a sin or cos function.

Also, the core i3-7100, despite the high clock rate, doesn't perform nearly=
 as well as the i7 series, which is what most people choose for doing
  serious high-speed DSP work with Gnu Radio.



--_000_156450286648850012supraconcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Unfortunately, I have to stick to the i3 for now, since it is the only P=
C here with an PCI-E slot for the 10 Gig ethernet.<br>
<br>
Anyway, I have installed UHD_3.14.1 from the Ettus repository and compiled =
gnuradio-3.8.0.0-rc2. Now things look a bit better.<br>
<br>
A flowchart with a Signal Source, an UHD USRP Sink, an UHD USRP source and =
a QT GUI Sink works up to 66.7 MSPS duplex (the X310 can only do samples ra=
tes that are integer fractions of 200 MHz).<br>
With a constant source, 100 MSPS are possible.<br>
With sender-only or receiver-only flowcharts, I can achieve 200 MSPS. Not s=
o bad.<br>
<br>
Best regards,<br>
Erik<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
-- <br>
&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#947=
2;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9=
472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&=
#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;<br>
Supracon AG<br>
Dr. Erik Heinz<br>
An der Lehmgrube 11<br>
07751 Jena<br>
Tel.: &#43;49 3641 2328-165<br>
Fax: &#43;49 3641 2328-109<br>
Internet: http://www.supracon.com<br>
&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#947=
2;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9=
472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&=
#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;<br>
Handelsregister:&nbsp; Amtsgericht Gera HRB&nbsp; 208970<br>
Umsatzsteuer-Id.:&nbsp; DE 216 111 685<br>
<br>
Kaufm. Vorstand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matthias Meyer<br>
Vorsitz Aufsichtsrat:&nbsp; Prof. Dr. Michael Siegel<br>
<br>
</div>
</div>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> USRP-users &lt;usrp-=
users-bounces@lists.ettus.com&gt; im Auftrag von Marcus D. Leech via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Gesendet:</b> Montag, 29. Juli 2019 17:36<br>
<b>An:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> Re: [USRP-users] X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 07/29/2019 07:30 AM, Erik Heinz via USRP-=
users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
-->=0A=
</style>
<p>Hi,</p>
<p><br>
</p>
<p>I am getting lots of underflow errors when sending with gnuradio to an X=
310 at sampling rates of 50 MSps and higher. The flowchart is as simple as =
possible: a signal source and a&nbsp;</p>
<p>&quot;UHD: USRP Sink&quot; block.&nbsp;When sending and receiving at the=
 same time,&nbsp;the performance is even&nbsp;worse.
</p>
<p><br>
</p>
<p>The X310 is connected to the PC by 10G ethernet. Using the UHD example p=
rograms&nbsp;benchmark_rate,&nbsp;tx_waveforms, txrx_loopback_to_file etc.,=
&nbsp;a&nbsp;sampling rate&nbsp;of 200 MSps&nbsp;full duplex&nbsp;is no&nbs=
p;problem at all. So it is not a problem of the UHD driver and the network
 setup should be&nbsp;OK as well. </p>
<p><br>
</p>
<p>The processor is an Intel core i3-7100&nbsp;@3.9GHz.&nbsp; A gnuradio fl=
owchart with a signal source, a throttle block and a file sink works at 50 =
MSps sampling rate and more, so the&nbsp;processor speed should not be a pr=
oblem either. The gnuradio version is 3.7.11 which
 is the one currently distributed for Ubuntu buster.<br>
</p>
<p><br>
</p>
<p>Any ideas? Could an update to a more recent gnuradio version help?</p>
<p><br>
</p>
<p>Best regards,</p>
<p>Erik<br>
</p>
<p><br>
</p>
<br>
</blockquote>
The file-sink version is NOT a good comparison, since the filesystem doesn'=
t need samples to &quot;arrive on time&quot;, so there's no concept of an<b=
r>
&nbsp; &quot;under-run&quot;.<br>
<br>
The signal source in Gnu Radio is not super-speedy, particularly if it's ge=
nerating a sin or cos function.<br>
<br>
Also, the core i3-7100, despite the high clock rate, doesn't perform nearly=
 as well as the i7 series, which is what most people choose for doing<br>
&nbsp; serious high-speed DSP work with Gnu Radio.<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_156450286648850012supraconcom_--


--===============4211731445837142590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4211731445837142590==--

