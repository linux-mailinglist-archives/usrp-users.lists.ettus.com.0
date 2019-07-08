Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A369662865
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jul 2019 20:36:17 +0200 (CEST)
Received: from [::1] (port=45710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkYUn-0003FB-Pl; Mon, 08 Jul 2019 14:36:13 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:32848)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1hkYUk-0003Ay-1D
 for usrp-users@lists.ettus.com; Mon, 08 Jul 2019 14:36:10 -0400
Received: by mail-io1-f47.google.com with SMTP id z3so22574130iog.0
 for <usrp-users@lists.ettus.com>; Mon, 08 Jul 2019 11:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZeTtEMUT/w0aho5TjzWfNiStTT7w3WjsV8lmbKUt0zc=;
 b=gFAbZ4V2RKKSQ4G69brKhRLT3zl482FTsR1//Jn1XVfXTIVjBmKUUvhY1y+nDztGPU
 OoBf4da3+3XebEhI1t7gUDJzXdFRKzQYMKgyskLpGnCpcEW1dpWfi3uQL4ixtxNA/dmv
 iYHoGa8mvdZ0wlyySrzC6Uwe/f/VB8nc98Q0Gg9I++hqvU7okNPc/noMYbfSyVxp+kaU
 GIOH1rHuRATUpg8uCzMdJWRw2chkKwWOEZXyKSJY731dO2Uk3xXo3/ObJSg2Aw1gZu07
 1X/1yE7VKh+KK6iG806WEs8mEYN6rGMXIbCx8CKEa0jF5pd7e6fIhBlHZ5u6als4FO1q
 ocJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZeTtEMUT/w0aho5TjzWfNiStTT7w3WjsV8lmbKUt0zc=;
 b=ERQYI0gZUwTfO6aVjysSVpDLOQdM88tn+3EFYe4jSjNgRvs0gRra8sEx/0WIRt1Dyf
 dmqRNE5NhqzUuaOL5Akj9+AeMPvlE8zdsA4r+Lt2mMmwqWA8yDfmDiLESVn8Q9UFVGan
 5xL16JFA1juOorxcdNACoCykSd3RKqQJ/dEwQhCqWso53Z6Ze6Lj/2Gfh8yoF2UVfu/3
 NgDQ+LfcV2xsGzVsvdb5ggQYzYd0Uct9uUU8g/gnyKzZViS+rY2yO2NURL6dAi+FO8Uv
 M2nvBwafsxvRK8g9JWXp93LgeFHq3IoOPBe1pIqv+vx3l6wA3E4ImR8HZVa7z5mtTuWB
 Ld4A==
X-Gm-Message-State: APjAAAXE2AXIs7/lwwgOJ5UqHOz5EOby8BcNGxYQ7T5oD5Zh4hSBD9uz
 ZvQrvPzmhpUrdeuphKLDEHqRIgkujEEYHPfU7DM3eIgR+N4Mgg==
X-Google-Smtp-Source: APXvYqx769iEtnmeCPKDXbIxYM6a5eBqSWq29zQDlM2bBsrOmakhyBGdmkkYDcDHg02/Bpst96qSWIZ8X4bC10Uw9k8=
X-Received: by 2002:a5d:8404:: with SMTP id i4mr6663046ion.146.1562610929069; 
 Mon, 08 Jul 2019 11:35:29 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 8 Jul 2019 11:35:18 -0700
Message-ID: <CAM4xKrrb4MNYu8PZmt29f8R5FbSpiik7Q95XPqVMtBqQO7ZtPQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: [USRP-users] [UHD] 3.14.1.0 Release Announcement
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Content-Type: multipart/mixed; boundary="===============1596702928368371277=="
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

--===============1596702928368371277==
Content-Type: multipart/alternative; boundary="00000000000059879a058d2fb5fe"

--00000000000059879a058d2fb5fe
Content-Type: text/plain; charset="UTF-8"

UHD 3.14.1.0 is now available!  This is an ABI release.  It is API
compatible with 3.14.0.0.  This release includes several features and bug
fixes including DPDK support for X300, a software reset utility for X300, a
new bootloader for B200, and several bug fixes for TwinRX.

Installers for Windows and Fedora are available here:
http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/

The PPA for Ubuntu will be available soon and will be found here:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

The tag for this release is located here:
https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.0

There have been 47 commits since the last API release which can be viewed
here:
https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.0

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes can be submitted to the UHD or FPGA
repositories:
http://github.com/EttusResearch/uhd/pulls
http://github.com/EttusResearch/fpga/pulls

As always, we at Ettus Research would like to thank all of the UHD users in
the open source SDR community.  This release contains commits from users in
the community that submitted pull requests against the UHD
<https://github.com/EttusResearch/uhd> and FPGA
<https://github.com/EttusResearch/fpga> repositories as well as many
commits that are a direct result of issues reported back to us by users
like you through the UHD <https://github.com/EttusResearch/uhd/issues> and
FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
the USRP-users
mailing list
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
support <support@ettus.com>.  You have all helped contribute to the
continued improvement of UHD.  Thank you!

CHANGELOG:
## 003.014.001.000
N320: Terminate the DAC when not transmitting
E320: Add support for rev E
E320: Added .gitignore for FPGA build products
X300: Add DPDK support
X300: add capability to flash NI-2974 FPGA
X300: Broke two critical timing paths in FPGA
X300: fixed udp WSA buffer size assignment issue
E310: Fix DRAM_TEST target build
B200: Add bootloader for FX3 (fix for B2xx failing to enumerate)
TwinRX: Expose charge pump current for LO2
TwinRX: Add low spur mode for LO2
TwinRX: increase rev c lo1 charge pump default value
TwinRX: Fix tick rate
Device3: Constraint send/recv_frame_size based on down/upstream MTU
Device3: Fix MTU and default frame sizes
RFNoC: Search all nodes for tick rates
RFNoC: Change default address for the reg readbacks
uhd_image_builder: Let the OOT module point to folders not named "rfnoc"
uhd_image_builder: Add --auto-inst-src
MPMD: Fix spurious reclaim call after unclaim
MPMD: Release resources on destruction
MPM: Add SW/HW compat
liberio: Release context holder on destruction of last liberio xport
transport: fixed a pre-mature buffer reset
nirio: Fix typo in nirio_zero_copy
GPSD: fix API for 'gps_read'
AD9361: Fix return values for tune and set_clock_rate
DUC/DDC: Fix phase reset and accumulation
cores: Use NSDMI consistently in ?x_dsp_core_3000.*
Logging: fix deadlock issue on Windows machines
Logging: Fix ANSI colour codes
Utils: Add X300/X310 reset utility
Docs: Improved Windows-related build instructions
Docs: Add link to README for building custom filesystems for N3xx
sim: Fixing the port number in use for connection
tools: Fix for proj creation in ip_utils for tcl-based IP
tests: Fix mock_ctrl_iface for 32-bit MSVC

Best regards,
Michael

--00000000000059879a058d2fb5fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>UHD=C2=A0<span class=3D"gmail-m_-6394712477=
859256678gmail-m_-1923077621353444031gmail-m_-4201942810897146228gmail-m_66=
11035891199536525gmail-il">3.14.1.0</span>=C2=A0is
 now available!=C2=A0 This is an ABI release.=C2=A0 It is API compatible wi=
th 3.14.0.0.=C2=A0 This release includes several features and bug fixes inc=
luding DPDK support for X300, a software reset utility for X300, a new boot=
loader for B200, and several bug fixes for TwinRX.</div><div><br>Installers=
 for Windows and Fedora are available here:<br><a href=3D"http://files.ettu=
s.com/binaries/uhd/uhd_003.014.001.000-release/" target=3D"_blank">http://f=
iles.ettus.com/binaries/uhd/uhd_003.014.001.000-release/</a><br><br>The PPA=
 for Ubuntu will be available soon and will be found here:<br><a href=3D"ht=
tps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">h=
ttps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a><div><br>The tag=
 for this=C2=A0<span class=3D"gmail-m_-6394712477859256678gmail-m_-19230776=
21353444031gmail-m_-4201942810897146228gmail-m_6611035891199536525gmail-m_7=
114031387213579533gmail-m_1514408445525437586m_-5342275040162578537gmail-m_=
-2946839851478990667gmail-m_-4109964688741213537gmail-il"><span class=3D"gm=
ail-m_-6394712477859256678gmail-m_-1923077621353444031gmail-m_-420194281089=
7146228gmail-m_6611035891199536525gmail-m_7114031387213579533gmail-m_151440=
8445525437586m_-5342275040162578537gmail-m_-2946839851478990667gmail-il"><s=
pan class=3D"gmail-m_-6394712477859256678gmail-m_-1923077621353444031gmail-=
m_-4201942810897146228gmail-m_6611035891199536525gmail-m_711403138721357953=
3gmail-il">release</span></span></span>=C2=A0is located here:<br><a href=3D=
"https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.0" target=3D"_bl=
ank">https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.0</a></div><=
/div></div></div><div><div><div><br></div>There have been 47 commits since =
the last API=C2=A0<span class=3D"gmail-m_-6394712477859256678gmail-m_-19230=
77621353444031gmail-m_-4201942810897146228gmail-m_6611035891199536525gmail-=
m_7114031387213579533gmail-m_1345476092098422329gmail-m_-513578907835665001=
6gmail-il"><span class=3D"gmail-m_-6394712477859256678gmail-m_-192307762135=
3444031gmail-m_-4201942810897146228gmail-m_6611035891199536525gmail-m_71140=
31387213579533gmail-m_1345476092098422329gmail-il">release</span></span>=C2=
=A0which can be viewed here:<br><a href=3D"https://github.com/EttusResearch=
/uhd/compare/v3.14.0.0...v3.14.1.0" target=3D"_blank">https://github.com/Et=
tusResearch/uhd/compare/v3.14.0.0...v3.14.1.0</a><br><div><br></div><div><d=
iv>Please report any bugs found on the UHD issue tracker:</div><div><a href=
=3D"http://github.com/EttusResearch/uhd/issues" target=3D"_blank">http://gi=
thub.com/EttusResearch/uhd/issues</a><br></div><div>* Please do not use the=
 issue tracker for help or support.<br></div><div><br></div><div>Pull reque=
sts for direct code changes can be submitted to the UHD or FPGA repositorie=
s:</div><div><div><a href=3D"http://github.com/EttusResearch/uhd/pulls" tar=
get=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a><div><div><a hr=
ef=3D"http://github.com/EttusResearch/fpga/pulls" target=3D"_blank">http://=
github.com/EttusResearch/fpga/pulls</a></div></div></div></div></div></div>=
<div><br></div><div><div>As
 always, we at Ettus Research would like to thank all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from=
=20
users in the community that submitted pull requests against the=C2=A0<a hre=
f=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">UHD</a>=C2=A0a=
nd=C2=A0<a href=3D"https://github.com/EttusResearch/fpga" target=3D"_blank"=
>FPGA</a>=C2=A0repositories as well as many commits that are a direct resul=
t of issues reported back to us by users like you through the=C2=A0<a href=
=3D"https://github.com/EttusResearch/uhd/issues" target=3D"_blank">UHD</a>=
=C2=A0and=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/issues" tar=
get=3D"_blank">FPGA</a>=C2=A0issue trackers, the=C2=A0<a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank"=
>USRP-users mailing list</a>, and=C2=A0<a href=3D"mailto:support@ettus.com"=
 target=3D"_blank">Ettus support</a>.=C2=A0 You have all helped contribute =
to the continued improvement of UHD.=C2=A0 Thank you!</div></div><div><br><=
/div><div>CHANGELOG:</div><div>## 003.014.001.000<br>N320: Terminate the DA=
C when not transmitting<br>E320: Add support for rev E<br>E320: Added .giti=
gnore for FPGA build products<br>X300: Add DPDK support<br>X300: add capabi=
lity to flash NI-2974 FPGA<br>X300: Broke two critical timing paths in FPGA=
<br>X300: fixed udp WSA buffer size assignment issue<br>E310: Fix DRAM_TEST=
 target build<br>B200: Add bootloader for FX3 (fix for B2xx failing to enum=
erate)<br>TwinRX: Expose charge pump current for LO2<br>TwinRX: Add low spu=
r mode for LO2<br>TwinRX: increase rev c lo1 charge pump default value<br>T=
winRX: Fix tick rate<br>Device3: Constraint send/recv_frame_size based on d=
own/upstream MTU<br>Device3: Fix MTU and default frame sizes<br>RFNoC: Sear=
ch all nodes for tick rates<br>RFNoC: Change default address for the reg re=
adbacks<br>uhd_image_builder: Let the OOT module point to folders not named=
 &quot;rfnoc&quot;<br>uhd_image_builder: Add --auto-inst-src<br>MPMD: Fix s=
purious reclaim call after unclaim<br>MPMD: Release resources on destructio=
n<br>MPM: Add SW/HW compat<br>liberio: Release context holder on destructio=
n of last liberio xport<br>transport: fixed a pre-mature buffer reset<br>ni=
rio: Fix typo in nirio_zero_copy<br>GPSD: fix API for &#39;gps_read&#39;<br=
>AD9361: Fix return values for tune and set_clock_rate<br>DUC/DDC: Fix phas=
e reset and accumulation<br>cores: Use NSDMI consistently in ?x_dsp_core_30=
00.*<br>Logging: fix deadlock issue on Windows machines<br>Logging: Fix ANS=
I colour codes<br>Utils: Add X300/X310 reset utility<br>Docs: Improved Wind=
ows-related build instructions<br>Docs: Add link to README for building cus=
tom filesystems for N3xx<br>sim: Fixing the port number in use for connecti=
on<br>tools: Fix for proj creation in ip_utils for tcl-based IP<br>tests: F=
ix mock_ctrl_iface for 32-bit MSVC</div><div><br></div><div><div>Best regar=
ds,</div><div>Michael</div></div></div></div>

--00000000000059879a058d2fb5fe--


--===============1596702928368371277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1596702928368371277==--

