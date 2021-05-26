Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 943F1391EB1
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 20:07:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6325738435E
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 14:07:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="nNGsJa/e";
	dkim-atps=neutral
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B4833840FD
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 14:06:15 -0400 (EDT)
Received: by mail-ua1-f44.google.com with SMTP id b1so1287499uap.3
        for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 11:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=33FvwX875bfwgxEIUkzNaQhwFXKh+/XoKoMeCf1Gh18=;
        b=nNGsJa/eBMujRyzVj7DAB299Ic88/zr7WXI7xD3oPYks2DtU/wGYGgNLQ49+NrE0eG
         gckSmx4j6njX3+bRWZ/mXTRDhnIQqKPauagI7tmYQXFSPkEnBU2ywF3/is6f6DXf+Jjr
         ucCy3Ja8z5eYvcWDvOv62MPT//88iSMwYTyA6m/bWigdnRjjIo112BUKMTkxXB4819TJ
         GjHs6BKdRMawE5xgZbpGagbBFXsUU4MsLYwDHz67DeLrBINTaEaORZoDWfCzdTgzuwdC
         G2X1i79MUVVwas+ErT93mlUBSwUJkiaDIozcf7aJbOX5y52Xbj9ThQyZavu56d6BpTN6
         d3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=33FvwX875bfwgxEIUkzNaQhwFXKh+/XoKoMeCf1Gh18=;
        b=XeDJEksr6IurvEfrQZ48eCirf0wqS3FYDNeowCuJqqpTw8/4TkUwVrhjtj4YJJ0Q8/
         QJ/IMQDLzlmy8afuQOve+hkgiiTHw4z1YU+vGyqo4yXxJJi72Qfg618dArbugsWy3DH/
         cGpcwwQvQmKMNY1p+o28TqTAITHnKIgEoRSBhqHzAPWW3o6uMIZghWx5EAk++RuGSjUr
         5jXhkP4MUzdrccClKOvBDG9V3cc0JvjKXkNvMlnrcs4C29XqFITyFmFHfX6scwBR3UWI
         7QE1yomRdvqEvsKfmF//fN+aT+VuxikbmQ6r1J77uRWwr79B7g9LlJTEUXf/u7q1cYBD
         N/ew==
X-Gm-Message-State: AOAM530OA7lRChnCTeLFpfY1DlHhDDczFJfupGzmOI9/F3Zx5KtOCO4l
	pppaV0BSWVpHwXM3bKdf5bygMDI39EtUluG7lM3hyOkf
X-Google-Smtp-Source: ABdhPJyHyNP6XRLzFDnFPO6v8z2s9/+4xlgLvw71cGAK3dDn79MvdAUbams5EQ+YvzyYze9NZJeDFRyz09ARTmMZX0c=
X-Received: by 2002:a9f:2e08:: with SMTP id t8mr34284587uaj.70.1622052374885;
 Wed, 26 May 2021 11:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com> <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 26 May 2021 14:05:38 -0400
Message-ID: <CAL7q81sDJz9TxtE1jmoKd_58wJxi3QYONJcopH+hhwLS4cgN0A@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Message-ID-Hash: CJIP5RAZX6ZG2DEU5J4JJ5JPD5LUQU3E
X-Message-ID-Hash: CJIP5RAZX6ZG2DEU5J4JJ5JPD5LUQU3E
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJIP5RAZX6ZG2DEU5J4JJ5JPD5LUQU3E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7089893429741662222=="

--===============7089893429741662222==
Content-Type: multipart/alternative; boundary="0000000000009cca6a05c33f7f5d"

--0000000000009cca6a05c33f7f5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

Do you get a timeout when connecting the FIR filter via rfnoc_rx_to_file's
"--block-id" option? What about the FIFO block? Also, I would highly
suggest updating to the UHD 3.15 LTS branch.

 Jonathon

On Wed, May 26, 2021 at 1:20 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

> Hello Jonathan
>
> Tried with the example as you said, but if only try to stream from rfnoc
> radio I am able get IQ samples in the host . But as soon as I connect a f=
ir
> filter with cutoff frequency 20MHz and transition 5MHz, it gives a timeou=
t
> error.
>
> My current flowgraph looks something like this:
> Radio=3D>fifo=3D>fir filter=3D>fifo=3D> host
>
> Regards
> Snehasish
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, May 21, 2021 12:13:48 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com <
> usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Timeout while streaming IQ samples to
> host in RFNOC
>
> Hello Snehasish,
>
> I would suggest starting with a known working in-tree example like
> rfnoc_rx_to_file.cpp. It has a section that connects a user defined RFNoC
> block, and you can easily modify that to instead connect the FIFOs and FI=
R
> filter.
>
> Jonathon
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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000009cca6a05c33f7f5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgU25laGFzaXNoLDxkaXY+PGJyPjwvZGl2PjxkaXY+RG8geW91IGdl
dCBhIHRpbWVvdXQgd2hlbiBjb25uZWN0aW5nIHRoZSBGSVIgZmlsdGVyIHZpYSByZm5vY19yeF90
b19maWxlJiMzOTtzICZxdW90Oy0tYmxvY2staWQmcXVvdDsgb3B0aW9uPyBXaGF0IGFib3V0IHRo
ZSBGSUZPIGJsb2NrPyBBbHNvLCBJIHdvdWxkIGhpZ2hseSBzdWdnZXN0IHVwZGF0aW5nIHRvIHRo
ZSBVSEQgMy4xNSBMVFMgYnJhbmNoLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+wqBKb25hdGhv
bjwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIg
Y2xhc3M9ImdtYWlsX2F0dHIiPk9uIFdlZCwgTWF5IDI2LCAyMDIxIGF0IDE6MjAgUE0gU25laGFz
aXNoIEthciAmbHQ7PGEgaHJlZj0ibWFpbHRvOnNuZWhhc2lzaC5jc2VAbGl2ZS5jb20iPnNuZWhh
c2lzaC5jc2VAbGl2ZS5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xh
c3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1s
ZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPg0KDQoNCg0K
PGRpdj4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdj48L2Rpdj4NCjxkaXY+DQo8ZGl2PkhlbGxvIEpv
bmF0aGFuwqA8L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9Imx0
ciI+VHJpZWQgd2l0aCB0aGUgZXhhbXBsZSBhcyB5b3Ugc2FpZCwgYnV0IGlmIG9ubHkgdHJ5IHRv
IHN0cmVhbSBmcm9tIHJmbm9jIHJhZGlvIEkgYW0gYWJsZSBnZXQgSVEgc2FtcGxlcyBpbiB0aGUg
aG9zdCAuIEJ1dCBhcyBzb29uIGFzIEkgY29ubmVjdCBhIGZpciBmaWx0ZXIgd2l0aCBjdXRvZmYg
ZnJlcXVlbmN5IDIwTUh6IGFuZCB0cmFuc2l0aW9uIDVNSHosIGl0IGdpdmVzIGEgdGltZW91dCBl
cnJvci48L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+
TXkgY3VycmVudCBmbG93Z3JhcGggbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczo8L2Rpdj4NCjxk
aXYgZGlyPSJsdHIiPlJhZGlvPSZndDtmaWZvPSZndDtmaXIgZmlsdGVyPSZndDtmaWZvPSZndDsg
aG9zdDwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+PGJyPg0KPC9kaXY+DQo8ZGl2IGRpcj0ibHRyIj5S
ZWdhcmRzwqA8L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPlNuZWhhc2lzaMKgPC9kaXY+DQo8ZGl2Pjxi
cj4NCjwvZGl2Pg0KPGRpdiBpZD0iZ21haWwtbV8tMTM0OTE3MTQyMzA5ODk0NjgyM21zLW91dGxv
b2stbW9iaWxlLXNpZ25hdHVyZSI+R2V0IDxhIGhyZWY9Imh0dHBzOi8vYWthLm1zL28wdWtlZiIg
dGFyZ2V0PSJfYmxhbmsiPg0KT3V0bG9vayBmb3IgaU9TPC9hPjwvZGl2Pg0KPC9kaXY+DQo8L2Rp
dj4NCjxociBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIj4NCjxkaXYgaWQ9
ImdtYWlsLW1fLTEzNDkxNzE0MjMwOTg5NDY4MjNkaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZv
bnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0IiBjb2xv
cj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IEpvbmF0aG9uIFBlbmRsdW0gJmx0OzxhIGhyZWY9Im1h
aWx0bzpqb25hdGhvbi5wZW5kbHVtQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmpvbmF0aG9u
LnBlbmRsdW1AZXR0dXMuY29tPC9hPiZndDs8YnI+DQo8Yj5TZW50OjwvYj4gRnJpZGF5LCBNYXkg
MjEsIDIwMjEgMTI6MTM6NDggQU08YnI+DQo8Yj5Ubzo8L2I+IFNuZWhhc2lzaCBLYXIgJmx0Ozxh
IGhyZWY9Im1haWx0bzpzbmVoYXNpc2guY3NlQGxpdmUuY29tIiB0YXJnZXQ9Il9ibGFuayI+c25l
aGFzaXNoLmNzZUBsaXZlLmNvbTwvYT4mZ3Q7PGJyPg0KPGI+Q2M6PC9iPiBSb2IgS29zc2xlciAm
bHQ7PGEgaHJlZj0ibWFpbHRvOnJrb3NzbGVyQG5kLmVkdSIgdGFyZ2V0PSJfYmxhbmsiPnJrb3Nz
bGVyQG5kLmVkdTwvYT4mZ3Q7OyA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4gJmx0
OzxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQo8Yj5TdWJqZWN0Ojwv
Yj4gUmU6IFtVU1JQLXVzZXJzXSBSZTogVGltZW91dCB3aGlsZSBzdHJlYW1pbmcgSVEgc2FtcGxl
cyB0byBob3N0IGluIFJGTk9DPC9mb250Pg0KPGRpdj7CoDwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pg0K
PGRpdiBkaXI9Imx0ciI+SGVsbG8gU25laGFzaXNoLA0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
SSB3b3VsZCBzdWdnZXN0IHN0YXJ0aW5nIHdpdGggYSBrbm93biB3b3JraW5nIGluLXRyZWUgZXhh
bXBsZSBsaWtlIHJmbm9jX3J4X3RvX2ZpbGUuY3BwLiBJdCBoYXMgYSBzZWN0aW9uIHRoYXTCoGNv
bm5lY3RzIGEgdXNlciBkZWZpbmVkIFJGTm9DIGJsb2NrLCBhbmQgeW91IGNhbiBlYXNpbHkgbW9k
aWZ5IHRoYXQgdG8gaW5zdGVhZCBjb25uZWN0IHRoZSBGSUZPcyBhbmQgRklSIGZpbHRlci48L2Rp
dj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkpvbmF0aG9uPC9kaXY+DQo8L2Rpdj4NCjxicj4N
CjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj5PbiBUaHUsIE1heSAyMCwgMjAyMSBhdCA0OjMxIEFNIFNu
ZWhhc2lzaCBLYXIgJmx0OzxhIGhyZWY9Im1haWx0bzpzbmVoYXNpc2guY3NlQGxpdmUuY29tIiB0
YXJnZXQ9Il9ibGFuayI+c25laGFzaXNoLmNzZUBsaXZlLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj4N
CjwvZGl2Pg0KPGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxk
aXYgbGFuZz0iRU4tSU4iPg0KPGRpdj4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5IZWxsbyBSb2I8
dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+PHU+PC91PsKg
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+VHJpZWQgdGhhdCBidXQg
aXQgZGlkbuKAmXQgd29yay4gSSBhbSB1c2luZyB0aGUgc3RhbmRhcmQgUkZOT0MgZmlyIGZpbHRl
ciBhbmQgcmFkaW8uPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPjx1PjwvdT7CoDx1PjwvdT48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPlJl
Z2FyZHM8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+U25l
aGFzaXNoPC9zcGFuPjwvcD4NCjxwPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8cD5TZW50IGZyb20g
PGEgaHJlZj0iaHR0cHM6Ly9nby5taWNyb3NvZnQuY29tL2Z3bGluay8/TGlua0lkPTU1MDk4NiIg
dGFyZ2V0PSJfYmxhbmsiPg0KTWFpbDwvYT4gZm9yIFdpbmRvd3MgMTA8L3A+DQo8cD48dT48L3U+
wqA8dT48L3U+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyLXJpZ2h0Om5vbmU7Ym9yZGVyLWJvdHRv
bTpub25lO2JvcmRlci1sZWZ0Om5vbmU7Ym9yZGVyLXRvcDoxcHQgc29saWQgcmdiKDIyNSwyMjUs
MjI1KTtwYWRkaW5nOjNwdCAwY20gMGNtIj4NCjxwIHN0eWxlPSJib3JkZXI6bm9uZTtwYWRkaW5n
OjBjbSI+PGI+RnJvbTogPC9iPjxhIGhyZWY9Im1haWx0bzpya29zc2xlckBuZC5lZHUiIHRhcmdl
dD0iX2JsYW5rIj5Sb2IgS29zc2xlcjwvYT48YnI+DQo8Yj5TZW50OiA8L2I+MTggTWF5IDIwMjEg
MjE6Mzk8YnI+DQo8Yj5UbzogPC9iPjxhIGhyZWY9Im1haWx0bzpzbmVoYXNpc2guY3NlQGxpdmUu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+U25laGFzaXNoIEthcjwvYT48YnI+DQo8Yj5DYzogPC9iPjxh
IGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
PnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCjxiPlN1YmplY3Q6IDwvYj5SZTog
W1VTUlAtdXNlcnNdIFRpbWVvdXQgd2hpbGUgc3RyZWFtaW5nIElRIHNhbXBsZXMgdG8gaG9zdCBp
biBSRk5PQzwvcD4NCjwvZGl2Pg0KPHA+PHU+PC91PsKgPHU+PC91PjwvcD4NCjxkaXY+DQo8cD5Q
ZXJoYXBzIHRyeSBpc3N1ZV9zdHJlYW1fY21kIG9uIHRoZSByYWRpbyBjdHJsIHJhdGhlciB0aGFu
IHRoZSByeF9zdHJlYW1lci48dT48L3U+PHU+PC91PjwvcD4NCjxkaXY+DQo8cD5Sb2I8dT48L3U+
PHU+PC91PjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cD48dT48L3U+wqA8dT48L3U+PC9wPg0KPGRp
dj4NCjxkaXY+DQo8cD5PbiBNb24sIE1heSAxNywgMjAyMSBhdCAxMjo0NSBQTSBTbmVoYXNpc2gg
S2FyICZsdDs8YSBocmVmPSJtYWlsdG86c25laGFzaXNoLmNzZUBsaXZlLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPnNuZWhhc2lzaC5jc2VAbGl2ZS5jb208L2E+Jmd0OyB3cm90ZTo8dT48L3U+PHU+PC91
PjwvcD4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlci10b3A6bm9uZTtib3JkZXIt
cmlnaHQ6bm9uZTtib3JkZXItYm90dG9tOm5vbmU7Ym9yZGVyLWxlZnQ6MXB0IHNvbGlkIHJnYigy
MDQsMjA0LDIwNCk7cGFkZGluZzowY20gMGNtIDBjbSA2cHQ7bWFyZ2luLWxlZnQ6NC44cHQ7bWFy
Z2luLXJpZ2h0OjBjbSI+DQo8ZGl2Pg0KPGRpdj4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5IZWxs
byA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj5JIGFtIHVzaW5nIHRoZSBiZWxvdyBjb2RlIHRvIHN0cmVhbSBJUSBz
YW1wbGVzIHRvIGhvc3QgdXNpbmcgUkZOT0MsIGJ1dCB3aGlsZSBzdHJlYW1pbmcgSSBhbSBnZXR0
aW5nIHRpbWVvdXQuIE15IHJmbm9jIGdyYXBoIGxvb2tzIHNvbWV0aGluZyBsaWtlIHRoaXM6PC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5SYWRpb18wPSZndDtmaWZvPSZndDtmaXJf
ZmlsdGVyPSZndDtmaWZvPSZndDtob3N0PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij5SYWRpb18xPSZndDtmaWZvPSZndDtmaXJfZmlsdGVyPSZndDtmaWZvPSZndDtob3N0PC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+V2l0aCB0aGUgYWJvdmUgZmxvd2dyYXBoIHdlIGFyZSBhYmxlIHRvIHN0cmVhbSBz
YW1wbGVzIGluIGdudXJhZGlvLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqA8
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPlNhbXBsZSByYXRlIHVzZWQ6IDEwMG1z
cHM8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPkhvc3QgUEMgY29uZmlndXJhdGlv
bjogaW50ZWwgaTcgcHJvY2Vzc29yIDk8c3VwPnRoPC9zdXA+IGdlbjwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJBTTogOEdCPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5JbnRlcmZhY2U6IFBDSUUgZXhwcmVzczwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+VUhEIHZlcnNpb246IFVIRF8zLjE0LjEuMC0wLXVua25v
d248L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj5CZWxvdyBpcyB0aGUgb3V0cHV0IG9mwqAgdWhkX3VzcnBfcHJvYmU6
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+On4vRGVza3RvcC91aGRfcmZub2NfZmlsZV93cml0dGVyL0RlYnVnJCB1
aGRfdXNycF9wcm9iZQ0KPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjUuMDsgQm9vc3RfMTA2NTAxOyBVSERfMy4x
NC4xLjAtMC11bmtub3duPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10g
W1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UuLi48L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbWDMwMF0gQ29ubmVjdGluZyB0byBuaXVzcnByaW9ycGMg
YXQgbG9jYWxob3N0OjU0NDQuLi48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPltJ
TkZPXSBbWDMwMF0gVXNpbmcgTFZCSVRYIGJpdGZpbGUgL3Vzci9sb2NhbC9zaGFyZS91aGQvaW1h
Z2VzL3VzcnBfeDMxMF9mcGdhX1hHLmx2Yml0eC4uLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+W0lORk9dIFtYMzAwXSBSYWRpbyAxeCBjbG9jazogMjAwIE1Iejwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFtHUFNdIEZvdW5kIGFuIGludGVybmFsIEdQ
U0RPOiBMQ19YTywgRmlybXdhcmUgUmV2IDAuOTI5YTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+W1dBUk5JTkddIFtHUFNdIHVwZGF0ZV9jYWNoZTogTWFsZm9ybWVkIEdQU0RPIHN0
cmluZzogTENfWE8sIEZpcm13YXJlIFJldiAwLjkyOWE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPltJTkZPXSBbMC9EbWFGSUZPXzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9s
IChOT0MgSUQ6IDB4RjFGMEQwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPltJTkZPXSBbMC9EbWFGSUZPXzBdIEJJU1QgcGFzc2VkIChUaHJvdWdocHV0OiAxMzEx
IE1CL3MpPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRG1hRklG
T18wXSBCSVNUIHBhc3NlZCAoVGhyb3VnaHB1dDogMTMxNSBNQi9zKTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL1JhZGlvXzBdIEluaXRpYWxpemluZyBibG9jayBj
b250cm9sIChOT0MgSUQ6IDB4MTJBRDEwMDAwMDAwMDAwMSk8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPltJTkZPXSBbMC9SYWRpb18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJv
bCAoTk9DIElEOiAweDEyQUQxMDAwMDAwMDAwMDEpPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj5bSU5GT10gWzAvRERDXzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0Mg
SUQ6IDB4RERDMDAwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PltJTkZPXSBbMC9ERENfMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhE
REMwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9d
IFswL0ZJUl8wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEYxMTIwMDAw
MDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRklS
XzFdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjExMjAwMDAwMDAwMDAw
MCk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9EVUNfMF0gSW5p
dGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEMEMwMDAwMDAwMDAwMDAwKTwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0RVQ18xXSBJbml0aWFsaXpp
bmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEQwQzAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRklGT18wXSBJbml0aWFsaXppbmcgYmxv
Y2sgY29udHJvbCAoTk9DIElEOiAweEYxRjAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRklGT18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29u
dHJvbCAoTk9DIElEOiAweEYxRjAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj5bSU5GT10gWzAvRklGT18yXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAo
Tk9DIElEOiAweEYxRjAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj5bSU5GT10gWzAvRklGT18zXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElE
OiAweEYxRjAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj5b
V0FSTklOR10gW1gzMDBdIENhbm5vdCB1cGRhdGUgbWFzdGVyIGNsb2NrIHJhdGUhIFgzMDAgU2Vy
aWVzIGRvZXMgbm90IGFsbG93IGNoYW5naW5nIHRoZSBjbG9jayByYXRlIGR1cmluZyBydW50aW1l
Ljwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqAgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPi88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgwqDC
oMKgwqAgRGV2aWNlOiBYLVNlcmllcyBEZXZpY2U8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqDCoCAv
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgwqDCoMKgIE1i
b2FyZDogWDMxMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
cmV2aXNpb246IDExPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCByZXZpc2lvbl9jb21wYXQ6IDc8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHByb2R1Y3Q6IDMwOTYwPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCBtYWMtYWRkcjA6IDAwOjgwOjJmOjE4OmRlOjRkPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBtYWMtYWRkcjE6IDAwOjgwOjJmOjE4OmRl
OjRlPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBnYXRld2F5
OiAxOTIuMTY4LjEwLjE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIGlwLWFkZHIwOiAxOTIuMTY4LjEwLjI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHN1Ym5ldDA6IDI1NS4yNTUuMjU1LjA8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIGlwLWFkZHIxOiAxOTIuMTY4LjIwLjI8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHN1Ym5ldDE6IDI1NS4yNTUu
MjU1LjA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIGlwLWFk
ZHIyOiAxOTIuMTY4LjMwLjI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHN1Ym5ldDI6IDI1NS4yNTUuMjU1LjA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIGlwLWFkZHIzOiAxOTIuMTY4LjQwLjI8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHN1Ym5ldDM6IDI1NS4yNTUuMjU1LjA8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHNlcmlhbDogMzE0QjI5
Mzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgRlcgVmVyc2lv
bjogNi4wPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBGUEdB
IFZlcnNpb246IDM1LjE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIEZQR0EgZ2l0IGhhc2g6IGZmZmZmZmYtZGlydHk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIFJGTm9DIGNhcGFibGU6IFllczwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCBUaW1lIHNvdXJjZXM6wqAgaW50ZXJuYWwsIGV4dGVybmFsLCBn
cHNkbzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgQ2xvY2sg
c291cmNlczogaW50ZXJuYWwsIGV4dGVybmFsLCBncHNkbzwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgU2Vuc29yczogZ3BzX2dwZ2dhLCBncHNfZ3BybWMsIGdw
c190aW1lLCBncHNfbG9ja2VkLCBncHNfc2Vydm8sIHJlZl9sb2NrZWQ8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJYIERib2FyZDogQTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgSUQ6IFR3aW5SWCBSZXYgQiAoMHgw
MDkzKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
U2VyaWFsOiAzMTQ3RkI4PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
fMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBGcm9udGVuZDogMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVHdpblJYIFJYMDwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfCDCoMKgfMKgwqAgQW50
ZW5uYXM6IFJYMSwgUlgyPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoCBTZW5zb3JzOiBsb19sb2NrZWQ8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEgcmFuZ2U6IDEwLjAwMCB0
byA2MDAwLjAwMCBNSHo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFuZ2UgYWxsOiAwLjAgdG8gOTMuMCBzdGVwIDEuMCBkQjwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAg
QmFuZHdpZHRoIHJhbmdlOiA4MDAwMDAwMC4wIHRvIDgwMDAwMDAwLjAgc3RlcCAwLjAgSHo8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIENv
bm5lY3Rpb24gVHlwZTogSUk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBObzwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggRnJvbnRlbmQ6IDE8
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKg
IE5hbWU6IFR3aW5SWCBSWDE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiBSWDEsIFJYMjwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgU2Vuc29yczogbG9fbG9ja2Vk
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDC
oCBGcmVxIHJhbmdlOiAxMC4wMDAgdG8gNjAwMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGFsbDogMC4w
IHRvIDkzLjAgc3RlcCAxLjAgZEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0aCByYW5nZTogODAwMDAwMDAuMCB0byA4MDAw
MDAwMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IFFRPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExPIG9mZnNldDog
Tm88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDC
oCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKg
wqDCoMKgIFJYIENvZGVjOiBBPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBhZHM2MnA0ODwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBkaWdpdGFsOiAw
LjAgdG8gNi4wIHN0ZXAgMC41IGRCPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
wqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDC
oMKgwqDCoCBSWCBEYm9hcmQ6IEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIElEOiBUd2luUlggUmV2IEIgKDB4MDA5Myk8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIFNlcmlhbDogMzE0N0ZDMTwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgIMKg
UlggRnJvbnRlbmQ6IDA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIHzCoMKgIE5hbWU6IFR3aW5SWCBSWDA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiBSWDEsIFJYMjwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgU2Vu
c29yczogbG9fbG9ja2VkPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAxMC4wMDAgdG8gNjAwMC4wMDAgTUh6PC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWlu
IHJhbmdlIGFsbDogMC4wIHRvIDkzLjAgc3RlcCAxLjAgZEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0aCByYW5nZTogODAw
MDAwMDAuMCB0byA4MDAwMDAwMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElJPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBV
c2VzIExPIG9mZnNldDogTm88L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJYIEZyb250ZW5kOiAxPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBUd2luUlggUlgxPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBB
bnRlbm5hczogUlgxLCBSWDI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNvcnM6IGxvX2xvY2tlZDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgRnJlcSByYW5nZTogMTAuMDAw
IHRvIDYwMDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA5My4wIHN0ZXAgMS4wIGRC
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDC
oCBCYW5kd2lkdGggcmFuZ2U6IDgwMDAwMDAwLjAgdG8gODAwMDAwMDAuMCBzdGVwIDAuMCBIejwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAg
Q29ubmVjdGlvbiBUeXBlOiBRUTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgfMKgwqAgfMKgwqAgVXNlcyBMTyBvZmZzZXQ6IE5vPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBDb2RlYzogQjwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAg
TmFtZTogYWRzNjJwNDg8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFuZ2UgZGlnaXRhbDogMC4wIHRvIDYuMCBzdGVwIDAuNSBk
Qjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggRGJvYXJkOiBB
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDog
VW5rbm93biAoMHgwMDkyKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgfMKgwqAgU2VyaWFsOiAzMTQ3RkI4PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBUWCBGcm9udGVuZDogMDwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVW5r
bm93biAoMHgwMDkyKSAtIDA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNvcnM6IDwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgRnJlcSByYW5nZTogMC4w
MDAgdG8gMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoCBHYWluIEVsZW1lbnRzOiBOb25lPC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDAu
MCB0byAwLjAgc3RlcCAwLjAgSHo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIHzCoMKgIENvbm5lY3Rpb24gVHlwZTogSVE8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0
OiBObzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDC
oMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHwgwqDCoHzCoMKgIHzCoMKg
wqDCoMKgwqAgVFggQ29kZWM6IEE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IGFkOTE0Njwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiBFbGVtZW50czogTm9uZTwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggRGJvYXJkOiBCPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDogVW5r
bm93biAoMHgwMDkyKTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgU2VyaWFsOiAzMTQ3RkMxPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBUWCBGcm9udGVuZDogMDwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVW5rbm93
biAoMHgwMDkyKSAtIDA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoCDCoHzCoMKgIHzCoMKgIFNlbnNvcnM6IDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgRnJlcSByYW5nZTogMC4wMDAg
dG8gMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCB8wqDCoCBHYWluIEVsZW1lbnRzOiBOb25lPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDAuMCB0
byAwLjAgc3RlcCAwLjAgSHo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIENvbm5lY3Rpb24gVHlwZTogSVE8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBO
bzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKg
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDC
oMKgwqAgVFggQ29kZWM6IEI8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IGFkOTE0Njwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiBFbGVtZW50czogTm9uZTwvc3Bh
bj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUkZOb0MgYmxvY2tzIG9uIHRo
aXMgZGV2aWNlOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
fMKgwqAgPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oCAqIERtYUZJRk9fMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgKiBSYWRpb18wPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCB8wqDCoCAqIFJhZGlvXzE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgICogRERDXzA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRERDXzE8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklSXzA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklSXzE8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRFVDXzA8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRFVDXzE8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklGT18wPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEZJRk9fMTwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzI8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklGT18z
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+U291cmNlIGNvZGU6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+dm9pZCB1aGRfaW50ZXJm
YWNlOjpzdGFydF9zdHJlYW1taW5nKGludDMyX3QgbnVtX3NhbXBsZXNfdG9fcmVjZWl2ZSwgaW50
MTZfdCBtYXhfY2hhbm5lbHMsIHVpbnQ2NF90IHNhbXBsZXNfcGVyX2J1cnN0LCBpbnQzMl90IHRv
dGFsX25vX29mX3NhbXBzKSB7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnJ4X21ldGFkYXRhX3QgbWQ7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib29sIG92
ZXJmbG93X21lc3NhZ2UgPSB0cnVlOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJ5IHs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdWhkOjpyZm5vYzo6Z3JhcGg6OnNwdHIgcnhfZ3JhcGggPSB1c3JwX3Jmbm9jLSZndDtj
cmVhdGVfZ3JhcGgoJnF1b3Q7YW50aWRyb25lX3J4X2NoYWluJnF1b3Q7KTs8L3NwYW4+PC9wPg0K
PHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdXNycF9yZm5vYy0mZ3Q7Y2xlYXIoKTs8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChyYWRpb19jdHJsWzBdLSZndDtn
ZXRfYmxvY2tfaWQoKSwgZmlmb19jdHJsWzBdLSZndDtnZXRfYmxvY2tfaWQoKSk7PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QoZmlmb19jdHJsWzBd
LSZndDtnZXRfYmxvY2tfaWQoKSwgZmlyX2N0cmxbMF0tJmd0O2dldF9ibG9ja19pZCgpKTs8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChmaXJfY3Ry
bFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpZm9fY3RybFsxXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkp
Ozwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChyYWRpb19jdHJsWzFdLSZndDtnZXRf
YmxvY2tfaWQoKSwgZmlmb19jdHJsWzJdLSZndDtnZXRfYmxvY2tfaWQoKSk7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QoZmlmb19jdHJsWzJdLSZn
dDtnZXRfYmxvY2tfaWQoKSwgZmlyX2N0cmxbMV0tJmd0O2dldF9ibG9ja19pZCgpKTs8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChmaXJfY3RybFsx
XS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpZm9fY3RybFszXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkpOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcnhfZ3JhcGgtJmd0O2Nvbm5lY3QocmFkaW9fY3RybFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCks
IDAsIGZpZm9fY3RybFsxXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIDApOzwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9IGNhdGNoIChjb25zdCBzdGQ6OmV4Y2VwdGlvbiZhbXA7IGV4KSB7PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgbXNnWzEwMF09ezB4MDB9Ozwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzcHJpbnRmKG1zZywmcXVvdDtlcnJvcjogdW5hYmxlIHRvIGNyZWF0ZS9z
ZXQgYSByYWRpby9wYXJhbWV0ZXIgJXMmcXVvdDssIGV4LndoYXQoKSk7PC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYobXNnLCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJ
TkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1aGQ6OmRldmljZV9hZGRyX3Qgc3RyZWFtX2FyZ3NfcmZub2M7PC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdGQ6OnZlY3RvciZsdDtzdGQ6OnN0cmluZyZndDsgYmxvY2tfcG9ydHsmcXVvdDswJnF1b3Q7
LCAmcXVvdDsxJnF1b3Q7fTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9hcmdzX3Jmbm9jWyZxdW90O2Jsb2NrX2lkJnF1
b3Q7XSA9wqDCoCBmaWZvX2N0cmxbMV0tJmd0O2dldF9ibG9ja19pZCgpLnRvX3N0cmluZygpOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RyZWFtX2FyZ3NfcmZub2NbJnF1b3Q7YmxvY2tfcG9ydCZxdW90O10gPSBibG9ja19wb3J0
WzBdOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLy9zdHJlYW1fYXJnc19yZm5vY1smcXVvdDtibG9ja19pZCZxdW90O10gPSBmaWZv
X2N0cmxbM10tJmd0O2dldF9ibG9ja19pZCgpLnRvX3N0cmluZygpOzwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zdHJlYW1fYXJn
c19yZm5vY1smcXVvdDtibG9ja19wb3J0JnF1b3Q7XSA9IGJsb2NrX3BvcnRbMV07PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6
OnN0cmVhbV9hcmdzX3Qgc3RyZWFtX2FyZ3MoJnF1b3Q7c2MxNiZxdW90OywmcXVvdDtzYzE2JnF1
b3Q7KTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cmVhbV9hcmdzLmFyZ3MgPSBzdHJlYW1fYXJnc19yZm5vYzs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVf
dCBzcHAgPSByYWRpb19jdHJsWzBdLSZndDtnZXRfYXJncygpLmNhc3QmbHQ7c2l6ZV90Jmd0Oygm
cXVvdDtzcHAmcXVvdDssIHNwcCk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1fYXJncy5hcmdzWyZxdW90O3NwcCZxdW90
O10gPSBib29zdDo6bGV4aWNhbF9jYXN0Jmx0O3N0ZDo6c3RyaW5nJmd0OyhzcHApOyAvL1RPRE86
IGNvbnNpZGVyaW5nIDEwMDAgc2FtcGxlcyBidXQgY2hlY2s8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ4X3N0cmVhbSA9IHVoZF9z
cmMtJmd0O2dldF9yeF9zdHJlYW0oc3RyZWFtX2FyZ3MpOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgezwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsweDAwfTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3ByaW50Zihtc2csICZxdW90O2luZm86IERhZW1vbiBsYXVuY2hlZCB3aXRoIHBp
ZCAlZCZxdW90OywgZ2V0cGlkKCkpOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2df
cHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9z
YW1wbGVzX3Blcl9idXJzdCA9IDEwMDA7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9jbWRfdCBzdHJlYW1fY21k
KC8qdWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVMqLyB1aGQ6
OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfTlVNX1NBTVBTX0FORF9ET05FKTs8L3NwYW4+PC9w
Pg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVh
bV9jbWQubnVtX3NhbXBzwqAgPSB0b3RhbF9ub19vZl9zYW1wczs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9jbWQuc3Ry
ZWFtX25vdyA9IHRydWU7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAvL3N0cmVhbV9jbWQudGltZV9zcGVjID3CoCB1aGRfc3JjLSZn
dDtnZXRfdGltZV9ub3coKSArIDo6dWhkOjp0aW1lX3NwZWNfdCgwLjEpOy8vdGltZV9zcGVjOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcnhfc3RyZWFtLSZndDtpc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWQpOzwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2FtcGxl
c19wZXJfYnVyc3QgPSByeF9zdHJlYW0tJmd0O2dldF9tYXhfbnVtX3NhbXBzKCk7PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGQ6
OnZlY3RvciZsdDtzdGQ6OnZlY3RvciZsdDtzdGQ6OmNvbXBsZXgmbHQ7ZmxvYXQmZ3Q7Jmd0OyZn
dDsgYnVmZmVyX2RhdGEobWF4X2NoYW5uZWxzLCBzdGQ6OnZlY3RvciZsdDtzdGQ6OmNvbXBsZXgm
bHQ7ZmxvYXQmZ3Q7ICZndDsoc2FtcGxlc19wZXJfYnVyc3QpKTs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0ZDo6dmVjdG9yJmx0
O3ZvaWQgKiZndDsgYnVmZnMobWF4X2NoYW5uZWxzKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvcihpbnQ4X3QgaSA9IDA7aSZs
dDttYXhfY2hhbm5lbHM7aSsrKSB7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ1ZmZz
W2ldID0gJmFtcDtidWZmZXJfZGF0YVtpXS5mcm9udCgpOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWludDY0X3QgdG90
YWxfc2FtcHNfcmVjdmQgPTB4MDA7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQzMl90IHRvdGFsX3NpemVfd3JvdGVfdG9fZmls
ZSA9MHgwMDs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGludDMyX3QgY291bnRlciA9IDB4MDA7PC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3N0ZDo6Y29tcGxleCZs
dDtmbG9hdCZndDsgYXJyYXkxWzEwMDAwMF1bMTAwMF17ezB4MDB9fTs8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb21w
bGV4Jmx0O2Zsb2F0Jmd0OyBhcnJheTJbMTAwMDAwXVsxMDAwXXt7MHgwMH19Ozwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9mcHJp
bnRmKHN0ZGVyciwmcXVvdDt0b3RhbCBudW0gb2Ygc2FtcHMgJWRcbiZxdW90OywgdG90YWxfbm9f
b2Zfc2FtcHMpOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgd2hpbGUoIXN0b3BfcnggYW5kICgodG90YWxfc2FtcHNfcmVjdmQhPXRv
dGFsX25vX29mX3NhbXBzKSBvciAodG90YWxfbm9fb2Zfc2FtcHM9PTB4MDApKSkgezwvc3Bhbj48
L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidWZmcy5jbGVhcigpOzwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzaXplX3QgbnVtX3J4X3NhbXBzID0gMHgwMDs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdHJ5IHs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG51bV9yeF9zYW1wcyA9IHJ4X3N0cmVhbS0mZ3Q7cmVjdihidWZm
cywgc2FtcGxlc19wZXJfYnVyc3QsIG1kLCAxLjApOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYoZXJyb3JfbHZsPT0zKSB7PC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciBtc2dbNzAwXT17MHgwMH07PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzcHJpbnRmKG1zZywmcXVvdDtcbj09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG7CoCBOdW1iZXIgb2Ygc2FtcGxl
cyByZWNlaXZlZCAldVxuPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0mcXVvdDssDQogbnVtX3J4X3NhbXBzKTs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBsb2dfcHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18p
Ozwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb3V0ICZsdDsmbHQ7ICZxdW90
O3RvdGFsX3NhbXBzX3JlY3ZkIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX3NhbXBzX3JlY3ZkICZs
dDsmbHQ7ICZxdW90O8KgIHRvdGFsX25vX29mX3NhbXBzIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFs
X25vX29mX3NhbXBzICZsdDsmbHQ7ICZxdW90O1xuJnF1b3Q7Ozwvc3Bhbj48L3A+DQo8cD48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB9IGNhdGNoIChjb25zdCBzdGQ6OmV4Y2VwdGlvbiZhbXA7IGV4KXs8L3Nw
YW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNo
YXIgbXNnWzEwMF09ezB4MDB9Ozwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Zihtc2csJnF1b3Q7ZXJyb3I6IGVycm9yIHdoaWxl
IHN0cmVhbWluZyAlcyZxdW90OywgZXgud2hhdCgpKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYobXNnLCBlcnJvcl9s
dmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG1kLmVycm9yX2NvZGUgPT0gdWhkOjpy
eF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX1RJTUVPVVQpIHs8L3NwYW4+PC9wPg0KPHA+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgwqDCoCBsb2dfcHJpbnRmKCZxdW90O2Vycm9yOiB0aW1lb3V0IHdoaWxlIHN0cmVh
bWluZyZxdW90OywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwvc3Bhbj48L3A+DQo8
cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCDCoMKgIGJyZWFrOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChtZC5lcnJvcl9jb2RlID09IHVo
ZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9PVkVSRkxPVykgezwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG92ZXJmbG93X21l
c3NhZ2UpIHs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvdmVyZmxvd19tZXNzYWdlID0g
ZmFsc2U7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50ZigmcXVvdDtlcnJv
cjogb3ZlcmZsb3cgZGV0ZWN0ZWQmcXVvdDssIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9f
KTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIH08L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnRpbnVlOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChtZC5lcnJvcl9jb2RlICE9IHVoZDo6cnhfbWV0YWRh
dGFfdDo6RVJST1JfQ09ERV9OT05FKXs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgbXNnWzEwMF09ezB4MDB9Ozwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Ziht
c2csJnF1b3Q7ZXJyb3I6ICVzJnF1b3Q7LG1kLnN0cmVycm9yKCkpOzwvc3Bhbj48L3A+DQo8cD48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50Zihtc2cg
LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH08L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdG90YWxfc2FtcHNfcmVjdmQr
PW51bV9yeF9zYW1wczs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPiNpZiAxPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vUmVhZCBJUSBzYW1wbGVzIGZyb20gdXNycCBh
bmQgc3RvcmUgdGhlIGluIHRoZSBGSUxFPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZv
cihpbnQzMl90IGk9MDtpJmx0O21heF9jaGFubmVscztpKyspIHs8L3NwYW4+PC9wPg0KPHA+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZJTEUgKmZwID0gZm9wZW4o
ZmlsZV9uYW1lW2ldLCZxdW90O2ErJnF1b3Q7KTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBsZW4gPSBmd3JpdGUoJmFtcDti
dWZmZXJfZGF0YVtpXS5mcm9udCgpLCBzaXplb2Yoc3RkOjpjb21wbGV4Jmx0O2Zsb2F0Jmd0Oyks
IG51bV9yeF9zYW1wcywgZnApOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZmNsb3NlKGZwKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+I2VuZGlmPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj4jaWYgMDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvL1JlYWQgSVEgc2FtcGxlcyBmcm9tIHVzcnAgYW5kIHN0b3JlIHRoZSBpbiB0aGUgRklM
RTwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IoaW50MzJfdCBpPTA7aSZsdDttYXhf
Y2hhbm5lbHM7aSsrKSB7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzd2l0Y2goaSkgezwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSAwOiBtZW1jcHkoYXJyYXkxW2NvdW50
ZXJdLCAmYW1wO2J1ZmZlcl9kYXRhW2ldLmZyb250KCksIHNpemVvZihzdGQ6OmNvbXBsZXgmbHQ7
ZmxvYXQmZ3Q7KSpudW1fcnhfc2FtcHMpOyBicmVhazs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhc2UgMTogbWVtY3B5KGFycmF5Mltj
b3VudGVyXSwgJmFtcDtidWZmZXJfZGF0YVtpXS5mcm9udCgpLCBzaXplb2Yoc3RkOjpjb21wbGV4
Jmx0O2Zsb2F0Jmd0OykqbnVtX3J4X3NhbXBzKTsgYnJlYWs7PC9zcGFuPjwvcD4NCjxwPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH08L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY291bnRlcisrOzwv
c3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+I2VuZGlmPC9zcGFuPjwvcD4NCjxwPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcHJpbnRm
KHN0ZGVyciwgJnF1b3Q7dG90YWwgc2FtcGxlcyByZWNlaXZlZCBmaWxlOiAlZFxuJnF1b3Q7LCB0
b3RhbF9zYW1wc19yZWN2ZCk7PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90O3dhcm5pbmc6IHN0b3BwaW5n
IHN0cmVhbWluZyBtb2RlJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9z
cGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBsb2dfcHJpbnRmKCZxdW90O3dhcm5pbmc6IGJ1ZmZlciBmbHVzaCBzdGFydGVkISZxdW90Oywg
ZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpzdHJlYW1fY21kX3Qgc3Ry
ZWFtX2NtZF9zdG9wKHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVE9QX0NPTlRJTlVP
VVMpOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcnhfc3RyZWFtLSZndDtpc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWRfc3RvcCk7
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvL3N0ZDo6Y291dCAmbHQ7Jmx0OyAmcXVvdDt0b3RhbF9zYW1wc19yZWN2ZCA6ICZxdW90
OyAmbHQ7Jmx0OyB0b3RhbF9zYW1wc19yZWN2ZCAmbHQ7Jmx0OyAmcXVvdDvCoCB0b3RhbF9ub19v
Zl9zYW1wcyA6ICZxdW90OyAmbHQ7Jmx0OyB0b3RhbF9ub19vZl9zYW1wcyAmbHQ7Jmx0OyAmcXVv
dDtcbiZxdW90Ozs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPiNpZiAwPC9zcGFu
PjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdGV4cHIgZG91YmxlIHRpbWVvdXQgeyAwLjAxMCB9OyAvLzEwbXM8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXRpYyBzdGQ6
OmNvbXBsZXgmbHQ7c2hvcnQmZ3Q7IGR1bW15X2J1ZmZlcls1MDAwMDAwMF07PC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0aWMg
dWhkOjpyeF9tZXRhZGF0YV90IGR1bW15X21ldGEgeyB9Ozwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUgKHJ4X3N0cmVhbS0m
Z3Q7cmVjdihkdW1teV9idWZmZXIsIDUwMDAwMDAwLCBkdW1teV9tZXRhLCB0aW1lb3V0KSkge308
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHVoZF9zcmMtJmd0O2NsZWFyX2NvbW1hbmRfdGltZSgpOyAvL1Jlc2V0IGFsbCB0aW1lIGNv
dW50ZXJzIHVudGlsbCBuZXh0IHR1bmUhITwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50ZigmcXVvdDt3YXJuaW5nOiBi
dWZmZXIgZmx1c2ggY29tcGxldGVkISZxdW90OywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5F
X18pOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+I2VuZGlmPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj59PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9wPg0KPHA+
PHNwYW4gbGFuZz0iRU4tVVMiPkhvcGluZyBmb3IgYW4gZWFybHkgcmVwbHkuPC9zcGFuPjwvcD4N
CjxwPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1V
UyI+UmVnYXJkczwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJFTi1VUyI+U25laGFzaXNoPC9z
cGFuPjwvcD4NCjxwPsKgPC9wPg0KPHA+U2VudCBmcm9tIDxhIGhyZWY9Imh0dHBzOi8vZ28ubWlj
cm9zb2Z0LmNvbS9md2xpbmsvP0xpbmtJZD01NTA5ODYiIHRhcmdldD0iX2JsYW5rIj4NCk1haWw8
L2E+IGZvciBXaW5kb3dzIDEwPC9wPg0KPHA+wqA8L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9j
a3F1b3RlPg0KPC9kaXY+DQo8cCBzdHlsZT0ibWFyZ2luLWxlZnQ6NC44cHQiPl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPg0KdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb208L2E+PHU+PC91Pjx1PjwvdT48L3A+DQo8cD48dT48L3U+wqA8dT48L3U+
PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFp
bHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPg0KdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
PC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8L2Jsb2NrcXVvdGU+PC9k
aXY+DQo=
--0000000000009cca6a05c33f7f5d--

--===============7089893429741662222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7089893429741662222==--
