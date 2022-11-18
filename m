Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E4862FBEB
	for <lists+usrp-users@lfdr.de>; Fri, 18 Nov 2022 18:46:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAD323843B4
	for <lists+usrp-users@lfdr.de>; Fri, 18 Nov 2022 12:46:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668793579; bh=C5ZNaYhWY4vuLGu27zwxQe4H9gXhhWGKFLLpQJlew2A=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KS7dfTok7HfDwjVxOJkSlD9qqr0Xy2Ta7CR0p/KL25XAYGWpFxCyvwtY9O6+cddqL
	 FudDrQeyqL4PwWLViJFxhYBQpY9DPfevqaVxCo9Co0PYN33j5QjODGlfJswcyWLuRs
	 7Ndh06HTcilf8q0fdj4LWcRQkwE7blSwcQr+5+vWh5dEI08T9HD20DWUi3scwmtUtM
	 4Ir6UEhu4qvcLYCnWvK50NaQ1lG4O5P6gzrhE11sKUxdfrhnp+4NxmP/M6BuzZCgnt
	 1lF4dEkxNlGkh/r2ACUn8ThC0pjVL4UedXTtWa0V08BsyCMUiRDnIVyAiC3G8fKK/f
	 xZ0y/44fCfIAw==
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2083.outbound.protection.outlook.com [40.92.99.83])
	by mm2.emwd.com (Postfix) with ESMTPS id DF640384251
	for <usrp-users@lists.ettus.com>; Fri, 18 Nov 2022 12:45:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="spVZWFDo";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCEl7sTo4tZCO54jwPoGetPH4wydwPw556rqe4ZZc8WIjXOt3kOzwP//lGYT6CuC4USIMvVQ4FRHjshKmvLLEhMS/FGKbpB573YaOpG6DwgXeWlFjZX91Kpwv3hmn8aGM1MIpecxPFpHWKrpwjvrTDOr/RqgZN7VYv0JKFvAi6nw5D8U3TJ2V4HLkXH22zM4UUkPKEMujDiqduau6kARawtk9MWf/5QV01wuCFY2R+QiAer1CRf6kOWsAMaAbLHeMKsa8/AOloFLtJvCSwLh+XkRnJA/LxsF1qb0BIKVSmtbMUmsZ9ex7Vas89+qkfZw2F7fetvHAKtH2Tf1WyJv7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7imbbBI0Jr7qT6sIXrseNNaaDYPTfUw+0nfk7YjY2k=;
 b=DND1Z4c5S8m0CZTr4jnyNm9Sp6+dhNlWLnkecWEBbQWu30PrdULHRt2RrH9B8urb8iCN+TV65I/irq31GUmKyWVWhD6MNAagrzFwMvCcl5dnk8tZ6Q1tAVsK4uCjFstfeikM8xhf/09SAnMPf3FDSxdr4eplksMD42is2pmFVYnRuBrJhlb0JvbGfDNQ73Qo3NwGRMbl24M6oO+oaW2tBbzEjZt/pUidj0bAsS4Zxd0YtdHvesK8Kx86+fteNXUup+ExkMQVO9T/lH46a43w8z9s5yFNbL+X7D39Jm8X3LLpBRhXN/2YFspHPORXtLycgRHFNDVitsftfyN7nJixMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7imbbBI0Jr7qT6sIXrseNNaaDYPTfUw+0nfk7YjY2k=;
 b=spVZWFDoozOtrp3ViCXH13WnwwikZxBUVdOk9ETWw/AnM++gRYGnwUH5uEzNq77lc3lZigkaHR4yCfjbtTCTjyqQfpfpYaxYfWgJXNthUb3m0Ud2Bdr9aT+dwSpSqTpwG+0h+jqtGn57imiYl+XUXudXtfND202ohhX9ll+Rpr1+kKNrYOAuKU/gPP2fIOfKrDbU4OXC9NBtMke9rTjSyCF35n7sy8dWkwl35AYIiQkW8x/koYJaBDRlPY/3A16y1hXTzqNBEQnoOmk7QrBuCNnpdvrC9EHjv3evjhjz75ma+YIyWn9cUkp9LwuQy5H567ZsOpXHX9YNragLvsScuQ==
Received: from OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:d0::5) by
 OSZP286MB2272.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:18f::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.19; Fri, 18 Nov 2022 17:45:23 +0000
Received: from OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2b2f:76bd:4e26:83a2]) by OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2b2f:76bd:4e26:83a2%4]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 17:45:23 +0000
From: Trung Le Nguyen Anh <anhtrung87vn@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N300 test with 10G port
Thread-Index: AQHY+3CGQN1AXZ+tTkuCPgHv12PT3w==
Date: Fri, 18 Nov 2022 17:45:23 +0000
Message-ID: 
 <OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099@OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [3rPfhgkWG4Csj57cMozGnMu6oMli0/yxEvtecMqqzEQ=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS3P286MB0599:EE_|OSZP286MB2272:EE_
x-ms-office365-filtering-correlation-id: a6aea26f-03da-40a5-a1f2-08dac98cab86
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TvxpR9F1R1z8gymkyYR6tnmraBUmU6UGwBN2Fi1RzvqKlFk44vl+gG0od7XsPZM5LlTRpWFQVGcLxNszUjqbiTZHqSrK54GYRYg3tenWstl2i+WBcTgCg442rzJ/S5wuuYWM0J2MBLEPwcjRnOa711Xrr+JSSd3Ukm6MIkcdxzSvElIubuHG4i+cA0/0C+dZHcBH9kr0RP+gAZdVm0NtBhj26NFLhwzBdaUehVG9DJTs9W7z2Sk5GaDpylXBoq2m7u71doobWQNYs/EO6EoFoIKMkZr7jJecRSfOnGN/4t4MPt0EgmTl/dH9agaI8eQ2ww6J41G6t4Qz6dT4m3d7vDkmPx+BIGK7jYr+k6w/Dde79OVrZY1WeuDuRVUZIFnufujVbS4z1kNbvd/apwkhA2vQjJ9CTyupYJmxPJHTimPwumNC4JEYgz58YccLDFSCsjTZdc47LHp+9BB5aWoGLwdIjNzLTH/NxtsdzYiCYURCQTF9M01nslUyhzFWaTw/zTVlVy5B8HNXqTske09QGOxZEVXx0b23jPuzpUcc4ya7Me7xarI9Nmda7LM5rbgkkpcVvr75OhPMqHrFQMEYZi5cyr+o2LM3C5P2DLGgB3w=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?2FdEydoiZditnhl+BHZpMMjlQR33ygQ2wEdobTNKDvYn/xANA6AiGDoBHk?=
 =?iso-8859-1?Q?dafv4SVPQxpzsOARf6rgto9ugiiiO+UyOSUgx7ILWHD2JJZdWVIf2lzzYL?=
 =?iso-8859-1?Q?PY50dR7YQlX9m9G3CIUOfWU5sXwA4D81VlFCOkdHzil0bu5JyqeZ5zg0bQ?=
 =?iso-8859-1?Q?Z9Qh4AYQnkvxvcHZQjqqSJDd3FmPT7DcAgtjQAFRjHssPjfGQHMIOfVtT7?=
 =?iso-8859-1?Q?0cAtJh107Zt1zcB8IcFnDKv1zPz1D/dKxCfYCcc6XZ6OHeIrc9I6mSgcS8?=
 =?iso-8859-1?Q?Ph1oeUJSVDizY56u1CsCI3UbXFX1u/QKD7JBVoQXo9EUhrHHDjcp22tB/E?=
 =?iso-8859-1?Q?AdRUF3qR16Q8zIgB8b6gqorta8cxvuAEsLbm+kzQ+43VGB+joiUwwZFXLy?=
 =?iso-8859-1?Q?vkDi1n+ohy2ox/SGu3tnjx25DVzxug0+yeUih4WorueO9HF7TKzGFfDkZe?=
 =?iso-8859-1?Q?UnlXoyHXDCXHQIjndaTJihsWKiEyCDHPCm4HtpBh8ugHo443ilY20ovFk6?=
 =?iso-8859-1?Q?XY1AQ8SdbGMLlnw19wJe4s5njwzqBRYA7lIZrtBJxGkFe7lS/npzZfDT6g?=
 =?iso-8859-1?Q?V3ofkNFVqhqWIzoBz82lcSi8s86pHXEj034SW5fBmjCTidXhVwV2UhG+HY?=
 =?iso-8859-1?Q?adYcn8Ry2pGt/oFO3fqtC9ywIT5OLI7UvL1CQLnA6TzwRjwMKShEXn3iKa?=
 =?iso-8859-1?Q?fArfkB9/83ctgPy8uQohrRTBXkw2hL6KdvTMMJ76KL1MEr5SpCI6OhoRkA?=
 =?iso-8859-1?Q?ea4hDZRAKpDFAwZMrTyo/Fy7AZr5/lP0RuE8hf700Om82olsBfjyiq2PUr?=
 =?iso-8859-1?Q?o9yTZer2MTHdKgPOGanypwSoMI/9LjCjQu9mBiXLIYRd6U2RaFMeqU15QD?=
 =?iso-8859-1?Q?mwJwQhtuUblb/diTj5pcsRulaex1r0YN9hx1G4r2/icm0NhsGTRwsXR59r?=
 =?iso-8859-1?Q?zC5CKJz1CpTgDZx/8EuTwxpl/Tuib8fKyHGlDp3QyJARWunIT//BhPMIah?=
 =?iso-8859-1?Q?1yRiQ9bma5lSZIGpfdaDkkY809PDUsyXdVyP6sW63h3HpfZG334QzQsKJ1?=
 =?iso-8859-1?Q?HjNHWbxldxU3xOXjKNcwbmtj1JXHH4A7xbsVLDk2LuwSO6Vc+k7+6ZL+oh?=
 =?iso-8859-1?Q?BXnV7UbrbnoV8Uxwtuwu4K5HxgTJY4a1cwWsCcM2vLE1YH0M6EVyzwQnGI?=
 =?iso-8859-1?Q?m4HQgZztpwDGd54rrEtorV9ImIqghxY/8eDStzGAZOTaOm42epYteg8GJO?=
 =?iso-8859-1?Q?R6F/UhLKGYJqz4pAEFG2lcehNUaGG2vm3067UhLXQdEi6/syLkD3BO0PyF?=
 =?iso-8859-1?Q?8w22c8S7MbVm2s86IDvH98Du0Q=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-05f45.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a6aea26f-03da-40a5-a1f2-08dac98cab86
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 17:45:23.6053
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2272
Message-ID-Hash: U6PTNQYWE23VYRO5A6K24NSHARQZSEDC
X-Message-ID-Hash: U6PTNQYWE23VYRO5A6K24NSHARQZSEDC
X-MailFrom: anhtrung87vn@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N300 test with 10G port
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q7WOJNRLOXKU4QLHEZZKLZ2TAM7FOQPL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0366108359543534775=="

--===============0366108359543534775==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099OS3P286MB0599JPNP_"

--_000_OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099OS3P286MB0599JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently, I connect my PC to N300 via X520 DA1 card with a SFP+ fiber adap=
ter. Both ends shows speed 10000Mbps.
But when I use Iperf3 to check, the bandwidth is just 173Mb/s.

On PC:
sudo ethtool enp3s0
[sudo] password for tma:
Settings for enp3s0:
        Supported ports: [ FIBRE ]
        Supported link modes:   10000baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: No
        Supported FEC modes: Not reported
        Advertised link modes:  10000baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: FIBRE
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        Supports Wake-on: umbg
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes

On N300:
root@ni-n3xx-325A9D8:~# ethtool sfp1
Settings for sfp1:
        Supported ports: [ ]
        Supported link modes:   10000baseER/Full
        Supported pause frame use: Symmetric Receive-only
        Supports auto-negotiation: No
        Supported FEC modes: Not reported
        Advertised link modes:  10000baseER/Full
        Advertised pause frame use: Symmetric Receive-only
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: MII
        PHYAD: 4
        Transceiver: internal
        Auto-negotiation: off
        Link detected: yes

I tested with benchmark with command below. I don't know if this result is =
good to run with gNB?

/usr/local/lib/uhd/examples/benchmark_rate     --args "type=3Dn3xx,mgmt_add=
r=3D192.168.30.3,addr=3D192.168.20.2,master_clock_rate=3D125e6"    --durati=
on 60    --channels "0"    --rx_rate 122.07e6    --rx_subdev "A:0"    --tx_=
rate 122.07e6    --tx_subdev "A:0"

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-0-g=
46a70d85
[00:00:00.000140] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D19=
2.168.30.3,addr=3D192.168.20.2,master_clock_rate=3D125e6...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.30.3,type=3Dn3xx,product=3Dn300,serial=3D325A9D8,name=3Dni-n3xx-325A=
9D8,fpga=3DHG,claimed=3DFalse,addr=3D192.168.20.2,master_clock_rate=3D125e6
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,master=
_clock_rate=3D125e6,mgmt_addr=3D192.168.30.3,name=3Dni-n3xx-325A9D8,product=
=3Dn300,clock_source=3Dinternal,time_source=3Dinternal'.
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n300
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:02.680810005] Setting device timestamp to 0...
[WARNING] [MULTI_USRP] Could not set RX rate to 122.070 MHz. Actual rate is=
 125.000 MHz
[WARNING] [MULTI_USRP] Could not set TX rate to 122.070 MHz. Actual rate is=
 125.000 MHz
[00:00:02.683219534] Testing receive rate 125.000000 Msps on 1 channels
Setting TX spp to 2000
[00:00:02.684711859] Testing transmit rate 125.000000 Msps on 1 channels
UU[00:01:02.686170124] Benchmark complete.


Benchmark rate summary:
  Num received samples:     7499635293
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  7499530000
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   2
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

Thanks,
Trung.

--_000_OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099OS3P286MB0599JPNP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Currently, I connect my PC to N300 via X520 DA1 card with a SFP+ fiber adap=
ter. Both ends shows speed 10000Mbps.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
But when I use Iperf3 to check, the bandwidth is just 173Mb/s.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
On PC:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof ContentPasted0">
sudo ethtool enp3s0
<div class=3D"ContentPasted0">[sudo] password for tma:</div>
<div class=3D"ContentPasted0">Settings for enp3s0:</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supported ports: =
[ FIBRE ]</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supported link mo=
des: &nbsp; 10000baseT/Full</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supported pause f=
rame use: Symmetric</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supports auto-neg=
otiation: No</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supported FEC mod=
es: Not reported</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Advertised link m=
odes: &nbsp;10000baseT/Full</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Advertised pause =
frame use: Symmetric</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Advertised auto-n=
egotiation: No</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Advertised FEC mo=
des: Not reported</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Speed: 10000Mb/s<=
/div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Duplex: Full</div=
>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Port: FIBRE</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; PHYAD: 0</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Transceiver: inte=
rnal</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Auto-negotiation:=
 off</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Supports Wake-on:=
 umbg</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Wake-on: g</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; Current message l=
evel: 0x00000007 (7)</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;drv probe=
 link</div>
&nbsp; &nbsp; &nbsp; &nbsp; Link detected: yes<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof ContentPasted0">
On N300:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof ContentPasted0 ContentPasted1">
root@ni-n3xx-325A9D8:~# ethtool sfp1
<div class=3D"ContentPasted1">Settings for sfp1:</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Supported ports: =
[ ]</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Supported link mo=
des: &nbsp; 10000baseER/Full</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Supported pause f=
rame use: Symmetric Receive-only</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Supports auto-neg=
otiation: No</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Supported FEC mod=
es: Not reported</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Advertised link m=
odes: &nbsp;10000baseER/Full</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Advertised pause =
frame use: Symmetric Receive-only</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Advertised auto-n=
egotiation: No</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Advertised FEC mo=
des: Not reported</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Speed: 10000Mb/s<=
/div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Duplex: Full</div=
>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Port: MII</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; PHYAD: 4</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Transceiver: inte=
rnal</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; &nbsp; &nbsp; Auto-negotiation:=
 off</div>
&nbsp; &nbsp; &nbsp; &nbsp; Link detected: yes<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
I tested with benchmark with command below. I don't know if this result is =
good to run with gNB?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof ContentPasted2">
/usr/local/lib/uhd/examples/benchmark_rate &nbsp; &nbsp; --args &quot;type=
=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_rate=3D12=
5e6&quot; &nbsp; &nbsp;--duration 60 &nbsp; &nbsp;--channels &quot;0&quot; =
&nbsp; &nbsp;--rx_rate 122.07e6 &nbsp; &nbsp;--rx_subdev &quot;A:0&quot; &n=
bsp; &nbsp;--tx_rate 122.07e6 &nbsp; &nbsp;--tx_subdev &quot;A:0&quot;
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 7.5.0; Bo=
ost_106501; UHD_4.2.0.HEAD-0-g46a70d85</div>
<div class=3D"ContentPasted2">[00:00:00.000140] Creating the usrp device wi=
th: type=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_r=
ate=3D125e6...</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.30.3,type=3Dn3xx,product=3Dn300,serial=
=3D325A9D8,name=3Dni-n3xx-325A9D8,fpga=3DHG,claimed=3DFalse,addr=3D192.168.=
20.2,master_clock_rate=3D125e6</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DHG,master_clock_rate=3D125e6,mgmt_addr=3D192.168.30.3,=
name=3Dni-n3xx-325A9D8,product=3Dn300,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div class=3D"ContentPasted2">Using Device: Single USRP:</div>
<div class=3D"ContentPasted2">&nbsp; Device: N300-Series Device</div>
<div class=3D"ContentPasted2">&nbsp; Mboard 0: n300</div>
<div class=3D"ContentPasted2">&nbsp; RX Channel: 0</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; RX DSP: 0</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; RX Dboard: A</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div class=3D"ContentPasted2">&nbsp; TX Channel: 0</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; TX DSP: 0</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; TX Dboard: A</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">[00:00:02.680810005] Setting device timestamp=
 to 0...</div>
<div class=3D"ContentPasted2">[WARNING] [MULTI_USRP] Could not set RX rate =
to 122.070 MHz. Actual rate is 125.000 MHz</div>
<div class=3D"ContentPasted2">[WARNING] [MULTI_USRP] Could not set TX rate =
to 122.070 MHz. Actual rate is 125.000 MHz</div>
<div class=3D"ContentPasted2">[00:00:02.683219534] Testing receive rate 125=
.000000 Msps on 1 channels</div>
<div class=3D"ContentPasted2">Setting TX spp to 2000</div>
<div class=3D"ContentPasted2">[00:00:02.684711859] Testing transmit rate 12=
5.000000 Msps on 1 channels</div>
<div class=3D"ContentPasted2">UU[00:01:02.686170124] Benchmark complete.</d=
iv>
<div><br class=3D"ContentPasted2">
</div>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">Benchmark rate summary:</div>
<div class=3D"ContentPasted2">&nbsp; Num received samples: &nbsp; &nbsp; 74=
99635293</div>
<div class=3D"ContentPasted2">&nbsp; Num dropped samples: &nbsp; &nbsp; &nb=
sp;0</div>
<div class=3D"ContentPasted2">&nbsp; Num overruns detected: &nbsp; &nbsp;0<=
/div>
<div class=3D"ContentPasted2">&nbsp; Num transmitted samples: &nbsp;7499530=
000</div>
<div class=3D"ContentPasted2">&nbsp; Num sequence errors (Tx): 0</div>
<div class=3D"ContentPasted2">&nbsp; Num sequence errors (Rx): 0</div>
<div class=3D"ContentPasted2">&nbsp; Num underruns detected: &nbsp; 2</div>
<div class=3D"ContentPasted2">&nbsp; Num late commands: &nbsp; &nbsp; &nbsp=
; &nbsp;0</div>
<div class=3D"ContentPasted2">&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp=
; &nbsp;0</div>
<div class=3D"ContentPasted2">&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp=
; &nbsp;0</div>
<div><br class=3D"ContentPasted2">
</div>
<div><br class=3D"ContentPasted2">
</div>
Done!<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Trung.</div>
</body>
</html>

--_000_OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099OS3P286MB0599JPNP_--

--===============0366108359543534775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0366108359543534775==--
