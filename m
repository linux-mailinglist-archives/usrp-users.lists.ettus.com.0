Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C0A25B3B7
	for <lists+usrp-users@lfdr.de>; Wed,  2 Sep 2020 20:29:16 +0200 (CEST)
Received: from [::1] (port=45908 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDXVS-0008CP-MC; Wed, 02 Sep 2020 14:29:14 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:40999)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cogwsn@gmail.com>) id 1kDXVO-00084l-Cy
 for USRP-users@lists.ettus.com; Wed, 02 Sep 2020 14:29:10 -0400
Received: by mail-oi1-f171.google.com with SMTP id 2so293727ois.8
 for <USRP-users@lists.ettus.com>; Wed, 02 Sep 2020 11:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Ovs+hs64riV7tLtjttYmVFykaUEDp2w4l+AtOmZ0yIY=;
 b=ovcACUKfDjhpz3ns2ARCTYEGAtrrDGDNh22M+W0XEQw8ZWGX0PHNS0mR6s+XECzvyI
 cpM2V8xX5QRPstgupeA68xLoY8/B60iwE1Y9OWUF8RU2buo6wjPz/kvh5vWuKD21bsE7
 Q+AGJlBppdn1JXc2NxWsZR8hprYAJNTFizRtMtk4XIFH7rkmpDb1KW3YKmH4iTqQ0Vbl
 45EhzgpKjogE0Lo7UdXOfn2agnP2ZKwyz+c7STzvzI4MT1yOdjHemydDP0KhRPzqsaxq
 I+82LBYXOkS1WEa1rPS1ZUVqhnsuGu8DTirD1A/giFeIIvQof29j9kkBmlsZsEIGbFeP
 jIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Ovs+hs64riV7tLtjttYmVFykaUEDp2w4l+AtOmZ0yIY=;
 b=EEyDeOUqG64E/85iyJykcNQizBymYXMXhqfDl0xbuLcxcE+rljmn0shxR95s/Vxbkw
 ZpbzwAiphgmUFuPbGHHgubDXfr7FJZO2t7ThXBYcXcdiskSIaoQS3Jr/+ALAVR3Dgz/E
 Kh4cCoWYtuYE+C0YdX0Rbq6HwcMOhKhi/HOZDnOEunzpKpVQsElvj4FWJmkHjD1Gp/UW
 aNgskBiz5P95oJkr1wMFtpZ9GuC9fq6DFuowvw5f7kGd+b7n3wezLVu+aToJwbvNzTpp
 5n6AsEQLSPJg2WNSJb3VuEY/sRG8x2jINexUWtrWe7zCO5kNodTozll2iMAtSh1YmSId
 vOBg==
X-Gm-Message-State: AOAM533tSuzn60A06uVx2x//hRGWafmAfJdj9IklARqM4hZTbBboIRI2
 GnDAFBwOTNsdV4eqSOr05oNemj8JJQ3tD8053B6FxydJI88=
X-Google-Smtp-Source: ABdhPJxWNnBkZmZWhvlr7zF2HYuc906uCP9BcmgE4wuZFTDS8YHWF8ci+L7Q5jHgoLtQBYoDA92NOKLK6W2Rrg6bHYA=
X-Received: by 2002:aca:6c6:: with SMTP id 189mr2698991oig.134.1599071309348; 
 Wed, 02 Sep 2020 11:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <5144B3B6-EEDB-446E-BE6F-8EA289E45146@jhuapl.edu>
 <CAOExtcTaVfk6B7L_9qVCYCiqR2tYsbzspU4Zd+BUk6nKidbX5g@mail.gmail.com>
In-Reply-To: <CAOExtcTaVfk6B7L_9qVCYCiqR2tYsbzspU4Zd+BUk6nKidbX5g@mail.gmail.com>
Date: Wed, 2 Sep 2020 20:28:17 +0200
Message-ID: <CAOExtcSOM5ewcVpJoePq-6FO=iZSCvhEURgoCCBtDKUsywtzMA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] -- GPIO on N320 --
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Content-Type: multipart/mixed; boundary="===============1195334617300623055=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1195334617300623055==
Content-Type: multipart/alternative; boundary="0000000000005d412105ae58cd64"

--0000000000005d412105ae58cd64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just now I tried to print the available GPIO available. For N310 it shows:

FP0
RXA
TXA
RXB
TXB

But for N320 it shows:
RXA
TXA
RXB
TXB


On Wed, Sep 2, 2020 at 7:58 PM Sumit Kumar <cogwsn@gmail.com> wrote:

> Hi,
>
> I am also having the issue. Can anyone please help with the information :=
)
>
> For N310, there is FP0 available but for N320 I get following run time
> error:
> "  what():  RuntimeError: The hardware has no GPIO bank `FP0' "
>
> Regards
> Sumit
>
> On Mon, Jan 27, 2020 at 11:02 PM Nowicki, Ed H. via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> When I call the UHD API function get_gpio_banks()
>>
>> I get the following banks:
>>
>> =E2=80=98RXB=E2=80=99 =E2=80=98TXB=E2=80=99 =E2=80=98RXA=E2=80=99 TXA=E2=
=80=99 but I do NOT get =E2=80=98FP0=E2=80=99.
>>
>>
>>
>> Thoughts?
>>
>>
>>
>> Thanks,
>>
>> Ed
>>
>>
>>
>> *From: *USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> "Nowicki, Ed H. via USRP-users" <usrp-users@lists.ettus.com>
>> *Reply-To: *"Nowicki, Ed H." <Ed.Nowicki@jhuapl.edu>
>> *Date: *Monday, January 27, 2020 at 8:45 AM
>> *To: *"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> *Subject: *[EXT] [USRP-users] -- GPIO on N320 --
>>
>>
>>
>> *APL external email warning: *Verify sender
>> usrp-users-bounces@lists.ettus.com before clicking links or attachments
>>
>>
>>
>> Hi,
>>
>>
>>
>> I=E2=80=99m having a problem using the front panel GPIO on an N320.  I r=
everted
>> back to a standard =E2=80=9CHG=E2=80=9D FPGA build and compiled the GPIO=
 example program
>> (UHD 3.14.0).   However, when I run the example program I get the follow=
ing:
>>
>>
>>
>> Error: RuntimeError: The hardware has no gpio bank `FP0'
>>
>>
>>
>> Is the front panel GPIO bank on the N320 called =E2=80=9CFP0=E2=80=9D or=
 something else?
>> I did not see a reference to this in the .dts.
>>
>>
>>
>> See below for a =E2=80=9Cuhd_uspr_probe=E2=80=9D, =E2=80=9Cuhd_config_in=
fo=E2=80=9D dump, and the
>> terminal output after running ./gpio.
>>
>>
>>
>> Thanks for any help.
>>
>>
>>
>> Regards,
>>
>> Ed Nowicki
>>
>>
>>
>>
>>
>>
>>
>> ~~~~~~~~~~~~~~
>>
>> xku@sdr_nuc:~/workarea-uhd/uhd/host/examples/gpio/build$ uhd_usrp_probe
>>
>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>> UHD_3.14.0.HEAD-0-g6875d061
>>
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D31A5C5A,cla=
imed=3DFalse,addr=3D192.168.20.2
>>
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'.
>>
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'
>>
>> [INFO] [MPM.Rhodium-1] init() called with args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'
>>
>> [INFO] [0/Replay_0] Initializing block control (NOC ID:
>> 0x4E91A00000000004)
>>
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000032=
0)
>>
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000032=
0)
>>
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
>>
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
>>
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>>
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>>
>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000=
)
>>
>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000=
)
>>
>> _____________________________________________________
>>
>> /
>>
>> |       Device: N300-Series Device
>>
>> |     _____________________________________________________
>>
>> |    /
>>
>> |   |       Mboard: ni-n3xx-31A5C5A
>>
>> |   |   eeprom_version: 2
>>
>> |   |   mpm_version: 3.14.1.0-gbfb9c1c7
>>
>> |   |   pid: 16962
>>
>> |   |   product: n320
>>
>> |   |   rev: 7
>>
>> |   |   rpc_connection: remote
>>
>> |   |   serial: 31A5C5A
>>
>> |   |   type: n3xx
>>
>> |   |   MPM Version: 1.2
>>
>> |   |   FPGA Version: 5.3
>>
>> |   |   FPGA git hash: 3de8954.clean
>>
>> |   |   RFNoC capable: Yes
>>
>> |   |
>>
>> |   |   Time sources:  internal, external, gpsdo, sfp0
>>
>> |   |   Clock sources: external, internal, gpsdo
>>
>> |   |   Sensors: temp, gps_tpv, gps_time, fan, gps_sky, ref_locked,
>> gps_gpgga, gps_locked
>>
>> |   |     _____________________________________________________
>>
>> |   |    /
>>
>> |   |   |       RX Dboard: A
>>
>> |   |   |   ID: Unknown (0x0152)
>>
>> |   |   |   Serial: 3191E7D
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       RX Frontend: 0
>>
>> |   |   |   |   Name: Rhodium
>>
>> |   |   |   |   Antennas: TX/RX, RX2, CAL, TERM
>>
>> |   |   |   |   Sensors: lo_locked
>>
>> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
>>
>> |   |   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
>>
>> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
>>
>> |   |   |   |   Connection Type:
>>
>> |   |   |   |   Uses LO offset: No
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       RX Codec: A
>>
>> |   |   |   |   Name: ad9695-625
>>
>> |   |   |   |   Gain Elements: None
>>
>> |   |     _____________________________________________________
>>
>> |   |    /
>>
>> |   |   |       RX Dboard: B
>>
>> |   |   |   ID: Unknown (0x0152)
>>
>> |   |   |   Serial: 3191E79
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       RX Frontend: 0
>>
>> |   |   |   |   Name: Rhodium
>>
>> |   |   |   |   Antennas: TX/RX, RX2, CAL, TERM
>>
>> |   |   |   |   Sensors: lo_locked
>>
>> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
>>
>> |   |   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
>>
>> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
>>
>> |   |   |   |   Connection Type:
>>
>> |   |   |   |   Uses LO offset: No
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       RX Codec: B
>>
>> |   |   |   |   Name: ad9695-625
>>
>> |   |   |   |   Gain Elements: None
>>
>> |   |     _____________________________________________________
>>
>> |   |    /
>>
>> |   |   |       TX Dboard: A
>>
>> |   |   |   ID: Unknown (0x0152)
>>
>> |   |   |   Serial: 3191E7D
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       TX Frontend: 0
>>
>> |   |   |   |   Name: Rhodium
>>
>> |   |   |   |   Antennas: TX/RX, CAL, TERM
>>
>> |   |   |   |   Sensors: lo_locked
>>
>> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
>>
>> |   |   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
>>
>> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
>>
>> |   |   |   |   Connection Type:
>>
>> |   |   |   |   Uses LO offset: No
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       TX Codec: A
>>
>> |   |   |   |   Name: dac37j82
>>
>> |   |   |   |   Gain Elements: None
>>
>> |   |     _____________________________________________________
>>
>> |   |    /
>>
>> |   |   |       TX Dboard: B
>>
>> |   |   |   ID: Unknown (0x0152)
>>
>> |   |   |   Serial: 3191E79
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       TX Frontend: 0
>>
>> |   |   |   |   Name: Rhodium
>>
>> |   |   |   |   Antennas: TX/RX, CAL, TERM
>>
>> |   |   |   |   Sensors: lo_locked
>>
>> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
>>
>> |   |   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
>>
>> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
>>
>> |   |   |   |   Connection Type:
>>
>> |   |   |   |   Uses LO offset: No
>>
>> |   |   |     _____________________________________________________
>>
>> |   |   |    /
>>
>> |   |   |   |       TX Codec: B
>>
>> |   |   |   |   Name: dac37j82
>>
>> |   |   |   |   Gain Elements: None
>>
>> |   |     _____________________________________________________
>>
>> |   |    /
>>
>> |   |   |       RFNoC blocks on this device:
>>
>> |   |   |
>>
>> |   |   |   * Replay_0
>>
>> |   |   |   * Radio_0
>>
>> |   |   |   * Radio_1
>>
>> |   |   |   * DDC_0
>>
>> |   |   |   * DDC_1
>>
>> |   |   |   * DUC_0
>>
>> |   |   |   * DUC_1
>>
>> |   |   |   * FIFO_0
>>
>> |   |   |   * FIFO_1
>>
>>
>>
>> ~~~~~~~~~~~~~
>>
>>
>>
>> xku@sdr_nuc:~/workarea-uhd/uhd/host/examples/gpio/build$ uhd_config_info
>> --print-all
>>
>> UHD 3.14.0.HEAD-0-g6875d061
>>
>> Build date: Thu, 20 Jun 2019 18:53:05
>>
>> C compiler: GNU 7.4.0
>>
>> C++ compiler: GNU 7.4.0
>>
>> C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1
>> -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_C=
OLOR
>>
>> C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1
>> -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_C=
OLOR
>> -fvisibility=3Dhidden -fvisibility-inlines-hidden
>>
>> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
>> Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD,
>> N300, N320, E320, OctoClock
>>
>> Install prefix: /usr/local
>>
>> Boost version: 1.65.1
>>
>> Libusb version: 1.0.23
>>
>> Package path: /usr/local
>>
>> Images directory: /usr/local/share/uhd/images
>>
>> ABI version string: 3.14.0
>>
>>
>>
>> ~~~~~~~~~~~~~~~~~~~~
>>
>>
>>
>> xku@sdr_nuc:~/workarea-uhd/uhd/host/examples/gpio/build$
>>
>> xku@sdr_nuc:~/workarea-uhd/uhd/host/examples/gpio/build$ ./gpio
>>
>>
>>
>> Creating the usrp device with: ...
>>
>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>> UHD_3.14.0.HEAD-0-g6875d061
>>
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D31A5C5A,cla=
imed=3DFalse,addr=3D192.168.20.2
>>
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'.
>>
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'
>>
>> [INFO] [MPM.Rhodium-1] init() called with args
>> `mgmt_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal=
,product=3Dn320'
>>
>> [INFO] [0/Replay_0] Initializing block control (NOC ID:
>> 0x4E91A00000000004)
>>
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000032=
0)
>>
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000032=
0)
>>
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
>>
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
>>
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>>
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>>
>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000=
)
>>
>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000=
)
>>
>> Using Device: Single USRP:
>>
>> Device: N300-Series Device
>>
>> Mboard 0: ni-n3xx-31A5C5A
>>
>> RX Channel: 0
>>
>> RX DSP: 0
>>
>> RX Dboard: A
>>
>> RX Subdev: Rhodium
>>
>> RX Channel: 1
>>
>> RX DSP: 0
>>
>> RX Dboard: B
>>
>> RX Subdev: Rhodium
>>
>> TX Channel: 0
>>
>> TX DSP: 0
>>
>> TX Dboard: A
>>
>> TX Subdev: Rhodium
>>
>> TX Channel: 1
>>
>> TX DSP: 0
>>
>> TX Dboard: B
>>
>> TX Subdev: Rhodium
>>
>>
>>
>> Initial GPIO values:
>>
>>    Bit  10  9  8  7  6  5  4  3  2  1  0
>>
>> Error: RuntimeError: The hardware has no gpio bank `FP0'
>>
>> xku@sdr_nuc:~/workarea-uhd/uhd/host/examples/gpio/build$
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>

--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--0000000000005d412105ae58cd64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just now I tried to print the available=C2=A0GPIO ava=
ilable. For N310 it shows:=C2=A0</div><div><br></div><div>FP0<br>RXA<br>TXA=
<br>RXB<br>TXB<br></div><div><br></div><div>But for N320 it shows:=C2=A0</d=
iv><div>RXA</div>TXA<br>RXB<br>TXB<br><div><br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 2, 2020 at 7:58 =
PM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com">cogwsn@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I am also having=
 the issue. Can anyone please help with the information :)</div><div><br></=
div><div>For N310, there is FP0 available=C2=A0but for N320 I get following=
 run time error:=C2=A0</div><div>&quot;=C2=A0 what(): =C2=A0RuntimeError: T=
he hardware has no GPIO bank `FP0&#39; &quot;</div><div><br></div><div>Rega=
rds</div><div>Sumit=C2=A0</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 11:02 PM Nowicki, Ed=
 H. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">When I call the UHD A=
PI function get_gpio_banks()<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I get the following b=
anks:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=E2=80=98RXB=E2=80=99=
 =E2=80=98TXB=E2=80=99 =E2=80=98RXA=E2=80=99 TXA=E2=80=99 but I do NOT get =
=E2=80=98FP0=E2=80=99.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thoughts?<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Ed<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From: </span></b><spa=
n style=3D"color:black">USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&=
gt; on behalf of &quot;Nowicki, Ed H. via USRP-users&quot; &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt;<br>
<b>Reply-To: </b>&quot;Nowicki, Ed H.&quot; &lt;<a href=3D"mailto:Ed.Nowick=
i@jhuapl.edu" target=3D"_blank">Ed.Nowicki@jhuapl.edu</a>&gt;<br>
<b>Date: </b>Monday, January 27, 2020 at 8:45 AM<br>
<b>To: </b>&quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>[EXT] [USRP-users] -- GPIO on N320 --<u></u><u></u></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<div>
<div id=3D"gmail-m_8513138530320433264gmail-m_5465625335197139286APLWarning=
Text">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"100%" style=3D"width:100%;background:rgb(224,224,224);padding:=
0in">
<p class=3D"MsoNormal">
<b><span style=3D"font-size:11pt;color:red">APL external email warning: </s=
pan></b><span style=3D"font-size:11pt;color:black">Verify sender <a href=3D=
"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bo=
unces@lists.ettus.com</a> before clicking links or attachments</span><span =
style=3D"font-size:11pt"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p>=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Hi,</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">I=E2=80=
=99m having a problem using the front panel GPIO on an N320.=C2=A0 I revert=
ed back to a standard =E2=80=9CHG=E2=80=9D FPGA build and compiled the GPIO=
 example program (UHD 3.14.0). =C2=A0=C2=A0However, when I run the example
 program I get the following:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Error: Ru=
ntimeError: The hardware has no gpio bank `FP0&#39;</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Is the fr=
ont panel GPIO bank on the N320 called =E2=80=9CFP0=E2=80=9D or something e=
lse?=C2=A0 I did not see a reference to this in the .dts.=C2=A0</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">See below=
 for a =E2=80=9Cuhd_uspr_probe=E2=80=9D, =E2=80=9Cuhd_config_info=E2=80=9D =
dump, and the terminal output after running ./gpio.</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Thanks fo=
r any help.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Regards,<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Ed Nowick=
i</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">~~~~~~~~~=
~~~~~</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">xku@sdr_n=
uc:~/workarea-uhd/uhd/host/examples/gpio/build$ uhd_usrp_probe</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [U=
HD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.0.HEAD-0-g6875d061=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.20=
.2,type=3Dn3xx,product=3Dn320,serial=3D31A5C5A,claimed=3DFalse,addr=3D192.1=
68.20.2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.PeriphManager] init() called with device args `mgmt_addr=3D192.168.20.2,=
clock_source=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;.</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.20.2,clock_sourc=
e=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.20.2,clock_sourc=
e=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Radio_0] Initializing block control (NOC ID: 0x12AD100000000320)</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Radio_1] Initializing block control (NOC ID: 0x12AD100000000320)</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">_________=
____________________________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">/</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: N300-Series Device</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0=C2=A0=C2=A0 _____________________________________________________</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 | =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mboard: ni-n3xx-31A5C5A</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 eeprom_version: 2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 mpm_version: 3.14.1.0-gbfb9c1c7</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 pid: 16962</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 product: n320</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 rev: 7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 rpc_connection: remote</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 serial: 31A5C5A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 type: n3xx</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 MPM Version: 1.2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 FPGA Version: 5.3</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 FPGA git hash: 3de8954.clean</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 RFNoC capable: Yes</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 internal, external, gpsdo, sfp0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 Clock sources: external, internal, gpsdo</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 Sensors: temp, gps_tpv, gps_time, fan, gps_sky, ref_lo=
cked, gps_gpgga, gps_locked</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________________________________________=
___________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: A</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0152)</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3191E7D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX=
 Frontend: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL,=
 TERM</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.=
000 MHz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.=
0 step 1.0 dB</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX=
 Codec: A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9695-625</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________________________________________=
___________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: B</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0152)</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3191E79</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX=
 Frontend: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL,=
 TERM</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0 =C2=A0Freq range: 1.000 to 6000.=
000 MHz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.=
0 step 1.0 dB</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX=
 Codec: B</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9695-625</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________________________________________=
___________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: A</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0152)</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3191E7D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX=
 Frontend: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CAL, TERM=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.=
000 MHz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.=
0 step 1.0 dB</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX=
 Codec: A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: dac37j82</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________________________________________=
___________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: B</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0152)</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3191E79</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX=
 Frontend: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CAL, TERM=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.=
000 MHz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.=
0 step 1.0 dB</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ____________________________=
_________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX=
 Codec: B</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: dac37j82</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________________________________________=
___________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blocks on =
this device:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Replay_0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * FIFO_0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">|=C2=A0=
=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * FIFO_1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">~~~~~~~~~=
~~~~</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">xku@sdr_n=
uc:~/workarea-uhd/uhd/host/examples/gpio/build$ uhd_config_info --print-all=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">UHD 3.14.=
0.HEAD-0-g6875d061</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Build dat=
e: Thu, 20 Jun 2019 18:53:05</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">C compile=
r: GNU 7.4.0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">C++ compi=
ler: GNU 7.4.0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">C flags: =
-DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSO=
LE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">C++ flags=
: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CON=
SOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibilit=
y=3Dhidden -fvisibility-inlines-hidden</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Enabled c=
omponents: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, Utils, Te=
sts, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320, E320, Oct=
oClock</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Install p=
refix: /usr/local</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Boost ver=
sion: 1.65.1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Libusb ve=
rsion: 1.0.23</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Package p=
ath: /usr/local</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Images di=
rectory: /usr/local/share/uhd/images</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">ABI versi=
on string: 3.14.0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">~~~~~~~~~=
~~~~~~~~~~~</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">xku@sdr_n=
uc:~/workarea-uhd/uhd/host/examples/gpio/build$</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">xku@sdr_n=
uc:~/workarea-uhd/uhd/host/examples/gpio/build$ ./gpio</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Creating =
the usrp device with: ...</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [U=
HD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.0.HEAD-0-g6875d061=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.20=
.2,type=3Dn3xx,product=3Dn320,serial=3D31A5C5A,claimed=3DFalse,addr=3D192.1=
68.20.2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.PeriphManager] init() called with device args `mgmt_addr=3D192.168.20.2,=
clock_source=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;.</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.20.2,clock_sourc=
e=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [M=
PM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.20.2,clock_sourc=
e=3Dinternal,time_source=3Dinternal,product=3Dn320&#39;</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Radio_0] Initializing block control (NOC ID: 0x12AD100000000320)</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/Radio_1] Initializing block control (NOC ID: 0x12AD100000000320)</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">[INFO] [0=
/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Using Dev=
ice: Single USRP:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Device: N=
300-Series Device</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Mboard 0:=
 ni-n3xx-31A5C5A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Channe=
l: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX DSP: 0=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Dboard=
: A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Subdev=
: Rhodium</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Channe=
l: 1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX DSP: 0=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Dboard=
: B</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">RX Subdev=
: Rhodium</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Channe=
l: 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX DSP: 0=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Dboard=
: A</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Subdev=
: Rhodium</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Channe=
l: 1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX DSP: 0=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Dboard=
: B</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">TX Subdev=
: Rhodium</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Initial G=
PIO values:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">=C2=A0=C2=
=A0 Bit=C2=A0 10=C2=A0 9=C2=A0 8=C2=A0 7=C2=A0 6=C2=A0 5=C2=A0 4=C2=A0 3=C2=
=A0 2=C2=A0 1=C2=A0 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">Error: Ru=
ntimeError: The hardware has no gpio bank `FP0&#39;</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;color:black">xku@sdr_n=
uc:~/workarea-uhd/uhd/host/examples/gpio/build$</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,13=
6);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);fon=
t-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit=
 kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8p=
x">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8=
px"><br></div><br></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div></div>

--0000000000005d412105ae58cd64--


--===============1195334617300623055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1195334617300623055==--

