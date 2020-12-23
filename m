Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBC02E223F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Dec 2020 22:50:55 +0100 (CET)
Received: from [::1] (port=40016 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksC1z-000372-KW; Wed, 23 Dec 2020 16:50:51 -0500
Received: from postman.dtnt.info ([62.219.91.51]:44740)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1ksC1v-00032X-Go
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 16:50:47 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id E344A4AE6F
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 23:49:29 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id D75929FB80
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 23:49:29 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id zwZ9woLrBJpp for <usrp-users@lists.ettus.com>;
 Wed, 23 Dec 2020 23:49:29 +0200 (IST)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by o.dtnt.email (Postfix) with ESMTPSA id 9A18E9F90D
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 23:49:28 +0200 (IST)
Received: by mail-oi1-f178.google.com with SMTP id p5so555460oif.7
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 13:49:28 -0800 (PST)
X-Gm-Message-State: AOAM5318vXYaG2ZV38RBGchBjo0TFcRKsa5SIIxBcupt6JBkUbR0YLZ2
 D8vU3u5L2K/YY1hjbrgI5UYkFFYMHSMjb1PU6Pg=
X-Google-Smtp-Source: ABdhPJx17SJ9i2ve4PREJXwI+dk4p4Y2iQN9Ga5hWZ6Xr6WQgbr3eR3V758npVezrP48rZAShbHA9rBNDqNUJtYNgUQ=
X-Received: by 2002:aca:fc96:: with SMTP id a144mr1193959oii.146.1608760166489; 
 Wed, 23 Dec 2020 13:49:26 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 23 Dec 2020 23:49:15 +0200
X-Gmail-Original-Message-ID: <CACDReSx4uTpos7BCvO+6jQ=8H8BWsduyqyx2293BXYRoQ0Be9g@mail.gmail.com>
Message-ID: <CACDReSx4uTpos7BCvO+6jQ=8H8BWsduyqyx2293BXYRoQ0Be9g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: E344A4AE6F.A5317
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Synchronization of E310 units
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
Content-Type: multipart/mixed; boundary="===============5570824645865851658=="
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

--===============5570824645865851658==
Content-Type: multipart/alternative; boundary="00000000000040a5a005b728aa34"

--00000000000040a5a005b728aa34
Content-Type: text/plain; charset="UTF-8"

 Hello,

I asked a few weeks ago about the possibility to use the internal GPS
receivers of the E310 to synchronize multiple units.
Someone explained that the internal GPS receiver and its associated
synchronization algorithm are not good enough and I will not get
synchronization that is better than several tenths of microseconds.

What would you suggest is the best way to synchronize E310 units so that
they will be synchronized at base-band sample level? I mean that when
transmitting from 2 (or more) different E310 units the Tx samples will be
perfectly time-aligned on different units.

I noticed there is a SYNC input and somewhere I read that it is possible to
provide an external 1PPS signal. Could someone comment on this feature?
Explain if it works? How to make it work in terms of software setup?
Maybe the SYNC input can be used differently for synchronization?

Is there another way to achieve the synchronization that I want, given that
the E310 has no external reference clock input?

Regards,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000040a5a005b728aa34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hello,</div><div><br></div><div>I asked a few weeks ago about the poss=
ibility to use the internal GPS receivers of the E310 to synchronize multip=
le units.</div><div>Someone
 explained that the internal GPS receiver and its associated=20
synchronization algorithm are not good enough and I will not get=20
synchronization that is better than several tenths of microseconds.</div><d=
iv><br></div><div>What
 would you suggest is the best way to synchronize E310 units so that=20
they will be synchronized at base-band sample level? I mean that when=20
transmitting from 2 (or more) different E310 units the Tx samples will=20
be perfectly time-aligned on different units.</div><div><br></div><div>I
 noticed there is a SYNC input and somewhere I read that it is possible=20
to provide an external 1PPS signal. Could someone comment on this=20
feature? Explain if it works? How to make it work in terms of software=20
setup?</div><div>Maybe the SYNC input can be used differently for synchroni=
zation?<br></div><div><br></div><div>Is there another way to achieve the sy=
nchronization that I want, given that the E310 has no external reference cl=
ock input?<font color=3D"#888888"><br></font></div><div><font color=3D"#888=
888"><br></font></div><div><font color=3D"#888888">Regards,</font></div><di=
v><font color=3D"#888888">Ofer Saferman<br></font></div>

</div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000040a5a005b728aa34--


--===============5570824645865851658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5570824645865851658==--

