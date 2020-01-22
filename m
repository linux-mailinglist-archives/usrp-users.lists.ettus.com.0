Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 209F9145D32
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 21:38:05 +0100 (CET)
Received: from [::1] (port=37326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuMlH-0001dz-Td; Wed, 22 Jan 2020 15:38:03 -0500
Received: from mail-lf1-f42.google.com ([209.85.167.42]:45169)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iuMlE-0001WL-Je
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 15:38:00 -0500
Received: by mail-lf1-f42.google.com with SMTP id 203so589342lfa.12
 for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2020 12:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H76WL6YAQIHpVep96u+MKNmfCFl1GN/K2O85G+Zwt7A=;
 b=sDX3JPgTNtfYZhIbIcR1sr7OS/YPd/khyyooYZUjBfi7Wp8ahvlBa7zH6X6Wnoflgz
 4DlujmQBI1FVoCZ9sjtavIrmC0RQG9C+bkrtRhNzksGnxCkdlLuxqQgTv7Q9UDxKXT06
 FzGEl28SnSuZneNUhVmmNm9bEH02J9yUjg61KRuYtIGOC2fomf2gLZYVyxU2Egk06J5P
 2SyecqcWijvYG/y6Np8uAtjXp3Nqy/03JbdxL3hpdovu0QP6or7InRaTR0WlJGrqSwNf
 GU1VPwjfubkyv3Kkm76gLg1QPAkLfi79rL0tMOdN5etyrxccvbBSIlT4A58O2C8N4DFf
 mlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H76WL6YAQIHpVep96u+MKNmfCFl1GN/K2O85G+Zwt7A=;
 b=Y+Mtm/7f3BIycsVTc+ORmShjXKeCE+Cs6RiKAqyEM7GE3/3o2lxLsYKX7npQKFhwwP
 VeWginwdJiD7QlK4gOmUdYX0tiPJ4QL1eFayoxBJ4wee2LyKP0yfgz842jk6nbmNOU0L
 kVx/CeO6bPU5Nca8K4DurVWD+6o4jqaOhdmqGrlO/BBscCSkI9KnYVceUnm3bBp4O39X
 JgXGxp1ZGTLuEjfNL1p4s8HFJ49vCgt2OwiRc93UdMw9+BTph2BkKrinxFpwbsnoDrT3
 r7hGi+wN79xVLFUgtzYXAwfu9uxjBAM6fDEJJOZs2vauAJeh9AZDe2K6aIwqjjrX/SqM
 BmKw==
X-Gm-Message-State: APjAAAWl5wovn81D0eb7z6a/MPtObET1ztA3wIgCJJNRtt7/zaMiUvGS
 TvmAXfOgRxcCdORrZF9xa25hYCiZqX9uA4+No2zyTeVr
X-Google-Smtp-Source: APXvYqz43enW63XmiRXsjOEtB6lxrX0fpXcdojdtiTVRNBs8AX4yoVM7b2l171xClw3ym5hRyce4kUYOB8qQ88+4VwM=
X-Received: by 2002:a19:4a:: with SMTP id 71mr2763698lfa.50.1579725438449;
 Wed, 22 Jan 2020 12:37:18 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 22 Jan 2020 15:37:06 -0500
Message-ID: <CANQ3h38sFEJXws1oHg6tJLiAaoRic8J6rs=JJRBkRLM_TccJPA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD installation, image download fails,
 unhandled exception
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Content-Type: multipart/mixed; boundary="===============6962865124954574702=="
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

--===============6962865124954574702==
Content-Type: multipart/alternative; boundary="00000000000099fc3b059cc07d07"

--00000000000099fc3b059cc07d07
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

During the installation of UHD, I get an unhandled exception when
downloading images. The resulting output is shown below. Any advice or help
would be greatly appreciated.

Thank you
Saeid





Reading package lists... Done
Building dependency tree
Reading state information... Done
Suggested packages:
  gnuradio
The following NEW packages will be installed:
  libuhd-dev libuhd003 uhd-host
0 upgraded, 3 newly installed, 0 to remove and 238 not upgraded.
Need to get 0 B/10.6 MB of archives.
After this operation, 51.3 MB of additional disk space will be used.
Selecting previously unselected package libuhd-dev.
(Reading database ... 195896 files and directories currently installed.)
Preparing to unpack .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
Unpacking libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
Selecting previously unselected package libuhd003:amd64.
Preparing to unpack .../libuhd003_3.13.0.1-0ubuntu1~bionic1_amd64.deb ...
Unpacking libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
Replaced by files in installed package libuhd3.14.1:amd64
(3.14.1.1-0ubuntu1~bionic1) ...
Selecting previously unselected package uhd-host.
Preparing to unpack .../uhd-host_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
Setting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
Setting up uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
net.core.rmem_max = 50000000
net.core.wmem_max = 1048576
Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
Processing triggers for libc-bin (2.27-3ubuntu1) ...
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
Reading package lists... Done
Building dependency tree
Reading state information... Done
uhd-host is already the newest version (3.14.1.1-0ubuntu1~bionic1).
0 upgraded, 0 newly installed, 0 to remove and 238 not upgraded.
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
Creating an empty one.
00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
19756 kB / 19756 kB (100%) x3xx_x310_fpga_default-gbb85bdff.zip
02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
02131 kB / 02131 kB (100%) n230_n230_fpga_default-gbb85bdff.zip
00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
[ERROR] Downloader raised an unhandled exception: HTTPConnectionPool(host='
files.ettus.com', port=80): Max retries exceeded with url:
/binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
(Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at
0x7f66b46ec890>: Failed to establish a new connection: [Errno 110]
Connection timed out',))
You can run this again with the '--verbose' flag to see more information
If the problem persists, please email the output to: support@ettus.com
build have failed

--00000000000099fc3b059cc07d07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br><div>During the install=
ation of UHD, I get an unhandled exception when downloading images. The res=
ulting output is shown below. Any advice or help would be greatly appreciat=
ed.</div><div><br></div><div>Thank you</div><div>Saeid</div><div><br></div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div><span styl=
e=3D"font-family:monospace">Reading package lists... Done<br>Building depen=
dency tree =C2=A0 =C2=A0 =C2=A0 <br>Reading state information... Done<br>Su=
ggested packages:<br>=C2=A0 gnuradio<br>The following NEW packages will be =
installed:<br>=C2=A0 libuhd-dev libuhd003 uhd-host<br>0 upgraded, 3 newly i=
nstalled, 0 to remove and 238 not upgraded.<br>Need to get 0 B/10.6 MB of a=
rchives.<br>After this operation, 51.3 MB of additional disk space will be =
used.<br>Selecting previously unselected package libuhd-dev.<br>(Reading da=
tabase ... 195896 files and directories currently installed.)<br>Preparing =
to unpack .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...<br>Unpacki=
ng libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>Selecting previously unsel=
ected package libuhd003:amd64.<br>Preparing to unpack .../libuhd003_3.13.0.=
1-0ubuntu1~bionic1_amd64.deb ...<br>Unpacking libuhd003:amd64 (3.13.0.1-0ub=
untu1~bionic1) ...<br>Replaced by files in installed package libuhd3.14.1:a=
md64 (3.14.1.1-0ubuntu1~bionic1) ...<br>Selecting previously unselected pac=
kage uhd-host.<br>Preparing to unpack .../uhd-host_3.14.1.1-0ubuntu1~bionic=
1_amd64.deb ...<br>Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...<br>Se=
tting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>Setting up uhd-host =
(3.14.1.1-0ubuntu1~bionic1) ...<br>net.core.rmem_max =3D 50000000<br>net.co=
re.wmem_max =3D 1048576<br>Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bi=
onic1) ...<br>Processing triggers for libc-bin (2.27-3ubuntu1) ...<br>Proce=
ssing triggers for man-db (2.8.3-2ubuntu0.1) ...<br>Reading package lists..=
. Done<br>Building dependency tree =C2=A0 =C2=A0 =C2=A0 <br>Reading state i=
nformation... Done<br>uhd-host is already the newest version (3.14.1.1-0ubu=
ntu1~bionic1).<br>0 upgraded, 0 newly installed, 0 to remove and 238 not up=
graded.<br>[INFO] Images destination: /usr/share/uhd/images<br>[INFO] No in=
ventory file found at /usr/share/uhd/images/inventory.json. Creating an emp=
ty one.<br>00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip<br=
>19756 kB / 19756 kB (100%) x3xx_x310_fpga_default-gbb85bdff.zip<br>02757 k=
B / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip<br>02131 kB / 0213=
1 kB (100%) n230_n230_fpga_default-gbb85bdff.zip<br>00522 kB / 00522 kB (10=
0%) usrp1_b100_fpga_default-g6bea23d.zip<br>[ERROR] Downloader raised an un=
handled exception: HTTPConnectionPool(host=3D&#39;<a href=3D"http://files.e=
ttus.com">files.ettus.com</a>&#39;, port=3D80): Max retries exceeded with u=
rl: /binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zi=
p (Caused by NewConnectionError(&#39;&lt;urllib3.connection.HTTPConnection =
object at 0x7f66b46ec890&gt;: Failed to establish a new connection: [Errno =
110] Connection timed out&#39;,))<br>You can run this again with the &#39;-=
-verbose&#39; flag to see more information<br>If the problem persists, plea=
se email the output to: <a href=3D"mailto:support@ettus.com">support@ettus.=
com</a><br>build have failed</span><br></div></div></div>

--00000000000099fc3b059cc07d07--


--===============6962865124954574702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6962865124954574702==--

