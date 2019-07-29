Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E767D78A9A
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 13:31:40 +0200 (CEST)
Received: from [::1] (port=56734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs3sP-0007R3-Qc; Mon, 29 Jul 2019 07:31:37 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:49074)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hs3sL-0007MY-Hq
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 07:31:33 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id E9C2CB63F45
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 13:30:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SVkdEiFNbVZW for <usrp-users@lists.ettus.com>;
 Mon, 29 Jul 2019 13:30:42 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id A6F51B63D2B
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 13:30:42 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Mon, 29 Jul 2019 13:30:37 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Mon, 29 Jul 2019 13:30:37 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 slow with gnuradio
Thread-Index: AQHVRflf5AQks7e2KkqSRTP1NKZdFA==
Date: Mon, 29 Jul 2019 11:30:36 +0000
Message-ID: <1564399837020.98564@supracon.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.3.1.20]
MIME-Version: 1.0
Subject: [USRP-users] X310 slow with gnuradio
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
Content-Type: multipart/mixed; boundary="===============3790783069103982800=="
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

--===============3790783069103982800==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_156439983702098564supraconcom_"

--_000_156439983702098564supraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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





--_000_156439983702098564supraconcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
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
<p>&nbsp;<br>
</p>
<p><br>
</p>
</body>
</html>

--_000_156439983702098564supraconcom_--


--===============3790783069103982800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3790783069103982800==--

