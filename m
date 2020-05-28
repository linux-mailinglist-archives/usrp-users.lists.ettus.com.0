Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4861E1E676E
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 18:30:49 +0200 (CEST)
Received: from [::1] (port=44620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeLQa-0003wP-Ey; Thu, 28 May 2020 12:30:44 -0400
Received: from relay02-mailcontrol.conova.com ([217.196.144.162]:46120)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93)
 (envelope-from <prvs=0410203699=s1810567006@students.fh-hagenberg.at>)
 id 1jeLQV-0003rc-5i
 for usrp-users@lists.ettus.com; Thu, 28 May 2020 12:30:39 -0400
Received: from fhooembox2.fh-ooe.at ([193.170.127.183]) by
 relay02-mailcontrol.conova.com; Thu, 28 May 2020 18:29:57 +0200
Received: from FHOOEMBOX2.fhooe.at (10.140.60.11) by fhooembox2.fhooe.at
 (10.140.60.11) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 28 May
 2020 18:29:55 +0200
Received: from FHOOEMBOX2.fhooe.at ([fe80::6dde:8694:7bff:6faa]) by
 fhooembox2.fhooe.at ([fe80::6dde:8694:7bff:6faa%12]) with mapi id
 15.00.1497.006; Thu, 28 May 2020 18:29:55 +0200
To: Marcus D Leech <patchvonbraun@gmail.com>, Sam Reiter
 <sam.reiter8@gmail.com>
Thread-Topic: [USRP-users] X310: control frontend with custom RFNoC blocks
Thread-Index: AQHWNB7o1x3tiB4dDkGOTXXi/nMTjKi8AFmAgAAIhICAAad3Mg==
Date: Thu, 28 May 2020 16:29:54 +0000
Message-ID: <1590683394860.91047@students.fh-hagenberg.at>
References: <CADBWrHhNXXfDzx8gLT-d1ypATCFLznosSo4E=B9fkMRS1ThL+Q@mail.gmail.com>,
 <C748A362-74E5-442B-AC2E-09AC104139DF@gmail.com>
In-Reply-To: <C748A362-74E5-442B-AC2E-09AC104139DF@gmail.com>
Accept-Language: en-US, de-AT
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.140.62.9]
MIME-Version: 1.0
X-cloud-security-sender: s1810567006@students.fh-hagenberg.at
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 relay02-mailcontrol.conova.com with 09506F0065F
X-cloud-security-connect: fhooembox2.fh-ooe.at[193.170.127.183], TLS=1,
 IP=193.170.127.183
X-cloud-security: scantime:.2829
Subject: Re: [USRP-users] X310: control frontend with custom RFNoC blocks
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
From: Haberleitner David - S1810567006 via USRP-users
 <usrp-users@lists.ettus.com>
Reply-To: Haberleitner David - S1810567006
 <S1810567006@students.fh-hagenberg.at>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1787901122119534897=="
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

--===============1787901122119534897==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_159068339486091047studentsfhhagenbergat_"

--_000_159068339486091047studentsfhhagenbergat_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Sam, Marcus,


The approach with timed commands indeed seems a lot more manageable. We're =
gonna try this first.

________________________________
From: Marcus D Leech <patchvonbraun@gmail.com>
Sent: Wednesday, May 27, 2020 7:07 PM
To: Sam Reiter
Cc: Haberleitner David - S1810567006; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] X310: control frontend with custom RFNoC blocks

I don't know that much about RFNOC structure, but the tuning latency is dom=
inated by SPI transaction time, and the tome it takes the chips to tune to =
a new frequency.

That is much larger than the host and Ethernet side of things.

Doing what the host does to tune the chips (a bunch of math to set various =
registers) in the FPGA will consume a fair amount of real estate on the FPG=
A.

Sent from my iPhone

On May 27, 2020, at 12:38 PM, Sam Reiter via USRP-users <usrp-users@lists.e=
ttus.com> wrote:

?
David,

Do you know ahead of time what the frequency sweeps are going to be, or do =
you need to have your RFNoC block creating and scheduling them dynamically?

If you know your frequency sweep list ahead of time, a much easier techniqu=
e would be for you to send your tune requests from host to radio as timed c=
ommands. This way you can queue up hops that will execute at a precise time=
stamp in your data  stream. Depending on the length of your frequency list,=
 you may need to expand the size of the command queue in your FPGA image, b=
ut that would be a much more manageable task than creating a block that con=
structs and issues commands.

-Sam

On Wed, May 27, 2020 at 7:04 AM Haberleitner David - S1810567006 via USRP-u=
sers <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hi everyone,


for our project we would like to control frontend settings directly from th=
e hardware to perform fast frequency sweeps.
Is there a way to do that?


From out research it seems that the frontend chips (UBX160 in our case) are=
 controlled via a SPI register in the Radio-NoC block. But we haven't figur=
ed out how to control this register from our custom block (via the Command =
Interface?).


Thanks,
David

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_159068339486091047studentsfhhagenbergat_
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
<p>Thanks Sam, Marcus,</p>
<p><br>
</p>
<p>The approach with timed commands indeed seems a lot more&nbsp;manageable=
.&nbsp;We're gonna try&nbsp;this first.</p>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus D Leech &lt;=
patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, May 27, 2020 7:07 PM<br>
<b>To:</b> Sam Reiter<br>
<b>Cc:</b> Haberleitner David - S1810567006; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] X310: control frontend with custom RFNoC b=
locks</font>
<div>&nbsp;</div>
</div>
<div>I don&#8217;t know that much about RFNOC structure, but the tuning lat=
ency is dominated by SPI transaction time, and the tome it takes the chips =
to tune to a new frequency.&nbsp;
<div><br>
</div>
<div>That is much larger than the host and Ethernet side of things.&nbsp;</=
div>
<div><br>
</div>
<div>Doing what the host does to tune the chips (a bunch of math to set var=
ious registers) in the FPGA will consume a fair amount of real estate on th=
e FPGA.&nbsp;<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On May 27, 2020, at 12:38 PM, Sam Reiter via USRP=
-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">&#65279;
<div dir=3D"ltr">David,
<div><br>
</div>
<div>Do you know ahead of time what the frequency sweeps are going to be, o=
r do you need to have your RFNoC block creating and scheduling them dynamic=
ally?</div>
<div><br>
</div>
<div>If you know your frequency sweep list ahead of time, a much easier tec=
hnique would be for you to send your tune requests from host to radio as ti=
med commands. This way you can queue up hops that will execute at a precise=
 timestamp in your data&nbsp; stream.
 Depending on the length of your frequency list, you may need to expand the=
 size of the command queue in your FPGA image, but that would be a much mor=
e manageable task than creating a block that constructs and issues commands=
.&nbsp;</div>
<div><br>
</div>
<div>-Sam</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 27, 2020 at 7:04 AM Haber=
leitner David - S1810567006 via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi everyone,</p>
<p><br>
</p>
<p>for our project we would like to control frontend settings directly from=
 the hardware to perform fast frequency sweeps.<br>
Is there a way to do that?</p>
<p><br>
</p>
<p>From out research it seems that the frontend chips (UBX160 in our case) =
are controlled via a SPI register in the Radio-NoC block. But we haven't fi=
gured out how to control this register from our custom block (via the Comma=
nd Interface?).</p>
<p><br>
</p>
<p>Thanks,<br>
David<br>
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
<span>_______________________________________________</span><br>
<span>USRP-users mailing list</span><br>
<span>USRP-users@lists.ettus.com</span><br>
<span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</s=
pan><br>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_159068339486091047studentsfhhagenbergat_--


--===============1787901122119534897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1787901122119534897==--

