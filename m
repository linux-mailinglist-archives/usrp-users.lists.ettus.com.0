Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F52CF1D8
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 17:27:28 +0100 (CET)
Received: from [::1] (port=36524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klDvZ-00075y-Kb; Fri, 04 Dec 2020 11:27:25 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:41560)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1klDvW-00071O-4B
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 11:27:22 -0500
Received: by mail-oi1-f177.google.com with SMTP id h3so6731896oie.8
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 08:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=5UJr3jwOzaVSQudYAm7Me1VO3kskM231ahIxIwNeD48=;
 b=G/fFYnM61IVm2YPVPFHV9Lbtfcd0JNgC0wF8KzUHsb6HMHreYfZzBEgEBLfpQdkSRf
 RlJn9y19rKmzcEcFy9MCzy8dzsiKiuWfJ7iCfoOYPMbokLykTUD+GwcYyhV6Jj1F6C3b
 GfjEGeBOOOMfB5q+lQBTT7sduO+Yyl4D6s3hkMHCkqrCen7RIUeM8RhcFRTX5JKbnIzm
 0I6DYO/ceAd3rGXWYjMOJ1toilAOvkDdU0k8JhoJO3F1ENTr3LyhO3XxszeAfInwVcTC
 q12T00JtdrWJJoMQv/TbV+r2wWvmBToTQzl8rzjYjVT2nHBxgcdfGvCSmSkgtF6Q8df0
 FVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5UJr3jwOzaVSQudYAm7Me1VO3kskM231ahIxIwNeD48=;
 b=JrRaGRc2wR9spqb9wmcu3p80Ma5J8r1O9Ic+/susXLoY6pOzrlnPnyTGTRrnyM0cVa
 4l9xBHSLyy+TSDibqM1JC/0fHORxMuwpD5PeHa+etaBKGvXO3TqgbAlvSd71TkHCjI2p
 NYEBlp9DcNCXALXXzUMVw6cOLji6UbCxQOHZZ7Zh4pvtfkC2zG0ia5PA0rjEjRPEkfPL
 fbyCq19m6mj9dZ57O2u5Zb4brAhCYDu+JZSUuVoRiTCWejjjfAhCnEL9FhQzH0dkheLP
 TkYkfx2rLgHPU6aC5+pXhVJ/HYvLQ3sdoaxvz3w/UghQ0yOYJTpT+cX4UEe7cI4vpn4s
 +j2A==
X-Gm-Message-State: AOAM532Er6o60uuXuZ6MDGN6tz/aNItMGsLzFjm8Cu1LTy3eURGopeS7
 XwW96un6ETwQL53zkRCJcGzqUi7nDg4NKtqWxejVpDwzVEJQLg==
X-Google-Smtp-Source: ABdhPJywmb/f8XrfM+HVTNMuZdWWILFJDdUDXW9aPx4fZAGg3HaGdIJI4Wf4OU4BufEwj+xYys5TAYPIIbm4a4yh7Zw=
X-Received: by 2002:aca:4ccc:: with SMTP id z195mr3787889oia.124.1607099201020; 
 Fri, 04 Dec 2020 08:26:41 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 4 Dec 2020 11:26:30 -0500
Message-ID: <CAB__hTR3aVQbvD0K8rY2msLA9Q0EDozdK5Yayq4iWucQ+e62aQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Control B2xx from N310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6448141475537480784=="
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

--===============6448141475537480784==
Content-Type: multipart/alternative; boundary="000000000000ff383f05b5a5f0df"

--000000000000ff383f05b5a5f0df
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm wondering if/how I can control a B2xx device from an N310. I use the
B2xx as an LO for shared LO operations from an N310.  Presently, I use a
laptop to control my B200mini, but I am wondering if this control can be
done directly from the N310. I realize that the N310 USB port is not USB3
but since my streaming rates for a CW tone are as slow as possible,
hopefully that won't matter.

I have connected the B200mini to the N310 USB port, but I can't see the
B200mini when I run uhd_find_devices.  I have copied the B2xx FPGA images
to the /usr/share/uhd/images/ folder and I have copied the file
uhd-usrp.rules to the /etc/udev/rules.d/ folder and rebooted the N310, but
still no luck.

The following is the output of the "lsusb" and "uhd_find_devices"
commands.  The "lsusb" command shows the presence of the Cypress device,
but the device is still not found.

Suggestions?
Rob

root@ni-n3xx-3144673:~# lsusb
Bus 001 Device 003: ID 2500:0021 Cypress WestBridge
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
root@ni-n3xx-3144673:~# uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
UHD_4.0.0.0-0-g90ce6062
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3144673
    claimed: False
    mgmt_addr: 127.0.0.1
    product: n310
    type: n3xx


root@ni-n3xx-3144673:~#

--000000000000ff383f05b5a5f0df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I&#39;m wondering if/how I can control a B2xx =
device from an N310. I use the B2xx as an LO for shared LO operations from =
an N310.=C2=A0 Presently, I use a laptop to control my B200mini, but I am w=
ondering if this control can be done directly from the N310. I realize that=
 the N310 USB port is not USB3 but since my streaming rates for a CW tone a=
re as slow as possible, hopefully that won&#39;t matter.</div><div><br></di=
v><div>I have connected the B200mini to the N310 USB port, but I can&#39;t =
see the B200mini when I run uhd_find_devices.=C2=A0 I have copied the B2xx =
FPGA images to the /usr/share/uhd/images/ folder and I have copied the file=
 uhd-usrp.rules to the /etc/udev/rules.d/ folder and rebooted the N310, but=
 still no luck.</div><div><br></div><div>The following is the output of the=
 &quot;lsusb&quot; and &quot;uhd_find_devices&quot; commands.=C2=A0 The &qu=
ot;lsusb&quot; command shows the presence of the Cypress device, but the de=
vice is still not found.</div><div><br></div><div>Suggestions?</div><div>Ro=
b</div><div><br></div><div><font face=3D"monospace"><span style=3D"backgrou=
nd-color:rgb(255,255,0)">root@ni-n3xx-3144673:~# lsusb</span><br>Bus 001 De=
vice 003: ID 2500:0021 Cypress WestBridge <br>Bus 001 Device 001: ID 1d6b:0=
002 Linux Foundation 2.0 root hub<br><span style=3D"background-color:rgb(25=
5,255,0)">root@ni-n3xx-3144673:~# uhd_find_devices</span> <br>[INFO] [UHD] =
linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.0-0-g90ce6062<br>----=
----------------------------------------------<br>-- UHD Device 0<br>------=
--------------------------------------------<br>Device Address:<br>=C2=A0 =
=C2=A0 serial: 3144673<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgm=
t_addr: 127.0.0.1<br>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3x=
x<br><br><br><span style=3D"background-color:rgb(255,255,0)">root@ni-n3xx-3=
144673:~#=C2=A0</span>=C2=A0</font><br></div></div>

--000000000000ff383f05b5a5f0df--


--===============6448141475537480784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6448141475537480784==--

