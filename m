Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6889B2307A2
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 12:27:33 +0200 (CEST)
Received: from [::1] (port=55054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0MpU-00064Q-Hl; Tue, 28 Jul 2020 06:27:28 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:37864)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1k0MpQ-0005x2-Ak
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 06:27:24 -0400
Received: by mail-ot1-f49.google.com with SMTP id w17so14524774otl.4
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 03:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=s5PErV3K2sQ6xhnGiHwk/sDZCWSvw8uzprQHVW3Suoo=;
 b=zcnqatqW4CfQW/Fis4OJo6H0xk7/Hwrg6jE+hx/SyegJLkgupfXFYGqyLFyW9F5G++
 CEVHZ5znQq3cgwNiQ9ziFIfPp8GAKi0zl9NbU+kPNTRU2dZ6FWALWKSZpqOUeujz9XJm
 INlHMlUD/ITLAGjFSCLf5Fz54XjOrC4l4+/wxTLsDF3jMpMWp8sf5Ku30DdECLvxKECg
 HPhzcmwecfebQlCeqb4ua90AN9dQ7a1KGnDRls4X5tjCo/yuABBx9VTsCEozu4GL+ipw
 Cz6yqSI8II2PCWSIi7+25aG8+7sLaEHxSQ42BA8HrwC5ku1rrEIT/VkKs5Eae1yhkWIm
 ojbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s5PErV3K2sQ6xhnGiHwk/sDZCWSvw8uzprQHVW3Suoo=;
 b=OBfA6kt4ZY7z2uE2iesRGbozOemHEBl4QpcKKboR1LoN2P4175G7Vc32QveGAfQstN
 1dJrwKTioO2uB7i8aKGwgWIp/8dADCtexy2PpzQ+KRDIOqreivFP99/yHcoc1MqpZZU3
 VZ1Ajftxk4yScAm/S3lM1qDbSMpZ+WNJY/OskVZQTx51MopiNAKNkp36HWa0cyCnK6uh
 g1JP+qEzSEmADZC9yr8s5DGdPaZdo+qJNRZIhe186JcwxYBS3l4gojRbevfYU4ANsYEc
 hE8PxqhNJsKHZuvjFzYX9H9ZyctBOVbyXHxHXHkUmI5ZnyRuNi/E3LfvMp5Filu1nRxu
 +S2Q==
X-Gm-Message-State: AOAM531/6PZbhYSv/bNOh6jP89+yd1SdNlp/8UvwBFjl5hEoK2I+P274
 c+XaxtEK5i3kR4l7oc8Q06BZnY3u4a30YZ43ThxmiFhN6j4=
X-Google-Smtp-Source: ABdhPJzERWNyRpQtgBbM/FNwj17pOG4900tLviQ4k2UGBjUdimWQXaZj/bRsCgCupgWRGGrK3cXVkvzKnyKWR3UR7r8=
X-Received: by 2002:a05:6830:1d62:: with SMTP id
 l2mr22289366oti.24.1595932003281; 
 Tue, 28 Jul 2020 03:26:43 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 12:26:32 +0200
Message-ID: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Issues generating and loading bitstreams with RFNoC
 blocks (UHD-3.15.LTS)
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============4041938932320106179=="
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

--===============4041938932320106179==
Content-Type: multipart/alternative; boundary="000000000000243db905ab7de030"

--000000000000243db905ab7de030
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


I=E2=80=99m working on getting a solid workflow to build and use RFNoC bloc=
ks. I=E2=80=99m
using branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3.7 (also, packet
gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS branch).
I=E2=80=99m using an E310 (SG1), with the SD image I get with
=E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.sdim=
g). Also, I=E2=80=99m
running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3 installed.

A couple of weeks ago I started trying to follow the =E2=80=98Getting Start=
ed with
RFNoC Development=E2=80=99 guide, and tried using rfnoc-devel and master br=
anches,
but it seems like this UHD-3.15.LTS is the one working the best for me, but
I still have some issues.

Following the guide, I built a custom block (gain), which I was able to get
through the testbench (after quite a bit of attempts), but when trying to
generate a bitstream (.bit file) with my gain block I got the following
errors:


    ~/rfnoc_UHD315/src/uhd-fpga/usrp3/tools/scripts$ ./uhd_image_builder.py
gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial/ -d e31x -t E310_RFNOC -m 4
=E2=80=93fill-with-fifos

     .

     .

     .

     ERROR: [Synth 8-439] module 'noc_block_gain' not found
[/home/jarroyo/rfnoc_UHD315/
src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst_e31x.v:20]

     ERROR: [Synth 8-6156] failed synthesizing module 'e31x_core'
[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]

     ERROR: [Synth 8-6156] failed synthesizing module 'e31x'
[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]

     [00:01:46] Current task: Synthesis +++ Current Phase: Starting

     ERROR: [Common 17-69] Command failed: Synthesis failed - please see
the console or run log file for details

     [00:01:46] Current task: Synthesis +++ Current Phase: Finished

     [00:01:46] Process terminated. Status: Failure


If it is useful information, I was able to successfully generate a
bitstream with existing RFNoC blocks (=E2=80=98./uhd_image_builder.py windo=
w fft -d
e31x -t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, is w=
orking), so
that=E2=80=99s why I guess my main issue is with the gain custom block.


Also, another issue I=E2=80=99m having is using uhd_image_loader on the E31=
0
terminal when loading my own bitstreams:


     root@ni-e31x:~# uhd_image_loader --args=3D"type=3De3xx,addr=3D192.168.=
10.2"
--fpga-path /usr/share/uhd/images/e31x.bit

     [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
UHD_3.15.0.0-0-gaea0e2de

     No applicable UHD devices found


Is there anything I might be doing wrong? Or is this workflow with these
branches and tool versions not the most appropiate currently?


Thanks in advance,


Jorge

--000000000000243db905ab7de030
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">


=09
	<span></span>
=09
=09


<p style=3D"margin-bottom:0cm;line-height:100%">Hi,</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">I=E2=80=99m working on
getting a solid workflow to build and use RFNoC blocks. I=E2=80=99m using
branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3.7 (also, packet
gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS
branch). I=E2=80=99m using an E310 (SG1), with the SD image I get with
=E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.sdim=
g).
Also, I=E2=80=99m running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3
installed.</p>

<p style=3D"margin-bottom:0cm;line-height:100%">A couple of weeks
ago I started trying to follow the =E2=80=98Getting Started with RFNoC
Development=E2=80=99 guide, and tried using rfnoc-devel and master
branches, but it seems like this UHD-3.15.LTS is the one working the
best for me, but I still have some issues.</p>

<p style=3D"margin-bottom:0cm;line-height:100%">Following the guide,
I built a custom block (gain), which I was able to get through the
testbench (after quite a bit of attempts), but when trying to
generate a bitstream (.bit file) with my gain block I got the
following errors:</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br></p><p style=3D"margin-=
bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0 ~/rfnoc_UHD315/src/uhd-fpga=
/usrp3/tools/scripts$
./uhd_image_builder.py gain fft -I
	~/rfnoc_UHD315/src/rfnoc-tutorial/ -d e31x -t E310_RFNOC -m 4
=E2=80=93fill-with-fifos
</p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=
=A0 .</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 .<=
/p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 .<=
br></p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=
=C2=A0 ERROR: [Synth
8-439] module &#39;noc_block_gain&#39; not found
[/home/jarroyo/rfnoc_UHD315/	src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst=
_e31x.v:20]
</p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=
=A0 ERROR: [Synth
8-6156] failed synthesizing module &#39;e31x_core&#39;
	[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]</p=
>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 ER=
ROR: [Synth
8-6156] failed synthesizing module &#39;e31x&#39;
	[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Current
task: Synthesis +++ Current Phase: Starting</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 ER=
ROR: [Common
17-69] Command failed: Synthesis failed - please see the console or
run 	log file for details</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Current
task: Synthesis +++ Current Phase: Finished</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Process
terminated. Status: Failure</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">If it is useful
information, I was able to successfully generate a bitstream with
existing RFNoC blocks (=E2=80=98./uhd_image_builder.py window fft -d e31x
-t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, is workin=
g), so
that=E2=80=99s why I guess my main issue is with the gain custom block.</p>

<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Also, another issue
I=E2=80=99m having is using uhd_image_loader on the E310 terminal when
loading my own bitstreams:</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 root@ni-e31x:~# uhd_image_loader
--args=3D&quot;type=3De3xx,addr=3D192.168.10.2&quot; --fpga-path
	/usr/share/uhd/images/e31x.bit</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
UHD_3.15.0.0-0-gaea0e2de</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 No applicable UHD devices found</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>

<p style=3D"margin-bottom:0cm;line-height:100%">Is there anything I
might be doing wrong? Or is this workflow with these branches and
tool versions not the most appropiate currently?</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Thanks in advance,</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Jorge</p>

</div>

--000000000000243db905ab7de030--


--===============4041938932320106179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4041938932320106179==--

