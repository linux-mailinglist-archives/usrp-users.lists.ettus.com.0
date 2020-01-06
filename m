Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E147131129
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 12:08:59 +0100 (CET)
Received: from [::1] (port=60436 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioQFg-00068H-04; Mon, 06 Jan 2020 06:08:52 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:33752)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ioQFd-00064h-3J
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 06:08:49 -0500
Received: by mail-qt1-f173.google.com with SMTP id d5so42174706qto.0
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 03:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/3xZ97UPWLuR+6leHmI+ToCv/0c6GS05ja5u9nGap3g=;
 b=Sp/WvBIFJ5dTWbtpH5HU6sCFn4VyDpKMMWjRRhNK6Yjxo3ajabpMAjKvdhXkiEDnF2
 Q76qVTAobwzIYoY91ZzB7X7WSt+OHcvasvptbDzr3tccuBBIck6T4VdWQ/Xu86I72X/n
 jMbtbqEOgs5s8rjYCgnvsLiSuxS5QNk0LwVnYt8BEejGhFFalkqBfbpi242YVGdXAUs6
 YGMu7kOoJxOf55t4BDHciJjcIfyH6zFzazs+e51JPKyA/pWxUvQ/KfW5AXIazgbTqWv2
 cp7xG+c8FAw4ZmHxVoRy33eETFseZQxmbZI3pNuawgvjP+QvFTSK8zEfnfA2tirrnnhi
 bslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/3xZ97UPWLuR+6leHmI+ToCv/0c6GS05ja5u9nGap3g=;
 b=MuWoadTJTVS6grMCKZOKnpYwbn39T4lMXb6uR+oouicNua0CFNSadSIERQp3VxOMSn
 6rYdCnR1+ok72OUg63Ro6zr7nizLBPdoukOCFX+wkfqIe9ogtotx55hUBb9Z06oAh9Ec
 EbPxw+k7+Z5Nfw15/hzLpvQMIzlgLQ919SLzPxIv32RY+aiBCg0TskIqrCXIs4/aIXOu
 rjHaILaUSAcMwlR3yMpX/BoPS4+4Fw4/5I5+58aWvqH3cc0ZPLeOBaC3SvHBpfwiql04
 zgrBdsvRoo2KdlNXPMdl1DVGl66/FF5gexzd768hZgDZq3HjJTRg457O1orIVYAgGFde
 uWhQ==
X-Gm-Message-State: APjAAAWFMFE5iVcnaqTA1LfGccUqWxJx0KiibHX4uz7BH88PRI+0WU8G
 v8cpp4qaTCx/dBoSTI9Rx7tR1w0Q8+za9OetZqE=
X-Google-Smtp-Source: APXvYqz/CXx8UJMLi1hQKqQSFXBNE3tEJVoGjKZfVjGsCXi1ADX1EgAq339q7R+XH9YXrbBZcwsvD8sVNvmsJXMfsEg=
X-Received: by 2002:ac8:4151:: with SMTP id e17mr75977992qtm.234.1578308888388; 
 Mon, 06 Jan 2020 03:08:08 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnrOitAYD9ureD5OcTrFkwE_=bXfLtcS=NBXY2YxGe=hcg@mail.gmail.com>
 <CANf970ahoj1zKg0MG47GN8oznYz6kRV9gXC-G3BGEY_WFXY7og@mail.gmail.com>
In-Reply-To: <CANf970ahoj1zKg0MG47GN8oznYz6kRV9gXC-G3BGEY_WFXY7og@mail.gmail.com>
Date: Mon, 6 Jan 2020 11:07:32 +0000
Message-ID: <CAL1aUnpjoL4BLZbOomv_-AVysPvQhfHcrUPqUjPoCat25UskMg@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
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
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2327170547109290079=="
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

--===============2327170547109290079==
Content-Type: multipart/alternative; boundary="000000000000a36abb059b76ac2e"

--000000000000a36abb059b76ac2e
Content-Type: text/plain; charset="UTF-8"

Sam:
   Yes, updating to the recently released UHD 3.15.0.0 resolved this issue.

Thank you
Subu


On Fri, Jan 3, 2020 at 8:07 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Hey Subu,
>
> I'd suspect that the MPM versioning is the issue here. You can manually
> compile and install MPM on your E320, or you can simply reflash your SD
> card with the latest SDimg. Based on when this was posted vs when v3.15.0.0
> was tagged, I'd guess you're working with a release candidate and didn't
> have access to a fresh filesystem image to install. You'll want to install
> v3.15.0.0 on your host first, then follow this guide for the mender update:
>
> https://kb.ettus.com/E320_Getting_Started_Guide#Mender_Update_Process
>
> Or this guide for reflashing the SD card by physically inserting it into
> your PC (you need to take the backplate off the E320 to access the SD):
>
> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card
>
> Sam Reiter
> Ettus Research
>
> On Tue, Dec 24, 2019 at 12:15 PM Subu Rama via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I am going to run my USRP E320 in host mode. To make sure that the FPGA
>> images on my development host and E320 match, I am trying to upload 1G FPGA
>> image to the E320.
>>
>> The following is the process I am following:
>>
>> Network interfaces on the E320:
>>
>> root@ni-e320-31BB638:~# ip a
>> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>>     inet 127.0.0.1/8 scope host lo
>>        valid_lft forever preferred_lft forever
>> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
>> 1000
>>     link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
>>     inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
>>        valid_lft forever preferred_lft forever
>> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
>> 1000
>>     link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
>>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>>        valid_lft forever preferred_lft forever
>>
>> --------------------------------------------------------------
>> Trying to upload the 1G image to the E320:
>>
>> gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
>> uhd_image_loader --args
>> "type=e3xx,product=e320,mgmt_addr=192.168.1.2,fpga=1G"
>> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
>> UHD_3.15.0.0-0-g4e06022c
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.1.2,type=e3xx,product=e320,serial=31BB638,claimed=False,skip_init=1
>> [INFO] [MPMD] Claimed device without full initialization.
>> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>> [INFO] [MPM.PeriphManager] Updating component `fpga'
>> [INFO] [MPM.PeriphManager] Updating component `dts'
>> [ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc',
>> '--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/e320.dtbo',
>> '/lib/firmware/e320.dts']' returned non-zero exit status 1
>> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>> [INFO] [MPM.PeriphManager] Device serial number: 31BB638
>> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>> [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected
>> compat for component `FPGA'. Expected: 3.0 Actual: 3.1
>>
>> -----------------------
>> Result of a probe:
>>
>> gnuradio@nuc-qrc3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src >>
>> uhd_usrp_probe --args "addr=192.168.10.2"
>> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100;
>> UHD_3.15.0.0-0-g4e06022c
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=31BB638,claimed=False,addr=192.168.10.2
>> [INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown
>> [INFO] [MPM.main] Spawning RPC process...
>> [INFO] [MPM.PeriphManager] Device serial number: 31BB638
>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>> [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected
>> compat for component `FPGA'. Expected: 3.0 Actual: 3.1
>> [INFO] [MPM.RPCServer] RPC server ready!
>> [INFO] [MPM.RPCServer] Spawning watchdog task...
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>> 0xF1F0D00000000000)
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `product=e320,mgmt_addr=192.168.10.2'.
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1329 MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of
>> 1.25e+08
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [ERROR] [UHD] Exception caught in safe-call.
>>   in uhd::mpmd::mpmd_mboard_impl::~mpmd_mboard_impl()
>>   at /usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:308
>> dump_logs(); _claimer_task.reset(); _xport_mgr.reset(); if (not
>> rpc->request_with_token<bool>("unclaim")) {
>> uhd::_log::log(uhd::log::warning,
>> "/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 310, "MPMD",
>> boost::this_thread::get_id()) << "Failure to ack unclaim!";; } ->
>> rpc::timeout: Timeout of 2000ms while calling RPC function 'unclaim'
>> Error: rpc::timeout: Timeout of 60000ms while calling RPC function
>> 'db_0_catalina_tune'
>> .....
>>
>> See that this still shows USRP 3.13 version:
>>
>> [INFO] [MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown
>>
>> So, how do I get the uhd_image_loader command to run successfully to get
>> the 3.15 version on the E320?
>>
>> Thank you
>> Subu
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000a36abb059b76ac2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sam:</div><div>=C2=A0=C2=A0 Yes, updating to the rece=
ntly released UHD 3.15.0.0 resolved this issue.</div><div><br></div><div>Th=
ank you</div><div>Subu</div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 3, 2020 at 8:07 PM S=
am Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hey Subu,<div><br></div><div>I&#39;d suspect that the MPM v=
ersioning is the issue here. You can manually compile and install MPM on yo=
ur E320, or you can simply reflash your SD card with the latest SDimg. Base=
d on when this was posted vs when v3.15.0.0 was tagged, I&#39;d guess you&#=
39;re working with a release candidate and didn&#39;t have access to a fres=
h filesystem image to install. You&#39;ll want to install v3.15.0.0 on your=
 host first, then follow this guide for the mender update:</div><div><br></=
div><div><a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Mender_=
Update_Process" target=3D"_blank">https://kb.ettus.com/E320_Getting_Started=
_Guide#Mender_Update_Process</a><br></div><div><br></div><div>Or this guide=
 for reflashing the SD card by physically inserting it into your PC (you ne=
ed to take the backplate off the E320 to access the SD):</div><div><br></di=
v><div><a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Im=
age_to_a_SD_Card" target=3D"_blank">https://kb.ettus.com/Writing_the_USRP_F=
ile_System_Disk_Image_to_a_SD_Card</a><br></div><div><br></div><div><div><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>=
Ettus Research</div></div></div></div></div></div></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 24, 201=
9 at 12:15 PM Subu Rama via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>I am going to run my USRP E320 in host mode. To make sure that the FPG=
A images on my development host and E320 match, I am trying to upload 1G FP=
GA image to the E320.</div><div><br></div><div>The following is the process=
 I am following:</div><div><br></div><div>Network interfaces on the E320:</=
div><div><br></div><div>root@ni-e320-31BB638:~# ip a<br>1: lo: &lt;LOOPBACK=
,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<br>=C2=A0 =C2=A0 link/lo=
opback 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0 =C2=A0 inet <a hre=
f=3D"http://127.0.0.1/8" target=3D"_blank">127.0.0.1/8</a> scope host lo<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<br>2: e=
th0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast qlen=
 1000<br>=C2=A0 =C2=A0 link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff<b=
r>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.2/24" target=3D"_blank">19=
2.168.1.2/24</a> brd 192.168.1.255 scope global eth0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0valid_lft forever preferred_lft forever<br>3: sfp0: &lt;BROADCAST=
,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast qlen 1000<br>=C2=A0 =
=C2=A0 link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 =
inet <a href=3D"http://192.168.10.2/24" target=3D"_blank">192.168.10.2/24</=
a> brd 192.168.10.255 scope global sfp0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid=
_lft forever preferred_lft forever</div><div><br></div><div>---------------=
-----------------------------------------------<br></div><div>Trying to upl=
oad the 1G image to the E320:<br></div><div><br></div><div>gnuradio@nuc-qrc=
3 (UHD-3.15.LTS):/usr/local/src/uhd/fpga-src &gt;&gt; uhd_image_loader --ar=
gs &quot;type=3De3xx,product=3De320,mgmt_addr=3D192.168.1.2,fpga=3D1G&quot;=
<br>[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107100; UHD_3=
.15.0.0-0-g4e06022c<br>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.1.2,type=3De3xx,product=3De320,serial=3D31BB6=
38,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed device without fu=
ll initialization.<br>[INFO] [MPMD IMAGE LOADER] Starting update. This may =
take a while.<br>[INFO] [MPM.PeriphManager] Updating component `fpga&#39;<b=
r>[INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>[ERROR] [MPM.P=
eriphManager] Error executing `dtc&#39;: Command &#39;[&#39;dtc&#39;, &#39;=
--symbols&#39;, &#39;-O&#39;, &#39;dtb&#39;, &#39;-q&#39;, &#39;-o&#39;, &#=
39;/lib/firmware/e320.dtbo&#39;, &#39;/lib/firmware/e320.dts&#39;]&#39; ret=
urned non-zero exit status 1<br>[INFO] [MPM.RPCServer] Resetting peripheral=
 manager.<br>[INFO] [MPM.PeriphManager] Device serial number: 31BB638<br>[I=
NFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>[INFO] [MP=
M.PeriphManager] Found 1 daughterboard(s).<br>[WARNING] [MPM.PeriphManager]=
 Actual minor compat ahead of expected compat for component `FPGA&#39;. Exp=
ected: 3.0 Actual: 3.1</div><div><br></div><div>-----------------------</di=
v><div>Result of a probe:</div><div><br></div><div>gnuradio@nuc-qrc3 (UHD-3=
.15.LTS):/usr/local/src/uhd/fpga-src &gt;&gt; uhd_usrp_probe --args &quot;a=
ddr=3D192.168.10.2&quot;<br>[INFO] [UHD] linux; GNU C++ version 9.2.1 20191=
008; Boost_107100; UHD_3.15.0.0-0-g4e06022c<br>[INFO] [MPMD] Initializing 1=
 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3De3xx,prod=
uct=3De320,serial=3D31BB638,claimed=3DFalse,addr=3D192.168.10.2<br>[INFO] [=
MPM.main] Launching USRP/MPM, version: 3.13.0.2-gunknown<br>[INFO] [MPM.mai=
n] Spawning RPC process...<br>[INFO] [MPM.PeriphManager] Device serial numb=
er: 31BB638<br>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[WAR=
NING] [MPM.PeriphManager] Actual minor compat ahead of expected compat for =
component `FPGA&#39;. Expected: 3.0 Actual: 3.1<br>[INFO] [MPM.RPCServer] R=
PC server ready!<br>[INFO] [MPM.RPCServer] Spawning watchdog task...<br>[WA=
RNING] [MPMD] Could not determine link speed; using 1GibE max speed of 1.25=
e+08<br>[WARNING] [MPMD] Could not determine link speed; using 1GibE max sp=
eed of 1.25e+08<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=
 0xF1F0D00000000000)<br>[INFO] [MPM.PeriphManager] init() called with devic=
e args `product=3De320,mgmt_addr=3D192.168.10.2&#39;.<br>[INFO] [0/DmaFIFO_=
0] BIST passed (Throughput: 1329 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed =
(Throughput: 1336 MB/s)<br>[WARNING] [MPMD] Could not determine link speed;=
 using 1GibE max speed of 1.25e+08<br>[WARNING] [MPMD] Could not determine =
link speed; using 1GibE max speed of 1.25e+08<br>[INFO] [0/Radio_0] Initial=
izing block control (NOC ID: 0x12AD100000003320)<br>[WARNING] [MPMD] Could =
not determine link speed; using 1GibE max speed of 1.25e+08<br>[WARNING] [M=
PMD] Could not determine link speed; using 1GibE max speed of 1.25e+08<br>[=
INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>=
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed of 1=
.25e+08<br>[WARNING] [MPMD] Could not determine link speed; using 1GibE max=
 speed of 1.25e+08<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: =
0xD0C0000000000002)</div><div>[ERROR] [UHD] Exception caught in safe-call.<=
br>=C2=A0 in uhd::mpmd::mpmd_mboard_impl::~mpmd_mboard_impl()<br>=C2=A0 at =
/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:308<br>dump_logs=
(); _claimer_task.reset(); _xport_mgr.reset(); if (not rpc-&gt;request_with=
_token&lt;bool&gt;(&quot;unclaim&quot;)) { uhd::_log::log(uhd::log::warning=
, &quot;/usr/local/src/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp&quot;, 3=
10, &quot;MPMD&quot;, boost::this_thread::get_id()) &lt;&lt; &quot;Failure =
to ack unclaim!&quot;;; } -&gt; rpc::timeout: Timeout of 2000ms while calli=
ng RPC function &#39;unclaim&#39;<br>Error: rpc::timeout: Timeout of 60000m=
s while calling RPC function &#39;db_0_catalina_tune&#39;<br></div><div>...=
..</div><div><br></div><div>See that this still shows USRP 3.13 version:</d=
iv><div><br></div><div>[INFO] [MPM.main] Launching USRP/MPM, version: 3.13.=
0.2-gunknown</div><div><br></div><div>So, how do I get the uhd_image_loader=
 command to run successfully to get the 3.15 version on the E320?</div><div=
><br></div><div>Thank you</div><div>Subu</div><div><br></div><div><br></div=
><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a36abb059b76ac2e--


--===============2327170547109290079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2327170547109290079==--

