Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D91D14C26A
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 23:00:33 +0100 (CET)
Received: from [::1] (port=34446 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwYuM-0005sX-1T; Tue, 28 Jan 2020 17:00:30 -0500
Received: from outgoing-exchange-5.mit.edu ([18.9.28.59]:36841)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ri28856@mit.edu>) id 1iwYuI-0005db-4i
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 17:00:26 -0500
Received: from oc11exedge2.exchange.mit.edu (OC11EXEDGE2.EXCHANGE.MIT.EDU
 [18.9.3.18])
 by outgoing-exchange-5.mit.edu (8.14.7/8.12.4) with ESMTP id 00SM1H3p000392
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 17:02:33 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11exedge2.exchange.mit.edu (18.9.3.18) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Tue, 28 Jan 2020 16:59:05 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Tue, 28 Jan 2020 16:59:17 -0500
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Tue,
 28 Jan 2020 16:59:17 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Frequency hopping on short time scale using DSP tuning
Thread-Index: AQHV1iUUbuCiGy9Ov0eh0XXl78fbvA==
Date: Tue, 28 Jan 2020 21:59:17 +0000
Message-ID: <1580248757184.29364@mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: [USRP-users] Frequency hopping on short time scale using DSP tuning
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
Content-Type: multipart/mixed; boundary="===============6693407050754423532=="
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

--===============6693407050754423532==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_158024875718429364mitedu_"

--_000_158024875718429364mitedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I have an application that schedules transmissions/receives on a short time=
 scale (order of tens of microseconds). I'm attempting to gauge the feasibi=
lity of using a x310 with UBX-160 daughterboards and 10Gb ethernet for the =
application.


I wrote a quick test to see approximately how long it would take to schedul=
e a bunch of DSP retunes:

for (int i =3D 0; i < packets_to_send; i +=3D batch_size)
    {
        start =3D std::chrono::system_clock::now();
        for (int j =3D 0; j < batch_size; j++)
        {
            // Hop at a scheduled time
            usrp->set_tx_freq(tune_request.getNextTuneRequest());
            usrp->clear_command_time();
            cmd_time +=3D schedule_increment;
            usrp->set_command_time(cmd_time);
        }
        stop =3D std::chrono::system_clock::now();
        elapsed =3D std::chrono::duration_cast<std::chrono::microseconds>(s=
top - start).count();
        if (elapsed < batch_latency)
        {
            busyCheck(batch_latency - elapsed);
        }
        else
        {
            long_elapsed++;
            std::cout << elapsed << ", ";
        }
    }


The behavior is slightly different than I would expect. I know the USRP has=
 a command FIFO with approximately 16 slots to queue up commands. I would e=
xpect that the first chunk of commands would execute quickly, and then the =
set_tx_freq call would start blocking as it waits for the queue to have spa=
ce. Instead I see that the first handful of commands take on the order of 1=
000 us, and it steadily decreases in time until hitting a steady state wher=
e it takes 250 - 300 us to schedule a command.


Are there any obvious mistakes in my test setup? Can I reduce my retune com=
mand times to under 100 us?


Thanks,

Richard

--_000_158024875718429364mitedu_
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
<p>I have an application that schedules transmissions/receives on a short t=
ime scale (order of tens of microseconds). I'm attempting to gauge the feas=
ibility of using a x310 with UBX-160 daughterboards and&nbsp;10Gb ethernet =
for the application.</p>
<p><br>
</p>
<p>I wrote a quick test to see approximately how long it would take to sche=
dule a bunch of DSP retunes:</p>
for&nbsp;(int&nbsp;i&nbsp;=3D&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;packets_to_send=
;&nbsp;i&nbsp;&#43;=3D&nbsp;batch_size)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start&nbsp;=3D&nbsp;std::ch=
rono::system_clock::now();<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;j&nbsp;=
=3D&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;batch_size;&nbsp;j&#43;&#43;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&=
nbsp;Hop&nbsp;at&nbsp;a&nbsp;scheduled&nbsp;time<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usr=
p-&gt;set_tx_freq(tune_request.getNextTuneRequest());<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usr=
p-&gt;clear_command_time();<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmd=
_time&nbsp;&#43;=3D&nbsp;schedule_increment;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usr=
p-&gt;set_command_time(cmd_time);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stop&nbsp;=3D&nbsp;std::chr=
ono::system_clock::now();<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elapsed&nbsp;=3D&nbsp;std::=
chrono::duration_cast&lt;std::chrono::microseconds&gt;(stop&nbsp;-&nbsp;sta=
rt).count();<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(elapsed&nbsp;&lt;&=
nbsp;batch_latency)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bus=
yCheck(batch_latency&nbsp;-&nbsp;elapsed);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lon=
g_elapsed&#43;&#43;;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;std=
::cout&nbsp;&lt;&lt;&nbsp;elapsed&nbsp;&lt;&lt;&nbsp;&quot;,&nbsp;&quot;;<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;}
<p><br>
</p>
<p>The behavior is slightly different than I would expect. I know the USRP =
has a command FIFO with approximately 16 slots to queue up commands. I woul=
d expect that the first chunk of commands would execute quickly, and then t=
he set_tx_freq call would start
 blocking as it waits for the queue to have space. Instead I see that the f=
irst handful of commands take on the order of 1000 us, and it steadily decr=
eases in time until hitting a steady state where it takes 250 - 300 us to s=
chedule a command.
</p>
<p><br>
</p>
<p>Are there any obvious mistakes in my test setup? Can I reduce my retune =
command times to under 100 us?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Richard<br>
</p>
</body>
</html>

--_000_158024875718429364mitedu_--


--===============6693407050754423532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6693407050754423532==--

