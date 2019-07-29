Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F142E78B3F
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 14:03:30 +0200 (CEST)
Received: from [::1] (port=39000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs4ND-0001hs-5F; Mon, 29 Jul 2019 08:03:27 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:50462)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hs4N9-0001bx-8H
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 08:03:23 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id C045EB64164;
 Mon, 29 Jul 2019 14:02:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cT3MF72MmsZ2; Mon, 29 Jul 2019 14:02:40 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 5490AB63EFC;
 Mon, 29 Jul 2019 14:02:40 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Mon, 29 Jul 2019 14:02:21 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Mon, 29 Jul 2019 14:02:21 +0200
To: Jason Matusiak <jason@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 slow with gnuradio
Thread-Index: AQHVRflf5AQks7e2KkqSRTP1NKZdFKbhe4EEgAACoeo=
Date: Mon, 29 Jul 2019 12:02:20 +0000
Message-ID: <1564401740674.89525@supracon.com>
References: <1564399837020.98564@supracon.com>,
 <BL0PR12MB2340E7234FB9747C92CD15F9AFDD0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340E7234FB9747C92CD15F9AFDD0@BL0PR12MB2340.namprd12.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============4583926011205341163=="
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

--===============4583926011205341163==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_156440174067489525supraconcom_"

--_000_156440174067489525supraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi jason,


I had the MTU set to 8028. I increased to 9000, just to make sure -> no cha=
nge.

As I wrote, the UHD driver itself can transmit at full speed, so it should =
be no network issue.


Best regards,

Erik




________________________________
Von: Jason Matusiak <jason@gardettoengineering.com>
Gesendet: Montag, 29. Juli 2019 13:50
An: usrp-users@lists.ettus.com; Erik Heinz
Betreff: Re: X310 slow with gnuradio

Shot in the dark Erik:
    What is your MTU set at for the ethernet port?  Try setting it to 9000 =
if it isn't and see if that does anything for you.
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Erik Hei=
nz via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, July 29, 2019 7:30 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] X310 slow with gnuradio


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





--_000_156440174067489525supraconcom_
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
<p>Hi jason,<br>
</p>
<p><br>
</p>
<p>I had the MTU set to 8028. I increased to 9000, just&nbsp;to make&nbsp;s=
ure -&gt; no change.</p>
<p>As I wrote, the UHD driver itself can transmit at full speed, so it shou=
ld be no network issue.<br>
</p>
<p><br>
</p>
<p>Best regards,</p>
<p>Erik<br>
</p>
<p>&nbsp;<br>
</p>
<p><br>
</p>
<div dir=3D"ltr" style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Jason Matusiak &lt;j=
ason@gardettoengineering.com&gt;<br>
<b>Gesendet:</b> Montag, 29. Juli 2019 13:50<br>
<b>An:</b> usrp-users@lists.ettus.com; Erik Heinz<br>
<b>Betreff:</b> Re: X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Shot in the dark Erik:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; What is your MTU set at for the ethernet port?&nbsp; Try sett=
ing it to 9000 if it isn't and see if that does anything for you.</div>
<div id=3D"Signature">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Erik Heinz via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, July 29, 2019 7:30 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] X310 slow with gnuradio</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hi,</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">I am getting lots of underfl=
ow errors when sending with gnuradio to an X310 at sampling rates of 50 MSp=
s and higher. The flowchart is as simple as possible: a signal source and a=
&nbsp;</p>
<p style=3D"margin-top:0px; margin-bottom:0px">&quot;UHD: USRP Sink&quot; b=
lock.&nbsp;When sending and receiving at the same time,&nbsp;the performanc=
e is even&nbsp;worse.
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">The X310 is connected to the=
 PC by 10G ethernet. Using the UHD example programs&nbsp;benchmark_rate,&nb=
sp;tx_waveforms, txrx_loopback_to_file etc.,&nbsp;a&nbsp;sampling rate&nbsp=
;of 200 MSps&nbsp;full duplex&nbsp;is no&nbsp;problem at all. So it is not
 a problem of the UHD driver and the network setup should be&nbsp;OK as wel=
l. </p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">The processor is an Intel co=
re i3-7100&nbsp;@3.9GHz.&nbsp; A gnuradio flowchart with a signal source, a=
 throttle block and a file sink works at 50 MSps sampling rate and more, so=
 the&nbsp;processor speed should not be a problem
 either. The gnuradio version is 3.7.11 which is the one currently distribu=
ted for Ubuntu buster.<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Any ideas? Could an update t=
o a more recent gnuradio version help?</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Best regards,</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Erik<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">&nbsp;<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_156440174067489525supraconcom_--


--===============4583926011205341163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4583926011205341163==--

