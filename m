Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A05DE0B3A
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 20:12:53 +0200 (CEST)
Received: from [::1] (port=35032 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMyeJ-0002Gs-P0; Tue, 22 Oct 2019 14:12:51 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:36613)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1iMyeF-00028G-Lt
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 14:12:47 -0400
Received: by mail-qk1-f195.google.com with SMTP id y189so17177299qkc.3
 for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2019 11:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=yUM+Ixeo3OmmhhPi5AMuI+IEkhOEkINaY9YmjAsvMnM=;
 b=XtaEAzrG4QT8HjQQZBgRkA39TwWDjTpJUOLysv9Ouh9YfixwaCRNppSa98oTs4Xq0e
 14c6+a18GETtZ7eMjCxhY9sWOl1YCVDYbHaOCDFwuyTWAXMsMKKLwensvAU+wjEyOObo
 abyavftfHfPTt4fuRJPmT+YwsN9LVUAaKEDJPOaruydXy8a49dQiSs91ZWmBBJ4ikBdU
 8HUFhbicNfHpdEnkoINjaRjlB4V+5h5J4ASr8wsjOZV+tdUPRPBwZroG/d5k9HYAzpR9
 HjPALH+WPBxjISVRXdZxYEyBJZg+hLDJ0KEmhiWivHgwBENSMITHWl5URk1i6aqgrk3F
 KqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=yUM+Ixeo3OmmhhPi5AMuI+IEkhOEkINaY9YmjAsvMnM=;
 b=H0ZcW61Nz6T3rKqy8mWw8Wde2jnsWLFc0Jt62AWlIQNyoo3RAo52KikmxkLXRI+CEY
 Y93ij4Drzn+kiav/kzq0mhUmRn7SnL7skhM9U+dj4KcV3ifxtx0Byzi0wZ30JELGG2Ic
 axanxmLOnawezIRDhOamqh3o4ILCol4s8qYNApIbkTL1h/eKLSpD8xy/Daw672C5JYbm
 vMp4VdO+HJRtIk3Nf23WJsMdXxZabv1B2P++3K2b9e1MhgGpvXs7j3fYnmNJfjSFVLbK
 n2ptp8agABUz1IPh4Em4PBN3+b/iUcW5lc9lTKS1GY/xWcZrGVf1ween1nmoKRyXqy3l
 V0PA==
X-Gm-Message-State: APjAAAXMqCI+aHiZrUtrLnYVpirUQ1E843wMUiay/5LJOelX1pvht5jR
 sff6SIbIlB/Sog9fPbUdryd8nyaxkVOV8nkK876IF12T
X-Google-Smtp-Source: APXvYqx11KeBxCuM8nFPtp88dnU6Uy7mPFX52dboH6eIZgM5nrOcw6dBrzCGOnE3bKyfTcdC6xwhlR6Dzp4HTjKvcgE=
X-Received: by 2002:a05:620a:13e5:: with SMTP id
 h5mr4190978qkl.467.1571767926592; 
 Tue, 22 Oct 2019 11:12:06 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 15:11:55 -0300
Message-ID: <CALSKgPy9YoLX2fXWJPiy5kWDxswB_0oQ4VC1chWw6EqCVKJ+Rw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X310 over PCIe not found in Ubuntu 18
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Content-Type: multipart/mixed; boundary="===============8840658686584219685=="
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

--===============8840658686584219685==
Content-Type: multipart/alternative; boundary="000000000000ef1cc0059583bc6c"

--000000000000ef1cc0059583bc6c
Content-Type: text/plain; charset="UTF-8"

Hi all, I have a new i9-9900K Ubuntu 18.04 machine with kernel 4.15.0.
Despite the NI PCIe driver compiled and loaded with no problems, I can't
make the X310 (over PCIe) work.
I have a similar setup with an i7, same kernel version and it works
perfectly.
Any insights or suggestions would be appreciated.

The error message is the following:

$ uhd_find_devices
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
UHD Error:
    Device discovery error: input stream error
No UHD Devices Found


The lspci gives me:
$ sudo lspci -v -k -d 1093:c4c4
03:00.0 Signal processing controller: National Instruments PXIe/PCIe Device
Subsystem: National Instruments PXIe/PCIe Device
Flags: fast devsel, IRQ 255
Memory at a1100000 (32-bit, non-prefetchable) [disabled] [size=256K]
Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit+
Capabilities: [78] Power Management version 3
Capabilities: [80] Express Endpoint, MSI 00
Capabilities: [100] Virtual Channel
Capabilities: [800] Advanced Error Reporting


uhd version:
uhd-host/bionic,now 3.10.3.0-2 amd64 [installed]
libuhd003.010.003/bionic,now 3.10.3.0-2 amd64 [installed]
libuhd-dev/bionic,now 3.10.3.0-2 amd64 [installed]

Regards,
-- 
*Wheberth Damascena Dias*
_______________ _____ _____ __ ___ __ _ _ _  _
http://www.linkedin.com/in/wheberth
e-mail:wheberth@gmail.com

--000000000000ef1cc0059583bc6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all, I have a new i9-9900K Ubuntu=
 18.04 machine with kernel 4.15.0. Despite the NI PCIe driver compiled and =
loaded with no problems, I can&#39;t make the X310 (over PCIe) work.<br></d=
iv><div>I have a similar setup with an i7, same kernel version and it works=
 perfectly. <br>Any insights or suggestions would be appreciated. <br><br><=
/div><div></div>The error message is the following:<br><br>$ uhd_find_devic=
es <br>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-un=
known<br>UHD Error:<br>=C2=A0 =C2=A0 Device discovery error: input stream e=
rror<br>No UHD Devices Found<br clear=3D"all"><div><div><div><br><br>The ls=
pci gives me:<br>$ sudo lspci -v -k -d 1093:c4c4<br>03:00.0 Signal processi=
ng controller: National Instruments PXIe/PCIe Device<br>	Subsystem: Nationa=
l Instruments PXIe/PCIe Device<br>	Flags: fast devsel, IRQ 255<br>	Memory a=
t a1100000 (32-bit, non-prefetchable) [disabled] [size=3D256K]<br>	Capabili=
ties: [50] MSI: Enable- Count=3D1/1 Maskable- 64bit+<br>	Capabilities: [78]=
 Power Management version 3<br>	Capabilities: [80] Express Endpoint, MSI 00=
<br>	Capabilities: [100] Virtual Channel<br>	Capabilities: [800] Advanced E=
rror Reporting<br><br><br></div><div>uhd version:<br>uhd-host/bionic,now 3.=
10.3.0-2 amd64 [installed]<br>libuhd003.010.003/bionic,now 3.10.3.0-2 amd64=
 [installed]<br>libuhd-dev/bionic,now 3.10.3.0-2 amd64 [installed]</div><di=
v><br>Regards,<br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div di=
r=3D"ltr"><div><span style=3D"font-size:12.8px"><b>Wheberth Damascena Dias<=
/b></span><br></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8px=
">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 _=C2=A0</span><br><div>=
<a href=3D"http://www.linkedin.com/in/wheberth" target=3D"_blank">http://ww=
w.linkedin.com/in/wheberth</a></div><div><a href=3D"mailto:e-mail%3Awhebert=
h@gmail.com" target=3D"_blank">e-mail:wheberth@gmail.com</a></div><div><div=
><div><br></div></div></div></div></div></div></div></div></div></div></div=
>

--000000000000ef1cc0059583bc6c--


--===============8840658686584219685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8840658686584219685==--

