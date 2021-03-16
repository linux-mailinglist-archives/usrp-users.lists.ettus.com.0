Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E333DC93
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 19:29:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB240383D1A
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 14:29:54 -0400 (EDT)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EDE838382B
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 14:29:00 -0400 (EDT)
Received: by mail-oi1-f177.google.com with SMTP id t83so29111419oih.12
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 11:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MEFv0ZW94kHEZ5vHVWDsWeLJTAF4CbMRddG4C7473p8=;
        b=hKbA15WrTaElY8kTNpMIYk7Iks6xzfdqhsqbwuLEzDMCrCnFfkJ99bbs1ysf4MUtWK
         82F1xYCJ0tH5oL4PKrexWCKOTWxg7RsAlDvCIz01w6/XUA90IwHAQ7sit5eehl73QSyR
         S1tpzw1uzFkE+/RjXRsqXt1NziCKnWlsoKrQg2G0i8kv16ei5SIIFHEL/v+laZwwAofX
         edC8V6rYoOOyAf7uOieYzG3Ztluf3A8BI5BA/8cRgrqvADw7ya722uetziQnMN2z1RzB
         gXqDFh68kMTemkywOrRKsRXyxspk6VM54OoQJ/BF5lAz/hj9Q3q+4SIAPpfNbLD58Yjf
         uI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MEFv0ZW94kHEZ5vHVWDsWeLJTAF4CbMRddG4C7473p8=;
        b=pmpAtfJB7F31W6QhdbgncqZUaIJQljbMcXiUaLkIJbDtBGYHB2Px2ApESww5ob849z
         j7nSRpgpcRNgLi8MfWGqZRVCVuXCM8IjeORCtsYkzoSDvNGD8SPZU/BbpekjD2HRH5DK
         /3WRR53YD7vsQHKFsmHfni7/QRLpk6mMgKVQnIB6uUNNd5n/vKtvgmzsdFHVORN1GkTq
         FdeeTSOw80gppbKvyoonz86LDh1HmIVYt/OGk9BqJkRZrMgxJ2E44zepsjM98RFifaJg
         RKNYiz8YYUAbp3InVc12KS0re5+U6PWKDDA56OSJ1GZhQ0fcPTz5Baac9385aSZZySlu
         HDxg==
X-Gm-Message-State: AOAM533yWYPQiTsYUWJUf+WZeFYehi+rJHLEbedF/AHbHMCltQ5WoDqX
	JdCG29wAEpq+XKW7cfwlSXYpbKE4zx7GpTlVglnCKqN0VOU=
X-Google-Smtp-Source: ABdhPJzY+EiM7mw3Song66hStDg1tNbZOoxdbFwlpok85tZFdskTwtOkB+5G6q/01fqrPL3m3yJrapIfY7CnXoS19yI=
X-Received: by 2002:aca:2104:: with SMTP id 4mr33194oiz.124.1615919339300;
 Tue, 16 Mar 2021 11:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <01000178373f94cd-879cf46a-f300-4488-ae11-b774a80328f2-000000@email.amazonses.com>
 <CAKJyDkKOMW+2+85Joby0U1W9c-qXHdcK52xmDg7f2bLXaJ-tuA@mail.gmail.com> <010001783a7bec48-40481c5c-2522-4e68-bb71-ce4366302424-000000@email.amazonses.com>
In-Reply-To: <010001783a7bec48-40481c5c-2522-4e68-bb71-ce4366302424-000000@email.amazonses.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 16 Mar 2021 14:28:48 -0400
Message-ID: <CAB__hTRjETCBN79-6HnEsZh+bTim9cXVv7OOJPgstm5wjRniLw@mail.gmail.com>
To: Robert Clancy <rclancy@ltsnet.net>
Message-ID-Hash: ZVLHRKGUZMQJTN2COUXR7SLQWJHLHIZ2
X-Message-ID-Hash: ZVLHRKGUZMQJTN2COUXR7SLQWJHLHIZ2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: WhiteRabbit switch with an N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZVLHRKGUZMQJTN2COUXR7SLQWJHLHIZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0264459710202750736=="

--===============0264459710202750736==
Content-Type: multipart/alternative; boundary="00000000000034ad9405bdab8a3e"

--00000000000034ad9405bdab8a3e
Content-Type: text/plain; charset="UTF-8"

Robert,
Perhaps try with the device args set to "time_source=sfp0" rather than just
using the function call that you are using.

BTW, I am also struggling a bit trying to get my WR Switch to work with my
N310, but for different reasons.  Mine is starting OK, but then I get a
warning "Board 0 may not be getting a PPS signal" and then later my program
crashes.  Still debugging though, so problem might just be on my end.
Rob

On Tue, Mar 16, 2021 at 6:02 AM Robert Clancy <rclancy@ltsnet.net> wrote:

> Hi Robin,
>
>
> Thanks for thinking about this. I do set the time source- in the python
> script there is a line:
>
>
>  self.uhd_usrp_source_0.set_time_source("sfp0")
>
>
> Robert
>
>
>
> ------------------------------
> *From:* Robin Coxe <coxe@quanttux.com>
> *Sent:* Monday, March 15, 2021 7:12:35 PM
> *To:* Robert Clancy
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] WhiteRabbit switch with an N321
>
> Hi Robert.  I think your issue may be that you need to set the time source
> in UHD to sfp0:
>
>
> https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3xx_Devices
> (Scroll down to the "System Configuration" section).
>
> -Robin
>
>
> On Mon, Mar 15, 2021 at 11:57 AM Robert Clancy <rclancy@ltsnet.net> wrote:
>
>> I am trying to test a White Rabbit switch with an N321 radio but am
>> failing to be able to make a capture.
>>
>>
>> I have Gnuradio 3.8.0 installed and the UHD version is reported as
>> UHD_4.0.0.0-18-g83e878cf
>>
>>
>> This is the response from a probe:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_4.0.0.0-18-g83e878cf [INFO] [MPMD] Initializing 1 device(s) in parallel
>> with args:
>> mgmt_addr=192.168.10.2,type=n3xx,product=n320,serial=31B36CF,claimed=False,addr=192.168.10.2
>> [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062 [INFO]
>> [MPM.main] Spawning RPC process... [INFO] [MPM.PeriphManager] Device serial
>> number: 31B36CF [INFO] [MPM.Rhodium-0] Enabling LO distribution board
>> [INFO] [MPM.Rhodium-0] Successfully loaded all peripherals! [INFO]
>> [MPM.Rhodium-1] Successfully loaded all peripherals! [INFO]
>> [MPM.PeriphManager] Initialized 2 daughterboard(s). [INFO]
>> [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled in the
>> device tree overlay (e.g., HG, XG images). [INFO] [MPM.PeriphManager]
>> init() called with device args
>> `clock_source=internal,time_source=internal'. [INFO] [MPM.Rhodium-0] init()
>> called with args `clock_source=internal,time_source=internal' [INFO]
>> [MPM.Rhodium-1] init() called with args
>> `clock_source=internal,time_source=internal' [INFO]
>> [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked! [INFO]
>> [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked! [INFO]
>> [MPM.Rhodium-1.DAC37J82] DAC PLL Locked! [INFO] [MPM.Rhodium-1.AD9695] ADC
>> PLL Locked! [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &
>> Training Complete [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked! [INFO]
>> [MPM.Rhodium-0.AD9695] ADC PLL Locked! [INFO] [MPM.Rhodium-0.init] JESD204B
>> Link Initialization & Training Complete [INFO] [MPM.RPCServer] RPC server
>> ready! [INFO] [MPM.RPCServer] Spawning watchdog task... [INFO]
>> [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'.
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
>> [INFO] [MPM.Rhodium-1] init() called with args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
>>   _____________________________________________________  / |       Device:
>> N300-Series Device |
>> _____________________________________________________ |    / |   |
>> Mboard: ni-n3xx-31B36CF |   |   dboard_0_pid: 338 |   |   dboard_0_serial:
>> 3192EC4 |   |   dboard_1_pid: 338 |   |   dboard_1_serial: 3192EB9 |   |
>> eeprom_version: 3 |   |   fs_version: 20200914000806 |   |
>> mender_artifact: v4.0.0.0_n3xx |   |   mpm_sw_version: 4.0.0.0-g90ce6062
>> |   |   pid: 16962 |   |   product: n320 |   |   rev: 7 |   |
>> rpc_connection: remote |   |   serial: 31B36CF |   |   type: n3xx |   |
>> MPM Version: 3.0 |   |   FPGA Version: 8.0 |   |   FPGA git hash:
>> be53058.clean |   |    |   |   Time sources:  internal, external, gpsdo,
>> sfp0 |   |   Clock sources: external, internal, gpsdo |   |   Sensors:
>> ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv
>> |     _____________________________________________________ |    / |
>> |       RFNoC blocks on this device: |   |    |   |   * 0/DDC#0 |   |   *
>> 0/DDC#1 |   |   * 0/DUC#0 |   |   * 0/DUC#1 |   |   * 0/Radio#0 |   |   *
>> 0/Radio#1 |   |   * 0/Replay#0 |
>> _____________________________________________________ |    / |   |
>> Static connections on this device: |   |    |   |   * 0/SEP#0:0==>0/DUC#0:0
>> |   |   * 0/DUC#0:0==>0/Radio#0:0 |   |   * 0/Radio#0:0==>0/DDC#0:0 |   |
>> * 0/DDC#0:0==>0/SEP#0:0 |   |   * 0/SEP#1:0==>0/DUC#1:0 |   |   *
>> 0/DUC#1:0==>0/Radio#1:0 |   |   * 0/Radio#1:0==>0/DDC#1:0 |   |   *
>> 0/DDC#1:0==>0/SEP#1:0 |   |   * 0/SEP#2:0==>0/Replay#0:0 |   |   *
>> 0/Replay#0:0==>0/SEP#2:0 |   |   * 0/SEP#3:0==>0/Replay#0:1 |   |   *
>> 0/Replay#0:1==>0/SEP#3:0 |
>> _____________________________________________________ |    / |   |       TX
>> Dboard: dboard |   |
>> _____________________________________________________ |   |    / |   |
>> |       TX Frontend: 0 |   |   |   Name: Rhodium |   |   |   Antennas:
>> TX/RX, RX2, CAL, TERM |   |   |   Freq range: 1.000 to 6000.000 MHz |   |
>> |   Gain range all: 0.0 to 60.0 step 1.0 dB |   |   |   Bandwidth range:
>> 250000000.0 to 250000000.0 step 0.0 Hz |   |   |   Connection Type: |   |
>> |   Uses LO offset: No |
>> _____________________________________________________ |    / |   |       RX
>> Dboard: dboard |   |
>> _____________________________________________________ |   |    / |   |
>> |       RX Frontend: 0 |   |   |   Name: Rhodium |   |   |   Antennas:
>> TX/RX, CAL, TERM |   |   |   Freq range: 1.000 to 6000.000 MHz |   |   |
>> Gain range all: 0.0 to 60.0 step 1.0 dB |   |   |   Bandwidth range:
>> 250000000.0 to 250000000.0 step 0.0 Hz |   |   |   Connection Type: |   |
>> |   Uses LO offset: No |
>> _____________________________________________________ |    / |   |       TX
>> Dboard: dboard |   |
>> _____________________________________________________ |   |    / |   |
>> |       TX Frontend: 0 |   |   |   Name: Rhodium |   |   |   Antennas:
>> TX/RX, RX2, CAL, TERM |   |   |   Freq range: 1.000 to 6000.000 MHz |   |
>> |   Gain range all: 0.0 to 60.0 step 1.0 dB |   |   |   Bandwidth range:
>> 250000000.0 to 250000000.0 step 0.0 Hz |   |   |   Connection Type: |   |
>> |   Uses LO offset: No |
>> _____________________________________________________ |    / |   |       RX
>> Dboard: dboard |   |
>> _____________________________________________________ |   |    / |   |
>> |       RX Frontend: 0 |   |   |   Name: Rhodium |   |   |   Antennas:
>> TX/RX, CAL, TERM |   |   |   Freq range: 1.000 to 6000.000 MHz |   |   |
>> Gain range all: 0.0 to 60.0 step 1.0 dB |   |   |   Bandwidth range:
>> 250000000.0 to 250000000.0 step 0.0 Hz |   |   |   Connection Type: |   |
>> |   Uses LO offset: No *
>>
>>
>> I am using this firmware:
>>
>> *uhd_image_loader --args type=n3xx,addr=192.168.10.2
>> --fpga-path="/opt/gnuradio/v3.8.0.0/share/uhd/images/usrp_n320_fpga_WX.bit"*
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_4.0.0.0-18-g83e878cf
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.10.2,type=n3xx,product=n320,serial=31B36CF,claimed=False,skip_init=1
>> [INFO] [MPMD] Claimed device without full initialization.
>> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>> [INFO] [MPM.PeriphManager] Updating component `fpga'
>> [INFO] [MPM.PeriphManager] Updating component `dts'
>> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>> [INFO] [MPM.PeriphManager] Device serial number: 31B36CF
>> [INFO] [MPM.Rhodium-0] Enabling LO distribution board
>> [INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
>> [INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
>> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>> [INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is
>> disabled in the device tree overlay (e.g., HG, XG images).
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `clock_source=internal,time_source=internal'.
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `clock_source=internal,time_source=internal'
>> [INFO] [MPM.Rhodium-1] init() called with args
>> `clock_source=internal,time_source=internal'
>> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
>> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
>> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
>> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
>> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
>> Complete
>> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
>> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
>> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
>> Complete
>>
>>
>>
>>
>>
>> What I think are the relevant parts from a simple script to make a
>> capture:
>>         ##################################################
>>         # Variables
>>         ##################################################
>>         self.samp_rate = samp_rate = 12288000
>>
>>         ##################################################
>>         # Blocks
>>         ##################################################
>>         self.uhd_usrp_source_0 = uhd.usrp_source(
>>             ",".join(("", "")),
>>             uhd.stream_args(
>>                 cpu_format="fc32",
>>                 args='addr=192.168.10.2',
>>                 channels=list(range(0,1)),
>>             ),
>>         )
>>         ## WhiteRabbit addition
>>         #self.uhd_usrp_source_0.set_clock_rate(200000000)
>>         self.uhd_usrp_source_0.set_antenna("TX/RX")
>>         print("Master clock rate set to:
>> ",self.uhd_usrp_source_0.get_clock_rate())
>>         print("Times sources are
>> ",self.uhd_usrp_source_0.get_time_sources(0))
>>         print("Sample rates is
>> ",self.uhd_usrp_source_0.get_samp_rates().stop())
>>         print("Antenna is ",self.uhd_usrp_source_0.get_antenna())
>>         self.uhd_usrp_source_0.set_clock_source("internal")
>>         self.uhd_usrp_source_0.set_time_source("sfp0")
>>         print("Time source is ",self.uhd_usrp_source_0.get_time_source(0))
>>         ###
>>
>>         self.uhd_usrp_source_0.set_center_freq(75000100, 0)
>>         print("Tuned to  ",self.uhd_usrp_source_0.get_center_freq(0))
>>         self.uhd_usrp_source_0.set_gain(0, 0)
>>         self.uhd_usrp_source_0.set_antenna('TX/RX', 0)
>>         self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>>
>> And then the error:
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_4.0.0.0-18-g83e878cf
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.10.2,type=n3xx,product=n320,serial=31B36CF,claimed=False,addr=192.168.10.2
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'.
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
>> [INFO] [MPM.Rhodium-1] init() called with args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
>> Master clock rate set to:  245760000.0
>> Times sources are  ('internal', 'external', 'gpsdo', 'sfp0')
>> Sample rates is  245760000.0
>> Antenna is  TX/RX
>> [INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some
>> time.
>> [INFO] [MPM.Rhodium-0] init() called with args
>> `mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=sfp0,skip_rfic=None,master_clock_rate=245760000.0,ref_clk_freq=25000000.0'
>> [ERROR] [RPC] TDC Failed to reset.
>> Traceback (most recent call last):
>>   File "./TimeDomainDisplay.py", line 212, in <module>
>>     main()
>>   File "./TimeDomainDisplay.py", line 188, in main
>>     tb = top_block_cls()
>>   File "./TimeDomainDisplay.py", line 95, in __init__
>>     self.uhd_usrp_source_0.set_time_source("sfp0")
>>   File
>> "/opt/gnuradio/v3.8.0.0/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py",
>> line 4577, in set_time_source
>>     return _uhd_swig.usrp_source_sptr_set_time_source(self, source,
>> mboard)
>> RuntimeError: RuntimeError: Error during RPC call to `set_time_source'.
>> Error message: TDC Failed to reset.
>> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
>> [ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0
>> [ERROR] [MPM.RPCServer] Uncaught exception in method set_time_source :TDC
>> Failed to reset.
>>  Traceback (most recent call last):
>>   File "/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py", line
>> 186, in new_claimed_function
>>     return function(*args)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/n3xx.py", line
>> 596, in set_time_source
>>     self.set_sync_source(source)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/n3xx.py", line
>> 696, in set_sync_source
>>     skip_rfic=args.get('skip_rfic', None)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py", line
>> 478, in update_ref_clock_freq
>>     self._reinit(self.master_clock_rate)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py", line
>> 438, in _reinit
>>     self.init(args)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py", line
>> 341, in init
>>     init_result = RhodiumInitManager(self, self._spi_ifaces).init(args)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rh_init.py", line
>> 344, in init
>>     args)
>>   File
>> "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rh_init.py", line
>> 100, in _sync_db_clock
>>     target_offset=trace_delay_offset))
>>   File "/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.py",
>> line 201, in run
>>     self.configure(force=True)
>>   File "/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.py",
>> line 254, in configure
>>     raise RuntimeError("TDC Failed to reset.")
>> RuntimeError: TDC Failed to reset.
>>
>>
>> Can anyone shed any light on what is going on?
>>
>> Has anyone actually got an Ettus radio working with the WX firmware and a
>> White Rabbit switch?
>>
>> FWIW, the WR switch appears happy. I've walked its SNMP tree and all
>> seems well. It is operating in Grandmaster mode with the one N321 hanging
>> off its first port.
>>
>> Robert
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000034ad9405bdab8a3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Robert,<div>Perhaps try with the device args set to &quot;=
time_source=3Dsfp0&quot; rather than just using the function call that you =
are using.=C2=A0</div><div><br></div><div>BTW, I am also struggling a bit t=
rying to get my WR Switch to work with my N310, but for different reasons.=
=C2=A0 Mine is starting OK, but then I get a warning &quot;Board 0 may not =
be getting a PPS signal&quot; and then later my program crashes.=C2=A0 Stil=
l debugging though, so problem might just be on my end.</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Mar 16, 2021 at 6:02 AM Robert Clancy &lt;<a href=3D"mailto:rclancy=
@ltsnet.net">rclancy@ltsnet.net</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">



<div>

<div id=3D"gmail-m_-2701009752514349730divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hi Robin,</p>
<p><br>
</p>
<p>Thanks for thinking about this. I do set the time source- in the python =
script there is a line:</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px">=C2=A0self.uhd_usrp_source_0.set_time_source(&quot;sfp0&quo=
t;)</span><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"><br>
</span></p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px">Robert</span></p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"><br>
</span></p>
<p><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2701009752514349730divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_blank=
">coxe@quanttux.com</a>&gt;<br>
<b>Sent:</b> Monday, March 15, 2021 7:12:35 PM<br>
<b>To:</b> Robert Clancy<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] WhiteRabbit switch with an N321</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Robert.=C2=A0 I think your issue may be that you need t=
o set the time source in UHD to sfp0:
<div><br>
</div>
<div><a href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_o=
n_the_USRP%E2%84%A2_N3xx_Devices" target=3D"_blank">https://kb.ettus.com/Us=
ing_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3xx_Devices</a><br=
>
</div>
<div>(Scroll down to the &quot;System Configuration&quot; section).</div>
<div><br>
</div>
<div>-Robin</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 15, 2021 at 11:57 AM Robe=
rt Clancy &lt;<a href=3D"mailto:rclancy@ltsnet.net" target=3D"_blank">rclan=
cy@ltsnet.net</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-2701009752514349730gmail-m_-3345210666378511327divtagde=
faultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,=
Helvetica,sans-serif" dir=3D"ltr">
<p>I am trying to test a White Rabbit switch with an N321 radio but am fail=
ing to be able to make a capture.</p>
<p><br>
</p>
<p>I have Gnuradio 3.8.0 installed and the UHD version is reported as <span=
>UHD_4.0.0.0-18-g83e878cf</span></p>
<p><span><br>
</span></p>
<p><span>This is the response from a probe:</span></p>
<p><span><br>
</span></p>
<p><span></span></p>
<div><i>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.=
0-18-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2<br>
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062<br>
[INFO] [MPM.main] Spawning RPC process...<br>
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF<br>
[INFO] [MPM.Rhodium-0] Enabling LO distribution board<br>
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!<br>
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!<br>
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal&#39;.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.RPCServer] RPC server ready!<br>
[INFO] [MPM.RPCServer] Spawning watchdog task...<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;=
.<br>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: N300-Series Device<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: ni-n3xx-31B36CF=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 dboard_0_pid: 338<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 dboard_0_serial: 3192EC4<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 dboard_1_pid: 338<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 dboard_1_serial: 3192EB9<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 eeprom_version: 3<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 fs_version: 20200914000806<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mender_artifact: v4.0.0.0_n3xx<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mpm_sw_version: 4.0.0.0-g90ce6062<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 pid: 16962<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 product: n320<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 rev: 7<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 rpc_connection: remote<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 31B36CF<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 type: n3xx<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 MPM Version: 3.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: 8.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: be53058.clean<br>
|=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 internal, external, gpsdo, =
sfp0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: external, internal, gpsdo<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ref_locked, gps_locked, temp, fan, gps=
_gpgga, gps_sky, gps_time, gps_tpv<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blocks on this de=
vice:<br>
|=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Replay#0<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Static connections on t=
his device:<br>
|=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#2:0=3D=3D&gt;0/Replay#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#2:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#3:0=3D=3D&gt;0/Replay#0:1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#3:0<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: dboard<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Fronte=
nd: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, TERM<b=
r>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: dboard<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Fronte=
nd: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CAL, TERM<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: dboard<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Fronte=
nd: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, TERM<b=
r>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: dboard<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Fronte=
nd: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Rhodium<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CAL, TERM<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<br>
<br>
</i></div>
<br>
<p></p>
<p><br>
</p>
<p>I am using this firmware: <br>
</p>
<p><i><span>uhd_image_loader --args type=3Dn3xx,addr=3D192.168.10.2 --fpga-=
path=3D&quot;/opt/gnuradio/v3.8.0.0/share/uhd/images/usrp_n320_fpga_WX.bit&=
quot;</span></i></p>
<p><i><span><br>
</span></i></p>
<p><i><span></span></i></p>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-1=
8-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,ski=
p_init=3D1<br>
[INFO] [MPMD] Claimed device without full initialization.<br>
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
[INFO] [MPM.PeriphManager] Updating component `fpga&#39;<br>
[INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>
[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF<br>
[INFO] [MPM.Rhodium-0] Enabling LO distribution board<br>
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!<br>
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!<br>
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal&#39;.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Training Com=
plete</div>
<p></p>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>What I think are the relevant parts from a simple script to make a cap=
ture:</div>
<div>
<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ###########################=
#######################<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Variables<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ################################=
##################<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.samp_rate =3D samp_rate =3D=
 12288000<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ################################=
##################<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Blocks<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ################################=
##################<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0 =3D uhd.u=
srp_source(<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;,&=
quot;.join((&quot;&quot;, &quot;&quot;)),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.stre=
am_args(<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 cpu_format=3D&quot;fc32&quot;,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 args=3D&#39;addr=3D192.168.10.2&#39;,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 )<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ## WhiteRabbit addition<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #self.uhd_usrp_source_0.set_cloc=
k_rate(200000000)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_anten=
na(&quot;TX/RX&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Master clock rate se=
t to: &quot;,self.uhd_usrp_source_0.get_clock_rate())<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Times sources are &q=
uot;,self.uhd_usrp_source_0.get_time_sources(0))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Sample rates is &quo=
t;,self.uhd_usrp_source_0.get_samp_rates().stop())<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Antenna is &quot;,se=
lf.uhd_usrp_source_0.get_antenna())=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_clock=
_source(&quot;internal&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_time_=
source(&quot;sfp0&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Time source is &quot=
;,self.uhd_usrp_source_0.get_time_source(0))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ###<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_cente=
r_freq(75000100, 0)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(&quot;Tuned to=C2=A0 &quot=
;,self.uhd_usrp_source_0.get_center_freq(0))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_gain(=
0, 0)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_anten=
na(&#39;TX/RX&#39;, 0)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_samp_=
rate(samp_rate)<br>
<br>
</div>
And then the error:</div>
<div><br>
</div>
<div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-1=
8-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;=
.<br>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>
Master clock rate set to:=C2=A0 245760000.0<br>
Times sources are=C2=A0 (&#39;internal&#39;, &#39;external&#39;, &#39;gpsdo=
&#39;, &#39;sfp0&#39;)<br>
Sample rates is=C2=A0 245760000.0<br>
Antenna is=C2=A0 TX/RX<br>
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.<br>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dsfp0,skip_rfic=3DNone,ma=
ster_clock_rate=3D245760000.0,ref_clk_freq=3D25000000.0&#39;<br>
[ERROR] [RPC] TDC Failed to reset.<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;./TimeDomainDisplay.py&quot;, line 212, in &lt;module&gt;=
<br>
=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0 File &quot;./TimeDomainDisplay.py&quot;, line 188, in main<br>
=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;./TimeDomainDisplay.py&quot;, line 95, in __init__<br>
=C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_time_source(&quot;sfp0&quot;)=
<br>
=C2=A0 File &quot;/opt/gnuradio/v3.8.0.0/lib/python3/dist-packages/gnuradio=
/uhd/uhd_swig.py&quot;, line 4577, in set_time_source<br>
=C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_sptr_set_time_source(self, =
source, mboard)<br>
RuntimeError: RuntimeError: Error during RPC call to `set_time_source&#39;.=
 Error message: TDC Failed to reset.<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0<br=
>
[ERROR] [MPM.RPCServer] Uncaught exception in method set_time_source :TDC F=
ailed to reset.
<br>
=C2=A0Traceback (most recent call last):<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py&q=
uot;, line 186, in new_claimed_function<br>
=C2=A0=C2=A0=C2=A0 return function(*args)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/=
n3xx.py&quot;, line 596, in set_time_source<br>
=C2=A0=C2=A0=C2=A0 self.set_sync_source(source)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/=
n3xx.py&quot;, line 696, in set_sync_source<br>
=C2=A0=C2=A0=C2=A0 skip_rfic=3Dargs.get(&#39;skip_rfic&#39;, None)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 478, in update_ref_clock_freq<br>
=C2=A0=C2=A0=C2=A0 self._reinit(self.master_clock_rate)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 438, in _reinit<br>
=C2=A0=C2=A0=C2=A0 self.init(args)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 341, in init<br>
=C2=A0=C2=A0=C2=A0 init_result =3D RhodiumInitManager(self, self._spi_iface=
s).init(args)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rh_init.py&quot;, line 344, in init<br>
=C2=A0=C2=A0=C2=A0 args)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rh_init.py&quot;, line 100, in _sync_db_clock<br>
=C2=A0=C2=A0=C2=A0 target_offset=3Dtrace_delay_offset))<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.=
py&quot;, line 201, in run<br>
=C2=A0=C2=A0=C2=A0 self.configure(force=3DTrue)<br>
=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.=
py&quot;, line 254, in configure<br>
=C2=A0=C2=A0=C2=A0 raise RuntimeError(&quot;TDC Failed to reset.&quot;)<br>
RuntimeError: TDC Failed to reset.<br>
<br>
</div>
</div>
<div><br>
</div>
<div>Can anyone shed any light on what is going on? <br>
</div>
<div><br>
</div>
<div>Has anyone actually got an Ettus radio working with the WX firmware an=
d a White Rabbit switch?</div>
<div><br>
</div>
<div>FWIW, the WR switch appears happy. I&#39;ve walked its SNMP tree and a=
ll seems well. It is operating in Grandmaster mode with the one N321 hangin=
g off its first port.</div>
<div><br>
</div>
<div>Robert<br>
</div>
<div><br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000034ad9405bdab8a3e--

--===============0264459710202750736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0264459710202750736==--
