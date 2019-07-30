Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD77AE34
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 18:42:37 +0200 (CEST)
Received: from [::1] (port=53258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsVCp-00038h-6E; Tue, 30 Jul 2019 12:42:31 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:46950)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1hsVCl-0002xz-01
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 12:42:27 -0400
Received: by mail-io1-f50.google.com with SMTP id i10so16278244iol.13
 for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2019 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VEJDoOcbWKh8DzLwbk0LIy4LLZsHsN0ft2X3uzyitX0=;
 b=tkzSO85pCgO/frdsGMZdAl29DFJbbioTNU2ZvLeBg9LlyLTk4S583aHdP7WCX6PFw/
 wKdN+Phaxl8sSDHZ7kZk/mLvll5mdHrUbtc44KGjjPyeQM7NxkQWZGlWpS9RRYceMlzf
 /QwFEQSP/sAjJ7m4+VhPXoRSgRFt/Z2V+CtWfIUwlCrsrBW0FmBipNZ4fb1BDKTFWoB7
 HKSvCB0Clf2UHKMJt5A8JcDsRH7XSDBBqtkCnQ3PKi6yDNzChK2/ADaJVz0DTXrRadHg
 PKPoRlPuV8eDvLEXSOx1LJKXy1DL3GqzDq9f/Z00k1DpguvlMPZ1w2/e8Zaa63MR1w6C
 tZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VEJDoOcbWKh8DzLwbk0LIy4LLZsHsN0ft2X3uzyitX0=;
 b=PGcLbVIktbSzdp2wHRNJ/owj9Mcd6vOUzCjo64r0r7R8+sO0BTHdOGggJO78c7jynn
 bCKJdEQz/1S9QxoCaigKNIcsQQCNykahV1Tp4oxM+1wQ7q10LpeekXjdoLFrbrO44K7B
 FPB0fSOynJXPOIF7VK2hXNva1VsjsemE6DEP1PDWPlOCknn4MWTQyLmxHqLPhDFNE3i7
 mb1jJoW7LoQRo1T2tAxmAhvd0INqOrSyWnpvRHc+6+tX8sIWS4w/GeA5WsMP2etRBEnd
 5D54HyJpeNdsYjYqS+XvwicM3XFhZvPdgT3fhhhw5RlrKiXWMxVkmk6hafr4wDSzp6oX
 HZzg==
X-Gm-Message-State: APjAAAWSXtWQ9A80D7KIZZQiH6uS+uCcPABNEJsyfKFGa6yPovb/uJUK
 Cma/m3cAxouE+KutJ9H/ImaZMHF2trUtYpJw6aEs6EIFCEoq/Q==
X-Google-Smtp-Source: APXvYqwUYxIeblcfJybBGp6ucwv3fDTEIdatvDEVhoxSPxfU41bFzHS6Na/bNa/jjYE8mx8qCpK9CpQUKUNB++JIaa8=
X-Received: by 2002:a5d:8416:: with SMTP id i22mr81956847ion.248.1564504905691; 
 Tue, 30 Jul 2019 09:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.62.1564502403.13824.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.62.1564502403.13824.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Tue, 30 Jul 2019 17:41:34 +0100
Message-ID: <CALSxwQH-2YqD4DE0fqTO+EhZee3WH1WkZ3Kwcjm=VsYbU1xo1w@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] turn off filter for DC offset calibration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Content-Type: multipart/mixed; boundary="===============1387662882435231920=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1387662882435231920==
Content-Type: multipart/alternative; boundary="0000000000002738d3058ee8af23"

--0000000000002738d3058ee8af23
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am using N200 with GNU radio and I would like to measure the DC offset.
When I sent in baseband a constant tone, in the receiver I saw only zero.
I tried to change the Enable DC offset in USRP source putting False, but
the information in the receiver is not chaged.
Could you help me?
Best Regards,

Simona

Il giorno mar 30 lug 2019 alle ore 17:31 <usrp-users-request@lists.ettus.com>
ha scritto:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. Help with GPS signal acquisition using USRP N210 (Xu, Zhao)
>    2. Re: Help with GPS signal acquisition using USRP N210
>       (Marcus M?ller)
>    3. Re: Help with GPS signal acquisition using USRP N210 (Xu, Zhao)
>    4. Re:  ??: ??:  ??: N310 "Bad CHDR or packet fragment" Problem (? ?)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 29 Jul 2019 14:40:44 -0400
> From: "Xu, Zhao" <ZhaoXu9807@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Help with GPS signal acquisition using USRP N210
> Message-ID:
>         <
> CACBa4aPHyB0Mu6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello,
>
> I have been struggling with trying to acquire GPS with an N210 for some
> time. I take the liberty of asking you for help that I can't find out the
> error. Here is my setup:
>
> Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,
> > Connector: SMA)
>
> T bias with 3.3 V DC power
>
> USRP N210 + daughter board CBX
>
>
> *While experimenting, I found the logs are the same no matter the power of
> antenna is on or off. So it seems that the antenna doesn't work well or my
> configuration file is wrong. But How can I confirm the antenna's working
> status as it has no indicator light? *
>
> Here is my configuration file (It is from this website:
> https://gnss-sdr.org/conf/#setting-up-the-software-receiver). One thing to
> note is that I changed two parameters: Acquisition_1C.threshold
> and SignalSource.gain. The default value of the threshold is 0.01 which
> causes frequent loss of lock and when I set it to 0.05 the receiver can't
> maintain lock of satellite as the log shown below:
>
> *Acquisition_1C.threshold = 0.01* (Usually I run at least 2 minutes and
> here I just show 10-second log as the following logs are the same.)
>
> > Sampling Rate for the USRP device: 4000000.000000 [sps]...
> > UHD RF CHANNEL #0 SETTINGS
> > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > PLL Frequency tune error 0.010133 [Hz]...
> > Actual daughterboard gain set to: 38.000000 dB...
> > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > Check for front-end LO: locked ... is Locked
> > Starting a TCP/IP server of RTCM messages on port 2101
> > The TCP/IP server of RTCM messages is up and running. Accepting
> > connections ...
> > [WARNING] [CORES] The requested decimation is odd; the user should expect
> > CIC rolloff.
> > Select an even decimation to ensure that a halfband filter is enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
> >
> > Current receiver time: 1 s
> > Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN
> > 06 (Block IIF)
> > Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN
> > 10 (Block IIF)
> > Loss of lock in channel 5!
> > Tracking of GPS L1 C/A signal started on channel 4 for satellite GPS PRN
> > 32 (Block IIF)
> > Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PRN
> > 18 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS PRN
> > 02 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN
> > 22 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 6 for satellite GPS PRN
> > 15 (Block IIR-M)
> > Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS PRN
> > 29 (Block IIR-M)
> > Tracking of GPS L1 C/A signal started on channel 0 for satellite GPS PRN
> > 26 (Block IIF)
> > Current receiver time: 2 s
> > Current receiver time: 3 s
> > Current receiver time: 4 s
> > Current receiver time: 5 s
> > Current receiver time: 6 s
> > Loss of lock in channel 1!
> > Loss of lock in channel 7!
> > Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PRN
> > 11 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS PRN
> > 14 (Block IIR)
> > Loss of lock in channel 3!
> > Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS PRN
> > 23 (Block IIR)
> > Current receiver time: 7 s
> > Current receiver time: 8 s
> > Current receiver time: 9 s
> > Current receiver time: 10 s
> >
>
> *Acquisition_1C.threshold = 0.05*
>
> Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.
> > Logging will be written at ./log
> > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > UHD_3.15.0.git-100-gf6f2e961
> > [INFO] [USRP2] Opening a USRP2/N-Series device...
> > [INFO] [USRP2] Current recv frame size: 1472 bytes
> > [INFO] [USRP2] Current send frame size: 1472 bytes
> > [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000
> > [sps]...
> > The requested decimation is odd; the user should expect CIC rolloff.
> > Select an even decimation to ensure that a halfband filter is enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
> > UHD RF CHANNEL #0 SETTINGS
> > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > PLL Frequency tune error 0.010133 [Hz]...
> > Actual daughterboard gain set to: 38.000000 dB...
> > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > Check for front-end LO: locked ... is Locked
> > Starting a TCP/IP server of RTCM messages on port 2101
> > The TCP/IP server of RTCM messages is up and running. Accepting
> > connections ...
> > [WARNING] [CORES] The requested decimation is odd; the user should expect
> > CIC rolloff.
> > Select an even decimation to ensure that a halfband filter is enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
> > Current receiver time: 1 s
> > Current receiver time: 2 s
> > Current receiver time: 3 s
> > Current receiver time: 4 s
> > Current receiver time: 5 s
> > Current receiver time: 6 s
> > Current receiver time: 7 s
> > Current receiver time: 8 s
> > Current receiver time: 9 s
> > Current receiver time: 10 s
>
>
> My Configuration File:
>
> > [GNSS-SDR]
> > ;######### GLOBAL OPTIONS ##################
> > GNSS-SDR.internal_fs_sps=4000000
> > ;######### SIGNAL_SOURCE CONFIG ############
> > SignalSource.implementation=UHD_Signal_Source
> > SignalSource.device_address=192.168.10.4
> > SignalSource.item_type=cshort
> > SignalSource.sampling_frequency=4000000
> > SignalSource.freq=1575420000
> > SignalSource.gain=15
> > SignalSource.subdevice=A:0  ; <- Can be A:0 or B:0
> > SignalSource.samples=0
> > ;######### SIGNAL_CONDITIONER CONFIG ############
> > SignalConditioner.implementation=Signal_Conditioner
> > ;######### DATA_TYPE_ADAPTER CONFIG ############
> > DataTypeAdapter.implementation=Pass_Through
> > DataTypeAdapter.item_type=cshort
> > ;######### INPUT_FILTER CONFIG ############
> > InputFilter.implementation=Fir_Filter
> > InputFilter.input_item_type=cshort
> > InputFilter.output_item_type=gr_complex
> > InputFilter.taps_item_type=float
> > InputFilter.number_of_taps=11
> > InputFilter.number_of_bands=2
> > InputFilter.band1_begin=0.0
> > InputFilter.band1_end=0.48
> > InputFilter.band2_begin=0.52
> > InputFilter.band2_end=1.0
> > InputFilter.ampl1_begin=1.0
> > InputFilter.ampl1_end=1.0
> > InputFilter.ampl2_begin=0.0
> > InputFilter.ampl2_end=0.0
> > InputFilter.band1_error=1.0
> > InputFilter.band2_error=1.0
> > InputFilter.filter_type=bandpass
> > InputFilter.grid_density=16
> > InputFilter.sampling_frequency=4000000
> > InputFilter.IF=0
> > ;######### RESAMPLER CONFIG ############
> > Resampler.implementation=Pass_Through
> > ;######### CHANNELS GLOBAL CONFIG ############
> > Channels_1C.count=8
> > Channels.in_acquisition=1
> > Channel.signal=1C
> > ;######### ACQUISITION GLOBAL CONFIG ############
> > Acquisition_1C.implementation=GPS_L1_CA_PCPS_Acquisition
> > Acquisition_1C.threshold=0.05
> > Acquisition_1C.doppler_max=8000
> > Acquisition_1C.doppler_step=500
> > ;######### TRACKING GLOBAL CONFIG ############
> > Tracking_1C.implementation=GPS_L1_CA_DLL_PLL_Tracking
> > Tracking_1C.pll_bw_hz=30.0
> > Tracking_1C.dll_bw_hz=4.0
> > Tracking_1C.early_late_space_chips=0.5
> > ;######### TELEMETRY DECODER GPS CONFIG ############
> > TelemetryDecoder_1C.implementation=GPS_L1_CA_Telemetry_Decoder
> > ;######### OBSERVABLES CONFIG ############
> > Observables.implementation=Hybrid_Observables
> > ;######### PVT CONFIG ############
> > PVT.implementation=RTKLIB_PVT
> > PVT.positioning_mode=Single
> > PVT.output_rate_ms=10
> > PVT.display_rate_ms=500
> > PVT.iono_model=Broadcast
> > PVT.trop_model=Saastamoinen
> > PVT.flag_rtcm_server=true
> > PVT.flag_rtcm_tty_port=false
> > PVT.rtcm_dump_devname=/dev/pts/1
> > PVT.rtcm_tcp_port=2101
> > PVT.rtcm_MT1019_rate_ms=5000
> > PVT.rtcm_MT1077_rate_ms=1000
> > PVT.rinex_version=2
>
>
> I also referenced this solution (
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html
> )
> and changed the gain as 15, but this made no sense.
>
> Sincerely,
> Zhao Xu
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/df65e894/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Mon, 29 Jul 2019 23:49:57 +0200
> From: Marcus M?ller <marcus.mueller@ettus.com>
> To: "Xu, Zhao" <ZhaoXu9807@gmail.com>, usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Help with GPS signal acquisition using USRP
>         N210
> Message-ID: <4367367d801ddc6792b7c0cc90a89db0ccc6987e.camel@ettus.com>
> Content-Type: text/plain; charset="UTF-8"
>
> Dear Zhao,
>
> even with an active antenna, GPS signal power is usually below noise
> floor. You can't "see" GPS without processing ain.
>
> so, none of this is surprising.
>
> Best regards,
> Marcus
>
> On Mon, 2019-07-29 at 14:40 -0400, Xu, Zhao via USRP-users wrote:
> > Hello,
> >
> > I have been struggling with trying to acquire GPS with an N210 for
> > some time. I take the liberty of asking you for help that I can't
> > find out the error. Here is my setup:
> >
> > > Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,
> > > Connector: SMA)
> > > T bias with 3.3 V DC power
> > > USRP N210 + daughter board CBX
> >
> >
> > While experimenting, I found the logs are the same no matter the
> > power of antenna is on or off. So it seems that the antenna doesn't
> > work well or my configuration file is wrong. But How can I confirm
> > the antenna's working status as it has no indicator light?
> >
> > Here is my configuration file (It is from this website:
> > https://gnss-sdr.org/conf/#setting-up-the-software-receiver). One
> > thing to note is that I changed two
> > parameters: Acquisition_1C.threshold and SignalSource.gain. The
> > default value of the threshold is 0.01 which causes frequent loss of
> > lock and when I set it to 0.05 the receiver can't maintain lock of
> > satellite as the log shown below:
> >
> > Acquisition_1C.threshold = 0.01 (Usually I run at least 2 minutes and
> > here I just show 10-second log as the following logs are the same.)
> > > Sampling Rate for the USRP device: 4000000.000000 [sps]...
> > > UHD RF CHANNEL #0 SETTINGS
> > > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > > PLL Frequency tune error 0.010133 [Hz]...
> > > Actual daughterboard gain set to: 38.000000 dB...
> > > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > > Check for front-end LO: locked ... is Locked
> > > Starting a TCP/IP server of RTCM messages on port 2101
> > > The TCP/IP server of RTCM messages is up and running. Accepting
> > > connections ...
> > > [WARNING] [CORES] The requested decimation is odd; the user should
> > > expect CIC rolloff.
> > > Select an even decimation to ensure that a halfband filter is
> > > enabled.
> > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > MHz)
> > >
> > > Current receiver time: 1 s
> > > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > > GPS PRN 06 (Block IIF)
> > > Tracking of GPS L1 C/A signal started on channel 2 for satellite
> > > GPS PRN 10 (Block IIF)
> > > Loss of lock in channel 5!
> > > Tracking of GPS L1 C/A signal started on channel 4 for satellite
> > > GPS PRN 32 (Block IIF)
> > > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > > GPS PRN 18 (Block IIR)
> > > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > > GPS PRN 02 (Block IIR)
> > > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > > GPS PRN 22 (Block IIR)
> > > Tracking of GPS L1 C/A signal started on channel 6 for satellite
> > > GPS PRN 15 (Block IIR-M)
> > > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > > GPS PRN 29 (Block IIR-M)
> > > Tracking of GPS L1 C/A signal started on channel 0 for satellite
> > > GPS PRN 26 (Block IIF)
> > > Current receiver time: 2 s
> > > Current receiver time: 3 s
> > > Current receiver time: 4 s
> > > Current receiver time: 5 s
> > > Current receiver time: 6 s
> > > Loss of lock in channel 1!
> > > Loss of lock in channel 7!
> > > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > > GPS PRN 11 (Block IIR)
> > > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > > GPS PRN 14 (Block IIR)
> > > Loss of lock in channel 3!
> > > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > > GPS PRN 23 (Block IIR)
> > > Current receiver time: 7 s
> > > Current receiver time: 8 s
> > > Current receiver time: 9 s
> > > Current receiver time: 10 s
> >
> >
> > Acquisition_1C.threshold = 0.05
> >
> > > Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.
> > > Logging will be written at ./log
> > > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > > UHD_3.15.0.git-100-gf6f2e961
> > > [INFO] [USRP2] Opening a USRP2/N-Series device...
> > > [INFO] [USRP2] Current recv frame size: 1472 bytes
> > > [INFO] [USRP2] Current send frame size: 1472 bytes
> > > [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000
> > > [sps]...
> > > The requested decimation is odd; the user should expect CIC
> > > rolloff.
> > > Select an even decimation to ensure that a halfband filter is
> > > enabled.
> > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > MHz)
> > > UHD RF CHANNEL #0 SETTINGS
> > > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > > PLL Frequency tune error 0.010133 [Hz]...
> > > Actual daughterboard gain set to: 38.000000 dB...
> > > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > > Check for front-end LO: locked ... is Locked
> > > Starting a TCP/IP server of RTCM messages on port 2101
> > > The TCP/IP server of RTCM messages is up and running. Accepting
> > > connections ...
> > > [WARNING] [CORES] The requested decimation is odd; the user should
> > > expect CIC rolloff.
> > > Select an even decimation to ensure that a halfband filter is
> > > enabled.
> > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > MHz)
> > > Current receiver time: 1 s
> > > Current receiver time: 2 s
> > > Current receiver time: 3 s
> > > Current receiver time: 4 s
> > > Current receiver time: 5 s
> > > Current receiver time: 6 s
> > > Current receiver time: 7 s
> > > Current receiver time: 8 s
> > > Current receiver time: 9 s
> > > Current receiver time: 10 s
> >
> > My Configuration File:
> > > [GNSS-SDR]
> > > ;######### GLOBAL OPTIONS ##################
> > > GNSS-SDR.internal_fs_sps=4000000
> > > ;######### SIGNAL_SOURCE CONFIG ############
> > > SignalSource.implementation=UHD_Signal_Source
> > > SignalSource.device_address=192.168.10.4
> > > SignalSource.item_type=cshort
> > > SignalSource.sampling_frequency=4000000
> > > SignalSource.freq=1575420000
> > > SignalSource.gain=15
> > > SignalSource.subdevice=A:0  ; <- Can be A:0 or B:0
> > > SignalSource.samples=0
> > > ;######### SIGNAL_CONDITIONER CONFIG ############
> > > SignalConditioner.implementation=Signal_Conditioner
> > > ;######### DATA_TYPE_ADAPTER CONFIG ############
> > > DataTypeAdapter.implementation=Pass_Through
> > > DataTypeAdapter.item_type=cshort
> > > ;######### INPUT_FILTER CONFIG ############
> > > InputFilter.implementation=Fir_Filter
> > > InputFilter.input_item_type=cshort
> > > InputFilter.output_item_type=gr_complex
> > > InputFilter.taps_item_type=float
> > > InputFilter.number_of_taps=11
> > > InputFilter.number_of_bands=2
> > > InputFilter.band1_begin=0.0
> > > InputFilter.band1_end=0.48
> > > InputFilter.band2_begin=0.52
> > > InputFilter.band2_end=1.0
> > > InputFilter.ampl1_begin=1.0
> > > InputFilter.ampl1_end=1.0
> > > InputFilter.ampl2_begin=0.0
> > > InputFilter.ampl2_end=0.0
> > > InputFilter.band1_error=1.0
> > > InputFilter.band2_error=1.0
> > > InputFilter.filter_type=bandpass
> > > InputFilter.grid_density=16
> > > InputFilter.sampling_frequency=4000000
> > > InputFilter.IF=0
> > > ;######### RESAMPLER CONFIG ############
> > > Resampler.implementation=Pass_Through
> > > ;######### CHANNELS GLOBAL CONFIG ############
> > > Channels_1C.count=8
> > > Channels.in_acquisition=1
> > > Channel.signal=1C
> > > ;######### ACQUISITION GLOBAL CONFIG ############
> > > Acquisition_1C.implementation=GPS_L1_CA_PCPS_Acquisition
> > > Acquisition_1C.threshold=0.05
> > > Acquisition_1C.doppler_max=8000
> > > Acquisition_1C.doppler_step=500
> > > ;######### TRACKING GLOBAL CONFIG ############
> > > Tracking_1C.implementation=GPS_L1_CA_DLL_PLL_Tracking
> > > Tracking_1C.pll_bw_hz=30.0
> > > Tracking_1C.dll_bw_hz=4.0
> > > Tracking_1C.early_late_space_chips=0.5
> > > ;######### TELEMETRY DECODER GPS CONFIG ############
> > > TelemetryDecoder_1C.implementation=GPS_L1_CA_Telemetry_Decoder
> > > ;######### OBSERVABLES CONFIG ############
> > > Observables.implementation=Hybrid_Observables
> > > ;######### PVT CONFIG ############
> > > PVT.implementation=RTKLIB_PVT
> > > PVT.positioning_mode=Single
> > > PVT.output_rate_ms=10
> > > PVT.display_rate_ms=500
> > > PVT.iono_model=Broadcast
> > > PVT.trop_model=Saastamoinen
> > > PVT.flag_rtcm_server=true
> > > PVT.flag_rtcm_tty_port=false
> > > PVT.rtcm_dump_devname=/dev/pts/1
> > > PVT.rtcm_tcp_port=2101
> > > PVT.rtcm_MT1019_rate_ms=5000
> > > PVT.rtcm_MT1077_rate_ms=1000
> > > PVT.rinex_version=2
> >
> > I also referenced this solution (
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html
> > ) and changed the gain as 15, but this made no sense.
> >
> > Sincerely,
> > Zhao Xu
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>
> ------------------------------
>
> Message: 3
> Date: Mon, 29 Jul 2019 18:15:45 -0400
> From: "Xu, Zhao" <ZhaoXu9807@gmail.com>
> To: Marcus M?ller <marcus.mueller@ettus.com>
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Help with GPS signal acquisition using USRP
>         N210
> Message-ID:
>         <
> CACBa4aMEdOnR-+MypCudt-O6M6HYGaFj18dxeYzuD-H_gbaqpQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Dear Marcus,
>
> Thank you very much for your reply!
>
> *I agree with you but my situation is a little different because my
> receiver (USRP N210) can't receive any data (even noise) and can't save
> file when I press q command. To be specific, every log of my experiment
> ends with warnings that it failed to save data. *
>
> Here is a 2-minute log for your reference:
>
> >
> > Log file created at: 2019/07/27 19:26:15
> > Running on machine: yilin-Precision-3530
> > Log line format: [IWEF]mmdd hh:mm:ss.uuuuuu threadid file:line] msg
> > I0727 19:26:15.615741 17918 gnss_block_factory.cc:195] Getting
> > SignalSource with implementation UHD_Signal_Source
> > I0727 19:26:16.950304 17918 uhd_signal_source.cc:164] Sampling Rate for
> > the USRP device: 4000000.000000 [sps]...
> > I0727 19:26:16.950991 17918 uhd_signal_source.cc:174] Actual USRP center
> > freq. set to: 1575420000.010133 [Hz]...
> > I0727 19:26:16.951119 17918 uhd_signal_source.cc:178] PLL Frequency tune
> > error 0.010133 [Hz]...
> > I0727 19:26:16.951756 17918 uhd_signal_source.cc:183] Actual
> daughterboard
> > gain set to: 15.000000 dB...
> > I0727 19:26:16.952322 17918 gnss_block_factory.cc:241] Getting
> > SignalConditioner with DataTypeAdapter implementation: Pass_Through,
> > InputFilter implementation: Fir_Filter, and Resampler implementation:
> > Pass_Through
> > I0727 19:26:16.953771 17918 gnss_block_factory.cc:271] Getting
> Observables
> > with implementation Hybrid_Observables
> > I0727 19:26:16.954036 17918 gnss_block_factory.cc:299] Getting PVT with
> > implementation RTKLIB_PVT
> > I0727 19:26:16.958174 17918 gnss_block_factory.cc:951] Getting 8 GPS L1
> > C/A channels
> > I0727 19:26:16.958238 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 0 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:16.970176 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 0
> > I0727 19:26:16.974195 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 1 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:16.995465 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 1
> > I0727 19:26:16.998857 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 2 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.007000 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 2
> > I0727 19:26:17.009788 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 3 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.014974 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 3
> > I0727 19:26:17.016788 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 4 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.020576 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 4
> > I0727 19:26:17.022069 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 5 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.025209 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 5
> > I0727 19:26:17.026458 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 6 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.029266 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 6
> > I0727 19:26:17.030339 17918 gnss_block_factory.cc:323] Instantiating
> > Channel 7 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> > Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> > implementation: GPS_L1_CA_Telemetry_Decoder
> > I0727 19:26:17.032866 17918 dll_pll_veml_tracking.cc:1526] Tracking
> > Channel set to 7
> > I0727 19:26:17.033880 17918 gnss_block_factory.cc:981] Getting 0 GPS L2C
> > (M) channels
> > I0727 19:26:17.033887 17918 gnss_block_factory.cc:1010] Getting 0 GPS L5
> > channels
> > I0727 19:26:17.033890 17918 gnss_block_factory.cc:1039] Getting 0 GALILEO
> > E1 B (I/NAV OS) channels
> > I0727 19:26:17.033893 17918 gnss_block_factory.cc:1068] Getting 0 GALILEO
> > E5a I (F/NAV OS) channels
> > I0727 19:26:17.033896 17918 gnss_block_factory.cc:1097] Getting 0 GLONASS
> > L1 C/A channels
> > I0727 19:26:17.033913 17918 gnss_block_factory.cc:1127] Getting 0 GLONASS
> > L2 C/A channels
> > I0727 19:26:17.033916 17918 gnss_block_factory.cc:1157] Getting 0 BEIDOU
> > B1I channels
> > I0727 19:26:17.033919 17918 gnss_block_factory.cc:1187] Getting 0 BEIDOU
> > B3I channels
> > I0727 19:26:17.034056 17918 gnss_flowgraph.cc:131] Connecting flowgraph
> > I0727 19:26:17.034147 17918 gnss_flowgraph.cc:264] connecting sig_source_
> > 0 stream 0 to conditioner 0
> > I0727 19:26:17.035058 17918 gnss_flowgraph.cc:723] Channel 0 assigned to
> > GPS PRN 01 (Block IIF) Signal 1C
> > I0727 19:26:17.035065 17918 gnss_flowgraph.cc:727] Channel 0 connected to
> > observables and ready for acquisition
> > I0727 19:26:17.035068 17918 gnss_flowgraph.cc:723] Channel 1 assigned to
> > GPS PRN 02 (Block IIR) Signal 1C
> > I0727 19:26:17.035073 17918 gnss_flowgraph.cc:731] Channel 1 connected to
> > observables in standby mode
> > I0727 19:26:17.035073 17918 gnss_flowgraph.cc:723] Channel 2 assigned to
> > GPS PRN 03 (Block IIF) Signal 1C
> > I0727 19:26:17.035077 17918 gnss_flowgraph.cc:731] Channel 2 connected to
> > observables in standby mode
> > I0727 19:26:17.035079 17918 gnss_flowgraph.cc:723] Channel 3 assigned to
> > GPS PRN 04 (Block Unknown) Signal 1C
> > I0727 19:26:17.035084 17918 gnss_flowgraph.cc:731] Channel 3 connected to
> > observables in standby mode
> > I0727 19:26:17.035085 17918 gnss_flowgraph.cc:723] Channel 4 assigned to
> > GPS PRN 05 (Block IIR-M) Signal 1C
> > I0727 19:26:17.035089 17918 gnss_flowgraph.cc:731] Channel 4 connected to
> > observables in standby mode
> > I0727 19:26:17.035090 17918 gnss_flowgraph.cc:723] Channel 5 assigned to
> > GPS PRN 06 (Block IIF) Signal 1C
> > I0727 19:26:17.035094 17918 gnss_flowgraph.cc:731] Channel 5 connected to
> > observables in standby mode
> > I0727 19:26:17.035095 17918 gnss_flowgraph.cc:723] Channel 6 assigned to
> > GPS PRN 07 (Block IIR-M) Signal 1C
> > I0727 19:26:17.035099 17918 gnss_flowgraph.cc:731] Channel 6 connected to
> > observables in standby mode
> > I0727 19:26:17.035101 17918 gnss_flowgraph.cc:723] Channel 7 assigned to
> > GPS PRN 08 (Block IIF) Signal 1C
> > I0727 19:26:17.035104 17918 gnss_flowgraph.cc:731] Channel 7 connected to
> > observables in standby mode
> > I0727 19:26:17.035106 17918 gnss_flowgraph.cc:736] Flowgraph connected
> > I0727 19:26:17.035109 17918 control_thread.cc:307] Flowgraph connected
> > I0727 19:26:17.038399 17918 control_thread.cc:318] Flowgraph started
> > *I0727 19:28:19.432575 17918 control_thread.cc:855] Received action STOP*
> > I0727 19:28:19.433041 17918 gnss_flowgraph.cc:743] Disconnecting
> flowgraph
> > I0727 19:28:19.433264 17918 gnss_flowgraph.cc:1039] Flowgraph
> disconnected
> > I0727 19:28:19.933521 17918 control_thread.cc:370] Flowgraph stopped
> > I0727 19:28:21.284571 17918 file_configuration.cc:60] Destructor called
> > I0727 19:28:21.284590 17918 rtklib_pvt_gs.cc:482] Failed to save GPS L2CM
> > or L5 Ephemeris, map is empty
> > I0727 19:28:21.284592 17918 rtklib_pvt_gs.cc:508] Failed to save GPS L1
> CA
> > Ephemeris, map is empty
> > I0727 19:28:21.284595 17918 rtklib_pvt_gs.cc:538] Failed to save Galileo
> > E1 Ephemeris, map is empty
> > I0727 19:28:21.284596 17918 rtklib_pvt_gs.cc:568] Failed to save GLONASS
> > GNAV Ephemeris, map is empty
> > I0727 19:28:21.284597 17918 rtklib_pvt_gs.cc:598] Failed to save GPS UTC
> > model parameters, not valid data
> > I0727 19:28:21.284600 17918 rtklib_pvt_gs.cc:628] Failed to save Galileo
> > UTC model parameters, not valid data
> > I0727 19:28:21.284601 17918 rtklib_pvt_gs.cc:658] Failed to save GPS
> > ionospheric model parameters, not valid data
> > I0727 19:28:21.284602 17918 rtklib_pvt_gs.cc:688] Failed to save GPS CNAV
> > ionospheric model parameters, not valid data
> > I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:718] Failed to save Galileo
> > ionospheric model parameters, not valid data
> > I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:748] Failed to save GPS
> > almanac, map is empty
> > I0727 19:28:21.284607 17918 rtklib_pvt_gs.cc:778] Failed to save Galileo
> > almanac, not valid data
> > I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:808] Failed to save GPS CNAV
> > UTC model parameters, not valid data
> > I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:838] Failed to save GLONASS
> > GNAV ephemeris, map is empty
> > I0727 19:28:21.284612 17918 rtklib_pvt_gs.cc:868] Failed to save GLONASS
> > GNAV ephemeris, not valid data
> > I0727 19:28:21.284613 17918 rtklib_pvt_gs.cc:898] Failed to save BeiDou
> > DNAV Ephemeris, map is empty
> > I0727 19:28:21.284615 17918 rtklib_pvt_gs.cc:928] Failed to save BeiDou
> > DNAV ionospheric model parameters, not valid data
> > I0727 19:28:21.284617 17918 rtklib_pvt_gs.cc:958] Failed to save BeiDou
> > DNAV almanac, map is empty
> > I0727 19:28:21.284618 17918 rtklib_pvt_gs.cc:988] Failed to save BeiDou
> > DNAV UTC model parameters, not valid data
>
>
> *I looked up the source code of gnss-sdr from GitHub and I found the codes
> that output these warnings from line 412. I also tried to press CTRL+C to
> interrupt the program and to see the intermediate files. But none of them
> has valid data.*
>
> *intermediate files list (also attached for your reference):*
> > pvt.data_190727_144704.gpx
> > pvt.data_190727_144704.geojson
> > pvt.data_190727_144704.kml
> > GSDR208o47.19B   0kB
> > GSDR208o47.19P   0kB
>
> GSDR208o47.19O   0kB
> > GSDR208o47.19N   0kB
> > GSDR208o47.19G   0kB
> > GSDR208o47.19F    0kB
> > GSDR208o47.19L    0kB
>
>
> Sincerely,
> Zhao Xu
>
> Marcus M?ller <marcus.mueller@ettus.com> ?2019?7?29??? ??5:50???
>
> > Dear Zhao,
> >
> > even with an active antenna, GPS signal power is usually below noise
> > floor. You can't "see" GPS without processing ain.
> >
> > so, none of this is surprising.
> >
> > Best regards,
> > Marcus
> >
> > On Mon, 2019-07-29 at 14:40 -0400, Xu, Zhao via USRP-users wrote:
> > > Hello,
> > >
> > > I have been struggling with trying to acquire GPS with an N210 for
> > > some time. I take the liberty of asking you for help that I can't
> > > find out the error. Here is my setup:
> > >
> > > > Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,
> > > > Connector: SMA)
> > > > T bias with 3.3 V DC power
> > > > USRP N210 + daughter board CBX
> > >
> > >
> > > While experimenting, I found the logs are the same no matter the
> > > power of antenna is on or off. So it seems that the antenna doesn't
> > > work well or my configuration file is wrong. But How can I confirm
> > > the antenna's working status as it has no indicator light?
> > >
> > > Here is my configuration file (It is from this website:
> > > https://gnss-sdr.org/conf/#setting-up-the-software-receiver). One
> > > thing to note is that I changed two
> > > parameters: Acquisition_1C.threshold and SignalSource.gain. The
> > > default value of the threshold is 0.01 which causes frequent loss of
> > > lock and when I set it to 0.05 the receiver can't maintain lock of
> > > satellite as the log shown below:
> > >
> > > Acquisition_1C.threshold = 0.01 (Usually I run at least 2 minutes and
> > > here I just show 10-second log as the following logs are the same.)
> > > > Sampling Rate for the USRP device: 4000000.000000 [sps]...
> > > > UHD RF CHANNEL #0 SETTINGS
> > > > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > > > PLL Frequency tune error 0.010133 [Hz]...
> > > > Actual daughterboard gain set to: 38.000000 dB...
> > > > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > > > Check for front-end LO: locked ... is Locked
> > > > Starting a TCP/IP server of RTCM messages on port 2101
> > > > The TCP/IP server of RTCM messages is up and running. Accepting
> > > > connections ...
> > > > [WARNING] [CORES] The requested decimation is odd; the user should
> > > > expect CIC rolloff.
> > > > Select an even decimation to ensure that a halfband filter is
> > > > enabled.
> > > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > > MHz)
> > > >
> > > > Current receiver time: 1 s
> > > > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > > > GPS PRN 06 (Block IIF)
> > > > Tracking of GPS L1 C/A signal started on channel 2 for satellite
> > > > GPS PRN 10 (Block IIF)
> > > > Loss of lock in channel 5!
> > > > Tracking of GPS L1 C/A signal started on channel 4 for satellite
> > > > GPS PRN 32 (Block IIF)
> > > > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > > > GPS PRN 18 (Block IIR)
> > > > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > > > GPS PRN 02 (Block IIR)
> > > > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > > > GPS PRN 22 (Block IIR)
> > > > Tracking of GPS L1 C/A signal started on channel 6 for satellite
> > > > GPS PRN 15 (Block IIR-M)
> > > > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > > > GPS PRN 29 (Block IIR-M)
> > > > Tracking of GPS L1 C/A signal started on channel 0 for satellite
> > > > GPS PRN 26 (Block IIF)
> > > > Current receiver time: 2 s
> > > > Current receiver time: 3 s
> > > > Current receiver time: 4 s
> > > > Current receiver time: 5 s
> > > > Current receiver time: 6 s
> > > > Loss of lock in channel 1!
> > > > Loss of lock in channel 7!
> > > > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > > > GPS PRN 11 (Block IIR)
> > > > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > > > GPS PRN 14 (Block IIR)
> > > > Loss of lock in channel 3!
> > > > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > > > GPS PRN 23 (Block IIR)
> > > > Current receiver time: 7 s
> > > > Current receiver time: 8 s
> > > > Current receiver time: 9 s
> > > > Current receiver time: 10 s
> > >
> > >
> > > Acquisition_1C.threshold = 0.05
> > >
> > > > Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.
> > > > Logging will be written at ./log
> > > > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > > > UHD_3.15.0.git-100-gf6f2e961
> > > > [INFO] [USRP2] Opening a USRP2/N-Series device...
> > > > [INFO] [USRP2] Current recv frame size: 1472 bytes
> > > > [INFO] [USRP2] Current send frame size: 1472 bytes
> > > > [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000
> > > > [sps]...
> > > > The requested decimation is odd; the user should expect CIC
> > > > rolloff.
> > > > Select an even decimation to ensure that a halfband filter is
> > > > enabled.
> > > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > > MHz)
> > > > UHD RF CHANNEL #0 SETTINGS
> > > > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > > > PLL Frequency tune error 0.010133 [Hz]...
> > > > Actual daughterboard gain set to: 38.000000 dB...
> > > > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > > > Check for front-end LO: locked ... is Locked
> > > > Starting a TCP/IP server of RTCM messages on port 2101
> > > > The TCP/IP server of RTCM messages is up and running. Accepting
> > > > connections ...
> > > > [WARNING] [CORES] The requested decimation is odd; the user should
> > > > expect CIC rolloff.
> > > > Select an even decimation to ensure that a halfband filter is
> > > > enabled.
> > > > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > > > MHz)
> > > > Current receiver time: 1 s
> > > > Current receiver time: 2 s
> > > > Current receiver time: 3 s
> > > > Current receiver time: 4 s
> > > > Current receiver time: 5 s
> > > > Current receiver time: 6 s
> > > > Current receiver time: 7 s
> > > > Current receiver time: 8 s
> > > > Current receiver time: 9 s
> > > > Current receiver time: 10 s
> > >
> > > My Configuration File:
> > > > [GNSS-SDR]
> > > > ;######### GLOBAL OPTIONS ##################
> > > > GNSS-SDR.internal_fs_sps=4000000
> > > > ;######### SIGNAL_SOURCE CONFIG ############
> > > > SignalSource.implementation=UHD_Signal_Source
> > > > SignalSource.device_address=192.168.10.4
> > > > SignalSource.item_type=cshort
> > > > SignalSource.sampling_frequency=4000000
> > > > SignalSource.freq=1575420000
> > > > SignalSource.gain=15
> > > > SignalSource.subdevice=A:0  ; <- Can be A:0 or B:0
> > > > SignalSource.samples=0
> > > > ;######### SIGNAL_CONDITIONER CONFIG ############
> > > > SignalConditioner.implementation=Signal_Conditioner
> > > > ;######### DATA_TYPE_ADAPTER CONFIG ############
> > > > DataTypeAdapter.implementation=Pass_Through
> > > > DataTypeAdapter.item_type=cshort
> > > > ;######### INPUT_FILTER CONFIG ############
> > > > InputFilter.implementation=Fir_Filter
> > > > InputFilter.input_item_type=cshort
> > > > InputFilter.output_item_type=gr_complex
> > > > InputFilter.taps_item_type=float
> > > > InputFilter.number_of_taps=11
> > > > InputFilter.number_of_bands=2
> > > > InputFilter.band1_begin=0.0
> > > > InputFilter.band1_end=0.48
> > > > InputFilter.band2_begin=0.52
> > > > InputFilter.band2_end=1.0
> > > > InputFilter.ampl1_begin=1.0
> > > > InputFilter.ampl1_end=1.0
> > > > InputFilter.ampl2_begin=0.0
> > > > InputFilter.ampl2_end=0.0
> > > > InputFilter.band1_error=1.0
> > > > InputFilter.band2_error=1.0
> > > > InputFilter.filter_type=bandpass
> > > > InputFilter.grid_density=16
> > > > InputFilter.sampling_frequency=4000000
> > > > InputFilter.IF=0
> > > > ;######### RESAMPLER CONFIG ############
> > > > Resampler.implementation=Pass_Through
> > > > ;######### CHANNELS GLOBAL CONFIG ############
> > > > Channels_1C.count=8
> > > > Channels.in_acquisition=1
> > > > Channel.signal=1C
> > > > ;######### ACQUISITION GLOBAL CONFIG ############
> > > > Acquisition_1C.implementation=GPS_L1_CA_PCPS_Acquisition
> > > > Acquisition_1C.threshold=0.05
> > > > Acquisition_1C.doppler_max=8000
> > > > Acquisition_1C.doppler_step=500
> > > > ;######### TRACKING GLOBAL CONFIG ############
> > > > Tracking_1C.implementation=GPS_L1_CA_DLL_PLL_Tracking
> > > > Tracking_1C.pll_bw_hz=30.0
> > > > Tracking_1C.dll_bw_hz=4.0
> > > > Tracking_1C.early_late_space_chips=0.5
> > > > ;######### TELEMETRY DECODER GPS CONFIG ############
> > > > TelemetryDecoder_1C.implementation=GPS_L1_CA_Telemetry_Decoder
> > > > ;######### OBSERVABLES CONFIG ############
> > > > Observables.implementation=Hybrid_Observables
> > > > ;######### PVT CONFIG ############
> > > > PVT.implementation=RTKLIB_PVT
> > > > PVT.positioning_mode=Single
> > > > PVT.output_rate_ms=10
> > > > PVT.display_rate_ms=500
> > > > PVT.iono_model=Broadcast
> > > > PVT.trop_model=Saastamoinen
> > > > PVT.flag_rtcm_server=true
> > > > PVT.flag_rtcm_tty_port=false
> > > > PVT.rtcm_dump_devname=/dev/pts/1
> > > > PVT.rtcm_tcp_port=2101
> > > > PVT.rtcm_MT1019_rate_ms=5000
> > > > PVT.rtcm_MT1077_rate_ms=1000
> > > > PVT.rinex_version=2
> > >
> > > I also referenced this solution (
> > >
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html
> > > ) and changed the gain as 15, but this made no sense.
> > >
> > > Sincerely,
> > > Zhao Xu
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users@lists.ettus.com
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/51ea41b6/attachment-0001.html
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: gpstest.conf
> Type: application/octet-stream
> Size: 2471 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/51ea41b6/attachment-0001.conf
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: pvt.dat_190727_144704.gpx
> Type: application/octet-stream
> Size: 820 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/51ea41b6/attachment-0001.gpx
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: pvt.dat_190727_144704.geojson
> Type: application/octet-stream
> Size: 165 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/51ea41b6/attachment-0001.geojson
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: pvt.dat_190727_144704.kml
> Type: application/octet-stream
> Size: 1492 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190729/51ea41b6/attachment-0001.kml
> >
>
> ------------------------------
>
> Message: 4
> Date: Tue, 30 Jul 2019 00:48:47 +0000
> From: ? ? <retina999@hotmail.com>
> To: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Cc: Sam Reiter <sam.reiter@ettus.com>, "usrp-users@lists.ettus.com"
>         <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users]  ??: ??:  ??: N310 "Bad CHDR or packet
>         fragment" Problem
> Message-ID:
>         <
> HK0PR01MB2835B708C9240442B8368BC5F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com
> >
>
> Content-Type: text/plain; charset="utf-8"
>
> Thank you very much!  It did work.
>
> On 2019/7/28 ??8:11, Marcus D. Leech wrote:
> On 07/27/2019 08:02 PM, ? ? wrote:
> Actually I have tried 1500, same errors. Is there a way to use PyBOMBS to
> create the RFNOC environment with a specified UHD version(3.14.0.0) instead
> of the default latest version (3.15)?
>
> I'm not much of a PyBombs user myself, but something like
>
>
> pybombs config --package uhd gitrev v3.14.0.0
>
>
>
> Before proceeding with the rest of your PyBombs flow.
>
>
> ???: Marcus D Leech<mailto:patchvonbraun@gmail.com>
> ????: 2019?7?28? 3:02
> ???: ? ?<mailto:retina999@hotmail.com>
> ??: Sam Reiter<mailto:sam.reiter@ettus.com>; usrp-users@lists.ettus.com
> <mailto:usrp-users@lists.ettus.com>
> ??: Re: ??: [USRP-users] ??: N310 "Bad CHDR or packet fragment" Problem
>
> Try adjusting the MTU as well to 1500.
>
> Sent from my iPhone
>
> On Jul 26, 2019, at 9:36 PM, ? ? <retina999@hotmail.com<mailto:
> retina999@hotmail.com>> wrote:
>
> FYI
>
>
>
> ifconfig
>
> enp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>
>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255
>
>         inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20<link>
>
>         ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)
>
>         RX packets 3352  bytes 2274650 (2.2 MB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 2926  bytes 246527 (246.5 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>
>
> lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>
>         inet 127.0.0.1  netmask 255.0.0.0
>
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>
>         loop  txqueuelen 1000  (Local Loopback)
>
>         RX packets 369  bytes 29489 (29.4 KB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 369  bytes 29489 (29.4 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>
>
> wlx3c46d8d7c86c: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>
>         inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.255
>
>         inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20<link>
>
>         ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)
>
>         RX packets 1043  bytes 822132 (822.1 KB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 873  bytes 119925 (119.9 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> On 2019/7/27 ? ?1:17, Sam Reiter wrote:
> Can you post the output of ifconfig on your system?
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
>
> On Thu, Jul 25, 2019 at 7:40 PM ? ? <retina999@hotmail.com<mailto:
> retina999@hotmail.com>> wrote:
>
> Thanks!
>
> I am learning to use RFNOC to integrate a baseband. So I used PyBOMBS to
> create the environment.  The automatically installed UHD version is as
> follows
>
> uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-19-g7e1b567d
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3182B09
>     addr: 192.168.10.2
>     claimed: False
>     mgmt_addr: 192.168.1.151
>     mgmt_addr: 192.168.10.2
>     product: n310
>     type: n3xx
>
> But how to add  to the device arguments?  I tried like this but not working
>
> /usr/local/lib/uhd/examples/rx_ascii_art_dft --args
> "master_clock_rate=125e6,mgmt_addr=192.168.1.151,recv_frame_size=1476,addr=192.168.10.2"
> --freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lvl="-50" --dyn-rng 90 --ant
> "RX2" --subdev "A:0"
>
>
> On 2019/7/26 ??5:17, Sam Reiter wrote:
> Found the offending commit and reported the issue. It also looks like
> adding recv_frame_size=1476 explicitly to the device arguments cleared
> things up on my N310 running 3.14.1.0. Let me know if this does / doesn't
> work for anyone.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
>
> On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech <patchvonbraun@gmail.com
> <mailto:patchvonbraun@gmail.com>> wrote:
> On 07/25/2019 03:56 PM, Sam Reiter wrote:
> Follow up on this thread. I ran my N310 with a 1GbE link and was able to
> reproduce the "Bad CHDR or packet fragment issue". It seems specific to
> N3xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton of time trying
> to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared the
> issue for me.
>
> I'll spend some time finding the offending commit and see what I can't do
> to get a fix / workaround figured out for 3.14.1.0.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
> Thanks, Sam.  When I go into the lab later, I can probably confirm this as
> well, I haven't seen it before, but I think I'm runing 3.14.0.0
>
>
>
> On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.com
> <mailto:patchvonbraun@gmail.com>> wrote:
> Normally Intel controllers have better performance but even a RealTek chip
> should have no problem at those data rates.
>
>
> Sent from my iPhone
>
> On Jul 23, 2019, at 10:01 PM, ? ? <retina999@hotmail.com<mailto:
> retina999@hotmail.com>> wrote:
> Actually my pc?s Ethernet card chip is from Realtek.
> I?ve tried all possible MTU sizes of auto, 1000, 1500, 2000, and up to
> 9000. Always the same errors.
> Is it the inherent problem with the Realtek chip?
> If that, is there any workaround? eg. Changing the default Linux driver,
> or the last solution, ie. I have to try install a PCIE network card. Which
> brand ethernet card is compatible, one from Intel?
>
>
> ???: Marcus D Leech <patchvonbraun@gmail.com<mailto:
> patchvonbraun@gmail.com>>
> ? ???: Wednesday, July 24, 2019 7:34:13 AM
> ? ??: ? ? <retina999@hotmail.com<mailto:retina999@hotmail.com>>
> ??: Sam Reiter <sam.reiter@ettus.com<mailto:sam.reiter@ettus.com>>;
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
> ? ?: Re: [USRP-users] ??: N310 "Bad CHDR or packet fragment" Problem
>
> Some Ethernet 1g controllers won?t actually do MTUs greater than 1500
> despite ethnology telling them to. Some Realtek for example.
>
> If it?s just 1G try default MTU of 1500 and work your way up to see where
> it fails.
> Sent from my iPhone
>
> On Jul 23, 2019, at 7:15 PM, ? ? via USRP-users <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
> It?s a  1g SFP0 link. I set MTU  to 8000 according to the Application Note.
>
>
> ???: Sam Reiter <sam.reiter@ettus.com<mailto:sam.reiter@ettus.com>>
> ????: Wednesday, July 24, 2019 4:56:21 AM
> ???: ? ? <retina999@hotmail.com<mailto:retina999@hotmail.com>>
> ??: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
> ??: Re: [USRP-users] N310 "Bad CHDR or packet fragment" Problem
>
> If you're connected over a 10GbE link, make sure to set your host's MTU
> appropriately. I set mine to 9000.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
>
> On Fri, Jul 19, 2019 at 2:21 AM ? ? via USRP-users <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>
> Hi, all,
>
>
>
> When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.
>
> What causes this and how to solve it?
>
>
>
> Thanks in advance!
>
>
>
> FT
>
>
>
>
>
> /usr/local/lib/uhd/examples/benchmark_rate  \
>
> >    --args
> "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6"
> \
>
> >    --duration 60 \
>
> >    --channels "0" \
>
> >    --rx_rate 3.84e6 \
>
> >    --rx_subdev "A:0" \
>
> >    --tx_rate 3.84e6 \
>
> >    --tx_subdev "A:0"
>
>
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-gbfb9c1c7
>
> [00:00:00.000014] Creating the usrp device with:
> type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3182B09,claimed=False,addr=192.168.10.2,master_clock_rate=122.88e6
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `master_clock_rate=122.88e6,time_source=internal,clock_source=internal,mgmt_addr=192.168.10.2,product=n310'.
>
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
>
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
>
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
>
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> Using Device: Single USRP:
>
>   Device: N300-Series Device
>
>   Mboard 0: ni-n3xx-3182B09
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: Magnesium
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: Magnesium
>
>
>
> [00:00:17.353184] Setting device timestamp to 0...
>
> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>
> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>
> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or
> packet fragment
>
>
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>
> ValueError: Bad CHDR or packet fragment
>
> 00:00:17.414180] Unexpected error on recv, continuing...
>
> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>
> [00:00:17.514317] Unexpected error on recv, continuing...
>
> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or
> packet fragment
>
>
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>
> ValueError: Bad CHDR or packet fragment
>
> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>
> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>
> [00:00:17.614377] Unexpected error on recv, continuing...
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190730/9933e485/attachment-0001.html
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: oddkebdbfjoplldh.png
> Type: image/png
> Size: 124 bytes
> Desc: oddkebdbfjoplldh.png
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190730/9933e485/attachment-0001.png
> >
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 107, Issue 27
> *******************************************
>

--0000000000002738d3058ee8af23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>I am using N200=
 with GNU radio and I would like to measure the DC offset.</div><div>When I=
 sent in baseband a constant tone, in the receiver I saw only zero.</div><d=
iv>I tried to change the Enable DC offset in USRP source putting False, but=
 the information in the receiver is not chaged.</div><div>Could you help me=
?</div><div>Best Regards,</div><div><br></div><div>Simona<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar =
30 lug 2019 alle ore 17:31 &lt;<a href=3D"mailto:usrp-users-request@lists.e=
ttus.com">usrp-users-request@lists.ettus.com</a>&gt; ha scritto:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Send USRP-users mailing li=
st submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Help with GPS signal acquisition using USRP N210 (Xu, Zhao)=
<br>
=C2=A0 =C2=A02. Re: Help with GPS signal acquisition using USRP N210<br>
=C2=A0 =C2=A0 =C2=A0 (Marcus M?ller)<br>
=C2=A0 =C2=A03. Re: Help with GPS signal acquisition using USRP N210 (Xu, Z=
hao)<br>
=C2=A0 =C2=A04. Re:=C2=A0 ??: ??:=C2=A0 ??: N310 &quot;Bad CHDR or packet f=
ragment&quot; Problem (? ?)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 29 Jul 2019 14:40:44 -0400<br>
From: &quot;Xu, Zhao&quot; &lt;<a href=3D"mailto:ZhaoXu9807@gmail.com" targ=
et=3D"_blank">ZhaoXu9807@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] Help with GPS signal acquisition using USRP N210<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CACBa4aPHyB0Mu6aYc7o7eKNf=
KusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com" target=3D"_blank">CACBa4aPHyB0Mu=
6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hello,<br>
<br>
I have been struggling with trying to acquire GPS with an N210 for some<br>
time. I take the liberty of asking you for help that I can&#39;t find out t=
he<br>
error. Here is my setup:<br>
<br>
Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,<br>
&gt; Connector: SMA)<br>
<br>
T bias with 3.3 V DC power<br>
<br>
USRP N210 + daughter board CBX<br>
<br>
<br>
*While experimenting, I found the logs are the same no matter the power of<=
br>
antenna is on or off. So it seems that the antenna doesn&#39;t work well or=
 my<br>
configuration file is wrong. But How can I confirm the antenna&#39;s workin=
g<br>
status as it has no indicator light? *<br>
<br>
Here is my configuration file (It is from this website:<br>
<a href=3D"https://gnss-sdr.org/conf/#setting-up-the-software-receiver" rel=
=3D"noreferrer" target=3D"_blank">https://gnss-sdr.org/conf/#setting-up-the=
-software-receiver</a>). One thing to<br>
note is that I changed two parameters: Acquisition_1C.threshold<br>
and SignalSource.gain. The default value of the threshold is 0.01 which<br>
causes frequent loss of lock and when I set it to 0.05 the receiver can&#39=
;t<br>
maintain lock of satellite as the log shown below:<br>
<br>
*Acquisition_1C.threshold =3D 0.01* (Usually I run at least 2 minutes and<b=
r>
here I just show 10-second log as the following logs are the same.)<br>
<br>
&gt; Sampling Rate for the USRP device: 4000000.000000 [sps]...<br>
&gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...<br>
&gt; Check for front-end LO: locked ... is Locked<br>
&gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; The TCP/IP server of RTCM messages is up and running. Accepting<br>
&gt; connections ...<br>
&gt; [WARNING] [CORES] The requested decimation is odd; the user should exp=
ect<br>
&gt; CIC rolloff.<br>
&gt; Select an even decimation to ensure that a halfband filter is enabled.=
<br>
&gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(4.000=
000 MHz)<br>
&gt;<br>
&gt; Current receiver time: 1 s<br>
&gt; Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS P=
RN<br>
&gt; 06 (Block IIF)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS P=
RN<br>
&gt; 10 (Block IIF)<br>
&gt; Loss of lock in channel 5!<br>
&gt; Tracking of GPS L1 C/A signal started on channel 4 for satellite GPS P=
RN<br>
&gt; 32 (Block IIF)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS P=
RN<br>
&gt; 18 (Block IIR)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS P=
RN<br>
&gt; 02 (Block IIR)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS P=
RN<br>
&gt; 22 (Block IIR)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 6 for satellite GPS P=
RN<br>
&gt; 15 (Block IIR-M)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS P=
RN<br>
&gt; 29 (Block IIR-M)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 0 for satellite GPS P=
RN<br>
&gt; 26 (Block IIF)<br>
&gt; Current receiver time: 2 s<br>
&gt; Current receiver time: 3 s<br>
&gt; Current receiver time: 4 s<br>
&gt; Current receiver time: 5 s<br>
&gt; Current receiver time: 6 s<br>
&gt; Loss of lock in channel 1!<br>
&gt; Loss of lock in channel 7!<br>
&gt; Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS P=
RN<br>
&gt; 11 (Block IIR)<br>
&gt; Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS P=
RN<br>
&gt; 14 (Block IIR)<br>
&gt; Loss of lock in channel 3!<br>
&gt; Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS P=
RN<br>
&gt; 23 (Block IIR)<br>
&gt; Current receiver time: 7 s<br>
&gt; Current receiver time: 8 s<br>
&gt; Current receiver time: 9 s<br>
&gt; Current receiver time: 10 s<br>
&gt;<br>
<br>
*Acquisition_1C.threshold =3D 0.05*<br>
<br>
Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.<br>
&gt; Logging will be written at ./log<br>
&gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;<br>
&gt; UHD_3.15.0.git-100-gf6f2e961<br>
&gt; [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
&gt; [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
&gt; [INFO] [USRP2] Current send frame size: 1472 bytes<br>
&gt; [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000<br=
>
&gt; [sps]...<br>
&gt; The requested decimation is odd; the user should expect CIC rolloff.<b=
r>
&gt; Select an even decimation to ensure that a halfband filter is enabled.=
<br>
&gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(4.000=
000 MHz)<br>
&gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...<br>
&gt; Check for front-end LO: locked ... is Locked<br>
&gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; The TCP/IP server of RTCM messages is up and running. Accepting<br>
&gt; connections ...<br>
&gt; [WARNING] [CORES] The requested decimation is odd; the user should exp=
ect<br>
&gt; CIC rolloff.<br>
&gt; Select an even decimation to ensure that a halfband filter is enabled.=
<br>
&gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(4.000=
000 MHz)<br>
&gt; Current receiver time: 1 s<br>
&gt; Current receiver time: 2 s<br>
&gt; Current receiver time: 3 s<br>
&gt; Current receiver time: 4 s<br>
&gt; Current receiver time: 5 s<br>
&gt; Current receiver time: 6 s<br>
&gt; Current receiver time: 7 s<br>
&gt; Current receiver time: 8 s<br>
&gt; Current receiver time: 9 s<br>
&gt; Current receiver time: 10 s<br>
<br>
<br>
My Configuration File:<br>
<br>
&gt; [GNSS-SDR]<br>
&gt; ;######### GLOBAL OPTIONS ##################<br>
&gt; GNSS-SDR.internal_fs_sps=3D4000000<br>
&gt; ;######### SIGNAL_SOURCE CONFIG ############<br>
&gt; SignalSource.implementation=3DUHD_Signal_Source<br>
&gt; SignalSource.device_address=3D192.168.10.4<br>
&gt; SignalSource.item_type=3Dcshort<br>
&gt; SignalSource.sampling_frequency=3D4000000<br>
&gt; SignalSource.freq=3D1575420000<br>
&gt; SignalSource.gain=3D15<br>
&gt; SignalSource.subdevice=3DA:0=C2=A0 ; &lt;- Can be A:0 or B:0<br>
&gt; SignalSource.samples=3D0<br>
&gt; ;######### SIGNAL_CONDITIONER CONFIG ############<br>
&gt; SignalConditioner.implementation=3DSignal_Conditioner<br>
&gt; ;######### DATA_TYPE_ADAPTER CONFIG ############<br>
&gt; DataTypeAdapter.implementation=3DPass_Through<br>
&gt; DataTypeAdapter.item_type=3Dcshort<br>
&gt; ;######### INPUT_FILTER CONFIG ############<br>
&gt; InputFilter.implementation=3DFir_Filter<br>
&gt; InputFilter.input_item_type=3Dcshort<br>
&gt; InputFilter.output_item_type=3Dgr_complex<br>
&gt; InputFilter.taps_item_type=3Dfloat<br>
&gt; InputFilter.number_of_taps=3D11<br>
&gt; InputFilter.number_of_bands=3D2<br>
&gt; InputFilter.band1_begin=3D0.0<br>
&gt; InputFilter.band1_end=3D0.48<br>
&gt; InputFilter.band2_begin=3D0.52<br>
&gt; InputFilter.band2_end=3D1.0<br>
&gt; InputFilter.ampl1_begin=3D1.0<br>
&gt; InputFilter.ampl1_end=3D1.0<br>
&gt; InputFilter.ampl2_begin=3D0.0<br>
&gt; InputFilter.ampl2_end=3D0.0<br>
&gt; InputFilter.band1_error=3D1.0<br>
&gt; InputFilter.band2_error=3D1.0<br>
&gt; InputFilter.filter_type=3Dbandpass<br>
&gt; InputFilter.grid_density=3D16<br>
&gt; InputFilter.sampling_frequency=3D4000000<br>
&gt; InputFilter.IF=3D0<br>
&gt; ;######### RESAMPLER CONFIG ############<br>
&gt; Resampler.implementation=3DPass_Through<br>
&gt; ;######### CHANNELS GLOBAL CONFIG ############<br>
&gt; Channels_1C.count=3D8<br>
&gt; Channels.in_acquisition=3D1<br>
&gt; Channel.signal=3D1C<br>
&gt; ;######### ACQUISITION GLOBAL CONFIG ############<br>
&gt; Acquisition_1C.implementation=3DGPS_L1_CA_PCPS_Acquisition<br>
&gt; Acquisition_1C.threshold=3D0.05<br>
&gt; Acquisition_1C.doppler_max=3D8000<br>
&gt; Acquisition_1C.doppler_step=3D500<br>
&gt; ;######### TRACKING GLOBAL CONFIG ############<br>
&gt; Tracking_1C.implementation=3DGPS_L1_CA_DLL_PLL_Tracking<br>
&gt; Tracking_1C.pll_bw_hz=3D30.0<br>
&gt; Tracking_1C.dll_bw_hz=3D4.0<br>
&gt; Tracking_1C.early_late_space_chips=3D0.5<br>
&gt; ;######### TELEMETRY DECODER GPS CONFIG ############<br>
&gt; TelemetryDecoder_1C.implementation=3DGPS_L1_CA_Telemetry_Decoder<br>
&gt; ;######### OBSERVABLES CONFIG ############<br>
&gt; Observables.implementation=3DHybrid_Observables<br>
&gt; ;######### PVT CONFIG ############<br>
&gt; PVT.implementation=3DRTKLIB_PVT<br>
&gt; PVT.positioning_mode=3DSingle<br>
&gt; PVT.output_rate_ms=3D10<br>
&gt; PVT.display_rate_ms=3D500<br>
&gt; PVT.iono_model=3DBroadcast<br>
&gt; PVT.trop_model=3DSaastamoinen<br>
&gt; PVT.flag_rtcm_server=3Dtrue<br>
&gt; PVT.flag_rtcm_tty_port=3Dfalse<br>
&gt; PVT.rtcm_dump_devname=3D/dev/pts/1<br>
&gt; PVT.rtcm_tcp_port=3D2101<br>
&gt; PVT.rtcm_MT1019_rate_ms=3D5000<br>
&gt; PVT.rtcm_MT1077_rate_ms=3D1000<br>
&gt; PVT.rinex_version=3D2<br>
<br>
<br>
I also referenced this solution (<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-October/058147.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html</a>)<b=
r>
and changed the gain as 15, but this made no sense.<br>
<br>
Sincerely,<br>
Zhao Xu<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/df65e894/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190729/df65e894/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 29 Jul 2019 23:49:57 +0200<br>
From: Marcus M?ller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=
=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>
To: &quot;Xu, Zhao&quot; &lt;<a href=3D"mailto:ZhaoXu9807@gmail.com" target=
=3D"_blank">ZhaoXu9807@gmail.com</a>&gt;, <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Help with GPS signal acquisition using USRP<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 N210<br>
Message-ID: &lt;<a href=3D"mailto:4367367d801ddc6792b7c0cc90a89db0ccc6987e.=
camel@ettus.com" target=3D"_blank">4367367d801ddc6792b7c0cc90a89db0ccc6987e=
.camel@ettus.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
Dear Zhao,<br>
<br>
even with an active antenna, GPS signal power is usually below noise<br>
floor. You can&#39;t &quot;see&quot; GPS without processing ain.<br>
<br>
so, none of this is surprising.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Mon, 2019-07-29 at 14:40 -0400, Xu, Zhao via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I have been struggling with trying to acquire GPS with an N210 for<br>
&gt; some time. I take the liberty of asking you for help that I can&#39;t<=
br>
&gt; find out the error. Here is my setup:<br>
&gt; <br>
&gt; &gt; Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28d=
B,<br>
&gt; &gt; Connector: SMA) <br>
&gt; &gt; T bias with 3.3 V DC power <br>
&gt; &gt; USRP N210 + daughter board CBX<br>
&gt; <br>
&gt;=C2=A0 <br>
&gt; While experimenting, I found the logs are the same no matter the<br>
&gt; power of antenna is on or off. So it seems that the antenna doesn&#39;=
t<br>
&gt; work well or my configuration file is wrong. But How can I confirm<br>
&gt; the antenna&#39;s working status as it has no indicator light? <br>
&gt; <br>
&gt; Here is my configuration file (It is from this website: <br>
&gt; <a href=3D"https://gnss-sdr.org/conf/#setting-up-the-software-receiver=
" rel=3D"noreferrer" target=3D"_blank">https://gnss-sdr.org/conf/#setting-u=
p-the-software-receiver</a>). One<br>
&gt; thing to note is that I changed two<br>
&gt; parameters: Acquisition_1C.threshold and SignalSource.gain. The<br>
&gt; default value of the threshold is 0.01 which causes frequent loss of<b=
r>
&gt; lock and when I set it to 0.05 the receiver can&#39;t maintain lock of=
<br>
&gt; satellite as the log shown below:<br>
&gt; <br>
&gt; Acquisition_1C.threshold =3D 0.01 (Usually I run at least 2 minutes an=
d<br>
&gt; here I just show 10-second log as the following logs are the same.)<br=
>
&gt; &gt; Sampling Rate for the USRP device: 4000000.000000 [sps]...<br>
&gt; &gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; &gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; &gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; &gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; &gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...<b=
r>
&gt; &gt; Check for front-end LO: locked ... is Locked<br>
&gt; &gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; &gt; The TCP/IP server of RTCM messages is up and running. Accepting<b=
r>
&gt; &gt; connections ...<br>
&gt; &gt; [WARNING] [CORES] The requested decimation is odd; the user shoul=
d<br>
&gt; &gt; expect CIC rolloff.<br>
&gt; &gt; Select an even decimation to ensure that a halfband filter is<br>
&gt; &gt; enabled.<br>
&gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(=
4.000000<br>
&gt; &gt; MHz)<br>
&gt; &gt; <br>
&gt; &gt; Current receiver time: 1 s<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 5 for satellite<=
br>
&gt; &gt; GPS PRN 06 (Block IIF)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 2 for satellite<=
br>
&gt; &gt; GPS PRN 10 (Block IIF)<br>
&gt; &gt; Loss of lock in channel 5!<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 4 for satellite<=
br>
&gt; &gt; GPS PRN 32 (Block IIF)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 1 for satellite<=
br>
&gt; &gt; GPS PRN 18 (Block IIR)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 7 for satellite<=
br>
&gt; &gt; GPS PRN 02 (Block IIR)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 5 for satellite<=
br>
&gt; &gt; GPS PRN 22 (Block IIR)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 6 for satellite<=
br>
&gt; &gt; GPS PRN 15 (Block IIR-M)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 3 for satellite<=
br>
&gt; &gt; GPS PRN 29 (Block IIR-M)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 0 for satellite<=
br>
&gt; &gt; GPS PRN 26 (Block IIF)<br>
&gt; &gt; Current receiver time: 2 s<br>
&gt; &gt; Current receiver time: 3 s<br>
&gt; &gt; Current receiver time: 4 s<br>
&gt; &gt; Current receiver time: 5 s<br>
&gt; &gt; Current receiver time: 6 s<br>
&gt; &gt; Loss of lock in channel 1!<br>
&gt; &gt; Loss of lock in channel 7!<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 1 for satellite<=
br>
&gt; &gt; GPS PRN 11 (Block IIR)<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 7 for satellite<=
br>
&gt; &gt; GPS PRN 14 (Block IIR)<br>
&gt; &gt; Loss of lock in channel 3!<br>
&gt; &gt; Tracking of GPS L1 C/A signal started on channel 3 for satellite<=
br>
&gt; &gt; GPS PRN 23 (Block IIR)<br>
&gt; &gt; Current receiver time: 7 s<br>
&gt; &gt; Current receiver time: 8 s<br>
&gt; &gt; Current receiver time: 9 s<br>
&gt; &gt; Current receiver time: 10 s<br>
&gt; <br>
&gt;=C2=A0 <br>
&gt; Acquisition_1C.threshold =3D 0.05<br>
&gt; <br>
&gt; &gt; Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.=
<br>
&gt; &gt; Logging will be written at ./log<br>
&gt; &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;<br>
&gt; &gt; UHD_3.15.0.git-100-gf6f2e961<br>
&gt; &gt; [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
&gt; &gt; [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
&gt; &gt; [INFO] [USRP2] Current send frame size: 1472 bytes<br>
&gt; &gt; [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.0000=
00<br>
&gt; &gt; [sps]...<br>
&gt; &gt; The requested decimation is odd; the user should expect CIC<br>
&gt; &gt; rolloff.<br>
&gt; &gt; Select an even decimation to ensure that a halfband filter is<br>
&gt; &gt; enabled.<br>
&gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(=
4.000000<br>
&gt; &gt; MHz)<br>
&gt; &gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; &gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; &gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; &gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; &gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...<b=
r>
&gt; &gt; Check for front-end LO: locked ... is Locked<br>
&gt; &gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; &gt; The TCP/IP server of RTCM messages is up and running. Accepting<b=
r>
&gt; &gt; connections ...<br>
&gt; &gt; [WARNING] [CORES] The requested decimation is odd; the user shoul=
d<br>
&gt; &gt; expect CIC rolloff.<br>
&gt; &gt; Select an even decimation to ensure that a halfband filter is<br>
&gt; &gt; enabled.<br>
&gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 MHz)/(=
4.000000<br>
&gt; &gt; MHz)<br>
&gt; &gt; Current receiver time: 1 s<br>
&gt; &gt; Current receiver time: 2 s<br>
&gt; &gt; Current receiver time: 3 s<br>
&gt; &gt; Current receiver time: 4 s<br>
&gt; &gt; Current receiver time: 5 s<br>
&gt; &gt; Current receiver time: 6 s<br>
&gt; &gt; Current receiver time: 7 s<br>
&gt; &gt; Current receiver time: 8 s<br>
&gt; &gt; Current receiver time: 9 s<br>
&gt; &gt; Current receiver time: 10 s<br>
&gt; <br>
&gt; My Configuration File:<br>
&gt; &gt; [GNSS-SDR]<br>
&gt; &gt; ;######### GLOBAL OPTIONS ##################<br>
&gt; &gt; GNSS-SDR.internal_fs_sps=3D4000000<br>
&gt; &gt; ;######### SIGNAL_SOURCE CONFIG ############<br>
&gt; &gt; SignalSource.implementation=3DUHD_Signal_Source<br>
&gt; &gt; SignalSource.device_address=3D192.168.10.4<br>
&gt; &gt; SignalSource.item_type=3Dcshort<br>
&gt; &gt; SignalSource.sampling_frequency=3D4000000<br>
&gt; &gt; SignalSource.freq=3D1575420000<br>
&gt; &gt; SignalSource.gain=3D15<br>
&gt; &gt; SignalSource.subdevice=3DA:0=C2=A0 ; &lt;- Can be A:0 or B:0<br>
&gt; &gt; SignalSource.samples=3D0<br>
&gt; &gt; ;######### SIGNAL_CONDITIONER CONFIG ############<br>
&gt; &gt; SignalConditioner.implementation=3DSignal_Conditioner<br>
&gt; &gt; ;######### DATA_TYPE_ADAPTER CONFIG ############<br>
&gt; &gt; DataTypeAdapter.implementation=3DPass_Through<br>
&gt; &gt; DataTypeAdapter.item_type=3Dcshort<br>
&gt; &gt; ;######### INPUT_FILTER CONFIG ############<br>
&gt; &gt; InputFilter.implementation=3DFir_Filter<br>
&gt; &gt; InputFilter.input_item_type=3Dcshort<br>
&gt; &gt; InputFilter.output_item_type=3Dgr_complex<br>
&gt; &gt; InputFilter.taps_item_type=3Dfloat<br>
&gt; &gt; InputFilter.number_of_taps=3D11<br>
&gt; &gt; InputFilter.number_of_bands=3D2<br>
&gt; &gt; InputFilter.band1_begin=3D0.0<br>
&gt; &gt; InputFilter.band1_end=3D0.48<br>
&gt; &gt; InputFilter.band2_begin=3D0.52<br>
&gt; &gt; InputFilter.band2_end=3D1.0<br>
&gt; &gt; InputFilter.ampl1_begin=3D1.0<br>
&gt; &gt; InputFilter.ampl1_end=3D1.0<br>
&gt; &gt; InputFilter.ampl2_begin=3D0.0<br>
&gt; &gt; InputFilter.ampl2_end=3D0.0<br>
&gt; &gt; InputFilter.band1_error=3D1.0<br>
&gt; &gt; InputFilter.band2_error=3D1.0<br>
&gt; &gt; InputFilter.filter_type=3Dbandpass<br>
&gt; &gt; InputFilter.grid_density=3D16<br>
&gt; &gt; InputFilter.sampling_frequency=3D4000000<br>
&gt; &gt; InputFilter.IF=3D0<br>
&gt; &gt; ;######### RESAMPLER CONFIG ############<br>
&gt; &gt; Resampler.implementation=3DPass_Through<br>
&gt; &gt; ;######### CHANNELS GLOBAL CONFIG ############<br>
&gt; &gt; Channels_1C.count=3D8<br>
&gt; &gt; Channels.in_acquisition=3D1<br>
&gt; &gt; Channel.signal=3D1C<br>
&gt; &gt; ;######### ACQUISITION GLOBAL CONFIG ############<br>
&gt; &gt; Acquisition_1C.implementation=3DGPS_L1_CA_PCPS_Acquisition<br>
&gt; &gt; Acquisition_1C.threshold=3D0.05<br>
&gt; &gt; Acquisition_1C.doppler_max=3D8000<br>
&gt; &gt; Acquisition_1C.doppler_step=3D500<br>
&gt; &gt; ;######### TRACKING GLOBAL CONFIG ############<br>
&gt; &gt; Tracking_1C.implementation=3DGPS_L1_CA_DLL_PLL_Tracking<br>
&gt; &gt; Tracking_1C.pll_bw_hz=3D30.0<br>
&gt; &gt; Tracking_1C.dll_bw_hz=3D4.0<br>
&gt; &gt; Tracking_1C.early_late_space_chips=3D0.5<br>
&gt; &gt; ;######### TELEMETRY DECODER GPS CONFIG ############<br>
&gt; &gt; TelemetryDecoder_1C.implementation=3DGPS_L1_CA_Telemetry_Decoder<=
br>
&gt; &gt; ;######### OBSERVABLES CONFIG ############<br>
&gt; &gt; Observables.implementation=3DHybrid_Observables<br>
&gt; &gt; ;######### PVT CONFIG ############<br>
&gt; &gt; PVT.implementation=3DRTKLIB_PVT<br>
&gt; &gt; PVT.positioning_mode=3DSingle<br>
&gt; &gt; PVT.output_rate_ms=3D10<br>
&gt; &gt; PVT.display_rate_ms=3D500<br>
&gt; &gt; PVT.iono_model=3DBroadcast<br>
&gt; &gt; PVT.trop_model=3DSaastamoinen<br>
&gt; &gt; PVT.flag_rtcm_server=3Dtrue<br>
&gt; &gt; PVT.flag_rtcm_tty_port=3Dfalse<br>
&gt; &gt; PVT.rtcm_dump_devname=3D/dev/pts/1<br>
&gt; &gt; PVT.rtcm_tcp_port=3D2101<br>
&gt; &gt; PVT.rtcm_MT1019_rate_ms=3D5000<br>
&gt; &gt; PVT.rtcm_MT1077_rate_ms=3D1000<br>
&gt; &gt; PVT.rinex_version=3D2<br>
&gt;=C2=A0 <br>
&gt; I also referenced this solution (<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2018-October/058147.html" rel=3D"noreferrer" target=3D"_blank">http://list=
s.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html</=
a><br>
&gt; ) and changed the gain as 15, but this made no sense.<br>
&gt; <br>
&gt; Sincerely,<br>
&gt; Zhao Xu<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 29 Jul 2019 18:15:45 -0400<br>
From: &quot;Xu, Zhao&quot; &lt;<a href=3D"mailto:ZhaoXu9807@gmail.com" targ=
et=3D"_blank">ZhaoXu9807@gmail.com</a>&gt;<br>
To: Marcus M?ller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D=
"_blank">marcus.mueller@ettus.com</a>&gt;<br>
Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Help with GPS signal acquisition using USRP<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 N210<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CACBa4aMEdOnR-%2BMypCudt-=
O6M6HYGaFj18dxeYzuD-H_gbaqpQ@mail.gmail.com" target=3D"_blank">CACBa4aMEdOn=
R-+MypCudt-O6M6HYGaFj18dxeYzuD-H_gbaqpQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Dear Marcus,<br>
<br>
Thank you very much for your reply!<br>
<br>
*I agree with you but my situation is a little different because my<br>
receiver (USRP N210) can&#39;t receive any data (even noise) and can&#39;t =
save<br>
file when I press q command. To be specific, every log of my experiment<br>
ends with warnings that it failed to save data. *<br>
<br>
Here is a 2-minute log for your reference:<br>
<br>
&gt;<br>
&gt; Log file created at: 2019/07/27 19:26:15<br>
&gt; Running on machine: yilin-Precision-3530<br>
&gt; Log line format: [IWEF]mmdd hh:mm:ss.uuuuuu threadid file:line] msg<br=
>
&gt; I0727 19:26:15.615741 17918 gnss_block_factory.cc:195] Getting<br>
&gt; SignalSource with implementation UHD_Signal_Source<br>
&gt; I0727 19:26:16.950304 17918 uhd_signal_source.cc:164] Sampling Rate fo=
r<br>
&gt; the USRP device: 4000000.000000 [sps]...<br>
&gt; I0727 19:26:16.950991 17918 uhd_signal_source.cc:174] Actual USRP cent=
er<br>
&gt; freq. set to: 1575420000.010133 [Hz]...<br>
&gt; I0727 19:26:16.951119 17918 uhd_signal_source.cc:178] PLL Frequency tu=
ne<br>
&gt; error 0.010133 [Hz]...<br>
&gt; I0727 19:26:16.951756 17918 uhd_signal_source.cc:183] Actual daughterb=
oard<br>
&gt; gain set to: 15.000000 dB...<br>
&gt; I0727 19:26:16.952322 17918 gnss_block_factory.cc:241] Getting<br>
&gt; SignalConditioner with DataTypeAdapter implementation: Pass_Through,<b=
r>
&gt; InputFilter implementation: Fir_Filter, and Resampler implementation:<=
br>
&gt; Pass_Through<br>
&gt; I0727 19:26:16.953771 17918 gnss_block_factory.cc:271] Getting Observa=
bles<br>
&gt; with implementation Hybrid_Observables<br>
&gt; I0727 19:26:16.954036 17918 gnss_block_factory.cc:299] Getting PVT wit=
h<br>
&gt; implementation RTKLIB_PVT<br>
&gt; I0727 19:26:16.958174 17918 gnss_block_factory.cc:951] Getting 8 GPS L=
1<br>
&gt; C/A channels<br>
&gt; I0727 19:26:16.958238 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 0 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:16.970176 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 0<br>
&gt; I0727 19:26:16.974195 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 1 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:16.995465 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 1<br>
&gt; I0727 19:26:16.998857 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 2 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.007000 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 2<br>
&gt; I0727 19:26:17.009788 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 3 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.014974 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 3<br>
&gt; I0727 19:26:17.016788 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 4 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.020576 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 4<br>
&gt; I0727 19:26:17.022069 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 5 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.025209 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 5<br>
&gt; I0727 19:26:17.026458 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 6 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.029266 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 6<br>
&gt; I0727 19:26:17.030339 17918 gnss_block_factory.cc:323] Instantiating<b=
r>
&gt; Channel 7 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,=
<br>
&gt; Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder=
<br>
&gt; implementation: GPS_L1_CA_Telemetry_Decoder<br>
&gt; I0727 19:26:17.032866 17918 dll_pll_veml_tracking.cc:1526] Tracking<br=
>
&gt; Channel set to 7<br>
&gt; I0727 19:26:17.033880 17918 gnss_block_factory.cc:981] Getting 0 GPS L=
2C<br>
&gt; (M) channels<br>
&gt; I0727 19:26:17.033887 17918 gnss_block_factory.cc:1010] Getting 0 GPS =
L5<br>
&gt; channels<br>
&gt; I0727 19:26:17.033890 17918 gnss_block_factory.cc:1039] Getting 0 GALI=
LEO<br>
&gt; E1 B (I/NAV OS) channels<br>
&gt; I0727 19:26:17.033893 17918 gnss_block_factory.cc:1068] Getting 0 GALI=
LEO<br>
&gt; E5a I (F/NAV OS) channels<br>
&gt; I0727 19:26:17.033896 17918 gnss_block_factory.cc:1097] Getting 0 GLON=
ASS<br>
&gt; L1 C/A channels<br>
&gt; I0727 19:26:17.033913 17918 gnss_block_factory.cc:1127] Getting 0 GLON=
ASS<br>
&gt; L2 C/A channels<br>
&gt; I0727 19:26:17.033916 17918 gnss_block_factory.cc:1157] Getting 0 BEID=
OU<br>
&gt; B1I channels<br>
&gt; I0727 19:26:17.033919 17918 gnss_block_factory.cc:1187] Getting 0 BEID=
OU<br>
&gt; B3I channels<br>
&gt; I0727 19:26:17.034056 17918 gnss_flowgraph.cc:131] Connecting flowgrap=
h<br>
&gt; I0727 19:26:17.034147 17918 gnss_flowgraph.cc:264] connecting sig_sour=
ce_<br>
&gt; 0 stream 0 to conditioner 0<br>
&gt; I0727 19:26:17.035058 17918 gnss_flowgraph.cc:723] Channel 0 assigned =
to<br>
&gt; GPS PRN 01 (Block IIF) Signal 1C<br>
&gt; I0727 19:26:17.035065 17918 gnss_flowgraph.cc:727] Channel 0 connected=
 to<br>
&gt; observables and ready for acquisition<br>
&gt; I0727 19:26:17.035068 17918 gnss_flowgraph.cc:723] Channel 1 assigned =
to<br>
&gt; GPS PRN 02 (Block IIR) Signal 1C<br>
&gt; I0727 19:26:17.035073 17918 gnss_flowgraph.cc:731] Channel 1 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035073 17918 gnss_flowgraph.cc:723] Channel 2 assigned =
to<br>
&gt; GPS PRN 03 (Block IIF) Signal 1C<br>
&gt; I0727 19:26:17.035077 17918 gnss_flowgraph.cc:731] Channel 2 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035079 17918 gnss_flowgraph.cc:723] Channel 3 assigned =
to<br>
&gt; GPS PRN 04 (Block Unknown) Signal 1C<br>
&gt; I0727 19:26:17.035084 17918 gnss_flowgraph.cc:731] Channel 3 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035085 17918 gnss_flowgraph.cc:723] Channel 4 assigned =
to<br>
&gt; GPS PRN 05 (Block IIR-M) Signal 1C<br>
&gt; I0727 19:26:17.035089 17918 gnss_flowgraph.cc:731] Channel 4 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035090 17918 gnss_flowgraph.cc:723] Channel 5 assigned =
to<br>
&gt; GPS PRN 06 (Block IIF) Signal 1C<br>
&gt; I0727 19:26:17.035094 17918 gnss_flowgraph.cc:731] Channel 5 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035095 17918 gnss_flowgraph.cc:723] Channel 6 assigned =
to<br>
&gt; GPS PRN 07 (Block IIR-M) Signal 1C<br>
&gt; I0727 19:26:17.035099 17918 gnss_flowgraph.cc:731] Channel 6 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035101 17918 gnss_flowgraph.cc:723] Channel 7 assigned =
to<br>
&gt; GPS PRN 08 (Block IIF) Signal 1C<br>
&gt; I0727 19:26:17.035104 17918 gnss_flowgraph.cc:731] Channel 7 connected=
 to<br>
&gt; observables in standby mode<br>
&gt; I0727 19:26:17.035106 17918 gnss_flowgraph.cc:736] Flowgraph connected=
<br>
&gt; I0727 19:26:17.035109 17918 control_thread.cc:307] Flowgraph connected=
<br>
&gt; I0727 19:26:17.038399 17918 control_thread.cc:318] Flowgraph started<b=
r>
&gt; *I0727 19:28:19.432575 17918 control_thread.cc:855] Received action ST=
OP*<br>
&gt; I0727 19:28:19.433041 17918 gnss_flowgraph.cc:743] Disconnecting flowg=
raph<br>
&gt; I0727 19:28:19.433264 17918 gnss_flowgraph.cc:1039] Flowgraph disconne=
cted<br>
&gt; I0727 19:28:19.933521 17918 control_thread.cc:370] Flowgraph stopped<b=
r>
&gt; I0727 19:28:21.284571 17918 file_configuration.cc:60] Destructor calle=
d<br>
&gt; I0727 19:28:21.284590 17918 rtklib_pvt_gs.cc:482] Failed to save GPS L=
2CM<br>
&gt; or L5 Ephemeris, map is empty<br>
&gt; I0727 19:28:21.284592 17918 rtklib_pvt_gs.cc:508] Failed to save GPS L=
1 CA<br>
&gt; Ephemeris, map is empty<br>
&gt; I0727 19:28:21.284595 17918 rtklib_pvt_gs.cc:538] Failed to save Galil=
eo<br>
&gt; E1 Ephemeris, map is empty<br>
&gt; I0727 19:28:21.284596 17918 rtklib_pvt_gs.cc:568] Failed to save GLONA=
SS<br>
&gt; GNAV Ephemeris, map is empty<br>
&gt; I0727 19:28:21.284597 17918 rtklib_pvt_gs.cc:598] Failed to save GPS U=
TC<br>
&gt; model parameters, not valid data<br>
&gt; I0727 19:28:21.284600 17918 rtklib_pvt_gs.cc:628] Failed to save Galil=
eo<br>
&gt; UTC model parameters, not valid data<br>
&gt; I0727 19:28:21.284601 17918 rtklib_pvt_gs.cc:658] Failed to save GPS<b=
r>
&gt; ionospheric model parameters, not valid data<br>
&gt; I0727 19:28:21.284602 17918 rtklib_pvt_gs.cc:688] Failed to save GPS C=
NAV<br>
&gt; ionospheric model parameters, not valid data<br>
&gt; I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:718] Failed to save Galil=
eo<br>
&gt; ionospheric model parameters, not valid data<br>
&gt; I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:748] Failed to save GPS<b=
r>
&gt; almanac, map is empty<br>
&gt; I0727 19:28:21.284607 17918 rtklib_pvt_gs.cc:778] Failed to save Galil=
eo<br>
&gt; almanac, not valid data<br>
&gt; I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:808] Failed to save GPS C=
NAV<br>
&gt; UTC model parameters, not valid data<br>
&gt; I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:838] Failed to save GLONA=
SS<br>
&gt; GNAV ephemeris, map is empty<br>
&gt; I0727 19:28:21.284612 17918 rtklib_pvt_gs.cc:868] Failed to save GLONA=
SS<br>
&gt; GNAV ephemeris, not valid data<br>
&gt; I0727 19:28:21.284613 17918 rtklib_pvt_gs.cc:898] Failed to save BeiDo=
u<br>
&gt; DNAV Ephemeris, map is empty<br>
&gt; I0727 19:28:21.284615 17918 rtklib_pvt_gs.cc:928] Failed to save BeiDo=
u<br>
&gt; DNAV ionospheric model parameters, not valid data<br>
&gt; I0727 19:28:21.284617 17918 rtklib_pvt_gs.cc:958] Failed to save BeiDo=
u<br>
&gt; DNAV almanac, map is empty<br>
&gt; I0727 19:28:21.284618 17918 rtklib_pvt_gs.cc:988] Failed to save BeiDo=
u<br>
&gt; DNAV UTC model parameters, not valid data<br>
<br>
<br>
*I looked up the source code of gnss-sdr from GitHub and I found the codes<=
br>
that output these warnings from line 412. I also tried to press CTRL+C to<b=
r>
interrupt the program and to see the intermediate files. But none of them<b=
r>
has valid data.*<br>
<br>
*intermediate files list (also attached for your reference):*<br>
&gt; pvt.data_190727_144704.gpx<br>
&gt; pvt.data_190727_144704.geojson<br>
&gt; pvt.data_190727_144704.kml<br>
&gt; GSDR208o47.19B=C2=A0 =C2=A00kB<br>
&gt; GSDR208o47.19P=C2=A0 =C2=A00kB<br>
<br>
GSDR208o47.19O=C2=A0 =C2=A00kB<br>
&gt; GSDR208o47.19N=C2=A0 =C2=A00kB<br>
&gt; GSDR208o47.19G=C2=A0 =C2=A00kB<br>
&gt; GSDR208o47.19F=C2=A0 =C2=A0 0kB<br>
&gt; GSDR208o47.19L=C2=A0 =C2=A0 0kB<br>
<br>
<br>
Sincerely,<br>
Zhao Xu<br>
<br>
Marcus M?ller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_bl=
ank">marcus.mueller@ettus.com</a>&gt; ?2019?7?29??? ??5:50???<br>
<br>
&gt; Dear Zhao,<br>
&gt;<br>
&gt; even with an active antenna, GPS signal power is usually below noise<b=
r>
&gt; floor. You can&#39;t &quot;see&quot; GPS without processing ain.<br>
&gt;<br>
&gt; so, none of this is surprising.<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt;<br>
&gt; On Mon, 2019-07-29 at 14:40 -0400, Xu, Zhao via USRP-users wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; I have been struggling with trying to acquire GPS with an N210 fo=
r<br>
&gt; &gt; some time. I take the liberty of asking you for help that I can&#=
39;t<br>
&gt; &gt; find out the error. Here is my setup:<br>
&gt; &gt;<br>
&gt; &gt; &gt; Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain=
: 28dB,<br>
&gt; &gt; &gt; Connector: SMA)<br>
&gt; &gt; &gt; T bias with 3.3 V DC power<br>
&gt; &gt; &gt; USRP N210 + daughter board CBX<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; While experimenting, I found the logs are the same no matter the<=
br>
&gt; &gt; power of antenna is on or off. So it seems that the antenna doesn=
&#39;t<br>
&gt; &gt; work well or my configuration file is wrong. But How can I confir=
m<br>
&gt; &gt; the antenna&#39;s working status as it has no indicator light?<br=
>
&gt; &gt;<br>
&gt; &gt; Here is my configuration file (It is from this website:<br>
&gt; &gt; <a href=3D"https://gnss-sdr.org/conf/#setting-up-the-software-rec=
eiver" rel=3D"noreferrer" target=3D"_blank">https://gnss-sdr.org/conf/#sett=
ing-up-the-software-receiver</a>). One<br>
&gt; &gt; thing to note is that I changed two<br>
&gt; &gt; parameters: Acquisition_1C.threshold and SignalSource.gain. The<b=
r>
&gt; &gt; default value of the threshold is 0.01 which causes frequent loss=
 of<br>
&gt; &gt; lock and when I set it to 0.05 the receiver can&#39;t maintain lo=
ck of<br>
&gt; &gt; satellite as the log shown below:<br>
&gt; &gt;<br>
&gt; &gt; Acquisition_1C.threshold =3D 0.01 (Usually I run at least 2 minut=
es and<br>
&gt; &gt; here I just show 10-second log as the following logs are the same=
.)<br>
&gt; &gt; &gt; Sampling Rate for the USRP device: 4000000.000000 [sps]...<b=
r>
&gt; &gt; &gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; &gt; &gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; &gt; &gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; &gt; &gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; &gt; &gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]=
...<br>
&gt; &gt; &gt; Check for front-end LO: locked ... is Locked<br>
&gt; &gt; &gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; &gt; &gt; The TCP/IP server of RTCM messages is up and running. Accept=
ing<br>
&gt; &gt; &gt; connections ...<br>
&gt; &gt; &gt; [WARNING] [CORES] The requested decimation is odd; the user =
should<br>
&gt; &gt; &gt; expect CIC rolloff.<br>
&gt; &gt; &gt; Select an even decimation to ensure that a halfband filter i=
s<br>
&gt; &gt; &gt; enabled.<br>
&gt; &gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 M=
Hz)/(4.000000<br>
&gt; &gt; &gt; MHz)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Current receiver time: 1 s<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 5 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 06 (Block IIF)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 2 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 10 (Block IIF)<br>
&gt; &gt; &gt; Loss of lock in channel 5!<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 4 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 32 (Block IIF)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 1 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 18 (Block IIR)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 7 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 02 (Block IIR)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 5 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 22 (Block IIR)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 6 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 15 (Block IIR-M)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 3 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 29 (Block IIR-M)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 0 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 26 (Block IIF)<br>
&gt; &gt; &gt; Current receiver time: 2 s<br>
&gt; &gt; &gt; Current receiver time: 3 s<br>
&gt; &gt; &gt; Current receiver time: 4 s<br>
&gt; &gt; &gt; Current receiver time: 5 s<br>
&gt; &gt; &gt; Current receiver time: 6 s<br>
&gt; &gt; &gt; Loss of lock in channel 1!<br>
&gt; &gt; &gt; Loss of lock in channel 7!<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 1 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 11 (Block IIR)<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 7 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 14 (Block IIR)<br>
&gt; &gt; &gt; Loss of lock in channel 3!<br>
&gt; &gt; &gt; Tracking of GPS L1 C/A signal started on channel 3 for satel=
lite<br>
&gt; &gt; &gt; GPS PRN 23 (Block IIR)<br>
&gt; &gt; &gt; Current receiver time: 7 s<br>
&gt; &gt; &gt; Current receiver time: 8 s<br>
&gt; &gt; &gt; Current receiver time: 9 s<br>
&gt; &gt; &gt; Current receiver time: 10 s<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Acquisition_1C.threshold =3D 0.05<br>
&gt; &gt;<br>
&gt; &gt; &gt; Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please =
wait.<br>
&gt; &gt; &gt; Logging will be written at ./log<br>
&gt; &gt; &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;<br>
&gt; &gt; &gt; UHD_3.15.0.git-100-gf6f2e961<br>
&gt; &gt; &gt; [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
&gt; &gt; &gt; [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
&gt; &gt; &gt; [INFO] [USRP2] Current send frame size: 1472 bytes<br>
&gt; &gt; &gt; [WARNING] [CORES] Sampling Rate for the USRP device: 4000000=
.000000<br>
&gt; &gt; &gt; [sps]...<br>
&gt; &gt; &gt; The requested decimation is odd; the user should expect CIC<=
br>
&gt; &gt; &gt; rolloff.<br>
&gt; &gt; &gt; Select an even decimation to ensure that a halfband filter i=
s<br>
&gt; &gt; &gt; enabled.<br>
&gt; &gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 M=
Hz)/(4.000000<br>
&gt; &gt; &gt; MHz)<br>
&gt; &gt; &gt; UHD RF CHANNEL #0 SETTINGS<br>
&gt; &gt; &gt; Actual USRP center freq.: 1575420000.010133 [Hz]...<br>
&gt; &gt; &gt; PLL Frequency tune error 0.010133 [Hz]...<br>
&gt; &gt; &gt; Actual daughterboard gain set to: 38.000000 dB...<br>
&gt; &gt; &gt; Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]=
...<br>
&gt; &gt; &gt; Check for front-end LO: locked ... is Locked<br>
&gt; &gt; &gt; Starting a TCP/IP server of RTCM messages on port 2101<br>
&gt; &gt; &gt; The TCP/IP server of RTCM messages is up and running. Accept=
ing<br>
&gt; &gt; &gt; connections ...<br>
&gt; &gt; &gt; [WARNING] [CORES] The requested decimation is odd; the user =
should<br>
&gt; &gt; &gt; expect CIC rolloff.<br>
&gt; &gt; &gt; Select an even decimation to ensure that a halfband filter i=
s<br>
&gt; &gt; &gt; enabled.<br>
&gt; &gt; &gt; decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (100.000000 M=
Hz)/(4.000000<br>
&gt; &gt; &gt; MHz)<br>
&gt; &gt; &gt; Current receiver time: 1 s<br>
&gt; &gt; &gt; Current receiver time: 2 s<br>
&gt; &gt; &gt; Current receiver time: 3 s<br>
&gt; &gt; &gt; Current receiver time: 4 s<br>
&gt; &gt; &gt; Current receiver time: 5 s<br>
&gt; &gt; &gt; Current receiver time: 6 s<br>
&gt; &gt; &gt; Current receiver time: 7 s<br>
&gt; &gt; &gt; Current receiver time: 8 s<br>
&gt; &gt; &gt; Current receiver time: 9 s<br>
&gt; &gt; &gt; Current receiver time: 10 s<br>
&gt; &gt;<br>
&gt; &gt; My Configuration File:<br>
&gt; &gt; &gt; [GNSS-SDR]<br>
&gt; &gt; &gt; ;######### GLOBAL OPTIONS ##################<br>
&gt; &gt; &gt; GNSS-SDR.internal_fs_sps=3D4000000<br>
&gt; &gt; &gt; ;######### SIGNAL_SOURCE CONFIG ############<br>
&gt; &gt; &gt; SignalSource.implementation=3DUHD_Signal_Source<br>
&gt; &gt; &gt; SignalSource.device_address=3D192.168.10.4<br>
&gt; &gt; &gt; SignalSource.item_type=3Dcshort<br>
&gt; &gt; &gt; SignalSource.sampling_frequency=3D4000000<br>
&gt; &gt; &gt; SignalSource.freq=3D1575420000<br>
&gt; &gt; &gt; SignalSource.gain=3D15<br>
&gt; &gt; &gt; SignalSource.subdevice=3DA:0=C2=A0 ; &lt;- Can be A:0 or B:0=
<br>
&gt; &gt; &gt; SignalSource.samples=3D0<br>
&gt; &gt; &gt; ;######### SIGNAL_CONDITIONER CONFIG ############<br>
&gt; &gt; &gt; SignalConditioner.implementation=3DSignal_Conditioner<br>
&gt; &gt; &gt; ;######### DATA_TYPE_ADAPTER CONFIG ############<br>
&gt; &gt; &gt; DataTypeAdapter.implementation=3DPass_Through<br>
&gt; &gt; &gt; DataTypeAdapter.item_type=3Dcshort<br>
&gt; &gt; &gt; ;######### INPUT_FILTER CONFIG ############<br>
&gt; &gt; &gt; InputFilter.implementation=3DFir_Filter<br>
&gt; &gt; &gt; InputFilter.input_item_type=3Dcshort<br>
&gt; &gt; &gt; InputFilter.output_item_type=3Dgr_complex<br>
&gt; &gt; &gt; InputFilter.taps_item_type=3Dfloat<br>
&gt; &gt; &gt; InputFilter.number_of_taps=3D11<br>
&gt; &gt; &gt; InputFilter.number_of_bands=3D2<br>
&gt; &gt; &gt; InputFilter.band1_begin=3D0.0<br>
&gt; &gt; &gt; InputFilter.band1_end=3D0.48<br>
&gt; &gt; &gt; InputFilter.band2_begin=3D0.52<br>
&gt; &gt; &gt; InputFilter.band2_end=3D1.0<br>
&gt; &gt; &gt; InputFilter.ampl1_begin=3D1.0<br>
&gt; &gt; &gt; InputFilter.ampl1_end=3D1.0<br>
&gt; &gt; &gt; InputFilter.ampl2_begin=3D0.0<br>
&gt; &gt; &gt; InputFilter.ampl2_end=3D0.0<br>
&gt; &gt; &gt; InputFilter.band1_error=3D1.0<br>
&gt; &gt; &gt; InputFilter.band2_error=3D1.0<br>
&gt; &gt; &gt; InputFilter.filter_type=3Dbandpass<br>
&gt; &gt; &gt; InputFilter.grid_density=3D16<br>
&gt; &gt; &gt; InputFilter.sampling_frequency=3D4000000<br>
&gt; &gt; &gt; InputFilter.IF=3D0<br>
&gt; &gt; &gt; ;######### RESAMPLER CONFIG ############<br>
&gt; &gt; &gt; Resampler.implementation=3DPass_Through<br>
&gt; &gt; &gt; ;######### CHANNELS GLOBAL CONFIG ############<br>
&gt; &gt; &gt; Channels_1C.count=3D8<br>
&gt; &gt; &gt; Channels.in_acquisition=3D1<br>
&gt; &gt; &gt; Channel.signal=3D1C<br>
&gt; &gt; &gt; ;######### ACQUISITION GLOBAL CONFIG ############<br>
&gt; &gt; &gt; Acquisition_1C.implementation=3DGPS_L1_CA_PCPS_Acquisition<b=
r>
&gt; &gt; &gt; Acquisition_1C.threshold=3D0.05<br>
&gt; &gt; &gt; Acquisition_1C.doppler_max=3D8000<br>
&gt; &gt; &gt; Acquisition_1C.doppler_step=3D500<br>
&gt; &gt; &gt; ;######### TRACKING GLOBAL CONFIG ############<br>
&gt; &gt; &gt; Tracking_1C.implementation=3DGPS_L1_CA_DLL_PLL_Tracking<br>
&gt; &gt; &gt; Tracking_1C.pll_bw_hz=3D30.0<br>
&gt; &gt; &gt; Tracking_1C.dll_bw_hz=3D4.0<br>
&gt; &gt; &gt; Tracking_1C.early_late_space_chips=3D0.5<br>
&gt; &gt; &gt; ;######### TELEMETRY DECODER GPS CONFIG ############<br>
&gt; &gt; &gt; TelemetryDecoder_1C.implementation=3DGPS_L1_CA_Telemetry_Dec=
oder<br>
&gt; &gt; &gt; ;######### OBSERVABLES CONFIG ############<br>
&gt; &gt; &gt; Observables.implementation=3DHybrid_Observables<br>
&gt; &gt; &gt; ;######### PVT CONFIG ############<br>
&gt; &gt; &gt; PVT.implementation=3DRTKLIB_PVT<br>
&gt; &gt; &gt; PVT.positioning_mode=3DSingle<br>
&gt; &gt; &gt; PVT.output_rate_ms=3D10<br>
&gt; &gt; &gt; PVT.display_rate_ms=3D500<br>
&gt; &gt; &gt; PVT.iono_model=3DBroadcast<br>
&gt; &gt; &gt; PVT.trop_model=3DSaastamoinen<br>
&gt; &gt; &gt; PVT.flag_rtcm_server=3Dtrue<br>
&gt; &gt; &gt; PVT.flag_rtcm_tty_port=3Dfalse<br>
&gt; &gt; &gt; PVT.rtcm_dump_devname=3D/dev/pts/1<br>
&gt; &gt; &gt; PVT.rtcm_tcp_port=3D2101<br>
&gt; &gt; &gt; PVT.rtcm_MT1019_rate_ms=3D5000<br>
&gt; &gt; &gt; PVT.rtcm_MT1077_rate_ms=3D1000<br>
&gt; &gt; &gt; PVT.rinex_version=3D2<br>
&gt; &gt;<br>
&gt; &gt; I also referenced this solution (<br>
&gt; &gt;<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2018-October/058147.html" rel=3D"noreferrer" target=3D"_blank">http://list=
s.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html</=
a><br>
&gt; &gt; ) and changed the gain as 15, but this made no sense.<br>
&gt; &gt;<br>
&gt; &gt; Sincerely,<br>
&gt; &gt; Zhao Xu<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/51ea41b6/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190729/51ea41b6/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: gpstest.conf<br>
Type: application/octet-stream<br>
Size: 2471 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/51ea41b6/attachment-0001.conf" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190729/51ea41b6/attachment-0001.conf</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: pvt.dat_190727_144704.gpx<br>
Type: application/octet-stream<br>
Size: 820 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/51ea41b6/attachment-0001.gpx" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20190729/51ea41b6/attachment-0001.gpx</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: pvt.dat_190727_144704.geojson<br>
Type: application/octet-stream<br>
Size: 165 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/51ea41b6/attachment-0001.geojson" rel=3D"noreferr=
er" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ett=
us.com/attachments/20190729/51ea41b6/attachment-0001.geojson</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: pvt.dat_190727_144704.kml<br>
Type: application/octet-stream<br>
Size: 1492 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190729/51ea41b6/attachment-0001.kml" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20190729/51ea41b6/attachment-0001.kml</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Tue, 30 Jul 2019 00:48:47 +0000<br>
From: ? ? &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">re=
tina999@hotmail.com</a>&gt;<br>
To: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
Cc: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank=
">sam.reiter@ettus.com</a>&gt;, &quot;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users]=C2=A0 ??: ??:=C2=A0 ??: N310 &quot;Bad CHDR or pa=
cket<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fragment&quot; Problem<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:HK0PR01MB2835B708C9240442=
B8368BC5F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com" target=3D"_blan=
k">HK0PR01MB2835B708C9240442B8368BC5F3DC0@HK0PR01MB2835.apcprd01.prod.excha=
ngelabs.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Thank you very much!=C2=A0 It did work.<br>
<br>
On 2019/7/28 ??8:11, Marcus D. Leech wrote:<br>
On 07/27/2019 08:02 PM, ? ? wrote:<br>
Actually I have tried 1500, same errors. Is there a way to use PyBOMBS to c=
reate the RFNOC environment with a specified UHD version(3.14.0.0) instead =
of the default latest version (3.15)?<br>
<br>
I&#39;m not much of a PyBombs user myself, but something like<br>
<br>
<br>
pybombs config --package uhd gitrev v3.14.0.0<br>
<br>
<br>
<br>
Before proceeding with the rest of your PyBombs flow.<br>
<br>
<br>
???: Marcus D Leech&lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
????: 2019?7?28? 3:02<br>
???: ? ?&lt;mailto:<a href=3D"mailto:retina999@hotmail.com" target=3D"_blan=
k">retina999@hotmail.com</a>&gt;<br>
??: Sam Reiter&lt;mailto:<a href=3D"mailto:sam.reiter@ettus.com" target=3D"=
_blank">sam.reiter@ettus.com</a>&gt;; <a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br>
??: Re: ??: [USRP-users] ??: N310 &quot;Bad CHDR or packet fragment&quot; P=
roblem<br>
<br>
Try adjusting the MTU as well to 1500.<br>
<br>
Sent from my iPhone<br>
<br>
On Jul 26, 2019, at 9:36 PM, ? ? &lt;<a href=3D"mailto:retina999@hotmail.co=
m" target=3D"_blank">retina999@hotmail.com</a>&lt;mailto:<a href=3D"mailto:=
retina999@hotmail.com" target=3D"_blank">retina999@hotmail.com</a>&gt;&gt; =
wrote:<br>
<br>
FYI<br>
<br>
<br>
<br>
ifconfig<br>
<br>
enp2s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu 8000<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.10.255<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::96c6:91ff:febd:e8bb=C2=A0 prefixlen=
 64=C2=A0 scopeid 0x20&lt;link&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 94:c6:91:bd:e8:bb=C2=A0 txqueuelen 1000=
=C2=A0 (Ethernet)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 3352=C2=A0 bytes 2274650 (2.2 MB)<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=
=A0 frame 0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 2926=C2=A0 bytes 246527 (246.5 KB)<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 ca=
rrier 0=C2=A0 collisions 0<br>
<br>
<br>
<br>
lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 65536<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x1=
0&lt;host&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopbac=
k)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 369=C2=A0 bytes 29489 (29.4 KB)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=
=A0 frame 0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 369=C2=A0 bytes 29489 (29.4 KB)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 ca=
rrier 0=C2=A0 collisions 0<br>
<br>
<br>
<br>
wlx3c46d8d7c86c: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 m=
tu 1500<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.0.208=C2=A0 netmask 255.255.254.0=
=C2=A0 broadcast 192.168.1.255<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::b8b3:bda6:dd2a:206f=C2=A0 prefixlen=
 64=C2=A0 scopeid 0x20&lt;link&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 3c:46:d8:d7:c8:6c=C2=A0 txqueuelen 1000=
=C2=A0 (Ethernet)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 1043=C2=A0 bytes 822132 (822.1 KB)<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=
=A0 frame 0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 873=C2=A0 bytes 119925 (119.9 KB)<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 ca=
rrier 0=C2=A0 collisions 0<br>
On 2019/7/27 ? ?1:17, Sam Reiter wrote:<br>
Can you post the output of ifconfig on your system?<br>
<br>
Sam Reiter<br>
SDR Support Engineer<br>
Ettus Research<br>
<br>
<br>
On Thu, Jul 25, 2019 at 7:40 PM ? ? &lt;<a href=3D"mailto:retina999@hotmail=
.com" target=3D"_blank">retina999@hotmail.com</a>&lt;mailto:<a href=3D"mail=
to:retina999@hotmail.com" target=3D"_blank">retina999@hotmail.com</a>&gt;&g=
t; wrote:<br>
<br>
Thanks!<br>
<br>
I am learning to use RFNOC to integrate a baseband. So I used PyBOMBS to cr=
eate the environment.=C2=A0 The automatically installed UHD version is as f=
ollows<br>
<br>
uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-19-=
g7e1b567d<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 serial: 3182B09<br>
=C2=A0 =C2=A0 addr: 192.168.10.2<br>
=C2=A0 =C2=A0 claimed: False<br>
=C2=A0 =C2=A0 mgmt_addr: 192.168.1.151<br>
=C2=A0 =C2=A0 mgmt_addr: 192.168.10.2<br>
=C2=A0 =C2=A0 product: n310<br>
=C2=A0 =C2=A0 type: n3xx<br>
<br>
But how to add=C2=A0 to the device arguments?=C2=A0 I tried like this but n=
ot working<br>
<br>
/usr/local/lib/uhd/examples/rx_ascii_art_dft --args &quot;master_clock_rate=
=3D125e6,mgmt_addr=3D192.168.1.151,recv_frame_size=3D1476,addr=3D192.168.10=
.2&quot; --freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lvl=3D&quot;-50&quot; -=
-dyn-rng 90 --ant &quot;RX2&quot; --subdev &quot;A:0&quot;<br>
<br>
<br>
On 2019/7/26 ??5:17, Sam Reiter wrote:<br>
Found the offending commit and reported the issue. It also looks like addin=
g recv_frame_size=3D1476 explicitly to the device arguments cleared things =
up on my N310 running 3.14.1.0. Let me know if this does / doesn&#39;t work=
 for anyone.<br>
<br>
Sam Reiter<br>
SDR Support Engineer<br>
Ettus Research<br>
<br>
<br>
On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&lt;mailto=
:<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt;&gt; wrote:<br>
On 07/25/2019 03:56 PM, Sam Reiter wrote:<br>
Follow up on this thread. I ran my N310 with a 1GbE link and was able to re=
produce the &quot;Bad CHDR or packet fragment issue&quot;. It seems specifi=
c to N3xx RX over a 1GbE link on 3.14.1.0. I didn&#39;t spend a ton of time=
 trying to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 clea=
red the issue for me.<br>
<br>
I&#39;ll spend some time finding the offending commit and see what I can&#3=
9;t do to get a fix / workaround figured out for 3.14.1.0.<br>
<br>
Sam Reiter<br>
SDR Support Engineer<br>
Ettus Research<br>
<br>
Thanks, Sam.=C2=A0 When I go into the lab later, I can probably confirm thi=
s as well, I haven&#39;t seen it before, but I think I&#39;m runing 3.14.0.=
0<br>
<br>
<br>
<br>
On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&lt;mailto=
:<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt;&gt; wrote:<br>
Normally Intel controllers have better performance but even a RealTek chip =
should have no problem at those data rates.<br>
<br>
<br>
Sent from my iPhone<br>
<br>
On Jul 23, 2019, at 10:01 PM, ? ? &lt;<a href=3D"mailto:retina999@hotmail.c=
om" target=3D"_blank">retina999@hotmail.com</a>&lt;mailto:<a href=3D"mailto=
:retina999@hotmail.com" target=3D"_blank">retina999@hotmail.com</a>&gt;&gt;=
 wrote:<br>
Actually my pc?s Ethernet card chip is from Realtek.<br>
I?ve tried all possible MTU sizes of auto, 1000, 1500, 2000, and up to 9000=
. Always the same errors.<br>
Is it the inherent problem with the Realtek chip?<br>
If that, is there any workaround? eg. Changing the default Linux driver,<br=
>
or the last solution, ie. I have to try install a PCIE network card. Which =
brand ethernet card is compatible, one from Intel?<br>
<br>
<br>
???: Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&lt;mailto:<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt;<br>
? ???: Wednesday, July 24, 2019 7:34:13 AM<br>
? ??: ? ? &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">re=
tina999@hotmail.com</a>&lt;mailto:<a href=3D"mailto:retina999@hotmail.com" =
target=3D"_blank">retina999@hotmail.com</a>&gt;&gt;<br>
??: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank=
">sam.reiter@ettus.com</a>&lt;mailto:<a href=3D"mailto:sam.reiter@ettus.com=
" target=3D"_blank">sam.reiter@ettus.com</a>&gt;&gt;; <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&l=
t;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;&gt;<br>
? ?: Re: [USRP-users] ??: N310 &quot;Bad CHDR or packet fragment&quot; Prob=
lem<br>
<br>
Some Ethernet 1g controllers won?t actually do MTUs greater than 1500 despi=
te ethnology telling them to. Some Realtek for example.<br>
<br>
If it?s just 1G try default MTU of 1500 and work your way up to see where i=
t fails.<br>
Sent from my iPhone<br>
<br>
On Jul 23, 2019, at 7:15 PM, ? ? via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&lt;=
mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
It?s a=C2=A0 1g SFP0 link. I set MTU=C2=A0 to 8000 according to the Applica=
tion Note.<br>
<br>
<br>
???: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blan=
k">sam.reiter@ettus.com</a>&lt;mailto:<a href=3D"mailto:sam.reiter@ettus.co=
m" target=3D"_blank">sam.reiter@ettus.com</a>&gt;&gt;<br>
????: Wednesday, July 24, 2019 4:56:21 AM<br>
???: ? ? &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">ret=
ina999@hotmail.com</a>&lt;mailto:<a href=3D"mailto:retina999@hotmail.com" t=
arget=3D"_blank">retina999@hotmail.com</a>&gt;&gt;<br>
??: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt;&gt;<br>
??: Re: [USRP-users] N310 &quot;Bad CHDR or packet fragment&quot; Problem<b=
r>
<br>
If you&#39;re connected over a 10GbE link, make sure to set your host&#39;s=
 MTU appropriately. I set mine to 9000.<br>
<br>
Sam Reiter<br>
SDR Support Engineer<br>
Ettus Research<br>
<br>
<br>
On Fri, Jul 19, 2019 at 2:21 AM ? ? via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
<br>
Hi, all,<br>
<br>
<br>
<br>
When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.<br>
<br>
What causes this and how to solve it?<br>
<br>
<br>
<br>
Thanks in advance!<br>
<br>
<br>
<br>
FT<br>
<br>
<br>
<br>
<br>
<br>
/usr/local/lib/uhd/examples/benchmark_rate=C2=A0 \<br>
<br>
&gt;=C2=A0 =C2=A0 --args &quot;type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D=
192.168.10.2,master_clock_rate=3D122.88e6&quot; \<br>
<br>
&gt;=C2=A0 =C2=A0 --duration 60 \<br>
<br>
&gt;=C2=A0 =C2=A0 --channels &quot;0&quot; \<br>
<br>
&gt;=C2=A0 =C2=A0 --rx_rate 3.84e6 \<br>
<br>
&gt;=C2=A0 =C2=A0 --rx_subdev &quot;A:0&quot; \<br>
<br>
&gt;=C2=A0 =C2=A0 --tx_rate 3.84e6 \<br>
<br>
&gt;=C2=A0 =C2=A0 --tx_subdev &quot;A:0&quot;<br>
<br>
<br>
<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-=
gbfb9c1c7<br>
<br>
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D19=
2.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...<br>
<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse,add=
r=3D192.168.10.2,master_clock_rate=3D122.88e6<br>
<br>
[INFO] [MPM.PeriphManager] init() called with device args `master_clock_rat=
e=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_addr=3D192=
.168.10.2,product=3Dn310&#39;.<br>
<br>
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)=
<br>
<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<=
br>
<br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)<=
br>
<br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
<br>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
<br>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)<br=
>
<br>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)<br=
>
<br>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
<br>
Using Device: Single USRP:<br>
<br>
=C2=A0 Device: N300-Series Device<br>
<br>
=C2=A0 Mboard 0: ni-n3xx-3182B09<br>
<br>
=C2=A0 RX Channel: 0<br>
<br>
=C2=A0 =C2=A0 RX DSP: 0<br>
<br>
=C2=A0 =C2=A0 RX Dboard: A<br>
<br>
=C2=A0 =C2=A0 RX Subdev: Magnesium<br>
<br>
=C2=A0 TX Channel: 0<br>
<br>
=C2=A0 =C2=A0 TX DSP: 0<br>
<br>
=C2=A0 =C2=A0 TX Dboard: A<br>
<br>
=C2=A0 =C2=A0 TX Subdev: Magnesium<br>
<br>
<br>
<br>
[00:00:17.353184] Setting device timestamp to 0...<br>
<br>
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels<br>
<br>
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET<br>
<br>
[[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or pac=
ket fragment<br>
<br>
<br>
<br>
[ERROR] [STREAMER] The receive packet handler caught a value exception.<br>
<br>
ValueError: Bad CHDR or packet fragment<br>
<br>
00:00:17.414180] Unexpected error on recv, continuing...<br>
<br>
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>
<br>
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET<br>
<br>
[00:00:17.514317] Unexpected error on recv, continuing...<br>
<br>
[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or pack=
et fragment<br>
<br>
<br>
<br>
[ERROR] [STREAMER] The receive packet handler caught a value exception.<br>
<br>
ValueError: Bad CHDR or packet fragment<br>
<br>
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels<br>
<br>
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>
<br>
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET<br>
<br>
[00:00:17.614377] Unexpected error on recv, continuing...<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190730/9933e485/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190730/9933e485/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: oddkebdbfjoplldh.png<br>
Type: image/png<br>
Size: 124 bytes<br>
Desc: oddkebdbfjoplldh.png<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190730/9933e485/attachment-0001.png" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20190730/9933e485/attachment-0001.png</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 107, Issue 27<br>
*******************************************<br>
</blockquote></div></div>

--0000000000002738d3058ee8af23--


--===============1387662882435231920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1387662882435231920==--

