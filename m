Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2736D2CF4BC
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 20:28:32 +0100 (CET)
Received: from [::1] (port=38066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klGkn-0006TB-Fp; Fri, 04 Dec 2020 14:28:29 -0500
Received: from postman.dtnt.info ([62.219.91.51]:52848)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1klGkj-0006Fd-1q
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 14:28:25 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id DA0314A80B
 for <usrp-users@lists.ettus.com>; Fri,  4 Dec 2020 21:26:50 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id C54509FB7C
 for <usrp-users@lists.ettus.com>; Fri,  4 Dec 2020 21:26:45 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QQ2N8gCRg6X9 for <usrp-users@lists.ettus.com>;
 Fri,  4 Dec 2020 21:26:44 +0200 (IST)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by o.dtnt.email (Postfix) with ESMTPSA id 810C89F974
 for <usrp-users@lists.ettus.com>; Fri,  4 Dec 2020 21:26:44 +0200 (IST)
Received: by mail-oi1-f169.google.com with SMTP id k2so7340883oic.13
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 11:26:44 -0800 (PST)
X-Gm-Message-State: AOAM533goE9MNjALEQ6HgF3cVlavBK4gsbJZrXwdaAbInZ63gcZYHGtE
 GxPzHbama7pgWmCYA+gvPPb9Wd2zwmEbGBQ4UCU=
X-Google-Smtp-Source: ABdhPJzCIiF+gKXYDzW9f0Ot5pC9ZWPSv+11lwE+ppjuMRo4W2ovCO61YiQuOOiQaPq5r0lC6QJPqZd1ralzs+0gSSA=
X-Received: by 2002:a05:6808:18a:: with SMTP id
 w10mr4378273oic.146.1607110002322; 
 Fri, 04 Dec 2020 11:26:42 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 4 Dec 2020 21:26:31 +0200
X-Gmail-Original-Message-ID: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
Message-ID: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: DA0314A80B.AFDFE
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Using GPS disciplining on E310
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
Content-Type: multipart/mixed; boundary="===============8856416452115867186=="
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

--===============8856416452115867186==
Content-Type: multipart/alternative; boundary="000000000000cdb2d105b5a874b3"

--000000000000cdb2d105b5a874b3
Content-Type: text/plain; charset="UTF-8"

Hello,
I would like to synchronize several E310 devices.
It is my understanding that the only way to do that is by connecting a GPS
antenna and performing disciplining to a derived 1-PPS signal.
I have a few questions to help me better understand how to make it work:
1. Does GPS disciplining achieve frequency lock between devices or phase
lock?
2. How to start transmitting at the exact moment on all synchronized
devices? Can the unit clock be synchronized to GPS clock? and then just
start the transmission with some delay from unit clock on all devices? Can
someone share the relevant C commands to perform the time synchronization
to GPS clock or point to a relevant code example?

Thanks,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000cdb2d105b5a874b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I would like to synchronize several =
E310 devices.</div><div>It is my understanding that the only way to do that=
 is by connecting a GPS antenna and performing disciplining to a derived 1-=
PPS signal.</div><div>I have a few questions to help me better understand h=
ow to make it work:</div><div>1. Does GPS disciplining achieve frequency lo=
ck between devices or phase lock?</div><div>2. How to start transmitting at=
 the exact moment on all synchronized devices? Can the unit clock be synchr=
onized to GPS clock? and then just start the transmission with some delay f=
rom unit clock on all devices? Can someone share the relevant C commands to=
 perform the time synchronization to GPS clock or point to a relevant code =
example?</div><div><br></div><div>Thanks,</div><div>Ofer Saferman<br></div>=
<div><br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000cdb2d105b5a874b3--


--===============8856416452115867186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8856416452115867186==--

