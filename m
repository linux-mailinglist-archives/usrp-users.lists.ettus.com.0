Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64447363C50
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:16:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EFCE3843A3
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 03:16:50 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54FB8383F18
	for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 03:15:56 -0400 (EDT)
Date: Mon, 19 Apr 2021 07:15:56 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YEHIFBICQD3DHWXMF2FUB4MNXFAIGUKT
X-Message-ID-Hash: YEHIFBICQD3DHWXMF2FUB4MNXFAIGUKT
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEHIFBICQD3DHWXMF2FUB4MNXFAIGUKT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7086609231944752577=="

This is a multi-part message in MIME format.

--===============7086609231944752577==
Content-Type: multipart/alternative;
 boundary="b1_quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

I have just upgraded my laptop to the latest version of GNU Radio Compani=
on (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to monitor a=
 block of spectrum with my USRP B210.  Unfortunately the flowgraph won=E2=
=80=99t run (even though it ran in my old GNU Radio setup), and instead p=
rints the following message to the console:

linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

UHD Warning:

    EnvironmentError: IOError: Could not find path for image: usrp_b200_f=
w.hex

    Using images directory: <no images directory located>

    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow=
 the below instructions to download the images package.

    Please run:

     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

Traceback (most recent call last):

  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 244,=
 in <module>

    main()

  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 220,=
 in main

    tb =3D top_block_cls()

  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, =
in __init__

    channels=3Dlist(range(0,1)),

  File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 12=
5, in constructor_interceptor

    return old_constructor(\*args)

  File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line 32=
59, in make

    return _uhd_swig.usrp_source_make(device_addr, stream_args, issue_str=
eam_cmd_on_start)

RuntimeError: LookupError: KeyError: No devices found for ----->

Device Address:

    serial: 318425D

The above message suggests GRC is calling version **003.010.003.000-0** o=
f the UHD driver.  This is weird, as last week I installed version **3.15=
.0.0** of the UHD driver on my laptop, after first uninstalling the old d=
river (or so I thought=E2=80=A6). =20

However, if I run uhd_usrp_probe or uhd_find_devices, I get a message con=
firming that I am indeed running v3.15.0.0 of the UHD driver:

* linux; GNU C++ version 7.5.0; Boost_106501; **UHD_3.15.0.HEAD-0-gaea0e2=
de**

If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I f=
ind the files **libuhd.so.003.010.003** and **libuhd.so.3.15.0** are both=
 present =E2=80=94 but I am pretty sure there should only be one of them =
present!

This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly common amo=
ng USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual so=
lutions. =20

There is also a second error message in the above console output: **=E2=80=
=9CEnvironmentError: IOError: Could not find path for image: usrp_b200_fw=
.hex=E2=80=9D**.  This is baffling, as I have run the script =E2=80=9C/us=
r/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C three times, and =
am confident that the FPGA images have downloaded successfully (for the r=
ecord, they are in /usr/local/share/uhd/images).

If anyone can tell me how to resolve these problems, I would be very grat=
eful!

Regards,

Brendan.

--b1_quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>I have just upgraded my laptop to the latest version of GN=
U Radio Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it=
 to monitor a block of spectrum with my USRP B210.  Unfortunately the flowg=
raph won=E2=80=99t run (even though it ran in my old GNU Radio setup), and =
instead prints the following message to the console:</p><p>linux; GNU C++ v=
ersion 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown</p><p>UHD Warning=
:</p><p>    EnvironmentError: IOError: Could not find path for image: usrp_=
b200_fw.hex</p><p>    Using images directory: &lt;no images directory locat=
ed&gt;</p><p>    Set the environment variable 'UHD_IMAGES_DIR' appropriatel=
y or follow the below instructions to download the images package.</p><p>  =
  Please run:</p><p>     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_do=
wnloader.py"</p><p>Traceback (most recent call last):</p><p>  File "/home/a=
nyone/Documents/Brendan/GNU-Radio/top_block.py", line 244, in &lt;module&gt=
;</p><p>    main()</p><p>  File "/home/anyone/Documents/Brendan/GNU-Radio/t=
op_block.py", line 220, in main</p><p>    tb =3D top_block_cls()</p><p>  Fi=
le "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, in __i=
nit__</p><p>    channels=3Dlist(range(0,1)),</p><p>  File "/usr/lib/python3=
/dist-packages/gnuradio/uhd/__init__.py", line 125, in constructor_intercep=
tor</p><p>    return old_constructor(*args)</p><p>  File "/usr/lib/python3/=
dist-packages/gnuradio/uhd/uhd_swig.py", line 3259, in make</p><p>    retur=
n _uhd_swig.usrp_source_make(device_addr, stream_args, issue_stream_cmd_on_=
start)</p><p>RuntimeError: LookupError: KeyError: No devices found for ----=
-&gt;</p><p>Device Address:</p><p>    serial: 318425D</p><p>The above messa=
ge suggests GRC is calling version <strong>003.010.003.000-0</strong> of th=
e UHD driver.  This is weird, as last week I installed version <strong>3.15=
.0.0</strong> of the UHD driver on my laptop, after first uninstalling the =
old driver (or so I thought=E2=80=A6).  </p><p>However, if I run uhd_usrp_p=
robe or uhd_find_devices, I get a message confirming that I am indeed runni=
ng v3.15.0.0 of the UHD driver:</p><ul><li><p>linux; GNU C++ version 7.5.0;=
 Boost_106501; <strong>UHD_3.15.0.HEAD-0-gaea0e2de</strong></p></li></ul><p=
>If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I fi=
nd the files <strong>libuhd.so.003.010.003</strong> and <strong>libuhd.so.3=
.15.0</strong> are both present =E2=80=94 but I am pretty sure there should=
 only be one of them present!</p><p>This =E2=80=9Cdual-install=E2=80=9D pro=
blem seems to be fairly common among USRP/GNU Radio users, but so far I hav=
en=E2=80=99t found any actual solutions.  </p><p>There is also a second err=
or message in the above console output: <strong>=E2=80=9CEnvironmentError: =
IOError: Could not find path for image: usrp_b200_fw.hex=E2=80=9D</strong>.=
  This is baffling, as I have run the script =E2=80=9C/usr/local/lib/uhd/ut=
ils/uhd_images_downloader.py=E2=80=9C three times, and am confident that th=
e FPGA images have downloaded successfully (for the record, they are in /us=
r/local/share/uhd/images).</p><p>If anyone can tell me how to resolve these=
 problems, I would be very grateful!</p><p>Regards,</p><p>Brendan.  </p><p>=
<br></p>

--b1_quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s--

--===============7086609231944752577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7086609231944752577==--
