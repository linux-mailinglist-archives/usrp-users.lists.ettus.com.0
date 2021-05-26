Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4128A392300
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 01:04:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16AFA38437F
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 19:04:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a0MNpbbE";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 43947384358
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 19:03:03 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id r8so4380960ybb.9
        for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 16:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=M+SAcafcyAvxpahn1e/YCbR1KaFPbLGJHPQSxXn8wuA=;
        b=a0MNpbbE0ZZA8EqJQy8fmd6/yASSaox3AwiQn6JhXpUt4Nt9BOBxBYLFLJl6q0bMgS
         DzxUaeiTmh97149vBBrcQmsJrFRieC7if0g49F4RjN5uyCBj+xSd8ultC/f7uG/9pixS
         v0xRMiTjpFXe+WSuZANX2Rzgu3j08zh91UMSBacGqvB4p2dV99c2ggkv0IJyuVXlAUk7
         l0PtsgwhL66r+/pohC2zeL2hoQa3MOT7rjMM3OFbWB681GzgBrE5dl8N6YM57lEiyJF6
         zl1G6KebJwizE0oqO2uNYQ9DbgxnoCa4I0oZAwLK3FcMufUAklrYY+67/nraQbzseUe2
         hNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=M+SAcafcyAvxpahn1e/YCbR1KaFPbLGJHPQSxXn8wuA=;
        b=bZC/awJnSlaADd5tKAiZreQwG72h0OITDtDssiodC4cKyV9rQjWUKznw0FBLScGlAy
         e6qRRJkQrvIZy3yw4/rs0fjLPoBHCYDuTgU4uwifqsHBe1fNRevJ+QLgcmfPlcINDSPH
         P7SKRYDqErQHvEivzYWOhAuKOb5P2AIgPOScrhtd9044ArgCLCBpKy4iOGLsMQWaOBtu
         7SEW86rtjilMm41zEAQXYUO8JMnQmISWppX05ZWkzJuOEUSEwCLWX0AK5udvoXHmeKB/
         ZOFVKG76ooowUoC+jMt6UfS6JUtryhW9JkHMhBJ2/+y1GwSpbukABa/p+tWHjvmVDP41
         AqBw==
X-Gm-Message-State: AOAM531m7gsW34LGWyd+mWZH+NMzuZ2l8mKVdO++h3lSd8oJJUUCLqoh
	OHwcAiYpQEy9DA+JWo9thHITEk4NKxvp0uYAXyhvH+hx
X-Google-Smtp-Source: ABdhPJxkZI122id21Wf/btSCq2Cr6wCy7mJde8cKJtDzvROpiSoJGeYmSGbbMjBfeElkSIvP/QBnmkmHD4FxubsJxZw=
X-Received: by 2002:a25:ea42:: with SMTP id o2mr564933ybe.350.1622070183054;
 Wed, 26 May 2021 16:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <162205458158.11274.4864534905756006546@mm2.emwd.com>
In-Reply-To: <162205458158.11274.4864534905756006546@mm2.emwd.com>
From: Raz Manzur <typerazm@gmail.com>
Date: Thu, 27 May 2021 02:02:50 +0300
Message-ID: <CAEAdx3_YAzKFkBnkk3WnrmwGDW7d6p7mUmvKJc_iZ5pPoaXudQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ICCHTNQ6RJJZ5D6T3ZSWDU6CGYGWWKFL
X-Message-ID-Hash: ICCHTNQ6RJJZ5D6T3ZSWDU6CGYGWWKFL
X-MailFrom: typerazm@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] leave
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ICCHTNQ6RJJZ5D6T3ZSWDU6CGYGWWKFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8179192415027811494=="

--===============8179192415027811494==
Content-Type: multipart/alternative; boundary="0000000000000fcfe105c343a5b9"

--0000000000000fcfe105c343a5b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 27, 2021, 01:41 <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
> Today's Topics:
>
>    1. Re: Timeout while streaming IQ samples to host in RFNOC
>       (Snehasish Kar)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Wed, 26 May 2021 18:42:52 +0000
> From: Snehasish Kar <snehasish.cse@live.com>
> Subject: [USRP-users] Re: Timeout while streaming IQ samples to host
>         in RFNOC
> To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> Cc: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com"
>         <usrp-users@lists.ettus.com>
> Message-ID:  <BMXPR01MB24694961142E5E24F87FFEBC88249@BMXPR01MB2469.IND
>         PRD01.PROD.OUTLOOK.COM>
> Content-Type: multipart/related;        boundary=3D"_004_BMXPR01MB246949
>         61142E5E24F87FFEBC88249BMXPR01MB2469INDP_";
>         type=3D"multipart/alternative"
>
> Thanks for the solution let me try it. I will give a response to you,
> tomorrow.
>
> Regards
> Snehasish
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> Sent: Thursday, May 27, 2021 12:02:04 AM
> To: Snehasish Kar <snehasish.cse@live.com>
> Cc: Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com <
> usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host
> in RFNOC
>
> Hi Snehasish,
>
> With a X310, calling set_rate() on the radio block controller doesn't set
> the sample rate. You need a DDC block instead, and you'll want to call
> set_output_rate() to set the desired sample rate. Try the flowgraph Radio
> RX->DDC->FIR filter->Host and see if that works. I would avoid the DMA FI=
FO
> unless you absolutely need it, as the block is somewhat finicky.
>
> Jonathon
>
> On Wed, May 26, 2021 at 2:16 PM Snehasish Kar <snehasish.cse@live.com
> <mailto:snehasish.cse@live.com>> wrote:
>
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
> Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> From: Jonathon Pendlum<mailto:jonathon.pendlum@ettus.com>
> Sent: 26 May 2021 23:36
> To: Snehasish Kar<mailto:snehasish.cse@live.com>
> Cc: Rob Kossler<mailto:rkossler@nd.edu>; usrp-users@lists.ettus.com
> <mailto:usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host
> in RFNOC
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
> On Wed, May 26, 2021 at 1:20 PM Snehasish Kar <snehasish.cse@live.com
> <mailto:snehasish.cse@live.com>> wrote:
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
> Get Outlook for iOS<https://aka.ms/o0ukef>
>
>
>
> From: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:
> jonathon.pendlum@ettus.com>>
> Sent: Friday, May 21, 2021 12:13:48 AM
> To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
> Cc: Rob Kossler <rkossler@nd.edu<mailto:rkossler@nd.edu>>;
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
> Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host
> in RFNOC
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
> On Thu, May 20, 2021 at 4:31 AM Snehasish Kar <snehasish.cse@live.com
> <mailto:snehasish.cse@live.com>> wrote:
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
> Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> From: Rob Kossler<mailto:rkossler@nd.edu>
> Sent: 18 May 2021 21:39
> To: Snehasish Kar<mailto:snehasish.cse@live.com>
> Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Timeout while streaming IQ samples to host in
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
> On Mon, May 17, 2021 at 12:45 PM Snehasish Kar <snehasish.cse@live.com
> <mailto:snehasish.cse@live.com>> wrote:
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
>  //rx_graph->connect(radio_ctrl[0]->get_block_id(),
> fifo_ctrl[0]->get_block_id());
>
>
>  //rx_graph->connect(fifo_ctrl[0]->get_block_id(),
> fir_ctrl[0]->get_block_id());
>
>
>  //rx_graph->connect(fir_ctrl[0]->get_block_id(),
> fifo_ctrl[1]->get_block_id());
>
>
>
>
>  //rx_graph->connect(radio_ctrl[1]->get_block_id(),
> fifo_ctrl[2]->get_block_id());
>
>
>  //rx_graph->connect(fifo_ctrl[2]->get_block_id(),
> fir_ctrl[1]->get_block_id());
>
>
>  //rx_graph->connect(fir_ctrl[1]->get_block_id(),
> fifo_ctrl[3]->get_block_id());
>
>
>
>
>  rx_graph->connect(radio_ctrl[0]->get_block_id(), 0,
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
>  fifo_ctrl[1]->get_block_id().to_string();
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
>  sprintf(msg,"\n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
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
> Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:
> usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:
> usrp-users-leave@lists.ettus.com>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:
> usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:
> usrp-users-leave@lists.ettus.com>
>
>
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ...
> Name: not available
> Type: text/html
> Size: 57284 bytes
> Desc: not available
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ...
> Name: 9D0D0476D84B4974B26F7ABCB629E2D5.png
> Type: image/png
> Size: 160 bytes
> Desc: 9D0D0476D84B4974B26F7ABCB629E2D5.png
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 129, Issue 74
> *******************************************
>

--0000000000000fcfe105c343a5b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 27, 2021, 01:41  &lt;<a href=3D"mailto:usrp-u=
sers-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Send USRP-users mailing list s=
ubmissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-request@lists.ettus.=
com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank" rel=3D"noreferrer">usrp-users-owner@lists.ettus.com<=
/a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: Timeout while streaming IQ samples to host in RFNOC<br>
=C2=A0 =C2=A0 =C2=A0 (Snehasish Kar)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Wed, 26 May 2021 18:42:52 +0000<br>
From: Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" target=3D=
"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 in RFNOC<br>
To: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" targ=
et=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
Cc: Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" re=
l=3D"noreferrer">rkossler@nd.edu</a>&gt;, &quot;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.et=
tus.com</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<=
br>
Message-ID:=C2=A0 &lt;BMXPR01MB24694961142E5E24F87FFEBC88249@BMXPR01MB2469.=
IND<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://PRD01.PROD.OUTLOOK.COM" rel=
=3D"noreferrer noreferrer" target=3D"_blank">PRD01.PROD.OUTLOOK.COM</a>&gt;=
<br>
Content-Type: multipart/related;=C2=A0 =C2=A0 =C2=A0 =C2=A0 boundary=3D&quo=
t;_004_BMXPR01MB246949<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 61142E5E24F87FFEBC88249BMXPR01MB2469INDP_&quot;=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 type=3D&quot;multipart/alternative&quot;<br>
<br>
Thanks for the solution let me try it. I will give a response to you, tomor=
row.<br>
<br>
Regards<br>
Snehasish<br>
<br>
Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef" rel=3D"noreferrer =
noreferrer" target=3D"_blank">https://aka.ms/o0ukef</a>&gt;<br>
________________________________<br>
From: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
Sent: Thursday, May 27, 2021 12:02:04 AM<br>
To: Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" target=3D"_=
blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
Cc: Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" re=
l=3D"noreferrer">rkossler@nd.edu</a>&gt;; <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.co=
m</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" r=
el=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC<br>
<br>
Hi Snehasish,<br>
<br>
With a X310, calling set_rate() on the radio block controller doesn&#39;t s=
et the sample rate. You need a DDC block instead, and you&#39;ll want to ca=
ll set_output_rate() to set the desired sample rate. Try the flowgraph Radi=
o RX-&gt;DDC-&gt;FIR filter-&gt;Host and see if that works. I would avoid t=
he DMA FIFO unless you absolutely need it, as the block is somewhat finicky=
.<br>
<br>
Jonathon<br>
<br>
On Wed, May 26, 2021 at 2:16 PM Snehasish Kar &lt;<a href=3D"mailto:snehasi=
sh.cse@live.com" target=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.co=
m</a>&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank"=
 rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;&gt; wrote:<br>
<br>
No, I tried modifying it. I have attached the same for your reference.<br>
<br>
<br>
<br>
Regards<br>
<br>
Snehasish<br>
<br>
<br>
<br>
Sent from Mail&lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D5509=
86" rel=3D"noreferrer noreferrer" target=3D"_blank">https://go.microsoft.co=
m/fwlink/?LinkId=3D550986</a>&gt; for Windows 10<br>
<br>
<br>
<br>
From: Jonathon Pendlum&lt;mailto:<a href=3D"mailto:jonathon.pendlum@ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;=
<br>
Sent: 26 May 2021 23:36<br>
To: Snehasish Kar&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" targe=
t=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
Cc: Rob Kossler&lt;mailto:<a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk" rel=3D"noreferrer">rkossler@nd.edu</a>&gt;; <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.et=
tus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC<br>
<br>
<br>
<br>
Hi Snehasish,<br>
<br>
<br>
<br>
Do you get a timeout when connecting the FIR filter via rfnoc_rx_to_file&#3=
9;s &quot;--block-id&quot; option? What about the FIFO block? Also, I would=
 highly suggest updating to the UHD 3.15 LTS branch.<br>
<br>
<br>
<br>
=C2=A0Jonathon<br>
<br>
<br>
<br>
On Wed, May 26, 2021 at 1:20 PM Snehasish Kar &lt;<a href=3D"mailto:snehasi=
sh.cse@live.com" target=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.co=
m</a>&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank"=
 rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;&gt; wrote:<br>
<br>
Hello Jonathan<br>
<br>
<br>
<br>
Tried with the example as you said, but if only try to stream from rfnoc ra=
dio I am able get IQ samples in the host . But as soon as I connect a fir f=
ilter with cutoff frequency 20MHz and transition 5MHz, it gives a timeout e=
rror.<br>
<br>
<br>
<br>
My current flowgraph looks something like this:<br>
<br>
Radio=3D&gt;fifo=3D&gt;fir filter=3D&gt;fifo=3D&gt; host<br>
<br>
<br>
<br>
Regards<br>
<br>
Snehasish<br>
<br>
<br>
<br>
Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef" rel=3D"noreferrer =
noreferrer" target=3D"_blank">https://aka.ms/o0ukef</a>&gt;<br>
<br>
<br>
<br>
From: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&lt;mailto=
:<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank" rel=3D"nor=
eferrer">jonathon.pendlum@ettus.com</a>&gt;&gt;<br>
Sent: Friday, May 21, 2021 12:13:48 AM<br>
To: Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" target=3D"_=
blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&lt;mailto:<a href=3D"m=
ailto:snehasish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">snehasis=
h.cse@live.com</a>&gt;&gt;<br>
Cc: Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" re=
l=3D"noreferrer">rkossler@nd.edu</a>&lt;mailto:<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank" rel=3D"noreferrer">rkossler@nd.edu</a>&gt;&gt;; <a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"norefe=
rrer">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ett=
us.com</a>&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer"=
>usrp-users@lists.ettus.com</a>&gt;&gt;<br>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC<br>
<br>
<br>
<br>
Hello Snehasish,<br>
<br>
<br>
<br>
I would suggest starting with a known working in-tree example like rfnoc_rx=
_to_file.cpp. It has a section that connects a user defined RFNoC block, an=
d you can easily modify that to instead connect the FIFOs and FIR filter.<b=
r>
<br>
<br>
<br>
Jonathon<br>
<br>
<br>
<br>
On Thu, May 20, 2021 at 4:31 AM Snehasish Kar &lt;<a href=3D"mailto:snehasi=
sh.cse@live.com" target=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.co=
m</a>&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank"=
 rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;&gt; wrote:<br>
<br>
Hello Rob<br>
<br>
<br>
<br>
Tried that but it didn=E2=80=99t work. I am using the standard RFNOC fir fi=
lter and radio.<br>
<br>
<br>
<br>
Regards<br>
<br>
Snehasish<br>
<br>
<br>
<br>
Sent from Mail&lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D5509=
86" rel=3D"noreferrer noreferrer" target=3D"_blank">https://go.microsoft.co=
m/fwlink/?LinkId=3D550986</a>&gt; for Windows 10<br>
<br>
<br>
<br>
From: Rob Kossler&lt;mailto:<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank" rel=3D"noreferrer">rkossler@nd.edu</a>&gt;<br>
Sent: 18 May 2021 21:39<br>
To: Snehasish Kar&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" targe=
t=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lis=
ts.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Timeout while streaming IQ samples to host in RFN=
OC<br>
<br>
<br>
<br>
Perhaps try issue_stream_cmd on the radio ctrl rather than the rx_streamer.=
<br>
<br>
Rob<br>
<br>
<br>
<br>
On Mon, May 17, 2021 at 12:45 PM Snehasish Kar &lt;<a href=3D"mailto:snehas=
ish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.c=
om</a>&lt;mailto:<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank=
" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;&gt; wrote:<br>
<br>
Hello<br>
<br>
<br>
<br>
I am using the below code to stream IQ samples to host using RFNOC, but whi=
le streaming I am getting timeout. My rfnoc graph looks something like this=
:<br>
<br>
Radio_0=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fifo=3D&gt;host<br>
<br>
Radio_1=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fifo=3D&gt;host<br>
<br>
<br>
<br>
With the above flowgraph we are able to stream samples in gnuradio.<br>
<br>
<br>
<br>
Sample rate used: 100msps<br>
<br>
Host PC configuration: intel i7 processor 9th gen<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RAM: 8GB<=
br>
<br>
Interface: PCIE express<br>
<br>
UHD version: UHD_3.14.1.0-0-unknown<br>
<br>
<br>
<br>
Below is the output of=C2=A0 uhd_usrp_probe:<br>
<br>
<br>
<br>
:~/Desktop/uhd_rfnoc_file_writter/Debug$ uhd_usrp_probe<br>
<br>
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.14.1.0-0-unk=
nown<br>
<br>
[INFO] [X300] X300 initialization sequence...<br>
<br>
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>
<br>
[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x310_fp=
ga_XG.lvbitx...<br>
<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
<br>
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>
<br>
[WARNING] [GPS] update_cache: Malformed GPSDO string: LC_XO, Firmware Rev 0=
.929a<br>
<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<br>
<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
<br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
<br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
<br>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
<br>
[INFO] [0/FIR_0] Initializing block control (NOC ID: 0xF112000000000000)<br=
>
<br>
[INFO] [0/FIR_1] Initializing block control (NOC ID: 0xF112000000000000)<br=
>
<br>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
<br>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
<br>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[WARNING] [X300] Cannot update master clock rate! X300 Series does not allo=
w changing the clock rate during runtime.<br>
<br>
=C2=A0 _____________________________________________________<br>
<br>
/<br>
<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: X-Series Device<br>
<br>
|=C2=A0 =C2=A0 =C2=A0_____________________________________________________<=
br>
<br>
|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: X310<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0revision: 11<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0revision_compat: 7<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0product: 30960<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0mac-addr0: 00:80:2f:18:de:4d<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0mac-addr1: 00:80:2f:18:de:4e<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0gateway: 192.168.10.1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0ip-addr0: 192.168.10.2<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0subnet0: 255.255.255.0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0ip-addr1: 192.168.20.2<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0subnet1: 255.255.255.0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0ip-addr2: 192.168.30.2<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0subnet2: 255.255.255.0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0ip-addr3: 192.168.40.2<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0subnet3: 255.255.255.0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 314B293<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0FW Version: 6.0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 35.1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: fffffff-dirty<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capable: Yes<br>
<br>
|=C2=A0 =C2=A0|<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 internal, external, gpsdo<b=
r>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal, external, gpsdo<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: gps_gpgga, gps_gprmc, gps_time, gps_lo=
cked, gps_servo, ref_locked<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0ID: TwinRX Rev B (0x0093)<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Serial: 3147FB8<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: TwinRX RX0<br=
>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX1, RX2<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 10.000 =
to 6000.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range all: 0.0=
 to 93.0 step 1.0 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: II=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: TwinRX RX1<br=
>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX1, RX2<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 10.000 =
to 6000.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range all: 0.0=
 to 93.0 step 1.0 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: QQ=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Co=
dec: A<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: ads62p48<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: B<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0ID: TwinRX Rev B (0x0093)<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Serial: 3147FC1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: TwinRX RX0<br=
>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX1, RX2<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 10.000 =
to 6000.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range all: 0.0=
 to 93.0 step 1.0 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: II=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: TwinRX RX1<br=
>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX1, RX2<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 10.000 =
to 6000.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range all: 0.0=
 to 93.0 step 1.0 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: QQ=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Co=
dec: B<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: ads62p48<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0ID: Unknown (0x0092)<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Serial: 3147FB8<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Fr=
ontend: 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: Unknown (0x00=
92) - 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas:<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors:<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 0.000 t=
o 0.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Co=
dec: A<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: ad9146<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: B<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0ID: Unknown (0x0092)<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Serial: 3147FC1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Fr=
ontend: 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: Unknown (0x00=
92) - 0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas:<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors:<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 0.000 t=
o 0.000 MHz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Co=
dec: B<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: ad9146<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks on thi=
s device:<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DmaFIFO_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIR_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIR_1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIFO_0<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIFO_1<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIFO_2<br>
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* FIFO_3<br>
<br>
<br>
<br>
Source code:<br>
<br>
<br>
<br>
void uhd_interface::start_streamming(int32_t num_samples_to_receive, int16_=
t max_channels, uint64_t samples_per_burst, int32_t total_no_of_samps) {<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::rx_metadata_t md;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool overflow_message =3D =
true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0uhd::rfnoc::graph::sptr rx_graph =3D usrp_rfnoc-&gt=
;create_graph(&quot;antidrone_rx_chain&quot;);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0usrp_rfnoc-&gt;clear();<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(radio_ctrl[0]-&gt;get_block_=
id(), fifo_ctrl[0]-&gt;get_block_id());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(fifo_ctrl[0]-&gt;get_block_i=
d(), fir_ctrl[0]-&gt;get_block_id());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(fir_ctrl[0]-&gt;get_block_id=
(), fifo_ctrl[1]-&gt;get_block_id());<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(radio_ctrl[1]-&gt;get_block_=
id(), fifo_ctrl[2]-&gt;get_block_id());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(fifo_ctrl[2]-&gt;get_block_i=
d(), fir_ctrl[1]-&gt;get_block_id());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//rx_graph-&gt;connect(fir_ctrl[1]-&gt;get_block_id=
(), fifo_ctrl[3]-&gt;get_block_id());<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0rx_graph-&gt;connect(radio_ctrl[0]-&gt;get_block_id=
(), 0, fifo_ctrl[1]-&gt;get_block_id(), 0);<br>
<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } catch (const std::except=
ion&amp; ex) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0char msg[100]=3D{0x00};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0sprintf(msg,&quot;error: unable to create/set a rad=
io/parameter %s&quot;, ex.what());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0log_printf(msg, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::device_addr_t stream_=
args_rfnoc;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 std::vector&lt;std::string=
&gt; block_port{&quot;0&quot;, &quot;1&quot;};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_args_rfnoc[&quot;bl=
ock_id&quot;] =3D=C2=A0 =C2=A0fifo_ctrl[1]-&gt;get_block_id().to_string();<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_args_rfnoc[&quot;bl=
ock_port&quot;] =3D block_port[0];<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //stream_args_rfnoc[&quot;=
block_id&quot;] =3D fifo_ctrl[3]-&gt;get_block_id().to_string();<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //stream_args_rfnoc[&quot;=
block_port&quot;] =3D block_port[1];<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::stream_args_t stream_=
args(&quot;sc16&quot;,&quot;sc16&quot;);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_args.args =3D strea=
m_args_rfnoc;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t spp =3D radio_ctrl[=
0]-&gt;get_args().cast&lt;size_t&gt;(&quot;spp&quot;, spp);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_args.args[&quot;spp=
&quot;] =3D boost::lexical_cast&lt;std::string&gt;(spp); //TODO: considerin=
g 1000 samples but check<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream =3D uhd_src-&gt;=
get_rx_stream(stream_args);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0char msg[100]=3D{0x00};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0sprintf(msg, &quot;info: Daemon launched with pid %=
d&quot;, getpid());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0log_printf(msg, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //samples_per_burst =3D 10=
00;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::stream_cmd_t stream_c=
md(/*uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS*/ uhd::stream_cmd_t::S=
TREAM_MODE_NUM_SAMPS_AND_DONE);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_cmd.num_samps=C2=A0=
 =3D total_no_of_samps;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stream_cmd.stream_now =3D =
true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //stream_cmd.time_spec =3D=
=C2=A0 uhd_src-&gt;get_time_now() + ::uhd::time_spec_t(0.1);//time_spec;<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream-&gt;issue_stream=
_cmd(stream_cmd);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 samples_per_burst =3D rx_s=
tream-&gt;get_max_num_samps();<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 std::vector&lt;std::vector=
&lt;std::complex&lt;float&gt;&gt;&gt; buffer_data(max_channels, std::vector=
&lt;std::complex&lt;float&gt; &gt;(samples_per_burst));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 std::vector&lt;void *&gt; =
buffs(max_channels);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for(int8_t i =3D 0;i&lt;ma=
x_channels;i++) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0buffs[i] =3D &amp;buffer_data[i].front();<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uint64_t total_samps_recvd=
 =3D0x00;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int32_t total_size_wrote_t=
o_file =3D0x00;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int32_t counter =3D 0x00;<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //std::complex&lt;float&gt=
; array1[100000][1000]{{0x00}};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //std::complex&lt;float&gt=
; array2[100000][1000]{{0x00}};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //fprintf(stderr,&quot;tot=
al num of samps %d\n&quot;, total_no_of_samps);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 while(!stop_rx and ((total=
_samps_recvd!=3Dtotal_no_of_samps) or (total_no_of_samps=3D=3D0x00))) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0buffs.clear();<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0size_t num_rx_samps =3D 0x00;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0try {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nu=
m_rx_samps =3D rx_stream-&gt;recv(buffs, samples_per_burst, md, 1.0);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
(error_lvl=3D=3D3) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char msg[700]=3D{0x00};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sprintf(msg,&quot;\n=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D\n=C2=A0 Number of samples received %u\n=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&qu=
ot;, num_rx_samps);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0log_printf(msg, error_lvl, =
__FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0//std::cout &lt;&lt; &quot;=
total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;=C2=A0=
 total_no_of_samps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&qu=
ot;;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0} catch (const std::exception&amp; ex){<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch=
ar msg[100]=3D{0x00};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sp=
rintf(msg,&quot;error: error while streaming %s&quot;, ex.what());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lo=
g_printf(msg, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if (md.error_code =3D=3D uhd::rx_metadata_t::ERROR_=
CODE_TIMEOUT) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_printf(&quot;error: timeout while strea=
ming&quot;, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if (md.error_code =3D=3D uhd::rx_metadata_t::ERROR_=
CODE_OVERFLOW) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 (overflow_message) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0overflow_message =3D false;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0log_printf(&quot;error: ove=
rflow detected&quot;, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
ntinue;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if (md.error_code !=3D uhd::rx_metadata_t::ERROR_CO=
DE_NONE){<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch=
ar msg[100]=3D{0x00};<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sp=
rintf(msg,&quot;error: %s&quot;,md.strerror());<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lo=
g_printf(msg , error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0total_samps_recvd+=3Dnum_rx_samps;<br>
<br>
#if 1<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//Read IQ samples from usrp and store the in the FI=
LE<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0for(int32_t i=3D0;i&lt;max_channels;i++) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0FI=
LE *fp =3D fopen(file_name[i],&quot;a+&quot;);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0si=
ze_t len =3D fwrite(&amp;buffer_data[i].front(), sizeof(std::complex&lt;flo=
at&gt;), num_rx_samps, fp);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fc=
lose(fp);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
#endif<br>
<br>
#if 0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0//Read IQ samples from usrp and store the in the FI=
LE<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0for(int32_t i=3D0;i&lt;max_channels;i++) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sw=
itch(i) {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ca=
se 0: memcpy(array1[counter], &amp;buffer_data[i].front(), sizeof(std::comp=
lex&lt;float&gt;)*num_rx_samps); break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ca=
se 1: memcpy(array2[counter], &amp;buffer_data[i].front(), sizeof(std::comp=
lex&lt;float&gt;)*num_rx_samps); break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0counter++;<br>
<br>
#endif<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, &quot;tota=
l samples received file: %d\n&quot;, total_samps_recvd);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_printf(&quot;warning: =
stopping streaming mode&quot;, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_printf(&quot;warning: =
buffer flush started!&quot;, error_lvl, __FILE__, __LINE__);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::stream_cmd_t stream_c=
md_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream-&gt;issue_stream=
_cmd(stream_cmd_stop);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //std::cout &lt;&lt; &quot=
;total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;=C2=
=A0 total_no_of_samps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n=
&quot;;<br>
<br>
#if 0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 constexpr double timeout {=
 0.010 }; //10ms<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 static std::complex&lt;sho=
rt&gt; dummy_buffer[50000000];<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 static uhd::rx_metadata_t =
dummy_meta { };<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 while (rx_stream-&gt;recv(=
dummy_buffer, 50000000, dummy_meta, timeout)) {}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd_src-&gt;clear_command_=
time(); //Reset all time counters untill next tune!!<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_printf(&quot;warning: =
buffer flush completed!&quot;, error_lvl, __FILE__, __LINE__);<br>
<br>
#endif<br>
<br>
}<br>
<br>
<br>
<br>
<br>
<br>
Hoping for an early reply.<br>
<br>
<br>
<br>
Regards<br>
<br>
Snehasish<br>
<br>
<br>
<br>
Sent from Mail&lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D5509=
86" rel=3D"noreferrer noreferrer" target=3D"_blank">https://go.microsoft.co=
m/fwlink/?LinkId=3D550986</a>&gt; for Windows 10<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&lt;mailto=
:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"nor=
eferrer">usrp-users@lists.ettus.com</a>&gt;<br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists.ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.com</a>&gt;<br=
>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&lt;mailto=
:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"nor=
eferrer">usrp-users@lists.ettus.com</a>&gt;<br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists.ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.com</a>&gt;<br=
>
<br>
<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: not available<br>
Type: text/html<br>
Size: 57284 bytes<br>
Desc: not available<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: 9D0D0476D84B4974B26F7ABCB629E2D5.png<br>
Type: image/png<br>
Size: 160 bytes<br>
Desc: 9D0D0476D84B4974B26F7ABCB629E2D5.png<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 129, Issue 74<br>
*******************************************<br>
</blockquote></div>

--0000000000000fcfe105c343a5b9--

--===============8179192415027811494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8179192415027811494==--
