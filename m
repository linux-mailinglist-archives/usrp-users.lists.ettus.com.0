Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5074313B34C
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 21:01:15 +0100 (CET)
Received: from [::1] (port=55248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irSND-0003LT-0E; Tue, 14 Jan 2020 15:01:11 -0500
Received: from outgoing-exchange-3.mit.edu ([18.9.28.13]:42841)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ri28856@mit.edu>) id 1irSN9-0003HA-8Y
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 15:01:07 -0500
Received: from w92exedge4.exchange.mit.edu (W92EXEDGE4.EXCHANGE.MIT.EDU
 [18.7.73.16])
 by outgoing-exchange-3.mit.edu (8.14.7/8.12.4) with ESMTP id 00EJxI2N031068
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 15:00:08 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92exedge4.exchange.mit.edu (18.7.73.16) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Tue, 14 Jan 2020 14:57:32 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 14 Jan 2020 14:59:43 -0500
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Tue,
 14 Jan 2020 14:59:43 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 scheduled issue_stream_cmd()
Thread-Index: AQHVyxUpMLQQ5YnETkGA8FyUY9FBEg==
Date: Tue, 14 Jan 2020 19:59:43 +0000
Message-ID: <33716e89222c44d1a9064914d0955081@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: [USRP-users] X310 scheduled issue_stream_cmd()
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
From: Richard Joseph Muri via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Joseph Muri <ri28856@mit.edu>
Content-Type: multipart/mixed; boundary="===============3238929135021170302=="
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

--===============3238929135021170302==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33716e89222c44d1a9064914d0955081oc11expo22exchangemited_"

--_000_33716e89222c44d1a9064914d0955081oc11expo22exchangemited_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I'm using an X310 with a number of scheduled receives. I suspect there is a=
 FIFO on the USRP that holds the stream_cmd_t until it is time to collect t=
he requested samples. I have not been able to find documentation about the =
size of this FIFO. Could anybody point me in the proper direction?


Do I need to keep track of the number of stream_cmds in the FIFO? Is there =
some kind of acknowledge I can use to know the stream_cmd has left the FIFO=
? At the moment I am running an C++ application with two threads, one to is=
sue_stream_cmd(), and one to recv(). I loop each operation, posting a semap=
hore after each recv() and waiting on a semaphore before every issue_stream=
_cmd().


I found this thread about using set_start_time():

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-July/04902=
2.html


Are these commands on the same FIFO issue_stream_cmd() uses?


Thank you!

Richard Muri


--_000_33716e89222c44d1a9064914d0955081oc11expo22exchangemited_
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
<p>Hello,</p>
<p><br>
</p>
<p>I'm using an X310 with a number of scheduled receives. I suspect there i=
s a FIFO on the USRP that holds the stream_cmd_t until it is time to collec=
t the requested samples. I have not been able to find documentation about t=
he size of this FIFO. Could anybody
 point me in the proper direction?</p>
<p><br>
</p>
<p>Do I need to keep track of the number of stream_cmds in the FIFO? Is the=
re some kind of acknowledge I can use to know the stream_cmd has left the F=
IFO? At the moment I am running an C&#43;&#43; application with two threads=
, one to issue_stream_cmd(), and one to
 recv(). I loop each operation, posting a semaphore after each recv() and w=
aiting on a semaphore before every issue_stream_cmd().
<br>
</p>
<p><br>
</p>
<p>I found this thread about using set_start_time(): </p>
<p><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
016-July/049022.html" target=3D"_blank">http://lists.ettus.com/pipermail/us=
rp-users_lists.ettus.com/2016-July/049022.html</a></p>
<p><br>
</p>
<p>Are these commands on the same FIFO issue_stream_cmd() uses?</p>
<p><br>
</p>
<p>Thank you!</p>
Richard Muri
<p><br>
</p>
</body>
</html>

--_000_33716e89222c44d1a9064914d0955081oc11expo22exchangemited_--


--===============3238929135021170302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3238929135021170302==--

