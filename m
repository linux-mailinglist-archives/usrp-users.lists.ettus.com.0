Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CC879AB7A
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 23:15:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F6883844F1
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 17:15:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694466900; bh=QYrpdvpoN4XBvoXlizpxSSSWoAShNMC1vCm8rM5D14c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uxSXx4uwqEndfq/g1Ct1a8thZQmGFRnV8Mx6IxvJGlSQ8TQw/qDze0ag8fifCQUrk
	 veF9ygl/Fnxj2Bn1btetr5Q4D0BcKXIadxjNWwbRzMhcw2uzgcp1VWwIWTdzLmylEf
	 zNV0mo7jxDVhP2K++vF2cw9hGPZ5sFTrzsvOJCMcaH3XrzJ4UgJ0OVIgGGXDWA974b
	 p+NVKzaEXEUntuMJzCiBgknfOI5/Dvx5wcAVvJwW4dLsgWGLkc9SV4/w3Dsuv//rWv
	 ia7WGmnXJ+V/zht1QgMg3Y4h2yUZfRmykgU5zU9/d5hppfLUFpeYYjh0Ah9K73h+Us
	 q+++IDHF/CIqw==
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id AB6D938413A
	for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 17:14:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lvcEdneS";
	dkim-atps=neutral
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-77acb04309dso165616539f.2
        for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 14:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694466881; x=1695071681; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ujvrsySEjtpV9MoQf+OUJq87s1N9srF3HrCaelfnqGM=;
        b=lvcEdneSvQyNW1CP4Xi7VTrP+2FgettKvB2GAx6sNI8RJnlNbjlTrYBgYqkCYf8Rve
         5mYQhYJym9MDsmoVGB+Mc+S7EjxZ4kVgsF24Lwtj+NB/WGI2jx7IlH1fCLhaNchevC99
         SchKXVl0EctWh/xwD+Y0FmrS4h8kxovfL64rgIGgnBtwuH/wgcGrBqDclvfbGs4FHlVI
         iaFScVxatpFaZtujy1n9NBOtyGJT8Q4U29H58Y3VVJaoNfX0VFt9dNEbJzfWTRK1PG28
         LsE7YfCUaO5PZMzIIaRRzKvi3bsKKFPes7h33o3AhRQON0qrGsavRA35HHY7c2KInQDt
         V8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694466881; x=1695071681;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ujvrsySEjtpV9MoQf+OUJq87s1N9srF3HrCaelfnqGM=;
        b=lxySs4LMg9AszqIJKl/jEYzZP+my12kCwoFk5GUSymUWMAzC4tO7euInLiiOA/qJmz
         Cjg8qhdty3KvQvlKaG2PFUTgUBkPchkCx+rn0p40FBpaWZ3dR3ueahZi3JQVLulVA4aH
         pbYXUU7zsGx/FhRwTAbl0lwVUR6KPun4BYIXNPkelPC1GGHymAnAtLoMQISvEgcPkMEH
         WCwS8qVLJJ9lY8z9ZG9FC7qRvDA31drx7O4XqcjH37hVOhAhN8+Y4/7mLkPeBIw19LoI
         SRgKIp47L7qpNStZm06xhf3ojw7B6QKrFksitY1evrC5hSXSPRtkijkJQ4pkQ4DPJ+pe
         q9+g==
X-Gm-Message-State: AOJu0YyspOingNsM05N4jQs+/3pH1vDUMAtluyvhEWV9vc5MyGGvxaNV
	EEsdrR4fy/bP9dbU60MP+8O/0ocakdexWA==
X-Google-Smtp-Source: AGHT+IGDG+R8L+3279F5mZbvqERtQFfF4zr7ZHZLRRuxwn69QoLT2J3dvqSdxq09NasyBqozz0+BEw==
X-Received: by 2002:a05:6358:3422:b0:134:c1eb:8744 with SMTP id h34-20020a056358342200b00134c1eb8744mr11922792rwd.9.1694466859615;
        Mon, 11 Sep 2023 14:14:19 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t5-20020a0cef45000000b00655d55117f5sm2401644qvs.81.2023.09.11.14.14.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 14:14:19 -0700 (PDT)
Message-ID: <5ebf23cd-1428-958b-ea65-21e318401568@gmail.com>
Date: Mon, 11 Sep 2023 17:14:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
 <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
 <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <1218602222.4259780.1694448579632@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1218602222.4259780.1694448579632@mail.yahoo.com>
Message-ID-Hash: 75USEXMEG4W7KNC6LIU3G2XXK4NEQVCL
X-Message-ID-Hash: 75USEXMEG4W7KNC6LIU3G2XXK4NEQVCL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Benchmark test failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75USEXMEG4W7KNC6LIU3G2XXK4NEQVCL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5718758201317454502=="

This is a multi-part message in MIME format.
--===============5718758201317454502==
Content-Type: multipart/alternative;
 boundary="------------MSfxZE0vzMbM6ja5ap5ZvN3g"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MSfxZE0vzMbM6ja5ap5ZvN3g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/09/2023 12:09, zhou via USRP-users wrote:
> Hi all,
>
> I just set up a system with X410 USRP. Tried to run a benchmark rate=20
> test and saw a lot of errors. Please suggest what could be the reason=20
> for the test failure.
> Host is R740 (16 CPU cores) and Linux is Ubuntu 22.04 with low-latency=20
> kernel.
> 100G Mellanox ConnectX-6 NIC cards
>
>
>
> $ sudo /usr/local/lib/uhd/examples/benchmark_rate=C2=A0 \
> --args=20
> "type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_=
rate=3D500e6"=20
> \
> --priority "high" \
> --multi_streamer \
> --duration 60 \
> --channels "0" \
> --rx_rate 10e6 \
> --rx_subdev "A:0" \
> --tx_rate 10e6 \
> --tx_subdev "A:0"
> [sudo] password for user:
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=20
> UHD_4.4.0.HEAD-0-g5fac246b
> [00:00:00.000566] Creating the usrp device with:=20
> type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_r=
ate=3D500e6...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,na=
me=3Dni-x4xx-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,ma=
ster_clock_rate=3D500e6
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DCG_400,master_clock_rate=3D500e6,mgmt_addr=3D192.168.88.2,name=3D=
ni-x4xx-3289B23,product=3Dx410,clock_source=3Dinternal,time_source=3Dinte=
rnal'.
> Using Device: Single USRP:
> =C2=A0 Device: X400-Series Device
> =C2=A0 Mboard 0: x410
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: 0
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: 0
>
> [00:00:05.797505591] Setting device timestamp to 0...
> [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 10=20
> MHz. Actual rate is: 500 MHz.
> [WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual=20
> rate is 500.000 MHz
> [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 10=20
> MHz. Actual rate is: 500 MHz.
> [WARNING] [MULTI_USRP] Could not set TX rate to 10.000 MHz. Actual=20
> rate is 500.000 MHz
> Setting TX spb to 1984
> [00:00:05.799789467] Testing receive rate 500.000000 Msps on 1 channels
> [00:00:05.801875415] Testing transmit rate 500.000000 Msps on 1 channel=
s
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUD[U00:00:06.33502762]=20
> Detected Rx sequence error.
> UU[D00:00:06.33952517] Detected Rx sequence error.
> UUUU[D00:00:06.34387503] Detected Rx sequence error.
> U[D00:00:06.34802030] Detected Rx sequence error.
> UUUUU[D00:00:06.35212894] Detected Rx sequence error.
> U[D00:00:06.35640910] Detected Rx sequence error.
>
>
> Benchmark rate summary:
> =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0
> *Num overruns detected:=C2=A0 =C2=A0 596*
> =C2=A0 Num transmitted samples:=C2=A0 10046501824
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> *Num underruns detected:=C2=A0 =C2=A0819855*
> =C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
>
> Done!
>
>
>
> $ ifconfig
> enp59s0f0np0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 90=
00
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.1=C2=A0 netmask 255.255.255=
.0 broadcast 192.168.20.255
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b77a=C2=A0 prefi=
xlen 64 scopeid 0x20<link>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7a=C2=A0 txqueuelen 10=
00 (Ethernet)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144837=C2=A0 bytes 10188879710=
0 (101.8 GB)
> */RX errors 0=C2=A0 dropped 2423=C2=A0 overruns 0=C2=A0 frame 0/*
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12311297=C2=A0 bytes 87947193629=
 (87.9 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0 collisions 0
>
> enp59s0f1np1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 90=
00
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netmask 255.255.255=
.0 broadcast 192.168.10.255
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b77b=C2=A0 prefi=
xlen 64 scopeid 0x20<link>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7b=C2=A0 txqueuelen 10=
00 (Ethernet)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 406107=C2=A0 bytes 2296309836 (2=
.2 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns =
0=C2=A0 frame 0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 502690=C2=A0 bytes 3421432091 (3=
.4 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0 collisions 0
>
> Kind regards,
> Hongwei
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The fact that the actual IP interface is seeing dropped frames indicates=20
that likely the ringbuf pool on that NIC is too small.

Check out the support that ethtool has for this:

https://www.24x7serversupport.com/blog/how-to-tuneup-tx-and-rx-buffers-on=
-network-interface/


--------------MSfxZE0vzMbM6ja5ap5ZvN3g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/09/2023 12:09, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1218602222.4259780.1694448579632@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpecce4a95yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi all,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I just set up a system wit=
h
          X410=C2=A0<span><span style=3D"color: rgb(0, 0, 0); font-family=
:
              Helvetica Neue, Helvetica, Arial, sans-serif;">USRP. Tried
              to run a benchmark rate test and saw a lot of errors.
              Please suggest what could be the reason for the test
              failure.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;">=C2=A0</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false">Host is R740 (16 CPU cores=
)
          and Linux is Ubuntu 22.04 with low-latency kernel.</div>
        <div dir=3D"ltr" data-setdir=3D"false">100G Mellanox ConnectX-6 N=
IC
          cards</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>$ sudo /usr/local/lib/uhd/examples/benchmark_rate=C2=A0 =
\</div>
            <div>--args
"type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_ra=
te=3D500e6"
              \</div>
            <div>--priority "high" \</div>
            <div>--multi_streamer \</div>
            <div>--duration 60 \</div>
            <div>--channels "0" \</div>
            <div>--rx_rate 10e6 \</div>
            <div>--rx_subdev "A:0" \</div>
            <div>--tx_rate 10e6 \</div>
            <div>--tx_subdev "A:0"</div>
            <div>[sudo] password for user:</div>
            <div><br>
            </div>
            <div>[INFO] [UHD] linux; GNU C++ version 11.4.0;
              Boost_107400; DPDK_21.11; UHD_4.4.0.HEAD-0-g5fac246b</div>
            <div>[00:00:00.000566] Creating the usrp device with:
type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rat=
e=3D500e6...</div>
            <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,name=
=3Dni-x4xx-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,mast=
er_clock_rate=3D500e6</div>
            <div>[WARNING] [MPM.RPCServer] A timeout event occured!</div>
            <div>[INFO] [MPM.PeriphManager] init() called with device
              args
`fpga=3DCG_400,master_clock_rate=3D500e6,mgmt_addr=3D192.168.88.2,name=3D=
ni-x4xx-3289B23,product=3Dx410,clock_source=3Dinternal,time_source=3Dinte=
rnal'.</div>
            <div>Using Device: Single USRP:</div>
            <div>=C2=A0 Device: X400-Series Device</div>
            <div>=C2=A0 Mboard 0: x410</div>
            <div>=C2=A0 RX Channel: 0</div>
            <div>=C2=A0 =C2=A0 RX DSP: n/a</div>
            <div>=C2=A0 =C2=A0 RX Dboard: A</div>
            <div>=C2=A0 =C2=A0 RX Subdev: 0</div>
            <div>=C2=A0 TX Channel: 0</div>
            <div>=C2=A0 =C2=A0 TX DSP: n/a</div>
            <div>=C2=A0 =C2=A0 TX Dboard: A</div>
            <div>=C2=A0 =C2=A0 TX Subdev: 0</div>
            <div><br>
            </div>
            <div>[00:00:05.797505591] Setting device timestamp to 0...</d=
iv>
            <div>[WARNING] [0/Radio#0] Requesting invalid sampling rate
              from device: 10 MHz. Actual rate is: 500 MHz.</div>
            <div>[WARNING] [MULTI_USRP] Could not set RX rate to 10.000
              MHz. Actual rate is 500.000 MHz</div>
            <div>[WARNING] [0/Radio#0] Requesting invalid sampling rate
              from device: 10 MHz. Actual rate is: 500 MHz.</div>
            <div>[WARNING] [MULTI_USRP] Could not set TX rate to 10.000
              MHz. Actual rate is 500.000 MHz</div>
            <div>Setting TX spb to 1984</div>
            <div>[00:00:05.799789467] Testing receive rate 500.000000
              Msps on 1 channels</div>
            <div>[00:00:05.801875415] Testing transmit rate 500.000000
              Msps on 1 channels</div>
            <div>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUD[U00:00:06.33502=
762]
              Detected Rx sequence error.</div>
            <div>UU[D00:00:06.33952517] Detected Rx sequence error.</div>
            <div>UUUU[D00:00:06.34387503] Detected Rx sequence error.</di=
v>
            <div>U[D00:00:06.34802030] Detected Rx sequence error.</div>
            <div>UUUUU[D00:00:06.35212894] Detected Rx sequence error.</d=
iv>
            <div>U[D00:00:06.35640910] Detected Rx sequence error.</div>
            <div><br>
            </div>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>Benchmark rate summary:</div>
            <div>=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A00</div>
            <div>=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0</div>
            <div>=C2=A0 <b><font style=3D"background-color: rgb(0, 0, 0);=
"
                  color=3D"#fdf869">Num overruns detected:=C2=A0 =C2=A0 5=
96</font></b></div>
            <div>=C2=A0 Num transmitted samples:=C2=A0 10046501824</div>
            <div>=C2=A0 Num sequence errors (Tx): 0</div>
            <div>=C2=A0 Num sequence errors (Rx): 0</div>
            <div>=C2=A0<b style=3D"background-color: rgb(0, 0, 0);"><font
                  color=3D"#fdf869"> Num underruns detected:=C2=A0 =C2=A0=
819855</font></b></div>
            <div>=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div>=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div>=C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div><br>
            </div>
            <div>Done!<br>
            </div>
            <div><br>
            </div>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">$ ifconfig</div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>enp59s0f0np0:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mt=
u 9000</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.1=C2=A0 netm=
ask 255.255.255.0=C2=A0
              broadcast 192.168.20.255</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b=
77a=C2=A0 prefixlen 64=C2=A0
              scopeid 0x20&lt;link&gt;</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7a=C2=A0=
 txqueuelen 1000=C2=A0
              (Ethernet)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144837=C2=A0 by=
tes 101888797100 (101.8
              GB)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <b style=3D""><i style=3D"">=
<font
                    style=3D"background-color: rgb(0, 0, 0);"
                    color=3D"#fdf869">RX errors 0=C2=A0 dropped 2423=C2=A0=
 overruns
                    0=C2=A0 frame 0</font></i></b></div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12311297=C2=A0 by=
tes 87947193629 (87.9
              GB)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 =
overruns 0=C2=A0 carrier 0=C2=A0
              collisions 0</div>
            <div><br>
            </div>
            <div>enp59s0f1np1:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mt=
u 9000</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netm=
ask 255.255.255.0=C2=A0
              broadcast 192.168.10.255</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b=
77b=C2=A0 prefixlen 64=C2=A0
              scopeid 0x20&lt;link&gt;</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7b=C2=A0=
 txqueuelen 1000=C2=A0
              (Ethernet)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 406107=C2=A0 byte=
s 2296309836 (2.2 GB)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 502690=C2=A0 byte=
s 3421432091 (3.4 GB)</div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 =
overruns 0=C2=A0 carrier 0=C2=A0
              collisions 0</div>
            <div><br>
            </div>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div>
          <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
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
    The fact that the actual IP interface is seeing dropped frames
    indicates that likely the ringbuf pool on that NIC is too small.<br>
    <br>
    Check out the support that ethtool has for this:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.24x7serversupport.=
com/blog/how-to-tuneup-tx-and-rx-buffers-on-network-interface/">https://w=
ww.24x7serversupport.com/blog/how-to-tuneup-tx-and-rx-buffers-on-network-=
interface/</a><br>
    <br>
    <br>
  </body>
</html>

--------------MSfxZE0vzMbM6ja5ap5ZvN3g--

--===============5718758201317454502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5718758201317454502==--
