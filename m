Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6440F4118DA
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 18:06:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A421384B73
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 12:06:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZbcttJBP";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 776E9384B58
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 12:05:16 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id u21so16028458qtw.8
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 09:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=M3eN60gVAAULsq6S/vuNf+0cFHG4aL/3LGvJ3pO2i9M=;
        b=ZbcttJBPxV/w17vBxazw7n3VVzSMYuduJWSeg23E/blBJLMyakf8IrVE6mQWnL56Uw
         CK07oEy6R1hhDE50IJgz17ioz2pkilVzQVr3K6H3hEVwA1tsQkyARupRlagVazVfh53C
         nnSBpO8hxPsJ2CUisWEaXHmYEcVTiouWYtv9tjjJprh41quZPXu4mD0vg9IPq2MzPShI
         zShtRyzkPAK2Q6qiLf6EHRSOPlN2EMVOaJUXDJ6xfIuwanJT/s+WOnEFsPoq4z61jL9x
         kriipP+fdWRyUCpDzTyiKV2nRR6D/GS3SEMqEAO5kLEM9Lm4qo96dDxiWpgKrHrxJ9MD
         0BjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=M3eN60gVAAULsq6S/vuNf+0cFHG4aL/3LGvJ3pO2i9M=;
        b=vciMmhXka+rAOWirigw0jtmg+bhmsoRpi1Ped+lat5EWvRCRm+F3RLAu6fcaSqcyz0
         +RWyGUdvz9+4VO/RexbiAJtghtg2rKnXHqDbDyCAzUYnxCwusIFk8JU7SygltILy+7vL
         Z7tXjBVXLn9xLzxhNV7htyUtL3ew8LvvF/4tF95LdX755p27tVBedY6Rwm0PWo28LnUA
         VqZbXLrULF1GC888XqvBUwPj0FOFLD0HrqNAHr2zCFlRt7P1IiQKASp2xZQgVBNd0nsx
         oQHOgNASVCZP5WVMPWQHF6SEcjWoEGfptyo81cu3L78GcBVxMwPbakdgh2lNvTLiVRNR
         ZCfg==
X-Gm-Message-State: AOAM5327a+PiUTZjQ1PLFap9pZqihg3EILjiRsOs0GljVObwDljYYimq
	G9xV2Xm6LYo3UF+XiC0Sh8Vn+2EpM+U+UA==
X-Google-Smtp-Source: ABdhPJxtgd/3hGXKtkF2B5yz7AVE27Bj6jDiEx8NCEBuYVPlEDL/ww+Kk5h+e4Hv2vCKQeqTjP4UGw==
X-Received: by 2002:ac8:7b48:: with SMTP id m8mr15935104qtu.133.1632153915549;
        Mon, 20 Sep 2021 09:05:15 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c30sm2644415qtg.50.2021.09.20.09.05.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 09:05:14 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <70FSFLiA0BoE3I7gvPV7oVxSXqmPKqZATj4dNm8cVc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <2b0453ca-20e7-5967-74da-83678911c9f2@gmail.com>
Date: Mon, 20 Sep 2021 12:05:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <70FSFLiA0BoE3I7gvPV7oVxSXqmPKqZATj4dNm8cVc@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: RTJ4FLM6XBVXVEKNG7CR2GEFBAYLV3P5
X-Message-ID-Hash: RTJ4FLM6XBVXVEKNG7CR2GEFBAYLV3P5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTJ4FLM6XBVXVEKNG7CR2GEFBAYLV3P5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5528321758056307038=="

This is a multi-part message in MIME format.
--===============5528321758056307038==
Content-Type: multipart/alternative;
 boundary="------------DD0B39CF8405895B78D6A7ED"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DD0B39CF8405895B78D6A7ED
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-20 10:58 a.m., christophe.grimault@novagrid.com wrote:
>
> Marcus,
>
> Thanks for your quick answer. I wrote this small script to show you 
> what I try to do :
>
>
> |# -*- coding: utf-8 -*- """ Author : Christophe Grimault Date : 
> Version : Copyright (c) NovaGrid SAS 2021 This software is proprietary 
> software; you can not redistribute it and/or modify it without 
> permission of the author or of the above named company. You should 
> have received a license along with this software. """ # 
> ----------------------------------------------------- # IMPORT SECTION 
> # ----------------------------------------------------- import numpy 
> as np import time import uhd from uhd.libpyuhd.types import 
> tune_request, tune_request_policy UHD_INIT_DELAY = 0.05 from math 
> import ceil from threading import (Thread, Event, Lock) class 
> VultureSampler(object): """ This is the server side, in Client/Server 
> mode, used by the VultureChannelizer, which is the client. The 
> VultureSampler can create and maintain 1 or 2 streams from a single 
> USRP. """ def __init__(self, usrp_addr='10.0.0.2', Fs=1562.5e3, 
> fc0=3000.0e3, fc1=None, accumulator_max_size_mbytes=200): # Configure 
> USRP N210 with LFRX Dboard to get single or dual stream from same 
> unique LFRX self.Fs = Fs self.fc0 = fc0 self.fc1 = fc1 self.duration = 
> 0.1 self.accumulator_max_size_mbytes = accumulator_max_size_mbytes 
> self.accumulator_max_size_MSCx = int(accumulator_max_size_mbytes / 8) 
> # 8 bytes / Cx sample self.accumulator_max_duration = 
> self.accumulator_max_size_MSCx / self.Fs * 1e6 # Instantiate a single 
> MultiUSRP... self.usrp = uhd.usrp.MultiUSRP("addr=%s, 
> type=usrp2"%usrp_addr) self.usrp.set_clock_source("internal") if 
> self.fc1 is None: # For 1 stream (0) self.spec = 
> uhd.usrp.SubdevSpec("A:B") else: # For 2 streams (0 and 1) self.spec = 
> uhd.usrp.SubdevSpec("A:B A:B") self.usrp.set_rx_subdev_spec(self.spec) 
> self.usrp.set_rx_antenna('RX1', 0) self.usrp.set_rx_rate(self.Fs, 0) 
> if self.fc1 is not None: self.usrp.set_rx_antenna('RX1', 1) 
> self.usrp.set_rx_rate(self.Fs, 1) # self.rx_tune_request0 = 
> tune_request(.0e6) # self.rx_tune_request0.rf_freq_policy = 
> tune_request_policy.manual # self.rx_tune_request0.dsp_freq_policy = 
> tune_request_policy.manual # self.rx_tune_request0.rf_freq = 0.0 # 
> self.rx_tune_request0.dsp_freq = -self.fc0 # 
> self.usrp.set_rx_freq(tune_request=self.rx_tune_request0, chan=0) # # 
> if self.fc1 is not None: # self.rx_tune_request1 = tune_request(.0e6) 
> # self.rx_tune_request1.rf_freq_policy = tune_request_policy.manual # 
> self.rx_tune_request1.dsp_freq_policy = tune_request_policy.manual # 
> self.rx_tune_request1.rf_freq = 0.0 # self.rx_tune_request1.dsp_freq = 
> -self.fc1 # self.usrp.set_rx_freq(tune_request=self.rx_tune_request1, 
> chan=1) self.streamer_args0 = uhd.usrp.StreamArgs('fc32', 'sc16') 
> self.streamer_args0.channels.append(0) self.rx_streamer0 = 
> self.usrp.get_rx_stream(self.streamer_args0) max_samps_per_packet = 
> self.rx_streamer0.get_max_num_samps() self.rx_rate = 
> self.usrp.get_rx_rate() self.packet_duration = 
> max_samps_per_packet/self.rx_rate self.nb_packets = 
> int(ceil(self.duration / self.packet_duration)) self.recv_buffer0 = 
> np.zeros(max_samps_per_packet*self.nb_packets, dtype=np.complex64) 
> self.metadata0 = uhd.types.RXMetadata() if self.fc1 is not None: 
> self.streamer_args1 = uhd.usrp.StreamArgs('fc32', 'sc16') 
> self.streamer_args1.channels.append(1) self.rx_streamer1 = 
> self.usrp.get_rx_stream(self.streamer_args1) self.recv_buffer1 = 
> np.zeros(max_samps_per_packet*self.nb_packets, dtype=np.complex64) 
> self.metadata1 = uhd.types.RXMetadata() # Craft and send the Stream 
> Commands self.stream_cmd = 
> uhd.types.StreamCMD(uhd.types.StreamMode.start_cont) 
> self.stream_cmd.stream_now = False self.stream_cmd.time_spec = 
> uhd.types.TimeSpec(self.usrp.get_time_now().get_real_secs() + 
> UHD_INIT_DELAY) self.rx_streamer0.issue_stream_cmd(self.stream_cmd) if 
> self.fc1 is not None: 
> self.rx_streamer1.issue_stream_cmd(self.stream_cmd) print("CONF :") 
> print(" > MBoard name : %s" % (self.usrp.get_mboard_name())) print(" > 
> Nb of channels : %d" % (self.usrp.get_rx_num_channels())) print(" > 
> Max sps/packet : %d" % (max_samps_per_packet)) print(" > Rx rate : 
> %1.3f kSCx/s (specified : %1.3f)" % (self.rx_rate, self.Fs)) print(" > 
> Duration = %1.3f s => nb_packets = %d, L = %d" % ( self.duration, 
> self.nb_packets, len(self.recv_buffer0))) print(' > accumulator max 
> size = %1.2f MSCx'%(self.accumulator_max_size_MSCx)) print(' > 
> accumulator max duration = %1.3f s'%(self.accumulator_max_duration)) # 
> Launch the accumulator threads thd0 = Thread(target=self.accumulate0, 
> args=(), name='VultureSampler.accumulate0') thd0.daemon = False 
> thd0.start() if self.fc1 is not None: thd1 = 
> Thread(target=self.accumulate1, args=(), 
> name='VultureSampler.accumulate1') thd1.daemon = False thd1.start() 
> def accumulate0(self): """ This function runs permanently as a thread, 
> to collect the samples from the USRP """ print("Launching 
> accumulate0()...") total_nb_rx_sps = 0 self.accumulator0 = [] 
> self.number_of_recv0 = 0 stream_start_time = time.time() while 
> self.number_of_recv0 < 5: ti = time.time() nb_rx_sps = 
> self.rx_streamer0.recv(self.recv_buffer0, self.metadata0, 0.5) 
> print("Acc0 : ", self.recv_buffer0[500:510]) 
> self.accumulator0.append(self.recv_buffer0.copy()) T = time.time() - 
> ti acc0_size_MSCx = sum([len(a) for a in self.accumulator0]) / 1e6 
> acc0_load_pct = acc0_size_MSCx / self.accumulator_max_size_MSCx * 
> 100.0 total_nb_rx_sps += nb_rx_sps overall_stream_speed_kSCxs = 
> total_nb_rx_sps/1000.0 / (time.time() - stream_start_time) print("ACC0 
> # %d > Data buffer [%d / %d] received in %1.3f ms at %1.3f MScx/s => 
> %d sub_arrays (%.1f MSCx, load = %1.3f%%, %1.3f kSCx/s)"%( 
> self.number_of_recv0, nb_rx_sps, len(self.recv_buffer0), T*1000, 
> len(self.recv_buffer0)/1.0e6/T, len(self.accumulator0), 
> acc0_size_MSCx, acc0_load_pct, overall_stream_speed_kSCxs)) 
> time.sleep(self.duration/10) self.number_of_recv0 += 1 print("Exiting 
> accumulate0()...") def accumulate1(self): """ This function runs 
> permanently as a thread, to collect the samples from the USRP. It is 
> the same as the one above, but for channel 1... """ # time.sleep(5) 
> print("Launching accumulate1()...") total_nb_rx_sps = 0 
> self.accumulator1 = [] self.number_of_recv1 = 0 stream_start_time = 
> time.time() while self.number_of_recv1 < 5: ti = time.time() nb_rx_sps 
> = self.rx_streamer1.recv(self.recv_buffer1, self.metadata1, 0.5) 
> print("Acc1 : ", self.recv_buffer1[500:510]) 
> self.accumulator1.append(self.recv_buffer1.copy()) T = time.time() - 
> ti acc1_size_MSCx = sum([len(a) for a in self.accumulator1]) / 1e6 
> acc1_load_pct = acc1_size_MSCx / self.accumulator_max_size_MSCx * 
> 100.0 total_nb_rx_sps += nb_rx_sps overall_stream_speed_kSCxs = 
> total_nb_rx_sps/1000.0 / (time.time() - stream_start_time) print("ACC1 
> # %d > Data buffer [%d / %d] received in %1.3f ms at %1.3f MScx/s => 
> %d sub_arrays (%.1f MSCx, load = %1.3f%%, %1.3f kSCx/s)"%( 
> self.number_of_recv1, nb_rx_sps, len(self.recv_buffer1), T*1000, 
> len(self.recv_buffer1)/1.0e6/T, len(self.accumulator1), 
> acc1_size_MSCx, acc1_load_pct, overall_stream_speed_kSCxs)) 
> time.sleep(self.duration/10) self.number_of_recv1 += 1 print("Exiting 
> accumulate1()...") if __name__ == '__main__': # Version with one 
> stream # vulture_sampler = VultureSampler(Fs=1562500.0, fc0=2000.0e3) 
> # Produces the output below : """ python -i 
> /media/realcrypt1/workspace2/CSA-HF/sampler_bistream_test.py [INFO] 
> [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat 10.3.1-1); 
> Boost_106900; UHD_4.1.0.HEAD-0-g96032d06 [INFO] [USRP2] Opening a 
> USRP2/N-Series device... [INFO] [USRP2] Current recv frame size: 1472 
> bytes [INFO] [USRP2] Current send frame size: 1472 bytes CONF : > 
> MBoard name : N210r4 > Nb of channels : 1 > Max sps/packet : 363 > Rx 
> rate : 1562500.000 kSCx/s (specified : 1562500.000) > Duration = 0.100 
> s => nb_packets = 431, L = 156453 > accumulator max size = 25.00 MSCx 
> > accumulator max duration = 16.000 s Launching accumulate0()... >>> 
> Acc0 : [6.1036691e-05+0.j 9.1555034e-05+0.j 6.1036691e-05+0.j 
> 1.2207338e-04+0.j 1.8311007e-04+0.j 1.2207338e-04+0.j 
> 1.5259173e-04+0.j 0.0000000e+00+0.j 9.1555034e-05+0.j 
> 1.5259173e-04+0.j] ACC0 # 0 > Data buffer [156453 / 156453] received 
> in 149.756 ms at 1.045 MScx/s => 1 sub_arrays (0.2 MSCx, load = 
> 0.626%, 1044.668 kSCx/s) Acc0 : [ 3.0518346e-05+0.j -3.0518346e-05+0.j 
> -3.0518346e-05+0.j -3.0518346e-05+0.j -6.1036691e-05+0.j 
> -6.1036691e-05+0.j -3.0518346e-05+0.j 3.0518346e-05+0.j 
> -6.1036691e-05+0.j -1.2207338e-04+0.j] ACC0 # 1 > Data buffer [156453 
> / 156453] received in 89.977 ms at 1.739 MScx/s => 2 sub_arrays (0.3 
> MSCx, load = 1.252%, 1252.571 kSCx/s) Acc0 : [ 3.0518346e-05+0.j 
> -9.1555034e-05+0.j 3.0518346e-05+0.j 0.0000000e+00+0.j 
> 0.0000000e+00+0.j 0.0000000e+00+0.j 6.1036691e-05+0.j 
> 6.1036691e-05+0.j 1.2207338e-04+0.j 3.0518346e-05+0.j] ACC0 # 2 > Data 
> buffer [156453 / 156453] received in 90.028 ms at 1.738 MScx/s => 3 
> sub_arrays (0.5 MSCx, load = 1.877%, 1341.370 kSCx/s) Acc0 : [ 
> 3.0518346e-05+0.j 0.0000000e+00+0.j 6.1036691e-05+0.j 
> 6.1036691e-05+0.j 3.0518346e-05+0.j 0.0000000e+00+0.j 
> 0.0000000e+00+0.j -3.0518346e-05+0.j 6.1036691e-05+0.j 
> 3.0518346e-05+0.j] ACC0 # 3 > Data buffer [156453 / 156453] received 
> in 90.301 ms at 1.733 MScx/s => 4 sub_arrays (0.6 MSCx, load = 2.503%, 
> 1389.821 kSCx/s) Acc0 : [1.2207338e-04+0.j 3.0518346e-05+0.j 
> 3.0518346e-05+0.j 6.1036691e-05+0.j 3.0518346e-05+0.j 
> 6.1036691e-05+0.j 0.0000000e+00+0.j 0.0000000e+00+0.j 
> 3.0518346e-05+0.j 0.0000000e+00+0.j] ACC0 # 4 > Data buffer [156453 / 
> 156453] received in 89.789 ms at 1.742 MScx/s => 5 sub_arrays (0.8 
> MSCx, load = 3.129%, 1421.752 kSCx/s) Exiting accumulate0()... """ # 
> Version with two streams vulture_sampler = 
> VultureSampler(Fs=1562500.0, fc0=2000.0e3, fc1=3000.0e3) # Produces 
> the output below : """ python -i 
> /media/realcrypt1/workspace2/CSA-HF/sampler_bistream_test.py [INFO] 
> [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat 10.3.1-1); 
> Boost_106900; UHD_4.1.0.HEAD-0-g96032d06 [INFO] [USRP2] Opening a 
> USRP2/N-Series device... [INFO] [USRP2] Current recv frame size: 1472 
> bytes [INFO] [USRP2] Current send frame size: 1472 bytes CONF : > 
> MBoard name : N210r4 > Nb of channels : 2 > Max sps/packet : 363 > Rx 
> rate : 1562500.000 kSCx/s (specified : 1562500.000) > Duration = 0.100 
> s => nb_packets = 431, L = 156453 > accumulator max size = 25.00 MSCx 
> > accumulator max duration = 16.000 s Launching accumulate0()... 
> Launching accumulate1()... >>> DDAcc1 : [0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] Acc0 : [0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] ACC1 # 0 > 
> Data buffer [0 / 156453] received in 50.670 ms at 3.088 MScx/s => 1 
> sub_arrays (0.2 MSCx, load = 0.626%, 0.000 kSCx/s) ACC0 # 0 > Data 
> buffer [363 / 156453] received in 51.076 ms at 3.063 MScx/s => 1 
> sub_arrays (0.2 MSCx, load = 0.626%, 7.106 kSCx/s) DAcc1 : [0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] Acc0 : 
> [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j] ACC1 # 1 > Data buffer [363 / 156453] received in 0.558 ms at 
> 280.193 MScx/s => 2 sub_arrays (0.3 MSCx, load = 1.252%, 5.918 kSCx/s) 
> ACC0 # 1 > Data buffer [0 / 156453] received in 0.587 ms at 266.320 
> MScx/s => 2 sub_arrays (0.3 MSCx, load = 1.252%, 5.876 kSCx/s) Acc1 : 
> [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j] DAcc0 : [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j] ACC1 # 2 > Data buffer [0 / 156453] received in 
> 0.571 ms at 273.764 MScx/s => 3 sub_arrays (0.5 MSCx, load = 1.877%, 
> 5.042 kSCx/s) ACC0 # 2 > Data buffer [363 / 156453] received in 0.570 
> ms at 274.680 MScx/s => 3 sub_arrays (0.5 MSCx, load = 1.877%, 10.022 
> kSCx/s) DAcc1 : [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j] Acc0 : [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] ACC1 # 3 > Data buffer [363 / 
> 156453] received in 0.540 ms at 289.846 MScx/s => 4 sub_arrays (0.6 
> MSCx, load = 2.503%, 8.786 kSCx/s) ACC0 # 3 > Data buffer [0 / 156453] 
> received in 0.544 ms at 287.434 MScx/s => 4 sub_arrays (0.6 MSCx, load 
> = 2.503%, 8.739 kSCx/s) Acc1 : [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] DAcc0 : [0.+0.j 0.+0.j 0.+0.j 
> 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j] ACC1 # 4 > Data 
> buffer [0 / 156453] received in 0.572 ms at 273.308 MScx/s => 5 
> sub_arrays (0.8 MSCx, load = 3.129%, 7.782 kSCx/s) ACC0 # 4 > Data 
> buffer [363 / 156453] received in 0.822 ms at 190.261 MScx/s => 5 
> sub_arrays (0.8 MSCx, load = 3.129%, 11.585 kSCx/s) Exiting 
> accumulate1()... Exiting accumulate0()... """|
>
FOr one, you're asking to create two streams off the same SUBDEV, which 
I'm near-certain is not supported, pretty sure the DDCs will get confused.



--------------DD0B39CF8405895B78D6A7ED
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-09-20 10:58 a.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:christophe.grimault@novagrid.com">christophe.grimault@novagrid.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:70FSFLiA0BoE3I7gvPV7oVxSXqmPKqZATj4dNm8cVc@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Marcus,</p>
      <p>Thanks for your quick answer. I wrote this small script to show
        you what I try to do :</p>
      <p><br>
      </p>
      <pre><code># -*- coding: utf-8 -*-
"""
Author    : Christophe Grimault
Date      :
Version   :
Copyright (c)   NovaGrid SAS  2021

This software is proprietary software; you can not redistribute
it and/or modify it without permission of the author or of the
above named company.
You should have received a license along with this software.
"""

# -----------------------------------------------------
#          IMPORT SECTION
# -----------------------------------------------------

import numpy as np
import time

import uhd
from uhd.libpyuhd.types import tune_request, tune_request_policy

UHD_INIT_DELAY = 0.05

from math import ceil
from threading import (Thread, Event, Lock)

class VultureSampler(object):
    """
    This is the server side, in Client/Server mode, used by the VultureChannelizer, which is the client.
    The VultureSampler can create and maintain 1 or 2 streams from a single USRP.
    """
    def __init__(self, usrp_addr='10.0.0.2', Fs=1562.5e3, fc0=3000.0e3, fc1=None,
                 accumulator_max_size_mbytes=200):

        # Configure USRP N210 with LFRX Dboard to get single or dual stream from same unique LFRX
        self.Fs = Fs
        self.fc0 = fc0
        self.fc1 = fc1
        self.duration = 0.1

        self.accumulator_max_size_mbytes = accumulator_max_size_mbytes
        self.accumulator_max_size_MSCx = int(accumulator_max_size_mbytes / 8)  # 8 bytes / Cx sample
        self.accumulator_max_duration = self.accumulator_max_size_MSCx / self.Fs * 1e6

        # Instantiate a single MultiUSRP...
        self.usrp = uhd.usrp.MultiUSRP("addr=%s, type=usrp2"%usrp_addr)
        self.usrp.set_clock_source("internal")

        if self.fc1 is None:  # For 1 stream (0)
            self.spec = uhd.usrp.SubdevSpec("A:B")
        else:                 # For 2 streams (0 and 1)
            self.spec = uhd.usrp.SubdevSpec("A:B A:B")

        self.usrp.set_rx_subdev_spec(self.spec)

        self.usrp.set_rx_antenna('RX1', 0)
        self.usrp.set_rx_rate(self.Fs, 0)

        if self.fc1 is not None:
            self.usrp.set_rx_antenna('RX1', 1)
            self.usrp.set_rx_rate(self.Fs, 1)

        # self.rx_tune_request0 = tune_request(.0e6)
        # self.rx_tune_request0.rf_freq_policy = tune_request_policy.manual
        # self.rx_tune_request0.dsp_freq_policy = tune_request_policy.manual
        # self.rx_tune_request0.rf_freq = 0.0
        # self.rx_tune_request0.dsp_freq = -self.fc0
        # self.usrp.set_rx_freq(tune_request=self.rx_tune_request0, chan=0)
        #
        # if self.fc1 is not None:
        #     self.rx_tune_request1 = tune_request(.0e6)
        #     self.rx_tune_request1.rf_freq_policy = tune_request_policy.manual
        #     self.rx_tune_request1.dsp_freq_policy = tune_request_policy.manual
        #     self.rx_tune_request1.rf_freq = 0.0
        #     self.rx_tune_request1.dsp_freq = -self.fc1
        #     self.usrp.set_rx_freq(tune_request=self.rx_tune_request1, chan=1)

        self.streamer_args0 = uhd.usrp.StreamArgs('fc32', 'sc16')
        self.streamer_args0.channels.append(0)
        self.rx_streamer0 = self.usrp.get_rx_stream(self.streamer_args0)

        max_samps_per_packet = self.rx_streamer0.get_max_num_samps()
        self.rx_rate = self.usrp.get_rx_rate()
        self.packet_duration = max_samps_per_packet/self.rx_rate
        self.nb_packets = int(ceil(self.duration / self.packet_duration))
        self.recv_buffer0 = np.zeros(max_samps_per_packet*self.nb_packets, dtype=np.complex64)
        self.metadata0 = uhd.types.RXMetadata()

        if self.fc1 is not None:
            self.streamer_args1 = uhd.usrp.StreamArgs('fc32', 'sc16')
            self.streamer_args1.channels.append(1)
            self.rx_streamer1 = self.usrp.get_rx_stream(self.streamer_args1)
            self.recv_buffer1 = np.zeros(max_samps_per_packet*self.nb_packets, dtype=np.complex64)
            self.metadata1 = uhd.types.RXMetadata()

        # Craft and send the Stream Commands
        self.stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
        self.stream_cmd.stream_now = False
        self.stream_cmd.time_spec = uhd.types.TimeSpec(self.usrp.get_time_now().get_real_secs() + UHD_INIT_DELAY)
        self.rx_streamer0.issue_stream_cmd(self.stream_cmd)

        if self.fc1 is not None:
            self.rx_streamer1.issue_stream_cmd(self.stream_cmd)

        print("CONF :")
        print("  &gt; MBoard name : %s" % (self.usrp.get_mboard_name()))
        print("  &gt; Nb of channels : %d" % (self.usrp.get_rx_num_channels()))
        print("  &gt; Max sps/packet : %d" % (max_samps_per_packet))
        print("  &gt; Rx rate : %1.3f kSCx/s (specified :  %1.3f)" % (self.rx_rate, self.Fs))
        print("  &gt; Duration = %1.3f s =&gt; nb_packets = %d, L = %d" % (
              self.duration, self.nb_packets, len(self.recv_buffer0)))

        print('  &gt; accumulator max size = %1.2f MSCx'%(self.accumulator_max_size_MSCx))
        print('  &gt; accumulator max duration = %1.3f s'%(self.accumulator_max_duration))

        # Launch the accumulator threads
        thd0 = Thread(target=self.accumulate0, args=(), name='VultureSampler.accumulate0')
        thd0.daemon = False
        thd0.start()

        if self.fc1 is not None:
            thd1 = Thread(target=self.accumulate1, args=(), name='VultureSampler.accumulate1')
            thd1.daemon = False
            thd1.start()

    def accumulate0(self):
        """
        This function runs permanently as a thread, to collect the samples from the USRP
        """

        print("Launching accumulate0()...")
        total_nb_rx_sps = 0
        self.accumulator0 = []
        self.number_of_recv0 = 0
        stream_start_time = time.time()

        while self.number_of_recv0 &lt; 5:

            ti = time.time()
            nb_rx_sps = self.rx_streamer0.recv(self.recv_buffer0, self.metadata0, 0.5)
            print("Acc0 : ", self.recv_buffer0[500:510])
            self.accumulator0.append(self.recv_buffer0.copy())
            T = time.time() - ti

            acc0_size_MSCx = sum([len(a) for a in self.accumulator0]) / 1e6
            acc0_load_pct = acc0_size_MSCx / self.accumulator_max_size_MSCx * 100.0

            total_nb_rx_sps += nb_rx_sps
            overall_stream_speed_kSCxs = total_nb_rx_sps/1000.0 / (time.time() - stream_start_time)

            print("ACC0 # %d &gt; Data buffer [%d / %d] received in %1.3f ms at %1.3f MScx/s =&gt; %d sub_arrays (%.1f MSCx, load = %1.3f%%, %1.3f kSCx/s)"%(
                  self.number_of_recv0, nb_rx_sps, len(self.recv_buffer0), T*1000,
                  len(self.recv_buffer0)/1.0e6/T, len(self.accumulator0), acc0_size_MSCx, acc0_load_pct, overall_stream_speed_kSCxs))

            time.sleep(self.duration/10)
            self.number_of_recv0 += 1

        print("Exiting accumulate0()...")


    def accumulate1(self):
        """
        This function runs permanently as a thread, to collect the samples from the USRP. It is the same as
        the one above, but for channel 1...
        """
        # time.sleep(5)
        print("Launching accumulate1()...")
        total_nb_rx_sps = 0
        self.accumulator1 = []
        self.number_of_recv1 = 0
        stream_start_time = time.time()
        while self.number_of_recv1 &lt; 5:

            ti = time.time()
            nb_rx_sps = self.rx_streamer1.recv(self.recv_buffer1, self.metadata1, 0.5)
            print("Acc1 : ", self.recv_buffer1[500:510])
            self.accumulator1.append(self.recv_buffer1.copy())
            T = time.time() - ti

            acc1_size_MSCx = sum([len(a) for a in self.accumulator1]) / 1e6
            acc1_load_pct = acc1_size_MSCx / self.accumulator_max_size_MSCx * 100.0

            total_nb_rx_sps += nb_rx_sps
            overall_stream_speed_kSCxs = total_nb_rx_sps/1000.0 / (time.time() - stream_start_time)

            print("ACC1 # %d &gt; Data buffer [%d / %d] received in %1.3f ms at %1.3f MScx/s =&gt; %d sub_arrays (%.1f MSCx, load = %1.3f%%, %1.3f kSCx/s)"%(
                  self.number_of_recv1, nb_rx_sps, len(self.recv_buffer1), T*1000,
                  len(self.recv_buffer1)/1.0e6/T, len(self.accumulator1), acc1_size_MSCx, acc1_load_pct, overall_stream_speed_kSCxs))

            time.sleep(self.duration/10)
            self.number_of_recv1 += 1


        print("Exiting accumulate1()...")



if __name__ == '__main__':

    # Version with one stream
    # vulture_sampler = VultureSampler(Fs=1562500.0, fc0=2000.0e3)

    # Produces the output below :
    """
python -i /media/realcrypt1/workspace2/CSA-HF/sampler_bistream_test.py 
[INFO] [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat 10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
CONF :
  &gt; MBoard name : N210r4
  &gt; Nb of channels : 1
  &gt; Max sps/packet : 363
  &gt; Rx rate : 1562500.000 kSCx/s (specified :  1562500.000)
  &gt; Duration = 0.100 s =&gt; nb_packets = 431, L = 156453
  &gt; accumulator max size = 25.00 MSCx
  &gt; accumulator max duration = 16.000 s
Launching accumulate0()...
&gt;&gt;&gt; Acc0 :  [6.1036691e-05+0.j 9.1555034e-05+0.j 6.1036691e-05+0.j 1.2207338e-04+0.j
 1.8311007e-04+0.j 1.2207338e-04+0.j 1.5259173e-04+0.j 0.0000000e+00+0.j
 9.1555034e-05+0.j 1.5259173e-04+0.j]
ACC0 # 0 &gt; Data buffer [156453 / 156453] received in 149.756 ms at 1.045 MScx/s =&gt; 1 sub_arrays (0.2 MSCx, load = 0.626%, 1044.668 kSCx/s)
Acc0 :  [ 3.0518346e-05+0.j -3.0518346e-05+0.j -3.0518346e-05+0.j
 -3.0518346e-05+0.j -6.1036691e-05+0.j -6.1036691e-05+0.j
 -3.0518346e-05+0.j  3.0518346e-05+0.j -6.1036691e-05+0.j
 -1.2207338e-04+0.j]
ACC0 # 1 &gt; Data buffer [156453 / 156453] received in 89.977 ms at 1.739 MScx/s =&gt; 2 sub_arrays (0.3 MSCx, load = 1.252%, 1252.571 kSCx/s)
Acc0 :  [ 3.0518346e-05+0.j -9.1555034e-05+0.j  3.0518346e-05+0.j
  0.0000000e+00+0.j  0.0000000e+00+0.j  0.0000000e+00+0.j
  6.1036691e-05+0.j  6.1036691e-05+0.j  1.2207338e-04+0.j
  3.0518346e-05+0.j]
ACC0 # 2 &gt; Data buffer [156453 / 156453] received in 90.028 ms at 1.738 MScx/s =&gt; 3 sub_arrays (0.5 MSCx, load = 1.877%, 1341.370 kSCx/s)
Acc0 :  [ 3.0518346e-05+0.j  0.0000000e+00+0.j  6.1036691e-05+0.j
  6.1036691e-05+0.j  3.0518346e-05+0.j  0.0000000e+00+0.j
  0.0000000e+00+0.j -3.0518346e-05+0.j  6.1036691e-05+0.j
  3.0518346e-05+0.j]
ACC0 # 3 &gt; Data buffer [156453 / 156453] received in 90.301 ms at 1.733 MScx/s =&gt; 4 sub_arrays (0.6 MSCx, load = 2.503%, 1389.821 kSCx/s)
Acc0 :  [1.2207338e-04+0.j 3.0518346e-05+0.j 3.0518346e-05+0.j 6.1036691e-05+0.j
 3.0518346e-05+0.j 6.1036691e-05+0.j 0.0000000e+00+0.j 0.0000000e+00+0.j
 3.0518346e-05+0.j 0.0000000e+00+0.j]
ACC0 # 4 &gt; Data buffer [156453 / 156453] received in 89.789 ms at 1.742 MScx/s =&gt; 5 sub_arrays (0.8 MSCx, load = 3.129%, 1421.752 kSCx/s)
Exiting accumulate0()...
    """

    # Version with two streams
    vulture_sampler = VultureSampler(Fs=1562500.0, fc0=2000.0e3, fc1=3000.0e3)

    # Produces the output below :
    """
python -i /media/realcrypt1/workspace2/CSA-HF/sampler_bistream_test.py 
[INFO] [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat 10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
CONF :
  &gt; MBoard name : N210r4
  &gt; Nb of channels : 2
  &gt; Max sps/packet : 363
  &gt; Rx rate : 1562500.000 kSCx/s (specified :  1562500.000)
  &gt; Duration = 0.100 s =&gt; nb_packets = 431, L = 156453
  &gt; accumulator max size = 25.00 MSCx
  &gt; accumulator max duration = 16.000 s
Launching accumulate0()...
Launching accumulate1()...
&gt;&gt;&gt; DDAcc1 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
Acc0 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
ACC1 # 0 &gt; Data buffer [0 / 156453] received in 50.670 ms at 3.088 MScx/s =&gt; 1 sub_arrays (0.2 MSCx, load = 0.626%, 0.000 kSCx/s)
ACC0 # 0 &gt; Data buffer [363 / 156453] received in 51.076 ms at 3.063 MScx/s =&gt; 1 sub_arrays (0.2 MSCx, load = 0.626%, 7.106 kSCx/s)
DAcc1 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
Acc0 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
ACC1 # 1 &gt; Data buffer [363 / 156453] received in 0.558 ms at 280.193 MScx/s =&gt; 2 sub_arrays (0.3 MSCx, load = 1.252%, 5.918 kSCx/s)
ACC0 # 1 &gt; Data buffer [0 / 156453] received in 0.587 ms at 266.320 MScx/s =&gt; 2 sub_arrays (0.3 MSCx, load = 1.252%, 5.876 kSCx/s)
Acc1 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
DAcc0 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
ACC1 # 2 &gt; Data buffer [0 / 156453] received in 0.571 ms at 273.764 MScx/s =&gt; 3 sub_arrays (0.5 MSCx, load = 1.877%, 5.042 kSCx/s)
ACC0 # 2 &gt; Data buffer [363 / 156453] received in 0.570 ms at 274.680 MScx/s =&gt; 3 sub_arrays (0.5 MSCx, load = 1.877%, 10.022 kSCx/s)
DAcc1 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
Acc0 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
ACC1 # 3 &gt; Data buffer [363 / 156453] received in 0.540 ms at 289.846 MScx/s =&gt; 4 sub_arrays (0.6 MSCx, load = 2.503%, 8.786 kSCx/s)
ACC0 # 3 &gt; Data buffer [0 / 156453] received in 0.544 ms at 287.434 MScx/s =&gt; 4 sub_arrays (0.6 MSCx, load = 2.503%, 8.739 kSCx/s)
Acc1 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
DAcc0 :  [0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j 0.+0.j]
ACC1 # 4 &gt; Data buffer [0 / 156453] received in 0.572 ms at 273.308 MScx/s =&gt; 5 sub_arrays (0.8 MSCx, load = 3.129%, 7.782 kSCx/s)
ACC0 # 4 &gt; Data buffer [363 / 156453] received in 0.822 ms at 190.261 MScx/s =&gt; 5 sub_arrays (0.8 MSCx, load = 3.129%, 11.585 kSCx/s)
Exiting accumulate1()...
Exiting accumulate0()...

    """</code></pre>
      <br>
    </blockquote>
    FOr one, you're asking to create two streams off the same SUBDEV,
    which I'm near-certain is not supported, pretty sure the DDCs will
    get confused.<br>
    <br>
    <br>
  </body>
</html>

--------------DD0B39CF8405895B78D6A7ED--

--===============5528321758056307038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5528321758056307038==--
