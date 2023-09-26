Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D1E7AF643
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 00:23:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A7FA385245
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 18:23:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695766985; bh=iQykmZm7Veu9YBw1XHjJsZRNmmS9oLg/o86/EQX2KX8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GVLpy5e8KThy02jqyqrMClahTVp0COce0oLmDkqVCC8YFrYssQfj+cRSRy7p6BcY5
	 9kqJGhlFNnvLcKy9lj/BocV51Oje/gXHs408d/oiERxBrcxxeeYqekZwsMCunHfvX4
	 828r2SxsGSy6XV63asHl+U0g29+Hjubpx/+w0colSDqYjhrBka02Nd8Fkq8ICaBhWz
	 MXrM9JqavucAOYYtN452jOVI4Jnu94AhPWImxLSqPDFid2gUJ2PBXmpQ2TBR+Tl/X+
	 hyTDfqF8UHE2HTEerYxT8GzLUOCsYWG/955voF80JcUAkT3kkykv/ia9rBjEbleSJS
	 5aOhk77tz9e3Q==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C31F3851AD
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 18:22:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="d1z/7Q/i";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d865685f515so9998940276.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 15:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1695766970; x=1696371770; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8zNXzy4ILkTFHyPAHjr5pv/+upOe8prM/ujzfA1OOHE=;
        b=d1z/7Q/iv6CaHNeQQ3544Aiysu+fagYG3DdN6gwlkYe+QTN7mOONymGZjzPPSABP/6
         XkqBm+OKw0B+YY8EPP8D3/ILYGB5JIod1kfEbeOLg+Dd1oSqt8snHuTe4PYZrRxgb43k
         K0Z1N3m+x5kDmyZovp9XK+kJ5tnimQ6lluNiTfqUVHJw+OXoDwZbH8gpEy9CbB5wS3rf
         caDRKslercFPmd5z67eEZiL2UUgzlGxia4XkS34Dp+Iqybone+uQhV1j/RxT6QATVlNy
         uzVw3KBieC2GV+PNYnJDQqjrUfZ9cV+jMdHJZvk/ORaAEgv3Pu5bf/XWxruvHkLo77lz
         ji3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695766970; x=1696371770;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8zNXzy4ILkTFHyPAHjr5pv/+upOe8prM/ujzfA1OOHE=;
        b=CkmQfvJYW7ayRxJ+Vj/re0ScnZWtW2rbtMYJRkzImLoJeu0OyuR8/MldDSKMBgd+6N
         XzVdeiTASuC+TBSQm60y7wIx0raOT8vyy7wtRkn8cQncTPXjsSZjnLcJKxMFTumCza4a
         8QJw5B3BKoVhFcyYQtvVUn0jRGeujR7D28ACS81BOHoRJlgltEp916gwJt3mTFuq0oMw
         xNr4dYnzXUT7Y3Ym9V0GrH+S2zT3R48bfJcM3jMf8Pe/kAnvddvvNAcZSgPWU4qxP96P
         ApR3pHvJx8CN+VVMO/fhIvXuZicjiOZCoAC4gM/SNK0ciVLp9POCBksPQ88dPh/dFkN4
         UU0g==
X-Gm-Message-State: AOJu0YwqEck0zX9QNVaObMlePdAVGAQuQcEExrCii4+k6NwsZx68eV2G
	N9g+AMu1dF3cLICgWJHcMVmgIrS/kb8gZ8txhl3VI4pv5kw09mC36YcJpA==
X-Google-Smtp-Source: AGHT+IGX6/bItQ5Mx3PrXy+eoVSsrzR1YLKCxjJgKsJQVAPyjMUiVkTztI4uXt7wIaVxgKclNJ4KPQCylMMPZ4reQi8=
X-Received: by 2002:a5b:52:0:b0:d71:6835:c250 with SMTP id e18-20020a5b0052000000b00d716835c250mr189179ybp.30.1695766969165;
 Tue, 26 Sep 2023 15:22:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAErymBjsm1EFK_Py2RGfm7nyWzAkspg5=at5Cd+24v2XVnOkQQ@mail.gmail.com>
 <76176ec5-f739-d9dd-d85c-9f7c90f4f60d@gmail.com> <CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmail.com>
 <27b80b15-d95d-e1e7-aecf-3e5541afb1b5@gmail.com>
In-Reply-To: <27b80b15-d95d-e1e7-aecf-3e5541afb1b5@gmail.com>
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Tue, 26 Sep 2023 18:22:33 -0400
Message-ID: <CAErymBh+4WaKd8BTiwGW7uHHhbii_u6GvV52MB8UJfioDyCKEA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: T776PJ7RNRJ7QO4772CF6QSECINWPCVU
X-Message-ID-Hash: T776PJ7RNRJ7QO4772CF6QSECINWPCVU
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T776PJ7RNRJ7QO4772CF6QSECINWPCVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3167433539021285669=="

--===============3167433539021285669==
Content-Type: multipart/alternative; boundary="000000000000d1c05106064a83e1"

--000000000000d1c05106064a83e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Indeed, I have installed uhd manually:

I went here (long time ago):
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages?field.na=
me_filter=3Duhd&field.status_filter=3Dpublished&field.series_filter=3Dfocal
and download locally four *.deb files:
- libuhd4.2.0_4.2.0.0-0ubuntu1_focal1_amd64.deb
- libuhd-dev_4.2.0.0-0ubuntu1_focal1_amd64.deb
- python3-uhd_4.2.0.0-0ubuntu1_focal1_amd64.deb
- uhd-host_4.2.0.0-0ubuntu1_focal1_amd64.deb
and then install them manually using
sudo dpkg -i path_to_deb_file

Are these packages installing both libraries AND utilities?

I also checked in  ~/.local/share/uhd/cal/
and do not have any cal files for this USRP.

Finally I did what you suggested (ldd) in two computers where in the first
one I have the problem and in the second one it works and got these results
(which seem identical to me except the hex numbers in parentheses...):

$ diff foo1 foo7
1,21c1,21
<       linux-vdso.so.1 (0x00007ffc2c4ec000)
<       libuhd.so.4.2.0 =3D> /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0
(0x00007f6729859000)
<       libboost_program_options.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
(0x00007f67297ca000)
<       libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0
(0x00007f67297a7000)
<       libstdc++.so.6 =3D> /usr/lib/x86_64-linux-gnu/libstdc++.so.6
(0x00007f67295c5000)
<       libm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6 (0x00007f6729476000)
<       libgcc_s.so.1 =3D> /lib/x86_64-linux-gnu/libgcc_s.so.1
(0x00007f672945b000)
<       libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f6729267000)
<       libboost_chrono.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0 (0x00007f6729259000)
<       libboost_date_time.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0 (0x00007f6729245000)
<       libboost_filesystem.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0 (0x00007f6729227000=
)
<       libboost_serialization.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
(0x00007f67291e3000)
<       libboost_thread.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0 (0x00007f67291b7000)
<       libdl.so.2 =3D> /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f67291af00=
0)
<       libusb-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libusb-1.0.so.0
(0x00007f6729193000)
<       libpython3.8.so.1.0 =3D>
/usr/lib/x86_64-linux-gnu/libpython3.8.so.1.0 (0x00007f6728c3d000)
<       /lib64/ld-linux-x86-64.so.2 (0x00007f672a6eb000)
<       libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1
(0x00007f6728c10000)
<       libexpat.so.1 =3D> /lib/x86_64-linux-gnu/libexpat.so.1
(0x00007f6728be2000)
<       libz.so.1 =3D> /lib/x86_64-linux-gnu/libz.so.1 (0x00007f6728bc4000)
<       libutil.so.1 =3D> /lib/x86_64-linux-gnu/libutil.so.1
(0x00007f6728bbf000)
---
>       linux-vdso.so.1 (0x00007ffe85fd4000)
>       libuhd.so.4.2.0 =3D> /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0
(0x00007f7408795000)
>       libboost_program_options.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
(0x00007f7408706000)
>       libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0
(0x00007f74086e3000)
>       libstdc++.so.6 =3D> /usr/lib/x86_64-linux-gnu/libstdc++.so.6
(0x00007f7408501000)
>       libm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6 (0x00007f74083b2000)
>       libgcc_s.so.1 =3D> /lib/x86_64-linux-gnu/libgcc_s.so.1
(0x00007f7408397000)
>       libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f74081a3000)
>       libboost_chrono.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0 (0x00007f7408195000)
>       libboost_date_time.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0 (0x00007f7408181000)
>       libboost_filesystem.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0 (0x00007f7408163000=
)
>       libboost_serialization.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
(0x00007f740811f000)
>       libboost_thread.so.1.71.0 =3D>
/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0 (0x00007f74080f3000)
>       libdl.so.2 =3D> /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f74080eb00=
0)
>       libusb-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libusb-1.0.so.0
(0x00007f74080cf000)
>       libpython3.8.so.1.0 =3D>
/usr/lib/x86_64-linux-gnu/libpython3.8.so.1.0 (0x00007f7407b79000)
>       /lib64/ld-linux-x86-64.so.2 (0x00007f740962b000)
>       libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1
(0x00007f7407b4c000)
>       libexpat.so.1 =3D> /lib/x86_64-linux-gnu/libexpat.so.1
(0x00007f7407b1e000)
>       libz.so.1 =3D> /lib/x86_64-linux-gnu/libz.so.1 (0x00007f7407b00000)
>       libutil.so.1 =3D> /lib/x86_64-linux-gnu/libutil.so.1
(0x00007f7407afb000)

thanks again,
Achilleas


On Tue, Sep 26, 2023 at 5:45=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 26/09/2023 17:43, Achilleas Anastasopoulos wrote:
>
> Thanks Marcus.
>
> Can you suggest a way to test this hypothesis?
>
> What package do the utilities come from?
> What specific libraries are involved?
>
> thanks
> Achilleas
>
> How did you install UHD?   The banner says 4.2, which is NOT what Ubuntu
> packages for 20.04 by default, so I assume
>   you used a source build or a PPA or something?
>
> Is it possible that on the machines that are failing, you have both
> packaged-by-Ubuntu and other things installed?
>
>
>
> On Tue, Sep 26, 2023 at 5:06=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 26/09/2023 16:53, Achilleas Anastasopoulos wrote:
>> > Hi all,
>> >
>> > I have installed gnuradio/uhd in 10 computers in a lab (almost
>> > identical setups).
>> > These are  Ubuntu 20.04.4 LTS focal
>> > The connected USRPs (X300) work fine in all 10 computers.
>> >
>> > However, two of them result in a core dump when trying to use
>> > calibrating utilities as follows:
>> >
>> > $ uhd_cal_tx_dc_offset
>> >
>> > Creating the usrp device with: ,ignore_cal_file=3D1,ignore-cal-file=3D=
1...
>> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>> > UHD_4.2.0.0-0ubuntu1~focal1
>> > [INFO] [X300] X300 initialization sequence...
>> > [INFO] [X300] Maximum frame size: 1472 bytes.
>> > [INFO] [X300] Radio 1x clock: 200 MHz
>> > Running calibration for UBX TX
>> > Daughterboard serial: 3158306
>> > Calibration frequency range: 10 MHz -> 6000 MHz
>> > Dterminate called without an active exception
>> > Aborted (core dumped)
>> >
>> >
>> > I found some similar questions on the Internet but not any definite
>> > answers.
>> > Are there any ideas on how to proceed with investigating that?
>> >
>> > thanks
>> > Achilleas
>> >
>> I'd suspect mis-match between utilities and libraries.
>>
>>
>> >
>> >
>> >
>> > FYI:
>> >
>> > $ uhd_find_devices
>> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>> > UHD_4.2.0.0-0ubuntu1~focal1
>> > --------------------------------------------------
>> > -- UHD Device 0
>> > --------------------------------------------------
>> > Device Address:
>> >     serial: 315C6B2
>> >     addr: 192.168.10.2
>> >     addr: 192.168.40.2
>> >     fpga: HG
>> >     name:
>> >     product: X310
>> >     type: x300
>> >
>> > Also:
>> >
>> > $ uhd_usrp_probe
>> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>> > UHD_4.2.0.0-0ubuntu1~focal1
>> > [INFO] [X300] X300 initialization sequence...
>> > [INFO] [X300] Maximum frame size: 1472 bytes.
>> > [INFO] [X300] Radio 1x clock: 200 MHz
>> >   _____________________________________________________
>> >  /
>> > |       Device: X-Series Device
>> > |     _____________________________________________________
>> > |    /
>> > |   |       Mboard: X310
>> > |   |   revision: 11
>> > |   |   revision_compat: 7
>> > |   |   product: 30818
>> > |   |   mac-addr0: 00:80:2f:22:64:6c
>> > |   |   mac-addr1: 00:80:2f:22:64:6d
>> > |   |   gateway: 192.168.10.1
>> > |   |   ip-addr0: 192.168.10.2
>> > |   |   subnet0: 255.255.255.0
>> > |   |   ip-addr1: 192.168.20.2
>> > |   |   subnet1: 255.255.255.0
>> > |   |   ip-addr2: 192.168.30.2
>> > |   |   subnet2: 255.255.255.0
>> > |   |   ip-addr3: 192.168.40.2
>> > |   |   subnet3: 255.255.255.0
>> > |   |   serial: 315C6B2
>> > |   |   FW Version: 6.0
>> > |   |   FPGA Version: 38.0
>> > |   |   FPGA git hash: be53058
>> > |   |   RFNoC capable: Yes
>> > |   |
>> > |   |   Time sources:  internal, external, gpsdo
>> > |   |   Clock sources: internal, external, gpsdo
>> > |   |   Sensors: ref_locked
>> > |     _____________________________________________________
>> > |    /
>> > |   |       RFNoC blocks on this device:
>> > |   |
>> > |   |   * 0/DDC#0
>> > |   |   * 0/DDC#1
>> > |   |   * 0/DUC#0
>> > |   |   * 0/DUC#1
>> > |   |   * 0/Radio#0
>> > |   |   * 0/Radio#1
>> > |   |   * 0/Replay#0
>> > |     _____________________________________________________
>> > |    /
>> > |   |       Static connections on this device:
>> > |   |
>> > |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>> > |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>> > |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>> > |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>> > |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>> > |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>> > |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
>> > |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
>> > |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
>> > |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
>> > |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
>> > |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
>> > |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
>> > |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
>> > |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
>> > |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
>> > |     _____________________________________________________
>> > |    /
>> > |   |       TX Dboard: 0/Radio#0
>> > |   |   ID: UBX-160 v2 (0x007d)
>> > |   |   Serial: 3158306
>> > |   |     _____________________________________________________
>> > |   |    /
>> > |   |   |       TX Frontend: 0
>> > |   |   |   Name: UBX TX
>> > |   |   |   Antennas: TX/RX, CAL
>> > |   |   |   Sensors: lo_locked
>> > |   |   |   Freq range: 10.000 to 6000.000 MHz
>> > |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>> > |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
>> > |   |   |   Connection Type: QI
>> > |   |   |   Uses LO offset: No
>> > |     _____________________________________________________
>> > |    /
>> > |   |       RX Dboard: 0/Radio#0
>> > |   |   ID: UBX-160 v2 (0x007e)
>> > |   |   Serial: 3158306
>> > |   |     _____________________________________________________
>> > |   |    /
>> > |   |   |       RX Frontend: 0
>> > |   |   |   Name: UBX RX
>> > |   |   |   Antennas: TX/RX, RX2, CAL
>> > |   |   |   Sensors: lo_locked
>> > |   |   |   Freq range: 10.000 to 6000.000 MHz
>> > |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>> > |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
>> > |   |   |   Connection Type: IQ
>> > |   |   |   Uses LO offset: No
>> > |     _____________________________________________________
>> > |    /
>> > |   |       TX Dboard: 0/Radio#1
>> > |   |     _____________________________________________________
>> > |   |    /
>> > |   |   |       TX Frontend: 0
>> > |   |   |   Name: Unknown (0xffff) - 0
>> > |   |   |   Antennas:
>> > |   |   |   Sensors:
>> > |   |   |   Freq range: 0.000 to 0.000 MHz
>> > |   |   |   Gain Elements: None
>> > |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>> > |   |   |   Connection Type: IQ
>> > |   |   |   Uses LO offset: No
>> > |     _____________________________________________________
>> > |    /
>> > |   |       RX Dboard: 0/Radio#1
>> > |   |     _____________________________________________________
>> > |   |    /
>> > |   |   |       RX Frontend: 0
>> > |   |   |   Name: Unknown (0xffff) - 0
>> > |   |   |   Antennas:
>> > |   |   |   Sensors:
>> > |   |   |   Freq range: 0.000 to 0.000 MHz
>> > |   |   |   Gain Elements: None
>> > |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>> > |   |   |   Connection Type: IQ
>> > |   |   |   Uses LO offset: No
>> >
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>

--000000000000d1c05106064a83e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Indeed, I have installed uhd manually:<div><br></div><div>=
I went here (long time ago):<br></div><div><a href=3D"https://launchpad.net=
/~ettusresearch/+archive/ubuntu/uhd/+packages?field.name_filter=3Duhd&amp;f=
ield.status_filter=3Dpublished&amp;field.series_filter=3Dfocal" target=3D"_=
blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages?f=
ield.name_filter=3Duhd&amp;field.status_filter=3Dpublished&amp;field.series=
_filter=3Dfocal</a><br>and download locally four *.deb files:<br>- libuhd4.=
2.0_4.2.0.0-0ubuntu1_focal1_amd64.deb<br>- libuhd-dev_4.2.0.0-0ubuntu1_foca=
l1_amd64.deb<br>- python3-uhd_4.2.0.0-0ubuntu1_focal1_amd64.deb<br>- uhd-ho=
st_4.2.0.0-0ubuntu1_focal1_amd64.deb<br>and then install them manually usin=
g<br>sudo dpkg -i path_to_deb_file<br></div><div><br></div><div>Are these p=
ackages installing both libraries AND utilities?</div><div><br></div><div>I=
 also checked in=C2=A0=C2=A0~/.local/share/uhd/cal/=C2=A0</div><div>and do =
not have any cal files for this USRP.</div><div><br></div><div>Finally I di=
d what you suggested (ldd) in two computers where in the first one I have t=
he problem and in the second one it works and got these results (which seem=
 identical to me except the hex numbers in parentheses...):</div><div><br><=
/div><div>$ diff foo1 foo7<br>1,21c1,21<br>&lt; =C2=A0 =C2=A0 =C2=A0 linux-=
vdso.so.1 (0x00007ffc2c4ec000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libuhd.so.4.2.0=
 =3D&gt; /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0 (0x00007f6729859000)<br>=
&lt; =C2=A0 =C2=A0 =C2=A0 libboost_program_options.so.1.71.0 =3D&gt; /usr/l=
ib/x86_64-linux-gnu/libboost_program_options.so.1.71.0 (0x00007f67297ca000)=
<br>&lt; =C2=A0 =C2=A0 =C2=A0 libpthread.so.0 =3D&gt; /lib/x86_64-linux-gnu=
/libpthread.so.0 (0x00007f67297a7000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libstdc+=
+.so.6 =3D&gt; /usr/lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007f67295c5000=
)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libm.so.6 =3D&gt; /lib/x86_64-linux-gnu/libm=
.so.6 (0x00007f6729476000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libgcc_s.so.1 =3D&g=
t; /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f672945b000)<br>&lt; =C2=A0 =
=C2=A0 =C2=A0 libc.so.6 =3D&gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007f67=
29267000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libboost_chrono.so.1.71.0 =3D&gt; /u=
sr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0 (0x00007f6729259000)<br>&=
lt; =C2=A0 =C2=A0 =C2=A0 libboost_date_time.so.1.71.0 =3D&gt; /usr/lib/x86_=
64-linux-gnu/libboost_date_time.so.1.71.0 (0x00007f6729245000)<br>&lt; =C2=
=A0 =C2=A0 =C2=A0 libboost_filesystem.so.1.71.0 =3D&gt; /usr/lib/x86_64-lin=
ux-gnu/libboost_filesystem.so.1.71.0 (0x00007f6729227000)<br>&lt; =C2=A0 =
=C2=A0 =C2=A0 libboost_serialization.so.1.71.0 =3D&gt; /usr/lib/x86_64-linu=
x-gnu/libboost_serialization.so.1.71.0 (0x00007f67291e3000)<br>&lt; =C2=A0 =
=C2=A0 =C2=A0 libboost_thread.so.1.71.0 =3D&gt; /usr/lib/x86_64-linux-gnu/l=
ibboost_thread.so.1.71.0 (0x00007f67291b7000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 =
libdl.so.2 =3D&gt; /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f67291af000)<br=
>&lt; =C2=A0 =C2=A0 =C2=A0 libusb-1.0.so.0 =3D&gt; /lib/x86_64-linux-gnu/li=
busb-1.0.so.0 (0x00007f6729193000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libpython3.=
8.so.1.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libpython3.8.so.1.0 (0x00007f672=
8c3d000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 /lib64/ld-linux-x86-64.so.2 (0x00007f=
672a6eb000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libudev.so.1 =3D&gt; /lib/x86_64-l=
inux-gnu/libudev.so.1 (0x00007f6728c10000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 lib=
expat.so.1 =3D&gt; /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f6728be2000)=
<br>&lt; =C2=A0 =C2=A0 =C2=A0 libz.so.1 =3D&gt; /lib/x86_64-linux-gnu/libz.=
so.1 (0x00007f6728bc4000)<br>&lt; =C2=A0 =C2=A0 =C2=A0 libutil.so.1 =3D&gt;=
 /lib/x86_64-linux-gnu/libutil.so.1 (0x00007f6728bbf000)<br>---<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 linux-vdso.so.1 (0x00007ffe85fd4000)<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 libuhd.so.4.2.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.=
0 (0x00007f7408795000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_program_option=
s.so.1.71.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1=
.71.0 (0x00007f7408706000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libpthread.so.0 =3D=
&gt; /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f74086e3000)<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 libstdc++.so.6 =3D&gt; /usr/lib/x86_64-linux-gnu/libstdc+=
+.so.6 (0x00007f7408501000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libm.so.6 =3D&gt; =
/lib/x86_64-linux-gnu/libm.so.6 (0x00007f74083b2000)<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 libgcc_s.so.1 =3D&gt; /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f7=
408397000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libc.so.6 =3D&gt; /lib/x86_64-linux=
-gnu/libc.so.6 (0x00007f74081a3000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_c=
hrono.so.1.71.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0=
 (0x00007f7408195000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_date_time.so.1.=
71.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0 (0x0000=
7f7408181000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_filesystem.so.1.71.0 =
=3D&gt; /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0 (0x00007f74=
08163000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_serialization.so.1.71.0 =3D=
&gt; /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0 (0x00007f74=
0811f000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libboost_thread.so.1.71.0 =3D&gt; /u=
sr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0 (0x00007f74080f3000)<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 libdl.so.2 =3D&gt; /lib/x86_64-linux-gnu/libdl.so.=
2 (0x00007f74080eb000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libusb-1.0.so.0 =3D&gt;=
 /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f74080cf000)<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 libpython3.8.so.1.0 =3D&gt; /usr/lib/x86_64-linux-gnu/libpyth=
on3.8.so.1.0 (0x00007f7407b79000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 /lib64/ld-li=
nux-x86-64.so.2 (0x00007f740962b000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libudev.s=
o.1 =3D&gt; /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f7407b4c000)<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 libexpat.so.1 =3D&gt; /lib/x86_64-linux-gnu/libexpat.=
so.1 (0x00007f7407b1e000)<br>&gt; =C2=A0 =C2=A0 =C2=A0 libz.so.1 =3D&gt; /l=
ib/x86_64-linux-gnu/libz.so.1 (0x00007f7407b00000)<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 libutil.so.1 =3D&gt; /lib/x86_64-linux-gnu/libutil.so.1 (0x00007f740=
7afb000)<br></div><div><br></div><div>thanks again,</div><div>Achilleas</di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Sep 26, 2023 at 5:45=E2=80=AFPM Marcus D. Leech &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 26/09/2023 17:43, Achilleas
      Anastasopoulos wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Thanks Marcus.</div>
        <div><br>
        </div>
        <div>Can you suggest a way to test this hypothesis?</div>
        <div><br>
        </div>
        <div>What package do the utilities come from?</div>
        <div>What specific libraries are involved?</div>
        <div><br>
        </div>
        <div>thanks</div>
        <div>Achilleas</div>
      </div>
    </blockquote>
    How did you install UHD?=C2=A0=C2=A0 The banner says 4.2, which is NOT =
what
    Ubuntu packages for 20.04 by default, so I assume<br>
    =C2=A0 you used a source build or a PPA or something?<br>
    <br>
    Is it possible that on the machines that are failing, you have both
    packaged-by-Ubuntu and other things installed?<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 26, 2023 at
            5:06=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 26/09/2023 1=
6:53,
            Achilleas Anastasopoulos wrote:<br>
            &gt; Hi all,<br>
            &gt;<br>
            &gt; I have installed gnuradio/uhd in 10 computers in a lab
            (almost <br>
            &gt; identical setups).<br>
            &gt; These are=C2=A0 Ubuntu 20.04.4 LTS focal<br>
            &gt; The connected USRPs (X300) work fine in all 10
            computers.<br>
            &gt;<br>
            &gt; However, two of them result in a core dump when trying
            to use <br>
            &gt; calibrating utilities as follows:<br>
            &gt;<br>
            &gt; $ uhd_cal_tx_dc_offset<br>
            &gt;<br>
            &gt; Creating the usrp device with:
            ,ignore_cal_file=3D1,ignore-cal-file=3D1...<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; [INFO] [X300] X300 initialization sequence...<br>
            &gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
            &gt; Running calibration for UBX TX<br>
            &gt; Daughterboard serial: 3158306<br>
            &gt; Calibration frequency range: 10 MHz -&gt; 6000 MHz<br>
            &gt; Dterminate called without an active exception<br>
            &gt; Aborted (core dumped)<br>
            &gt;<br>
            &gt;<br>
            &gt; I found some similar questions on the Internet but not
            any definite <br>
            &gt; answers.<br>
            &gt; Are there any ideas on how to proceed with
            investigating that?<br>
            &gt;<br>
            &gt; thanks<br>
            &gt; Achilleas<br>
            &gt;<br>
            I&#39;d suspect mis-match between utilities and libraries.<br>
            <br>
            <br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt; FYI:<br>
            &gt;<br>
            &gt; $ uhd_find_devices<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; --------------------------------------------------<br>
            &gt; -- UHD Device 0<br>
            &gt; --------------------------------------------------<br>
            &gt; Device Address:<br>
            &gt; =C2=A0 =C2=A0 serial: 315C6B2<br>
            &gt; =C2=A0 =C2=A0 addr: 192.168.10.2<br>
            &gt; =C2=A0 =C2=A0 addr: 192.168.40.2<br>
            &gt; =C2=A0 =C2=A0 fpga: HG<br>
            &gt; =C2=A0 =C2=A0 name:<br>
            &gt; =C2=A0 =C2=A0 product: X310<br>
            &gt; =C2=A0 =C2=A0 type: x300<br>
            &gt;<br>
            &gt; Also:<br>
            &gt;<br>
            &gt; $ uhd_usrp_probe<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; [INFO] [X300] X300 initialization sequence...<br>
            &gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
            &gt; =C2=A0 ___________________________________________________=
__<br>
            &gt; =C2=A0/<br>
            &gt; | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>
            &gt; | =C2=A0 | =C2=A0 revision: 11<br>
            &gt; | =C2=A0 | =C2=A0 revision_compat: 7<br>
            &gt; | =C2=A0 | =C2=A0 product: 30818<br>
            &gt; | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:22:64:6c<br>
            &gt; | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:22:64:6d<br>
            &gt; | =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 serial: 315C6B2<br>
            &gt; | =C2=A0 | =C2=A0 FW Version: 6.0<br>
            &gt; | =C2=A0 | =C2=A0 FPGA Version: 38.0<br>
            &gt; | =C2=A0 | =C2=A0 FPGA git hash: be53058<br>
            &gt; | =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, =
gpsdo<br>
            &gt; | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo=
<br>
            &gt; | =C2=A0 | =C2=A0 Sensors: ref_locked<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this devic=
e:<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this=
 device:<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>
            &gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 =
MHz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 st=
ep 0.5 dB<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to=
 160000000.0
            step 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>
            &gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 =
MHz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 st=
ep 0.5 dB<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to=
 160000000.0
            step 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 ste=
p 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 ste=
p 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
            &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a><br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000d1c05106064a83e1--

--===============3167433539021285669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3167433539021285669==--
