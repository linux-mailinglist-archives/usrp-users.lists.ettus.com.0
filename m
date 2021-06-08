Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC4639F8D2
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 16:18:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96C6C384A39
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 10:18:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="zxgl7jCH";
	dkim-atps=neutral
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D51C83840B0
	for <USRP-users@lists.ettus.com>; Tue,  8 Jun 2021 10:17:48 -0400 (EDT)
Received: by mail-ej1-f41.google.com with SMTP id a11so32189154ejf.3
        for <USRP-users@lists.ettus.com>; Tue, 08 Jun 2021 07:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qYmQQ4//LgUAvHPL/1EMoI36cVKlrJzMowg0YU4M1fY=;
        b=zxgl7jCHg7h9GKQa2dtvAcJGbnF1U0wC0ZsUv16gV7gINTlZKLKHa49KciiK8f8B2D
         rR1JjgaofafrmtHYLo15F1dpx+H9bLB+JflLB2hqH7YWFLxZEjXQVQjMBkdmTDzzhDUh
         GsBtWv9hIjkasOBL2g7o0HisujkSfCCMdWS13xkvaBHmCjfdjixY/W6dOOhcUYJHTrC6
         MdKtyOvB6mGYJY2ZTLI7xlfYL7tVj73YjPiXSGTbrsrxrw2NJhudQVEIDkpwII+zSc24
         pAbcR6TGHNa8mMag46RK+/TCpp81CFhTPM47olBqE0r6reg+z8wbQZMRsxqagnSMri+w
         kWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qYmQQ4//LgUAvHPL/1EMoI36cVKlrJzMowg0YU4M1fY=;
        b=dSGghO289E4zNMyLiOzihUhjBledd0d7LdJOazoWg9VBuuRIcV5i5DdDHMXFkzATnP
         b0XVPk1qyuHc/oDlV22DLwXdXuGAZicUC1p4tPr/uCWIpqGjZDSQwgyleoe8A5dLvzg8
         SpLzHuY1zNWDHeJEj0Que49Gm+O1qiU10Ah5nWR64H6fjiPVKmyoYHDZyAX7MSXfcx7A
         PwQB6ncaanSFFmR2aO9WJKbfZoaMG5CUHGIf2EnUtR7jBjIb2v38RVf0+LgcPHjSIF7r
         NzU/jE/OfKXL24nLnj0w9AH1XKiwy29JDsKlYabPEgfkPyYfloKO+v00EDIY3lvwDA6E
         YHhA==
X-Gm-Message-State: AOAM532CHowgPGqW5o4dYk+tw1o2KksV49cXZAKrzvY9y0OhdSR9+DaU
	39Fsd+CSOnAF+OniYjOeWFdZuFSCgCS0VCVPuS/cMt8e
X-Google-Smtp-Source: ABdhPJx9UUosHuGsGw7+5nqxlcbsbb75pyD2KQI3z/OSvGw4CYiNABsDwaR7fQkmAydsh2fyX3EzBzo+8KN3dC/b96k=
X-Received: by 2002:a17:907:1c13:: with SMTP id nc19mr23983634ejc.168.1623161867550;
 Tue, 08 Jun 2021 07:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <cb537b4e-9211-545f-dc27-06cbc9fcc494@olifantasia.com> <23ECF7FA-27F3-452B-B7AE-BDF928FCE543@gmail.com>
In-Reply-To: <23ECF7FA-27F3-452B-B7AE-BDF928FCE543@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 8 Jun 2021 10:17:36 -0400
Message-ID: <CAGNhwTPbn1aZtGp8PohRK6upK0=Mde7oyceF7Jux8RujHH3svA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: 45XU3GQL57X3RAFCICIAHXDCJBU56MEV
X-Message-ID-Hash: 45XU3GQL57X3RAFCICIAHXDCJBU56MEV
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/45XU3GQL57X3RAFCICIAHXDCJBU56MEV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4426732348444818460=="

--===============4426732348444818460==
Content-Type: multipart/alternative; boundary="00000000000087581605c441d258"

--00000000000087581605c441d258
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin - Can you try manually applying this commit on your E310 SG1?
I'll note that without it I can boot mine into UHD 3.15.0.0 release (or
LTS), but "find" fails & then nothing else works. At boot the USRP hardware
daemon doesn't start, because it can't detect the product info (as shown by
"systemctl status usrp-hwd"). This commit should fix the issue. Once
applied, you'll either want to reboot the USRP, or stop and start the USRP
HWD ("systemctl stop usrp-hwd" then "systemctl start usrp-hwd"). Fingers
crossed this works! - MLD

https://github.com/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06fd=
6fb85e4be


On Tue, Jun 8, 2021 at 9:03 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> None of us have been able to reproduce this
>
> I have an SG1 device and can=E2=80=99t make this happen, but a later hard=
ware rev.
>
> Sent from my iPhone
>
> > On Jun 8, 2021, at 8:25 AM, Martin <usrp-users-list@olifantasia.com>
> wrote:
> >
> > =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech wrote:
> >> Martin:
> >> I=E2=80=99m
> >> I=E2=80=99m in discussions with Ettus R&D who are trying to reproduce.
> > Any news on this?
> >
> > A working uhd 3.15 image on E310 sg1 would really be appreciated.
> >
> > Is there anything that I can do or test?
> >
> > My E310 has partno: 156333B-01L
> > The exact hardware revision (B in my case) could be a clue.
> >
> > Thanks,
> > Martin
> >
> >
> >> I was unable with mine.
> >> Sent from my iPhone
> >>>> On May 20, 2021, at 1:23 PM, Marcus D Leech <patchvonbraun@gmail.com=
>
> wrote:
> >>>
> >>> =EF=BB=BFFYI I see the same memory leak and PMU warnings on my SG1 ha=
rdware u
> der 3.15. So I assume that this is a side effect of the move to MPM for
> E310 hardware.
> >>>
> >>>
> >>>
> >>> Sent from my iPhone
> >>>
> >>>> On May 20, 2021, at 12:05 PM, Martin <usrp-users-list@olifantasia.co=
m>
> wrote:
> >>>>
> >>>> =EF=BB=BFI tried again with the UHD 4.0.0.0 sdimg
> >>>> I get a lot of warnings, but with the uhd 4.0.0.0 sdimg the uhd
> hardware is recognized.
> >>>>
> >>>> I ado see this error with uhd 4.0.0.0:
> >>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with error -5=
24
> >>>> I'm not sure what this means.
> >>>>
> >>>> If needed, we could work with the uhd 4.0.0 sdimg, but we would
> really like to be able to also keep using our uhd 3.15 development tree.
> Moving to uhd 4.0.0.0 would mean installing both uhd 3.15 and uhd 4.0.0.0
> trees on some of our deployment host-machines. Which seems error-prone.
> >>>>
> >>>> Alchemy 2020.01 ni-e31x-F661C4 ttyPS0
> >>>>
> >>>> ni-e31x-F661C4 login: root
> >>>> root@ni-e31x-F661C4:~# uhd_find_devices
> >>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> >>>> No UHD Devices Found
> >>>> root@ni-e31x-F661C4:~# [   49.925787] fpga_manager fpga0: writing
> e310_sg1_idle.bin to Xilinx Zynq FPGA Manager
> >>>> [   50.121918] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>> [   50.146427] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>> [   50.156208] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>> [   50.186332] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with error -5=
24
> >>>>
> >>>> root@ni-e31x-F661C4:~/logs# uhd_usrp_probe
> >>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> >>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C4,clai=
med=3D
> >>>> False
> >>>> [  649.706380] fpga_manager fpga0: writing e310_sg1.bin to Xilinx
> Zynq FPGA Manager
> >>>> [  649.782720] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>> [  649.792926] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /amba/spi@e0006000/status
> >>>> [  649.803194] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /amba/spi@e0006000/cs-gpios
> >>>> [  649.813823] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/spidev0
> >>>> [  649.823667] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>> [  649.833505] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>> [  649.843335] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>> [  649.853172] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/nixge_internal
> >>>> [  650.384737] e31x-pmu: probe of fpga-full:pmu failed with error -5=
24
> >>>> [  650.406779] nixge 40020000.ethernet int0: renamed from eth1
> >>>> [  650.584811] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Hal=
f
> - flow control off
> >>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >>>> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D127.0.0.1,product=3De310_sg1'.
> >>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> >>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> >>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >>>> _____________________________________________________
> >>>> /
> >>>> |       Device: E300-Series Device
> >>>> |     _____________________________________________________
> >>>> |    /
> >>>> |   |       Mboard: ni-e31x-F661C4
> >>>> |   |   dboard_0_pid: 272
> >>>> |   |   dboard_0_serial: F65275
> >>>> |   |   fs_version: 20200914001743
> >>>> |   |   mender_artifact: v4.0.0.0_e310_sg1
> >>>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> >>>> |   |   pid: 30674
> >>>> |   |   product: e310_sg1
> >>>> |   |   rev: 0
> >>>> |   |   rpc_connection: local
> >>>> |   |   serial: F661C4
> >>>> |   |   type: e3xx
> >>>> |   |   MPM Version: 3.0
> >>>> |   |   FPGA Version: 6.0
> >>>> |   |   FPGA git hash: be53058.clean
> >>>> |   |
> >>>> |   |   Time sources:  internal, external, gpsdo
> >>>> |   |   Clock sources: internal
> >>>> |   |   Sensors: ref_locked, gps_locked, temp_fpga, temp_mb,
> gps_gpgga, gps_sky, gps_time, gps_tpv
> >>>> |    /
> >>>> |   |       RFNoC blocks on this device:
> >>>> |   |
> >>>> |   |   * 0/Radio#0
> >>>> |     _____________________________________________________
> >>>> |    /
> >>>> |   |       Static connections on this device:
> >>>> |   |
> >>>> |   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0
> >>>> |   |   * 0/SEP#1:0=3D=3D>0/Radio#0:1
> >>>> |   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0
> >>>> |   |   * 0/Radio#0:1=3D=3D>0/SEP#1:0
> >>>> |     _____________________________________________________
> >>>> |    /
> >>>> |   |       TX Dboard: dboard
> >>>> |   |     _____________________________________________________
> >>>> |   |    /
> >>>> |   |   |       TX Frontend: 0
> >>>> |   |   |   Name: E3xx
> >>>> |   |   |   Antennas: TX/RX
> >>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>> |   |   |   Connection Type: IQ
> >>>> |   |   |   Uses LO offset: No
> >>>> |   |     _____________________________________________________
> >>>> |   |    /
> >>>> |   |   |       TX Frontend: 1
> >>>> |   |   |   Name: E3xx
> >>>> |   |   |   Antennas: TX/RX
> >>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>> |   |   |   Connection Type: IQ
> >>>> |   |   |   Uses LO offset: No
> >>>> |     _____________________________________________________
> >>>> |    /
> >>>> |   |       RX Dboard: dboard
> >>>> |   |     _____________________________________________________
> >>>> |   |    /
> >>>> |   |   |       RX Frontend: 0
> >>>> |   |   |   Name: E3xx
> >>>> |   |   |   Antennas: RX2, TX/RX
> >>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>> |   |   |   Connection Type: IQ
> >>>> |   |   |   Uses LO offset: No
> >>>>  |     _____________________________________________________
> >>>> |   |    /
> >>>> |   |   |       RX Frontend: 1
> >>>> |   |   |   Name: E3xx
> >>>> |   |   |   Antennas: RX2, TX/RX
> >>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>> |   |   |   Connection Type: IQ
> >>>> |   |   |   Uses LO offset: No
> >>>>
> >>>> [  658.474906] nixge 40020000.ethernet int0: Link is Down
> >>>> [  658.590581] fpga_manager fpga0: writing e310_sg1_idle.bin to
> Xilinx Zynq FPGA Manager
> >>>> [  658.671152] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>> [  658.681463] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>> [  658.691315] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>> [  658.701150] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>> [  659.219759] e31x-pmu: probe of fpga-full:pmu failed with error -5=
24
> >>>>
> >>>>
> >>>>
> >>>>>> On 20-05-2021 17:31, Martin wrote:
> >>>>> I have still no idea why my E310 sg1 does not recognize its own uhd
> hardware with uhd_find_devices.
> >>>>> Can the exact hardware variant be of influence.
> >>>>> Mine has partno: 156333B-01L
> >>>>> The B in the partnumber seems to indicate the precise hardware
> revision.
> >>>>> The manual says:
> >>>>>> The Release 4 image comes in two varieties. The variety that you
> will need depends on the product number of your E310 or E312, which is
> printed on the bottom of the device.
> >>>>>> E310 (15633X-01L)     X=3D A, B, C, D     Ettus-e3xx-sg1
> >>>>>> X=3D E or later     Ettus-e3xx-sg3
> >>>>>> E312 (140605X-01L)     X =3D All     Ettus-e3xx-sg3
> >>>>> So I have a really early edition.
> >>>>> Mine gives this:
> >>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> >>>>>>>>> UHD_3.15.0.0-0-gaea0e2de
> >>>>>>>>> --------------------------------------------------
> >>>>>>>>> -- UHD Device 0
> >>>>>>>>> --------------------------------------------------
> >>>>>>>>> Device Address:
> >>>>>>>>>   serial:
> >>>>>>>>>   claimed: False
> >>>>>>>>>   mgmt_addr: 127.0.0.1
> >>>>>>>>>   product:
> >>>>>>>>>   reachable: No
> >>>>>>>>>   type:
> >>>>> Best regards,
> >>>>> Martin
> >>>>>> On 18-05-2021 14:33, Marcus D. Leech wrote:
> >>>>>> On 05/18/2021 05:06 AM, Martin wrote:
> >>>>>>> What does uhd_find_devices show on your system?
> >>>>>>>
> >>>>>>> Martin
> >>>>>>>
> >>>>>> Device Address:
> >>>>>>     serial: 30B0152
> >>>>>>     claimed: False
> >>>>>>     mgmt_addr: 127.0.0.1
> >>>>>>     product: e310_sg1
> >>>>>>     type: e3xx
> >>>>>>>
> >>>>>>> On 17-05-2021 23:09, Marcus D. Leech wrote:
> >>>>>>>> On 05/17/2021 05:03 PM, Martin wrote:
> >>>>>>>>> On 17-05-2021 00:10, Marcus D Leech wrote:
> >>>>>>>>>> I=E2=80=99m currently trying to reproduce but on an sg3 system=
. Having
> entirely different problems.
> >>>>>>>>> Thank you for looking into this.
> >>>>>>>>> I am looking forward to your findings.
> >>>>>>>>> What issues do you have with sg3?
> >>>>>>>>> Maybe I can help you with that ;-)
> >>>>>>>> I mis-spoke as it turns out...
> >>>>>>>>
> >>>>>>>> My device is an SG1, and running uhd_usrp_probe produces:
> >>>>>>>>
> >>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2e
> >>>>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0e
> >>>>>>>> [   63.396911] fpga_manager fpga0: writing e310_sg1.bin to Xilin=
x
> Zynq FPGA Manr
> >>>>>>>> [   63.597426] OF: overlay: WARNING: memory leak will occur if
> overlay removed,e
> >>>>>>>> [   63.607629] OF: overlay: WARNING: memory leak will occur if
> overlay removed,s
> >>>>>>>> [   63.617856] OF: overlay: WARNING: memory leak will occur if
> overlay removed,s
> >>>>>>>> [   63.629066] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.638894] OF: overlay: WARNING: memory leak will occur if
> overlay removed,l
> >>>>>>>> [   63.648644] OF: overlay: WARNING: memory leak will occur if
> overlay removed,r
> >>>>>>>> [   63.658443] OF: overlay: WARNING: memory leak will occur if
> overlay removed,y
> >>>>>>>> [   63.668206] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.678010] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>> [   63.687768] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>> [   63.697568] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>> [   63.707324] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.717127] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>> [   63.726899] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>> [   63.736704] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>> [   63.746463] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.756698] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>> [   63.766927] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>> [   63.777182] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>> [   63.787416] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.797648] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>> [   63.807881] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>> [   63.818115] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>> [   63.828350] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>> [   63.895829] rfnoc_crossbar crossbar0: NI Platform RFNoC
> Crossbar registered
> >>>>>>>> [   64.419972] e31x-pmu: probe of fpga-full:pmu failed with erro=
r
> -524
> >>>>>>>> [   64.485031] usrp-dma-core: Registered rx-dma0
> >>>>>>>> [   64.515301] usrp-dma-core: Registered rx-dma1
> >>>>>>>> [   64.531891] usrp-dma-core: Registered rx-dma2
> >>>>>>>> [   64.545275] usrp-dma-core: Registered rx-dma3
> >>>>>>>> [   64.560157] usrp-dma-core: Registered tx-dma0
> >>>>>>>> [   64.571785] usrp-dma-core: Registered tx-dma1
> >>>>>>>> [   64.585115] usrp-dma-core: Registered tx-dma2
> >>>>>>>> [   64.595584] usrp-dma-core: Registered tx-dma3
> >>>>>>>> [INFO] [MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2d=
e
> >>>>>>>> [INFO] [MPM.main] Spawning RPC process...
> >>>>>>>> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check=
!
> >>>>>>>> [INFO] [MPM.PeriphManager] Device serial number: 30B0152
> >>>>>>>> [WARNING] [MPM.GPSDIface] Could not connect to GPSd! None of the
> GPS sensors wi!
> >>>>>>>> [INFO] [MPM.RPCServer] RPC server ready!
> >>>>>>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
> >>>>>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000003310)
> >>>>>>>> [INFO] [MPM.PeriphManager] init() called with device args
> `product=3De310_sg1,mgm.
> >>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> 0xDDC0000000000000)
> >>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> 0xD0C0000000000002)
> >>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >>>>>>>> _____________________________________________________
> >>>>>>>>  /
> >>>>>>>> |       Device: E300-Series Device
> >>>>>>>> | _____________________________________________________
> >>>>>>>> | /
> >>>>>>>> |   |       Mboard: ni-e31x
> >>>>>>>> |   |   mpm_version: 3.15.0.0-gaea0e2de
> >>>>>>>> |   |   pid: 30674
> >>>>>>>> |   |   product: e310_sg1
> >>>>>>>> |   |   rev: 4
> >>>>>>>> |   |   rpc_connection: local
> >>>>>>>> |   |   serial: 30B0152
> >>>>>>>> |   |   type: e3xx
> >>>>>>>> |   |   MPM Version: 1.2
> >>>>>>>> |   |   FPGA Version: 1.0
> >>>>>>>> |   |   FPGA git hash: fde2a94.clean
> >>>>>>>> |   |   RFNoC capable: Yes
> >>>>>>>> | |
> >>>>>>>> |   |   Time sources:  internal, external, gpsdo
> >>>>>>>> |   |   Clock sources: internal
> >>>>>>>> |   |   Sensors: ref_locked, temp_fpga, temp_mb, gps_locked
> >>>>>>>> |   | _____________________________________________________
> >>>>>>>> |   | /
> >>>>>>>> |   |   |       RX Dboard: A
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       RX Frontend: 0
> >>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> ad9361_temperature
> >>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       RX Frontend: 1
> >>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> ad9361_temperature
> >>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       RX Codec: A
> >>>>>>>> |   |   |   |   Name: AD9361 Dual ADC
> >>>>>>>> |   |   |   |   Gain Elements: None
> >>>>>>>> |   | _____________________________________________________
> >>>>>>>> |   | /
> >>>>>>>> |   |   |       TX Dboard: A
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       TX Frontend: 0
> >>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>> |   |   |   |   Antennas: TX/RX
> >>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       TX Frontend: 1
> >>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>> |   |   |   |   Antennas: TX/RX
> >>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>> |   |   | _____________________________________________________
> >>>>>>>> |   |   | /
> >>>>>>>> |   |   |   |       TX Codec: A
> >>>>>>>> |   |   |   |   Name: AD9361 Dual DAC
> >>>>>>>> |   |   |   |   Gain Elements: None
> >>>>>>>> |   | _____________________________________________________
> >>>>>>>> |   | /
> >>>>>>>> |   |   |       RFNoC blocks on this device:
> >>>>>>>> |   | |
> >>>>>>>> |   |   |   * Radio_0
> >>>>>>>> |   |   |   * DDC_0
> >>>>>>>> |   |   |   * DUC_0
> >>>>>>>>
> >>>>>>>> [   72.280024] usrp-dma-core: Deregistered tx-dma3
> >>>>>>>> [   72.293917] usrp-dma-core: Deregistered tx-dma2
> >>>>>>>> [   72.304477] usrp-dma-core: Deregistered tx-dma1
> >>>>>>>> [   72.316396] usrp-dma-core: Deregistered tx-dma0
> >>>>>>>> [   72.327630] usrp-dma-core: Deregistered rx-dma3
> >>>>>>>> [   72.339059] usrp-dma-core: Deregistered rx-dma2
> >>>>>>>> [   72.350350] usrp-dma-core: Deregistered rx-dma1
> >>>>>>>> [   72.360698] usrp-dma-core: Deregistered rx-dma0
> >>>>>>>> [   72.401639] fpga_manager fpga0: writing e310_sg1_idle.bin to
> Xilinx Zynq FPGr
> >>>>>>>> [   72.501239] OF: overlay: WARNING: memory leak will occur if
> overlay removed,e
> >>>>>>>> [   72.511488] OF: overlay: WARNING: memory leak will occur if
> overlay removed,l
> >>>>>>>> [   72.521660] OF: overlay: WARNING: memory leak will occur if
> overlay removed,r
> >>>>>>>> [   72.531642] OF: overlay: WARNING: memory leak will occur if
> overlay removed,y
> >>>>>>>> [   73.064935] e31x-pmu: probe of fpga-full:pmu failed with erro=
r
> -524
> >>>>>>>> root@ni-e31x:~#
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>> I will also tryout the latest uhd 4.0 sdimg for E310 sg1 as soo=
n
> as I have the time. Maybe that has different results.
> >>>>>>>>>
> >>>>>>>>> I was wondering if the output of uhd_find_devices gives a clue.
> >>>>>>>>> Is this the normal expected output whne you run uhd_find_device=
s
> on the E310.
> >>>>>>>>>
> >>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2de
> >>>>>>>>> --------------------------------------------------
> >>>>>>>>> -- UHD Device 0
> >>>>>>>>> --------------------------------------------------
> >>>>>>>>> Device Address:
> >>>>>>>>>   serial:
> >>>>>>>>>   claimed: False
> >>>>>>>>>   mgmt_addr: 127.0.0.1
> >>>>>>>>>   product:
> >>>>>>>>>   reachable: No
> >>>>>>>>>   type:
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> Best regards,
> >>>>>>>>> Martin
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> Sent from my iPhone
> >>>>>>>>>>
> >>>>>>>>>>> On May 16, 2021, at 5:33 PM, Martin <
> usrp-users-list@olifantasia.com> wrote:
> >>>>>>>>>>>
> >>>>>>>>>>> =EF=BB=BFOn 15-05-2021 18:33, Marcus D. Leech wrote:
> >>>>>>>>>>>>> On 05/15/2021 10:19 AM, Martin wrote:
> >>>>>>>>>>>>> On 14-05-2021 21:26, Marcus D Leech wrote:
> >>>>>>>>>>>>>> What happens if you don=E2=80=99t specify any args at all?
> >>>>>>>>>>>>> Then I also get No Device found.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Martin
> >>>>>>>>>>>> Martin:
> >>>>>>>>>>>> Where did you get your sdimg from?
> >>>>>>>>>>>
> >>>>>>>>>>> On a host system with UHD 3.15 installed I did:
> >>>>>>>>>>>
> >>>>>>>>>>> sudo uhd_images_downloader -t sdimg -t e310 -t sg1
> >>>>>>>>>>>
> >>>>>>>>>>> [INFO] Images destination: /usr/share/uhd/images
> >>>>>>>>>>> The file size for this target (832.3 MiB) exceeds the downloa=
d
> limit (100.0 MiB). Continue downloading? [y/N]y
> >>>>>>>>>>> [INFO] Downloading e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip,
> total size: 872729.93 kB
> >>>>>>>>>>> [INFO] Images download complete.
> >>>>>>>>>>>
> >>>>>>>>>>> This seems to download this file and extracts it:
> >>>>>>>>>>>
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e31=
0_sg1_sdimg_default-v3.15.0.0.zip
> >>>>>>>>>>>
> >>>>>>>>>>> I wrote the extracted image to a 8 GB sdcard with dd.
> >>>>>>>>>>>
> >>>>>>>>>>> I also tried downloading the above file by hand and and
> extracing it to the sdcard. That has the exact same result.
> >>>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>>> _______________________________________________
> >>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000087581605c441d258
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin - Can you try manually applying this commit on y=
our E310 SG1? I&#39;ll note that without it I can boot mine into UHD 3.15.0=
.0 release (or LTS), but &quot;find&quot; fails &amp; then nothing else wor=
ks. At boot the USRP hardware daemon doesn&#39;t start, because it can&#39;=
t detect the product info (as shown by &quot;systemctl status usrp-hwd&quot=
;). This commit should fix the issue. Once applied, you&#39;ll either want =
to reboot the USRP, or stop and start the USRP HWD (&quot;systemctl stop us=
rp-hwd&quot; then &quot;systemctl start usrp-hwd&quot;). Fingers crossed th=
is works! - MLD<div><br></div><div><a href=3D"https://github.com/EttusResea=
rch/uhd/commit/be53058a47c6b2925103d44595f06fd6fb85e4be">https://github.com=
/EttusResearch/uhd/commit/be53058a47c6b2925103d44595f06fd6fb85e4be</a></div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jun 8, 2021 at 9:03 AM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">None of us have =
been able to reproduce this<br>
<br>
I have an SG1 device and can=E2=80=99t make this happen, but a later hardwa=
re rev. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 8, 2021, at 8:25 AM, Martin &lt;<a href=3D"mailto:usrp-users-li=
st@olifantasia.com" target=3D"_blank">usrp-users-list@olifantasia.com</a>&g=
t; wrote:<br>
&gt; <br>
&gt; =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech wrote:<br>
&gt;&gt; Martin:<br>
&gt;&gt; I=E2=80=99m<br>
&gt;&gt; I=E2=80=99m in discussions with Ettus R&amp;D who are trying to re=
produce.<br>
&gt; Any news on this?<br>
&gt; <br>
&gt; A working uhd 3.15 image on E310 sg1 would really be appreciated.<br>
&gt; <br>
&gt; Is there anything that I can do or test?<br>
&gt; <br>
&gt; My E310 has partno: 156333B-01L<br>
&gt; The exact hardware revision (B in my case) could be a clue.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Martin<br>
&gt; <br>
&gt; <br>
&gt;&gt; I was unable with mine.<br>
&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt; On May 20, 2021, at 1:23 PM, Marcus D Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; =EF=BB=BFFYI I see the same memory leak and PMU warnings on my=
 SG1 hardware u der 3.15. So I assume that this is a side effect of the mov=
e to MPM for E310 hardware.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; On May 20, 2021, at 12:05 PM, Martin &lt;<a href=3D"mailto=
:usrp-users-list@olifantasia.com" target=3D"_blank">usrp-users-list@olifant=
asia.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; =EF=BB=BFI tried again with the UHD 4.0.0.0 sdimg<br>
&gt;&gt;&gt;&gt; I get a lot of warnings, but with the uhd 4.0.0.0 sdimg th=
e uhd hardware is recognized.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; I ado see this error with uhd <a href=3D"http://4.0.0.0" r=
el=3D"noreferrer" target=3D"_blank">4.0.0.0</a>:<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu: probe of fpga-full:pmu =
failed with error -524<br>
&gt;&gt;&gt;&gt; I&#39;m not sure what this means.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; If needed, we could work with the uhd 4.0.0 sdimg, but we =
would really like to be able to also keep using our uhd 3.15 development tr=
ee. Moving to uhd 4.0.0.0 would mean installing both uhd 3.15 and uhd 4.0.0=
.0 trees on some of our deployment host-machines. Which seems error-prone.<=
br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Alchemy 2020.01 ni-e31x-F661C4 ttyPS0<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; ni-e31x-F661C4 login: root<br>
&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# uhd_find_devices<br>
&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; U=
HD_4.0.0.0-0-g90ce6062<br>
&gt;&gt;&gt;&gt; No UHD Devices Found<br>
&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# [=C2=A0 =C2=A049.925787] fpga_manag=
er fpga0: writing e310_sg1_idle.bin to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.121918] OF: overlay: WARNING: memory leak=
 will occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.146427] OF: overlay: WARNING: memory leak=
 will occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.156208] OF: overlay: WARNING: memory leak=
 will occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.186332] OF: overlay: WARNING: memory leak=
 will occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu: probe of fpga-full:pmu =
failed with error -524<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~/logs# uhd_usrp_probe<br>
&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; U=
HD_4.0.0.0-0-g90ce6062<br>
&gt;&gt;&gt;&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with ar=
gs: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C4,cl=
aimed=3D<br>
&gt;&gt;&gt;&gt; False<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.706380] fpga_manager fpga0: writing e310_sg1.b=
in to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.782720] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.792926] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /amba/spi@e0006000/status<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.803194] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /amba/spi@e0006000/cs-gpios<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.813823] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/spidev0<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.823667] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.833505] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.843335] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt; [=C2=A0 649.853172] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/nixge_internal<br>
&gt;&gt;&gt;&gt; [=C2=A0 650.384737] e31x-pmu: probe of fpga-full:pmu faile=
d with error -524<br>
&gt;&gt;&gt;&gt; [=C2=A0 650.406779] nixge 40020000.ethernet int0: renamed =
from eth1<br>
&gt;&gt;&gt;&gt; [=C2=A0 650.584811] nixge 40020000.ethernet int0: Link is =
Up - 10Mbps/Half - flow control off<br>
&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] init() called with device args =
`mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<br>
&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing CODEC loopback test on chann=
el 0 ...<br>
&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback test passed<br>
&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing CODEC loopback test on chann=
el 1 ...<br>
&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback test passed<br>
&gt;&gt;&gt;&gt; _____________________________________________________<br>
&gt;&gt;&gt;&gt; /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-Series Device<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_____________________________________=
________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e31x-=
F661C4<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboard_0_pid: 272<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboard_0_serial: F65275<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0fs_version: 20200914001743<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mender_artifact: v4.0.0.0_e310=
_sg1<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_sw_version: 4.0.0.0-g90ce6=
062<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e310_sg1<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection: local<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: F661C4<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 3.0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 6.0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: be53058.clean<b=
r>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 internal, =
external, gpsdo<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_locked, gps_locke=
d, temp_fpga, temp_mb, gps_gpgga, gps_sky, gps_time, gps_tpv<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks on =
this device:<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_____________________________________=
________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connectio=
ns on this device:<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/SEP#0:0=3D=3D&gt;0/Radio#0=
:0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/SEP#1:0=3D=3D&gt;0/Radio#0=
:1<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/SEP#0=
:0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:1=3D=3D&gt;0/SEP#1=
:0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_____________________________________=
________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: dboar=
d<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_______________________=
______________________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX=
 Frontend: 0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<=
br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.0=
00 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: =
0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range:=
 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type:=
 IQ<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: =
No<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_______________________=
______________________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX=
 Frontend: 1<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<=
br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.0=
00 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: =
0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range:=
 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type:=
 IQ<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: =
No<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_____________________________________=
________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: dboar=
d<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_______________________=
______________________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX=
 Frontend: 0<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, T=
X/RX<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.0=
00 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: =
0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range:=
 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type:=
 IQ<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: =
No<br>
&gt;&gt;&gt;&gt;=C2=A0 |=C2=A0 =C2=A0 =C2=A0_______________________________=
______________________<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX=
 Frontend: 1<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, T=
X/RX<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.0=
00 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: =
0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range:=
 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type:=
 IQ<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: =
No<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; [=C2=A0 658.474906] nixge 40020000.ethernet int0: Link is =
Down<br>
&gt;&gt;&gt;&gt; [=C2=A0 658.590581] fpga_manager fpga0: writing e310_sg1_i=
dle.bin to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt; [=C2=A0 658.671152] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt; [=C2=A0 658.681463] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt; [=C2=A0 658.691315] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt; [=C2=A0 658.701150] OF: overlay: WARNING: memory leak will=
 occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt; [=C2=A0 659.219759] e31x-pmu: probe of fpga-full:pmu faile=
d with error -524<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; On 20-05-2021 17:31, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt; I have still no idea why my E310 sg1 does not recogniz=
e its own uhd hardware with uhd_find_devices.<br>
&gt;&gt;&gt;&gt;&gt; Can the exact hardware variant be of influence.<br>
&gt;&gt;&gt;&gt;&gt; Mine has partno: 156333B-01L<br>
&gt;&gt;&gt;&gt;&gt; The B in the partnumber seems to indicate the precise =
hardware revision.<br>
&gt;&gt;&gt;&gt;&gt; The manual says:<br>
&gt;&gt;&gt;&gt;&gt;&gt; The Release 4 image comes in two varieties. The va=
riety that you will need depends on the product number of your E310 or E312=
, which is printed on the bottom of the device.<br>
&gt;&gt;&gt;&gt;&gt;&gt; E310 (15633X-01L)=C2=A0 =C2=A0 =C2=A0X=3D A, B, C,=
 D=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt; X=3D E or later=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg3<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; E312 (140605X-01L)=C2=A0 =C2=A0 =C2=A0X =3D All=C2=
=A0 =C2=A0 =C2=A0Ettus-e3xx-sg3<br>
&gt;&gt;&gt;&gt;&gt; So I have a really early edition.<br>
&gt;&gt;&gt;&gt;&gt; Mine gives this:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~# uhd_find_devices<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 8.=
2.0; Boost_106800;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; UHD_3.15.0.0-0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --------------------------------------=
------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --------------------------------------=
------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0serial:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0mgmt_addr: 127.0.0.1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0product:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0reachable: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0type:<br>
&gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 18-05-2021 14:33, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 05/18/2021 05:06 AM, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; What does uhd_find_devices show on your system=
?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0serial: 30B0152<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr: 127.0.0.1<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0product: e310_sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0type: e3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021 23:09, Marcus D. Leech wrote:<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/17/2021 05:03 PM, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021 00:10, Marcus D Leech wr=
ote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I=E2=80=99m currently trying to re=
produce but on an sg3 system. Having entirely different problems.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you for looking into this.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am looking forward to your findings.=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What issues do you have with sg3?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Maybe I can help you with that ;-)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I mis-spoke as it turns out...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; My device is an SG1, and running uhd_usrp_=
probe produces:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 8.2.0;=
 Boost_106800; UHD_3.15.0.0-0-gaea0e2e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: mgmt_addr=3D127.0.0e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.396911] fpga_manager fpga=
0: writing e310_sg1.bin to Xilinx Zynq FPGA Manr<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.597426] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.607629] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,s<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.617856] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,s<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.629066] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.638894] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,l<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.648644] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,r<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.658443] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.668206] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.678010] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.687768] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.697568] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.707324] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.717127] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.726899] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.736704] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.746463] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.756698] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.766927] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.777182] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.787416] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.797648] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.807881] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.818115] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.828350] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.895829] rfnoc_crossbar cr=
ossbar0: NI Platform RFNoC Crossbar registered<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.419972] e31x-pmu: probe o=
f fpga-full:pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.485031] usrp-dma-core: Re=
gistered rx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.515301] usrp-dma-core: Re=
gistered rx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.531891] usrp-dma-core: Re=
gistered rx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.545275] usrp-dma-core: Re=
gistered rx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.560157] usrp-dma-core: Re=
gistered tx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.571785] usrp-dma-core: Re=
gistered tx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.585115] usrp-dma-core: Re=
gistered tx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.595584] usrp-dma-core: Re=
gistered tx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main] Launching USRP/MPM, vers=
ion: 3.15.0.0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main] Spawning RPC process...<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.PeriphManager] Skipping HW/=
SW compatibility check!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Device serial n=
umber: 30B0152<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.GPSDIface] Could not connec=
t to GPSd! None of the GPS sensors wi!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCServer] RPC server ready!<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCServer] Spawning watchdog t=
ask...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Found 1 daughte=
rboard(s).<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Initializing block cont=
rol (NOC ID: 0x12AD100000003310)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] init() called w=
ith device args `product=3De310_sg1,mgm.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_0] Initializing block contro=
l (NOC ID: 0xDDC0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_0] Initializing block contro=
l (NOC ID: 0xD0C0000000000002)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Performing CODEC loopba=
ck test...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] CODEC loopback test pas=
sed<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Performing CODEC loopba=
ck test...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] CODEC loopback test pas=
sed<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; __________________________________________=
___________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-S=
eries Device<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | ________________________________________=
_____________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
Mboard: ni-e31x<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_version: 3=
.15.0.0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e310_=
sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 4<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection=
: local<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 30B015=
2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 1=
.2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: =
1.0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash:=
 fde2a94.clean<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capable:=
 Yes<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | |<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=
=C2=A0 internal, external, gpsdo<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources:=
 internal<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_l=
ocked, temp_fpga, temp_mb, gps_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| __________________________=
___________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: AD9361 Dual ADC<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| __________________________=
___________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ____________=
_________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Name: AD9361 Dual DAC<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| __________________________=
___________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
 =C2=A0 =C2=A0RFNoC blocks on this device:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| |<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
* Radio_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
* DDC_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
* DUC_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.280024] usrp-dma-core: De=
registered tx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.293917] usrp-dma-core: De=
registered tx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.304477] usrp-dma-core: De=
registered tx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.316396] usrp-dma-core: De=
registered tx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.327630] usrp-dma-core: De=
registered rx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.339059] usrp-dma-core: De=
registered rx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.350350] usrp-dma-core: De=
registered rx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.360698] usrp-dma-core: De=
registered rx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.401639] fpga_manager fpga=
0: writing e310_sg1_idle.bin to Xilinx Zynq FPGr<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.501239] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.511488] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,l<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.521660] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,r<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.531642] OF: overlay: WARN=
ING: memory leak will occur if overlay removed,y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A073.064935] e31x-pmu: probe o=
f fpga-full:pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~#<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I will also tryout the latest uhd 4.0 =
sdimg for E310 sg1 as soon as I have the time. Maybe that has different res=
ults.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was wondering if the output of uhd_f=
ind_devices gives a clue.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is this the normal expected output whn=
e you run uhd_find_devices on the E310.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~# uhd_find_devices<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 8.=
2.0; Boost_106800; UHD_3.15.0.0-0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --------------------------------------=
------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --------------------------------------=
------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0serial:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0mgmt_addr: 127.0.0.1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0product:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0reachable: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0type:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On May 16, 2021, at 5:33 PM, M=
artin &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=3D"_bla=
nk">usrp-users-list@olifantasia.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =EF=BB=BFOn 15-05-2021 18:33, =
Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/15/2021 10:19 AM=
, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-05-2021 21:26, M=
arcus D Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What happens if yo=
u don=E2=80=99t specify any args at all?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Then I also get No Dev=
ice found.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Where did you get your sdi=
mg from?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On a host system with UHD 3.15=
 installed I did:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sudo uhd_images_downloader -t =
sdimg -t e310 -t sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Images destination: /us=
r/share/uhd/images<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The file size for this target =
(832.3 MiB) exceeds the download limit (100.0 MiB). Continue downloading? [=
y/N]y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Downloading e3xx_e310_s=
g1_sdimg_default-v3.15.0.0.zip, total size: 872729.93 kB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Images download complet=
e.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This seems to download this fi=
le and extracts it:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://files.ettus=
.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v=
3.15.0.0.zip" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/=
binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.=
0.0.zip</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wrote the extracted image to=
 a 8 GB sdcard with dd.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I also tried downloading the a=
bove file by hand and and extracing it to the sdcard. That has the exact sa=
me result.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettu=
s.com</a><br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a><br>
&gt; <br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000087581605c441d258--

--===============4426732348444818460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4426732348444818460==--
