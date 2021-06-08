Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5633139FA25
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 17:16:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 260DE384D8B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 11:16:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="zUM/o0qt";
	dkim-atps=neutral
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E84D3384A92
	for <USRP-users@lists.ettus.com>; Tue,  8 Jun 2021 11:15:59 -0400 (EDT)
Received: by mail-ej1-f47.google.com with SMTP id my49so16521914ejc.7
        for <USRP-users@lists.ettus.com>; Tue, 08 Jun 2021 08:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gJC3JwOdkXzDOqy8g91Eh5hXlrZO09jxFhs1PMOQKuU=;
        b=zUM/o0qtMNl1Dj/tYVO8BW6HaRAD6MLKmm87b8u4XiHO0ibD/t8A2Sep/7TyeFn08c
         dHNI5zA8H12ulry8yQh7Dp2jvVVdQMzfExv8Z0l6weOY5Oag//QoQRaNyioyroUGjvBV
         mst0OYYQqdqguNYHqKB1uVV5BkwynHlCtijk1A30qaRyqk3x/NOWEAy5nCniLAZTX94i
         JckZHuSg4pYk38a81LeWoyZAWs8g/UU86PSfNlNed3Z7MTNcdXtQz1Q2QmRmBvXi+OWX
         UPX2CLbM8iUkY0SQBrgIXpgAVQjBksrmj474bkx0yIB7xPWawQ4XyvTeIpbWcb+z2CLG
         Zj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gJC3JwOdkXzDOqy8g91Eh5hXlrZO09jxFhs1PMOQKuU=;
        b=ZTWsxVu5UynGn1PRWrkZ9QQFrAB06Wv9CttXca5DnUmPdHzzXh5AIAh5DDmQ23p60A
         TxbqHA7NFGAaIdTNX1LZ75YMpwwcY2rmuEZQ+POpBqT1ZM9OsAegQ3bIeABVXYt6N+pb
         1GdSPyKtRXwj3sohIh7CVk7CqAZsnMamfhf/g1cka6lVLatJZYel4ZiKTH3C/UBLeZiF
         YhfPFHx8SLp2oFOqb6Phg4QW1q6RDd5kx/HTvtWW1qH+vVYqyAFvBWUZr498yHjMU7aj
         6ikLrFnfZToVt5M8ST1jfKoyt3hrsqccrkUNZVomTFYcwHqmRt1wxiRl/n3AglYEsdIX
         DoNA==
X-Gm-Message-State: AOAM532oQeILV39b48MRL/Pnlb0G7TDtVOa0kPyv1TKyTV3fiketRzUL
	/QKKBza6bvGTAPxeD9HOqMvpJz676a+8Xv2fGNV32h23
X-Google-Smtp-Source: ABdhPJxaY+464Wn9qmMzsSBPIr2TA4gyWlW4WIU4fSdcqcl+R95dAOsPjWVvMeCZHS6ymUGnMZMEVZm3RvP1nJE3tCY=
X-Received: by 2002:a17:906:dff2:: with SMTP id lc18mr24142603ejc.371.1623165358729;
 Tue, 08 Jun 2021 08:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <cb537b4e-9211-545f-dc27-06cbc9fcc494@olifantasia.com>
 <23ECF7FA-27F3-452B-B7AE-BDF928FCE543@gmail.com> <CAGNhwTPbn1aZtGp8PohRK6upK0=Mde7oyceF7Jux8RujHH3svA@mail.gmail.com>
 <73d04bec-ce20-a12a-c239-5012eaed7c30@olifantasia.com>
In-Reply-To: <73d04bec-ce20-a12a-c239-5012eaed7c30@olifantasia.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 8 Jun 2021 11:15:47 -0400
Message-ID: <CAGNhwTNmf-1_+US3j=CDYUaO5Fg54MeGqas1UBPt07Ti-Jv7Eg@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: 6VCDSQFLGWEQAWG2UCYBL7WMNMFAG4PA
X-Message-ID-Hash: 6VCDSQFLGWEQAWG2UCYBL7WMNMFAG4PA
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VCDSQFLGWEQAWG2UCYBL7WMNMFAG4PA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3403791224497477818=="

--===============3403791224497477818==
Content-Type: multipart/alternative; boundary="0000000000009e7e0f05c442a24f"

--0000000000009e7e0f05c442a24f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin - I'm glad that commit did the trick! I have already submitted an
internal pull request on the UHD 3.15-LTS branch. Even if there is no new
UHD 3.15 release, at least this change will be part of that public branch &
we can point folks to it. That said, there aren't very many E31x SG1 USRPs
out there being used ... virtually all of them are SG3, which works
correctly with UHD 3.15 and 4.0 at least in regard to the fixed EEPROM
interpretation issue for the SG1. There is nothing more to be done here;
just wait for R&D to process my PR & hope it gets dealt with sooner rather
than later ... - MLD


On Tue, Jun 8, 2021 at 11:07 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> On 08-06-2021 16:17, Michael Dickens wrote:
> > Hi Martin - Can you try manually applying this commit on your E310 SG1?
> Thanks, this did the trick.
> After a reboot the mpm is recognozed and uhd_find_devices and
> uhd_usrp_probe seem to work.
>
> Is this something that can/should be applied to the maintenance branch
> of 3.15 in the git repository or does it have side effects for newer
> usrps that have zero terminated strings?
>
> Or alternatively, could/should the contents of the eeprom of my and
> other older E310's be changed to have zero-terminated strings.
>
> The patch did not apply cleanly. So I had to do some edits manually.
> I created a new patch that should apply cleanly to the installed file on
> the E310 filesystem with UHD_3.15.0.0-0-gaea0e2d
> /usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py
>
> Best regards,
> Martin
>
>
> mpm_e31x_accept_FF_terminated_strings_in_eeprom__updated_patch_for_UHD_3.=
15.0.0-0-gaea0e2d.patch
>
> Based on original patch be53058a47c6b2925103d44595f06fd6fb85e4be
> From: Steven Koo <steven.koo@ni.com>
> Date: Thu, 3 Sep 2020 17:18:56 -0500
> Subject: [PATCH] mpm: e31x: Accept FF terminated strings in eeprom
>
> Older revisions of the e31x used FF terminated strings in the EEPROM.
> The eeprom implementation didn't take this into account and would
> fail on ascii conversion. This change resolves mpm bring up on the
> older revisions by replacing FF with null. This didn't affect newer
> revisions because they used null terminated strings.
>
> Signed-off-by: Steven Koo <steven.koo@ni.com>
>
> Modified to apply cleanly on current usrp E310 sg1 filesystem image with
> UHD_3.15.0.0-0-gaea0e2
> by Martin Dudok van Heel <martin@olifantasia.com>
>
> --- a/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py
> 2020-01-01 07:01:29.000000000 +0000
> +++ b/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py
> 2021-06-08 14:38:44.181516993 +0000
> @@ -25,7 +25,7 @@
>       - 6 bytes MAC address
>       - 2 bytes hw_pid
>       - 2 bytes hw_rev
> -    - 8 bytes serial number (zero-terminated string of 7 characters)
> +    - 8 bytes serial number (xFF or NULL terminated)
>       - 12 bytes padding
>       - 8 bytes user_name
>
> @@ -35,7 +35,7 @@
>       """
>
>       # Refer e300_eeprom_manager.hpp.
> -    eeprom_header_format =3D "<H H 6s H H 7s 12s 8s"
> +    eeprom_header_format =3D "<H H 6s H H 8s 12s 8s"
>       eeprom_header_keys =3D ('data_version_major', 'data_version_minor',
> 'mac_address', 'pid', 'rev', 'serial', 'pad', 'user_name')
>
>   class DboardEEPROM(object):
> @@ -49,12 +49,12 @@
>       - 2 bytes data_version_minor
>       - 2 bytes hw_pid
>       - 2 bytes hw_rev
> -    - 8 bytes serial number (zero-terminated string of 7 characters)
> +    - 8 bytes serial number (xFF or NULL terminated)
>       - 12 bytes padding
>       """
>
>       # Refer e300_eeprom_manager.hpp.
> -    eeprom_header_format =3D "<H H H H 7s 12s"
> +    eeprom_header_format =3D "<H H H H 8s 12s"
>       eeprom_header_keys =3D ('data_version_major', 'data_version_minor',
> 'pid', 'rev', 'serial', 'pad')
>
>   def read_eeprom(
> @@ -89,6 +89,10 @@
>           parsed_data_list =3D list(parsed_data)
>           parsed_data_list[3] =3D struct.unpack("<H", struct.pack(">H",
> parsed_data_list[3]))[0]
>           parsed_data_list[4] =3D struct.unpack("<H", struct.pack(">H",
> parsed_data_list[4]))[0]
> +        # Some revisions use xFF terminated strings for serial and
> user_name.
> +        # Replace xFF with NULL to pass ascii conversion.
> +        parsed_data_list[5] =3D parsed_data_list[5].replace(b'\xff',b'\x=
00')
> +        parsed_data_list[7] =3D parsed_data_list[7].replace(b'\xff',b'\x=
00')
>           parsed_data =3D tuple(parsed_data_list)
>
>       else: # E310 DB.
> @@ -97,7 +101,10 @@
>           parsed_data_list =3D list(parsed_data)
>           parsed_data_list[2] =3D struct.unpack("<H", struct.pack(">H",
> parsed_data_list[2]))[0]
>           parsed_data_list[3] =3D struct.unpack("<H", struct.pack(">H",
> parsed_data_list[3]))[0]
> +        # Some revisions use xFF terminated strings for serial.
> +        # Replace xFF with NULL to pass ascii conversion.
> +        parsed_data_list[4] =3D parsed_data_list[4].replace(b'\xff',b'\x=
00')
>           parsed_data =3D tuple(parsed_data_list)
>
>       ret_val =3D (dict(list(zip(eeprom_keys, parsed_data))),data)
> -    return ret_val
> \ No newline at end of file
> +    return ret_val
>
>
>
>
>
> > I'll note that without it I can boot mine into UHD 3.15.0.0 release (or
> > LTS), but "find" fails & then nothing else works. At boot the USRP
> > hardware daemon doesn't start, because it can't detect the product info
> > (as shown by "systemctl status usrp-hwd"). This commit should fix the
> > issue. Once applied, you'll either want to reboot the USRP, or stop and
> > start the USRP HWD ("systemctl stop usrp-hwd" then "systemctl start
> > usrp-hwd"). Fingers crossed this works! - MLD
> >
> >
> https://github.com/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06=
fd6fb85e4be
> > <
> https://github.com/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06=
fd6fb85e4be
> >
> >
> >
> > On Tue, Jun 8, 2021 at 9:03 AM Marcus D Leech <patchvonbraun@gmail.com
> > <mailto:patchvonbraun@gmail.com>> wrote:
> >
> >     None of us have been able to reproduce this
> >
> >     I have an SG1 device and can=E2=80=99t make this happen, but a late=
r
> >     hardware rev.
> >
> >     Sent from my iPhone
> >
> >      > On Jun 8, 2021, at 8:25 AM, Martin
> >     <usrp-users-list@olifantasia.com
> >     <mailto:usrp-users-list@olifantasia.com>> wrote:
> >      >
> >      > =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech wrote:
> >      >> Martin:
> >      >> I=E2=80=99m
> >      >> I=E2=80=99m in discussions with Ettus R&D who are trying to rep=
roduce.
> >      > Any news on this?
> >      >
> >      > A working uhd 3.15 image on E310 sg1 would really be appreciated=
.
> >      >
> >      > Is there anything that I can do or test?
> >      >
> >      > My E310 has partno: 156333B-01L
> >      > The exact hardware revision (B in my case) could be a clue.
> >      >
> >      > Thanks,
> >      > Martin
> >      >
> >      >
> >      >> I was unable with mine.
> >      >> Sent from my iPhone
> >      >>>> On May 20, 2021, at 1:23 PM, Marcus D Leech
> >     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
> >      >>>
> >      >>> =EF=BB=BFFYI I see the same memory leak and PMU warnings on my=
 SG1
> >     hardware u der 3.15. So I assume that this is a side effect of the
> >     move to MPM for E310 hardware.
> >      >>>
> >      >>>
> >      >>>
> >      >>> Sent from my iPhone
> >      >>>
> >      >>>> On May 20, 2021, at 12:05 PM, Martin
> >     <usrp-users-list@olifantasia.com
> >     <mailto:usrp-users-list@olifantasia.com>> wrote:
> >      >>>>
> >      >>>> =EF=BB=BFI tried again with the UHD 4.0.0.0 sdimg
> >      >>>> I get a lot of warnings, but with the uhd 4.0.0.0 sdimg the
> >     uhd hardware is recognized.
> >      >>>>
> >      >>>> I ado see this error with uhd 4.0.0.0 <http://4.0.0.0>:
> >      >>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with
> >     error -524
> >      >>>> I'm not sure what this means.
> >      >>>>
> >      >>>> If needed, we could work with the uhd 4.0.0 sdimg, but we
> >     would really like to be able to also keep using our uhd 3.15
> >     development tree. Moving to uhd 4.0.0.0 would mean installing both
> >     uhd 3.15 and uhd 4.0.0.0 trees on some of our deployment
> >     host-machines. Which seems error-prone.
> >      >>>>
> >      >>>> Alchemy 2020.01 ni-e31x-F661C4 ttyPS0
> >      >>>>
> >      >>>> ni-e31x-F661C4 login: root
> >      >>>> root@ni-e31x-F661C4:~# uhd_find_devices
> >      >>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> >     UHD_4.0.0.0-0-g90ce6062
> >      >>>> No UHD Devices Found
> >      >>>> root@ni-e31x-F661C4:~# [   49.925787] fpga_manager fpga0:
> >     writing e310_sg1_idle.bin to Xilinx Zynq FPGA Manager
> >      >>>> [   50.121918] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /fpga-full/firmware-name
> >      >>>> [   50.146427] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/devctrl
> >      >>>> [   50.156208] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/charger
> >      >>>> [   50.186332] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/battery
> >      >>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with
> >     error -524
> >      >>>>
> >      >>>> root@ni-e31x-F661C4:~/logs# uhd_usrp_probe
> >      >>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> >     UHD_4.0.0.0-0-g90ce6062
> >      >>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >     mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C=
4,claimed=3D
> >      >>>> False
> >      >>>> [  649.706380] fpga_manager fpga0: writing e310_sg1.bin to
> >     Xilinx Zynq FPGA Manager
> >      >>>> [  649.782720] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /fpga-full/firmware-name
> >      >>>> [  649.792926] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /amba/spi@e0006000/status
> >      >>>> [  649.803194] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /amba/spi@e0006000/cs-gpios
> >      >>>> [  649.813823] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/spidev0
> >      >>>> [  649.823667] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/devctrl
> >      >>>> [  649.833505] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/charger
> >      >>>> [  649.843335] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/battery
> >      >>>> [  649.853172] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/nixge_internal
> >      >>>> [  650.384737] e31x-pmu: probe of fpga-full:pmu failed with
> >     error -524
> >      >>>> [  650.406779] nixge 40020000.ethernet int0: renamed from eth=
1
> >      >>>> [  650.584811] nixge 40020000.ethernet int0: Link is Up -
> >     10Mbps/Half - flow control off
> >      >>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >      >>>> [INFO] [MPM.PeriphManager] init() called with device args
> >     `mgmt_addr=3D127.0.0.1,product=3De310_sg1'.
> >      >>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel =
0
> ...
> >      >>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >      >>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel =
1
> ...
> >      >>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >      >>>> _____________________________________________________
> >      >>>> /
> >      >>>> |       Device: E300-Series Device
> >      >>>> |     _____________________________________________________
> >      >>>> |    /
> >      >>>> |   |       Mboard: ni-e31x-F661C4
> >      >>>> |   |   dboard_0_pid: 272
> >      >>>> |   |   dboard_0_serial: F65275
> >      >>>> |   |   fs_version: 20200914001743
> >      >>>> |   |   mender_artifact: v4.0.0.0_e310_sg1
> >      >>>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> >      >>>> |   |   pid: 30674
> >      >>>> |   |   product: e310_sg1
> >      >>>> |   |   rev: 0
> >      >>>> |   |   rpc_connection: local
> >      >>>> |   |   serial: F661C4
> >      >>>> |   |   type: e3xx
> >      >>>> |   |   MPM Version: 3.0
> >      >>>> |   |   FPGA Version: 6.0
> >      >>>> |   |   FPGA git hash: be53058.clean
> >      >>>> |   |
> >      >>>> |   |   Time sources:  internal, external, gpsdo
> >      >>>> |   |   Clock sources: internal
> >      >>>> |   |   Sensors: ref_locked, gps_locked, temp_fpga, temp_mb,
> >     gps_gpgga, gps_sky, gps_time, gps_tpv
> >      >>>> |    /
> >      >>>> |   |       RFNoC blocks on this device:
> >      >>>> |   |
> >      >>>> |   |   * 0/Radio#0
> >      >>>> |     _____________________________________________________
> >      >>>> |    /
> >      >>>> |   |       Static connections on this device:
> >      >>>> |   |
> >      >>>> |   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0
> >      >>>> |   |   * 0/SEP#1:0=3D=3D>0/Radio#0:1
> >      >>>> |   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0
> >      >>>> |   |   * 0/Radio#0:1=3D=3D>0/SEP#1:0
> >      >>>> |     _____________________________________________________
> >      >>>> |    /
> >      >>>> |   |       TX Dboard: dboard
> >      >>>> |   |     ___________________________________________________=
__
> >      >>>> |   |    /
> >      >>>> |   |   |       TX Frontend: 0
> >      >>>> |   |   |   Name: E3xx
> >      >>>> |   |   |   Antennas: TX/RX
> >      >>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >      >>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >      >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.=
0
> Hz
> >      >>>> |   |   |   Connection Type: IQ
> >      >>>> |   |   |   Uses LO offset: No
> >      >>>> |   |     ___________________________________________________=
__
> >      >>>> |   |    /
> >      >>>> |   |   |       TX Frontend: 1
> >      >>>> |   |   |   Name: E3xx
> >      >>>> |   |   |   Antennas: TX/RX
> >      >>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >      >>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >      >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.=
0
> Hz
> >      >>>> |   |   |   Connection Type: IQ
> >      >>>> |   |   |   Uses LO offset: No
> >      >>>> |     _____________________________________________________
> >      >>>> |    /
> >      >>>> |   |       RX Dboard: dboard
> >      >>>> |   |     ___________________________________________________=
__
> >      >>>> |   |    /
> >      >>>> |   |   |       RX Frontend: 0
> >      >>>> |   |   |   Name: E3xx
> >      >>>> |   |   |   Antennas: RX2, TX/RX
> >      >>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >      >>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >      >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.=
0
> Hz
> >      >>>> |   |   |   Connection Type: IQ
> >      >>>> |   |   |   Uses LO offset: No
> >      >>>>  |     _____________________________________________________
> >      >>>> |   |    /
> >      >>>> |   |   |       RX Frontend: 1
> >      >>>> |   |   |   Name: E3xx
> >      >>>> |   |   |   Antennas: RX2, TX/RX
> >      >>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >      >>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >      >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.=
0
> Hz
> >      >>>> |   |   |   Connection Type: IQ
> >      >>>> |   |   |   Uses LO offset: No
> >      >>>>
> >      >>>> [  658.474906] nixge 40020000.ethernet int0: Link is Down
> >      >>>> [  658.590581] fpga_manager fpga0: writing e310_sg1_idle.bin
> >     to Xilinx Zynq FPGA Manager
> >      >>>> [  658.671152] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /fpga-full/firmware-name
> >      >>>> [  658.681463] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/devctrl
> >      >>>> [  658.691315] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/charger
> >      >>>> [  658.701150] OF: overlay: WARNING: memory leak will occur i=
f
> >     overlay removed, property: /__symbols__/battery
> >      >>>> [  659.219759] e31x-pmu: probe of fpga-full:pmu failed with
> >     error -524
> >      >>>>
> >      >>>>
> >      >>>>
> >      >>>>>> On 20-05-2021 17:31, Martin wrote:
> >      >>>>> I have still no idea why my E310 sg1 does not recognize its
> >     own uhd hardware with uhd_find_devices.
> >      >>>>> Can the exact hardware variant be of influence.
> >      >>>>> Mine has partno: 156333B-01L
> >      >>>>> The B in the partnumber seems to indicate the precise
> >     hardware revision.
> >      >>>>> The manual says:
> >      >>>>>> The Release 4 image comes in two varieties. The variety tha=
t
> >     you will need depends on the product number of your E310 or E312,
> >     which is printed on the bottom of the device.
> >      >>>>>> E310 (15633X-01L)     X=3D A, B, C, D     Ettus-e3xx-sg1
> >      >>>>>> X=3D E or later     Ettus-e3xx-sg3
> >      >>>>>> E312 (140605X-01L)     X =3D All     Ettus-e3xx-sg3
> >      >>>>> So I have a really early edition.
> >      >>>>> Mine gives this:
> >      >>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >      >>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> >      >>>>>>>>> UHD_3.15.0.0-0-gaea0e2de
> >      >>>>>>>>> --------------------------------------------------
> >      >>>>>>>>> -- UHD Device 0
> >      >>>>>>>>> --------------------------------------------------
> >      >>>>>>>>> Device Address:
> >      >>>>>>>>>   serial:
> >      >>>>>>>>>   claimed: False
> >      >>>>>>>>>   mgmt_addr: 127.0.0.1
> >      >>>>>>>>>   product:
> >      >>>>>>>>>   reachable: No
> >      >>>>>>>>>   type:
> >      >>>>> Best regards,
> >      >>>>> Martin
> >      >>>>>> On 18-05-2021 14:33, Marcus D. Leech wrote:
> >      >>>>>> On 05/18/2021 05:06 AM, Martin wrote:
> >      >>>>>>> What does uhd_find_devices show on your system?
> >      >>>>>>>
> >      >>>>>>> Martin
> >      >>>>>>>
> >      >>>>>> Device Address:
> >      >>>>>>     serial: 30B0152
> >      >>>>>>     claimed: False
> >      >>>>>>     mgmt_addr: 127.0.0.1
> >      >>>>>>     product: e310_sg1
> >      >>>>>>     type: e3xx
> >      >>>>>>>
> >      >>>>>>> On 17-05-2021 23:09, Marcus D. Leech wrote:
> >      >>>>>>>> On 05/17/2021 05:03 PM, Martin wrote:
> >      >>>>>>>>> On 17-05-2021 00:10, Marcus D Leech wrote:
> >      >>>>>>>>>> I=E2=80=99m currently trying to reproduce but on an sg3=
 system.
> >     Having entirely different problems.
> >      >>>>>>>>> Thank you for looking into this.
> >      >>>>>>>>> I am looking forward to your findings.
> >      >>>>>>>>> What issues do you have with sg3?
> >      >>>>>>>>> Maybe I can help you with that ;-)
> >      >>>>>>>> I mis-spoke as it turns out...
> >      >>>>>>>>
> >      >>>>>>>> My device is an SG1, and running uhd_usrp_probe produces:
> >      >>>>>>>>
> >      >>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> >     UHD_3.15.0.0-0-gaea0e2e
> >      >>>>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with
> >     args: mgmt_addr=3D127.0.0e
> >      >>>>>>>> [   63.396911] fpga_manager fpga0: writing e310_sg1.bin t=
o
> >     Xilinx Zynq FPGA Manr
> >      >>>>>>>> [   63.597426] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,e
> >      >>>>>>>> [   63.607629] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,s
> >      >>>>>>>> [   63.617856] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,s
> >      >>>>>>>> [   63.629066] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.638894] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,l
> >      >>>>>>>> [   63.648644] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,r
> >      >>>>>>>> [   63.658443] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,y
> >      >>>>>>>> [   63.668206] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.678010] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,1
> >      >>>>>>>> [   63.687768] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,2
> >      >>>>>>>> [   63.697568] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,3
> >      >>>>>>>> [   63.707324] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.717127] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,1
> >      >>>>>>>> [   63.726899] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,2
> >      >>>>>>>> [   63.736704] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,3
> >      >>>>>>>> [   63.746463] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.756698] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,1
> >      >>>>>>>> [   63.766927] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,2
> >      >>>>>>>> [   63.777182] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,3
> >      >>>>>>>> [   63.787416] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.797648] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,1
> >      >>>>>>>> [   63.807881] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,2
> >      >>>>>>>> [   63.818115] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,3
> >      >>>>>>>> [   63.828350] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,0
> >      >>>>>>>> [   63.895829] rfnoc_crossbar crossbar0: NI Platform RFNo=
C
> >     Crossbar registered
> >      >>>>>>>> [   64.419972] e31x-pmu: probe of fpga-full:pmu failed
> >     with error -524
> >      >>>>>>>> [   64.485031] usrp-dma-core: Registered rx-dma0
> >      >>>>>>>> [   64.515301] usrp-dma-core: Registered rx-dma1
> >      >>>>>>>> [   64.531891] usrp-dma-core: Registered rx-dma2
> >      >>>>>>>> [   64.545275] usrp-dma-core: Registered rx-dma3
> >      >>>>>>>> [   64.560157] usrp-dma-core: Registered tx-dma0
> >      >>>>>>>> [   64.571785] usrp-dma-core: Registered tx-dma1
> >      >>>>>>>> [   64.585115] usrp-dma-core: Registered tx-dma2
> >      >>>>>>>> [   64.595584] usrp-dma-core: Registered tx-dma3
> >      >>>>>>>> [INFO] [MPM.main] Launching USRP/MPM, version:
> >     3.15.0.0-gaea0e2de
> >      >>>>>>>> [INFO] [MPM.main] Spawning RPC process...
> >      >>>>>>>> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibilit=
y
> >     check!
> >      >>>>>>>> [INFO] [MPM.PeriphManager] Device serial number: 30B0152
> >      >>>>>>>> [WARNING] [MPM.GPSDIface] Could not connect to GPSd! None
> >     of the GPS sensors wi!
> >      >>>>>>>> [INFO] [MPM.RPCServer] RPC server ready!
> >      >>>>>>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
> >      >>>>>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >      >>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> >     0x12AD100000003310)
> >      >>>>>>>> [INFO] [MPM.PeriphManager] init() called with device args
> >     `product=3De310_sg1,mgm.
> >      >>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> >     0xDDC0000000000000)
> >      >>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> >     0xD0C0000000000002)
> >      >>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >      >>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >      >>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >      >>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >      >>>>>>>> _____________________________________________________
> >      >>>>>>>>  /
> >      >>>>>>>> |       Device: E300-Series Device
> >      >>>>>>>> | _____________________________________________________
> >      >>>>>>>> | /
> >      >>>>>>>> |   |       Mboard: ni-e31x
> >      >>>>>>>> |   |   mpm_version: 3.15.0.0-gaea0e2de
> >      >>>>>>>> |   |   pid: 30674
> >      >>>>>>>> |   |   product: e310_sg1
> >      >>>>>>>> |   |   rev: 4
> >      >>>>>>>> |   |   rpc_connection: local
> >      >>>>>>>> |   |   serial: 30B0152
> >      >>>>>>>> |   |   type: e3xx
> >      >>>>>>>> |   |   MPM Version: 1.2
> >      >>>>>>>> |   |   FPGA Version: 1.0
> >      >>>>>>>> |   |   FPGA git hash: fde2a94.clean
> >      >>>>>>>> |   |   RFNoC capable: Yes
> >      >>>>>>>> | |
> >      >>>>>>>> |   |   Time sources:  internal, external, gpsdo
> >      >>>>>>>> |   |   Clock sources: internal
> >      >>>>>>>> |   |   Sensors: ref_locked, temp_fpga, temp_mb, gps_lock=
ed
> >      >>>>>>>> |   | ___________________________________________________=
__
> >      >>>>>>>> |   | /
> >      >>>>>>>> |   |   |       RX Dboard: A
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       RX Frontend: 0
> >      >>>>>>>> |   |   |   |   Name: E3xx
> >      >>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >      >>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> >     ad9361_temperature
> >      >>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >      >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >      >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0
> >     step 0.0 Hz
> >      >>>>>>>> |   |   |   |   Connection Type: IQ
> >      >>>>>>>> |   |   |   |   Uses LO offset: No
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       RX Frontend: 1
> >      >>>>>>>> |   |   |   |   Name: E3xx
> >      >>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >      >>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> >     ad9361_temperature
> >      >>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >      >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >      >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0
> >     step 0.0 Hz
> >      >>>>>>>> |   |   |   |   Connection Type: IQ
> >      >>>>>>>> |   |   |   |   Uses LO offset: No
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       RX Codec: A
> >      >>>>>>>> |   |   |   |   Name: AD9361 Dual ADC
> >      >>>>>>>> |   |   |   |   Gain Elements: None
> >      >>>>>>>> |   | ___________________________________________________=
__
> >      >>>>>>>> |   | /
> >      >>>>>>>> |   |   |       TX Dboard: A
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       TX Frontend: 0
> >      >>>>>>>> |   |   |   |   Name: E3xx
> >      >>>>>>>> |   |   |   |   Antennas: TX/RX
> >      >>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >      >>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >      >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >      >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0
> >     step 0.0 Hz
> >      >>>>>>>> |   |   |   |   Connection Type: IQ
> >      >>>>>>>> |   |   |   |   Uses LO offset: No
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       TX Frontend: 1
> >      >>>>>>>> |   |   |   |   Name: E3xx
> >      >>>>>>>> |   |   |   |   Antennas: TX/RX
> >      >>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >      >>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >      >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >      >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0
> >     step 0.0 Hz
> >      >>>>>>>> |   |   |   |   Connection Type: IQ
> >      >>>>>>>> |   |   |   |   Uses LO offset: No
> >      >>>>>>>> |   |   |
> >     _____________________________________________________
> >      >>>>>>>> |   |   | /
> >      >>>>>>>> |   |   |   |       TX Codec: A
> >      >>>>>>>> |   |   |   |   Name: AD9361 Dual DAC
> >      >>>>>>>> |   |   |   |   Gain Elements: None
> >      >>>>>>>> |   | ___________________________________________________=
__
> >      >>>>>>>> |   | /
> >      >>>>>>>> |   |   |       RFNoC blocks on this device:
> >      >>>>>>>> |   | |
> >      >>>>>>>> |   |   |   * Radio_0
> >      >>>>>>>> |   |   |   * DDC_0
> >      >>>>>>>> |   |   |   * DUC_0
> >      >>>>>>>>
> >      >>>>>>>> [   72.280024] usrp-dma-core: Deregistered tx-dma3
> >      >>>>>>>> [   72.293917] usrp-dma-core: Deregistered tx-dma2
> >      >>>>>>>> [   72.304477] usrp-dma-core: Deregistered tx-dma1
> >      >>>>>>>> [   72.316396] usrp-dma-core: Deregistered tx-dma0
> >      >>>>>>>> [   72.327630] usrp-dma-core: Deregistered rx-dma3
> >      >>>>>>>> [   72.339059] usrp-dma-core: Deregistered rx-dma2
> >      >>>>>>>> [   72.350350] usrp-dma-core: Deregistered rx-dma1
> >      >>>>>>>> [   72.360698] usrp-dma-core: Deregistered rx-dma0
> >      >>>>>>>> [   72.401639] fpga_manager fpga0: writing
> >     e310_sg1_idle.bin to Xilinx Zynq FPGr
> >      >>>>>>>> [   72.501239] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,e
> >      >>>>>>>> [   72.511488] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,l
> >      >>>>>>>> [   72.521660] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,r
> >      >>>>>>>> [   72.531642] OF: overlay: WARNING: memory leak will
> >     occur if overlay removed,y
> >      >>>>>>>> [   73.064935] e31x-pmu: probe of fpga-full:pmu failed
> >     with error -524
> >      >>>>>>>> root@ni-e31x:~#
> >      >>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>>>
> >      >>>>>>>>> I will also tryout the latest uhd 4.0 sdimg for E310 sg1
> >     as soon as I have the time. Maybe that has different results.
> >      >>>>>>>>>
> >      >>>>>>>>> I was wondering if the output of uhd_find_devices gives =
a
> >     clue.
> >      >>>>>>>>> Is this the normal expected output whne you run
> >     uhd_find_devices on the E310.
> >      >>>>>>>>>
> >      >>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >      >>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> >     UHD_3.15.0.0-0-gaea0e2de
> >      >>>>>>>>> --------------------------------------------------
> >      >>>>>>>>> -- UHD Device 0
> >      >>>>>>>>> --------------------------------------------------
> >      >>>>>>>>> Device Address:
> >      >>>>>>>>>   serial:
> >      >>>>>>>>>   claimed: False
> >      >>>>>>>>>   mgmt_addr: 127.0.0.1
> >      >>>>>>>>>   product:
> >      >>>>>>>>>   reachable: No
> >      >>>>>>>>>   type:
> >      >>>>>>>>>
> >      >>>>>>>>>
> >      >>>>>>>>> Best regards,
> >      >>>>>>>>> Martin
> >      >>>>>>>>>
> >      >>>>>>>>>
> >      >>>>>>>>>
> >      >>>>>>>>>> Sent from my iPhone
> >      >>>>>>>>>>
> >      >>>>>>>>>>> On May 16, 2021, at 5:33 PM, Martin
> >     <usrp-users-list@olifantasia.com
> >     <mailto:usrp-users-list@olifantasia.com>> wrote:
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> =EF=BB=BFOn 15-05-2021 18:33, Marcus D. Leech wrote:
> >      >>>>>>>>>>>>> On 05/15/2021 10:19 AM, Martin wrote:
> >      >>>>>>>>>>>>> On 14-05-2021 21:26, Marcus D Leech wrote:
> >      >>>>>>>>>>>>>> What happens if you don=E2=80=99t specify any args =
at all?
> >      >>>>>>>>>>>>> Then I also get No Device found.
> >      >>>>>>>>>>>>>
> >      >>>>>>>>>>>>> Martin
> >      >>>>>>>>>>>> Martin:
> >      >>>>>>>>>>>> Where did you get your sdimg from?
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> On a host system with UHD 3.15 installed I did:
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> sudo uhd_images_downloader -t sdimg -t e310 -t sg1
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> [INFO] Images destination: /usr/share/uhd/images
> >      >>>>>>>>>>> The file size for this target (832.3 MiB) exceeds the
> >     download limit (100.0 MiB). Continue downloading? [y/N]y
> >      >>>>>>>>>>> [INFO] Downloading
> >     e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip, total size: 872729.93 kB
> >      >>>>>>>>>>> [INFO] Images download complete.
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> This seems to download this file and extracts it:
> >      >>>>>>>>>>>
> >
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e31=
0_sg1_sdimg_default-v3.15.0.0.zip
> >     <
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e31=
0_sg1_sdimg_default-v3.15.0.0.zip
> >
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> I wrote the extracted image to a 8 GB sdcard with dd.
> >      >>>>>>>>>>>
> >      >>>>>>>>>>> I also tried downloading the above file by hand and an=
d
> >     extracing it to the sdcard. That has the exact same result.
> >      >>>>>>>>>>>
> >      >>>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>
> >      >>>>>>
> >      >>>>> _______________________________________________
> >      >>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >      >>>>> To unsubscribe send an email to
> >     usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >      >>>> _______________________________________________
> >      >>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >      >>>> To unsubscribe send an email to
> >     usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >      >
> >     _______________________________________________
> >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >
>
>

--0000000000009e7e0f05c442a24f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin - I&#39;m glad that commit did the trick! I have=
 already submitted an internal pull request on the UHD 3.15-LTS branch. Eve=
n if there is no new UHD 3.15 release, at least this change will=C2=A0be pa=
rt of that public branch &amp; we can point folks to it. That said, there a=
ren&#39;t very many E31x SG1 USRPs out there being used ... virtually all o=
f them are SG3, which works correctly with UHD 3.15 and 4.0 at least in reg=
ard to the fixed EEPROM interpretation issue for the SG1. There is nothing =
more to be done here; just wait for R&amp;D to process my PR &amp; hope it =
gets dealt with sooner rather than later ... - MLD<br><br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 8, 20=
21 at 11:07 AM Martin &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com=
">usrp-users-list@olifantasia.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 08-06-2021 16:17, Michael Dickens wrote=
:<br>
&gt; Hi Martin - Can you try manually applying this commit on your E310 SG1=
? <br>
Thanks, this did the trick.<br>
After a reboot the mpm is recognozed and uhd_find_devices and <br>
uhd_usrp_probe seem to work.<br>
<br>
Is this something that can/should be applied to the maintenance branch <br>
of 3.15 in the git repository or does it have side effects for newer <br>
usrps that have zero terminated strings?<br>
<br>
Or alternatively, could/should the contents of the eeprom of my and <br>
other older E310&#39;s be changed to have zero-terminated strings.<br>
<br>
The patch did not apply cleanly. So I had to do some edits manually.<br>
I created a new patch that should apply cleanly to the installed file on <b=
r>
the E310 filesystem with UHD_3.15.0.0-0-gaea0e2d<br>
/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py<br>
<br>
Best regards,<br>
Martin<br>
<br>
mpm_e31x_accept_FF_terminated_strings_in_eeprom__updated_patch_for_UHD_3.15=
.0.0-0-gaea0e2d.patch<br>
<br>
Based on original patch be53058a47c6b2925103d44595f06fd6fb85e4be<br>
From: Steven Koo &lt;<a href=3D"mailto:steven.koo@ni.com" target=3D"_blank"=
>steven.koo@ni.com</a>&gt;<br>
Date: Thu, 3 Sep 2020 17:18:56 -0500<br>
Subject: [PATCH] mpm: e31x: Accept FF terminated strings in eeprom<br>
<br>
Older revisions of the e31x used FF terminated strings in the EEPROM.<br>
The eeprom implementation didn&#39;t take this into account and would<br>
fail on ascii conversion. This change resolves mpm bring up on the<br>
older revisions by replacing FF with null. This didn&#39;t affect newer<br>
revisions because they used null terminated strings.<br>
<br>
Signed-off-by: Steven Koo &lt;<a href=3D"mailto:steven.koo@ni.com" target=
=3D"_blank">steven.koo@ni.com</a>&gt;<br>
<br>
Modified to apply cleanly on current usrp E310 sg1 filesystem image with <b=
r>
UHD_3.15.0.0-0-gaea0e2<br>
by Martin Dudok van Heel &lt;<a href=3D"mailto:martin@olifantasia.com" targ=
et=3D"_blank">martin@olifantasia.com</a>&gt;<br>
<br>
--- a/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py <br>
2020-01-01 07:01:29.000000000 +0000<br>
+++ b/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py <br>
2021-06-08 14:38:44.181516993 +0000<br>
@@ -25,7 +25,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 - 6 bytes MAC address<br>
=C2=A0 =C2=A0 =C2=A0 - 2 bytes hw_pid<br>
=C2=A0 =C2=A0 =C2=A0 - 2 bytes hw_rev<br>
-=C2=A0 =C2=A0 - 8 bytes serial number (zero-terminated string of 7 charact=
ers)<br>
+=C2=A0 =C2=A0 - 8 bytes serial number (xFF or NULL terminated)<br>
=C2=A0 =C2=A0 =C2=A0 - 12 bytes padding<br>
=C2=A0 =C2=A0 =C2=A0 - 8 bytes user_name<br>
<br>
@@ -35,7 +35,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 # Refer e300_eeprom_manager.hpp.<br>
-=C2=A0 =C2=A0 eeprom_header_format =3D &quot;&lt;H H 6s H H 7s 12s 8s&quot=
;<br>
+=C2=A0 =C2=A0 eeprom_header_format =3D &quot;&lt;H H 6s H H 8s 12s 8s&quot=
;<br>
=C2=A0 =C2=A0 =C2=A0 eeprom_header_keys =3D (&#39;data_version_major&#39;, =
&#39;data_version_minor&#39;, <br>
&#39;mac_address&#39;, &#39;pid&#39;, &#39;rev&#39;, &#39;serial&#39;, &#39=
;pad&#39;, &#39;user_name&#39;)<br>
<br>
=C2=A0 class DboardEEPROM(object):<br>
@@ -49,12 +49,12 @@<br>
=C2=A0 =C2=A0 =C2=A0 - 2 bytes data_version_minor<br>
=C2=A0 =C2=A0 =C2=A0 - 2 bytes hw_pid<br>
=C2=A0 =C2=A0 =C2=A0 - 2 bytes hw_rev<br>
-=C2=A0 =C2=A0 - 8 bytes serial number (zero-terminated string of 7 charact=
ers)<br>
+=C2=A0 =C2=A0 - 8 bytes serial number (xFF or NULL terminated)<br>
=C2=A0 =C2=A0 =C2=A0 - 12 bytes padding<br>
=C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 # Refer e300_eeprom_manager.hpp.<br>
-=C2=A0 =C2=A0 eeprom_header_format =3D &quot;&lt;H H H H 7s 12s&quot;<br>
+=C2=A0 =C2=A0 eeprom_header_format =3D &quot;&lt;H H H H 8s 12s&quot;<br>
=C2=A0 =C2=A0 =C2=A0 eeprom_header_keys =3D (&#39;data_version_major&#39;, =
&#39;data_version_minor&#39;, <br>
&#39;pid&#39;, &#39;rev&#39;, &#39;serial&#39;, &#39;pad&#39;)<br>
<br>
=C2=A0 def read_eeprom(<br>
@@ -89,6 +89,10 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list =3D list(parsed_data)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[3] =3D struct.unpack(&q=
uot;&lt;H&quot;, struct.pack(&quot;&gt;H&quot;, <br>
parsed_data_list[3]))[0]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[4] =3D struct.unpack(&q=
uot;&lt;H&quot;, struct.pack(&quot;&gt;H&quot;, <br>
parsed_data_list[4]))[0]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Some revisions use xFF terminated strings fo=
r serial and <br>
user_name.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Replace xFF with NULL to pass ascii conversi=
on.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[5] =3D parsed_data_list[5].re=
place(b&#39;\xff&#39;,b&#39;\x00&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[7] =3D parsed_data_list[7].re=
place(b&#39;\xff&#39;,b&#39;\x00&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data =3D tuple(parsed_data_list)<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 else: # E310 DB.<br>
@@ -97,7 +101,10 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list =3D list(parsed_data)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[2] =3D struct.unpack(&q=
uot;&lt;H&quot;, struct.pack(&quot;&gt;H&quot;, <br>
parsed_data_list[2]))[0]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[3] =3D struct.unpack(&q=
uot;&lt;H&quot;, struct.pack(&quot;&gt;H&quot;, <br>
parsed_data_list[3]))[0]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Some revisions use xFF terminated strings fo=
r serial.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Replace xFF with NULL to pass ascii conversi=
on.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data_list[4] =3D parsed_data_list[4].re=
place(b&#39;\xff&#39;,b&#39;\x00&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed_data =3D tuple(parsed_data_list)<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 ret_val =3D (dict(list(zip(eeprom_keys, parsed_data)))=
,data)<br>
-=C2=A0 =C2=A0 return ret_val<br>
\ No newline at end of file<br>
+=C2=A0 =C2=A0 return ret_val<br>
<br>
<br>
<br>
<br>
<br>
&gt; I&#39;ll note that without it I can boot mine into UHD 3.15.0.0 releas=
e (or <br>
&gt; LTS), but &quot;find&quot; fails &amp; then nothing else works. At boo=
t the USRP <br>
&gt; hardware daemon doesn&#39;t start, because it can&#39;t detect the pro=
duct info <br>
&gt; (as shown by &quot;systemctl status usrp-hwd&quot;). This commit shoul=
d fix the <br>
&gt; issue. Once applied, you&#39;ll either want to reboot the USRP, or sto=
p and <br>
&gt; start the USRP HWD (&quot;systemctl stop usrp-hwd&quot; then &quot;sys=
temctl start <br>
&gt; usrp-hwd&quot;). Fingers crossed this works! - MLD<br>
&gt; <br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/commit/be53058a47c6b29=
25103d44595f06fd6fb85e4be" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06fd6fb85e4be</=
a> <br>
&gt; &lt;<a href=3D"https://github.com/EttusResearch/uhd/commit/be53058a47c=
6b2925103d44595f06fd6fb85e4be" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06fd6fb85e4=
be</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; On Tue, Jun 8, 2021 at 9:03 AM Marcus D Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank=
">patchvonbraun@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0None of us have been able to reproduce this<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I have an SG1 device and can=E2=80=99t make this ha=
ppen, but a later<br>
&gt;=C2=A0 =C2=A0 =C2=A0hardware rev.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Sent from my iPhone<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Jun 8, 2021, at 8:25 AM, Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:usrp-users-list@olifantasia.c=
om" target=3D"_blank">usrp-users-list@olifantasia.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-list@olifan=
tasia.com" target=3D"_blank">usrp-users-list@olifantasia.com</a>&gt;&gt; wr=
ote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Martin:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I=E2=80=99m<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I=E2=80=99m in discussions with Ettus R&a=
mp;D who are trying to reproduce.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any news on this?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; A working uhd 3.15 image on E310 sg1 would re=
ally be appreciated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Is there anything that I can do or test?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; My E310 has partno: 156333B-01L<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The exact hardware revision (B in my case) co=
uld be a clue.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I was unable with mine.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Sent from my iPhone<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; On May 20, 2021, at 1:23 PM, Marc=
us D Leech<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:patchvonbraun@gmail.com" targ=
et=3D"_blank">patchvonbraun@gmail.com</a> &lt;mailto:<a href=3D"mailto:patc=
hvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt; =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; =EF=BB=BFFYI I see the same memory le=
ak and PMU warnings on my SG1<br>
&gt;=C2=A0 =C2=A0 =C2=A0hardware u der 3.15. So I assume that this is a sid=
e effect of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0move to MPM for E310 hardware.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Sent from my iPhone<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; On May 20, 2021, at 12:05 PM, Mar=
tin<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:usrp-users-list@olifantasia.c=
om" target=3D"_blank">usrp-users-list@olifantasia.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-list@olifan=
tasia.com" target=3D"_blank">usrp-users-list@olifantasia.com</a>&gt;&gt; wr=
ote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; =EF=BB=BFI tried again with the U=
HD 4.0.0.0 sdimg<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; I get a lot of warnings, but with=
 the uhd 4.0.0.0 sdimg the<br>
&gt;=C2=A0 =C2=A0 =C2=A0uhd hardware is recognized.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; I ado see this error with uhd 4.0=
.0.0 &lt;<a href=3D"http://4.0.0.0" rel=3D"noreferrer" target=3D"_blank">ht=
tp://4.0.0.0</a>&gt;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu=
: probe of fpga-full:pmu failed with<br>
&gt;=C2=A0 =C2=A0 =C2=A0error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; I&#39;m not sure what this means.=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; If needed, we could work with the=
 uhd 4.0.0 sdimg, but we<br>
&gt;=C2=A0 =C2=A0 =C2=A0would really like to be able to also keep using our=
 uhd 3.15<br>
&gt;=C2=A0 =C2=A0 =C2=A0development tree. Moving to uhd 4.0.0.0 would mean =
installing both<br>
&gt;=C2=A0 =C2=A0 =C2=A0uhd 3.15 and uhd 4.0.0.0 trees on some of our deplo=
yment<br>
&gt;=C2=A0 =C2=A0 =C2=A0host-machines. Which seems error-prone.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Alchemy 2020.01 ni-e31x-F661C4 tt=
yPS0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; ni-e31x-F661C4 login: root<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# uhd_find_d=
evices<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ versi=
on 9.2.0; Boost_107100;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_4.0.0.0-0-g90ce6062<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; No UHD Devices Found<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# [=C2=A0 =
=C2=A049.925787] fpga_manager fpga0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0writing e310_sg1_idle.bin to Xilinx Zynq FPGA Manag=
er<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.121918] OF: over=
lay: WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /fpga-full/firmware-name=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.146427] OF: over=
lay: WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/devctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.156208] OF: over=
lay: WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/charger<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.186332] OF: over=
lay: WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/battery<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu=
: probe of fpga-full:pmu failed with<br>
&gt;=C2=A0 =C2=A0 =C2=A0error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~/logs# uhd_u=
srp_probe<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ versi=
on 9.2.0; Boost_107100;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_4.0.0.0-0-g90ce6062<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [MPMD] Initializing 1 devi=
ce(s) in parallel with args:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg=
1,serial=3DF661C4,claimed=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.706380] fpga_manager =
fpga0: writing e310_sg1.bin to<br>
&gt;=C2=A0 =C2=A0 =C2=A0Xilinx Zynq FPGA Manager<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.782720] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /fpga-full/firmware-name=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.792926] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /amba/spi@e0006000/statu=
s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.803194] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /amba/spi@e0006000/cs-gp=
ios<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.813823] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/spidev0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.823667] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/devctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.833505] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/charger<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.843335] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/battery<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 649.853172] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/nixge_inter=
nal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 650.384737] e31x-pmu: pro=
be of fpga-full:pmu failed with<br>
&gt;=C2=A0 =C2=A0 =C2=A0error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 650.406779] nixge 4002000=
0.ethernet int0: renamed from eth1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 650.584811] nixge 4002000=
0.ethernet int0: Link is Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Mbps/Half - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Found =
1 daughterboard(s).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] init()=
 called with device args<br>
&gt;=C2=A0 =C2=A0 =C2=A0`mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing COD=
EC loopback test on channel 0 ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback=
 test passed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing COD=
EC loopback test on channel 1 ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback=
 test passed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; _________________________________=
____________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Devic=
e: E300-Series Device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0____________=
_________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0Mboard: ni-e31x-F661C4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboar=
d_0_pid: 272<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboar=
d_0_serial: F65275<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0fs_ve=
rsion: 20200914001743<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mende=
r_artifact: v4.0.0.0_e310_sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_s=
w_version: 4.0.0.0-g90ce6062<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: =
30674<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0produ=
ct: e310_sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: =
0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_c=
onnection: local<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0seria=
l: F661C4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type:=
 e3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM V=
ersion: 3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA =
Version: 6.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA =
git hash: be53058.clean<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time =
sources:=C2=A0 internal, external, gpsdo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock=
 sources: internal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Senso=
rs: ref_locked, gps_locked, temp_fpga, temp_mb,<br>
&gt;=C2=A0 =C2=A0 =C2=A0gps_gpgga, gps_sky, gps_time, gps_tpv<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0RFNoC blocks on this device:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/R=
adio#0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0____________=
_________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0Static connections on this device:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/S=
EP#0:0=3D=3D&gt;0/Radio#0:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/S=
EP#1:0=3D=3D&gt;0/Radio#0:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/R=
adio#0:0=3D=3D&gt;0/SEP#0:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/R=
adio#0:1=3D=3D&gt;0/SEP#1:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0____________=
_________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0TX Dboard: dboard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0_____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Antennas: TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0_____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Antennas: TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0____________=
_________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0RX Dboard: dboard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0_____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;=C2=A0 |=C2=A0 =C2=A0 =C2=A0______=
_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.474906] nixge 4002000=
0.ethernet int0: Link is Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.590581] fpga_manager =
fpga0: writing e310_sg1_idle.bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0to Xilinx Zynq FPGA Manager<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.671152] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /fpga-full/firmware-name=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.681463] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/devctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.691315] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/charger<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 658.701150] OF: overlay: =
WARNING: memory leak will occur if<br>
&gt;=C2=A0 =C2=A0 =C2=A0overlay removed, property: /__symbols__/battery<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; [=C2=A0 659.219759] e31x-pmu: pro=
be of fpga-full:pmu failed with<br>
&gt;=C2=A0 =C2=A0 =C2=A0error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; On 20-05-2021 17:31, Mart=
in wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; I have still no idea why my E=
310 sg1 does not recognize its<br>
&gt;=C2=A0 =C2=A0 =C2=A0own uhd hardware with uhd_find_devices.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Can the exact hardware varian=
t be of influence.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Mine has partno: 156333B-01L<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; The B in the partnumber seems=
 to indicate the precise<br>
&gt;=C2=A0 =C2=A0 =C2=A0hardware revision.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; The manual says:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; The Release 4 image comes=
 in two varieties. The variety that<br>
&gt;=C2=A0 =C2=A0 =C2=A0you will need depends on the product number of your=
 E310 or E312,<br>
&gt;=C2=A0 =C2=A0 =C2=A0which is printed on the bottom of the device.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; E310 (15633X-01L)=C2=A0 =
=C2=A0 =C2=A0X=3D A, B, C, D=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; X=3D E or later=C2=A0 =C2=
=A0 =C2=A0Ettus-e3xx-sg3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; E312 (140605X-01L)=C2=A0 =
=C2=A0 =C2=A0X =3D All=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; So I have a really early edit=
ion.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Mine gives this:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:=
~# uhd_find_devices<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] =
linux; GNU C++ version 8.2.0; Boost_106800;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; UHD_3.15.0.0-=
0-gaea0e2de<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -------------=
-------------------------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device=
 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -------------=
-------------------------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Addres=
s:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0s=
erial:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0c=
laimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0m=
gmt_addr: 127.0.0.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0p=
roduct:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0r=
eachable: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0t=
ype:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; On 18-05-2021 14:33, Marc=
us D. Leech wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; On 05/18/2021 05:06 AM, M=
artin wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; What does uhd_find_de=
vices show on your system?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0serial=
: 30B0152<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0claime=
d: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0mgmt_a=
ddr: 127.0.0.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0produc=
t: e310_sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0type: =
e3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021 23:09, =
Marcus D. Leech wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/17/2021 05:=
03 PM, Martin wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021=
 00:10, Marcus D Leech wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I=E2=80=
=99m currently trying to reproduce but on an sg3 system.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Having entirely different problems.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you for=
 looking into this.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am looking =
forward to your findings.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What issues d=
o you have with sg3?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Maybe I can h=
elp you with that ;-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I mis-spoke as it=
 turns out...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; My device is an S=
G1, and running uhd_usrp_probe produces:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linu=
x; GNU C++ version 8.2.0; Boost_106800;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-0-gaea0e2e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with<br>
&gt;=C2=A0 =C2=A0 =C2=A0args: mgmt_addr=3D127.0.0e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
396911] fpga_manager fpga0: writing e310_sg1.bin to<br>
&gt;=C2=A0 =C2=A0 =C2=A0Xilinx Zynq FPGA Manr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
597426] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
607629] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
617856] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
629066] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
638894] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,l<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
648644] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,r<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
658443] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,y<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
668206] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
678010] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
687768] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
697568] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
707324] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
717127] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
726899] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
736704] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
746463] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
756698] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
766927] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
777182] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
787416] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
797648] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
807881] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
818115] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
828350] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.=
895829] rfnoc_crossbar crossbar0: NI Platform RFNoC<br>
&gt;=C2=A0 =C2=A0 =C2=A0Crossbar registered<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
419972] e31x-pmu: probe of fpga-full:pmu failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0with error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
485031] usrp-dma-core: Registered rx-dma0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
515301] usrp-dma-core: Registered rx-dma1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
531891] usrp-dma-core: Registered rx-dma2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
545275] usrp-dma-core: Registered rx-dma3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
560157] usrp-dma-core: Registered tx-dma0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
571785] usrp-dma-core: Registered tx-dma1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
585115] usrp-dma-core: Registered tx-dma2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.=
595584] usrp-dma-core: Registered tx-dma3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main]=
 Launching USRP/MPM, version:<br>
&gt;=C2=A0 =C2=A0 =C2=A03.15.0.0-gaea0e2de<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main]=
 Spawning RPC process...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.Pe=
riphManager] Skipping HW/SW compatibility<br>
&gt;=C2=A0 =C2=A0 =C2=A0check!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.Perip=
hManager] Device serial number: 30B0152<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.GP=
SDIface] Could not connect to GPSd! None<br>
&gt;=C2=A0 =C2=A0 =C2=A0of the GPS sensors wi!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCSe=
rver] RPC server ready!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCSe=
rver] Spawning watchdog task...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.Perip=
hManager] Found 1 daughterboard(s).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0=
] Initializing block control (NOC ID:<br>
&gt;=C2=A0 =C2=A0 =C2=A00x12AD100000003310)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.Perip=
hManager] init() called with device args<br>
&gt;=C2=A0 =C2=A0 =C2=A0`product=3De310_sg1,mgm.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_0] =
Initializing block control (NOC ID:<br>
&gt;=C2=A0 =C2=A0 =C2=A00xDDC0000000000000)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_0] =
Initializing block control (NOC ID:<br>
&gt;=C2=A0 =C2=A0 =C2=A00xD0C0000000000002)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0=
] Performing CODEC loopback test...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0=
] CODEC loopback test passed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0=
] Performing CODEC loopback test...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0=
] CODEC loopback test passed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; _________________=
____________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =
=C2=A0 =C2=A0Device: E300-Series Device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | _______________=
______________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e31x<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0mpm_version: 3.15.0.0-gaea0e2de<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0pid: 30674<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0product: e310_sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0rev: 4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0rpc_connection: local<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0serial: 30B0152<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0type: e3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0MPM Version: 1.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0FPGA Version: 1.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0FPGA git hash: fde2a94.clean<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0RFNoC capable: Yes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Time sources:=C2=A0 internal, external, gpsdo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Clock sources: internal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Sensors: ref_locked, temp_fpga, temp_mb, gps_locked<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| _=
____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0ad9361_temperature<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 400=
00000.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0ad9361_temperature<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 400=
00000.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Codec: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual ADC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| _=
____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_tempera=
ture<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 400=
00000.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_tempera=
ture<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 400=
00000.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0step 0.0 Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0| /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Codec: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual DAC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| _=
____________________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks on this device:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| |=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
280024] usrp-dma-core: Deregistered tx-dma3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
293917] usrp-dma-core: Deregistered tx-dma2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
304477] usrp-dma-core: Deregistered tx-dma1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
316396] usrp-dma-core: Deregistered tx-dma0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
327630] usrp-dma-core: Deregistered rx-dma3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
339059] usrp-dma-core: Deregistered rx-dma2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
350350] usrp-dma-core: Deregistered rx-dma1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
360698] usrp-dma-core: Deregistered rx-dma0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
401639] fpga_manager fpga0: writing<br>
&gt;=C2=A0 =C2=A0 =C2=A0e310_sg1_idle.bin to Xilinx Zynq FPGr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
501239] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
511488] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,l<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
521660] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,r<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.=
531642] OF: overlay: WARNING: memory leak will<br>
&gt;=C2=A0 =C2=A0 =C2=A0occur if overlay removed,y<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A073.=
064935] e31x-pmu: probe of fpga-full:pmu failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0with error -524<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~#<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I will also t=
ryout the latest uhd 4.0 sdimg for E310 sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0as soon as I have the time. Maybe that has differen=
t results.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was wonderi=
ng if the output of uhd_find_devices gives a<br>
&gt;=C2=A0 =C2=A0 =C2=A0clue.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is this the n=
ormal expected output whne you run<br>
&gt;=C2=A0 =C2=A0 =C2=A0uhd_find_devices on the E310.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:=
~# uhd_find_devices<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] =
linux; GNU C++ version 8.2.0; Boost_106800;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.0-0-gaea0e2de<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -------------=
-------------------------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device=
 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -------------=
-------------------------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Addres=
s:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0s=
erial:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0c=
laimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0m=
gmt_addr: 127.0.0.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0p=
roduct:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0r=
eachable: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0t=
ype:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Best regards,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Sent from=
 my iPhone<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Ma=
y 16, 2021, at 5:33 PM, Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:usrp-users-list@olifantasia.c=
om" target=3D"_blank">usrp-users-list@olifantasia.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-list@olifan=
tasia.com" target=3D"_blank">usrp-users-list@olifantasia.com</a>&gt;&gt; wr=
ote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =EF=
=BB=BFOn 15-05-2021 18:33, Marcus D. Leech wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t; On 05/15/2021 10:19 AM, Martin wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t; On 14-05-2021 21:26, Marcus D Leech wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t;&gt; What happens if you don=E2=80=99t specify any args at all?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t; Then I also get No Device found.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t; Martin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; M=
artin:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; W=
here did you get your sdimg from?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On a =
host system with UHD 3.15 installed I did:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sudo =
uhd_images_downloader -t sdimg -t e310 -t sg1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO=
] Images destination: /usr/share/uhd/images<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The f=
ile size for this target (832.3 MiB) exceeds the<br>
&gt;=C2=A0 =C2=A0 =C2=A0download limit (100.0 MiB). Continue downloading? [=
y/N]y<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO=
] Downloading<br>
&gt;=C2=A0 =C2=A0 =C2=A0e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip, total si=
ze: 872729.93 kB<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO=
] Images download complete.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This =
seems to download this file and extracts it:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://files.ettus.com/binaries/cache/e=
3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip" rel=3D"=
noreferrer" target=3D"_blank">https://files.ettus.com/binaries/cache/e3xx/m=
eta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://files.ettus.com/binaries/cac=
he/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip" rel=
=3D"noreferrer" target=3D"_blank">https://files.ettus.com/binaries/cache/e3=
xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip</a>&gt;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wro=
te the extracted image to a 8 GB sdcard with dd.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I als=
o tried downloading the above file by hand and and<br>
&gt;=C2=A0 =C2=A0 =C2=A0extracing it to the sdcard. That has the exact same=
 result.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; _____________________________=
__________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; To unsubscribe send an email =
to<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:usrp-users-leave@lists.ettus.com"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; _________________________________=
______________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; USRP-users mailing list -- <a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; To unsubscribe send an email to<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:usrp-users-leave@lists.ettus.com"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000009e7e0f05c442a24f--

--===============3403791224497477818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3403791224497477818==--
