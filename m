Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C4A6E4A6
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 13:03:10 +0200 (CEST)
Received: from [::1] (port=51516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoQfM-0004sg-J5; Fri, 19 Jul 2019 07:03:08 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:35847)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saimanoj.katta@cumucore.com>)
 id 1hoQfI-0004lf-II
 for usrp-users@lists.ettus.com; Fri, 19 Jul 2019 07:03:04 -0400
Received: by mail-qt1-f177.google.com with SMTP id z4so30496191qtc.3
 for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2019 04:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumucore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZFWh2PIvxx0ymASv3HRfqYNb5+o5rfkKLqGRjRSU+Fc=;
 b=ItybJ1E3wYTnS7c0MyxQecmwAQMzoHU7S86GID4MFS+22xE5f1ZXnyLyvhWAQqA17R
 zrypjOzfYdO8qA0YjBXvYeNzBqVxhJyDywR4ioUQQeKp2PGLCTPorKde8m9i+hOf0yZQ
 WduwzIRICGYlfrWr6cv2tgV4Z+HgudanozYgDMO32RJLhDVAQZ30C7/lrW8ChEm/fPT6
 /Zh5XEbCp8H7MRV8APgJqchW9X8zpIEaaL0MogGH9h7CdnvAW4mYJe6yEnPZoMJNJ5iw
 5bp4QDLQC/EK8Dfhshkz+4eJYX84y4KGy0BpyvEqwWdf3x0Xceh9jqYDjHToK8FvaE8a
 Nkzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZFWh2PIvxx0ymASv3HRfqYNb5+o5rfkKLqGRjRSU+Fc=;
 b=iqLBUKkkOGZKq7hZZ9kP/txOxbuAC1vKqq4GP6t58Q3nLVC1ZW5GrDAgffcY6l8HqJ
 i6vE0wlHkyoN1NQNPDhJHLS2SbhqmXG0b0O+xNWaT1qlU3PUo/SC84XI8vAcwyMicy3V
 VZB43o94DzoG+DX8PMja/c7b6qoSzYXY3D6Ap2ib9kH2DUZ+SEX5SBpfU4cQ3FCyI+WX
 ElqD+Wo1fx7+aUJcjzHxhmFgffHK8yJgYHNvHydKc2CuM6JcqTcn+nBcUiWW1qScCZDo
 jLcSTKb0bhF74DLPYBAiTK8OQQcJxvH4KRJK7FCtm8k7nqs40ZOaf1pHnhNhzKcGrxKc
 qAoQ==
X-Gm-Message-State: APjAAAUKERfYJhUIEmFiHDa4n6tOCZgqoIyP1fxo26fVSKj7Q08tjSAI
 6sNFlpJOYHu4Ro8j8stc9DacR7JqjDnESneijqv7l1LW
X-Google-Smtp-Source: APXvYqx1L9n/XkpgzUYzxZMex0uHa1TxeGF3LbOQ+I8DmVUfwGxgkVX0qBTyN9s00y8MtLRTMm91ORSjRKPp41t28RE=
X-Received: by 2002:ac8:5315:: with SMTP id t21mr36668363qtn.229.1563534138982; 
 Fri, 19 Jul 2019 04:02:18 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 19 Jul 2019 14:02:08 +0300
Message-ID: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Detection of USRP X310
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
From: Saimanoj Katta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saimanoj Katta <saimanoj.katta@cumucore.com>
Content-Type: multipart/mixed; boundary="===============1361636586210477471=="
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

--===============1361636586210477471==
Content-Type: multipart/alternative; boundary="000000000000f2fe65058e06a85f"

--000000000000f2fe65058e06a85f
Content-Type: text/plain; charset="UTF-8"

Hi,

I was previously working with the USRP X310. I wanted to enable Dual
Connectivity mode for enabling two ports with 10 Giga bit connectivity. I
ran the update:  uhd_image_loader --args "type=x300,addr=192.168.50.2,
fpga=XG". Since this, I have not been able to detect my USRP.

*My setup: * Ubuntu is 18.04 and the UHD version is UHD_3.14.1.0-0-gbfb9c1c7
I have connected to the laptop via thunderbolt port which is equivalent to
USB-3.0. Firewall is disabled. It is not behind a router/switch. Host
interface IP address is 192.168.10.3 and subnet is 255.255.255.0

I have tried the following:

1) Ran as root user - uhd_find_devices, uhd_usrp_probe and
uhd_images_downloader.
Device is not found in first two options. And, the fpga_default images seem
to be up to date.
2) By default, USRPs have addresses from the 192.168.10.XXX range (XXX=2 in
factory settings). I searched addresses in this range, but still USRP not
detected. Ping to the address also fails.

Any suggestions would be appreciated to detect the device! Many thanks in
advance.

Regards,
Saimanoj

--000000000000f2fe65058e06a85f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I was previously wo=
rking with the USRP X310. I wanted to enable Dual Connectivity mode for ena=
bling two ports with 10 Giga bit connectivity. I ran the update:=C2=A0 <spa=
n style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-do=
cs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">uhd_image_loader --a=
rgs &quot;type=3Dx300,addr=3D192.168.50.2, fpga=3DXG&quot;.</span><span sty=
le=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-in=
ternal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">  Since this, I have not =
been able to detect my USRP. <br></span></div><div><span style=3D"font-size=
:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-387=
92c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><div><span style=3D"fon=
t-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-gu=
id-38792c7d-7fff-6350-996e-1ea2104ef635"><b>My setup: </b><span style=3D"fo=
nt-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635"> Ubuntu is 18.04 and the UHD vers=
ion is UHD_3.14.1.0-0-gbfb9c1c7</span></span></div><div><span style=3D"font=
-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-gui=
d-38792c7d-7fff-6350-996e-1ea2104ef635"><span style=3D"font-size:11pt;font-=
family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7fff-=
6350-996e-1ea2104ef635">I have connected to the laptop via thunderbolt port=
 which is equivalent to USB-3.0. Firewall is disabled. It is not behind a r=
outer/switch. Host interface IP address is 192.168.10.3 and subnet is 255.2=
55.255.0 </span></span></div><div><span style=3D"font-size:11pt;font-family=
:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-s=
tyle:normal;font-variant:normal;text-decoration:none;vertical-align:baselin=
e;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7fff-6350-9=
96e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;font-=
family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7fff-=
6350-996e-1ea2104ef635">I have tried the following: <br></span></div><div><=
span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-=
color:transparent;font-weight:400;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail=
-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div>=
<div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backg=
round-color:transparent;font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D=
"gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">1) Ran as r=
oot user - uhd_find_devices, uhd_usrp_probe and uhd_images_downloader. <br>=
</span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635=
">Device is not found in first two options. And, the fpga_default images se=
em to be up to date. <br></span></div><div><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7f=
ff-6350-996e-1ea2104ef635">2) By default, USRPs have addresses from the <co=
de>192.168.10.XXX</code> range (<code>XXX=3D2</code> in factory settings). =
I searched addresses in this range, but still USRP not detected. Ping to th=
e address also fails. <br></span></div><div><span style=3D"font-size:11pt;f=
ont-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7=
fff-6350-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:=
11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-internal-guid-3879=
2c7d-7fff-6350-996e-1ea2104ef635">Any suggestions would be appreciated to d=
etect the device! Many thanks in advance. <br></span></div><div><span style=
=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-docs-inte=
rnal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><div><span=
 style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-weight:400;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-doc=
s-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Regards, <br></span><=
/div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);=
background-color:transparent;font-weight:400;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" =
id=3D"gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Saiman=
oj<br></span></div><div><span style=3D"font-size:11pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap" id=3D"gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea210=
4ef635"><br></span></div></div>

--000000000000f2fe65058e06a85f--


--===============1361636586210477471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1361636586210477471==--

