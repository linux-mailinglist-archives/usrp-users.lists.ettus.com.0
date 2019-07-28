Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 699B277C79
	for <lists+usrp-users@lfdr.de>; Sun, 28 Jul 2019 02:12:17 +0200 (CEST)
Received: from [::1] (port=33238 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hrWnL-00076L-VA; Sat, 27 Jul 2019 20:12:11 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:34614)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hrWnI-0006yE-1H
 for usrp-users@lists.ettus.com; Sat, 27 Jul 2019 20:12:08 -0400
Received: by mail-qt1-f175.google.com with SMTP id k10so56335240qtq.1
 for <usrp-users@lists.ettus.com>; Sat, 27 Jul 2019 17:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=fCqbfgPoskv09ys5y2tDd/K0/oiyD3yIrJxvQbcXp0k=;
 b=k0aEiTfdH/mFbYJ0OOKb/SLLFI7j/A+s11Z/n9bYnXtHVy/b2Eha0nmRvnwmVONgwj
 +UPGjqai7rFL6F8VT0qR/S0vB2I2W7iCAaCPUf/eQcXSK15JCxpk+ai2zz2DPUH6BXnY
 o5V0BxEpz2igISBWd9yJUNUrHdg7yt5oMpmSbFOOim9V2E+gO4qzl6z0T9kR9kZXjqgX
 ast85c2PNjZPm3J8MAn0EDhx95Y5K7/7VBin+snHq3mJVI8QXbPu7lc7TmZxXgpwdm0i
 RQL794zlwU+pWyuVylHBbZ1NRyPkGzZFthsosNd5mQ+SFMhYFgxvx4iOzgdKpEDoP/kA
 0/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=fCqbfgPoskv09ys5y2tDd/K0/oiyD3yIrJxvQbcXp0k=;
 b=lui3XfXX1gXti66wUK8EvLEYXls4EzS0anh+WFlAR3ptdPLrib6vcWZIUM6j19Vj7R
 GEhx22MNryI6tnEYFPwZAV9EjQcD1BJbHoKuHNNHmPnXdedhAt9iRNRPITljG/n8DIDw
 bPX9g+aokx9uBpsn/VzUz2MhgbRKIVKo/MZAJY2GnVnj+skqdVQk9vDLsaePlWjFopAg
 sNJNh92tHNOsCyXcHYqpvV4hHMn23QPA7bz1mYwPoan0luxjUUJy2WpZHpAfgbRRaBGJ
 6V0KeS+2DuFxMnKhHv3tXnInVGRExjYPYAieQwt1ubqiSU+gnwfY+nv6OyYudsa+E0Y6
 0JeQ==
X-Gm-Message-State: APjAAAXplWF8xFVfAgsgGCS4Qt7G2OM2fV9kNGvjimzDYYHUXj0lUO3x
 +hHelh65KUbKZA2Aw++pJx1l4j6yG0Y=
X-Google-Smtp-Source: APXvYqzojE5GgufgHpUgi+w1UtoBD6a4kJXzcHqAohKFg6KY90Bt9p0I/0yshbxtTbCcvGEVII4qAA==
X-Received: by 2002:a05:6214:153:: with SMTP id
 x19mr51794213qvs.158.1564272687336; 
 Sat, 27 Jul 2019 17:11:27 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id g2sm26230805qkb.80.2019.07.27.17.11.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 17:11:26 -0700 (PDT)
Message-ID: <5D3CE82D.9070307@gmail.com>
Date: Sat, 27 Jul 2019 20:11:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: =?UTF-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
 <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <B93D0C94-7692-4C77-994D-27ADFD22DBB5@gmail.com>
 <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
 <5D3A0B4E.6030907@gmail.com>
 <CANf970ZTcEFYX1Y5BaDZ8-mwy_rpWe7C_SZ68ja+Gjz6-ihrPg@mail.gmail.com>
 <HK0PR01MB2835D5C46B11D91D91B0F229F3C00@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970ZY3ExaXG5Zdyp6ZtWx7MAEz+aF5OZWfO0Df6=1=Hu3Hg@mail.gmail.com>
 <HK0PR01MB2835C2119CD9404D6F795A51F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>,
 <0B791A6B-9D5F-456A-8A91-4266C68DD382@gmail.com>
 <HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
In-Reply-To: <HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?562U5aSNOiDnrZTlpI06ICDnrZTlpI06IE4zMTAg?=
 =?utf-8?q?=22Bad_CHDR_or_packet_fragment=22_Problem?=
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7093951374322991042=="
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

This is a multi-part message in MIME format.
--===============7093951374322991042==
Content-Type: multipart/alternative;
 boundary="------------040508090002040008050306"

This is a multi-part message in MIME format.
--------------040508090002040008050306
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/27/2019 08:02 PM, 汤 飞 wrote:
>
> Actually I have tried 1500, same errors. Is there a way to use PyBOMBS 
> to create the RFNOC environment with a specified UHD version(3.14.0.0) 
> instead of the default latest version (3.15)?
>

I'm not much of a PyBombs user myself, but something like

|pybombs config --package uhd gitrev v3.14.0.0

|

Before proceeding with the rest of your PyBombs flow.

> *发件人: *Marcus D Leech <mailto:patchvonbraun@gmail.com>
> *发送时间: *2019年7月28日3:02
> *收件人: *汤飞 <mailto:retina999@hotmail.com>
> *抄送: *Sam Reiter <mailto:sam.reiter@ettus.com>; 
> usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> *主题: *Re: 答复: [USRP-users] 答复: N310 "Bad CHDR or packet 
> fragment" Problem
>
> Try adjusting the MTU as well to 1500.
>
> Sent from my iPhone
>
>
> On Jul 26, 2019, at 9:36 PM, 汤 飞<retina999@hotmail.com 
> <mailto:retina999@hotmail.com>> wrote:
>
>     FYI
>
>       
>
>     ifconfig
>
>     enp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>
>              inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255
>
>              inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20<link>
>
>              ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)
>
>              RX packets 3352  bytes 2274650 (2.2 MB)
>
>              RX errors 0  dropped 0  overruns 0  frame 0
>
>              TX packets 2926  bytes 246527 (246.5 KB)
>
>              TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>       
>
>     lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>
>              inet 127.0.0.1  netmask 255.0.0.0
>
>              inet6 ::1  prefixlen 128  scopeid 0x10<host>
>
>              loop  txqueuelen 1000  (Local Loopback)
>
>              RX packets 369  bytes 29489 (29.4 KB)
>
>              RX errors 0  dropped 0  overruns 0  frame 0
>
>              TX packets 369  bytes 29489 (29.4 KB)
>
>              TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>       
>
>     wlx3c46d8d7c86c: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>
>              inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.255
>
>              inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20<link>
>
>              ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)
>
>              RX packets 1043  bytes 822132 (822.1 KB)
>
>              RX errors 0  dropped 0  overruns 0  frame 0
>
>              TX packets 873  bytes 119925 (119.9 KB)
>
>              TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>     On 2019/7/27 上 午1:17, Sam Reiter wrote:
>
>         Can you post the output of *ifconfig* on your system?
>
>         Sam Reiter
>
>         SDR Support Engineer
>
>         Ettus Research
>
>         On Thu, Jul 25, 2019 at 7:40 PM 汤 飞 <retina999@hotmail.com
>         <mailto:retina999@hotmail.com>> wrote:
>
>             Thanks!
>
>             I am learning to use RFNOC to integrate a baseband. So I
>             used PyBOMBS to create the environment.  The automatically
>             installed UHD version is as follows
>
>             uhd_find_devices
>             [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>             UHD_3.15.0.git-19-g7e1b567d
>             --------------------------------------------------
>             -- UHD Device 0
>             --------------------------------------------------
>             Device Address:
>                 serial: 3182B09
>                 addr: 192.168.10.2
>                 claimed: False
>                 mgmt_addr: 192.168.1.151
>                 mgmt_addr: 192.168.10.2
>                 product: n310
>                 type: n3xx
>
>             But how to add  to the device arguments?  I tried like
>             this but not working
>
>             /usr/local/lib/uhd/examples/rx_ascii_art_dft --args
>             "master_clock_rate=125e6,mgmt_addr=192.168.1.151,recv_frame_size=1476,addr=192.168.10.2"
>             --freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lvl="-50"
>             --dyn-rng 90 --ant "RX2" --subdev "A:0"
>
>             On 2019/7/26 上午5:17, Sam Reiter wrote:
>
>                 Found the offending commit and reported the issue. It
>                 also looks like adding *recv_frame_size=1476*
>                 explicitly to the device arguments cleared things up
>                 on my N310 running 3.14.1.0. Let me know if this does
>                 / doesn't work for anyone.
>
>                 Sam Reiter
>
>                 SDR Support Engineer
>
>                 Ettus Research
>
>                 On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech
>                 <patchvonbraun@gmail.com
>                 <mailto:patchvonbraun@gmail.com>> wrote:
>
>                     On 07/25/2019 03:56 PM, Sam Reiter wrote:
>
>                         Follow up on this thread. I ran my N310 with a
>                         1GbE link and was able to reproduce the "Bad
>                         CHDR or packet fragment issue". It seems
>                         specific to N3xx RX over a 1GbE link on
>                         3.14.1.0. I didn't spend a ton of time trying
>                         to find a workaround on 3.14.1.0, but rolling
>                         back to 3.14.0.0 cleared the issue for me.
>
>                         I'll spend some time finding the offending
>                         commit and see what I can't do to get a fix /
>                         workaround figured out for 3.14.1.0.
>
>                         Sam Reiter
>
>                         SDR Support Engineer
>
>                         Ettus Research
>
>                     Thanks, Sam.  When I go into the lab later, I can
>                     probably confirm this as well, I haven't seen it
>                     before, but I think I'm runing 3.14.0.0
>
>
>
>                         On Tue, Jul 23, 2019 at 10:13 PM Marcus D
>                         Leech <patchvonbraun@gmail.com
>                         <mailto:patchvonbraun@gmail.com>> wrote:
>
>                             Normally Intel controllers have better
>                             performance but even a RealTek chip should
>                             have no problem at those data rates.
>
>                             Sent from my iPhone
>
>
>                             On Jul 23, 2019, at 10:01 PM, 汤 飞
>                             <retina999@hotmail.com
>                             <mailto:retina999@hotmail.com>> wrote:
>
>                                 Actually my pc’s Ethernet card chip is
>                                 from Realtek.
>
>                                 I’ve tried all possible MTU sizes of
>                                 auto, 1000, 1500, 2000, and up to
>                                 9000. Always the same errors.
>
>                                 Is it the inherent problem with the
>                                 Realtek chip?
>
>                                 If that, is there any workaround? eg.
>                                 Changing the default Linux driver,
>
>                                 or the last solution, ie. I have to
>                                 try install a PCIE network card. Which
>                                 brand ethernet card is compatible, one
>                                 from Intel?
>
>                                 *发件人**:*Marcus D Leech
>                                 <patchvonbraun@gmail.com
>                                 <mailto:patchvonbraun@gmail.com>>
>                                 *发 送时间**:*Wednesday, July 24, 2019
>                                 7:34:13 AM
>                                 *收 件人**:*汤飞<retina999@hotmail.com
>                                 <mailto:retina999@hotmail.com>>
>                                 *抄送**:*Sam Reiter
>                                 <sam.reiter@ettus.com
>                                 <mailto:sam.reiter@ettus.com>>;
>                                 usrp-users@lists.ettus.com
>                                 <mailto:usrp-users@lists.ettus.com>
>                                 <usrp-users@lists.ettus.com
>                                 <mailto:usrp-users@lists.ettus.com>>
>                                 *主 题**:*Re: [USRP-users] 答复: N310
>                                 "Bad CHDR or packet fragment" Problem
>
>                                 Some Ethernet 1g controllers won’t
>                                 actually do MTUs greater than 1500
>                                 despite ethnology telling them to.
>                                 Some Realtek for example.
>
>                                 If it’s just 1G try default MTU of
>                                 1500 and work your way up to see where
>                                 it fails.
>
>                                 Sent from my iPhone
>
>
>                                 On Jul 23, 2019, at 7:15 PM, 汤 飞via
>                                 USRP-users <usrp-users@lists.ettus.com
>                                 <mailto:usrp-users@lists.ettus.com>>
>                                 wrote:
>
>                                     It’s a  1g SFP0 link. I set MTU 
>                                     to 8000 according to the
>                                     Application Note.
>
>                                     *发****件人**:*Sam Reiter
>                                     <sam.reiter@ettus.com
>                                     <mailto:sam.reiter@ettus.com>>
>                                     *发送时间**:*Wednesday, July 24,
>                                     2019 4:56:21 AM
>                                     *收件人**:*汤飞
>                                     <retina999@hotmail.com
>                                     <mailto:retina999@hotmail.com>>
>                                     *抄送**:*usrp-
>                                     users@lists.ettus.com
>                                     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>                                     <mailto:usrp-users@lists.ettus.com>>
>                                     *主题**:*Re: [USRP-users] N310
>                                     "Bad CHDR or packet fragment" Problem
>
>                                     If you're connected over a 10GbE
>                                     link, make sure to set your host's
>                                     MTU appropriately. I set mine to
>                                     9000.
>
>
>                                     Sam Reiter
>
>                                     SDR Support Engineer
>
>                                     Ettus Research
>
>                                     On Fri, Jul 19, 2019 at 2:21 AM 汤
>                                     飞via USRP-users
>                                     <usrp-users@lists.ettus.com
>                                     <mailto:usrp-users@lists.ettus.com>>
>                                     wrote:
>
>                                         Hi, all,
>
>                                           
>
>                                         When benchmarking my N310, I keep getting such[RX FLOW CTRL]  errors.
>
>                                         What causes this and how to solve it?
>
>                                           
>
>                                         Thanks in advance!
>
>                                           
>
>                                         FT
>
>                                           
>
>                                           
>
>                                         /usr/local/lib/uhd/examples/benchmark_rate  \
>
>                                         >    --args "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6" \
>
>                                         >    --duration 60 \
>
>                                         >    --channels "0" \
>
>                                         >    --rx_rate 3.84e6 \
>
>                                         >    --rx_subdev "A:0" \
>
>                                         >    --tx_rate 3.84e6 \
>
>                                         >    --tx_subdev "A:0"
>
>                                           
>
>                                         [INFO] [UHD]linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
>
>                                         [00:00:00.000014] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6...
>
>                                         [INFO] [MPMD]Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3182B09,claimed=False,addr=192.168.10.2,master_clock_rate=122.88e6
>
>                                         [INFO] [MPM.PeriphManager]init() called with device args `master_clock_rate=122.88e6,time_source=internal,clock_source=internal,mgmt_addr=192.168.10.2,product=n310'.
>
>                                         [INFO] [0/Replay_0]Initializing block control (NOC ID: 0x4E91A00000000004)
>
>                                         [INFO] [0/Radio_0]Initializing block control (NOC ID: 0x12AD100000011312)
>
>                                         [INFO] [0/Radio_1]Initializing block control (NOC ID: 0x12AD100000011312)
>
>                                         [INFO] [0/DDC_0]Initializing block control (NOC ID: 0xDDC0000000000000)
>
>                                         [INFO] [0/DDC_1]Initializing block control (NOC ID: 0xDDC0000000000000)
>
>                                         [INFO] [0/DUC_0]Initializing block control (NOC ID: 0xD0C0000000000002)
>
>                                         [INFO] [0/DUC_1]Initializing block control (NOC ID: 0xD0C0000000000002)
>
>                                         [INFO] [0/FIFO_0]Initializing block control (NOC ID: 0xF1F0000000000000)
>
>                                         [INFO] [0/FIFO_1]Initializing block control (NOC ID: 0xF1F0000000000000)
>
>                                         [INFO] [0/FIFO_2]Initializing block control (NOC ID: 0xF1F0000000000000)
>
>                                         [INFO] [0/FIFO_3]Initializing block control (NOC ID: 0xF1F0000000000000)
>
>                                         Using Device: Single USRP:
>
>                                            Device: N300-Series Device
>
>                                            Mboard 0: ni-n3xx-3182B09
>
>                                            RX Channel: 0
>
>                                              RX DSP: 0
>
>                                              RX Dboard: A
>
>                                              RX Subdev: Magnesium
>
>                                            TX Channel: 0
>
>                                              TX DSP: 0
>
>                                              TX Dboard: A
>
>                                              TX Subdev: Magnesium
>
>                                           
>
>                                         [00:00:17.353184] Setting device timestamp to 0...
>
>                                         [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>
>                                         [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>
>                                         [[ERROR] [RX FLOW CTRL]Error unpacking packet: ValueError: Bad CHDR or packet fragment
>
>                                           
>
>                                         [ERROR] [STREAMER]The receive packet handler caught a value exception.
>
>                                         ValueError: Bad CHDR or packet fragment
>
>                                         00:00:17.414180] Unexpected error on recv, continuing...
>
>                                         [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
>                                         [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>
>                                         [00:00:17.514317] Unexpected error on recv, continuing...
>
>                                         [ERROR] [RX FLOW CTRL]Error unpacking packet: ValueError: Bad CHDR or packet fragment
>
>                                           
>
>                                         [ERROR] [STREAMER]The receive packet handler caught a value exception.
>
>                                         ValueError: Bad CHDR or packet fragment
>
>                                         [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>
>                                         [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
>                                         [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>
>                                         [00:00:17.614377] Unexpected error on recv, continuing...
>
>                                         _______________________________________________
>                                         USRP-users mailing list
>                                         USRP-users@lists.ettus.com
>                                         <mailto:USRP-users@lists.ettus.com>
>                                         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>                                     _______________________________________________
>                                     USRP-users mailing list
>                                     USRP-users@lists.ettus.com
>                                     <mailto:USRP-users@lists.ettus.com>
>                                     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------040508090002040008050306
Content-Type: multipart/related;
 boundary="------------090608050009060700060404"


--------------090608050009060700060404
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/27/2019 08:02 PM, 汤 飞 wrote:<br>
    </div>
    <blockquote
cite="mid:HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
span.HTML
	{mso-style-name:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F";
	font-family:SimSun;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Actually I have tried
            1500, same errors. Is there a way to use PyBOMBS to create
            the RFNOC environment with a specified UHD version(3.14.0.0)
            instead of the default latest version (3.15)?</span></p>
      </div>
    </blockquote>
    <br>
    I'm not much of a PyBombs user myself, but something like<br>
    <br>
    <pre><code>pybombs config --package uhd gitrev v3.14.0.0

</code></pre>
    Before proceeding with the rest of your PyBombs flow.<br>
    <br>
    <blockquote
cite="mid:HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:12.0pt" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:SimSun" lang="EN-US"><o:p> </o:p></span></p>
        <div
          style="mso-element:para-border-div;border:none;border-top:solid
          #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
          <p class="MsoNormal" style="border:none;padding:0cm"><b>发件人<span
                lang="EN-US">: </span>
            </b><span lang="EN-US"><a moz-do-not-send="true"
                href="mailto:patchvonbraun@gmail.com">Marcus D Leech</a><br>
            </span><b>发送时间<span lang="EN-US">: </span></b><span
              lang="EN-US">2019</span>年<span lang="EN-US">7</span>月<span
              lang="EN-US">28</span>日<span lang="EN-US"> 3:02<br>
            </span><b>收件人<span lang="EN-US">: </span></b><span
              lang="EN-US"><a moz-do-not-send="true"
                href="mailto:retina999@hotmail.com"><span lang="EN-US"><span
                    lang="EN-US">汤</span></span><span lang="EN-US"><span
                    lang="EN-US">
                  </span></span><span lang="EN-US"><span lang="EN-US">飞</span></span></a><br>
            </span><b>抄送<span lang="EN-US">: </span></b><span
              lang="EN-US"><a moz-do-not-send="true"
                href="mailto:sam.reiter@ettus.com">Sam Reiter</a>;
              <a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            </span><b>主题<span lang="EN-US">: </span></b><span
              lang="EN-US">Re: </span>答复<span lang="EN-US">:
              [USRP-users]
            </span>答复<span lang="EN-US">: N310 "Bad CHDR or packet
              fragment" Problem</span></p>
        </div>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:SimSun" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal" style="text-align:left" align="left"><span
            lang="EN-US">Try adjusting the MTU as well to 1500.
          </span><span style="font-size:12.0pt" lang="EN-US"><o:p></o:p></span></p>
        <div>
          <p class="MsoNormal" style="margin-bottom:12.0pt"><span
              lang="EN-US"><o:p> </o:p></span></p>
          <div id="AppleMailSignature">
            <p class="MsoNormal"><span lang="EN-US">Sent from my iPhone</span></p>
          </div>
          <div>
            <p class="MsoNormal" style="margin-bottom:12.0pt"><span
                lang="EN-US"><br>
                On Jul 26, 2019, at 9:36 PM, </span>汤 飞<span
                lang="EN-US"> &lt;<a moz-do-not-send="true"
                  href="mailto:retina999@hotmail.com">retina999@hotmail.com</a>&gt;
                wrote:<o:p></o:p></span></p>
          </div>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <pre><span lang="EN-US">FYI</span></pre>
              <pre><span lang="EN-US"><o:p> </o:p></span></pre>
              <pre><span lang="EN-US">ifconfig</span></pre>
              <pre><span lang="EN-US">enp2s0: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 8000</span></pre>
              <pre><span lang="EN-US">        inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255</span></pre>
              <pre><span lang="EN-US">        inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20&lt;link&gt;</span></pre>
              <pre><span lang="EN-US">        ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)</span></pre>
              <pre><span lang="EN-US">        RX packets 3352  bytes 2274650 (2.2 MB)</span></pre>
              <pre><span lang="EN-US">        RX errors 0  dropped 0  overruns 0  frame 0</span></pre>
              <pre><span lang="EN-US">        TX packets 2926  bytes 246527 (246.5 KB)</span></pre>
              <pre><span lang="EN-US">        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0</span></pre>
              <pre><span lang="EN-US"><o:p> </o:p></span></pre>
              <pre><span lang="EN-US">lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536</span></pre>
              <pre><span lang="EN-US">        inet 127.0.0.1  netmask 255.0.0.0</span></pre>
              <pre><span lang="EN-US">        inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;</span></pre>
              <pre><span lang="EN-US">        loop  txqueuelen 1000  (Local Loopback)</span></pre>
              <pre><span lang="EN-US">        RX packets 369  bytes 29489 (29.4 KB)</span></pre>
              <pre><span lang="EN-US">        RX errors 0  dropped 0  overruns 0  frame 0</span></pre>
              <pre><span lang="EN-US">        TX packets 369  bytes 29489 (29.4 KB)</span></pre>
              <pre><span lang="EN-US">        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0</span></pre>
              <pre><span lang="EN-US"><o:p> </o:p></span></pre>
              <pre><span lang="EN-US">wlx3c46d8d7c86c: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500</span></pre>
              <pre><span lang="EN-US">        inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.255</span></pre>
              <pre><span lang="EN-US">        inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20&lt;link&gt;</span></pre>
              <pre><span lang="EN-US">        ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)</span></pre>
              <pre><span lang="EN-US">        RX packets 1043  bytes 822132 (822.1 KB)</span></pre>
              <pre><span lang="EN-US">        RX errors 0  dropped 0  overruns 0  frame 0</span></pre>
              <pre><span lang="EN-US">        TX packets 873  bytes 119925 (119.9 KB)</span></pre>
              <pre><span lang="EN-US">        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0</span></pre>
              <div>
                <p class="MsoNormal"><span lang="EN-US">On 2019/7/27 </span>上
                  午<span lang="EN-US">1:17, Sam Reiter wrote:<o:p></o:p></span></p>
              </div>
              <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <div>
                    <p class="MsoNormal"><span lang="EN-US">Can you post
                        the output of <b>ifconfig</b> on your system?</span></p>
                  </div>
                  <div>
                    <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                  </div>
                  <div>
                    <div>
                      <div>
                        <div>
                          <div>
                            <div>
                              <p class="MsoNormal"><span lang="EN-US">Sam
                                  Reiter  </span></p>
                              <div>
                                <p class="MsoNormal"><span lang="EN-US">SDR
                                    Support Engineer</span></p>
                              </div>
                              <div>
                                <p class="MsoNormal"><span lang="EN-US">Ettus
                                    Research</span></p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                  </div>
                </div>
                <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                <div>
                  <div>
                    <p class="MsoNormal"><span lang="EN-US">On Thu, Jul
                        25, 2019 at 7:40 PM </span>汤 飞
                      <span lang="EN-US">&lt;<a moz-do-not-send="true"
                          href="mailto:retina999@hotmail.com">retina999@hotmail.com</a>&gt;
                        wrote:</span></p>
                  </div>
                  <blockquote style="border:none;border-left:solid
                    #CCCCCC 1.0pt;padding:0cm 0cm 0cm
                    6.0pt;margin-left:4.8pt;margin-right:0cm">
                    <div>
                      <p><span lang="EN-US">Thanks!</span></p>
                      <p><span lang="EN-US">I am learning to use RFNOC
                          to integrate a baseband. So I used PyBOMBS to
                          create the environment.  The automatically
                          installed UHD version is as follows</span></p>
                      <p><span lang="EN-US">uhd_find_devices<br>
                          [INFO] [UHD] linux; GNU C++ version 7.4.0;
                          Boost_106501; UHD_3.15.0.git-19-g7e1b567d<br>
--------------------------------------------------<br>
                          -- UHD Device 0<br>
--------------------------------------------------<br>
                          Device Address:<br>
                              serial: 3182B09<br>
                              addr: 192.168.10.2<br>
                              claimed: False<br>
                              mgmt_addr: 192.168.1.151<br>
                              mgmt_addr: 192.168.10.2<br>
                              product: n310<br>
                              type: n3xx</span></p>
                      <p><span lang="EN-US">But how to add  to the
                          device arguments?  I tried like this but not
                          working</span></p>
                      <p style="margin-bottom:12.0pt"><span lang="EN-US">/usr/local/lib/uhd/examples/rx_ascii_art_dft
                          --args
                          "master_clock_rate=125e6,mgmt_addr=192.168.1.151<span
                            style="color:red">,recv_frame_size=1476,</span>addr=192.168.10.2"
                          --freq 98.5e6 --rate 2.5e6 --gain 50
                          --ref-lvl="-50" --dyn-rng 90 --ant "RX2"
                          --subdev "A:0"</span></p>
                      <p><span lang="EN-US"><o:p> </o:p></span></p>
                      <div>
                        <p class="MsoNormal"><span lang="EN-US">On
                            2019/7/26 </span>上午<span lang="EN-US">5:17,
                            Sam Reiter wrote:<o:p></o:p></span></p>
                      </div>
                      <blockquote
                        style="margin-top:5.0pt;margin-bottom:5.0pt">
                        <div>
                          <div>
                            <p class="MsoNormal"><span lang="EN-US">Found
                                the offending commit and reported the
                                issue. It also looks like adding
                                <b>recv_frame_size=1476</b> explicitly
                                to the device arguments cleared things
                                up on my N310 running 3.14.1.0. Let me
                                know if this does / doesn't work for
                                anyone.</span></p>
                          </div>
                          <div>
                            <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                          </div>
                          <div>
                            <div>
                              <div>
                                <div>
                                  <div>
                                    <div>
                                      <p class="MsoNormal"><span
                                          lang="EN-US">Sam Reiter  </span></p>
                                      <div>
                                        <p class="MsoNormal"><span
                                            lang="EN-US">SDR Support
                                            Engineer</span></p>
                                      </div>
                                      <div>
                                        <p class="MsoNormal"><span
                                            lang="EN-US">Ettus Research</span></p>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                          </div>
                        </div>
                        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                        <div>
                          <div>
                            <p class="MsoNormal"><span lang="EN-US">On
                                Thu, Jul 25, 2019 at 3:04 PM Marcus D.
                                Leech &lt;<a moz-do-not-send="true"
                                  href="mailto:patchvonbraun@gmail.com"
                                  target="_blank">patchvonbraun@gmail.com</a>&gt;
                                wrote:</span></p>
                          </div>
                          <blockquote
                            style="border:none;border-left:solid #CCCCCC
                            1.0pt;padding:0cm 0cm 0cm
                            6.0pt;margin-left:4.8pt;margin-right:0cm">
                            <div>
                              <div>
                                <p class="MsoNormal"><span lang="EN-US">On
                                    07/25/2019 03:56 PM, Sam Reiter
                                    wrote:<o:p></o:p></span></p>
                              </div>
                              <blockquote
                                style="margin-top:5.0pt;margin-bottom:5.0pt">
                                <div>
                                  <div>
                                    <p class="MsoNormal"><span
                                        lang="EN-US">Follow up on this
                                        thread. I ran my N310 with a
                                        1GbE link and was able to
                                        reproduce the "Bad CHDR or
                                        packet fragment issue". It seems
                                        specific to N3xx RX over a 1GbE
                                        link on 3.14.1.0. I didn't spend
                                        a ton of time trying to find a
                                        workaround on 3.14.1.0, but
                                        rolling back to 3.14.0.0 cleared
                                        the issue for me.
                                      </span></p>
                                  </div>
                                  <div>
                                    <p class="MsoNormal"><span
                                        lang="EN-US"><o:p> </o:p></span></p>
                                  </div>
                                  <div>
                                    <p class="MsoNormal"><span
                                        lang="EN-US">I'll spend some
                                        time finding the offending
                                        commit and see what I can't do
                                        to get a fix / workaround
                                        figured out for 3.14.1.0.</span></p>
                                  </div>
                                  <div>
                                    <p class="MsoNormal"><span
                                        lang="EN-US"><o:p> </o:p></span></p>
                                  </div>
                                  <div>
                                    <div>
                                      <div>
                                        <div>
                                          <div>
                                            <div>
                                              <p class="MsoNormal"><span
                                                  lang="EN-US">Sam
                                                  Reiter  </span></p>
                                              <div>
                                                <p class="MsoNormal"><span
                                                    lang="EN-US">SDR
                                                    Support Engineer</span></p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal"><span
                                                    lang="EN-US">Ettus
                                                    Research</span></p>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
                              </blockquote>
                              <p class="MsoNormal"><span lang="EN-US">Thanks,
                                  Sam.  When I go into the lab later, I
                                  can probably confirm this as well, I
                                  haven't seen it before, but I think
                                  I'm runing 3.14.0.0<br>
                                  <br>
                                  <br>
                                  <br>
                                </span></p>
                              <blockquote
                                style="margin-top:5.0pt;margin-bottom:5.0pt">
                                <div>
                                  <div>
                                    <p class="MsoNormal"><span
                                        lang="EN-US">On Tue, Jul 23,
                                        2019 at 10:13 PM Marcus D Leech
                                        &lt;<a moz-do-not-send="true"
                                          href="mailto:patchvonbraun@gmail.com"
                                          target="_blank">patchvonbraun@gmail.com</a>&gt;
                                        wrote:</span></p>
                                  </div>
                                  <blockquote
                                    style="border:none;border-left:solid
                                    #CCCCCC 1.0pt;padding:0cm 0cm 0cm
                                    6.0pt;margin-left:4.8pt;margin-right:0cm">
                                    <div>
                                      <p class="MsoNormal"><span
                                          lang="EN-US">Normally Intel
                                          controllers have better
                                          performance but even a RealTek
                                          chip should have no problem at
                                          those data rates. 
                                        </span></p>
                                      <div>
                                        <p class="MsoNormal"><span
                                            lang="EN-US"><o:p> </o:p></span></p>
                                      </div>
                                      <div>
                                        <p class="MsoNormal"
                                          style="margin-bottom:12.0pt"><span
                                            lang="EN-US"><o:p> </o:p></span></p>
                                        <div
id="gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1782705882285278276AppleMailSignature">
                                          <p class="MsoNormal"><span
                                              lang="EN-US">Sent from my
                                              iPhone</span></p>
                                        </div>
                                        <div>
                                          <p class="MsoNormal"
                                            style="margin-bottom:12.0pt"><span
                                              lang="EN-US"><br>
                                              On Jul 23, 2019, at 10:01
                                              PM, </span>汤 飞 <span
                                              lang="EN-US">&lt;<a
                                                moz-do-not-send="true"
                                                href="mailto:retina999@hotmail.com"
                                                target="_blank">retina999@hotmail.com</a>&gt;
                                              wrote:<o:p></o:p></span></p>
                                        </div>
                                        <blockquote
                                          style="margin-top:5.0pt;margin-bottom:5.0pt">
                                          <div>
                                            <div>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US">Actually
                                                  my pc’s Ethernet card
                                                  chip is from Realtek.
                                                </span></p>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US">I’ve
                                                  tried all possible MTU
                                                  sizes of auto, 1000,
                                                  1500, 2000, and up to
                                                  9000. Always the same
                                                  errors.
                                                </span></p>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US">Is it the
                                                  inherent problem with
                                                  the Realtek chip?
                                                </span></p>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US">If that,
                                                  is there any
                                                  workaround? eg.
                                                  Changing the default
                                                  Linux driver,
                                                </span></p>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US">or the
                                                  last solution, ie. I
                                                  have to try install a
                                                  PCIE network card.
                                                  Which brand ethernet
                                                  card is compatible,
                                                  one from Intel?</span></p>
                                              <p class="MsoNormal"
                                                style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                  lang="EN-US"> </span></p>
                                            </div>
                                            <p class="MsoNormal"><span
                                                lang="EN-US"><img
                                                  style="width:.0059in;height:.0178in"
id="Horizontal_x0020_Line_x0020_1"
                                                  src="cid:part10.08040803.02000204@gmail.com"
                                                  border="0" height="2"
                                                  width="1"></span></p>
                                            <div
id="gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1782705882285278276divRplyFwdMsg">
                                              <p class="MsoNormal"><b><span
style="font-size:11.0pt;color:black">发件人</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                    lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US"> Marcus D
                                                  Leech &lt;<a
                                                    moz-do-not-send="true"
href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;<br>
                                                </span><b><span
                                                    style="font-size:11.0pt;color:black">发
                                                    送时间</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                    lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US">
                                                  Wednesday, July 24,
                                                  2019 7:34:13 AM<br>
                                                </span><b><span
                                                    style="font-size:11.0pt;color:black">收
                                                    件人</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                    lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US">
                                                </span><span
                                                  style="font-size:11.0pt;color:black">汤</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
                                                </span><span
                                                  style="font-size:11.0pt;color:black">飞</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
                                                  <span lang="EN-US">&lt;<a
moz-do-not-send="true" href="mailto:retina999@hotmail.com"
                                                      target="_blank">retina999@hotmail.com</a>&gt;<br>
                                                  </span></span><b><span
style="font-size:11.0pt;color:black">抄送</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                    lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US"> Sam
                                                  Reiter &lt;<a
                                                    moz-do-not-send="true"
href="mailto:sam.reiter@ettus.com" target="_blank">sam.reiter@ettus.com</a>&gt;;
                                                  <a
                                                    moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>
                                                  &lt;<a
                                                    moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                </span><b><span
                                                    style="font-size:11.0pt;color:black">主
                                                    题</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                    lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US"> Re:
                                                  [USRP-users] </span><span
style="font-size:11.0pt;color:black">答复</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                  lang="EN-US">: N310
                                                  "Bad CHDR or packet
                                                  fragment" Problem</span><span
                                                  lang="EN-US">
                                                </span></p>
                                              <div>
                                                <p class="MsoNormal"><span
                                                    lang="EN-US"> </span></p>
                                              </div>
                                            </div>
                                            <div>
                                              <p class="MsoNormal"><span
                                                  lang="EN-US">Some
                                                  Ethernet 1g
                                                  controllers won’t
                                                  actually do MTUs
                                                  greater than 1500
                                                  despite ethnology
                                                  telling them to. Some
                                                  Realtek for example. 
                                                </span></p>
                                              <div>
                                                <p class="MsoNormal"><span
                                                    lang="EN-US"><o:p> </o:p></span></p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal"
                                                  style="margin-bottom:12.0pt"><span
                                                    lang="EN-US">If it’s
                                                    just 1G try default
                                                    MTU of 1500 and work
                                                    your way up to see
                                                    where it fails. </span></p>
                                                <div
id="gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1782705882285278276AppleMailSignature">
                                                  <p class="MsoNormal"><span
                                                      lang="EN-US">Sent
                                                      from my iPhone</span></p>
                                                </div>
                                                <div>
                                                  <p class="MsoNormal"
                                                    style="margin-bottom:12.0pt"><span
                                                      lang="EN-US"><br>
                                                      On Jul 23, 2019,
                                                      at 7:15 PM, </span>汤
                                                    飞<span lang="EN-US">
                                                      via USRP-users
                                                      &lt;<a
                                                        moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                                                      wrote:<o:p></o:p></span></p>
                                                </div>
                                                <blockquote
                                                  style="margin-top:5.0pt;margin-bottom:5.0pt">
                                                  <div>
                                                    <div>
                                                      <p
                                                        class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                          lang="EN-US">It’s
                                                          a  1g SFP0
                                                          link. I set
                                                          MTU  to 8000
                                                          according to
                                                          the
                                                          Application
                                                          Note.
                                                        </span></p>
                                                      <p
                                                        class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                                                          lang="EN-US"> </span></p>
                                                    </div>
                                                    <p class="MsoNormal"><span
                                                        lang="EN-US"><img
style="width:.0059in;height:.0178in" id="Horizontal_x0020_Line_x0020_2"
src="cid:part10.08040803.02000204@gmail.com" border="0" height="2"
                                                          width="1"></span></p>
                                                    <div
id="gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1782705882285278276divRplyFwdMsg">
                                                      <p
                                                        class="MsoNormal"><b><span
style="font-size:11.0pt;color:black">发</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"></span></b><b><span
style="font-size:11.0pt;color:black">件人</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">
                                                          Sam Reiter
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:sam.reiter@ettus.com" target="_blank">sam.reiter@ettus.com</a>&gt;<br>
                                                        </span><b><span
style="font-size:11.0pt;color:black">发送时间</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">
                                                          Wednesday,
                                                          July 24, 2019
                                                          4:56:21 AM<br>
                                                        </span><b><span
style="font-size:11.0pt;color:black">收件人</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">
                                                        </span><span
                                                          style="font-size:11.0pt;color:black">汤</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
                                                        </span><span
                                                          style="font-size:11.0pt;color:black">飞</span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
                                                          <span
                                                          lang="EN-US">&lt;<a
moz-do-not-send="true" href="mailto:retina999@hotmail.com"
                                                          target="_blank">retina999@hotmail.com</a>&gt;<br>
                                                          </span></span><b><span
style="font-size:11.0pt;color:black">抄送</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                        </span><b><span
style="font-size:11.0pt;color:black">主题</span></b><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"
                                                          lang="EN-US">
                                                          Re:
                                                          [USRP-users]
                                                          N310 "Bad CHDR
                                                          or packet
                                                          fragment"
                                                          Problem</span><span
                                                          lang="EN-US">
                                                        </span></p>
                                                      <div>
                                                        <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US"> </span></p>
                                                      </div>
                                                    </div>
                                                    <div>
                                                      <div>
                                                        <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">If
                                                          you're
                                                          connected over
                                                          a 10GbE link,
                                                          make sure to
                                                          set your
                                                          host's MTU
                                                          appropriately.
                                                          I set mine to
                                                          9000.
                                                          </span></p>
                                                        <div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US"><br
                                                          clear="all">
                                                          </span></p>
                                                          <div>
                                                          <div>
                                                          <div>
                                                          <div>
                                                          <div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">Sam
                                                          Reiter  </span></p>
                                                          <div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">SDR
                                                          Support
                                                          Engineer</span></p>
                                                          </div>
                                                          <div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">Ettus
                                                          Research</span></p>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US"><o:p> </o:p></span></p>
                                                        </div>
                                                      </div>
                                                      <p
                                                        class="MsoNormal"><span
                                                          lang="EN-US"><o:p> </o:p></span></p>
                                                      <div>
                                                        <div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">On
                                                          Fri, Jul 19,
                                                          2019 at 2:21
                                                          AM </span>汤 飞<span
                                                          lang="EN-US">
                                                          via USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:</span></p>
                                                        </div>
                                                        <blockquote
                                                          style="border:none;border-left:solid
                                                          #CCCCCC
                                                          1.0pt;padding:0cm
                                                          0cm 0cm
                                                          6.0pt;margin-left:4.8pt;margin-right:0cm">
                                                          <div>
                                                          <pre><span lang="EN-US">Hi, all,</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US">When benchmarking my N310, I keep getting such <span style="color:#CC0000">[RX FLOW CTRL]</span> errors. </span></pre>
                                                          <pre><span lang="EN-US">What causes this and how to solve it?</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US">Thanks in advance!</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US">FT</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US">/usr/local/lib/uhd/examples/benchmark_rate  \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --args "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6" \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --duration 60 \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --channels "0" \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --rx_rate 3.84e6 \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --rx_subdev "A:0" \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --tx_rate 3.84e6 \</span></pre>
                                                          <pre><span lang="EN-US">&gt;    --tx_subdev "A:0"</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [UHD] </span><span lang="EN-US">linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7</span></pre>
                                                          <pre><span lang="EN-US">[00:00:00.000014] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6...</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [MPMD] </span><span lang="EN-US">Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3182B09,claimed=False,addr=192.168.10.2,master_clock_rate=122.88e6</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [MPM.PeriphManager] </span><span lang="EN-US">init() called with device args `master_clock_rate=122.88e6,time_source=internal,clock_source=internal,mgmt_addr=192.168.10.2,product=n310'.</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/Replay_0] </span><span lang="EN-US">Initializing block control (NOC ID: 0x4E91A00000000004)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/Radio_0] </span><span lang="EN-US">Initializing block control (NOC ID: 0x12AD100000011312)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/Radio_1] </span><span lang="EN-US">Initializing block control (NOC ID: 0x12AD100000011312)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/DDC_0] </span><span lang="EN-US">Initializing block control (NOC ID: 0xDDC0000000000000)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/DDC_1] </span><span lang="EN-US">Initializing block control (NOC ID: 0xDDC0000000000000)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/DUC_0] </span><span lang="EN-US">Initializing block control (NOC ID: 0xD0C0000000000002)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/DUC_1] </span><span lang="EN-US">Initializing block control (NOC ID: 0xD0C0000000000002)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/FIFO_0] </span><span lang="EN-US">Initializing block control (NOC ID: 0xF1F0000000000000)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/FIFO_1] </span><span lang="EN-US">Initializing block control (NOC ID: 0xF1F0000000000000)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/FIFO_2] </span><span lang="EN-US">Initializing block control (NOC ID: 0xF1F0000000000000)</span></pre>
                                                          <pre><span style="color:#4E9A06" lang="EN-US">[INFO] [0/FIFO_3] </span><span lang="EN-US">Initializing block control (NOC ID: 0xF1F0000000000000)</span></pre>
                                                          <pre><span lang="EN-US">Using Device: Single USRP:</span></pre>
                                                          <pre><span lang="EN-US">  Device: N300-Series Device</span></pre>
                                                          <pre><span lang="EN-US">  Mboard 0: ni-n3xx-3182B09</span></pre>
                                                          <pre><span lang="EN-US">  RX Channel: 0</span></pre>
                                                          <pre><span lang="EN-US">    RX DSP: 0</span></pre>
                                                          <pre><span lang="EN-US">    RX Dboard: A</span></pre>
                                                          <pre><span lang="EN-US">    RX Subdev: Magnesium</span></pre>
                                                          <pre><span lang="EN-US">  TX Channel: 0</span></pre>
                                                          <pre><span lang="EN-US">    TX DSP: 0</span></pre>
                                                          <pre><span lang="EN-US">    TX Dboard: A</span></pre>
                                                          <pre><span lang="EN-US">    TX Subdev: Magnesium</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.353184] Setting device timestamp to 0...</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET</span></pre>
                                                          <pre><span lang="EN-US">[<span style="color:#CC0000">[ERROR] [RX FLOW CTRL] </span>Error unpacking packet: ValueError: Bad CHDR or packet fragment</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span style="color:#CC0000" lang="EN-US">[ERROR] [STREAMER] </span><span lang="EN-US">The receive packet handler caught a value exception.</span></pre>
                                                          <pre><span lang="EN-US">ValueError: Bad CHDR or packet fragment</span></pre>
                                                          <pre><span lang="EN-US">00:00:17.414180] Unexpected error on recv, continuing...</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.514317] Unexpected error on recv, continuing...</span></pre>
                                                          <pre><span style="color:#CC0000" lang="EN-US">[ERROR] [RX FLOW CTRL] </span><span lang="EN-US">Error unpacking packet: ValueError: Bad CHDR or packet fragment</span></pre>
                                                          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
                                                          <pre><span style="color:#CC0000" lang="EN-US">[ERROR] [STREAMER] </span><span lang="EN-US">The receive packet handler caught a value exception.</span></pre>
                                                          <pre><span lang="EN-US">ValueError: Bad CHDR or packet fragment</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET</span></pre>
                                                          <pre><span lang="EN-US">[00:00:17.614377] Unexpected error on recv, continuing...</span></pre>
                                                          </div>
                                                          <p
                                                          class="MsoNormal"><span
                                                          lang="EN-US">_______________________________________________<br>
                                                          USRP-users
                                                          mailing list<br>
                                                          <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
                                                          <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></span></p>
                                                        </blockquote>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </blockquote>
                                                <blockquote
                                                  style="margin-top:5.0pt;margin-bottom:5.0pt">
                                                  <div>
                                                    <p class="MsoNormal"><span
                                                        lang="EN-US">_______________________________________________<br>
                                                        USRP-users
                                                        mailing list<br>
                                                        <a
                                                          moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
                                                        <a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span></p>
                                                  </div>
                                                </blockquote>
                                              </div>
                                            </div>
                                          </div>
                                        </blockquote>
                                      </div>
                                    </div>
                                  </blockquote>
                                </div>
                              </blockquote>
                            </div>
                          </blockquote>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </blockquote>
        </div>
        <p class="MsoNormal"
style="mso-margin-top-alt:0cm;margin-right:108.0pt;margin-bottom:5.0pt;margin-left:117.6pt"><span
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:SimSun" lang="EN-US"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090608050009060700060404
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part10.08040803.02000204@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAAEAAAADCAYAAABS3WWCAAAAAXNSR0IArs4c6QAAAARnQU1B
AACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAARSURBVBhXY9h/9vZ/GHH7PwBLUQoz
odQElgAAAABJRU5ErkJggg==
--------------090608050009060700060404--

--------------040508090002040008050306--


--===============7093951374322991042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7093951374322991042==--

