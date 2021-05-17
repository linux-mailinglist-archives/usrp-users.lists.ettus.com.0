Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A1E386B5D
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 22:28:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22655384B9D
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 16:28:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f8naZc5c";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 44D163843FF
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 16:27:31 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id i4so10308994ybe.2
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 13:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kW3aiFw3rv2Ds/3/KETMwv3ppA/JxV4tnZvlz6KDguc=;
        b=f8naZc5cCcr8uvi/7SH4xKiARuXFzuPODjrgoQ5PCykZoR6/PAwV+6uyn8BNxhDEkV
         2d84A7R3o5XctLYRjOJbYFyB57XX7reg6rq43dxlckolDArcNxoCXPfIZISQNyuODl8z
         Yo4t9V6qwDXz9F5Iu4FnGS33NBvKY2A2BRVyzUm7m7B3QrM6zlLvUP78iMFYmJFL5WUS
         VFNIu6stuN3QruyNf+cpjGjT41ff9WbvgdYeJYMcIlwCIFzXA+9smQcK0e1aoARr1/pq
         Su0QqTWOI0sGLTTB53T49qwJy9dz5r4xyUOXgO011vDAQWvdf1Ct5RrnpAynGn6R33Oh
         BFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kW3aiFw3rv2Ds/3/KETMwv3ppA/JxV4tnZvlz6KDguc=;
        b=IR/ccw/uX1bgZt36lPNLdOzcBJRTxs82cUbDxm4FLjpDnWQqgtme2rXozaQQGmacRh
         6ttjv99JqH9iIVfUVhjPxTEu8uZmnfGbH1Jq0ODrM7Y5quGIV9gMp5RW5CMJf1CB0WvJ
         iomPNt91mESaE2PYWYrMUD1HPzcAUTcivpNPg7d62YAT/ykKphkSVpjPZOIQigAMpWO0
         vCONY6J8+7quOsxo+pSLv/N2Af4FqNIXggV22Niv72RxsxYhYyR/D+HiHY+wZPNEkIhX
         eMTerS5YFXWERwlzYBdH6OhQn4CKTxNrLngQ5qz8C54sexXNLPuPUTHI8ATIX/80dyVQ
         OiDg==
X-Gm-Message-State: AOAM531sXNHoROusmz46B46Ji+pV/+06eOxL801r6qzce7FrEW3aTGz7
	tIWCcp8iYaJYoW55gZzcIdVYz5ppGJ9XJB6giYw=
X-Google-Smtp-Source: ABdhPJxpdHkeWhL29YHXjoeztrHhrfig9CZq6dbGvowJSKe34EPRcul7zGeYeQ1BTgv2HOUC3rmBXRdozTe2yfresis=
X-Received: by 2002:a25:9c88:: with SMTP id y8mr2161879ybo.294.1621283250543;
 Mon, 17 May 2021 13:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
 <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com>
In-Reply-To: <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Mon, 17 May 2021 16:27:19 -0400
Message-ID: <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: LPS266GU4T3V64Q2WWHWK4P265R2QDKK
X-Message-ID-Hash: LPS266GU4T3V64Q2WWHWK4P265R2QDKK
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LPS266GU4T3V64Q2WWHWK4P265R2QDKK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4161124531027192726=="

--===============4161124531027192726==
Content-Type: multipart/alternative; boundary="0000000000003a9d0405c28c6cef"

--0000000000003a9d0405c28c6cef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for the reply. I am using SBX (40MHz)  daughterboards for X310.
For my software setting, I'm not sure what is the best way to present the
details. So I copied my code below. Hopeful it is not messy for you to
review.

Thanks,
Hua


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

int main() {
    sdr_para sp;
    sp.is_usrp_enabled =3D true;
    sp.is_debg_enabled =3D false;

    sp.ip_addrs =3D "addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D20=
0e6";
    sp.chan_num =3D 2;
    sp.chan_str =3D "0,1";
    sp.sync_opt =3D "internal"; //"pps", "mimo"
    sp.cen_freq =3D 915e6;
    sp.sam_rate =3D 2e6;
    sp.tx_ant_name =3D "TX/RX";
    sp.rx_ant_name =3D "RX2";
    sp.analg_bw =3D sp.sam_rate;
    sp.tx_gain =3D 15;
    sp.rx_gain =3D 0;

    sdr =3D new sdr_dev(sp);

    // transmit
    sdr -> usrp_transmit(buf, num_samps);

    // receiver
    sdr -> usrp_receive(buf, num_samps);

}

void sdr_dev::configure_usrp(sdr_para sp) {

    is_usrp_enabled =3D sp.is_usrp_enabled;
    is_debg_enabled =3D sp.is_debg_enabled;

    ip_addrs =3D sp.ip_addrs; //
    chan_str =3D sp.chan_str; // specify "0", "1", "0,1", etc
    chan_num =3D sp.chan_num;
    sync_opt =3D sp.sync_opt; //"pps", "mimo", "default"

    cen_freq =3D sp.cen_freq;
    sam_rate =3D sp.sam_rate;

    analg_bw =3D sp.analg_bw;
    tx_gain =3D sp.tx_gain;
    rx_gain =3D sp.rx_gain;

    tx_ant_name =3D sp.tx_ant_name;
    rx_ant_name =3D sp.rx_ant_name;

    seconds_in_future =3D 1.0;

    //create a usrp device
    uhd::set_thread_priority_safe();
    usrp =3D uhd::usrp::multi_usrp::make(ip_addrs);
    //cout << boost::format("Using Device: %s") % usrp->get_pp_string() <<
endl;

    //always select the subdevice first, the channel mapping affects the
other settings
    // usrp->set_rx_subdev_spec(subdev); //sets across all mboards
    // usrp->set_tx_subdev_spec(subdev); //sets across all mboards

    // clock and time sync_opthronization
    if (sync_opt =3D=3D "pps") {
        usrp -> set_clock_source("external");
        usrp -> set_time_source("external");
        usrp -> set_time_unknown_pps(uhd::time_spec_t(0.0));
        this_thread::sleep_for(chrono::seconds(1)); //wait for pps sync_opt
pulse
    } else if (sync_opt =3D=3D "mimo") {
        cout << "MIMO cable" << endl;
        UHD_ASSERT_THROW(usrp -> get_num_mboards() =3D=3D 2);
        //make mboard 1 a slave over the MIMO Cable
        usrp -> set_clock_source("mimo", 1);
        usrp -> set_time_source("mimo", 1);
        //set time on the master (mboard 0)
        usrp -> set_time_now(uhd::time_spec_t(0.0), 0);
        //sleep a bit while the slave locks its time to the master
        this_thread::sleep_for(chrono::milliseconds(500));
    } else {
        usrp -> set_time_now(uhd::time_spec_t(1.0));
    }

    //set the center frequency
    uhd::tune_request_t tune_request(cen_freq);
    tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");
    for (int ch =3D 0; ch < chan_num; ch++) {
        usrp -> set_rx_freq(tune_request, ch);
        usrp -> set_tx_freq(tune_request, ch);
        cout << boost::format("Actual RX Freq: %f MHz...") % (usrp ->
get_rx_freq(ch) / 1e6) << endl;
        cout << boost::format("Actual TX Freq: %f MHz...") % (usrp ->
get_tx_freq(ch) / 1e6) << endl;

        //set the rx sample rate (sets across all channels)
        usrp -> set_rx_rate(sam_rate, ch);
        usrp -> set_tx_rate(sam_rate, ch);
        cout << boost::format("Actual RX Rate: %f Msps...") % (usrp ->
get_rx_rate(ch) / 1e6) << endl;
        cout << boost::format("Actual TX Rate: %f Msps...") % (usrp ->
get_tx_rate(ch) / 1e6) << endl;

        //set antenna ...
        usrp -> set_rx_antenna(rx_ant_name, ch);
        usrp -> set_tx_antenna(tx_ant_name, ch);
        cout << "Rx antenna is " << usrp -> get_rx_antenna(ch) << endl;
        cout << "Tx antenna is " << usrp -> get_tx_antenna(ch) << endl;

        //set the rf gain
        usrp -> set_rx_gain(rx_gain, ch);
        usrp -> set_tx_gain(tx_gain, ch);
        cout << boost::format("Actual RX Gain: %f dB...") % usrp ->
get_rx_gain(ch) << endl;
        cout << boost::format("Actual TX Gain: %f dB...") % usrp ->
get_tx_gain(ch) << endl;

        //set the analog frontend filter bandwidth
        usrp -> set_rx_bandwidth(analg_bw, ch);
        usrp -> set_tx_bandwidth(analg_bw, ch);
        cout << boost::format("Actual RX Bandwidth: %f MHz...") % (usrp ->
get_rx_bandwidth(ch) / 1e6) << endl;
        cout << boost::format("Actual TX Bandwidth: %f MHz...") % (usrp ->
get_tx_bandwidth(ch) / 1e6) << endl;

        usrp -> set_rx_dc_offset(false, ch);

    }

    //detect which channels to use
    cout << "RX channel num: " << usrp -> get_rx_num_channels() << endl;
    cout << "TX channel num: " << usrp -> get_tx_num_channels() << endl;
    vector < string > channel_strings;
    boost::split(channel_strings, chan_str, boost::is_any_of("\"',"));
    for (size_t ch =3D 0; ch < channel_strings.size(); ch++) {
        size_t chan =3D stoi(channel_strings[ch]);
        if (chan >=3D usrp -> get_rx_num_channels()) {
            throw runtime_error("Invalid channel(s) specified.");
        } else {
            channel_nums.push_back(stoi(channel_strings[ch]));
        }
    }

    //create a receive streamer
    //linearly map channels (index0 =3D channel0, index1 =3D channel1, ...)
    uhd::stream_args_t stream_args("fc32"); //complex floats
    stream_args.channels =3D channel_nums;
    rx_stream =3D usrp -> get_rx_stream(stream_args);
    tx_stream =3D usrp -> get_tx_stream(stream_args);

    // pkt max size
    tx_max_num_samps =3D tx_stream -> get_max_num_samps();
    rx_max_num_samps =3D rx_stream -> get_max_num_samps();
    cout << "tx_max_num_samps =3D " << tx_max_num_samps << endl;
    cout << "rx_max_num_samps =3D " << rx_max_num_samps << endl;

    // issue command to receive data from usrp
    uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
    stream_cmd.num_samps =3D 0;
    stream_cmd.stream_now =3D false;
    stream_cmd.time_spec =3D usrp -> get_time_now() +
uhd::time_spec_t(seconds_in_future);
    rx_stream -> issue_stream_cmd(stream_cmd); //tells all channels to
stream

    //cout<<"time real: " <<stream_cmd.time_spec.get_real_secs() << endl;
    //cout<<"time full: " <<stream_cmd.time_spec.get_full_secs() << endl;
    //cout<<"time frac: " <<stream_cmd.time_spec.get_frac_secs() << endl;
    //the first call to recv() will block this many seconds before receivin=
g
    timeout =3D seconds_in_future + 0.1; //timeout (delay before receive +
padding)

    cout << "^^^^^^^^^^^^^^^^^^^^^^^^ complete SDR initialization
^^^^^^^^^^^^^^^^^^^^^" << endl;
}

sdr_dev::~sdr_dev() {}

void sdr_dev::set_time_for_receiving(double sec_in_future) {

    // issue command to receive data from usrp
    uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
    stream_cmd.num_samps =3D 0;
    stream_cmd.stream_now =3D false;
    stream_cmd.time_spec =3D usrp -> get_time_now() +
uhd::time_spec_t(sec_in_future);
    rx_stream -> issue_stream_cmd(stream_cmd);

}

size_t sdr_dev::receive(vector < complex < float > * > rx_buff_ptr, size_t
requested_num_samps) {

    if (is_usrp_enabled =3D=3D true)
        return usrp_receive(rx_buff_ptr, requested_num_samps);
    else
        return simu_receive(rx_buff_ptr, requested_num_samps);

}

// predefined functions
size_t sdr_dev::usrp_receive(vector < complex < float > * > rx_buff_ptr,
size_t requested_num_samps) {
    size_t acc_num_samps =3D 0;
    size_t total_num_samps =3D requested_num_samps;

    vector < complex < float > * > rx_buff_ptr_tmp =3D rx_buff_ptr;

    while (acc_num_samps < total_num_samps) {

        for (int i =3D 0; i < rx_buff_ptr.size(); i++) rx_buff_ptr_tmp[i] =
=3D &
rx_buff_ptr[i][acc_num_samps];

        size_t num_rx_samps =3D rx_stream -> recv(rx_buff_ptr_tmp,
total_num_samps - acc_num_samps, rx_md, timeout);

        //use a small timeout for subsequent packets
        timeout =3D 0.1;
        if (is_debg_enabled =3D=3D true) {
            //handle the error code
            if (rx_md.error_code =3D=3D uhd::rx_metadata_t::ERROR_CODE_TIME=
OUT)
break;
            if (rx_md.error_code !=3D uhd::rx_metadata_t::ERROR_CODE_NONE) =
{
                throw runtime_error(str(boost::format("Receiver error %s")
% rx_md.strerror()));
            }
            cout << boost::format("Received packet: %u samples, %u full
secs, %f frac secs")\ %
                num_rx_samps\ %
                rx_md.time_spec.get_full_secs()\ %
                rx_md.time_spec.get_frac_secs()\ <<
                endl;
        }
        acc_num_samps +=3D num_rx_samps;
    }
    if (acc_num_samps < total_num_samps) {
        cerr << "Receive timeout before all samples received..." << endl;
    }

    return acc_num_samps;
}

size_t sdr_dev::transmit(vector < complex < float > * > tx_buff_ptr, size_t
requested_num_samps) {

    if (is_usrp_enabled =3D=3D true)
        return usrp_transmit(tx_buff_ptr, requested_num_samps);
    else
        return simu_transmit(tx_buff_ptr, requested_num_samps);

}

size_t sdr_dev::usrp_transmit(vector < complex < float > * > tx_buff_ptr,
size_t requested_num_samps) {
    //setup metadata for the first packet
    tx_md.start_of_burst =3D true; // not clear what is the difference
between "false" and "true"
    tx_md.end_of_burst =3D false;
    tx_md.has_time_spec =3D true; //??? should be true or false
    tx_md.time_spec =3D usrp -> get_time_now() + uhd::time_spec_t(0.001);
//0.1

    //the first call to send() will block this many seconds before sending:
    timeout =3D seconds_in_future + 0.1; //timeout (delay before transmit +
padding)

    vector < complex < float > * > tx_buff_ptr_tmp =3D tx_buff_ptr;

    size_t acc_num_samps =3D 0; //number of accumulated samples
    size_t total_num_samps =3D requested_num_samps;
    while (acc_num_samps < total_num_samps) {
        size_t samps_to_send =3D total_num_samps - acc_num_samps;
        if (samps_to_send > tx_max_num_samps) {
            samps_to_send =3D tx_max_num_samps;
        } else {
            //tx_md.end_of_burst =3D true;
        }

        for (int i =3D 0; i < tx_buff_ptr.size(); i++) tx_buff_ptr_tmp[i] =
=3D &
tx_buff_ptr[i][acc_num_samps];

        //send a single packet
        size_t num_tx_samps =3D tx_stream -> send(tx_buff_ptr_tmp,
samps_to_send, tx_md, timeout);
        //do not use time spec for subsequent packets
        tx_md.has_time_spec =3D false;
        tx_md.start_of_burst =3D false;

        if (num_tx_samps < samps_to_send) {
            cerr << "Send timeout..." << endl;
        }
        if (is_debg_enabled =3D=3D true) {
            cout << boost::format("Sent packet: %u samples") % num_tx_samps
<< endl;
        }
        acc_num_samps +=3D num_tx_samps;
    }

    //tx_md.end_of_burst =3D true;
    tx_stream -> send("", 0, tx_md);

    if (is_debg_enabled =3D=3D true) {
        cout << endl << "Waiting for async_opt burst ACK... " << flush;
        size_t acks =3D 0;
        //loop through all messages for the ACK packets (may have underflow
messages in queue)
        while (acks < channel_nums.size() and tx_stream ->
recv_async_msg(async_md, seconds_in_future)) {
            if (async_md.event_code =3D=3D
uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;
        }

        if (acks < channel_nums.size()) {
            cout << "fail" << endl;
        } else {
            cout << "ack received" << endl;
        }
    }

    return acc_num_samps;
}

On Mon, May 17, 2021 at 3:24 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> You haven=E2=80=99t said what type of daughter cards you=E2=80=99re using=
.
>
> Nor exactly how you=E2=80=99re setting things up
> In your software.
>
> Sent from my iPhone
>
> On May 17, 2021, at 1:56 PM, Zeng, Huacheng <huacheng.zeng@gmail.com>
> wrote:
>
> =EF=BB=BF
> An update - I update UHD to 4.0 version and run the code again. With this
> version I got some warning message (see below). Did I set up the X310 usr=
p
> improperly?
>
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_4.0.0.HEAD-0-g90ce6062
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> RX channel num: 2
> TX channel num: 2
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> tx_max_num_samps =3D 364
> rx_max_num_samps =3D 364
>
> Thanks,
> Hua
>
> On Mon, May 17, 2021 at 12:04 PM Huacheng Zeng <zenghuacheng@gmail.com>
> wrote:
>
>> Hi all,
>>
>> I am using X310 as an MIMO transmitter to send two data streams. I
>> observed from the received signal that the two data streams are misalign=
ed
>> in the time domain. I suspect that it is the X310's timing/frequency
>> synchronization problem. Below is the output information. Is there any C=
++
>> API reference for setting up X310 as a MIMO transmitter/receiver? Any
>> suggestions would be appreciated.
>>
>> Thanks,
>> Hua
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>> UHD_3.13.1.HEAD-0-gbbce3e45
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 31804F1
>>     addr: 192.168.10.2
>>     fpga: HG
>>     name:
>>     product: X310
>>     type: x300
>>
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>> UHD_3.13.1.HEAD-0-gbbce3e45
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [INFO] [GPS] No GPSDO found
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>> 0xF1F0D00000000000)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1292* MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1299* MB/s)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
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
>> tx_max_num_samps =3D 364
>> rx_max_num_samps =3D 364
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000003a9d0405c28c6cef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>Thank you for the=
 reply. I am using SBX (40MHz)=C2=A0 daughterboards for X310. For my softwa=
re setting, I&#39;m not sure what is the best way to present the details. S=
o I copied my code below. Hopeful it is not messy for you to review. <br></=
div><div><br></div><div>Thanks,</div><div>Hua</div><div><br></div><div><br>=
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>int mai=
n() {<br>=C2=A0 =C2=A0 sdr_para sp;<br>=C2=A0 =C2=A0 sp.is_usrp_enabled =3D=
 true;<br>=C2=A0 =C2=A0 sp.is_debg_enabled =3D false;<br><br>=C2=A0 =C2=A0 =
sp.ip_addrs =3D &quot;addr=3D192.168.10.2,type=3Dx300,master_clock_rate=3D2=
00e6&quot;;<br>=C2=A0 =C2=A0 sp.chan_num =3D 2;<br>=C2=A0 =C2=A0 sp.chan_st=
r =3D &quot;0,1&quot;;<br>=C2=A0 =C2=A0 sp.sync_opt =3D &quot;internal&quot=
;; //&quot;pps&quot;, &quot;mimo&quot;<br>=C2=A0 =C2=A0 sp.cen_freq =3D 915=
e6;<br>=C2=A0 =C2=A0 sp.sam_rate =3D 2e6;<br>=C2=A0 =C2=A0 sp.tx_ant_name =
=3D &quot;TX/RX&quot;;<br>=C2=A0 =C2=A0 sp.rx_ant_name =3D &quot;RX2&quot;;=
<br>=C2=A0 =C2=A0 sp.analg_bw =3D sp.sam_rate;<br>=C2=A0 =C2=A0 sp.tx_gain =
=3D 15;<br>=C2=A0 =C2=A0 sp.rx_gain =3D 0;<br><br>=C2=A0 =C2=A0 sdr =3D new=
 sdr_dev(sp);<br><br>=C2=A0 =C2=A0 // transmit <br>=C2=A0 =C2=A0 sdr -&gt; =
usrp_transmit(buf, num_samps);<br><br>=C2=A0 =C2=A0 // receiver <br>=C2=A0 =
=C2=A0 sdr -&gt; usrp_receive(buf, num_samps);<br><br>}<br><br>void sdr_dev=
::configure_usrp(sdr_para sp) {<br><br>=C2=A0 =C2=A0 is_usrp_enabled =3D sp=
.is_usrp_enabled;<br>=C2=A0 =C2=A0 is_debg_enabled =3D sp.is_debg_enabled;<=
br><br>=C2=A0 =C2=A0 ip_addrs =3D sp.ip_addrs; //<br>=C2=A0 =C2=A0 chan_str=
 =3D sp.chan_str; // specify &quot;0&quot;, &quot;1&quot;, &quot;0,1&quot;,=
 etc<br>=C2=A0 =C2=A0 chan_num =3D sp.chan_num;<br>=C2=A0 =C2=A0 sync_opt =
=3D sp.sync_opt; //&quot;pps&quot;, &quot;mimo&quot;, &quot;default&quot;<b=
r><br>=C2=A0 =C2=A0 cen_freq =3D sp.cen_freq;<br>=C2=A0 =C2=A0 sam_rate =3D=
 sp.sam_rate;<br><br>=C2=A0 =C2=A0 analg_bw =3D sp.analg_bw;<br>=C2=A0 =C2=
=A0 tx_gain =3D sp.tx_gain;<br>=C2=A0 =C2=A0 rx_gain =3D sp.rx_gain;<br><br=
>=C2=A0 =C2=A0 tx_ant_name =3D sp.tx_ant_name;<br>=C2=A0 =C2=A0 rx_ant_name=
 =3D sp.rx_ant_name;<br><br>=C2=A0 =C2=A0 seconds_in_future =3D 1.0;<br><br=
>=C2=A0 =C2=A0 //create a usrp device<br>=C2=A0 =C2=A0 uhd::set_thread_prio=
rity_safe();<br>=C2=A0 =C2=A0 usrp =3D uhd::usrp::multi_usrp::make(ip_addrs=
);<br>=C2=A0 =C2=A0 //cout &lt;&lt; boost::format(&quot;Using Device: %s&qu=
ot;) % usrp-&gt;get_pp_string() &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 //alway=
s select the subdevice first, the channel mapping affects the other setting=
s<br>=C2=A0 =C2=A0 // usrp-&gt;set_rx_subdev_spec(subdev); //sets across al=
l mboards<br>=C2=A0 =C2=A0 // usrp-&gt;set_tx_subdev_spec(subdev); //sets a=
cross all mboards<br><br>=C2=A0 =C2=A0 // clock and time sync_opthronizatio=
n<br>=C2=A0 =C2=A0 if (sync_opt =3D=3D &quot;pps&quot;) {<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 usrp -&gt; set_clock_source(&quot;external&quot;);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_source(&quot;external&quot;);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_time_unknown_pps(uhd::time_spec_=
t(0.0));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 this_thread::sleep_for(chrono::seco=
nds(1)); //wait for pps sync_opt pulse<br>=C2=A0 =C2=A0 } else if (sync_opt=
 =3D=3D &quot;mimo&quot;) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &q=
uot;MIMO cable&quot; &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSE=
RT_THROW(usrp -&gt; get_num_mboards() =3D=3D 2);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 //make mboard 1 a slave over the MIMO Cable<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 usrp -&gt; set_clock_source(&quot;mimo&quot;, 1);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 usrp -&gt; set_time_source(&quot;mimo&quot;, 1);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 //set time on the master (mboard 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 usrp -&gt; set_time_now(uhd::time_spec_t(0.0), 0);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 //sleep a bit while the slave locks its time to the ma=
ster<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 this_thread::sleep_for(chrono::millisec=
onds(500));<br>=C2=A0 =C2=A0 } else {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -=
&gt; set_time_now(uhd::time_spec_t(1.0));<br>=C2=A0 =C2=A0 }<br><br>=C2=A0 =
=C2=A0 //set the center frequency<br>=C2=A0 =C2=A0 uhd::tune_request_t tune=
_request(cen_freq);<br>=C2=A0 =C2=A0 tune_request.args =3D uhd::device_addr=
_t(&quot;mode_n=3Dinteger&quot;);<br>=C2=A0 =C2=A0 for (int ch =3D 0; ch &l=
t; chan_num; ch++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_freq(=
tune_request, ch);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_freq(tu=
ne_request, ch);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
(&quot;Actual RX Freq: %f MHz...&quot;) % (usrp -&gt; get_rx_freq(ch) / 1e6=
) &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
(&quot;Actual TX Freq: %f MHz...&quot;) % (usrp -&gt; get_tx_freq(ch) / 1e6=
) &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rx sample rat=
e (sets across all channels)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_=
rx_rate(sam_rate, ch);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_rat=
e(sam_rate, ch);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format=
(&quot;Actual RX Rate: %f Msps...&quot;) % (usrp -&gt; get_rx_rate(ch) / 1e=
6) &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::forma=
t(&quot;Actual TX Rate: %f Msps...&quot;) % (usrp -&gt; get_tx_rate(ch) / 1=
e6) &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //set antenna ...<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_antenna(rx_ant_name, ch);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_antenna(tx_ant_name, ch);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;Rx antenna is &quot; &lt;&l=
t; usrp -&gt; get_rx_antenna(ch) &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cout &lt;&lt; &quot;Tx antenna is &quot; &lt;&lt; usrp -&gt; get_tx_ant=
enna(ch) &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //set the rf gai=
n<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_gain(rx_gain, ch);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_tx_gain(tx_gain, ch);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Actual RX Gain: %f d=
B...&quot;) % usrp -&gt; get_rx_gain(ch) &lt;&lt; endl;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Actual TX Gain: %f dB...&qu=
ot;) % usrp -&gt; get_tx_gain(ch) &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 //set the analog frontend filter bandwidth<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 usrp -&gt; set_rx_bandwidth(analg_bw, ch);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 usrp -&gt; set_tx_bandwidth(analg_bw, ch);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Actual RX Bandwidth: %f MHz...=
&quot;) % (usrp -&gt; get_rx_bandwidth(ch) / 1e6) &lt;&lt; endl;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Actual TX Bandwidth:=
 %f MHz...&quot;) % (usrp -&gt; get_tx_bandwidth(ch) / 1e6) &lt;&lt; endl;<=
br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp -&gt; set_rx_dc_offset(false, ch);<=
br><br>=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 //detect which channels to use<=
br>=C2=A0 =C2=A0 cout &lt;&lt; &quot;RX channel num: &quot; &lt;&lt; usrp -=
&gt; get_rx_num_channels() &lt;&lt; endl;<br>=C2=A0 =C2=A0 cout &lt;&lt; &q=
uot;TX channel num: &quot; &lt;&lt; usrp -&gt; get_tx_num_channels() &lt;&l=
t; endl;<br>=C2=A0 =C2=A0 vector &lt; string &gt; channel_strings;<br>=C2=
=A0 =C2=A0 boost::split(channel_strings, chan_str, boost::is_any_of(&quot;\=
&quot;&#39;,&quot;));<br>=C2=A0 =C2=A0 for (size_t ch =3D 0; ch &lt; channe=
l_strings.size(); ch++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t chan =3D st=
oi(channel_strings[ch]);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (chan &gt;=3D us=
rp -&gt; get_rx_num_channels()) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 throw runtime_error(&quot;Invalid channel(s) specified.&quot;);<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 channel_nums.push_back(stoi(channel_strings[ch]));<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 //create a receive str=
eamer<br>=C2=A0 =C2=A0 //linearly map channels (index0 =3D channel0, index1=
 =3D channel1, ...)<br>=C2=A0 =C2=A0 uhd::stream_args_t stream_args(&quot;f=
c32&quot;); //complex floats<br>=C2=A0 =C2=A0 stream_args.channels =3D chan=
nel_nums;<br>=C2=A0 =C2=A0 rx_stream =3D usrp -&gt; get_rx_stream(stream_ar=
gs);<br>=C2=A0 =C2=A0 tx_stream =3D usrp -&gt; get_tx_stream(stream_args);<=
br><br>=C2=A0 =C2=A0 // pkt max size<br>=C2=A0 =C2=A0 tx_max_num_samps =3D =
tx_stream -&gt; get_max_num_samps();<br>=C2=A0 =C2=A0 rx_max_num_samps =3D =
rx_stream -&gt; get_max_num_samps();<br>=C2=A0 =C2=A0 cout &lt;&lt; &quot;t=
x_max_num_samps =3D &quot; &lt;&lt; tx_max_num_samps &lt;&lt; endl;<br>=C2=
=A0 =C2=A0 cout &lt;&lt; &quot;rx_max_num_samps =3D &quot; &lt;&lt; rx_max_=
num_samps &lt;&lt; endl;<br><br>=C2=A0 =C2=A0 // issue command to receive d=
ata from usrp <br>=C2=A0 =C2=A0 uhd::stream_cmd_t stream_cmd(uhd::stream_cm=
d_t::STREAM_MODE_START_CONTINUOUS);<br>=C2=A0 =C2=A0 stream_cmd.num_samps =
=3D 0;<br>=C2=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 s=
tream_cmd.time_spec =3D usrp -&gt; get_time_now() + uhd::time_spec_t(second=
s_in_future);<br>=C2=A0 =C2=A0 rx_stream -&gt; issue_stream_cmd(stream_cmd)=
; //tells all channels to stream<br><br>=C2=A0 =C2=A0 //cout&lt;&lt;&quot;t=
ime real: &quot; &lt;&lt;stream_cmd.time_spec.get_real_secs() &lt;&lt; endl=
;<br>=C2=A0 =C2=A0 //cout&lt;&lt;&quot;time full: &quot; &lt;&lt;stream_cmd=
.time_spec.get_full_secs() &lt;&lt; endl;<br>=C2=A0 =C2=A0 //cout&lt;&lt;&q=
uot;time frac: &quot; &lt;&lt;stream_cmd.time_spec.get_frac_secs() &lt;&lt;=
 endl;<br>=C2=A0 =C2=A0 //the first call to recv() will block this many sec=
onds before receiving<br>=C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1;=
 //timeout (delay before receive + padding)<br><br>=C2=A0 =C2=A0 cout &lt;&=
lt; &quot;^^^^^^^^^^^^^^^^^^^^^^^^ complete SDR initialization ^^^^^^^^^^^^=
^^^^^^^^^&quot; &lt;&lt; endl;<br>}<br><br>sdr_dev::~sdr_dev() {}<br><br>vo=
id sdr_dev::set_time_for_receiving(double sec_in_future) {<br><br>=C2=A0 =
=C2=A0 // issue command to receive data from usrp <br>=C2=A0 =C2=A0 uhd::st=
ream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>=
=C2=A0 =C2=A0 stream_cmd.num_samps =3D 0;<br>=C2=A0 =C2=A0 stream_cmd.strea=
m_now =3D false;<br>=C2=A0 =C2=A0 stream_cmd.time_spec =3D usrp -&gt; get_t=
ime_now() + uhd::time_spec_t(sec_in_future);<br>=C2=A0 =C2=A0 rx_stream -&g=
t; issue_stream_cmd(stream_cmd);<br><br>}<br><br>size_t sdr_dev::receive(ve=
ctor &lt; complex &lt; float &gt; * &gt; rx_buff_ptr, size_t requested_num_=
samps) {<br><br>=C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return usrp_receive(rx_buff_ptr, requested_num_samps);=
<br>=C2=A0 =C2=A0 else<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_receive(r=
x_buff_ptr, requested_num_samps);<br><br>}<br><br>// predefined functions<b=
r>size_t sdr_dev::usrp_receive(vector &lt; complex &lt; float &gt; * &gt; r=
x_buff_ptr, size_t requested_num_samps) {<br>=C2=A0 =C2=A0 size_t acc_num_s=
amps =3D 0;<br>=C2=A0 =C2=A0 size_t total_num_samps =3D requested_num_samps=
;<br><br>=C2=A0 =C2=A0 vector &lt; complex &lt; float &gt; * &gt; rx_buff_p=
tr_tmp =3D rx_buff_ptr;<br><br>=C2=A0 =C2=A0 while (acc_num_samps &lt; tota=
l_num_samps) {<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; =
rx_buff_ptr.size(); i++) rx_buff_ptr_tmp[i] =3D &amp; rx_buff_ptr[i][acc_nu=
m_samps];<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_rx_samps =3D rx_str=
eam -&gt; recv(rx_buff_ptr_tmp, total_num_samps - acc_num_samps, rx_md, tim=
eout);<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //use a small timeout for subsequ=
ent packets<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 timeout =3D 0.1;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (is_debg_enabled =3D=3D true) {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 //handle the error code<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (rx_md.error_code =3D=3D uhd::rx_metadata_t::ERROR_=
CODE_TIMEOUT) break;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rx_md=
.error_code !=3D uhd::rx_metadata_t::ERROR_CODE_NONE) {<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw runtime_error(str(boost::fo=
rmat(&quot;Receiver error %s&quot;) % rx_md.strerror()));<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
cout &lt;&lt; boost::format(&quot;Received packet: %u samples, %u full secs=
, %f frac secs&quot;)\ %<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 num_rx_samps\ %<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rx_md.time_spec.get_full_secs()\ %<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_md.time_spec.get_frac_secs()\ &lt;&lt;<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 endl;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D nu=
m_rx_samps;<br>=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 if (acc_num_samps &lt; tota=
l_num_samps) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt; &quot;Receive t=
imeout before all samples received...&quot; &lt;&lt; endl;<br>=C2=A0 =C2=A0=
 }<br><br>=C2=A0 =C2=A0 return acc_num_samps;<br>}<br><br>size_t sdr_dev::t=
ransmit(vector &lt; complex &lt; float &gt; * &gt; tx_buff_ptr, size_t requ=
ested_num_samps) {<br><br>=C2=A0 =C2=A0 if (is_usrp_enabled =3D=3D true)<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return usrp_transmit(tx_buff_ptr, requested_nu=
m_samps);<br>=C2=A0 =C2=A0 else<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return simu_=
transmit(tx_buff_ptr, requested_num_samps);<br><br>}<br><br>size_t sdr_dev:=
:usrp_transmit(vector &lt; complex &lt; float &gt; * &gt; tx_buff_ptr, size=
_t requested_num_samps) {<br>=C2=A0 =C2=A0 //setup metadata for the first p=
acket<br>=C2=A0 =C2=A0 tx_md.start_of_burst =3D true; // not clear what is =
the difference between &quot;false&quot; and &quot;true&quot;<br>=C2=A0 =C2=
=A0 tx_md.end_of_burst =3D false;<br>=C2=A0 =C2=A0 tx_md.has_time_spec =3D =
true; //??? should be true or false<br>=C2=A0 =C2=A0 tx_md.time_spec =3D us=
rp -&gt; get_time_now() + uhd::time_spec_t(0.001); //0.1 =C2=A0<br><br>=C2=
=A0 =C2=A0 //the first call to send() will block this many seconds before s=
ending:<br>=C2=A0 =C2=A0 timeout =3D seconds_in_future + 0.1; //timeout (de=
lay before transmit + padding)<br><br>=C2=A0 =C2=A0 vector &lt; complex &lt=
; float &gt; * &gt; tx_buff_ptr_tmp =3D tx_buff_ptr;<br><br>=C2=A0 =C2=A0 s=
ize_t acc_num_samps =3D 0; //number of accumulated samples<br>=C2=A0 =C2=A0=
 size_t total_num_samps =3D requested_num_samps;<br>=C2=A0 =C2=A0 while (ac=
c_num_samps &lt; total_num_samps) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t s=
amps_to_send =3D total_num_samps - acc_num_samps;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (samps_to_send &gt; tx_max_num_samps) {<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 samps_to_send =3D tx_max_num_samps;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 } else {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //tx_md=
.end_of_burst =3D true;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (int i =3D 0; i &lt; tx_buff_ptr.size(); i++) tx_buff=
_ptr_tmp[i] =3D &amp; tx_buff_ptr[i][acc_num_samps];<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 //send a single packet<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t =
num_tx_samps =3D tx_stream -&gt; send(tx_buff_ptr_tmp, samps_to_send, tx_md=
, timeout);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //do not use time spec for subse=
quent packets<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.has_time_spec =3D false;=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_md.start_of_burst =3D false;<br><br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (num_tx_samps &lt; samps_to_send) {<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cerr &lt;&lt; &quot;Send timeout...&quot=
; &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (is_debg_enabled =3D=3D true) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 cout &lt;&lt; boost::format(&quot;Sent packet: %u samples&quo=
t;) % num_tx_samps &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 acc_num_samps +=3D num_tx_samps;<br>=C2=A0 =C2=A0 =
}<br><br>=C2=A0 =C2=A0 //tx_md.end_of_burst =3D true;<br>=C2=A0 =C2=A0 tx_s=
tream -&gt; send(&quot;&quot;, 0, tx_md);<br><br>=C2=A0 =C2=A0 if (is_debg_=
enabled =3D=3D true) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; endl &l=
t;&lt; &quot;Waiting for async_opt burst ACK... &quot; &lt;&lt; flush;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t acks =3D 0;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 //loop through all messages for the ACK packets (may have underflow mes=
sages in queue)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (acks &lt; channel_num=
s.size() and tx_stream -&gt; recv_async_msg(async_md, seconds_in_future)) {=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (async_md.event_code =3D=
=3D uhd::async_metadata_t::EVENT_CODE_BURST_ACK) acks++;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (acks &lt; channel_nu=
ms.size()) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &qu=
ot;fail&quot; &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cout &lt;&lt; &quot;ack received&quo=
t; &lt;&lt; endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 }<br><b=
r>=C2=A0 =C2=A0 return acc_num_samps;<br>}</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, 2021 at 3:2=
4 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"auto">You haven=E2=80=99t said what type of daug=
hter cards you=E2=80=99re using.=C2=A0<div><br></div><div>Nor exactly how y=
ou=E2=80=99re setting things up</div><div>In your software.=C2=A0<br><br><d=
iv dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On May 17, 2021, at 1:56 PM, Zeng, Huacheng &lt;<a href=3D"mail=
to:huacheng.zeng@gmail.com" target=3D"_blank">huacheng.zeng@gmail.com</a>&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"ltr"><div>An update - I update UHD to 4.0 version =
and run the code again. With this version I got some warning message (see b=
elow). Did I set up the X310 usrp improperly?</div><div><br></div><div><br>=
</div><div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0=
.0.HEAD-0-g90ce6062<br>[INFO] [X300] X300 initialization sequence...<br>[IN=
FO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock:=
 200 MHz<br><span style=3D"color:rgb(255,0,0)">[WARNING] [RFNOC::GRAPH] One=
 or more blocks timed out during flush!</span><br>Actual RX Freq: 915.00000=
0 MHz...<br>Actual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 M=
sps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx anten=
na is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 =
dB...<br>Actual RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000=
000 MHz...<br>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 915.0000=
00 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 M=
sps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.000=
000 dB...<br>Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: 2.0000=
00 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<br>RX channel num: 2<br>T=
X channel num: 2<br><span style=3D"color:rgb(255,0,0)">[WARNING] [0/Radio#0=
] Attempting to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Atte=
mpting to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attempting=
 to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#0] Attempting to se=
t tick rate to 0. Skipping.</span><br>tx_max_num_samps =3D 364<br>rx_max_nu=
m_samps =3D 364</div><div><br></div><div>Thanks,</div><div>Hua<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, May 17, 2021 at 12:04 PM Huacheng Zeng &lt;<a href=3D"mailto:zenghuach=
eng@gmail.com" target=3D"_blank">zenghuacheng@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi =
all,<div><br></div><div>I am using X310 as an MIMO transmitter to send two =
data streams. I observed from the received signal that the two data streams=
 are misaligned in the time domain. I suspect that it is the X310&#39;s tim=
ing/frequency synchronization problem. Below is the output information. Is =
there any C++ API reference for setting up X310 as a MIMO transmitter/recei=
ver? Any suggestions would be appreciated.</div><div><br></div><div>Thanks,=
</div><div>Hua</div><div><br></div><div><br></div>[INFO] [UHD] linux; GNU C=
++ version 5.4.0 20160609; Boost_105800; UHD_3.13.1.HEAD-0-gbbce3e45<br>---=
-----------------------------------------------<br>-- UHD Device 0<br>-----=
---------------------------------------------<br>Device Address:<br>=C2=A0 =
=C2=A0 serial: 31804F1<br>=C2=A0 =C2=A0 addr: 192.168.10.2<br>=C2=A0 =C2=A0=
 fpga: HG<br>=C2=A0 =C2=A0 name:<br>=C2=A0 =C2=A0 product: X310<br>=C2=A0 =
=C2=A0 type: x300<div><br></div><div><br></div><div><br></div><div>[INFO] [=
UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.13.1.HEAD-0=
-gbbce3e45<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300=
] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<=
br>[INFO] [GPS] No GPSDO found<br>[INFO] [0/DmaFIFO_0] Initializing block c=
ontrol (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Th=
roughput: <b><font color=3D"#ff0000">1292</font></b> MB/s)<br>[INFO] [0/Dma=
FIFO_0] BIST passed (Throughput: <b><font color=3D"#ff0000">1299</font></b>=
 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000=
00000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1=
00000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0=
000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC=
0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0=
C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD=
0C0000000000000)<br>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 91=
5.000000 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.00=
0000 Msps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain:=
 0.000000 dB...<br>Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: =
2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<br>Actual RX Freq: =
915.000000 MHz...<br>Actual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2=
.000000 Msps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br=
>Tx antenna is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 1=
5.000000 dB...<br>Actual RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwid=
th: 2.000000 MHz...<br>RX channel num: 2<br>TX channel num: 2<br>tx_max_num=
_samps =3D 364<br>rx_max_num_samps =3D 364<br>=C2=A0</div><div><br></div><d=
iv><br></div><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--0000000000003a9d0405c28c6cef--

--===============4161124531027192726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4161124531027192726==--
