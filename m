Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F08BE10CFA4
	for <lists+usrp-users@lfdr.de>; Thu, 28 Nov 2019 23:01:54 +0100 (CET)
Received: from [::1] (port=41844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iaRrD-0003Ah-7l; Thu, 28 Nov 2019 17:01:51 -0500
Received: from mail-vs1-f41.google.com ([209.85.217.41]:46773)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <keithkotyk@gmail.com>)
 id 1iaRrA-00033u-5D
 for usrp-users@lists.ettus.com; Thu, 28 Nov 2019 17:01:48 -0500
Received: by mail-vs1-f41.google.com with SMTP id i13so13446190vso.13
 for <usrp-users@lists.ettus.com>; Thu, 28 Nov 2019 14:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=E8qjWfW7OO9aUKIrxsFNr90l57whWes0qBEFGFGy5QE=;
 b=qQE6u2bkbE+em8XPxKg/mm+Jt7mwmj6hEhxNqr6P8otktO0645eryd+FsRGjPOyM3+
 BaZ+m4VPwk8zplU7zFFkaZcicF1kgSpm1yCNCjgQVVO3mfhGwM5DQEDgOpoGwbR3AIX2
 DJgXXAWZ66lG9TSlVCOxkMRMj3zQwcPI0zObqU5wIDqvQutd46N0cctw4IuEuvdDtaFz
 C1dcYHqdzesSpAOrdQ5bQIYLAWB/HBdQWqeXdW5X/d2+H1yTmu46RQGq8YacRcPeb/xY
 sM6+7uLMsQRn0cm0aEJyojGIjxnImLCDg9WiReXsZ3069uqgcvfiebQ01yPKLEb+wFb1
 ns5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=E8qjWfW7OO9aUKIrxsFNr90l57whWes0qBEFGFGy5QE=;
 b=JVfg25s66VtCPL05d2h3qtmM32dfcChS9nD9I5hJMNGvJTp5mJY6QiOjZLgSVG0aEO
 YCsmfT9XNdJZI+EmP26hpiSLBlgvwNx4u263SiM10Y/DBxbGFZKkBibDOOx/IcU7Qeeo
 5eD7DCOg2Tjf//lsmt4lWIMrQdY5X04Xd6TItqlKh12JWYg6WqoDAyz6gxwzCSeFlQg4
 KPfugSjTFjDgIcSACB4Q6NCE/Qyt1353qv4BBP04GjIGL5jRlOIj0QxRtx9DA5RZrVT3
 KpSj6AylxWJzvfmWdzZ09TyO4BtCh8LDcCSDIelb0C5UvC9Mm9o7RosSaSEvCQinXdPw
 Zc/Q==
X-Gm-Message-State: APjAAAV0DK8LzAw7rL2b7q28mJAOKk/f3wnReQCBK+iKrLwlWwooXIlw
 rZwOaxmuOPKRVSMOiMIU/J2Dyx0BlQ25Yf/Mi4woq29g
X-Google-Smtp-Source: APXvYqyNPuKrXGxTLc6/zjR8fX09AO6pby9+KmnaqmMrf6Zen3yv+9GUxLJYzXoZ38Xz67/T8W20AK5C5FEnlc2uy3Y=
X-Received: by 2002:a67:fdd4:: with SMTP id l20mr30244637vsq.227.1574978467054; 
 Thu, 28 Nov 2019 14:01:07 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 28 Nov 2019 22:00:40 +0000
Message-ID: <CAFGMRUA3J2+jmxMTveXitsD22DEVMA9ea7tORC6_HwDqmqPBJQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] GPIO ATR signals
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
From: Keith k via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Keith k <keithkotyk@gmail.com>
Content-Type: multipart/mixed; boundary="===============8170390140663837858=="
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

--===============8170390140663837858==
Content-Type: multipart/alternative; boundary="0000000000000ec76805986f408a"

--0000000000000ec76805986f408a
Content-Type: text/plain; charset="UTF-8"

Hello all

Is it possible to switch between active-low and active-high states if using
ATR on the gpios?

-- 
-Keith Kotyk

--0000000000000ec76805986f408a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all</div><div><br></div><div>Is it possible to =
switch between active-low and active-high states if using ATR on the gpios?=
 <br></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr">-Keith Kotyk</div></div></di=
v></div>

--0000000000000ec76805986f408a--


--===============8170390140663837858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8170390140663837858==--

