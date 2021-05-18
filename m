Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 493B2387D17
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 18:10:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8BE8385C2D
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 12:10:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZClMGp/0";
	dkim-atps=neutral
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4085E38409F
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 12:09:29 -0400 (EDT)
Received: by mail-oo1-f41.google.com with SMTP id t17-20020a4a3e110000b02901fab2f46a48so2347365oot.6
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 09:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3LM3lbkuXuXmjbO13pUqZl3LJSFgSfAQnL9xVZPNN/U=;
        b=ZClMGp/0JGKXrmPSisIWqRrdwNYHFayeEJtK9JyXWPzthm9M1DWN2Dqmnadj96ezh4
         auEMVG1dz5w3KXOH7a3C+rkftQ95mujUqOexuktwp9kjV5T8ds38I0L6ZccCYCt2LCY7
         d7rZcKk/0Pl5n564tpdsZCHXKqVmTgUYFzE35ZokQaN/4FqHwdyEbene50V3a65yO8OE
         YEXd6JeRHD4AmgD981Ib8HiAA2eZ0MQr72bUjrhkNiPK/RCgiPQz9hNumILr0GKp2ohJ
         CBcMGOAdatGm6F9KGr3GxsYRwEchiem6/BtMbHtcNh1TSM7BRggEbjp+zeMpSbVXMehy
         bfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3LM3lbkuXuXmjbO13pUqZl3LJSFgSfAQnL9xVZPNN/U=;
        b=Z4dAQWpniXnX/khEPZuQCBV34ZLKNW9c/kgioYOTLLBoaXi7rBiAzIFGkztC+s/KQ1
         3ZxiK1Gw89Hd+UGWdCSBIdqSv9w/c4Gue0ghdZnpNt2SIX2zr+fbE3Y502MQmcp4hdzr
         TBy/FcrJrI4VqMxdMRN3ZAiri9EMFE5ZXEZrRsZ3R077JdGWaZD7bGqM48bAA36sxrGu
         +0577XVgjMtzeMGSBC8tAeatzy5KMJ+E0/MNMJIu2NLC78kw51WDVkwquMXVDzL0FKR4
         eZKZ5y3cvdCcT1AP0aANsPnM9JfG6Z947Nh4au/u3Uahccp2aavszklzEe+PV/d5Wun+
         R+Rg==
X-Gm-Message-State: AOAM530iMJx2P3pvOPwmie67oBZsDdVj6qJb0vAD+RCFzOg26UKYLfH0
	bh+jBCYq3eniCH3rL+4Vf5ejvIk//Y3UArBBQ2YHVg==
X-Google-Smtp-Source: ABdhPJyBfhaYv5BjFudop+zOYQNh89ZiafIN4x0nTDPmUHOfcP8iohYcB33HFULoL3rcEBoeVvqP+p2I1VRCn6pkuDs=
X-Received: by 2002:a4a:b202:: with SMTP id d2mr5001240ooo.13.1621354168283;
 Tue, 18 May 2021 09:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 18 May 2021 12:09:17 -0400
Message-ID: <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Message-ID-Hash: LGFRT4KEQWN67KKDAPJHR5OWWF46AKUQ
X-Message-ID-Hash: LGFRT4KEQWN67KKDAPJHR5OWWF46AKUQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGFRT4KEQWN67KKDAPJHR5OWWF46AKUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6704356994022006227=="

--===============6704356994022006227==
Content-Type: multipart/alternative; boundary="00000000000041aced05c29cef47"

--00000000000041aced05c29cef47
Content-Type: text/plain; charset="UTF-8"

Perhaps try issue_stream_cmd on the radio ctrl rather than the rx_streamer.
Rob

On Mon, May 17, 2021 at 12:45 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

> Hello
>
>
>
> I am using the below code to stream IQ samples to host using RFNOC, but
> while streaming I am getting timeout. My rfnoc graph looks something like
> this:
>
> Radio_0=>fifo=>fir_filter=>fifo=>host
>
> Radio_1=>fifo=>fir_filter=>fifo=>host
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
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
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
>               bool overflow_message = true;
>
>               try {
>
>                            uhd::rfnoc::graph::sptr rx_graph =
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
>                            char msg[100]={0x00};
>
>                            sprintf(msg,"error: unable to create/set a
> radio/parameter %s", ex.what());
>
>                            log_printf(msg, error_lvl, __FILE__, __LINE__);
>
>               }
>
>               uhd::device_addr_t stream_args_rfnoc;
>
>               std::vector<std::string> block_port{"0", "1"};
>
>               stream_args_rfnoc["block_id"] =
> fifo_ctrl[1]->get_block_id().to_string();
>
>               stream_args_rfnoc["block_port"] = block_port[0];
>
>               //stream_args_rfnoc["block_id"] =
> fifo_ctrl[3]->get_block_id().to_string();
>
>               //stream_args_rfnoc["block_port"] = block_port[1];
>
>               uhd::stream_args_t stream_args("sc16","sc16");
>
>               stream_args.args = stream_args_rfnoc;
>
>               size_t spp = radio_ctrl[0]->get_args().cast<size_t>("spp",
> spp);
>
>               stream_args.args["spp"] =
> boost::lexical_cast<std::string>(spp); //TODO: considering 1000 samples but
> check
>
>               rx_stream = uhd_src->get_rx_stream(stream_args);
>
>               {
>
>                            char msg[100]={0x00};
>
>                            sprintf(msg, "info: Daemon launched with pid
> %d", getpid());
>
>                            log_printf(msg, error_lvl, __FILE__, __LINE__);
>
>               }
>
>               //samples_per_burst = 1000;
>
>               uhd::stream_cmd_t
> stream_cmd(/*uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS*/
> uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>               stream_cmd.num_samps  = total_no_of_samps;
>
>               stream_cmd.stream_now = true;
>
>               //stream_cmd.time_spec =  uhd_src->get_time_now() +
> ::uhd::time_spec_t(0.1);//time_spec;
>
>               rx_stream->issue_stream_cmd(stream_cmd);
>
>               samples_per_burst = rx_stream->get_max_num_samps();
>
>               std::vector<std::vector<std::complex<float>>>
> buffer_data(max_channels, std::vector<std::complex<float>
> >(samples_per_burst));
>
>               std::vector<void *> buffs(max_channels);
>
>               for(int8_t i = 0;i<max_channels;i++) {
>
>                            buffs[i] = &buffer_data[i].front();
>
>               }
>
>               uint64_t total_samps_recvd =0x00;
>
>               int32_t total_size_wrote_to_file =0x00;
>
>               int32_t counter = 0x00;
>
>               //std::complex<float> array1[100000][1000]{{0x00}};
>
>               //std::complex<float> array2[100000][1000]{{0x00}};
>
>               //fprintf(stderr,"total num of samps %d\n",
> total_no_of_samps);
>
>               while(!stop_rx and ((total_samps_recvd!=total_no_of_samps)
> or (total_no_of_samps==0x00))) {
>
>                            buffs.clear();
>
>                            size_t num_rx_samps = 0x00;
>
>                            try {
>
>                                          num_rx_samps =
> rx_stream->recv(buffs, samples_per_burst, md, 1.0);
>
>                                          if(error_lvl==3) {
>
>                                                        char
> msg[700]={0x00};
>
>
> sprintf(msg,"\n========================================================\n
> Number of samples received
> %u\n========================================================",
> num_rx_samps);
>
>                                                        log_printf(msg,
> error_lvl, __FILE__, __LINE__);
>
>                                                        //std::cout <<
> "total_samps_recvd : " << total_samps_recvd << "  total_no_of_samps : " <<
> total_no_of_samps << "\n";
>
>                                          }
>
>                            } catch (const std::exception& ex){
>
>                                          char msg[100]={0x00};
>
>                                          sprintf(msg,"error: error while
> streaming %s", ex.what());
>
>                                          log_printf(msg, error_lvl,
> __FILE__, __LINE__);
>
>                            }
>
>                            if (md.error_code ==
> uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {
>
>                               log_printf("error: timeout while streaming",
> error_lvl, __FILE__, __LINE__);
>
>                               break;
>
>                            }
>
>                            if (md.error_code ==
> uhd::rx_metadata_t::ERROR_CODE_OVERFLOW) {
>
>                                          if (overflow_message) {
>
>                                                        overflow_message =
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
>                            if (md.error_code !=
> uhd::rx_metadata_t::ERROR_CODE_NONE){
>
>                                          char msg[100]={0x00};
>
>                                          sprintf(msg,"error:
> %s",md.strerror());
>
>                                          log_printf(msg , error_lvl,
> __FILE__, __LINE__);
>
>                            }
>
>                            total_samps_recvd+=num_rx_samps;
>
> #if 1
>
>                            //Read IQ samples from usrp and store the in
> the FILE
>
>                            for(int32_t i=0;i<max_channels;i++) {
>
>                                          FILE *fp =
> fopen(file_name[i],"a+");
>
>                                          size_t len =
> fwrite(&buffer_data[i].front(), sizeof(std::complex<float>), num_rx_samps,
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
>                            for(int32_t i=0;i<max_channels;i++) {
>
>                                          switch(i) {
>
>                                          case 0: memcpy(array1[counter],
> &buffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break;
>
>                                          case 1: memcpy(array2[counter],
> &buffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break;
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
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=550986> for
> Windows 10
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000041aced05c29cef47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+UGVyaGFwcyB0cnkgaXNzdWVfc3RyZWFtX2NtZCBvbiB0aGUgcmFkaW8g
Y3RybCByYXRoZXIgdGhhbiB0aGUgcnhfc3RyZWFtZXIuPGRpdj5Sb2I8L2Rpdj48L2Rpdj48YnI+
PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRy
Ij5PbiBNb24sIE1heSAxNywgMjAyMSBhdCAxMjo0NSBQTSBTbmVoYXNpc2ggS2FyICZsdDs8YSBo
cmVmPSJtYWlsdG86c25laGFzaXNoLmNzZUBsaXZlLmNvbSI+c25laGFzaXNoLmNzZUBsaXZlLmNv
bTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJn
YigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+DQoNCg0KDQoNCg0KPGRpdiBsYW5nPSJF
Ti1JTiIgc3R5bGU9Im92ZXJmbG93LXdyYXA6IGJyZWFrLXdvcmQ7Ij4NCjxkaXYgY2xhc3M9Imdt
YWlsLW1fMzAzNjc5NDIzNDc4MzM4OTEzNldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+SGVsbG8gPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPkkgYW0g
dXNpbmcgdGhlIGJlbG93IGNvZGUgdG8gc3RyZWFtIElRIHNhbXBsZXMgdG8gaG9zdCB1c2luZyBS
Rk5PQywgYnV0IHdoaWxlIHN0cmVhbWluZyBJIGFtIGdldHRpbmcgdGltZW91dC4gTXkgcmZub2Mg
Z3JhcGggbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+UmFkaW9fMD0mZ3Q7Zmlm
bz0mZ3Q7ZmlyX2ZpbHRlcj0mZ3Q7Zmlmbz0mZ3Q7aG9zdDx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5SYWRpb18xPSZndDtm
aWZvPSZndDtmaXJfZmlsdGVyPSZndDtmaWZvPSZndDtob3N0PHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1
PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PldpdGggdGhlIGFib3ZlIGZsb3dncmFwaCB3ZSBhcmUgYWJsZSB0byBzdHJlYW0gc2FtcGxlcyBp
biBnbnVyYWRpby48dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+PHU+PC91PsKgPHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+U2FtcGxlIHJhdGUgdXNlZDogMTAwbXNw
czx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj5Ib3N0IFBDIGNvbmZpZ3VyYXRpb246IGludGVsIGk3IHByb2Nlc3NvciA5PHN1
cD50aDwvc3VwPiBnZW48dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJBTTogOEdCPHU+PC91
Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPkludGVyZmFjZTogUENJRSBleHByZXNzPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPlVIRCB2ZXJzaW9uOiBVSERfMy4x
NC4xLjAtMC11bmtub3duPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPkJlbG93IGlzIHRoZSBvdXRwdXQg
b2bCoCB1aGRfdXNycF9wcm9iZTo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PHU+PC91PsKgPHU+PC91Pjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+On4vRGVza3RvcC91aGRf
cmZub2NfZmlsZV93cml0dGVyL0RlYnVnJCB1aGRfdXNycF9wcm9iZQ0KPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZP
XSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7IFVIRF8z
LjE0LjEuMC0wLXVua25vd248dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0
aW9uIHNlcXVlbmNlLi4uPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbWDMwMF0gQ29ubmVjdGluZyB0byBuaXVz
cnByaW9ycGMgYXQgbG9jYWxob3N0OjU0NDQuLi48dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFtYMzAwXSBVc2lu
ZyBMVkJJVFggYml0ZmlsZSAvdXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMvdXNycF94MzEwX2Zw
Z2FfWEcubHZiaXR4Li4uPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIw
MCBNSHo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+W0lORk9dIFtHUFNdIEZvdW5kIGFuIGludGVybmFsIEdQU0RPOiBMQ19Y
TywgRmlybXdhcmUgUmV2IDAuOTI5YTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bV0FSTklOR10gW0dQU10gdXBkYXRlX2Nh
Y2hlOiBNYWxmb3JtZWQgR1BTRE8gc3RyaW5nOiBMQ19YTywgRmlybXdhcmUgUmV2IDAuOTI5YTx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj5bSU5GT10gWzAvRG1hRklGT18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAo
Tk9DIElEOiAweEYxRjBEMDAwMDAwMDAwMDApPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9EbWFGSUZPXzBd
IEJJU1QgcGFzc2VkIChUaHJvdWdocHV0OiAxMzExIE1CL3MpPHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9E
bWFGSUZPXzBdIEJJU1QgcGFzc2VkIChUaHJvdWdocHV0OiAxMzE1IE1CL3MpPHU+PC91Pjx1Pjwv
dT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJ
TkZPXSBbMC9SYWRpb18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweDEy
QUQxMDAwMDAwMDAwMDEpPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9SYWRpb18xXSBJbml0aWFsaXppbmcg
YmxvY2sgY29udHJvbCAoTk9DIElEOiAweDEyQUQxMDAwMDAwMDAwMDEpPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZP
XSBbMC9ERENfMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEREMwMDAw
MDAwMDAwMDAwKTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRERDXzFdIEluaXRpYWxpemluZyBibG9jayBj
b250cm9sIChOT0MgSUQ6IDB4RERDMDAwMDAwMDAwMDAwMCk8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W0lORk9dIFswL0ZJ
Ul8wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEYxMTIwMDAwMDAwMDAw
MDApPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPltJTkZPXSBbMC9GSVJfMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wg
KE5PQyBJRDogMHhGMTEyMDAwMDAwMDAwMDAwKTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRFVDXzBdIElu
aXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAwMCk8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+W0lORk9dIFswL0RVQ18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElE
OiAweEQwQzAwMDAwMDAwMDAwMDApPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZPXSBbMC9GSUZPXzBdIEluaXRpYWxp
emluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCk8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
W0lORk9dIFswL0ZJRk9fMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhG
MUYwMDAwMDAwMDAwMDAwKTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5bSU5GT10gWzAvRklGT18yXSBJbml0aWFsaXppbmcg
YmxvY2sgY29udHJvbCAoTk9DIElEOiAweEYxRjAwMDAwMDAwMDAwMDApPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPltJTkZP
XSBbMC9GSUZPXzNdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RjFGMDAw
MDAwMDAwMDAwMCk8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+W1dBUk5JTkddIFtYMzAwXSBDYW5ub3QgdXBkYXRlIG1hc3Rl
ciBjbG9jayByYXRlISBYMzAwIFNlcmllcyBkb2VzIG5vdCBhbGxvdyBjaGFuZ2luZyB0aGUgY2xv
Y2sgcmF0ZSBkdXJpbmcgcnVudGltZS48dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqAgX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+Lzx1PjwvdT48dT48L3U+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oMKgwqDCoMKgIERldmljZTogWC1TZXJpZXMgRGV2aWNlPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgwqDCoCBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoMKgIC88dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgwqDCoCBNYm9hcmQ6IFgzMTA8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgcmV2aXNpb246IDExPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHJldmlz
aW9uX2NvbXBhdDogNzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBwcm9kdWN0OiAzMDk2MDx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCBtYWMtYWRkcjA6IDAwOjgwOjJmOjE4OmRlOjRkPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIG1hYy1hZGRyMTogMDA6ODA6MmY6MTg6ZGU6NGU8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
Z2F0ZXdheTogMTkyLjE2OC4xMC4xPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIGlwLWFkZHIwOiAxOTIu
MTY4LjEwLjI8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgc3VibmV0MDogMjU1LjI1NS4yNTUuMDx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCBpcC1hZGRyMTogMTkyLjE2OC4yMC4yPHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHN1Ym5ldDE6IDI1NS4yNTUuMjU1LjA8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgaXAtYWRkcjI6
IDE5Mi4xNjguMzAuMjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzdWJuZXQyOiAyNTUuMjU1LjI1NS4w
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIGlwLWFkZHIzOiAxOTIuMTY4LjQwLjI8dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgc3VibmV0MzogMjU1LjI1NS4yNTUuMDx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBzZXJp
YWw6IDMxNEIyOTM8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgRlcgVmVyc2lvbjogNi4wPHU+PC91Pjx1
PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIEZQR0EgVmVyc2lvbjogMzUuMTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCBGUEdB
IGdpdCBoYXNoOiBmZmZmZmZmLWRpcnR5PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIFJGTm9DIGNhcGFi
bGU6IFllczx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCA8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgVGltZSBz
b3VyY2VzOsKgIGludGVybmFsLCBleHRlcm5hbCwgZ3BzZG88dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
Q2xvY2sgc291cmNlczogaW50ZXJuYWwsIGV4dGVybmFsLCBncHNkbzx1PjwvdT48dT48L3U+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8
wqDCoCBTZW5zb3JzOiBncHNfZ3BnZ2EsIGdwc19ncHJtYywgZ3BzX3RpbWUsIGdwc19sb2NrZWQs
IGdwc19zZXJ2bywgcmVmX2xvY2tlZDx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgwqAgX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqDCoCAvPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggRGJvYXJk
OiBBPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIElEOiBUd2luUlggUmV2IEIgKDB4MDA5Myk8
dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgU2VyaWFsOiAzMTQ3RkI4PHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKg
wqAgfMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBGcm9udGVuZDogMDx1PjwvdT48dT48L3U+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDC
oCB8wqDCoCB8wqDCoCB8wqDCoCBOYW1lOiBUd2luUlggUlgwPHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHwgwqDCoHzCoMKgIEFudGVubmFzOiBSWDEsIFJYMjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oCB8wqDCoCBTZW5zb3JzOiBsb19sb2NrZWQ8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKg
wqAgRnJlcSByYW5nZTogMTAuMDAwIHRvIDYwMDAuMDAwIE1Iejx1PjwvdT48dT48L3U+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCB8wqDCoCBHYWluIHJhbmdlIGFsbDogMC4wIHRvIDkzLjAgc3RlcCAxLjAgZEI8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQmFuZHdpZHRoIHJhbmdlOiA4MDAwMDAwMC4w
IHRvIDgwMDAwMDAwLjAgc3RlcCAwLjAgSHo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKg
wqAgQ29ubmVjdGlvbiBUeXBlOiBJSTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBV
c2VzIExPIG9mZnNldDogTm88dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPHU+PC91Pjx1Pjwv
dT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzC
oMKgIHzCoMKgIHzCoMKgwqAgLzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKgwqDC
oMKgIFJYIEZyb250ZW5kOiAxPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6
IFR3aW5SWCBSWDE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQW50ZW5uYXM6IFJY
MSwgUlgyPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNvcnM6IGxvX2xvY2tl
ZDx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAxMC4wMDAgdG8g
NjAwMC4wMDAgTUh6PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFuZ2Ug
YWxsOiAwLjAgdG8gOTMuMCBzdGVwIDEuMCBkQjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8
wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDgwMDAwMDAwLjAgdG8gODAwMDAwMDAuMCBzdGVwIDAuMCBI
ejx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IFFRPHU+
PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBObzx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPHU+PC91
Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggQ29kZWM6IEE8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogYWRzNjJwNDg8dT48L3U+PHU+PC91Pjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBkaWdpdGFsOiAwLjAgdG8gNi4wIHN0ZXAgMC41IGRC
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgwqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoMKgIC88dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqDCoMKgwqDCoCBSWCBEYm9hcmQ6IEI8dT48L3U+PHU+PC91Pjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKg
wqAgfMKgwqAgSUQ6IFR3aW5SWCBSZXYgQiAoMHgwMDkzKTx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8
wqDCoCBTZXJpYWw6IDMxNDdGQzE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPHU+PC91Pjx1
PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PnzCoMKgIHzCoMKgIHzCoMKgwqAgLzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKg
wqDCoCDCoFJYIEZyb250ZW5kOiAwPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5h
bWU6IFR3aW5SWCBSWDA8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgQW50ZW5uYXM6
IFJYMSwgUlgyPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFNlbnNvcnM6IGxvX2xv
Y2tlZDx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBGcmVxIHJhbmdlOiAxMC4wMDAg
dG8gNjAwMC4wMDAgTUh6PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gcmFu
Z2UgYWxsOiAwLjAgdG8gOTMuMCBzdGVwIDEuMCBkQjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oCB8wqDCoCBCYW5kd2lkdGggcmFuZ2U6IDgwMDAwMDAwLjAgdG8gODAwMDAwMDAuMCBzdGVwIDAu
MCBIejx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElJ
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBObzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX188dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPHU+
PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgwqDCoMKgwqAgUlggRnJvbnRlbmQ6IDE8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFtZTogVHdpblJYIFJYMTx1PjwvdT48dT48
L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBBbnRlbm5hczogUlgxLCBSWDI8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgfMKgwqAgfMKgwqAgU2Vuc29yczogbG9fbG9ja2VkPHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIHzCoMKgIEZyZXEgcmFuZ2U6IDEwLjAwMCB0byA2MDAwLjAwMCBNSHo8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA5My4wIHN0ZXAg
MS4wIGRCPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0aCByYW5nZTog
ODAwMDAwMDAuMCB0byA4MDAwMDAwMC4wIHN0ZXAgMC4wIEh6PHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIHzCoMKgIENvbm5lY3Rpb24gVHlwZTogUVE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKg
wqAgfMKgwqAgVXNlcyBMTyBvZmZzZXQ6IE5vPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqDC
oCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgIC88dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
fMKgwqDCoMKgwqDCoCBSWCBDb2RlYzogQjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDC
oCBOYW1lOiBhZHM2MnA0ODx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWluIHJh
bmdlIGRpZ2l0YWw6IDAuMCB0byA2LjAgc3RlcCAwLjUgZEI8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDC
oMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPnzCoMKgIHzCoMKgwqAgLzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDC
oMKgIFRYIERib2FyZDogQTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDogVW5rbm93biAo
MHgwMDkyKTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBTZXJpYWw6IDMxNDdGQjg8dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqAgLzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIEZyb250ZW5kOiAwPHU+PC91
Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIE5hbWU6IFVua25vd24gKDB4MDA5MikgLSAwPHU+
PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiA8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAg
fMKgwqAgfMKgwqAgfMKgwqAgU2Vuc29yczogPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzC
oMKgIEZyZXEgcmFuZ2U6IDAuMDAwIHRvIDAuMDAwIE1Iejx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8
wqDCoCB8wqDCoCBHYWluIEVsZW1lbnRzOiBOb25lPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
IHzCoMKgIEJhbmR3aWR0aCByYW5nZTogMC4wIHRvIDAuMCBzdGVwIDAuMCBIejx1PjwvdT48dT48
L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58
wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElRPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgIHzCoMKgIFVzZXMgTE8gb2Zmc2V0OiBObzx1PjwvdT48dT48L3U+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoMKgwqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHwg
wqDCoHzCoMKgIHzCoMKgwqDCoMKgwqAgVFggQ29kZWM6IEE8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
fMKgwqAgfMKgwqAgTmFtZTogYWQ5MTQ2PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKg
IEdhaW4gRWxlbWVudHM6IE5vbmU8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgwqAgLzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIERib2FyZDog
Qjx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCBJRDogVW5rbm93biAoMHgwMDkyKTx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCBTZXJpYWw6IDMxNDdGQzE8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAg
fMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgwqAgLzx1PjwvdT48dT48L3U+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDC
oCB8wqDCoCB8wqDCoMKgwqDCoMKgIFRYIEZyb250ZW5kOiAwPHU+PC91Pjx1PjwvdT48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKg
IHzCoMKgIHzCoMKgIE5hbWU6IFVua25vd24gKDB4MDA5MikgLSAwPHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzC
oMKgIHzCoMKgIHzCoMKgIEFudGVubmFzOiA8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgIMKgfMKgwqAgfMKg
wqAgU2Vuc29yczogPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEZyZXEgcmFuZ2U6
IDAuMDAwIHRvIDAuMDAwIE1Iejx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCB8wqDCoCBHYWlu
IEVsZW1lbnRzOiBOb25lPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEJhbmR3aWR0
aCByYW5nZTogMC4wIHRvIDAuMCBzdGVwIDAuMCBIejx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDC
oCB8wqDCoCBDb25uZWN0aW9uIFR5cGU6IElRPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzC
oMKgIFVzZXMgTE8gb2Zmc2V0OiBObzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqAgX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+fMKgwqAgfMKgwqAgfMKgwqDCoCAvPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKg
wqDCoMKgwqAgVFggQ29kZWM6IEI8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgfMKgwqAgTmFt
ZTogYWQ5MTQ2PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgIHzCoMKgIEdhaW4gRWxlbWVudHM6
IE5vbmU8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqDCoMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgwqAgLzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj58wqDCoCB8wqDCoCB8wqDCoMKgwqDCoMKgIFJGTm9DIGJsb2NrcyBvbiB0aGlzIGRldmlj
ZTo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKg
ICogRG1hRklGT18wPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzCoMKgICogUmFkaW9fMDx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij58wqDCoCB8wqDCoCB8wqDCoCAqIFJhZGlvXzE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAg
KiBERENfMDx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIEREQ18xPHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKg
IHzCoMKgIHzCoMKgICogRklSXzA8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSVJfMTx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj58wqDCoCB8wqDCoCB8wqDCoCAqIERVQ18wPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnzCoMKgIHzCoMKgIHzC
oMKgICogRFVDXzE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzA8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzE8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBG
SUZPXzI8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+fMKgwqAgfMKgwqAgfMKgwqAgKiBGSUZPXzM8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PHU+PC91
PsKgPHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+U291cmNlIGNvZGU6PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPnZvaWQgdWhkX2ludGVyZmFj
ZTo6c3RhcnRfc3RyZWFtbWluZyhpbnQzMl90IG51bV9zYW1wbGVzX3RvX3JlY2VpdmUsIGludDE2
X3QgbWF4X2NoYW5uZWxzLCB1aW50NjRfdCBzYW1wbGVzX3Blcl9idXJzdCwgaW50MzJfdCB0b3Rh
bF9ub19vZl9zYW1wcykgezx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6
OnJ4X21ldGFkYXRhX3QgbWQ7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJv
b2wgb3ZlcmZsb3dfbWVzc2FnZSA9IHRydWU7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHRyeSB7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpyZm5vYzo6Z3JhcGg6OnNwdHIgcnhfZ3JhcGggPSB1c3Jw
X3Jmbm9jLSZndDtjcmVhdGVfZ3JhcGgoJnF1b3Q7YW50aWRyb25lX3J4X2NoYWluJnF1b3Q7KTs8
dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1c3JwX3Jmbm9jLSZndDtjbGVhcigpOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3Qo
cmFkaW9fY3RybFswXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCksIGZpZm9fY3RybFswXS0mZ3Q7Z2V0X2Js
b2NrX2lkKCkpOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QoZmlmb19jdHJsWzBdLSZndDtn
ZXRfYmxvY2tfaWQoKSwgZmlyX2N0cmxbMF0tJmd0O2dldF9ibG9ja19pZCgpKTs8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3J4
X2dyYXBoLSZndDtjb25uZWN0KGZpcl9jdHJsWzBdLSZndDtnZXRfYmxvY2tfaWQoKSwgZmlmb19j
dHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKSk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0m
Z3Q7Y29ubmVjdChyYWRpb19jdHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKSwgZmlmb19jdHJsWzJd
LSZndDtnZXRfYmxvY2tfaWQoKSk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9yeF9ncmFwaC0mZ3Q7Y29ubmVjdChmaWZvX2N0
cmxbMl0tJmd0O2dldF9ibG9ja19pZCgpLCBmaXJfY3RybFsxXS0mZ3Q7Z2V0X2Jsb2NrX2lkKCkp
Ozx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC8vcnhfZ3JhcGgtJmd0O2Nvbm5lY3QoZmlyX2N0cmxbMV0tJmd0O2dldF9ibG9ja19p
ZCgpLCBmaWZvX2N0cmxbM10tJmd0O2dldF9ibG9ja19pZCgpKTs8dT48L3U+PHU+PC91Pjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByeF9ncmFw
aC0mZ3Q7Y29ubmVjdChyYWRpb19jdHJsWzBdLSZndDtnZXRfYmxvY2tfaWQoKSwgMCwgZmlmb19j
dHJsWzFdLSZndDtnZXRfYmxvY2tfaWQoKSwgMCk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1PjwvdT7CoDx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjx1Pjwv
dT7CoDx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0gY2F0Y2ggKGNvbnN0IHN0ZDo6ZXhj
ZXB0aW9uJmFtcDsgZXgpIHs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsweDAwfTs8dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJpbnRm
KG1zZywmcXVvdDtlcnJvcjogdW5hYmxlIHRvIGNyZWF0ZS9zZXQgYSByYWRpby9wYXJhbWV0ZXIg
JXMmcXVvdDssIGV4LndoYXQoKSk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9nX3ByaW50Zihtc2csIGVycm9yX2x2bCwgX19G
SUxFX18sIF9fTElORV9fKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OmRldmljZV9hZGRyX3Qgc3Ry
ZWFtX2FyZ3NfcmZub2M7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0ZDo6
dmVjdG9yJmx0O3N0ZDo6c3RyaW5nJmd0OyBibG9ja19wb3J0eyZxdW90OzAmcXVvdDssICZxdW90
OzEmcXVvdDt9Ozx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1fYXJn
c19yZm5vY1smcXVvdDtibG9ja19pZCZxdW90O10gPcKgwqAgZmlmb19jdHJsWzFdLSZndDtnZXRf
YmxvY2tfaWQoKS50b19zdHJpbmcoKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RyZWFtX2FyZ3NfcmZub2NbJnF1b3Q7YmxvY2tfcG9ydCZxdW90O10gPSBibG9ja19wb3J0
WzBdOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvL3N0cmVhbV9hcmdzX3Jm
bm9jWyZxdW90O2Jsb2NrX2lkJnF1b3Q7XSA9IGZpZm9fY3RybFszXS0mZ3Q7Z2V0X2Jsb2NrX2lk
KCkudG9fc3RyaW5nKCk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3Ry
ZWFtX2FyZ3NfcmZub2NbJnF1b3Q7YmxvY2tfcG9ydCZxdW90O10gPSBibG9ja19wb3J0WzFdOzx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aGQ6OnN0cmVhbV9hcmdzX3Qgc3Ry
ZWFtX2FyZ3MoJnF1b3Q7c2MxNiZxdW90OywmcXVvdDtzYzE2JnF1b3Q7KTs8dT48L3U+PHU+PC91
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtX2FyZ3MuYXJncyA9IHN0cmVhbV9hcmdzX3Jm
bm9jOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3Qgc3BwID0gcmFk
aW9fY3RybFswXS0mZ3Q7Z2V0X2FyZ3MoKS5jYXN0Jmx0O3NpemVfdCZndDsoJnF1b3Q7c3BwJnF1
b3Q7LCBzcHApOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW1fYXJn
cy5hcmdzWyZxdW90O3NwcCZxdW90O10gPSBib29zdDo6bGV4aWNhbF9jYXN0Jmx0O3N0ZDo6c3Ry
aW5nJmd0OyhzcHApOyAvL1RPRE86IGNvbnNpZGVyaW5nIDEwMDAgc2FtcGxlcyBidXQgY2hlY2s8
dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcnhfc3RyZWFtID0gdWhkX3NyYy0m
Z3Q7Z2V0X3J4X3N0cmVhbShzdHJlYW1fYXJncyk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsweDAwfTs8dT48L3U+PHU+PC91Pjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcHJpbnRmKG1zZywg
JnF1b3Q7aW5mbzogRGFlbW9uIGxhdW5jaGVkIHdpdGggcGlkICVkJnF1b3Q7LCBnZXRwaWQoKSk7
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbG9nX3ByaW50Zihtc2csIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAvL3NhbXBsZXNfcGVyX2J1cnN0ID0gMTAwMDs8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkOjpzdHJlYW1fY21kX3Qgc3RyZWFtX2NtZCgvKnVoZDo6
c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVEFSVF9DT05USU5VT1VTKi8gdWhkOjpzdHJlYW1f
Y21kX3Q6OlNUUkVBTV9NT0RFX05VTV9TQU1QU19BTkRfRE9ORSk7PHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbV9jbWQubnVtX3NhbXBzwqAgPSB0b3RhbF9ub19vZl9z
YW1wczs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtX2NtZC5zdHJl
YW1fbm93ID0gdHJ1ZTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9zdHJl
YW1fY21kLnRpbWVfc3BlYyA9wqAgdWhkX3NyYy0mZ3Q7Z2V0X3RpbWVfbm93KCkgKyA6OnVoZDo6
dGltZV9zcGVjX3QoMC4xKTsvL3RpbWVfc3BlYzs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcnhfc3RyZWFtLSZndDtpc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWQpOzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzYW1wbGVzX3Blcl9idXJzdCA9IHJ4X3N0
cmVhbS0mZ3Q7Z2V0X21heF9udW1fc2FtcHMoKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RkOjp2ZWN0b3ImbHQ7c3RkOjp2ZWN0b3ImbHQ7c3RkOjpjb21wbGV4Jmx0O2Zs
b2F0Jmd0OyZndDsmZ3Q7IGJ1ZmZlcl9kYXRhKG1heF9jaGFubmVscywgc3RkOjp2ZWN0b3ImbHQ7
c3RkOjpjb21wbGV4Jmx0O2Zsb2F0Jmd0OyAmZ3Q7KHNhbXBsZXNfcGVyX2J1cnN0KSk7PHU+PC91
Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0ZDo6dmVjdG9yJmx0O3ZvaWQgKiZndDsg
YnVmZnMobWF4X2NoYW5uZWxzKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Zm9yKGludDhfdCBpID0gMDtpJmx0O21heF9jaGFubmVscztpKyspIHs8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidWZmc1tpXSA9
ICZhbXA7YnVmZmVyX2RhdGFbaV0uZnJvbnQoKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aW50NjRfdCB0
b3RhbF9zYW1wc19yZWN2ZCA9MHgwMDs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50MzJfdCB0b3RhbF9zaXplX3dyb3RlX3RvX2ZpbGUgPTB4MDA7PHU+PC91Pjx1PjwvdT48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludDMyX3QgY291bnRlciA9IDB4MDA7PHU+PC91Pjx1Pjwv
dT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb21wbGV4Jmx0O2Zsb2F0Jmd0OyBhcnJh
eTFbMTAwMDAwXVsxMDAwXXt7MHgwMH19Ozx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvL3N0ZDo6Y29tcGxleCZsdDtmbG9hdCZndDsgYXJyYXkyWzEwMDAwMF1bMTAwMF17ezB4
MDB9fTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9mcHJpbnRmKHN0ZGVy
ciwmcXVvdDt0b3RhbCBudW0gb2Ygc2FtcHMgJWRcbiZxdW90OywgdG90YWxfbm9fb2Zfc2FtcHMp
Ozx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSghc3RvcF9yeCBhbmQg
KCh0b3RhbF9zYW1wc19yZWN2ZCE9dG90YWxfbm9fb2Zfc2FtcHMpIG9yICh0b3RhbF9ub19vZl9z
YW1wcz09MHgwMCkpKSB7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYnVmZnMuY2xlYXIoKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgbnVtX3J4X3Nh
bXBzID0gMHgwMDs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB0cnkgezx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBu
dW1fcnhfc2FtcHMgPSByeF9zdHJlYW0tJmd0O3JlY3YoYnVmZnMsIHNhbXBsZXNfcGVyX2J1cnN0
LCBtZCwgMS4wKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYoZXJyb3JfbHZs
PT0zKSB7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjaGFyIG1zZ1s3MDBdPXsweDAwfTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Zihtc2csJnF1b3Q7XG49
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PVxu
wqAgTnVtYmVyIG9mIHNhbXBsZXMgcmVjZWl2ZWQgJXVcbj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09JnF1b3Q7LA0KIG51bV9yeF9zYW1wcyk7
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsb2dfcHJpbnRmKG1zZywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ly9zdGQ6OmNvdXQgJmx0OyZsdDsgJnF1b3Q7dG90YWxfc2FtcHNfcmVjdmQgOiAmcXVvdDsgJmx0
OyZsdDsgdG90YWxfc2FtcHNfcmVjdmQgJmx0OyZsdDsgJnF1b3Q7wqAgdG90YWxfbm9fb2Zfc2Ft
cHMgOiAmcXVvdDsgJmx0OyZsdDsgdG90YWxfbm9fb2Zfc2FtcHMgJmx0OyZsdDsgJnF1b3Q7XG4m
cXVvdDs7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IGNhdGNoIChj
b25zdCBzdGQ6OmV4Y2VwdGlvbiZhbXA7IGV4KXs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY2hhciBtc2dbMTAwXT17MHgwMH07PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHNwcmludGYobXNnLCZxdW90O2Vycm9yOiBlcnJvciB3aGlsZSBzdHJlYW1pbmcgJXMmcXVv
dDssIGV4LndoYXQoKSk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmlu
dGYobXNnLCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJTkVfXyk7PHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48dT48
L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICht
ZC5lcnJvcl9jb2RlID09IHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9USU1FT1VUKSB7
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgwqDCoCBsb2dfcHJpbnRmKCZxdW90O2Vycm9yOiB0aW1lb3V0IHdoaWxlIHN0cmVhbWlu
ZyZxdW90OywgZXJyb3JfbHZsLCBfX0ZJTEVfXywgX19MSU5FX18pOzx1PjwvdT48dT48L3U+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqAgYnJlYWs7
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChtZC5lcnJvcl9jb2RlID09IHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJS
T1JfQ09ERV9PVkVSRkxPVykgezx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
b3ZlcmZsb3dfbWVzc2FnZSkgezx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3ZlcmZsb3dfbWVzc2FnZSA9IGZhbHNlOzx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9n
X3ByaW50ZigmcXVvdDtlcnJvcjogb3ZlcmZsb3cgZGV0ZWN0ZWQmcXVvdDssIGVycm9yX2x2bCwg
X19GSUxFX18sIF9fTElORV9fKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTs8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PHU+PC91Pjx1
PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KG1kLmVycm9yX2NvZGUgIT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX05PTkUpezx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIG1zZ1sxMDBdPXsweDAwfTs8dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3ByaW50Zihtc2csJnF1b3Q7ZXJyb3I6ICVz
JnF1b3Q7LG1kLnN0cmVycm9yKCkpOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBs
b2dfcHJpbnRmKG1zZyAsIGVycm9yX2x2bCwgX19GSUxFX18sIF9fTElORV9fKTs8dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PHU+
PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdG90YWxfc2FtcHNfcmVjdmQrPW51bV9yeF9zYW1wczs8dT48L3U+PHU+PC91Pjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+I2lmIDE8dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAv
L1JlYWQgSVEgc2FtcGxlcyBmcm9tIHVzcnAgYW5kIHN0b3JlIHRoZSBpbiB0aGUgRklMRTx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGZvcihpbnQzMl90IGk9MDtpJmx0O21heF9jaGFubmVscztpKyspIHs8dT48L3U+PHU+PC91Pjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRklMRSAqZnAgPSBmb3BlbihmaWxlX25hbWVbaV0sJnF1b3Q7YSsm
cXVvdDspOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgbGVuID0gZndy
aXRlKCZhbXA7YnVmZmVyX2RhdGFbaV0uZnJvbnQoKSwgc2l6ZW9mKHN0ZDo6Y29tcGxleCZsdDtm
bG9hdCZndDspLCBudW1fcnhfc2FtcHMsIGZwKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZmNsb3NlKGZwKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPiNlbmRpZjx1PjwvdT48dT48L3U+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4jaWYgMDx1
PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8vUmVhZCBJUSBzYW1wbGVzIGZyb20gdXNycCBhbmQgc3RvcmUgdGhlIGluIHRoZSBGSUxF
PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZm9yKGludDMyX3QgaT0wO2kmbHQ7bWF4X2NoYW5uZWxzO2krKykgezx1PjwvdT48dT48
L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzd2l0Y2goaSkgezx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjYXNlIDA6IG1lbWNweShhcnJheTFbY291bnRlcl0sICZhbXA7YnVmZmVyX2Rh
dGFbaV0uZnJvbnQoKSwgc2l6ZW9mKHN0ZDo6Y29tcGxleCZsdDtmbG9hdCZndDspKm51bV9yeF9z
YW1wcyk7IGJyZWFrOzx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNlIDE6IG1l
bWNweShhcnJheTJbY291bnRlcl0sICZhbXA7YnVmZmVyX2RhdGFbaV0uZnJvbnQoKSwgc2l6ZW9m
KHN0ZDo6Y29tcGxleCZsdDtmbG9hdCZndDspKm51bV9yeF9zYW1wcyk7IGJyZWFrOzx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvdW50ZXIrKzs8dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+I2VuZGlmPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH08dT48L3U+PHU+
PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnByaW50ZihzdGRlcnIsICZxdW90O3RvdGFsIHNh
bXBsZXMgcmVjZWl2ZWQgZmlsZTogJWRcbiZxdW90OywgdG90YWxfc2FtcHNfcmVjdmQpOzx1Pjwv
dT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVO
LVVTIj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2dfcHJpbnRmKCZxdW90O3dhcm5pbmc6
IHN0b3BwaW5nIHN0cmVhbWluZyBtb2RlJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklMRV9fLCBfX0xJ
TkVfXyk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmludGYoJnF1
b3Q7d2FybmluZzogYnVmZmVyIGZsdXNoIHN0YXJ0ZWQhJnF1b3Q7LCBlcnJvcl9sdmwsIF9fRklM
RV9fLCBfX0xJTkVfXyk7PHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVoZDo6
c3RyZWFtX2NtZF90IHN0cmVhbV9jbWRfc3RvcCh1aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01P
REVfU1RPUF9DT05USU5VT1VTKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cnhfc3RyZWFtLSZndDtpc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWRfc3RvcCk7PHU+PC91Pjx1
PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vc3RkOjpjb3V0ICZsdDsmbHQ7ICZxdW90O3Rv
dGFsX3NhbXBzX3JlY3ZkIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX3NhbXBzX3JlY3ZkICZsdDsm
bHQ7ICZxdW90O8KgIHRvdGFsX25vX29mX3NhbXBzIDogJnF1b3Q7ICZsdDsmbHQ7IHRvdGFsX25v
X29mX3NhbXBzICZsdDsmbHQ7ICZxdW90O1xuJnF1b3Q7Ozx1PjwvdT48dT48L3U+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4jaWYgMDx1PjwvdT48
dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdGV4cHIgZG91YmxlIHRpbWVvdXQgeyAw
LjAxMCB9OyAvLzEwbXM8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdGlj
IHN0ZDo6Y29tcGxleCZsdDtzaG9ydCZndDsgZHVtbXlfYnVmZmVyWzUwMDAwMDAwXTs8dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdGljIHVoZDo6cnhfbWV0YWRhdGFfdCBk
dW1teV9tZXRhIHsgfTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUg
KHJ4X3N0cmVhbS0mZ3Q7cmVjdihkdW1teV9idWZmZXIsIDUwMDAwMDAwLCBkdW1teV9tZXRhLCB0
aW1lb3V0KSkge308dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWhkX3NyYy0m
Z3Q7Y2xlYXJfY29tbWFuZF90aW1lKCk7IC8vUmVzZXQgYWxsIHRpbWUgY291bnRlcnMgdW50aWxs
IG5leHQgdHVuZSEhPHU+PC91Pjx1PjwvdT48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZ19wcmlu
dGYoJnF1b3Q7d2FybmluZzogYnVmZmVyIGZsdXNoIGNvbXBsZXRlZCEmcXVvdDssIGVycm9yX2x2
bCwgX19GSUxFX18sIF9fTElORV9fKTs8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+I2VuZGlmPHU+PC91Pjx1PjwvdT48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPn08dT48L3U+
PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1V
UyI+PHU+PC91PsKgPHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyI+PHU+PC91PsKgPHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+SG9waW5nIGZvciBhbiBlYXJseSByZXBseS48dT48
L3U+PHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+PHU+PC91PsKgPHU+PC91Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1VUyI+UmVnYXJkczx1PjwvdT48dT48L3U+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5TbmVoYXNpc2g8L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHU+PC91PsKgPHU+PC91PjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPlNlbnQgZnJvbSA8YSBocmVmPSJodHRwczovL2dvLm1pY3Jvc29mdC5jb20vZndsaW5r
Lz9MaW5rSWQ9NTUwOTg2IiB0YXJnZXQ9Il9ibGFuayI+DQpNYWlsPC9hPiBmb3IgV2luZG93cyAx
MDwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjx1PjwvdT7CoDx1PjwvdT48L3A+DQo8L2Rpdj4N
CjwvZGl2Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0i
bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwv
ZGl2Pg0K
--00000000000041aced05c29cef47--

--===============6704356994022006227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6704356994022006227==--
