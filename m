Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C9D64EDF7
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 16:31:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F97138447C
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 10:31:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671204698; bh=gn2Bo/sGb6NJszaToZEn6vV90T17IZhuQHthm62tHFw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=t8tXE7ZQw7/53PzftGEI+29Ko768s9rXGsBtSISLZ3eG4Z7P8z7w4tOJnCsG2KbBR
	 qKlrIuaVBr2qHLlIbRDf1hiIyN7Fa2ViWAYQhNIXdfNoZ/wGtj2FHlMCqzbppNb8AJ
	 qKv+wGhIemNaJycAsck90aETtXT+LcGrc0cFv4GCGDhYpx5nTbePEDAP9wSTbj9AGY
	 MkXFDKQ1EB1p0HG1NwK3DPj0jb/f5suSvcRLbP2snaY6eBnMFBQIoAMuO0bfkoLFiA
	 EpkPMCdRe66YtEB+N9e4Ovu+r1m1l7wme9Abuyusb0OQpm+njB+gv3BOgz/+7S1daE
	 IwWQQ72KVrAhg==
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C0B3D3842F9
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 10:30:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hg12JRpf";
	dkim-atps=neutral
Received: by mail-vk1-f180.google.com with SMTP id f24so1276937vkl.9
        for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 07:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qpFR5jtxAjS7HxgdQAM9YQpQDCMEOExUJdd1lU8cqr0=;
        b=hg12JRpfEqjglgjpfAUp8U72b+Q/bNluhPhSfrs2A44NdWpti7rt4Qmv3WJTKKL8wB
         AvWwZfXyE0jghZqaXb42L2pHHDo2CYwzCvx29I/nP9kdE7J6fqYp+uTkFaufaqbvGgTk
         u3BqEOgwJGWcoVLR/pl1PfsmQch0tgSk3R5f6/nGzbdB74d13p5AAwzqcgfZWu2x8vBX
         V6kOwLMr/d04boRk8bL0sq116vkCueYUKKd+fK/kzmWZOkBa0+9bOdDvh7C9FrJ1AISq
         SloOU4xAp3HBkCo8H0yhEZJfn7YPH4nCvUDXM83zcuyDT5LsYWXjalG8n8EBI2ld/MsN
         UfBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qpFR5jtxAjS7HxgdQAM9YQpQDCMEOExUJdd1lU8cqr0=;
        b=Ru3Chgn3YCZ18CRpqjEWq0NbhGCHdx/kGKYi6Tl6LNxbo7despcRbIgJU/l25WPPz1
         VB5u+woFkv7p5u/yzTzLH8QYLshkz1bpLvVCASPEkYmqBAUkfh41OiAKrmMAhSQ41IYZ
         D48ItlxBy8vXa5hYTe7nEkflPUAgbe3F8ZUAd3ikdV5wyUp6rezk12QvHIzd9AsLFTlZ
         GDVhv6DTyYbirgyJu+41HQ2n866jKa7f242+hWyP1hL2ZLKogkvIK5/Ui5jgmCPnTu3p
         5svfUyjUWus4+noSVkjITdJV1c7YB8APg3c9rBL6fdxQBVLXSTGWySy3K8C0s23IJoKE
         Hkug==
X-Gm-Message-State: AFqh2kqkCD+xT18RqPOEcVQalWaDN2TPiqZT/0lBRqsUTTIiRqxBjzBy
	Ge+mJUvQ4ZFnQpglhP3at+o2YHBCj/2Tww==
X-Google-Smtp-Source: AMrXdXsfIMtDyED9QhoKWZbfoSFQzwG6xROHNi92qJvN23aNcAoSqznVEYf2Zy8SVXU+GnFVn6fGLw==
X-Received: by 2002:a1f:200f:0:b0:3c6:a5d5:d093 with SMTP id g15-20020a1f200f000000b003c6a5d5d093mr4041351vkg.6.1671204641807;
        Fri, 16 Dec 2022 07:30:41 -0800 (PST)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id s10-20020a05620a29ca00b006f9e103260dsm1668156qkp.91.2022.12.16.07.30.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 07:30:41 -0800 (PST)
Message-ID: <b086611b-ff45-9387-e8ab-5d1b037d3808@gmail.com>
Date: Fri, 16 Dec 2022 10:30:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <70c3e9d18e044f48ac549fa1dac7f598@kth.se>
 <0f8474d42d3c471d9ddf7c95cd0cd312@kth.se>
 <CAFche=h6ugjr6i_6XPR74Hz5e+QzfrX7y0oGQ=9OnRBuV-x93g@mail.gmail.com>
 <13b24d7585c34f0b807495a0ce4555ab@kth.se>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <13b24d7585c34f0b807495a0ce4555ab@kth.se>
Message-ID-Hash: Y3U5OAH2K6JGW7O63I22EJDIBI3XSIFX
X-Message-ID-Hash: Y3U5OAH2K6JGW7O63I22EJDIBI3XSIFX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD SPP problem with E320 and XG link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y3U5OAH2K6JGW7O63I22EJDIBI3XSIFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2878238454112043652=="

This is a multi-part message in MIME format.
--===============2878238454112043652==
Content-Type: multipart/alternative;
 boundary="------------mK4LQ1cFUgkQUCuCUxNgIBjW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mK4LQ1cFUgkQUCuCUxNgIBjW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/12/2022 08:25, Samie Mostafavi wrote:
>
> Hi Wade,
>
>
> Thanks for your answer. I figured out the problem. It was the switch 
> in between that I had to reboot. I had jumbo frame option enabled on 
> the switch but a reboot was needed. Now that I try it works:
>
>
> host$ ping -M do -s 5850 10.40.3.1
>
> PING 10.40.3.1 (10.40.3.1) 5850(5878) bytes of data.
>
> 5858 bytes from 10.40.3.1: icmp_seq=1 ttl=64 time=2.24 ms
>
> 5858 bytes from 10.40.3.1: icmp_seq=2 ttl=64 time=1.25 ms
>
> 5858 bytes from 10.40.3.1: icmp_seq=3 ttl=64 time=1.19 ms
>
> 5858 bytes from 10.40.3.1: icmp_seq=4 ttl=64 time=1.19 ms
>
>
>
> host$ ./benchmark_rate --args 
> "mgmt_addr=10.10.3.1,addr=10.40.3.1,master_clock_rate=61.44e6" 
> --duration 60 --channels "0" --rx_rate 61.44e6 --rx_subdev "A:0" 
> --tx_rate 61.44e6 --tx_subdev "A:0" --rx_spp 1919 --tx_spp 
> 1919--tx_stream_args "spp=1919" --rx_stream_args "spp=1919"
>
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.3.0.HEAD-0-g1f8fd345
>
> [00:00:00.000254] Creating the usrp device with: 
> mgmt_addr=10.10.3.1,addr=10.40.3.1,master_clock_rate=61.44e6...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=10.10.3.1,type=e3xx,product=e320,serial=3238B97,name=ni-e320-3238B97,fpga=XG,claimed=False,addr=10.40.3.1,master_clock_rate=61.44e6
>
> *[WARNING] [MPM.RPCServer] *A timeout event occured!
>
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=XG,master_clock_rate=61.44e6,mgmt_addr=10.10.3.1,name=ni-e320-3238B97,product=e320'.
>
> *[WARNING] [RFNOC::GRAPH] *One or more blocks timed out during flush!
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
> Device: E300-Series Device
>
> Mboard 0: e320
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: E3xx
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: E3xx
>
>
> [00:00:05.502443989] Setting device timestamp to 0...
>
> *Setting RX spp to 1919*
>
> *Setting TX spp to 1916*
>
> [00:00:05.512753951] Testing receive rate 61.440000 Msps on 1 channels
>
> [00:00:05.554696549] Testing transmit rate 61.440000 Msps on 1 channels
>
> [00:00:05.555824707] Detected Rx sequence error.
>
> DU[00:01:05.558922952] Benchmark complete.
>
>
>
> Benchmark rate summary:
>
> Num received samples: 3686368018
>
> Num dropped samples:3196728
>
> Num overruns detected:0
>
> Num transmitted samples:3686403160
>
> Num sequence errors (Tx): 0
>
> Num sequence errors (Rx): 1
>
> Num underruns detected: 1
>
> Num late commands:0
>
> Num timeouts (Tx):0
>
> Num timeouts (Rx):0
>
>
>
> Done!
>
>
>
> Best,
>
> Samie
>
You might also try some of the things noted here:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_Network_Buffers


--------------mK4LQ1cFUgkQUCuCUxNgIBjW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/12/2022 08:25, Samie Mostafavi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:13b24d7585c34f0b807495a0ce4555ab@kth.se">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>Hi Wade,</p>
        <p><br>
        </p>
        <p>Thanks for your answer. I figured out the problem. It was the
          switch in between that I had to reboot. I had jumbo frame
          option enabled on the switch but a reboot was needed. Now that
          I try it works:</p>
        <p><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">host$ ping -M do -s 5850 10.40.3.1</spa=
n></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">PING 10.40.3.1 (10.40.3.1) 5850(5878)
            bytes of data.</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">5858 bytes from 10.40.3.1: icmp_seq=3D1
            ttl=3D64 time=3D2.24 ms</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">5858 bytes from 10.40.3.1: icmp_seq=3D2
            ttl=3D64 time=3D1.25 ms</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">5858 bytes from 10.40.3.1: icmp_seq=3D3
            ttl=3D64 time=3D1.19 ms</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">5858 bytes from 10.40.3.1: icmp_seq=3D4
            ttl=3D64 time=3D1.19 ms</span></p>
        <br>
        <p><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">host$ ./benchmark_rate --args
            "mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,master_clock_rate=3D6=
1.44e6"
            --duration 60 --channels "0" --rx_rate 61.44e6 --rx_subdev
            "A:0" --tx_rate 61.44e6 --tx_subdev "A:0" --rx_spp 1919
            --tx_spp 1919<span class=3D"Apple-converted-space">=C2=A0 </s=
pan>--tx_stream_args
            "spp=3D1919" --rx_stream_args "spp=3D1919"</span></p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO] [UHD]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">linux; GNU C++ version 9.4.0;
            Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">[00:00:00.000254] Creating the usrp
            device with:
            mgmt_addr=3D10.10.3.1,addr=3D10.40.3.1,master_clock_rate=3D61=
.44e6...</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO] [MPMD]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Initializing 1 device(s) in parallel
            with args:
mgmt_addr=3D10.10.3.1,type=3De3xx,product=3De320,serial=3D3238B97,name=3D=
ni-e320-3238B97,fpga=3DXG,claimed=3DFalse,addr=3D10.40.3.1,master_clock_r=
ate=3D61.44e6</span></p>
        <p class=3D"p3" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; color: rgb(170, 171, 37);">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><b>[WARNING] [MPM.RPCServer]
            </b></span><span class=3D"s3" style=3D"font-variant-ligatures=
:
            no-common-ligatures; color: rgb(0, 0, 0);">A timeout event
            occured!</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [MPM.PeriphManager]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">init() called with device args
`fpga=3DXG,master_clock_rate=3D61.44e6,mgmt_addr=3D10.10.3.1,name=3Dni-e3=
20-3238B97,product=3De320'.</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s4" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(170, 171, 37);"><b>[WARNING]
              [RFNOC::GRAPH]
            </b></span><span class=3D"s1" style=3D"font-variant-ligatures=
:
            no-common-ligatures;">One or more blocks timed out during
            flush!</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/Radio#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Performing CODEC loopback test on
            channel 0 ...<span class=3D"Apple-converted-space">=C2=A0</sp=
an></span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/Radio#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">CODEC loopback test passed</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/Radio#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Performing CODEC loopback test on
            channel 1 ...<span class=3D"Apple-converted-space">=C2=A0</sp=
an></span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/Radio#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">CODEC loopback test passed</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/DmaFIFO#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">BIST passed (Estimated Minimum
            Throughput: 1361 MB/s)</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s2" style=3D"font-variant-ligatures:
            no-common-ligatures; color: rgb(57, 192, 38);">[INFO]
            [0/DmaFIFO#0]
          </span><span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">BIST passed (Estimated Minimum
            Throughput: 1361 MB/s)</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Using Device: Single USRP:</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Device: E300-Series Device</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Mboard 0: e320</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>RX Channel: 0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>RX DSP: 0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>RX Dboard: A</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>RX Subdev: E3xx</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>TX Channel: 0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>TX DSP: 0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>TX Dboard: A</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
              =C2=A0
            </span>TX Subdev: E3xx</span></p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">[00:00:05.502443989] Setting device
            timestamp to 0...</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><b>Setting RX spp to 1919</b></span></p=
>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><b>Setting TX spp to 1916</b></span></p=
>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">[00:00:05.512753951] Testing receive
            rate 61.440000 Msps on 1 channels</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">[00:00:05.554696549] Testing transmit
            rate 61.440000 Msps on 1 channels</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">[00:00:05.555824707] Detected Rx
            sequence error.</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">DU[00:01:05.558922952] Benchmark
            complete.</span></p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Benchmark rate summary:</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num received samples: <span
              class=3D"Apple-converted-space">=C2=A0 =C2=A0 </span>368636=
8018</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num dropped samples:<span
              class=3D"Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 </span=
>3196728</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num overruns detected:<span
              class=3D"Apple-converted-space">=C2=A0 =C2=A0 </span>0</spa=
n></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num transmitted samples:<span
              class=3D"Apple-converted-space">=C2=A0 </span>3686403160</s=
pan></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num sequence errors (Tx): 0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num sequence errors (Rx): 1</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num underruns detected: <span
              class=3D"Apple-converted-space">=C2=A0 </span>1</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num late commands:<span class=3D"Apple-converted-space=
">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 </span>0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num timeouts (Tx):<span class=3D"Apple-converted-space=
">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 </span>0</span></p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"><span class=3D"Apple-converted-space">=C2=
=A0
            </span>Num timeouts (Rx):<span class=3D"Apple-converted-space=
">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 </span>0</span></p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p2" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo; min-height: 15px;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;"></span><br>
        </p>
        <p class=3D"p1" style=3D"margin-right: 0px; margin-left: 0px;
          font-variant-numeric: normal; font-variant-east-asian: normal;
          font-stretch: normal; font-size: 13px; line-height: normal;
          font-family: Menlo;">
          <span class=3D"s1" style=3D"font-variant-ligatures:
            no-common-ligatures;">Done!</span></p>
        <br>
        <p><br>
        </p>
        <p>Best,</p>
        <p>Samie</p>
      </div>
    </blockquote>
    You might also try some of the things noted here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_Host=
_Performance_Tuning_Tips_and_Tricks#Adjust_Network_Buffers">https://kb.et=
tus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_Network_Buffe=
rs</a><br>
    <br>
    <br>
  </body>
</html>

--------------mK4LQ1cFUgkQUCuCUxNgIBjW--

--===============2878238454112043652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2878238454112043652==--
