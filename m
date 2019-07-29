Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9B79346
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 20:41:42 +0200 (CEST)
Received: from [::1] (port=34982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsAaY-0001gT-Hj; Mon, 29 Jul 2019 14:41:38 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:40667)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bill1310272059@gmail.com>)
 id 1hsAaV-0001a7-7S
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 14:41:35 -0400
Received: by mail-io1-f41.google.com with SMTP id h6so35756251iom.7
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 11:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=YTwpLTWD71k093hme2o5sk2oz/sZ5mXaiXeiXGid59E=;
 b=uwK2qAILXgYlTKQJpVANaJRKnEctCxBfp1RBDr1vYgTOInVU6ixKlXpqS9+zEzI0H8
 +wTSNsOKT/Ji63X6KsPJn/TceR3w3ZSnbMng25VjPzsxLs4JzXfxipp6iwW+DXRcM+Td
 GlMz4BO3E+Jjek7UogJFZshDhG7XViebVxnVIxkCKZlUrS46MKpi7w5h6kcNS/UwRJf/
 ropNE7hDMO0HCm+W7qgk1TTqxuB6n4OSYFdXFaB/iPSIJK8VhWzyef126o2ohKWWuoOT
 PzHEhokTZyQ5lVPe2v8mjJsI0vbO9i/r9Y69KuNdqLRB/wmihQVOSkmU7AwL2r4hIs6a
 YSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YTwpLTWD71k093hme2o5sk2oz/sZ5mXaiXeiXGid59E=;
 b=meVZUf6bOrhxTgPKWyyOsCrVWLi4CAGPuLC05a5jFhy4lGXfJDIhnl2Y8uL6CJIuiM
 GSNgfIJZfUGt7lCsHH16s0xOAfdemssWsLvNDA1nG15J2V5dwxtCMxiOgIq3bp6tdJNI
 QBva3u6TIHYf1FE6sYLXSWU7dhfJjB5e9vY3C6nEHwz1McTm4MaeC941GxEtslIJN94H
 PeZ4xhRGYRfeO1xaGR7btmgy1qQf+6SRtsCDuajWsCYTJFhnb3JVAFT3McvtRTapNlPe
 635H+md20ludCU2nrN/Qv9a0PznlrXvLzFmXTwpLUjUmPyRmCfV9Hu3t2BjOM+i0D9wq
 E8Hw==
X-Gm-Message-State: APjAAAXCQApVtbtNAz8GTd0r1yIy8eZiPx0ILi1XB6+EGbGk3+3jHoIY
 CPNJVG/Nxqfb+UooqruV1L6LrrNbMknt3NLSHwO59lex
X-Google-Smtp-Source: APXvYqxQAKa1b45zzPEQ6UNLKcmr2kBA2W2K0h4rV6ywc9ZTIwTOBic8TiB2u5rt1G5OieyLXpCz0de94wudK6kZNqc=
X-Received: by 2002:a02:c6b8:: with SMTP id o24mr44415086jan.80.1564425654388; 
 Mon, 29 Jul 2019 11:40:54 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 29 Jul 2019 14:40:44 -0400
Message-ID: <CACBa4aPHyB0Mu6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Help with GPS signal acquisition using USRP N210
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
From: "Xu, Zhao via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Xu, Zhao" <ZhaoXu9807@gmail.com>
Content-Type: multipart/mixed; boundary="===============6099595561770407575=="
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

--===============6099595561770407575==
Content-Type: multipart/alternative; boundary="000000000000684fd1058ed63b85"

--000000000000684fd1058ed63b85
Content-Type: text/plain; charset="UTF-8"

Hello,

I have been struggling with trying to acquire GPS with an N210 for some
time. I take the liberty of asking you for help that I can't find out the
error. Here is my setup:

Active GPS antenna (Voltage: 3-5V, current: 7-10mA, LNA Gain: 28dB,
> Connector: SMA)

T bias with 3.3 V DC power

USRP N210 + daughter board CBX


*While experimenting, I found the logs are the same no matter the power of
antenna is on or off. So it seems that the antenna doesn't work well or my
configuration file is wrong. But How can I confirm the antenna's working
status as it has no indicator light? *

Here is my configuration file (It is from this website:
https://gnss-sdr.org/conf/#setting-up-the-software-receiver). One thing to
note is that I changed two parameters: Acquisition_1C.threshold
and SignalSource.gain. The default value of the threshold is 0.01 which
causes frequent loss of lock and when I set it to 0.05 the receiver can't
maintain lock of satellite as the log shown below:

*Acquisition_1C.threshold = 0.01* (Usually I run at least 2 minutes and
here I just show 10-second log as the following logs are the same.)

> Sampling Rate for the USRP device: 4000000.000000 [sps]...
> UHD RF CHANNEL #0 SETTINGS
> Actual USRP center freq.: 1575420000.010133 [Hz]...
> PLL Frequency tune error 0.010133 [Hz]...
> Actual daughterboard gain set to: 38.000000 dB...
> Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> Check for front-end LO: locked ... is Locked
> Starting a TCP/IP server of RTCM messages on port 2101
> The TCP/IP server of RTCM messages is up and running. Accepting
> connections ...
> [WARNING] [CORES] The requested decimation is odd; the user should expect
> CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
>
> Current receiver time: 1 s
> Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN
> 06 (Block IIF)
> Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN
> 10 (Block IIF)
> Loss of lock in channel 5!
> Tracking of GPS L1 C/A signal started on channel 4 for satellite GPS PRN
> 32 (Block IIF)
> Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PRN
> 18 (Block IIR)
> Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS PRN
> 02 (Block IIR)
> Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN
> 22 (Block IIR)
> Tracking of GPS L1 C/A signal started on channel 6 for satellite GPS PRN
> 15 (Block IIR-M)
> Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS PRN
> 29 (Block IIR-M)
> Tracking of GPS L1 C/A signal started on channel 0 for satellite GPS PRN
> 26 (Block IIF)
> Current receiver time: 2 s
> Current receiver time: 3 s
> Current receiver time: 4 s
> Current receiver time: 5 s
> Current receiver time: 6 s
> Loss of lock in channel 1!
> Loss of lock in channel 7!
> Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PRN
> 11 (Block IIR)
> Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS PRN
> 14 (Block IIR)
> Loss of lock in channel 3!
> Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS PRN
> 23 (Block IIR)
> Current receiver time: 7 s
> Current receiver time: 8 s
> Current receiver time: 9 s
> Current receiver time: 10 s
>

*Acquisition_1C.threshold = 0.05*

Initializing GNSS-SDR v0.0.10.git-next-08c57e2c7 ... Please wait.
> Logging will be written at ./log
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-100-gf6f2e961
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [WARNING] [CORES] Sampling Rate for the USRP device: 4000000.000000
> [sps]...
> The requested decimation is odd; the user should expect CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
> UHD RF CHANNEL #0 SETTINGS
> Actual USRP center freq.: 1575420000.010133 [Hz]...
> PLL Frequency tune error 0.010133 [Hz]...
> Actual daughterboard gain set to: 38.000000 dB...
> Setting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...
> Check for front-end LO: locked ... is Locked
> Starting a TCP/IP server of RTCM messages on port 2101
> The TCP/IP server of RTCM messages is up and running. Accepting
> connections ...
> [WARNING] [CORES] The requested decimation is odd; the user should expect
> CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> decimation = dsp_rate/samp_rate -> 25 = (100.000000 MHz)/(4.000000 MHz)
> Current receiver time: 1 s
> Current receiver time: 2 s
> Current receiver time: 3 s
> Current receiver time: 4 s
> Current receiver time: 5 s
> Current receiver time: 6 s
> Current receiver time: 7 s
> Current receiver time: 8 s
> Current receiver time: 9 s
> Current receiver time: 10 s


My Configuration File:

> [GNSS-SDR]
> ;######### GLOBAL OPTIONS ##################
> GNSS-SDR.internal_fs_sps=4000000
> ;######### SIGNAL_SOURCE CONFIG ############
> SignalSource.implementation=UHD_Signal_Source
> SignalSource.device_address=192.168.10.4
> SignalSource.item_type=cshort
> SignalSource.sampling_frequency=4000000
> SignalSource.freq=1575420000
> SignalSource.gain=15
> SignalSource.subdevice=A:0  ; <- Can be A:0 or B:0
> SignalSource.samples=0
> ;######### SIGNAL_CONDITIONER CONFIG ############
> SignalConditioner.implementation=Signal_Conditioner
> ;######### DATA_TYPE_ADAPTER CONFIG ############
> DataTypeAdapter.implementation=Pass_Through
> DataTypeAdapter.item_type=cshort
> ;######### INPUT_FILTER CONFIG ############
> InputFilter.implementation=Fir_Filter
> InputFilter.input_item_type=cshort
> InputFilter.output_item_type=gr_complex
> InputFilter.taps_item_type=float
> InputFilter.number_of_taps=11
> InputFilter.number_of_bands=2
> InputFilter.band1_begin=0.0
> InputFilter.band1_end=0.48
> InputFilter.band2_begin=0.52
> InputFilter.band2_end=1.0
> InputFilter.ampl1_begin=1.0
> InputFilter.ampl1_end=1.0
> InputFilter.ampl2_begin=0.0
> InputFilter.ampl2_end=0.0
> InputFilter.band1_error=1.0
> InputFilter.band2_error=1.0
> InputFilter.filter_type=bandpass
> InputFilter.grid_density=16
> InputFilter.sampling_frequency=4000000
> InputFilter.IF=0
> ;######### RESAMPLER CONFIG ############
> Resampler.implementation=Pass_Through
> ;######### CHANNELS GLOBAL CONFIG ############
> Channels_1C.count=8
> Channels.in_acquisition=1
> Channel.signal=1C
> ;######### ACQUISITION GLOBAL CONFIG ############
> Acquisition_1C.implementation=GPS_L1_CA_PCPS_Acquisition
> Acquisition_1C.threshold=0.05
> Acquisition_1C.doppler_max=8000
> Acquisition_1C.doppler_step=500
> ;######### TRACKING GLOBAL CONFIG ############
> Tracking_1C.implementation=GPS_L1_CA_DLL_PLL_Tracking
> Tracking_1C.pll_bw_hz=30.0
> Tracking_1C.dll_bw_hz=4.0
> Tracking_1C.early_late_space_chips=0.5
> ;######### TELEMETRY DECODER GPS CONFIG ############
> TelemetryDecoder_1C.implementation=GPS_L1_CA_Telemetry_Decoder
> ;######### OBSERVABLES CONFIG ############
> Observables.implementation=Hybrid_Observables
> ;######### PVT CONFIG ############
> PVT.implementation=RTKLIB_PVT
> PVT.positioning_mode=Single
> PVT.output_rate_ms=10
> PVT.display_rate_ms=500
> PVT.iono_model=Broadcast
> PVT.trop_model=Saastamoinen
> PVT.flag_rtcm_server=true
> PVT.flag_rtcm_tty_port=false
> PVT.rtcm_dump_devname=/dev/pts/1
> PVT.rtcm_tcp_port=2101
> PVT.rtcm_MT1019_rate_ms=5000
> PVT.rtcm_MT1077_rate_ms=1000
> PVT.rinex_version=2


I also referenced this solution (
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html)
and changed the gain as 15, but this made no sense.

Sincerely,
Zhao Xu

--000000000000684fd1058ed63b85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I have been struggling with trying to acquir=
e GPS with an N210 for some time. I take the liberty of asking you for help=
 that I can&#39;t find out the error. Here is my setup:<div><br><blockquote=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex" class=3D"gmail_quote">Active GPS antenna (Voltage: 3-5V, c=
urrent: 7-10mA, LNA Gain: 28dB, Connector: SMA) </blockquote><blockquote st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex" class=3D"gmail_quote">T bias with 3.3 V DC power=C2=A0</block=
quote><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex" class=3D"gmail_quote">USRP N210=C2=A0+ da=
ughter board CBX</blockquote><div>=C2=A0</div></div><div><b>While experimen=
ting, I found the logs are the same no matter the power of antenna is on or=
 off. So it seems that the antenna doesn&#39;t work well or my configuratio=
n file is wrong. But How can I confirm the antenna&#39;s working status as =
it has no indicator light?=C2=A0</b></div><div><br></div><div>Here is my co=
nfiguration file (It is from this website:=C2=A0<a href=3D"https://gnss-sdr=
.org/conf/#setting-up-the-software-receiver">https://gnss-sdr.org/conf/#set=
ting-up-the-software-receiver</a>). One thing to note is that I changed two=
 parameters:=C2=A0Acquisition_1C.threshold and=C2=A0SignalSource.gain. The =
default value of the threshold is 0.01 which causes frequent loss of lock a=
nd when I set it to 0.05 the receiver can&#39;t maintain lock of satellite =
as the log shown below:</div><div><br></div><div><b>Acquisition_1C.threshol=
d =3D 0.01</b>=C2=A0(Usually I run at least 2 minutes and here I just show =
10-second log as the following logs are the same.)<br></div><blockquote sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex" class=3D"gmail_quote">Sampling Rate for the USRP device: 40000=
00.000000 [sps]...<br>UHD RF CHANNEL #0 SETTINGS<br>Actual USRP center freq=
.: 1575420000.010133 [Hz]...<br>PLL Frequency tune error 0.010133 [Hz]...<b=
r>Actual daughterboard gain set to: 38.000000 dB...<br>Setting RF bandpass =
filter bandwidth to: 2000000.000000 [Hz]...<br>Check for front-end LO: lock=
ed ... is Locked<br>Starting a TCP/IP server of RTCM messages on port 2101<=
br>The TCP/IP server of RTCM messages is up and running. Accepting connecti=
ons ...<br>[WARNING] [CORES] The requested decimation is odd; the user shou=
ld expect CIC rolloff.<br>Select an even decimation to ensure that a halfba=
nd filter is enabled.<br>decimation =3D dsp_rate/samp_rate -&gt; 25 =3D (10=
0.000000 MHz)/(4.000000 MHz)<br><br>Current receiver time: 1 s<br>Tracking =
of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 06 (Block I=
IF)<br>Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS=
 PRN 10 (Block IIF)<br>Loss of lock in channel 5!<br>Tracking of GPS L1 C/A=
 signal started on channel 4 for satellite GPS PRN 32 (Block IIF)<br>Tracki=
ng of GPS L1 C/A signal started on channel 1 for satellite GPS PRN 18 (Bloc=
k IIR)<br>Tracking of GPS L1 C/A signal started on channel 7 for satellite =
GPS PRN 02 (Block IIR)<br>Tracking of GPS L1 C/A signal started on channel =
5 for satellite GPS PRN 22 (Block IIR)<br>Tracking of GPS L1 C/A signal sta=
rted on channel 6 for satellite GPS PRN 15 (Block IIR-M)<br>Tracking of GPS=
 L1 C/A signal started on channel 3 for satellite GPS PRN 29 (Block IIR-M)<=
br>Tracking of GPS L1 C/A signal started on channel 0 for satellite GPS PRN=
 26 (Block IIF)<br>Current receiver time: 2 s<br>Current receiver time: 3 s=
<br>Current receiver time: 4 s<br>Current receiver time: 5 s<br>Current rec=
eiver time: 6 s<br>Loss of lock in channel 1!<br>Loss of lock in channel 7!=
<br>Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PR=
N 11 (Block IIR)<br>Tracking of GPS L1 C/A signal started on channel 7 for =
satellite GPS PRN 14 (Block IIR)<br>Loss of lock in channel 3!<br>Tracking =
of GPS L1 C/A signal started on channel 3 for satellite GPS PRN 23 (Block I=
IR)<br>Current receiver time: 7 s<br>Current receiver time: 8 s<br>Current =
receiver time: 9 s<br>Current receiver time: 10 s<br></blockquote><div>=C2=
=A0</div><div><b>Acquisition_1C.threshold =3D 0.05</b></div><div><br></div>=
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex" class=3D"gmail_quote">Initializing GNSS-SDR v0.=
0.10.git-next-08c57e2c7 ... Please wait.<br>Logging will be written at ./lo=
g<br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.gi=
t-100-gf6f2e961<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[IN=
FO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current s=
end frame size: 1472 bytes<br>[WARNING] [CORES] Sampling Rate for the USRP =
device: 4000000.000000 [sps]...<br>The requested decimation is odd; the use=
r should expect CIC rolloff.<br>Select an even decimation to ensure that a =
halfband filter is enabled.<br>decimation =3D dsp_rate/samp_rate -&gt; 25 =
=3D (100.000000 MHz)/(4.000000 MHz)<br>UHD RF CHANNEL #0 SETTINGS<br>Actual=
 USRP center freq.: 1575420000.010133 [Hz]...<br>PLL Frequency tune error 0=
.010133 [Hz]...<br>Actual daughterboard gain set to: 38.000000 dB...<br>Set=
ting RF bandpass filter bandwidth to: 2000000.000000 [Hz]...<br>Check for f=
ront-end LO: locked ... is Locked<br>Starting a TCP/IP server of RTCM messa=
ges on port 2101<br>The TCP/IP server of RTCM messages is up and running. A=
ccepting connections ...<br>[WARNING] [CORES] The requested decimation is o=
dd; the user should expect CIC rolloff.<br>Select an even decimation to ens=
ure that a halfband filter is enabled.<br>decimation =3D dsp_rate/samp_rate=
 -&gt; 25 =3D (100.000000 MHz)/(4.000000 MHz)<br>Current receiver time: 1 s=
<br>Current receiver time: 2 s<br>Current receiver time: 3 s<br>Current rec=
eiver time: 4 s<br>Current receiver time: 5 s<br>Current receiver time: 6 s=
<br>Current receiver time: 7 s<br>Current receiver time: 8 s<br>Current rec=
eiver time: 9 s<br>Current receiver time: 10 s</blockquote><div><br></div><=
div>My Configuration File:</div><div><blockquote style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"g=
mail_quote">[GNSS-SDR]<br>;######### GLOBAL OPTIONS ##################<br>G=
NSS-SDR.internal_fs_sps=3D4000000<br>;######### SIGNAL_SOURCE CONFIG ######=
######<br>SignalSource.implementation=3DUHD_Signal_Source<br>SignalSource.d=
evice_address=3D192.168.10.4<br>SignalSource.item_type=3Dcshort<br>SignalSo=
urce.sampling_frequency=3D4000000<br>SignalSource.freq=3D1575420000<br>Sign=
alSource.gain=3D15<br>SignalSource.subdevice=3DA:0 =C2=A0; &lt;- Can be A:0=
 or B:0<br>SignalSource.samples=3D0<br>;######### SIGNAL_CONDITIONER CONFIG=
 ############<br>SignalConditioner.implementation=3DSignal_Conditioner<br>;=
######### DATA_TYPE_ADAPTER CONFIG ############<br>DataTypeAdapter.implemen=
tation=3DPass_Through<br>DataTypeAdapter.item_type=3Dcshort<br>;######### I=
NPUT_FILTER CONFIG ############<br>InputFilter.implementation=3DFir_Filter<=
br>InputFilter.input_item_type=3Dcshort<br>InputFilter.output_item_type=3Dg=
r_complex<br>InputFilter.taps_item_type=3Dfloat<br>InputFilter.number_of_ta=
ps=3D11<br>InputFilter.number_of_bands=3D2<br>InputFilter.band1_begin=3D0.0=
<br>InputFilter.band1_end=3D0.48<br>InputFilter.band2_begin=3D0.52<br>Input=
Filter.band2_end=3D1.0<br>InputFilter.ampl1_begin=3D1.0<br>InputFilter.ampl=
1_end=3D1.0<br>InputFilter.ampl2_begin=3D0.0<br>InputFilter.ampl2_end=3D0.0=
<br>InputFilter.band1_error=3D1.0<br>InputFilter.band2_error=3D1.0<br>Input=
Filter.filter_type=3Dbandpass<br>InputFilter.grid_density=3D16<br>InputFilt=
er.sampling_frequency=3D4000000<br>InputFilter.IF=3D0<br>;######### RESAMPL=
ER CONFIG ############<br>Resampler.implementation=3DPass_Through<br>;#####=
#### CHANNELS GLOBAL CONFIG ############<br>Channels_1C.count=3D8<br>Channe=
ls.in_acquisition=3D1<br>Channel.signal=3D1C<br>;######### ACQUISITION GLOB=
AL CONFIG ############<br>Acquisition_1C.implementation=3DGPS_L1_CA_PCPS_Ac=
quisition<br>Acquisition_1C.threshold=3D0.05<br>Acquisition_1C.doppler_max=
=3D8000<br>Acquisition_1C.doppler_step=3D500<br>;######### TRACKING GLOBAL =
CONFIG ############<br>Tracking_1C.implementation=3DGPS_L1_CA_DLL_PLL_Track=
ing<br>Tracking_1C.pll_bw_hz=3D30.0<br>Tracking_1C.dll_bw_hz=3D4.0<br>Track=
ing_1C.early_late_space_chips=3D0.5<br>;######### TELEMETRY DECODER GPS CON=
FIG ############<br>TelemetryDecoder_1C.implementation=3DGPS_L1_CA_Telemetr=
y_Decoder<br>;######### OBSERVABLES CONFIG ############<br>Observables.impl=
ementation=3DHybrid_Observables<br>;######### PVT CONFIG ############<br>PV=
T.implementation=3DRTKLIB_PVT<br>PVT.positioning_mode=3DSingle<br>PVT.outpu=
t_rate_ms=3D10<br>PVT.display_rate_ms=3D500<br>PVT.iono_model=3DBroadcast<b=
r>PVT.trop_model=3DSaastamoinen<br>PVT.flag_rtcm_server=3Dtrue<br>PVT.flag_=
rtcm_tty_port=3Dfalse<br>PVT.rtcm_dump_devname=3D/dev/pts/1<br>PVT.rtcm_tcp=
_port=3D2101<br>PVT.rtcm_MT1019_rate_ms=3D5000<br>PVT.rtcm_MT1077_rate_ms=
=3D1000<br>PVT.rinex_version=3D2</blockquote>=C2=A0</div><div>I also refere=
nced this solution (<a href=3D"http://lists.ettus.com/pipermail/usrp-users_=
lists.ettus.com/2018-October/058147.html">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2018-October/058147.html</a>) and changed the ga=
in as 15, but this made no sense.</div><div><br></div><div>Sincerely,</div>=
<div>Zhao Xu</div></div>

--000000000000684fd1058ed63b85--


--===============6099595561770407575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6099595561770407575==--

