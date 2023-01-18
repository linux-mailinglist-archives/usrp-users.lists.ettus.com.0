Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8281F671B47
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 12:56:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F2B43842EE
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 06:56:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674043004; bh=aQPD/jggAOaxR5dXWlk/u5ClcJg+kXrjmUUJ1bs0XZM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IlTwaXxh7yVEoq34wahT3qXvdT7stH0R1r9FufEKWFGV1uMk2W46fI6nzduOS7ZFM
	 Phy1Or6Yw1vIyZhOB4/JNKNEc7oKPlK2LSJNfRUcL0vjVFnTzbQQe1RYa+HdWyybd8
	 uJobrLHH+/XJP5T8zQz3dDdviKK1zZdmQNlYUbl9JvQJWJNyFxcZsRPOXw7O82WiVT
	 3pJLrf8YrHWYyJ2t95YU0J5kF99wLWjck6xtoXuULoWQdmFKlhr5I3fPysoOo52wBQ
	 Rya/BkjpiNs2gTttRKtaZtAg4AUgGuQQ5Oi1CwZM/bAQF52zXbOfsWNQ35y8P3uUcy
	 5zV2zFuifF6sA==
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A5F0383D4C
	for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 06:56:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gTvAoVT+";
	dkim-atps=neutral
Received: by mail-io1-f49.google.com with SMTP id n85so8660633iod.7
        for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 03:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cfm4ynrdLrQ+Yv2CUOIsrc/+znVLLs04jjaN/boBrhk=;
        b=gTvAoVT+H3EeShANEqXlEKDMt1Mv0zhuD3baGCSGH8QmHUDfZTsgn8mjy1lbhfHKGE
         JHGN9O9PTj/7gU80H3gnW4A6C9q5bipNTucbGJGFIajIz4Av6QkROT54M0O0SKJ+KvJ0
         bvfLSegoYyy1Re15/2hfdbrqL27M09vj9Y2JvnzZXpgT9xQG7lNmoc9SwBUH6lnxjMqP
         7oaU0vmFo7AkdtDx9U+incJTV9NOcwm1/C87pb5EkLeFnDUxDj8CUxBl9QfDOoTECZCX
         rSGifQraCmYjZcTCl1rITxx8ZMPPG+Ugmj2ILY+NNNeXhha35W9pchJoZXbwYIB+fnwj
         sWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cfm4ynrdLrQ+Yv2CUOIsrc/+znVLLs04jjaN/boBrhk=;
        b=M6t7O0N+EJjLj916kJNWH1BfBLxcOxb7JaOTDY7lvySxz3ESB2vhl/on8iDJDBCWtk
         YnEYiAkWmyuhSfWes3ThCXfGhvUhxGrTxLJUF2kNdJE6bH2NI4WHtJ6AZgR1JEG7oyQ0
         sVtTwYN8GZzeSj5wp4JYNXaiELeh3OzbRYtLsX2qONRycQq6zV0x0i8Evo6Nq8+w/me7
         +6tmP2/kInuDUFog0QS2JfYJdOksBmfRlXSPclQsY8Gi71oub/xHihcZz0NwNLyEfI8q
         n1cGS8A5f+FZGjuIQlKQWPy6mGipcGNeUE//RAoWImepzuhaFdikXy97RVcs1+C8X4vd
         XCVA==
X-Gm-Message-State: AFqh2koFf/9pytvnAwxUFkLtRuYx6jYAf0AN/RyA3pettAiL6//5tWHk
	/59Lq7hF4N5FDRGt56wpp/DVpjA/7Aoig2V0tY4=
X-Google-Smtp-Source: AMrXdXtJ1gw0a7MVmiJaPNtSTw3la+biRhPwwrvao5+3q4tkgvG5QOOdrvFEfRAZ9T7K3v3YFWqsA8AkPp/M6Dq7amQ=
X-Received: by 2002:a5e:9919:0:b0:6e3:1cfd:56e9 with SMTP id
 t25-20020a5e9919000000b006e31cfd56e9mr388566ioj.157.1674042997355; Wed, 18
 Jan 2023 03:56:37 -0800 (PST)
MIME-Version: 1.0
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com> <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
 <20f83cf4-3f8a-0729-a5e5-5c07f13e95ca@gmail.com> <CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmail.com>
 <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com>
In-Reply-To: <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com>
From: mychk1 1 <mychk2@gmail.com>
Date: Wed, 18 Jan 2023 13:58:07 +0200
Message-ID: <CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: T3I5UTXTL2DEV3DFWO2CU4VGV4PENMNS
X-Message-ID-Hash: T3I5UTXTL2DEV3DFWO2CU4VGV4PENMNS
X-MailFrom: mychk2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T3I5UTXTL2DEV3DFWO2CU4VGV4PENMNS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0437475858057454207=="

--===============0437475858057454207==
Content-Type: multipart/alternative; boundary="00000000000032394105f2888263"

--00000000000032394105f2888263
Content-Type: text/plain; charset="UTF-8"

Thank you for your suggestion.

I ran this example:

   ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --duration 10
usrp_samples.dat

The response with the following warning:


Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.1.0.HEAD-0-gd21735d5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 2
    RX Dboard: B
    RX Subdev: Magnesium
  RX Channel: 3
    RX DSP: 3
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 2
    TX Dboard: B
    TX Subdev: Magnesium
  TX Channel: 3
    TX DSP: 3
    TX Dboard: B
    TX Subdev: Magnesium

Setting RX Rate: 5.000000 Msps...
[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable
by 8 will enable 3 halfbands.
decimation = dsp_rate/samp_rate -> 25
[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable
by 8 will enable 3 halfbands.
decimation = dsp_rate/samp_rate -> 25
Actual RX Rate: 5.000000 Msps...

Setting RX Freq: 98.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 98.000000 MHz...

Setting RX Gain: 20.000000 dB...
Actual RX Gain: 20.000000 dB...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...
DGot an overflow indication. Please consider the following:
  Your write medium must sustain a rate of 20.000000MB/s.
  Dropped samples will not be written to the file.
  Please modify this example for your purposes.
  This message will not appear again.

Done!


On Tue, Jan 17, 2023 at 5:51 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 17/01/2023 10:19, mychk1 1 wrote:
>
> I think, Yes
> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
> UHD 4.1.0.0-0-gd21735d5
>
> On the PC
> uhd_config_info --version
> UHD 4.1.0.HEAD-0-gd21735d5
>
> So, my guess is that your OAI code was statically linked against a
> different version of UHD, or it is configured to use a
>   different set of dynamic libraries.
>
> Try a simple uhd example on your host computer, like the
> rx_samples_to_file example:
>
>
> UHD RX samples to file Allowed options:
>   --help                         help message
>   --args arg                     multi uhd device address args
>   --file arg (=usrp_samples.dat) name of the file to write binary samples
> to
>   --type arg (=short)            sample type: double, float, or short
>   --nsamps arg (=0)              total number of samples to receive
>   --duration arg (=0)            total number of seconds to receive
>   --spb arg (=10000)             samples per buffer
>   --rate arg (=1000000)          rate of incoming samples
>   --freq arg (=0)                RF center frequency in Hz
>   --lo-offset arg (=0)           Offset for frontend LO in Hz (optional)
>   --gain arg                     gain for the RF chain
>   --ant arg                      antenna selection
>   --subdev arg                   subdevice specification
>   --channel arg (=0)             which channel to use
>   --bw arg                       analog frontend filter bandwidth in Hz
>   --ref arg (=internal)          reference source (internal, external,
> mimo)
>   --wirefmt arg (=sc16)          wire format (sc8, sc16 or s16)
>   --setup arg (=1)               seconds of setup time
>   --progress                     periodically display short-term bandwidth
>   --stats                        show average bandwidth on exit
>   --sizemap                      track packet size and display breakdown
> on
>                                  exit
>   --null                         run without writing to file
>   --continue                     don't abort on a bad packet
>   --skip-lo                      skip checking LO lock status
>   --int-n                        tune USRP with integer-N tuning
>
>
> This application streams data from a single channel of a USRP device to a
> file.
>
> On Tue, Jan 17, 2023 at 5:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 17/01/2023 09:51, mychk1 1 wrote:
>>
>> Yes, I'm running OAI on a workstation.
>>
>> Run:
>>
>> uhd_config_info --version
>>
>> on BOTH your PC and the N310 -- do they match?
>>
>>
>>
>> I already updated the SDCard using this command:
>> >>
>> sudo dd if=/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg of=/dev/sdb
>> bs=1M
>> <<
>> and get this output:
>> >>
>>    15160+0 records in
>>    15160+0 records out
>>    15896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, 13.7 MB/s
>> <<
>> But the MPM Version still 4 not 4.2.
>>
>> what do you think?
>>
>>
>> BR,
>>
>> On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 17/01/2023 06:28, mychk1 1 wrote:
>>>
>>>
>>> Hello Community,
>>>
>>> I using the USRP N310 with openairinterface5G code.
>>>
>>> recently,  I faced an error called updating MPM version. Is there a
>>> commend to update MPM version?
>>>
>>> [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
>>> [INFO] [MPM.main] Spawning RPC process...
>>> [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
>>> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>>> [INFO] [MPM.PeriphManager] init() called with device args
>>> `clock_source=internal,time_source=internal'.
>>> [INFO] [MPM.RPCServer] RPC server ready!
>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
>>> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual:
>>> 4.0. Please update the version of MPM on your USRP device.
>>> terminate called after throwing an instance of 'uhd::runtime_error'
>>>   what():  RuntimeError: MPM minor compat number mismatch. Expected: 4.2
>>> Actual: 4.0. Please update the version of MPM on your USRP device.
>>> Aborted
>>>
>>>
>>>
>>> Some useful logs:
>>>  - In the host : uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>> UHD_4.1.0.HEAD-0-gd21735d5
>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>> mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
>>> [WARNING] [MPM.RPCServer] A timeout event occured!
>>> [INFO] [MPM.PeriphManager] init() called with device args
>>> `fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
>>>   _____________________________________________________
>>>  /
>>> |       Device: N300-Series Device
>>> |     _____________________________________________________
>>> |    /
>>> |   |       Mboard: ni-n3xx-31FD9DD
>>> |   |   dboard_0_pid: 336
>>> |   |   dboard_0_serial: 31F6BC8
>>> |   |   dboard_1_pid: 336
>>> |   |   dboard_1_serial: 31F6BF2
>>> |   |   eeprom_version: 3
>>> |   |   fs_version: 20210630170909
>>> |   |   mender_artifact: v4.1.0.0_n3xx
>>> |   |   mpm_sw_version: 4.1.0.0-gd21735d5
>>> |   |   pid: 16962
>>> |   |   product: n310
>>> |   |   rev: 10
>>> |   |   rpc_connection: remote
>>> |   |   serial: 31FD9DD
>>> |   |   type: n3xx
>>> |   |   MPM Version: 4.0
>>> |   |   FPGA Version: 8.0
>>> |   |   FPGA git hash: d5c2750.clean
>>> |   |
>>> |   |   Time sources:  internal, external, gpsdo, sfp0
>>> |   |   Clock sources: external, internal, gpsdo
>>> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
>>> gps_time, gps_tpv
>>> |     _____________________________________________________
>>>
>>>
>>>
>>> - The UHD version SD-card attached with the USRP
>>>
>>> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>> UHD 4.1.0.0-0-gd21735d5
>>>
>>> BR,
>>> Marcin
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> To clarify.
>>>
>>> You're running OAI on a PC, attached to the N310?
>>>
>>> The N310 system image can be easily updated:
>>>
>>>
>>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writing_the_disk_image
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>

--00000000000032394105f2888263
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for your suggestion.<br></div><div><br></di=
v><div>I ran this example: <br><pre>   ./rx_samples_to_file --freq 98e6 --r=
ate 5e6 --gain 20 --duration 10 usrp_samples.dat<br><br></pre><pre>The resp=
onse with the following warning:<br><br><br>Creating the usrp device with: =
...<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.H=
EAD-0-gd21735d5<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with =
args: mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD=
,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>[WARNING] [MPM.RPCServer]=
 A timeout event occured!<br>[INFO] [MPM.PeriphManager] init() called with =
device args `fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_sourc=
e=3Dinternal,time_source=3Dinternal&#39;.<br>[WARNING] [RFNOC::GRAPH] One o=
r more blocks timed out during flush!<br>Using Device: Single USRP:<br>=C2=
=A0 Device: N300-Series Device<br>=C2=A0 Mboard 0: n310<br>=C2=A0 RX Channe=
l: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: Magnesium<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1=
<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=
=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP: 2<br>=C2=A0 =C2=A0 RX Dboard: B<=
br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=A0 RX Channel: 3<br>=C2=A0 =C2=
=A0 RX DSP: 3<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: Mag=
nesium<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 =
TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br>=C2=A0 TX Channel: 1<=
br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 T=
X Subdev: Magnesium<br>=C2=A0 TX Channel: 2<br>=C2=A0 =C2=A0 TX DSP: 2<br>=
=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br>=C2=A0 =
TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 3<br>=C2=A0 =C2=A0 TX Dboard: B<br>=
=C2=A0 =C2=A0 TX Subdev: Magnesium<br><br>Setting RX Rate: 5.000000 Msps...=
<br><span style=3D"color:rgb(127,96,0)">[WARNING] [0/DDC#0] The requested d=
ecimation is odd; the user should expect passband CIC rolloff.<br>Select an=
 even decimation to ensure that a halfband filter is enabled.<br>Decimation=
s factorable by 4 will enable 2 halfbands, those factorable by 8 will enabl=
e 3 halfbands.<br>decimation =3D dsp_rate/samp_rate -&gt; 25<br>[WARNING] [=
0/DDC#0] The requested decimation is odd; the user should expect passband C=
IC rolloff.<br>Select an even decimation to ensure that a halfband filter i=
s enabled.<br>Decimations factorable by 4 will enable 2 halfbands, those fa=
ctorable by 8 will enable 3 halfbands.<br>decimation =3D dsp_rate/samp_rate=
 -&gt; 25<br>Actual RX Rate: 5.000000 Msps...</span><br><br>Setting RX Freq=
: 98.000000 MHz...<br>Setting RX LO Offset: 0.000000 MHz...<br>Actual RX Fr=
eq: 98.000000 MHz...<br><br>Setting RX Gain: 20.000000 dB...<br>Actual RX G=
ain: 20.000000 dB...<br><br>Waiting for &quot;lo_locked&quot;: ++++++++++ l=
ocked.<br><br>Press Ctrl + C to stop streaming...<br>DGot an overflow indic=
ation. Please consider the following:<br>=C2=A0 Your write medium must sust=
ain a rate of 20.000000MB/s.<br>=C2=A0 Dropped samples will not be written =
to the file.<br>=C2=A0 Please modify this example for your purposes.<br>=C2=
=A0 This message will not appear again.<br><br>Done!<br></pre></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Jan 17, 2023 at 5:51 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 17/01/2023 10:19, mychk1 1 wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">I think, Yes <br>
        root@ni-n3xx-31FD9DD:~# uhd_config_info --version<br>
        <div>UHD 4.1.0.0-0-gd21735d5</div>
        <div><br>
          On the PC<br>
        </div>
        <div>uhd_config_info --version<br>
          UHD 4.1.0.HEAD-0-gd21735d5<br>
        </div>
      </div>
    </blockquote>
    So, my guess is that your OAI code was statically linked against a
    different version of UHD, or it is configured to use a<br>
    =C2=A0 different set of dynamic libraries.<br>
    <br>
    Try a simple uhd example on your host computer, like the
    rx_samples_to_file example:<br>
    <br>
    <br>
    <blockquote type=3D"cite">UHD
      RX samples to file Allowed options:<br>
      =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 help message<br>
      =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 multi=
 uhd device address args<br>
      =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to write bin=
ary
      samples to<br>
      =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample type: double, float, or
      short<br>
      =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples to
      receive<br>
      =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of seconds to
      receive<br>
      =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer<br>
      =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 rate of incoming samples<br>
      =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency in Hz<br>
      =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Offset for frontend LO in Hz
      (optional)<br>
      =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gain =
for the RF chain<br>
      =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 antenna selection<br>
      =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevice spec=
ification<br>
      =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use<br>
      =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 analog frontend filter bandwidth
      in Hz<br>
      =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 reference source (internal,
      external, mimo)<br>
      =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 wire format (sc8, sc16 or s16)<br>
      =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time<br>
      =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perio=
dically display short-term
      bandwidth<br>
      =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 show average bandwidth on exit<br>
      =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 track packet size and display
      breakdown on <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit<br>
      =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 run without writing to file<br>
      =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 don&#=
39;t abort on a bad packet<br>
      =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 skip checking LO lock status<br>
      =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 tune USRP with integer-N tuning<br>
      <br>
      <br>
      This application streams data from a single channel of a USRP
      device to a file.<br>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023 at 5:07
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/01/2023 09:51, mychk1 1 wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div>
                    <div>Yes, I&#39;m running OAI on a workstation. <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            Run:<br>
            <br>
            uhd_config_info --version<br>
            <br>
            on BOTH your PC and the N310 -- do they match?<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div>
                    <div><br>
                    </div>
                    I already updated the SDCard using this command: <br>
                    &gt;&gt;<br>
                    sudo dd
                    if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg
                    of=3D/dev/sdb bs=3D1M<br>
                    &lt;&lt;<br>
                  </div>
                  <div>and get this output: <br>
                  </div>
                  <div>&gt;&gt;<br>
                    =C2=A0=C2=A0 15160+0 records in<br>
                    =C2=A0 =C2=A015160+0 records out<br>
                    =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, =
1160.93
                    s, 13.7 MB/s</div>
                  <div>&lt;&lt;<br>
                  </div>
                  But the MPM Version still 4 not 4.2.<br>
                  <br>
                </div>
                <div>what do you think? <br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                BR,<br>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023
                  at 4:35 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 17/01/2023 06:28, mychk1 1 wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                        <div>Hello Community, <br>
                          <br>
                        </div>
                        <div>I using the USRP N310 with
                          openairinterface5G code. <br>
                          <br>
                        </div>
                        <div>recently,=C2=A0 I faced an error called updati=
ng
                          MPM version. Is there a commend to update MPM
                          version? <br>
                          <br>
                          [INFO] [MPM.main] Launching USRP/MPM, version:
                          4.1.0.0-gd21735d5<br>
                          [INFO] [MPM.main] Spawning RPC process...<br>
                          [INFO] [MPM.PeriphManager] Device serial
                          number: 31FD9DD<br>
                          [INFO] [MPM.PeriphManager] Initialized 2
                          daughterboard(s).<br>
                          [INFO] [MPM.PeriphManager] init() called with
                          device args
                          `clock_source=3Dinternal,time_source=3Dinternal&#=
39;.<br>
                          [INFO] [MPM.RPCServer] RPC server ready!<br>
                          [INFO] [MPM.RPCServer] Spawning watchdog
                          task...<br>
                          <span style=3D"color:rgb(255,0,0)">[ERROR]
                            [MPMD] MPM minor compat number mismatch.
                            Expected: 4.2 Actual: 4.0. Please update the
                            version of MPM on your USRP device.</span><br>
                          terminate called after throwing an instance of
                          &#39;uhd::runtime_error&#39;<br>
                          =C2=A0 what(): =C2=A0RuntimeError: MPM minor comp=
at
                          number mismatch. Expected: 4.2 Actual: 4.0.
                          Please update the version of MPM on your USRP
                          device.<br>
                          Aborted<br>
                          <br>
                          <br>
                          <br>
                        </div>
                        <div>Some useful logs: <br>
                        </div>
                        <div>=C2=A0- In the host : uhd_usrp_probe <br>
                          <div>
                            <div>
                              <div>
                                <div>[INFO] [UHD] linux; GNU C++ version
                                  7.5.0; Boost_106501;
                                  UHD_4.1.0.HEAD-0-gd21735d5<br>
                                  [INFO] [MPMD] Initializing 1 device(s)
                                  in parallel with args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                                  [WARNING] [MPM.RPCServer] A timeout
                                  event occured!<br>
                                  [INFO] [MPM.PeriphManager] init()
                                  called with device args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal=
,time_source=3Dinternal&#39;.<br>
                                  =C2=A0
                                  _________________________________________=
____________<br>
                                  =C2=A0/<br>
                                  | =C2=A0 =C2=A0 =C2=A0 Device: N300-Serie=
s Device<br>
                                  | =C2=A0 =C2=A0
                                  _________________________________________=
____________<br>
                                  | =C2=A0 =C2=A0/<br>
                                  | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: n=
i-n3xx-31FD9DD<br>
                                  | =C2=A0 | =C2=A0 dboard_0_pid: 336<br>
                                  | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC=
8<br>
                                  | =C2=A0 | =C2=A0 dboard_1_pid: 336<br>
                                  | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF=
2<br>
                                  | =C2=A0 | =C2=A0 eeprom_version: 3<br>
                                  | =C2=A0 | =C2=A0 fs_version: 20210630170=
909<br>
                                  | =C2=A0 | =C2=A0 mender_artifact: v4.1.0=
.0_n3xx<br>
                                  | =C2=A0 | =C2=A0 mpm_sw_version:
                                  4.1.0.0-gd21735d5<br>
                                  | =C2=A0 | =C2=A0 pid: 16962<br>
                                  | =C2=A0 | =C2=A0 product: n310<br>
                                  | =C2=A0 | =C2=A0 rev: 10<br>
                                  | =C2=A0 | =C2=A0 rpc_connection: remote<=
br>
                                  | =C2=A0 | =C2=A0 serial: 31FD9DD<br>
                                  | =C2=A0 | =C2=A0 type: n3xx<br>
                                  | =C2=A0 | =C2=A0 MPM Version: 4.0<br>
                                  | =C2=A0 | =C2=A0 FPGA Version: 8.0<br>
                                  | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.=
clean<br>
                                  | =C2=A0 | =C2=A0 <br>
                                  | =C2=A0 | =C2=A0 Time sources: =C2=A0int=
ernal,
                                  external, gpsdo, sfp0<br>
                                  | =C2=A0 | =C2=A0 Clock sources: external=
,
                                  internal, gpsdo<br>
                                  | =C2=A0 | =C2=A0 Sensors: ref_locked,
                                  gps_locked, temp, fan, gps_gpgga,
                                  gps_sky, gps_time, gps_tpv<br>
                                  | =C2=A0 =C2=A0
                                  _________________________________________=
____________</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div>- The UHD version SD-card attached
                                  with the USRP <br>
                                  <br>
                                  root@ni-n3xx-31FD9DD:~#
                                  uhd_config_info --version<br>
                                  UHD 4.1.0.0-0-gd21735d5</div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div><br>
                        </div>
                        <div>BR,<br>
                        </div>
                        <div>Marcin <br>
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
                    To clarify.<br>
                    <br>
                    You&#39;re running OAI on a PC, attached to the N310?<b=
r>
                    <br>
                    The N310 system image can be easily updated:<br>
                    <br>
                    <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N32=
1_Getting_Started_Guide#Updating_the_files_system_by_writing_the_disk_image=
" target=3D"_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000032394105f2888263--

--===============0437475858057454207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0437475858057454207==--
