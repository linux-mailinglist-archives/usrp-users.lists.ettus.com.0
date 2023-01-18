Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891367233B
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 17:30:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAEAA38420E
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 11:30:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674059418; bh=LEb/Bqu1/IJEUDKYZ/l6seCrf/BR5EWWxX+C8gomRcY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Rl2L6JvREKzYFP8XZqffcVV/IU/In0qed3IFWAGa3UTJwry5DceeeDwl3rl9+PfOY
	 YHf1s8lf91/dvroW2xY+ne9FXcBzsRsVmwGNQRCwshNFe7GX0Wp8+6htQJ5XYu7Yp3
	 3xh8H+F4UatW1ncl13NBv04i4UMToYo9le/g/iW3Cze4zbhVeLsz7L8qEy/1RqGHij
	 hMs2IJFMA3V42m91m67o+flVKvSWF2k3eqyGZuunPAg3LghKblkqUQzZV0P5YP0EHr
	 C3TPsLbiXwxTjxnbvWp/fEVv1JgXKpAl7hlv9uFXoW8YsuLBoAvp7h7L7CxUIgBaWo
	 wxAxAWUx+rNNQ==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 11DD5383A4E
	for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 11:30:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ITzPCIaB";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id e204so438625iof.1
        for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 08:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LhYhjKBxF1RiIFAL1pfSNOLMw+5o8cAqgTg7Dlnp5l0=;
        b=ITzPCIaB41a89UP3useQV+rZZFZKOdG56XHIkllu+0YTQdyKRICdsjTgTENiJKs/7C
         aybEaC7ySJUxqei4VeyZVxSP7rs0O7G7SccYKIhL2mHDsWEGFdSCMwGFPisd3U6v6kyn
         39DVJyf5RtQaGYf4V1/tRJvMLAuYstO68GLLDnP4BYoqbE7OuGr6WOMoFgjYBcS78HZt
         UnTp2ErwtEugAthgOBqh+1TZ2do1bxHbI6hw+SSFnwKyqyJMwVa/ow5pSwZu9ljzmFdu
         Rl/zntomufZHG7UTg+ohHA/bN96wLu1K8wurLSfGw37APOTiZuO55ETuh6I1lEveXRan
         n0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LhYhjKBxF1RiIFAL1pfSNOLMw+5o8cAqgTg7Dlnp5l0=;
        b=Nut8KFwmY9L5FCAJa0BaoSFZVKyVDoO6Q1mGXICjeVDPCdARbjzVDaxd6duK4rpKOs
         pFuVQolU2phMy03BS4bf+6xVcgOED+SQ+2Y9kkWSj1SkBBH4cof5eaqgPAD18RYghnfE
         GlAzNqDBqiF/0plarU7MK87QW+tYEz+I6yK3q1wltTnbDSM5gLS88dJW99NXHCW8FNtf
         R5DlNXZ23Tc0lLIldtGbDzXdPF9pmC+92Fe8UApoJ9yw5SZRjfTpy6N8xRqkuyrQqh/v
         F+E9ca7f5aws8iQZd8Ouy8+xWwO5bkJE40M6xDsW30uGLipJeNuNN4vWjnqueqnChpjM
         DWnw==
X-Gm-Message-State: AFqh2krux7956kTYcnUYsbr0uvEpuMEGIU7ke5hMPyl61PvyT0zG/0Ol
	sRLuGYVVXJ5eD9y3W2Pe/3jZdsVMYhra+Fq4F50=
X-Google-Smtp-Source: AMrXdXtJ/OMQg66uTMUHpYyeKE0A4fkXDy4HRcf0DtDt/LoKIacFK3SCwkeE5ZXLIOr66Wx0ZooSm7ZJ3D1zF4i1vO4=
X-Received: by 2002:a05:6602:5d1:b0:6e2:da04:416b with SMTP id
 w17-20020a05660205d100b006e2da04416bmr562739iox.176.1674059410339; Wed, 18
 Jan 2023 08:30:10 -0800 (PST)
MIME-Version: 1.0
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com> <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
 <20f83cf4-3f8a-0729-a5e5-5c07f13e95ca@gmail.com> <CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmail.com>
 <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com> <CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmail.com>
 <d0ebe026-1452-9867-e867-dafacce9288f@gmail.com>
In-Reply-To: <d0ebe026-1452-9867-e867-dafacce9288f@gmail.com>
From: mychk1 1 <mychk2@gmail.com>
Date: Wed, 18 Jan 2023 18:31:40 +0200
Message-ID: <CAEygNraUZOKVEaERfhdRHF9SHo--EPhm4eEpOy22jH=fQWPHEQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PDUMJXY7AZTHTZKZLUDVW7ZFTHMUX5EY
X-Message-ID-Hash: PDUMJXY7AZTHTZKZLUDVW7ZFTHMUX5EY
X-MailFrom: mychk2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDUMJXY7AZTHTZKZLUDVW7ZFTHMUX5EY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5321162603186381112=="

--===============5321162603186381112==
Content-Type: multipart/alternative; boundary="0000000000007c7bbb05f28c541b"

--0000000000007c7bbb05f28c541b
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus for your support.

Acually, I belive this error is not related to OAI specifically.
Now, I change the UHD version to UHD V4.2.0 and when and the same error
appears

uhd_image_loader --args "type=n3xx,addr=192.168.10.2,fpga=HG"

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.2.0.HEAD-0-g46a70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Installing component `fpga'
[INFO] [MPM.PeriphManager] Installing component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,time_source=internal'.
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2,find_all=1
[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.
Please update the version of MPM on your USRP device.
Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.2
Actual: 4.0. Please update the version of MPM on your USRP device.



BR,
Mina Yonan



On Wed, Jan 18, 2023 at 5:32 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 18/01/2023 06:58, mychk1 1 wrote:
>
> Thank you for your suggestion.
>
> I ran this example:
>
>    ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --duration 10 usrp_samples.dat
>
>
> The response with the following warning:
>
> The warnings aren't important in this case.  What this means is that your
> PC and N310 versions of UHD are compatible and
>   working properly with each other.
>
> This also implies that your OAI is using a different version of
> UHD--either it's bundled into a container that uses different
>   versions of the library, or it was statically linked against a different
> version of UHD.  Since I personally know NOTHING
>   about OAI, that's as far as *I* can take you, but perhaps others on this
> list have some insights into it.
>
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-gd21735d5
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
> Using Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: n310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 2
>     RX DSP: 2
>     RX Dboard: B
>     RX Subdev: Magnesium
>   RX Channel: 3
>     RX DSP: 3
>     RX Dboard: B
>     RX Subdev: Magnesium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 2
>     TX DSP: 2
>     TX Dboard: B
>     TX Subdev: Magnesium
>   TX Channel: 3
>     TX DSP: 3
>     TX Dboard: B
>     TX Subdev: Magnesium
>
> Setting RX Rate: 5.000000 Msps...[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 25
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 25
> Actual RX Rate: 5.000000 Msps...
>
> Setting RX Freq: 98.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 98.000000 MHz...
>
> Setting RX Gain: 20.000000 dB...
> Actual RX Gain: 20.000000 dB...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
> DGot an overflow indication. Please consider the following:
>   Your write medium must sustain a rate of 20.000000MB/s.
>   Dropped samples will not be written to the file.
>   Please modify this example for your purposes.
>   This message will not appear again.
>
> Done!
>
>
> On Tue, Jan 17, 2023 at 5:51 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 17/01/2023 10:19, mychk1 1 wrote:
>>
>> I think, Yes
>> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>> UHD 4.1.0.0-0-gd21735d5
>>
>> On the PC
>> uhd_config_info --version
>> UHD 4.1.0.HEAD-0-gd21735d5
>>
>> So, my guess is that your OAI code was statically linked against a
>> different version of UHD, or it is configured to use a
>>   different set of dynamic libraries.
>>
>> Try a simple uhd example on your host computer, like the
>> rx_samples_to_file example:
>>
>>
>> UHD RX samples to file Allowed options:
>>   --help                         help message
>>   --args arg                     multi uhd device address args
>>   --file arg (=usrp_samples.dat) name of the file to write binary samples
>> to
>>   --type arg (=short)            sample type: double, float, or short
>>   --nsamps arg (=0)              total number of samples to receive
>>   --duration arg (=0)            total number of seconds to receive
>>   --spb arg (=10000)             samples per buffer
>>   --rate arg (=1000000)          rate of incoming samples
>>   --freq arg (=0)                RF center frequency in Hz
>>   --lo-offset arg (=0)           Offset for frontend LO in Hz (optional)
>>   --gain arg                     gain for the RF chain
>>   --ant arg                      antenna selection
>>   --subdev arg                   subdevice specification
>>   --channel arg (=0)             which channel to use
>>   --bw arg                       analog frontend filter bandwidth in Hz
>>   --ref arg (=internal)          reference source (internal, external,
>> mimo)
>>   --wirefmt arg (=sc16)          wire format (sc8, sc16 or s16)
>>   --setup arg (=1)               seconds of setup time
>>   --progress                     periodically display short-term bandwidth
>>   --stats                        show average bandwidth on exit
>>   --sizemap                      track packet size and display breakdown
>> on
>>                                  exit
>>   --null                         run without writing to file
>>   --continue                     don't abort on a bad packet
>>   --skip-lo                      skip checking LO lock status
>>   --int-n                        tune USRP with integer-N tuning
>>
>>
>> This application streams data from a single channel of a USRP device to a
>> file.
>>
>> On Tue, Jan 17, 2023 at 5:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 17/01/2023 09:51, mychk1 1 wrote:
>>>
>>> Yes, I'm running OAI on a workstation.
>>>
>>> Run:
>>>
>>> uhd_config_info --version
>>>
>>> on BOTH your PC and the N310 -- do they match?
>>>
>>>
>>>
>>> I already updated the SDCard using this command:
>>> >>
>>> sudo dd if=/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg of=/dev/sdb
>>> bs=1M
>>> <<
>>> and get this output:
>>> >>
>>>    15160+0 records in
>>>    15160+0 records out
>>>    15896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, 13.7 MB/s
>>> <<
>>> But the MPM Version still 4 not 4.2.
>>>
>>> what do you think?
>>>
>>>
>>> BR,
>>>
>>> On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech <patchvonbraun@gmail.com>
>>> wrote:
>>>
>>>> On 17/01/2023 06:28, mychk1 1 wrote:
>>>>
>>>>
>>>> Hello Community,
>>>>
>>>> I using the USRP N310 with openairinterface5G code.
>>>>
>>>> recently,  I faced an error called updating MPM version. Is there a
>>>> commend to update MPM version?
>>>>
>>>> [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
>>>> [INFO] [MPM.main] Spawning RPC process...
>>>> [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
>>>> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>> `clock_source=internal,time_source=internal'.
>>>> [INFO] [MPM.RPCServer] RPC server ready!
>>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
>>>> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual:
>>>> 4.0. Please update the version of MPM on your USRP device.
>>>> terminate called after throwing an instance of 'uhd::runtime_error'
>>>>   what():  RuntimeError: MPM minor compat number mismatch. Expected:
>>>> 4.2 Actual: 4.0. Please update the version of MPM on your USRP device.
>>>> Aborted
>>>>
>>>>
>>>>
>>>> Some useful logs:
>>>>  - In the host : uhd_usrp_probe
>>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>> UHD_4.1.0.HEAD-0-gd21735d5
>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>> mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
>>>> [WARNING] [MPM.RPCServer] A timeout event occured!
>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>> `fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
>>>>   _____________________________________________________
>>>>  /
>>>> |       Device: N300-Series Device
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       Mboard: ni-n3xx-31FD9DD
>>>> |   |   dboard_0_pid: 336
>>>> |   |   dboard_0_serial: 31F6BC8
>>>> |   |   dboard_1_pid: 336
>>>> |   |   dboard_1_serial: 31F6BF2
>>>> |   |   eeprom_version: 3
>>>> |   |   fs_version: 20210630170909
>>>> |   |   mender_artifact: v4.1.0.0_n3xx
>>>> |   |   mpm_sw_version: 4.1.0.0-gd21735d5
>>>> |   |   pid: 16962
>>>> |   |   product: n310
>>>> |   |   rev: 10
>>>> |   |   rpc_connection: remote
>>>> |   |   serial: 31FD9DD
>>>> |   |   type: n3xx
>>>> |   |   MPM Version: 4.0
>>>> |   |   FPGA Version: 8.0
>>>> |   |   FPGA git hash: d5c2750.clean
>>>> |   |
>>>> |   |   Time sources:  internal, external, gpsdo, sfp0
>>>> |   |   Clock sources: external, internal, gpsdo
>>>> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
>>>> gps_time, gps_tpv
>>>> |     _____________________________________________________
>>>>
>>>>
>>>>
>>>> - The UHD version SD-card attached with the USRP
>>>>
>>>> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>>> UHD 4.1.0.0-0-gd21735d5
>>>>
>>>> BR,
>>>> Marcin
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>> To clarify.
>>>>
>>>> You're running OAI on a PC, attached to the N310?
>>>>
>>>> The N310 system image can be easily updated:
>>>>
>>>>
>>>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writing_the_disk_image
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>
>>
>

--0000000000007c7bbb05f28c541b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Thanks Marcus for your support.<br><br=
></div>Acually, I belive this error is not related to OAI specifically. <br=
></div>Now, I change the UHD version to UHD V4.2.0 and when and the same er=
ror appears<br><br>uhd_image_loader --args &quot;type=3Dn3xx,addr=3D192.168=
.10.2,fpga=3DHG&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boo=
st_106501; UHD_4.2.0.HEAD-0-g46a70d85<br>[INFO] [MPMD] Initializing 1 devic=
e(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3D=
n310,serial=3D31FD9DD,fpga=3DHG,claimed=3DFalse,skip_init=3D1<br>[INFO] [MP=
MD] Claimed device without full initialization.<br>[INFO] [MPMD IMAGE LOADE=
R] Starting update. This may take a while.<br>[INFO] [MPM.PeriphManager] In=
stalling component `fpga&#39;<br>[INFO] [MPM.PeriphManager] Installing comp=
onent `dts&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>=
[INFO] [MPM.PeriphManager] Device serial number: 31FD9DD<br>[INFO] [MPM.Per=
iphManager] Initialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] i=
nit() called with device args `clock_source=3Dinternal,time_source=3Dintern=
al&#39;.<br>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.=
<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=3DHG,claim=
ed=3DFalse,addr=3D192.168.10.2,find_all=3D1<br>[ERROR] [MPMD] MPM minor com=
pat number mismatch. Expected: 4.2 Actual: 4.0. Please update the version o=
f MPM on your USRP device.<br>Error: RuntimeError: MPM minor compat number =
mismatch. Expected: 4.2 Actual: 4.0. Please update the version of MPM on yo=
ur USRP device.<br><br><br><br></div>BR,<br></div><div>Mina Yonan</div><div=
><br></div><div><div><br> </div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 18, 2023 at 5:32 PM Marcu=
s D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div>
    <div>On 18/01/2023 06:58, mychk1 1 wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Thank you for your suggestion.<br>
        </div>
        <div><br>
        </div>
        <div>I ran this example: <br>
          <pre>   ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --d=
uration 10 usrp_samples.dat

</pre>
          <pre>The response with the following warning:
</pre>
        </div>
      </div>
    </blockquote>
    The warnings aren&#39;t important in this case.=C2=A0 What this means i=
s that
    your PC and N310 versions of UHD are compatible and<br>
    =C2=A0 working properly with each other. <br>
    <br>
    This also implies that your OAI is using a different version of
    UHD--either it&#39;s bundled into a container that uses different<br>
    =C2=A0 versions of the library, or it was statically linked against a
    different version of UHD.=C2=A0 Since I personally know NOTHING<br>
    =C2=A0 about OAI, that&#39;s as far as *I* can take you, but perhaps ot=
hers
    on this list have some insights into it.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <pre>Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
d21735d5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=3DHG,claimed=
=3DFalse,addr=3D192.168.10.2
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mgmt_a=
ddr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal,time_source=3Din=
ternal&#39;.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
Using Device: Single USRP:
=C2=A0 Device: N300-Series Device
=C2=A0 Mboard 0: n310
=C2=A0 RX Channel: 0
=C2=A0 =C2=A0 RX DSP: 0
=C2=A0 =C2=A0 RX Dboard: A
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 1
=C2=A0 =C2=A0 RX DSP: 1
=C2=A0 =C2=A0 RX Dboard: A
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 2
=C2=A0 =C2=A0 RX DSP: 2
=C2=A0 =C2=A0 RX Dboard: B
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 3
=C2=A0 =C2=A0 RX DSP: 3
=C2=A0 =C2=A0 RX Dboard: B
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 TX Channel: 0
=C2=A0 =C2=A0 TX DSP: 0
=C2=A0 =C2=A0 TX Dboard: A
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 1
=C2=A0 =C2=A0 TX DSP: 1
=C2=A0 =C2=A0 TX Dboard: A
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 2
=C2=A0 =C2=A0 TX DSP: 2
=C2=A0 =C2=A0 TX Dboard: B
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 3
=C2=A0 =C2=A0 TX DSP: 3
=C2=A0 =C2=A0 TX Dboard: B
=C2=A0 =C2=A0 TX Subdev: Magnesium

Setting RX Rate: 5.000000 Msps...
<span style=3D"color:rgb(127,96,0)">[WARNING] [0/DDC#0] The requested decim=
ation is odd; the user should expect passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -&gt; 25
[WARNING] [0/DDC#0] The requested decimation is odd; the user should expect=
 passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -&gt; 25
Actual RX Rate: 5.000000 Msps...</span>

Setting RX Freq: 98.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 98.000000 MHz...

Setting RX Gain: 20.000000 dB...
Actual RX Gain: 20.000000 dB...

Waiting for &quot;lo_locked&quot;: ++++++++++ locked.

Press Ctrl + C to stop streaming...
DGot an overflow indication. Please consider the following:
=C2=A0 Your write medium must sustain a rate of 20.000000MB/s.
=C2=A0 Dropped samples will not be written to the file.
=C2=A0 Please modify this example for your purposes.
=C2=A0 This message will not appear again.

Done!
</pre>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023 at 5:51
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/01/2023 10:19, mychk1 1 wrote:<br>
            </div>
            <blockquote type=3D"cite">
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
            So, my guess is that your OAI code was statically linked
            against a different version of UHD, or it is configured to
            use a<br>
            =C2=A0 different set of dynamic libraries.<br>
            <br>
            Try a simple uhd example on your host computer, like the
            rx_samples_to_file example:<br>
            <br>
            <br>
            <blockquote type=3D"cite">UHD RX samples to file Allowed
              options:<br>
              =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 help message<br>
              =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 multi uhd device address
              args<br>
              =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to w=
rite
              binary samples to<br>
              =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample type: double,
              float, or short<br>
              =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples
              to receive<br>
              =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of seconds
              to receive<br>
              =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer<br>
              =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rate of incoming samples<br>
              =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency =
in Hz<br>
              =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Offset for frontend LO in
              Hz (optional)<br>
              =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 gain for the RF chain<br>
              =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 antenna selection<br>
              =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevic=
e specification<br>
              =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use<br>
              =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 analog frontend filter
              bandwidth in Hz<br>
              =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 reference source
              (internal, external, mimo)<br>
              =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 wire format (sc8, sc16 or
              s16)<br>
              =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time<br>
              =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 periodically display
              short-term bandwidth<br>
              =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 show average bandwidth on
              exit<br>
              =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 track packet size and
              display breakdown on <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit<br>
              =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 run without writing to
              file<br>
              =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 don&#39;t abort on a bad
              packet<br>
              =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 skip checking LO lock
              status<br>
              =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 tune USRP with integer-N
              tuning<br>
              <br>
              <br>
              This application streams data from a single channel of a
              USRP device to a file.<br>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023
                  at 5:07 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 17/01/2023 09:51, mychk1 1 wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>
                          <div>
                            <div>Yes, I&#39;m running OAI on a workstation.
                              <br>
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
                            I already updated the SDCard using this
                            command: <br>
                            &gt;&gt;<br>
                            sudo dd
                            if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.s=
dimg
                            of=3D/dev/sdb bs=3D1M<br>
                            &lt;&lt;<br>
                          </div>
                          <div>and get this output: <br>
                          </div>
                          <div>&gt;&gt;<br>
                            =C2=A0=C2=A0 15160+0 records in<br>
                            =C2=A0 =C2=A015160+0 records out<br>
                            =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) =
copied,
                            1160.93 s, 13.7 MB/s</div>
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
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan
                          17, 2023 at 4:35 PM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                                <div>recently,=C2=A0 I faced an error calle=
d
                                  updating MPM version. Is there a
                                  commend to update MPM version? <br>
                                  <br>
                                  [INFO] [MPM.main] Launching USRP/MPM,
                                  version: 4.1.0.0-gd21735d5<br>
                                  [INFO] [MPM.main] Spawning RPC
                                  process...<br>
                                  [INFO] [MPM.PeriphManager] Device
                                  serial number: 31FD9DD<br>
                                  [INFO] [MPM.PeriphManager] Initialized
                                  2 daughterboard(s).<br>
                                  [INFO] [MPM.PeriphManager] init()
                                  called with device args
                                  `clock_source=3Dinternal,time_source=3Din=
ternal&#39;.<br>
                                  [INFO] [MPM.RPCServer] RPC server
                                  ready!<br>
                                  [INFO] [MPM.RPCServer] Spawning
                                  watchdog task...<br>
                                  <span style=3D"color:rgb(255,0,0)">[ERROR=
]
                                    [MPMD] MPM minor compat number
                                    mismatch. Expected: 4.2 Actual: 4.0.
                                    Please update the version of MPM on
                                    your USRP device.</span><br>
                                  terminate called after throwing an
                                  instance of &#39;uhd::runtime_error&#39;<=
br>
                                  =C2=A0 what(): =C2=A0RuntimeError: MPM mi=
nor
                                  compat number mismatch. Expected: 4.2
                                  Actual: 4.0. Please update the version
                                  of MPM on your USRP device.<br>
                                  Aborted<br>
                                  <br>
                                  <br>
                                  <br>
                                </div>
                                <div>Some useful logs: <br>
                                </div>
                                <div>=C2=A0- In the host : uhd_usrp_probe <=
br>
                                  <div>
                                    <div>
                                      <div>
                                        <div>[INFO] [UHD] linux; GNU C++
                                          version 7.5.0; Boost_106501;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [INFO] [MPMD] Initializing 1
                                          device(s) in parallel with
                                          args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                                          [WARNING] [MPM.RPCServer] A
                                          timeout event occured!<br>
                                          [INFO] [MPM.PeriphManager]
                                          init() called with device args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal=
,time_source=3Dinternal&#39;.<br>
                                          =C2=A0
                                          _________________________________=
____________________<br>
                                          =C2=A0/<br>
                                          | =C2=A0 =C2=A0 =C2=A0 Device: N3=
00-Series
                                          Device<br>
                                          | =C2=A0 =C2=A0
                                          _________________________________=
____________________<br>
                                          | =C2=A0 =C2=A0/<br>
                                          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 M=
board:
                                          ni-n3xx-31FD9DD<br>
                                          | =C2=A0 | =C2=A0 dboard_0_pid: 3=
36<br>
                                          | =C2=A0 | =C2=A0 dboard_0_serial=
:
                                          31F6BC8<br>
                                          | =C2=A0 | =C2=A0 dboard_1_pid: 3=
36<br>
                                          | =C2=A0 | =C2=A0 dboard_1_serial=
:
                                          31F6BF2<br>
                                          | =C2=A0 | =C2=A0 eeprom_version:=
 3<br>
                                          | =C2=A0 | =C2=A0 fs_version:
                                          20210630170909<br>
                                          | =C2=A0 | =C2=A0 mender_artifact=
:
                                          v4.1.0.0_n3xx<br>
                                          | =C2=A0 | =C2=A0 mpm_sw_version:
                                          4.1.0.0-gd21735d5<br>
                                          | =C2=A0 | =C2=A0 pid: 16962<br>
                                          | =C2=A0 | =C2=A0 product: n310<b=
r>
                                          | =C2=A0 | =C2=A0 rev: 10<br>
                                          | =C2=A0 | =C2=A0 rpc_connection:=
 remote<br>
                                          | =C2=A0 | =C2=A0 serial: 31FD9DD=
<br>
                                          | =C2=A0 | =C2=A0 type: n3xx<br>
                                          | =C2=A0 | =C2=A0 MPM Version: 4.=
0<br>
                                          | =C2=A0 | =C2=A0 FPGA Version: 8=
.0<br>
                                          | =C2=A0 | =C2=A0 FPGA git hash:
                                          d5c2750.clean<br>
                                          | =C2=A0 | =C2=A0 <br>
                                          | =C2=A0 | =C2=A0 Time sources:
                                          =C2=A0internal, external, gpsdo,
                                          sfp0<br>
                                          | =C2=A0 | =C2=A0 Clock sources:
                                          external, internal, gpsdo<br>
                                          | =C2=A0 | =C2=A0 Sensors: ref_lo=
cked,
                                          gps_locked, temp, fan,
                                          gps_gpgga, gps_sky, gps_time,
                                          gps_tpv<br>
                                          | =C2=A0 =C2=A0
                                          _________________________________=
____________________</div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>- The UHD version SD-card
                                          attached with the USRP <br>
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
                              <pre>________________________________________=
_______
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                            </blockquote>
                            To clarify.<br>
                            <br>
                            You&#39;re running OAI on a PC, attached to the
                            N310?<br>
                            <br>
                            The N310 system image can be easily updated:<br=
>
                            <br>
                            <a href=3D"https://kb.ettus.com/USRP_N300/N310/=
N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writing_the_di=
sk_image" target=3D"_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_G=
etting_Started_Guide#Updating_the_files_system_by_writing_the_disk_image</a=
><br>
                            <br>
                            <br>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
>
                          To unsubscribe send an email to <a href=3D"mailto=
:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists=
.ettus.com</a><br>
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
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000007c7bbb05f28c541b--

--===============5321162603186381112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5321162603186381112==--
