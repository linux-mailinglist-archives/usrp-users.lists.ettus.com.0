Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DE312FD6C
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 21:08:37 +0100 (CET)
Received: from [::1] (port=48676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inTFM-000100-5F; Fri, 03 Jan 2020 15:08:36 -0500
Received: from mail-lf1-f44.google.com ([209.85.167.44]:44868)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1inTFI-0000tz-52
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 15:08:32 -0500
Received: by mail-lf1-f44.google.com with SMTP id v201so32545714lfa.11
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 12:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YhspY0013Q8/ncdhFNp3mz+Mdy3rsZbi55KbVljj3jI=;
 b=d5DthE1KC4kF8FeKfwQzfL2wMcsPjJrLr9tXXbXtcTYHw3gEM6ioBIHCQCvnjqpbs5
 wDbKUSweGTESWTjrkQFcTUdjTrbqysEjL7bBJF9ZVeps4MRNf2STkxNdkAw/XUkCg7KI
 R+W1Qzp//MMvsmUSaOD8dWGh2nImpQ3BwG9iDtKJH7TpeYjL67A2ZOG88BTy9I6MyChF
 PqKmh7xZw2v7NRVx6QBaxZRjJ5VQEi9lSYC2unNtxpGw5YiDM/CBhY2DyeP9U9SbXQ+J
 NJfU125dsVd2OGLt3iPVA9wzuxJ1GPnYbUHm/CVgw4Ua8fugqCiHJJn3sCCOzUnSfzFy
 kZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YhspY0013Q8/ncdhFNp3mz+Mdy3rsZbi55KbVljj3jI=;
 b=gr2OG/6e2gnt2drXkTrZyXM5BFr0thyN6s6U/o5NleoKTQITT0TcLdLufLyuo4I+WK
 l89tsqaZbai9myEmnyxCZvj5cF2QoDCIe85UB2CGQHDnoW8zOhitjsh8cjBMZKMBRPMN
 3FAUJEhOc8ezzuFK5zkag9AZr4Ri+JTW0usiIgdGPM1snYt3xKRWpahDK3qslwFgrHDO
 uEDTDmBtURjUKL7fgrDJCT3ICgMXnLiPyRzbPvhyBhoyXlg45bx/Qb1MQQgNez8FLQAo
 lT5ROEtnAy/mibl04c3w87IjB0pkMCmZbUsvsQmRuUdniTSxGoDhupAxEh4KzVnsURpM
 zqjg==
X-Gm-Message-State: APjAAAUNPV186/N1oPc302XkgMclCkJVKUErigD67Rx12Nu9m7zbzsEE
 5puqw1vl5DgMRXF4nuu0hMNvmr5jd47FTaODzk1W+hga
X-Google-Smtp-Source: APXvYqxs1n5E1ZhL/3ykGSTnMo75L9FLIHlhT77zoTCCPhJ254F5z91V6icOtDnJ+MqlmO+bjkRMQjZSrISl1mi+Fn0=
X-Received: by 2002:ac2:485c:: with SMTP id 28mr50486692lfy.118.1578082070695; 
 Fri, 03 Jan 2020 12:07:50 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnrOitAYD9ureD5OcTrFkwE_=bXfLtcS=NBXY2YxGe=hcg@mail.gmail.com>
In-Reply-To: <CAL1aUnrOitAYD9ureD5OcTrFkwE_=bXfLtcS=NBXY2YxGe=hcg@mail.gmail.com>
Date: Fri, 3 Jan 2020 14:07:41 -0600
Message-ID: <CANf970ahoj1zKg0MG47GN8oznYz6kRV9gXC-G3BGEY_WFXY7og@mail.gmail.com>
To: Subu Rama <subu.rama@gmail.com>
Subject: Re: [USRP-users] Cannot update FPGA image on USRP E320
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1412642211995266201=="
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

--===============1412642211995266201==
Content-Type: multipart/alternative; boundary="000000000000401ef0059b41ddae"

--000000000000401ef0059b41ddae
Content-Type: text/plain; charset="UTF-8"

Hey Subu,

I'd suspect that the MPM versioning is the issue here. You can manually
compile and install MPM on your E320, or you can simply reflash your SD
card with the latest SDimg. Based on when this was posted vs when v3.15.0.0
was tagged, I'd guess you're working with a release candidate and didn't
have access to a fresh filesystem image to install. You'll want to install
v3.15.0.0 on your host first, then follow this guide for the mender update:

https://kb.ettus.com/E320_Getting_Started_Guide#Mender_Update_Process

Or this guide for reflashing the SD card by physically inserting it into
your PC (you need to take the backplate off the E320 to access the SD):

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card

Sam Reiter
Ettus Research

On Tue, Dec 24, 2019 at 12:15 PM Subu Rama via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am going to run my USRP E320 in host mode. To make sure that the FPGA
> images on my development host and E320 match, I am trying to upload 1G FPGA
> image to the E320.
>
> The following is the process I am following:
>
> Network interfaces on the E320:
>
> root@ni-e320-31BB638:~# ip a
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
> 1000
>     link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
>     inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
>        valid_lft forever preferred_lft forever
> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
> 1000
>     link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>        valid_lft forever preferred_lft forever
>
> --------------------------------------------------------------
> Trying to upload the 1G image to the E320:
>
> gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
> uhd_image_loader --args
> "type=e3xx,product=e320,mgmt_addr=192.168.1.2,fpga=1G"
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
> UHD_3.15.0.0-0-g4e06022c
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.1.2,type=e3xx,product=e320,serial=31BB638,claimed=False,skip_init=1
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc',
> '--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/e320.dtbo',
> '/lib/firmware/e320.dts']' returned non-zero exit status 1
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 31BB638
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected compat
> for component `FPGA'. Expected: 3.0 Actual: 3.1
>
> -----------------------
> Result of a probe:
>
> gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
> uhd_usrp_probe --args "addr=192.168.10.2"
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
> UHD_3.15.0.0-0-g4e06022c
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=31BB638,claimed=False,addr=192.168.10.2
> [INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown
> [INFO] [MPM.main] Spawning RPC process...
> [INFO] [MPM.PeriphManager] Device serial number: 31BB638
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected compat
> for component `FPGA'. Expected: 3.0 Actual: 3.1
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [MPM.PeriphManager] init() called with device args
> `product=e320,mgmt_addr=192.168.10.2'.
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1329 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
> 1.25e+08
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [ERROR] [UHD] Exception caught in safe-call.
>   in uhd::mpmd::mpmd_mboard_impl::~mpmd_mboard_impl()
>   at /usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:308
> dump_logs(); _claimer_task.reset(); _xport_mgr.reset(); if (not
> rpc->request_with_token<bool>("unclaim")) {
> uhd::_log::log(uhd::log::warning,
> "/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 310, "MPMD",
> boost::this_thread::get_id()) << "Failure to ack unclaim!";; } ->
> rpc::timeout: Timeout of 2000ms while calling RPC function 'unclaim'
> Error: rpc::timeout: Timeout of 60000ms while calling RPC function
> 'db_0_catalina_tune'
> .....
>
> See that this still shows USRP 3.13 version:
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown
>
> So, how do I get the uhd_image_loader command to run successfully to get
> the 3.15 version on the E320?
>
> Thank you
> Subu
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000401ef0059b41ddae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Subu,<div><br></div><div>I&#39;d suspect that the MPM =
versioning is the issue here. You can manually compile and install MPM on y=
our E320, or you can simply reflash your SD card with the latest SDimg. Bas=
ed on when this was posted vs when v3.15.0.0 was tagged, I&#39;d guess you&=
#39;re working with a release candidate and didn&#39;t have access to a fre=
sh filesystem image to install. You&#39;ll want to install v3.15.0.0 on you=
r host first, then follow this guide for the mender update:</div><div><br><=
/div><div><a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Mender=
_Update_Process">https://kb.ettus.com/E320_Getting_Started_Guide#Mender_Upd=
ate_Process</a><br></div><div><br></div><div>Or this guide for reflashing t=
he SD card by physically inserting it into your PC (you need to take the ba=
ckplate off the E320 to access the SD):</div><div><br></div><div><a href=3D=
"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card"=
>https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card<=
/a><br></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"=
ltr">Sam Reiter=C2=A0<div>Ettus Research</div></div></div></div></div></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Dec 24, 2019 at 12:15 PM Subu Rama via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>I am going to run my USRP E320 in host mode. To make sure tha=
t the FPGA images on my development host and E320 match, I am trying to upl=
oad 1G FPGA image to the E320.</div><div><br></div><div>The following is th=
e process I am following:</div><div><br></div><div>Network interfaces on th=
e E320:</div><div><br></div><div>root@ni-e320-31BB638:~# ip a<br>1: lo: &lt=
;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<br>=C2=A0 =C2=
=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0 =C2=A0 =
inet <a href=3D"http://127.0.0.1/8" target=3D"_blank">127.0.0.1/8</a> scope=
 host lo<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft fore=
ver<br>2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfif=
o_fast qlen 1000<br>=C2=A0 =C2=A0 link/ether 00:80:2f:28:8d:7e brd ff:ff:ff=
:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.2/24" target=3D=
"_blank">192.168.1.2/24</a> brd 192.168.1.255 scope global eth0<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<br>3: sfp0: &lt=
;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast qlen 1000<br=
>=C2=A0 =C2=A0 link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<br>=C2=A0=
 =C2=A0 inet <a href=3D"http://192.168.10.2/24" target=3D"_blank">192.168.1=
0.2/24</a> brd 192.168.10.255 scope global sfp0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0valid_lft forever preferred_lft forever</div><div><br></div><div>-------=
-------------------------------------------------------<br></div><div>Tryin=
g to upload the 1G image to the E320:<br></div><div><br></div><div>gnuradio=
@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src &gt;&gt; uhd_image_loa=
der --args &quot;type=3De3xx,product=3De320,mgmt_addr=3D192.168.1.2,fpga=3D=
1G&quot;<br>[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_10710=
0; UHD_3.15.0.0-0-g4e06022c<br>[INFO] [MPMD] Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.1.2,type=3De3xx,product=3De320,serial=
=3D31BB638,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed device wi=
thout full initialization.<br>[INFO] [MPMD IMAGE LOADER] Starting update. T=
his may take a while.<br>[INFO] [MPM.PeriphManager] Updating component `fpg=
a&#39;<br>[INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>[ERROR=
] [MPM.PeriphManager] Error executing `dtc&#39;: Command &#39;[&#39;dtc&#39=
;, &#39;--symbols&#39;, &#39;-O&#39;, &#39;dtb&#39;, &#39;-q&#39;, &#39;-o&=
#39;, &#39;/lib/firmware/e320.dtbo&#39;, &#39;/lib/firmware/e320.dts&#39;]&=
#39; returned non-zero exit status 1<br>[INFO] [MPM.RPCServer] Resetting pe=
ripheral manager.<br>[INFO] [MPM.PeriphManager] Device serial number: 31BB6=
38<br>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>[I=
NFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[WARNING] [MPM.Periph=
Manager] Actual minor compat ahead of expected compat for component `FPGA&#=
39;. Expected: 3.0 Actual: 3.1</div><div><br></div><div>-------------------=
----</div><div>Result of a probe:</div><div><br></div><div>gnuradio@nuc-qrc=
3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src &gt;&gt; uhd_usrp_probe --args=
 &quot;addr=3D192.168.10.2&quot;<br>[INFO] [UHD] linux; GNU C++ version 9.2=
.1 20191008; Boost_107100; UHD_3.15.0.0-0-g4e06022c<br>[INFO] [MPMD] Initia=
lizing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3De=
3xx,product=3De320,serial=3D31BB638,claimed=3DFalse,addr=3D192.168.10.2<br>=
[INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown<br>[INFO] =
[MPM.main] Spawning RPC process...<br>[INFO] [MPM.PeriphManager] Device ser=
ial number: 31BB638<br>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).=
<br>[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected com=
pat for component `FPGA&#39;. Expected: 3.0 Actual: 3.1<br>[INFO] [MPM.RPCS=
erver] RPC server ready!<br>[INFO] [MPM.RPCServer] Spawning watchdog task..=
.<br>[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed=
 of 1.25e+08<br>[WARNING] [MPMD] Could not determine link speed; using 1Gib=
E max speed of 1.25e+08<br>[INFO] [0/DmaFIFO_0] Initializing block control =
(NOC ID: 0xF1F0D00000000000)<br>[INFO] [MPM.PeriphManager] init() called wi=
th device args `product=3De320,mgmt_addr=3D192.168.10.2&#39;.<br>[INFO] [0/=
DmaFIFO_0] BIST passed (Throughput: 1329 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST=
 passed (Throughput: 1336 MB/s)<br>[WARNING] [MPMD] Could not determine lin=
k speed; using 1GibE max speed of 1.25e+08<br>[WARNING] [MPMD] Could not de=
termine link speed; using 1GibE max speed of 1.25e+08<br>[INFO] [0/Radio_0]=
 Initializing block control (NOC ID: 0x12AD100000003320)<br>[WARNING] [MPMD=
] Could not determine link speed; using 1GibE max speed of 1.25e+08<br>[WAR=
NING] [MPMD] Could not determine link speed; using 1GibE max speed of 1.25e=
+08<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000=
000)<br>[WARNING] [MPMD] Could not determine link speed; using 1GibE max sp=
eed of 1.25e+08<br>[WARNING] [MPMD] Could not determine link speed; using 1=
GibE max speed of 1.25e+08<br>[INFO] [0/DUC_0] Initializing block control (=
NOC ID: 0xD0C0000000000002)</div><div>[ERROR] [UHD] Exception caught in saf=
e-call.<br>=C2=A0 in uhd::mpmd::mpmd_mboard_impl::~mpmd_mboard_impl()<br>=
=C2=A0 at /usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:308<br=
>dump_logs(); _claimer_task.reset(); _xport_mgr.reset(); if (not rpc-&gt;re=
quest_with_token&lt;bool&gt;(&quot;unclaim&quot;)) { uhd::_log::log(uhd::lo=
g::warning, &quot;/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cp=
p&quot;, 310, &quot;MPMD&quot;, boost::this_thread::get_id()) &lt;&lt; &quo=
t;Failure to ack unclaim!&quot;;; } -&gt; rpc::timeout: Timeout of 2000ms w=
hile calling RPC function &#39;unclaim&#39;<br>Error: rpc::timeout: Timeout=
 of 60000ms while calling RPC function &#39;db_0_catalina_tune&#39;<br></di=
v><div>.....</div><div><br></div><div>See that this still shows USRP 3.13 v=
ersion:</div><div><br></div><div>[INFO] [MPM.main] Launching USRP/MPM, vers=
ion: 3.13.0.2-gunknown</div><div><br></div><div>So, how do I get the uhd_im=
age_loader command to run successfully to get the 3.15 version on the E320?=
</div><div><br></div><div>Thank you</div><div>Subu</div><div><br></div><div=
><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000401ef0059b41ddae--


--===============1412642211995266201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1412642211995266201==--

