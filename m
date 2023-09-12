Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE2A79D350
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 16:10:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 022503852AF
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 10:10:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694527803; bh=aghabrB4w6+4aRdvINIlp+5lZEhZqHvT5ODj2tth/bs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ITc1fLopszgOb5K7vbhEC5+ObfVBvPQE8SDqOtL0tpjBVrZkLQbnFRflULgQhfe1I
	 iag/7r3zKRlZ9pgPl4QfjDS3ISEwiB1fY0bPpIC80CGgxGtXsdnAqBG5BYHy3/DurP
	 d3j2vQcfOXgrdj7IMeSi7nGcXRMrJYaPEcEO1fLOUWuKNHxv7/F+WDVzY7N/nhELye
	 khMWm4Nq37T33Otw+8U3o965k+cUjMJhhgrZxz//yfUCAyWZyJ/u4tWGWq24N8+hWS
	 3ajqOa4csBONKFjGYcK2IVkhcaLsivzQCtETdquO06ArQCoDe0hpkKMm141DoHvJRE
	 hcaVE1zl+AiaA==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A6EC385053
	for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 10:09:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Iy4l5UPy";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-412137ae07aso34906281cf.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 07:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694527741; x=1695132541; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ou2OLf5M0h9MDJaSQs3IrI1lH47KuEovpudusKXXnjI=;
        b=Iy4l5UPyjeG1xLZNiVslJcvtFvgMjrg93EEhcxw+vkCeSx7bAa36GjHosUDeREr0Dl
         WByuV8qMy8q43UXkM05o7JrYE6GIkvAzZ2pH8791y/Vv20HIX2TFQSDZvT+jKZIZcj0F
         3czA0YnUEuTV8nHvaE0+DM29dsJA9gfDUxemuBBoQB5eIclD7Z4C16oZ5FHues0PF+LW
         vwvri/N2aH9KNiERwjF+i4cAK/CIoBhqTtPQZ4GfSVSEUu2SeybxP4NF2umoWm2v430Y
         tGgghe+rPLQv7eTPcphzXfK59hLeU1wAOwo/F5moYNr0m7GW2xsoxLo8D6nZ3naGRyz7
         zcWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694527741; x=1695132541;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ou2OLf5M0h9MDJaSQs3IrI1lH47KuEovpudusKXXnjI=;
        b=pYMwUugEnDyECfWPpKUG7wFgwefivUaTgaS5UWSNzMJb4bO+eT+vwfuyN4cJ0wU9Q2
         aXmFfs2rYezPd9eE5G3vY1OGOwCeTSqnJvETXvh5hPcaEhdjFqP9uUee2ujy7v1vLQ6Z
         Pd9tmqsIhXymPGXMxEpQPKaT898/U5H1jhHfgmOGroK5Lo5TLIRKiWAp5BdYxWLiyDY6
         5WU3N7mhNfBN4huVsQfnGpxJQva9bKkXIfBGxCkrgt9c0SAMGSkleXQyfZltkPmC39yz
         exbeRT0ZAT1kHGXUt6PHjxNq/sYT6wmW0qmjNiQiwXB9SyDywIIs2gmyDmfS94ZGoNDT
         SIkQ==
X-Gm-Message-State: AOJu0Yw81K/gp9iOFgYCVOW+V0geAjKXMc3U9zriZhKYf9x+DU1+DNku
	EDS4L+ss9n/3HJQeHwFVFAhMKT3qirFTkA==
X-Google-Smtp-Source: AGHT+IEG1h0cbt87uF7lIPuaTaKgTn2EdwI6hGrDqS7zh7fPCbgXZ7bnmb301zZBaqN0kM/6njEt1w==
X-Received: by 2002:a05:622a:1393:b0:412:1c5f:4787 with SMTP id o19-20020a05622a139300b004121c5f4787mr13871479qtk.67.1694527741505;
        Tue, 12 Sep 2023 07:09:01 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id f2-20020ac87f02000000b00411f7da6e1bsm3272693qtk.60.2023.09.12.07.09.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:09:01 -0700 (PDT)
Message-ID: <6cecca2e-a7cf-63f0-b9b1-358ae4cdeb8d@gmail.com>
Date: Tue, 12 Sep 2023 10:09:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
 <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
 <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <1218602222.4259780.1694448579632@mail.yahoo.com>
 <5ebf23cd-1428-958b-ea65-21e318401568@gmail.com>
 <1518816302.133078.1694515928407@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1518816302.133078.1694515928407@mail.yahoo.com>
Message-ID-Hash: JHJVGRCHNK4EOP35YHBRATFO57NUUPEL
X-Message-ID-Hash: JHJVGRCHNK4EOP35YHBRATFO57NUUPEL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Benchmark test failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JHJVGRCHNK4EOP35YHBRATFO57NUUPEL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2922667940348896477=="

This is a multi-part message in MIME format.
--===============2922667940348896477==
Content-Type: multipart/alternative;
 boundary="------------1XGEqEvhW4hVFp6EQ3IBrJwg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1XGEqEvhW4hVFp6EQ3IBrJwg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/09/2023 06:52, zhou wrote:
> Hi Marcus,
>
> Thanks for your reply.
> The original ring buffer is 1024 for Tx and Rx. Now I have changed=20
> them to 4096. Still see overruns and underruns.
> Ring parameters for enp59s0f0np0:
> Pre-set maximums:
> RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192
> RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a
> RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a
> TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192
> Current hardware settings:
> RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096
> RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a
> RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a
> TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096
>
>
> Ring parameters for enp59s0f1np1:
> Pre-set maximums:
> RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192
> RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a
> RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a
> TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192
> Current hardware settings:
> RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096
> RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a
> RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a
> TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096
>
>
> Benchmark rate summary:
> =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A012617833512
> =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 17321163392
> =C2=A0 Num overruns detected:=C2=A0 =C2=A0 112
> =C2=A0 Num transmitted samples:=C2=A0 9159225280
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected:=C2=A0 =C2=A0856834
> =C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
>
> I think my computer is not fast enough for 500MHz sampling rate. The=20
> computer I am using is Dell PowerEdge R740, CPU is Intel(R) Xeon(R)=20
> Bronze 3106 CPU @ 1.70GHz
> What is the recommended computer HW configuration?
>
> Another question is UHD4.5. I tried UHD4.5, but there was MPM issue
> The MPM software on your device is older than the FPGA you're trying to
> use. Because you're using master, they haven't published updated
> filesystems with the new MPM yet, but there will be a release candidate
> very soon for UHD 4.5 you could try.
>
> So, I have to use UHD4.4 now.
>
> Kind regards,
> Hongwei
>
>
>
>
>
> On Monday, 11 September 2023 at 22:15:21 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 11/09/2023 12:09, zhou via USRP-users wrote:
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
> *Num underruns detected: =C2=A0819855*
> =C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
>
> Done!
>
>
>
> $ ifconfig
> enp59s0f0np0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.1=C2=A0 netmask 255.255.255=
.0=C2=A0 broadcast 192.168.20.255
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b77a prefixlen 6=
4=C2=A0 scopeid 0x20<link>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7a=C2=A0 txqueuelen 10=
00=C2=A0 (Ethernet)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144837=C2=A0 bytes 10188879710=
0 (101.8 GB)
> */RX errors 0=C2=A0 dropped 2423=C2=A0 overruns 0=C2=A0 frame 0/*
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12311297=C2=A0 bytes 87947193629=
 (87.9 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0 carr=
ier 0=C2=A0 collisions 0
>
> enp59s0f1np1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netmask 255.255.255=
.0=C2=A0 broadcast 192.168.10.255
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f:d2ff:fe57:b77b prefixlen 6=
4=C2=A0 scopeid 0x20<link>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7b=C2=A0 txqueuelen 10=
00=C2=A0 (Ethernet)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 406107=C2=A0 bytes 2296309836 (2=
.2 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns =
0 frame 0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 502690=C2=A0 bytes 3421432091 (3=
.4 GB)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0 carr=
ier 0=C2=A0 collisions 0
>
> Kind regards,
> Hongwei
>
>
There are some validated system configurations listed here:

https://kb.ettus.com/X410#100_Gigabit_Ethernet


--------------1XGEqEvhW4hVFp6EQ3IBrJwg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/09/2023 06:52, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1518816302.133078.1694515928407@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpe08cd28dyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your reply.</di=
v>
        <div dir=3D"ltr" data-setdir=3D"false">The original ring buffer i=
s
          1024 for Tx and Rx. Now I have changed them to 4096. Still see
          overruns and underruns.</div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>Ring parameters for enp59s0f0np0:</div>
            <div>Pre-set maximums:</div>
            <div>RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192<=
/div>
            <div>RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a</div>
            <div>RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a</div>
            <div>TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192<=
/div>
            <div>Current hardware settings:</div>
            <div>RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096<=
/div>
            <div>RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a</div>
            <div>RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a</div>
            <div>TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096<=
/div>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>Ring parameters for enp59s0f1np1:</div>
            <div>Pre-set maximums:</div>
            <div>RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192<=
/div>
            <div>RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a</div>
            <div>RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a</div>
            <div>TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192<=
/div>
            <div>Current hardware settings:</div>
            <div>RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096<=
/div>
            <div>RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/a</div>
            <div>RX Jumbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/a</div>
            <div>TX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096<=
/div>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>Benchmark rate summary:</div>
            <div>=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A012617833=
512</div>
            <div>=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 17321163=
392</div>
            <div>=C2=A0 Num overruns detected:=C2=A0 =C2=A0 112</div>
            <div>=C2=A0 Num transmitted samples:=C2=A0 9159225280</div>
            <div>=C2=A0 Num sequence errors (Tx): 0</div>
            <div>=C2=A0 Num sequence errors (Rx): 0</div>
            <div>=C2=A0 Num underruns detected:=C2=A0 =C2=A0856834</div>
            <div>=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div>=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div>=C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</=
div>
            <div><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I think my computer is
              not fast enough for 500MHz sampling rate. The computer I
              am using is Dell PowerEdge R740, CPU is=C2=A0<span
                style=3D"font-family: Calibri, sans-serif; font-size:
                11pt;">Intel(R) Xeon(R) Bronze 3106 CPU @ 1.70GHz</span><=
span><br>
              </span></div>
            <div dir=3D"ltr" data-setdir=3D"false">What is the recommende=
d
              computer HW configuration?</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Another question is
              UHD4.5. I tried UHD4.5, but there was MPM issue</div>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">
            <div><span style=3D"color: rgb(36, 36, 36); font-family:
                Cascadia Mono, Consolas, ui-monospace, Menlo, Monaco,
                monospace; font-size: 14px;">The MPM software on your
                device is older than the FPGA you're trying to</span><br
                style=3D"color: rgb(36, 36, 36); font-family: Cascadia
                Mono, Consolas, ui-monospace, Menlo, Monaco, monospace;
                font-size: 14px;">
              <span style=3D"color: rgb(36, 36, 36); font-family: Cascadi=
a
                Mono, Consolas, ui-monospace, Menlo, Monaco, monospace;
                font-size: 14px;">use. Because you're using master, they
                haven't published updated</span><br style=3D"color:
                rgb(36, 36, 36); font-family: Cascadia Mono, Consolas,
                ui-monospace, Menlo, Monaco, monospace; font-size:
                14px;">
              <span style=3D"color: rgb(36, 36, 36); font-family: Cascadi=
a
                Mono, Consolas, ui-monospace, Menlo, Monaco, monospace;
                font-size: 14px;">filesystems with the new MPM yet, but
                there will be a release candidate</span><br
                style=3D"color: rgb(36, 36, 36); font-family: Cascadia
                Mono, Consolas, ui-monospace, Menlo, Monaco, monospace;
                font-size: 14px;">
              <span style=3D"color: rgb(36, 36, 36); font-family: Cascadi=
a
                Mono, Consolas, ui-monospace, Menlo, Monaco, monospace;
                font-size: 14px;">very soon for UHD 4.5 you could try.</s=
pan></div>
            <br>
          </div>
          So, I have to use UHD4.4 now.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp51326884yahoo_quoted_5466677158"
        class=3D"ydp51326884yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 11 September 2023 at 22:15:21 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp51326884yiv8403730136">
              <div id=3D"ydp51326884yiv8403730136yqt95490"
                class=3D"ydp51326884yiv8403730136yqt1822100583">
                <div>
                  <div class=3D"ydp51326884yiv8403730136moz-cite-prefix">=
On
                    11/09/2023 12:09, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:13px;"
                    class=3D"ydp51326884yiv8403730136ydpecce4a95yahoo-sty=
le-wrap">
                    <div dir=3D"ltr">Hi all,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I just set up a system with X410=C2=A0=
<span><span
                          style=3D"color:rgb(0, 0,
                          0);font-family:Helvetica Neue, Helvetica,
                          Arial, sans-serif;">USRP. Tried to run a
                          benchmark rate test and saw a lot of errors.
                          Please suggest what could be the reason for
                          the test failure.</span></span></div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:Helvetica Neue, Helvetica,
                          Arial, sans-serif;">=C2=A0</span></span></div>
                    <div dir=3D"ltr">Host is R740 (16 CPU cores) and Linu=
x
                      is Ubuntu 22.04 with low-latency kernel.</div>
                    <div dir=3D"ltr">100G Mellanox ConnectX-6 NIC cards</=
div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">
                      <div>
                        <div>$ sudo
                          /usr/local/lib/uhd/examples/benchmark_rate=C2=A0=
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
                        <div><br clear=3D"none">
                        </div>
                        <div>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                          Boost_107400; DPDK_21.11;
                          UHD_4.4.0.HEAD-0-g5fac246b</div>
                        <div>[00:00:00.000566] Creating the usrp device
                          with:
type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rat=
e=3D500e6...</div>
                        <div>[INFO] [MPMD] Initializing 1 device(s) in
                          parallel with args:
mgmt_addr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,name=
=3Dni-x4xx-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,mast=
er_clock_rate=3D500e6</div>
                        <div>[WARNING] [MPM.RPCServer] A timeout event
                          occured!</div>
                        <div>[INFO] [MPM.PeriphManager] init() called
                          with device args
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
                        <div><br clear=3D"none">
                        </div>
                        <div>[00:00:05.797505591] Setting device
                          timestamp to 0...</div>
                        <div>[WARNING] [0/Radio#0] Requesting invalid
                          sampling rate from device: 10 MHz. Actual rate
                          is: 500 MHz.</div>
                        <div>[WARNING] [MULTI_USRP] Could not set RX
                          rate to 10.000 MHz. Actual rate is 500.000 MHz<=
/div>
                        <div>[WARNING] [0/Radio#0] Requesting invalid
                          sampling rate from device: 10 MHz. Actual rate
                          is: 500 MHz.</div>
                        <div>[WARNING] [MULTI_USRP] Could not set TX
                          rate to 10.000 MHz. Actual rate is 500.000 MHz<=
/div>
                        <div>Setting TX spb to 1984</div>
                        <div>[00:00:05.799789467] Testing receive rate
                          500.000000 Msps on 1 channels</div>
                        <div>[00:00:05.801875415] Testing transmit rate
                          500.000000 Msps on 1 channels</div>
                        <div>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUD[U00=
:00:06.33502762]
                          Detected Rx sequence error.</div>
                        <div>UU[D00:00:06.33952517] Detected Rx sequence
                          error.</div>
                        <div>UUUU[D00:00:06.34387503] Detected Rx
                          sequence error.</div>
                        <div>U[D00:00:06.34802030] Detected Rx sequence
                          error.</div>
                        <div>UUUUU[D00:00:06.35212894] Detected Rx
                          sequence error.</div>
                        <div>U[D00:00:06.35640910] Detected Rx sequence
                          error.</div>
                        <div><br clear=3D"none">
                        </div>
                      </div>
                      <br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">
                      <div>
                        <div>Benchmark rate summary:</div>
                        <div>=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=
=A00</div>
                        <div>=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=
=A0 0</div>
                        <div>=C2=A0 <b><font style=3D"background-color:rg=
b(0,
                              0, 0);" color=3D"#fdf869">Num overruns
                              detected:=C2=A0 =C2=A0 596</font></b></div>
                        <div>=C2=A0 Num transmitted samples:=C2=A0 100465=
01824</div>
                        <div>=C2=A0 Num sequence errors (Tx): 0</div>
                        <div>=C2=A0 Num sequence errors (Rx): 0</div>
                        <div>=C2=A0<b style=3D"background-color:rgb(0, 0,=
 0);"><font
                              color=3D"#fdf869"> Num underruns detected:=C2=
=A0
                              =C2=A0819855</font></b></div>
                        <div>=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0</div>
                        <div>=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0</div>
                        <div>=C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0</div>
                        <div><br clear=3D"none">
                        </div>
                        <div>Done!<br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                      </div>
                      <br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">$ ifconfig</div>
                    <div dir=3D"ltr">
                      <div>
                        <div>enp59s0f0np0:
                          flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&=
gt;=C2=A0
                          mtu 9000</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.=
1=C2=A0 netmask
                          255.255.255.0=C2=A0 broadcast 192.168.20.255</d=
iv>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f=
:d2ff:fe57:b77a=C2=A0
                          prefixlen 64=C2=A0 scopeid 0x20&lt;link&gt;</di=
v>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:5=
7:b7:7a=C2=A0 txqueuelen
                          1000=C2=A0 (Ethernet)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144=
837=C2=A0 bytes
                          101888797100 (101.8 GB)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <b><i><font
                                style=3D"background-color:rgb(0, 0, 0);"
                                color=3D"#fdf869">RX errors 0=C2=A0 dropp=
ed
                                2423=C2=A0 overruns 0=C2=A0 frame 0</font=
></i></b></div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12311=
297=C2=A0 bytes
                          87947193629 (87.9 GB)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0=
 dropped 0 overruns 0=C2=A0
                          carrier 0=C2=A0 collisions 0</div>
                        <div><br clear=3D"none">
                        </div>
                        <div>enp59s0f1np1:
                          flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&=
gt;=C2=A0
                          mtu 9000</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.=
1=C2=A0 netmask
                          255.255.255.0=C2=A0 broadcast 192.168.10.255</d=
iv>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3f=
:d2ff:fe57:b77b=C2=A0
                          prefixlen 64=C2=A0 scopeid 0x20&lt;link&gt;</di=
v>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:5=
7:b7:7b=C2=A0 txqueuelen
                          1000=C2=A0 (Ethernet)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 40610=
7=C2=A0 bytes 2296309836
                          (2.2 GB)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0=
 dropped 0=C2=A0 overruns 0=C2=A0
                          frame 0</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 50269=
0=C2=A0 bytes 3421432091
                          (3.4 GB)</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0=
 dropped 0 overruns 0=C2=A0
                          carrier 0=C2=A0 collisions 0</div>
                        <div><br clear=3D"none">
                        </div>
                      </div>
                      <div dir=3D"ltr">Kind regards,</div>
                      <div dir=3D"ltr">Hongwei</div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    There are some validated system configurations listed here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/X410#=
100_Gigabit_Ethernet">https://kb.ettus.com/X410#100_Gigabit_Ethernet</a><=
br>
    <br>
    <br>
  </body>
</html>

--------------1XGEqEvhW4hVFp6EQ3IBrJwg--

--===============2922667940348896477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2922667940348896477==--
