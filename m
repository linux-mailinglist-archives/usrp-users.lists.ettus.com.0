Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA14391F4E
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 20:40:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F4663849E3
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 14:40:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="lGJDQle+";
	dkim-atps=neutral
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 85686383F75
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 14:32:41 -0400 (EDT)
Received: by mail-vs1-f43.google.com with SMTP id f9so1192783vsp.6
        for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 11:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5c4dECIuhu5OGxjcdnrVZo3+QWRF3t4QooP/4SeTTQo=;
        b=lGJDQle+9i8Qvly/jRlO1Ds9OxggjZJonO981CSBQi8MRgHL8SwNZu9YUP+gbtCtTg
         gCRAyJAp9IkLQr7ssef1guBkIVYxsysjUgb1ettz3mQebL+M3rkPSqn6POGpHLKdHiJw
         +8Nd7sl8FvPGHDa3zWOJV4JmX0wE2q/qMfjw6RGSho9Sfe+ItU4djqNfC0CTQ2I4lDq1
         xT1dm/tfP49t7SLrk9/XUAZ8F2P/8FWCoVElKJCUNJl2ff8S9RAEsxMErz7fJSnCBoCm
         TElZk5AyXGtyMPhlWtfXKe01FpFwbumkcGOcQRxcZap2XCzd2n9HYBsxKeIy/LnHcELJ
         50rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5c4dECIuhu5OGxjcdnrVZo3+QWRF3t4QooP/4SeTTQo=;
        b=mas1w+XRE/58uDrFFAZvkobDKXXAc0NAQIwKUGC+RG1yfskKKMAFiEZdnTrdk3hOxZ
         OW1xf4vIkb3fgJWp6t91rIdq3WUQgzDEjhgyPgwRMiDyuuUDejWx12ZgmQRD9EAvVOdd
         IDQmKamfPvT+FLMB8uBQomAU14nOYYpYdpOsz7Hs+XnC+87MpT8Md7CPxymFqzcFYc5I
         Y93RDoHltXo6JIvMF8kFphdZmYpdUXnhpYG+UU6uNfHL1aadN8qHRcMvihkzLfc17sK2
         I2Gl4dkoO1FOBl2Ex9XZJ8bQRNVKaS4QXIcmmwVIsQBLDY9Kiw4ytYqSIcVayFKoirEK
         eONw==
X-Gm-Message-State: AOAM532mW+6BRpCt1OrEiKQbDv5lHTwEUmsX3LeczQ1BAuYxZsyz1/nY
	iAh1JBz+p6189JNbE3dBnpqwNzGZvBeqGmn/DNKEuqcP
X-Google-Smtp-Source: ABdhPJzkeqZHrtBIj3U3Wa0UfqIwIWvUnCzjw0JOLGvDwjmOwXY+P2q4jgwATzcWLY8GXY+jYJ8BcPgUP19PeF9obro=
X-Received: by 2002:a67:ec4f:: with SMTP id z15mr31819709vso.27.1622053960409;
 Wed, 26 May 2021 11:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
 <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81sDJz9TxtE1jmoKd_58wJxi3QYONJcopH+hhwLS4cgN0A@mail.gmail.com> <BMXPR01MB246969508CD28B3B28AF7A7D88249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB246969508CD28B3B28AF7A7D88249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 26 May 2021 14:32:04 -0400
Message-ID: <CAL7q81tA8_FV-zithJUNUxeMppgBgtKB4smMjLSQR=WOpFHcUg@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Message-ID-Hash: 6CBOX4J4ALHDUNTREJ26CGWUEJ6GJQWS
X-Message-ID-Hash: 6CBOX4J4ALHDUNTREJ26CGWUEJ6GJQWS
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CBOX4J4ALHDUNTREJ26CGWUEJ6GJQWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7511430948108164381=="

--===============7511430948108164381==
Content-Type: multipart/related; boundary="0000000000001eec3c05c33fde7d"

--0000000000001eec3c05c33fde7d
Content-Type: multipart/alternative; boundary="0000000000001eec3b05c33fde7c"

--0000000000001eec3b05c33fde7c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

With a X310, calling set_rate() on the radio block controller doesn't set
the sample rate. You need a DDC block instead, and you'll want to
call set_output_rate() to set the desired sample rate. Try the flowgraph
Radio RX->DDC->FIR filter->Host and see if that works. I would avoid the
DMA FIFO unless you absolutely need it, as the block is somewhat finicky.

Jonathon

On Wed, May 26, 2021 at 2:16 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

> No, I tried modifying it. I have attached the same for your reference.
>
>
>
> Regards
>
> Snehasish
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> *From: *Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent: *26 May 2021 23:36
> *To: *Snehasish Kar <snehasish.cse@live.com>
> *Cc: *Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com
> *Subject: *Re: [USRP-users] Re: Timeout while streaming IQ samples to
> host in RFNOC
>
>
>
> Hi Snehasish,
>
>
>
> Do you get a timeout when connecting the FIR filter via rfnoc_rx_to_file'=
s
> "--block-id" option? What about the FIFO block? Also, I would highly
> suggest updating to the UHD 3.15 LTS branch.
>
>
>
>  Jonathon
>
>
>
> On Wed, May 26, 2021 at 1:20 PM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello Jonathan
>
>
>
> Tried with the example as you said, but if only try to stream from rfnoc
> radio I am able get IQ samples in the host . But as soon as I connect a f=
ir
> filter with cutoff frequency 20MHz and transition 5MHz, it gives a timeou=
t
> error.
>
>
>
> My current flowgraph looks something like this:
>
> Radio=3D>fifo=3D>fir filter=3D>fifo=3D> host
>
>
>
> Regards
>
> Snehasish
>
>
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
>
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, May 21, 2021 12:13:48 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com <
> usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Timeout while streaming IQ samples to
> host in RFNOC
>
>
>
> Hello Snehasish,
>
>
>
> I would suggest starting with a known working in-tree example like
> rfnoc_rx_to_file.cpp. It has a section that connects a user defined RFNoC
> block, and you can easily modify that to instead connect the FIFOs and FI=
R
> filter.
>
>
>
> Jonathon
>
>
>
> On Thu, May 20, 2021 at 4:31 AM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello Rob
>
>
>
> Tried that but it didn=E2=80=99t work. I am using the standard RFNOC fir =
filter
> and radio.
>
>
>
> Regards
>
> Snehasish
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> *From: *Rob Kossler <rkossler@nd.edu>
> *Sent: *18 May 2021 21:39
> *To: *Snehasish Kar <snehasish.cse@live.com>
> *Cc: *usrp-users@lists.ettus.com
> *Subject: *Re: [USRP-users] Timeout while streaming IQ samples to host in
> RFNOC
>
>
>
> Perhaps try issue_stream_cmd on the radio ctrl rather than the rx_streame=
r.
>
> Rob
>
>
>
> On Mon, May 17, 2021 at 12:45 PM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello
>
>
>
> I am using the below code to stream IQ samples to host using RFNOC, but
> while streaming I am getting timeout. My rfnoc graph looks something like
> this:
>
> Radio_0=3D>fifo=3D>fir_filter=3D>fifo=3D>host
>
> Radio_1=3D>fifo=3D>fir_filter=3D>fifo=3D>host
>
>
>
> With the above flowgraph we are able to stream samples in gnuradio.
>
>
>
> Sample rate used: 100msps
>
> Host PC configuration: intel i7 processor 9th gen
>
>                                        RAM: 8GB
>
> Interface: PCIE express
>
> UHD version: UHD_3.14.1.0-0-unknown
>
>
>
> Below is the output of  uhd_usrp_probe:
>
>
>
> :~/Desktop/uhd_rfnoc_file_writter/Debug$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.14.1.0-0-unknown
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>
> [INFO] [X300] Using LVBITX bitfile
> /usr/local/share/uhd/images/usrp_x310_fpga_XG.lvbitx...
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>
> [WARNING] [GPS] update_cache: Malformed GPSDO string: LC_XO, Firmware Rev
> 0.929a
>
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
>
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
>
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
>
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
>
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/FIR_0] Initializing block control (NOC ID: 0xF112000000000000)
>
> [INFO] [0/FIR_1] Initializing block control (NOC ID: 0xF112000000000000)
>
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.
>
>   _____________________________________________________
>
> /
>
> |       Device: X-Series Device
>
> |     _____________________________________________________
>
> |    /
>
> |   |       Mboard: X310
>
> |   |   revision: 11
>
> |   |   revision_compat: 7
>
> |   |   product: 30960
>
> |   |   mac-addr0: 00:80:2f:18:de:4d
>
> |   |   mac-addr1: 00:80:2f:18:de:4e
>
> |   |   gateway: 192.168.10.1
>
> |   |   ip-addr0: 192.168.10.2
>
> |   |   subnet0: 255.255.255.0
>
> |   |   ip-addr1: 192.168.20.2
>
> |   |   subnet1: 255.255.255.0
>
> |   |   ip-addr2: 192.168.30.2
>
> |   |   subnet2: 255.255.255.0
>
> |   |   ip-addr3: 192.168.40.2
>
> |   |   subnet3: 255.255.255.0
>
> |   |   serial: 314B293
>
> |   |   FW Version: 6.0
>
> |   |   FPGA Version: 35.1
>
> |   |   FPGA git hash: fffffff-dirty
>
> |   |   RFNoC capable: Yes
>
> |   |
>
> |   |   Time sources:  internal, external, gpsdo
>
> |   |   Clock sources: internal, external, gpsdo
>
> |   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo,
> ref_locked
>
> |   |     _____________________________________________________
>
> |   |    /
>
> |   |   |       RX Dboard: A
>
> |   |   |   ID: TwinRX Rev B (0x0093)
>
> |   |   |   Serial: 3147FB8
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Frontend: 0
>
> |   |   |   |   Name: TwinRX RX0
>
> |   |   |   |   Antennas: RX1, RX2
>
> |   |   |   |   Sensors: lo_locked
>
> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>
> |   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
>
> |   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: II
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Frontend: 1
>
> |   |   |   |   Name: TwinRX RX1
>
> |   |   |   |   Antennas: RX1, RX2
>
> |   |   |   |   Sensors: lo_locked
>
> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>
> |   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
>
> |   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: QQ
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Codec: A
>
> |   |   |   |   Name: ads62p48
>
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>
> |   |     _____________________________________________________
>
> |   |    /
>
> |   |   |       RX Dboard: B
>
> |   |   |   ID: TwinRX Rev B (0x0093)
>
> |   |   |   Serial: 3147FC1
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Frontend: 0
>
> |   |   |   |   Name: TwinRX RX0
>
> |   |   |   |   Antennas: RX1, RX2
>
> |   |   |   |   Sensors: lo_locked
>
> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>
> |   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
>
> |   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: II
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Frontend: 1
>
> |   |   |   |   Name: TwinRX RX1
>
> |   |   |   |   Antennas: RX1, RX2
>
> |   |   |   |   Sensors: lo_locked
>
> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>
> |   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
>
> |   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: QQ
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       RX Codec: B
>
> |   |   |   |   Name: ads62p48
>
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>
> |   |     _____________________________________________________
>
> |   |    /
>
> |   |   |       TX Dboard: A
>
> |   |   |   ID: Unknown (0x0092)
>
> |   |   |   Serial: 3147FB8
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       TX Frontend: 0
>
> |   |   |   |   Name: Unknown (0x0092) - 0
>
> |   |   |   |   Antennas:
>
> |   |   |   |   Sensors:
>
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
>
> |   |   |   |   Gain Elements: None
>
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: IQ
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       TX Codec: A
>
> |   |   |   |   Name: ad9146
>
> |   |   |   |   Gain Elements: None
>
> |   |     _____________________________________________________
>
> |   |    /
>
> |   |   |       TX Dboard: B
>
> |   |   |   ID: Unknown (0x0092)
>
> |   |   |   Serial: 3147FC1
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       TX Frontend: 0
>
> |   |   |   |   Name: Unknown (0x0092) - 0
>
> |   |   |   |   Antennas:
>
> |   |   |   |   Sensors:
>
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
>
> |   |   |   |   Gain Elements: None
>
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>
> |   |   |   |   Connection Type: IQ
>
> |   |   |   |   Uses LO offset: No
>
> |   |   |     _____________________________________________________
>
> |   |   |    /
>
> |   |   |   |       TX Codec: B
>
> |   |   |   |   Name: ad9146
>
> |   |   |   |   Gain Elements: None
>
> |   |     _____________________________________________________
>
> |   |    /
>
> |   |   |       RFNoC blocks on this device:
>
> |   |   |
>
> |   |   |   * DmaFIFO_0
>
> |   |   |   * Radio_0
>
> |   |   |   * Radio_1
>
> |   |   |   * DDC_0
>
> |   |   |   * DDC_1
>
> |   |   |   * FIR_0
>
> |   |   |   * FIR_1
>
> |   |   |   * DUC_0
>
> |   |   |   * DUC_1
>
> |   |   |   * FIFO_0
>
> |   |   |   * FIFO_1
>
> |   |   |   * FIFO_2
>
> |   |   |   * FIFO_3
>
>
>
> Source code:
>
>
>
> void uhd_interface::start_streamming(int32_t num_samples_to_receive,
> int16_t max_channels, uint64_t samples_per_burst, int32_t
> total_no_of_samps) {
>
>               uhd::rx_metadata_t md;
>
>               bool overflow_message =3D true;
>
>               try {
>
>                            uhd::rfnoc::graph::sptr rx_graph =3D
> usrp_rfnoc->create_graph("antidrone_rx_chain");
>
>                            usrp_rfnoc->clear();
>
>
> //rx_graph->connect(radio_ctrl[0]->get_block_id(),
> fifo_ctrl[0]->get_block_id());
>
>
> //rx_graph->connect(fifo_ctrl[0]->get_block_id(),
> fir_ctrl[0]->get_block_id());
>
>
> //rx_graph->connect(fir_ctrl[0]->get_block_id(),
> fifo_ctrl[1]->get_block_id());
>
>
>
>
> //rx_graph->connect(radio_ctrl[1]->get_block_id(),
> fifo_ctrl[2]->get_block_id());
>
>
> //rx_graph->connect(fifo_ctrl[2]->get_block_id(),
> fir_ctrl[1]->get_block_id());
>
>
> //rx_graph->connect(fir_ctrl[1]->get_block_id(),
> fifo_ctrl[3]->get_block_id());
>
>
>
>
> rx_graph->connect(radio_ctrl[0]->get_block_id(), 0,
> fifo_ctrl[1]->get_block_id(), 0);
>
>
>
>
>
>               } catch (const std::exception& ex) {
>
>                            char msg[100]=3D{0x00};
>
>                            sprintf(msg,"error: unable to create/set a
> radio/parameter %s", ex.what());
>
>                            log_printf(msg, error_lvl, __FILE__, __LINE__)=
;
>
>               }
>
>               uhd::device_addr_t stream_args_rfnoc;
>
>               std::vector<std::string> block_port{"0", "1"};
>
>               stream_args_rfnoc["block_id"] =3D
> fifo_ctrl[1]->get_block_id().to_string();
>
>               stream_args_rfnoc["block_port"] =3D block_port[0];
>
>               //stream_args_rfnoc["block_id"] =3D
> fifo_ctrl[3]->get_block_id().to_string();
>
>               //stream_args_rfnoc["block_port"] =3D block_port[1];
>
>               uhd::stream_args_t stream_args("sc16","sc16");
>
>               stream_args.args =3D stream_args_rfnoc;
>
>               size_t spp =3D radio_ctrl[0]->get_args().cast<size_t>("spp"=
,
> spp);
>
>               stream_args.args["spp"] =3D
> boost::lexical_cast<std::string>(spp); //TODO: considering 1000 samples b=
ut
> check
>
>               rx_stream =3D uhd_src->get_rx_stream(stream_args);
>
>               {
>
>                            char msg[100]=3D{0x00};
>
>                            sprintf(msg, "info: Daemon launched with pid
> %d", getpid());
>
>                            log_printf(msg, error_lvl, __FILE__, __LINE__)=
;
>
>               }
>
>               //samples_per_burst =3D 1000;
>
>               uhd::stream_cmd_t
> stream_cmd(/*uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS*/
> uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>               stream_cmd.num_samps  =3D total_no_of_samps;
>
>               stream_cmd.stream_now =3D true;
>
>               //stream_cmd.time_spec =3D  uhd_src->get_time_now() +
> ::uhd::time_spec_t(0.1);//time_spec;
>
>               rx_stream->issue_stream_cmd(stream_cmd);
>
>               samples_per_burst =3D rx_stream->get_max_num_samps();
>
>               std::vector<std::vector<std::complex<float>>>
> buffer_data(max_channels, std::vector<std::complex<float>
> >(samples_per_burst));
>
>               std::vector<void *> buffs(max_channels);
>
>               for(int8_t i =3D 0;i<max_channels;i++) {
>
>                            buffs[i] =3D &buffer_data[i].front();
>
>               }
>
>               uint64_t total_samps_recvd =3D0x00;
>
>               int32_t total_size_wrote_to_file =3D0x00;
>
>               int32_t counter =3D 0x00;
>
>               //std::complex<float> array1[100000][1000]{{0x00}};
>
>               //std::complex<float> array2[100000][1000]{{0x00}};
>
>               //fprintf(stderr,"total num of samps %d\n",
> total_no_of_samps);
>
>               while(!stop_rx and ((total_samps_recvd!=3Dtotal_no_of_samps=
)
> or (total_no_of_samps=3D=3D0x00))) {
>
>                            buffs.clear();
>
>                            size_t num_rx_samps =3D 0x00;
>
>                            try {
>
>                                          num_rx_samps =3D
> rx_stream->recv(buffs, samples_per_burst, md, 1.0);
>
>                                          if(error_lvl=3D=3D3) {
>
>                                                        char
> msg[700]=3D{0x00};
>
>
> sprintf(msg,"\n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n
> Number of samples received
> %u\n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D",
> num_rx_samps);
>
>                                                        log_printf(msg,
> error_lvl, __FILE__, __LINE__);
>
>                                                        //std::cout <<
> "total_samps_recvd : " << total_samps_recvd << "  total_no_of_samps : " <=
<
> total_no_of_samps << "\n";
>
>                                          }
>
>                            } catch (const std::exception& ex){
>
>                                          char msg[100]=3D{0x00};
>
>                                          sprintf(msg,"error: error while
> streaming %s", ex.what());
>
>                                          log_printf(msg, error_lvl,
> __FILE__, __LINE__);
>
>                            }
>
>                            if (md.error_code =3D=3D
> uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {
>
>                               log_printf("error: timeout while streaming"=
,
> error_lvl, __FILE__, __LINE__);
>
>                               break;
>
>                            }
>
>                            if (md.error_code =3D=3D
> uhd::rx_metadata_t::ERROR_CODE_OVERFLOW) {
>
>                                          if (overflow_message) {
>
>                                                        overflow_message =
=3D
> false;
>
>                                                        log_printf("error:
> overflow detected", error_lvl, __FILE__, __LINE__);
>
>                                          }
>
>                                          continue;
>
>                            }
>
>                            if (md.error_code !=3D
> uhd::rx_metadata_t::ERROR_CODE_NONE){
>
>                                          char msg[100]=3D{0x00};
>
>                                          sprintf(msg,"error:
> %s",md.strerror());
>
>                                          log_printf(msg , error_lvl,
> __FILE__, __LINE__);
>
>                            }
>
>                            total_samps_recvd+=3Dnum_rx_samps;
>
> #if 1
>
>                            //Read IQ samples from usrp and store the in
> the FILE
>
>                            for(int32_t i=3D0;i<max_channels;i++) {
>
>                                          FILE *fp =3D
> fopen(file_name[i],"a+");
>
>                                          size_t len =3D
> fwrite(&buffer_data[i].front(), sizeof(std::complex<float>), num_rx_samps=
,
> fp);
>
>                                          fclose(fp);
>
>                            }
>
> #endif
>
> #if 0
>
>                            //Read IQ samples from usrp and store the in
> the FILE
>
>                            for(int32_t i=3D0;i<max_channels;i++) {
>
>                                          switch(i) {
>
>                                          case 0: memcpy(array1[counter],
> &buffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break=
;
>
>                                          case 1: memcpy(array2[counter],
> &buffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break=
;
>
>                                          }
>
>                            }
>
>                            counter++;
>
> #endif
>
>               }
>
>               fprintf(stderr, "total samples received file: %d\n",
> total_samps_recvd);
>
>               log_printf("warning: stopping streaming mode", error_lvl,
> __FILE__, __LINE__);
>
>               log_printf("warning: buffer flush started!", error_lvl,
> __FILE__, __LINE__);
>
>               uhd::stream_cmd_t
> stream_cmd_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
>
>               rx_stream->issue_stream_cmd(stream_cmd_stop);
>
>               //std::cout << "total_samps_recvd : " << total_samps_recvd
> << "  total_no_of_samps : " << total_no_of_samps << "\n";
>
> #if 0
>
>               constexpr double timeout { 0.010 }; //10ms
>
>               static std::complex<short> dummy_buffer[50000000];
>
>               static uhd::rx_metadata_t dummy_meta { };
>
>               while (rx_stream->recv(dummy_buffer, 50000000, dummy_meta,
> timeout)) {}
>
>               uhd_src->clear_command_time(); //Reset all time counters
> untill next tune!!
>
>               log_printf("warning: buffer flush completed!", error_lvl,
> __FILE__, __LINE__);
>
> #endif
>
> }
>
>
>
>
>
> Hoping for an early reply.
>
>
>
> Regards
>
> Snehasish
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>

--0000000000001eec3b05c33fde7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgU25laGFzaXNoLDxkaXY+PGJyPjwvZGl2PjxkaXY+V2l0aCBhIFgz
MTAsIGNhbGxpbmcgc2V0X3JhdGUoKSBvbiB0aGUgcmFkaW8gYmxvY2sgY29udHJvbGxlciBkb2Vz
biYjMzk7dCBzZXQgdGhlIHNhbXBsZSByYXRlLiBZb3UgbmVlZCBhIEREQyBibG9jayBpbnN0ZWFk
LCBhbmQgeW91JiMzOTtsbCB3YW50IHRvIGNhbGzCoHNldF9vdXRwdXRfcmF0ZSgpIHRvIHNldCB0
aGUgZGVzaXJlZCBzYW1wbGUgcmF0ZS4gVHJ5IHRoZSBmbG93Z3JhcGggUmFkaW8gUlgtJmd0O0RE
Qy0mZ3Q7RklSIGZpbHRlci0mZ3Q7SG9zdMKgYW5kIHNlZSBpZiB0aGF0IHdvcmtzLiBJIHdvdWxk
IGF2b2lkIHRoZSBETUEgRklGTyB1bmxlc3MgeW91IGFic29sdXRlbHnCoG5lZWQgaXQsIGFzIHRo
ZSBibG9jayBpcyBzb21ld2hhdCBmaW5pY2t5LjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+Sm9u
YXRob248L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJs
dHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBXZWQsIE1heSAyNiwgMjAyMSBhdCAyOjE2IFBNIFNu
ZWhhc2lzaCBLYXIgJmx0OzxhIGhyZWY9Im1haWx0bzpzbmVoYXNpc2guY3NlQGxpdmUuY29tIj5z
bmVoYXNpc2guY3NlQGxpdmUuY29tPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3Rl
IGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij4NCg0K
DQoNCg0KDQo8ZGl2IGxhbmc9IkVOLUlOIiBzdHlsZT0ib3ZlcmZsb3ctd3JhcDogYnJlYWstd29y
ZDsiPg0KPGRpdiBjbGFzcz0iZ21haWwtbV81MTQ0NjE4NTIzMTg0NjkzNjc4V29yZFNlY3Rpb24x
Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5ObywgSSB0cmllZCBt
b2RpZnlpbmcgaXQuIEkgaGF2ZSBhdHRhY2hlZCB0aGUgc2FtZSBmb3IgeW91ciByZWZlcmVuY2Uu
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPlJlZ2FyZHM8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+U25laGFzaXNoPC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5TZW50IGZyb20gPGEgaHJlZj0iaHR0cHM6Ly9nby5taWNyb3NvZnQuY29tL2Z3
bGluay8/TGlua0lkPTU1MDk4NiIgdGFyZ2V0PSJfYmxhbmsiPg0KTWFpbDwvYT4gZm9yIFdpbmRv
d3MgMTA8L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPg0KPGRp
diBzdHlsZT0iYm9yZGVyLXJpZ2h0Om5vbmU7Ym9yZGVyLWJvdHRvbTpub25lO2JvcmRlci1sZWZ0
Om5vbmU7Ym9yZGVyLXRvcDoxcHQgc29saWQgcmdiKDIyNSwyMjUsMjI1KTtwYWRkaW5nOjNwdCAw
Y20gMGNtIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJib3JkZXI6bm9uZTtwYWRkaW5n
OjBjbSI+PGI+RnJvbTogPC9iPjxhIGhyZWY9Im1haWx0bzpqb25hdGhvbi5wZW5kbHVtQGV0dHVz
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPkpvbmF0aG9uIFBlbmRsdW08L2E+PGJyPg0KPGI+U2VudDog
PC9iPjI2IE1heSAyMDIxIDIzOjM2PGJyPg0KPGI+VG86IDwvYj48YSBocmVmPSJtYWlsdG86c25l
aGFzaXNoLmNzZUBsaXZlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlNuZWhhc2lzaCBLYXI8L2E+PGJy
Pg0KPGI+Q2M6IDwvYj48YSBocmVmPSJtYWlsdG86cmtvc3NsZXJAbmQuZWR1IiB0YXJnZXQ9Il9i
bGFuayI+Um9iIEtvc3NsZXI8L2E+OyA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj4NCnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9h
Pjxicj4NCjxiPlN1YmplY3Q6IDwvYj5SZTogW1VTUlAtdXNlcnNdIFJlOiBUaW1lb3V0IHdoaWxl
IHN0cmVhbWluZyBJUSBzYW1wbGVzIHRvIGhvc3QgaW4gUkZOT0M8L3A+DQo8L2Rpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+SGkgU25laGFzaXNoLDx1PjwvdT48dT48L3U+PC9wPg0KPGRpdj4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5EbyB5b3UgZ2V0IGEgdGltZW91dCB3aGVuIGNvbm5lY3RpbmcgdGhlIEZJ
UiBmaWx0ZXIgdmlhIHJmbm9jX3J4X3RvX2ZpbGUmIzM5O3MgJnF1b3Q7LS1ibG9jay1pZCZxdW90
OyBvcHRpb24/IFdoYXQgYWJvdXQgdGhlIEZJRk8gYmxvY2s/IEFsc28sIEkgd291bGQgaGlnaGx5
IHN1Z2dlc3QgdXBkYXRpbmcgdG8gdGhlIFVIRCAzLjE1IExUUyBicmFuY2guPHU+PC91Pjx1Pjwv
dT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48
L3U+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+wqBKb25hdGhvbjx1
PjwvdT48dT48L3U+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1
PjwvdT7CoDx1PjwvdT48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPk9u
IFdlZCwgTWF5IDI2LCAyMDIxIGF0IDE6MjAgUE0gU25laGFzaXNoIEthciAmbHQ7PGEgaHJlZj0i
bWFpbHRvOnNuZWhhc2lzaC5jc2VAbGl2ZS5jb20iIHRhcmdldD0iX2JsYW5rIj5zbmVoYXNpc2gu
Y3NlQGxpdmUuY29tPC9hPiZndDsgd3JvdGU6PHU+PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjxi
bG9ja3F1b3RlIHN0eWxlPSJib3JkZXItdG9wOm5vbmU7Ym9yZGVyLXJpZ2h0Om5vbmU7Ym9yZGVy
LWJvdHRvbTpub25lO2JvcmRlci1sZWZ0OjFwdCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRp
bmc6MGNtIDBjbSAwY20gNnB0O21hcmdpbi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowY20iPg0K
PGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhlbGxvIEpv
bmF0aGFuwqA8dT48L3U+PHU+PC91PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5UcmllZCB3aXRoIHRoZSBleGFtcGxlIGFzIHlvdSBzYWlkLCBidXQgaWYgb25seSB0
cnkgdG8gc3RyZWFtIGZyb20gcmZub2MgcmFkaW8gSSBhbSBhYmxlIGdldCBJUSBzYW1wbGVzIGlu
IHRoZSBob3N0IC4gQnV0IGFzIHNvb24gYXMgSSBjb25uZWN0IGEgZmlyIGZpbHRlciB3aXRoIGN1
dG9mZiBmcmVxdWVuY3kgMjBNSHogYW5kIHRyYW5zaXRpb24gNU1IeiwgaXQgZ2l2ZXMgYSB0aW1l
b3V0IGVycm9yLjx1PjwvdT48dT48L3U+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPk15IGN1cnJlbnQgZmxvd2dyYXBoIGxvb2tzIHNvbWV0aGluZyBsaWtlIHRoaXM6
PHU+PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5S
YWRpbz0mZ3Q7Zmlmbz0mZ3Q7ZmlyIGZpbHRlcj0mZ3Q7Zmlmbz0mZ3Q7IGhvc3Q8dT48L3U+PHU+
PC91PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1
PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5SZWdhcmRzwqA8
dT48L3U+PHU+PC91PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlNu
ZWhhc2lzaMKgPHU+PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPg0KPC9kaXY+DQo8ZGl2IGlkPSJnbWFpbC1tXzUx
NDQ2MTg1MjMxODQ2OTM2NzhnbWFpbC1tXy0xMzQ5MTcxNDIzMDk4OTQ2ODIzbXMtb3V0bG9vay1t
b2JpbGUtc2lnbmF0dXJlIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkdldCA8YSBocmVmPSJodHRw
czovL2FrYS5tcy9vMHVrZWYiIHRhcmdldD0iX2JsYW5rIj5PdXRsb29rIGZvciBpT1M8L2E+PHU+
PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48aW1nIGJvcmRlcj0iMCIgd2lkdGg9IjU0OSIgaGVpZ2h0PSIyIiBzdHlsZT0id2lkdGg6
IDUuNzE2NmluOyBoZWlnaHQ6IDAuMDI1aW47IiBpZD0iZ21haWwtbV81MTQ0NjE4NTIzMTg0Njkz
Njc4SG9yaXpvbnRhbF94MDAyMF9MaW5lX3gwMDIwXzEiIHNyYz0iY2lkOjE3OWE5ZTZlN2NiMWM0
NTRlYTUxIj48dT48L3U+PHU+PC91PjwvcD4NCjxkaXYgaWQ9ImdtYWlsLW1fNTE0NDYxODUyMzE4
NDY5MzY3OGdtYWlsLW1fLTEzNDkxNzE0MjMwOTg5NDY4MjNkaXZScGx5RndkTXNnIj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJjb2xvcjpibGFjayI+RnJvbTo8L3NwYW4+
PC9iPjxzcGFuIHN0eWxlPSJjb2xvcjpibGFjayI+IEpvbmF0aG9uIFBlbmRsdW0gJmx0OzxhIGhy
ZWY9Im1haWx0bzpqb25hdGhvbi5wZW5kbHVtQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmpv
bmF0aG9uLnBlbmRsdW1AZXR0dXMuY29tPC9hPiZndDs8YnI+DQo8Yj5TZW50OjwvYj4gRnJpZGF5
LCBNYXkgMjEsIDIwMjEgMTI6MTM6NDggQU08YnI+DQo8Yj5Ubzo8L2I+IFNuZWhhc2lzaCBLYXIg
Jmx0OzxhIGhyZWY9Im1haWx0bzpzbmVoYXNpc2guY3NlQGxpdmUuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+c25laGFzaXNoLmNzZUBsaXZlLmNvbTwvYT4mZ3Q7PGJyPg0KPGI+Q2M6PC9iPiBSb2IgS29z
c2xlciAmbHQ7PGEgaHJlZj0ibWFpbHRvOnJrb3NzbGVyQG5kLmVkdSIgdGFyZ2V0PSJfYmxhbmsi
PnJrb3NzbGVyQG5kLmVkdTwvYT4mZ3Q7Ow0KPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+ICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KPGI+U3Vi
amVjdDo8L2I+IFJlOiBbVVNSUC11c2Vyc10gUmU6IFRpbWVvdXQgd2hpbGUgc3RyZWFtaW5nIElR
IHNhbXBsZXMgdG8gaG9zdCBpbiBSRk5PQzwvc3Bhbj4NCjx1PjwvdT48dT48L3U+PC9wPg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgPHU+PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IZWxsbyBTbmVoYXNpc2gs
IDx1PjwvdT48dT48L3U+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7C
oDx1PjwvdT48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5JIHdvdWxk
IHN1Z2dlc3Qgc3RhcnRpbmcgd2l0aCBhIGtub3duIHdvcmtpbmcgaW4tdHJlZSBleGFtcGxlIGxp
a2UgcmZub2NfcnhfdG9fZmlsZS5jcHAuIEl0IGhhcyBhIHNlY3Rpb24gdGhhdMKgY29ubmVjdHMg
YSB1c2VyIGRlZmluZWQgUkZOb0MgYmxvY2ssIGFuZCB5b3UgY2FuIGVhc2lseSBtb2RpZnkgdGhh
dCB0byBpbnN0ZWFkIGNvbm5lY3QgdGhlIEZJRk9zIGFuZCBGSVIgZmlsdGVyLjx1PjwvdT48dT48
L3U+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+
PC91PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkpvbmF0aG9uPHU+
PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+
PC91PsKgPHU+PC91PjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24g
VGh1LCBNYXkgMjAsIDIwMjEgYXQgNDozMSBBTSBTbmVoYXNpc2ggS2FyICZsdDs8YSBocmVmPSJt
YWlsdG86c25laGFzaXNoLmNzZUBsaXZlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNuZWhhc2lzaC5j
c2VAbGl2ZS5jb208L2E+Jmd0OyB3cm90ZTo8dT48L3U+PHU+PC91PjwvcD4NCjwvZGl2Pg0KPGJs
b2NrcXVvdGUgc3R5bGU9ImJvcmRlci10b3A6bm9uZTtib3JkZXItcmlnaHQ6bm9uZTtib3JkZXIt
Ym90dG9tOm5vbmU7Ym9yZGVyLWxlZnQ6MXB0IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGlu
ZzowY20gMGNtIDBjbSA2cHQ7bWFyZ2luLWxlZnQ6NC44cHQ7bWFyZ2luLXJpZ2h0OjBjbSI+DQo8
ZGl2Pg0KPGRpdj4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5IZWxsbyBSb2I8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij5UcmllZCB0aGF0IGJ1dCBpdCBkaWRu4oCZdCB3b3JrLiBJIGFtIHVzaW5nIHRoZSBzdGFuZGFy
ZCBSRk5PQyBmaXIgZmlsdGVyIGFuZCByYWRpby48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5SZWdhcmRzPC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5TbmVoYXNpc2g8L3NwYW4+PC9wPg0KPHA+wqA8
L3A+DQo8cD5TZW50IGZyb20gPGEgaHJlZj0iaHR0cHM6Ly9nby5taWNyb3NvZnQuY29tL2Z3bGlu
ay8/TGlua0lkPTU1MDk4NiIgdGFyZ2V0PSJfYmxhbmsiPg0KTWFpbDwvYT4gZm9yIFdpbmRvd3Mg
MTA8L3A+DQo8cD7CoDwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlci1yaWdodDpub25lO2JvcmRlci1i
b3R0b206bm9uZTtib3JkZXItbGVmdDpub25lO2JvcmRlci10b3A6MXB0IHNvbGlkIHJnYigyMjUs
MjI1LDIyNSk7cGFkZGluZzozcHQgMGNtIDBjbSI+DQo8cD48Yj5Gcm9tOiA8L2I+PGEgaHJlZj0i
bWFpbHRvOnJrb3NzbGVyQG5kLmVkdSIgdGFyZ2V0PSJfYmxhbmsiPlJvYiBLb3NzbGVyPC9hPjxi
cj4NCjxiPlNlbnQ6IDwvYj4xOCBNYXkgMjAyMSAyMTozOTxicj4NCjxiPlRvOiA8L2I+PGEgaHJl
Zj0ibWFpbHRvOnNuZWhhc2lzaC5jc2VAbGl2ZS5jb20iIHRhcmdldD0iX2JsYW5rIj5TbmVoYXNp
c2ggS2FyPC9hPjxicj4NCjxiPkNjOiA8L2I+PGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+PGJyPg0KPGI+U3ViamVjdDogPC9iPlJlOiBbVVNSUC11c2Vyc10gVGltZW91dCB3aGlsZSBz
dHJlYW1pbmcgSVEgc2FtcGxlcyB0byBob3N0IGluIFJGTk9DPC9wPg0KPC9kaXY+DQo8cD7CoDwv
cD4NCjxkaXY+DQo8cD5QZXJoYXBzIHRyeSBpc3N1ZV9zdHJlYW1fY21kIG9uIHRoZSByYWRpbyBj
dHJsIHJhdGhlciB0aGFuIHRoZSByeF9zdHJlYW1lci48L3A+DQo8ZGl2Pg0KPHA+Um9iPC9wPg0K
PC9kaXY+DQo8L2Rpdj4NCjxwPsKgPC9wPg0KPGRpdj4NCjxkaXY+DQo8cD5PbiBNb24sIE1heSAx
NywgMjAyMSBhdCAxMjo0NSBQTSBTbmVoYXNpc2ggS2FyICZsdDs8YSBocmVmPSJtYWlsdG86c25l
aGFzaXNoLmNzZUBsaXZlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNuZWhhc2lzaC5jc2VAbGl2ZS5j
b208L2E+Jmd0OyB3cm90ZTo8L3A+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXIt
dG9wOm5vbmU7Ym9yZGVyLXJpZ2h0Om5vbmU7Ym9yZGVyLWJvdHRvbTpub25lO2JvcmRlci1sZWZ0
OjFwdCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmc6MGNtIDBjbSAwY20gNnB0O21hcmdp
bjo1cHQgMGNtIDVwdCA0LjhwdCI+DQo8ZGl2Pg0KPGRpdj4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij5IZWxsbyA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5JIGFtIHVzaW5nIHRoZSBiZWxvdyBjb2RlIHRvIHN0cmVh
bSBJUSBzYW1wbGVzIHRvIGhvc3QgdXNpbmcgUkZOT0MsIGJ1dCB3aGlsZSBzdHJlYW1pbmcgSSBh
bSBnZXR0aW5nIHRpbWVvdXQuIE15IHJmbm9jIGdyYXBoIGxvb2tzIHNvbWV0aGluZyBsaWtlIHRo
aXM6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5SYWRpb18wPSZndDtmaWZvPSZn
dDtmaXJfZmlsdGVyPSZndDtmaWZvPSZndDtob3N0PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj5SYWRpb18xPSZndDtmaWZvPSZndDtmaXJfZmlsdGVyPSZndDtmaWZvPSZndDtob3N0
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+V2l0aCB0aGUgYWJvdmUgZmxvd2dyYXBoIHdlIGFyZSBhYmxlIHRvIHN0
cmVhbSBzYW1wbGVzIGluIGdudXJhZGlvLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+wqA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPlNhbXBsZSByYXRlIHVzZWQ6
IDEwMG1zcHM8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPkhvc3QgUEMgY29uZmln
dXJhdGlvbjogaW50ZWwgaTcgcHJvY2Vzc29yIDk8c3VwPnRoPC9zdXA+IGdlbjwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJBTTogOEdCPC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5JbnRlcmZhY2U6IFBDSUUgZXhwcmVzczwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+VUhEIHZlcnNpb246IFVIRF8zLjE0LjEuMC0w
LXVua25vd248L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5CZWxvdyBpcyB0aGUgb3V0cHV0IG9mwqAgdWhkX3VzcnBf
cHJvYmU6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+On4vRGVza3RvcC91aGRfcmZub2NfZmlsZV93cml0dGVyL0Rl
YnVnJCB1aGRfdXNycF9wcm9iZSA8L3NwYW4+DQo8L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsg
VUhEXzMuMTQuMS4wLTAtdW5rbm93bjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
W0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gW1gzMDBdIENvbm5lY3RpbmcgdG8gbml1c3Jw
cmlvcnBjIGF0IGxvY2FsaG9zdDo1NDQ0Li4uPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj5bSU5GT10gW1gzMDBdIFVzaW5nIExWQklUWCBiaXRmaWxlIC91c3IvbG9jYWwvc2hhcmUv
dWhkL2ltYWdlcy91c3JwX3gzMTBfZnBnYV9YRy5sdmJpdHguLi48L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHo8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbR1BTXSBGb3VuZCBhbiBpbnRl
cm5hbCBHUFNETzogTENfWE8sIEZpcm13YXJlIFJldiAwLjkyOWE8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPltXQVJOSU5HXSBbR1BTXSB1cGRhdGVfY2FjaGU6IE1hbGZvcm1lZCBH
UFNETyBzdHJpbmc6IExDX1hPLCBGaXJtd2FyZSBSZXYgMC45MjlhPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRG1hRklGT18wXSBJbml0aWFsaXppbmcgYmxvY2sg
Y29udHJvbCAoTk9DIElEOiAweEYxRjBEMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRG1hRklGT18wXSBCSVNUIHBhc3NlZCAoVGhyb3VnaHB1
dDogMTMxMSBNQi9zKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFsw
L0RtYUZJRk9fMF0gQklTVCBwYXNzZWQgKFRocm91Z2hwdXQ6IDEzMTUgTUIvcyk8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9SYWRpb18wXSBJbml0aWFsaXppbmcg
YmxvY2sgY29udHJvbCAoTk9DIElEOiAweDEyQUQxMDAwMDAwMDAwMDEpPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvUmFkaW9fMV0gSW5pdGlhbGl6aW5nIGJsb2Nr
IGNvbnRyb2wgKE5PQyBJRDogMHgxMkFEMTAwMDAwMDAwMDAxKTwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0REQ18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJv
bCAoTk9DIElEOiAweEREQzAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj5bSU5GT10gWzAvRERDXzFdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0Mg
SUQ6IDB4RERDMDAwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PltJTkZPXSBbMC9GSVJfMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhG
MTEyMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9d
IFswL0ZJUl8xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEYxMTIwMDAw
MDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRFVD
XzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAw
MCk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9EVUNfMV0gSW5p
dGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEMEMwMDAwMDAwMDAwMDAwKTwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0ZJRk9fMF0gSW5pdGlhbGl6
aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0ZJRk9fMV0gSW5pdGlhbGl6aW5nIGJs
b2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0ZJRk9fMl0gSW5pdGlhbGl6aW5nIGJsb2NrIGNv
bnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+W0lORk9dIFswL0ZJRk9fM10gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wg
KE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+W1dBUk5JTkddIFtYMzAwXSBDYW5ub3QgdXBkYXRlIG1hc3RlciBjbG9jayByYXRlISBY
MzAwIFNlcmllcyBkb2VzIG5vdCBhbGxvdyBjaGFuZ2luZyB0aGUgY2xvY2sgcmF0ZSBkdXJpbmcg
cnVudGltZS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj4vPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoMKgwqDCoMKgIERldmljZTogWC1TZXJpZXMgRGV2aWNlPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKg
wqDCoCBNYm9hcmQ6IFgzMTA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHJldmlzaW9uOiAxMTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgcmV2aXNpb25fY29tcGF0OiA3PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCBwcm9kdWN0OiAzMDk2MDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgbWFjLWFkZHIwOiAwMDo4MDoyZjoxODpkZTo0ZDwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgbWFjLWFkZHIxOiAwMDo4MDoy
ZjoxODpkZTo0ZTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
Z2F0ZXdheTogMTkyLjE2OC4xMC4xPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCBpcC1hZGRyMDogMTkyLjE2OC4xMC4yPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzdWJuZXQwOiAyNTUuMjU1LjI1NS4wPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBpcC1hZGRyMTogMTkyLjE2OC4yMC4y
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzdWJuZXQxOiAy
NTUuMjU1LjI1NS4wPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCBpcC1hZGRyMjogMTkyLjE2OC4zMC4yPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCBzdWJuZXQyOiAyNTUuMjU1LjI1NS4wPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBpcC1hZGRyMzogMTkyLjE2OC40MC4yPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzdWJuZXQzOiAyNTUuMjU1LjI1
NS4wPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzZXJpYWw6
IDMxNEIyOTM8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIEZX
IFZlcnNpb246IDYuMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgRlBHQSBWZXJzaW9uOiAzNS4xPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCBGUEdBIGdpdCBoYXNoOiBmZmZmZmZmLWRpcnR5PC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBSRk5vQyBjYXBhYmxlOiBZZXM8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgVGltZSBzb3VyY2VzOsKgIGludGVybmFsLCBleHRl
cm5hbCwgZ3BzZG88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IENsb2NrIHNvdXJjZXM6IGludGVybmFsLCBleHRlcm5hbCwgZ3BzZG88L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIFNlbnNvcnM6IGdwc19ncGdnYSwgZ3BzX2dw
cm1jLCBncHNfdGltZSwgZ3BzX2xvY2tlZCwgZ3BzX3NlcnZvLCByZWZfbG9ja2VkPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBEYm9hcmQ6IEE8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIElEOiBUd2luUlggUmV2
IEIgKDB4MDA5Myk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIFNlcmlhbDogMzE0N0ZCODwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggRnJvbnRlbmQ6IDA8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IFR3aW5SWCBS
WDA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHwgwqDCoHzC
oMKgIEFudGVubmFzOiBSWDEsIFJYMjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgU2Vuc29yczogbG9fbG9ja2VkPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAx
MC4wMDAgdG8gNjAwMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGFsbDogMC4wIHRvIDkzLjAgc3RlcCAx
LjAgZEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
IHzCoMKgIEJhbmR3aWR0aCByYW5nZTogODAwMDAwMDAuMCB0byA4MDAwMDAwMC4wIHN0ZXAgMC4w
IEh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8
wqDCoCBDb25uZWN0aW9uIFR5cGU6IElJPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExPIG9mZnNldDogTm88L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJYIEZyb250
ZW5kOiAxPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oCB8wqDCoCBOYW1lOiBUd2luUlggUlgxPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBBbnRlbm5hczogUlgxLCBSWDI8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNvcnM6IGxv
X2xvY2tlZDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgfMKgwqAgRnJlcSByYW5nZTogMTAuMDAwIHRvIDYwMDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBh
bGw6IDAuMCB0byA5My4wIHN0ZXAgMS4wIGRCPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDgwMDAwMDAwLjAg
dG8gODAwMDAwMDAuMCBzdGVwIDAuMCBIejwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQ29ubmVjdGlvbiBUeXBlOiBRUTwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgVXNlcyBMTyBv
ZmZzZXQ6IE5vPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8
wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
wqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
fMKgwqDCoMKgwqDCoCBSWCBDb2RlYzogQTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogYWRzNjJwNDg8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFuZ2UgZGln
aXRhbDogMC4wIHRvIDYuMCBzdGVwIDAuNSBkQjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgwqDCoMKgwqAgUlggRGJvYXJkOiBCPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDogVHdpblJYIFJldiBCICgweDAwOTMpPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBTZXJpYWw6IDMxNDdG
QzE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDC
oCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKg
wqDCoCDCoFJYIEZyb250ZW5kOiAwPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBUd2luUlggUlgwPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBBbnRlbm5hczogUlgxLCBS
WDI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzC
oMKgIFNlbnNvcnM6IGxvX2xvY2tlZDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgRnJlcSByYW5nZTogMTAuMDAwIHRvIDYwMDAuMDAwIE1I
ejwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKg
wqAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA5My4wIHN0ZXAgMS4wIGRCPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBCYW5kd2lkdGggcmFu
Z2U6IDgwMDAwMDAwLjAgdG8gODAwMDAwMDAuMCBzdGVwIDAuMCBIejwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQ29ubmVjdGlvbiBUeXBl
OiBJSTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
fMKgwqAgVXNlcyBMTyBvZmZzZXQ6IE5vPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBGcm9udGVuZDogMTwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVHdpblJY
IFJYMTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
fMKgwqAgQW50ZW5uYXM6IFJYMSwgUlgyPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBTZW5zb3JzOiBsb19sb2NrZWQ8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEgcmFuZ2U6
IDEwLjAwMCB0byA2MDAwLjAwMCBNSHo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFuZ2UgYWxsOiAwLjAgdG8gOTMuMCBzdGVw
IDEuMCBkQjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgfMKgwqAgQmFuZHdpZHRoIHJhbmdlOiA4MDAwMDAwMC4wIHRvIDgwMDAwMDAwLjAgc3RlcCAw
LjAgSHo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
IHzCoMKgIENvbm5lY3Rpb24gVHlwZTogUVE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBObzwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggQ29k
ZWM6IEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
IHzCoMKgIE5hbWU6IGFkczYycDQ4PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGRpZ2l0YWw6IDAuMCB0byA2LjAgc3Rl
cCAwLjUgZEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDC
oCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIERi
b2FyZDogQTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgSUQ6IFVua25vd24gKDB4MDA5Mik8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgIFNlcmlhbDogMzE0N0ZCODwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggRnJvbnRlbmQ6IDA8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5h
bWU6IFVua25vd24gKDB4MDA5MikgLSAwPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBBbnRlbm5hczogPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBTZW5zb3JzOiA8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEgcmFu
Z2U6IDAuMDAwIHRvIDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiBFbGVtZW50czogTm9uZTwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQmFuZHdpZHRoIHJh
bmdlOiAwLjAgdG8gMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElRPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExP
IG9mZnNldDogTm88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqDCoCAvPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8IMKgwqB8wqDC
oCB8wqDCoMKgwqDCoMKgIFRYIENvZGVjOiBBPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBhZDkxNDY8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gRWxlbWVudHM6
IE5vbmU8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDCoCBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIERib2Fy
ZDogQjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
SUQ6IFVua25vd24gKDB4MDA5Mik8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIFNlcmlhbDogMzE0N0ZDMTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggRnJvbnRlbmQ6IDA8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6
IFVua25vd24gKDB4MDA5MikgLSAwPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBBbnRlbm5hczogPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqAgwqB8wqDCoCB8wqDCoCBTZW5zb3JzOiA8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEgcmFuZ2U6
IDAuMDAwIHRvIDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiBFbGVtZW50czogTm9uZTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQmFuZHdpZHRoIHJhbmdl
OiAwLjAgdG8gMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElRPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExPIG9m
ZnNldDogTm88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzC
oMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDC
oCAvPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8
wqDCoMKgwqDCoMKgIFRYIENvZGVjOiBCPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBhZDkxNDY8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gRWxlbWVudHM6IE5v
bmU8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDCoCBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJGTm9DIGJsb2Nr
cyBvbiB0aGlzIGRldmljZTo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgKiBEbWFGSUZPXzA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgICogUmFkaW9fMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBSYWRpb18xPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEREQ18wPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEREQ18xPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEZJUl8wPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEZJUl8xPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIERVQ18wPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIERVQ18xPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEZJRk9fMDwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzE8
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklG
T18yPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAq
IEZJRk9fMzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPlNvdXJjZSBjb2RlOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnZvaWQgdWhk
X2ludGVyZmFjZTo6c3RhcnRfc3RyZWFtbWluZyhpbnQzMl90IG51bV9zYW1wbGVzX3RvX3JlY2Vp
dmUsIGludDE2X3QgbWF4X2NoYW5uZWxzLCB1aW50NjRfdCBzYW1wbGVzX3Blcl9idXJzdCwgaW50
MzJfdCB0b3RhbF9ub19vZl9zYW1wcykgezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpyeF9tZXRhZGF0YV90IG1kOzwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ym9vbCBvdmVyZmxvd19tZXNzYWdlID0gdHJ1ZTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRyeSB7PC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVoZDo6cmZub2M6OmdyYXBoOjpzcHRyIHJ4X2dyYXBoID0gdXNycF9yZm5v
Yy0mZ3Q7Y3JlYXRlX2dyYXBoKCZxdW90O2FudGlkcm9uZV9yeF9jaGFpbiZxdW90Oyk7PC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVzcnBfcmZub2MtJmd0O2NsZWFyKCk7PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QocmFkaW9fY3RybFsw
XS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpZm9fY3RybFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkpOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4X2dyYXBoLSZndDtjb25uZWN0KGZpZm9f
Y3RybFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpcl9jdHJsWzBdLSZndDtnZXRfYmxvY2tfaWQo
KSk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3Qo
ZmlyX2N0cmxbMF0tJmd0O2dldF9ibG9ja19pZCgpLCBmaWZvX2N0cmxbMV0tJmd0O2dldF9ibG9j
a19pZCgpKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QocmFkaW9fY3RybFsxXS0m
Z3Q7Z2V0X2Jsb2NrX2lkKCksIGZpZm9fY3RybFsyXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkpOzwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4X2dyYXBoLSZndDtjb25uZWN0KGZpZm9fY3Ry
bFsyXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpcl9jdHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKSk7
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QoZmly
X2N0cmxbMV0tJmd0O2dldF9ibG9ja19pZCgpLCBmaWZvX2N0cmxbM10tJmd0O2dldF9ibG9ja19p
ZCgpKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJ4X2dyYXBoLSZndDtjb25uZWN0KHJhZGlvX2N0cmxbMF0tJmd0O2dldF9ibG9j
a19pZCgpLCAwLCBmaWZvX2N0cmxbMV0tJmd0O2dldF9ibG9ja19pZCgpLCAwKTs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfSBjYXRjaCAoY29uc3Qgc3RkOjpleGNlcHRpb24mYW1wOyBleCkgezwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsweDAwfTs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Zihtc2csJnF1b3Q7ZXJyb3I6IHVuYWJsZSB0byBj
cmVhdGUvc2V0IGEgcmFkaW8vcGFyYW1ldGVyICVzJnF1b3Q7LCBleC53aGF0KCkpOzwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVf
XywgX19MSU5FX18pOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpkZXZpY2VfYWRkcl90IHN0cmVhbV9hcmdzX3Jm
bm9jOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RkOjp2ZWN0b3ImbHQ7c3RkOjpzdHJpbmcmZ3Q7IGJsb2NrX3BvcnR7JnF1b3Q7
MCZxdW90OywgJnF1b3Q7MSZxdW90O307PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1fYXJnc19yZm5vY1smcXVvdDtibG9j
a19pZCZxdW90O10gPcKgwqAgZmlmb19jdHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKS50b19zdHJp
bmcoKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cmVhbV9hcmdzX3Jmbm9jWyZxdW90O2Jsb2NrX3BvcnQmcXVvdDtdID0gYmxv
Y2tfcG9ydFswXTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8vc3RyZWFtX2FyZ3NfcmZub2NbJnF1b3Q7YmxvY2tfaWQmcXVvdDtd
ID0gZmlmb19jdHJsWzNdLSZndDtnZXRfYmxvY2tfaWQoKS50b19zdHJpbmcoKTs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3Ry
ZWFtX2FyZ3NfcmZub2NbJnF1b3Q7YmxvY2tfcG9ydCZxdW90O10gPSBibG9ja19wb3J0WzFdOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdWhkOjpzdHJlYW1fYXJnc190IHN0cmVhbV9hcmdzKCZxdW90O3NjMTYmcXVvdDssJnF1b3Q7
c2MxNiZxdW90Oyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1fYXJncy5hcmdzID0gc3RyZWFtX2FyZ3NfcmZub2M7PC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzaXplX3Qgc3BwID0gcmFkaW9fY3RybFswXS0mZ3Q7Z2V0X2FyZ3MoKS5jYXN0Jmx0O3NpemVf
dCZndDsoJnF1b3Q7c3BwJnF1b3Q7LCBzcHApOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtX2FyZ3MuYXJnc1smcXVvdDtz
cHAmcXVvdDtdID0gYm9vc3Q6OmxleGljYWxfY2FzdCZsdDtzdGQ6OnN0cmluZyZndDsoc3BwKTsg
Ly9UT0RPOiBjb25zaWRlcmluZyAxMDAwIHNhbXBsZXMgYnV0IGNoZWNrPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByeF9zdHJlYW0g
PSB1aGRfc3JjLSZndDtnZXRfcnhfc3RyZWFtKHN0cmVhbV9hcmdzKTs8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciBtc2dbMTAwXT17MHgwMH07PC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNwcmludGYobXNnLCAmcXVvdDtpbmZvOiBEYWVtb24gbGF1bmNoZWQg
d2l0aCBwaWQgJWQmcXVvdDssIGdldHBpZCgpKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbG9nX3ByaW50Zihtc2csIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8vc2FtcGxlc19wZXJfYnVyc3QgPSAxMDAwOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpzdHJlYW1fY21kX3Qgc3Ry
ZWFtX2NtZCgvKnVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVEFSVF9DT05USU5VT1VT
Ki8gdWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX05VTV9TQU1QU19BTkRfRE9ORSk7PC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJlYW1fY21kLm51bV9zYW1wc8KgID0gdG90YWxfbm9fb2Zfc2FtcHM7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1f
Y21kLnN0cmVhbV9ub3cgPSB0cnVlOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zdHJlYW1fY21kLnRpbWVfc3BlYyA9wqAgdWhk
X3NyYy0mZ3Q7Z2V0X3RpbWVfbm93KCkgKyA6OnVoZDo6dGltZV9zcGVjX3QoMC4xKTsvL3RpbWVf
c3BlYzs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJ4X3N0cmVhbS0mZ3Q7aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1fY21kKTs8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNhbXBsZXNfcGVyX2J1cnN0ID0gcnhfc3RyZWFtLSZndDtnZXRfbWF4X251bV9zYW1wcygpOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RkOjp2ZWN0b3ImbHQ7c3RkOjp2ZWN0b3ImbHQ7c3RkOjpjb21wbGV4Jmx0O2Zsb2F0Jmd0
OyZndDsmZ3Q7IGJ1ZmZlcl9kYXRhKG1heF9jaGFubmVscywgc3RkOjp2ZWN0b3ImbHQ7c3RkOjpj
b21wbGV4Jmx0O2Zsb2F0Jmd0OyAmZ3Q7KHNhbXBsZXNfcGVyX2J1cnN0KSk7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGQ6OnZl
Y3RvciZsdDt2b2lkIComZ3Q7IGJ1ZmZzKG1heF9jaGFubmVscyk7PC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IoaW50OF90IGkg
PSAwO2kmbHQ7bWF4X2NoYW5uZWxzO2krKykgezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBidWZmc1tpXSA9ICZhbXA7YnVmZmVyX2RhdGFbaV0uZnJvbnQoKTs8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVpbnQ2
NF90IHRvdGFsX3NhbXBzX3JlY3ZkID0weDAwOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50MzJfdCB0b3RhbF9zaXplX3dyb3Rl
X3RvX2ZpbGUgPTB4MDA7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQzMl90IGNvdW50ZXIgPSAweDAwOzwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zdGQ6OmNv
bXBsZXgmbHQ7ZmxvYXQmZ3Q7IGFycmF5MVsxMDAwMDBdWzEwMDBde3sweDAwfX07PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3N0
ZDo6Y29tcGxleCZsdDtmbG9hdCZndDsgYXJyYXkyWzEwMDAwMF1bMTAwMF17ezB4MDB9fTs8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC8vZnByaW50ZihzdGRlcnIsJnF1b3Q7dG90YWwgbnVtIG9mIHNhbXBzICVkXG4mcXVvdDssIHRv
dGFsX25vX29mX3NhbXBzKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdoaWxlKCFzdG9wX3J4IGFuZCAoKHRvdGFsX3NhbXBzX3Jl
Y3ZkIT10b3RhbF9ub19vZl9zYW1wcykgb3IgKHRvdGFsX25vX29mX3NhbXBzPT0weDAwKSkpIHs8
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnVmZnMuY2xlYXIoKTs8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IG51bV9yeF9zYW1wcyA9IDB4MDA7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHRyeSB7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudW1fcnhfc2FtcHMgPSByeF9zdHJlYW0tJmd0O3Jl
Y3YoYnVmZnMsIHNhbXBsZXNfcGVyX2J1cnN0LCBtZCwgMS4wKTs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmKGVycm9yX2x2bD09Mykg
ezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgbXNnWzcwMF09ezB4MDB9Ozwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Zihtc2csJnF1b3Q7XG49PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PVxuwqAgTnVtYmVyIG9m
IHNhbXBsZXMgcmVjZWl2ZWQgJXVcbj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09JnF1b3Q7LCBudW1fcnhfc2FtcHMpOzwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYobXNnLCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJ
TkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zdGQ6OmNvdXQgJmx0OyZsdDsg
JnF1b3Q7dG90YWxfc2FtcHNfcmVjdmQgOiAmcXVvdDsgJmx0OyZsdDsgdG90YWxfc2FtcHNfcmVj
dmQgJmx0OyZsdDsgJnF1b3Q7wqAgdG90YWxfbm9fb2Zfc2FtcHMgOiAmcXVvdDsgJmx0OyZsdDsg
dG90YWxfbm9fb2Zfc2FtcHMgJmx0OyZsdDsgJnF1b3Q7XG4mcXVvdDs7PC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH0gY2F0Y2ggKGNvbnN0IHN0ZDo6ZXhjZXB0aW9uJmFtcDsgZXgp
ezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2hhciBtc2dbMTAwXT17MHgwMH07PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJpbnRmKG1zZywmcXVvdDtlcnJvcjogZXJyb3Ig
d2hpbGUgc3RyZWFtaW5nICVzJnF1b3Q7LCBleC53aGF0KCkpOzwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50Zihtc2csIGVy
cm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobWQuZXJyb3JfY29kZSA9PSB1
aGQ6OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfVElNRU9VVCkgezwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCDCoMKgIGxvZ19wcmludGYoJnF1b3Q7ZXJyb3I6IHRpbWVvdXQgd2hpbGUg
c3RyZWFtaW5nJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqAgYnJlYWs7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH08L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG1kLmVycm9yX2NvZGUg
PT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX09WRVJGTE9XKSB7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAob3ZlcmZs
b3dfbWVzc2FnZSkgezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG92ZXJmbG93X21lc3Nh
Z2UgPSBmYWxzZTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90
O2Vycm9yOiBvdmVyZmxvdyBkZXRlY3RlZCZxdW90OywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19M
SU5FX18pOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGludWU7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG1kLmVycm9yX2NvZGUgIT0gdWhkOjpyeF9t
ZXRhZGF0YV90OjpFUlJPUl9DT0RFX05PTkUpezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciBtc2dbMTAwXT17MHgwMH07PC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJp
bnRmKG1zZywmcXVvdDtlcnJvcjogJXMmcXVvdDssbWQuc3RyZXJyb3IoKSk7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRm
KG1zZyAsIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0b3RhbF9zYW1wc19y
ZWN2ZCs9bnVtX3J4X3NhbXBzOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+I2lm
IDE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9SZWFkIElRIHNhbXBsZXMgZnJvbSB1
c3JwIGFuZCBzdG9yZSB0aGUgaW4gdGhlIEZJTEU8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZm9yKGludDMyX3QgaT0wO2kmbHQ7bWF4X2NoYW5uZWxzO2krKykgezwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRklMRSAqZnAgPSBm
b3BlbihmaWxlX25hbWVbaV0sJnF1b3Q7YSsmcXVvdDspOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGxlbiA9IGZ3cml0ZSgm
YW1wO2J1ZmZlcl9kYXRhW2ldLmZyb250KCksIHNpemVvZihzdGQ6OmNvbXBsZXgmbHQ7ZmxvYXQm
Z3Q7KSwgbnVtX3J4X3NhbXBzLCBmcCk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmY2xvc2UoZnApOzwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPiNpZiAwPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC8vUmVhZCBJUSBzYW1wbGVzIGZyb20gdXNycCBhbmQgc3RvcmUgdGhlIGluIHRo
ZSBGSUxFPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvcihpbnQzMl90IGk9MDtpJmx0
O21heF9jaGFubmVscztpKyspIHs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN3aXRjaChpKSB7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNlIDA6IG1lbWNweShhcnJheTFb
Y291bnRlcl0sICZhbXA7YnVmZmVyX2RhdGFbaV0uZnJvbnQoKSwgc2l6ZW9mKHN0ZDo6Y29tcGxl
eCZsdDtmbG9hdCZndDspKm51bV9yeF9zYW1wcyk7IGJyZWFrOzwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSAxOiBtZW1jcHkoYXJy
YXkyW2NvdW50ZXJdLCAmYW1wO2J1ZmZlcl9kYXRhW2ldLmZyb250KCksIHNpemVvZihzdGQ6OmNv
bXBsZXgmbHQ7ZmxvYXQmZ3Q7KSpudW1fcnhfc2FtcHMpOyBicmVhazs8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3VudGVy
Kys7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZw
cmludGYoc3RkZXJyLCAmcXVvdDt0b3RhbCBzYW1wbGVzIHJlY2VpdmVkIGZpbGU6ICVkXG4mcXVv
dDssIHRvdGFsX3NhbXBzX3JlY3ZkKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYoJnF1b3Q7d2FybmluZzogc3Rv
cHBpbmcgc3RyZWFtaW5nIG1vZGUmcXVvdDssIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9f
KTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxvZ19wcmludGYoJnF1b3Q7d2FybmluZzogYnVmZmVyIGZsdXNoIHN0YXJ0ZWQhJnF1
b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9jbWRf
dCBzdHJlYW1fY21kX3N0b3AodWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUT1BfQ09O
VElOVU9VUyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByeF9zdHJlYW0tJmd0O2lzc3VlX3N0cmVhbV9jbWQoc3RyZWFtX2NtZF9z
dG9wKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC8vc3RkOjpjb3V0ICZsdDsmbHQ7ICZxdW90O3RvdGFsX3NhbXBzX3JlY3ZkIDog
JnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX3NhbXBzX3JlY3ZkICZsdDsmbHQ7ICZxdW90O8KgIHRvdGFs
X25vX29mX3NhbXBzIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX25vX29mX3NhbXBzICZsdDsmbHQ7
ICZxdW90O1xuJnF1b3Q7Ozwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+I2lmIDA8
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbnN0ZXhwciBkb3VibGUgdGltZW91dCB7IDAuMDEwIH07IC8vMTBtczwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdGlj
IHN0ZDo6Y29tcGxleCZsdDtzaG9ydCZndDsgZHVtbXlfYnVmZmVyWzUwMDAwMDAwXTs8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
YXRpYyB1aGQ6OnJ4X21ldGFkYXRhX3QgZHVtbXlfbWV0YSB7IH07PC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSAocnhfc3Ry
ZWFtLSZndDtyZWN2KGR1bW15X2J1ZmZlciwgNTAwMDAwMDAsIGR1bW15X21ldGEsIHRpbWVvdXQp
KSB7fTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdWhkX3NyYy0mZ3Q7Y2xlYXJfY29tbWFuZF90aW1lKCk7IC8vUmVzZXQgYWxsIHRp
bWUgY291bnRlcnMgdW50aWxsIG5leHQgdHVuZSEhPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90O3dhcm5p
bmc6IGJ1ZmZlciBmbHVzaCBjb21wbGV0ZWQhJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBf
X0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPn08L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+SG9waW5nIGZvciBhbiBlYXJseSByZXBseS48L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj5SZWdhcmRzPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5TbmVoYXNp
c2g8L3NwYW4+PC9wPg0KPHA+wqA8L3A+DQo8cD5TZW50IGZyb20gPGEgaHJlZj0iaHR0cHM6Ly9n
by5taWNyb3NvZnQuY29tL2Z3bGluay8/TGlua0lkPTU1MDk4NiIgdGFyZ2V0PSJfYmxhbmsiPg0K
TWFpbDwvYT4gZm9yIFdpbmRvd3MgMTA8L3A+DQo8cD7CoDwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8
L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjxwIHN0eWxlPSJtYXJnaW4tbGVmdDo0LjhwdCI+X19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj4NCnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4N
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48L3A+DQo8cD7CoDwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8
L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJnaW4tbGVmdDo5LjZwdCI+X19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj4NCnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4N
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48dT48L3U+PHU+PC91PjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8L2Jsb2NrcXVv
dGU+PC9kaXY+DQo=
--0000000000001eec3b05c33fde7c--

--0000000000001eec3c05c33fde7d
Content-Type: image/png; name="9D0D0476D84B4974B26F7ABCB629E2D5.png"
Content-Disposition: inline; filename="9D0D0476D84B4974B26F7ABCB629E2D5.png"
Content-Transfer-Encoding: base64
Content-ID: <179a9e6e7cb1c454ea51>
X-Attachment-Id: 179a9e6e7cb1c454ea51

iVBORw0KGgoAAAANSUhEUgAAAq4AAAADCAYAAABS4o0fAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA1SURBVGhD7dYxDQAwDASx8CdVBEUQMKnUMQh+
8EnmcHVuDwAApPvjWpIkSVJ6+2QBACBPzwMXHzsdNc3LqgAAAABJRU5ErkJggg==
--0000000000001eec3c05c33fde7d--

--===============7511430948108164381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7511430948108164381==--
