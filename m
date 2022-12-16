Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C705264EC0F
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 14:25:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA5923844AA
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 08:25:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671197128; bh=vwKI8E90qDA5m3BYe/mMH4j99RJxJlDLoiDvZolhevk=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TLiYjzyhSLcB7UhjChnzAD8KXLiInRZcNz3DdxotW+/p8oQvF7KpWe3v+H6xSzEXc
	 ynBjZlsqkpkY9xU1K1UhEFG6H8kja5XNVDep3G35Khk15j0SVIsz2Vk6vGUJevRkO+
	 T1lSMGA7H2aRoXgHGgrND0VrBhXCauQILakel6n+e5i7+JxhBz3Kr2mJ5Po6iK5sJd
	 ue0pb7FRvcCIU/ciXYM/BDdiL4teDcriNCReaLPKJXvCjmM06yU+P4Eq6/TeM30P17
	 cql/IumOGkQaLKj6Zb5NRy19P8KSXz/xTuPNqr7KrOSuBC6+vLc8QkssHv4Q9o79HR
	 /U0RX0c6n0AOg==
Received: from smtp-relay-3.sys.kth.se (smtp-relay-3.sys.kth.se [130.237.32.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E24773843AB
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 08:25:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="IfRqodFm";
	dkim-atps=neutral
Received: from exdb5.ug.kth.se (exdb5.ug.kth.se [192.168.32.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp-relay-3.sys.kth.se (Postfix) with ESMTPS id 4NYVG407w7zPQDp;
	Fri, 16 Dec 2022 14:25:15 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp-relay-3.sys.kth.se 4NYVG407w7zPQDp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1671197118; bh=1Bje8fWMV90V5YGQa7JeUcPa7LRC6OLK9mQExGQ5wJQ=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=IfRqodFmpu1t+Z6Ff8w58hJxZYorDYQMHpKccXV/NVzyrAAY9+Verg+PIL4Wwt4HK
	 09GNf6aLbx6JcO/vYMk3JjJCEoy+W+o3gV8DJmo0oxHFb6nDf3Ss8/UWY0KokhWxws
	 CmtpLHcfO7OiInMw0hOYNk7OSMqpoLdiEcQtmCY8=
Received: from exdb4.ug.kth.se (192.168.32.59) by exdb5.ug.kth.se
 (192.168.32.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.20; Fri, 16 Dec
 2022 14:25:15 +0100
Received: from exdb4.ug.kth.se ([192.168.32.59]) by exdb4.ug.kth.se
 ([192.168.32.59]) with mapi id 15.02.1118.020; Fri, 16 Dec 2022 14:25:15
 +0100
From: Samie Mostafavi <ssmos@kth.se>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] Re: UHD SPP problem with E320 and XG link
Thread-Index: AQHZETVIi1Y2A6SB3UKa8BiGXYceka5wVKRCgAAXZoCAABPjXg==
Date: Fri, 16 Dec 2022 13:25:15 +0000
Message-ID: <13b24d7585c34f0b807495a0ce4555ab@kth.se>
References: <70c3e9d18e044f48ac549fa1dac7f598@kth.se>
 <0f8474d42d3c471d9ddf7c95cd0cd312@kth.se>,<CAFche=h6ugjr6i_6XPR74Hz5e+QzfrX7y0oGQ=9OnRBuV-x93g@mail.gmail.com>
In-Reply-To: <CAFche=h6ugjr6i_6XPR74Hz5e+QzfrX7y0oGQ=9OnRBuV-x93g@mail.gmail.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_50,HTML_MESSAGE,NUMERIC_HTTP_ADDR,SPF_HELO_NONE shortcircuit=no autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on smtp-relay-3.sys.kth.se
Message-ID-Hash: I6IMRGZIO3YIUBIMI5EZPX6M3V24LDM7
X-Message-ID-Hash: I6IMRGZIO3YIUBIMI5EZPX6M3V24LDM7
X-MailFrom: ssmos@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD SPP problem with E320 and XG link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I6IMRGZIO3YIUBIMI5EZPX6M3V24LDM7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5755353652084929007=="

--===============5755353652084929007==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_13b24d7585c34f0b807495a0ce4555abkthse_"

--_000_13b24d7585c34f0b807495a0ce4555abkthse_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Wade,


Thanks for your answer. I figured out the problem. It was the switch in bet=
ween that I had to reboot. I had jumbo frame option enabled on the switch b=
ut a reboot was needed. Now that I try it works:


host$ ping -M do -s 5850 10.40.3.1

PING 10.40.3.1 (10.40.3.1) 5850(5878) bytes of data.

5858 bytes from 10.40.3.1: icmp_seq=3D1 ttl=3D64 time=3D2.24 ms

5858 bytes from 10.40.3.1: icmp_seq=3D2 ttl=3D64 time=3D1.25 ms

5858 bytes from 10.40.3.1: icmp_seq=3D3 ttl=3D64 time=3D1.19 ms

5858 bytes from 10.40.3.1: icmp_seq=3D4 ttl=3D64 time=3D1.19 ms



host$ ./benchmark_rate --args "mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,maste=
r_clock_rate=3D61.44e6" --duration 60 --channels "0" --rx_rate 61.44e6 --rx=
_subdev "A:0" --tx_rate 61.44e6 --tx_subdev "A:0" --rx_spp 1919 --tx_spp 19=
19  --tx_stream_args "spp=3D1919" --rx_stream_args "spp=3D1919"


[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g=
1f8fd345

[00:00:00.000254] Creating the usrp device with: mgmt_addr=3D10.10.3.1,addr=
=3D10.40.3.1,master_clock_rate=3D61.44e6...

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.10.3.1,type=3De3xx,product=3De320,serial=3D3238B97,name=3Dni-e320-3238B97=
,fpga=3DXG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6

[WARNING] [MPM.RPCServer] A timeout event occured!

[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master=
_clock_rate=3D61.44e6,mgmt_addr=3D10.10.3.1,name=3Dni-e320-3238B97,product=
=3De320'.

[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

Using Device: Single USRP:

  Device: E300-Series Device

  Mboard 0: e320

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: E3xx

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: E3xx


[00:00:05.502443989] Setting device timestamp to 0...

Setting RX spp to 1919

Setting TX spp to 1916

[00:00:05.512753951] Testing receive rate 61.440000 Msps on 1 channels

[00:00:05.554696549] Testing transmit rate 61.440000 Msps on 1 channels

[00:00:05.555824707] Detected Rx sequence error.

DU[00:01:05.558922952] Benchmark complete.



Benchmark rate summary:

  Num received samples:     3686368018

  Num dropped samples:      3196728

  Num overruns detected:    0

  Num transmitted samples:  3686403160

  Num sequence errors (Tx): 0

  Num sequence errors (Rx): 1

  Num underruns detected:   1

  Num late commands:        0

  Num timeouts (Tx):        0

  Num timeouts (Rx):        0



Done!



Best,

Samie

________________________________
From: Wade Fife <wade.fife@ettus.com>
Sent: Friday, December 16, 2022 2:09:21 PM
To: Samie Mostafavi
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: UHD SPP problem with E320 and XG link

Hi Samie,

In your example, you requested to use "addr=3D10.40.3.1". To use the 10 GbE=
 SFP port, be sure to specify the address of the XG port, which is typicall=
y 192.168.10.2. I don't think jumbo frames are supported over the 1 GbE RJ4=
5 port.

Thanks,

Wade

On Fri, Dec 16, 2022 at 4:47 AM Samie Mostafavi <ssmos@kth.se<mailto:ssmos@=
kth.se>> wrote:

Hi,


I could narrow down the problem to tx_spp. Tried the following command inst=
ead for benchmark and it seems that RX spp could be set to 1919 but TX spp =
max that is reported by the radio is 492. Does anyone know how I can increa=
se TX spp?


sudo ./benchmark_rate --args "mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,master=
_clock_rate=3D61.44e6" --duration 60 --channels "0" --rx_rate 61.44e6 --rx_=
subdev "A:0" --tx_rate 61.44e6 --tx_subdev "A:0" --rx_spp 1919 --tx_spp 191=
9  --tx_stream_args "spp=3D1919" --rx_stream_args "spp=3D1919"


[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g=
1f8fd345

[00:00:00.000069] Creating the usrp device with: mgmt_addr=3D10.10.3.1,addr=
=3D10.40.3.1,master_clock_rate=3D61.44e6...

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.10.3.1,type=3De3xx,product=3De320,serial=3D3238B97,name=3Dni-e320-3238B97=
,fpga=3DXG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6

[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master=
_clock_rate=3D61.44e6,mgmt_addr=3D10.10.3.1,name=3Dni-e320-3238B97,product=
=3De320'.

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

Using Device: Single USRP:

  Device: E300-Series Device

  Mboard 0: e320

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: E3xx

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: E3xx


[00:00:04.448876213] Setting device timestamp to 0...

Setting RX spp to 1919

Setting TX spp to 492

[00:00:04.457322205] Testing receive rate 61.440000 Msps on 1 channels

[00:00:04.502995425] Testing transmit rate 61.440000 Msps on 1 channels


Best,

Samie

________________________________
From: Samie Mostafavi <ssmos@kth.se<mailto:ssmos@kth.se>>
Sent: Friday, December 16, 2022 11:09:56 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD SPP problem with E320 and XG link


Hi,


I have an E320 device connected to the host with XG fiber connection and XG=
 FPGA loaded on the E320. UHD version is 4.3.0. I have set the mtu to 9000 =
on both sides. Below you can find the configurations. I am trying to set sp=
p to 1919 but I always get 492. I read in the documents that it depends on =
the mtu and by default it is set to the maximum value possible based on mtu=
. Below there is the result of benchmark rate as well.


host:$ sudo ethtool eno12399np0

Settings for eno12399np0:

Supported ports: [ FIBRE ]

Supported link modes:   1000baseT/Full

                        10000baseT/Full

Supported pause frame use: Symmetric Receive-only

Supports auto-negotiation: Yes

Supported FEC modes: Not reported

Advertised link modes:  1000baseT/Full

                        10000baseT/Full

Advertised pause frame use: Symmetric

Advertised auto-negotiation: Yes

Advertised FEC modes: Not reported

Link partner advertised link modes:  Not reported

Link partner advertised pause frame use: Symmetric

Link partner advertised auto-negotiation: No

Link partner advertised FEC modes: Not reported

Speed: 10000Mb/s

Duplex: Full

Port: Direct Attach Copper

PHYAD: 1

Transceiver: internal

Auto-negotiation: on

Supports Wake-on: g

Wake-on: d

Current message level: 0x00000000 (0)



Link detected: yes



host:$ ip -f inet addr show eno12399np0

263: eno12399np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state=
 UP group default qlen 1000

    inet 10.40.2.1/16<http://10.40.2.1/16> brd 10.40.255.255 scope global e=
no12399np0

       valid_lft forever preferred_lft forever


ni-e320-3238B97:~# ip -f inet addr show sfp0

15: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc pfifo_fast qlen =
1000

    inet 10.40.3.1/16<http://10.40.3.1/16> brd 10.40.255.255 scope global s=
fp0

       valid_lft forever preferred_lft forever



host:$ ./benchmark_rate --args "addr=3D10.40.3.1,master_clock_rate=3D61.44e=
6" --duration 60 --channels "0" --rx_rate 61.44e6 --rx_subdev "A:0" --tx_ra=
te 61.44e6 --tx_subdev "A:0"


[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g=
1f8fd345

[00:00:00.000070] Creating the usrp device with: addr=3D10.40.3.1,master_cl=
ock_rate=3D61.44e6...

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.40.3.1,type=3De3xx,product=3De320,serial=3D3238B97,name=3Dni-e320-3238B97=
,fpga=3DXG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6

[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master=
_clock_rate=3D61.44e6,mgmt_addr=3D10.40.3.1,name=3Dni-e320-3238B97,product=
=3De320'.

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...

[INFO] [0/Radio#0] CODEC loopback test passed

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)

Using Device: Single USRP:

  Device: E300-Series Device

  Mboard 0: e320

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: E3xx

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: E3xx


[00:00:04.923395067] Setting device timestamp to 0...

Setting TX spp to 492

[00:00:04.935123785] Testing receive rate 61.440000 Msps on 1 channels

[00:00:04.977439269] Testing transmit rate 61.440000 Msps on 1 channels

UUUU[00:01:04.979477903] Benchmark complete.



Benchmark rate summary:

  Num received samples:     3686373960

  Num dropped samples:      0

  Num overruns detected:    0

  Num transmitted samples:  3686410860

  Num sequence errors (Tx): 0

  Num sequence errors (Rx): 0

  Num underruns detected:   4

  Num late commands:        0

  Num timeouts (Tx):        0

  Num timeouts (Rx):        0



Done



As you can see TX spp is set to 492. But I want 1919 with 9000 mtu. Is ther=
e anything I am missing here?


Best,

Samie

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_13b24d7585c34f0b807495a0ce4555abkthse_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi Wade,</p>
<p><br>
</p>
<p>Thanks for your answer. I figured out the problem. It was the switch in =
between that I had to reboot. I had jumbo frame option enabled on the switc=
h but a reboot was needed. Now that I try it works:</p>
<p><br>
</p>
<p></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">h=
ost$ ping -M do -s 5850 10.40.3.1</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">P=
ING 10.40.3.1 (10.40.3.1) 5850(5878) bytes of data.</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">5=
858 bytes from 10.40.3.1: icmp_seq=3D1 ttl=3D64 time=3D2.24 ms</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">5=
858 bytes from 10.40.3.1: icmp_seq=3D2 ttl=3D64 time=3D1.25 ms</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">5=
858 bytes from 10.40.3.1: icmp_seq=3D3 ttl=3D64 time=3D1.19 ms</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">5=
858 bytes from 10.40.3.1: icmp_seq=3D4 ttl=3D64 time=3D1.19 ms</span></p>
<br>
<p></p>
<p><br>
</p>
<p></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">h=
ost$ ./benchmark_rate --args &quot;mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,m=
aster_clock_rate=3D61.44e6&quot; --duration 60 --channels &quot;0&quot; --r=
x_rate 61.44e6 --rx_subdev &quot;A:0&quot; --tx_rate 61.44e6 --tx_subdev
 &quot;A:0&quot; --rx_spp 1919 --tx_spp 1919<span class=3D"Apple-converted-=
space">&nbsp; </span>--tx_stream_args &quot;spp=3D1919&quot; --rx_stream_ar=
gs &quot;spp=3D1919&quot;</span></p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [UHD]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">linux; GNU C&#43;&#43; version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-=
g1f8fd345</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:00.000254] Creating the usrp device with: mgmt_addr=3D10.10.3.1,addr=
=3D10.40.3.1,master_clock_rate=3D61.44e6...</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [MPMD]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">Initializing 1 device(s) in parallel with args: mgmt_addr=3D10.10.3.1=
,type=3De3xx,product=3De320,serial=3D3238B97,name=3Dni-e320-3238B97,fpga=3D=
XG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6</span></p>
<p class=3D"p3" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; color: rgb(170, 171,=
 37);">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
b>[WARNING] [MPM.RPCServer]
</b></span><span class=3D"s3" style=3D"font-variant-ligatures: no-common-li=
gatures; color: rgb(0, 0, 0);">A timeout event occured!</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [MPM.PeriphManager]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">init() called with device args `fpga=3DXG,master_clock_rate=3D61.44e6=
,mgmt_addr=3D10.10.3.1,name=3Dni-e320-3238B97,product=3De320'.</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s4" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(170, 171, 37);"><b>[WARNING] [RFNOC::GRAPH]
</b></span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-li=
gatures;">One or more blocks timed out during flush!</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/Radio#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">Performing CODEC loopback test on channel 0 ...<span class=3D"Apple-c=
onverted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/Radio#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">CODEC loopback test passed</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/Radio#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">Performing CODEC loopback test on channel 1 ...<span class=3D"Apple-c=
onverted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/Radio#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">CODEC loopback test passed</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/DmaFIFO#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">BIST passed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [0/DmaFIFO#0]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">BIST passed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">U=
sing Device: Single USRP:</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Device: E300-Series Device</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Mboard 0: e320</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>RX Channel: 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>RX DSP: 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>RX Dboard: A</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>RX Subdev: E3xx</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>TX Channel: 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>TX DSP: 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>TX Dboard: A</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>TX Subdev: E3xx</span></p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:05.502443989] Setting device timestamp to 0...</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
b>Setting RX spp to 1919</b></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
b>Setting TX spp to 1916</b></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:05.512753951] Testing receive rate 61.440000 Msps on 1 channels</span=
></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:05.554696549] Testing transmit rate 61.440000 Msps on 1 channels</spa=
n></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:05.555824707] Detected Rx sequence error.</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">D=
U[00:01:05.558922952] Benchmark complete.</span></p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">B=
enchmark rate summary:</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num received samples: <span class=3D"Apple-converted-space">&nbsp; &=
nbsp; </span>3686368018</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num dropped samples:<span class=3D"Apple-converted-space">&nbsp; &nb=
sp; &nbsp; </span>3196728</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num overruns detected:<span class=3D"Apple-converted-space">&nbsp; &=
nbsp; </span>0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num transmitted samples:<span class=3D"Apple-converted-space">&nbsp;=
 </span>3686403160</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num sequence errors (Tx): 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num sequence errors (Rx): 1</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num underruns detected: <span class=3D"Apple-converted-space">&nbsp;=
 </span>1</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num late commands:<span class=3D"Apple-converted-space">&nbsp; &nbsp=
; &nbsp; &nbsp; </span>0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num timeouts (Tx):<span class=3D"Apple-converted-space">&nbsp; &nbsp=
; &nbsp; &nbsp; </span>0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num timeouts (Rx):<span class=3D"Apple-converted-space">&nbsp; &nbsp=
; &nbsp; &nbsp; </span>0</span></p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
/span><br>
</p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">D=
one!</span></p>
<br>
<p></p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Wade Fife &lt;wade.fi=
fe@ettus.com&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 2:09:21 PM<br>
<b>To:</b> Samie Mostafavi<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: UHD SPP problem with E320 and XG link<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Samie,</div>
<div><br>
</div>
<div>In your example, you requested to use &quot;addr=3D10.40.3.1&quot;. To=
 use the 10 GbE SFP port, be sure to specify the address of the XG port, wh=
ich is typically 192.168.10.2. I don't think jumbo frames are supported ove=
r the 1 GbE RJ45 port.</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Wade<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 16, 2022 at 4:47 AM Samie=
 Mostafavi &lt;<a href=3D"mailto:ssmos@kth.se">ssmos@kth.se</a>&gt; wrote:<=
br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"msg-780074848259873453">
<div dir=3D"ltr">
<div id=3D"m_-780074848259873453divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I could narrow down the problem to tx_spp. Tried the following command i=
nstead for benchmark and it seems that RX spp could be set to 1919 but TX s=
pp max that is reported by the radio is 492. Does anyone know&nbsp;how I&nb=
sp;can increase TX spp?<br>
<br>
</p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">sudo ./benchmark=
_rate --args &quot;mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,master_clock_rate=
=3D61.44e6&quot; --duration 60 --channels &quot;0&quot; --rx_rate 61.44e6 -=
-rx_subdev &quot;A:0&quot; --tx_rate 61.44e6 --tx_subdev &quot;A:0&quot; --=
rx_spp
 1919 --tx_spp 1919<span>&nbsp; </span>--tx_stream_args &quot;spp=3D1919&qu=
ot; --rx_stream_args &quot;spp=3D1919&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [UHD]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">linux; GN=
U C&#43;&#43; version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</span=
></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:00.000069=
] Creating the usrp device with: mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,mas=
ter_clock_rate=3D61.44e6...</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [MPMD]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Initializ=
ing 1 device(s) in parallel with args: mgmt_addr=3D10.10.3.1,type=3De3xx,pr=
oduct=3De320,serial=3D3238B97,name=3Dni-e320-3238B97,fpga=3DXG,claimed=3DFa=
lse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [MPM.PeriphManager]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">init() ca=
lled with device args `fpga=3DXG,master_clock_rate=3D61.44e6,mgmt_addr=3D10=
.10.3.1,name=3Dni-e320-3238B97,product=3De320'.</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 0 ...<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">CODEC loo=
pback test passed</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 1 ...<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">CODEC loo=
pback test passed</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/DmaFIFO#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">BIST pass=
ed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/DmaFIFO#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">BIST pass=
ed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Using Device: Si=
ngle USRP:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Device: E300-Series Device</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Mboard 0: e320</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>RX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>TX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.448876=
213] Setting device timestamp to 0...</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Setting RX spp t=
o 1919</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Setting TX spp t=
o 492</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.457322=
205] Testing receive rate 61.440000 Msps on 1 channels</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.502995=
425] Testing transmit rate 61.440000 Msps on 1 channels</span></p>
<br>
<p></p>
<p>Best,</p>
<p>Samie</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-780074848259873453divRplyFwdMsg" dir=3D"ltr"><font style=3D"f=
ont-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> =
Samie Mostafavi &lt;<a href=3D"mailto:ssmos@kth.se" target=3D"_blank">ssmos=
@kth.se</a>&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 11:09:56 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] UHD SPP problem with E320 and XG link</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"m_-780074848259873453divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I have an E320 device connected to the host with XG fiber connection and=
 XG&nbsp;FPGA loaded on the E320. UHD version is 4.3.0. I have set the mtu =
to 9000 on both sides. Below you can find&nbsp;the configurations.&nbsp;<sp=
an style=3D"font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&q=
uot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot=
;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16p=
x">I
 am trying to set spp to 1919 but I always get&nbsp;</span><span style=3D"f=
ont-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">492. I rea=
d in
 the documents that it depends on the mtu and by default it is set to the m=
aximum value possible based on mtu. Below there is&nbsp;the result of bench=
mark rate as well.</span></p>
<p><br>
</p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">host:$ sudo etht=
ool eno12399np0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Settings for eno=
12399np0:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supported ports: [ FIBRE ]</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supported link modes:
<span>&nbsp; </span>1000baseT/Full<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>10000baseT/Full<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supported pause frame use: Symmetric Receive-on=
ly</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supports auto-negotiation: Yes</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supported FEC modes: Not reported</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Advertised link modes:<span>&nbsp;
</span>1000baseT/Full<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>10000baseT/Full<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Advertised pause frame use: Symmetric</span></p=
>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Advertised auto-negotiation: Yes</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Advertised FEC modes: Not reported</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Link partner advertised link modes:<span>&nbsp;
</span>Not reported</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Link partner advertised pause frame use: Symmet=
ric</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Link partner advertised auto-negotiation: No</s=
pan></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Link partner advertised FEC modes: Not reported=
</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Speed: 10000Mb/s</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Duplex: Full</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Port: Direct Attach Copper</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>PHYAD: 1</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Transceiver: internal</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Auto-negotiation: on</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Supports Wake-on: g</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Wake-on: d</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Current message level: 0x00000000 (0)</span></p=
>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span><span style=3D"white-space:pre-wrap"></span><sp=
an style=3D"white-space:pre-wrap"></span><span>&nbsp; &nbsp; &nbsp; &nbsp;<=
/span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span>Link detected: yes</span></p>
<br>
<p></p>
<p><br>
</p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">host:$ ip -f ine=
t addr show eno12399np0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">263: eno12399np0=
: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP group =
default qlen 1000</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>inet <a href=3D"http://10.40.2.1/16" target=3D"_blank">
10.40.2.1/16</a> brd 10.40.255.255 scope global eno12399np0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp;&nbs=
p; &nbsp; &nbsp; </span>valid_lft forever preferred_lft forever</span></p>
<br>
<p></p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">ni-e320-3238B97:=
~# ip -f inet addr show sfp0<span>&nbsp; &nbsp; &nbsp; &nbsp;</span></span>=
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">15: sfp0: &lt;BR=
OADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc pfifo_fast qlen 1000</span=
></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>inet <a href=3D"http://10.40.3.1/16" target=3D"_blank">
10.40.3.1/16</a> brd 10.40.255.255 scope global sfp0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp;&nbs=
p; &nbsp; &nbsp; </span>valid_lft forever preferred_lft forever</span></p>
<p></p>
<p><br>
</p>
<p><span></span></p>
<p><span><br>
</span></p>
<p><span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">host:$ ./benchma=
rk_rate --args &quot;addr=3D10.40.3.1,master_clock_rate=3D61.44e6&quot; --d=
uration 60 --channels &quot;0&quot; --rx_rate 61.44e6 --rx_subdev &quot;A:0=
&quot; --tx_rate 61.44e6 --tx_subdev &quot;A:0&quot;</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [UHD]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">linux; GN=
U C&#43;&#43; version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</span=
></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:00.000070=
] Creating the usrp device with: addr=3D10.40.3.1,master_clock_rate=3D61.44=
e6...</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [MPMD]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Initializ=
ing 1 device(s) in parallel with args: mgmt_addr=3D10.40.3.1,type=3De3xx,pr=
oduct=3De320,serial=3D3238B97,name=3Dni-e320-3238B97,fpga=3DXG,claimed=3DFa=
lse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [MPM.PeriphManager]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">init() ca=
lled with device args `fpga=3DXG,master_clock_rate=3D61.44e6,mgmt_addr=3D10=
.40.3.1,name=3Dni-e320-3238B97,product=3De320'.</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 0 ...<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">CODEC loo=
pback test passed</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 1 ...<span>&nbsp;</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">CODEC loo=
pback test passed</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/DmaFIFO#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">BIST pass=
ed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/DmaFIFO#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">BIST pass=
ed (Estimated Minimum Throughput: 1361 MB/s)</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Using Device: Si=
ngle USRP:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Device: E300-Series Device</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Mboard 0: e320</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>RX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>RX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>TX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; &nb=
sp; </span>TX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.923395=
067] Setting device timestamp to 0...</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>Setting TX sp=
p to 492</b></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.935123=
785] Testing receive rate 61.440000 Msps on 1 channels</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">[00:00:04.977439=
269] Testing transmit rate 61.440000 Msps on 1 channels</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">UUUU[00:01:04.97=
9477903] Benchmark complete.</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Benchmark rate s=
ummary:</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num received samples:
<span>&nbsp; &nbsp; </span>3686373960</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num dropped samples:<span>&nbsp; &nbsp; &nbsp;
</span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num overruns detected:<span>&nbsp; &nbsp;
</span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num transmitted samples:<span>&nbsp;
</span>3686410860</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num sequence errors (Tx): 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num sequence errors (Rx): 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num underruns detected:
<span>&nbsp; </span>4</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num late commands:<span>&nbsp; &nbsp; &nbsp; &nbsp;
</span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num timeouts (Tx):<span>&nbsp; &nbsp; &nbsp; &nbsp;
</span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>&nbsp; </s=
pan>Num timeouts (Rx):<span>&nbsp; &nbsp; &nbsp; &nbsp;
</span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo;min-height:15px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">Done</span></p>
<br>
<p></p>
<p><span><br>
</span></p>
<p>As you can see TX spp is set to 492. But I want 1919 with 9000 mtu.&nbsp=
;Is there anything I am missing here?</p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_13b24d7585c34f0b807495a0ce4555abkthse_--

--===============5755353652084929007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5755353652084929007==--
