Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7604F386C0F
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 23:12:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DE8F385050
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 17:12:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GXKTexro";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 91EC8384BD4
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 17:11:28 -0400 (EDT)
Received: by mail-yb1-f175.google.com with SMTP id f9so10412348ybo.6
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 14:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=REi67T3W+KQQ54+GMlPc3GkQBjZ5q691w5eQLoiXmZE=;
        b=GXKTexroqjiiLC6M78KBZj8VgsykCHfXG/BKlBCJxb4SOo3B8Uk3ZgyXwjOEnbkfAv
         Tn/4kp+H5qzI37t0n+u/RsFWimTqBEuks1YaiXSbF5N0PnpmxMuDgvDdV7e0DFPSRJzM
         M1rq5wdwLqs0deFN6+9TnXrPjYcTikO9ifrDwSqBzeY+eYmgLljxeYtgL2vAqRcwFprZ
         huxJiqvzw2KctkMQ6TTHRK93mB2ApQNIHssedU3RHeLFNZkqliyoTyplXsK7NiGB8oPH
         H9OR3LWnmCC4SJMQCFoY1bEGQND+hWhOOg7kdqExuu71uiJ8KFfgy+XCfToNubcjJ2AB
         QlFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=REi67T3W+KQQ54+GMlPc3GkQBjZ5q691w5eQLoiXmZE=;
        b=Wqy4h2HPjuXG/xV+HsLhz5kbV4SEXt7tISdYLJ0q7zK8UBI4dvbg8XhAHwKX4cwCil
         +K91IxhRV4EklikatMCkPHZ+jVzX3c5Xyo+6juCjNF0Th7Q4MnMDRew0TJYkAMvRPMNi
         B9hTvRhItfYI1KQMvjvvPAnfEngZ+caCA3msIs2NIXAc8IDOwsJKeQmXvi4OGVp+CPQM
         ZyDOBZOtY37OE0aWuvPyLQwFg8W9swlorn5JHYeNBVht3Ru6ijfWEmACahz52DvjnvMI
         RjhX4na/F59J+0w0kx0uGPMSGyRfmmYZO05sYajVdm/tZognQxZ+/keBzCjo6NctNTs8
         9JzA==
X-Gm-Message-State: AOAM532tUB2T01dssRJUFWzQEHy9ojotuaA078b/tdyg5zFv472Axdol
	YzBMF/g5hT7ZPp7nk2DtNz/8JGLc3dCoggdAZnk=
X-Google-Smtp-Source: ABdhPJwLPeXPXXJPWXZTkRA/qfv179LXFSTDOkuED9ZCGGfh5wQp7gFEtFwVv1dA7mrGhRc8sRikvfdeVTEiTxQFyNY=
X-Received: by 2002:a25:3585:: with SMTP id c127mr2801820yba.494.1621285887950;
 Mon, 17 May 2021 14:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
 <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com> <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
 <60A2D298.5000802@gmail.com>
In-Reply-To: <60A2D298.5000802@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Mon, 17 May 2021 21:11:16 -0400
Message-ID: <CAL0m=NYE_sXU_ij3=WiJZorsWsjRPva_8DHKLjrLU7AMLfDmLg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 4I7LVXQWWT7AGUWKOPVI3HHAN3ZPJMVH
X-Message-ID-Hash: 4I7LVXQWWT7AGUWKOPVI3HHAN3ZPJMVH
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4I7LVXQWWT7AGUWKOPVI3HHAN3ZPJMVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3194489028279422641=="

--===============3194489028279422641==
Content-Type: multipart/alternative; boundary="0000000000006e44bd05c28d091d"

--0000000000006e44bd05c28d091d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for your reply. I actually have read this note, and did not find a
solution to my problem. In my project, I'm not seeking phase
synchronization, but trying to achieve frequency synchronization (for ADC
and carrier frequency). It seems that the two transmit data streams are
misaligned in the time. That is, one data stream is about 20us (40 samples)
ahead of the other data stream.

Based on my understanding, the two broads of X310 should be automatically
synchronous for RF carrier frequency and ADC sampling frequency, since they
are driven by the same LO. There might be phase offset between the two
channels, but that is not my focus here.

Thanks,
Hua



On Mon, May 17, 2021 at 4:31 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 05/17/2021 04:27 PM, Zeng, Huacheng wrote:
>
> Hi Marcus,
>
> Thank you for the reply. I am using SBX (40MHz)  daughterboards for X310.
> For my software setting, I'm not sure what is the best way to present the
> details. So I copied my code below. Hopeful it is not messy for you to
> review.
>
> Thanks,
> Hua
>
> You should probably read these notes on synchronization:
>
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Device=
s
>
> Specifically, you'll need to use timed commands to tune your two card, so
> that the phase-resynch feature of the ADF4351 can
>   be used to produce phase synchronization of the two LOs involved here.
>
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> int main() {
>     sdr_para sp;
>     sp.is_usrp_enabled =3D true;
>     sp.is_debg_enabled =3D false;
>
>     sp.ip_addrs =3D "addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D=
200e6";
>     sp.chan_num =3D 2;
>     sp.chan_str =3D "0,1";
>     sp.sync_opt =3D "internal"; //"pps", "mimo"
>     sp.cen_freq =3D 915e6;
>     sp.sam_rate =3D 2e6;
>     sp.tx_ant_name =3D "TX/RX";
>     sp.rx_ant_name =3D "RX2";
>     sp.analg_bw =3D sp.sam_rate;
>     sp.tx_gain =3D 15;
>     sp.rx_gain =3D 0;
>
>     sdr =3D new sdr_dev(sp);
>
>     // transmit
>     sdr -> usrp_transmit(buf, num_samps);
>
>     // receiver
>     sdr -> usrp_receive(buf, num_samps);
>
> }
>
> void sdr_dev::configure_usrp(sdr_para sp) {
>
>     is_usrp_enabled =3D sp.is_usrp_enabled;
>     is_debg_enabled =3D sp.is_debg_enabled;
>
>     ip_addrs =3D sp.ip_addrs; //
>     chan_str =3D sp.chan_str; // specify "0", "1", "0,1", etc
>     chan_num =3D sp.chan_num;
>     sync_opt =3D sp.sync_opt; //"pps", "mimo", "default"
>
>     cen_freq =3D sp.cen_freq;
>     sam_rate =3D sp.sam_rate;
>
>     analg_bw =3D sp.analg_bw;
>     tx_gain =3D sp.tx_gain;
>     rx_gain =3D sp.rx_gain;
>
>     tx_ant_name =3D sp.tx_ant_name;
>     rx_ant_name =3D sp.rx_ant_name;
>
>     seconds_in_future =3D 1.0;
>
>     //create a usrp device
>     uhd::set_thread_priority_safe();
>     usrp =3D uhd::usrp::multi_usrp::make(ip_addrs);
>     //cout << boost::format("Using Device: %s") % usrp->get_pp_string() <=
<
> endl;
>
>     //always select the subdevice first, the channel mapping affects the
> other settings
>     // usrp->set_rx_subdev_spec(subdev); //sets across all mboards
>     // usrp->set_tx_subdev_spec(subdev); //sets across all mboards
>
>     // clock and time sync_opthronization
>     if (sync_opt =3D=3D "pps") {
>         usrp -> set_clock_source("external");
>         usrp -> set_time_source("external");
>         usrp -> set_time_unknown_pps(uhd::time_spec_t(0.0));
>         this_thread::sleep_for(chrono::seconds(1)); //wait for pps
> sync_opt pulse
>     } else if (sync_opt =3D=3D "mimo") {
>         cout << "MIMO cable" << endl;
>         UHD_ASSERT_THROW(usrp -> get_num_mboards() =3D=3D 2);
>         //make mboard 1 a slave over the MIMO Cable
>         usrp -> set_clock_source("mimo", 1);
>         usrp -> set_time_source("mimo", 1);
>         //set time on the master (mboard 0)
>         usrp -> set_time_now(uhd::time_spec_t(0.0), 0);
>         //sleep a bit while the slave locks its time to the master
>         this_thread::sleep_for(chrono::milliseconds(500));
>     } else {
>         usrp -> set_time_now(uhd::time_spec_t(1.0));
>     }
>
>     //set the center frequency
>     uhd::tune_request_t tune_request(cen_freq);
>     tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");
>     for (int ch =3D 0; ch < chan_num; ch++) {
>         usrp -> set_rx_freq(tune_request, ch);
>         usrp -> set_tx_freq(tune_request, ch);
>         cout << boost::format("Actual RX Freq: %f MHz...") % (usrp ->
> get_rx_freq(ch) / 1e6) << endl;
>         cout << boost::format("Actual TX Freq: %f MHz...") % (usrp ->
> get_tx_freq(ch) / 1e6) << endl;
>
>         //set the rx sample rate (sets across all channels)
>         usrp -> set_rx_rate(sam_rate, ch);
>         usrp -> set_tx_rate(sam_rate, ch);
>         cout << boost::format("Actual RX Rate: %f Msps...") % (usrp ->
> get_rx_rate(ch) / 1e6) << endl;
>         cout << boost::format("Actual TX Rate: %f Msps...") % (usrp ->
> get_tx_rate(ch) / 1e6) << endl;
>
>         //set antenna ...
>         usrp -> set_rx_antenna(rx_ant_name, ch);
>         usrp -> set_tx_antenna(tx_ant_name, ch);
>         cout << "Rx antenna is " << usrp -> get_rx_antenna(ch) << endl;
>         cout << "Tx antenna is " << usrp -> get_tx_antenna(ch) << endl;
>
>         //set the rf gain
>         usrp -> set_rx_gain(rx_gain, ch);
>         usrp -> set_tx_gain(tx_gain, ch);
>         cout << boost::format("Actual RX Gain: %f dB...") % usrp ->
> get_rx_gain(ch) << endl;
>         cout << boost::format("Actual TX Gain: %f dB...") % usrp ->
> get_tx_gain(ch) << endl;
>
>         //set the analog frontend filter bandwidth
>         usrp -> set_rx_bandwidth(analg_bw, ch);
>         usrp -> set_tx_bandwidth(analg_bw, ch);
>         cout << boost::format("Actual RX Bandwidth: %f MHz...") % (usrp -=
>
> get_rx_bandwidth(ch) / 1e6) << endl;
>         cout << boost::format("Actual TX Bandwidth: %f MHz...") % (usrp -=
>
> get_tx_bandwidth(ch) / 1e6) << endl;
>
>         usrp -> set_rx_dc_offset(false, ch);
>
>     }
>
>     //detect which channels to use
>     cout << "RX channel num: " << usrp -> get_rx_num_channels() << endl;
>     cout << "TX channel num: " << usrp -> get_tx_num_channels() << endl;
>     vector < string > channel_strings;
>     boost::split(channel_strings, chan_str, boost::is_any_of("\"',"));
>     for (size_t ch =3D 0; ch < channel_strings.size(); ch++) {
>         size_t chan =3D stoi(channel_strings[ch]);
>         if (chan >=3D usrp -> get_rx_num_channels()) {
>             throw runtime_error("Invalid channel(s) specified.");
>         } else {
>             channel_nums.push_back(stoi(channel_strings[ch]));
>         }
>     }
>
>     //create a receive streamer
>     //linearly map channels (index0 =3D channel0, index1 =3D channel1, ..=
.)
>     uhd::stream_args_t stream_args("fc32"); //complex floats
>     stream_args.channels =3D channel_nums;
>     rx_stream =3D usrp -> get_rx_stream(stream_args);
>     tx_stream =3D usrp -> get_tx_stream(stream_args);
>
>     // pkt max size
>     tx_max_num_samps =3D tx_stream -> get_max_num_samps();
>     rx_max_num_samps =3D rx_stream -> get_max_num_samps();
>     cout << "tx_max_num_samps =3D " << tx_max_num_samps << endl;
>     cout << "rx_max_num_samps =3D " << rx_max_num_samps << endl;
>
>     // issue command to receive data from usrp
>     uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>     stream_cmd.num_samps =3D 0;
>     stream_cmd.stream_now =3D false;
>     stream_cmd.time_spec =3D usrp -> get_time_now() +
> uhd::time_spec_t(seconds_in_future);
>     rx_stream -> issue_stream_cmd(stream_cmd); //tells all channels to
> stream
>
>     //cout<<"time real: " <<stream_cmd.time_spec.get_real_secs() << endl;
>     //cout<<"time full: " <<stream_cmd.time_spec.get_full_secs() << endl;
>     //cout<<"time frac: " <<stream_cmd.time_spec.get_frac_secs() << endl;
>     //the first call to recv() will block this many seconds before
> receiving
>     timeout =3D seconds_in_future + 0.1; //timeout (delay before receive =
+
> padding)
>
>     cout << "^^^^^^^^^^^^^^^^^^^^^^^^ complete SDR initialization
> ^^^^^^^^^^^^^^^^^^^^^" << endl;
> }
>
> sdr_dev::~sdr_dev() {}
>
> void sdr_dev::set_time_for_receiving(double sec_in_future) {
>
>     // issue command to receive data from usrp
>     uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>     stream_cmd.num_samps =3D 0;
>     stream_cmd.stream_now =3D false;
>     stream_cmd.time_spec =3D usrp -> get_time_now() +
> uhd::time_spec_t(sec_in_future);
>     rx_stream -> issue_stream_cmd(stream_cmd);
>
> }
>
> size_t sdr_dev::receive(vector < complex < float > * > rx_buff_ptr, size_=
t
> requested_num_samps) {
>
>     if (is_usrp_enabled =3D=3D true)
>         return usrp_receive(rx_buff_ptr, requested_num_samps);
>     else
>         return simu_receive(rx_buff_ptr, requested_num_samps);
>
> }
>
> // predefined functions
> size_t sdr_dev::usrp_receive(vector < complex < float > * > rx_buff_ptr,
> size_t requested_num_samps) {
>     size_t acc_num_samps =3D 0;
>     size_t total_num_samps =3D requested_num_samps;
>
>     vector < complex < float > * > rx_buff_ptr_tmp =3D rx_buff_ptr;
>
>     while (acc_num_samps < total_num_samps) {
>
>         for (int i =3D 0; i < rx_buff_ptr.size(); i++) rx_buff_ptr_tmp[i]=
 =3D
> & rx_buff_ptr[i][acc_num_samps];
>
>         size_t num_rx_samps =3D rx_stream -> recv(rx_buff_ptr_tmp,
> total_num_samps - acc_num_samps, rx_md, timeout);
>
>         //use a small timeout for subsequent packets
>         timeout =3D 0.1;
>         if (is_debg_enabled =3D=3D true) {
>             //handle the error code
>             if (rx_md.error_code =3D=3D
> uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) break;
>             if (rx_md.error_code !=3D uhd::rx_metadata_t::ERROR_CODE_NONE=
) {
>                 throw runtime_error(str(boost::format("Receiver error %s"=
)
> % rx_md.strerror()));
>             }
>             cout << boost::format("Received packet: %u samples, %u full
> secs, %f frac secs")\ %
>                 num_rx_samps\ %
>                 rx_md.time_spec.get_full_secs()\ %
>                 rx_md.time_spec.get_frac_secs()\ <<
>                 endl;
>         }
>         acc_num_samps +=3D num_rx_samps;
>     }
>     if (acc_num_samps < total_num_samps) {
>         cerr << "Receive timeout before all samples received..." << endl;
>     }
>
>     return acc_num_samps;
> }
>
> size_t sdr_dev::transmit(vector < complex < float > * > tx_buff_ptr,
> size_t requested_num_samps) {
>
>     if (is_usrp_enabled =3D=3D true)
>         return usrp_transmit(tx_buff_ptr, requested_num_samps);
>     else
>         return simu_transmit(tx_buff_ptr, requested_num_samps);
>
> }
>
> size_t sdr_dev::usrp_transmit(vector < complex < float > * > tx_buff_ptr,
> size_t requested_num_samps) {
>     //setup metadata for the first packet
>     tx_md.start_of_burst =3D true; // not clear what is the difference
> between "false" and "true"
>     tx_md.end_of_burst =3D false;
>     tx_md.has_time_spec =3D true; //??? should be true or false
>     tx_md.time_spec =3D usrp -> get_time_now() + uhd::time_spec_t(0.001);
> //0.1
>
>     //the first call to send() will block this many seconds before sendin=
g:
>     timeout =3D seconds_in_future + 0.1; //timeout (delay before transmit=
 +
> padding)
>
>     vector < complex < float > * > tx_buff_ptr_tmp =3D tx_buff_ptr;
>
>     size_t acc_num_samps =3D 0; //number of accumulated samples
>     size_t total_num_samps =3D requested_num_samps;
>     while (acc_num_samps < total_num_samps) {
>         size_t samps_to_send =3D total_num_samps - acc_num_samps;
>         if (samps_to_send > tx_max_num_samps) {
>             samps_to_send =3D tx_max_num_samps;
>         } else {
>             //tx_md.end_of_burst =3D true;
>         }
>
>         for (int i =3D 0; i < tx_buff_ptr.size(); i++) tx_buff_ptr_tmp[i]=
 =3D
> & tx_buff_ptr[i][acc_num_samps];
>
>         //send a single packet
>         size_t num_tx_samps =3D tx_stream -> send(tx_buff_ptr_tmp,
> samps_to_send, tx_md, timeout);
>         //do not use time spec for subsequent packets
>         tx_md.has_time_spec =3D false;
>         tx_md.start_of_burst =3D false;
>
>         if (num_tx_samps < samps_to_send) {
>             cerr << "Send timeout..." << endl;
>         }
>         if (is_debg_enabled =3D=3D true) {
>             cout << boost::format("Sent packet: %u samples") %
> num_tx_samps << endl;
>         }
>         acc_num_samps +=3D num_tx_samps;
>     }
>
>     //tx_md.end_of_burst =3D true;
>     tx_stream -> send("", 0, tx_md);
>
>     if (is_debg_enabled =3D=3D true) {
>         cout << endl << "Waiting for async_opt burst ACK... " << flush;
>         size_t acks =3D 0;
>         //loop through all messages for the ACK packets (may have
> underflow messages in queue)
>         while (acks < channel_nums.size() and tx_stream ->
> recv_async_msg(async_md, seconds_in_future)) {
>             if (async_md.event_code =3D=3D
> uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;
>         }
>
>         if (acks < channel_nums.size()) {
>             cout << "fail" << endl;
>         } else {
>             cout << "ack received" << endl;
>         }
>     }
>
>     return acc_num_samps;
> }
>
> On Mon, May 17, 2021 at 3:24 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> You haven=E2=80=99t said what type of daughter cards you=E2=80=99re usin=
g.
>>
>> Nor exactly how you=E2=80=99re setting things up
>> In your software.
>>
>> Sent from my iPhone
>>
>> On May 17, 2021, at 1:56 PM, Zeng, Huacheng <huacheng.zeng@gmail.com>
>> wrote:
>>
>> =EF=BB=BF
>> An update - I update UHD to 4.0 version and run the code again. With thi=
s
>> version I got some warning message (see below). Did I set up the X310 us=
rp
>> improperly?
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_4.0.0.HEAD-0-g90ce6062
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>> Actual RX Freq: 915.000000 MHz...
>> Actual TX Freq: 915.000000 MHz...
>> Actual RX Rate: 2.000000 Msps...
>> Actual TX Rate: 2.000000 Msps...
>> Rx antenna is RX2
>> Tx antenna is TX/RX
>> Actual RX Gain: 0.000000 dB...
>> Actual TX Gain: 15.000000 dB...
>> Actual RX Bandwidth: 2.000000 MHz...
>> Actual TX Bandwidth: 2.000000 MHz...
>> Actual RX Freq: 915.000000 MHz...
>> Actual TX Freq: 915.000000 MHz...
>> Actual RX Rate: 2.000000 Msps...
>> Actual TX Rate: 2.000000 Msps...
>> Rx antenna is RX2
>> Tx antenna is TX/RX
>> Actual RX Gain: 0.000000 dB...
>> Actual TX Gain: 15.000000 dB...
>> Actual RX Bandwidth: 2.000000 MHz...
>> Actual TX Bandwidth: 2.000000 MHz...
>> RX channel num: 2
>> TX channel num: 2
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> tx_max_num_samps =3D 364
>> rx_max_num_samps =3D 364
>>
>> Thanks,
>> Hua
>>
>> On Mon, May 17, 2021 at 12:04 PM Huacheng Zeng <zenghuacheng@gmail.com>
>> wrote:
>>
>>> Hi all,
>>>
>>> I am using X310 as an MIMO transmitter to send two data streams. I
>>> observed from the received signal that the two data streams are misalig=
ned
>>> in the time domain. I suspect that it is the X310's timing/frequency
>>> synchronization problem. Below is the output information. Is there any =
C++
>>> API reference for setting up X310 as a MIMO transmitter/receiver? Any
>>> suggestions would be appreciated.
>>>
>>> Thanks,
>>> Hua
>>>
>>>
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.13.1.HEAD-0-gbbce3e45
>>> --------------------------------------------------
>>> -- UHD Device 0
>>> --------------------------------------------------
>>> Device Address:
>>>     serial: 31804F1
>>>     addr: 192.168.10.2
>>>     fpga: HG
>>>     name:
>>>     product: X310
>>>     type: x300
>>>
>>>
>>>
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.13.1.HEAD-0-gbbce3e45
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> [INFO] [GPS] No GPSDO found
>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>> 0xF1F0D00000000000)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1292* MB/s)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1299* MB/s)
>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>> 0x12AD100000000001)
>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>> 0x12AD100000000001)
>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000=
)
>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000=
)
>>> Actual RX Freq: 915.000000 MHz...
>>> Actual TX Freq: 915.000000 MHz...
>>> Actual RX Rate: 2.000000 Msps...
>>> Actual TX Rate: 2.000000 Msps...
>>> Rx antenna is RX2
>>> Tx antenna is TX/RX
>>> Actual RX Gain: 0.000000 dB...
>>> Actual TX Gain: 15.000000 dB...
>>> Actual RX Bandwidth: 2.000000 MHz...
>>> Actual TX Bandwidth: 2.000000 MHz...
>>> Actual RX Freq: 915.000000 MHz...
>>> Actual TX Freq: 915.000000 MHz...
>>> Actual RX Rate: 2.000000 Msps...
>>> Actual TX Rate: 2.000000 Msps...
>>> Rx antenna is RX2
>>> Tx antenna is TX/RX
>>> Actual RX Gain: 0.000000 dB...
>>> Actual TX Gain: 15.000000 dB...
>>> Actual RX Bandwidth: 2.000000 MHz...
>>> Actual TX Bandwidth: 2.000000 MHz...
>>> RX channel num: 2
>>> TX channel num: 2
>>> tx_max_num_samps =3D 364
>>> rx_max_num_samps =3D 364
>>>
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>

--0000000000006e44bd05c28d091d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks for your reply. I act=
ually have read this note, and did not find a solution to my problem. In my=
 project, I&#39;m not seeking phase synchronization, but trying to achieve =
frequency synchronization (for ADC and carrier frequency). It seems that th=
e two transmit data streams are misaligned in the time. That is, one data s=
tream is about 20us (40 samples) ahead of the other data stream.=C2=A0<div>=
<br></div><div>Based on my understanding, the two broads of X310 should be =
automatically synchronous for RF carrier frequency and ADC sampling frequen=
cy, since they are driven by the same LO. There might be phase offset betwe=
en the two channels, but that is not my focus here.=C2=A0</div><div><br></d=
iv><div>Thanks,</div><div>Hua</div><div><br></div><div><br></div></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, May 17, 2021 at 4:31 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 05/17/2021 04:27 PM, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi Marcus,</div>
        <div><br>
        </div>
        <div>Thank you for the reply. I am using SBX (40MHz)=C2=A0
          daughterboards for X310. For my software setting, I&#39;m not sur=
e
          what is the best way to present the details. So I copied my
          code below. Hopeful it is not messy for you to review. <br>
        </div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Hua</div>
      </div>
    </blockquote>
    You should probably read these notes on synchronization:<br>
    <br>
<a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_US=
RP_Devices" target=3D"_blank">https://kb.ettus.com/Synchronization_and_MIMO=
_Capability_with_USRP_Devices</a><br>
    <br>
    Specifically, you&#39;ll need to use timed commands to tune your two
    card, so that the phase-resynch feature of the ADF4351 can<br>
    =C2=A0 be used to produce phase synchronization of the two LOs involved
    here.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div><br>
        </div>
        <div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
        <div><br>
        </div>
        <div>int main() {<br>
          =C2=A0 =C2=A0 sdr_para sp;<br>
          =C2=A0 =C2=A0 sp.is_usrp_enabled =3D true;<br>
          =C2=A0 =C2=A0 sp.is_debg_enabled =3D false;<br>
          <br>
          =C2=A0 =C2=A0 sp.ip_addrs =3D
          &quot;addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D200e6&q=
uot;;<br>
          =C2=A0 =C2=A0 sp.chan_num =3D 2;<br>
          =C2=A0 =C2=A0 sp.chan_str =3D &quot;0,1&quot;;<br>
          =C2=A0 =C2=A0 sp.sync_opt =3D &quot;internal&quot;; //&quot;pps&q=
uot;, &quot;mimo&quot;<br>
          =C2=A0 =C2=A0 sp.cen_freq =3D 915e6;<br>
          =C2=A0 =C2=A0 sp.sam_rate =3D 2e6;<br>
          =C2=A0 =C2=A0 sp.tx_ant_name =3D &quot;TX/RX&quot;;<br>
          =C2=A0 =C2=A0 sp.rx_ant_name =3D &quot;RX2&quot;;<br>
          =C2=A0 =C2=A0 sp.analg_bw =3D sp.sam_rate;<br>
          =C2=A0 =C2=A0 sp.tx_gain =3D 15;<br>
          =C2=A0 =C2=A0 sp.rx_gain =3D 0;<br>
          <br>
          =C2=A0 =C2=A0 sdr =3D new sdr_dev(sp);<br>
          <br>
          =C2=A0 =C2=A0 // transmit <br>
          =C2=A0 =C2=A0 sdr -&gt; usrp_transmit(buf, num_samps);<br>
          <br>
          =C2=A0 =C2=A0 // receiver <br>
          =C2=A0 =C2=A0 sdr -&gt; usrp_receive(buf, num_samps);<br>
          <br>
          }<br>
          <br>
          void sdr_dev::configure_usrp(sdr_para sp) {<br>
          <br>
          =C2=A0 =C2=A0 is_usrp_enabled =3D sp.is_usrp_enabled;<br>
          =C2=A0 =C2=A0 is_debg_enabled =3D sp.is_debg_enabled;<br>
          <br>
          =C2=A0 =C2=A0 ip_addrs =3D sp.ip_addrs; //<br>
          =C2=A0 =C2=A0 chan_str =3D sp.chan_str; // specify &quot;0&quot;,=
 &quot;1&quot;, &quot;0,1&quot;, etc<br>
          =C2=A0 =C2=A0 chan_num =3D sp.chan_num;<br>
          =C2=A0 =C2=A0 sync_opt =3D sp.sync_opt; //&quot;pps&quot;, &quot;=
mimo&quot;, &quot;default&quot;<br>
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
          =C2=A0 =C2=A0 usrp =3D uhd::usrp::multi_usrp::make(ip_addrs);<br>
          =C2=A0 =C2=A0 //cout &lt;&lt; boost::format(&quot;Using Device: %=
s&quot;) %
          usrp-&gt;get_pp_string() &lt;&lt; endl;<br>
          <br>
          =C2=A0 =C2=A0 //always select the subdevice first, the channel ma=
pping
          affects the other settings<br>
          =C2=A0 =C2=A0 // usrp-&gt;set_rx_subdev_spec(subdev); //sets acro=
ss all
          mboards<br>
          =C2=A0 =C2=A0 // usrp-&gt;set_tx_subdev_spec(subdev); //sets acro=
ss all
          mboards<br>
          <br>
          =C2=A0 =C2=A0 // clock and time sync_opthronization<br>
          =C2=A0 =C2=A0 if (sync_opt =3D=3D &quot;pps&quot;) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_clock_source(&quot;ext=
ernal&quot;);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_source(&quot;exte=
rnal&quot;);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt;
          set_time_unknown_pps(uhd::time_spec_t(0.0));<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 this_thread::sleep_for(chrono::second=
s(1)); //wait for
          pps sync_opt pulse<br>
          =C2=A0 =C2=A0 } else if (sync_opt =3D=3D &quot;mimo&quot;) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;MIMO cable&quot; =
&lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(usrp -&gt; get_num_m=
boards() =3D=3D 2);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //make mboard 1 a slave over the MIMO=
 Cable<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_clock_source(&quot;mim=
o&quot;, 1);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_source(&quot;mimo=
&quot;, 1);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set time on the master (mboard 0)<b=
r>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_now(uhd::time_spe=
c_t(0.0), 0);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //sleep a bit while the slave locks i=
ts time to the
          master<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 this_thread::sleep_for(chrono::millis=
econds(500));<br>
          =C2=A0 =C2=A0 } else {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_now(uhd::time_spe=
c_t(1.0));<br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 //set the center frequency<br>
          =C2=A0 =C2=A0 uhd::tune_request_t tune_request(cen_freq);<br>
          =C2=A0 =C2=A0 tune_request.args =3D uhd::device_addr_t(&quot;mode=
_n=3Dinteger&quot;);<br>
          =C2=A0 =C2=A0 for (int ch =3D 0; ch &lt; chan_num; ch++) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_freq(tune_request, =
ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_freq(tune_request, =
ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual RX Freq: %f
          MHz...&quot;) % (usrp -&gt; get_rx_freq(ch) / 1e6) &lt;&lt; endl;=
<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual TX Freq: %f
          MHz...&quot;) % (usrp -&gt; get_tx_freq(ch) / 1e6) &lt;&lt; endl;=
<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rx sample rate (sets across=
 all channels)<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_rate(sam_rate, ch);=
<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_rate(sam_rate, ch);=
<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual RX Rate: %f
          Msps...&quot;) % (usrp -&gt; get_rx_rate(ch) / 1e6) &lt;&lt; endl=
;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual TX Rate: %f
          Msps...&quot;) % (usrp -&gt; get_tx_rate(ch) / 1e6) &lt;&lt; endl=
;<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set antenna ...<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_antenna(rx_ant_name=
, ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_antenna(tx_ant_name=
, ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;Rx antenna is &qu=
ot; &lt;&lt; usrp -&gt;
          get_rx_antenna(ch) &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;Tx antenna is &qu=
ot; &lt;&lt; usrp -&gt;
          get_tx_antenna(ch) &lt;&lt; endl;<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rf gain<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_gain(rx_gain, ch);<=
br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_gain(tx_gain, ch);<=
br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual RX Gain: %f
          dB...&quot;) % usrp -&gt; get_rx_gain(ch) &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual TX Gain: %f
          dB...&quot;) % usrp -&gt; get_tx_gain(ch) &lt;&lt; endl;<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the analog frontend filter band=
width<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_bandwidth(analg_bw,=
 ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_bandwidth(analg_bw,=
 ch);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual RX Bandwidth: %f
          MHz...&quot;) % (usrp -&gt; get_rx_bandwidth(ch) / 1e6) &lt;&lt;
          endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Act=
ual TX Bandwidth: %f
          MHz...&quot;) % (usrp -&gt; get_tx_bandwidth(ch) / 1e6) &lt;&lt;
          endl;<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_dc_offset(false, ch=
);<br>
          <br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 //detect which channels to use<br>
          =C2=A0 =C2=A0 cout &lt;&lt; &quot;RX channel num: &quot; &lt;&lt;=
 usrp -&gt;
          get_rx_num_channels() &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 cout &lt;&lt; &quot;TX channel num: &quot; &lt;&lt;=
 usrp -&gt;
          get_tx_num_channels() &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 vector &lt; string &gt; channel_strings;<br>
          =C2=A0 =C2=A0 boost::split(channel_strings, chan_str,
          boost::is_any_of(&quot;\&quot;&#39;,&quot;));<br>
          =C2=A0 =C2=A0 for (size_t ch =3D 0; ch &lt; channel_strings.size(=
); ch++)
          {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t chan =3D stoi(channel_strings[=
ch]);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (chan &gt;=3D usrp -&gt; get_rx_nu=
m_channels()) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw runtime_error(&qu=
ot;Invalid channel(s)
          specified.&quot;);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channel_nums.push_back(=
stoi(channel_strings[ch]));<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 //create a receive streamer<br>
          =C2=A0 =C2=A0 //linearly map channels (index0 =3D channel0, index=
1 =3D
          channel1, ...)<br>
          =C2=A0 =C2=A0 uhd::stream_args_t stream_args(&quot;fc32&quot;); /=
/complex floats<br>
          =C2=A0 =C2=A0 stream_args.channels =3D channel_nums;<br>
          =C2=A0 =C2=A0 rx_stream =3D usrp -&gt; get_rx_stream(stream_args)=
;<br>
          =C2=A0 =C2=A0 tx_stream =3D usrp -&gt; get_tx_stream(stream_args)=
;<br>
          <br>
          =C2=A0 =C2=A0 // pkt max size<br>
          =C2=A0 =C2=A0 tx_max_num_samps =3D tx_stream -&gt; get_max_num_sa=
mps();<br>
          =C2=A0 =C2=A0 rx_max_num_samps =3D rx_stream -&gt; get_max_num_sa=
mps();<br>
          =C2=A0 =C2=A0 cout &lt;&lt; &quot;tx_max_num_samps =3D &quot; &lt=
;&lt;
          tx_max_num_samps &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 cout &lt;&lt; &quot;rx_max_num_samps =3D &quot; &lt=
;&lt;
          rx_max_num_samps &lt;&lt; endl;<br>
          <br>
          =C2=A0 =C2=A0 // issue command to receive data from usrp <br>
          =C2=A0 =C2=A0 uhd::stream_cmd_t
          stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
          =C2=A0 =C2=A0 stream_cmd.num_samps =3D 0;<br>
          =C2=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>
          =C2=A0 =C2=A0 stream_cmd.time_spec =3D usrp -&gt; get_time_now() =
+
          uhd::time_spec_t(seconds_in_future);<br>
          =C2=A0 =C2=A0 rx_stream -&gt; issue_stream_cmd(stream_cmd); //tel=
ls all
          channels to stream<br>
          <br>
          =C2=A0 =C2=A0 //cout&lt;&lt;&quot;time real: &quot;
          &lt;&lt;stream_cmd.time_spec.get_real_secs() &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 //cout&lt;&lt;&quot;time full: &quot;
          &lt;&lt;stream_cmd.time_spec.get_full_secs() &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 //cout&lt;&lt;&quot;time frac: &quot;
          &lt;&lt;stream_cmd.time_spec.get_frac_secs() &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 //the first call to recv() will block this many sec=
onds
          before receiving<br>
          =C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1; //timeout (del=
ay before
          receive + padding)<br>
          <br>
          =C2=A0 =C2=A0 cout &lt;&lt; &quot;^^^^^^^^^^^^^^^^^^^^^^^^ comple=
te SDR
          initialization ^^^^^^^^^^^^^^^^^^^^^&quot; &lt;&lt; endl;<br>
          }<br>
          <br>
          sdr_dev::~sdr_dev() {}<br>
          <br>
          void sdr_dev::set_time_for_receiving(double sec_in_future) {<br>
          <br>
          =C2=A0 =C2=A0 // issue command to receive data from usrp <br>
          =C2=A0 =C2=A0 uhd::stream_cmd_t
          stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
          =C2=A0 =C2=A0 stream_cmd.num_samps =3D 0;<br>
          =C2=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>
          =C2=A0 =C2=A0 stream_cmd.time_spec =3D usrp -&gt; get_time_now() =
+
          uhd::time_spec_t(sec_in_future);<br>
          =C2=A0 =C2=A0 rx_stream -&gt; issue_stream_cmd(stream_cmd);<br>
          <br>
          }<br>
          <br>
          size_t sdr_dev::receive(vector &lt; complex &lt; float &gt; *
          &gt; rx_buff_ptr, size_t requested_num_samps) {<br>
          <br>
          =C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 return usrp_receive(rx_buff_ptr, requ=
ested_num_samps);<br>
          =C2=A0 =C2=A0 else<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_receive(rx_buff_ptr, requ=
ested_num_samps);<br>
          <br>
          }<br>
          <br>
          // predefined functions<br>
          size_t sdr_dev::usrp_receive(vector &lt; complex &lt; float
          &gt; * &gt; rx_buff_ptr, size_t requested_num_samps) {<br>
          =C2=A0 =C2=A0 size_t acc_num_samps =3D 0;<br>
          =C2=A0 =C2=A0 size_t total_num_samps =3D requested_num_samps;<br>
          <br>
          =C2=A0 =C2=A0 vector &lt; complex &lt; float &gt; * &gt; rx_buff_=
ptr_tmp
          =3D rx_buff_ptr;<br>
          <br>
          =C2=A0 =C2=A0 while (acc_num_samps &lt; total_num_samps) {<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; rx_buff_ptr.=
size(); i++)
          rx_buff_ptr_tmp[i] =3D &amp; rx_buff_ptr[i][acc_num_samps];<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_rx_samps =3D rx_stream -&g=
t;
          recv(rx_buff_ptr_tmp, total_num_samps - acc_num_samps, rx_md,
          timeout);<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //use a small timeout for subsequent =
packets<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 timeout =3D 0.1;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D true) {<br=
>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //handle the error code=
<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rx_md.error_code =
=3D=3D
          uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) break;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rx_md.error_code !=
=3D
          uhd::rx_metadata_t::ERROR_CODE_NONE) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw
          runtime_error(str(boost::format(&quot;Receiver error %s&quot;) %
          rx_md.strerror()));<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::fo=
rmat(&quot;Received packet: %u
          samples, %u full secs, %f frac secs&quot;)\ %<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 num_rx_sa=
mps\ %<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_md.tim=
e_spec.get_full_secs()\ %<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_md.tim=
e_spec.get_frac_secs()\ &lt;&lt;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D num_rx_samps;<br>
          =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 if (acc_num_samps &lt; total_num_samps) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt; &quot;Receive timeout b=
efore all samples
          received...&quot; &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 return acc_num_samps;<br>
          }<br>
          <br>
          size_t sdr_dev::transmit(vector &lt; complex &lt; float &gt; *
          &gt; tx_buff_ptr, size_t requested_num_samps) {<br>
          <br>
          =C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 return usrp_transmit(tx_buff_ptr,
          requested_num_samps);<br>
          =C2=A0 =C2=A0 else<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_transmit(tx_buff_ptr,
          requested_num_samps);<br>
          <br>
          }<br>
          <br>
          size_t sdr_dev::usrp_transmit(vector &lt; complex &lt; float
          &gt; * &gt; tx_buff_ptr, size_t requested_num_samps) {<br>
          =C2=A0 =C2=A0 //setup metadata for the first packet<br>
          =C2=A0 =C2=A0 tx_md.start_of_burst =3D true; // not clear what is=
 the
          difference between &quot;false&quot; and &quot;true&quot;<br>
          =C2=A0 =C2=A0 tx_md.end_of_burst =3D false;<br>
          =C2=A0 =C2=A0 tx_md.has_time_spec =3D true; //??? should be true =
or false<br>
          =C2=A0 =C2=A0 tx_md.time_spec =3D usrp -&gt; get_time_now() +
          uhd::time_spec_t(0.001); //0.1 =C2=A0<br>
          <br>
          =C2=A0 =C2=A0 //the first call to send() will block this many sec=
onds
          before sending:<br>
          =C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1; //timeout (del=
ay before
          transmit + padding)<br>
          <br>
          =C2=A0 =C2=A0 vector &lt; complex &lt; float &gt; * &gt; tx_buff_=
ptr_tmp
          =3D tx_buff_ptr;<br>
          <br>
          =C2=A0 =C2=A0 size_t acc_num_samps =3D 0; //number of accumulated=
 samples<br>
          =C2=A0 =C2=A0 size_t total_num_samps =3D requested_num_samps;<br>
          =C2=A0 =C2=A0 while (acc_num_samps &lt; total_num_samps) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t samps_to_send =3D total_num_sa=
mps -
          acc_num_samps;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (samps_to_send &gt; tx_max_num_sam=
ps) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 samps_to_send =3D tx_ma=
x_num_samps;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //tx_md.end_of_burst =
=3D true;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; tx_buff_ptr.=
size(); i++)
          tx_buff_ptr_tmp[i] =3D &amp; tx_buff_ptr[i][acc_num_samps];<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //send a single packet<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_tx_samps =3D tx_stream -&g=
t;
          send(tx_buff_ptr_tmp, samps_to_send, tx_md, timeout);<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //do not use time spec for subsequent=
 packets<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.has_time_spec =3D false;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.start_of_burst =3D false;<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (num_tx_samps &lt; samps_to_send) =
{<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt; &quot;Sen=
d timeout...&quot; &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D true) {<br=
>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::fo=
rmat(&quot;Sent packet: %u
          samples&quot;) % num_tx_samps &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D num_tx_samps;<br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 //tx_md.end_of_burst =3D true;<br>
          =C2=A0 =C2=A0 tx_stream -&gt; send(&quot;&quot;, 0, tx_md);<br>
          <br>
          =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D true) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; endl &lt;&lt; &quot;Wai=
ting for async_opt
          burst ACK... &quot; &lt;&lt; flush;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t acks =3D 0;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 //loop through all messages for the A=
CK packets (may
          have underflow messages in queue)<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 while (acks &lt; channel_nums.size() =
and tx_stream
          -&gt; recv_async_msg(async_md, seconds_in_future)) {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (async_md.event_code=
 =3D=3D
          uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (acks &lt; channel_nums.size()) {<=
br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;fai=
l&quot; &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;ack=
 received&quot; &lt;&lt; endl;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          =C2=A0 =C2=A0 }<br>
          <br>
          =C2=A0 =C2=A0 return acc_num_samps;<br>
          }</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, 2021 at 3:24
          PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">You haven=E2=80=99t said what type of daughter =
cards
            you=E2=80=99re using.=C2=A0
            <div><br>
            </div>
            <div>Nor exactly how you=E2=80=99re setting things up</div>
            <div>In your software.=C2=A0<br>
              <br>
              <div dir=3D"ltr">Sent from my iPhone</div>
              <div dir=3D"ltr"><br>
                <blockquote type=3D"cite">On May 17, 2021, at 1:56 PM,
                  Zeng, Huacheng &lt;<a href=3D"mailto:huacheng.zeng@gmail.=
com" target=3D"_blank">huacheng.zeng@gmail.com</a>&gt;
                  wrote:<br>
                  <br>
                </blockquote>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">=EF=BB=BF
                  <div dir=3D"ltr">
                    <div>An update - I update UHD to 4.0 version and run
                      the code again. With this version I got some
                      warning message (see below). Did I set up the X310
                      usrp improperly?</div>
                    <div><br>
                    </div>
                    <div><br>
                    </div>
                    <div>[INFO] [UHD] linux; GNU C++ version 7.5.0;
                      Boost_106501; UHD_4.0.0.HEAD-0-g90ce6062<br>
                      [INFO] [X300] X300 initialization sequence...<br>
                      [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                      [INFO] [X300] Radio 1x clock: 200 MHz<br>
                      <span style=3D"color:rgb(255,0,0)">[WARNING]
                        [RFNOC::GRAPH] One or more blocks timed out
                        during flush!</span><br>
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
                      <span style=3D"color:rgb(255,0,0)">[WARNING]
                        [0/Radio#0] Attempting to set tick rate to 0.
                        Skipping.<br>
                        [WARNING] [0/Radio#1] Attempting to set tick
                        rate to 0. Skipping.<br>
                        [WARNING] [0/Radio#1] Attempting to set tick
                        rate to 0. Skipping.<br>
                        [WARNING] [0/Radio#0] Attempting to set tick
                        rate to 0. Skipping.</span><br>
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
                    <div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17,
                      2021 at 12:04 PM Huacheng Zeng &lt;<a href=3D"mailto:=
zenghuacheng@gmail.com" target=3D"_blank">zenghuacheng@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">Hi all,
                        <div><br>
                        </div>
                        <div>I am using X310 as an MIMO transmitter to
                          send two data streams. I observed from the
                          received signal that the two data streams are
                          misaligned in the time domain. I suspect that
                          it is the X310&#39;s timing/frequency
                          synchronization problem. Below is the output
                          information. Is there any C++ API reference
                          for setting up X310 as a MIMO
                          transmitter/receiver? Any suggestions would be
                          appreciated.</div>
                        <div><br>
                        </div>
                        <div>Thanks,</div>
                        <div>Hua</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                        [INFO] [UHD] linux; GNU C++ version 5.4.0
                        20160609; Boost_105800;
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
                        <div>[INFO] [UHD] linux; GNU C++ version 5.4.0
                          20160609; Boost_105800;
                          UHD_3.13.1.HEAD-0-gbbce3e45<br>
                          [INFO] [X300] X300 initialization sequence...<br>
                          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                          [INFO] [X300] Radio 1x clock: 200 MHz<br>
                          [INFO] [GPS] No GPSDO found<br>
                          [INFO] [0/DmaFIFO_0] Initializing block
                          control (NOC ID: 0xF1F0D00000000000)<br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          <b><font color=3D"#ff0000">1292</font></b> MB/s)<=
br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          <b><font color=3D"#ff0000">1299</font></b> MB/s)<=
br>
                          [INFO] [0/Radio_0] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/Radio_1] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/DDC_0] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DDC_1] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DUC_0] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
                          [INFO] [0/DUC_1] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
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
                      USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ett=
us.com</a><br>
                    </blockquote>
                  </div>
                  <span>_______________________________________________</sp=
an><br>
                  <span>USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></spa=
n><br>
                  <span>To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a></span><br>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000006e44bd05c28d091d--

--===============3194489028279422641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3194489028279422641==--
