Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C21412A3D8
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2019 19:15:32 +0100 (CET)
Received: from [::1] (port=57058 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ijoiO-0005Ae-1D; Tue, 24 Dec 2019 13:15:28 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:42509)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ijoiK-00055Y-W3
 for usrp-users@lists.ettus.com; Tue, 24 Dec 2019 13:15:25 -0500
Received: by mail-qk1-f174.google.com with SMTP id z14so15274605qkg.9
 for <usrp-users@lists.ettus.com>; Tue, 24 Dec 2019 10:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6I8+Hy92c1+h/J/Em9jL63xHuc2YntkW6baKIRSk/g4=;
 b=eIbjCJkNYO/chKy3jZWK9hncykiUGo8y4D3WR+xkKGDq6Y/X2zUX59eUT0VUz+0mcM
 HCPCaUSrs+FZce6kYSjfrznVwvBtcb9OoTuL8/T/otHd04YiOowq2ES5yQ8uEbOLPeaA
 dicBXKg1p6xiqHJT3NLnZZ613I1hyVUFmmrYER7H9okWSCKceVsPQWpEguHooVob97pB
 J+H++xMWmSybMNfAz6HdcQ7zMhf83TbZWRFJO/vdyeSdWijKeoMOmJy7X5B+i3XykLJh
 oz9O+ExNQ2e+hvKwVISUqbBC9c5psSsnN84YgB9NfBiN9+Ioh124r9cGy8mFNiwRV4Q3
 vlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6I8+Hy92c1+h/J/Em9jL63xHuc2YntkW6baKIRSk/g4=;
 b=HayKRZAkjuLZXbthKXACJ2PaIPfvyudTLOdPMgdJFcd4Op+ZPYOihZyBLJMG568Kxb
 5/mEb9iLyFAshjeNVwsYeiYz0FSnpDwDr24BMN1fwmbPN+lZYqPL1iDNmHtAupQtmJ2V
 8g/OaN5/4Fvm1N9PrvJvg0I5NnWpV+mS9HkX8PGO2eqEMfnCbYnkO3Def20cMUZeIUIr
 soL5oXv0QoaYOelxMcWhROQmqYNG5z+hkUmxaQnWIzSpJWuEZkJC6IxGlHLnzNDhH+zB
 JsNDMNdt7vAkGISdmCjbPsy6txMgcncc2F4Hxf0UdO4lXWsr7q3Y2Ls1Dy1TzJFF0vp1
 5ICw==
X-Gm-Message-State: APjAAAVD8zD09Wgj+4rXuYm2guG3Otq6CDM+5NpaTstBo94x7YPDsK1U
 mpaL+D0xHfp352eI6vbcyTixXvUooODjSxagDUoxF1Dr
X-Google-Smtp-Source: APXvYqxDxqorgL8nRaoP6wE1yHwqPk4KTHNgX9KPLXjJ7ZJkjM0pzDOQ2D+JZE3h6KKcyqmJbnlWsgrP7MCu2RziobM=
X-Received: by 2002:a37:ac16:: with SMTP id e22mr31908025qkm.186.1577211284022; 
 Tue, 24 Dec 2019 10:14:44 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 24 Dec 2019 18:14:07 +0000
Message-ID: <CAL1aUnrOitAYD9ureD5OcTrFkwE_=bXfLtcS=NBXY2YxGe=hcg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Cannot update FPGA image on USRP E320
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
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Content-Type: multipart/mixed; boundary="===============1508732731391771842=="
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

--===============1508732731391771842==
Content-Type: multipart/alternative; boundary="00000000000051eb7e059a771e3d"

--00000000000051eb7e059a771e3d
Content-Type: text/plain; charset="UTF-8"

I am going to run my USRP E320 in host mode. To make sure that the FPGA
images on my development host and E320 match, I am trying to upload 1G FPGA
image to the E320.

The following is the process I am following:

Network interfaces on the E320:

root@ni-e320-31BB638:~# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
1000
    link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
       valid_lft forever preferred_lft forever
3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
1000
    link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
    inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
       valid_lft forever preferred_lft forever

--------------------------------------------------------------
Trying to upload the 1G image to the E320:

gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
uhd_image_loader --args
"type=e3xx,product=e320,mgmt_addr=192.168.1.2,fpga=1G"
[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
UHD_3.15.0.0-0-g4e06022c
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.2,type=e3xx,product=e320,serial=31BB638,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc',
'--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/e320.dtbo',
'/lib/firmware/e320.dts']' returned non-zero exit status 1
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 31BB638
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected compat
for component `FPGA'. Expected: 3.0 Actual: 3.1

-----------------------
Result of a probe:

gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
uhd_usrp_probe --args "addr=192.168.10.2"
[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
UHD_3.15.0.0-0-g4e06022c
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=31BB638,claimed=False,addr=192.168.10.2
[INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31BB638
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected compat
for component `FPGA'. Expected: 3.0 Actual: 3.1
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [MPM.PeriphManager] init() called with device args
`product=e320,mgmt_addr=192.168.10.2'.
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1329 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
1.25e+08
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[ERROR] [UHD] Exception caught in safe-call.
  in uhd::mpmd::mpmd_mboard_impl::~mpmd_mboard_impl()
  at /usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:308
dump_logs(); _claimer_task.reset(); _xport_mgr.reset(); if (not
rpc->request_with_token<bool>("unclaim")) {
uhd::_log::log(uhd::log::warning,
"/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 310, "MPMD",
boost::this_thread::get_id()) << "Failure to ack unclaim!";; } ->
rpc::timeout: Timeout of 2000ms while calling RPC function 'unclaim'
Error: rpc::timeout: Timeout of 60000ms while calling RPC function
'db_0_catalina_tune'
.....

See that this still shows USRP 3.13 version:

[INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown

So, how do I get the uhd_image_loader command to run successfully to get
the 3.15 version on the E320?

Thank you
Subu

--00000000000051eb7e059a771e3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am going to run my USRP E320 in host mode. To make =
sure that the FPGA images on my development host and E320 match, I am tryin=
g to upload 1G FPGA image to the E320.</div><div><br></div><div>The followi=
ng is the process I am following:</div><div><br></div><div>Network interfac=
es on the E320:</div><div><br></div><div>root@ni-e320-31BB638:~# ip a<br>1:=
 lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<br>=C2=
=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0 =
=C2=A0 inet <a href=3D"http://127.0.0.1/8">127.0.0.1/8</a> scope host lo<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<br>2: e=
th0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast qlen=
 1000<br>=C2=A0 =C2=A0 link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff<b=
r>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.2/24">192.168.1.2/24</a> b=
rd 192.168.1.255 scope global eth0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft =
forever preferred_lft forever<br>3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_=
UP&gt; mtu 1500 qdisc pfifo_fast qlen 1000<br>=C2=A0 =C2=A0 link/ether 00:8=
0:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http:/=
/192.168.10.2/24">192.168.10.2/24</a> brd 192.168.10.255 scope global sfp0<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever</div>=
<div><br></div><div>-------------------------------------------------------=
-------<br></div><div>Trying to upload the 1G image to the E320:<br></div><=
div><br></div><div>gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga=
-src &gt;&gt; uhd_image_loader --args &quot;type=3De3xx,product=3De320,mgmt=
_addr=3D192.168.1.2,fpga=3D1G&quot;<br>[INFO] [UHD] linux; GNU C++ version =
9.2.1 20191008; Boost_107100; UHD_3.15.0.0-0-g4e06022c<br>[INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.1.2,type=
=3De3xx,product=3De320,serial=3D31BB638,claimed=3DFalse,skip_init=3D1<br>[I=
NFO] [MPMD] Claimed device without full initialization.<br>[INFO] [MPMD IMA=
GE LOADER] Starting update. This may take a while.<br>[INFO] [MPM.PeriphMan=
ager] Updating component `fpga&#39;<br>[INFO] [MPM.PeriphManager] Updating =
component `dts&#39;<br>[ERROR] [MPM.PeriphManager] Error executing `dtc&#39=
;: Command &#39;[&#39;dtc&#39;, &#39;--symbols&#39;, &#39;-O&#39;, &#39;dtb=
&#39;, &#39;-q&#39;, &#39;-o&#39;, &#39;/lib/firmware/e320.dtbo&#39;, &#39;=
/lib/firmware/e320.dts&#39;]&#39; returned non-zero exit status 1<br>[INFO]=
 [MPM.RPCServer] Resetting peripheral manager.<br>[INFO] [MPM.PeriphManager=
] Device serial number: 31BB638<br>[INFO] [MPMD IMAGE LOADER] Update compon=
ent function succeeded.<br>[INFO] [MPM.PeriphManager] Found 1 daughterboard=
(s).<br>[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected=
 compat for component `FPGA&#39;. Expected: 3.0 Actual: 3.1</div><div><br><=
/div><div>-----------------------</div><div>Result of a probe:</div><div><b=
r></div><div>gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src &=
gt;&gt; uhd_usrp_probe --args &quot;addr=3D192.168.10.2&quot;<br>[INFO] [UH=
D] linux; GNU C++ version 9.2.1 20191008; Boost_107100; UHD_3.15.0.0-0-g4e0=
6022c<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt=
_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D31BB638,claimed=3D=
False,addr=3D192.168.10.2<br>[INFO] [MPM.main] Launching USRP/MPM, version:=
 3.13.0.2-gunknown<br>[INFO] [MPM.main] Spawning RPC process...<br>[INFO] [=
MPM.PeriphManager] Device serial number: 31BB638<br>[INFO] [MPM.PeriphManag=
er] Found 1 daughterboard(s).<br>[WARNING] [MPM.PeriphManager] Actual minor=
 compat ahead of expected compat for component `FPGA&#39;. Expected: 3.0 Ac=
tual: 3.1<br>[INFO] [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RPCSer=
ver] Spawning watchdog task...<br>[WARNING] [MPMD] Could not determine link=
 speed; using 1GibE max speed of 1.25e+08<br>[WARNING] [MPMD] Could not det=
ermine link speed; using 1GibE max speed of 1.25e+08<br>[INFO] [0/DmaFIFO_0=
] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [MPM.Pe=
riphManager] init() called with device args `product=3De320,mgmt_addr=3D192=
.168.10.2&#39;.<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1329 MB/s)=
<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)<br>[WARNING] [=
MPMD] Could not determine link speed; using 1GibE max speed of 1.25e+08<br>=
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of 1=
.25e+08<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100=
000003320)<br>[WARNING] [MPMD] Could not determine link speed; using 1GibE =
max speed of 1.25e+08<br>[WARNING] [MPMD] Could not determine link speed; u=
sing 1GibE max speed of 1.25e+08<br>[INFO] [0/DDC_0] Initializing block con=
trol (NOC ID: 0xDDC0000000000000)<br>[WARNING] [MPMD] Could not determine l=
ink speed; using 1GibE max speed of 1.25e+08<br>[WARNING] [MPMD] Could not =
determine link speed; using 1GibE max speed of 1.25e+08<br>[INFO] [0/DUC_0]=
 Initializing block control (NOC ID: 0xD0C0000000000002)</div><div>[ERROR] =
[UHD] Exception caught in safe-call.<br>=C2=A0 in uhd::mpmd::mpmd_mboard_im=
pl::~mpmd_mboard_impl()<br>=C2=A0 at /usr/local/src/uhd/host/lib/usrp/mpmd/=
mpmd_mboard_impl.cpp:308<br>dump_logs(); _claimer_task.reset(); _xport_mgr.=
reset(); if (not rpc-&gt;request_with_token&lt;bool&gt;(&quot;unclaim&quot;=
)) { uhd::_log::log(uhd::log::warning, &quot;/usr/local/src/uhd/host/lib/us=
rp/mpmd/mpmd_mboard_impl.cpp&quot;, 310, &quot;MPMD&quot;, boost::this_thre=
ad::get_id()) &lt;&lt; &quot;Failure to ack unclaim!&quot;;; } -&gt; rpc::t=
imeout: Timeout of 2000ms while calling RPC function &#39;unclaim&#39;<br>E=
rror: rpc::timeout: Timeout of 60000ms while calling RPC function &#39;db_0=
_catalina_tune&#39;<br></div><div>.....</div><div><br></div><div>See that t=
his still shows USRP 3.13 version:</div><div><br></div><div>[INFO] [MPM.mai=
n] Launching USRP/MPM, version: 3.13.0.2-gunknown</div><div><br></div><div>=
So, how do I get the uhd_image_loader command to run successfully to get th=
e 3.15 version on the E320?</div><div><br></div><div>Thank you</div><div>Su=
bu</div><div><br></div><div><br></div><div><br></div></div>

--00000000000051eb7e059a771e3d--


--===============1508732731391771842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1508732731391771842==--

