Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B1164EBE8
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 14:09:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB2493844C0
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 08:09:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671196187; bh=0xu5gRfpjcl5A6Iz6FTljb77n2IRORKMUMli7kCF8AM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=g8485OeA73M4KRzU5EeoR9lIRX1yN0evi/J3mcsf23oYChs+oSTTqhmHGQ1AURHnS
	 K8lBO+iZOINe9Q7R7LQj+Jj0mCPpFFH+qSKqhWp0jQnqn8sqYz3qwKMexmD8pOhW+k
	 p8ReTMELSgaksagagrgAY1e8rHkA9jCVBHW6xSt9bMxyS1OrHej2dYmOjV1CMdWCM3
	 2+QwbwJrJR3f28wIcaWEzyUNZayP4Yj8o5dVtCUc6RoG++DxrSRGAxpntdh34gEzzP
	 /Ky5KFNRn67odeKu5MZGjaMMFoCDztYYCZGtLE/nsGBcWTHx+pOzIte8w0yw0EZ8kv
	 1KjlPJgapx0BQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E06D38447F
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 08:09:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ZX43Yw6H";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id z92so3584553ede.1
        for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 05:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CIEO1GJnCSj2SCo7ey5pz3aUwilc8vbiEQvUejMvsRA=;
        b=ZX43Yw6Hg0RXjPgAdXxkgU/Lazi8t+738l0LMKYGMtts/SUEP9QKRMcWFZMT4v/ZY5
         C92IfvnU+lDdwSIOo2/XgMXbQRErWjG5xRCzxIv6rfer01FaSzbWHNSdlUZs1Dst2lqQ
         SxXPMsyjupiFW5Wy1HvitlHxPCOR7PeuGmrBQ6C3yepxVLf2k1t1a7T5LXJmhs69VA5Q
         eKS7QldEIcVykrfoJ6D1uPiZMJozu07lB6YJb249lRpywckEVgw5QvctI08Yh76cgV0O
         6q1twA2I4Hw3fh0uOrmHZlTdBfxnu7t7M8JORvClo/1FH7y/yafPRYydgdTp4cV2SMIz
         xcug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CIEO1GJnCSj2SCo7ey5pz3aUwilc8vbiEQvUejMvsRA=;
        b=LHZZ1ZfORbWBVWCjy3HapLCDyBzfmDcngQH918gXsuoUdfg9ioU6Q7Oie9CpnhsPJt
         hL/jRJeLdwBN5vahJnA07ph5B3LLrRdsFTibcWLQXH4ZIpTTKtSu9xqjovo696Kysu2w
         JyHv8Tu6UWvybtjKvoco2csfAXx4jLl1mButUR/POMxvGVOkHFj4UyqfbFYPbQjRQyH6
         R73ikGS6EE55pcaxJyR84AkKuhVnp/4PgPHrif2+3CRsSeseINQi1N94AdUxHzZ5PFc9
         shaqu6HIQhxENv9aggYzykAZfyu3lRy8NEI3poUJEMdkToq+OviOVxMM2aga9jEmxywf
         EWhw==
X-Gm-Message-State: ANoB5pnVzN5rgPRKczEeCLw5Q5Raw1DhUj8OWriY1+wbkQDGbIHrIl39
	WkybT6rgjqtnXic/GkBvk6z/L9op5CPEq5hx7H3Cs9sVWO6Cgaw3+l0=
X-Google-Smtp-Source: AA0mqf7ThhlxSS5dwtlykCROSmhsv1BpZo3XerK21fhZSNssjRmZXJNYyHRH2b7A0ljlXbcj76du7UA7N4G1QNs6fAs=
X-Received: by 2002:aa7:dbc3:0:b0:461:6b61:81ae with SMTP id
 v3-20020aa7dbc3000000b004616b6181aemr85979144edt.62.1671196178335; Fri, 16
 Dec 2022 05:09:38 -0800 (PST)
MIME-Version: 1.0
References: <70c3e9d18e044f48ac549fa1dac7f598@kth.se> <0f8474d42d3c471d9ddf7c95cd0cd312@kth.se>
In-Reply-To: <0f8474d42d3c471d9ddf7c95cd0cd312@kth.se>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 16 Dec 2022 07:09:21 -0600
Message-ID: <CAFche=h6ugjr6i_6XPR74Hz5e+QzfrX7y0oGQ=9OnRBuV-x93g@mail.gmail.com>
To: Samie Mostafavi <ssmos@kth.se>
Message-ID-Hash: CIJ5UNDQIGEHFHPCPHRJA5TQXTF4HFA4
X-Message-ID-Hash: CIJ5UNDQIGEHFHPCPHRJA5TQXTF4HFA4
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD SPP problem with E320 and XG link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CIJ5UNDQIGEHFHPCPHRJA5TQXTF4HFA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8594792549474342814=="

--===============8594792549474342814==
Content-Type: multipart/alternative; boundary="0000000000008f5bfa05eff1aebf"

--0000000000008f5bfa05eff1aebf
Content-Type: text/plain; charset="UTF-8"

Hi Samie,

In your example, you requested to use "addr=10.40.3.1". To use the 10 GbE
SFP port, be sure to specify the address of the XG port, which is typically
192.168.10.2. I don't think jumbo frames are supported over the 1 GbE RJ45
port.

Thanks,

Wade

On Fri, Dec 16, 2022 at 4:47 AM Samie Mostafavi <ssmos@kth.se> wrote:

> Hi,
>
>
> I could narrow down the problem to tx_spp. Tried the following command
> instead for benchmark and it seems that RX spp could be set to 1919 but TX
> spp max that is reported by the radio is 492. Does anyone know how I can
> increase TX spp?
>
> sudo ./benchmark_rate --args
> "mgmt_addr=10.10.3.1,addr=10.40.3.1,master_clock_rate=61.44e6" --duration
> 60 --channels "0" --rx_rate 61.44e6 --rx_subdev "A:0" --tx_rate 61.44e6
> --tx_subdev "A:0" --rx_spp 1919 --tx_spp 1919  --tx_stream_args
> "spp=1919" --rx_stream_args "spp=1919"
>
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> UHD_4.3.0.HEAD-0-g1f8fd345
>
> [00:00:00.000069] Creating the usrp device with:
> mgmt_addr=10.10.3.1,addr=10.40.3.1,master_clock_rate=61.44e6...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=10.10.3.1,type=e3xx,product=e320,serial=3238B97,name=ni-e320-3238B97,fpga=XG,claimed=False,addr=10.40.3.1,master_clock_rate=61.44e6
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=XG,master_clock_rate=61.44e6,mgmt_addr=10.10.3.1,name=ni-e320-3238B97,product=e320'.
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
>
> Using Device: Single USRP:
>
>   Device: E300-Series Device
>
>   Mboard 0: e320
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: E3xx
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: E3xx
>
>
> [00:00:04.448876213] Setting device timestamp to 0...
>
> Setting RX spp to 1919
>
> Setting TX spp to 492
>
> [00:00:04.457322205] Testing receive rate 61.440000 Msps on 1 channels
>
> [00:00:04.502995425] Testing transmit rate 61.440000 Msps on 1 channels
>
> Best,
>
> Samie
> ------------------------------
> *From:* Samie Mostafavi <ssmos@kth.se>
> *Sent:* Friday, December 16, 2022 11:09:56 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] UHD SPP problem with E320 and XG link
>
>
> Hi,
>
>
> I have an E320 device connected to the host with XG fiber connection and
> XG FPGA loaded on the E320. UHD version is 4.3.0. I have set the mtu to
> 9000 on both sides. Below you can find the configurations. I am trying to
> set spp to 1919 but I always get 492. I read in the documents that it
> depends on the mtu and by default it is set to the maximum value possible
> based on mtu. Below there is the result of benchmark rate as well.
>
>
> host:$ sudo ethtool eno12399np0
>
> Settings for eno12399np0:
>
> Supported ports: [ FIBRE ]
>
> Supported link modes:   1000baseT/Full
>
>                         10000baseT/Full
>
> Supported pause frame use: Symmetric Receive-only
>
> Supports auto-negotiation: Yes
>
> Supported FEC modes: Not reported
>
> Advertised link modes:  1000baseT/Full
>
>                         10000baseT/Full
>
> Advertised pause frame use: Symmetric
>
> Advertised auto-negotiation: Yes
>
> Advertised FEC modes: Not reported
>
> Link partner advertised link modes:  Not reported
>
> Link partner advertised pause frame use: Symmetric
>
> Link partner advertised auto-negotiation: No
>
> Link partner advertised FEC modes: Not reported
>
> Speed: 10000Mb/s
>
> Duplex: Full
>
> Port: Direct Attach Copper
>
> PHYAD: 1
>
> Transceiver: internal
>
> Auto-negotiation: on
>
> Supports Wake-on: g
>
> Wake-on: d
>
> Current message level: 0x00000000 (0)
>
>
>
> Link detected: yes
>
>
> host:$ ip -f inet addr show eno12399np0
>
> 263: eno12399np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq
> state UP group default qlen 1000
>
>     inet 10.40.2.1/16 brd 10.40.255.255 scope global eno12399np0
>
>        valid_lft forever preferred_lft forever
>
> ni-e320-3238B97:~# ip -f inet addr show sfp0
>
> 15: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc pfifo_fast qlen
> 1000
>
>     inet 10.40.3.1/16 brd 10.40.255.255 scope global sfp0
>
>        valid_lft forever preferred_lft forever
>
>
>
> host:$ ./benchmark_rate --args "addr=10.40.3.1,master_clock_rate=61.44e6"
> --duration 60 --channels "0" --rx_rate 61.44e6 --rx_subdev "A:0" --tx_rate
> 61.44e6 --tx_subdev "A:0"
>
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> UHD_4.3.0.HEAD-0-g1f8fd345
>
> [00:00:00.000070] Creating the usrp device with:
> addr=10.40.3.1,master_clock_rate=61.44e6...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=10.40.3.1,type=e3xx,product=e320,serial=3238B97,name=ni-e320-3238B97,fpga=XG,claimed=False,addr=10.40.3.1,master_clock_rate=61.44e6
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=XG,master_clock_rate=61.44e6,mgmt_addr=10.40.3.1,name=ni-e320-3238B97,product=e320'.
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
>
> Using Device: Single USRP:
>
>   Device: E300-Series Device
>
>   Mboard 0: e320
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: E3xx
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: E3xx
>
>
> [00:00:04.923395067] Setting device timestamp to 0...
>
> *Setting TX spp to 492*
>
> [00:00:04.935123785] Testing receive rate 61.440000 Msps on 1 channels
>
> [00:00:04.977439269] Testing transmit rate 61.440000 Msps on 1 channels
>
> UUUU[00:01:04.979477903] Benchmark complete.
>
>
>
> Benchmark rate summary:
>
>   Num received samples:     3686373960
>
>   Num dropped samples:      0
>
>   Num overruns detected:    0
>
>   Num transmitted samples:  3686410860
>
>   Num sequence errors (Tx): 0
>
>   Num sequence errors (Rx): 0
>
>   Num underruns detected:   4
>
>   Num late commands:        0
>
>   Num timeouts (Tx):        0
>
>   Num timeouts (Rx):        0
>
>
>
> Done
>
>
> As you can see TX spp is set to 492. But I want 1919 with 9000 mtu. Is
> there anything I am missing here?
>
>
> Best,
>
> Samie
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f5bfa05eff1aebf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Samie,</div><div><br></div><div>In your example, y=
ou requested to use &quot;addr=3D10.40.3.1&quot;. To use the 10 GbE SFP por=
t, be sure to specify the address of the XG port, which is typically 192.16=
8.10.2. I don&#39;t think jumbo frames are supported over the 1 GbE RJ45 po=
rt.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Dec 16, 2022 at 4:47 AM Samie Mostafavi &lt;<a href=3D"mailto:ssmo=
s@kth.se">ssmos@kth.se</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div class=3D"msg-780074848259873453">




<div dir=3D"ltr">

<div id=3D"m_-780074848259873453divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I could narrow down the problem to tx_spp. Tried the following command i=
nstead for benchmark and it seems that RX spp could be set to 1919 but TX s=
pp max that is reported by the radio is 492. Does anyone know=C2=A0how I=C2=
=A0can increase TX spp?<br>
<br>
</p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">sudo ./benchmark=
_rate --args &quot;mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,master_clock_rate=
=3D61.44e6&quot; --duration 60 --channels &quot;0&quot; --rx_rate 61.44e6 -=
-rx_subdev &quot;A:0&quot; --tx_rate 61.44e6 --tx_subdev
 &quot;A:0&quot; --rx_spp 1919 --tx_spp 1919<span>=C2=A0 </span>--tx_stream=
_args &quot;spp=3D1919&quot; --rx_stream_args &quot;spp=3D1919&quot;</span>=
</p>
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
U C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</span></p>
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
.10.3.1,name=3Dni-e320-3238B97,product=3De320&#39;.</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 0 ...<span>=C2=A0</span></span></p>
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
g CODEC loopback test on channel 1 ...<span>=C2=A0</span></span></p>
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
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Device: E300-Series Device</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Mboard 0: e320</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>RX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>TX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX Subdev: E3xx</span></p>
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
<div>=C2=A0</div>
</div>
<div>
<div id=3D"m_-780074848259873453divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I have an E320 device connected to the host with XG fiber connection and=
 XG=C2=A0FPGA loaded on the E320. UHD version is 4.3.0. I have set the mtu =
to 9000 on both sides. Below you can find=C2=A0the configurations.=C2=A0<sp=
an style=3D"font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&q=
uot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot=
;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16p=
x">I
 am trying to set spp to 1919 but I always get=C2=A0</span><span style=3D"f=
ont-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">492.
 I read in the documents that it depends on the mtu and by default it is se=
t to the maximum value possible based on mtu. Below there is=C2=A0the resul=
t of benchmark rate as well.</span></p>
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
<span>=C2=A0 </span>1000baseT/Full<span>=C2=A0</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span>10000baseT/Full<span>=C2=A0</span></span></p>
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
hite-space:pre-wrap"></span>Advertised link modes:<span>=C2=A0
</span>1000baseT/Full<span>=C2=A0</span></span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span style=3D"w=
hite-space:pre-wrap"></span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span>10000baseT/Full<span>=C2=A0</span></span></p>
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
hite-space:pre-wrap"></span>Link partner advertised link modes:<span>=C2=A0
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
an style=3D"white-space:pre-wrap"></span><span>=C2=A0
 =C2=A0 =C2=A0 =C2=A0</span></span></p>
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
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>inet <a href=3D"http://10.40.2.1/16" target=3D"_blank">10.40.2.1/16<=
/a> brd 10.40.255.255 scope global eno12399np0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0=C2=
=A0 =C2=A0 =C2=A0
</span>valid_lft forever preferred_lft forever</span></p>
<br>
<p></p>
<p></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures">ni-e320-3238B97:=
~# ip -f inet addr show sfp0<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0</span></span>=
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
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>inet <a href=3D"http://10.40.3.1/16" target=3D"_blank">10.40.3.1/16<=
/a> brd 10.40.255.255 scope global sfp0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0=C2=
=A0 =C2=A0 =C2=A0
</span>valid_lft forever preferred_lft forever</span></p>
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
U C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</span></p>
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
.40.3.1,name=3Dni-e320-3238B97,product=3De320&#39;.</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(57,192,=
38)">[INFO] [0/Radio#0]
</span><span style=3D"font-variant-ligatures:no-common-ligatures">Performin=
g CODEC loopback test on channel 0 ...<span>=C2=A0</span></span></p>
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
g CODEC loopback test on channel 1 ...<span>=C2=A0</span></span></p>
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
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Device: E300-Series Device</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Mboard 0: e320</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>RX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>RX Subdev: E3xx</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>TX Channel: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX DSP: 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX Dboard: A</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0
</span>TX Subdev: E3xx</span></p>
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
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num received samples: <span>=C2=A0 =C2=A0 </span>3686373960</span></=
p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num dropped samples:<span>=C2=A0 =C2=A0 =C2=A0 </span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num overruns detected:<span>=C2=A0 =C2=A0 </span>0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num transmitted samples:<span>=C2=A0 </span>3686410860</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num sequence errors (Tx): 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num sequence errors (Rx): 0</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num underruns detected: <span>=C2=A0 </span>4</span></p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num late commands:<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>0</span><=
/p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num timeouts (Tx):<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>0</span><=
/p>
<p style=3D"margin-right:0px;margin-left:0px;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height=
:normal;font-family:Menlo">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0
</span>Num timeouts (Rx):<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>0</span><=
/p>
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
<p>As you can see TX spp is set to 492. But I want 1919 with 9000 mtu.=C2=
=A0Is there anything I am missing here?</p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000008f5bfa05eff1aebf--

--===============8594792549474342814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8594792549474342814==--
