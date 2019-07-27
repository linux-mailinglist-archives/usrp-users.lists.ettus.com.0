Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C725677B65
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jul 2019 21:03:23 +0200 (CEST)
Received: from [::1] (port=38056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hrRyR-0003mF-De; Sat, 27 Jul 2019 15:03:19 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:43030)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hrRyN-0003fv-6L
 for usrp-users@lists.ettus.com; Sat, 27 Jul 2019 15:03:15 -0400
Received: by mail-qt1-f175.google.com with SMTP id w17so11585863qto.10
 for <usrp-users@lists.ettus.com>; Sat, 27 Jul 2019 12:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TCOaGhmimWJkXFugNY8gOfZgyILblZ2P6W/OHLavFo4=;
 b=PSUQFvnptDkARqlG9NeL/a9zRAwz2R+rIaUU0UCTDNmJIC3f94tbkUV1Ft4NJwGL5J
 WBetFxVdnjswV382IzdFCHVlAbHnx2uXVm64DZMpzs2z194H6RLmx4aZ3FLOULTCw2ju
 24xgcxQiN9eSkBjJ6svFXBkXMqTtrLbeN07sxPRu6c2V2mhBuP4iBHTu5LeLAojYkRs2
 RaNirMNiYmVBMhKrP+RRCTw+keDAwZKPZP94LUEPDW5bWomfX/DYdTshIPMGSPtZNucD
 KWg40Yb4uRGDVxjup/eP6Pi1BGFqJoLKn0hT0jUDYcD+v6AYbhxCSD4/HoYP9UU0hpB2
 KSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TCOaGhmimWJkXFugNY8gOfZgyILblZ2P6W/OHLavFo4=;
 b=dHuoi7Prc1ZRkT6ahgpA+0MpkVJxHkiSuvBd11U0/Aq4JotvIPbB8DTmecFBqqD6hc
 WnQRLXQ21d9uQQlX9QadVC5HZ9GXeui+OfegCcPoU+dicszxCZvwTSwk1gkkXLrqzb6e
 fj8AuDugwn9sSs5i95dFICi2ut8MAH0fi09S70YsIJrvSVrcXAbe6NROs0S1VrZvOfeN
 3OWdpPqSun7DAA6chp62P9Y8IKm84i051WZdsSfocoaNRmudGGVqBk42ojjRCQXGBYU6
 erY19zAnqQ3Ce+/9LDxAHqH9LWDqe5N61WG49MM6Bhp9HSkgqSLQHefdwhAPSbrXXvhr
 AqDQ==
X-Gm-Message-State: APjAAAUwVN6Vv852O2Ct0kUm3crAgJHi41HrO1yspabCJ0sLCbFZ0k6t
 HtWCrDHbAee5rg3TMLnxf1Q=
X-Google-Smtp-Source: APXvYqxJvMZxMTj69ruFEZ3b6lfcuHNIZel8zqD3s60FIFmMbXb6+OfqMzXPKc5KOFGxDdTdEHF/RA==
X-Received: by 2002:ac8:7555:: with SMTP id b21mr69658710qtr.292.1564254154448; 
 Sat, 27 Jul 2019 12:02:34 -0700 (PDT)
Received: from ?IPv6:2605:b100:513:7b87:a414:655c:28bd:77fd?
 ([2605:b100:513:7b87:a414:655c:28bd:77fd])
 by smtp.gmail.com with ESMTPSA id h18sm22474618qkj.134.2019.07.27.12.02.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 12:02:33 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <HK0PR01MB2835C2119CD9404D6F795A51F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Date: Sat, 27 Jul 2019 15:02:32 -0400
Message-Id: <0B791A6B-9D5F-456A-8A91-4266C68DD382@gmail.com>
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
 <HK0PR01MB2835C2119CD9404D6F795A51F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
To: =?utf-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?562U5aSNOiAg562U5aSNOiBOMzEwICJCYWQgQ0hE?=
 =?utf-8?q?R_or_packet_fragment=22_Problem?=
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1007694263234780988=="
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


--===============1007694263234780988==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-CEEB4019-23AB-4BED-83E3-D9E9E59A1383
Content-Transfer-Encoding: 7bit


--Apple-Mail-CEEB4019-23AB-4BED-83E3-D9E9E59A1383
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try adjusting the MTU as well to 1500


Sent from my iPhone

> On Jul 26, 2019, at 9:36 PM, =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com> w=
rote:
>=20
> FYI
>=20
> ifconfig
> enp2s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255=

>         inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20<link>
>         ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)
>         RX packets 3352  bytes 2274650 (2.2 MB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 2926  bytes 246527 (246.5 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>=20
> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>         inet 127.0.0.1  netmask 255.0.0.0
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>         loop  txqueuelen 1000  (Local Loopback)
>         RX packets 369  bytes 29489 (29.4 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 369  bytes 29489 (29.4 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>=20
> wlx3c46d8d7c86c: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.255=

>         inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20<link>
>         ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)
>         RX packets 1043  bytes 822132 (822.1 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 873  bytes 119925 (119.9 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>> On 2019/7/27 =E4=B8=8A=E5=8D=881:17, Sam Reiter wrote:
>> Can you post the output of ifconfig on your system?
>>=20
>> Sam Reiter=20
>> SDR Support Engineer
>> Ettus Research
>>=20
>>=20
>>> On Thu, Jul 25, 2019 at 7:40 PM =E6=B1=A4 =E9=A3=9E <retina999@hotmail.c=
om> wrote:
>>> Thanks!
>>>=20
>>> I am learning to use RFNOC to integrate a baseband. So I used PyBOMBS to=
 create the environment.  The automatically installed UHD version is as foll=
ows
>>>=20
>>> uhd_find_devices
>>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-=
19-g7e1b567d
>>> --------------------------------------------------
>>> -- UHD Device 0
>>> --------------------------------------------------
>>> Device Address:
>>>     serial: 3182B09
>>>     addr: 192.168.10.2
>>>     claimed: False
>>>     mgmt_addr: 192.168.1.151
>>>     mgmt_addr: 192.168.10.2
>>>     product: n310
>>>     type: n3xx
>>>=20
>>> But how to add  to the device arguments?  I tried like this but not work=
ing
>>>=20
>>> /usr/local/lib/uhd/examples/rx_ascii_art_dft --args "master_clock_rate=3D=
125e6,mgmt_addr=3D192.168.1.151,recv_frame_size=3D1476,addr=3D192.168.10.2" -=
-freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lvl=3D"-50" --dyn-rng 90 --ant "RX=
2" --subdev "A:0"
>>>=20
>>>=20
>>>=20
>>>=20
>>>> On 2019/7/26 =E4=B8=8A=E5=8D=885:17, Sam Reiter wrote:
>>>> Found the offending commit and reported the issue. It also looks like a=
dding recv_frame_size=3D1476 explicitly to the device arguments cleared thin=
gs up on my N310 running 3.14.1.0. Let me know if this does / doesn't work f=
or anyone.
>>>>=20
>>>> Sam Reiter=20
>>>> SDR Support Engineer
>>>> Ettus Research
>>>>=20
>>>>=20
>>>>> On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech <patchvonbraun@gmail.c=
om> wrote:
>>>>>> On 07/25/2019 03:56 PM, Sam Reiter wrote:
>>>>>> Follow up on this thread. I ran my N310 with a 1GbE link and was able=
 to reproduce the "Bad CHDR or packet fragment issue". It seems specific to N=
3xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton of time trying to f=
ind a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared the issue=
 for me.=20
>>>>>>=20
>>>>>> I'll spend some time finding the offending commit and see what I can'=
t do to get a fix / workaround figured out for 3.14.1.0.
>>>>>>=20
>>>>>> Sam Reiter=20
>>>>>> SDR Support Engineer
>>>>>> Ettus Research
>>>>>>=20
>>>>> Thanks, Sam.  When I go into the lab later, I can probably confirm thi=
s as well, I haven't seen it before, but I think I'm runing 3.14.0.0
>>>>>=20
>>>>>=20
>>>>>>> On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech <patchvonbraun@gmail=
.com> wrote:
>>>>>>> Normally Intel controllers have better performance but even a RealTe=
k chip should have no problem at those data rates.=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> Sent from my iPhone
>>>>>>>=20
>>>>>>> On Jul 23, 2019, at 10:01 PM, =E6=B1=A4 =E9=A3=9E <retina999@hotmail=
.com> wrote:
>>>>>>>=20
>>>>>>>> Actually my pc=E2=80=99s Ethernet card chip is from Realtek.
>>>>>>>>=20
>>>>>>>> I=E2=80=99ve tried all possible MTU sizes of auto, 1000, 1500, 2000=
, and up to 9000. Always the same errors.
>>>>>>>>=20
>>>>>>>> Is it the inherent problem with the Realtek chip?
>>>>>>>>=20
>>>>>>>> If that, is there any workaround? eg. Changing the default Linux dr=
iver,
>>>>>>>>=20
>>>>>>>> or the last solution, ie. I have to try install a PCIE network card=
. Which brand ethernet card is compatible, one from Intel?
>>>>>>>>=20
>>>>>>>> =20
>>>>>>>>=20
>>>>>>>> =E5=8F=91=E4=BB=B6=E4=BA=BA: Marcus D Leech <patchvonbraun@gmail.co=
m>
>>>>>>>> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: Wednesday, July 24, 2019 7:34=
:13 AM
>>>>>>>> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E6=B1=A4 =E9=A3=9E <retina999@hotmail=
.com>
>>>>>>>> =E6=8A=84=E9=80=81: Sam Reiter <sam.reiter@ettus.com>; usrp-users@l=
ists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>> =E4=B8=BB=E9=A2=98: Re: [USRP-users] =E7=AD=94=E5=A4=8D: N310 "Bad C=
HDR or packet fragment" Problem
>>>>>>>> =20
>>>>>>>> Some Ethernet 1g controllers won=E2=80=99t actually do MTUs greater=
 than 1500 despite ethnology telling them to. Some Realtek for example.=20
>>>>>>>>=20
>>>>>>>> If it=E2=80=99s just 1G try default MTU of 1500 and work your way u=
p to see where it fails.=20
>>>>>>>>=20
>>>>>>>> Sent from my iPhone
>>>>>>>>=20
>>>>>>>> On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users <us=
rp-users@lists.ettus.com> wrote:
>>>>>>>>=20
>>>>>>>>> It=E2=80=99s a  1g SFP0 link. I set MTU  to 8000 according to the A=
pplication Note.
>>>>>>>>>=20
>>>>>>>>> =20
>>>>>>>>>=20
>>>>>>>>> =20
>>>>>>>>> =E5=8F=91 =E4=BB=B6=E4=BA=BA: Sam Reiter <sam.reiter@ettus.com>
>>>>>>>>> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: Wednesday, July 24, 2019 4:5=
6:21 AM
>>>>>>>>> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E6=B1=A4 =E9=A3=9E <retina999@hotmai=
l.com>
>>>>>>>>> =E6=8A=84=E9=80=81: usrp-users@lists.ettus.com <usrp-users@lists.e=
ttus.com>
>>>>>>>>> =E4=B8=BB=E9=A2=98: Re: [USRP-users] N310 "Bad CHDR or packet frag=
ment" Problem
>>>>>>>>> =20
>>>>>>>>> If you're connected over a 10GbE link, make sure to set your host'=
s MTU appropriately. I set mine to 9000.
>>>>>>>>>=20
>>>>>>>>> Sam Reiter=20
>>>>>>>>> SDR Support Engineer
>>>>>>>>> Ettus Research
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>>> On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via USRP-user=
s <usrp-users@lists.ettus.com> wrote:
>>>>>>>>>> Hi, all,
>>>>>>>>>>=20
>>>>>>>>>> When benchmarking my N310, I keep getting such [RX FLOW CTRL] err=
ors.=20
>>>>>>>>>> What causes this and how to solve it?
>>>>>>>>>>=20
>>>>>>>>>> Thanks in advance!
>>>>>>>>>>=20
>>>>>>>>>> FT
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>> /usr/local/lib/uhd/examples/benchmark_rate  \
>>>>>>>>>> >    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.=
10.2,master_clock_rate=3D122.88e6" \
>>>>>>>>>> >    --duration 60 \
>>>>>>>>>> >    --channels "0" \
>>>>>>>>>> >    --rx_rate 3.84e6 \
>>>>>>>>>> >    --rx_subdev "A:0" \
>>>>>>>>>> >    --tx_rate 3.84e6 \
>>>>>>>>>> >    --tx_subdev "A:0"
>>>>>>>>>>=20
>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14=
.1.HEAD-0-gbfb9c1c7
>>>>>>>>>> [00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt=
_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
>>>>>>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm=
t_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3D=
False,addr=3D192.168.10.2,master_clock_rate=3D122.88e6
>>>>>>>>>> [INFO] [MPM.PeriphManager] init() called with device args `master=
_clock_rate=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_a=
ddr=3D192.168.10.2,product=3Dn310'.
>>>>>>>>>> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00=
000000004)
>>>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000=
00011312)
>>>>>>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000=
00011312)
>>>>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000=
000000)
>>>>>>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000=
000000)
>>>>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000=
000002)
>>>>>>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000=
000002)
>>>>>>>>>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F000000=
0000000)
>>>>>>>>>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F000000=
0000000)
>>>>>>>>>> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F000000=
0000000)
>>>>>>>>>> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F000000=
0000000)
>>>>>>>>>> Using Device: Single USRP:
>>>>>>>>>>   Device: N300-Series Device
>>>>>>>>>>   Mboard 0: ni-n3xx-3182B09
>>>>>>>>>>   RX Channel: 0
>>>>>>>>>>     RX DSP: 0
>>>>>>>>>>     RX Dboard: A
>>>>>>>>>>     RX Subdev: Magnesium
>>>>>>>>>>   TX Channel: 0
>>>>>>>>>>     TX DSP: 0
>>>>>>>>>>     TX Dboard: A
>>>>>>>>>>     TX Subdev: Magnesium
>>>>>>>>>>=20
>>>>>>>>>> [00:00:17.353184] Setting device timestamp to 0...
>>>>>>>>>> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channel=
s
>>>>>>>>>> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>>>>>>>>>> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad C=
HDR or packet fragment
>>>>>>>>>>=20
>>>>>>>>>> [ERROR] [STREAMER] The receive packet handler caught a value exce=
ption.
>>>>>>>>>> ValueError: Bad CHDR or packet fragment
>>>>>>>>>> 00:00:17.414180] Unexpected error on recv, continuing...
>>>>>>>>>> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..
>>>>>>>>>> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>>>>>>>>>> [00:00:17.514317] Unexpected error on recv, continuing...
>>>>>>>>>> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CH=
DR or packet fragment
>>>>>>>>>>=20
>>>>>>>>>> [ERROR] [STREAMER] The receive packet handler caught a value exce=
ption.
>>>>>>>>>> ValueError: Bad CHDR or packet fragment
>>>>>>>>>> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channe=
ls
>>>>>>>>>> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..
>>>>>>>>>> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>>>>>>>>>> [00:00:17.614377] Unexpected error on recv, continuing...
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=

>>>>>=20

--Apple-Mail-CEEB4019-23AB-4BED-83E3-D9E9E59A1383
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Try adjusting the MTU as well to 1500<div><=
br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br>On Jul 26, 2019, at 9:36 PM, =E6=B1=A4 =E9=A3=9E &lt;<a h=
ref=3D"mailto:retina999@hotmail.com">retina999@hotmail.com</a>&gt; wrote:<br=
><br></div><blockquote type=3D"cite"><div dir=3D"ltr">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">


<pre>FYI

ifconfig
enp2s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 8000
        inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20&lt;link&=
gt;
        ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)
        RX packets 3352  bytes 2274650 (2.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2926  bytes 246527 (246.5 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 369  bytes 29489 (29.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 369  bytes 29489 (29.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlx3c46d8d7c86c: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 150=
0
        inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.255
        inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20&lt;link&=
gt;
        ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)
        RX packets 1043  bytes 822132 (822.1 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 873  bytes 119925 (119.9 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
</pre>
<div class=3D"moz-cite-prefix">On 2019/7/27 =E4=B8=8A=E5=8D=881:17, Sam Reit=
er wrote:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:CANf970ZY3ExaXG5Zdyp6ZtWx7MAEz+aF5OZWf=
O0Df6=3D1=3DHu3Hg@mail.gmail.com">
<div dir=3D"ltr">
<div>Can you post the output of <b>ifconfig</b> on your system?</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2019 at 7:40 PM =E6=B1=
=A4 =E9=A3=9E &lt;<a href=3D"mailto:retina999@hotmail.com" moz-do-not-send=3D=
"true">retina999@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<p>Thanks!</p>
<p>I am learning to use RFNOC to integrate a baseband. So I used PyBOMBS to c=
reate the environment.&nbsp; The automatically installed UHD version is as f=
ollows</p>
<p>uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-19-g=
7e1b567d<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
&nbsp;&nbsp;&nbsp; serial: 3182B09<br>
&nbsp;&nbsp;&nbsp; addr: 192.168.10.2<br>
&nbsp;&nbsp;&nbsp; claimed: False<br>
&nbsp;&nbsp;&nbsp; mgmt_addr: 192.168.1.151<br>
&nbsp;&nbsp;&nbsp; mgmt_addr: 192.168.10.2<br>
&nbsp;&nbsp;&nbsp; product: n310<br>
&nbsp;&nbsp;&nbsp; type: n3xx</p>
<p>But how to add&nbsp; to the device arguments?&nbsp; I tried like this but=
 not working</p>
<p>/usr/local/lib/uhd/examples/rx_ascii_art_dft --args "master_clock_rate=3D=
125e6,mgmt_addr=3D192.168.1.151<font color=3D"#ff0000">,recv_frame_size=3D14=
76,</font>addr=3D192.168.10.2" --freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lv=
l=3D"-50" --dyn-rng 90 --ant "RX2" --subdev
 "A:0"<b><br>
<br>
</b></p>
<p><br>
</p>
<div class=3D"gmail-m_4960003340379191278moz-cite-prefix">On 2019/7/26 =E4=B8=
=8A=E5=8D=885:17, Sam Reiter wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>Found the offending commit and reported the issue. It also looks like a=
dding
<b>recv_frame_size=3D1476</b> explicitly to the device arguments cleared thi=
ngs up on my N310 running 3.14.1.0. Let me know if this does / doesn't work f=
or anyone.<br>
</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"gmail-m_4960003340379191278gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2019 at 3:04 PM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" m=
oz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<div class=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419moz-cite=
-prefix">
On 07/25/2019 03:56 PM, Sam Reiter wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>Follow up on this thread. I ran my N310 with a 1GbE link and was able t=
o reproduce the "Bad CHDR or packet fragment issue". It seems specific to N3=
xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton of time trying to f=
ind a workaround on 3.14.1.0,
 but rolling back to 3.14.0.0 cleared the issue for me. <br>
</div>
<div><br>
</div>
<div>I'll spend some time finding the offending commit and see what I can't d=
o to get a fix / workaround figured out for 3.14.1.0.<br>
</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"gmail-m_4960003340379191278gmail-m_458362900432671=
9419gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</blockquote>
Thanks, Sam.&nbsp; When I go into the lab later, I can probably confirm this=
 as well, I haven't seen it before, but I think I'm runing 3.14.0.0<br>
<br>
<br>
<blockquote type=3D"cite">
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2019 at 10:13 PM Marcu=
s D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" m=
oz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
<div dir=3D"auto">Normally Intel controllers have better performance but eve=
n a RealTek chip should have no problem at those data rates.&nbsp;
<div><br>
</div>
<div><br>
<br>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-17=
82705882285278276AppleMailSignature" dir=3D"ltr">
Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jul 23, 2019, at 10:01 PM, =E6=B1=A4 =E9=A3=9E &lt;<a href=3D"mailto:reti=
na999@hotmail.com" target=3D"_blank" moz-do-not-send=3D"true">retina999@hotm=
ail.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_=
-1782705882285278276WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Actually my pc=E2=80=99s Etherne=
t card chip is from Realtek.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99ve tried all possible M=
TU sizes of auto, 1000, 1500, 2000, and up to 9000. Always the same errors.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is it the inherent problem with t=
he Realtek chip?
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If that, is there any workaround=
? eg. Changing the default Linux driver,
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">or the last solution, ie. I have=
 to try install a PCIE network card. Which brand ethernet card is compatible=
, one from Intel?</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-17=
82705882285278276divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000=
"><b>=E5=8F=91=E4=BB=B6=E4=BA=BA:</b> Marcus D Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank" moz-do-not-send=3D"true">patchvonb=
raun@gmail.com</a>&gt;<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> Wednesday, July 24, 2019 7:34:1=
3 AM<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> =E6=B1=A4 =E9=A3=9E &lt;<a href=3D"mailt=
o:retina999@hotmail.com" target=3D"_blank" moz-do-not-send=3D"true">retina99=
9@hotmail.com</a>&gt;<br>
<b>=E6=8A=84=E9=80=81:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus=
.com" target=3D"_blank" moz-do-not-send=3D"true">sam.reiter@ettus.com</a>&gt=
;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" moz-do-not-s=
end=3D"true">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</=
a>&gt;<br>
<b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] =E7=AD=94=E5=A4=8D: N310 "Bad CH=
DR or packet fragment" Problem</font>
<div>&nbsp;</div>
</div>
<div>Some Ethernet 1g controllers won=E2=80=99t actually do MTUs greater tha=
n 1500 despite ethnology telling them to. Some Realtek for example.&nbsp;
<div><br>
</div>
<div>If it=E2=80=99s just 1G try default MTU of 1500 and work your way up to=
 see where it fails.&nbsp;<br>
<br>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-17=
82705882285278276AppleMailSignature" dir=3D"ltr">
Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_=
-1782705882285278276WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">It</span>=E2=80=99<span lang=3D"=
EN-US">s a&nbsp; 1g SFP0 link. I set MTU&nbsp; to 8000 according to the Appl=
ication Note.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-17=
82705882285278276divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000=
"><b>=E5=8F=91 =E4=BB=B6=E4=BA=BA:</b> Sam Reiter &lt;<a href=3D"mailto:sam.=
reiter@ettus.com" target=3D"_blank" moz-do-not-send=3D"true">sam.reiter@ettu=
s.com</a>&gt;<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> Wednesday, July 24, 2019 4:56:2=
1 AM<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> =E6=B1=A4 =E9=A3=9E &lt;<a href=3D"mailt=
o:retina999@hotmail.com" target=3D"_blank" moz-do-not-send=3D"true">retina99=
9@hotmail.com</a>&gt;<br>
<b>=E6=8A=84=E9=80=81:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" moz-do-not-send=3D"true">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</=
a>&gt;<br>
<b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] N310 "Bad CHDR or packet fragmen=
t" Problem</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">If you're connected over a 10GbE link, make sure to set you=
r host's MTU appropriately. I set mine to 9000.
<div><br clear=3D"all">
<div>
<div dir=3D"ltr" class=3D"gmail-m_4960003340379191278gmail-m_458362900432671=
9419gmail-m_-1782705882285278276gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=
=A4 =E9=A3=9E via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                                                0px
                                                0.8ex;border-left:1px
                                                solid
                                                rgb(204,204,204);padding-lef=
t:1ex">
<div bgcolor=3D"#FFFFFF">
<pre>Hi, all,

When benchmarking my N310, I keep getting such <font color=3D"#CC0000">[RX FL=
OW CTRL]</font> errors.=20
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,mas=
ter_clock_rate=3D122.88e6" \
&gt;    --duration 60 \
&gt;    --channels "0" \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev "A:0" \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev "A:0"

<font color=3D"#4E9A06">[INFO] [UHD] </font>linux; GNU C++ version 7.4.0; Bo=
ost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D192=
.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
<font color=3D"#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D=
3182B09,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e6
<font color=3D"#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called with=
 device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock_sour=
ce=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310'.
<font color=3D"#4E9A06">[INFO] [0/Replay_0] </font>Initializing block contro=
l (NOC ID: 0x4E91A00000000004)
<font color=3D"#4E9A06">[INFO] [0/Radio_0] </font>Initializing block control=
 (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/Radio_1] </font>Initializing block control=
 (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control (=
NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control (=
NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control (=
NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control (=
NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packe=
t: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handler=
 caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packet=
: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handler=
 caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" moz-do-not-s=
end=3D"true">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</span=
><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" moz-do=
-not-send=3D"true">USRP-users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank" moz-do-not-send=3D"true">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
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
<br>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>


</div></blockquote></div></body></html>=

--Apple-Mail-CEEB4019-23AB-4BED-83E3-D9E9E59A1383--


--===============1007694263234780988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1007694263234780988==--

