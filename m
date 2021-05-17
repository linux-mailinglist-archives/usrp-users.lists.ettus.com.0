Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE92386C6A
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 23:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BA2338577D
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 17:41:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FmcXOHIM";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A6D93840E2
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 17:40:18 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id c10so5998722qtx.10
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 14:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=2vf6JSpDbXtA6kUfLnKZ0mGHzMsIz3TFbW68O8CB9yc=;
        b=FmcXOHIMEsXh+Fipf5aCGFWpqoByh/15nuAJu/9iwT0pRmKwvyhqURvRQCxteFB2Qy
         RCH1RAk1OK70rnU9hxy0VZNhrJofNgPQnImqiOBmkvyyMGrY3OEuzfoHbc+klKRsMsW6
         wJ6orP4mYnz53WZR2t38FQLXb0dHv/XLbQVYNY0UU26Xnb+7xfbZZrpjGqr9O3m7nWkT
         bZv1/+7M2xByL8lmNYuWCFVFhMuxbSvxs+1xVk+zBYgyaHr8kkFBA9fAi4j6V5AaUvle
         B2sAI5uHxK1lEDO/tQXBRHG8+jgLBEvR44ceOY2cWoxLr19GP3md5/2Ka3+0XK1okDDg
         zxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=2vf6JSpDbXtA6kUfLnKZ0mGHzMsIz3TFbW68O8CB9yc=;
        b=FuS9JQQbOMyup9fP6O82MGBESre0I9j7M5abP/hNbKztUR8D14sdEZS7wfnVcv8mKK
         DxSnIzGVTN+540sGbrUQ3j9rSeODjETbmqsDSFtJyn8bxuNU2ao6imdXzzX1ErST+qAp
         RNVNQZ8stPp+r1k+h5A7OvL3dhzTnMXM8WlTojDIFj1HgQ4PZYAQVU0iJ5Y/5o4HLXvh
         Z7EBMFox59h5XNjsVIa5CK5+R1YI+z2x1m5QEPlczeRTC43uTTUTe7RELFzCKsc74bU9
         qSlOXaFNHVjPzMgfIS6oi41Rt9vScp0Lqrm6jI3mVkI0PS1WapKEJMqU1Q05yXsMIbR2
         O81g==
X-Gm-Message-State: AOAM533zhnMMheVLr86nk/70q4ochqtJwjPvOuRqkdqQT4XQlnvNPVNE
	1LkNrHor0Ok4+UrE/77kM9pxSVN4Lpg=
X-Google-Smtp-Source: ABdhPJzswP030owW3kLCIIOkzHBFwmxdh1W87/TZuwBM+daew+n/94vS3/wPZTfosi1eOHAVtXGw5A==
X-Received: by 2002:ac8:450c:: with SMTP id q12mr1516601qtn.327.1621287617240;
        Mon, 17 May 2021 14:40:17 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c185sm11550229qkg.96.2021.05.17.14.40.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 14:40:16 -0700 (PDT)
Message-ID: <60A2E2BF.7050406@gmail.com>
Date: Mon, 17 May 2021 17:40:15 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com> <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com> <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com> <60A2D298.5000802@gmail.com> <CAL0m=NYE_sXU_ij3=WiJZorsWsjRPva_8DHKLjrLU7AMLfDmLg@mail.gmail.com>
In-Reply-To: <CAL0m=NYE_sXU_ij3=WiJZorsWsjRPva_8DHKLjrLU7AMLfDmLg@mail.gmail.com>
Message-ID-Hash: QFU2B4OT25U5JPCQWE6PDLCSXDJFDBV2
X-Message-ID-Hash: QFU2B4OT25U5JPCQWE6PDLCSXDJFDBV2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QFU2B4OT25U5JPCQWE6PDLCSXDJFDBV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5775100311817730067=="

This is a multi-part message in MIME format.
--===============5775100311817730067==
Content-Type: multipart/alternative;
 boundary="------------080707060005090802010404"

This is a multi-part message in MIME format.
--------------080707060005090802010404
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/17/2021 09:11 PM, Zeng, Huacheng wrote:
> Hi Marcus,
>
> Thanks for your reply. I actually have read this note, and did not=20
> find a solution to my problem. In my project, I'm not seeking phase=20
> synchronization, but trying to achieve frequency synchronization (for=20
> ADC and carrier frequency). It seems that the two transmit data=20
> streams are misaligned in the time. That is, one data stream is about=20
> 20us (40 samples) ahead of the other data stream.
>
> Based on my understanding, the two broads of X310 should be=20
> automatically synchronous for RF carrier frequency and ADC sampling=20
> frequency, since they are driven by the same LO. There might be phase=20
> offset between the two channels, but that is not my focus here.
Actually, the LOs of the two SBX are independently derived from the=20
system reference clock, which itself can be derived from an
   external clock.   Because each SBX board has two PLL synthesizers,=20
they cannot be guaranteed to be in the same phase after
   tuning, unless that tuning happens at the same time, with a resynch=20
pulse (which is what happens with timed tuning commands).

But that, I agree, has nothing to do with your observed problem.

Unless you actually need timed bursts, there's no reason to use the=20
timed burst functions, and you should look at how the
   tx_samples_from_file and tx_timed_samples examples do things. Given=20
your reported 40-sample offset, my suspicion is that
   your buffer management isn't quite correct and that you have an=20
offset in the way your signals are placed into the buffers to
   be sent.  Given your two-channel, single-streamer setup for TX, I=20
cannot see the hardware inserting this delay.


>
> Thanks,
> Hua
>
>
>
> On Mon, May 17, 2021 at 4:31 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 05/17/2021 04:27 PM, Zeng, Huacheng wrote:
>>     Hi Marcus,
>>
>>     Thank you for the reply. I am using SBX (40MHz) daughterboards
>>     for X310. For my software setting, I'm not sure what is the best
>>     way to present the details. So I copied my code below. Hopeful it
>>     is not messy for you to review.
>>
>>     Thanks,
>>     Hua
>     You should probably read these notes on synchronization:
>
>     https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_=
Devices
>
>     Specifically, you'll need to use timed commands to tune your two
>     card, so that the phase-resynch feature of the ADF4351 can
>       be used to produce phase synchronization of the two LOs involved
>     here.
>
>
>>
>>
>>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>>     int main() {
>>         sdr_para sp;
>>         sp.is_usrp_enabled =3D true;
>>         sp.is_debg_enabled =3D false;
>>
>>         sp.ip_addrs =3D
>>     "addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D200e6";
>>         sp.chan_num =3D 2;
>>         sp.chan_str =3D "0,1";
>>         sp.sync_opt =3D "internal"; //"pps", "mimo"
>>         sp.cen_freq =3D 915e6;
>>         sp.sam_rate =3D 2e6;
>>         sp.tx_ant_name =3D "TX/RX";
>>         sp.rx_ant_name =3D "RX2";
>>         sp.analg_bw =3D sp.sam_rate;
>>         sp.tx_gain =3D 15;
>>         sp.rx_gain =3D 0;
>>
>>         sdr =3D new sdr_dev(sp);
>>
>>         // transmit
>>         sdr -> usrp_transmit(buf, num_samps);
>>
>>         // receiver
>>         sdr -> usrp_receive(buf, num_samps);
>>
>>     }
>>
>>     void sdr_dev::configure_usrp(sdr_para sp) {
>>
>>         is_usrp_enabled =3D sp.is_usrp_enabled;
>>         is_debg_enabled =3D sp.is_debg_enabled;
>>
>>         ip_addrs =3D sp.ip_addrs; //
>>         chan_str =3D sp.chan_str; // specify "0", "1", "0,1", etc
>>         chan_num =3D sp.chan_num;
>>         sync_opt =3D sp.sync_opt; //"pps", "mimo", "default"
>>
>>         cen_freq =3D sp.cen_freq;
>>         sam_rate =3D sp.sam_rate;
>>
>>         analg_bw =3D sp.analg_bw;
>>         tx_gain =3D sp.tx_gain;
>>         rx_gain =3D sp.rx_gain;
>>
>>         tx_ant_name =3D sp.tx_ant_name;
>>         rx_ant_name =3D sp.rx_ant_name;
>>
>>         seconds_in_future =3D 1.0;
>>
>>         //create a usrp device
>>         uhd::set_thread_priority_safe();
>>         usrp =3D uhd::usrp::multi_usrp::make(ip_addrs);
>>         //cout << boost::format("Using Device: %s") %
>>     usrp->get_pp_string() << endl;
>>
>>         //always select the subdevice first, the channel mapping
>>     affects the other settings
>>         // usrp->set_rx_subdev_spec(subdev); //sets across all mboards
>>         // usrp->set_tx_subdev_spec(subdev); //sets across all mboards
>>
>>         // clock and time sync_opthronization
>>         if (sync_opt =3D=3D "pps") {
>>             usrp -> set_clock_source("external");
>>             usrp -> set_time_source("external");
>>             usrp -> set_time_unknown_pps(uhd::time_spec_t(0.0));
>>             this_thread::sleep_for(chrono::seconds(1)); //wait for
>>     pps sync_opt pulse
>>         } else if (sync_opt =3D=3D "mimo") {
>>             cout << "MIMO cable" << endl;
>>             UHD_ASSERT_THROW(usrp -> get_num_mboards() =3D=3D 2);
>>             //make mboard 1 a slave over the MIMO Cable
>>             usrp -> set_clock_source("mimo", 1);
>>             usrp -> set_time_source("mimo", 1);
>>             //set time on the master (mboard 0)
>>             usrp -> set_time_now(uhd::time_spec_t(0.0), 0);
>>             //sleep a bit while the slave locks its time to the master
>>     this_thread::sleep_for(chrono::milliseconds(500));
>>         } else {
>>             usrp -> set_time_now(uhd::time_spec_t(1.0));
>>         }
>>
>>         //set the center frequency
>>         uhd::tune_request_t tune_request(cen_freq);
>>         tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");
>>         for (int ch =3D 0; ch < chan_num; ch++) {
>>             usrp -> set_rx_freq(tune_request, ch);
>>             usrp -> set_tx_freq(tune_request, ch);
>>             cout << boost::format("Actual RX Freq: %f MHz...") %
>>     (usrp -> get_rx_freq(ch) / 1e6) << endl;
>>             cout << boost::format("Actual TX Freq: %f MHz...") %
>>     (usrp -> get_tx_freq(ch) / 1e6) << endl;
>>
>>             //set the rx sample rate (sets across all channels)
>>             usrp -> set_rx_rate(sam_rate, ch);
>>             usrp -> set_tx_rate(sam_rate, ch);
>>             cout << boost::format("Actual RX Rate: %f Msps...") %
>>     (usrp -> get_rx_rate(ch) / 1e6) << endl;
>>             cout << boost::format("Actual TX Rate: %f Msps...") %
>>     (usrp -> get_tx_rate(ch) / 1e6) << endl;
>>
>>             //set antenna ...
>>             usrp -> set_rx_antenna(rx_ant_name, ch);
>>             usrp -> set_tx_antenna(tx_ant_name, ch);
>>             cout << "Rx antenna is " << usrp -> get_rx_antenna(ch) <<
>>     endl;
>>             cout << "Tx antenna is " << usrp -> get_tx_antenna(ch) <<
>>     endl;
>>
>>             //set the rf gain
>>             usrp -> set_rx_gain(rx_gain, ch);
>>             usrp -> set_tx_gain(tx_gain, ch);
>>             cout << boost::format("Actual RX Gain: %f dB...") % usrp
>>     -> get_rx_gain(ch) << endl;
>>             cout << boost::format("Actual TX Gain: %f dB...") % usrp
>>     -> get_tx_gain(ch) << endl;
>>
>>             //set the analog frontend filter bandwidth
>>             usrp -> set_rx_bandwidth(analg_bw, ch);
>>             usrp -> set_tx_bandwidth(analg_bw, ch);
>>             cout << boost::format("Actual RX Bandwidth: %f MHz...") %
>>     (usrp -> get_rx_bandwidth(ch) / 1e6) << endl;
>>             cout << boost::format("Actual TX Bandwidth: %f MHz...") %
>>     (usrp -> get_tx_bandwidth(ch) / 1e6) << endl;
>>
>>             usrp -> set_rx_dc_offset(false, ch);
>>
>>         }
>>
>>         //detect which channels to use
>>         cout << "RX channel num: " << usrp -> get_rx_num_channels()
>>     << endl;
>>         cout << "TX channel num: " << usrp -> get_tx_num_channels()
>>     << endl;
>>         vector < string > channel_strings;
>>         boost::split(channel_strings, chan_str,
>>     boost::is_any_of("\"',"));
>>         for (size_t ch =3D 0; ch < channel_strings.size(); ch++) {
>>             size_t chan =3D stoi(channel_strings[ch]);
>>             if (chan >=3D usrp -> get_rx_num_channels()) {
>>                 throw runtime_error("Invalid channel(s) specified.");
>>             } else {
>>     channel_nums.push_back(stoi(channel_strings[ch]));
>>             }
>>         }
>>
>>         //create a receive streamer
>>         //linearly map channels (index0 =3D channel0, index1 =3D
>>     channel1, ...)
>>         uhd::stream_args_t stream_args("fc32"); //complex floats
>>         stream_args.channels =3D channel_nums;
>>         rx_stream =3D usrp -> get_rx_stream(stream_args);
>>         tx_stream =3D usrp -> get_tx_stream(stream_args);
>>
>>         // pkt max size
>>         tx_max_num_samps =3D tx_stream -> get_max_num_samps();
>>         rx_max_num_samps =3D rx_stream -> get_max_num_samps();
>>         cout << "tx_max_num_samps =3D " << tx_max_num_samps << endl;
>>         cout << "rx_max_num_samps =3D " << rx_max_num_samps << endl;
>>
>>         // issue command to receive data from usrp
>>         uhd::stream_cmd_t
>>     stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>>         stream_cmd.num_samps =3D 0;
>>         stream_cmd.stream_now =3D false;
>>         stream_cmd.time_spec =3D usrp -> get_time_now() +
>>     uhd::time_spec_t(seconds_in_future);
>>         rx_stream -> issue_stream_cmd(stream_cmd); //tells all
>>     channels to stream
>>
>>         //cout<<"time real: " <<stream_cmd.time_spec.get_real_secs()
>>     << endl;
>>         //cout<<"time full: " <<stream_cmd.time_spec.get_full_secs()
>>     << endl;
>>         //cout<<"time frac: " <<stream_cmd.time_spec.get_frac_secs()
>>     << endl;
>>         //the first call to recv() will block this many seconds
>>     before receiving
>>         timeout =3D seconds_in_future + 0.1; //timeout (delay before
>>     receive + padding)
>>
>>         cout << "^^^^^^^^^^^^^^^^^^^^^^^^ complete SDR initialization
>>     ^^^^^^^^^^^^^^^^^^^^^" << endl;
>>     }
>>
>>     sdr_dev::~sdr_dev() {}
>>
>>     void sdr_dev::set_time_for_receiving(double sec_in_future) {
>>
>>         // issue command to receive data from usrp
>>         uhd::stream_cmd_t
>>     stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>>         stream_cmd.num_samps =3D 0;
>>         stream_cmd.stream_now =3D false;
>>         stream_cmd.time_spec =3D usrp -> get_time_now() +
>>     uhd::time_spec_t(sec_in_future);
>>         rx_stream -> issue_stream_cmd(stream_cmd);
>>
>>     }
>>
>>     size_t sdr_dev::receive(vector < complex < float > * >
>>     rx_buff_ptr, size_t requested_num_samps) {
>>
>>         if (is_usrp_enabled =3D=3D true)
>>             return usrp_receive(rx_buff_ptr, requested_num_samps);
>>         else
>>             return simu_receive(rx_buff_ptr, requested_num_samps);
>>
>>     }
>>
>>     // predefined functions
>>     size_t sdr_dev::usrp_receive(vector < complex < float > * >
>>     rx_buff_ptr, size_t requested_num_samps) {
>>         size_t acc_num_samps =3D 0;
>>         size_t total_num_samps =3D requested_num_samps;
>>
>>         vector < complex < float > * > rx_buff_ptr_tmp =3D rx_buff_ptr=
;
>>
>>         while (acc_num_samps < total_num_samps) {
>>
>>             for (int i =3D 0; i < rx_buff_ptr.size(); i++)
>>     rx_buff_ptr_tmp[i] =3D & rx_buff_ptr[i][acc_num_samps];
>>
>>             size_t num_rx_samps =3D rx_stream -> recv(rx_buff_ptr_tmp,
>>     total_num_samps - acc_num_samps, rx_md, timeout);
>>
>>             //use a small timeout for subsequent packets
>>             timeout =3D 0.1;
>>             if (is_debg_enabled =3D=3D true) {
>>                 //handle the error code
>>                 if (rx_md.error_code =3D=3D
>>     uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) break;
>>                 if (rx_md.error_code !=3D
>>     uhd::rx_metadata_t::ERROR_CODE_NONE) {
>>                     throw runtime_error(str(boost::format("Receiver
>>     error %s") % rx_md.strerror()));
>>                 }
>>                 cout << boost::format("Received packet: %u samples,
>>     %u full secs, %f frac secs")\ %
>>                     num_rx_samps\ %
>>                     rx_md.time_spec.get_full_secs()\ %
>>                     rx_md.time_spec.get_frac_secs()\ <<
>>                     endl;
>>             }
>>             acc_num_samps +=3D num_rx_samps;
>>         }
>>         if (acc_num_samps < total_num_samps) {
>>             cerr << "Receive timeout before all samples received..."
>>     << endl;
>>         }
>>
>>         return acc_num_samps;
>>     }
>>
>>     size_t sdr_dev::transmit(vector < complex < float > * >
>>     tx_buff_ptr, size_t requested_num_samps) {
>>
>>         if (is_usrp_enabled =3D=3D true)
>>             return usrp_transmit(tx_buff_ptr, requested_num_samps);
>>         else
>>             return simu_transmit(tx_buff_ptr, requested_num_samps);
>>
>>     }
>>
>>     size_t sdr_dev::usrp_transmit(vector < complex < float > * >
>>     tx_buff_ptr, size_t requested_num_samps) {
>>         //setup metadata for the first packet
>>         tx_md.start_of_burst =3D true; // not clear what is the
>>     difference between "false" and "true"
>>         tx_md.end_of_burst =3D false;
>>         tx_md.has_time_spec =3D true; //??? should be true or false
>>         tx_md.time_spec =3D usrp -> get_time_now() +
>>     uhd::time_spec_t(0.001); //0.1
>>
>>         //the first call to send() will block this many seconds
>>     before sending:
>>         timeout =3D seconds_in_future + 0.1; //timeout (delay before
>>     transmit + padding)
>>
>>         vector < complex < float > * > tx_buff_ptr_tmp =3D tx_buff_ptr=
;
>>
>>         size_t acc_num_samps =3D 0; //number of accumulated samples
>>         size_t total_num_samps =3D requested_num_samps;
>>         while (acc_num_samps < total_num_samps) {
>>             size_t samps_to_send =3D total_num_samps - acc_num_samps;
>>             if (samps_to_send > tx_max_num_samps) {
>>                 samps_to_send =3D tx_max_num_samps;
>>             } else {
>>                 //tx_md.end_of_burst =3D true;
>>             }
>>
>>             for (int i =3D 0; i < tx_buff_ptr.size(); i++)
>>     tx_buff_ptr_tmp[i] =3D & tx_buff_ptr[i][acc_num_samps];
>>
>>             //send a single packet
>>             size_t num_tx_samps =3D tx_stream -> send(tx_buff_ptr_tmp,
>>     samps_to_send, tx_md, timeout);
>>             //do not use time spec for subsequent packets
>>             tx_md.has_time_spec =3D false;
>>             tx_md.start_of_burst =3D false;
>>
>>             if (num_tx_samps < samps_to_send) {
>>                 cerr << "Send timeout..." << endl;
>>             }
>>             if (is_debg_enabled =3D=3D true) {
>>                 cout << boost::format("Sent packet: %u samples") %
>>     num_tx_samps << endl;
>>             }
>>             acc_num_samps +=3D num_tx_samps;
>>         }
>>
>>         //tx_md.end_of_burst =3D true;
>>         tx_stream -> send("", 0, tx_md);
>>
>>         if (is_debg_enabled =3D=3D true) {
>>             cout << endl << "Waiting for async_opt burst ACK... " <<
>>     flush;
>>             size_t acks =3D 0;
>>             //loop through all messages for the ACK packets (may have
>>     underflow messages in queue)
>>             while (acks < channel_nums.size() and tx_stream ->
>>     recv_async_msg(async_md, seconds_in_future)) {
>>                 if (async_md.event_code =3D=3D
>>     uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;
>>             }
>>
>>             if (acks < channel_nums.size()) {
>>                 cout << "fail" << endl;
>>             } else {
>>                 cout << "ack received" << endl;
>>             }
>>         }
>>
>>         return acc_num_samps;
>>     }
>>
>>     On Mon, May 17, 2021 at 3:24 PM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         You haven=E2=80=99t said what type of daughter cards you=E2=80=
=99re using.
>>
>>         Nor exactly how you=E2=80=99re setting things up
>>         In your software.
>>
>>         Sent from my iPhone
>>
>>>         On May 17, 2021, at 1:56 PM, Zeng, Huacheng
>>>         <huacheng.zeng@gmail.com <mailto:huacheng.zeng@gmail.com>>
>>>         wrote:
>>>
>>>         =EF=BB=BF
>>>         An update - I update UHD to 4.0 version and run the code
>>>         again. With this version I got some warning message (see
>>>         below). Did I set up the X310 usrp improperly?
>>>
>>>
>>>         [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>         UHD_4.0.0.HEAD-0-g90ce6062
>>>         [INFO] [X300] X300 initialization sequence...
>>>         [INFO] [X300] Maximum frame size: 1472 bytes.
>>>         [INFO] [X300] Radio 1x clock: 200 MHz
>>>         [WARNING] [RFNOC::GRAPH] One or more blocks timed out during
>>>         flush!
>>>         Actual RX Freq: 915.000000 MHz...
>>>         Actual TX Freq: 915.000000 MHz...
>>>         Actual RX Rate: 2.000000 Msps...
>>>         Actual TX Rate: 2.000000 Msps...
>>>         Rx antenna is RX2
>>>         Tx antenna is TX/RX
>>>         Actual RX Gain: 0.000000 dB...
>>>         Actual TX Gain: 15.000000 dB...
>>>         Actual RX Bandwidth: 2.000000 MHz...
>>>         Actual TX Bandwidth: 2.000000 MHz...
>>>         Actual RX Freq: 915.000000 MHz...
>>>         Actual TX Freq: 915.000000 MHz...
>>>         Actual RX Rate: 2.000000 Msps...
>>>         Actual TX Rate: 2.000000 Msps...
>>>         Rx antenna is RX2
>>>         Tx antenna is TX/RX
>>>         Actual RX Gain: 0.000000 dB...
>>>         Actual TX Gain: 15.000000 dB...
>>>         Actual RX Bandwidth: 2.000000 MHz...
>>>         Actual TX Bandwidth: 2.000000 MHz...
>>>         RX channel num: 2
>>>         TX channel num: 2
>>>         [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
>>>         Skipping.
>>>         [WARNING] [0/Radio#1] Attempting to set tick rate to 0.
>>>         Skipping.
>>>         [WARNING] [0/Radio#1] Attempting to set tick rate to 0.
>>>         Skipping.
>>>         [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
>>>         Skipping.
>>>         tx_max_num_samps =3D 364
>>>         rx_max_num_samps =3D 364
>>>
>>>         Thanks,
>>>         Hua
>>>
>>>         On Mon, May 17, 2021 at 12:04 PM Huacheng Zeng
>>>         <zenghuacheng@gmail.com <mailto:zenghuacheng@gmail.com>> wrot=
e:
>>>
>>>             Hi all,
>>>
>>>             I am using X310 as an MIMO transmitter to send two data
>>>             streams. I observed from the received signal that the
>>>             two data streams are misaligned in the time domain. I
>>>             suspect that it is the X310's timing/frequency
>>>             synchronization problem. Below is the output
>>>             information. Is there any C++ API reference for setting
>>>             up X310 as a MIMO transmitter/receiver? Any suggestions
>>>             would be appreciated.
>>>
>>>             Thanks,
>>>             Hua
>>>
>>>
>>>             [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>             Boost_105800; UHD_3.13.1.HEAD-0-gbbce3e45
>>>             --------------------------------------------------
>>>             -- UHD Device 0
>>>             --------------------------------------------------
>>>             Device Address:
>>>                 serial: 31804F1
>>>                 addr: 192.168.10.2
>>>                 fpga: HG
>>>                 name:
>>>                 product: X310
>>>                 type: x300
>>>
>>>
>>>
>>>             [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>             Boost_105800; UHD_3.13.1.HEAD-0-gbbce3e45
>>>             [INFO] [X300] X300 initialization sequence...
>>>             [INFO] [X300] Maximum frame size: 1472 bytes.
>>>             [INFO] [X300] Radio 1x clock: 200 MHz
>>>             [INFO] [GPS] No GPSDO found
>>>             [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>>             0xF1F0D00000000000)
>>>             [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1292* MB/s=
)
>>>             [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1299* MB/s=
)
>>>             [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>             0x12AD100000000001)
>>>             [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>>             0x12AD100000000001)
>>>             [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>>             0xDDC0000000000000)
>>>             [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>>             0xDDC0000000000000)
>>>             [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>>             0xD0C0000000000000)
>>>             [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>>             0xD0C0000000000000)
>>>             Actual RX Freq: 915.000000 MHz...
>>>             Actual TX Freq: 915.000000 MHz...
>>>             Actual RX Rate: 2.000000 Msps...
>>>             Actual TX Rate: 2.000000 Msps...
>>>             Rx antenna is RX2
>>>             Tx antenna is TX/RX
>>>             Actual RX Gain: 0.000000 dB...
>>>             Actual TX Gain: 15.000000 dB...
>>>             Actual RX Bandwidth: 2.000000 MHz...
>>>             Actual TX Bandwidth: 2.000000 MHz...
>>>             Actual RX Freq: 915.000000 MHz...
>>>             Actual TX Freq: 915.000000 MHz...
>>>             Actual RX Rate: 2.000000 Msps...
>>>             Actual TX Rate: 2.000000 Msps...
>>>             Rx antenna is RX2
>>>             Tx antenna is TX/RX
>>>             Actual RX Gain: 0.000000 dB...
>>>             Actual TX Gain: 15.000000 dB...
>>>             Actual RX Bandwidth: 2.000000 MHz...
>>>             Actual TX Bandwidth: 2.000000 MHz...
>>>             RX channel num: 2
>>>             TX channel num: 2
>>>             tx_max_num_samps =3D 364
>>>             rx_max_num_samps =3D 364
>>>
>>>
>>>
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>             <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email to
>>>         usrp-users-leave@lists.ettus.com
>>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>


--------------080707060005090802010404
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/17/2021 09:11 PM, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAL0m=3DNYE_sXU_ij3=3DWiJZorsWsjRPva_8DHKLjrLU7AMLfDmLg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">Hi Marcus,
        <div><br>
        </div>
        <div>Thanks for your reply. I actually have read this note, and
          did not find a solution to my problem. In my project, I'm not
          seeking phase synchronization, but trying to achieve frequency
          synchronization (for ADC and carrier frequency). It seems that
          the two transmit data streams are misaligned in the time. That
          is, one data stream is about 20us (40 samples) ahead of the
          other data stream.=C2=A0
          <div><br>
          </div>
          <div>Based on my understanding, the two broads of X310 should
            be automatically synchronous for RF carrier frequency and
            ADC sampling frequency, since they are driven by the same
            LO. There might be phase offset between the two channels,
            but that is not my focus here. <br>
          </div>
        </div>
      </div>
    </blockquote>
    Actually, the LOs of the two SBX are independently derived from the
    system reference clock, which itself can be derived from an<br>
    =C2=A0 external clock.=C2=A0=C2=A0 Because each SBX board has two PLL=
 synthesizers,
    they cannot be guaranteed to be in the same phase after<br>
    =C2=A0 tuning, unless that tuning happens at the same time, with a
    resynch pulse (which is what happens with timed tuning commands).<br>
    <br>
    But that, I agree, has nothing to do with your observed problem.<br>
    <br>
    Unless you actually need timed bursts, there's no reason to use the
    timed burst functions, and you should look at how the<br>
    =C2=A0 tx_samples_from_file and tx_timed_samples examples do things.=C2=
=A0=C2=A0
    Given your reported 40-sample offset, my suspicion is that<br>
    =C2=A0 your buffer management isn't quite correct and that you have a=
n
    offset in the way your signals are placed into the buffers to<br>
    =C2=A0 be sent.=C2=A0 Given your two-channel, single-streamer setup f=
or TX, I
    cannot see the hardware inserting this delay.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAL0m=3DNYE_sXU_ij3=3DWiJZorsWsjRPva_8DHKLjrLU7AMLfDmLg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div>Hua</div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, 2021 at 4:3=
1
          PM Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 05/17/2021 04:27 PM, Zeng, Huacheng wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Marcus,</div>
                <div><br>
                </div>
                <div>Thank you for the reply. I am using SBX (40MHz)=C2=A0
                  daughterboards for X310. For my software setting, I'm
                  not sure what is the best way to present the details.
                  So I copied my code below. Hopeful it is not messy for
                  you to review. <br>
                </div>
                <div><br>
                </div>
                <div>Thanks,</div>
                <div>Hua</div>
              </div>
            </blockquote>
            You should probably read these notes on synchronization:<br>
            <br>
            <a moz-do-not-send=3D"true"
href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USR=
P_Devices"
              target=3D"_blank">https://kb.ettus.com/Synchronization_and_=
MIMO_Capability_with_USRP_Devices</a><br>
            <br>
            Specifically, you'll need to use timed commands to tune your
            two card, so that the phase-resynch feature of the ADF4351
            can<br>
            =C2=A0 be used to produce phase synchronization of the two LO=
s
            involved here.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div><br>
                </div>
                <div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
                <div><br>
                </div>
                <div>int main() {<br>
                  =C2=A0 =C2=A0 sdr_para sp;<br>
                  =C2=A0 =C2=A0 sp.is_usrp_enabled =3D true;<br>
                  =C2=A0 =C2=A0 sp.is_debg_enabled =3D false;<br>
                  <br>
                  =C2=A0 =C2=A0 sp.ip_addrs =3D
                  "addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D20=
0e6";<br>
                  =C2=A0 =C2=A0 sp.chan_num =3D 2;<br>
                  =C2=A0 =C2=A0 sp.chan_str =3D "0,1";<br>
                  =C2=A0 =C2=A0 sp.sync_opt =3D "internal"; //"pps", "mim=
o"<br>
                  =C2=A0 =C2=A0 sp.cen_freq =3D 915e6;<br>
                  =C2=A0 =C2=A0 sp.sam_rate =3D 2e6;<br>
                  =C2=A0 =C2=A0 sp.tx_ant_name =3D "TX/RX";<br>
                  =C2=A0 =C2=A0 sp.rx_ant_name =3D "RX2";<br>
                  =C2=A0 =C2=A0 sp.analg_bw =3D sp.sam_rate;<br>
                  =C2=A0 =C2=A0 sp.tx_gain =3D 15;<br>
                  =C2=A0 =C2=A0 sp.rx_gain =3D 0;<br>
                  <br>
                  =C2=A0 =C2=A0 sdr =3D new sdr_dev(sp);<br>
                  <br>
                  =C2=A0 =C2=A0 // transmit <br>
                  =C2=A0 =C2=A0 sdr -&gt; usrp_transmit(buf, num_samps);<=
br>
                  <br>
                  =C2=A0 =C2=A0 // receiver <br>
                  =C2=A0 =C2=A0 sdr -&gt; usrp_receive(buf, num_samps);<b=
r>
                  <br>
                  }<br>
                  <br>
                  void sdr_dev::configure_usrp(sdr_para sp) {<br>
                  <br>
                  =C2=A0 =C2=A0 is_usrp_enabled =3D sp.is_usrp_enabled;<b=
r>
                  =C2=A0 =C2=A0 is_debg_enabled =3D sp.is_debg_enabled;<b=
r>
                  <br>
                  =C2=A0 =C2=A0 ip_addrs =3D sp.ip_addrs; //<br>
                  =C2=A0 =C2=A0 chan_str =3D sp.chan_str; // specify "0",=
 "1",
                  "0,1", etc<br>
                  =C2=A0 =C2=A0 chan_num =3D sp.chan_num;<br>
                  =C2=A0 =C2=A0 sync_opt =3D sp.sync_opt; //"pps", "mimo"=
, "default"<br>
                  <br>
                  =C2=A0 =C2=A0 cen_freq =3D sp.cen_freq;<br>
                  =C2=A0 =C2=A0 sam_rate =3D sp.sam_rate;<br>
                  <br>
                  =C2=A0 =C2=A0 analg_bw =3D sp.analg_bw;<br>
                  =C2=A0 =C2=A0 tx_gain =3D sp.tx_gain;<br>
                  =C2=A0 =C2=A0 rx_gain =3D sp.rx_gain;<br>
                  <br>
                  =C2=A0 =C2=A0 tx_ant_name =3D sp.tx_ant_name;<br>
                  =C2=A0 =C2=A0 rx_ant_name =3D sp.rx_ant_name;<br>
                  <br>
                  =C2=A0 =C2=A0 seconds_in_future =3D 1.0;<br>
                  <br>
                  =C2=A0 =C2=A0 //create a usrp device<br>
                  =C2=A0 =C2=A0 uhd::set_thread_priority_safe();<br>
                  =C2=A0 =C2=A0 usrp =3D uhd::usrp::multi_usrp::make(ip_a=
ddrs);<br>
                  =C2=A0 =C2=A0 //cout &lt;&lt; boost::format("Using Devi=
ce: %s")
                  % usrp-&gt;get_pp_string() &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 //always select the subdevice first, the =
channel
                  mapping affects the other settings<br>
                  =C2=A0 =C2=A0 // usrp-&gt;set_rx_subdev_spec(subdev); /=
/sets
                  across all mboards<br>
                  =C2=A0 =C2=A0 // usrp-&gt;set_tx_subdev_spec(subdev); /=
/sets
                  across all mboards<br>
                  <br>
                  =C2=A0 =C2=A0 // clock and time sync_opthronization<br>
                  =C2=A0 =C2=A0 if (sync_opt =3D=3D "pps") {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_clock_source=
("external");<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_source(=
"external");<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt;
                  set_time_unknown_pps(uhd::time_spec_t(0.0));<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 this_thread::sleep_for(chro=
no::seconds(1));
                  //wait for pps sync_opt pulse<br>
                  =C2=A0 =C2=A0 } else if (sync_opt =3D=3D "mimo") {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; "MIMO cable" =
&lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(usrp -&gt;=
 get_num_mboards()
                  =3D=3D 2);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //make mboard 1 a slave ove=
r the MIMO Cable<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_clock_source=
("mimo", 1);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_source(=
"mimo", 1);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set time on the master (m=
board 0)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_now(uhd=
::time_spec_t(0.0),
                  0);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //sleep a bit while the sla=
ve locks its time
                  to the master<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  this_thread::sleep_for(chrono::milliseconds(500));<br>
                  =C2=A0 =C2=A0 } else {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt;
                  set_time_now(uhd::time_spec_t(1.0));<br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 //set the center frequency<br>
                  =C2=A0 =C2=A0 uhd::tune_request_t tune_request(cen_freq=
);<br>
                  =C2=A0 =C2=A0 tune_request.args =3D
                  uhd::device_addr_t("mode_n=3Dinteger");<br>
                  =C2=A0 =C2=A0 for (int ch =3D 0; ch &lt; chan_num; ch++=
) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_freq(tune=
_request, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_freq(tune=
_request, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual RX Freq:
                  %f MHz...") % (usrp -&gt; get_rx_freq(ch) / 1e6)
                  &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual TX Freq:
                  %f MHz...") % (usrp -&gt; get_tx_freq(ch) / 1e6)
                  &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rx sample rate (s=
ets across all
                  channels)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_rate(sam_=
rate, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_rate(sam_=
rate, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual RX Rate:
                  %f Msps...") % (usrp -&gt; get_rx_rate(ch) / 1e6)
                  &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual TX Rate:
                  %f Msps...") % (usrp -&gt; get_tx_rate(ch) / 1e6)
                  &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set antenna ...<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_antenna(r=
x_ant_name, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_antenna(t=
x_ant_name, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; "Rx antenna i=
s " &lt;&lt; usrp
                  -&gt; get_rx_antenna(ch) &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; "Tx antenna i=
s " &lt;&lt; usrp
                  -&gt; get_tx_antenna(ch) &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rf gain<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_gain(rx_g=
ain, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_gain(tx_g=
ain, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual RX Gain:
                  %f dB...") % usrp -&gt; get_rx_gain(ch) &lt;&lt; endl;<=
br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual TX Gain:
                  %f dB...") % usrp -&gt; get_tx_gain(ch) &lt;&lt; endl;<=
br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the analog frontend f=
ilter bandwidth<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_bandwidth=
(analg_bw, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_bandwidth=
(analg_bw, ch);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual RX
                  Bandwidth: %f MHz...") % (usrp -&gt;
                  get_rx_bandwidth(ch) / 1e6) &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
("Actual TX
                  Bandwidth: %f MHz...") % (usrp -&gt;
                  get_tx_bandwidth(ch) / 1e6) &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_dc_offset=
(false, ch);<br>
                  <br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 //detect which channels to use<br>
                  =C2=A0 =C2=A0 cout &lt;&lt; "RX channel num: " &lt;&lt;=
 usrp
                  -&gt; get_rx_num_channels() &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 cout &lt;&lt; "TX channel num: " &lt;&lt;=
 usrp
                  -&gt; get_tx_num_channels() &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 vector &lt; string &gt; channel_strings;<=
br>
                  =C2=A0 =C2=A0 boost::split(channel_strings, chan_str,
                  boost::is_any_of("\"',"));<br>
                  =C2=A0 =C2=A0 for (size_t ch =3D 0; ch &lt;
                  channel_strings.size(); ch++) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t chan =3D stoi(channe=
l_strings[ch]);<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (chan &gt;=3D usrp -&gt;
                  get_rx_num_channels()) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw runtime=
_error("Invalid channel(s)
                  specified.");<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  channel_nums.push_back(stoi(channel_strings[ch]));<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 //create a receive streamer<br>
                  =C2=A0 =C2=A0 //linearly map channels (index0 =3D chann=
el0, index1
                  =3D channel1, ...)<br>
                  =C2=A0 =C2=A0 uhd::stream_args_t stream_args("fc32"); /=
/complex
                  floats<br>
                  =C2=A0 =C2=A0 stream_args.channels =3D channel_nums;<br=
>
                  =C2=A0 =C2=A0 rx_stream =3D usrp -&gt; get_rx_stream(st=
ream_args);<br>
                  =C2=A0 =C2=A0 tx_stream =3D usrp -&gt; get_tx_stream(st=
ream_args);<br>
                  <br>
                  =C2=A0 =C2=A0 // pkt max size<br>
                  =C2=A0 =C2=A0 tx_max_num_samps =3D tx_stream -&gt;
                  get_max_num_samps();<br>
                  =C2=A0 =C2=A0 rx_max_num_samps =3D rx_stream -&gt;
                  get_max_num_samps();<br>
                  =C2=A0 =C2=A0 cout &lt;&lt; "tx_max_num_samps =3D " &lt=
;&lt;
                  tx_max_num_samps &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 cout &lt;&lt; "rx_max_num_samps =3D " &lt=
;&lt;
                  rx_max_num_samps &lt;&lt; endl;<br>
                  <br>
                  =C2=A0 =C2=A0 // issue command to receive data from usr=
p <br>
                  =C2=A0 =C2=A0 uhd::stream_cmd_t
                  stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINU=
OUS);<br>
                  =C2=A0 =C2=A0 stream_cmd.num_samps =3D 0;<br>
                  =C2=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>
                  =C2=A0 =C2=A0 stream_cmd.time_spec =3D usrp -&gt; get_t=
ime_now() +
                  uhd::time_spec_t(seconds_in_future);<br>
                  =C2=A0 =C2=A0 rx_stream -&gt; issue_stream_cmd(stream_c=
md);
                  //tells all channels to stream<br>
                  <br>
                  =C2=A0 =C2=A0 //cout&lt;&lt;"time real: "
                  &lt;&lt;stream_cmd.time_spec.get_real_secs() &lt;&lt;
                  endl;<br>
                  =C2=A0 =C2=A0 //cout&lt;&lt;"time full: "
                  &lt;&lt;stream_cmd.time_spec.get_full_secs() &lt;&lt;
                  endl;<br>
                  =C2=A0 =C2=A0 //cout&lt;&lt;"time frac: "
                  &lt;&lt;stream_cmd.time_spec.get_frac_secs() &lt;&lt;
                  endl;<br>
                  =C2=A0 =C2=A0 //the first call to recv() will block thi=
s many
                  seconds before receiving<br>
                  =C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1; //ti=
meout
                  (delay before receive + padding)<br>
                  <br>
                  =C2=A0 =C2=A0 cout &lt;&lt; "^^^^^^^^^^^^^^^^^^^^^^^^ c=
omplete
                  SDR initialization ^^^^^^^^^^^^^^^^^^^^^" &lt;&lt;
                  endl;<br>
                  }<br>
                  <br>
                  sdr_dev::~sdr_dev() {}<br>
                  <br>
                  void sdr_dev::set_time_for_receiving(double
                  sec_in_future) {<br>
                  <br>
                  =C2=A0 =C2=A0 // issue command to receive data from usr=
p <br>
                  =C2=A0 =C2=A0 uhd::stream_cmd_t
                  stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINU=
OUS);<br>
                  =C2=A0 =C2=A0 stream_cmd.num_samps =3D 0;<br>
                  =C2=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>
                  =C2=A0 =C2=A0 stream_cmd.time_spec =3D usrp -&gt; get_t=
ime_now() +
                  uhd::time_spec_t(sec_in_future);<br>
                  =C2=A0 =C2=A0 rx_stream -&gt; issue_stream_cmd(stream_c=
md);<br>
                  <br>
                  }<br>
                  <br>
                  size_t sdr_dev::receive(vector &lt; complex &lt; float
                  &gt; * &gt; rx_buff_ptr, size_t requested_num_samps) {<=
br>
                  <br>
                  =C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 return usrp_receive(rx_buff=
_ptr,
                  requested_num_samps);<br>
                  =C2=A0 =C2=A0 else<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_receive(rx_buff=
_ptr,
                  requested_num_samps);<br>
                  <br>
                  }<br>
                  <br>
                  // predefined functions<br>
                  size_t sdr_dev::usrp_receive(vector &lt; complex &lt;
                  float &gt; * &gt; rx_buff_ptr, size_t
                  requested_num_samps) {<br>
                  =C2=A0 =C2=A0 size_t acc_num_samps =3D 0;<br>
                  =C2=A0 =C2=A0 size_t total_num_samps =3D requested_num_=
samps;<br>
                  <br>
                  =C2=A0 =C2=A0 vector &lt; complex &lt; float &gt; * &gt=
;
                  rx_buff_ptr_tmp =3D rx_buff_ptr;<br>
                  <br>
                  =C2=A0 =C2=A0 while (acc_num_samps &lt; total_num_samps=
) {<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; rx=
_buff_ptr.size();
                  i++) rx_buff_ptr_tmp[i] =3D &amp;
                  rx_buff_ptr[i][acc_num_samps];<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_rx_samps =3D rx_=
stream -&gt;
                  recv(rx_buff_ptr_tmp, total_num_samps - acc_num_samps,
                  rx_md, timeout);<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //use a small timeout for s=
ubsequent packets<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 timeout =3D 0.1;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D =
true) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //handle the =
error code<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rx_md.err=
or_code =3D=3D
                  uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) break;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rx_md.err=
or_code !=3D
                  uhd::rx_metadata_t::ERROR_CODE_NONE) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 throw
                  runtime_error(str(boost::format("Receiver error %s") %
                  rx_md.strerror()));<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt;=
 boost::format("Received
                  packet: %u samples, %u full secs, %f frac secs")\ %<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 num_rx_samps\ %<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 rx_md.time_spec.get_full_secs()\ %<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 rx_md.time_spec.get_frac_secs()\
                  &lt;&lt;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D num_rx_s=
amps;<br>
                  =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 if (acc_num_samps &lt; total_num_samps) {=
<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt; "Receive time=
out before all
                  samples received..." &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 return acc_num_samps;<br>
                  }<br>
                  <br>
                  size_t sdr_dev::transmit(vector &lt; complex &lt;
                  float &gt; * &gt; tx_buff_ptr, size_t
                  requested_num_samps) {<br>
                  <br>
                  =C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 return usrp_transmit(tx_buf=
f_ptr,
                  requested_num_samps);<br>
                  =C2=A0 =C2=A0 else<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_transmit(tx_buf=
f_ptr,
                  requested_num_samps);<br>
                  <br>
                  }<br>
                  <br>
                  size_t sdr_dev::usrp_transmit(vector &lt; complex &lt;
                  float &gt; * &gt; tx_buff_ptr, size_t
                  requested_num_samps) {<br>
                  =C2=A0 =C2=A0 //setup metadata for the first packet<br>
                  =C2=A0 =C2=A0 tx_md.start_of_burst =3D true; // not cle=
ar what is
                  the difference between "false" and "true"<br>
                  =C2=A0 =C2=A0 tx_md.end_of_burst =3D false;<br>
                  =C2=A0 =C2=A0 tx_md.has_time_spec =3D true; //??? shoul=
d be true
                  or false<br>
                  =C2=A0 =C2=A0 tx_md.time_spec =3D usrp -&gt; get_time_n=
ow() +
                  uhd::time_spec_t(0.001); //0.1 =C2=A0<br>
                  <br>
                  =C2=A0 =C2=A0 //the first call to send() will block thi=
s many
                  seconds before sending:<br>
                  =C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1; //ti=
meout
                  (delay before transmit + padding)<br>
                  <br>
                  =C2=A0 =C2=A0 vector &lt; complex &lt; float &gt; * &gt=
;
                  tx_buff_ptr_tmp =3D tx_buff_ptr;<br>
                  <br>
                  =C2=A0 =C2=A0 size_t acc_num_samps =3D 0; //number of a=
ccumulated
                  samples<br>
                  =C2=A0 =C2=A0 size_t total_num_samps =3D requested_num_=
samps;<br>
                  =C2=A0 =C2=A0 while (acc_num_samps &lt; total_num_samps=
) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t samps_to_send =3D to=
tal_num_samps -
                  acc_num_samps;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (samps_to_send &gt; tx_m=
ax_num_samps) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 samps_to_send=
 =3D tx_max_num_samps;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //tx_md.end_o=
f_burst =3D true;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; tx=
_buff_ptr.size();
                  i++) tx_buff_ptr_tmp[i] =3D &amp;
                  tx_buff_ptr[i][acc_num_samps];<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //send a single packet<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_tx_samps =3D tx_=
stream -&gt;
                  send(tx_buff_ptr_tmp, samps_to_send, tx_md, timeout);<b=
r>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //do not use time spec for =
subsequent packets<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.has_time_spec =3D fal=
se;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.start_of_burst =3D fa=
lse;<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (num_tx_samps &lt; samps=
_to_send) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt;=
 "Send timeout..." &lt;&lt;
                  endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D =
true) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt;=
 boost::format("Sent packet:
                  %u samples") % num_tx_samps &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D num_tx_s=
amps;<br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 //tx_md.end_of_burst =3D true;<br>
                  =C2=A0 =C2=A0 tx_stream -&gt; send("", 0, tx_md);<br>
                  <br>
                  =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D true) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; endl &lt;&lt;=
 "Waiting for
                  async_opt burst ACK... " &lt;&lt; flush;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t acks =3D 0;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 //loop through all messages=
 for the ACK
                  packets (may have underflow messages in queue)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 while (acks &lt; channel_nu=
ms.size() and
                  tx_stream -&gt; recv_async_msg(async_md,
                  seconds_in_future)) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (async_md.=
event_code =3D=3D
                  uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;<br=
>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (acks &lt; channel_nums.=
size()) {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt;=
 "fail" &lt;&lt; endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt;=
 "ack received" &lt;&lt;
                  endl;<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
                  =C2=A0 =C2=A0 }<br>
                  <br>
                  =C2=A0 =C2=A0 return acc_num_samps;<br>
                  }</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, 202=
1
                  at 3:24 PM Marcus D Leech &lt;<a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"auto">You haven=E2=80=99t said what type of=
 daughter
                    cards you=E2=80=99re using.=C2=A0
                    <div><br>
                    </div>
                    <div>Nor exactly how you=E2=80=99re setting things up=
</div>
                    <div>In your software.=C2=A0<br>
                      <br>
                      <div dir=3D"ltr">Sent from my iPhone</div>
                      <div dir=3D"ltr"><br>
                        <blockquote type=3D"cite">On May 17, 2021, at 1:5=
6
                          PM, Zeng, Huacheng &lt;<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:huacheng.zeng@gmail.com"
                            target=3D"_blank">huacheng.zeng@gmail.com</a>=
&gt;

                          wrote:<br>
                          <br>
                        </blockquote>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">=EF=BB=BF
                          <div dir=3D"ltr">
                            <div>An update - I update UHD to 4.0 version
                              and run the code again. With this version
                              I got some warning message (see below).
                              Did I set up the X310 usrp improperly?</div=
>
                            <div><br>
                            </div>
                            <div><br>
                            </div>
                            <div>[INFO] [UHD] linux; GNU C++ version
                              7.5.0; Boost_106501;
                              UHD_4.0.0.HEAD-0-g90ce6062<br>
                              [INFO] [X300] X300 initialization
                              sequence...<br>
                              [INFO] [X300] Maximum frame size: 1472
                              bytes.<br>
                              [INFO] [X300] Radio 1x clock: 200 MHz<br>
                              <span style=3D"color:rgb(255,0,0)">[WARNING=
]
                                [RFNOC::GRAPH] One or more blocks timed
                                out during flush!</span><br>
                              Actual RX Freq: 915.000000 MHz...<br>
                              Actual TX Freq: 915.000000 MHz...<br>
                              Actual RX Rate: 2.000000 Msps...<br>
                              Actual TX Rate: 2.000000 Msps...<br>
                              Rx antenna is RX2<br>
                              Tx antenna is TX/RX<br>
                              Actual RX Gain: 0.000000 dB...<br>
                              Actual TX Gain: 15.000000 dB...<br>
                              Actual RX Bandwidth: 2.000000 MHz...<br>
                              Actual TX Bandwidth: 2.000000 MHz...<br>
                              Actual RX Freq: 915.000000 MHz...<br>
                              Actual TX Freq: 915.000000 MHz...<br>
                              Actual RX Rate: 2.000000 Msps...<br>
                              Actual TX Rate: 2.000000 Msps...<br>
                              Rx antenna is RX2<br>
                              Tx antenna is TX/RX<br>
                              Actual RX Gain: 0.000000 dB...<br>
                              Actual TX Gain: 15.000000 dB...<br>
                              Actual RX Bandwidth: 2.000000 MHz...<br>
                              Actual TX Bandwidth: 2.000000 MHz...<br>
                              RX channel num: 2<br>
                              TX channel num: 2<br>
                              <span style=3D"color:rgb(255,0,0)">[WARNING=
]
                                [0/Radio#0] Attempting to set tick rate
                                to 0. Skipping.<br>
                                [WARNING] [0/Radio#1] Attempting to set
                                tick rate to 0. Skipping.<br>
                                [WARNING] [0/Radio#1] Attempting to set
                                tick rate to 0. Skipping.<br>
                                [WARNING] [0/Radio#0] Attempting to set
                                tick rate to 0. Skipping.</span><br>
                              tx_max_num_samps =3D 364<br>
                              rx_max_num_samps =3D 364</div>
                            <div><br>
                            </div>
                            <div>Thanks,</div>
                            <div>Hua<br>
                            </div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Mon,
                              May 17, 2021 at 12:04 PM Huacheng Zeng
                              &lt;<a moz-do-not-send=3D"true"
                                href=3D"mailto:zenghuacheng@gmail.com"
                                target=3D"_blank">zenghuacheng@gmail.com<=
/a>&gt;

                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote"
                              style=3D"margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir=3D"ltr">Hi all,
                                <div><br>
                                </div>
                                <div>I am using X310 as an MIMO
                                  transmitter to send two data streams.
                                  I observed from the received signal
                                  that the two data streams are
                                  misaligned in the time domain. I
                                  suspect that it is the X310's
                                  timing/frequency synchronization
                                  problem. Below is the output
                                  information. Is there any C++ API
                                  reference for setting up X310 as a
                                  MIMO transmitter/receiver? Any
                                  suggestions would be appreciated.</div>
                                <div><br>
                                </div>
                                <div>Thanks,</div>
                                <div>Hua</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                [INFO] [UHD] linux; GNU C++ version
                                5.4.0 20160609; Boost_105800;
                                UHD_3.13.1.HEAD-0-gbbce3e45<br>
--------------------------------------------------<br>
                                -- UHD Device 0<br>
--------------------------------------------------<br>
                                Device Address:<br>
                                =C2=A0 =C2=A0 serial: 31804F1<br>
                                =C2=A0 =C2=A0 addr: 192.168.10.2<br>
                                =C2=A0 =C2=A0 fpga: HG<br>
                                =C2=A0 =C2=A0 name:<br>
                                =C2=A0 =C2=A0 product: X310<br>
                                =C2=A0 =C2=A0 type: x300
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div>[INFO] [UHD] linux; GNU C++ version
                                  5.4.0 20160609; Boost_105800;
                                  UHD_3.13.1.HEAD-0-gbbce3e45<br>
                                  [INFO] [X300] X300 initialization
                                  sequence...<br>
                                  [INFO] [X300] Maximum frame size: 1472
                                  bytes.<br>
                                  [INFO] [X300] Radio 1x clock: 200 MHz<b=
r>
                                  [INFO] [GPS] No GPSDO found<br>
                                  [INFO] [0/DmaFIFO_0] Initializing
                                  block control (NOC ID:
                                  0xF1F0D00000000000)<br>
                                  [INFO] [0/DmaFIFO_0] BIST passed
                                  (Throughput: <b><font color=3D"#ff0000"=
>1292</font></b>
                                  MB/s)<br>
                                  [INFO] [0/DmaFIFO_0] BIST passed
                                  (Throughput: <b><font color=3D"#ff0000"=
>1299</font></b>
                                  MB/s)<br>
                                  [INFO] [0/Radio_0] Initializing block
                                  control (NOC ID: 0x12AD100000000001)<br=
>
                                  [INFO] [0/Radio_1] Initializing block
                                  control (NOC ID: 0x12AD100000000001)<br=
>
                                  [INFO] [0/DDC_0] Initializing block
                                  control (NOC ID: 0xDDC0000000000000)<br=
>
                                  [INFO] [0/DDC_1] Initializing block
                                  control (NOC ID: 0xDDC0000000000000)<br=
>
                                  [INFO] [0/DUC_0] Initializing block
                                  control (NOC ID: 0xD0C0000000000000)<br=
>
                                  [INFO] [0/DUC_1] Initializing block
                                  control (NOC ID: 0xD0C0000000000000)<br=
>
                                  Actual RX Freq: 915.000000 MHz...<br>
                                  Actual TX Freq: 915.000000 MHz...<br>
                                  Actual RX Rate: 2.000000 Msps...<br>
                                  Actual TX Rate: 2.000000 Msps...<br>
                                  Rx antenna is RX2<br>
                                  Tx antenna is TX/RX<br>
                                  Actual RX Gain: 0.000000 dB...<br>
                                  Actual TX Gain: 15.000000 dB...<br>
                                  Actual RX Bandwidth: 2.000000 MHz...<br=
>
                                  Actual TX Bandwidth: 2.000000 MHz...<br=
>
                                  Actual RX Freq: 915.000000 MHz...<br>
                                  Actual TX Freq: 915.000000 MHz...<br>
                                  Actual RX Rate: 2.000000 Msps...<br>
                                  Actual TX Rate: 2.000000 Msps...<br>
                                  Rx antenna is RX2<br>
                                  Tx antenna is TX/RX<br>
                                  Actual RX Gain: 0.000000 dB...<br>
                                  Actual TX Gain: 15.000000 dB...<br>
                                  Actual RX Bandwidth: 2.000000 MHz...<br=
>
                                  Actual TX Bandwidth: 2.000000 MHz...<br=
>
                                  RX channel num: 2<br>
                                  TX channel num: 2<br>
                                  tx_max_num_samps =3D 364<br>
                                  rx_max_num_samps =3D 364<br>
                                  =C2=A0</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                              </div>
_______________________________________________<br>
                              USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a><br>
                              To unsubscribe send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">usrp-users-leave@lists.=
ettus.com</a><br>
                            </blockquote>
                          </div>
                          <span>_________________________________________=
______</span><br>
                          <span>USRP-users mailing list -- <a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              target=3D"_blank">usrp-users@lists.ettus.co=
m</a></span><br>
                          <span>To unsubscribe send an email to <a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              target=3D"_blank">usrp-users-leave@lists.et=
tus.com</a></span><br>
                        </div>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080707060005090802010404--

--===============5775100311817730067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5775100311817730067==--
