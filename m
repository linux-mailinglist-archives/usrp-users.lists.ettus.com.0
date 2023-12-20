Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D7A81A18E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 15:55:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41813384E24
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 09:55:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703084147; bh=/W6FNql4TIScEWgFOJJykGU+IFoB5wbGESOo85UsWdU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wu7qxzkucpEiKLn1MhljW0/zRjiADUHsKXZBsl94zvbsCTHNaa4nuL9el1YXWV9j+
	 7iC9JHwOf4SqlixSB88b2+5a3I6liLI6hhQornKMmW0TbZGJf29cJCAkPw8QncwtOs
	 Fa9TVZ9eyztzp83XZA6fD85Fv3d0qwzhUVeRG6kewAwkM1lzNQ8hzBms7zED4Lvfit
	 9pZVMCf9Z92Se+N6wvhzUKUp+b+wGMq/XZWu5O1RSOF3WO6IfbPRjum/JjvRaXBgA6
	 pCJhhr8gq3WotixYYYl6WVhE2EqvJR/kt2Frekk06kzb1DzZlg/ogsk6OSS+9y5xyS
	 +nsYZ5cv+PZDg==
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 681F8384DBC
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 09:55:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BTR8oWAG";
	dkim-atps=neutral
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2cc6121c113so50941721fa.0
        for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 06:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1703084103; x=1703688903; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2JK8ag/BLJSkR7YpvoPa5KQG7YF4uWIaqJB8an2i4Po=;
        b=BTR8oWAGXCt0433yY6hVWfRMo16gOFsH/kiVdCJ89lg0UPGjodn+H3HUDj4KkPsed1
         od7JU5je9EQSHEoyre9SqrrPcbai5G8KwUTqVIxClDUBmbr6CV9GnwmHkAowqIlPboov
         fxcgoHbBShcyJhyNpwEIvWlK76VsUrgvpBNxDzGUt3sy5Z2TdSb/KMqe867YwA+byvsi
         GjC5JiJDYdATlqZ8gMcuRz5uJKzlSduM2KdcmkpVX6Bcd9b/fgt0m1UriQObU1L51+P5
         Ud5mAZDoC2e7QPOYfgHRsCsI88+javSKHnu4pWv16WLV9EE7K9jA36X2fe0/Cdzjvwnt
         o7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703084103; x=1703688903;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2JK8ag/BLJSkR7YpvoPa5KQG7YF4uWIaqJB8an2i4Po=;
        b=ovPCk3fCjrpIHOHuZ/Q9YBL66AVLxOkdjwljhtS4lbh+ZtdtcCDZHTqWTOLrimldZO
         qdLPU8SB+WfqGa+0LvUmHE/3Je4kwrLukHDuNofhz5PokZldUnYdZob5RszhYW5Xcnna
         RoD/RvpDmKXOSiHjFmgnawx0VtTkA5nnuQfXIKB+v/DCasG93fR+qAxViyXnGECNDI6U
         4JQpipXN/w5wbJdn5ZzCT3ld9ee73PRYo6Hcoal7U9miL2vUu03gCDUsu/Ucz8evX/lS
         OVKaWA9e81DFY9rpuAxgRrnk0520d/Uajf3AXpjz6cOQmQY+lVmlxazCnphZneF6bDOW
         M7qg==
X-Gm-Message-State: AOJu0YzamFluPbfZDsLCjWO7iJMmpukPIdbSSoWJeMYKJISA8hSkR6WR
	k5wE2uMcn4nwgesnz6bQ2+k8odJ5aHsOYpkuE3PB3LPowxsOUr4J
X-Google-Smtp-Source: AGHT+IH4fPmwCKTBuAygqoK+w7NiACQ4UJ10iklGrr2jrhlwLrqP47c2z8/8EwO8qFtnAXtByuEVU6LrGhwhlkc8AbY=
X-Received: by 2002:a2e:b74a:0:b0:2cc:6904:b7df with SMTP id
 k10-20020a2eb74a000000b002cc6904b7dfmr1304020ljo.62.1703084103102; Wed, 20
 Dec 2023 06:55:03 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
 <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
 <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
 <CAFPzw1nAhnrzBig47-UCJ3gY7YeTnt2TqsVX3iJtJgv_3sMC6g@mail.gmail.com>
 <CAB__hTTO3kEiC+fWWBNuW_Juo8=MNkD_=KyAOGvz0KVm-gEpKw@mail.gmail.com>
 <CAFPzw1kUjnOR3Dqh+rq+VticBgcysXsoO07EJaETAkTf4=_HAw@mail.gmail.com>
 <CAB__hTT_0Rxab+qCCQ1xEi9FicDa_KMetheOv5LRgwe5iSpwHg@mail.gmail.com> <CAFPzw1mydVXBQOhf=Hzu+9Xzegn3KAVhyfghtwSmfRp61Dov2w@mail.gmail.com>
In-Reply-To: <CAFPzw1mydVXBQOhf=Hzu+9Xzegn3KAVhyfghtwSmfRp61Dov2w@mail.gmail.com>
Date: Wed, 20 Dec 2023 08:54:53 -0600
Message-ID: <CAB__hTT7PfXxMAThAZMN-qdocL-FxPBURz_fQG-mUfOTnZq3Yw@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: F3LU62UADF5JZLDJVMFUC36GCLYRFK4G
X-Message-ID-Hash: F3LU62UADF5JZLDJVMFUC36GCLYRFK4G
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F3LU62UADF5JZLDJVMFUC36GCLYRFK4G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4226601132641547247=="

--===============4226601132641547247==
Content-Type: multipart/alternative; boundary="000000000000fd578c060cf22a0a"

--000000000000fd578c060cf22a0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am not certain, but I believe that the benchmark_rate example in UHD 3.12
does not support "sync-ing" of multiple devices.  The recent versions of
benchmark_rate do support this.  In any case, it is not difficult to add if
you want (configuring all devices to use external Ref/PPS and then
resetting the clocks for all devices at a common PPS). The "sequence"
errors below seem consistent with this hypothesis that the devices are not
sync-ed.

So, it seems that you do not have "performance issues" if you are able to
run 4x100 MS/s in the single device case.

In your original email, you mentioned that you were running
"rx_samples_to_file".  Maybe you could try changing the file to "/dev/null"
(I think that is right) in order to simply "throw away" the received
samples.  Or, you could just modify the source code to skip the file
writing. This might let you know if the file writing is causing havoc.
Rob

On Wed, Dec 20, 2023 at 6:41=E2=80=AFAM Anabel Almodovar <anabel.almodovar@=
gmail.com>
wrote:

> When I run the benchmark_rate sometimes work, sometimes no. With 4
> channels there is no problem.  This is one of the error:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *rs3_lab@RS3-lab:~/workarea-uhd/uhd/host/examples/build$ sudo
> ./benchmark_rate
> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.16=
8.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
> --rx_subdev=3D"A:0 A:1 B:0 B:1" --rx_rate 100e6 --ref=3D"external"
> --pps=3D"external" --channels=3D"0,1,2,3,4,5,6,7"[INFO] [UHD] linux; GNU =
C++
> version 5.4.0 20160609; Boost_105800;
> UHD_3.12.0.HEAD-0-gec786351[00:00:00.000016] Creating the usrp device wit=
h:
> addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,sec=
ond_addr1=3D192.168.30.2,recv_buff_size=3D900000000...[INFO]
> [X300] X300 initialization sequence...[INFO] [X300] Maximum frame size:
> 8000 bytes.[INFO] [X300] Maximum frame size: 8000 bytes.[INFO] [X300]
> Maximum frame size: 8000 bytes.[INFO] [X300] Maximum frame size: 8000
> bytes.[INFO] [X300] Radio 1x clock: 200 MHz[INFO] [X300] Radio 1x clock:
> 200 MHz[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1292
> MB/s)[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1308 MB/s)[INFO]
> [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)[INFO]
> [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)[INFO]
> [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)[INFO]
> [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)[INFO]
> [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)[INFO]
> [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)[WARNING=
]
> [X300] Cannot update master clock rate! X300 Series does not allow changi=
ng
> the clock rate during runtime.[INFO] [GPS] No GPSDO found[INFO]
> [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)[INF=
O]
> [1/DmaFIFO_0] BIST passed (Throughput: 1316 MB/s)[INFO] [1/DmaFIFO_0] BIS=
T
> passed (Throughput: 1315 MB/s)[INFO] [1/Radio_0] Initializing block contr=
ol
> (NOC ID: 0x12AD100000000001)[INFO] [1/Radio_1] Initializing block control
> (NOC ID: 0x12AD100000000001)[INFO] [1/DDC_0] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [1/DDC_1] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [1/DUC_0] Initializing block control
> (NOC ID: 0xD0C0000000000000)[INFO] [1/DUC_1] Initializing block control
> (NOC ID: 0xD0C0000000000000)[WARNING] [X300] Cannot update master clock
> rate! X300 Series does not allow changing the clock rate during
> runtime.[WARNING] [X300 RADIO] Requesting invalid sampling rate from
> device: 200 MHz. Actual rate is: 100 MHz.[WARNING] [X300 RADIO] Requestin=
g
> invalid sampling rate from device: 200 MHz. Actual rate is: 100
> MHz.[WARNING] [X300 RADIO] Requesting invalid sampling rate from device:
> 200 MHz. Actual rate is: 100 MHz.[WARNING] [X300 RADIO] Requesting invali=
d
> sampling rate from device: 200 MHz. Actual rate is: 100 MHz.Using Device:
> Multi USRP:  Device: X-Series Device  Mboard 0: X310  Mboard 1: X310  RX
> Channel: 0    RX DSP: 0    RX Dboard: A    RX Subdev: TwinRX RX0  RX
> Channel: 1    RX DSP: 1    RX Dboard: A    RX Subdev: TwinRX RX1  RX
> Channel: 2    RX DSP: 0    RX Dboard: B    RX Subdev: TwinRX RX0  RX
> Channel: 3    RX DSP: 1    RX Dboard: B    RX Subdev: TwinRX RX1  RX
> Channel: 4    RX DSP: 0    RX Dboard: A    RX Subdev: TwinRX RX0  RX
> Channel: 5    RX DSP: 1    RX Dboard: A    RX Subdev: TwinRX RX1  RX
> Channel: 6    RX DSP: 0    RX Dboard: B    RX Subdev: TwinRX RX0  RX
> Channel: 7    RX DSP: 1    RX Dboard: B    RX Subdev: TwinRX RX1  TX
> Channel: 0    TX DSP: 0    TX Dboard: A    TX Subdev: Unknown (0xffff) - =
0
> TX Channel: 1    TX DSP: 0    TX Dboard: B    TX Subdev: Unknown (0xffff)=
 -
> 0  TX Channel: 2    TX DSP: 0    TX Dboard: A    TX Subdev: Unknown
> (0xffff) - 0  TX Channel: 3    TX DSP: 0    TX Dboard: B    TX Subdev:
> Unknown (0xffff) - 0Now confirming lock on clock
> signals...[00:00:04.509398] Setting device timestamp to 0...[INFO]
> [MULTI_USRP]     1) catch time transition at pps edge[INFO] [MULTI_USRP]
>   2) set times next pps (synchronously)[00:00:06.357833] Testing receive
> rate 100.000000 Msps on 8 channelsD[00:00:06.408574] Detected Rx sequence
> error.D[00:00:06.427168] Detected Rx sequence error.[00:00:06.532780]
> Receiver error: ERROR_CODE_TIMEOUT, continuing...[00:00:06.632926] Receiv=
er
> error: ERROR_CODE_TIMEOUT, continuing...[00:00:06.733147] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:06.833421] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:06.933685] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.033952] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.134184] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.234537] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.334828] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.435189] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.535456] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.635749] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[ERROR] [X300] 192.168.40.2
> <http://192.168.40.2>: x300 fw communication failure #1EnvironmentError:
> IOError: x300 fw poke32 - reply timed out[00:00:07.736035] Receiver error=
:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.836326] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:07.936631] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.036924] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.137192] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.237608] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.337885] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.438185] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.538479] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.638731] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[ERROR] [X300] 192.168.40.2
> <http://192.168.40.2>: x300 fw communication failure #2EnvironmentError:
> IOError: x300 fw poke32 - reply timed out[00:00:08.738960] Receiver error=
:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.839209] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:08.939471] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.039712] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.139951] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.240207] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.340462] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.440678] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.540942] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:09.641176] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[ERROR] [X300] 192.168.40.2
> <http://192.168.40.2>: x300 fw communication failure #3EnvironmentError:
> IOError: x300 fw poke32 - reply timed out[ERROR] [UHD] An unexpected
> exception was caught in a task loop.The task loop will now exit, things m=
ay
> not work.EnvironmentError: IOError: 192.168.40.2 <http://192.168.40.2>:
> x300 fw communication failure #3EnvironmentError: IOError: x300 fw poke32=
 -
> reply timed out[00:00:09.741400] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:09.841666] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[ERROR] [STREAMER] The receive packet handler failed to
> time-align packets. 1002 received packets were processed by the handler.
> However, a timestamp match could not be determined.[00:00:11.039474]
> Timestamp after overrun recovery ahead of error timestamp! Unable to
> calculate number of dropped samples.(Delta: -14354204
> ticks)[D00:00:11.039576] Detected Rx sequence error.O[00:00:11.282342]
> Receiver error: ERROR_CODE_TIMEOUT, continuing...D[00:00:11.282549]
> Detected Rx sequence error.O[00:00:11.533164] Receiver error:
> ERROR_CODE_TIMEOUT, continuing...[00:00:11.533285] Detected Rx sequence
> error.DO[00:00:11.777357] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:11.777444] Detected Rx sequence
> error.DO[00:00:12.024195] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.024298D] Detected Rx sequence
> error.OO[00:00:12.352749] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.452949] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.553142] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.653400] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.753649] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.853960] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:12.954233] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.054580] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.154806] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.255107] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.355408] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.455681] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.555943] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.656214] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.756477] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:13.856742] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...O[00:00:14.813040] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...D[00:00:14.813167] Detected Rx sequence
> error.O[00:00:15.039704] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...D[00:00:15.039807] Detected Rx sequence
> error.O[00:00:15.295388] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.395547] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.495668] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.595768] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.695879] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.795982] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.896079] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:15.996190] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:16.096293] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:16.196395] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:16.296500] Receiver error: ERROR_CODE_TIMEOUT,
> continuing...[00:00:17.096016] Benchmark complete.Benchmark rate summary:
> Num received samples:     14802336  Num dropped samples:      31269466  N=
um
> overruns detected:    9  Num transmitted samples:  0  Num sequence errors
> (Tx): 0  Num sequence errors (Rx): 9  Num underruns detected:   0  Num la=
te
> commands:        0  Num timeouts (Tx):        0  Num timeouts (Rx):
>  67Done!*
>
> And this is other:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *rs3_lab@RS3-lab:~/workarea-uhd/uhd/host/examples/build$ sudo
> ./benchmark_rate
> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.16=
8.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
> --rx_subdev=3D"A:0 A:1 B:0 B:1" --rx_rate 100e6 --ref=3D"external"
> --pps=3D"external" --channels=3D"0,1,2,3,4,5,6,7"[INFO] [UHD] linux; GNU =
C++
> version 5.4.0 20160609; Boost_105800;
> UHD_3.12.0.HEAD-0-gec786351[00:00:00.000014] Creating the usrp device wit=
h:
> addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,sec=
ond_addr1=3D192.168.30.2,recv_buff_size=3D900000000...[INFO]
> [X300] X300 initialization sequence...[INFO] [X300] Maximum frame size:
> 8000 bytes.[INFO] [X300] Maximum frame size: 8000 bytes.[INFO] [X300]
> Maximum frame size: 8000 bytes.[INFO] [X300] Maximum frame size: 8000
> bytes.[INFO] [X300] Radio 1x clock: 200 MHz[INFO] [0/DmaFIFO_0]
> Initializing block control (NOC ID: 0xF1F0D00000000000)[INFO] [X300] Radi=
o
> 1x clock: 200 MHz[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317
> MB/s)[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)[INFO]
> [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)[INF=
O]
> [1/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)[INFO] [1/DmaFIFO_0] BIS=
T
> passed (Throughput: 1301 MB/s)[INFO] [0/Radio_0] Initializing block contr=
ol
> (NOC ID: 0x12AD100000000001)[INFO] [1/Radio_0] Initializing block control
> (NOC ID: 0x12AD100000000001)[INFO] [0/Radio_1] Initializing block control
> (NOC ID: 0x12AD100000000001)[INFO] [1/Radio_1] Initializing block control
> (NOC ID: 0x12AD100000000001)[INFO] [0/DDC_0] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [1/DDC_0] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [0/DDC_1] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [1/DDC_1] Initializing block control
> (NOC ID: 0xDDC0000000000000)[INFO] [0/DUC_0] Initializing block control
> (NOC ID: 0xD0C0000000000000)[INFO] [1/DUC_0] Initializing block control
> (NOC ID: 0xD0C0000000000000)[INFO] [0/DUC_1] Initializing block control
> (NOC ID: 0xD0C0000000000000)[INFO] [1/DUC_1] Initializing block control
> (NOC ID: 0xD0C0000000000000)[WARNING] [X300] Cannot update master clock
> rate! X300 Series does not allow changing the clock rate during
> runtime.[WARNING] [X300] Cannot update master clock rate! X300 Series doe=
s
> not allow changing the clock rate during runtime.[WARNING] [X300 RADIO]
> Requesting invalid sampling rate from device: 200 MHz. Actual rate is: 10=
0
> MHz.[WARNING] [X300 RADIO] Requesting invalid sampling rate from device:
> 200 MHz. Actual rate is: 100 MHz.[WARNING] [X300 RADIO] Requesting invali=
d
> sampling rate from device: 200 MHz. Actual rate is: 100 MHz.[WARNING] [X3=
00
> RADIO] Requesting invalid sampling rate from device: 200 MHz. Actual rate
> is: 100 MHz.Using Device: Multi USRP:  Device: X-Series Device  Mboard 0:
> X310  Mboard 1: X310  RX Channel: 0    RX DSP: 0    RX Dboard: A    RX
> Subdev: TwinRX RX0  RX Channel: 1    RX DSP: 1    RX Dboard: A    RX
> Subdev: TwinRX RX1  RX Channel: 2    RX DSP: 0    RX Dboard: B    RX
> Subdev: TwinRX RX0  RX Channel: 3    RX DSP: 1    RX Dboard: B    RX
> Subdev: TwinRX RX1  RX Channel: 4    RX DSP: 0    RX Dboard: A    RX
> Subdev: TwinRX RX0  RX Channel: 5    RX DSP: 1    RX Dboard: A    RX
> Subdev: TwinRX RX1  RX Channel: 6    RX DSP: 0    RX Dboard: B    RX
> Subdev: TwinRX RX0  RX Channel: 7    RX DSP: 1    RX Dboard: B    RX
> Subdev: TwinRX RX1  TX Channel: 0    TX DSP: 0    TX Dboard: A    TX
> Subdev: Unknown (0xffff) - 0  TX Channel: 1    TX DSP: 0    TX Dboard: B
> TX Subdev: Unknown (0xffff) - 0  TX Channel: 2    TX DSP: 0    TX Dboard:
> A    TX Subdev: Unknown (0xffff) - 0  TX Channel: 3    TX DSP: 0    TX
> Dboard: B    TX Subdev: Unknown (0xffff) - 0Now confirming lock on clock
> signals...[00:00:03.698257] Setting device timestamp to 0...[INFO]
> [MULTI_USRP]     1) catch time transition at pps edge[INFO] [MULTI_USRP]
>   2) set times next pps (synchronously)[00:00:04.914946] Testing receive
> rate 100.000000 Msps on 8 channelsD[00:00:04.985150] Detected Rx sequence
> error.D[00:00:04.985335] Detected Rx sequence error.D[00:00:04.985416]
> Detected Rx sequence error.D[00:00:04.985481] Detected Rx sequence
> error.D[00:00:04.985547] Detected Rx sequence error.D[00:00:04.985627]
> Detected Rx sequence error.D[00:00:04.985698] Detected Rx sequence
> error.[00:00:04.985783] Detected Rx sequence error.DD[00:00:04.985837]
> Detected Rx sequence error.D[00:00:04.985890] Detected Rx sequence
> error.D[00:00:04.985936] Detected Rx sequence error.D[00:00:04.985990]
> Detected Rx sequence error.D[00:00:04.986057] Detected Rx sequence
> error.D[00:00:04.986136] Detected Rx sequence error.[00:00:04.986233]
> Detected Rx sequence error.D[00:00:04.986316] Timestamp after overrun
> recovery ahead of error timestamp! Unable to calculate number of dropped
> samples.(Delta: -9980 ticks)[D00:00:04.986366] Detected Rx sequence
> error.[00:00:04.986424] Detected Rx sequence error.D[00:00:04.986491]
> Detected Rx sequence error.D[00:00:04.986595] Detected Rx sequence
> error.DD[00:00:04.986838] Detected Rx sequence error.[00:00:04.987167]
> Detected Rx sequence error.D[00:00:04.987334] Detected Rx sequence
> error.DD[00:00:04.987400] Detected Rx sequence error.D[00:00:04.992004]
> Detected Rx sequence error.[00:00:04.992086] Detected Rx sequence
> error.DD[00:00:04.992132] Detected Rx sequence error.D[00:00:04.992183]
> Detected Rx sequence error.D[00:00:04.992231] Detected Rx sequence
> error.D[00:00:04.992279] Detected Rx sequence error.[00:00:04.992335]
> Detected Rx sequence error.D[00:00:04.992392] Detected Rx sequence
> error.D[00:00:04.992453] Detected Rx sequence error.D[00:00:04.992506]
> Detected Rx sequence error.DD[00:00:04.992545] Detected Rx sequence
> error.[00:00:04.992592] Detected Rx sequence error.D[00:00:04.992657]
> Detected Rx sequence error.DD[00:00:04.992711] Detected Rx sequence
> error.[00:00:04.992763] Detected Rx sequence error.D[00:00:04.992834D]
> Detected Rx sequence error.[00:00:04.992889] Detected Rx sequence
> error.D[00:00:04.992947] Detected Rx sequence error.D[00:00:04.993006]
> Detected Rx sequence error.D[00:00:04.993071] Detected Rx sequence
> error.DD[00:00:04.993121] Detected Rx sequence error.[00:00:04.993173]
> Detected Rx sequence error.DD[00:00:04.993213] Detected Rx sequence
> error.[00:00:04.993254D] Detected Rx sequence error.[00:00:04.993310]
> Detected Rx sequence error.D[00:00:04.993366] Detected Rx sequence
> error.DD[00:00:04.993411] Detected Rx sequence error.[00:00:04.993465]
> Detected Rx sequence error.D[00:00:04.993521] Detected Rx sequence
> error.DD[00:00:04.993567] Detected Rx sequence error.D[00:00:04.993611]
> Detected Rx sequence error.[00:00:04.993663D] Detected Rx sequence
> error.[00:00:04.993713] Detected Rx sequence error.DD[00:00:04.993752]
> Detected Rx sequence error.[00:00:04.993803] Detected Rx sequence
> error.D[00:00:04.993859] Detected Rx sequence error.D[00:00:04.993919D]
> Detected Rx sequence error.[00:00:04.993977] Detected Rx sequence
> error.D[00:00:04.994022] Detected Rx sequence error.D[00:00:04.994070D]
> Detected Rx sequence error.[00:00:04.994122] Detected Rx sequence
> error.D[00:00:04.994168] Detected Rx sequence error.DD[00:00:04.994218]
> Detected Rx sequence error.[00:00:04.994250] Detected Rx sequence
> error.D[00:00:08.051291] Detected Rx sequence error.D[00:00:08.051352]
> Detected Rx sequence error.D[00:00:08.051403] Detected Rx sequence
> error.D[00:00:08.051453] Detected Rx sequence error.DD[00:00:09.406237]
> Detected Rx sequence error.[00:00:09.406340] Detected Rx sequence
> error.D[00:00:09.406379] Detected Rx sequence error.D[00:00:09.406422]
> Detected Rx sequence error.DD[00:00:09.406477] Detected Rx sequence
> error.[00:00:09.406525] Detected Rx sequence error.D[00:00:09.406541]
> Detected Rx sequence error.D[00:00:09.406577] Detected Rx sequence
> error.D[00:00:09.406623] Timestamp after overrun recovery ahead of error
> timestamp! Unable to calculate number of dropped samples.(Delta: -1996
> ticks)[00:00:15.715955] Benchmark complete.Benchmark rate summary:  Num
> received samples:     7958249432  Num dropped samples:      49903  Num
> overruns detected:    0  Num transmitted samples:  0  Num sequence errors
> (Tx): 0  Num sequence errors (Rx): 79  Num underruns detected:   0  Num
> late commands:        0  Num timeouts (Tx):        0  Num timeouts (Rx):
>      0Done!*
>
>
>
> El lun, 18 dic 2023 a las 19:10, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> How about if you use an unmodified "benchmark_rate"?
>>
>> On Mon, Dec 18, 2023 at 11:43=E2=80=AFAM Anabel Almodovar <
>> anabel.almodovar@gmail.com> wrote:
>>
>>> Even with a single card I still get the same error.
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *Creating the usrp device with:
>>> addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,recv_buff_size=3D90000=
0000...Creating
>>> the subdevice with: A:0 A:1 B:0 B:1...Using Device: Single USRP:  Devic=
e:
>>> X-Series Device  Mboard 0: X310  RX Channel: 0    RX DSP: 0    RX Dboar=
d:
>>> A    RX Subdev: TwinRX RX0  RX Channel: 1    RX DSP: 1    RX Dboard: A
>>> RX Subdev: TwinRX RX1  RX Channel: 2    RX DSP: 0    RX Dboard: B    RX
>>> Subdev: TwinRX RX0  RX Channel: 3    RX DSP: 1    RX Dboard: B    RX
>>> Subdev: TwinRX RX1  TX Channel: 0    TX DSP: 0    TX Dboard: A    TX
>>> Subdev: Unknown (0xffff) - 0  TX Channel: 1    TX DSP: 0    TX Dboard: =
B
>>> TX Subdev: Unknown (0xffff) - 0N=C3=BAmero de canales detectados: 4N=C3=
=BAmero de
>>> tarjetas detectadas: 1Actual RX Rate: 50.000000 Msps...Actual Acquisiti=
on
>>> Time to: 0.000000 Seconds.Actual RX Freq: 800.000000 MHz...Actual RX Ga=
in:
>>> 5.000000 dB...Actual RX Bandwidth: 50.000000 MHz...Setting LO
>>> source...[INFO] [MULTI_USRP]     1) catch time transition at pps edge[I=
NFO]
>>> [MULTI_USRP]     2) set times next pps (synchronously)Press Ctrl + C to
>>> stop streaming...STAR SAMPLING ...D[ERROR] [STREAMER] The receive packe=
t
>>> handler failed to time-align packets. 1002 received packets were proces=
sed
>>> by the handler. However, a timestamp match could not be determined.D[ER=
ROR]
>>> [STREAMER] The receive packet handler failed to time-align packets. 100=
2
>>> received packets were processed by the handler. However, a timestamp ma=
tch
>>> could not be determined.^CReceived 199995208 samples in 6.703929
>>> seconds29.8325 MspsDone!*
>>>
>>>
>>> El lun, 18 dic 2023 a las 17:13, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> Several comments:
>>>>
>>>>    - It seems like multiple things are going on.  You mentioned the
>>>>    original "failed to time align" error and below you mentioned 'O' a=
nd 'D'.
>>>>       - The time-align error I did not expect had anything to do with
>>>>       "performance". This seemed to me that the first packet arriving =
from device
>>>>       1 had a different time stamp than the first packet arriving from=
 device 2.
>>>>       Now, I'm not so sure
>>>>       - But, the 'O' and 'D' are often related to "performance".
>>>>       Overflow 'O' occurs when the 'Radio' block has A/D samples that =
it needs to
>>>>       put in a FIFO but the FIFO is full because it is not being empti=
ed fast
>>>>       enough (presumably by the host PC).  A dropped packet (or sequen=
ce error)
>>>>       'D' occurs when the host PC detects that the incoming packets ar=
e not in
>>>>       sequential order. This can occur if the host PC Ethernet handlin=
g becomes
>>>>       overwhelmed and simply discards a set of incoming packets for a =
time
>>>>       period. Both 'O' and 'D' can imply that the host PC is not keepi=
ng up with
>>>>       incoming data
>>>>    - In any case, you may want to simplify the problem by dropping
>>>>    from two devices to one device.  See if you can eliminate some or a=
ll of
>>>>    these problems when using only 4 channels.
>>>>    - If you drop to one device, you can use benchmark_rate to test
>>>>    performance.  If you do not use "second_addr", you should be able t=
o get
>>>>    4x50 MS/s.  If you use "second_addr", you should be able to get 4x1=
00 MS/s.
>>>>    - Regarding your needed changes to "rx_samples_to_file", I guess I
>>>>    was thinking about the latest version which supports multiple chann=
els.
>>>>    Perhaps UHD 3.12 has a version of this example that only supports a=
 single
>>>>    channel.  You could compare your version to the latest version (say=
, UHD
>>>>    4.6) to see the improvements to this example.
>>>>
>>>>
>>>> On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar <
>>>> anabel.almodovar@gmail.com> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> Thanks for the suggestions. I have tried deleting the LO sharing, and
>>>>> nothing changes. Then removing the second addr, and that leads me to =
get
>>>>> 'Ds' in addition to the error already mentioned, as it is not able to
>>>>> handle that much information. Although I don't quite understand the
>>>>> difference between 'O' and 'D'.
>>>>>
>>>>> From what I understand the program is set up for a single channel, so
>>>>> I need to modify it to get more than one.
>>>>>
>>>>> Thank you in advance.
>>>>>
>>>>> Regards,
>>>>> Anabel
>>>>>
>>>>> El vie, 15 dic 2023 a las 15:39, Rob Kossler (<rkossler@nd.edu>)
>>>>> escribi=C3=B3:
>>>>>
>>>>>> Hmmm. I'm not sure. Here are a few comments:
>>>>>>
>>>>>>    - Try running without "second_addr".  I realize that you will
>>>>>>    need it for full rate (4 x 100MS/s for each X310), but you could =
run at 50
>>>>>>    MS/s without second_addr
>>>>>>    - Try running without shared LO. I don't think you would need to
>>>>>>    physically change any sharing cables.
>>>>>>    - I am curious why you needed to modify the streamer, pointer
>>>>>>    buffer and file writing.  I would expect that this would scale wi=
th the
>>>>>>    number of channels such that you didn't need to modify any code i=
n this area
>>>>>>    - If you were using a more recent UHD, I would recommend
>>>>>>    switching to the example benchmark_rate which natively supports e=
xternal
>>>>>>    PPS and multiple devices.  I noticed that even the most
>>>>>>    recent rx_samples_to_file does not support external PPS (without =
modifying
>>>>>>    the code)
>>>>>>    - I know you mentioned you were unable to upgrade because of
>>>>>>    compatibility constraints.  But, even if you cannot upgrade the O=
S, would
>>>>>>    you be able to install a new UHD - perhaps in a local folder that=
 did not
>>>>>>    interfere with the system-wide UHD 3.12 installation.  I typicall=
y have
>>>>>>    multiple UHD versions on my system and switch among them by "sour=
cing" a
>>>>>>    given setup file as needed.
>>>>>>
>>>>>>
>>>>>> On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>
>>>>>>> Dear Rob,
>>>>>>>
>>>>>>> Yes, I use an external clock configuration.
>>>>>>>
>>>>>>> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(100=
0
>>>>>>> * setup_time) );*
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> *usrp->set_clock_source("external",
>>>>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);    usrp->set_time_source("exte=
rnal",
>>>>>>> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd:=
:time_spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>>>>>>>
>>>>>>> I have only modified the code to get 8 channels and LO sharing. I
>>>>>>> want to get a continuous acquisition setup without losing samples. =
But I am
>>>>>>> starting with something basic at the moment. Any suggestions are we=
lcome.
>>>>>>> So I've modified the streamer, the pointer buffer, and added writin=
g files.
>>>>>>>
>>>>>>> my line is
>>>>>>> *$sudo ./rx_samples_to_file_v1
>>>>>>> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D=
192.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
>>>>>>> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 8=
00e6 --rate
>>>>>>> 25e6 --bw 25e6 --gain 70 *
>>>>>>>
>>>>>>> Regards,
>>>>>>>
>>>>>>> *Anabel*
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>)
>>>>>>> escribi=C3=B3:
>>>>>>>
>>>>>>>> Hi Anabel,
>>>>>>>> In my opinion, the error you are experiencing has nothing to do
>>>>>>>> with streaming performance settings (such as "performance" governo=
r,
>>>>>>>> network descriptors, MTU size, etc). The issue seems to be that th=
e two
>>>>>>>> X310 devices do not have synchronized clocks. In addition to the p=
hysical
>>>>>>>> synchronization using OctoClock, you must also configure each devi=
ce to use
>>>>>>>> external synchronization and you must tell each device to reset it=
s FPGA
>>>>>>>> clock count at a common PPS. The typical sequence is: (1) wait for=
 a PPS to
>>>>>>>> occur (by querying either device), (2) tell each device to reset i=
ts FPGA
>>>>>>>> clock at the subsequent PPS (this step must complete before the ne=
xt PPS
>>>>>>>> arrives).
>>>>>>>>
>>>>>>>> You mentioned that you are using rx_samples_to_file. Did you modif=
y
>>>>>>>> it in any way?  What is your exact command line with all parameter=
s?
>>>>>>>> Rob
>>>>>>>>
>>>>>>>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>>>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> Dear Rob
>>>>>>>>>
>>>>>>>>> Thank you for your answer.
>>>>>>>>> I make use of the CDA-2990 octoclock as a source of
>>>>>>>>> synchronization between both USRPs, in addition to local oscillat=
or
>>>>>>>>> sharing. I use dual 10GigEth connections and a MTU of 9000 to con=
nect the
>>>>>>>>> USRPs to the PC.
>>>>>>>>>
>>>>>>>>> Due to various compatibility issues I am unable to upgrade the
>>>>>>>>> system.
>>>>>>>>>
>>>>>>>>> When I work with a sample rate of 10MSps I don't get problems but
>>>>>>>>> when I increase to 25MSps I start to get the error. I need them w=
orking
>>>>>>>>> with 100MSps. I have tried changing the CPU governor to "performa=
nce" to
>>>>>>>>> get the maximum working frequency (*sudo cpupower frequency-set
>>>>>>>>> --governor performance*), as well as changing the number of
>>>>>>>>> network interface descriptors to maximum (*sudo ethtool -G
>>>>>>>>> <interface> tx <max> rx <max>*), or increasing the dirty memory
>>>>>>>>> buffer (*sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w
>>>>>>>>> vm.dirty_background_ratio=3D50*), but I still get the same proble=
m.
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Anabel
>>>>>>>>>
>>>>>>>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>>>>>>>> escribi=C3=B3:
>>>>>>>>>
>>>>>>>>>> Hi Anabel,
>>>>>>>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>>>>>>>> external PPS source and are you configuring both devices to use =
this
>>>>>>>>>> external source?
>>>>>>>>>>
>>>>>>>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>>>>>>>> versions? There aren't many user's that are using UHD 3.12 so if=
 you have
>>>>>>>>>> issues, it will be hard to get support.
>>>>>>>>>> Rob
>>>>>>>>>>
>>>>>>>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>>>>>>>> anabel.almodovar@gmail.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Dear all,
>>>>>>>>>>>
>>>>>>>>>>> I am trying to make an acquisition with two X310 equipped with
>>>>>>>>>>> two TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My=
 PC contains
>>>>>>>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =
=C3=97 40 and a 4TB
>>>>>>>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to=
 get 8
>>>>>>>>>>> channels and I get the following error:
>>>>>>>>>>>
>>>>>>>>>>> *D*
>>>>>>>>>>> *[ERROR] [STREAMER] The receive packet handler failed to
>>>>>>>>>>> time-align packets. 1002 received packets were processed by the=
 handler.
>>>>>>>>>>> However, a timestamp match could not be determined.*
>>>>>>>>>>> *Timeout while streaming*
>>>>>>>>>>>
>>>>>>>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>>>>>>>> communication failure #1*
>>>>>>>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>>>>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task
>>>>>>>>>>> loop.The task loop will now exit, things may not work.Assertion=
Error:
>>>>>>>>>>> reply.sequence =3D=3D request.sequence*
>>>>>>>>>>> *  in virtual void
>>>>>>>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uin=
t32_t)*
>>>>>>>>>>> *  at
>>>>>>>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.=
cpp:135*
>>>>>>>>>>>
>>>>>>>>>>> I don't know how to solve the Timeout problem, I have tried to
>>>>>>>>>>> start the acquisition 1.1 sg in time. But it didn't work.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> *        stream_cmd.stream_now =3D false;
>>>>>>>>>>> stream_cmd.time_spec =3D usrp->get_time_last_pps(0)+1.1;*
>>>>>>>>>>>
>>>>>>>>>>> What is the problem and how can I fix it?
>>>>>>>>>>>
>>>>>>>>>>> Regards,
>>>>>>>>>>> Anabel
>>>>>>>>>>>
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>>>>>>>>>>>
>>>>>>>>>>

--000000000000fd578c060cf22a0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div>I am not certain, but I believe tha=
t the benchmark_rate example in UHD 3.12 does not support &quot;sync-ing&qu=
ot; of multiple devices.=C2=A0 The recent versions of benchmark_rate do sup=
port this.=C2=A0 In any case, it is not difficult to add if you want (confi=
guring all devices to use external Ref/PPS and then resetting the clocks fo=
r all devices at a common PPS). The &quot;sequence&quot; errors below seem =
consistent with this hypothesis that the devices are not sync-ed.<div><br><=
/div><div>So, it seems that you do not have &quot;performance issues&quot; =
if you are able to run 4x100 MS/s in the single device case.</div><div><br>=
</div><div>In your original email, you mentioned that you were running &quo=
t;rx_samples_to_file&quot;.=C2=A0 Maybe you could try changing the file to =
&quot;/dev/null&quot; (I think that is right) in order to simply &quot;thro=
w away&quot; the received samples.=C2=A0 Or, you could just modify the sour=
ce code to skip the file writing. This might let you know if the file writi=
ng is causing havoc.</div><div>Rob<br><div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 20, 2023 at 6:41=E2=80=AFA=
M Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com">anabel=
.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>When I run the benchmark_rate som=
etimes work, sometimes no. With 4 channels there is no problem.=C2=A0 This =
is one of the error:</div><div><br></div><div><i><b>rs3_lab@RS3-lab:~/worka=
rea-uhd/uhd/host/examples/build$ sudo ./benchmark_rate --args=3D&quot;addr0=
=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_add=
r1=3D192.168.30.2,recv_buff_size=3D900000000&quot; --rx_subdev=3D&quot;A:0 =
A:1 B:0 B:1&quot; --rx_rate 100e6 --ref=3D&quot;external&quot; --pps=3D&quo=
t;external&quot; --channels=3D&quot;0,1,2,3,4,5,6,7&quot;<br><br>[INFO] [UH=
D] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.12.0.HEAD-0-g=
ec786351<br>[00:00:00.000016] Creating the usrp device with: addr0=3D192.16=
8.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_addr1=3D192.=
168.30.2,recv_buff_size=3D900000000...<br>[INFO] [X300] X300 initialization=
 sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X3=
00] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Maximum frame size: 80=
00 bytes.<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300]=
 Radio 1x clock: 200 MHz<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO]=
 [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[=
INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1292 MB/s)<br>[INFO] [0/DmaFIF=
O_0] BIST passed (Throughput: 1308 MB/s)<br>[INFO] [0/Radio_0] Initializing=
 block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initializ=
ing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initiali=
zing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initial=
izing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initia=
lizing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initi=
alizing block control (NOC ID: 0xD0C0000000000000)<br>[WARNING] [X300] Cann=
ot update master clock rate! X300 Series does not allow changing the clock =
rate during runtime.<br>[INFO] [GPS] No GPSDO found<br>[INFO] [1/DmaFIFO_0]=
 Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [1/DmaFI=
FO_0] BIST passed (Throughput: 1316 MB/s)<br>[INFO] [1/DmaFIFO_0] BIST pass=
ed (Throughput: 1315 MB/s)<br>[INFO] [1/Radio_0] Initializing block control=
 (NOC ID: 0x12AD100000000001)<br>[INFO] [1/Radio_1] Initializing block cont=
rol (NOC ID: 0x12AD100000000001)<br>[INFO] [1/DDC_0] Initializing block con=
trol (NOC ID: 0xDDC0000000000000)<br>[INFO] [1/DDC_1] Initializing block co=
ntrol (NOC ID: 0xDDC0000000000000)<br>[INFO] [1/DUC_0] Initializing block c=
ontrol (NOC ID: 0xD0C0000000000000)<br>[INFO] [1/DUC_1] Initializing block =
control (NOC ID: 0xD0C0000000000000)<br>[WARNING] [X300] Cannot update mast=
er clock rate! X300 Series does not allow changing the clock rate during ru=
ntime.<br>[WARNING] [X300 RADIO] Requesting invalid sampling rate from devi=
ce: 200 MHz. Actual rate is: 100 MHz.<br>[WARNING] [X300 RADIO] Requesting =
invalid sampling rate from device: 200 MHz. Actual rate is: 100 MHz.<br>[WA=
RNING] [X300 RADIO] Requesting invalid sampling rate from device: 200 MHz. =
Actual rate is: 100 MHz.<br>[WARNING] [X300 RADIO] Requesting invalid sampl=
ing rate from device: 200 MHz. Actual rate is: 100 MHz.<br>Using Device: Mu=
lti USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=
=A0 Mboard 1: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=
=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=A0=
 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=
=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=
=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: Twi=
nRX RX0<br>=C2=A0 RX Channel: 3<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0=
 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=A0 RX Channel: =
4<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0=
 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 5<br>=C2=A0 =C2=A0 RX DSP: 1<b=
r>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=
=A0 RX Channel: 6<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<=
br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 7<br>=C2=A0 =
=C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: =
TwinRX RX1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0=
 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=
=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 2<br>=
=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX S=
ubdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP=
: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xff=
ff) - 0<br><br>Now confirming lock on clock signals...<br>[00:00:04.509398]=
 Setting device timestamp to 0...<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) c=
atch time transition at pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) se=
t times next pps (synchronously)<br>[00:00:06.357833] Testing receive rate =
100.000000 Msps on 8 channels<br>D[00:00:06.408574] Detected Rx sequence er=
ror.<br>D[00:00:06.427168] Detected Rx sequence error.<br>[00:00:06.532780]=
 Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:06.632926] Rec=
eiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:06.733147] Receive=
r error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:06.833421] Receiver er=
ror: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:06.933685] Receiver error:=
 ERROR_CODE_TIMEOUT, continuing...<br>[00:00:07.033952] Receiver error: ERR=
OR_CODE_TIMEOUT, continuing...<br>[00:00:07.134184] Receiver error: ERROR_C=
ODE_TIMEOUT, continuing...<br>[00:00:07.234537] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...<br>[00:00:07.334828] Receiver error: ERROR_CODE_TIME=
OUT, continuing...<br>[00:00:07.435189] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...<br>[00:00:07.535456] Receiver error: ERROR_CODE_TIMEOUT, con=
tinuing...<br>[00:00:07.635749] Receiver error: ERROR_CODE_TIMEOUT, continu=
ing...<br>[ERROR] [X300] <a href=3D"http://192.168.40.2" target=3D"_blank">=
192.168.40.2</a>: x300 fw communication failure #1<br>EnvironmentError: IOE=
rror: x300 fw poke32 - reply timed out<br>[00:00:07.736035] Receiver error:=
 ERROR_CODE_TIMEOUT, continuing...<br>[00:00:07.836326] Receiver error: ERR=
OR_CODE_TIMEOUT, continuing...<br>[00:00:07.936631] Receiver error: ERROR_C=
ODE_TIMEOUT, continuing...<br>[00:00:08.036924] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...<br>[00:00:08.137192] Receiver error: ERROR_CODE_TIME=
OUT, continuing...<br>[00:00:08.237608] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...<br>[00:00:08.337885] Receiver error: ERROR_CODE_TIMEOUT, con=
tinuing...<br>[00:00:08.438185] Receiver error: ERROR_CODE_TIMEOUT, continu=
ing...<br>[00:00:08.538479] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..<br>[00:00:08.638731] Receiver error: ERROR_CODE_TIMEOUT, continuing...<b=
r>[ERROR] [X300] <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.=
40.2</a>: x300 fw communication failure #2<br>EnvironmentError: IOError: x3=
00 fw poke32 - reply timed out<br>[00:00:08.738960] Receiver error: ERROR_C=
ODE_TIMEOUT, continuing...<br>[00:00:08.839209] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...<br>[00:00:08.939471] Receiver error: ERROR_CODE_TIME=
OUT, continuing...<br>[00:00:09.039712] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...<br>[00:00:09.139951] Receiver error: ERROR_CODE_TIMEOUT, con=
tinuing...<br>[00:00:09.240207] Receiver error: ERROR_CODE_TIMEOUT, continu=
ing...<br>[00:00:09.340462] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..<br>[00:00:09.440678] Receiver error: ERROR_CODE_TIMEOUT, continuing...<b=
r>[00:00:09.540942] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[0=
0:00:09.641176] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[ERROR=
] [X300] <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.40.2</a>=
: x300 fw communication failure #3<br>EnvironmentError: IOError: x300 fw po=
ke32 - reply timed out<br>[ERROR] [UHD] An unexpected exception was caught =
in a task loop.The task loop will now exit, things may not work.Environment=
Error: IOError: <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.4=
0.2</a>: x300 fw communication failure #3<br>EnvironmentError: IOError: x30=
0 fw poke32 - reply timed out<br>[00:00:09.741400] Receiver error: ERROR_CO=
DE_TIMEOUT, continuing...<br>[00:00:09.841666] Receiver error: ERROR_CODE_T=
IMEOUT, continuing...<br>[ERROR] [STREAMER] The receive packet handler fail=
ed to time-align packets. 1002 received packets were processed by the handl=
er. However, a timestamp match could not be determined.<br>[00:00:11.039474=
] Timestamp after overrun recovery ahead of error timestamp! Unable to calc=
ulate number of dropped samples.(Delta: -14354204 ticks)<br>[D00:00:11.0395=
76] Detected Rx sequence error.<br>O[00:00:11.282342] Receiver error: ERROR=
_CODE_TIMEOUT, continuing...<br>D[00:00:11.282549] Detected Rx sequence err=
or.<br>O[00:00:11.533164] Receiver error: ERROR_CODE_TIMEOUT, continuing...=
<br>[00:00:11.533285] Detected Rx sequence error.<br>DO[00:00:11.777357] Re=
ceiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:11.777444] Detect=
ed Rx sequence error.<br>DO[00:00:12.024195] Receiver error: ERROR_CODE_TIM=
EOUT, continuing...<br>[00:00:12.024298D] Detected Rx sequence error.<br>OO=
[00:00:12.352749] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:=
00:12.452949] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:1=
2.553142] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:12.65=
3400] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:12.753649=
] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:12.853960] Re=
ceiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:12.954233] Receiv=
er error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:13.054580] Receiver e=
rror: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:13.154806] Receiver error=
: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:13.255107] Receiver error: ER=
ROR_CODE_TIMEOUT, continuing...<br>[00:00:13.355408] Receiver error: ERROR_=
CODE_TIMEOUT, continuing...<br>[00:00:13.455681] Receiver error: ERROR_CODE=
_TIMEOUT, continuing...<br>[00:00:13.555943] Receiver error: ERROR_CODE_TIM=
EOUT, continuing...<br>[00:00:13.656214] Receiver error: ERROR_CODE_TIMEOUT=
, continuing...<br>[00:00:13.756477] Receiver error: ERROR_CODE_TIMEOUT, co=
ntinuing...<br>[00:00:13.856742] Receiver error: ERROR_CODE_TIMEOUT, contin=
uing...<br>O[00:00:14.813040] Receiver error: ERROR_CODE_TIMEOUT, continuin=
g...<br>D[00:00:14.813167] Detected Rx sequence error.<br>O[00:00:15.039704=
] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>D[00:00:15.039807] D=
etected Rx sequence error.<br>O[00:00:15.295388] Receiver error: ERROR_CODE=
_TIMEOUT, continuing...<br>[00:00:15.395547] Receiver error: ERROR_CODE_TIM=
EOUT, continuing...<br>[00:00:15.495668] Receiver error: ERROR_CODE_TIMEOUT=
, continuing...<br>[00:00:15.595768] Receiver error: ERROR_CODE_TIMEOUT, co=
ntinuing...<br>[00:00:15.695879] Receiver error: ERROR_CODE_TIMEOUT, contin=
uing...<br>[00:00:15.795982] Receiver error: ERROR_CODE_TIMEOUT, continuing=
...<br>[00:00:15.896079] Receiver error: ERROR_CODE_TIMEOUT, continuing...<=
br>[00:00:15.996190] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[=
00:00:16.096293] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:0=
0:16.196395] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:16=
.296500] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:17.096=
016] Benchmark complete.<br><br><br>Benchmark rate summary:<br>=C2=A0 Num r=
eceived samples: =C2=A0 =C2=A0 14802336<br>=C2=A0 Num dropped samples: =C2=
=A0 =C2=A0 =C2=A031269466<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A09<b=
r>=C2=A0 Num transmitted samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx=
): 0<br>=C2=A0 Num sequence errors (Rx): 9<br>=C2=A0 Num underruns detected=
: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=
=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts =
(Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A067<br><br><br>Done!</b></i><br><br></div><=
div>And this is other:</div><div><br></div><div><i><b>rs3_lab@RS3-lab:~/wor=
karea-uhd/uhd/host/examples/build$ sudo ./benchmark_rate --args=3D&quot;add=
r0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_a=
ddr1=3D192.168.30.2,recv_buff_size=3D900000000&quot; --rx_subdev=3D&quot;A:=
0 A:1 B:0 B:1&quot; --rx_rate 100e6 --ref=3D&quot;external&quot; --pps=3D&q=
uot;external&quot; --channels=3D&quot;0,1,2,3,4,5,6,7&quot;<br><br>[INFO] [=
UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.12.0.HEAD-0=
-gec786351<br>[00:00:00.000014] Creating the usrp device with: addr0=3D192.=
168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_addr1=3D19=
2.168.30.2,recv_buff_size=3D900000000...<br>[INFO] [X300] X300 initializati=
on sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [=
X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Maximum frame size: =
8000 bytes.<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X30=
0] Radio 1x clock: 200 MHz<br>[INFO] [0/DmaFIFO_0] Initializing block contr=
ol (NOC ID: 0xF1F0D00000000000)<br>[INFO] [X300] Radio 1x clock: 200 MHz<br=
>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<br>[INFO] [0/DmaF=
IFO_0] BIST passed (Throughput: 1312 MB/s)<br>[INFO] [1/DmaFIFO_0] Initiali=
zing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [1/DmaFIFO_0] BIS=
T passed (Throughput: 1319 MB/s)<br>[INFO] [1/DmaFIFO_0] BIST passed (Throu=
ghput: 1301 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID:=
 0x12AD100000000001)<br>[INFO] [1/Radio_0] Initializing block control (NOC =
ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initializing block control (N=
OC ID: 0x12AD100000000001)<br>[INFO] [1/Radio_1] Initializing block control=
 (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing block contro=
l (NOC ID: 0xDDC0000000000000)<br>[INFO] [1/DDC_0] Initializing block contr=
ol (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block cont=
rol (NOC ID: 0xDDC0000000000000)<br>[INFO] [1/DDC_1] Initializing block con=
trol (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block co=
ntrol (NOC ID: 0xD0C0000000000000)<br>[INFO] [1/DUC_0] Initializing block c=
ontrol (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block =
control (NOC ID: 0xD0C0000000000000)<br>[INFO] [1/DUC_1] Initializing block=
 control (NOC ID: 0xD0C0000000000000)<br>[WARNING] [X300] Cannot update mas=
ter clock rate! X300 Series does not allow changing the clock rate during r=
untime.<br>[WARNING] [X300] Cannot update master clock rate! X300 Series do=
es not allow changing the clock rate during runtime.<br>[WARNING] [X300 RAD=
IO] Requesting invalid sampling rate from device: 200 MHz. Actual rate is: =
100 MHz.<br>[WARNING] [X300 RADIO] Requesting invalid sampling rate from de=
vice: 200 MHz. Actual rate is: 100 MHz.<br>[WARNING] [X300 RADIO] Requestin=
g invalid sampling rate from device: 200 MHz. Actual rate is: 100 MHz.<br>[=
WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200 MHz=
. Actual rate is: 100 MHz.<br>Using Device: Multi USRP:<br>=C2=A0 Device: X=
-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 Mboard 1: X310<br>=C2=A0 =
RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=
=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=
=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: Twi=
nRX RX1<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0=
 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: =
3<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0=
 RX Subdev: TwinRX RX1<br>=C2=A0 RX Channel: 4<br>=C2=A0 =C2=A0 RX DSP: 0<b=
r>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>=C2=
=A0 RX Channel: 5<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<=
br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=A0 RX Channel: 6<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: =
TwinRX RX0<br>=C2=A0 RX Channel: 7<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=
=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=A0 TX Channe=
l: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=
=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=
=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: Unk=
nown (0xffff) - 0<br>=C2=A0 TX Channel: 2<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=
=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br=
>=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard=
: B<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br><br>Now confirming =
lock on clock signals...<br>[00:00:03.698257] Setting device timestamp to 0=
...<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps ed=
ge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronousl=
y)<br>[00:00:04.914946] Testing receive rate 100.000000 Msps on 8 channels<=
br>D[00:00:04.985150] Detected Rx sequence error.<br>D[00:00:04.985335] Det=
ected Rx sequence error.<br>D[00:00:04.985416] Detected Rx sequence error.<=
br>D[00:00:04.985481] Detected Rx sequence error.<br>D[00:00:04.985547] Det=
ected Rx sequence error.<br>D[00:00:04.985627] Detected Rx sequence error.<=
br>D[00:00:04.985698] Detected Rx sequence error.<br>[00:00:04.985783] Dete=
cted Rx sequence error.<br>DD[00:00:04.985837] Detected Rx sequence error.<=
br>D[00:00:04.985890] Detected Rx sequence error.<br>D[00:00:04.985936] Det=
ected Rx sequence error.<br>D[00:00:04.985990] Detected Rx sequence error.<=
br>D[00:00:04.986057] Detected Rx sequence error.<br>D[00:00:04.986136] Det=
ected Rx sequence error.<br>[00:00:04.986233] Detected Rx sequence error.<b=
r>D[00:00:04.986316] Timestamp after overrun recovery ahead of error timest=
amp! Unable to calculate number of dropped samples.(Delta: -9980 ticks)<br>=
[D00:00:04.986366] Detected Rx sequence error.<br>[00:00:04.986424] Detecte=
d Rx sequence error.<br>D[00:00:04.986491] Detected Rx sequence error.<br>D=
[00:00:04.986595] Detected Rx sequence error.<br>DD[00:00:04.986838] Detect=
ed Rx sequence error.<br>[00:00:04.987167] Detected Rx sequence error.<br>D=
[00:00:04.987334] Detected Rx sequence error.<br>DD[00:00:04.987400] Detect=
ed Rx sequence error.<br>D[00:00:04.992004] Detected Rx sequence error.<br>=
[00:00:04.992086] Detected Rx sequence error.<br>DD[00:00:04.992132] Detect=
ed Rx sequence error.<br>D[00:00:04.992183] Detected Rx sequence error.<br>=
D[00:00:04.992231] Detected Rx sequence error.<br>D[00:00:04.992279] Detect=
ed Rx sequence error.<br>[00:00:04.992335] Detected Rx sequence error.<br>D=
[00:00:04.992392] Detected Rx sequence error.D<br>[00:00:04.992453] Detecte=
d Rx sequence error.<br>D[00:00:04.992506] Detected Rx sequence error.<br>D=
D[00:00:04.992545] Detected Rx sequence error.<br>[00:00:04.992592] Detecte=
d Rx sequence error.D<br>[00:00:04.992657] Detected Rx sequence error.<br>D=
D[00:00:04.992711] Detected Rx sequence error.<br>[00:00:04.992763] Detecte=
d Rx sequence error.D<br>[00:00:04.992834D] Detected Rx sequence error.<br>=
[00:00:04.992889] Detected Rx sequence error.D<br>[00:00:04.992947] Detecte=
d Rx sequence error.<br>D[00:00:04.993006] Detected Rx sequence error.<br>D=
[00:00:04.993071] Detected Rx sequence error.<br>DD[00:00:04.993121] Detect=
ed Rx sequence error.<br>[00:00:04.993173] Detected Rx sequence error.<br>D=
D[00:00:04.993213] Detected Rx sequence error.<br>[00:00:04.993254D] Detect=
ed Rx sequence error.<br>[00:00:04.993310] Detected Rx sequence error.D<br>=
[00:00:04.993366] Detected Rx sequence error.<br>DD[00:00:04.993411] Detect=
ed Rx sequence error.<br>[00:00:04.993465] Detected Rx sequence error.<br>D=
[00:00:04.993521] Detected Rx sequence error.<br>DD[00:00:04.993567] Detect=
ed Rx sequence error.<br>D[00:00:04.993611] Detected Rx sequence error.<br>=
[00:00:04.993663D] Detected Rx sequence error.<br>[00:00:04.993713] Detecte=
d Rx sequence error.<br>DD[00:00:04.993752] Detected Rx sequence error.<br>=
[00:00:04.993803] Detected Rx sequence error.D<br>[00:00:04.993859] Detecte=
d Rx sequence error.<br>D[00:00:04.993919D] Detected Rx sequence error.<br>=
[00:00:04.993977] Detected Rx sequence error.<br>D[00:00:04.994022] Detecte=
d Rx sequence error.<br>D[00:00:04.994070D] Detected Rx sequence error.<br>=
[00:00:04.994122] Detected Rx sequence error.<br>D[00:00:04.994168] Detecte=
d Rx sequence error.<br>DD[00:00:04.994218] Detected Rx sequence error.<br>=
[00:00:04.994250] Detected Rx sequence error.D<br>[00:00:08.051291] Detecte=
d Rx sequence error.<br>D[00:00:08.051352] Detected Rx sequence error.<br>D=
[00:00:08.051403] Detected Rx sequence error.<br>D[00:00:08.051453] Detecte=
d Rx sequence error.<br>DD[00:00:09.406237] Detected Rx sequence error.<br>=
[00:00:09.406340] Detected Rx sequence error.<br>D[00:00:09.406379] Detecte=
d Rx sequence error.<br>D[00:00:09.406422] Detected Rx sequence error.<br>D=
D[00:00:09.406477] Detected Rx sequence error.<br>[00:00:09.406525] Detecte=
d Rx sequence error.<br>D[00:00:09.406541] Detected Rx sequence error.<br>D=
[00:00:09.406577] Detected Rx sequence error.<br>D[00:00:09.406623] Timesta=
mp after overrun recovery ahead of error timestamp! Unable to calculate num=
ber of dropped samples.(Delta: -1996 ticks)<br>[00:00:15.715955] Benchmark =
complete.<br><br><br>Benchmark rate summary:<br>=C2=A0 Num received samples=
: =C2=A0 =C2=A0 7958249432<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=
=A049903<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num tran=
smitted samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Nu=
m sequence errors (Rx): 79<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=
=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeou=
ts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =
=C2=A0 =C2=A0 =C2=A00<br><br><br>Done!</b></i><br><br><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun, 18 =
dic 2023 a las 19:10, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" t=
arget=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">How about if you =
use an unmodified &quot;benchmark_rate&quot;?=C2=A0=C2=A0</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 18, 20=
23 at 11:43=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodo=
var@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Even with a single card I still get the same error.</div><div><br></d=
iv><div><i><b>Creating the usrp device with: addr0=3D192.168.60.2,second_ad=
dr0=3D192.168.50.2,recv_buff_size=3D900000000...<br>Creating the subdevice =
with: A:0 A:1 B:0 B:1...<br>Using Device: Single USRP:<br>=C2=A0 Device: X-=
Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: =
TwinRX RX0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=
=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=C2=A0 RX Channe=
l: 2<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=
=A0 RX Subdev: TwinRX RX0<br>=C2=A0 RX Channel: 3<br>=C2=A0 =C2=A0 RX DSP: =
1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: TwinRX RX1<br>=
=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard:=
 A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 1=
<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 =
TX Subdev: Unknown (0xffff) - 0<br><br>N=C3=BAmero de canales detectados: 4=
<br>N=C3=BAmero de tarjetas detectadas: 1<br>Actual RX Rate: 50.000000 Msps=
...<br>Actual Acquisition Time to: 0.000000 Seconds.<br>Actual RX Freq: 800=
.000000 MHz...<br>Actual RX Gain: 5.000000 dB...<br>Actual RX Bandwidth: 50=
.000000 MHz...<br>Setting LO source...<br><br>[INFO] [MULTI_USRP] =C2=A0 =
=C2=A0 1) catch time transition at pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =
=C2=A0 2) set times next pps (synchronously)<br>Press Ctrl + C to stop stre=
aming...<br><br>STAR SAMPLING ...<br>D<br>[ERROR] [STREAMER] The receive pa=
cket handler failed to time-align packets. 1002 received packets were proce=
ssed by the handler. However, a timestamp match could not be determined.<br=
>D<br>[ERROR] [STREAMER] The receive packet handler failed to time-align pa=
ckets. 1002 received packets were processed by the handler. However, a time=
stamp match could not be determined.<br>^C<br>Received 199995208 samples in=
 6.703929 seconds<br>29.8325 Msps<br><br>Done!</b><br></i></div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">El lun, 18 dic 2023 a las 17:13, Rob Kossler (&lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr">Several comments:<div><ul><li>It seems like multiple things =
are going on.=C2=A0 You mentioned the original &quot;failed to time align&q=
uot; error and below you mentioned &#39;O&#39; and &#39;D&#39;.=C2=A0=C2=A0=
</li><ul><li>The time-align error I did not expect had anything to do with =
&quot;performance&quot;. This seemed to me that the first packet arriving f=
rom device 1 had a different time stamp than the first packet arriving from=
 device 2. Now, I&#39;m not so sure</li><li>But, the &#39;O&#39; and &#39;D=
&#39; are often related to &quot;performance&quot;.=C2=A0 Overflow &#39;O&#=
39; occurs when the &#39;Radio&#39; block has A/D samples that it needs to =
put in a FIFO but the FIFO is full because it is not being emptied fast eno=
ugh (presumably by the host PC).=C2=A0 A dropped packet (or sequence error)=
 &#39;D&#39; occurs when the host PC detects that the incoming packets are =
not in sequential order. This can occur if the host PC Ethernet handling be=
comes overwhelmed and simply discards a set of incoming packets for a time =
period. Both &#39;O&#39; and &#39;D&#39; can imply that the host PC is not =
keeping up with incoming data</li></ul><li>In any case, you may want to sim=
plify the problem by dropping from two devices to one device.=C2=A0 See if =
you can eliminate some or all of these problems when using only 4 channels.=
</li><li>If you drop to one device, you can use benchmark_rate to test perf=
ormance.=C2=A0 If you do not use &quot;second_addr&quot;, you should be abl=
e to get 4x50 MS/s.=C2=A0 If you use &quot;second_addr&quot;, you should be=
 able to get 4x100 MS/s.</li><li>Regarding your needed changes to &quot;rx_=
samples_to_file&quot;, I guess I was thinking about the latest version whic=
h supports multiple channels. Perhaps UHD 3.12 has a version of this exampl=
e that only supports a single channel.=C2=A0 You could compare your version=
 to the latest version (say, UHD 4.6) to see the improvements to this examp=
le.</li></ul></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, Dec 18, 2023 at 7:44=E2=80=AFAM Anabel Almodovar=
 &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel=
.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<br><br>Thanks for the suggesti=
ons. I have tried deleting the LO sharing, and nothing changes. Then removi=
ng the second addr, and that leads me to get &#39;Ds&#39; in addition to th=
e error already mentioned, as it is not able to handle that much informatio=
n. Although I don&#39;t quite understand the difference between &#39;O&#39;=
 and &#39;D&#39;.<br><br><div>From what I understand the program is set up =
for a single channel, so I need to modify it to get more than one. <br></di=
v><div><br></div><div>Thank you in advance.</div><div><br></div><div>Regard=
s,</div><div>Anabel<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">El vie, 15 dic 2023 a las 15:39, Rob Kossler =
(&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</=
a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hmmm. I&#39;m not sure. Here are a few comment=
s:</div><div><ul><li>Try running without &quot;second_addr&quot;.=C2=A0 I r=
ealize that you will need it for full rate (4 x 100MS/s for each X310), but=
 you could run at 50 MS/s without second_addr</li><li>Try running without=
=C2=A0shared LO. I don&#39;t think you would need to physically change any =
sharing cables.</li><li>I am curious why you needed to modify the streamer,=
 pointer buffer and file writing.=C2=A0 I would expect that this would scal=
e with the number of channels such that you didn&#39;t need to modify any c=
ode in this area</li><li>If you were using a more recent UHD, I would recom=
mend switching to the example benchmark_rate which natively supports extern=
al PPS and multiple devices.=C2=A0 I noticed that even the most recent=C2=
=A0rx_samples_to_file does not support external PPS (without modifying the =
code)</li><li>I know you mentioned you were unable to upgrade because of co=
mpatibility constraints.=C2=A0 But, even if you cannot upgrade the OS, woul=
d you be able to install a new UHD - perhaps in a local folder that did not=
 interfere with the system-wide UHD 3.12 installation.=C2=A0 I typically ha=
ve multiple UHD versions on my system and switch among them by &quot;sourci=
ng&quot; a given setup file as needed.</li></ul></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at 12:=
52=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail=
.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Dea=
r Rob,</div><div><br></div><div>Yes, I use an external clock configuration.=
</div><div><br></div><div><i>std::this_thread::sleep_for( std::chrono::mill=
iseconds(int64_t(1000 * setup_time) );</i></div><div><i>usrp-&gt;set_clock_=
source(&quot;external&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS); =C2=A0 =
=C2=A0<br>usrp-&gt;set_time_source(&quot;external&quot;, uhd::usrp::multi_u=
srp::ALL_MBOARDS);<br>usrp-&gt;set_time_unknown_pps(uhd::time_spec_t(0.0));=
<br>std::this_thread::sleep_for(std::chrono::seconds(1));</i></div><div><br=
></div><div>I have only modified the code to get 8 channels and LO sharing.=
 I want to get a continuous acquisition setup without losing samples. But I=
 am starting with something basic at the moment. Any suggestions are welcom=
e. So I&#39;ve modified the streamer, the pointer buffer, and added writing=
 files.</div><div><br></div><div>my line is <i>$sudo ./rx_samples_to_file_v=
1 --args=3D&quot;addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D1=
92.168.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000&quot; --=
subdev=3D&quot;A:0 A:1 B:0 B:1&quot; --channel=3D&quot;0,1,2,3,4,5,6,7&quot=
; --freq 800e6 --rate 25e6 --bw 25e6 --gain 70 <br></i></div><div><i><br></=
i></div><div>Regards,</div><div><i>Anabel<br></i></div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">El jue, 14 dic 2023 a las 18:25, Rob Kossler (&lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Anabel,<div>In my opinion, the error you are experiencing has noth=
ing to do with streaming performance settings (such as &quot;performance&qu=
ot; governor, network descriptors, MTU size, etc). The issue seems to be th=
at the two X310 devices do not have synchronized clocks. In addition to the=
 physical synchronization using OctoClock, you must also configure each dev=
ice to use external synchronization and you must tell each device to reset =
its FPGA clock count at a common PPS. The typical sequence is: (1) wait for=
 a PPS to occur (by querying either device), (2) tell each device to reset =
its FPGA clock at the subsequent PPS (this step must complete before the ne=
xt PPS arrives).</div><div><br></div><div>You mentioned that you are using =
rx_samples_to_file. Did you modify it in any way?=C2=A0 What is your exact =
command line with all parameters?=C2=A0</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, =
2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almo=
dovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you for yo=
ur answer. <br></div><div>I make use of the CDA-2990 octoclock as a source =
of synchronization between both USRPs, in addition to local oscillator shar=
ing. I use dual 10GigEth connections and a MTU of 9000 to connect the USRPs=
 to the PC. <br><br>Due to various compatibility issues I am unable to upgr=
ade the system. <br><br>When I work with a sample rate of 10MSps I don&#39;=
t get problems but when I increase to 25MSps I start to get the error. I ne=
ed them working with 100MSps. I have tried changing the CPU governor to &qu=
ot;performance&quot; to get the maximum working frequency (<i>sudo cpupower=
 frequency-set --governor performance</i>), as well as changing the number =
of network interface descriptors to maximum (<i>sudo ethtool -G &lt;interfa=
ce&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty memory b=
uffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_backg=
round_ratio=3D50</i>), but I still get the same problem.</div><div><br></di=
v><div>Regards,<br></div><div>Anabel<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 15:=
38, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">r=
kossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How=
 are you sync-ing the clocks on the two units? Do you have an external PPS =
source and are you configuring both devices to use this external source?</d=
iv><div><br></div><div>Finally, do you have the ability to upgrade your OS =
and your UHD versions? There aren&#39;t many user&#39;s that are using UHD =
3.12 so if you have issues, it will be hard to get support.</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D=
"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I =
am trying to make an acquisition with two X310 equipped with two TwinRx. I =
am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and=
 an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. =
I have modified the example rx_samples_to_file.cpp code to get 8 channels a=
nd I get the following error:<br><br></div><div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2" target=3D"_blank">192.168.60.2</a>: x300 fw communication failu=
re #1</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">EnvironmentError: IOError: x300 fw poke32 - reply timed out</=
span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div></div></div>

--000000000000fd578c060cf22a0a--

--===============4226601132641547247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4226601132641547247==--
