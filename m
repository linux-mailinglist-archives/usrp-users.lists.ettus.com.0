Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EB138B643
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 20:45:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE2C438644B
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 14:45:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="ZRsXVpLu";
	dkim-atps=neutral
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DC81386257
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 14:44:25 -0400 (EDT)
Received: by mail-vs1-f43.google.com with SMTP id q6so4876830vsp.13
        for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 11:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iqlbk0e5ruJj0F9q0TJOKJ5xqFpfVT9CW4gSFTFZHzs=;
        b=ZRsXVpLuqeiIAOLc/pIg4Sdo4g/pPqmz5NAlvTS4b7fXcWKEl19Ni451pyg96dvhZw
         p6Z+Zhl2jifTlxvLyCQXZAjpLqFP0+hdX8wQ5nq1M6oGQ4/+AMIfE1sL9vZIhudN6bmz
         tPIwQyGned5E1lJAzUGfwuj5FLsh2XpoBGlcHCX5DwwZP2MQx9hKGSK1/MSedZzaCi9i
         DFhBSn4ppjyXSDmeyWi1RA2UaruoOkm09vki7hs3NrxAZ3r4DyFS5ZgogMns6RiFdTLv
         sLVf+v+M8at11Big7rv7qneE/8lCZKY5jTVCyQuWDe28rVXrcmcbW6UnBTUzv2TxWrKy
         km8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iqlbk0e5ruJj0F9q0TJOKJ5xqFpfVT9CW4gSFTFZHzs=;
        b=IShr+hL4sfWebc2Wg/ipHoMSdZGG10f4Bk3CgQoJUPO/NgSC6TQEznhIQfgbBZXmzS
         TJGnu7IsVIaD8DbV7siUfTFLux+Zn81uqeBsYtIcEYlV7klx96becmpTp8GEKAOAbAXp
         P2LIq+PbCG5mPl8ssaHxLgbpamd1jq6EAP3v7ciDqv5iHegcI4wvuSQ92WMepP0aAb6Q
         Byy+9Pjqnmd7DN4dJUWNaZeBzUrcAehsVGspVr52QrPN0GQR1mhZqYIgqchJG4ZT6bbU
         6/tcIzPlObRM27fFplQvhglRErylh0uB1m9d2qGL0UOaKjOejFDp41ClIkwWZzOrEy5b
         0nxQ==
X-Gm-Message-State: AOAM530MDx6UtR/OoinVxPksLnZpPRgO+K63TkEqdCSZdg5j6NrBdkyN
	mq1GYeIwTYQ3lhBTSr/HknrqMUZ39D0BA6NtoTHIhdpt
X-Google-Smtp-Source: ABdhPJwBGq2+OeNQVJd88v68488n5FAx94gbTuJSzp+vxrvE726dHvjTZCcOq0VikSVpYeS4Fj3lQftWsJo8nhZrYkM=
X-Received: by 2002:a67:ec4f:: with SMTP id z15mr5746916vso.27.1621536264684;
 Thu, 20 May 2021 11:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com> <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 20 May 2021 14:43:48 -0400
Message-ID: <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Message-ID-Hash: DQVWXYIG5SHXVB6SGQBCMYLOZWWBPRPZ
X-Message-ID-Hash: DQVWXYIG5SHXVB6SGQBCMYLOZWWBPRPZ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQVWXYIG5SHXVB6SGQBCMYLOZWWBPRPZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1505555261356760130=="

--===============1505555261356760130==
Content-Type: multipart/alternative; boundary="0000000000000c16f305c2c755f1"

--0000000000000c16f305c2c755f1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Snehasish,

I would suggest starting with a known working in-tree example like
rfnoc_rx_to_file.cpp. It has a section that connects a user defined RFNoC
block, and you can easily modify that to instead connect the FIFOs and FIR
filter.

Jonathon

On Thu, May 20, 2021 at 4:31 AM Snehasish Kar <snehasish.cse@live.com>
wrote:

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

--0000000000000c16f305c2c755f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGVsbG8gU25laGFzaXNoLDxkaXY+PGJyPjwvZGl2PjxkaXY+SSB3b3Vs
ZCBzdWdnZXN0IHN0YXJ0aW5nIHdpdGggYSBrbm93biB3b3JraW5nIGluLXRyZWUgZXhhbXBsZSBs
aWtlIHJmbm9jX3J4X3RvX2ZpbGUuY3BwLiBJdCBoYXMgYSBzZWN0aW9uIHRoYXTCoGNvbm5lY3Rz
IGEgdXNlciBkZWZpbmVkIFJGTm9DIGJsb2NrLCBhbmQgeW91IGNhbiBlYXNpbHkgbW9kaWZ5IHRo
YXQgdG8gaW5zdGVhZCBjb25uZWN0IHRoZSBGSUZPcyBhbmQgRklSIGZpbHRlci48L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PkpvbmF0aG9uPC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWls
X3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVGh1LCBNYXkgMjAs
IDIwMjEgYXQgNDozMSBBTSBTbmVoYXNpc2ggS2FyICZsdDs8YSBocmVmPSJtYWlsdG86c25laGFz
aXNoLmNzZUBsaXZlLmNvbSI+c25laGFzaXNoLmNzZUBsaXZlLmNvbTwvYT4mZ3Q7IHdyb3RlOjxi
cj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4
IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFk
ZGluZy1sZWZ0OjFleCI+DQoNCg0KDQoNCg0KPGRpdiBsYW5nPSJFTi1JTiIgc3R5bGU9Im92ZXJm
bG93LXdyYXA6IGJyZWFrLXdvcmQ7Ij4NCjxkaXYgY2xhc3M9ImdtYWlsLW1fNTk4NTc1ODA1Njk3
NTkxMDcwNFdvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+SGVsbG8gUm9iPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPlRyaWVkIHRoYXQgYnV0IGl0IGRp
ZG7igJl0IHdvcmsuIEkgYW0gdXNpbmcgdGhlIHN0YW5kYXJkIFJGTk9DIGZpciBmaWx0ZXIgYW5k
IHJhZGlvLjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj48dT48L3U+wqA8dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5SZWdhcmRzPHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPlNuZWhhc2lzaDwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48L3U+wqA8dT48L3U+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+U2VudCBmcm9tIDxhIGhyZWY9Imh0dHBzOi8vZ28ubWljcm9zb2Z0
LmNvbS9md2xpbmsvP0xpbmtJZD01NTA5ODYiIHRhcmdldD0iX2JsYW5rIj4NCk1haWw8L2E+IGZv
ciBXaW5kb3dzIDEwPC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91Pjwv
cD4NCjxkaXYgc3R5bGU9ImJvcmRlci1yaWdodDpub25lO2JvcmRlci1ib3R0b206bm9uZTtib3Jk
ZXItbGVmdDpub25lO2JvcmRlci10b3A6MXB0IHNvbGlkIHJnYigyMjUsMjI1LDIyNSk7cGFkZGlu
ZzozcHQgMGNtIDBjbSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0iYm9yZGVyOm5vbmU7
cGFkZGluZzowY20iPjxiPkZyb206IDwvYj48YSBocmVmPSJtYWlsdG86cmtvc3NsZXJAbmQuZWR1
IiB0YXJnZXQ9Il9ibGFuayI+Um9iIEtvc3NsZXI8L2E+PGJyPg0KPGI+U2VudDogPC9iPjE4IE1h
eSAyMDIxIDIxOjM5PGJyPg0KPGI+VG86IDwvYj48YSBocmVmPSJtYWlsdG86c25laGFzaXNoLmNz
ZUBsaXZlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlNuZWhhc2lzaCBLYXI8L2E+PGJyPg0KPGI+Q2M6
IDwvYj48YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQo8Yj5TdWJqZWN0OiA8
L2I+UmU6IFtVU1JQLXVzZXJzXSBUaW1lb3V0IHdoaWxlIHN0cmVhbWluZyBJUSBzYW1wbGVzIHRv
IGhvc3QgaW4gUkZOT0M8L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7C
oDx1PjwvdT48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+UGVyaGFwcyB0cnkgaXNz
dWVfc3RyZWFtX2NtZCBvbiB0aGUgcmFkaW8gY3RybCByYXRoZXIgdGhhbiB0aGUgcnhfc3RyZWFt
ZXIuPHU+PC91Pjx1PjwvdT48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Um9iPHU+
PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+
PC91PsKgPHU+PC91PjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24g
TW9uLCBNYXkgMTcsIDIwMjEgYXQgMTI6NDUgUE0gU25laGFzaXNoIEthciAmbHQ7PGEgaHJlZj0i
bWFpbHRvOnNuZWhhc2lzaC5jc2VAbGl2ZS5jb20iIHRhcmdldD0iX2JsYW5rIj5zbmVoYXNpc2gu
Y3NlQGxpdmUuY29tPC9hPiZndDsgd3JvdGU6PHU+PC91Pjx1PjwvdT48L3A+DQo8L2Rpdj4NCjxi
bG9ja3F1b3RlIHN0eWxlPSJib3JkZXItdG9wOm5vbmU7Ym9yZGVyLXJpZ2h0Om5vbmU7Ym9yZGVy
LWJvdHRvbTpub25lO2JvcmRlci1sZWZ0OjFwdCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRp
bmc6MGNtIDBjbSAwY20gNnB0O21hcmdpbi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowY20iPg0K
PGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+SGVs
bG8NCjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
wqA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPkkg
YW0gdXNpbmcgdGhlIGJlbG93IGNvZGUgdG8gc3RyZWFtIElRIHNhbXBsZXMgdG8gaG9zdCB1c2lu
ZyBSRk5PQywgYnV0IHdoaWxlIHN0cmVhbWluZyBJIGFtIGdldHRpbmcgdGltZW91dC4gTXkgcmZu
b2MgZ3JhcGggbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPlJhZGlvXzA9Jmd0O2ZpZm89Jmd0O2Zpcl9m
aWx0ZXI9Jmd0O2ZpZm89Jmd0O2hvc3Q8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPlJhZGlvXzE9Jmd0O2ZpZm89Jmd0O2Zpcl9maWx0ZXI9Jmd0O2Zp
Zm89Jmd0O2hvc3Q8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj5XaXRoIHRoZSBhYm92ZSBmbG93Z3JhcGggd2UgYXJlIGFibGUgdG8gc3RyZWFtIHNhbXBs
ZXMgaW4gZ251cmFkaW8uPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+U2FtcGxlIHJhdGUgdXNlZDogMTAwbXNwczwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+SG9zdCBQQyBjb25maWd1cmF0aW9uOiBpbnRl
bCBpNyBwcm9jZXNzb3IgOTxzdXA+dGg8L3N1cD4gZ2VuPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkFNOiA4R0I8
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPkludGVy
ZmFjZTogUENJRSBleHByZXNzPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj5VSEQgdmVyc2lvbjogVUhEXzMuMTQuMS4wLTAtdW5rbm93bjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPkJlbG93IGlzIHRoZSBv
dXRwdXQgb2bCoCB1aGRfdXNycF9wcm9iZTo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj46fi9EZXNrdG9wL3VoZF9yZm5vY19maWxlX3dyaXR0ZXIvRGVi
dWckIHVoZF91c3JwX3Byb2JlDQo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4w
OyBCb29zdF8xMDY1MDE7IFVIRF8zLjE0LjEuMC0wLXVua25vd248L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbWDMwMF0gWDMwMCBpbml0
aWFsaXphdGlvbiBzZXF1ZW5jZS4uLjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFtYMzAwXSBDb25uZWN0aW5nIHRvIG5pdXNycHJpb3Jw
YyBhdCBsb2NhbGhvc3Q6NTQ0NC4uLjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFtYMzAwXSBVc2luZyBMVkJJVFggYml0ZmlsZSAvdXNy
L2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMvdXNycF94MzEwX2ZwZ2FfWEcubHZiaXR4Li4uPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gW1gz
MDBdIFJhZGlvIDF4IGNsb2NrOiAyMDAgTUh6PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gW0dQU10gRm91bmQgYW4gaW50ZXJuYWwgR1BT
RE86IExDX1hPLCBGaXJtd2FyZSBSZXYgMC45MjlhPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bV0FSTklOR10gW0dQU10gdXBkYXRlX2NhY2hlOiBN
YWxmb3JtZWQgR1BTRE8gc3RyaW5nOiBMQ19YTywgRmlybXdhcmUgUmV2IDAuOTI5YTwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0Rt
YUZJRk9fMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwRDAwMDAw
MDAwMDAwKTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+W0lORk9dIFswL0RtYUZJRk9fMF0gQklTVCBwYXNzZWQgKFRocm91Z2hwdXQ6IDEzMTEgTUIv
cyk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJ
TkZPXSBbMC9EbWFGSUZPXzBdIEJJU1QgcGFzc2VkIChUaHJvdWdocHV0OiAxMzE1IE1CL3MpPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10g
WzAvUmFkaW9fMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHgxMkFEMTAw
MDAwMDAwMDAxKTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+W0lORk9dIFswL1JhZGlvXzFdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0Mg
SUQ6IDB4MTJBRDEwMDAwMDAwMDAwMSk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9ERENfMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNv
bnRyb2wgKE5PQyBJRDogMHhEREMwMDAwMDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0REQ18xXSBJbml0aWFsaXpp
bmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEREQzAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRklSXzBd
IEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjExMjAwMDAwMDAwMDAwMCk8
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZP
XSBbMC9GSVJfMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMTEyMDAw
MDAwMDAwMDAwKTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+W0lORk9dIFswL0RVQ18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElE
OiAweEQwQzAwMDAwMDAwMDAwMDApPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRFVDXzFdIEluaXRpYWxpemluZyBibG9jayBjb250
cm9sIChOT0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9GSUZPXzBdIEluaXRpYWxpemlu
ZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9GSUZPXzFd
IEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCk8
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZP
XSBbMC9GSUZPXzJdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjFGMDAw
MDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPltJTkZPXSBbMC9GSUZPXzNdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0Mg
SUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPltXQVJOSU5HXSBbWDMwMF0gQ2Fubm90IHVwZGF0ZSBtYXN0ZXIg
Y2xvY2sgcmF0ZSEgWDMwMCBTZXJpZXMgZG9lcyBub3QgYWxsb3cgY2hhbmdpbmcgdGhlIGNsb2Nr
IHJhdGUgZHVyaW5nIHJ1bnRpbWUuPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+Lzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqDCoMKgwqDCoCBEZXZpY2U6IFgtU2VyaWVzIERldmljZTwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqDCoMKgIF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoMKgIC88L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgwqDCoMKgwqAgTWJvYXJkOiBYMzEwPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCByZXZpc2lvbjogMTE8L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHJldmlz
aW9uX2NvbXBhdDogNzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgcHJvZHVjdDogMzA5NjA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIG1hYy1hZGRyMDogMDA6
ODA6MmY6MTg6ZGU6NGQ8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIG1hYy1hZGRyMTogMDA6ODA6MmY6MTg6ZGU6NGU8L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IGdhdGV3YXk6IDE5Mi4xNjguMTAuMTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgaXAtYWRkcjA6IDE5Mi4xNjguMTAuMjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgc3VibmV0MDogMjU1LjI1NS4yNTUuMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgaXAtYWRkcjE6IDE5Mi4xNjguMjAuMjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgc3VibmV0MTogMjU1LjI1NS4yNTUuMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgaXAtYWRkcjI6IDE5Mi4xNjguMzAu
Mjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgc3VibmV0MjogMjU1LjI1NS4yNTUuMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgaXAtYWRkcjM6IDE5Mi4xNjgu
NDAuMjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgc3VibmV0MzogMjU1LjI1NS4yNTUuMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgc2VyaWFsOiAzMTRCMjkz
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCBGVyBWZXJzaW9uOiA2LjA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIEZQR0EgVmVyc2lvbjogMzUuMTwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
RlBHQSBnaXQgaGFzaDogZmZmZmZmZi1kaXJ0eTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgUkZOb0MgY2FwYWJsZTogWWVzPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoA0KPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCBUaW1lIHNvdXJjZXM6wqAgaW50ZXJuYWwsIGV4dGVybmFsLCBncHNkbzwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgQ2xvY2sgc291cmNlczogaW50ZXJuYWwsIGV4dGVybmFsLCBncHNkbzwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgU2Vu
c29yczogZ3BzX2dwZ2dhLCBncHNfZ3BybWMsIGdwc190aW1lLCBncHNfbG9ja2VkLCBncHNfc2Vy
dm8sIHJlZl9sb2NrZWQ8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJY
IERib2FyZDogQTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgSUQ6IFR3aW5SWCBSZXYgQiAoMHgwMDkzKTwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
fMKgwqAgU2VyaWFsOiAzMTQ3RkI4PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBGcm9udGVuZDogMDwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAg
TmFtZTogVHdpblJYIFJYMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfCDCoMKgfMKgwqAgQW50ZW5uYXM6IFJYMSwgUlgyPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoCBTZW5zb3JzOiBsb19sb2NrZWQ8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZy
ZXEgcmFuZ2U6IDEwLjAwMCB0byA2MDAwLjAwMCBNSHo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4g
cmFuZ2UgYWxsOiAwLjAgdG8gOTMuMCBzdGVwIDEuMCBkQjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQmFu
ZHdpZHRoIHJhbmdlOiA4MDAwMDAwMC4wIHRvIDgwMDAwMDAwLjAgc3RlcCAwLjAgSHo8L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIHzCoMKgIENvbm5lY3Rpb24gVHlwZTogSUk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMg
TE8gb2Zmc2V0OiBObzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
IHzCoMKgwqDCoMKgwqAgUlggRnJvbnRlbmQ6IDE8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IFR3
aW5SWCBSWDE8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiBSWDEsIFJYMjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgfMKgwqAgU2Vuc29yczogbG9fbG9ja2VkPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdl
OiAxMC4wMDAgdG8gNjAwMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGFs
bDogMC4wIHRvIDkzLjAgc3RlcCAxLjAgZEI8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0aCBy
YW5nZTogODAwMDAwMDAuMCB0byA4MDAwMDAwMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8
wqDCoCBDb25uZWN0aW9uIFR5cGU6IFFRPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExPIG9mZnNl
dDogTm88L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKg
wqDCoMKgIFJYIENvZGVjOiBBPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBhZHM2MnA0ODwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBkaWdpdGFsOiAwLjAgdG8gNi4wIHN0ZXAgMC41IGRC
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBEYm9hcmQ6IEI8L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIElEOiBUd2luUlggUmV2IEIgKDB4MDA5Myk8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIFNlcmlhbDog
MzE0N0ZDMTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKg
wqDCoMKgIMKgUlggRnJvbnRlbmQ6IDA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IFR3aW5SWCBS
WDA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiBSWDEsIFJYMjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKg
wqAgU2Vuc29yczogbG9fbG9ja2VkPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAxMC4w
MDAgdG8gNjAwMC4wMDAgTUh6PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGFsbDogMC4w
IHRvIDkzLjAgc3RlcCAxLjAgZEI8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0aCByYW5nZTog
ODAwMDAwMDAuMCB0byA4MDAwMDAwMC4wIHN0ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBD
b25uZWN0aW9uIFR5cGU6IElJPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBVc2VzIExPIG9mZnNldDogTm88
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKg
IFJYIEZyb250ZW5kOiAxPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBUd2luUlggUlgxPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCB8wqDCoCBBbnRlbm5hczogUlgxLCBSWDI8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNv
cnM6IGxvX2xvY2tlZDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgRnJlcSByYW5nZTogMTAuMDAwIHRvIDYw
MDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA5My4w
IHN0ZXAgMS4wIGRCPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDgwMDAwMDAw
LjAgdG8gODAwMDAwMDAuMCBzdGVwIDAuMCBIejwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQ29ubmVjdGlv
biBUeXBlOiBRUTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgVXNlcyBMTyBvZmZzZXQ6IE5vPC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8
wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX188L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBDb2Rl
YzogQjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogYWRzNjJwNDg8L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKg
IEdhaW4gcmFuZ2UgZGlnaXRhbDogMC4wIHRvIDYuMCBzdGVwIDAuNSBkQjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oMKgIC88L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggRGJvYXJkOiBBPC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDog
VW5rbm93biAoMHgwMDkyKTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgU2VyaWFsOiAzMTQ3RkI4PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X188L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBUWCBGcm9udGVu
ZDogMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVW5rbm93biAoMHgwMDkyKSAtIDA8L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIHzCoMKgIEFudGVubmFzOg0KPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBTZW5zb3JzOg0KPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAwLjAwMCB0byAwLjAwMCBNSHo8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzC
oMKgIHzCoMKgIEdhaW4gRWxlbWVudHM6IE5vbmU8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0
aCByYW5nZTogMC4wIHRvIDAuMCBzdGVwIDAuMCBIejwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQ29ubmVj
dGlvbiBUeXBlOiBJUTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgVXNlcyBMTyBvZmZzZXQ6IE5vPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfCDCoMKgfMKgwqAgfMKgwqDCoMKgwqDCoCBUWCBD
b2RlYzogQTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogYWQ5MTQ2PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDC
oCBHYWluIEVsZW1lbnRzOiBOb25lPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX188L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqAgLzwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKg
wqDCoCBUWCBEYm9hcmQ6IEI8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIElEOiBVbmtub3duICgweDAwOTIpPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCBTZXJpYWw6IDMxNDdGQzE8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIEZyb250ZW5kOiAwPC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDC
oCBOYW1lOiBVbmtub3duICgweDAwOTIpIC0gMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQW50ZW5uYXM6
DQo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoCDCoHzCoMKgIHzCoMKgIFNlbnNvcnM6DQo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEg
cmFuZ2U6IDAuMDAwIHRvIDAuMDAwIE1Iejwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiBFbGVtZW50
czogTm9uZTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQmFuZHdpZHRoIHJhbmdlOiAwLjAgdG8gMC4wIHN0
ZXAgMC4wIEh6PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElRPC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8
wqDCoCB8wqDCoCBVc2VzIExPIG9mZnNldDogTm88L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDC
oCAvPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIENvZGVjOiBCPC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8
wqDCoCBOYW1lOiBhZDkxNDY8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gRWxlbWVudHM6IE5vbmU8
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqDCoCAvPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJGTm9DIGJsb2NrcyBvbiB0
aGlzIGRldmljZTo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgDQo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRG1hRklGT18wPC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCAqIFJhZGlvXzA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogUmFkaW9fMTwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBE
RENfMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgKiBERENfMTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSVJfMDwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgKiBGSVJfMTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBEVUNfMDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBEVUNfMTwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgKiBGSUZPXzA8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogRklGT18xPC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEZJ
Rk9fMjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzM8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj5Tb3VyY2UgY29kZTo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj52b2lkIHVoZF9pbnRlcmZhY2U6OnN0YXJ0X3N0cmVh
bW1pbmcoaW50MzJfdCBudW1fc2FtcGxlc190b19yZWNlaXZlLCBpbnQxNl90IG1heF9jaGFubmVs
cywgdWludDY0X3Qgc2FtcGxlc19wZXJfYnVyc3QsIGludDMyX3QgdG90YWxfbm9fb2Zfc2FtcHMp
IHs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVoZDo6cnhfbWV0YWRhdGFfdCBtZDs8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJvb2wgb3ZlcmZsb3dfbWVzc2FnZSA9IHRydWU7PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB0cnkgezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1aGQ6OnJmbm9jOjpncmFwaDo6c3B0ciByeF9ncmFwaCA9IHVzcnBfcmZub2MtJmd0O2Ny
ZWF0ZV9ncmFwaCgmcXVvdDthbnRpZHJvbmVfcnhfY2hhaW4mcXVvdDspOzwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c3JwX3Jmbm9jLSZndDtjbGVhcigp
Ozwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4X2dy
YXBoLSZndDtjb25uZWN0KHJhZGlvX2N0cmxbMF0tJmd0O2dldF9ibG9ja19pZCgpLCBmaWZvX2N0
cmxbMF0tJmd0O2dldF9ibG9ja19pZCgpKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChmaWZvX2N0cmxbMF0tJmd0
O2dldF9ibG9ja19pZCgpLCBmaXJfY3RybFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkpOzwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4X2dyYXBoLSZndDtj
b25uZWN0KGZpcl9jdHJsWzBdLSZndDtnZXRfYmxvY2tfaWQoKSwgZmlmb19jdHJsWzFdLSZndDtn
ZXRfYmxvY2tfaWQoKSk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvL3J4X2dyYXBoLSZndDtjb25uZWN0KHJhZGlvX2N0cmxbMV0tJmd0O2dldF9ibG9ja19p
ZCgpLCBmaWZvX2N0cmxbMl0tJmd0O2dldF9ibG9ja19pZCgpKTs8L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChmaWZv
X2N0cmxbMl0tJmd0O2dldF9ibG9ja19pZCgpLCBmaXJfY3RybFsxXS0mZ3Q7Z2V0X2Jsb2NrX2lk
KCkpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4
X2dyYXBoLSZndDtjb25uZWN0KGZpcl9jdHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKSwgZmlmb19j
dHJsWzNdLSZndDtnZXRfYmxvY2tfaWQoKSk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgDQo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcnhfZ3JhcGgtJmd0O2Nvbm5lY3QocmFkaW9fY3RybFswXS0mZ3Q7Z2V0X2Js
b2NrX2lkKCksIDAsIGZpZm9fY3RybFsxXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIDApOzwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqA8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9IGNhdGNoIChjb25zdCBzdGQ6OmV4Y2VwdGlvbiZhbXA7IGV4KSB7PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgbXNnWzEwMF09
ezB4MDB9Ozwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
cHJpbnRmKG1zZywmcXVvdDtlcnJvcjogdW5hYmxlIHRvIGNyZWF0ZS9zZXQgYSByYWRpby9wYXJh
bWV0ZXIgJXMmcXVvdDssIGV4LndoYXQoKSk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYobXNnLCBlcnJvcl9sdmwsIF9fRklMRV9fLCBf
X0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1
aGQ6OmRldmljZV9hZGRyX3Qgc3RyZWFtX2FyZ3NfcmZub2M7PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdGQ6OnZlY3RvciZsdDtzdGQ6OnN0cmluZyZndDsgYmxvY2tfcG9ydHsmcXVvdDswJnF1b3Q7
LCAmcXVvdDsxJnF1b3Q7fTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9hcmdzX3Jmbm9j
WyZxdW90O2Jsb2NrX2lkJnF1b3Q7XSA9wqDCoCBmaWZvX2N0cmxbMV0tJmd0O2dldF9ibG9ja19p
ZCgpLnRvX3N0cmluZygpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtX2FyZ3NfcmZub2Nb
JnF1b3Q7YmxvY2tfcG9ydCZxdW90O10gPSBibG9ja19wb3J0WzBdOzwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLy9zdHJlYW1fYXJnc19yZm5vY1smcXVvdDtibG9ja19pZCZxdW90O10gPSBmaWZvX2N0
cmxbM10tJmd0O2dldF9ibG9ja19pZCgpLnRvX3N0cmluZygpOzwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLy9zdHJlYW1fYXJnc19yZm5vY1smcXVvdDtibG9ja19wb3J0JnF1b3Q7XSA9IGJsb2NrX3Bv
cnRbMV07PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9hcmdzX3Qgc3RyZWFtX2Fy
Z3MoJnF1b3Q7c2MxNiZxdW90OywmcXVvdDtzYzE2JnF1b3Q7KTs8L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cmVhbV9hcmdzLmFyZ3MgPSBzdHJlYW1fYXJnc19yZm5vYzs8L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHNpemVfdCBzcHAgPSByYWRpb19jdHJsWzBdLSZndDtnZXRfYXJncygpLmNhc3QmbHQ7
c2l6ZV90Jmd0OygmcXVvdDtzcHAmcXVvdDssIHNwcCk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJlYW1fYXJncy5hcmdzWyZxdW90O3NwcCZxdW90O10gPSBib29zdDo6bGV4aWNhbF9jYXN0Jmx0
O3N0ZDo6c3RyaW5nJmd0OyhzcHApOyAvL1RPRE86IGNvbnNpZGVyaW5nIDEwMDAgc2FtcGxlcyBi
dXQgY2hlY2s8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ4X3N0cmVhbSA9IHVoZF9zcmMtJmd0O2dl
dF9yeF9zdHJlYW0oc3RyZWFtX2FyZ3MpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgezwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsw
eDAwfTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3By
aW50Zihtc2csICZxdW90O2luZm86IERhZW1vbiBsYXVuY2hlZCB3aXRoIHBpZCAlZCZxdW90Oywg
Z2V0cGlkKCkpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBsb2dfcHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zYW1wbGVzX3Blcl9idXJz
dCA9IDEwMDA7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9jbWRfdCBzdHJlYW1f
Y21kKC8qdWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVMqLyB1
aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfTlVNX1NBTVBTX0FORF9ET05FKTs8L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9jbWQubnVtX3NhbXBzwqAgPSB0b3RhbF9ub19vZl9zYW1w
czs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9jbWQuc3RyZWFtX25vdyA9IHRydWU7PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAvL3N0cmVhbV9jbWQudGltZV9zcGVjID3CoCB1aGRfc3JjLSZn
dDtnZXRfdGltZV9ub3coKSArIDo6dWhkOjp0aW1lX3NwZWNfdCgwLjEpOy8vdGltZV9zcGVjOzwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcnhfc3RyZWFtLSZndDtpc3N1ZV9zdHJlYW1fY21kKHN0cmVh
bV9jbWQpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2FtcGxlc19wZXJfYnVyc3QgPSByeF9zdHJl
YW0tJmd0O2dldF9tYXhfbnVtX3NhbXBzKCk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGQ6OnZl
Y3RvciZsdDtzdGQ6OnZlY3RvciZsdDtzdGQ6OmNvbXBsZXgmbHQ7ZmxvYXQmZ3Q7Jmd0OyZndDsg
YnVmZmVyX2RhdGEobWF4X2NoYW5uZWxzLCBzdGQ6OnZlY3RvciZsdDtzdGQ6OmNvbXBsZXgmbHQ7
ZmxvYXQmZ3Q7ICZndDsoc2FtcGxlc19wZXJfYnVyc3QpKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0ZDo6dmVjdG9yJmx0O3ZvaWQgKiZndDsgYnVmZnMobWF4X2NoYW5uZWxzKTs8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGZvcihpbnQ4X3QgaSA9IDA7aSZsdDttYXhfY2hhbm5lbHM7aSsrKSB7PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ1ZmZzW2ldID0g
JmFtcDtidWZmZXJfZGF0YVtpXS5mcm9udCgpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdWludDY0X3QgdG90YWxfc2FtcHNfcmVjdmQgPTB4MDA7PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnQzMl90IHRvdGFsX3NpemVfd3JvdGVfdG9fZmlsZSA9MHgwMDs8
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludDMyX3QgY291bnRlciA9IDB4MDA7PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAvL3N0ZDo6Y29tcGxleCZsdDtmbG9hdCZndDsgYXJyYXkxWzEwMDAwMF1bMTAw
MF17ezB4MDB9fTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb21wbGV4Jmx0O2Zsb2F0
Jmd0OyBhcnJheTJbMTAwMDAwXVsxMDAwXXt7MHgwMH19Ozwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ly9mcHJpbnRmKHN0ZGVyciwmcXVvdDt0b3RhbCBudW0gb2Ygc2FtcHMgJWRcbiZxdW90OywgdG90
YWxfbm9fb2Zfc2FtcHMpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUoIXN0b3BfcnggYW5k
ICgodG90YWxfc2FtcHNfcmVjdmQhPXRvdGFsX25vX29mX3NhbXBzKSBvciAodG90YWxfbm9fb2Zf
c2FtcHM9PTB4MDApKSkgezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBidWZmcy5jbGVhcigpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzaXplX3QgbnVtX3J4X3NhbXBzID0gMHgwMDs8L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJ5IHs8L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG51bV9yeF9zYW1wcyA9IHJ4X3N0cmVhbS0mZ3Q7cmVjdihidWZmcywgc2FtcGxlc19wZXJfYnVy
c3QsIG1kLCAxLjApOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYoZXJyb3JfbHZsPT0zKSB7PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciBtc2dbNzAwXT17
MHgwMH07PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJp
bnRmKG1zZywmcXVvdDtcbj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09XG7CoCBOdW1iZXIgb2Ygc2FtcGxlcyByZWNlaXZlZCAldVxuPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0mcXVvdDss
DQogbnVtX3J4X3NhbXBzKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsb2dfcHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb3V0
ICZsdDsmbHQ7ICZxdW90O3RvdGFsX3NhbXBzX3JlY3ZkIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFs
X3NhbXBzX3JlY3ZkICZsdDsmbHQ7ICZxdW90O8KgIHRvdGFsX25vX29mX3NhbXBzIDogJnF1b3Q7
ICZsdDsmbHQ7IHRvdGFsX25vX29mX3NhbXBzDQogJmx0OyZsdDsgJnF1b3Q7XG4mcXVvdDs7PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH0gY2F0Y2ggKGNvbnN0IHN0ZDo6ZXhjZXB0aW9uJmFtcDsgZXgpezwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY2hhciBtc2dbMTAwXT17MHgwMH07PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJp
bnRmKG1zZywmcXVvdDtlcnJvcjogZXJyb3Igd2hpbGUgc3RyZWFtaW5nICVzJnF1b3Q7LCBleC53
aGF0KCkpOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50Zihtc2csIGVycm9yX2x2bCwgX19G
SUxFX18sIF9fTElORV9fKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAobWQuZXJyb3JfY29kZSA9PSB1aGQ6OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfVElN
RU9VVCkgezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDC
oMKgIGxvZ19wcmludGYoJnF1b3Q7ZXJyb3I6IHRpbWVvdXQgd2hpbGUgc3RyZWFtaW5nJnF1b3Q7
LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqAgYnJlYWs7PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG1kLmVycm9yX2NvZGUgPT0gdWhkOjpyeF9tZXRhZGF0
YV90OjpFUlJPUl9DT0RFX09WRVJGTE9XKSB7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAob3ZlcmZs
b3dfbWVzc2FnZSkgezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG92ZXJmbG93X21lc3NhZ2UgPSBmYWxzZTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90O2Vycm9yOiBvdmVyZmxvdyBkZXRl
Y3RlZCZxdW90OywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG1kLmVycm9yX2NvZGUgIT0gdWhkOjpyeF9tZXRhZGF0
YV90OjpFUlJPUl9DT0RFX05PTkUpezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciBtc2dbMTAwXT17
MHgwMH07PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJpbnRmKG1zZywmcXVvdDtlcnJvcjogJXMmcXVv
dDssbWQuc3RyZXJyb3IoKSk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKG1zZyAsIGVy
cm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB0b3RhbF9zYW1wc19yZWN2ZCs9bnVtX3J4X3NhbXBzOzwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+I2lmIDE8L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9SZWFkIElRIHNhbXBsZXMg
ZnJvbSB1c3JwIGFuZCBzdG9yZSB0aGUgaW4gdGhlIEZJTEU8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm9yKGludDMyX3QgaT0wO2kmbHQ7bWF4X2NoYW5u
ZWxzO2krKykgezwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRklMRSAqZnAgPSBmb3BlbihmaWxlX25hbWVb
aV0sJnF1b3Q7YSsmcXVvdDspOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGxlbiA9IGZ3cml0
ZSgmYW1wO2J1ZmZlcl9kYXRhW2ldLmZyb250KCksIHNpemVvZihzdGQ6OmNvbXBsZXgmbHQ7Zmxv
YXQmZ3Q7KSwgbnVtX3J4X3NhbXBzLCBmcCk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmY2xvc2UoZnAp
Ozwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPiNpZiAwPC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vUmVhZCBJUSBz
YW1wbGVzIGZyb20gdXNycCBhbmQgc3RvcmUgdGhlIGluIHRoZSBGSUxFPC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvcihpbnQzMl90IGk9MDtpJmx0O21h
eF9jaGFubmVscztpKyspIHs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN3aXRjaChpKSB7PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjYXNlIDA6IG1lbWNweShhcnJheTFbY291bnRlcl0sICZhbXA7YnVmZmVyX2Rh
dGFbaV0uZnJvbnQoKSwgc2l6ZW9mKHN0ZDo6Y29tcGxleCZsdDtmbG9hdCZndDspKm51bV9yeF9z
YW1wcyk7IGJyZWFrOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSAxOiBtZW1jcHkoYXJyYXkyW2Nv
dW50ZXJdLCAmYW1wO2J1ZmZlcl9kYXRhW2ldLmZyb250KCksIHNpemVvZihzdGQ6OmNvbXBsZXgm
bHQ7ZmxvYXQmZ3Q7KSpudW1fcnhfc2FtcHMpOyBicmVhazs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3VudGVyKys7PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH08L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZwcmludGYoc3RkZXJy
LCAmcXVvdDt0b3RhbCBzYW1wbGVzIHJlY2VpdmVkIGZpbGU6ICVkXG4mcXVvdDssIHRvdGFsX3Nh
bXBzX3JlY3ZkKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYoJnF1b3Q7d2Fybmlu
Zzogc3RvcHBpbmcgc3RyZWFtaW5nIG1vZGUmcXVvdDssIGVycm9yX2x2bCwgX19GSUxFX18sIF9f
TElORV9fKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYoJnF1b3Q7d2FybmluZzog
YnVmZmVyIGZsdXNoIHN0YXJ0ZWQhJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVf
Xyk7PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9jbWRfdCBzdHJlYW1fY21kX3N0
b3AodWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUT1BfQ09OVElOVU9VUyk7PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByeF9zdHJlYW0tJmd0O2lzc3VlX3N0cmVhbV9jbWQoc3RyZWFtX2Nt
ZF9zdG9wKTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb3V0ICZsdDsmbHQ7ICZxdW90
O3RvdGFsX3NhbXBzX3JlY3ZkIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX3NhbXBzX3JlY3ZkICZs
dDsmbHQ7ICZxdW90O8KgIHRvdGFsX25vX29mX3NhbXBzIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFs
X25vX29mX3NhbXBzICZsdDsmbHQ7ICZxdW90O1xuJnF1b3Q7Ozwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+I2lmIDA8L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbnN0ZXhwciBkb3VibGUgdGltZW91dCB7IDAuMDEwIH07IC8vMTBtczwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RhdGljIHN0ZDo6Y29tcGxleCZsdDtzaG9ydCZndDsgZHVtbXlfYnVmZmVy
WzUwMDAwMDAwXTs8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXRpYyB1aGQ6OnJ4X21ldGFkYXRh
X3QgZHVtbXlfbWV0YSB7IH07PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSAocnhfc3RyZWFt
LSZndDtyZWN2KGR1bW15X2J1ZmZlciwgNTAwMDAwMDAsIGR1bW15X21ldGEsIHRpbWVvdXQpKSB7
fTwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkX3NyYy0mZ3Q7Y2xlYXJfY29tbWFuZF90aW1lKCk7
IC8vUmVzZXQgYWxsIHRpbWUgY291bnRlcnMgdW50aWxsIG5leHQgdHVuZSEhPC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90O3dhcm5pbmc6IGJ1ZmZlciBmbHVzaCBjb21wbGV0
ZWQhJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4jZW5kaWY8L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPn08L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgPC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoDwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+SG9waW5nIGZvciBhbiBlYXJseSByZXBs
eS48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5SZWdh
cmRzPC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5T
bmVoYXNpc2g8L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+wqA8L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5TZW50IGZyb20NCjxhIGhyZWY9Imh0dHBzOi8vZ28ubWljcm9zb2Z0LmNv
bS9md2xpbmsvP0xpbmtJZD01NTA5ODYiIHRhcmdldD0iX2JsYW5rIj5NYWlsPC9hPiBmb3IgV2lu
ZG93cyAxMDwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgPC9wPg0KPC9kaXY+DQo8L2Rpdj4N
CjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdp
bi1sZWZ0OjQuOHB0Ij5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPg0KdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byA8YSBo
cmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj4NCnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjx1PjwvdT48dT48L3U+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD4NCjwvZGl2Pg0K
PC9kaXY+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJt
YWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQo8L2Jsb2NrcXVvdGU+PC9k
aXY+DQo=
--0000000000000c16f305c2c755f1--

--===============1505555261356760130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1505555261356760130==--
