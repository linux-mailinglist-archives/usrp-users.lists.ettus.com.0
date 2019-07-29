Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A93A79B80
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 23:50:46 +0200 (CEST)
Received: from [::1] (port=36938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsDXX-00084u-Pc; Mon, 29 Jul 2019 17:50:43 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:34212)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hsDXU-0007y9-An
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 17:50:40 -0400
Received: by mail-wm1-f52.google.com with SMTP id w9so43907443wmd.1
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 14:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=TNHnyME7X6ziJ64uiU0GrzyKmNfEGv8zicVw3pjfD6Y=;
 b=NAihmKaUvaFUyB5j/Xi+wJs9KNbC0tDxadvOIxN5TENnCr3CSME9VWFv5u7y+P0DEC
 5HEeL9owqcHUTkLtbijUsCKsc1zFeO/0W6KkdD+zVEShw4WccDgnJ1laOMCNvgETiXWE
 dPsFom2/Jvhyu6SDfaUhNVQWw6YjVLjg3v8RI1Ywjm17staO0CpXXYnrjwDJpX0J3pTU
 zlrHLJjSXTNoQTYvSdYTVf4TsD4xOYsSqp7KhmtlByRaK6MmdZWgbxSM4qU/rtV2+JyD
 hUAX9cxxdlf8DgU3uWtwou3ceQWzINqVdjjM5gqDM6yGYw3++A0IIkgFWZAKpgi+73O0
 6Ciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=TNHnyME7X6ziJ64uiU0GrzyKmNfEGv8zicVw3pjfD6Y=;
 b=Cf6kmx9cVWq4TqkMUMWYK9xTm3xkyNFjVPmW14yTxj7vKjT4Nc2QS2KPiAFpH13yjX
 pG7cAHkOUNoZNxkWetuByOhX8LVJlLDupKJTqiin1IIq20oLc9CwgiP3/eQcIOWb9c53
 xFmtHJhb/HkfmbbhGCwLLdrpswzNyk1TsYUBfOfwxPvl21mshTcPvyrH48lmFnNZ1gOH
 ScdupDF2UmXAwPib8NQSHvEjcWNDAiuFmaic/X0Ws5JFUpy77ztZng70uJg3J9Qip1nr
 J7bY6zggldGi7SimyvxEaqKryQUlD0ovnhaAI9PO8krHBzsHog7FNAx6jAsxt6/Ry/0r
 uMvg==
X-Gm-Message-State: APjAAAWR5inp6YO8qXNclvanYaPCsDi6igkQ3rTPHXSzxGTAoGJAMyaA
 wixxSSOWQvuIPsg35gT2PO5VWUzr
X-Google-Smtp-Source: APXvYqxeUrj6Cua7AutoitEpiFZzAoqsAFhmHysrYZDxlk9v6M/RjRLrX4ze/Dd43Q2phytih4rGcw==
X-Received: by 2002:a1c:968c:: with SMTP id
 y134mr95439744wmd.122.1564436999101; 
 Mon, 29 Jul 2019 14:49:59 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-46-223-151-10.hsi.kabel-badenwuerttemberg.de. [46.223.151.10])
 by smtp.googlemail.com with ESMTPSA id z5sm44078795wmf.48.2019.07.29.14.49.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 14:49:58 -0700 (PDT)
Message-ID: <4367367d801ddc6792b7c0cc90a89db0ccc6987e.camel@ettus.com>
To: "Xu, Zhao" <ZhaoXu9807@gmail.com>, usrp-users@lists.ettus.com
Date: Mon, 29 Jul 2019 23:49:57 +0200
In-Reply-To: <CACBa4aPHyB0Mu6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com>
References: <CACBa4aPHyB0Mu6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Help with GPS signal acquisition using USRP N210
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Dear Zhao,

even with an active antenna, GPS signal power is usually below noise
floor. You can't "see" GPS without processing ain.

so, none of this is surprising.

Best regards,
Marcus

On Mon, 2019-07-29 at 14:40 -0400, Xu, Zhao via USRP-users wrote:
> Hello,
> 
> I have been struggling with trying to acquire GPS with an N210 for
> some time. I take the liberty of asking you for help that I can't
> find out the error. Here is my setup:
> 
> > Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,
> > Connector: SMA) 
> > T bias with 3.3 V DC power 
> > USRP N210 + daughter board CBX
> 
>  
> While experimenting, I found the logs are the same no matter the
> power of antenna is on or off. So it seems that the antenna doesn't
> work well or my configuration file is wrong. But How can I confirm
> the antenna's working status as it has no indicator light? 
> 
> Here is my configuration file (It is from this website: 
> https://gnss-sdr.org/conf/#setting-up-the-software-receiver). One
> thing to note is that I changed two
> parameters: Acquisition_1C.threshold and SignalSource.gain. The
> default value of the threshold is 0.01 which causes frequent loss of
> lock and when I set it to 0.05 the receiver can't maintain lock of
> satellite as the log shown below:
> 
> Acquisition_1C.threshold = 0.01 (Usually I run at least 2 minutes and
> here I just show 10-second log as the following logs are the same.)
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
> > [WARNING] [CORES] The requested decimation is odd; the user should
> > expect CIC rolloff.
> > Select an even decimation to ensure that a halfband filter is
> > enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > MHz)
> > 
> > Current receiver time: 1 s
> > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > GPS PRN 06 (Block IIF)
> > Tracking of GPS L1 C/A signal started on channel 2 for satellite
> > GPS PRN 10 (Block IIF)
> > Loss of lock in channel 5!
> > Tracking of GPS L1 C/A signal started on channel 4 for satellite
> > GPS PRN 32 (Block IIF)
> > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > GPS PRN 18 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > GPS PRN 02 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 5 for satellite
> > GPS PRN 22 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 6 for satellite
> > GPS PRN 15 (Block IIR-M)
> > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > GPS PRN 29 (Block IIR-M)
> > Tracking of GPS L1 C/A signal started on channel 0 for satellite
> > GPS PRN 26 (Block IIF)
> > Current receiver time: 2 s
> > Current receiver time: 3 s
> > Current receiver time: 4 s
> > Current receiver time: 5 s
> > Current receiver time: 6 s
> > Loss of lock in channel 1!
> > Loss of lock in channel 7!
> > Tracking of GPS L1 C/A signal started on channel 1 for satellite
> > GPS PRN 11 (Block IIR)
> > Tracking of GPS L1 C/A signal started on channel 7 for satellite
> > GPS PRN 14 (Block IIR)
> > Loss of lock in channel 3!
> > Tracking of GPS L1 C/A signal started on channel 3 for satellite
> > GPS PRN 23 (Block IIR)
> > Current receiver time: 7 s
> > Current receiver time: 8 s
> > Current receiver time: 9 s
> > Current receiver time: 10 s
> 
>  
> Acquisition_1C.threshold = 0.05
> 
> > Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.
> > Logging will be written at ./log
> > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > UHD_3.15.0.git-100-gf6f2e961
> > [INFO] [USRP2] Opening a USRP2/N-Series device...
> > [INFO] [USRP2] Current recv frame size: 1472 bytes
> > [INFO] [USRP2] Current send frame size: 1472 bytes
> > [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000
> > [sps]...
> > The requested decimation is odd; the user should expect CIC
> > rolloff.
> > Select an even decimation to ensure that a halfband filter is
> > enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > MHz)
> > UHD RF CHANNEL #0 SETTINGS
> > Actual USRP center freq.: 1575420000.010133 [Hz]...
> > PLL Frequency tune error 0.010133 [Hz]...
> > Actual daughterboard gain set to: 38.000000 dB...
> > Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> > Check for front-end LO: locked ... is Locked
> > Starting a TCP/IP server of RTCM messages on port 2101
> > The TCP/IP server of RTCM messages is up and running. Accepting
> > connections ...
> > [WARNING] [CORES] The requested decimation is odd; the user should
> > expect CIC rolloff.
> > Select an even decimation to ensure that a halfband filter is
> > enabled.
> > decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000
> > MHz)
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
> My Configuration File:
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
> I also referenced this solution (
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html
> ) and changed the gain as 15, but this made no sense.
> 
> Sincerely,
> Zhao Xu
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
