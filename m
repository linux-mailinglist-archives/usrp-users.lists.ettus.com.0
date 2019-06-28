Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2275964C
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 10:44:10 +0200 (CEST)
Received: from [::1] (port=44510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgmUF-0004XC-K1; Fri, 28 Jun 2019 04:44:03 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:43302)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saimanoj.katta@cumucore.com>)
 id 1hgmUB-0004TN-80
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 04:43:59 -0400
Received: by mail-qt1-f178.google.com with SMTP id w17so5392177qto.10
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 01:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumucore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=nqjnW14HSI4u1q+n8xCF3XjKD38FW0I7+T8yhvO1NxA=;
 b=gPo5chocIEOEg0KfGnFXZem6IuTsncLcvdLA7d9l3Ru/+xv/LVh0H/BaLlKaCCpfJi
 TSv4Q8uZPl38vCFbkoPwLDfqDJzz1uex0fUBdtYZ9RO1kKmEOGHkqox8+VEF0xrOyy1i
 iygGiyqq37vcgo69sLzXm0sJf/0gpBR2ovBfeu2ZWFhJnW4a2f2zaR+u/tArTXqdWyWs
 kKQJ7JR6HWBjFuPvTaa/mYi+TFhruQgjfZEAvY1LPzUyi5jDOToY23HzdzgEmM6eMoMp
 tmLo5uZjCbY+UpZ5V6diRqIPeyCWQzeSZ5tVyAqOo6HTe0ywwJVx1VmE1SZyyRbJ42eU
 YG3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=nqjnW14HSI4u1q+n8xCF3XjKD38FW0I7+T8yhvO1NxA=;
 b=EBuEl+SSlI2iO4lAauy1PZjZD5+Ohv2Q3HZ981t+jZOiy8IkWc3UNA3A8HVnvb3jXX
 DRSqJIuFVpKFf7tRidYt2uQA3n9SRTEUc9hnE1vPuBbQIhwolNjsfju5YTPHA1mxyc4k
 joIhq7TCRWvurAqeAjzu0Vkvk113QaQNc+QEvYlB0NtRDtH1kmoIpeaX+B5GCWA2QyX/
 xAMzohUUE0Q4Hn9eHoumfzqC2sXgqiTx39583JFt0FHVrCyYcQpVHRRHf81dEFwSZ1Ff
 8IIQGzuys3HCBDcBiWL6eKwLKwi07gVsoneVbRFrSXccS4PIT0rx6AfeMvJezlO4P2tX
 hgBg==
X-Gm-Message-State: APjAAAUPruR5WdyydtI/nSaS2V/IzaHMt5VrGOXxmK2Ym6qQyFvh9sXH
 NWAamRKGg/rtg5m2k23E3Ti4LhRuRE12U7Bo2qHxNzGiops=
X-Google-Smtp-Source: APXvYqyKA56/XlJlPZ3kJSu8LPF5zxd++NSgiiH9uvqjM6/BX9NI5ZQ3W6GJJRJA8aLYgker+45x/JzGYoKSL50SC4s=
X-Received: by 2002:ac8:45d0:: with SMTP id e16mr6908859qto.337.1561711398239; 
 Fri, 28 Jun 2019 01:43:18 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 28 Jun 2019 11:43:07 +0300
Message-ID: <CABO=5Rr_+Z16RqPV6cHt9n3KmhyUf1vgwL55ST4bHpW+nFQL6Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Regarding USRP X310
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
Content-Type: multipart/mixed; boundary="===============3114028498670860333=="
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

--===============3114028498670860333==
Content-Type: multipart/alternative; boundary="000000000000225318058c5e45df"

--000000000000225318058c5e45df
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have been using USRP X310 for almost more than a month. I had no problems
until two days ago. USRP detects only when it is powered on. It gives
various errors when I tried to execute it with srsLTE or OAI codes. *Each
time, I have to use it, I tend to restart it. I am concerned about this
erratic behaviour.* uhd_find_devices and uhd_images_downloader works
fine. *When
I restart the USRP, these errors vanish apparently. *

Sometimes, with uhd_usrp_probe, this is occured.

ubuntu@ubuntu-Zephyrus-GX501GI:~$ sudo uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.git-1-gf83faf28
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = (uhd::endianness_t)0]
  at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_00_Port_30) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]
  at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no response
packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]
  at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

*Any suggestions would be appreciated. *

*The errors are described as follows below*. This is either of the
following reasons: Exception caught in safe call, Failed to find device
auto with args auto, An unexpected exception was caught in a task loop.

1) [ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = (uhd::endianness_t)0]
  at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_01_Port_40) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]
  at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

Error opening UHD: code 30
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_imp.c.126: No
compatible RF frontend found

/home/ubuntu/srsLTE-issuefix_format1c/lib/src/radio/radio.cc.38: Error
opening RF device

Failed to find device auto with args auto

2) Failed to Attach
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
Error timed out while receiving samples from UHD.

/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727: Error
receiving samples

/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
Error timed out while receiving samples from UHD.

/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727: Error
receiving samples

^CStopping srsUE... Press Ctrl+C 9 more times to force stop

3) [ERROR] [X300] 192.168.50.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.50.2: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.50.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task
loop will now exit, things may not work.EnvironmentError: IOError:
192.168.50.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out
^Z


Regards,
Saimanoj

--000000000000225318058c5e45df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I have been usi=
ng USRP X310 for almost more than a month. I had no problems until two days=
 ago. USRP detects only when it is powered on. It gives various errors when=
 I tried to execute it with srsLTE or OAI codes. <b><i>Each time, I have to=
 use it, I tend to restart it. I am concerned about this erratic behaviour.=
</i></b> uhd_find_devices and uhd_images_downloader works fine. <b>When I r=
estart the USRP, these errors vanish apparently. </b></div><div><br></div><=
div>Sometimes, with uhd_usrp_probe, this is occured. <br></div><div><br></d=
iv><div>ubuntu@ubuntu-Zephyrus-GX501GI:~$ sudo uhd_usrp_probe <br>[INFO] [U=
HD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-1-gf83faf28<=
br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum f=
rame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [=
GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>[ERROR] [UHD] E=
xception caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&g=
t;::~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uhd::endian=
ness_t)0]<br>=C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br=
>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block =
ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)<br>=C2=
=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, doub=
le) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long unsigned int]<br>=C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_if=
ace.cpp:142<br><br>Error: EnvironmentError: IOError: Block ctrl (CE_00_Port=
_30) no response packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_t =
ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::e=
ndianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long unsigne=
d int]<br>=C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br><=
/div><div><br></div><div> <b>Any suggestions would be appreciated. </b><br>=
</div><div><b><br></b></div><div><b>The errors are described as follows bel=
ow</b>. This is either of the following reasons: Exception caught in safe c=
all, Failed to find device auto with args auto, An unexpected exception was=
 caught in a task loop. <br></div><div><br></div><div>1) [ERROR] [UHD] Exce=
ption caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;:=
:~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uhd::endiannes=
s_t)0]<br>=C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>th=
is-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block ctr=
l (CE_01_Port_40) no response packet - AssertionError: bool(buff)<br>=C2=A0=
 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)=
 [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D=
 long unsigned int]<br>=C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:142<br><br>Error opening UHD: code 30<br>/home/ubuntu/srsLTE-issuefix_=
format1c/lib/src/phy/rf/rf_imp.c.126: No compatible RF frontend found<br><b=
r>/home/ubuntu/srsLTE-issuefix_format1c/lib/src/radio/radio.cc.38: Error op=
ening RF device<br><br>Failed to find device auto with args auto</div><div>=
<br></div><div>2) Failed to Attach<br>/home/ubuntu/srsLTE-issuefix_format1c=
/lib/src/phy/rf/rf_uhd_imp.c.839: Error timed out while receiving samples f=
rom UHD.<br><br>/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_syn=
c.c.727: Error receiving samples<br><br>/home/ubuntu/srsLTE-issuefix_format=
1c/lib/src/phy/rf/rf_uhd_imp.c.839: Error timed out while receiving samples=
 from UHD.<br><br>/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_s=
ync.c.727: Error receiving samples<br><br>^CStopping srsUE... Press Ctrl+C =
9 more times to force stop</div><div><br></div><div>3) [ERROR] [X300] <a hr=
ef=3D"http://192.168.50.2">192.168.50.2</a>: x300 fw communication failure =
#1<br>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>[ERROR=
] [X300] <a href=3D"http://192.168.50.2">192.168.50.2</a>: x300 fw communic=
ation failure #2<br>EnvironmentError: IOError: x300 fw poke32 - reply timed=
 out<br>[ERROR] [X300] <a href=3D"http://192.168.50.2">192.168.50.2</a>: x3=
00 fw communication failure #3<br>EnvironmentError: IOError: x300 fw poke32=
 - reply timed out<br>[ERROR] [UHD] An unexpected exception was caught in a=
 task loop.The task loop will now exit, things may not work.EnvironmentErro=
r: IOError: <a href=3D"http://192.168.50.2">192.168.50.2</a>: x300 fw commu=
nication failure #3<br>EnvironmentError: IOError: x300 fw poke32 - reply ti=
med out<br>^Z</div><div><br></div><div><br></div><div>Regards, <br></div><d=
iv>Saimanoj<br></div></div>

--000000000000225318058c5e45df--


--===============3114028498670860333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3114028498670860333==--

