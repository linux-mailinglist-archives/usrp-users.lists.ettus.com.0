Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 333AA2E86B5
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jan 2021 08:48:07 +0100 (CET)
Received: from [::1] (port=46072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvbdr-0001hq-61; Sat, 02 Jan 2021 02:48:03 -0500
Received: from postman.dtnt.info ([62.219.91.51]:48418)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kvbdl-0001e4-Ac
 for usrp-users@lists.ettus.com; Sat, 02 Jan 2021 02:47:57 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 562D94194E
 for <usrp-users@lists.ettus.com>; Sat,  2 Jan 2021 09:45:08 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id AA6C99FEB4
 for <usrp-users@lists.ettus.com>; Sat,  2 Jan 2021 09:45:07 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id PcBcREivt6HG for <usrp-users@lists.ettus.com>;
 Sat,  2 Jan 2021 09:45:06 +0200 (IST)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by o.dtnt.email (Postfix) with ESMTPSA id 6666E9FBA7
 for <usrp-users@lists.ettus.com>; Sat,  2 Jan 2021 09:45:06 +0200 (IST)
Received: by mail-oi1-f170.google.com with SMTP id w124so26345590oia.6
 for <usrp-users@lists.ettus.com>; Fri, 01 Jan 2021 23:45:06 -0800 (PST)
X-Gm-Message-State: AOAM531ONxWoyVxhhhtlPTIpCiQEpmYdy0KnlGJMUVUMxb8ZwTG4jX8g
 5tHgEjvjhw01g8vv4Y5C3RdYwelcKXMC4H8zPCg=
X-Google-Smtp-Source: ABdhPJxABiobcAl9J2jtl9pa9JRGAXZyYhhsfKjxY0cRoQfxpJ0URgovOfqXVSs2EBwSsj718Q18bhUofkzUli2+PPk=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr12349963oic.47.1609573504043; 
 Fri, 01 Jan 2021 23:45:04 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 2 Jan 2021 09:44:53 +0200
X-Gmail-Original-Message-ID: <CACDReSzhpEEKSn4hu-uwkrAFjQQ2Gu-17XZ+FFB7weFzH=nR4A@mail.gmail.com>
Message-ID: <CACDReSzhpEEKSn4hu-uwkrAFjQQ2Gu-17XZ+FFB7weFzH=nR4A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 562D94194E.A256D
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Hacking E310 units for synchronization
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============6195156944309440191=="
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

--===============6195156944309440191==
Content-Type: multipart/alternative; boundary="000000000000f2cef705b7e608a6"

--000000000000f2cef705b7e608a6
Content-Type: text/plain; charset="UTF-8"

Hello,

I must say that I am a bit frustrated.
When I purchased multiple E310 units it was with the hope I will be able to
synchronize them mainly based on:
https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices,
it shows the E310 as MIMO capable and having a reference clock input.
Of course, now I know that not to be true. At least the reference clock
part. It seems that the MIMO part might be incorrect as well.

If I hack the clock and patch an external clock connector to be used
instead of the internal TCXO will I be able, using existing UHD software
and firmware, to synchronize multiple E310 units?

I will be able to provide a common clock to multiple units and I will be
able to provide a 1-PPS signal through the SYNC pins of multiple units that
is generated from the same common clock.
I need these E310 to transmit and have their base-band samples perfectly
time aligned.

How is multi-chip synchronization of the AD9361 devices being done by UHD?
By using the SYNC pin and setting usrp->set_time_source("external")? Is it
enough? Do I need to handle it on my own? How?

I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide an
external clock of different frequency? Maybe 10 MHz? Or does it require a
major change in software or firmware?

Does anybody have a different idea how to get E310 units synchronized at
sample level without voiding the warranty and hacking an external clock?

Please help.

Regards,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000f2cef705b7e608a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I must say that I am =
a bit frustrated.</div><div>When I purchased multiple E310 units it was wit=
h the hope I will be able to synchronize them mainly based on: <a href=3D"h=
ttps://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices">=
https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices<=
/a>, it shows the E310 as MIMO capable and having a reference clock input.<=
/div><div>Of course, now I know that not to be true. At least the reference=
 clock part. It seems that the MIMO part might be incorrect as well.<br></d=
iv><div><br></div><div>If I hack the clock and patch an external clock conn=
ector to be used instead of the internal TCXO will I be able, using existin=
g UHD software and firmware, to synchronize multiple E310 units? <br></div>=
<div><br></div><div>I will be able to provide a common clock to multiple un=
its and I will be able to provide a 1-PPS signal through the SYNC pins of m=
ultiple units that is generated from the same common clock.<br></div><div>I=
 need these E310 to transmit and have their base-band samples perfectly tim=
e aligned. <br></div><div><br></div><div>How is multi-chip synchronization =
of the AD9361 devices being done by UHD? By using the SYNC pin and setting=
=20
usrp-&gt;set_time_source(<span class=3D"gmail-stringliteral">&quot;external=
&quot;</span>)? Is it enough? Do I need to handle it on my own? How?<br></d=
iv><div><br></div><div>
I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide an e=
xternal clock of different frequency? Maybe 10 MHz? Or does it require a ma=
jor change in software or firmware? <br></div><div><br></div><div>Does anyb=
ody have a different idea how to get E310 units synchronized at sample leve=
l without voiding the warranty and hacking an external clock?</div><div><br=
></div><div>Please help.<br></div><div><br></div><div></div><div>Regards,</=
div><div>Ofer Saferman<br></div><div><br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000f2cef705b7e608a6--


--===============6195156944309440191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6195156944309440191==--

