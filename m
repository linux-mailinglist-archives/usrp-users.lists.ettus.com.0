Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE3962FDEF
	for <lists+usrp-users@lfdr.de>; Fri, 18 Nov 2022 20:24:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38EBB3843B1
	for <lists+usrp-users@lfdr.de>; Fri, 18 Nov 2022 14:24:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668799468; bh=KfdoKJcZZ2lNva2gzekMgK6Ng4qECN9TtOW8MbuieDY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZCvHcDB4XZfd//q04SgXnHEG9i6P6mvw2cEKfjSgjtZoplvktSafsgrI6kT/TKn4m
	 k+LUIDaI1ww8QtrGcsibXaeU5JpaaSx2GeB4gEWpm0Z6ni3kFh4rKDsD/88ful0aes
	 L5MMg3TKITDBIAVBKP73ZQPxW2VYExiEvtBx5BQMwdktt8vMkkMuOyIsqGs0iNmkl7
	 WGZ3iUzP4/6sI7EgjUUz0ZOz42Yf8+grxXfx+FpjhCFGRzk6QBXV2u7Xrdf/9eJ0A1
	 7cZu5X5MSva1PFor4t1TKO4Rnrzkx2uY1GH6X6JozFlZ8ioBubvqqz1evOeCiKkW18
	 pwu+NPX6NawKQ==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AE663842A6
	for <usrp-users@lists.ettus.com>; Fri, 18 Nov 2022 14:23:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AVR+ufbl";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id s4so3775429qtx.6
        for <usrp-users@lists.ettus.com>; Fri, 18 Nov 2022 11:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kc2O6kPdw6kIKCZNFs51x9OMTOhp9njUarcxyBm8dSM=;
        b=AVR+ufblMljhyxEgyETzWoWIVzQSb8eXOKR7y0YpyRleCDK3fwTODhveBROLm/kEJA
         b/SKl4bBaQrlQOUg3t1Ct7q5g+R17ANGi98pgyHd4xzpa7lDhFd7IMpakMAECVLzROO3
         c58z9P9KorneQvWA3xeQGH/46qR5OgTYzjCbvQlzpJlIY5cw1PRJra6cQHHeMDmENg6Y
         EhG3K0lzwq5/CZFRRwzstzNAg2A8EhK+MG7h6kLM7YSWpTif6NVqGbXwjxFPZS+k8hp1
         myaDb1TcftLY/s0f0MqZlCyRbct0aF6zLpEU4h6BauhV6zqFJQyQxdRv+4zM/Y59j5eI
         LmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kc2O6kPdw6kIKCZNFs51x9OMTOhp9njUarcxyBm8dSM=;
        b=1yam+tCEQETPQiI6XO4tPMDspKNDcfzA6GS8QP2Gv+k9UbkohT7Sk2Lh45enRue2k+
         YKGF8eKLBDDs6lTA9Y3iUhwgcsKvyZQKBRekwY34dIYQHl2xp4sWwniOqbgh9KUb4PSG
         hvNCwFmAfqkyKBtj6tFnkbzKwuvi7D5a+CFYGP6Zc6kanp8247BxaDEaM8ysFAmTNI/x
         5MAr721oINJ/kAv3QGOkeRBDOyT2sKxnti61gT/QF867C7Qa6cdi7uhFYgqBpPMdgs6W
         dT7WV2IDd6RnhH2jGNOkH9GNPy8kxaXJw9UJ5w9CdEIktJ7veSijnEFS7if2scQ4FPyz
         Vsew==
X-Gm-Message-State: ANoB5plt3IpkGQ32mDmyu7uOlUB6YIglv0qlKYSHiD7KDUO9nfOmQfLg
	P5nDoxRON76zvZYjEnsj3B+NwU4UF0A=
X-Google-Smtp-Source: AA0mqf4dyhDIXf8Y3LcLInOidSdXEZJrzus30XHhKs8zEKlqqvjAW1Hh+chZO7ciNRuKVpj55ji18w==
X-Received: by 2002:a05:622a:5c09:b0:3a6:2155:bac3 with SMTP id gd9-20020a05622a5c0900b003a62155bac3mr6296402qtb.356.1668799382844;
        Fri, 18 Nov 2022 11:23:02 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id j1-20020ac86641000000b00397b1c60780sm2448883qtp.61.2022.11.18.11.23.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 11:23:02 -0800 (PST)
Message-ID: <b4a8a0b0-40d3-e766-c587-fdcc0a34d9c4@gmail.com>
Date: Fri, 18 Nov 2022 14:23:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099@OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099@OS3P286MB0599.JPNP286.PROD.OUTLOOK.COM>
Message-ID-Hash: 33HXOYDH454HSPAWUXQJJDBTIQZVE7TR
X-Message-ID-Hash: 33HXOYDH454HSPAWUXQJJDBTIQZVE7TR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N300 test with 10G port
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/33HXOYDH454HSPAWUXQJJDBTIQZVE7TR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2342368144763464863=="

This is a multi-part message in MIME format.
--===============2342368144763464863==
Content-Type: multipart/alternative;
 boundary="------------Q07gUatbeyQVJDP4BZ0LN8TX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Q07gUatbeyQVJDP4BZ0LN8TX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/11/2022 12:45, Trung Le Nguyen Anh wrote:
> Hi,
>
> Currently, I connect my PC to N300 via X520 DA1 card with a SFP+ fiber=20
> adapter. Both ends shows speed 10000Mbps.
> But when I use Iperf3 to check, the bandwidth is just 173Mb/s.
>
> On PC:
> sudo ethtool enp3s0
> [sudo] password for tma:
> Settings for enp3s0:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported ports: [ FIBRE ]
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported link modes: 10000baseT/Full
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported pause frame use: Symmetric
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports auto-negotiation: No
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported FEC modes: Not reported
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised link modes: =C2=A010000baseT/Ful=
l
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised pause frame use: Symmetric
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised auto-negotiation: No
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised FEC modes: Not reported
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: 10000Mb/s
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex: Full
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Port: FIBRE
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: 0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Transceiver: internal
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-negotiation: off
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports Wake-on: umbg
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Wake-on: g
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Current message level: 0x00000007 (7)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drv probe link
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes
>
> On N300:
> root@ni-n3xx-325A9D8:~# ethtool sfp1
> Settings for sfp1:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported ports: [ ]
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported link modes: 10000baseER/Full
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported pause frame use: Symmetric Receiv=
e-only
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supports auto-negotiation: No
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Supported FEC modes: Not reported
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised link modes: =C2=A010000baseER/Fu=
ll
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised pause frame use: Symmetric Recei=
ve-only
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised auto-negotiation: No
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Advertised FEC modes: Not reported
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: 10000Mb/s
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex: Full
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Port: MII
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: 4
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Transceiver: internal
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-negotiation: off
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes
>
> I tested with benchmark with command below. I don't know if this=20
> result is good to run with gNB?
>
> /usr/local/lib/uhd/examples/benchmark_rate =C2=A0 =C2=A0 --args=20
> "type=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_=
rate=3D125e6"=20
> =C2=A0 =C2=A0--duration 60 =C2=A0 =C2=A0--channels "0" =C2=A0 =C2=A0--r=
x_rate 122.07e6 =C2=A0--rx_subdev=20
> "A:0" =C2=A0 =C2=A0--tx_rate 122.07e6 =C2=A0 =C2=A0--tx_subdev "A:0"
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.2.0.HEAD-0-g46a70d85
> [00:00:00.000140] Creating the usrp device with:=20
> type=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_r=
ate=3D125e6...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.30.3,type=3Dn3xx,product=3Dn300,serial=3D325A9D8,na=
me=3Dni-n3xx-325A9D8,fpga=3DHG,claimed=3DFalse,addr=3D192.168.20.2,master=
_clock_rate=3D125e6
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DHG,master_clock_rate=3D125e6,mgmt_addr=3D192.168.30.3,name=3Dni=
-n3xx-325A9D8,product=3Dn300,clock_source=3Dinternal,time_source=3Dintern=
al'.
> Using Device: Single USRP:
> =C2=A0 Device: N300-Series Device
> =C2=A0 Mboard 0: n300
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: Magnesium
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: Magnesium
>
> [00:00:02.680810005] Setting device timestamp to 0...
> [WARNING] [MULTI_USRP] Could not set RX rate to 122.070 MHz. Actual=20
> rate is 125.000 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 122.070 MHz. Actual=20
> rate is 125.000 MHz
> [00:00:02.683219534] Testing receive rate 125.000000 Msps on 1 channels
> Setting TX spp to 2000
> [00:00:02.684711859] Testing transmit rate 125.000000 Msps on 1 channel=
s
> UU[00:01:02.686170124] Benchmark complete.
>
>
> Benchmark rate summary:
> =C2=A0 Num received samples: 7499635293
> =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num overruns detected: =C2=A0 =C2=A00
> =C2=A0 Num transmitted samples: =C2=A07499530000
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected: =C2=A0 2
> =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
>
> Done!
>
> Thanks,
> Trung.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
My guess is that iPerf uses ICMP packets that are terminated on the CPU=20
of the N300, and not in the (fast) FPGA fabric.

Your benchmark_rate test indicates it can support 125Msps to your host=20
computer--that's the critical test.


--------------Q07gUatbeyQVJDP4BZ0LN8TX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/11/2022 12:45, Trung Le Nguyen
      Anh wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OS3P286MB0599EA3AADA0C0BFCAEE7A0BC5099@OS3P286MB0599.JPNP286.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hi,</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Currently, I connect my PC to N300 via X520 DA1 card with a SFP+
        fiber adapter. Both ends shows speed 10000Mbps.</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        But when I use Iperf3 to check, the bandwidth is just 173Mb/s.</d=
iv>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        On PC:</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        sudo ethtool enp3s0
        <div class=3D"ContentPasted0">[sudo] password for tma:</div>
        <div class=3D"ContentPasted0">Settings for enp3s0:</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed ports: [ FIBRE ]</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed link modes: =C2=A0
          10000baseT/Full</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed pause frame use:
          Symmetric</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
s auto-negotiation:
          No</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed FEC modes: Not
          reported</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed link modes:
          =C2=A010000baseT/Full</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed pause frame use:
          Symmetric</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed auto-negotiation:
          No</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed FEC modes: Not
          reported</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: =
10000Mb/s</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex:=
 Full</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Port: F=
IBRE</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: =
0</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transce=
iver: internal</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-ne=
gotiation: off</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
s Wake-on: umbg</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Wake-on=
: g</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Current=
 message level:
          0x00000007 (7)</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0drv
          probe link</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes<br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        On N300:</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        root@ni-n3xx-325A9D8:~# ethtool sfp1
        <div class=3D"ContentPasted1">Settings for sfp1:</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed ports: [ ]</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed link modes: =C2=A0
          10000baseER/Full</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed pause frame use:
          Symmetric Receive-only</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
s auto-negotiation:
          No</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support=
ed FEC modes: Not
          reported</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed link modes:
          =C2=A010000baseER/Full</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed pause frame use:
          Symmetric Receive-only</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed auto-negotiation:
          No</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Adverti=
sed FEC modes: Not
          reported</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Speed: =
10000Mb/s</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Duplex:=
 Full</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Port: M=
II</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYAD: =
4</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transce=
iver: internal</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Auto-ne=
gotiation: off</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 Link detected: yes<br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I tested with benchmark with command below. I don't know if this
        result is good to run with gNB?</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted2">
        /usr/local/lib/uhd/examples/benchmark_rate =C2=A0 =C2=A0 --args
"type=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_ra=
te=3D125e6"
        =C2=A0 =C2=A0--duration 60 =C2=A0 =C2=A0--channels "0" =C2=A0 =C2=
=A0--rx_rate 122.07e6 =C2=A0
        =C2=A0--rx_subdev "A:0" =C2=A0 =C2=A0--tx_rate 122.07e6 =C2=A0 =C2=
=A0--tx_subdev "A:0"
        <div><br class=3D"ContentPasted2">
        </div>
        <div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version
          7.5.0; Boost_106501; UHD_4.2.0.HEAD-0-g46a70d85</div>
        <div class=3D"ContentPasted2">[00:00:00.000140] Creating the usrp
          device with:
type=3Dn3xx,mgmt_addr=3D192.168.30.3,addr=3D192.168.20.2,master_clock_rat=
e=3D125e6...</div>
        <div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1
          device(s) in parallel with args:
mgmt_addr=3D192.168.30.3,type=3Dn3xx,product=3Dn300,serial=3D325A9D8,name=
=3Dni-n3xx-325A9D8,fpga=3DHG,claimed=3DFalse,addr=3D192.168.20.2,master_c=
lock_rate=3D125e6</div>
        <div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init()
          called with device args
`fpga=3DHG,master_clock_rate=3D125e6,mgmt_addr=3D192.168.30.3,name=3Dni-n=
3xx-325A9D8,product=3Dn300,clock_source=3Dinternal,time_source=3Dinternal=
'.</div>
        <div class=3D"ContentPasted2">Using Device: Single USRP:</div>
        <div class=3D"ContentPasted2">=C2=A0 Device: N300-Series Device</=
div>
        <div class=3D"ContentPasted2">=C2=A0 Mboard 0: n300</div>
        <div class=3D"ContentPasted2">=C2=A0 RX Channel: 0</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 RX DSP: 0</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 RX Dboard: A</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 RX Subdev: Magnesium<=
/div>
        <div class=3D"ContentPasted2">=C2=A0 TX Channel: 0</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 TX DSP: 0</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 TX Dboard: A</div>
        <div class=3D"ContentPasted2">=C2=A0 =C2=A0 TX Subdev: Magnesium<=
/div>
        <div><br class=3D"ContentPasted2">
        </div>
        <div class=3D"ContentPasted2">[00:00:02.680810005] Setting device
          timestamp to 0...</div>
        <div class=3D"ContentPasted2">[WARNING] [MULTI_USRP] Could not se=
t
          RX rate to 122.070 MHz. Actual rate is 125.000 MHz</div>
        <div class=3D"ContentPasted2">[WARNING] [MULTI_USRP] Could not se=
t
          TX rate to 122.070 MHz. Actual rate is 125.000 MHz</div>
        <div class=3D"ContentPasted2">[00:00:02.683219534] Testing receiv=
e
          rate 125.000000 Msps on 1 channels</div>
        <div class=3D"ContentPasted2">Setting TX spp to 2000</div>
        <div class=3D"ContentPasted2">[00:00:02.684711859] Testing
          transmit rate 125.000000 Msps on 1 channels</div>
        <div class=3D"ContentPasted2">UU[00:01:02.686170124] Benchmark
          complete.</div>
        <div><br class=3D"ContentPasted2">
        </div>
        <div><br class=3D"ContentPasted2">
        </div>
        <div class=3D"ContentPasted2">Benchmark rate summary:</div>
        <div class=3D"ContentPasted2">=C2=A0 Num received samples: =C2=A0=
 =C2=A0
          7499635293</div>
        <div class=3D"ContentPasted2">=C2=A0 Num dropped samples: =C2=A0 =
=C2=A0 =C2=A00</div>
        <div class=3D"ContentPasted2">=C2=A0 Num overruns detected: =C2=A0=
 =C2=A00</div>
        <div class=3D"ContentPasted2">=C2=A0 Num transmitted samples:
          =C2=A07499530000</div>
        <div class=3D"ContentPasted2">=C2=A0 Num sequence errors (Tx): 0<=
/div>
        <div class=3D"ContentPasted2">=C2=A0 Num sequence errors (Rx): 0<=
/div>
        <div class=3D"ContentPasted2">=C2=A0 Num underruns detected: =C2=A0=
 2</div>
        <div class=3D"ContentPasted2">=C2=A0 Num late commands: =C2=A0 =C2=
=A0 =C2=A0 =C2=A00</div>
        <div class=3D"ContentPasted2">=C2=A0 Num timeouts (Tx): =C2=A0 =C2=
=A0 =C2=A0 =C2=A00</div>
        <div class=3D"ContentPasted2">=C2=A0 Num timeouts (Rx): =C2=A0 =C2=
=A0 =C2=A0 =C2=A00</div>
        <div><br class=3D"ContentPasted2">
        </div>
        <div><br class=3D"ContentPasted2">
        </div>
        Done!<br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Trung.</div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    My guess is that iPerf uses ICMP packets that are terminated on the
    CPU of the N300, and not in the (fast) FPGA fabric.<br>
    <br>
    Your benchmark_rate test indicates it can support 125Msps to your
    host computer--that's the critical test.<br>
    <br>
    <br>
  </body>
</html>

--------------Q07gUatbeyQVJDP4BZ0LN8TX--

--===============2342368144763464863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2342368144763464863==--
