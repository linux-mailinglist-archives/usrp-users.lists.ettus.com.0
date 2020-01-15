Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 978EF13CDCA
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 21:10:55 +0100 (CET)
Received: from [::1] (port=40796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irp09-00072B-D2; Wed, 15 Jan 2020 15:10:53 -0500
Received: from outgoing-exchange-3.mit.edu ([18.9.28.13]:39755)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ri28856@mit.edu>) id 1irp05-0006vO-22
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 15:10:49 -0500
Received: from oc11exedge1.exchange.mit.edu (OC11EXEDGE1.EXCHANGE.MIT.EDU
 [18.9.3.17])
 by outgoing-exchange-3.mit.edu (8.14.7/8.12.4) with ESMTP id 00FK9W1q015689;
 Wed, 15 Jan 2020 15:09:47 -0500
Received: from w92expo22.exchange.mit.edu (18.7.74.76) by
 oc11exedge1.exchange.mit.edu (18.9.3.17) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Wed, 15 Jan 2020 15:09:44 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92expo22.exchange.mit.edu (18.7.74.76) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Wed, 15 Jan 2020 15:09:45 -0500
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Wed,
 15 Jan 2020 15:09:45 -0500
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [USRP-users] X310 scheduled issue_stream_cmd()
Thread-Index: AQHVyxUpMLQQ5YnETkGA8FyUY9FBEqfsRtOA///hLjk=
Date: Wed, 15 Jan 2020 20:09:45 +0000
Message-ID: <1579118984918.48649@mit.edu>
References: <33716e89222c44d1a9064914d0955081@oc11expo22.exchange.mit.edu>,
 <CANf970ah2WysX3RpyV8DCbwkdd3B9thdXX9rLHFZo6GMx_5bZg@mail.gmail.com>
In-Reply-To: <CANf970ah2WysX3RpyV8DCbwkdd3B9thdXX9rLHFZo6GMx_5bZg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: Re: [USRP-users] X310 scheduled issue_stream_cmd()
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
From: "Richard J. Muri via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Richard J. Muri" <ri28856@mit.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5074052120454224595=="
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

--===============5074052120454224595==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_157911898491848649mitedu_"

--_000_157911898491848649mitedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sam,


Thank you for the help. Is there somewhere where the command queue depth is=
 documented?


Also is the same command queue used for both commands scheduled from rx_str=
eamer and those scheduled with set_start_time()?


Thank you,

Richard

________________________________
From: Sam Reiter <sam.reiter@ettus.com>
Sent: Wednesday, January 15, 2020 11:55 AM
To: Richard J. Muri
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] X310 scheduled issue_stream_cmd()

Richard,

I believe what you're looking for is the depth of the command queue. For th=
e X310, this FIFO has a depth of 16. Any command that you issue to the X310=
 that has a command time set will be held in this FIFO until the radio's ti=
me matches the command time, at which point the command is executed.

You should definitely keep track of the state of the command queue - overfl=
owing this FIFO will put the radio in a bad state, usually requiring a rest=
art.

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78=
b00d051d3d51c2f719361c1fb5

https://files.ettus.com/manual/classuhd_1_1time__spec__t.html

Sam Reiter

On Tue, Jan 14, 2020 at 2:01 PM Richard Joseph Muri via USRP-users <usrp-us=
ers@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

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


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_157911898491848649mitedu_
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
<p>Sam,</p>
<p><br>
</p>
<p>Thank you for the help. Is there somewhere where the command queue depth=
 is documented?</p>
<p><br>
</p>
<p>Also is the same command queue used for both commands scheduled from rx_=
streamer and those scheduled with set_start_time()?</p>
<p><br>
</p>
<p>Thank you,</p>
<p>Richard<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sam Reiter &lt;sam.=
reiter@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, January 15, 2020 11:55 AM<br>
<b>To:</b> Richard J. Muri<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] X310 scheduled issue_stream_cmd()</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Richard,</div>
<div><br>
</div>
<div>I believe what you're looking for is the depth of the command queue. F=
or the X310, this FIFO has a depth of 16. Any command that you issue to the=
 X310 that has a command time set will be held in this FIFO until the radio=
's time matches the command time,
 at which point the command is executed.</div>
<div><br>
</div>
<div>You should definitely keep track of the state of the command queue - o=
verflowing this FIFO will put the radio in a bad state, usually requiring a=
 restart.
<br>
</div>
<div><br>
</div>
<div><a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__u=
srp.html#a191b78b00d051d3d51c2f719361c1fb5">https://files.ettus.com/manual/=
classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5</a><=
/div>
<div><br>
</div>
<div><a href=3D"https://files.ettus.com/manual/classuhd_1_1time__spec__t.ht=
ml">https://files.ettus.com/manual/classuhd_1_1time__spec__t.html</a></div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020 at 2:01 PM Richa=
rd Joseph Muri via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif">
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
</body>
</html>

--_000_157911898491848649mitedu_--


--===============5074052120454224595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5074052120454224595==--

