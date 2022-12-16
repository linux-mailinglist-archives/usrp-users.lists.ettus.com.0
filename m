Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D36F64E9BE
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 11:48:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A367B38445D
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 05:48:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671187732; bh=QIN+lzDpcfn2uVBSeIKWLaTsG+EQ40FA4OPrUbgdbvI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d4cdqlNp61lx0ltgMXOk77k4enVB1HdVpMJJSglO+pVevyShPOngFexQRERZzHoYV
	 zP5wffekPnxQK2vIkXwkNnZiRPX5IdFBE0iv5uQk1K4FBYMoU2YRChtYQAXtcErXJQ
	 Q+pvu57zPDVuKAxC81X85+doE/nctZ16z7CjYEcetzGH/H1aRu9cNzPycshTrcJ2rL
	 eIeOxdFIuvDt2wFvjzUIPjB+yCxGMIiOupEoebifyzITVaoXZWM5+/VFd34yNdBsSD
	 XxgmIZJ90X+1DOolY5nMVKT38hDV713gOKXfOgoSM6Oixg3//9cpqcC0Ue/sESX7hI
	 hSAwAgruvd1Lw==
Received: from smtp-relay-3.sys.kth.se (smtp-relay-3.sys.kth.se [130.237.32.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B92E1383A26
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 05:47:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="DXZ/ckcz";
	dkim-atps=neutral
Received: from exdb1.ug.kth.se (exdb1.ug.kth.se [192.168.32.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp-relay-3.sys.kth.se (Postfix) with ESMTPS id 4NYQlt3361zPQDT
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 11:47:22 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp-relay-3.sys.kth.se 4NYQlt3361zPQDT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1671187643; bh=TRRuuXXPc+zivtsjYcGDlOI/lsFBMp7XZHmjWrgZFnI=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=DXZ/ckczA1ourzX5Nhdfj9rpINHbNKNHH9GWgz/fgkebTYY/Naj4Axi2+OryKum7S
	 YDmsexNMjwieaqifcE30c3Bhsxlo/VmLBgwljdjMe4vLYzQLpROhm3zMd6YOKYbqPE
	 OY5qUaatIJwD8gOERxcBEroOO9z7/FpMRLEYPXTc=
Received: from exdb4.ug.kth.se (192.168.32.59) by exdb1.ug.kth.se
 (192.168.32.56) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.20; Fri, 16 Dec
 2022 11:47:22 +0100
Received: from exdb4.ug.kth.se ([192.168.32.59]) by exdb4.ug.kth.se
 ([192.168.32.59]) with mapi id 15.02.1118.020; Fri, 16 Dec 2022 11:47:22
 +0100
From: Samie Mostafavi <ssmos@kth.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD SPP problem with E320 and XG link
Thread-Index: AQHZETVIi1Y2A6SB3UKa8BiGXYceka5wVKRC
Date: Fri, 16 Dec 2022 10:47:21 +0000
Message-ID: <0f8474d42d3c471d9ddf7c95cd0cd312@kth.se>
References: <70c3e9d18e044f48ac549fa1dac7f598@kth.se>
In-Reply-To: <70c3e9d18e044f48ac549fa1dac7f598@kth.se>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,SPF_HELO_NONE shortcircuit=no autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on smtp-relay-3.sys.kth.se
Message-ID-Hash: IS6DNAPSLMDHV7EZSXVO222MJTRYY2XH
X-Message-ID-Hash: IS6DNAPSLMDHV7EZSXVO222MJTRYY2XH
X-MailFrom: ssmos@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD SPP problem with E320 and XG link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IS6DNAPSLMDHV7EZSXVO222MJTRYY2XH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7834114727395767927=="

--===============7834114727395767927==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0f8474d42d3c471d9ddf7c95cd0cd312kthse_"

--_000_0f8474d42d3c471d9ddf7c95cd0cd312kthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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
From: Samie Mostafavi <ssmos@kth.se>
Sent: Friday, December 16, 2022 11:09:56 AM
To: usrp-users@lists.ettus.com
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

    inet 10.40.2.1/16 brd 10.40.255.255 scope global eno12399np0

       valid_lft forever preferred_lft forever


ni-e320-3238B97:~# ip -f inet addr show sfp0

15: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc pfifo_fast qlen =
1000

    inet 10.40.3.1/16 brd 10.40.255.255 scope global sfp0

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

--_000_0f8474d42d3c471d9ddf7c95cd0cd312kthse_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
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
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">s=
udo ./benchmark_rate --args &quot;mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,ma=
ster_clock_rate=3D61.44e6&quot; --duration 60 --channels &quot;0&quot; --rx=
_rate 61.44e6 --rx_subdev &quot;A:0&quot; --tx_rate 61.44e6 --tx_subdev
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
00:00:00.000069] Creating the usrp device with: mgmt_addr=3D10.10.3.1,addr=
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
00:00:04.448876213] Setting device timestamp to 0...</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">S=
etting RX spp to 1919</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">S=
etting TX spp to 492</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:04.457322205] Testing receive rate 61.440000 Msps on 1 channels</span=
></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:04.502995425] Testing transmit rate 61.440000 Msps on 1 channels</spa=
n></p>
<br>
<p></p>
<p>Best,</p>
<p>Samie</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Samie Mostafavi &lt;s=
smos@kth.se&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 11:09:56 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] UHD SPP problem with E320 and XG link</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I have an E320 device connected to the host with XG fiber connection and=
 XG&nbsp;FPGA loaded on the E320. UHD version is 4.3.0. I have set the mtu =
to 9000 on both sides. Below you can find&nbsp;the configurations.&nbsp;<sp=
an style=3D"font-family: Calibri, Helvetica, sans-serif, Helvetica, EmojiFo=
nt, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmo=
ji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; f=
ont-size: 16px;">I
 am trying to set spp to 1919 but I always get&nbsp;</span><span style=3D"f=
ont-family: Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">492.
 I read in the documents that it depends on the mtu and by default it is se=
t to the maximum value possible based on mtu. Below there is&nbsp;the resul=
t of benchmark rate as well.</span></p>
<p><br>
</p>
<p></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">h=
ost:$ sudo ethtool eno12399np0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">S=
ettings for eno12399np0:</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supported =
ports: [ FIBRE ]</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supported =
link modes:
<span class=3D"Apple-converted-space">&nbsp; </span>1000baseT/Full<span cla=
ss=3D"Apple-converted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span clas=
s=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>10000baseT/Full<span class=3D"Apple-converted-space">&nbsp;</span></=
span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supported =
pause frame use: Symmetric Receive-only</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supports a=
uto-negotiation: Yes</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supported =
FEC modes: Not reported</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Advertised=
 link modes:<span class=3D"Apple-converted-space">&nbsp;
</span>1000baseT/Full<span class=3D"Apple-converted-space">&nbsp;</span></s=
pan></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span clas=
s=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>10000baseT/Full<span class=3D"Apple-converted-space">&nbsp;</span></=
span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Advertised=
 pause frame use: Symmetric</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Advertised=
 auto-negotiation: Yes</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Advertised=
 FEC modes: Not reported</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Link partn=
er advertised link modes:<span class=3D"Apple-converted-space">&nbsp;
</span>Not reported</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Link partn=
er advertised pause frame use: Symmetric</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Link partn=
er advertised auto-negotiation: No</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Link partn=
er advertised FEC modes: Not reported</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Speed: 100=
00Mb/s</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Duplex: Fu=
ll</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Port: Dire=
ct Attach Copper</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>PHYAD: 1</=
span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Transceive=
r: internal</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Auto-negot=
iation: on</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Supports W=
ake-on: g</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Wake-on: d=
</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Current me=
ssage level: 0x00000000 (0)</span></p>
<p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo; min-height: 15px;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span clas=
s=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Appl=
e-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-convert=
ed-space">&nbsp;
 &nbsp; &nbsp; &nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>Link detec=
ted: yes</span></p>
<br>
<p></p>
<p><br>
</p>
<p></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">h=
ost:$ ip -f inet addr show eno12399np0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">2=
63: eno12399np0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq =
state UP group default qlen 1000</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>inet 10.40.2.1/16 brd 10.40.255.255 scope global eno12399np0</span><=
/p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp;
</span>valid_lft forever preferred_lft forever</span></p>
<br>
<p></p>
<p></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">n=
i-e320-3238B97:~# ip -f inet addr show sfp0<span class=3D"Apple-converted-s=
pace">&nbsp; &nbsp; &nbsp; &nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">1=
5: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc pfifo_fast =
qlen 1000</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp; &nbsp;
</span>inet 10.40.3.1/16 brd 10.40.255.255 scope global sfp0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp;
</span>valid_lft forever preferred_lft forever</span></p>
<p></p>
<p><br>
</p>
<p><span></span></p>
<p><span><br>
</span></p>
<p><span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">h=
ost:$ ./benchmark_rate --args &quot;addr=3D10.40.3.1,master_clock_rate=3D61=
.44e6&quot; --duration 60 --channels &quot;0&quot; --rx_rate 61.44e6 --rx_s=
ubdev &quot;A:0&quot; --tx_rate 61.44e6 --tx_subdev &quot;A:0&quot;</span><=
/p>
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
00:00:00.000070] Creating the usrp device with: addr=3D10.40.3.1,master_clo=
ck_rate=3D61.44e6...</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [MPMD]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">Initializing 1 device(s) in parallel with args: mgmt_addr=3D10.40.3.1=
,type=3De3xx,product=3De320,serial=3D3238B97,name=3Dni-e320-3238B97,fpga=3D=
XG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_rate=3D61.44e6</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s2" style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(57, 192, 38);">[INFO] [MPM.PeriphManager]
</span><span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatu=
res;">init() called with device args `fpga=3DXG,master_clock_rate=3D61.44e6=
,mgmt_addr=3D10.40.3.1,name=3Dni-e320-3238B97,product=3De320'.</span></p>
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
00:00:04.923395067] Setting device timestamp to 0...</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
b>Setting TX spp to 492</b></span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:04.935123785] Testing receive rate 61.440000 Msps on 1 channels</span=
></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">[=
00:00:04.977439269] Testing transmit rate 61.440000 Msps on 1 channels</spa=
n></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;">U=
UUU[00:01:04.979477903] Benchmark complete.</span></p>
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
nbsp; </span>3686373960</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num dropped samples:<span class=3D"Apple-converted-space">&nbsp; &nb=
sp; &nbsp; </span>0</span></p>
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
 </span>3686410860</span></p>
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
</span>Num sequence errors (Rx): 0</span></p>
<p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px; font-variant-=
numeric: normal; font-variant-east-asian: normal; font-stretch: normal; fon=
t-size: 13px; line-height: normal; font-family: Menlo;">
<span class=3D"s1" style=3D"font-variant-ligatures: no-common-ligatures;"><=
span class=3D"Apple-converted-space">&nbsp;
</span>Num underruns detected: <span class=3D"Apple-converted-space">&nbsp;=
 </span>4</span></p>
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
one</span></p>
<br>
</span>
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
</body>
</html>

--_000_0f8474d42d3c471d9ddf7c95cd0cd312kthse_--

--===============7834114727395767927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7834114727395767927==--
