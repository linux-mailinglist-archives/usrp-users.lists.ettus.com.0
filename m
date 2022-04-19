Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B3506CA6
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 14:41:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF0B5384D56
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 08:41:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650372108; bh=SlpWvlug+q4bpax6P6rB07XafIrQ96YJjSTiqVOKXBs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jAJtga/j+eXOVmRUKPozmbKdafrJvfkzFFp0tzveueRUAr+sWJKe6tnQs9mMOJG8U
	 WoEpv5K9Ajzm7Wk9WdNDfYzv2AnJQJISCfLPi6actqhGmfteh9AwIiLlT/vfr+S+Gr
	 b04mzkpQsqi3g/zk7YcHipoly9mg2lugJ7t04AbWgtXYEGpTBbNOSwnKUakAQXxzvw
	 Ssv0Lml80JEoSN+M8vEiv0DodEErX8kldlLpuGua0jpOLHAK1k9ayf5Ml12fnk9mK2
	 HPbTCYLnopOYHX2zUUTQGiAmU/pa3ahATOOAd56YRo5rff1sB51xjgzr6qAqQn7wh7
	 G3CgCJCEvnU+Q==
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 7065C384444
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 08:40:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pBiG5mRi";
	dkim-atps=neutral
Received: by mail-vs1-f49.google.com with SMTP id v15so13947701vsm.5
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 05:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rlwhZuM2cWwcMGv1JH6YBY4riyPbNcoyHK3YfoneezI=;
        b=pBiG5mRirR12R1rT6EpGEYlIMImH10Com04mnnl3WR6MaSTEn2TdS+jVdVdcjplkJM
         77uhaxHSNJtJ3YtXwwBQxdiTgrvHioClyoitLcOOeUXBqyuf7IUi6sjxoUMMH8gbvuMK
         zUmL4yp9CYskjEhWOcnGvDvodeVn1sTJCBpwAVRSyfqsb2C9c0BUCprygoYgUyv5KX7L
         7Dq/CDm+UGsU26GF5CvOHhHOkbDCI/1xjKIhD0rxV/K3Ztze3qhzGJpswgqE1YwMndvO
         WqEuQardfuHpn1S5n6ftJoesxOL3bzIWs3v9aXCiKzlylnRaf781JKL49ilrfF7vDY0e
         myFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rlwhZuM2cWwcMGv1JH6YBY4riyPbNcoyHK3YfoneezI=;
        b=WgG1mBuV++dm1bwM/tOpVHYEZ6pNcw1b6Su/2s6KNTiIt2FnKeO9yNUBYYJ3ELMa4N
         DghRx38uCkGnppJ1bwz0vorJ2ZGDZO6pWMR311HVUqIniqb1hOdWvISgN3jusw7oSxfG
         WWqf14TBB0bellhPQ+VKvDooJRR25yDdVTtBAYGm/lDX2o/JglctLFzLZTcE9bxkFnuI
         5UiNzbDxTmwpKecMLdfKaQBU80/TbPJmZS12ts1buyoOXVVcAAv4RPzp5oI2Nn+djHHu
         mpsJOWE8UiGL5bnz4k/QYapE8QXqBdBjwEsmB4YR095IiZNajOyJXx/41rEs2KMZ/b6c
         yhMw==
X-Gm-Message-State: AOAM530S7wNvk5mUqVCeiig7o27ahHWjh6e4WSCMXDqFxCpPU0UYa2gI
	RYFO4ET0LFHff0oyMGrLmLbDVJAXWwwDvr5M6od/QCu6qT8=
X-Google-Smtp-Source: ABdhPJydbWMBi0eKvebQoMDu9m4KY0T5wgV3UB0iXC1qq2RZwx7tdndjrmuZz6BjTBsD4+iF98C/y/hcim8B25QIC64=
X-Received: by 2002:a67:e30d:0:b0:32a:3a7e:6204 with SMTP id
 j13-20020a67e30d000000b0032a3a7e6204mr4144655vsf.79.1650372044677; Tue, 19
 Apr 2022 05:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
 <d014f269-e776-baa3-0125-ad8e05b46d61@gmail.com>
In-Reply-To: <d014f269-e776-baa3-0125-ad8e05b46d61@gmail.com>
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Tue, 19 Apr 2022 09:40:33 -0300
Message-ID: <CAOucfAM5s_4oWuUkui6VeoNUq7fuV=+=hHX-BfuqvDjCTCRhFA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UDLFKM72GIFHF6IEYLBAO3QY6PNAMQFJ
X-Message-ID-Hash: UDLFKM72GIFHF6IEYLBAO3QY6PNAMQFJ
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDLFKM72GIFHF6IEYLBAO3QY6PNAMQFJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3002273097629041451=="

--===============3002273097629041451==
Content-Type: multipart/alternative; boundary="00000000000078634505dd012ffc"

--00000000000078634505dd012ffc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

As Rob mentioned, it seems that I do not have the same uhd version on the
host and on the device. The version I'm running on the host is 4.1.0.5, and
on the device is 4.0.1.4. Anyhow, I assume that all standalone uhd examples
should run on the device. The command uhd_usrp_probe gives me the
following:

[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
UHD_4.1.0.4-0-g25d617ca
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpga=
=3Dn/a,claimed=3DFalse
[INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.4-g25d617ca
[INFO] [MPM.main] Spawning RPC process...
[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
[INFO] [MPM.PeriphManager] Device serial number: 30E2D8B
[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards.
Ignoring some of them.
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e31x-30E2D8B
|   |   dboard_0_pid: 272
|   |   dboard_0_serial: 30CB4AF
|   |   fs_version: 20210929150239
|   |   mender_artifact: v4.1.0.4_e310_sg3
|   |   mpm_sw_version: 4.1.0.4-g25d617ca
|   |   pid: 30675
|   |   product: e310_sg3
|   |   rev: 6
|   |   rpc_connection: local
|   |   serial: 30E2D8B
|   |   type: e3xx
|   |   MPM Version: 4.0
|   |   FPGA Version: 6.0
|   |   FPGA git hash: 6bd0be9.dirty
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal
|   |   Sensors: ref_locked, gps_locked, temp_fpga, temp_mb, gps_gpgga,
gps_sky, gps_time, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/Radio#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0
|   |   * 0/SEP#1:0=3D=3D>0/Radio#0:1
|   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0
|   |   * 0/Radio#0:1=3D=3D>0/SEP#1:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: E3xx
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 1
|   |   |   Name: E3xx
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: E3xx
|   |   |   Antennas: RX2, TX/RX
|   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 1
|   |   |   Name: E3xx
|   |   |   Antennas: RX2, TX/RX
|   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

I've loaded and changed the image a few times when doing some RFNoC tests,
but nothing seems off to me, do you notice something strange?

Thank you,
Lautaro.

El jue, 14 abr 2022 a la(s) 00:52, Marcus D. Leech (patchvonbraun@gmail.com=
)
escribi=C3=B3:

> On 2022-04-13 13:32, Lautaro Lorenzen wrote:
>
> Hi everyone,
>
> I'm trying to run a simple example on an Ettus E310.
> I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>
> Everything seems to work okay, but I can not manage to get the second
> channel (TRX-B) to transmit anything. FYI: I can receive from both channe=
ls
> RX-A and RX-B.
> The problem came up when I tried to transmit something via gnu-radio,
> changing the "subdev" arg to "A:1" instead of leaving it blank as I
> normally do.
> When I pressed start, everything seemed to compile fine, but the GUI
> freezes (something that did not happen when using TRX-A).
>
> To see if gnu-radio was the problem, I logged in the embedded linux and
> tried some uhd examples from usr/lib/uhd/examples.
> As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0
> and the tx light turned on and I could see something on my oscilloscope.
> Also, a few "LLLLL" appeared on the console.
>
> When I ran:
> ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks the
> same but no light, no signal, and no "LLLLL" are displayed on the console=
.
> Just the message "press ctrl+C to stop streaming".
>
> Any help would be very much appreciated.
> Regards,
> Lautaro.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> IF you run:
>
> uhd_config_info --version
>
> On the actual E312, what does it return?
>
> Also, what does:
>
> uhd_usrp_probe
>
> Return (again, on the device itself).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000078634505dd012ffc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Marcus,</div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif">As Rob mentioned, it se=
ems that I do not have the same uhd version on the host and on the device. =
The version I&#39;m running on the host is 4.1.0.5, and on the device is 4.=
0.1.4. Anyhow, I assume that all standalone uhd examples should run on the =
device. The command uhd_usrp_probe gives me the following: <br></div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,=
helvetica,sans-serif">[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_1071=
00; UHD_4.1.0.4-0-g25d617ca<br>[INFO] [MPMD] Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,seri=
al=3D30E2D8B,fpga=3Dn/a,claimed=3DFalse<br>[INFO] [MPM.main] Launching USRP=
/MPM, version: 4.1.0.4-g25d617ca<br>[INFO] [MPM.main] Spawning RPC process.=
..<br>[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!<br>=
[INFO] [MPM.PeriphManager] Device serial number: 30E2D8B<br>[WARNING] [MPM.=
PeriphManager] Found more EEPROM paths than daughterboards. Ignoring some o=
f them.<br>[INFO] [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RPCServe=
r] Spawning watchdog task...<br>[INFO] [MPM.PeriphManager] Found 1 daughter=
board(s).<br>[INFO] [MPM.PeriphManager] init() called with device args `fpg=
a=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3&#39;.<br>[INFO] [0/Radio#0=
] Performing CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CO=
DEC loopback test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback te=
st on channel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>=
=C2=A0 _____________________________________________________<br>=C2=A0/<br>=
| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e31x-30E2D8B<br>| =C2=A0 | =C2=A0 =
dboard_0_pid: 272<br>| =C2=A0 | =C2=A0 dboard_0_serial: 30CB4AF<br>| =C2=A0=
 | =C2=A0 fs_version: 20210929150239<br>| =C2=A0 | =C2=A0 mender_artifact: =
v4.1.0.4_e310_sg3<br>| =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.4-g25d617ca<br=
>| =C2=A0 | =C2=A0 pid: 30675<br>| =C2=A0 | =C2=A0 product: e310_sg3<br>| =
=C2=A0 | =C2=A0 rev: 6<br>| =C2=A0 | =C2=A0 rpc_connection: local<br>| =C2=
=A0 | =C2=A0 serial: 30E2D8B<br>| =C2=A0 | =C2=A0 type: e3xx<br>| =C2=A0 | =
=C2=A0 MPM Version: 4.0<br>| =C2=A0 | =C2=A0 FPGA Version: 6.0<br>| =C2=A0 =
| =C2=A0 FPGA git hash: 6bd0be9.dirty<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =
=C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0 | =C2=A0 C=
lock sources: internal<br>| =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked=
, temp_fpga, temp_mb, gps_gpgga, gps_sky, gps_time, gps_tpv<br>| =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>| =
=C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =C2=
=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0<br>| =
=C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/Radio#0:1<br>| =C2=A0 | =C2=A0 * 0/R=
adio#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/S=
EP#1:0<br>| =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Ra=
dio#0<br>| =C2=A0 | =C2=A0 =C2=A0 _________________________________________=
____________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq ra=
nge: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0=
.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000=
000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Ty=
pe: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fronten=
d: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.0=
00 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 d=
B<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 s=
tep 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>| =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0=
 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>=
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________________=
______________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3x=
x<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Ga=
in range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwid=
th range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br=
></div></div><div class=3D"gmail_default" style=3D"font-family:arial,helvet=
ica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family=
:arial,helvetica,sans-serif"><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif">I&#39;ve loaded and changed the image a few=
 times when doing some RFNoC tests, but nothing seems off to me, do you not=
ice something strange?<br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif">Thank you, <br></div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Lau=
taro.<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">El jue, 14 abr 2022 a la(s) 00:52, Marcus D. Leech (<a=
 href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>) escri=
bi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-04-13 13:32, Lautaro Lorenzen
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif">Hi everyone,</div>
        <div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif">I&#39;m trying to
          run a simple example on an Ettus E310. <br>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">I&#39;m using an
            E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5. <br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">Everything
            seems to work okay, but I can not manage to get the second
            channel (TRX-B) to transmit anything. FYI: I can receive
            from both channels RX-A and RX-B.<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">The problem
            came up when I tried to transmit something via gnu-radio,
            changing the &quot;subdev&quot; arg to &quot;A:1&quot; instead =
of leaving it
            blank as I normally do. <br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">When I
            pressed start, everything seemed to compile fine, but the
            GUI freezes (something that did not happen when using
            TRX-A).</div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">To see if
            gnu-radio was the problem, I logged in the embedded linux
            and tried some uhd examples from usr/lib/uhd/examples.</div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">As expected,
            I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0=C2=A0
            and the tx light turned on and I could see something on my
            oscilloscope. Also, a few &quot;LLLLL&quot; appeared on the con=
sole.</div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">When I ran: <br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">./tx_waveforms
            --rate 1e6 --freq 100e6 --subdev A:1, everything looks the
            same but no light, no signal, and no &quot;LLLLL&quot; are disp=
layed
            on the console. Just the message &quot;press ctrl+C to stop
            streaming&quot;.</div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">Any help
            would be very much appreciated. <br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">Regards,</div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif">Lautaro.<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    IF you run:<br>
    <br>
    uhd_config_info --version<br>
    <br>
    On the actual E312, what does it return?<br>
    <br>
    Also, what does:<br>
    <br>
    uhd_usrp_probe <br>
    <br>
    Return (again, on the device itself).<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000078634505dd012ffc--

--===============3002273097629041451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3002273097629041451==--
