Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A6235C6C1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 14:54:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34D7D383F4F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 08:54:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dpVKANfO";
	dkim-atps=neutral
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 14ED5383B8C
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 08:53:21 -0400 (EDT)
Received: by mail-ej1-f45.google.com with SMTP id n2so20046094ejy.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 05:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1xrecGjdLClaF/MG2w+HoltJo/DlrHQqHsg4kW+vowY=;
        b=dpVKANfOcCd4ztq9Zm8odDEzk79N/4JX4Lr0cQwhaKkg2g1HoTbc6tdHcPZuSYD+S4
         92t/PamgJyhxhNZyH7GMOnhDZ442qvkCemOJqBOma8Xw7p1EdhvpYrocauGC5FsmTVfe
         jN28B+2nVjdUZmtVlAawfVgI3TBd5nFkzIyWGhRf4MSVs7ELXeR+nmAOHrWkzoilH6nI
         +Nf2/8d0fOfCC912WHwsj8dL8VvxoPc6bQsmOQZHYibG/uwLXVhLJh9xe6GIjn8ASMsC
         ImMWT0xYaYIu0ErKQqQM3WdQefm2HTOTEoLfzXJsb4rYts5nk5ka9NlKdr+Fr97nNU5V
         2keg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1xrecGjdLClaF/MG2w+HoltJo/DlrHQqHsg4kW+vowY=;
        b=SvpFpOw2MXRr4zvNmqK3rQieTyV/fym9HZBopgB3K8UmzfJHs0UBX9nZCH5hTa/GPm
         /n3vBSI6/UfuDVzn/9BrVdWyHQdZZ/uUPUVVqVdmKsY84CIITOz9QHjDLlLcZr8RGbLY
         OyGgsRUT0DnFzpJzYCNla1AfQgNw/FKIZ8Q35/OqZCKUQnCLqxhOiBmPMeZHJMdSMVvB
         H0nV8Tp1mh9T4GH1iWtcaL0kwoAiaXjXznYIUYCqYIwyuMH5H15XYImgU1RIEtgDBP98
         pAfzOWjbiMn1gGINe8oxqOvu2Lzy617M26CWRxftgEZ6nRLE+WPl1wHI7o8Ozp9ckRzV
         pzJg==
X-Gm-Message-State: AOAM531QEkIUghMP30CPuwIAUUmKQ2BK3im2NNR/EVB8EnV5kbIYIaBo
	9AjqVkfPl0Kp3nmstT0VnnXfJsbz/4FJCMMmr78=
X-Google-Smtp-Source: ABdhPJyUFo2xkrbQ6Zh7keVNnkIa0n8gBtpvY/5WmbbK5DRCMv7xPYy8tGkLSP/qF3N0yP2INKi+wDNOL4ut52cr/eE=
X-Received: by 2002:a17:907:3d8a:: with SMTP id he10mr27413550ejc.184.1618232000770;
 Mon, 12 Apr 2021 05:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
 <29D4AD3E-11D9-42A0-A6C3-60D03ED19AE5@elitecoding.org> <7c1e57a9-6dbb-7473-479f-5fadadcd7d52@elitecoding.org>
 <CAG16vQVXNTpn5uzrD-73-BLNiDb11o1ErLpZL9807zvdf9THww@mail.gmail.com>
In-Reply-To: <CAG16vQVXNTpn5uzrD-73-BLNiDb11o1ErLpZL9807zvdf9THww@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 12 Apr 2021 14:53:07 +0200
Message-ID: <CAG16vQU8M1MjzWP_F4uWSnzHPcwJHP-miTqnO0TW_=3V1LkREw@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: RWTHCEHG2WRJUFCHBZTVCV3OSK5CZ5XI
X-Message-ID-Hash: RWTHCEHG2WRJUFCHBZTVCV3OSK5CZ5XI
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RWTHCEHG2WRJUFCHBZTVCV3OSK5CZ5XI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0641083089813000977=="

--===============0641083089813000977==
Content-Type: multipart/alternative; boundary="00000000000091f5df05bfc5ffd3"

--00000000000091f5df05bfc5ffd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

I have debugged the code running the "usrp-filter-explorer.cpp" which also
change some of the ad9361 configurations and I have the opportunity to
check it both in USRP E320 and USRP B210 (same as the one you have).

I have been able to see that the path through the source code using the
B210 is as expected (as you said, it goes through the ad9361_device.cpp
file) but that's not happening with the USRP E320.
The b210 log output (with added comments) is this:
































































































































































*[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.HEAD-0-g90ce6062[INFO] [B200] Detected Device: B210[INFO] [B200]
Operating over USB 2.[INFO] [B200] Initialize CODEC control...[INFO]
[AD9361_DEVICE] initialize[INFO] [AD9361_DEVICE]
setup_gain_control_agc[INFO] [AD9361_device] setup_adc[INFO] [B200]
Initialize Radio control...[INFO] [AD9361_CTRL] set_agc[INFO]
[AD9361_DEVICE] set_agc[INFO] [AD9361_DEVICE] setup_gain_control_agc[INFO]
[AD9361_CTRL] set_agc[INFO] [AD9361_DEVICE] set_agc[INFO] [AD9361_DEVICE]
setup_gain_control_agc[INFO] [AD9361_DEVICE] setup_gain_control_agc[INFO]
[B200] Performing register loopback test... [INFO] [B200] Register loopback
test passed[INFO] [MANAGER] agc[INFO] [AD9361_DEVICE] filter[INFO]
[AD9361_DEVICE] filter[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed[INFO] [MANAGER] agc[INFO]
[AD9361_DEVICE] filter[INFO] [AD9361_DEVICE] filter[INFO] [B200] Setting
master clock rate selection to 'automatic'.[INFO] [B200] Asking for clock
rate 16.000000 MHz... [INFO] [AD9361_DEVICE] setup_gain_control_agc[INFO]
[AD9361_device] setup_adc[INFO] [B200] Actually got clock rate 16.000000
MHz.[INFO] [MULTI_USRP] Setting master clock rate selection to
'manual'.[INFO] [B200] Asking for clock rate 32.000000 MHz... [INFO]
[AD9361_DEVICE] setup_gain_control_agc[INFO] [AD9361_device]
setup_adc[INFO] [B200] Actually got clock rate 32.000000 MHz.Using master
clock rate: 3.2e+07Using search mask: rx_frontends/A/Found the following
filters matching "rx_frontends/A/":
/mboards/0/dboards/A/rx_frontends/A/filters/DEC_3/mboards/0/dboards/A/rx_fr=
ontends/A/filters/FIR_1/mboards/0/dboards/A/rx_frontends/A/filters/HB_1/mbo=
ards/0/dboards/A/rx_frontends/A/filters/HB_2/mboards/0/dboards/A/rx_fronten=
ds/A/filters/HB_3/mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB/mboards=
/0/dboards/A/rx_frontends/A/filters/LPF_TIAActive
filters: [INFO] [AD9361_DEVICE] filter[INFO] [AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/FIR_1[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_1[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_2[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_3[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIAAvailable Info on
Active Filters: [INFO] [AD9361_DEVICE] filter[INFO] [AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/FIR_1[filter_info_base]ty=
pe:
Digital FIR (i16)bypass enable: 0position index: 5
[digital_filter_base]        input rate: 6.4e+07        interpolation: 1
    decimation: 2        full-scale: 32767        max num taps: 128
taps:                 (tap 0: 0)(tap 1: 0)(tap 2: 1)(tap 3: 0)(tap 4:
-2)(tap 5: 0)(tap 6: 3)(tap 7: 0)(tap 8: -5)(tap 9: 0)(tap 10: 8)
      (tap 11: 0)(tap 12: -11)(tap 13: 0)(tap 14: 17)(tap 15: 0)(tap 16:
-24)(tap 17: 0)(tap 18: 33)(tap 19: 0)(tap 20: -45)                (tap 21:
0)(tap 22: 61)(tap 23: 0)(tap 24: -80)(tap 25: 0)(tap 26: 104)(tap 27:
0)(tap 28: -134)(tap 29: 0)(tap 30: 169)                (tap 31: 0)(tap 32:
-213)(tap 33: 0)(tap 34: 264)(tap 35: 0)(tap 36: -327)(tap 37: 0)(tap 38:
401)(tap 39: 0)(tap 40: -489)                (tap 41: 0)(tap 42: 595)(tap
43: 0)(tap 44: -724)(tap 45: 0)(tap 46: 880)(tap 47: 0)(tap 48: -1075)(tap
49: 0)(tap 50: 1323)                (tap 51: 0)(tap 52: -1652)(tap 53:
0)(tap 54: 2114)(tap 55: 0)(tap 56: -2819)(tap 57: 0)(tap 58: 4056)(tap 59:
0)(tap 60: -6883)                (tap 61: 0)(tap 62: 20837)(tap 63:
32767)(tap 64: 20837)(tap 65: 0)(tap 66: -6883)(tap 67: 0)(tap 68:
4056)(tap 69: 0)(tap 70: -2819)                (tap 71: 0)(tap 72:
2114)(tap 73: 0)(tap 74: -1652)(tap 75: 0)(tap 76: 1323)(tap 77: 0)(tap 78:
-1075)(tap 79: 0)(tap 80: 880)                (tap 81: 0)(tap 82: -724)(tap
83: 0)(tap 84: 595)(tap 85: 0)(tap 86: -489)(tap 87: 0)(tap 88: 401)(tap
89: 0)(tap 90: -327)                (tap 91: 0)(tap 92: 264)(tap 93: 0)(tap
94: -213)(tap 95: 0)(tap 96: 169)(tap 97: 0)(tap 98: -134)(tap 99: 0)(tap
100: 104)                (tap 101: 0)(tap 102: -80)(tap 103: 0)(tap 104:
61)(tap 105: 0)(tap 106: -45)(tap 107: 0)(tap 108: 33)(tap 109: 0)(tap 110:
-24)                (tap 111: 0)(tap 112: 17)(tap 113: 0)(tap 114: -11)(tap
115: 0)(tap 116: 8)(tap 117: 0)(tap 118: -5)(tap 119: 0)(tap 120: 3)
        (tap 121: 0)(tap 122: -2)(tap 123: 0)(tap 124: 1)(tap 125: 0)(tap
126: 0)(tap 127: 0)[INFO] [AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_1[filter_info_base]typ=
e:
Digital (i16)bypass enable: 0position index: 4
[digital_filter_base]        input rate: 1.28e+08        interpolation: 1
      decimation: 2        full-scale: 2048        max num taps: 15
taps:                 (tap 0: -8)(tap 1: 0)(tap 2: 42)(tap 3: 0)(tap 4:
-147)(tap 5: 0)(tap 6: 619)(tap 7: 1013)(tap 8: 619)(tap 9: 0)(tap 10:
-147)                (tap 11: 0)(tap 12: 42)(tap 13: 0)(tap 14: -8)[INFO]
[AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_2[filter_info_base]typ=
e:
Digital (i16)bypass enable: 0position index: 3
[digital_filter_base]        input rate: 2.56e+08        interpolation: 1
      decimation: 2        full-scale: 256        max num taps: 7
taps:                 (tap 0: -9)(tap 1: 0)(tap 2: 73)(tap 3: 128)(tap 4:
73)(tap 5: 0)(tap 6: -9)[INFO] [AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/HB_3[filter_info_base]typ=
e:
Digital (i16)bypass enable: 0position index: 2
[digital_filter_base]        input rate: 5.12e+08        interpolation: 1
      decimation: 2        full-scale: 16        max num taps: 5
taps:                 (tap 0: 1)(tap 1: 4)(tap 2: 6)(tap 3: 4)(tap 4:
1)[INFO] [AD9361_DEVICE]
filter/mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB[filter_info_base]t=
ype:
Analog Low-passbypass enable: 0position index: 1
[analog_filter_base]        desc: third-order Butterworth
[analog_filter_lp]                cutoff: 2.24e+07                rolloff:
60/mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA[INFO] [AD9361_DEVICE]
filter[filter_info_base]type: Analog Low-passbypass enable: 0position
index: 0        [analog_filter_base]        desc: single-pole
  [analog_filter_lp]                cutoff: 4e+07                rolloff:
20*

On the other hand, the USRP E320 returns this:




























*[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.HEAD-0-g90ce6062[INFO] [MPMD] Initializing 1 device(s) in
parallel with args:
mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D31DFBB7,claime=
d=3DFalse,addr=3D192.168.10.2[INFO]
[MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062[INFO] [MPM.main]
Spawning RPC process...[INFO] [MPM.PeriphManager] Device serial number:
31DFBB7[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).[INFO]
[MPM.RPCServer] RPC server ready![INFO] [MPM.RPCServer] Spawning watchdog
task...[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=3D192.168.10.2,product=3De320'.[INFO] [AD9361_IFACE] agc[INFO]
[AD9361_IFACE] agc[INFO] [0/Radio#0] Performing CODEC loopback test on
channel 0 ... [INFO] [0/Radio#0] CODEC loopback test passed[INFO]
[0/Radio#0] Performing CODEC loopback test on channel 1 ... [INFO]
[0/Radio#0] CODEC loopback test passed[INFO] [0/DmaFIFO#0] BIST passed
(Estimated Minimum Throughput: 1361 MB/s)[INFO] [0/DmaFIFO#0] BIST passed
(Estimated Minimum Throughput: 1361 MB/s)Using master clock rate:
3.2e+07Using search mask: rx_frontends/A/Found the following filters
matching "rx_frontends/A/": [INFO] [E3xx_radio_ctrl] filterActive filters:
Available Info on Active Filters: *

The E320 goes to the ad9361_iface file (I have not called the set_agc
command so perhaps is called for the initial configuration?) and the
E3xx_radio_ctrl for the filter command (that's strange because I would
expected that it had passed through the iface too). There's also no single
filter name printed, maybe the correct tree path in the E320 is not
"rx_frontends/A/.

The call in ad9361_iface file is this one (which calls the rpc_client,
that's why I thought on the previous email that the configuration goes that
way):




*void set_agc(const std::string& which, bool
enable){UHD_LOG_INFO("AD9361_IFACE",
"agc");_rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc",
which, enable);*

I am running the same source code for both USRP's, in the same environment,
just changing the connection from one USRP to another in my PC, so I'm
afraid this is an specific E320 problem.

Kind Regards,

Maria

El lun, 12 abr 2021 a las 9:55, Maria Mu=C3=B1oz (<mamuki92@gmail.com>) esc=
ribi=C3=B3:

> Hi Julian,
>
> Thanks for the answer.
>
> Yes, I'm working with the E320. I'll try to force the "_setup_agc" code a=
s
> you said and debug again to see if hopefully, I get the AGC configured.
> If someone has configured the E320 before I will also appreciate any help
> on this.
>
> Thanks again for the help
>
> Kind Regards,
>
> Maria
>
> El lun, 12 abr 2021 a las 9:43, Julian Arnold (<julian@elitecoding.org>)
> escribi=C3=B3:
>
>> Maria,
>>
>> it just dawned on me, that you are working with an e320 not an e310.
>>
>> Although most of what I said should still apply (especially erverything
>> related to the (AD936x)) things might be a little bit different. I'm
>> epecially unsure about the RPC part, here.
>>
>> Maybe someone else can chime in regarding this aspect.
>>
>> However, I think that `_setup_gain_control(false)` should run regardless
>> during device init. So you should see some logging output there.
>>
>> If _setup_agc() is not beeing called you could try to force the AGC on,
>> just for verification purposes, by changing `_setup_gain_control(false)`
>> to `_setup_gain_control(true)` in `initialize()` and `set_clock_rate()`.
>>
>> Cheers,
>> Julian
>>
>> On 4/9/21 3:34 PM, Julian Arnold wrote:
>> > Maria,
>> >
>> > the properties you want to change (min/max thresholds) are not exposed
>> > via the property tree. Only the mode is (slow or fast).
>> > However, the same code that configures the AGC that worked for me on
>> the
>> > B210 should run on the E310. The RPC client should not be involved in
>> > that case (although I=E2=80=99m not sure about that).
>> >
>> > Have you tried applying my patch directly (I had slightly modified
>> > register values).
>> >
>> > Also, could you try running your code directly on the E310 (bypassing
>> > networked-mode) to see if that makes a difference?
>> >
>> > Cheers,
>> > Julian
>> >
>> >
>> > Julian Arnold, M.Sc
>> >
>> >> Am 09.04.2021 um 09:48 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.com>:
>> >>
>> >> =EF=BB=BF
>> >> Hi Julian,
>> >>
>> >> Sorry for the late reply and thanks for the answer.
>> >>
>> >> I have been debugging the configuration printing the entries of
>> >> "set_agc" that I have found on cpp/py files in the uhd driver and
>> >> ettus repositories, and I can confirm that the code is not getting to
>> >> the ad9361_device.cpp as I thought in the beginning.
>> >>
>> >> If I go through the code from my python script to the
>> >> ad9361_device.cpp configuration file I see the following:
>> >>
>> >>   * The python scripts calls for ettus.rfnoc_rx_radio.set_agc method,
>> >>     which is found in ettus repository (for usrp_source is on
>> >>     gnuradio/uhd lib)
>> >>
>> >>   * The rfnoc_rx_radio class is defined in
>> >>     gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is also a pointer
>> >>     to the radio_control class defined:
>> >>
>> >>         /class rfnoc_rx_radio_impl : public rfnoc_rx_radio
>> >>         {
>> >>         public:
>> >>             rfnoc_rx_radio_impl(::uhd:://rfnoc::noc_block_base::sptr
>> >>         block_ref);
>> >>             ~rfnoc_rx_radio_impl();
>> >>
>> >>             /*** API
>> >>
>>  ******************************//******************************//*****/
>> >>             double set_rate(const double rate);
>> >>             void set_antenna(const std::string& antenna, const size_t
>> >>         chan);
>> >>             double set_frequency(const double frequency, const size_t
>> >>         chan);
>> >>             void set_tune_args(const ::uhd::device_addr_t& args, cons=
t
>> >>         size_t chan);
>> >>             double set_gain(const double gain, const size_t chan);
>> >>             double set_gain(const double gain, const std::string&
>> >>         name, const size_t chan);
>> >>             void set_agc(const bool enable, const size_t chan);
>> >>             void set_gain_profile(const std::string& profile, const
>> >>         size_t chan);
>> >>             double set_bandwidth(const double bandwidth, const size_t
>> >>         chan);
>> >>             void
>> >>             set_lo_source(const std::string& source, const
>> >>         std::string& name, const size_t chan);
>> >>             void
>> >>             set_lo_export_enabled(const bool enabled, const
>> >>         std::string& name, const size_t chan);
>> >>             double set_lo_freq(const double freq, const std::string&
>> >>         name, const size_t chan);
>> >>             void set_dc_offset(const bool enable, const size_t chan);
>> >>             void set_dc_offset(const std::complex<double>& offset,
>> >>         const size_t chan);
>> >>             void set_iq_balance(const bool enable, const size_t chan)=
;
>> >>             void set_iq_balance(const std::complex<double>&
>> >>         correction, const size_t chan);
>> >>
>> >>         private:
>> >>             ::uhd::rfnoc::radio_control:://sptr d_radio_ref;
>> >>         };/
>> >>
>> >>   * In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc command is
>> >>     received, it returns a call to the pointer I mention before, and
>> >>     therefore, to the radio_control class:
>> >>
>> >>         /void rfnoc_rx_radio_impl::set_agc(//const bool enable, const
>> >>         size_t chan)
>> >>         {
>> >>             return d_radio_ref->set_rx_agc(//enable, chan);
>> >>         }/
>> >>
>> >>   * The radio_control class is found in the UHD driver repository in
>> >>     uhd/host/include/uhd/rfnoc/radio_control.hpp which is virtually
>> >>     implemented as radio_control_impl class in
>> >>     e3xx_radio_control_impl.cpp (host/lib/usrp/board/e3xx)
>> >>   * This file calls to the ad9361_ctrl class which is implemented in
>> >>     e3xx_ad9361_iface.cpp (host/lib/usrp/board/e3xx)
>> >>   * At this point, there is a call for the rpc_client where I get kin=
d
>> >>     of lost about how to change the registers this way:
>> >>
>> >>
>> >>         /void set_agc(const std::string& which, bool enable)
>> >>         {
>> >>         _rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc"=
,
>> >>         which, enable);
>> >>         }/
>> >>
>> >>
>> >>
>> >> To be brief:
>> >>
>> >>   * When debugging I can't see that my code gets to the only
>> >>     configuration file I found which is the ad9361_device.cpp
>> >>   * The set_agc command seems to be manage through the rpc_client (I
>> >>     think this is related to the module peripheral manager which is a
>> >>     "layer of control that UHD uses to access, configure and control
>> >>     the hardware", https://files.ettus.com/manual/page_mpm.html)
>> >>   * Inside the code, in multi_usrp files there is a comment that the
>> >>     specific configuration of the AGC is set in the property_tree but
>> >>     I don't know how to write the configuration registers of the agc
>> >>     through the property_tree.
>> >>
>> >>
>> >> So my questions here are:
>> >>
>> >>  1. How can I set the configuration registers of the AGC, through the
>> >>     MPM or the property tree?
>> >>  2. Are there examples on how I can set these registers through the
>> >>     MPM or the property_tree?
>> >>
>> >>
>> >> Kind Regards,
>> >>
>> >> Maria
>> >>
>> >> El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold
>> >> (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=C3=
=B3:
>> >>
>> >>     Maria,
>> >>
>> >>     that sounds about right!
>> >>     However, to make absolutely sure GNU Radio picks up the modified
>> >>     libuhd
>> >>     you could add a print statement somewhere in your UHD code.
>> >>     You could also compare your UHD install prefix to the path gr-uhd
>> >>     uses for linking libuhd.
>> >>
>> >>     Below is the patch I used for my tests:
>> >>
>> >>     diff --git a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     index 9e088871d..0e5bc86c5 100644
>> >>     --- a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     +++ b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     @@ -1089,7 +1089,7 @@ void
>> >>     ad9361_device_t::_setup_gain_control(bool agc)
>> >>               _io_iface->poke8(0x0FD, 0x4C); // Max Full/LMT Gain
>> >>     Table Index
>> >>               _io_iface->poke8(0x0FE, 0x44); // Decr Step Size, Peak
>> >>     Overload Time
>> >>               _io_iface->poke8(0x100, 0x6F); // Max Digital Gain
>> >>     -        _io_iface->poke8(0x101, 0x0A); // Max Digital Gain
>> >>     +        _io_iface->poke8(0x101, 0x02); // Max Digital Gain
>> >>               _io_iface->poke8(0x103, 0x08); // Max Digital Gain
>> >>               _io_iface->poke8(0x104, 0x2F); // ADC Small Overload
>> >>     Threshold
>> >>               _io_iface->poke8(0x105, 0x3A); // ADC Large Overload
>> >>     Threshold
>> >>     @@ -1098,14 +1098,14 @@ void
>> >>     ad9361_device_t::_setup_gain_control(bool agc)
>> >>               _io_iface->poke8(0x108, 0x31);
>> >>               _io_iface->poke8(0x111, 0x0A);
>> >>               _io_iface->poke8(0x11A, 0x1C);
>> >>     -        _io_iface->poke8(0x120, 0x0C);
>> >>     +        _io_iface->poke8(0x120, 0x04);
>> >>               _io_iface->poke8(0x121, 0x44);
>> >>               _io_iface->poke8(0x122, 0x44);
>> >>               _io_iface->poke8(0x123, 0x11);
>> >>               _io_iface->poke8(0x124, 0xF5);
>> >>               _io_iface->poke8(0x125, 0x3B);
>> >>               _io_iface->poke8(0x128, 0x03);
>> >>     -        _io_iface->poke8(0x129, 0x56);
>> >>     +        _io_iface->poke8(0x129, 0x11);
>> >>               _io_iface->poke8(0x12A, 0x22);
>> >>           } else {
>> >>               _io_iface->poke8(0x0FA, 0xE0); // Gain Control Mode
>> Select
>> >>
>> >>
>> >>     Cheers,
>> >>     Julian
>> >>
>> >>     On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>> >>     > Hi Julian,
>> >>     >
>> >>     > I have the chance to test the AGC with a B210 and perform the
>> >>     same graph
>> >>     > as you send me but I am unable to see what you saw so I think I=
'm
>> >>     > missing something.
>> >>     > I also have UHD 4.0 and GNURadio 3.8 (installed by source).
>> >>     >
>> >>     > The steps I take are these:
>> >>     >
>> >>     >   * First, I change the ad9361_device.cpp that is in uhd
>> >>     repository in
>> >>     >     //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
>> >>     >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
>> >>     >   * Then, I do "make" and "make install" to compile the changes
>> in
>> >>     >     build-host folder.
>> >>     >   * After that, I generate the python script for the GRC flow
>> >>     graph and
>> >>     >     move the "set_agc" command after the "set_rate" one.
>> >>     >   * Finally, I run the python.
>> >>     >
>> >>     > I can't see my waveform between the values I set. Is there
>> >>     something
>> >>     > wrong with those steps? Did you do anything else?
>> >>     >
>> >>     > King Regards,
>> >>     >
>> >>     > Maria
>> >>     >
>> >>     > /
>> >>     > /
>> >>     >
>> >>     > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (<mamuki92@gma=
il.com
>> >>     <mailto:mamuki92@gmail.com>
>> >>     > <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>)
>> escribi=C3=B3:
>> >>     >
>> >>     >     Hi Julian,
>> >>     >
>> >>     >     Thanks for the checking!
>> >>     >
>> >>     >     I have also checked my graph and samp_rate is setting first=
,
>> >>     so I'll
>> >>     >     try to test it with a sine waveform as you suggested and se=
e
>> >>     if that
>> >>     >     works. If not, maybe is an RFNoC/gr-ettus problem. I'll put
>> >>     an issue
>> >>     >     in the gr-ettus repository in that case.
>> >>     >
>> >>     >     Thanks again for your help.
>> >>     >
>> >>     >     Kind Regards,
>> >>     >
>> >>     >     Maria.
>> >>     >
>> >>     >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
>> >>     >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>>>)
>> >>     escribi=C3=B3:
>> >>     >
>> >>     >         Maria,
>> >>     >
>> >>     >         I couldn't resist trying this myself, as your
>> >>     modifications seemed
>> >>     >         reasonable.
>> >>     >
>> >>     >         So I did set up a simple test with a b210 connected to
>> >>     my siggen
>> >>     >         feeding
>> >>     >         it with a tone of varying power at 2.4102GHz.
>> >>     >
>> >>     >         For the default UHD AGC settings I could confirm that
>> >>     the signal
>> >>     >         was
>> >>     >         kept between -10 dBFS and -12 dBFS (20 * log10(|x|) ove=
r
>> a
>> >>     >         pretty wide
>> >>     >         input power range.
>> >>     >         This was using GR 3.8 and UHD 4.0.
>> >>     >
>> >>     >         However, I had to modify the generate flow-graph
>> >>     slightly, as
>> >>     >         the AGC
>> >>     >         was enables before the sample-rate was set (maybe doubl=
e
>> >>     check
>> >>     >         that, too).
>> >>     >
>> >>     >         Afterwards, I used your settings (I did change reg 0x12=
9
>> >>     to 0x11
>> >>     >         (1dB
>> >>     >         +-), though).
>> >>     >         Also those settings worked as expected and the signal
>> >>     was nicely
>> >>     >         kept
>> >>     >         between -2 dBFS and -4 dBFS.
>> >>     >
>> >>     >         Attached is a picture of the flow-graph I used for
>> testing.
>> >>     >         Maybe you
>> >>     >         could also start by testing with a sine wave to
>> >>     verifying that your
>> >>     >         values get applied properly.
>> >>     >
>> >>     >         Cheers,
>> >>     >         Julian
>> >>     >
>> >>     >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
>> >>     >          > Hi Julian,
>> >>     >          >
>> >>     >          > Sure.
>> >>     >          >
>> >>     >          > I am receiving a QPSK through the radio and
>> >>     plotting it in a
>> >>     >         QT graph
>> >>     >          > (see grc.png)
>> >>     >          > If I have AGC disable, I get what is shown in
>> >>     >         "test_without_agc.png",
>> >>     >          > then if I enable it, I see what is on
>> >>     "test_with_agc.png" where
>> >>     >          > "Quadrature" is always center more or less in 0.25
>> which
>> >>     >         might fit with
>> >>     >          > the values given by default (inner high threshold =
=3D
>> >>     -12dBFS,
>> >>     >         inner low
>> >>     >          > threshold =3D -10 dBFS).
>> >>     >          >
>> >>     >          > If I change the ad9361_device.cpp (attached) from
>> >>     line 1085,
>> >>     >         by changing
>> >>     >          > registers 0x101, 0x120 and 0x129 with values 0x02,
>> >>     0x04 and 0x16
>> >>     >          > respectively to move between -2dbFS and -4 dBFS,  I
>> >>     see the same
>> >>     >          > waveform that I have in "test_with_agc.png" (I expec=
t
>> >>     it to
>> >>     >         be around 0.7)
>> >>     >          >
>> >>     >          > Kind regards,
>> >>     >          >
>> >>     >          > Maria
>> >>     >          >
>> >>     >          > El lun, 22 mar 2021 a las 17:45, Julian Arnold
>> >>     >         (<julian@elitecoding.org <mailto:julian@elitecoding.org=
>
>> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>>
>> >>     >          > <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
>> >>     >          >
>> >>     >          >     Maria,
>> >>     >          >
>> >>     >          >     would you mind sharing your patch? Otherwise,
>> >>     it=E2=80=99s hard
>> >>     >         to tell what
>> >>     >          >     exactly is going on.
>> >>     >          >
>> >>     >          >     Cheers,
>> >>     >          >     Julian
>> >>     >          >
>> >>     >          >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz
>> >>     >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
>> >>     >          >>     <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>>>>:
>> >>     >          >>
>> >>     >          >>     =EF=BB=BF
>> >>     >          >>     Hi Julian,
>> >>     >          >>
>> >>     >          >>     I re-open this topic to ask a question about th=
e
>> >>     >         configuration of
>> >>     >          >>     the ad9361 registers in GNUradio/RFNoC
>> >>     >          >>
>> >>     >          >>     As I understand, when AGC is enabled in slow
>> >>     mode, there
>> >>     >         are 4
>> >>     >          >>     configurable thresholds (inner low, inner high,
>> >>     >         outer low, and
>> >>     >          >>     outer high) and also 4 configurable steps to
>> >>     reach the zone
>> >>     >          >>     between the inner thresholds.
>> >>     >          >>
>> >>     >          >>     I have found the configuration of these registe=
rs
>> >>     >          >>
>> >>      in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     >          >>     and changed their values there. Then, I have
>> >>     recompiled
>> >>     >         uhd (make
>> >>     >          >>     & make install) but, when I re-run my graph I
>> see no
>> >>     >         change in my
>> >>     >          >>     waveform (it seem to stay in the same limits as
>> >>     the default
>> >>     >          >>     configuration).
>> >>     >          >>
>> >>     >          >>     Am I missing any other step that I have to
>> done to
>> >>     >         configure these
>> >>     >          >>     parameters?
>> >>     >          >>
>> >>     >          >>     Kind Regards,
>> >>     >          >>
>> >>     >          >>     Maria
>> >>     >          >>
>> >>     >          >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1=
oz
>> >>     >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
>> >>     >          >>     <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>
>> >>     >         <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>>>>) escribi=C3=B3:
>> >>     >          >>
>> >>     >          >>         Ok Julian, I will check the tree node and
>> try to
>> >>     >         modify the
>> >>     >          >>         properties. Thanks again for the help!
>> >>     >          >>
>> >>     >          >>         Kind Regards,
>> >>     >          >>         Maria
>> >>     >          >>
>> >>     >          >>         El jue, 11 mar 2021 a las 18:26, Julian
>> Arnold
>> >>     >          >>         (<julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>> <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>>)
>> >>     >          >>         escribi=C3=B3:
>> >>     >          >>
>> >>     >          >>             Maria,
>> >>     >          >>
>> >>     >          >>             >>
>> >>     >         /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >>     >          >>             >>
>> >>     >          >>             >> but I have received the following
>> >>     errorThat's
>> >>     >         why I
>> >>     >          >>             gave the reference ([1]) showing the
>> correct
>> >>     >         syntax ;)
>> >>     >          >>             Anyways, glad it worked out for you!
>> >>     >          >>             You might consider filing a bug issue
>> >>     against
>> >>     >         gr-ettus on
>> >>     >          >>             github.
>> >>     >          >>
>> >>     >          >>             >> By the way, I have read that there a=
re
>> >>     >         several modes
>> >>     >          >>             for AGC
>> >>     >          >>             >> (fast,slow,hybrid..) I was wondering
>> >>     which
>> >>     >         type is
>> >>     >          >>             implemented by
>> >>     >          >>             >> default and if it is possible to
>> >>     change AGC
>> >>     >         mode in the
>> >>     >          >>             flowgraph.
>> >>     >          >>             Those modes were mainly dictated by the
>> >>     AD9361.
>> >>     >         Default
>> >>     >          >>             should be
>> >>     >          >>             "slow". The "hybrid" mode is not
>> >>     implemented as
>> >>     >         far as I know.
>> >>     >          >>             Which mode you want ("slow" / "fast")
>> >>     depends on the
>> >>     >          >>             signal you want to
>> >>     >          >>             receive. For burst-mode digital signals
>> you
>> >>     >         might want to
>> >>     >          >>             switch to the
>> >>     >          >>             "fast" mode.
>> >>     >          >>             However, I think this is only possible =
by
>> >>     >         directly writing
>> >>     >          >>             to the corresponding property-tree node=
.
>> >>     Again,
>> >>     >         I'm not
>> >>     >          >>             sure about
>> >>     >          >>             UHD-4.0/gr-ettus though.
>> >>     >          >>
>> >>     >          >>             Cheers,
>> >>     >          >>             Julian
>> >>     >          >>
>> >>     >          >>
>> >>     >          >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wr=
ote:
>> >>     >          >>             > Hi Julian,
>> >>     >          >>             >
>> >>     >          >>             > I have initially changed the python
>> >>     generated
>> >>     >         for my
>> >>     >          >>             flowgraph with this
>> >>     >          >>             > line:
>> >>     >          >>             >
>> >>     >          >>             >
>> >>     /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >>     >          >>             >
>> >>     >          >>             > but I have received the following
>> error:
>> >>     >          >>             >
>> >>     >          >>             > T/raceback (most recent call last):
>> >>     >          >>             >    File
>> >>     "constellation_soft_decoder.py", line
>> >>     >         301, in
>> >>     >          >>             <module>
>> >>     >          >>             >      main()
>> >>     >          >>             >    File
>> >>     "constellation_soft_decoder.py", line
>> >>     >         277, in main
>> >>     >          >>             >      tb =3D top_block_cls()
>> >>     >          >>             >    File
>> >>     "constellation_soft_decoder.py", line
>> >>     >         166, in
>> >>     >          >>             __init__
>> >>     >          >>             >
>> >>     >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
>> >>     >          >>             > AttributeError: 'rfnoc_rx_radio_sptr'
>> >>     object
>> >>     >         has no
>> >>     >          >>             attribute 'set_rx_agc'/
>> >>     >          >>             >
>> >>     >          >>             > But rfnoc_radio_impl.cc defines it:
>> >>     >          >>             >
>> >>     >          >>             > /void
>> >>     rfnoc_rx_radio_impl::set_agc(const bool
>> >>     >         enable,
>> >>     >          >>             const size_t chan)
>> >>     >          >>             > {
>> >>     >          >>             >      return
>> >>     d_radio_ref->set_rx_agc(enable, chan);
>> >>     >          >>             > }/
>> >>     >          >>             >
>> >>     >          >>             > Searching the rfnoc_rx_radio_sptr wit=
h
>> >>     grep
>> >>     >         takes me to
>> >>     >          >>             "swig" files. I
>> >>     >          >>             > have looked at ettus_swig.py and seen
>> >>     that the
>> >>     >         command
>> >>     >          >>             name is set_agc
>> >>     >          >>             > instead of set_rx_agc:
>> >>     >          >>             >
>> >>     >          >>             > /def set_agc(self, enable: "bool
>> >>     const", chan:
>> >>     >         "size_t
>> >>     >          >>             const") -> "void":
>> >>     >          >>             >          r"""
>> >>     >          >>             >          set_agc(rfnoc_rx_radio self,
>> bool
>> >>     >         const enable,
>> >>     >          >>             size_t const chan)
>> >>     >          >>             >          Enable/disable the AGC for
>> >>     this RX
>> >>     >         radio (if
>> >>     >          >>             available)
>> >>     >          >>             >          """
>> >>     >          >>             >          return
>> >>     >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
>> >>     >          >>             enable, chan)/
>> >>     >          >>             > /
>> >>     >          >>             > /
>> >>     >          >>             > Changing this in the flowgraph.py
>> seems to
>> >>     >         work!! Thanks
>> >>     >          >>             for the help on
>> >>     >          >>             > this! I put this information here jus=
t
>> >>     in case
>> >>     >         someone
>> >>     >          >>             is stuck in the
>> >>     >          >>             > same point.
>> >>     >          >>             >
>> >>     >          >>             > By the way, I have read that there ar=
e
>> >>     several
>> >>     >         modes for
>> >>     >          >>             AGC
>> >>     >          >>             > (fast,slow,hybrid..) I was wondering
>> >>     which type is
>> >>     >          >>             implemented by
>> >>     >          >>             > default and if it is possible to
>> >>     change AGC
>> >>     >         mode in the
>> >>     >          >>             flowgraph.
>> >>     >          >>             >
>> >>     >          >>             > Kind Regards,
>> >>     >          >>             >
>> >>     >          >>             > Maria
>> >>     >          >>             >
>> >>     >          >>             >
>> >>     >          >>             > El mi=C3=A9, 10 mar 2021 a las 12:03,=
 Maria
>> >>     Mu=C3=B1oz
>> >>     >          >>             (<mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>>
>> >>     >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
>> >>     >          >>             > <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>
>> >>     >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
>> >>     >          >>             <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>
>> >>     >         <mailto:mamuki92@gmail.com
>> >>     <mailto:mamuki92@gmail.com>>>>>) escribi=C3=B3:
>> >>     >          >>             >
>> >>     >          >>             >     Hi Jules,
>> >>     >          >>             >
>> >>     >          >>             >     Thank you, I will try it and let
>> >>     you know
>> >>     >         as soon as
>> >>     >          >>             possible.
>> >>     >          >>             >
>> >>     >          >>             >     By the way, I have checked the
>> python
>> >>     >          >>             generated using the UHD USRP
>> >>     >          >>             >     SOURCE block (instead of the RFNo=
C
>> >>     radio
>> >>     >         block) with
>> >>     >          >>             AGC active and
>> >>     >          >>             >     it generates the set of AGC fine.
>> >>     So, as
>> >>     >         you said,
>> >>     >          >>             it is fixed in
>> >>     >          >>             >     gr-uhd but it might still be a bu=
g
>> in
>> >>     >         gr-ettus.
>> >>     >          >>             >
>> >>     >          >>             >     Thanks again for the help!
>> >>     >          >>             >
>> >>     >          >>             >     Kind Regards,
>> >>     >          >>             >
>> >>     >          >>             >     Maria
>> >>     >          >>             >
>> >>     >          >>             >     El mi=C3=A9, 10 mar 2021 a las 11=
:25,
>> >>     Julian Arnold
>> >>     >          >>             >     (<julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
>> >>     >          >>             >
>> >>     >          >>             >         Maria,
>> >>     >          >>             >
>> >>     >          >>             >          >> So, if I understand
>> >>     correctly, I
>> >>     >         have to put
>> >>     >          >>             there also
>> >>     >          >>             >         something like
>> >>     >          >>             >          >>
>> >>     >          >>
>> >>     >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
>> >>     isn't it?
>> >>     >          >>             >
>> >>     >          >>             >         Exactly! Take a look at [1]
>> >>     for the
>> >>     >         correct syntax.
>> >>     >          >>             >
>> >>     >          >>             >         [1]
>> >>     >          >>             >
>> >>     >          >>
>> >>     >
>> >>
>> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc=
4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>> >>     >          >>             >
>> >>     >          >>             >         Let me know if that worked ou=
t
>> >>     for you.
>> >>     >          >>             >
>> >>     >          >>             >         Cheers,
>> >>     >          >>             >         Julian
>> >>     >          >>             >
>> >>     >          >>             >
>> >>     >          >>             >         On 3/10/21 9:59 AM, Maria
>> >>     Mu=C3=B1oz wrote:
>> >>     >          >>             >          > Hi Julian,
>> >>     >          >>             >          >
>> >>     >          >>             >          > Thanks for the quick answe=
r.
>> >>     >          >>             >          >
>> >>     >          >>             >          > I think you might be right
>> >>     about
>> >>     >         the possible
>> >>     >          >>             bug turning on
>> >>     >          >>             >         the AGC
>> >>     >          >>             >          > from GRC. I have checked
>> >>     the flow graph
>> >>     >          >>             generated and there's no
>> >>     >          >>             >          > set_rx_agc enable option (=
I
>> >>     checked
>> >>     >         the c++
>> >>     >          >>             definition block
>> >>     >          >>             >         where this
>> >>     >          >>             >          > option did appear but I
>> >>     hadn't look
>> >>     >         at the
>> >>     >          >>             python generated).
>> >>     >          >>             >          >
>> >>     >          >>             >          > The lines related to the
>> >>     radio in my
>> >>     >          >>             flowgraph are these:
>> >>     >          >>             >          >
>> >>     >          >>             >          >
>> /self.ettus_rfnoc_rx_radio_0 =3D
>> >>     >          >>             ettus.rfnoc_rx_radio(
>> >>     >          >>             >          >
>> self.rfnoc_graph,
>> >>     >          >>             >          >
>> >>     uhd.device_addr(''),
>> >>     >          >>             >          >              -1,
>> >>     >          >>             >          >              -1)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>     >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, =
0)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
>> >>     >          >>             >          >
>> >>     >          >>
>> >>      self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
>> >>     >          >>             >          >
>> >>     >          >>             >          > So, if I understand
>> >>     correctly, I
>> >>     >         have to put
>> >>     >          >>             there also
>> >>     >          >>             >         something like
>> >>     >          >>             >          >
>> >>     >          >>
>> >>     >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
>> >>     isn't it?
>> >>     >          >>             >          >
>> >>     >          >>             >          > Kind Regards,
>> >>     >          >>             >          >
>> >>     >          >>             >          > Maria
>> >>     >          >>             >          >
>> >>     >          >>             >          > El mi=C3=A9, 10 mar 2021 a=
 las
>> 9:16,
>> >>     >         Julian Arnold
>> >>     >          >>             >         (<julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>>
>> >>     >          >>             >          >
>> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>
>> >>     >          >>             >         <mailto:julian@elitecoding.or=
g
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>
>> >>     >          >>             <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>
>> >>     >         <mailto:julian@elitecoding.org
>> >>     <mailto:julian@elitecoding.org>>>>>>) escribi=C3=B3:
>> >>     >          >>             >          >
>> >>     >          >>             >          >     Maria,
>> >>     >          >>             >          >
>> >>     >          >>             >          >     I might not be the
>> >>     right person
>> >>     >         to answer
>> >>     >          >>             this, as my
>> >>     >          >>             >         experience with
>> >>     >          >>             >          >     UHD 4.0 is relatively
>> >>     limited
>> >>     >         at the moment.
>> >>     >          >>             >          >
>> >>     >          >>             >          >     However, I cant tell
>> >>     you that
>> >>     >         the AGC on
>> >>     >          >>             B2x0 devices is
>> >>     >          >>             >         controlled via
>> >>     >          >>             >          >     software (using
>> >>     set_rx_agc()).
>> >>     >         There is
>> >>     >          >>             no need to
>> >>     >          >>             >         directly modify the
>> >>     >          >>             >          >     state of any pins of
>> >>     the FPGA.
>> >>     >          >>             >          >
>> >>     >          >>             >          >     I vaguely remember tha=
t
>> >>     there
>> >>     >         was a bug
>> >>     >          >>             in an earlier
>> >>     >          >>             >         version of gr-uhd
>> >>     >          >>             >          >     (somewhere in 3.7) tha=
t
>> >>     made it
>> >>     >         difficult
>> >>     >          >>             to turn on the
>> >>     >          >>             >         AGC using GRC.
>> >>     >          >>             >          >     That particular one is
>> >>     fixed in
>> >>     >         gr-uhd.
>> >>     >          >>             Not sure about
>> >>     >          >>             >         gr-ettus, though.
>> >>     >          >>             >          >
>> >>     >          >>             >          >     Maybe try using
>> >>     set_rx_agc()
>> >>     >         manually in
>> >>     >          >>             you flow-graph
>> >>     >          >>             >         (*.py) and see
>> >>     >          >>             >          >     if that helps.
>> >>     >          >>             >          >
>> >>     >          >>             >          >     Cheers,
>> >>     >          >>             >          >     Julian
>> >>     >          >>             >          >
>> >>     >          >>             >          >     On 3/9/21 5:11 PM,
>> >>     Maria Mu=C3=B1oz via
>> >>     >          >>             USRP-users wrote:
>> >>     >          >>             >          >      > Hi all,
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > I was wondering if
>> it is
>> >>     >         possible to
>> >>     >          >>             enable AGC from
>> >>     >          >>             >         the RFNoC radio
>> >>     >          >>             >          >      > block in GNURadio. =
I
>> >>     use UHD 4.0
>> >>     >          >>             version and GNURadio
>> >>     >          >>             >         3.8 with
>> >>     >          >>             >          >     gr-ettus.
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > I see that the RFNo=
C
>> Rx
>> >>     >         radio block has an
>> >>     >          >>             >         enable/disable/default
>> >>     >          >>             >          >     AGC
>> >>     >          >>             >          >      > option in the
>> >>     GNURadio block
>> >>     >         which I
>> >>     >          >>             assume calls the
>> >>     >          >>             >         UHD function
>> >>     >          >>             >          >      > "set_rx_agc"
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >
>> >>     >          >>             >
>> >>     >          >>
>> >>     >
>> >>       (
>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abda=
b1f6c3775a9071b15c9805f866486
>> )
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > I have also checked
>> >>     on the
>> >>     >         FPGA side
>> >>     >          >>             that there is a
>> >>     >          >>             >         pin from
>> >>     >          >>             >          >     FPGA to
>> >>     >          >>             >          >      > AD9361
>> >>     called XCVR_ENA_AGC
>> >>     >         which is
>> >>     >          >>             set always to 1 on
>> >>     >          >>             >         the top
>> >>     >          >>             >          >     level of
>> >>     >          >>             >          >      > the FPGA image (see
>> >>     attached
>> >>     >         file
>> >>     >          >>             "e320.v", line 872).
>> >>     >          >>             >         This pin,
>> >>     >          >>             >          >      > according to
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >
>> >>     >          >>             >
>> >>     >          >>
>> >>     >
>> >>
>> https://www.analog.com/media/en/technical-documentation/data-sheets/AD93=
61.pdf
>> >>     >          >>             >          >
>> >>     >          >>             >          >      > is the "Manual
>> >>     Control Input for
>> >>     >          >>             Automatic Gain
>> >>     >          >>             >         Control (AGC)".
>> >>     >          >>             >          >      > Must be this pin se=
t
>> >>     to 0 to
>> >>     >         have AGC
>> >>     >          >>             working?
>> >>     >          >>             >          >      > If not, how can
>> >>     I get AGC
>> >>     >         working?
>> >>     >          >>             I've made some tests
>> >>     >          >>             >          >      > enabling/disabling
>> this
>> >>     >         option but I
>> >>     >          >>             do not see any
>> >>     >          >>             >         changes
>> >>     >          >>             >          >     between the
>> >>     >          >>             >          >      > waveforms received.
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > Any help would be
>> >>     appreciated.
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > Kind Regards,
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      > Maria
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >      >
>> >>     >          >>
>> >>      _______________________________________________
>> >>     >          >>             >          >      > USRP-users mailing
>> list
>> >>     >          >>             >          >      >
>> >>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>
>> >>     >          >>             <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>>
>> >>     >          >>             >
>> >>      <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>
>> >>     >          >>             <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>>>
>> >>     >          >>             >
>> >>      <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>
>> >>     >          >>             <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>>
>> >>     >          >>             >
>> >>      <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>
>> >>     >          >>             <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>
>> >>     >         <mailto:USRP-users@lists.ettus.com
>> >>     <mailto:USRP-users@lists.ettus.com>>>>>
>> >>     >          >>             >          >      >
>> >>     >          >>             >
>> >>     >          >>
>> >>     >
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >>     >          >>             >          >      >
>> >>     >          >>             >          >
>> >>     >          >>             >
>> >>     >          >>
>> >>     >
>> >>
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> >
>>
>

--00000000000091f5df05bfc5ffd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+SSBoYXZlIGRlYnVn
Z2VkIHRoZSBjb2RlIHJ1bm5pbmcgdGhlICZxdW90O3VzcnAtZmlsdGVyLWV4cGxvcmVyLmNwcCZx
dW90OyB3aGljaCBhbHNvIGNoYW5nZSBzb21lIG9mIHRoZSBhZDkzNjEgY29uZmlndXJhdGlvbnMg
YW5kIEkgaGF2ZSB0aGUgb3Bwb3J0dW5pdHkgdG8gY2hlY2sgaXQgYm90aCBpbiBVU1JQIEUzMjAg
YW5kIFVTUlAgQjIxMCAoc2FtZSBhcyB0aGUgb25lIHlvdSBoYXZlKS4gPGJyPjwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+SSBoYXZlIGJlZW4gYWJsZSB0byBzZWUgdGhhdCB0aGUgIHBhdGggdGhy
b3VnaCB0aGUgc291cmNlIGNvZGUgdXNpbmcgdGhlIEIyMTAgaXMgYXMgZXhwZWN0ZWQgKGFzIHlv
dSBzYWlkLCBpdCBnb2VzIHRocm91Z2ggdGhlIGFkOTM2MV9kZXZpY2UuY3BwIGZpbGUpIGJ1dCB0
aGF0JiMzOTtzIG5vdCBoYXBwZW5pbmcgd2l0aCB0aGUgVVNSUCBFMzIwLjwvZGl2PjxkaXY+VGhl
IGIyMTAgbG9nIG91dHB1dCAod2l0aCBhZGRlZCBjb21tZW50cykgaXMgdGhpczo8L2Rpdj48ZGl2
IHN0eWxlPSJtYXJnaW4tbGVmdDo0MHB4Ij48Zm9udCBzaXplPSIxIj48aT5bSU5GT10gW1VIRF0g
bGludXg7IEdOVSBDKysgdmVyc2lvbiA5LjMuMDsgQm9vc3RfMTA3MTAwOyBVSERfNC4wLjAuSEVB
RC0wLWc5MGNlNjA2Mjxicj5bSU5GT10gW0IyMDBdIERldGVjdGVkIERldmljZTogQjIxMDxicj5b
SU5GT10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAyLjxicj5bSU5GT10gW0IyMDBdIEluaXRp
YWxpemUgQ09ERUMgY29udHJvbC4uLjxicj48Yj5bSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGluaXRp
YWxpemU8L2I+PGJyPjxiPltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9s
X2FnYzxicj5bSU5GT10gW0FEOTM2MV9kZXZpY2VdIHNldHVwX2FkYzwvYj48YnI+W0lORk9dIFtC
MjAwXSBJbml0aWFsaXplIFJhZGlvIGNvbnRyb2wuLi48YnI+PGI+W0lORk9dIFtBRDkzNjFfQ1RS
TF0gc2V0X2FnYzxicj5bSU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldF9hZ2M8YnI+W0lORk9dIFtB
RDkzNjFfREVWSUNFXSBzZXR1cF9nYWluX2NvbnRyb2xfYWdjPGJyPltJTkZPXSBbQUQ5MzYxX0NU
UkxdIHNldF9hZ2M8YnI+W0lORk9dIFtBRDkzNjFfREVWSUNFXSBzZXRfYWdjPGJyPltJTkZPXSBb
QUQ5MzYxX0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9sX2FnYzxicj5bSU5GT10gW0FEOTM2MV9E
RVZJQ0VdIHNldHVwX2dhaW5fY29udHJvbF9hZ2M8L2I+PGJyPltJTkZPXSBbQjIwMF0gUGVyZm9y
bWluZyByZWdpc3RlciBsb29wYmFjayB0ZXN0Li4uIDxicj5bSU5GT10gW0IyMDBdIFJlZ2lzdGVy
IGxvb3BiYWNrIHRlc3QgcGFzc2VkPGJyPjxiPltJTkZPXSBbTUFOQUdFUl0gYWdjPGJyPltJTkZP
XSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVy
PC9iPjxicj5bSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIgbG9vcGJhY2sgdGVzdC4u
LiA8YnI+W0lORk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZDxicj48Yj5b
SU5GT10gW01BTkFHRVJdIGFnYzxicj5bSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj5b
SU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjwvYj48YnI+W0lORk9dIFtCMjAwXSBTZXR0aW5n
IG1hc3RlciBjbG9jayByYXRlIHNlbGVjdGlvbiB0byAmIzM5O2F1dG9tYXRpYyYjMzk7Ljxicj5b
SU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Li4uIDxicj5b
SU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldHVwX2dhaW5fY29udHJvbF9hZ2M8YnI+PGI+W0lORk9d
IFtBRDkzNjFfZGV2aWNlXSBzZXR1cF9hZGM8L2I+PGJyPltJTkZPXSBbQjIwMF0gQWN0dWFsbHkg
Z290IGNsb2NrIHJhdGUgMTYuMDAwMDAwIE1Iei48YnI+W0lORk9dIFtNVUxUSV9VU1JQXSBTZXR0
aW5nIG1hc3RlciBjbG9jayByYXRlIHNlbGVjdGlvbiB0byAmIzM5O21hbnVhbCYjMzk7Ljxicj5b
SU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAzMi4wMDAwMDAgTUh6Li4uIDxicj48
Yj5bSU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldHVwX2dhaW5fY29udHJvbF9hZ2M8YnI+W0lORk9d
IFtBRDkzNjFfZGV2aWNlXSBzZXR1cF9hZGM8L2I+PGJyPltJTkZPXSBbQjIwMF0gQWN0dWFsbHkg
Z290IGNsb2NrIHJhdGUgMzIuMDAwMDAwIE1Iei48YnI+PGJyPlVzaW5nIG1hc3RlciBjbG9jayBy
YXRlOiAzLjJlKzA3PGJyPlVzaW5nIHNlYXJjaCBtYXNrOiByeF9mcm9udGVuZHMvQS88YnI+PGJy
PkZvdW5kIHRoZSBmb2xsb3dpbmcgZmlsdGVycyBtYXRjaGluZyAmcXVvdDtyeF9mcm9udGVuZHMv
QS8mcXVvdDs6IDxicj4vbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJz
L0RFQ18zPGJyPi9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvRklS
XzE8YnI+L21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8xPGJy
Pi9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvSEJfMjxicj4vbWJv
YXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzM8YnI+L21ib2FyZHMv
MC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9MUEZfQkI8YnI+L21ib2FyZHMvMC9k
Ym9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9MUEZfVElBPGJyPjxicj5BY3RpdmUgZmls
dGVyczogPGJyPltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPltJTkZPXSBbQUQ5MzYx
X0RFVklDRV0gZmlsdGVyPGJyPi9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2Zp
bHRlcnMvRklSXzE8YnI+W0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+L21ib2FyZHMv
MC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8xPGJyPltJTkZPXSBbQUQ5MzYx
X0RFVklDRV0gZmlsdGVyPGJyPi9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2Zp
bHRlcnMvSEJfMjxicj5bSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4vbWJvYXJkcy8w
L2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzM8YnI+W0lORk9dIFtBRDkzNjFf
REVWSUNFXSBmaWx0ZXI8YnI+L21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmls
dGVycy9MUEZfQkI8YnI+W0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+L21ib2FyZHMv
MC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9MUEZfVElBPGJyPjxicj5BdmFpbGFi
bGUgSW5mbyBvbiBBY3RpdmUgRmlsdGVyczogPGJyPltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmls
dGVyPGJyPltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPi9tYm9hcmRzLzAvZGJvYXJk
cy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvRklSXzE8YnI+W2ZpbHRlcl9pbmZvX2Jhc2VdPGJy
PnR5cGU6IERpZ2l0YWwgRklSIChpMTYpPGJyPmJ5cGFzcyBlbmFibGU6IDA8YnI+cG9zaXRpb24g
aW5kZXg6IDU8YnI+wqAgwqAgwqAgwqAgW2RpZ2l0YWxfZmlsdGVyX2Jhc2VdPGJyPsKgIMKgIMKg
IMKgIGlucHV0IHJhdGU6IDYuNGUrMDc8YnI+wqAgwqAgwqAgwqAgaW50ZXJwb2xhdGlvbjogMTxi
cj7CoCDCoCDCoCDCoCBkZWNpbWF0aW9uOiAyPGJyPsKgIMKgIMKgIMKgIGZ1bGwtc2NhbGU6IDMy
NzY3PGJyPsKgIMKgIMKgIMKgIG1heCBudW0gdGFwczogMTI4PGJyPsKgIMKgIMKgIMKgIHRhcHM6
IDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDA6IDApKHRhcCAxOiAwKSh0YXAgMjog
MSkodGFwIDM6IDApKHRhcCA0OiAtMikodGFwIDU6IDApKHRhcCA2OiAzKSh0YXAgNzogMCkodGFw
IDg6IC01KSh0YXAgOTogMCkodGFwIDEwOiA4KTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAo
dGFwIDExOiAwKSh0YXAgMTI6IC0xMSkodGFwIDEzOiAwKSh0YXAgMTQ6IDE3KSh0YXAgMTU6IDAp
KHRhcCAxNjogLTI0KSh0YXAgMTc6IDApKHRhcCAxODogMzMpKHRhcCAxOTogMCkodGFwIDIwOiAt
NDUpPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMjE6IDApKHRhcCAyMjogNjEpKHRh
cCAyMzogMCkodGFwIDI0OiAtODApKHRhcCAyNTogMCkodGFwIDI2OiAxMDQpKHRhcCAyNzogMCko
dGFwIDI4OiAtMTM0KSh0YXAgMjk6IDApKHRhcCAzMDogMTY5KTxicj7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAodGFwIDMxOiAwKSh0YXAgMzI6IC0yMTMpKHRhcCAzMzogMCkodGFwIDM0OiAyNjQp
KHRhcCAzNTogMCkodGFwIDM2OiAtMzI3KSh0YXAgMzc6IDApKHRhcCAzODogNDAxKSh0YXAgMzk6
IDApKHRhcCA0MDogLTQ4OSk8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKHRhcCA0MTogMCko
dGFwIDQyOiA1OTUpKHRhcCA0MzogMCkodGFwIDQ0OiAtNzI0KSh0YXAgNDU6IDApKHRhcCA0Njog
ODgwKSh0YXAgNDc6IDApKHRhcCA0ODogLTEwNzUpKHRhcCA0OTogMCkodGFwIDUwOiAxMzIzKTxi
cj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDUxOiAwKSh0YXAgNTI6IC0xNjUyKSh0YXAg
NTM6IDApKHRhcCA1NDogMjExNCkodGFwIDU1OiAwKSh0YXAgNTY6IC0yODE5KSh0YXAgNTc6IDAp
KHRhcCA1ODogNDA1NikodGFwIDU5OiAwKSh0YXAgNjA6IC02ODgzKTxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAodGFwIDYxOiAwKSh0YXAgNjI6IDIwODM3KSh0YXAgNjM6IDMyNzY3KSh0YXAg
NjQ6IDIwODM3KSh0YXAgNjU6IDApKHRhcCA2NjogLTY4ODMpKHRhcCA2NzogMCkodGFwIDY4OiA0
MDU2KSh0YXAgNjk6IDApKHRhcCA3MDogLTI4MTkpPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ICh0YXAgNzE6IDApKHRhcCA3MjogMjExNCkodGFwIDczOiAwKSh0YXAgNzQ6IC0xNjUyKSh0YXAg
NzU6IDApKHRhcCA3NjogMTMyMykodGFwIDc3OiAwKSh0YXAgNzg6IC0xMDc1KSh0YXAgNzk6IDAp
KHRhcCA4MDogODgwKTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDgxOiAwKSh0YXAg
ODI6IC03MjQpKHRhcCA4MzogMCkodGFwIDg0OiA1OTUpKHRhcCA4NTogMCkodGFwIDg2OiAtNDg5
KSh0YXAgODc6IDApKHRhcCA4ODogNDAxKSh0YXAgODk6IDApKHRhcCA5MDogLTMyNyk8YnI+wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgKHRhcCA5MTogMCkodGFwIDkyOiAyNjQpKHRhcCA5MzogMCko
dGFwIDk0OiAtMjEzKSh0YXAgOTU6IDApKHRhcCA5NjogMTY5KSh0YXAgOTc6IDApKHRhcCA5ODog
LTEzNCkodGFwIDk5OiAwKSh0YXAgMTAwOiAxMDQpPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ICh0YXAgMTAxOiAwKSh0YXAgMTAyOiAtODApKHRhcCAxMDM6IDApKHRhcCAxMDQ6IDYxKSh0YXAg
MTA1OiAwKSh0YXAgMTA2OiAtNDUpKHRhcCAxMDc6IDApKHRhcCAxMDg6IDMzKSh0YXAgMTA5OiAw
KSh0YXAgMTEwOiAtMjQpPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMTExOiAwKSh0
YXAgMTEyOiAxNykodGFwIDExMzogMCkodGFwIDExNDogLTExKSh0YXAgMTE1OiAwKSh0YXAgMTE2
OiA4KSh0YXAgMTE3OiAwKSh0YXAgMTE4OiAtNSkodGFwIDExOTogMCkodGFwIDEyMDogMyk8YnI+
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKHRhcCAxMjE6IDApKHRhcCAxMjI6IC0yKSh0YXAgMTIz
OiAwKSh0YXAgMTI0OiAxKSh0YXAgMTI1OiAwKSh0YXAgMTI2OiAwKSh0YXAgMTI3OiAwKTxicj48
YnI+W0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+L21ib2FyZHMvMC9kYm9hcmRzL0Ev
cnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8xPGJyPltmaWx0ZXJfaW5mb19iYXNlXTxicj50eXBl
OiBEaWdpdGFsIChpMTYpPGJyPmJ5cGFzcyBlbmFibGU6IDA8YnI+cG9zaXRpb24gaW5kZXg6IDQ8
YnI+wqAgwqAgwqAgwqAgW2RpZ2l0YWxfZmlsdGVyX2Jhc2VdPGJyPsKgIMKgIMKgIMKgIGlucHV0
IHJhdGU6IDEuMjhlKzA4PGJyPsKgIMKgIMKgIMKgIGludGVycG9sYXRpb246IDE8YnI+wqAgwqAg
wqAgwqAgZGVjaW1hdGlvbjogMjxicj7CoCDCoCDCoCDCoCBmdWxsLXNjYWxlOiAyMDQ4PGJyPsKg
IMKgIMKgIMKgIG1heCBudW0gdGFwczogMTU8YnI+wqAgwqAgwqAgwqAgdGFwczogPGJyPsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMDogLTgpKHRhcCAxOiAwKSh0YXAgMjogNDIpKHRhcCAz
OiAwKSh0YXAgNDogLTE0NykodGFwIDU6IDApKHRhcCA2OiA2MTkpKHRhcCA3OiAxMDEzKSh0YXAg
ODogNjE5KSh0YXAgOTogMCkodGFwIDEwOiAtMTQ3KTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAodGFwIDExOiAwKSh0YXAgMTI6IDQyKSh0YXAgMTM6IDApKHRhcCAxNDogLTgpPGJyPjxicj5b
SU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4vbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9m
cm9udGVuZHMvQS9maWx0ZXJzL0hCXzI8YnI+W2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPnR5cGU6IERp
Z2l0YWwgKGkxNik8YnI+YnlwYXNzIGVuYWJsZTogMDxicj5wb3NpdGlvbiBpbmRleDogMzxicj7C
oCDCoCDCoCDCoCBbZGlnaXRhbF9maWx0ZXJfYmFzZV08YnI+wqAgwqAgwqAgwqAgaW5wdXQgcmF0
ZTogMi41NmUrMDg8YnI+wqAgwqAgwqAgwqAgaW50ZXJwb2xhdGlvbjogMTxicj7CoCDCoCDCoCDC
oCBkZWNpbWF0aW9uOiAyPGJyPsKgIMKgIMKgIMKgIGZ1bGwtc2NhbGU6IDI1Njxicj7CoCDCoCDC
oCDCoCBtYXggbnVtIHRhcHM6IDc8YnI+wqAgwqAgwqAgwqAgdGFwczogPGJyPsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgICh0YXAgMDogLTkpKHRhcCAxOiAwKSh0YXAgMjogNzMpKHRhcCAzOiAxMjgp
KHRhcCA0OiA3MykodGFwIDU6IDApKHRhcCA2OiAtOSk8YnI+PGJyPltJTkZPXSBbQUQ5MzYxX0RF
VklDRV0gZmlsdGVyPGJyPi9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRl
cnMvSEJfMzxicj5bZmlsdGVyX2luZm9fYmFzZV08YnI+dHlwZTogRGlnaXRhbCAoaTE2KTxicj5i
eXBhc3MgZW5hYmxlOiAwPGJyPnBvc2l0aW9uIGluZGV4OiAyPGJyPsKgIMKgIMKgIMKgIFtkaWdp
dGFsX2ZpbHRlcl9iYXNlXTxicj7CoCDCoCDCoCDCoCBpbnB1dCByYXRlOiA1LjEyZSswODxicj7C
oCDCoCDCoCDCoCBpbnRlcnBvbGF0aW9uOiAxPGJyPsKgIMKgIMKgIMKgIGRlY2ltYXRpb246IDI8
YnI+wqAgwqAgwqAgwqAgZnVsbC1zY2FsZTogMTY8YnI+wqAgwqAgwqAgwqAgbWF4IG51bSB0YXBz
OiA1PGJyPsKgIMKgIMKgIMKgIHRhcHM6IDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFw
IDA6IDEpKHRhcCAxOiA0KSh0YXAgMjogNikodGFwIDM6IDQpKHRhcCA0OiAxKTxicj48YnI+W0lO
Rk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+L21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJv
bnRlbmRzL0EvZmlsdGVycy9MUEZfQkI8YnI+W2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPnR5cGU6IEFu
YWxvZyBMb3ctcGFzczxicj5ieXBhc3MgZW5hYmxlOiAwPGJyPnBvc2l0aW9uIGluZGV4OiAxPGJy
PsKgIMKgIMKgIMKgIFthbmFsb2dfZmlsdGVyX2Jhc2VdPGJyPsKgIMKgIMKgIMKgIGRlc2M6IHRo
aXJkLW9yZGVyIEJ1dHRlcndvcnRoPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIFthbmFsb2df
ZmlsdGVyX2xwXTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjdXRvZmY6IDIuMjRlKzA3PGJy
PsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJvbGxvZmY6IDYwPGJyPjxicj4vbWJvYXJkcy8wL2Ri
b2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0xQRl9USUE8YnI+W0lORk9dIFtBRDkzNjFf
REVWSUNFXSBmaWx0ZXI8YnI+W2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPnR5cGU6IEFuYWxvZyBMb3ct
cGFzczxicj5ieXBhc3MgZW5hYmxlOiAwPGJyPnBvc2l0aW9uIGluZGV4OiAwPGJyPsKgIMKgIMKg
IMKgIFthbmFsb2dfZmlsdGVyX2Jhc2VdPGJyPsKgIMKgIMKgIMKgIGRlc2M6IHNpbmdsZS1wb2xl
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIFthbmFsb2dfZmlsdGVyX2xwXTxicj7CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBjdXRvZmY6IDRlKzA3PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHJvbGxvZmY6IDIwPC9pPjwvZm9udD48L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW4tbGVmdDo0MHB4
Ij48Zm9udCBzaXplPSIxIj48aT48YnI+PC9pPjwvZm9udD48L2Rpdj48ZGl2Pjxmb250IHNpemU9
IjEiPjxmb250IHNpemU9IjIiPk9uIHRoZSBvdGhlciBoYW5kLCB0aGUgVVNSUCBFMzIwIHJldHVy
bnMgdGhpczo8L2ZvbnQ+PGk+PGJyPjwvaT48L2ZvbnQ+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
diBzdHlsZT0ibWFyZ2luLWxlZnQ6NDBweCI+PGZvbnQgc2l6ZT0iMSI+PGk+W0lORk9dIFtVSERd
IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS4zLjA7IEJvb3N0XzEwNzEwMDsgVUhEXzQuMC4wLkhF
QUQtMC1nOTBjZTYwNjI8YnI+W0lORk9dIFtNUE1EXSBJbml0aWFsaXppbmcgMSBkZXZpY2Uocykg
aW4gcGFyYWxsZWwgd2l0aCBhcmdzOiBtZ210X2FkZHI9MTkyLjE2OC4xMC4yLHR5cGU9ZTN4eCxw
cm9kdWN0PWUzMjAsc2VyaWFsPTMxREZCQjcsY2xhaW1lZD1GYWxzZSxhZGRyPTE5Mi4xNjguMTAu
Mjxicj5bSU5GT10gW01QTS5tYWluXSBMYXVuY2hpbmcgVVNSUC9NUE0sIHZlcnNpb246IDQuMC4w
LjAtZzkwY2U2MDYyPGJyPltJTkZPXSBbTVBNLm1haW5dIFNwYXduaW5nIFJQQyBwcm9jZXNzLi4u
PGJyPltJTkZPXSBbTVBNLlBlcmlwaE1hbmFnZXJdIERldmljZSBzZXJpYWwgbnVtYmVyOiAzMURG
QkI3PGJyPltJTkZPXSBbTVBNLlBlcmlwaE1hbmFnZXJdIEZvdW5kIDEgZGF1Z2h0ZXJib2FyZChz
KS48YnI+W0lORk9dIFtNUE0uUlBDU2VydmVyXSBSUEMgc2VydmVyIHJlYWR5ITxicj5bSU5GT10g
W01QTS5SUENTZXJ2ZXJdIFNwYXduaW5nIHdhdGNoZG9nIHRhc2suLi48YnI+W0lORk9dIFtNUE0u
UGVyaXBoTWFuYWdlcl0gaW5pdCgpIGNhbGxlZCB3aXRoIGRldmljZSBhcmdzIGBtZ210X2FkZHI9
MTkyLjE2OC4xMC4yLHByb2R1Y3Q9ZTMyMCYjMzk7Ljxicj48Yj5bSU5GT10gW0FEOTM2MV9JRkFD
RV0gYWdjPGJyPltJTkZPXSBbQUQ5MzYxX0lGQUNFXSBhZ2M8L2I+PGJyPltJTkZPXSBbMC9SYWRp
byMwXSBQZXJmb3JtaW5nIENPREVDIGxvb3BiYWNrIHRlc3Qgb24gY2hhbm5lbCAwIC4uLiA8YnI+
W0lORk9dIFswL1JhZGlvIzBdIENPREVDIGxvb3BiYWNrIHRlc3QgcGFzc2VkPGJyPltJTkZPXSBb
MC9SYWRpbyMwXSBQZXJmb3JtaW5nIENPREVDIGxvb3BiYWNrIHRlc3Qgb24gY2hhbm5lbCAxIC4u
LiA8YnI+W0lORk9dIFswL1JhZGlvIzBdIENPREVDIGxvb3BiYWNrIHRlc3QgcGFzc2VkPGJyPltJ
TkZPXSBbMC9EbWFGSUZPIzBdIEJJU1QgcGFzc2VkIChFc3RpbWF0ZWQgTWluaW11bSBUaHJvdWdo
cHV0OiAxMzYxIE1CL3MpPGJyPltJTkZPXSBbMC9EbWFGSUZPIzBdIEJJU1QgcGFzc2VkIChFc3Rp
bWF0ZWQgTWluaW11bSBUaHJvdWdocHV0OiAxMzYxIE1CL3MpPGJyPjxicj5Vc2luZyBtYXN0ZXIg
Y2xvY2sgcmF0ZTogMy4yZSswNzxicj5Vc2luZyBzZWFyY2ggbWFzazogcnhfZnJvbnRlbmRzL0Ev
PGJyPjxicj5Gb3VuZCB0aGUgZm9sbG93aW5nIGZpbHRlcnMgbWF0Y2hpbmcgJnF1b3Q7cnhfZnJv
bnRlbmRzL0EvJnF1b3Q7OiA8YnI+PGI+W0lORk9dIFtFM3h4X3JhZGlvX2N0cmxdIGZpbHRlcjwv
Yj48YnI+PGJyPkFjdGl2ZSBmaWx0ZXJzOiA8YnI+PGJyPkF2YWlsYWJsZSBJbmZvIG9uIEFjdGl2
ZSBGaWx0ZXJzOiA8YnI+PC9pPjwvZm9udD48L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW4tbGVmdDo0
MHB4Ij48Zm9udCBzaXplPSIxIj48aT48YnI+PC9pPjwvZm9udD48L2Rpdj48ZGl2Pjxmb250IHNp
emU9IjEiPjxmb250IHNpemU9IjIiPlRoZSBFMzIwIGdvZXMgdG8gdGhlIGFkOTM2MV9pZmFjZSBm
aWxlIChJIGhhdmUgbm90IGNhbGxlZCB0aGUgc2V0X2FnYyBjb21tYW5kIHNvIHBlcmhhcHMgaXMg
Y2FsbGVkIGZvciB0aGUgaW5pdGlhbCBjb25maWd1cmF0aW9uPyk8L2ZvbnQ+IDxmb250IHNpemU9
IjIiPmFuZCB0aGUgRTN4eF9yYWRpb19jdHJsPC9mb250PiA8Zm9udCBzaXplPSIyIj5mb3IgdGhl
IGZpbHRlciBjb21tYW5kICh0aGF0JiMzOTtzIHN0cmFuZ2UgYmVjYXVzZSBJIHdvdWxkIGV4cGVj
dGVkIHRoYXQgaXQgaGFkIHBhc3NlZCB0aHJvdWdoIHRoZSBpZmFjZSB0b28pLiBUaGVyZSYjMzk7
cyBhbHNvIG5vIHNpbmdsZSBmaWx0ZXIgbmFtZSBwcmludGVkLCBtYXliZSB0aGUgY29ycmVjdCB0
cmVlIHBhdGggaW4gdGhlIEUzMjAgaXMgbm90ICZxdW90O3J4X2Zyb250ZW5kcy9BLy48L2ZvbnQ+
PGJyPjwvZm9udD48L2Rpdj48ZGl2Pjxmb250IHNpemU9IjEiPjxicj48L2ZvbnQ+PC9kaXY+PGRp
dj48Zm9udCBzaXplPSIxIj48Zm9udCBzaXplPSIyIj5UaGUgY2FsbCBpbiBhZDkzNjFfaWZhY2Ug
ZmlsZSBpcyB0aGlzIG9uZSAod2hpY2ggY2FsbHMgdGhlIHJwY19jbGllbnQsIHRoYXQmIzM5O3Mg
d2h5IEkgdGhvdWdodCBvbiB0aGUgcHJldmlvdXMgZW1haWwgdGhhdCB0aGUgY29uZmlndXJhdGlv
biBnb2VzIHRoYXQgd2F5KTo8L2ZvbnQ+PC9mb250PjwvZGl2Pjxicj48ZGl2IHN0eWxlPSJtYXJn
aW4tbGVmdDo0MHB4Ij48Zm9udCBzaXplPSIxIj48aT52b2lkIHNldF9hZ2MoY29uc3Qgc3RkOjpz
dHJpbmcmYW1wOyB3aGljaCwgYm9vbCBlbmFibGUpPGJyPns8YnI+VUhEX0xPR19JTkZPKCZxdW90
O0FEOTM2MV9JRkFDRSZxdW90OywgJnF1b3Q7YWdjJnF1b3Q7KTs8YnI+X3JwY2MtJmd0O3JlcXVl
c3Rfd2l0aF90b2tlbiZsdDt2b2lkJmd0Oyh0aGlzLSZndDtfcnBjX3ByZWZpeCArICZxdW90O3Nl
dF9hZ2MmcXVvdDssIHdoaWNoLCBlbmFibGUpOzwvaT48L2ZvbnQ+PC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj48Zm9udCBzaXplPSIyIj5JIGFtIHJ1bm5pbmcgdGhlIHNhbWUgc291cmNlIGNvZGUg
Zm9yIGJvdGggVVNSUCYjMzk7cywgaW4gdGhlIHNhbWUgZW52aXJvbm1lbnQsIGp1c3QgY2hhbmdp
bmcgdGhlIGNvbm5lY3Rpb24gZnJvbSBvbmUgVVNSUCB0byBhbm90aGVyIGluIG15IFBDLCBzbyBJ
JiMzOTttIGFmcmFpZCB0aGlzIGlzIGFuIHNwZWNpZmljIEUzMjAgcHJvYmxlbS48L2ZvbnQ+PC9k
aXY+PGRpdj48Zm9udCBzaXplPSIyIj48YnI+PC9mb250PjwvZGl2PjxkaXY+PGZvbnQgc2l6ZT0i
MiI+S2luZCBSZWdhcmRzLDwvZm9udD48L2Rpdj48ZGl2Pjxmb250IHNpemU9IjIiPjxicj48L2Zv
bnQ+PC9kaXY+PGRpdj48Zm9udCBzaXplPSIyIj5NYXJpYTwvZm9udD48YnI+PC9kaXY+PGRpdj48
ZGl2PjxkaXY+PGZvbnQgc2l6ZT0iMSI+PGk+PC9pPjwvZm9udD48L2Rpdj48L2Rpdj48L2Rpdj48
L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJn
bWFpbF9hdHRyIj5FbCBsdW4sIDEyIGFiciAyMDIxIGEgbGFzIDk6NTUsIE1hcmlhIE11w7FveiAo
Jmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5t
YW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OykgZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90
ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9y
ZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRp
diBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGZvciB0aGUg
YW5zd2VyLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+WWVzLCBJJiMzOTttIHdvcmtpbmcgd2l0
aCB0aGUgRTMyMC4gSSYjMzk7bGwgdHJ5IHRvIGZvcmNlIHRoZSAmcXVvdDtfc2V0dXBfYWdjJnF1
b3Q7IGNvZGUgYXMgeW91IHNhaWQgYW5kIGRlYnVnIGFnYWluIHRvIHNlZSBpZiBob3BlZnVsbHks
IEkgZ2V0IHRoZSBBR0MgY29uZmlndXJlZC7CoDwvZGl2PjxkaXY+SWYgc29tZW9uZSBoYXMgY29u
ZmlndXJlZCB0aGUgRTMyMCBiZWZvcmUgSSB3aWxsIGFsc28gYXBwcmVjaWF0ZSBhbnkgaGVscCBv
biB0aGlzLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGFnYWluIGZvciB0aGUgaGVs
cDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+S2luZCBSZWdhcmRzLDwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjxkaXY+TWFyaWE8L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxk
aXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5FbCBsdW4sIDEyIGFiciAyMDIxIGEgbGFz
IDk6NDMsIEp1bGlhbiBBcm5vbGQgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Oykg
ZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxl
PSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQs
MjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+TWFyaWEsPGJyPg0KPGJyPg0KaXQganVzdCBkYXdu
ZWQgb24gbWUsIHRoYXQgeW91IGFyZSB3b3JraW5nIHdpdGggYW4gZTMyMCBub3QgYW4gZTMxMC48
YnI+DQo8YnI+DQpBbHRob3VnaCBtb3N0IG9mIHdoYXQgSSBzYWlkIHNob3VsZCBzdGlsbCBhcHBs
eSAoZXNwZWNpYWxseSBlcnZlcnl0aGluZyA8YnI+DQpyZWxhdGVkIHRvIHRoZSAoQUQ5MzZ4KSkg
dGhpbmdzIG1pZ2h0IGJlIGEgbGl0dGxlIGJpdCBkaWZmZXJlbnQuIEkmIzM5O20gPGJyPg0KZXBl
Y2lhbGx5IHVuc3VyZSBhYm91dCB0aGUgUlBDIHBhcnQsIGhlcmUuPGJyPg0KPGJyPg0KTWF5YmUg
c29tZW9uZSBlbHNlIGNhbiBjaGltZSBpbiByZWdhcmRpbmcgdGhpcyBhc3BlY3QuPGJyPg0KPGJy
Pg0KSG93ZXZlciwgSSB0aGluayB0aGF0IGBfc2V0dXBfZ2Fpbl9jb250cm9sKGZhbHNlKWAgc2hv
dWxkIHJ1biByZWdhcmRsZXNzIDxicj4NCmR1cmluZyBkZXZpY2UgaW5pdC4gU28geW91IHNob3Vs
ZCBzZWUgc29tZSBsb2dnaW5nIG91dHB1dCB0aGVyZS48YnI+DQo8YnI+DQpJZiBfc2V0dXBfYWdj
KCkgaXMgbm90IGJlZWluZyBjYWxsZWQgeW91IGNvdWxkIHRyeSB0byBmb3JjZSB0aGUgQUdDIG9u
LCA8YnI+DQpqdXN0IGZvciB2ZXJpZmljYXRpb24gcHVycG9zZXMsIGJ5IGNoYW5naW5nIGBfc2V0
dXBfZ2Fpbl9jb250cm9sKGZhbHNlKWAgPGJyPg0KdG8gYF9zZXR1cF9nYWluX2NvbnRyb2wodHJ1
ZSlgIGluIGBpbml0aWFsaXplKClgIGFuZCBgc2V0X2Nsb2NrX3JhdGUoKWAuPGJyPg0KPGJyPg0K
Q2hlZXJzLDxicj4NCkp1bGlhbjxicj4NCjxicj4NCk9uIDQvOS8yMSAzOjM0IFBNLCBKdWxpYW4g
QXJub2xkIHdyb3RlOjxicj4NCiZndDsgTWFyaWEsPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IHRoZSBw
cm9wZXJ0aWVzIHlvdSB3YW50IHRvIGNoYW5nZSAobWluL21heCB0aHJlc2hvbGRzKSBhcmUgbm90
IGV4cG9zZWQgPGJyPg0KJmd0OyB2aWEgdGhlIHByb3BlcnR5IHRyZWUuIE9ubHkgdGhlIG1vZGUg
aXMgKHNsb3cgb3IgZmFzdCkuPGJyPg0KJmd0OyBIb3dldmVyLCB0aGUgc2FtZSBjb2RlIHRoYXQg
Y29uZmlndXJlcyB0aGUgQUdDIHRoYXQgd29ya2VkIGZvciBtZSBvbiB0aGUgPGJyPg0KJmd0OyBC
MjEwIHNob3VsZCBydW4gb24gdGhlIEUzMTAuIFRoZSBSUEMgY2xpZW50IHNob3VsZCBub3QgYmUg
aW52b2x2ZWQgaW4gPGJyPg0KJmd0OyB0aGF0IGNhc2UgKGFsdGhvdWdoIEnigJltIG5vdCBzdXJl
IGFib3V0IHRoYXQpLjxicj4NCiZndDsgPGJyPg0KJmd0OyBIYXZlIHlvdSB0cmllZCBhcHBseWlu
ZyBteSBwYXRjaCBkaXJlY3RseSAoSSBoYWQgc2xpZ2h0bHkgbW9kaWZpZWQgPGJyPg0KJmd0OyBy
ZWdpc3RlciB2YWx1ZXMpLjxicj4NCiZndDsgPGJyPg0KJmd0OyBBbHNvLCBjb3VsZCB5b3UgdHJ5
IHJ1bm5pbmcgeW91ciBjb2RlIGRpcmVjdGx5IG9uIHRoZSBFMzEwIChieXBhc3NpbmcgPGJyPg0K
Jmd0OyBuZXR3b3JrZWQtbW9kZSkgdG8gc2VlIGlmIHRoYXQgbWFrZXMgYSBkaWZmZXJlbmNlPzxi
cj4NCiZndDsgPGJyPg0KJmd0OyBDaGVlcnMsPGJyPg0KJmd0OyBKdWxpYW48YnI+DQomZ3Q7IDxi
cj4NCiZndDsgPGJyPg0KJmd0OyBKdWxpYW4gQXJub2xkLCBNLlNjPGJyPg0KJmd0OyA8YnI+DQom
Z3Q7Jmd0OyBBbSAwOS4wNC4yMDIxIHVtIDA5OjQ4IHNjaHJpZWIgTWFyaWEgTXXDsW96ICZsdDs8
YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtp
OTJAZ21haWwuY29tPC9hPiZndDs6PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyDvu788YnI+
DQomZ3Q7Jmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyBTb3JyeSBm
b3IgdGhlIGxhdGUgcmVwbHkgYW5kIHRoYW5rcyBmb3IgdGhlIGFuc3dlci48YnI+DQomZ3Q7Jmd0
Ozxicj4NCiZndDsmZ3Q7IEkgaGF2ZSBiZWVuIGRlYnVnZ2luZyB0aGUgY29uZmlndXJhdGlvbiBw
cmludGluZyB0aGUgZW50cmllcyBvZiA8YnI+DQomZ3Q7Jmd0OyAmcXVvdDtzZXRfYWdjJnF1b3Q7
IHRoYXQgSSBoYXZlIGZvdW5kIG9uIGNwcC9weSBmaWxlcyBpbiB0aGUgdWhkIGRyaXZlciBhbmQg
PGJyPg0KJmd0OyZndDsgZXR0dXMgcmVwb3NpdG9yaWVzLCBhbmQgSSBjYW4gY29uZmlybSB0aGF0
IHRoZSBjb2RlIGlzIG5vdCBnZXR0aW5nIHRvIDxicj4NCiZndDsmZ3Q7IHRoZSBhZDkzNjFfZGV2
aWNlLmNwcCBhcyBJIHRob3VnaHQgaW4gdGhlIGJlZ2lubmluZy48YnI+DQomZ3Q7Jmd0Ozxicj4N
CiZndDsmZ3Q7IElmIEkgZ28gdGhyb3VnaCB0aGUgY29kZSBmcm9tIG15IHB5dGhvbiBzY3JpcHQg
dG8gdGhlIDxicj4NCiZndDsmZ3Q7IGFkOTM2MV9kZXZpY2UuY3BwIGNvbmZpZ3VyYXRpb24gZmls
ZSBJIHNlZSB0aGUgZm9sbG93aW5nOjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCog
VGhlIHB5dGhvbiBzY3JpcHRzIGNhbGxzIGZvciBldHR1cy5yZm5vY19yeF9yYWRpby5zZXRfYWdj
IG1ldGhvZCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgd2hpY2ggaXMgZm91bmQgaW4gZXR0dXMgcmVw
b3NpdG9yeSAoZm9yIHVzcnBfc291cmNlIGlzIG9uPGJyPg0KJmd0OyZndDvCoCDCoCDCoGdudXJh
ZGlvL3VoZCBsaWIpPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgKiBUaGUgcmZub2Nf
cnhfcmFkaW8gY2xhc3MgaXMgZGVmaW5lZCBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBnci1ldHR1
cy9saWIvcmZub2NfcnhfcmFkaW9faW1wbC5oLCB3aGVyZSB0aGVyZSBpcyBhbHNvIGEgcG9pbnRl
cjxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0byB0aGUgcmFkaW9fY29udHJvbCBjbGFzcyBkZWZpbmVk
Ojxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoC9jbGFzcyByZm5vY19y
eF9yYWRpb19pbXBsIDogcHVibGljIHJmbm9jX3J4X3JhZGlvPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoHs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgcHVibGljOjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqDCoCDCoCByZm5vY19yeF9yYWRpb19pbXBsKDo6dWhkOjovL3Jmbm9jOjpu
b2NfYmxvY2tfYmFzZTo6c3B0cjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBibG9ja19yZWYp
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB+cmZub2NfcnhfcmFkaW9faW1wbCgp
Ozxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIC8qKiogQVBJ
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
Ki8vKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLy8qKioqKi88YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgwqAgwqAgZG91YmxlIHNldF9yYXRlKGNvbnN0IGRvdWJsZSByYXRlKTs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfYW50ZW5uYShjb25zdCBzdGQ6
OnN0cmluZyZhbXA7IGFudGVubmEsIGNvbnN0IHNpemVfdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgZG91YmxlIHNldF9m
cmVxdWVuY3koY29uc3QgZG91YmxlIGZyZXF1ZW5jeSwgY29uc3Qgc2l6ZV90PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2
b2lkIHNldF90dW5lX2FyZ3MoY29uc3QgOjp1aGQ6OmRldmljZV9hZGRyX3QmYW1wOyBhcmdzLCBj
b25zdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBzZXRfZ2Fpbihjb25zdCBkb3VibGUgZ2Fpbiwg
Y29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBkb3Vi
bGUgc2V0X2dhaW4oY29uc3QgZG91YmxlIGdhaW4sIGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgbmFtZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9hZ2MoY29uc3QgYm9vbCBlbmFibGUs
IGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9p
ZCBzZXRfZ2Fpbl9wcm9maWxlKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsgcHJvZmlsZSwgY29uc3Q8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgc2l6ZV90IGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqDCoCDCoCBkb3VibGUgc2V0X2JhbmR3aWR0aChjb25zdCBkb3VibGUgYmFuZHdp
ZHRoLCBjb25zdCBzaXplX3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgY2hhbik7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgwqAgwqAgc2V0X2xvX3NvdXJjZShjb25zdCBzdGQ6OnN0cmluZyZhbXA7IHNvdXJjZSwgY29u
c3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgc3RkOjpzdHJpbmcmYW1wOyBuYW1lLCBjb25z
dCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQ8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgc2V0X2xvX2V4cG9ydF9lbmFibGVkKGNvbnN0
IGJvb2wgZW5hYmxlZCwgY29uc3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgc3RkOjpzdHJp
bmcmYW1wOyBuYW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoMKgIMKgIGRvdWJsZSBzZXRfbG9fZnJlcShjb25zdCBkb3VibGUgZnJlcSwgY29uc3Qgc3Rk
OjpzdHJpbmcmYW1wOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBuYW1lLCBjb25zdCBzaXpl
X3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X2RjX29m
ZnNldChjb25zdCBib29sIGVuYWJsZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9kY19vZmZzZXQoY29uc3Qgc3RkOjpjb21wbGV4
Jmx0O2RvdWJsZSZndDsmYW1wOyBvZmZzZXQsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoGNv
bnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBz
ZXRfaXFfYmFsYW5jZShjb25zdCBib29sIGVuYWJsZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9pcV9iYWxhbmNlKGNvbnN0IHN0
ZDo6Y29tcGxleCZsdDtkb3VibGUmZ3Q7JmFtcDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
Y29ycmVjdGlvbiwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoHByaXZhdGU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKg
IDo6dWhkOjpyZm5vYzo6cmFkaW9fY29udHJvbDo6Ly9zcHRyIGRfcmFkaW9fcmVmOzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqB9Oy88YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAq
IEluIGdyLWV0dHVzL2xpYi9yZm5vY19yeF9yYWRpb19pbXBsLmNwcCB3aGVuIHNldF9hZ2MgY29t
bWFuZCBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqByZWNlaXZlZCwgaXQgcmV0dXJucyBhIGNhbGwg
dG8gdGhlIHBvaW50ZXIgSSBtZW50aW9uIGJlZm9yZSwgYW5kPGJyPg0KJmd0OyZndDvCoCDCoCDC
oHRoZXJlZm9yZSwgdG8gdGhlIHJhZGlvX2NvbnRyb2wgY2xhc3M6PGJyPg0KJmd0OyZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgL3ZvaWQgcmZub2NfcnhfcmFkaW9faW1wbDo6c2V0X2Fn
YygvL2NvbnN0IGJvb2wgZW5hYmxlLCBjb25zdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBz
aXplX3QgY2hhbik8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqDCoCDCoCByZXR1cm4gZF9yYWRpb19yZWYtJmd0O3NldF9yeF9hZ2MoLy9lbmFi
bGUsIGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqB9Lzxicj4NCiZndDsmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCogVGhlIHJhZGlvX2NvbnRyb2wgY2xhc3MgaXMgZm91bmQgaW4gdGhl
IFVIRCBkcml2ZXIgcmVwb3NpdG9yeSBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqB1aGQvaG9zdC9p
bmNsdWRlL3VoZC9yZm5vYy9yYWRpb19jb250cm9sLmhwcCB3aGljaCBpcyB2aXJ0dWFsbHk8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgaW1wbGVtZW50ZWQgYXMgcmFkaW9fY29udHJvbF9pbXBsIGNsYXNz
IGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoGUzeHhfcmFkaW9fY29udHJvbF9pbXBsLmNwcCAoaG9z
dC9saWIvdXNycC9ib2FyZC9lM3h4KTxicj4NCiZndDsmZ3Q7wqAgwqAqIFRoaXMgZmlsZSBjYWxs
cyB0byB0aGUgYWQ5MzYxX2N0cmwgY2xhc3Mgd2hpY2ggaXMgaW1wbGVtZW50ZWQgaW48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgZTN4eF9hZDkzNjFfaWZhY2UuY3BwIChob3N0L2xpYi91c3JwL2JvYXJk
L2UzeHgpPGJyPg0KJmd0OyZndDvCoCDCoCogQXQgdGhpcyBwb2ludCwgdGhlcmUgaXMgYSBjYWxs
IGZvciB0aGUgcnBjX2NsaWVudCB3aGVyZSBJIGdldCBraW5kPGJyPg0KJmd0OyZndDvCoCDCoCDC
oG9mIGxvc3QgYWJvdXQgaG93IHRvIGNoYW5nZSB0aGUgcmVnaXN0ZXJzIHRoaXMgd2F5Ojxicj4N
CiZndDsmZ3Q7PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgL3ZvaWQg
c2V0X2FnYyhjb25zdCBzdGQ6OnN0cmluZyZhbXA7IHdoaWNoLCBib29sIGVuYWJsZSk8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBfcnBjYy0m
Z3Q7cmVxdWVzdF93aXRoX3Rva2VuJmx0O3ZvaWQmZ3Q7KHRoaXMtJmd0O19ycGNfcHJlZml4ICsg
JnF1b3Q7c2V0X2FnYyZxdW90Oyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgd2hpY2gsIGVu
YWJsZSk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoH0vPGJyPg0KJmd0OyZndDs8YnI+DQom
Z3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsgVG8gYmUgYnJpZWY6PGJyPg0KJmd0
OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgKiBXaGVuIGRlYnVnZ2luZyBJIGNhbiYjMzk7dCBzZWUg
dGhhdCBteSBjb2RlIGdldHMgdG8gdGhlIG9ubHk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgY29uZmln
dXJhdGlvbiBmaWxlIEkgZm91bmQgd2hpY2ggaXMgdGhlIGFkOTM2MV9kZXZpY2UuY3BwPGJyPg0K
Jmd0OyZndDvCoCDCoCogVGhlIHNldF9hZ2MgY29tbWFuZCBzZWVtcyB0byBiZSBtYW5hZ2UgdGhy
b3VnaCB0aGUgcnBjX2NsaWVudCAoSTxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aGluayB0aGlzIGlz
IHJlbGF0ZWQgdG8gdGhlIG1vZHVsZSBwZXJpcGhlcmFsIG1hbmFnZXIgd2hpY2ggaXMgYTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmcXVvdDtsYXllciBvZiBjb250cm9sIHRoYXQgVUhEIHVzZXMgdG8g
YWNjZXNzLCBjb25maWd1cmUgYW5kIGNvbnRyb2w8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhlIGhh
cmR3YXJlJnF1b3Q7LCA8YSBocmVmPSJodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFn
ZV9tcG0uaHRtbCIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9maWxl
cy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfbXBtLmh0bWw8L2E+KTxicj4NCiZndDsmZ3Q7wqAgwqAq
IEluc2lkZSB0aGUgY29kZSwgaW4gbXVsdGlfdXNycCBmaWxlcyB0aGVyZSBpcyBhIGNvbW1lbnQg
dGhhdCB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgc3BlY2lmaWMgY29uZmlndXJhdGlvbiBvZiB0
aGUgQUdDIGlzIHNldCBpbiB0aGUgcHJvcGVydHlfdHJlZSBidXQ8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgSSBkb24mIzM5O3Qga25vdyBob3cgdG8gd3JpdGUgdGhlIGNvbmZpZ3VyYXRpb24gcmVnaXN0
ZXJzIG9mIHRoZSBhZ2M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhyb3VnaCB0aGUgcHJvcGVydHlf
dHJlZS48YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsgU28gbXkgcXVl
c3Rpb25zIGhlcmUgYXJlOjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCAxLiBIb3cgY2Fu
IEkgc2V0IHRoZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyBvZiB0aGUgQUdDLCB0aHJvdWdoIHRo
ZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBNUE0gb3IgdGhlIHByb3BlcnR5IHRyZWU/PGJyPg0KJmd0
OyZndDvCoCAyLiBBcmUgdGhlcmUgZXhhbXBsZXMgb24gaG93IEkgY2FuIHNldCB0aGVzZSByZWdp
c3RlcnMgdGhyb3VnaCB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgTVBNIG9yIHRoZSBwcm9wZXJ0
eV90cmVlPyA8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsgS2luZCBS
ZWdhcmRzLDxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsgTWFyaWE8YnI+DQomZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7IEVsIG1pw6ksIDI0IG1hciAyMDIxIGEgbGFzIDExOjIwLCBKdWxpYW4gQXJu
b2xkIDxicj4NCiZndDsmZ3Q7ICgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoE1hcmlhLDxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoHRoYXQgc291bmRzIGFib3V0IHJpZ2h0ITxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBIb3dldmVyLCB0byBtYWtlIGFic29sdXRlbHkgc3VyZSBHTlUgUmFkaW8gcGlja3MgdXAgdGhl
IG1vZGlmaWVkPGJyPg0KJmd0OyZndDvCoCDCoCDCoGxpYnVoZDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqB5b3UgY291bGQgYWRkIGEgcHJpbnQgc3RhdGVtZW50IHNvbWV3aGVyZSBpbiB5b3VyIFVIRCBj
b2RlLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBZb3UgY291bGQgYWxzbyBjb21wYXJlIHlvdXIgVUhE
IGluc3RhbGwgcHJlZml4IHRvIHRoZSBwYXRoIGdyLXVoZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB1
c2VzIGZvciBsaW5raW5nIGxpYnVoZC48YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBCZWxvdyBpcyB0aGUgcGF0Y2ggSSB1c2VkIGZvciBteSB0ZXN0czo8YnI+DQomZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqBkaWZmIC0tZ2l0IGEvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5
MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBiL2hvc3Qv
bGliL3VzcnAvY29tbW9uL2FkOTM2MV9kcml2ZXIvYWQ5MzYxX2RldmljZS5jcHA8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgaW5kZXggOWUwODg4NzFkLi4wZTViYzg2YzUgMTAwNjQ0PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoC0tLSBhL2hvc3QvbGliL3VzcnAvY29tbW9uL2FkOTM2MV9kcml2ZXIvYWQ5MzYx
X2RldmljZS5jcHA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgKysrIGIvaG9zdC9saWIvdXNycC9jb21t
b24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBA
QCAtMTA4OSw3ICsxMDg5LDcgQEAgdm9pZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBhZDkzNjFfZGV2
aWNlX3Q6Ol9zZXR1cF9nYWluX2NvbnRyb2woYm9vbCBhZ2MpPGJyPg0KJmd0OyZndDvCoCDCoCDC
oMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgwRkQsIDB4NEMpOyAvLyBNYXgg
RnVsbC9MTVQgR2Fpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBUYWJsZSBJbmRleDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MEZFLCAweDQ0
KTsgLy8gRGVjciBTdGVwIFNpemUsIFBlYWs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgT3ZlcmxvYWQg
VGltZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bv
a2U4KDB4MTAwLCAweDZGKTsgLy8gTWF4IERpZ2l0YWwgR2Fpbjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAtwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMSwgMHgwQSk7IC8vIE1heCBE
aWdpdGFsIEdhaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgK8KgIMKgIMKgIMKgIF9pb19pZmFjZS0m
Z3Q7cG9rZTgoMHgxMDEsIDB4MDIpOyAvLyBNYXggRGlnaXRhbCBHYWluPGJyPg0KJmd0OyZndDvC
oCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDMsIDB4MDgpOyAv
LyBNYXggRGlnaXRhbCBHYWluPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9p
b19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDQsIDB4MkYpOyAvLyBBREMgU21hbGwgT3ZlcmxvYWQ8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgVGhyZXNob2xkPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKg
IMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDUsIDB4M0EpOyAvLyBBREMgTGFyZ2UgT3Zl
cmxvYWQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgVGhyZXNob2xkPGJyPg0KJmd0OyZndDvCoCDCoCDC
oEBAIC0xMDk4LDE0ICsxMDk4LDE0IEBAIHZvaWQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgYWQ5MzYx
X2RldmljZV90Ojpfc2V0dXBfZ2Fpbl9jb250cm9sKGJvb2wgYWdjKTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTA4LCAweDMxKTs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEx
MSwgMHgwQSk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0m
Z3Q7cG9rZTgoMHgxMUEsIDB4MUMpOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAtwqAgwqAgwqAgwqAg
X2lvX2lmYWNlLSZndDtwb2tlOCgweDEyMCwgMHgwQyk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCvC
oCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTIwLCAweDA0KTs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyMSwgMHg0NCk7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgo
MHgxMjIsIDB4NDQpOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZh
Y2UtJmd0O3Bva2U4KDB4MTIzLCAweDExKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAg
wqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyNCwgMHhGNSk7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjUsIDB4M0IpOzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTI4
LCAweDAzKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgLcKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7
cG9rZTgoMHgxMjksIDB4NTYpOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqArwqAgwqAgwqAgwqAgX2lv
X2lmYWNlLSZndDtwb2tlOCgweDEyOSwgMHgxMSk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKg
IMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMkEsIDB4MjIpOzxicj4NCiZndDsmZ3Q7
wqAgwqAgwqDCoCDCoCDCoCB9IGVsc2Ugezxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDC
oCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MEZBLCAweEUwKTsgLy8gR2FpbiBDb250cm9sIE1v
ZGUgU2VsZWN0PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBDaGVlcnMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoEp1bGlhbjxicj4NCiZndDsmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoE9uIDMvMjQvMjEgOTo1OSBBTSwgTWFyaWEgTXXDsW96IHdyb3RlOjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEkgaGF2ZSB0aGUgY2hhbmNlIHRvIHRlc3Qg
dGhlIEFHQyB3aXRoIGEgQjIxMCBhbmQgcGVyZm9ybSB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
c2FtZSBncmFwaDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IGFzIHlvdSBzZW5kIG1lIGJ1dCBJ
IGFtIHVuYWJsZSB0byBzZWUgd2hhdCB5b3Ugc2F3IHNvIEkgdGhpbmsgSSYjMzk7bTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7IG1pc3Npbmcgc29tZXRoaW5nLjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7IEkgYWxzbyBoYXZlIFVIRCA0LjAgYW5kIEdOVVJhZGlvIDMuOCAoaW5zdGFsbGVkIGJ5
IHNvdXJjZSkuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0OyBUaGUgc3RlcHMgSSB0YWtlIGFyZSB0aGVzZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIEZpcnN0LCBJIGNoYW5nZSB0aGUgYWQ5
MzYxX2RldmljZS5jcHAgdGhhdCBpcyBpbiB1aGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgcmVwb3Np
dG9yeSBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAvL3VoZC9ob3N0L2xpYi91
c3JwL2NvbW1vbi9hZDkzNjFfZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwLDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqByZWdpc3RlcnMgMHgxMDEsIDB4MTIwLCAweDEyOSwgMHgxMjMg
YW5kIDB4MTJBLi88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgKiBUaGVuLCBJIGRvICZx
dW90O21ha2UmcXVvdDsgYW5kICZxdW90O21ha2UgaW5zdGFsbCZxdW90OyB0byBjb21waWxlIHRo
ZSBjaGFuZ2VzIGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoGJ1aWxkLWhvc3Qg
Zm9sZGVyLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIEFmdGVywqB0aGF0LCBJIGdl
bmVyYXRlIHRoZSBweXRob24gc2NyaXB0IGZvciB0aGUgR1JDIGZsb3c8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgZ3JhcGggYW5kPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoG1vdmUgdGhl
ICZxdW90O3NldF9hZ2MmcXVvdDsgY29tbWFuZCBhZnRlciB0aGUgJnF1b3Q7c2V0X3JhdGUmcXVv
dDsgb25lLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIEZpbmFsbHksIEkgcnVuIHRo
ZSBweXRob24uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0OyBJIGNhbiYjMzk7dCBzZWUgbXkgd2F2ZWZvcm0gYmV0d2VlbiB0aGUgdmFsdWVzIEkgc2V0
LiBJcyB0aGVyZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzb21ldGhpbmc8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0OyB3cm9uZyB3aXRoIHRob3NlIHN0ZXBzPyBEaWQgeW91IGRvIGFueXRoaW5nIGVs
c2U/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBL
aW5nwqBSZWdhcmRzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDsgTWFyaWE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7IC88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyAvPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBFbCBtYXIsIDIzIG1hciAyMDIxIGEg
bGFzIDk6MjMsIE1hcmlhIE11w7FveiAoJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29t
IiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgSGkgSnVsaWFuLDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoFRoYW5r
cyBmb3IgdGhlIGNoZWNraW5nITxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoEkgaGF2ZSBhbHNvIGNoZWNrZWQgbXkgZ3JhcGggYW5kIHNh
bXBfcmF0ZSBpcyBzZXR0aW5nIGZpcnN0LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzbyBJJiMzOTts
bDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqB0cnkgdG8gdGVzdCBpdCB3aXRoIGEg
c2luZSB3YXZlZm9ybSBhcyB5b3Ugc3VnZ2VzdGVkIGFuZCBzZWU8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgaWYgdGhhdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqB3b3Jrcy4gSWYgbm90
LCBtYXliZSBpcyBhbiBSRk5vQy9nci1ldHR1cyBwcm9ibGVtLiBJJiMzOTtsbCBwdXQ8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgYW4gaXNzdWU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
aW4gdGhlIGdyLWV0dHVzIHJlcG9zaXRvcnkgaW4gdGhhdCBjYXNlLjxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoFRoYW5rcyBhZ2FpbiBm
b3IgeW91ciBoZWxwLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBNYXJpYS48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBFbCBtYXIsIDIzIG1hciAy
MDIxIGEgbGFzIDA6MzYsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
PiZndDsmZ3Q7Jmd0Oyk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZXNjcmliacOzOjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE1h
cmlhLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoEkgY291bGRuJiMzOTt0IHJlc2lzdCB0cnlpbmcgdGhpcyBteXNlbGYsIGFz
IHlvdXI8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgbW9kaWZpY2F0aW9ucyBzZWVtZWQ8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgcmVhc29uYWJsZS48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBTbyBJIGRp
ZCBzZXQgdXAgYSBzaW1wbGUgdGVzdCB3aXRoIGEgYjIxMCBjb25uZWN0ZWQgdG88YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgbXkgc2lnZ2VuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoGZlZWRpbmc8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaXQgd2l0
aCBhIHRvbmUgb2YgdmFyeWluZyBwb3dlciBhdCAyLjQxMDJHSHouPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgRm9yIHRoZSBk
ZWZhdWx0IFVIRCBBR0Mgc2V0dGluZ3MgSSBjb3VsZCBjb25maXJtIHRoYXQ8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgdGhlIHNpZ25hbDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqB3YXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKga2VwdCBiZXR3ZWVu
IC0xMCBkQkZTIGFuZCAtMTIgZEJGUyAoMjAgKiBsb2cxMCh8eHwpIG92ZXIgYTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBwcmV0dHkgd2lkZTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBpbnB1dCBwb3dlciByYW5nZS48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVGhpcyB3YXMgdXNpbmcgR1IgMy44IGFuZCBVSEQgNC4w
Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoEhvd2V2ZXIsIEkgaGFkIHRvIG1vZGlmeSB0aGUgZ2VuZXJhdGUgZmxvdy1ncmFw
aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzbGlnaHRseSwgYXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgdGhlIEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqB3YXMgZW5hYmxlcyBiZWZvcmUgdGhlIHNhbXBsZS1yYXRlIHdhcyBzZXQgKG1heWJl
IGRvdWJsZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjaGVjazxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqB0aGF0LCB0b28pLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEFmdGVyd2FyZHMsIEkgdXNlZCB5
b3VyIHNldHRpbmdzIChJIGRpZCBjaGFuZ2UgcmVnIDB4MTI5PGJyPg0KJmd0OyZndDvCoCDCoCDC
oHRvIDB4MTE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKDFkQjxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqArLSksIHRob3VnaCkuPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEFsc28gdGhvc2Ugc2V0dGluZ3Mgd29ya2Vk
IGFzIGV4cGVjdGVkIGFuZCB0aGUgc2lnbmFsPGJyPg0KJmd0OyZndDvCoCDCoCDCoHdhcyBuaWNl
bHk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKga2VwdDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBiZXR3ZWVuIC0yIGRCRlMgYW5kIC00IGRCRlMu
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgQXR0YWNoZWQgaXMgYSBwaWN0dXJlIG9mIHRoZSBmbG93LWdyYXBoIEkgdXNlZCBm
b3IgdGVzdGluZy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTWF5YmUg
eW91PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvdWxkIGFsc28gc3Rh
cnQgYnkgdGVzdGluZyB3aXRoIGEgc2luZSB3YXZlIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoHZl
cmlmeWluZyB0aGF0IHlvdXI8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
dmFsdWVzIGdldCBhcHBsaWVkIHByb3Blcmx5Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgT24gMy8yMi8yMSA2OjIx
IFBNLCBNYXJpYSBNdcOxb3ogd3JvdGU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
U3VyZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSSBhbSByZWNlaXZpbmcgYSBR
UFNLIHRocm91Z2ggdGhlIHJhZGlvIGFuZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBwbG90dGluZ8Kg
aXQgaW4gYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBRVCBncmFwaDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAoc2VlIGdyYy5wbmcp
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IElmIEkgaGF2ZSBB
R0MgZGlzYWJsZSwgSSBnZXQgd2hhdCBpcyBzaG93biBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAmcXVvdDt0ZXN0X3dpdGhvdXRfYWdjLnBuZyZxdW90Oyw8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdGhlbiBpZiBJIGVuYWJsZSBp
dCwgSSBzZWUgd2hhdCBpcyBvbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmcXVvdDt0ZXN0X3dpdGhf
YWdjLnBuZyZxdW90OyB3aGVyZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyAmcXVvdDtRdWFkcmF0dXJlJnF1b3Q7IGlzIGFsd2F5cyBjZW50ZXIgbW9yZSBvciBs
ZXNzIGluIDAuMjUgd2hpY2g8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
bWlnaHQgZml0IHdpdGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsgdGhlIHZhbHVlcyBnaXZlbiBieSBkZWZhdWx0IChpbm5lciBoaWdoIHRocmVzaG9sZCA9PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoC0xMmRCRlMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoGlubmVyIGxvdzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyB0aHJlc2hvbGQgPSAtMTAgZEJGUykuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7IElmIEkgY2hhbmdlIHRoZSBhZDkzNjFfZGV2aWNlLmNwcCAoYXR0YWNoZWQpIGZyb208
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgbGluZSAxMDg1LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBieSBjaGFuZ2luZzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyByZWdpc3RlcnMgMHgxMDEsIDB4MTIwIGFuZCAweDEyOSB3aXRoIHZhbHVl
cyAweDAyLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAweDA0IGFuZCAweDE2PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHJlc3BlY3RpdmVseSB0byBtb3ZlIGJldHdl
ZW4gLTJkYkZTIGFuZCAtNCBkQkZTLMKgIEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgc2VlIHRoZSBz
YW1lPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHdhdmVmb3Jt
IHRoYXQgSSBoYXZlIGluICZxdW90O3Rlc3Rfd2l0aF9hZ2MucG5nJnF1b3Q7IChJIGV4cGVjdDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqBpdCB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBiZSBhcm91bmQgMC43KTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBL
aW5kIHJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEVsIGx1biwgMjIgbWFyIDIwMjEgYSBsYXMgMTc6
NDUsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
KCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVj
b2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7
Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoHdv
dWxkIHlvdSBtaW5kIHNoYXJpbmcgeW91ciBwYXRjaD8gT3RoZXJ3aXNlLDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqBpdOKAmXMgaGFyZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqB0byB0ZWxsIHdoYXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoGV4YWN0bHkgaXMgZ29pbmcgb24uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqBBbSAyMi4wMy4yMDIxIHVtIDE2OjI0IHNjaHJpZWIgTWFyaWEgTXXDsW96PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDs8YSBocmVmPSJtYWlsdG86
bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9h
PiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0i
X2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11
a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0
OyZndDsmZ3Q7Jmd0Ozo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKg77u/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgSGkgSnVsaWFuLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqBJIHJlLW9wZW4gdGhpcyB0b3BpYyB0byBhc2sgYSBxdWVzdGlvbiBhYm91dCB0
aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY29uZmlndXJhdGlvbiBv
Zjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oHRoZSBhZDkzNjEgcmVnaXN0ZXJzIGluIEdOVXJhZGlvL1JGTm9DPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEFzIEkgdW5kZXJzdGFuZCwgd2hlbiBBR0Mg
aXMgZW5hYmxlZMKgaW4gc2xvdzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBtb2RlLCB0aGVyZTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhcmUgNDxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNvbmZpZ3VyYWJsZSB0aHJl
c2hvbGRzIChpbm5lciBsb3csIGlubmVyIGhpZ2gsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoG91dGVywqBsb3csIGFuZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoG91dGVywqBoaWdoKSBhbmQgYWxzbyA0IGNvbmZp
Z3VyYWJsZSBzdGVwcyB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqByZWFjaCB0aGUgem9uZTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGJldHdl
ZW7CoHRoZSBpbm5lciB0aHJlc2hvbGRzLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqBJIGhhdmUgZm91bmQgdGhlIGNvbmZpZ3VyYXRpb24gb2YgdGhlc2Ug
cmVnaXN0ZXJzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgaW7CoC91aGQvaG9zdC9saWIvdXNycC9jb21t
b24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGFuZMKgY2hhbmdlZCB0aGVpciB2YWx1
ZXMgdGhlcmUuIFRoZW4sIEkgaGF2ZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqByZWNvbXBpbGVkPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHVoZCAobWFrZTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZhbXA7IG1ha2Ug
aW5zdGFsbCkgYnV0LCB3aGVuIEkgcmUtcnVuIG15IGdyYXBoIEkgc2VlIG5vPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNoYW5nZSBpbiBteTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHdhdmVmb3JtIChpdCBzZWVt
IHRvIHN0YXkgaW4gdGhlIHNhbWUgbGltaXRzIGFzPGJyPg0KJmd0OyZndDvCoCDCoCDCoHRoZSBk
ZWZhdWx0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgY29uZmlndXJhdGlvbikuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoEFtIEkgbWlzc2luZ8KgYW55wqBvdGhlcsKgc3RlcCB0aGF0IEkgaGF2ZSB0
byBkb25lwqB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb25maWd1
cmUgdGhlc2U8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqBwYXJhbWV0ZXJzPzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoEVsIHZpZSwgMTIgbWFyIDIwMjEgYSBsYXMgMTA6MDQsIE1hcmlhIE11w7Fv
ejxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1h
aWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5j
b208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29t
IiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7
KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoE9rIEp1bGlhbiwgSSB3aWxsIGNoZWNrIHRoZSB0cmVlIG5vZGUgYW5kIHRyeSB0
bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBtb2RpZnkgdGhlPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
cHJvcGVydGllcy4gVGhhbmtzIGFnYWluIGZvciB0aGUgaGVscCE8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgS2luZCBSZWdhcmRzLDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoE1h
cmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oEVsIGp1ZSwgMTEgbWFyIDIwMjEgYSBsYXMgMTg6MjYsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0
OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZn
dDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPiZndDsmZ3Q7Jmd0OyZndDspPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgZXNjcmliacOzOjxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBNYXJpYSw8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgL3NlbGYuZXR0dXNf
cmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKEZhbHNlLCAwKS88YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGJ1dCBJIGhhdmUgcmVjZWl2ZWQgdGhlIGZvbGxvd2luZzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqBlcnJvclRoYXQmIzM5O3M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgd2h5IEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBnYXZlIHRoZSByZWZlcmVuY2UgKFsx
XSkgc2hvd2luZyB0aGUgY29ycmVjdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBzeW50YXggOyk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBBbnl3YXlzLCBnbGFkIGl0IHdvcmtlZCBvdXQgZm9y
IHlvdSE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBZb3UgbWlnaHQgY29uc2lkZXIgZmlsaW5nIGEgYnVnIGlzc3VlPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoGFnYWluc3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgZ3ItZXR0dXMgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBnaXRodWIuPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEJ5IHRo
ZSB3YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhlcmUgYXJlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHNldmVyYWwgbW9kZXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmb3IgQUdDPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyZndDsgKGZhc3Qsc2xvdyxoeWJyaWQuLikgSSB3YXMgd29uZGVyaW5nPGJyPg0KJmd0
OyZndDvCoCDCoCDCoHdoaWNoPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oHR5cGUgaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRlZCBieTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGRl
ZmF1bHQgYW5kIGlmIGl0IGlzIHBvc3NpYmxlIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoGNoYW5n
ZSBBR0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbW9kZSBpbiB0aGU8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBmbG93Z3JhcGguPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgVGhvc2UgbW9kZXMgd2VyZSBtYWlubHkg
ZGljdGF0ZWQgYnkgdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoEFEOTM2MS48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgRGVmYXVsdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNob3VsZCBiZTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZxdW90O3Nsb3cmcXVvdDsuIFRoZSAmcXVvdDtoeWJyaWQmcXVvdDsgbW9kZSBp
cyBub3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgaW1wbGVtZW50ZWQgYXM8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZmFyIGFzIEkga25vdy48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBXaGljaCBt
b2RlIHlvdSB3YW50ICgmcXVvdDtzbG93JnF1b3Q7IC8gJnF1b3Q7ZmFzdCZxdW90Oyk8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgZGVwZW5kcyBvbiB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzaWduYWwgeW91IHdhbnQg
dG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqByZWNlaXZlLiBGb3IgYnVyc3QtbW9kZSBkaWdpdGFsIHNpZ25hbHMgeW91
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1pZ2h0IHdhbnQgdG88YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBzd2l0Y2ggdG8gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7ZmFzdCZxdW90OyBtb2RlLjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoEhvd2V2ZXIsIEkgdGhpbmsgdGhpcyBpcyBvbmx5IHBvc3NpYmxlIGJ5PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGRpcmVjdGx5IHdyaXRpbmc8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqB0byB0aGUgY29ycmVzcG9uZGluZyBwcm9wZXJ0eS10cmVlIG5vZGUuPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoEFnYWluLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBJ
JiMzOTttIG5vdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoHN1cmUgYWJvdXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBVSEQtNC4wL2dyLWV0
dHVzIHRob3VnaC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEp1bGlhbjxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgT24gMy8xMS8yMSA1OjI2IFBNLCBN
YXJpYSBNdcOxb3ogd3JvdGU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgSSBoYXZlIGluaXRpYWxseSBjaGFuZ2VkIHRoZSBweXRob248
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZ2VuZXJhdGVkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoGZvciBteTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaCB3aXRoIHRoaXM8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7IGxpbmU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgL3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKEZhbHNl
LCAwKS88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBidXQgSSBoYXZlIHJlY2VpdmVk
IHRoZSBmb2xsb3dpbmcgZXJyb3I6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgVC9y
YWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgRmls
ZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmcXVvdDtjb25zdGVsbGF0aW9uX3NvZnRfZGVjb2Rlci5w
eSZxdW90OywgbGluZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAzMDEs
IGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmx0O21vZHVsZSZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgbWFp
bigpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJnF1b3Q7
Y29uc3RlbGxhdGlvbl9zb2Z0X2RlY29kZXIucHkmcXVvdDssIGxpbmU8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMjc3LCBpbiBtYWluPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIHRiID0gdG9wX2Jsb2NrX2NscygpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGU8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJnF1b3Q7Y29uc3RlbGxhdGlvbl9zb2Z0X2RlY29kZXIucHkmcXVvdDss
IGxpbmU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMTY2LCBpbjxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoF9faW5pdF9fPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhUcnVl
LCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgQXR0cmlidXRlRXJyb3I6ICYjMzk7cmZub2NfcnhfcmFkaW9f
c3B0ciYjMzk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoG9iamVjdDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXMgbm88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBhdHRyaWJ1dGUgJiMzOTtzZXRf
cnhfYWdjJiMzOTsvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQnV0IHJmbm9jX3Jh
ZGlvX2ltcGwuY2MgZGVmaW5lcyBpdDo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAv
dm9pZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqByZm5vY19yeF9yYWRpb19pbXBsOjpzZXRfYWdjKGNv
bnN0IGJvb2w8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZW5hYmxlLDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoGNvbnN0IHNpemVfdCBjaGFuKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgezxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCByZXR1cm48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZF9yYWRpb19yZWYtJmd0
O3NldF9yeF9hZ2MoZW5hYmxlLCBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IH0vPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgU2VhcmNoaW5nIHRoZSByZm5vY19yeF9yYWRpb19zcHRyIHdp
dGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZ3JlcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqB0YWtlcyBtZSB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3N3aWcmcXVvdDsgZmlsZXMu
IEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7IGhhdmUgbG9va2VkIGF0IGV0dHVzX3N3aWcucHkgYW5kIHNlZW48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhhdCB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgY29tbWFuZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG5hbWUgaXMgc2V0X2FnYzxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsgaW5zdGVhZCBvZiBzZXRfcnhfYWdjOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7IC9kZWYgc2V0X2FnYyhzZWxmLCBlbmFibGU6ICZxdW90O2Jvb2w8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgY29uc3QmcXVvdDssIGNoYW46PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZxdW90O3NpemVfdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0JnF1b3Q7KSAtJmd0OyAmcXVvdDt2
b2lkJnF1b3Q7Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCByJnF1b3Q7JnF1b3Q7JnF1
b3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIHNldF9hZ2MocmZub2NfcnhfcmFkaW8g
c2VsZiwgYm9vbDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb25zdCBl
bmFibGUsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgc2l6ZV90IGNvbnN0IGNoYW4pPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgIEVuYWJsZS9kaXNhYmxlIHRoZSBBR0MgZm9yPGJyPg0KJmd0OyZndDvCoCDCoCDC
oHRoaXMgUlg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgcmFkaW8gKGlm
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgYXZhaWxhYmxlKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmcXVv
dDsmcXVvdDsmcXVvdDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgcmV0dXJuPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoF9ldHR1c19zd2lnLnJmbm9jX3J4X3Jh
ZGlvX3NldF9hZ2Moc2VsZiw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBlbmFibGUsIGNoYW4pLzxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDsgLzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgLzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQ2hhbmdpbmcgdGhpcyBpbiB0
aGUgZmxvd2dyYXBoLnB5IHNlZW1zIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoHdvcmshISBUaGFua3M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmb3IgdGhlIGhlbHAgb248YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7IHRoaXMhIEkgcHV0IHRoaXMgaW5mb3JtYXRpb24gaGVyZSBqdXN0PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoGluIGNhc2U8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
c29tZW9uZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGlzIHN0dWNrIGluIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgc2FtZSBw
b2ludC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBCeSB0aGUgd2F5LCBJIGhhdmUg
cmVhZCB0aGF0IHRoZXJlIGFyZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzZXZlcmFsPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGVzIGZvcjxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFHQzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDsgKGZhc3Qsc2xvdyxoeWJyaWQuLikgSSB3YXMgd29uZGVyaW5nPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoHdoaWNoIHR5cGUgaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRlZCBieTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDsgZGVmYXVsdCBhbmQgaWYgaXQgaXMgcG9zc2libGUgdG88YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgY2hhbmdlIEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBtb2RlIGluIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaC48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDsgTWFyaWE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsg
RWwgbWnDqSwgMTAgbWFyIDIwMjEgYSBsYXMgMTI6MDMsIE1hcmlhPGJyPg0KJmd0OyZndDvCoCDC
oCDCoE11w7Fvejxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWls
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0
YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJA
Z21haWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5j
b208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11
a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5
MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7ICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtp
OTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5
MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWls
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Om1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwv
YT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtp
OTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsm
Z3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoEhpIEp1bGVzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqBUaGFuayB5b3UsIEkgd2lsbCB0cnkgaXQgYW5kwqBsZXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
eW91IGtub3c8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYXMgc29vbiBh
czxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoHBvc3NpYmxlLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqBCeSB0aGUgd2F5LCBJIGhhdmUgY2hlY2tlZCB0aGUgcHl0aG9uPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2Vu
ZXJhdGVkwqB1c2luZyB0aGUgVUhEIFVTUlA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBTT1VSQ0Ug
YmxvY2sgKGluc3RlYWQgb2YgdGhlIFJGTm9DPGJyPg0KJmd0OyZndDvCoCDCoCDCoHJhZGlvPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJsb2NrKSB3aXRoPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgQUdDIGFjdGl2ZSBhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBpdCBnZW5lcmF0ZXMgdGhl
IHNldCBvZiBBR0MgZmluZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgU28sIGFzPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHlvdSBzYWlkLDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGl0IGlzIGZp
eGVkIGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgZ3ItdWhkIGJ1dCBpdCBtaWdodCBzdGlsbCBi
ZSBhIGJ1ZyBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBnci1ldHR1
cy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgVGhhbmtzIGFnYWluIGZv
ciB0aGUgaGVscCE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgS2luZCBS
ZWdhcmRzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBNYXJpYTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBFbCBtacOpLCAxMCBtYXIgMjAyMSBh
IGxhcyAxMToyNSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgSnVsaWFuIEFybm9sZDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0i
X2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDspIGVzY3Jp
YmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTWFyaWEs
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBT
bywgaWYgSSB1bmRlcnN0YW5kPGJyPg0KJmd0OyZndDvCoCDCoCDCoGNvcnJlY3RseSwgSTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXZlIHRvIHB1dDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHRoZXJlIGFsc288YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlrZTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgJnF1b3Q7c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9h
Z2MoZW5hYmxlLDApJnF1b3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoGlzbiYjMzk7dCBpdD88YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgRXhhY3RseSEgVGFrZSBh
IGxvb2sgYXQgWzFdPGJyPg0KJmd0OyZndDvCoCDCoCDCoGZvciB0aGU8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY29ycmVjdCBzeW50YXguPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFsxXTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgPGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29t
L0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvYmxvYi8xMDM4YzRjZTUxMzVhMjgwM2I1MzU1NGZjNDk3
MWZlM2RlNzQ3ZDlhL2luY2x1ZGUvZXR0dXMvcmZub2NfcnhfcmFkaW8uaCNMOTciIHJlbD0ibm9y
ZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNo
L2dyLWV0dHVzL2Jsb2IvMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9p
bmNsdWRlL2V0dHVzL3Jmbm9jX3J4X3JhZGlvLmgjTDk3PC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBMZXQgbWUga25vdyBpZiB0aGF0IHdvcmtlZCBvdXQ8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZm9yIHlvdS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEp1
bGlhbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgT24gMy8xMC8yMSA5OjU5IEFNLCBNYXJpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBN
dcOxb3ogd3JvdGU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSGkgSnVsaWFu
LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsgVGhhbmtzIGZvciB0aGUgcXVpY2sgYW5zd2VyLjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
SSB0aGluayB5b3UgbWlnaHQgYmUgcmlnaHQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgYWJvdXQ8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIHBvc3NpYmxlPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgYnVnIHR1cm5pbmcgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgQUdDPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgZnJvbSBHUkMuIEkgaGF2ZSBjaGVja2Vk
PGJyPg0KJmd0OyZndDvCoCDCoCDCoHRoZSBmbG93IGdyYXBoPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2VuZXJhdGVk
IGFuZCB0aGVyZSYjMzk7cyBubzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHNl
dF9yeF9hZ2MgZW5hYmxlIG9wdGlvbiAoSTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjaGVja2VkPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBjKys8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBk
ZWZpbml0aW9uIGJsb2NrPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgd2hlcmUgdGhpczxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IG9wdGlvbiBkaWQgYXBwZWFyIGJ1dCBJ
PGJyPg0KJmd0OyZndDvCoCDCoCDCoGhhZG4mIzM5O3QgbG9vazxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBhdCB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBweXRob24gZ2VuZXJhdGVkKS48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IFRoZSBsaW5lcyByZWxhdGVkIHRvIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqByYWRpbyBpbiBteTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaCBhcmUgdGhlc2U6PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyAvc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wID08YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBldHR1cy5yZm5vY19y
eF9yYWRpbyg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIHNlbGYucmZub2NfZ3JhcGgsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB1aGQuZGV2aWNlX2Fk
ZHIoJiMzOTsmIzM5OyksPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCAtMSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIC0xKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18w
LnNldF9yYXRlKHNhbXBfcmF0ZSk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9f
MC5zZXRfYW50ZW5uYSgmIzM5O1JYMiYjMzk7LCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5v
Y19yeF9yYWRpb18wLnNldF9mcmVxdWVuY3koY2YsIDApPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jm
bm9jX3J4X3JhZGlvXzAuc2V0X2dhaW4oZ2FpbiwgMCk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgc2VsZi5ldHR1c19y
Zm5vY19yeF9yYWRpb18wLnNldF9iYW5kd2lkdGgoc2FtcF9yYXRlLCAwKTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgc2Vs
Zi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9kY19vZmZzZXQoVHJ1ZSwgMCk8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDC
oHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfaXFfYmFsYW5jZShUcnVlLCAwKS88YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7IFNvLCBpZiBJIHVuZGVyc3RhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgY29ycmVj
dGx5LCBJPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGhhdmUgdG8gcHV0
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNvbWV0
aGluZyBsaWtlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5z
ZXRfcnhfYWdjKGVuYWJsZSwwKSZxdW90Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqBpc24mIzM5O3Qg
aXQ/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBNYXJpYTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsgRWwgbWnDqSwgMTAgbWFyIDIwMjEgYSBsYXMgOToxNiw8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgSnVsaWFuIEFybm9sZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9i
bGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4m
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgTWFyaWEsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSSBtaWdodCBub3QgYmUgdGhlPGJyPg0KJmd0
OyZndDvCoCDCoCDCoHJpZ2h0IHBlcnNvbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqB0byBhbnN3ZXI8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGlzLCBhcyBteTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoGV4cGVyaWVuY2Ugd2l0aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqBVSEQgNC4wIGlzIHJlbGF0aXZlbHk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
bGltaXRlZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhdCB0aGUgbW9t
ZW50Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEhvd2V2ZXIsIEkgY2FudCB0ZWxsPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoHlvdSB0aGF0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oHRoZSBBR0Mgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBCMngwIGRldmljZXMgaXM8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBjb250cm9sbGVkIHZpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqBzb2Z0d2FyZSAodXNpbmc8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgc2V0X3J4X2Fn
YygpKS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVGhlcmUgaXM8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBubyBuZWVkIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZGlyZWN0bHkg
bW9kaWZ5IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBzdGF0
ZSBvZiBhbnkgcGlucyBvZjxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aGUgRlBHQS48YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqBJIHZhZ3VlbHkgcmVtZW1iZXIgdGhhdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0
aGVyZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3YXMgYSBidWc8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBpbiBhbiBlYXJsaWVyPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdmVyc2lv
biBvZiBnci11aGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgKHNv
bWV3aGVyZSBpbiAzLjcpIHRoYXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgbWFkZSBpdDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaWZmaWN1bHQ8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0byB0
dXJuIG9uIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEFHQyB1c2luZyBHUkMuPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoFRoYXQgcGFydGljdWxhciBv
bmUgaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZml4ZWQgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgZ3ItdWhkLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE5vdCBzdXJlIGFib3V0PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZ3ItZXR0dXMsIHRob3VnaC48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqBNYXliZSB0cnkgdXNpbmc8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgc2V0X3J4X2FnYygpPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1hbnVhbGx5IGluPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgeW91IGZsb3ctZ3JhcGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoKi5weSkgYW5k
IHNlZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBpZiB0aGF0IGhl
bHBzLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0O8KgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgT24gMy85LzIxIDU6
MTEgUE0sPGJyPg0KJmd0OyZndDvCoCDCoCDCoE1hcmlhIE11w7FveiB2aWE8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBV
U1JQLXVzZXJzIHdyb3RlOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgJmd0OyBIaSBhbGwsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEkg
d2FzIHdvbmRlcmluZyBpZiBpdCBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBwb3NzaWJsZSB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGVuYWJsZSBBR0MgZnJvbTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHRoZSBSRk5vQyByYWRpbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBibG9jayBpbiBHTlVSYWRpby4gSTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqB1c2UgVUhEIDQuMDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHZlcnNpb24gYW5kIEdOVVJhZGlvPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMy44IHdpdGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0O8KgIMKgIMKgZ3ItZXR0dXMuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCAmZ3Q7IEkgc2VlIHRoYXQgdGhlIFJGTm9DIFJ4PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHJhZGlvIGJsb2NrIGhhcyBhbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoGVuYWJsZS9kaXNhYmxlL2RlZmF1bHQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgQUdDPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCAmZ3Q7IG9wdGlvbiBpbiB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgR05VUmFkaW8gYmxv
Y2s8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgd2hpY2ggSTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoGFzc3VtZSBjYWxscyB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBVSEQgZnVu
Y3Rpb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgJnF1
b3Q7c2V0X3J4X2FnYyZxdW90Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDC
oMKgwqAoPGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL2NsYXNzdWhkXzFf
MXVzcnBfMV8xbXVsdGlfX3VzcnAuaHRtbCNhYmRhYjFmNmMzNzc1YTkwNzFiMTVjOTgwNWY4NjY0
ODYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0bWwjYWJkYWIxZjZj
Mzc3NWE5MDcxYjE1Yzk4MDVmODY2NDg2PC9hPik8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgICZndDsgSSBoYXZlIGFsc28gY2hlY2tlZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBvbiB0
aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgRlBHQSBzaWRlPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgdGhhdCB0aGVyZSBpcyBhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgcGluIGZy
b208YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgRlBHQSB0bzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBBRDkzNjE8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgY2FsbGVkwqBYQ1ZSX0VOQV9BR0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgd2hpY2ggaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzZXQgYWx3YXlzIHRvIDEgb248
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgdG9wPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoGxldmVsIG9mPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoCAmZ3Q7IHRoZSBGUEdBIGltYWdlIChzZWU8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgYXR0YWNoZWQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZmls
ZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZxdW90O2UzMjAudiZxdW90OywgbGluZSA4NzIpLjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoFRoaXMgcGluLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0OyBhY2NvcmRpbmcgdG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgPGEg
aHJlZj0iaHR0cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9lbi90ZWNobmljYWwtZG9jdW1lbnRh
dGlvbi9kYXRhLXNoZWV0cy9BRDkzNjEucGRmIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2Js
YW5rIj5odHRwczovL3d3dy5hbmFsb2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0
aW9uL2RhdGEtc2hlZXRzL0FEOTM2MS5wZGY8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsg
aXMgdGhlICZxdW90O01hbnVhbDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBDb250cm9sIElucHV0IGZv
cjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoEF1dG9tYXRpYyBHYWluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
Q29udHJvbCAoQUdDKSZxdW90Oy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgICZndDsgTXVzdCBiZSB0aGlzIHBpbiBzZXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdG8g
MCB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXZlIEFHQzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoHdvcmtpbmc/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oCAmZ3Q7IElmwqBub3QsIGhvdyBjYW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgScKgZ2V0IEFHQzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3b3JraW5nPzxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oEkmIzM5O3ZlIG1hZGUgc29tZSB0ZXN0czxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0OyBlbmFibGluZy9kaXNhYmxpbmcgdGhpczxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBvcHRpb24gYnV0IEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkbyBub3Qgc2Vl
IGFueTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNoYW5nZXM8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgYmV0d2VlbiB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgd2F2ZWZvcm1zIHJlY2VpdmVkLjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBBbnkgaGVscCB3b3VsZCBiZTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqBhcHByZWNpYXRlZC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgS2luZCBSZWdhcmRzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0OyBNYXJpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oCAmZ3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoDxhIGhyZWY9Im1haWx0
bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9
Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
PlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
OlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwv
YT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDsgPGEgaHJlZj0i
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb208L2E+
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7IDxicj4NCiZndDsgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsgVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7IDxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCjwv
YmxvY2txdW90ZT48L2Rpdj4NCg==
--00000000000091f5df05bfc5ffd3--

--===============0641083089813000977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0641083089813000977==--
