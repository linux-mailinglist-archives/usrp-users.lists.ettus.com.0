Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC7F506D4E
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 15:15:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B6E4384C1A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 09:15:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650374153; bh=fpJTAzgTibUMGCjyVxoM5e2byg/E9EtkQPd9t6WvFP4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pnl7mahe7h6eYl/QvmaL3eNi0u6ZQJtYLb+nmVlBvffsRZgWsrUnmEWGS+30a+vU5
	 1J59n4XZrWHWISlioTLDpHxDesvQpKqKWmdMR6iB7qpejqoX11XQ0Bat5ddA6tkSWk
	 u1F1l4vt7w/ELwG7z0mCZZonCmA5J4gB5ytZU4yg9q1G1lumN0FqoJSOKvwLviHWOM
	 hCwvEFhzxeDhn/dFjw0vLvFVXCtFyaJv9p8rjjHmORLmoKRkkWyBqLaBSY1RgZ16EB
	 EHL8DnSYhqBlUdIuOnmbbNFS5kqOs0wo+2Jacpvc0kMn1p7vJ6jtC1jIA+juOtiLah
	 yl7ol91yx3HLw==
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F6E53848DD
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 09:14:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iDfLvdwd";
	dkim-atps=neutral
Received: by mail-vs1-f47.google.com with SMTP id t202so2644963vst.8
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 06:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qbmlRbMYjVpdYUsED6yT0d7qfQx4Ul8eM8Z0PL7o4AY=;
        b=iDfLvdwd4NLf8wedpPm8CKRuPG4PqPUpehunjLBL7MF92b/T+tAkQIOpBP84XoONxG
         EpclEq7YNPE0NE8hv7BsGBR3R/dPbn4+4blB1jSpvwZ2pXhtPtekORBAVZYjA/x8SCJ+
         OjHiWnIm1lFxqEYD87N7WsAZN+e1hw7HHqgKVDrXEgSoji8RM3f+IkK1C5FYkw1+ou8H
         ZwzMKesJxqyWDTW4vOxUeltpGtEfQ5YlURkMC9Nvhts29ld+kBE9VlKOZmXu5A2NK8vd
         BnEDVk/Qv3rbn9lG9ou+N2HOOYJ7MrLh4SFEVqYfWubs7Ndo4xSD/0+orM9RLYGjCjGv
         rhbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qbmlRbMYjVpdYUsED6yT0d7qfQx4Ul8eM8Z0PL7o4AY=;
        b=BUkfkYtCBjEyhCP980LCpoCaejRErDZtHllKE+8cd3GNcFZfKuo+7hHFUCaUgpYC5x
         50egPJ57XUct44i1m8o97DYh5BUe+S3znuU1G4bljLIvXH7h3iaf/O913nDQuNNGNIhZ
         XAZPUjZAHj+sBSxvINcSgZ9ZzuQ57CYo0mfM5aYNX5A3cN9hvRX990ND0vjjLpLboKnE
         U/DahHHI8AasbcwMRMkMcMcP0fsw4rfu/nvtrhd2lpgHA14jZbAqyV14LxnyjSt+0gdZ
         gAWJDaWz3u3JXMd4wCUGly4VyvAiWQXUtEFwPj2+1Zz7o3e2e7dWL4hvxEfGRFMTx2Ke
         CoEg==
X-Gm-Message-State: AOAM533MajY1w7mXBScr0G+2k5XhRP4yk7nlatHpG3NAvThnwZq4oySj
	dys9PsS3Zjmq3XlPK1ef0il3mpOx6qE85FL6w6vKIkTiiRs=
X-Google-Smtp-Source: ABdhPJxovUsRmAbnqReUHyxUG0ibEiMIolAMIgYA/GTA2Hq5fkzhysezX5hGpCtE5LEcliAMkJPjIHUYvX2SYy/fUsY=
X-Received: by 2002:a67:e30d:0:b0:32a:3a7e:6204 with SMTP id
 j13-20020a67e30d000000b0032a3a7e6204mr4210468vsf.79.1650374089480; Tue, 19
 Apr 2022 06:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
 <CAB__hTQo=pnO8-TBvBJFK8AbFStqnzMz72fLWJ2bVOjTL3wpOg@mail.gmail.com>
In-Reply-To: <CAB__hTQo=pnO8-TBvBJFK8AbFStqnzMz72fLWJ2bVOjTL3wpOg@mail.gmail.com>
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Tue, 19 Apr 2022 10:14:38 -0300
Message-ID: <CAOucfANc6BoeQNv==c8obv-hEdZiQ0gxrjhpZMs=v+FGF4yu=Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: TDNFEJ3OB5ONYICUJIT7TXQU3NSTMYW2
X-Message-ID-Hash: TDNFEJ3OB5ONYICUJIT7TXQU3NSTMYW2
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TDNFEJ3OB5ONYICUJIT7TXQU3NSTMYW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6876783375266189913=="

--===============6876783375266189913==
Content-Type: multipart/alternative; boundary="000000000000599b5505dd01a920"

--000000000000599b5505dd01a920
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rob,

You are right, the UHD version running on the embedded is 4.1.0.4. In any
case, I don't quite get why the examples running on the ettus don't work
either.

If I run ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6 --rx_channels 1
--tx_channels 0, I get:

[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
UHD_4.1.0.4-0-g25d617ca
[00:00:00.044121] Creating the usrp device with: ...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=
=3Dn/a,claimed=3DFalse
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
Using Device: Single USRP:
  Device: E300-Series Device
  Mboard 0: e310_sg3
  RX Channel: 0
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  RX Channel: 1
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  TX Channel: 0
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx
  TX Channel: 1
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx

[00:00:06.286834383] Setting device timestamp to 0...
Setting TX spp to 364
[00:00:10.136939135] Testing receive rate 1.000000 Msps on 1 channels
[00:00:10.564365285] Testing transmit rate 1.000000 Msps on 1 channels
[00:00:20.827293545] Benchmark complete.


Benchmark rate summary:
  Num received samples:     10248264
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  10257884
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!


On the other hand, If I include tx channel "1" in any way (2Tx 2Rx or 1Tx
1Rx) the test fails.

[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
UHD_4.1.0.4-0-g25d617ca
[00:00:00.044036] Creating the usrp device with: ...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=
=3Dn/a,claimed=3DFalse
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
Using Device: Single USRP:
  Device: E300-Series Device
  Mboard 0: e310_sg3
  RX Channel: 0
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  RX Channel: 1
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  TX Channel: 0
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx
  TX Channel: 1
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx

[00:00:06.466089847] Setting device timestamp to 0...
Setting TX spp to 364
[00:00:10.313807747] Testing receive rate 1.000000 Msps on 1 channels
[00:00:10.748820483] Testing transmit rate 1.000000 Msps on 1 channels
[00:00:11.753567712] Tx timeouts: 1
[00:00:21.857387286] Benchmark complete.


Benchmark rate summary:
  Num received samples:     10248286
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        11
  Num timeouts (Rx):        0


Done!

The only message that is different between tests and calls my attention is:
"[WARNING] [MPM.RPCServer] A timeout event occured!"

Any ideas?

In the meantime I'll try to reload the file system and the default FPGA
image, I'll let you know if I've any news.

Thank you,
Lautaro.

El jue, 14 abr 2022 a la(s) 00:23, Rob Kossler (rkossler@nd.edu) escribi=C3=
=B3:

> Hi Lautaro,
> When you run embedded, what is the version that runs? I am wondering if
> your embedded file system (and also MPM version) is old and does not matc=
h
> the UHD version 4.1.0.5 that you are using on a host workstation. If this
> is the case, perhaps reload the file system using "dd" (don't use
> bmaptool).  Another thought would be to try benchmark_rate with 2 channel=
s
> tx and 2 channels rx (at a slow rate) and see if the lights come on.
> Rob
>
> On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen <
> lorenzen.lautaro@gmail.com> wrote:
>
>> Hi everyone,
>>
>> I'm trying to run a simple example on an Ettus E310.
>> I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>>
>> Everything seems to work okay, but I can not manage to get the second
>> channel (TRX-B) to transmit anything. FYI: I can receive from both chann=
els
>> RX-A and RX-B.
>> The problem came up when I tried to transmit something via gnu-radio,
>> changing the "subdev" arg to "A:1" instead of leaving it blank as I
>> normally do.
>> When I pressed start, everything seemed to compile fine, but the GUI
>> freezes (something that did not happen when using TRX-A).
>>
>> To see if gnu-radio was the problem, I logged in the embedded linux and
>> tried some uhd examples from usr/lib/uhd/examples.
>> As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0
>> and the tx light turned on and I could see something on my oscilloscope.
>> Also, a few "LLLLL" appeared on the console.
>>
>> When I ran:
>> ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks th=
e
>> same but no light, no signal, and no "LLLLL" are displayed on the consol=
e.
>> Just the message "press ctrl+C to stop streaming".
>>
>> Any help would be very much appreciated.
>> Regards,
>> Lautaro.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000599b5505dd01a920
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hello Rob,</div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif">You are right, the UHD =
version running on the embedded is 4.1.0.4. In any case, I don&#39;t quite =
get why the examples running on the ettus don&#39;t work either.=C2=A0</div=
><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helve=
tica,sans-serif">If I run ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6 --rx=
_channels 1 --tx_channels 0, I get:<br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:arial,helvetica,sans-serif">[INFO] [UHD] l=
inux; GNU C++ version 9.2.0; Boost_107100; UHD_4.1.0.4-0-g25d617ca<br>[00:0=
0:00.044121] Creating the usrp device with: ...<br>[INFO] [MPMD] Initializi=
ng 1 device(s) in parallel with args: mgmt_addr=3D127.0.0.1,type=3De3xx,pro=
duct=3De310_sg3,serial=3D30E2D8B,fpga=3Dn/a,claimed=3DFalse<br>[INFO] [MPM.=
PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init=
() called with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310=
_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel =
0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0/Radio#=
0] Performing CODEC loopback test on channel 1 ... <br>[INFO] [0/Radio#0] C=
ODEC loopback test passed<br>Using Device: Single USRP:<br>=C2=A0 Device: E=
300-Series Device<br>=C2=A0 Mboard 0: e310_sg3<br>=C2=A0 RX Channel: 0<br>=
=C2=A0 =C2=A0 RX DSP: n/a<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX=
 Subdev: E3xx<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: n/a<br>=C2=
=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: E3xx<br>=C2=A0 TX Chann=
el: 0<br>=C2=A0 =C2=A0 TX DSP: n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =
=C2=A0 TX Subdev: E3xx<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: n/a=
<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: E3xx<br><br>[00:=
00:06.286834383] Setting device timestamp to 0...<br>Setting TX spp to 364<=
br>[00:00:10.136939135] Testing receive rate 1.000000 Msps on 1 channels<br=
>[00:00:10.564365285] Testing transmit rate 1.000000 Msps on 1 channels<br>=
[00:00:20.827293545] Benchmark complete.<br><br><br>Benchmark rate summary:=
<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 10248264<br>=C2=A0 Num dropp=
ed samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =
=C2=A00<br>=C2=A0 Num transmitted samples: =C2=A010257884<br>=C2=A0 Num seq=
uence errors (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 0<br>=C2=A0 Num un=
derruns detected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=
=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=
=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><br>Done!</di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">On the other hand, If I include tx channel &=
quot;1&quot; in any way (2Tx 2Rx or 1Tx 1Rx) the test fails. <br></div><div=
 class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif">[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.=
1.0.4-0-g25d617ca<br>[00:00:00.044036] Creating the usrp device with: ...<b=
r>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=3Dn/a,cla=
imed=3DFalse<br>[WARNING] [MPM.RPCServer] A timeout event occured!<br>[INFO=
] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphManage=
r] init() called with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=
=3De310_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0=
/Radio#0] Performing CODEC loopback test on channel 1 ... <br>[INFO] [0/Rad=
io#0] CODEC loopback test passed<br>Using Device: Single USRP:<br>=C2=A0 De=
vice: E300-Series Device<br>=C2=A0 Mboard 0: e310_sg3<br>=C2=A0 RX Channel:=
 0<br>=C2=A0 =C2=A0 RX DSP: n/a<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: E3xx<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: n/a<br=
>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: E3xx<br>=C2=A0 TX C=
hannel: 0<br>=C2=A0 =C2=A0 TX DSP: n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=
=A0 =C2=A0 TX Subdev: E3xx<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP:=
 n/a<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: E3xx<br><br>=
[00:00:06.466089847] Setting device timestamp to 0...<br>Setting TX spp to =
364<br>[00:00:10.313807747] Testing receive rate 1.000000 Msps on 1 channel=
s<br>[00:00:10.748820483] Testing transmit rate 1.000000 Msps on 1 channels=
<br>[00:00:11.753567712] Tx timeouts: 1<br>[00:00:21.857387286] Benchmark c=
omplete.<br><br><br>Benchmark rate summary:<br>=C2=A0 Num received samples:=
 =C2=A0 =C2=A0 10248286<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A0=
0<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted=
 samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num seque=
nce errors (Rx): 0<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num=
 late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =
=C2=A0 =C2=A0 =C2=A0 =C2=A011<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =
=C2=A0 =C2=A00<br><br><br>Done!</div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">The only message that =
is different between tests and calls my attention is: &quot;[WARNING] [MPM.=
RPCServer] A timeout event occured!&quot;</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">Any ideas?</=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">In the meantime I&#39;ll try to reload the file system =
and the default FPGA image, I&#39;ll let you know if I&#39;ve any news.</di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif">Thank you,</div><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif">Lautaro.<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 abr 2022 =
a la(s) 00:23, Rob Kossler (<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Lautaro,<div>When you run embe=
dded, what is the version that runs? I am wondering if your embedded file s=
ystem (and also MPM version) is old and does not match the UHD version 4.1.=
0.5 that you are using on a host workstation. If this is the case, perhaps =
reload the file system using &quot;dd&quot; (don&#39;t use bmaptool).=C2=A0=
 Another thought would be to try benchmark_rate with 2 channels tx and 2 ch=
annels rx (at a slow rate) and see if the lights come on.</div><div>Rob</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen &lt;<a href=3D"mailto:l=
orenzen.lautaro@gmail.com" target=3D"_blank">lorenzen.lautaro@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif">Hi every=
one,</div><div style=3D"font-family:arial,helvetica,sans-serif"><br></div><=
div style=3D"font-family:arial,helvetica,sans-serif">I&#39;m trying to run =
a simple example on an Ettus E310. <br><div style=3D"font-family:arial,helv=
etica,sans-serif">I&#39;m using an E312 with UHD 4.1.0.5 and gnuradio v3.8.=
0.5. <br></div><div style=3D"font-family:arial,helvetica,sans-serif"><br></=
div><div style=3D"font-family:arial,helvetica,sans-serif">Everything seems =
to work okay, but I can not manage to get the second channel (TRX-B) to tra=
nsmit anything. FYI: I can receive from both channels RX-A and RX-B.<br></d=
iv><div style=3D"font-family:arial,helvetica,sans-serif">The problem came u=
p when I tried to transmit something via gnu-radio, changing the &quot;subd=
ev&quot; arg to &quot;A:1&quot; instead of leaving it blank as I normally d=
o. <br></div><div style=3D"font-family:arial,helvetica,sans-serif">When I p=
ressed start, everything seemed to compile fine, but the GUI freezes (somet=
hing that did not happen when using TRX-A).</div><div style=3D"font-family:=
arial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial,helve=
tica,sans-serif">To see if gnu-radio was the problem, I logged in the embed=
ded linux and tried some uhd examples from usr/lib/uhd/examples.</div><div =
style=3D"font-family:arial,helvetica,sans-serif">As expected, I ran ./tx_wa=
veforms --rate 1e6 --freq 100e6 --subdev A:0=C2=A0 and the tx light turned =
on and I could see something on my oscilloscope. Also, a few &quot;LLLLL&qu=
ot; appeared on the console.</div><div style=3D"font-family:arial,helvetica=
,sans-serif"><br></div><div style=3D"font-family:arial,helvetica,sans-serif=
">When I ran: <br></div><div style=3D"font-family:arial,helvetica,sans-seri=
f">./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks th=
e same but no light, no signal, and no &quot;LLLLL&quot; are displayed on t=
he console. Just the message &quot;press ctrl+C to stop streaming&quot;.</d=
iv><div style=3D"font-family:arial,helvetica,sans-serif"><br></div><div sty=
le=3D"font-family:arial,helvetica,sans-serif">Any help would be very much a=
ppreciated. <br></div><div style=3D"font-family:arial,helvetica,sans-serif"=
>Regards,</div><div style=3D"font-family:arial,helvetica,sans-serif">Lautar=
o.<br> </div><div style=3D"font-family:arial,helvetica,sans-serif"><br></di=
v></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000599b5505dd01a920--

--===============6876783375266189913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6876783375266189913==--
