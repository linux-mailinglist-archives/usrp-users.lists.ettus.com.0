Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1029739F96C
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 16:43:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5B43384A34
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 10:43:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="e7VFFURm";
	dkim-atps=neutral
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 8358D3849FC
	for <USRP-users@lists.ettus.com>; Tue,  8 Jun 2021 10:42:23 -0400 (EDT)
Received: by mail-ej1-f51.google.com with SMTP id k7so32970922ejv.12
        for <USRP-users@lists.ettus.com>; Tue, 08 Jun 2021 07:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Js9BDlzBwvTmO1Q3DjdK30U1ydy23UI2qNkuig+LHNU=;
        b=e7VFFURm4AcqUzWMA23l0kzst0edy1nf8ecnh8WB0lA8ecpU2sq5vq/h+BDpALi/Ri
         doUT3HtPTmQqDEWkDPBCHUOJ/5rdd3jhrnib6RX8HsBA6oJQ90dhG9wgZS8/acV0escG
         Ja7tEkRdK4uvWyyJc6+FPXVfSU+8xxuY+PUaMI1lKqQTgZnKTeuP+5E+Ct+o+hJNL+3k
         fb/VMGKEKMtS4F4cn6QNgcZzLzoPn98HhQEoa6EAA/fJd+b+TGTB5/dFygDWpXF+hYdm
         z22/bzetkgcQCjHMM9gD04A4riA4oYSXoRWwRFHNs+IJb3y+KZwiJaoTfrYkZU5pmMLh
         uaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Js9BDlzBwvTmO1Q3DjdK30U1ydy23UI2qNkuig+LHNU=;
        b=O1+RBjMI7axnmq2/Scn67XAYr4Fjm5Uie8QaJkCjagNTco5Tn6mb/9U6B9TH7LkQWN
         ayaZeJLUtW5x1uR9E0Xki5If/JuRZ+cVYgCZqvQa4eHvIdeWU7u91g4KTVK8oOxt7CWi
         dJtHNhZRmp/WdNaV1JG3mAopeW0bgpodzDWTloVOIDX+J7Pu1AD68KC9Z2BbU7C19/cL
         H+WkAv51qwFTvnZIXjo2z6A06s6b4nS5pwZRy3iSqXgEhj26XQDFCxbPVqMaVJnKDINR
         Am69UF/1ytvdMHjo6qF8ISjiV0RkO2PEL2xYhIyO9hZFXuuPPsl34Vplu/sVk/TN93UG
         1x7Q==
X-Gm-Message-State: AOAM533ouxGOqJVff7/4ioq756splPDeBBPje8MaYUxeKpEy9ZQQvxZ3
	kznjra80UnjzS/pH/INBDnbW7opiyL19hCed2F2Sbbqm
X-Google-Smtp-Source: ABdhPJz4kNnfHWYHxcFVJaq2z34j0E5cSkWEYAZOsiGuB0iO6+92KcsVDG3RDpSOKwptCL/8h3ZtxoRBJ0/bJ1wRbmM=
X-Received: by 2002:a17:907:1c13:: with SMTP id nc19mr24106058ejc.168.1623163342238;
 Tue, 08 Jun 2021 07:42:22 -0700 (PDT)
MIME-Version: 1.0
References: <cb537b4e-9211-545f-dc27-06cbc9fcc494@olifantasia.com>
 <23ECF7FA-27F3-452B-B7AE-BDF928FCE543@gmail.com> <07f37b38-d335-e508-e8a7-94144f318200@olifantasia.com>
In-Reply-To: <07f37b38-d335-e508-e8a7-94144f318200@olifantasia.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 8 Jun 2021 10:42:11 -0400
Message-ID: <CAGNhwTNoaCrN41Jmmu87DPzV2faF4FwUQ2jCxcPw5TR3_TmVQg@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: X52ZEZP72VUPMCEBK4NTGCHMXUT75BDA
X-Message-ID-Hash: X52ZEZP72VUPMCEBK4NTGCHMXUT75BDA
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X52ZEZP72VUPMCEBK4NTGCHMXUT75BDA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9190238000660493425=="

--===============9190238000660493425==
Content-Type: multipart/alternative; boundary="0000000000006d40c505c4422ad6"

--0000000000006d40c505c4422ad6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin - Starting from a clean SDcard image seems wise! Here's what I
downloaded, direct link: <
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_=
sg1_sdimg_default-v3.15.0.0.zip
>. .If your host computer is running UHD 3.15 then you should be able to
use the UHD images downloader with "-type e310 -type sg1 -type sdimg" IIRC
... something like that.

I use "bmaptool" on Linux to copy the resulting files, having renamed them
"usrp_e31x_sg1_fs.sdimg" and "....bmap", to differentiate them from the SG3
version. Being in Support, I need both around for testing purposes, and the
extracted filename for both SG1 and SG3 comes out to the same name ...
{{{
sudo bmaptool copy usrp_e310_sg1_fs.sdimg /dev/sdb --bmap
usrp_e310_sg1_fs.sdimg.bmap
}}}

You then boot your E310 using this SDcard ... the file to patch is located
at "/usr/lib/python3.5/site-packages/usrp_mpm/e31x_legacy_eeprom.py". Once
edited as already noted you need to stop and start the USRP HWD.

I have created an internal PR that backports this fix from UHD4 to UHD
3.15-LTS. Will note it in our group meeting to see if I can get it merged
quickly and then pushed public. - MLD


On Tue, Jun 8, 2021 at 10:20 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> On 08-06-2021 15:02, Marcus D Leech wrote:
> > None of us have been able to reproduce this
> >
> > I have an SG1 device and can=E2=80=99t make this happen, but a later ha=
rdware
> rev.
> The hardware seems OK, since it works with the newer UHD 4.0 image.
>
> That makes me wonder if I somehow used a corrupt filesystem image.
> Can you give a link to the image you used that worked on your sg1?
>
>
> Thank you and best regards,
> Martin
>
> >
> > Sent from my iPhone
> >
> >> On Jun 8, 2021, at 8:25 AM, Martin <usrp-users-list@olifantasia.com>
> wrote:
> >>
> >> =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech wrote:
> >>> Martin:
> >>> I=E2=80=99m
> >>> I=E2=80=99m in discussions with Ettus R&D who are trying to reproduce=
.
> >> Any news on this?
> >>
> >> A working uhd 3.15 image on E310 sg1 would really be appreciated.
> >>
> >> Is there anything that I can do or test?
> >>
> >> My E310 has partno: 156333B-01L
> >> The exact hardware revision (B in my case) could be a clue.
> >>
> >> Thanks,
> >> Martin
> >>
> >>
> >>> I was unable with mine.
> >>> Sent from my iPhone
> >>>>> On May 20, 2021, at 1:23 PM, Marcus D Leech <patchvonbraun@gmail.co=
m>
> wrote:
> >>>>
> >>>> =EF=BB=BFFYI I see the same memory leak and PMU warnings on my SG1 h=
ardware u
> der 3.15. So I assume that this is a side effect of the move to MPM for
> E310 hardware.
> >>>>
> >>>>
> >>>>
> >>>> Sent from my iPhone
> >>>>
> >>>>> On May 20, 2021, at 12:05 PM, Martin <
> usrp-users-list@olifantasia.com> wrote:
> >>>>>
> >>>>> =EF=BB=BFI tried again with the UHD 4.0.0.0 sdimg
> >>>>> I get a lot of warnings, but with the uhd 4.0.0.0 sdimg the uhd
> hardware is recognized.
> >>>>>
> >>>>> I ado see this error with uhd 4.0.0.0:
> >>>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with error
> -524
> >>>>> I'm not sure what this means.
> >>>>>
> >>>>> If needed, we could work with the uhd 4.0.0 sdimg, but we would
> really like to be able to also keep using our uhd 3.15 development tree.
> Moving to uhd 4.0.0.0 would mean installing both uhd 3.15 and uhd 4.0.0.0
> trees on some of our deployment host-machines. Which seems error-prone.
> >>>>>
> >>>>> Alchemy 2020.01 ni-e31x-F661C4 ttyPS0
> >>>>>
> >>>>> ni-e31x-F661C4 login: root
> >>>>> root@ni-e31x-F661C4:~# uhd_find_devices
> >>>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> >>>>> No UHD Devices Found
> >>>>> root@ni-e31x-F661C4:~# [   49.925787] fpga_manager fpga0: writing
> e310_sg1_idle.bin to Xilinx Zynq FPGA Manager
> >>>>> [   50.121918] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>>> [   50.146427] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>>> [   50.156208] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>>> [   50.186332] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>>> [   50.716349] e31x-pmu: probe of fpga-full:pmu failed with error
> -524
> >>>>>
> >>>>> root@ni-e31x-F661C4:~/logs# uhd_usrp_probe
> >>>>> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> >>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C4,clai=
med=3D
> >>>>> False
> >>>>> [  649.706380] fpga_manager fpga0: writing e310_sg1.bin to Xilinx
> Zynq FPGA Manager
> >>>>> [  649.782720] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>>> [  649.792926] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /amba/spi@e0006000/status
> >>>>> [  649.803194] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /amba/spi@e0006000/cs-gpios
> >>>>> [  649.813823] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/spidev0
> >>>>> [  649.823667] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>>> [  649.833505] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>>> [  649.843335] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>>> [  649.853172] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/nixge_internal
> >>>>> [  650.384737] e31x-pmu: probe of fpga-full:pmu failed with error
> -524
> >>>>> [  650.406779] nixge 40020000.ethernet int0: renamed from eth1
> >>>>> [  650.584811] nixge 40020000.ethernet int0: Link is Up -
> 10Mbps/Half - flow control off
> >>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >>>>> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D127.0.0.1,product=3De310_sg1'.
> >>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> >>>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> >>>>> [INFO] [0/Radio#0] CODEC loopback test passed
> >>>>> _____________________________________________________
> >>>>> /
> >>>>> |       Device: E300-Series Device
> >>>>> |     _____________________________________________________
> >>>>> |    /
> >>>>> |   |       Mboard: ni-e31x-F661C4
> >>>>> |   |   dboard_0_pid: 272
> >>>>> |   |   dboard_0_serial: F65275
> >>>>> |   |   fs_version: 20200914001743
> >>>>> |   |   mender_artifact: v4.0.0.0_e310_sg1
> >>>>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> >>>>> |   |   pid: 30674
> >>>>> |   |   product: e310_sg1
> >>>>> |   |   rev: 0
> >>>>> |   |   rpc_connection: local
> >>>>> |   |   serial: F661C4
> >>>>> |   |   type: e3xx
> >>>>> |   |   MPM Version: 3.0
> >>>>> |   |   FPGA Version: 6.0
> >>>>> |   |   FPGA git hash: be53058.clean
> >>>>> |   |
> >>>>> |   |   Time sources:  internal, external, gpsdo
> >>>>> |   |   Clock sources: internal
> >>>>> |   |   Sensors: ref_locked, gps_locked, temp_fpga, temp_mb,
> gps_gpgga, gps_sky, gps_time, gps_tpv
> >>>>> |    /
> >>>>> |   |       RFNoC blocks on this device:
> >>>>> |   |
> >>>>> |   |   * 0/Radio#0
> >>>>> |     _____________________________________________________
> >>>>> |    /
> >>>>> |   |       Static connections on this device:
> >>>>> |   |
> >>>>> |   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0
> >>>>> |   |   * 0/SEP#1:0=3D=3D>0/Radio#0:1
> >>>>> |   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0
> >>>>> |   |   * 0/Radio#0:1=3D=3D>0/SEP#1:0
> >>>>> |     _____________________________________________________
> >>>>> |    /
> >>>>> |   |       TX Dboard: dboard
> >>>>> |   |     _____________________________________________________
> >>>>> |   |    /
> >>>>> |   |   |       TX Frontend: 0
> >>>>> |   |   |   Name: E3xx
> >>>>> |   |   |   Antennas: TX/RX
> >>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>>> |   |   |   Connection Type: IQ
> >>>>> |   |   |   Uses LO offset: No
> >>>>> |   |     _____________________________________________________
> >>>>> |   |    /
> >>>>> |   |   |       TX Frontend: 1
> >>>>> |   |   |   Name: E3xx
> >>>>> |   |   |   Antennas: TX/RX
> >>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>>> |   |   |   Connection Type: IQ
> >>>>> |   |   |   Uses LO offset: No
> >>>>> |     _____________________________________________________
> >>>>> |    /
> >>>>> |   |       RX Dboard: dboard
> >>>>> |   |     _____________________________________________________
> >>>>> |   |    /
> >>>>> |   |   |       RX Frontend: 0
> >>>>> |   |   |   Name: E3xx
> >>>>> |   |   |   Antennas: RX2, TX/RX
> >>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>>> |   |   |   Connection Type: IQ
> >>>>> |   |   |   Uses LO offset: No
> >>>>>   |     _____________________________________________________
> >>>>> |   |    /
> >>>>> |   |   |       RX Frontend: 1
> >>>>> |   |   |   Name: E3xx
> >>>>> |   |   |   Antennas: RX2, TX/RX
> >>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> >>>>> |   |   |   Connection Type: IQ
> >>>>> |   |   |   Uses LO offset: No
> >>>>>
> >>>>> [  658.474906] nixge 40020000.ethernet int0: Link is Down
> >>>>> [  658.590581] fpga_manager fpga0: writing e310_sg1_idle.bin to
> Xilinx Zynq FPGA Manager
> >>>>> [  658.671152] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /fpga-full/firmware-name
> >>>>> [  658.681463] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/devctrl
> >>>>> [  658.691315] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/charger
> >>>>> [  658.701150] OF: overlay: WARNING: memory leak will occur if
> overlay removed, property: /__symbols__/battery
> >>>>> [  659.219759] e31x-pmu: probe of fpga-full:pmu failed with error
> -524
> >>>>>
> >>>>>
> >>>>>
> >>>>>>> On 20-05-2021 17:31, Martin wrote:
> >>>>>> I have still no idea why my E310 sg1 does not recognize its own uh=
d
> hardware with uhd_find_devices.
> >>>>>> Can the exact hardware variant be of influence.
> >>>>>> Mine has partno: 156333B-01L
> >>>>>> The B in the partnumber seems to indicate the precise hardware
> revision.
> >>>>>> The manual says:
> >>>>>>> The Release 4 image comes in two varieties. The variety that you
> will need depends on the product number of your E310 or E312, which is
> printed on the bottom of the device.
> >>>>>>> E310 (15633X-01L)     X=3D A, B, C, D     Ettus-e3xx-sg1
> >>>>>>> X=3D E or later     Ettus-e3xx-sg3
> >>>>>>> E312 (140605X-01L)     X =3D All     Ettus-e3xx-sg3
> >>>>>> So I have a really early edition.
> >>>>>> Mine gives this:
> >>>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> >>>>>>>>>> UHD_3.15.0.0-0-gaea0e2de
> >>>>>>>>>> --------------------------------------------------
> >>>>>>>>>> -- UHD Device 0
> >>>>>>>>>> --------------------------------------------------
> >>>>>>>>>> Device Address:
> >>>>>>>>>>    serial:
> >>>>>>>>>>    claimed: False
> >>>>>>>>>>    mgmt_addr: 127.0.0.1
> >>>>>>>>>>    product:
> >>>>>>>>>>    reachable: No
> >>>>>>>>>>    type:
> >>>>>> Best regards,
> >>>>>> Martin
> >>>>>>> On 18-05-2021 14:33, Marcus D. Leech wrote:
> >>>>>>> On 05/18/2021 05:06 AM, Martin wrote:
> >>>>>>>> What does uhd_find_devices show on your system?
> >>>>>>>>
> >>>>>>>> Martin
> >>>>>>>>
> >>>>>>> Device Address:
> >>>>>>>      serial: 30B0152
> >>>>>>>      claimed: False
> >>>>>>>      mgmt_addr: 127.0.0.1
> >>>>>>>      product: e310_sg1
> >>>>>>>      type: e3xx
> >>>>>>>>
> >>>>>>>> On 17-05-2021 23:09, Marcus D. Leech wrote:
> >>>>>>>>> On 05/17/2021 05:03 PM, Martin wrote:
> >>>>>>>>>> On 17-05-2021 00:10, Marcus D Leech wrote:
> >>>>>>>>>>> I=E2=80=99m currently trying to reproduce but on an sg3 syste=
m. Having
> entirely different problems.
> >>>>>>>>>> Thank you for looking into this.
> >>>>>>>>>> I am looking forward to your findings.
> >>>>>>>>>> What issues do you have with sg3?
> >>>>>>>>>> Maybe I can help you with that ;-)
> >>>>>>>>> I mis-spoke as it turns out...
> >>>>>>>>>
> >>>>>>>>> My device is an SG1, and running uhd_usrp_probe produces:
> >>>>>>>>>
> >>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2e
> >>>>>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0e
> >>>>>>>>> [   63.396911] fpga_manager fpga0: writing e310_sg1.bin to
> Xilinx Zynq FPGA Manr
> >>>>>>>>> [   63.597426] OF: overlay: WARNING: memory leak will occur if
> overlay removed,e
> >>>>>>>>> [   63.607629] OF: overlay: WARNING: memory leak will occur if
> overlay removed,s
> >>>>>>>>> [   63.617856] OF: overlay: WARNING: memory leak will occur if
> overlay removed,s
> >>>>>>>>> [   63.629066] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.638894] OF: overlay: WARNING: memory leak will occur if
> overlay removed,l
> >>>>>>>>> [   63.648644] OF: overlay: WARNING: memory leak will occur if
> overlay removed,r
> >>>>>>>>> [   63.658443] OF: overlay: WARNING: memory leak will occur if
> overlay removed,y
> >>>>>>>>> [   63.668206] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.678010] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>>> [   63.687768] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>>> [   63.697568] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>>> [   63.707324] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.717127] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>>> [   63.726899] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>>> [   63.736704] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>>> [   63.746463] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.756698] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>>> [   63.766927] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>>> [   63.777182] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>>> [   63.787416] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.797648] OF: overlay: WARNING: memory leak will occur if
> overlay removed,1
> >>>>>>>>> [   63.807881] OF: overlay: WARNING: memory leak will occur if
> overlay removed,2
> >>>>>>>>> [   63.818115] OF: overlay: WARNING: memory leak will occur if
> overlay removed,3
> >>>>>>>>> [   63.828350] OF: overlay: WARNING: memory leak will occur if
> overlay removed,0
> >>>>>>>>> [   63.895829] rfnoc_crossbar crossbar0: NI Platform RFNoC
> Crossbar registered
> >>>>>>>>> [   64.419972] e31x-pmu: probe of fpga-full:pmu failed with
> error -524
> >>>>>>>>> [   64.485031] usrp-dma-core: Registered rx-dma0
> >>>>>>>>> [   64.515301] usrp-dma-core: Registered rx-dma1
> >>>>>>>>> [   64.531891] usrp-dma-core: Registered rx-dma2
> >>>>>>>>> [   64.545275] usrp-dma-core: Registered rx-dma3
> >>>>>>>>> [   64.560157] usrp-dma-core: Registered tx-dma0
> >>>>>>>>> [   64.571785] usrp-dma-core: Registered tx-dma1
> >>>>>>>>> [   64.585115] usrp-dma-core: Registered tx-dma2
> >>>>>>>>> [   64.595584] usrp-dma-core: Registered tx-dma3
> >>>>>>>>> [INFO] [MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2=
de
> >>>>>>>>> [INFO] [MPM.main] Spawning RPC process...
> >>>>>>>>> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility chec=
k!
> >>>>>>>>> [INFO] [MPM.PeriphManager] Device serial number: 30B0152
> >>>>>>>>> [WARNING] [MPM.GPSDIface] Could not connect to GPSd! None of th=
e
> GPS sensors wi!
> >>>>>>>>> [INFO] [MPM.RPCServer] RPC server ready!
> >>>>>>>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
> >>>>>>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> >>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000003310)
> >>>>>>>>> [INFO] [MPM.PeriphManager] init() called with device args
> `product=3De310_sg1,mgm.
> >>>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> 0xDDC0000000000000)
> >>>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> 0xD0C0000000000002)
> >>>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >>>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >>>>>>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
> >>>>>>>>> [INFO] [0/Radio_0] CODEC loopback test passed
> >>>>>>>>> _____________________________________________________
> >>>>>>>>>   /
> >>>>>>>>> |       Device: E300-Series Device
> >>>>>>>>> | _____________________________________________________
> >>>>>>>>> | /
> >>>>>>>>> |   |       Mboard: ni-e31x
> >>>>>>>>> |   |   mpm_version: 3.15.0.0-gaea0e2de
> >>>>>>>>> |   |   pid: 30674
> >>>>>>>>> |   |   product: e310_sg1
> >>>>>>>>> |   |   rev: 4
> >>>>>>>>> |   |   rpc_connection: local
> >>>>>>>>> |   |   serial: 30B0152
> >>>>>>>>> |   |   type: e3xx
> >>>>>>>>> |   |   MPM Version: 1.2
> >>>>>>>>> |   |   FPGA Version: 1.0
> >>>>>>>>> |   |   FPGA git hash: fde2a94.clean
> >>>>>>>>> |   |   RFNoC capable: Yes
> >>>>>>>>> | |
> >>>>>>>>> |   |   Time sources:  internal, external, gpsdo
> >>>>>>>>> |   |   Clock sources: internal
> >>>>>>>>> |   |   Sensors: ref_locked, temp_fpga, temp_mb, gps_locked
> >>>>>>>>> |   | _____________________________________________________
> >>>>>>>>> |   | /
> >>>>>>>>> |   |   |       RX Dboard: A
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       RX Frontend: 0
> >>>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >>>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> ad9361_temperature
> >>>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       RX Frontend: 1
> >>>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>>> |   |   |   |   Antennas: RX2, TX/RX
> >>>>>>>>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock,
> ad9361_temperature
> >>>>>>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> >>>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> >>>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       RX Codec: A
> >>>>>>>>> |   |   |   |   Name: AD9361 Dual ADC
> >>>>>>>>> |   |   |   |   Gain Elements: None
> >>>>>>>>> |   | _____________________________________________________
> >>>>>>>>> |   | /
> >>>>>>>>> |   |   |       TX Dboard: A
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       TX Frontend: 0
> >>>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>>> |   |   |   |   Antennas: TX/RX
> >>>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >>>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       TX Frontend: 1
> >>>>>>>>> |   |   |   |   Name: E3xx
> >>>>>>>>> |   |   |   |   Antennas: TX/RX
> >>>>>>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> >>>>>>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> >>>>>>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> >>>>>>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step
> 0.0 Hz
> >>>>>>>>> |   |   |   |   Connection Type: IQ
> >>>>>>>>> |   |   |   |   Uses LO offset: No
> >>>>>>>>> |   |   | _____________________________________________________
> >>>>>>>>> |   |   | /
> >>>>>>>>> |   |   |   |       TX Codec: A
> >>>>>>>>> |   |   |   |   Name: AD9361 Dual DAC
> >>>>>>>>> |   |   |   |   Gain Elements: None
> >>>>>>>>> |   | _____________________________________________________
> >>>>>>>>> |   | /
> >>>>>>>>> |   |   |       RFNoC blocks on this device:
> >>>>>>>>> |   | |
> >>>>>>>>> |   |   |   * Radio_0
> >>>>>>>>> |   |   |   * DDC_0
> >>>>>>>>> |   |   |   * DUC_0
> >>>>>>>>>
> >>>>>>>>> [   72.280024] usrp-dma-core: Deregistered tx-dma3
> >>>>>>>>> [   72.293917] usrp-dma-core: Deregistered tx-dma2
> >>>>>>>>> [   72.304477] usrp-dma-core: Deregistered tx-dma1
> >>>>>>>>> [   72.316396] usrp-dma-core: Deregistered tx-dma0
> >>>>>>>>> [   72.327630] usrp-dma-core: Deregistered rx-dma3
> >>>>>>>>> [   72.339059] usrp-dma-core: Deregistered rx-dma2
> >>>>>>>>> [   72.350350] usrp-dma-core: Deregistered rx-dma1
> >>>>>>>>> [   72.360698] usrp-dma-core: Deregistered rx-dma0
> >>>>>>>>> [   72.401639] fpga_manager fpga0: writing e310_sg1_idle.bin to
> Xilinx Zynq FPGr
> >>>>>>>>> [   72.501239] OF: overlay: WARNING: memory leak will occur if
> overlay removed,e
> >>>>>>>>> [   72.511488] OF: overlay: WARNING: memory leak will occur if
> overlay removed,l
> >>>>>>>>> [   72.521660] OF: overlay: WARNING: memory leak will occur if
> overlay removed,r
> >>>>>>>>> [   72.531642] OF: overlay: WARNING: memory leak will occur if
> overlay removed,y
> >>>>>>>>> [   73.064935] e31x-pmu: probe of fpga-full:pmu failed with
> error -524
> >>>>>>>>> root@ni-e31x:~#
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> I will also tryout the latest uhd 4.0 sdimg for E310 sg1 as
> soon as I have the time. Maybe that has different results.
> >>>>>>>>>>
> >>>>>>>>>> I was wondering if the output of uhd_find_devices gives a clue=
.
> >>>>>>>>>> Is this the normal expected output whne you run
> uhd_find_devices on the E310.
> >>>>>>>>>>
> >>>>>>>>>> root@ni-e31x:~# uhd_find_devices
> >>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2de
> >>>>>>>>>> --------------------------------------------------
> >>>>>>>>>> -- UHD Device 0
> >>>>>>>>>> --------------------------------------------------
> >>>>>>>>>> Device Address:
> >>>>>>>>>>    serial:
> >>>>>>>>>>    claimed: False
> >>>>>>>>>>    mgmt_addr: 127.0.0.1
> >>>>>>>>>>    product:
> >>>>>>>>>>    reachable: No
> >>>>>>>>>>    type:
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Best regards,
> >>>>>>>>>> Martin
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>> Sent from my iPhone
> >>>>>>>>>>>
> >>>>>>>>>>>> On May 16, 2021, at 5:33 PM, Martin <
> usrp-users-list@olifantasia.com> wrote:
> >>>>>>>>>>>>
> >>>>>>>>>>>> =EF=BB=BFOn 15-05-2021 18:33, Marcus D. Leech wrote:
> >>>>>>>>>>>>>> On 05/15/2021 10:19 AM, Martin wrote:
> >>>>>>>>>>>>>> On 14-05-2021 21:26, Marcus D Leech wrote:
> >>>>>>>>>>>>>>> What happens if you don=E2=80=99t specify any args at all=
?
> >>>>>>>>>>>>>> Then I also get No Device found.
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>> Martin
> >>>>>>>>>>>>> Martin:
> >>>>>>>>>>>>> Where did you get your sdimg from?
> >>>>>>>>>>>>
> >>>>>>>>>>>> On a host system with UHD 3.15 installed I did:
> >>>>>>>>>>>>
> >>>>>>>>>>>> sudo uhd_images_downloader -t sdimg -t e310 -t sg1
> >>>>>>>>>>>>
> >>>>>>>>>>>> [INFO] Images destination: /usr/share/uhd/images
> >>>>>>>>>>>> The file size for this target (832.3 MiB) exceeds the
> download limit (100.0 MiB). Continue downloading? [y/N]y
> >>>>>>>>>>>> [INFO] Downloading e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip=
,
> total size: 872729.93 kB
> >>>>>>>>>>>> [INFO] Images download complete.
> >>>>>>>>>>>>
> >>>>>>>>>>>> This seems to download this file and extracts it:
> >>>>>>>>>>>>
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e31=
0_sg1_sdimg_default-v3.15.0.0.zip
> >>>>>>>>>>>>
> >>>>>>>>>>>> I wrote the extracted image to a 8 GB sdcard with dd.
> >>>>>>>>>>>>
> >>>>>>>>>>>> I also tried downloading the above file by hand and and
> extracing it to the sdcard. That has the exact same result.
> >>>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>> _______________________________________________
> >>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006d40c505c4422ad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin - Starting from a clean SDcard image seems wise!=
 Here&#39;s what I downloaded, direct link: &lt;=C2=A0<a href=3D"https://fi=
les.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_=
default-v3.15.0.0.zip">https://files.ettus.com/binaries/cache/e3xx/meta-ett=
us-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip</a> &gt;. .If your h=
ost computer is running UHD 3.15 then you should be able to use the UHD ima=
ges downloader with &quot;-type e310 -type sg1 -type sdimg&quot; IIRC ... s=
omething like that.<div><div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><br></div><div>I use =
&quot;bmaptool&quot; on Linux to copy the resulting files, having renamed t=
hem &quot;usrp_e31x_sg1_fs.sdimg&quot; and &quot;....bmap&quot;, to differe=
ntiate them from the SG3 version. Being in Support, I need both around=C2=
=A0for testing purposes, and the extracted filename for both SG1 and SG3 co=
mes out to the same name ...</div><div>{{{</div><div>sudo bmaptool copy usr=
p_e310_sg1_fs.sdimg /dev/sdb --bmap usrp_e310_sg1_fs.sdimg.bmap<br></div><d=
iv>}}}</div><div><br></div><div>You then boot your E310 using this SDcard .=
.. the file to patch is located at &quot;/usr/lib/python3.5/site-packages/u=
srp_mpm/e31x_legacy_eeprom.py&quot;. Once edited as already noted you need =
to stop and start the USRP HWD.</div><div><br></div><div>I have created an =
internal PR that backports this fix from UHD4 to UHD 3.15-LTS. Will note it=
 in our group meeting to see if I can get it merged quickly and then pushed=
 public. - MLD</div><div><br></div></div></div></div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 8, 2=
021 at 10:20 AM Martin &lt;<a href=3D"mailto:usrp-users-list@olifantasia.co=
m">usrp-users-list@olifantasia.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On 08-06-2021 15:02, Marcus D Leech wrote=
:<br>
&gt; None of us have been able to reproduce this<br>
&gt; <br>
&gt; I have an SG1 device and can=E2=80=99t make this happen, but a later h=
ardware rev.<br>
The hardware seems OK, since it works with the newer UHD 4.0 image.<br>
<br>
That makes me wonder if I somehow used a corrupt filesystem image.<br>
Can you give a link to the image you used that worked on your sg1?<br>
<br>
<br>
Thank you and best regards,<br>
Martin<br>
<br>
&gt; <br>
&gt; Sent from my iPhone<br>
&gt; <br>
&gt;&gt; On Jun 8, 2021, at 8:25 AM, Martin &lt;<a href=3D"mailto:usrp-user=
s-list@olifantasia.com" target=3D"_blank">usrp-users-list@olifantasia.com</=
a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BFOn 22-05-2021 15:18, Marcus D Leech wrote:<br>
&gt;&gt;&gt; Martin:<br>
&gt;&gt;&gt; I=E2=80=99m<br>
&gt;&gt;&gt; I=E2=80=99m in discussions with Ettus R&amp;D who are trying t=
o reproduce.<br>
&gt;&gt; Any news on this?<br>
&gt;&gt;<br>
&gt;&gt; A working uhd 3.15 image on E310 sg1 would really be appreciated.<=
br>
&gt;&gt;<br>
&gt;&gt; Is there anything that I can do or test?<br>
&gt;&gt;<br>
&gt;&gt; My E310 has partno: 156333B-01L<br>
&gt;&gt; The exact hardware revision (B in my case) could be a clue.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Martin<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; I was unable with mine.<br>
&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;&gt; On May 20, 2021, at 1:23 PM, Marcus D Leech &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; =EF=BB=BFFYI I see the same memory leak and PMU warnings o=
n my SG1 hardware u der 3.15. So I assume that this is a side effect of the=
 move to MPM for E310 hardware.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On May 20, 2021, at 12:05 PM, Martin &lt;<a href=3D"ma=
ilto:usrp-users-list@olifantasia.com" target=3D"_blank">usrp-users-list@oli=
fantasia.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; =EF=BB=BFI tried again with the UHD 4.0.0.0 sdimg<br>
&gt;&gt;&gt;&gt;&gt; I get a lot of warnings, but with the uhd 4.0.0.0 sdim=
g the uhd hardware is recognized.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I ado see this error with uhd <a href=3D"http://4.0.0.=
0" rel=3D"noreferrer" target=3D"_blank">4.0.0.0</a>:<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu: probe of fpga-full:=
pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt; I&#39;m not sure what this means.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; If needed, we could work with the uhd 4.0.0 sdimg, but=
 we would really like to be able to also keep using our uhd 3.15 developmen=
t tree. Moving to uhd 4.0.0.0 would mean installing both uhd 3.15 and uhd 4=
.0.0.0 trees on some of our deployment host-machines. Which seems error-pro=
ne.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Alchemy 2020.01 ni-e31x-F661C4 ttyPS0<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; ni-e31x-F661C4 login: root<br>
&gt;&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# uhd_find_devices<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_10710=
0; UHD_4.0.0.0-0-g90ce6062<br>
&gt;&gt;&gt;&gt;&gt; No UHD Devices Found<br>
&gt;&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~# [=C2=A0 =C2=A049.925787] fpga_m=
anager fpga0: writing e310_sg1_idle.bin to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.121918] OF: overlay: WARNING: memory =
leak will occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.146427] OF: overlay: WARNING: memory =
leak will occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.156208] OF: overlay: WARNING: memory =
leak will occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.186332] OF: overlay: WARNING: memory =
leak will occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A050.716349] e31x-pmu: probe of fpga-full:=
pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; root@ni-e31x-F661C4:~/logs# uhd_usrp_probe<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_10710=
0; UHD_4.0.0.0-0-g90ce6062<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel wit=
h args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C=
4,claimed=3D<br>
&gt;&gt;&gt;&gt;&gt; False<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.706380] fpga_manager fpga0: writing e310_s=
g1.bin to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.782720] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.792926] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /amba/spi@e0006000/status<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.803194] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /amba/spi@e0006000/cs-gpios<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.813823] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/spidev0<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.823667] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.833505] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.843335] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 649.853172] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/nixge_internal<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 650.384737] e31x-pmu: probe of fpga-full:pmu f=
ailed with error -524<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 650.406779] nixge 40020000.ethernet int0: rena=
med from eth1<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 650.584811] nixge 40020000.ethernet int0: Link=
 is Up - 10Mbps/Half - flow control off<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<b=
r>
&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] init() called with device a=
rgs `mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 0 ...<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback test passed<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 1 ...<br>
&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio#0] CODEC loopback test passed<br>
&gt;&gt;&gt;&gt;&gt; _____________________________________________________<=
br>
&gt;&gt;&gt;&gt;&gt; /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-Series Device=
<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________=
____________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e=
31x-F661C4<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboard_0_pid: 272<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0dboard_0_serial: F65275<br=
>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0fs_version: 20200914001743=
<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mender_artifact: v4.0.0.0_=
e310_sg1<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_sw_version: 4.0.0.0-g9=
0ce6062<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e310_sg1<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection: local<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: F661C4<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 3.0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 6.0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: be53058.cle=
an<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 intern=
al, external, gpsdo<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal<br=
>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_locked, gps_l=
ocked, temp_fpga, temp_mb, gps_gpgga, gps_sky, gps_time, gps_tpv<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks=
 on this device:<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________=
____________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static conne=
ctions on this device:<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/SEP#0:0=3D=3D&gt;0/Rad=
io#0:0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/SEP#1:0=3D=3D&gt;0/Rad=
io#0:1<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/S=
EP#0:0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:1=3D=3D&gt;0/S=
EP#1:0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________=
____________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: d=
board<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________=
__________________________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0TX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<b=
r>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX=
/RX<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: =
47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range P=
GA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth ra=
nge: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection T=
ype: IQ<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offs=
et: No<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________=
__________________________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0TX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<b=
r>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX=
/RX<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: =
47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range P=
GA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth ra=
nge: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection T=
ype: IQ<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offs=
et: No<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________=
____________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: d=
board<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________=
__________________________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0RX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<b=
r>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX=
2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: =
70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range P=
GA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth ra=
nge: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection T=
ype: IQ<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offs=
et: No<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0RX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<b=
r>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX=
2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: =
70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range P=
GA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth ra=
nge: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection T=
ype: IQ<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offs=
et: No<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.474906] nixge 40020000.ethernet int0: Link=
 is Down<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.590581] fpga_manager fpga0: writing e310_s=
g1_idle.bin to Xilinx Zynq FPGA Manager<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.671152] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /fpga-full/firmware-name<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.681463] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/devctrl<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.691315] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/charger<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 658.701150] OF: overlay: WARNING: memory leak =
will occur if overlay removed, property: /__symbols__/battery<br>
&gt;&gt;&gt;&gt;&gt; [=C2=A0 659.219759] e31x-pmu: probe of fpga-full:pmu f=
ailed with error -524<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 20-05-2021 17:31, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; I have still no idea why my E310 sg1 does not reco=
gnize its own uhd hardware with uhd_find_devices.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Can the exact hardware variant be of influence.<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; Mine has partno: 156333B-01L<br>
&gt;&gt;&gt;&gt;&gt;&gt; The B in the partnumber seems to indicate the prec=
ise hardware revision.<br>
&gt;&gt;&gt;&gt;&gt;&gt; The manual says:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; The Release 4 image comes in two varieties. Th=
e variety that you will need depends on the product number of your E310 or =
E312, which is printed on the bottom of the device.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; E310 (15633X-01L)=C2=A0 =C2=A0 =C2=A0X=3D A, B=
, C, D=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; X=3D E or later=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-=
sg3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; E312 (140605X-01L)=C2=A0 =C2=A0 =C2=A0X =3D Al=
l=C2=A0 =C2=A0 =C2=A0Ettus-e3xx-sg3<br>
&gt;&gt;&gt;&gt;&gt;&gt; So I have a really early edition.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Mine gives this:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~# uhd_find_devices<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ versio=
n 8.2.0; Boost_106800;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; UHD_3.15.0.0-0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------=
----------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------=
----------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 serial:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 product:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 reachable: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 type:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 18-05-2021 14:33, Marcus D. Leech wrote:<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/18/2021 05:06 AM, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What does uhd_find_devices show on your sy=
stem?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 serial: 30B0152<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 product: e310_sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 type: e3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021 23:09, Marcus D. Leech wrote=
:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/17/2021 05:03 PM, Martin wrote:<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 17-05-2021 00:10, Marcus D Leec=
h wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I=E2=80=99m currently trying t=
o reproduce but on an sg3 system. Having entirely different problems.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you for looking into this.<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am looking forward to your findi=
ngs.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What issues do you have with sg3?<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Maybe I can help you with that ;-)=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I mis-spoke as it turns out...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; My device is an SG1, and running uhd_u=
srp_probe produces:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 8.=
2.0; Boost_106800; UHD_3.15.0.0-0-gaea0e2e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPMD] Initializing 1 device(s)=
 in parallel with args: mgmt_addr=3D127.0.0e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.396911] fpga_manager =
fpga0: writing e310_sg1.bin to Xilinx Zynq FPGA Manr<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.597426] OF: overlay: =
WARNING: memory leak will occur if overlay removed,e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.607629] OF: overlay: =
WARNING: memory leak will occur if overlay removed,s<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.617856] OF: overlay: =
WARNING: memory leak will occur if overlay removed,s<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.629066] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.638894] OF: overlay: =
WARNING: memory leak will occur if overlay removed,l<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.648644] OF: overlay: =
WARNING: memory leak will occur if overlay removed,r<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.658443] OF: overlay: =
WARNING: memory leak will occur if overlay removed,y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.668206] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.678010] OF: overlay: =
WARNING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.687768] OF: overlay: =
WARNING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.697568] OF: overlay: =
WARNING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.707324] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.717127] OF: overlay: =
WARNING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.726899] OF: overlay: =
WARNING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.736704] OF: overlay: =
WARNING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.746463] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.756698] OF: overlay: =
WARNING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.766927] OF: overlay: =
WARNING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.777182] OF: overlay: =
WARNING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.787416] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.797648] OF: overlay: =
WARNING: memory leak will occur if overlay removed,1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.807881] OF: overlay: =
WARNING: memory leak will occur if overlay removed,2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.818115] OF: overlay: =
WARNING: memory leak will occur if overlay removed,3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.828350] OF: overlay: =
WARNING: memory leak will occur if overlay removed,0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A063.895829] rfnoc_crossba=
r crossbar0: NI Platform RFNoC Crossbar registered<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.419972] e31x-pmu: pro=
be of fpga-full:pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.485031] usrp-dma-core=
: Registered rx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.515301] usrp-dma-core=
: Registered rx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.531891] usrp-dma-core=
: Registered rx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.545275] usrp-dma-core=
: Registered rx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.560157] usrp-dma-core=
: Registered tx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.571785] usrp-dma-core=
: Registered tx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.585115] usrp-dma-core=
: Registered tx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A064.595584] usrp-dma-core=
: Registered tx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main] Launching USRP/MPM, =
version: 3.15.0.0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.main] Spawning RPC process=
...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.PeriphManager] Skipping=
 HW/SW compatibility check!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Device seri=
al number: 30B0152<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [WARNING] [MPM.GPSDIface] Could not co=
nnect to GPSd! None of the GPS sensors wi!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCServer] RPC server read=
y!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.RPCServer] Spawning watchd=
og task...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] Found 1 dau=
ghterboard(s).<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Initializing block =
control (NOC ID: 0x12AD100000003310)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [MPM.PeriphManager] init() call=
ed with device args `product=3De310_sg1,mgm.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_0] Initializing block co=
ntrol (NOC ID: 0xDDC0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_0] Initializing block co=
ntrol (NOC ID: 0xD0C0000000000002)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Performing CODEC lo=
opback test...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] CODEC loopback test=
 passed<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Performing CODEC lo=
opback test...<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] CODEC loopback test=
 passed<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________________=
_______________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0/<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E3=
00-Series Device<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | ____________________________________=
_________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =
=C2=A0Mboard: ni-e31x<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_versio=
n: 3.15.0.0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e=
310_sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 4<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connec=
tion: local<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 30=
B0152<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Versio=
n: 1.2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Versi=
on: 1.0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git h=
ash: fde2a94.clean<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capa=
ble: Yes<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; | |<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sourc=
es:=C2=A0 internal, external, gpsdo<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sour=
ces: internal<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: r=
ef_locked, temp_fpga, temp_mb, gps_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| ______________________=
_______________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock, ad9361_temperature<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, rssi, lo_lock, ad9361_temperature<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Freq range: 70.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual ADC<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| ______________________=
_______________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: 1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Sensors: lo_locked, ad9361_temperature<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Freq range: 47.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| ________=
_____________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual DAC<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| ______________________=
_______________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| /<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0 =C2=A0 =C2=A0RFNoC blocks on this device:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0| |<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* Radio_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* DDC_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0* DUC_0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.280024] usrp-dma-core=
: Deregistered tx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.293917] usrp-dma-core=
: Deregistered tx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.304477] usrp-dma-core=
: Deregistered tx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.316396] usrp-dma-core=
: Deregistered tx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.327630] usrp-dma-core=
: Deregistered rx-dma3<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.339059] usrp-dma-core=
: Deregistered rx-dma2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.350350] usrp-dma-core=
: Deregistered rx-dma1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.360698] usrp-dma-core=
: Deregistered rx-dma0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.401639] fpga_manager =
fpga0: writing e310_sg1_idle.bin to Xilinx Zynq FPGr<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.501239] OF: overlay: =
WARNING: memory leak will occur if overlay removed,e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.511488] OF: overlay: =
WARNING: memory leak will occur if overlay removed,l<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.521660] OF: overlay: =
WARNING: memory leak will occur if overlay removed,r<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A072.531642] OF: overlay: =
WARNING: memory leak will occur if overlay removed,y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=A073.064935] e31x-pmu: pro=
be of fpga-full:pmu failed with error -524<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~#<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I will also tryout the latest uhd =
4.0 sdimg for E310 sg1 as soon as I have the time. Maybe that has different=
 results.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was wondering if the output of u=
hd_find_devices gives a clue.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is this the normal expected output=
 whne you run uhd_find_devices on the E310.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root@ni-e31x:~# uhd_find_devices<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ versio=
n 8.2.0; Boost_106800; UHD_3.15.0.0-0-gaea0e2de<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------=
----------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -- UHD Device 0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------=
----------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Device Address:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 serial:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 claimed: False<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 product:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 reachable: No<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 type:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On May 16, 2021, at 5:33 P=
M, Martin &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=3D"=
_blank">usrp-users-list@olifantasia.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =EF=BB=BFOn 15-05-2021 18:=
33, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 05/15/2021 10:1=
9 AM, Martin wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-05-2021 21:2=
6, Marcus D Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What happens i=
f you don=E2=80=99t specify any args at all?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Then I also get No=
 Device found.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Martin:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Where did you get your=
 sdimg from?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On a host system with UHD =
3.15 installed I did:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sudo uhd_images_downloader=
 -t sdimg -t e310 -t sg1<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Images destination:=
 /usr/share/uhd/images<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The file size for this tar=
get (832.3 MiB) exceeds the download limit (100.0 MiB). Continue downloadin=
g? [y/N]y<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Downloading e3xx_e3=
10_sg1_sdimg_default-v3.15.0.0.zip, total size: 872729.93 kB<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [INFO] Images download com=
plete.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This seems to download thi=
s file and extracts it:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://files.e=
ttus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_defau=
lt-v3.15.0.0.zip" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.=
com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3=
.15.0.0.zip</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wrote the extracted imag=
e to a 8 GB sdcard with dd.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I also tried downloading t=
he above file by hand and and extracing it to the sdcard. That has the exac=
t same result.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; _______________________________________________<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:=
usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.=
ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettu=
s.com</a><br>
&gt;&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d40c505c4422ad6--

--===============9190238000660493425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9190238000660493425==--
