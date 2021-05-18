Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 262D2387DAF
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 18:34:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5326C386049
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 12:34:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="xpXWzPb/";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0852338421A
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 12:34:05 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id b17so11998878ede.0
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 09:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=yqcrPzlSlRbV6K6SjFuKSRSP/A6WsYnpwyEqpmnQT0A=;
        b=xpXWzPb/PoTJe7gKEaAgtns+CqyHZP0BUtCzefvBsy8DGEIclyt/Ji9BitRCi8Z0eM
         YyVcQQi2YY3ixvVC+s6EKZFqSmWq2PMrzw0NtA0vlAsgxtqIqtEI/CeJ/Gq94BKek1+/
         ihCSQbGgPFqYu3PPHGzoYwPTQb1zDJxY3MqfJMQZqtMTlKq1RJ746e8Vp86frhbTb+dk
         KMZebGS5NICZB2mRlPel2UtysJiJYikFBEKgZaLxZgZDRRFOetPdDtZFNxEYxpFMjWcg
         39tK10F/JfpIgoOKA5OnlMnV9ayoqm+GvZVjjVLaPshOOLL8fX8p923Zmnw4T0UoIhxd
         wFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=yqcrPzlSlRbV6K6SjFuKSRSP/A6WsYnpwyEqpmnQT0A=;
        b=T06j30lCzLk59J+FC7v9k9KRvKSBx0An56htImL/ed/Fpqm62ErbA01biUtHKR8RtR
         haZJVhcwyiaMuXujPvSrrlxu8dv3v1WvhxsJwJBtwWXHJGoZhlUkbl1/Nz2KAI1mv15x
         /coH/LnuSkoxDAz+UX/ehcWZ8b8sR5B/IShxtLMv8H8h+OYCPzHamYvK9OLKi8sys5Rl
         st+hAO5mV4N+QnXNrRbmNLASNdbPBzHeBa2mNclDST63OuKYUklrNcptrelYQNOZRQia
         nFuBtaLfLXo53shD7ujVoYrVrk8c9NQp2i0kcQhvD7LPr6NVgFrms6uoFrPXPCE/Ura+
         buCg==
X-Gm-Message-State: AOAM531fZJeIY7Z0UBd1Q0AIV9w8FKtjQ4Mwgl57o/gaudXAhMo1VZzy
	Qtj3fZCXbrH0TSxTfnmkxpURHEvnVVVyFyZfNdsk4oz/
X-Google-Smtp-Source: ABdhPJyyrVLIyi4br5YqJrNYKVpS4ehCd2Npm/w6AIHtz65W9WM/L7+CzEJs76q9KX9+EPIHahiRGEr6oomgEG40crE=
X-Received: by 2002:aa7:c782:: with SMTP id n2mr8218951eds.77.1621355644138;
 Tue, 18 May 2021 09:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
 <CAFOi1A4JGHB-UtgLAwtbKTKHdmXWsKa-kKMiDJ_P_v5Vvzq18A@mail.gmail.com>
 <CAFOi1A5RwDQcwsvg-9sJNv-OdJLveXsbMT0SxuFv8PHr5CuEmA@mail.gmail.com> <CAANLyuYOzm43jEors7D1OjVsmAeFdSVnS7STdmTcua0JXUz+jQ@mail.gmail.com>
In-Reply-To: <CAANLyuYOzm43jEors7D1OjVsmAeFdSVnS7STdmTcua0JXUz+jQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 18 May 2021 18:33:53 +0200
Message-ID: <CAFOi1A7NdH_O4iGja0TtMVOftDKrZMc3DJHBz1o=_1+hVJwWXQ@mail.gmail.com>
To: Devin Kelly <dwwkelly@gmail.com>,
	"USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: GIAP7QQUWI6GFXB7XSBMZGHDDF2GHSMH
X-Message-ID-Hash: GIAP7QQUWI6GFXB7XSBMZGHDDF2GHSMH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GIAP7QQUWI6GFXB7XSBMZGHDDF2GHSMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0745856057095371890=="

--===============0745856057095371890==
Content-Type: multipart/alternative; boundary="00000000000039475f05c29d47ce"

--00000000000039475f05c29d47ce
Content-Type: text/plain; charset="UTF-8"

Hey Devin,

you don't need a calibrated receiver for a calibrated TX. I'll need to get
back to my setup to see if maybe there is a bug here and I simply missed it
because I had a lingering RX calibration file.

The temperature field on X300 is currently unused (X300 does not have a
temperature sensor we can use for this). B200 does actually tie this into
the temperature sensor on the AD9361. We had a thought of providing a way
of manually entering the ambient temperature, but it got dropped in
priority. Let us know if  that's something that would make your life more
useful (but to be clear, it would mean you have to provide your own
temperature sensor).

--M



On Tue, May 18, 2021 at 5:25 PM Devin Kelly <dwwkelly@gmail.com> wrote:

> Hi Martin,
>
> Thanks for the help.
>
> When I add the trace debugging I get this:
>
> ...
>
> Setting TX Rate: 1.000000 Msps...
>> [TRACE] [0/DUC#0] Setting property interp@USER:0
>> [TRACE] [0/DUC#0] Locally resolving 2 dirty properties plus dependencies.
>> [TRACE] [0/DUC#0] Calling resolver for `interp'@0
>> [TRACE] [0/DUC#0] Set interp to 200
>> [TRACE] [0/DUC#0] Calling resolver for `samp_rate_in'@0
>> [TRACE] [0/DUC#0] New samp_rate_in is 1e+06
>> [TRACE] [0/DUC#0] New samp_rate_out is 2e+08
>> [TRACE] [0/DUC#1] Setting property interp@USER:0
>> [TRACE] [0/DUC#1] Locally resolving 2 dirty properties plus dependencies.
>> [TRACE] [0/DUC#1] Calling resolver for `interp'@0
>> [TRACE] [0/DUC#1] Set interp to 200
>> [TRACE] [0/DUC#1] Calling resolver for `samp_rate_in'@0
>> [TRACE] [0/DUC#1] New samp_rate_in is 1e+06
>> [TRACE] [0/DUC#1] New samp_rate_out is 2e+08
>> Actual TX Rate: 1.000000 Msps...
>>
>> Setting TX Freq: 900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> [TRACE] [MULTI_USRP] Frequency Range 9.500MHz->6000.500MHz
>> [TRACE] [MULTI_USRP] Clipped RX frequency requested: 900.000000MHz
>> [TRACE] [MULTI_USRP] Target RF Freq: 900.000000MHz
>> [TRACE] [UBX] UBX TX: the requested frequency is 900.000000 MHz
>> [TRACE] [MAX287X] Intermediates: ref=50000000.00, outdiv=8.000000,
>> fbdiv=36.000000
>> [TRACE] [MAX287X] Tune: R=1, BS=500, N=36, FRAC=0, MOD=4095, T=1, D=0,
>> RFdiv=4, type=Fractional
>> [TRACE] [MAX287X] Frequencies (MHz): REQ=900.00, ACT=900.00, VCO=3600.00,
>> PFD=25.00, BAND=0.05
>> [TRACE] [UBX] UBX TX: the actual frequency is 900.000000 MHz
>> [TRACE] [CAL::DATABASE] Checking for file at
>> /home/lb/.local/share/uhd/cal/tx_iq_311A8A8.cal
>> [TRACE] [CAL] Checking for deprecated CSV-based cal data at
>> "/home/lb/.uhd/cal/tx_iq_cal_v0.2_311A8A8.csv"
>> [TRACE] [CAL] No calibration data found for tx_iq serial=311A8A8
>> [TRACE] [CAL::DATABASE] Checking for file at
>> /home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal
>> [TRACE] [CAL::DATABASE] Checking for file at
>> /home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal
>> [TRACE] [CAL::DATABASE] Checking for file at
>> /home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal
>> [TRACE] [CAL::DATABASE] Reading 32872 bytes from
>> "/home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal"
>> [DEBUG] [CAL] Loaded calibration data for tx_dc serial=311A8A8
>> [TRACE] [MULTI_USRP] Target DSP Freq: -0.000000MHz
>> [TRACE] [0/DUC#0] Setting property freq@USER:0
>> [TRACE] [0/DUC#0] Locally resolving 1 dirty properties plus dependencies.
>> Actual TX Freq: 900.000000 MHz...
>>
>> [TRACE] [X300-CAL-RX] Looking for power cal data for
>> x3xx_pwr_generic_rx_rx2, serial 311A8A8#0
>> [TRACE] [CAL::DATABASE] Checking for file at
>> /home/lb/.local/share/uhd/cal/x3xx_pwr_generic_rx_rx2_311A8A8#0.cal
>> ERROR: USRP does not have a reference power API on channel 0!
>> [TRACE] [X300-CAL-RX] No power cal data found for key
>> x3xx_pwr_generic_rx_rx2, key x3xx_pwr_generic_rx_rx2, serial 311A8A8#0
>> [TRACE] [RFNOC::GRAPH] Shutting down detail::graph...
>> [TRACE] [RFNOC::GRAPH::DETAIL] graph::shutdown()
>> [TRACE] [RFNOC::GRAPH] Shutting down all blocks ...
>> [TRACE] [0/Replay#0] Calling deinit()
>> [DEBUG] [0/Replay#0] deinit() called, but not implemented.
>> [DEBUG] [0/Replay#0] Invalidating register interface
>> [TRACE] [0/Radio#1] Calling deinit()
>> [TRACE] [0/Radio#1] deinit()
>> [DEBUG] [0/Radio#1] Invalidating register interface
>> [TRACE] [0/DUC#0] Calling deinit()
>> [DEBUG] [0/DUC#0] deinit() called, but not implemented.
>> [DEBUG] [0/DUC#0] Invalidating register interface
>> [TRACE] [0/DDC#0] Calling deinit()
>> [DEBUG] [0/DDC#0] deinit() called, but not implemented.
>> [DEBUG] [0/DDC#0] Invalidating register interface
>> [TRACE] [0/Radio#0] Calling deinit()
>> [TRACE] [0/Radio#0] deinit()
>> [DEBUG] [0/Radio#0] Invalidating register interface
>> [TRACE] [0/DDC#1] Calling deinit()
>> [DEBUG] [0/DDC#1] deinit() called, but not implemented.
>> [DEBUG] [0/DDC#1] Invalidating register interface
>> [TRACE] [0/DUC#1] Calling deinit()
>> [DEBUG] [0/DUC#1] deinit() called, but not implemented.
>> [DEBUG] [0/DUC#1] Invalidating register interface
>>
>
> It looks like the transmit command is failing because I haven't calibrated
> the receiver.  Is that a bug or is it necessary to have a calibrated
> receiver in order to have a calibrated transmitter?  I'm only interested in
> the TX side for now.
>
> Also, I looked at the cal data, looks good to me (I removed some lines for
> brevity)
>
> {
>>   "metadata": {
>>     "name": "X310 Power Cal",
>>     "serial": "311A8A8#0",
>>     "timestamp": 1619197435,
>>     "version_major": 1
>>   },
>>   "temp_freq_map": [
>>     {
>>       "temperature": 20,
>>       "freqs": [
>>         {
>>           "freq": 900000000,
>>           "powers": [
>>             {
>>               "gain": 0.0,
>>               "power_dbm": -11.72615954336
>>             },
>>             {
>>               "gain": 1.0,
>>               "power_dbm": -11.40312274336
>>             },
>>             {
>>               "gain": 2.0,
>>               "power_dbm": -10.86652754336
>>             },
>>             {
>>               "gain": 3.0,
>>               "power_dbm": -9.80502054336
>>             },
>>             {
>>               "gain": 4.0,
>>               "power_dbm": -8.98940624336
>>             },
>>             {
>>               "gain": 5.0,
>>               "power_dbm": -8.25477364336
>>             },
>>             {
>>               "gain": 6.0,
>>               "power_dbm": -7.02245754336
>>             },
>>             {
>>               "gain": 7.0,
>>               "power_dbm": -6.08657944336
>>             },
>>  ...
>>             {
>>               "gain": 25.0,
>>               "power_dbm": 11.25659145664
>>             },
>>             {
>>               "gain": 26.0,
>>               "power_dbm": 12.48234065664
>>             },
>>             {
>>               "gain": 27.0,
>>               "power_dbm": 13.41146185664
>>             },
>>             {
>>               "gain": 28.0,
>>               "power_dbm": 14.19771805664
>>             },
>>             {
>>               "gain": 29.0,
>>               "power_dbm": 15.42982635664
>>             },
>>             {
>>               "gain": 30.0,
>>               "power_dbm": 16.36669455664
>>             },
>>             {
>>               "gain": 31.0,
>>               "power_dbm": 17.17767755664
>>             }
>>           ],
>>           "min_power": -11.84374834336,
>>           "max_power": 17.17767755664
>>         }
>>       ]
>>     }
>>   ],
>>   "ref_gain": 0
>> }
>
>
> When looking at the cal data I notice there's a temperature field.  Is
> there a temperature sensor in the USRP that this cal is using? That would
> be really helpful for me to have the calibration include temperature.
>
> Thanks again,
> Devin
>
>
> On Tue, May 4, 2021 at 9:33 AM Martin Braun <martin.braun@ettus.com>
> wrote:
>
>> Also, another clue to what's going wrong could be in the cal data. Can
>> you please convert it to JSON (flatc --strict-json -t
>> /path/to/uhd/host/include/uhd/cal/pwr_cal.fbs --
>> ~/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_XXXXXXX#0.cal).
>>
>> You'll need to install flatc (flatbuffer compiler) first (e.g. apt
>> install flatbuffers-compiler).
>>
>> --M
>>
>> On Tue, May 4, 2021 at 3:22 PM Martin Braun <martin.braun@ettus.com>
>> wrote:
>>
>>> Devin,
>>>
>>> I tried running the exact sequence that you did, and it worked fine
>>> (X310, UBX). Are you compiling UHD from source? If yes, can you please
>>> first enable full logging (-DUHD_LOG_MIN_LEVEL=trace) and then produce a
>>> full log (with UHD_LOG_LEVEL=trace environment variable, and/or
>>> UHD_LOG_CONSOLE_LEVEL=trace environment variable depending on your config).
>>>
>>> Side note -- I'm happy you're using this API, and you seem to have
>>> gotten pretty far. Kudos!
>>>
>>> --M
>>>
>>> On Fri, Apr 23, 2021 at 7:09 PM Devin Kelly <dwwkelly@gmail.com> wrote:
>>>
>>>> Hello,
>>>>
>>>> I'm trying to calibrate the TX power for a USRP X310 using a Keysight
>>>> Field Fox N9952B.
>>>>
>>>> I wrote a class for the field fox that subclasses VISADevice.  It seems
>>>> to get the numbers from the FF fox fine.
>>>>
>>>> I run the calibration and it seems to work just fine:
>>>>
>>>> ./uhd_power_cal.py --args type=x300 -d tx --meas-dev visa --antenna 'TX/RX' -o 'import=field_fox' -o 'visa_query=USB0::MY_INSTRUMENT::INSTR'
>>>>
>>>> === Detecting USRP...
>>>> === Measurement direction: tx
>>>> === Initializing measurement device...
>>>> Loading external module: field_fox
>>>> /usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library not found. Please manually load it using _load_lib(filename). All GPIB functions will raise OSError until the library is manually loaded.
>>>>   warnings.warn(message)
>>>> Loading external module: field_fox
>>>> Found VISA device: Keysight Field Fox N9952B
>>>> === Initializing port connector...
>>>> === Initializing USRP calibration object...
>>>> === Detected USRP type: X310
>>>> === Calibrating for channels: 0
>>>> === Calibrating for antennas: TX/RX
>>>> === Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps
>>>> === Launching calibration...
>>>> === Using USRP LO offset: 10.00 MHz
>>>> === Running calibration for channel 0, antenna TX/RX.
>>>> [tx] Connect your signal generator to device channel 0, antenna TX/RX. Then, hit Enter.
>>>> [X310] Switching to channel 0, antenna TX/RX.
>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>>
>>>> [WARNING] [CAL::DATABASE] Calibration data already exists for key: `x3xx_pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Backing up to: "/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435"
>>>>
>>>>
>>>>
>>>> However, when I try to use the Power API I run into problems:
>>>>
>>>> ./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq
>>>> 10e3 --power 10 --args='type=x300,serial=XXXXXXX' --channels 0
>>>>
>>>> Creating the usrp device with: type=x300,serial=XXXXXX...
>>>> Using Device: Single USRP:
>>>>   Device: X-Series Device
>>>>   Mboard 0: X310
>>>>   RX Channel: 0
>>>>     RX DSP: 0
>>>>     RX Dboard: A
>>>>     RX Subdev: UBX RX
>>>>   RX Channel: 1
>>>>     RX DSP: 1
>>>>     RX Dboard: B
>>>>     RX Subdev: UBX RX
>>>>   TX Channel: 0
>>>>     TX DSP: 0
>>>>     TX Dboard: A
>>>>     TX Subdev: UBX TX
>>>>   TX Channel: 1
>>>>     TX DSP: 1
>>>>     TX Dboard: B
>>>>     TX Subdev: UBX TX
>>>>
>>>> Setting TX Rate: 1.000000 Msps...
>>>> Actual TX Rate: 1.000000 Msps...
>>>>
>>>> Setting TX Freq: 900.000000 MHz...
>>>> Setting TX LO Offset: 0.000000 MHz...
>>>> Actual TX Freq: 900.000000 MHz...
>>>>
>>>> ERROR: USRP does not have a reference power API on channel 0!
>>>>
>>>>
>>>>
>>>> What am I not doing right?   All my cal files are
>>>> in  ~/.local/share/uhd/cal/
>>>>
>>>> The documentation (link
>>>> <https://files.ettus.com/manual/page_power.html>) talks about table
>>>> storage options (hard coded, eeprom, local files) but it doesn't discuss
>>>> how to configure the UHD to use any of those options.  I tried looking at
>>>> the documentation for multi_usrp class too (link
>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632c85ada>)
>>>> without any sucess.
>>>>
>>>> Devin
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000039475f05c29d47ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Devin,</div><div><br></div><div>you don&#39;t nee=
d a calibrated receiver for a calibrated TX. I&#39;ll need to get back to m=
y setup to see if maybe there is a bug here and I simply missed it because =
I had a lingering RX calibration file.</div><div><br></div><div>The tempera=
ture field on X300 is currently unused (X300 does not have a temperature se=
nsor we can use for this). B200 does actually tie this into the temperature=
 sensor on the AD9361. We had a thought of providing a way of manually ente=
ring the ambient temperature, but it got dropped in priority. Let us know i=
f=C2=A0 that&#39;s something that would make your life more useful (but to =
be clear, it would mean you have to provide your own temperature sensor).</=
div><div><br></div><div>--M<br></div><div><br></div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
May 18, 2021 at 5:25 PM Devin Kelly &lt;<a href=3D"mailto:dwwkelly@gmail.co=
m">dwwkelly@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi Martin,<div><br></div><div>Thanks =
for the help.</div><div><br></div><div>When I add the trace debugging I get=
 this:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">...=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">S=
etting TX Rate: 1.000000 Msps...<br>[TRACE] [0/DUC#0] Setting property inte=
rp@USER:0<br>[TRACE] [0/DUC#0] Locally resolving 2 dirty properties plus de=
pendencies.<br>[TRACE] [0/DUC#0] Calling resolver for `interp&#39;@0<br>[TR=
ACE] [0/DUC#0] Set interp to 200<br>[TRACE] [0/DUC#0] Calling resolver for =
`samp_rate_in&#39;@0<br>[TRACE] [0/DUC#0] New samp_rate_in is 1e+06<br>[TRA=
CE] [0/DUC#0] New samp_rate_out is 2e+08<br>[TRACE] [0/DUC#1] Setting prope=
rty interp@USER:0<br>[TRACE] [0/DUC#1] Locally resolving 2 dirty properties=
 plus dependencies.<br>[TRACE] [0/DUC#1] Calling resolver for `interp&#39;@=
0<br>[TRACE] [0/DUC#1] Set interp to 200<br>[TRACE] [0/DUC#1] Calling resol=
ver for `samp_rate_in&#39;@0<br>[TRACE] [0/DUC#1] New samp_rate_in is 1e+06=
<br>[TRACE] [0/DUC#1] New samp_rate_out is 2e+08<br>Actual TX Rate: 1.00000=
0 Msps...<br><br>Setting TX Freq: 900.000000 MHz...<br>Setting TX LO Offset=
: 0.000000 MHz...<br>[TRACE] [MULTI_USRP] Frequency Range 9.500MHz-&gt;6000=
.500MHz<br>[TRACE] [MULTI_USRP] Clipped RX frequency requested: 900.000000M=
Hz<br>[TRACE] [MULTI_USRP] Target RF Freq: 900.000000MHz<br>[TRACE] [UBX] U=
BX TX: the requested frequency is 900.000000 MHz<br>[TRACE] [MAX287X] Inter=
mediates: ref=3D50000000.00, outdiv=3D8.000000, fbdiv=3D36.000000<br>[TRACE=
] [MAX287X] Tune: R=3D1, BS=3D500, N=3D36, FRAC=3D0, MOD=3D4095, T=3D1, D=
=3D0, RFdiv=3D4, type=3DFractional<br>[TRACE] [MAX287X] Frequencies (MHz): =
REQ=3D900.00, ACT=3D900.00, VCO=3D3600.00, PFD=3D25.00, BAND=3D0.05<br>[TRA=
CE] [UBX] UBX TX: the actual frequency is 900.000000 MHz<br>[TRACE] [CAL::D=
ATABASE] Checking for file at /home/lb/.local/share/uhd/cal/tx_iq_311A8A8.c=
al<br>[TRACE] [CAL] Checking for deprecated CSV-based cal data at &quot;/ho=
me/lb/.uhd/cal/tx_iq_cal_v0.2_311A8A8.csv&quot;<br>[TRACE] [CAL] No calibra=
tion data found for tx_iq serial=3D311A8A8<br>[TRACE] [CAL::DATABASE] Check=
ing for file at /home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal<br>[TRACE] =
[CAL::DATABASE] Checking for file at /home/lb/.local/share/uhd/cal/tx_dc_31=
1A8A8.cal<br>[TRACE] [CAL::DATABASE] Checking for file at /home/lb/.local/s=
hare/uhd/cal/tx_dc_311A8A8.cal<br>[TRACE] [CAL::DATABASE] Reading 32872 byt=
es from &quot;/home/lb/.local/share/uhd/cal/tx_dc_311A8A8.cal&quot;<br>[DEB=
UG] [CAL] Loaded calibration data for tx_dc serial=3D311A8A8<br>[TRACE] [MU=
LTI_USRP] Target DSP Freq: -0.000000MHz<br>[TRACE] [0/DUC#0] Setting proper=
ty freq@USER:0<br>[TRACE] [0/DUC#0] Locally resolving 1 dirty properties pl=
us dependencies.<br>Actual TX Freq: 900.000000 MHz...<br><br>[TRACE] [X300-=
CAL-RX] Looking for power cal data for x3xx_pwr_generic_rx_rx2, serial 311A=
8A8#0<br>[TRACE] [CAL::DATABASE] Checking for file at /home/lb/.local/share=
/uhd/cal/x3xx_pwr_generic_rx_rx2_311A8A8#0.cal<br>ERROR: USRP does not have=
 a reference power API on channel 0!<br>[TRACE] [X300-CAL-RX] No power cal =
data found for key x3xx_pwr_generic_rx_rx2, key x3xx_pwr_generic_rx_rx2, se=
rial 311A8A8#0<br>[TRACE] [RFNOC::GRAPH] Shutting down detail::graph...<br>=
[TRACE] [RFNOC::GRAPH::DETAIL] graph::shutdown()<br>[TRACE] [RFNOC::GRAPH] =
Shutting down all blocks ...<br>[TRACE] [0/Replay#0] Calling deinit()<br>[D=
EBUG] [0/Replay#0] deinit() called, but not implemented.<br>[DEBUG] [0/Repl=
ay#0] Invalidating register interface<br>[TRACE] [0/Radio#1] Calling deinit=
()<br>[TRACE] [0/Radio#1] deinit()<br>[DEBUG] [0/Radio#1] Invalidating regi=
ster interface<br>[TRACE] [0/DUC#0] Calling deinit()<br>[DEBUG] [0/DUC#0] d=
einit() called, but not implemented.<br>[DEBUG] [0/DUC#0] Invalidating regi=
ster interface<br>[TRACE] [0/DDC#0] Calling deinit()<br>[DEBUG] [0/DDC#0] d=
einit() called, but not implemented.<br>[DEBUG] [0/DDC#0] Invalidating regi=
ster interface<br>[TRACE] [0/Radio#0] Calling deinit()<br>[TRACE] [0/Radio#=
0] deinit()<br>[DEBUG] [0/Radio#0] Invalidating register interface<br>[TRAC=
E] [0/DDC#1] Calling deinit()<br>[DEBUG] [0/DDC#1] deinit() called, but not=
 implemented.<br>[DEBUG] [0/DDC#1] Invalidating register interface<br>[TRAC=
E] [0/DUC#1] Calling deinit()<br>[DEBUG] [0/DUC#1] deinit() called, but not=
 implemented.<br>[DEBUG] [0/DUC#1] Invalidating register interface<br></blo=
ckquote><div><br></div><div>It looks like the transmit command is failing b=
ecause I haven&#39;t calibrated the receiver.=C2=A0 Is that a bug or is it =
necessary to have a calibrated receiver in order to have a calibrated trans=
mitter?=C2=A0 I&#39;m only interested in the TX side for now.</div><div><br=
></div><div>Also, I looked at the cal data, looks good to me (I removed som=
e lines for brevity)</div><div><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">{<br>=C2=A0 &quot;metadata&quot;: {<br>=C2=A0 =C2=A0 &quot;=
name&quot;: &quot;X310 Power Cal&quot;,<br>=C2=A0 =C2=A0 &quot;serial&quot;=
: &quot;311A8A8#0&quot;,<br>=C2=A0 =C2=A0 &quot;timestamp&quot;: 1619197435=
,<br>=C2=A0 =C2=A0 &quot;version_major&quot;: 1<br>=C2=A0 },<br>=C2=A0 &quo=
t;temp_freq_map&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;t=
emperature&quot;: 20,<br>=C2=A0 =C2=A0 =C2=A0 &quot;freqs&quot;: [<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;freq=
&quot;: 900000000,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;powers&quot;=
: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 0.0,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: -11.72615954336<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;g=
ain&quot;: 1.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;p=
ower_dbm&quot;: -11.40312274336<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 2.0,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: -10.86652754336<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
gain&quot;: 3.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
power_dbm&quot;: -9.80502054336<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 4.0,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: -8.98940624336<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
gain&quot;: 5.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
power_dbm&quot;: -8.25477364336<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 6.0,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: -7.02245754336<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
gain&quot;: 7.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
power_dbm&quot;: -6.08657944336<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 },<br>=C2=A0...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 25.0,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: 11.=
25659145664<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;gain&quot;: 26.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;power_dbm&quot;: 12.48234065664<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 27.0,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: 13=
.41146185664<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;gain&quot;: 28.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;power_dbm&quot;: 14.19771805664<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 29.0,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: 15=
.42982635664<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;gain&quot;: 30.0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;power_dbm&quot;: 16.36669455664<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;gain&quot;: 31.0,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;power_dbm&quot;: 17=
.17767755664<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;min=
_power&quot;: -11.84374834336,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
max_power&quot;: 17.17767755664<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =
=C2=A0 =C2=A0 ]<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;ref_gain&qu=
ot;: 0<br>}</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
/blockquote><div>=C2=A0</div><div>When looking at the cal data I notice the=
re&#39;s a temperature field.=C2=A0 Is there a temperature sensor in the US=
RP that=C2=A0this cal is using? That would be really helpful for me to have=
 the calibration include temperature.</div><div><br></div><div>Thanks again=
,</div><div>Devin</div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 4, 2021 at 9:33 AM Martin=
 Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">mart=
in.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Also, another clue to what&#39;s go=
ing wrong could be in the cal data. Can you please convert it to JSON (<spa=
n style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)">flatc --strict-json -t /path/to/uhd/host/include/=
uhd/cal/pwr_cal.fbs -- ~/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_XXX=
XXXX#0.cal</span>).</span></div><div><span style=3D"font-family:monospace">=
<br></span></div><div><span style=3D"font-family:monospace">You&#39;ll need=
 to install flatc (flatbuffer compiler) first (e.g. apt install flatbuffers=
-compiler).</span></div><div><span style=3D"font-family:monospace"><span st=
yle=3D"font-family:monospace"><span style=3D"color:rgb(24,178,24);backgroun=
d-color:rgb(255,255,255)"><br></span></span></span></div><div><span style=
=3D"font-family:monospace"><span style=3D"font-family:monospace"><span styl=
e=3D"color:rgb(24,178,24);background-color:rgb(255,255,255)">--M</span><br>=
</span></span></div><div><span style=3D"font-family:monospace"></span></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, May 4, 2021 at 3:22 PM Martin Braun &lt;<a href=3D"mailto:martin.b=
raun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Devin,</div><div><br></div><div>I tried running the exact sequence that =
you did, and it worked fine (X310, UBX). Are you compiling UHD from source?=
 If yes, can you please first enable full logging (-DUHD_LOG_MIN_LEVEL=3Dtr=
ace) and then produce a full log (with UHD_LOG_LEVEL=3Dtrace environment va=
riable, and/or UHD_LOG_CONSOLE_LEVEL=3Dtrace environment variable depending=
 on your config).</div><div><br></div><div>Side note -- I&#39;m happy you&#=
39;re using this API, and you seem to have gotten pretty far. Kudos!</div><=
div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 23, 2021 at 7:09 PM Devin Kelly=
 &lt;<a href=3D"mailto:dwwkelly@gmail.com" target=3D"_blank">dwwkelly@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><blockquote style=3D"margin:0px 0px 0px 40px;border:me=
dium none;padding:0px">Hello,</blockquote><div>I&#39;m trying to calibrate =
the TX power=C2=A0for a USRP X310 using a Keysight Field Fox N9952B.</div><=
div><br></div><div>I wrote a class for the field fox that subclasses VISADe=
vice.=C2=A0 It seems to get the numbers from the FF fox fine.</div><div><br=
></div><div>I run the calibration and it seems to work just fine:</div><div=
><br></div><div><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px=
 0px 0px 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20p=
x;font-size:14px;overflow-x:scroll;color:rgb(51,51,51)">./uhd_power_cal.py =
--args type=3Dx300 -d tx --meas-dev visa --antenna &#39;TX/RX&#39; -o &#39;=
import=3Dfield_fox&#39; -o &#39;visa_query=3DUSB0::MY_INSTRUMENT::INSTR&#39=
;</pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0px =
15px;font-family:ConfluenceInstalledFont,monospace;line-height:20px;font-si=
ze:14px;overflow-x:scroll;color:rgb(51,51,51)">=3D=3D=3D Detecting USRP...<=
br>=3D=3D=3D Measurement direction: tx<br>=3D=3D=3D Initializing measuremen=
t device...<br>Loading external module: field_fox<br>/usr/local/lib/python3=
.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library not=
 found. Please manually load it using _load_lib(filename). All GPIB functio=
ns will raise OSError until the library is manually loaded.<br>=C2=A0 warni=
ngs.warn(message)<br>Loading external module: field_fox<br>Found VISA devic=
e: Keysight Field Fox N9952B<br>=3D=3D=3D Initializing port connector...<br=
>=3D=3D=3D Initializing USRP calibration object...<br>=3D=3D=3D Detected US=
RP type: X310<br>=3D=3D=3D Calibrating for channels: 0<br>=3D=3D=3D Calibra=
ting for antennas: TX/RX<br>=3D=3D=3D Requested sampling rate: 5.0 Msps, ac=
tual rate: 5.0 Msps<br>=3D=3D=3D Launching calibration...<br>=3D=3D=3D Usin=
g USRP LO offset: 10.00 MHz<br>=3D=3D=3D Running calibration for channel 0,=
 antenna TX/RX.<br>[tx] Connect your signal generator to device channel 0, =
antenna TX/RX. Then, hit Enter.<br>[X310] Switching to channel 0, antenna T=
X/RX.<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<=
br></pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0p=
x 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20px;font-=
size:14px;overflow-x:scroll;color:rgb(51,51,51)">[WARNING] [CAL::DATABASE] =
Calibration data already exists for key: `x3xx_pwr_generic_tx_tx+rx&#39; se=
rial: `311A8A8#0&#39;. Backing up to: &quot;/home/lb/.local/share/uhd/cal/x=
3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435&quot;<br></pre></div><div=
><br></div><div><br></div><div>However, when I try to use the Power API I r=
un into problems:</div><div><br></div><div><blockquote style=3D"margin:0px =
0px 0px 40px;border:medium none;padding:0px"><div><font face=3D"monospace">=
./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3 --=
power 10 --args=3D&#39;type=3Dx300,serial=3DXXXXXXX&#39; --channels 0 <br><=
br>Creating the usrp device with: type=3Dx300,serial=3DXXXXXX...<br>Using D=
evice: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X=
310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX =
Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=
=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subd=
ev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1=
<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX<br><br>Setting TX Rate: 1.000000 Msps...<br>Actual TX Rat=
e: 1.000000 Msps...<br><br>Setting TX Freq: 900.000000 MHz...<br>Setting TX=
 LO Offset: 0.000000 MHz...<br>Actual TX Freq: 900.000000 MHz...<br><br>ERR=
OR: USRP does not have a reference power API on channel 0!</font><br></div>=
</blockquote></div><div><br></div><div><br></div><div>What am I not doing r=
ight?=C2=A0 =C2=A0All my cal files are in=C2=A0=C2=A0~/.local/share/uhd/cal=
/</div><div><br></div><div>The documentation (<a href=3D"https://files.ettu=
s.com/manual/page_power.html" target=3D"_blank">link</a>) talks about table=
 storage options (hard coded, eeprom, local files) but it doesn&#39;t discu=
ss how to configure the UHD to use any of those options.=C2=A0 I tried look=
ing at the documentation for multi_usrp class too (<a href=3D"https://files=
.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b=
41d8632c85ada" target=3D"_blank">link</a>) without any sucess.</div><div><b=
r></div><div>Devin</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000039475f05c29d47ce--

--===============0745856057095371890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0745856057095371890==--
