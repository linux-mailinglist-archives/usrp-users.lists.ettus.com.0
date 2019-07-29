Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F08BA79C54
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 00:16:43 +0200 (CEST)
Received: from [::1] (port=46100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsDwe-0001TQ-GH; Mon, 29 Jul 2019 18:16:40 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:44307)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bill1310272059@gmail.com>)
 id 1hsDwb-0001J7-3C
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 18:16:37 -0400
Received: by mail-io1-f54.google.com with SMTP id s7so123445959iob.11
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 15:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3wFIIG98iKayJUgoD3mrXfXm+V8yZL3jSOlzDN1movs=;
 b=uJv7dMzjHQ7N7fYzLaUoVeyQmtFECgCVR9m5usxYuoLb7JYHxJy054d8YqAWQPRXOp
 5PWRSN2ouVvRzbyZ0XDbgvL2NL4XiK/HpW6Jz4IEJwhPA19MOvGyBph4AY062p3DA5LW
 Pyun4DN+PheoQX3AEde7SMMMmJ/W02N12zoD0HlFqt89yLk9YIbeQrrxMXjOrEm7TBe9
 /7MdJNsNHADad7VoHiZy8+hWIDeS/r6kBmP7m4TaiIXuD8d59pQ6CnszPweNedp4zsoU
 UppIWy7jxNdDjrA1i3u+DyuRPqL5w9CbNHRH74aXx+If346aQCUIRtGbzH6hOiU1pq4R
 VDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3wFIIG98iKayJUgoD3mrXfXm+V8yZL3jSOlzDN1movs=;
 b=KJcwO00L9nxGyyMSrFDGndrYDeePlJRcSJ9Yn0x1V03v5wr8dbUYfHkl4O22xRZUUT
 AGnjTSAsJOPO/WZ4ynqTtekZmPkXkdy1a5jdSvFAj7Lkim+Ij2SISNk/KwTU2i02uVQZ
 CgGy1LqlVdrb7RYwIVwjoJbSOfRKgcIOQtpBdQh+ZLCfkkPzp9mmOY3yCJUi9RyqWqid
 QZMlADZQxl5p7g1NH1EkS5JCifBe3SpVWEu9oIvc+6uHOocgZW1zc8sk1NvtCcElCIrZ
 4RU6Wqsm43+XzPoz+d15fa0mxkdvOaRJLw2iwMKz3aH1m76uLLJKFy9pvuFswdcBXhoB
 WM9Q==
X-Gm-Message-State: APjAAAXMzzVyuRvBlr7VwjhnsjDZT679ZCl4+ju0yJ+G9JCzPm9KUp7U
 zuZ1UmpT2flZ91gwbYXSnn+IcSRWqAjXJN+NZ/o=
X-Google-Smtp-Source: APXvYqzWJJiCya3qNnBJbhicqNJbsiomgMsnVGUOwpxgbjz/OYdx4F+aTcUKNHlxGiQu0H3DuR+24FceAVrgtD0SSIA=
X-Received: by 2002:a5e:8f42:: with SMTP id x2mr17179477iop.35.1564438556241; 
 Mon, 29 Jul 2019 15:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <CACBa4aPHyB0Mu6aYc7o7eKNfKusJRL4heBWqF7xPkOB6tjFpmg@mail.gmail.com>
 <4367367d801ddc6792b7c0cc90a89db0ccc6987e.camel@ettus.com>
In-Reply-To: <4367367d801ddc6792b7c0cc90a89db0ccc6987e.camel@ettus.com>
Date: Mon, 29 Jul 2019 18:15:45 -0400
Message-ID: <CACBa4aMEdOnR-+MypCudt-O6M6HYGaFj18dxeYzuD-H_gbaqpQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Content-Type: multipart/mixed; boundary="0000000000006b4ec8058ed93c6a"
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
From: "Xu, Zhao via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Xu, Zhao" <ZhaoXu9807@gmail.com>
Cc: usrp-users@lists.ettus.com
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

--0000000000006b4ec8058ed93c6a
Content-Type: multipart/alternative; boundary="0000000000006b4ec5058ed93c68"

--0000000000006b4ec5058ed93c68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Thank you very much for your reply!

*I agree with you but my situation is a little different because my
receiver (USRP N210) can't receive any data (even noise) and can't save
file when I press q command. To be specific, every log of my experiment
ends with warnings that it failed to save data. *

Here is a 2-minute log for your reference:

>
> Log file created at: 2019/07/27 19:26:15
> Running on machine: yilin-Precision-3530
> Log line format: [IWEF]mmdd hh:mm:ss.uuuuuu threadid file:line] msg
> I0727 19:26:15.615741 17918 gnss_block_factory.cc:195] Getting
> SignalSource with implementation UHD_Signal_Source
> I0727 19:26:16.950304 17918 uhd_signal_source.cc:164] Sampling Rate for
> the USRP device: 4000000.000000 [sps]...
> I0727 19:26:16.950991 17918 uhd_signal_source.cc:174] Actual USRP center
> freq. set to: 1575420000.010133 [Hz]...
> I0727 19:26:16.951119 17918 uhd_signal_source.cc:178] PLL Frequency tune
> error 0.010133 [Hz]...
> I0727 19:26:16.951756 17918 uhd_signal_source.cc:183] Actual daughterboar=
d
> gain set to: 15.000000 dB...
> I0727 19:26:16.952322 17918 gnss_block_factory.cc:241] Getting
> SignalConditioner with DataTypeAdapter implementation: Pass_Through,
> InputFilter implementation: Fir_Filter, and Resampler implementation:
> Pass_Through
> I0727 19:26:16.953771 17918 gnss_block_factory.cc:271] Getting Observable=
s
> with implementation Hybrid_Observables
> I0727 19:26:16.954036 17918 gnss_block_factory.cc:299] Getting PVT with
> implementation RTKLIB_PVT
> I0727 19:26:16.958174 17918 gnss_block_factory.cc:951] Getting 8 GPS L1
> C/A channels
> I0727 19:26:16.958238 17918 gnss_block_factory.cc:323] Instantiating
> Channel 0 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:16.970176 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 0
> I0727 19:26:16.974195 17918 gnss_block_factory.cc:323] Instantiating
> Channel 1 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:16.995465 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 1
> I0727 19:26:16.998857 17918 gnss_block_factory.cc:323] Instantiating
> Channel 2 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.007000 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 2
> I0727 19:26:17.009788 17918 gnss_block_factory.cc:323] Instantiating
> Channel 3 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.014974 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 3
> I0727 19:26:17.016788 17918 gnss_block_factory.cc:323] Instantiating
> Channel 4 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.020576 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 4
> I0727 19:26:17.022069 17918 gnss_block_factory.cc:323] Instantiating
> Channel 5 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.025209 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 5
> I0727 19:26:17.026458 17918 gnss_block_factory.cc:323] Instantiating
> Channel 6 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.029266 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 6
> I0727 19:26:17.030339 17918 gnss_block_factory.cc:323] Instantiating
> Channel 7 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition,
> Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder
> implementation: GPS_L1_CA_Telemetry_Decoder
> I0727 19:26:17.032866 17918 dll_pll_veml_tracking.cc:1526] Tracking
> Channel set to 7
> I0727 19:26:17.033880 17918 gnss_block_factory.cc:981] Getting 0 GPS L2C
> (M) channels
> I0727 19:26:17.033887 17918 gnss_block_factory.cc:1010] Getting 0 GPS L5
> channels
> I0727 19:26:17.033890 17918 gnss_block_factory.cc:1039] Getting 0 GALILEO
> E1 B (I/NAV OS) channels
> I0727 19:26:17.033893 17918 gnss_block_factory.cc:1068] Getting 0 GALILEO
> E5a I (F/NAV OS) channels
> I0727 19:26:17.033896 17918 gnss_block_factory.cc:1097] Getting 0 GLONASS
> L1 C/A channels
> I0727 19:26:17.033913 17918 gnss_block_factory.cc:1127] Getting 0 GLONASS
> L2 C/A channels
> I0727 19:26:17.033916 17918 gnss_block_factory.cc:1157] Getting 0 BEIDOU
> B1I channels
> I0727 19:26:17.033919 17918 gnss_block_factory.cc:1187] Getting 0 BEIDOU
> B3I channels
> I0727 19:26:17.034056 17918 gnss_flowgraph.cc:131] Connecting flowgraph
> I0727 19:26:17.034147 17918 gnss_flowgraph.cc:264] connecting sig_source_
> 0 stream 0 to conditioner 0
> I0727 19:26:17.035058 17918 gnss_flowgraph.cc:723] Channel 0 assigned to
> GPS PRN 01 (Block IIF) Signal 1C
> I0727 19:26:17.035065 17918 gnss_flowgraph.cc:727] Channel 0 connected to
> observables and ready for acquisition
> I0727 19:26:17.035068 17918 gnss_flowgraph.cc:723] Channel 1 assigned to
> GPS PRN 02 (Block IIR) Signal 1C
> I0727 19:26:17.035073 17918 gnss_flowgraph.cc:731] Channel 1 connected to
> observables in standby mode
> I0727 19:26:17.035073 17918 gnss_flowgraph.cc:723] Channel 2 assigned to
> GPS PRN 03 (Block IIF) Signal 1C
> I0727 19:26:17.035077 17918 gnss_flowgraph.cc:731] Channel 2 connected to
> observables in standby mode
> I0727 19:26:17.035079 17918 gnss_flowgraph.cc:723] Channel 3 assigned to
> GPS PRN 04 (Block Unknown) Signal 1C
> I0727 19:26:17.035084 17918 gnss_flowgraph.cc:731] Channel 3 connected to
> observables in standby mode
> I0727 19:26:17.035085 17918 gnss_flowgraph.cc:723] Channel 4 assigned to
> GPS PRN 05 (Block IIR-M) Signal 1C
> I0727 19:26:17.035089 17918 gnss_flowgraph.cc:731] Channel 4 connected to
> observables in standby mode
> I0727 19:26:17.035090 17918 gnss_flowgraph.cc:723] Channel 5 assigned to
> GPS PRN 06 (Block IIF) Signal 1C
> I0727 19:26:17.035094 17918 gnss_flowgraph.cc:731] Channel 5 connected to
> observables in standby mode
> I0727 19:26:17.035095 17918 gnss_flowgraph.cc:723] Channel 6 assigned to
> GPS PRN 07 (Block IIR-M) Signal 1C
> I0727 19:26:17.035099 17918 gnss_flowgraph.cc:731] Channel 6 connected to
> observables in standby mode
> I0727 19:26:17.035101 17918 gnss_flowgraph.cc:723] Channel 7 assigned to
> GPS PRN 08 (Block IIF) Signal 1C
> I0727 19:26:17.035104 17918 gnss_flowgraph.cc:731] Channel 7 connected to
> observables in standby mode
> I0727 19:26:17.035106 17918 gnss_flowgraph.cc:736] Flowgraph connected
> I0727 19:26:17.035109 17918 control_thread.cc:307] Flowgraph connected
> I0727 19:26:17.038399 17918 control_thread.cc:318] Flowgraph started
> *I0727 19:28:19.432575 17918 control_thread.cc:855] Received action STOP*
> I0727 19:28:19.433041 17918 gnss_flowgraph.cc:743] Disconnecting flowgrap=
h
> I0727 19:28:19.433264 17918 gnss_flowgraph.cc:1039] Flowgraph disconnecte=
d
> I0727 19:28:19.933521 17918 control_thread.cc:370] Flowgraph stopped
> I0727 19:28:21.284571 17918 file_configuration.cc:60] Destructor called
> I0727 19:28:21.284590 17918 rtklib_pvt_gs.cc:482] Failed to save GPS L2CM
> or L5 Ephemeris, map is empty
> I0727 19:28:21.284592 17918 rtklib_pvt_gs.cc:508] Failed to save GPS L1 C=
A
> Ephemeris, map is empty
> I0727 19:28:21.284595 17918 rtklib_pvt_gs.cc:538] Failed to save Galileo
> E1 Ephemeris, map is empty
> I0727 19:28:21.284596 17918 rtklib_pvt_gs.cc:568] Failed to save GLONASS
> GNAV Ephemeris, map is empty
> I0727 19:28:21.284597 17918 rtklib_pvt_gs.cc:598] Failed to save GPS UTC
> model parameters, not valid data
> I0727 19:28:21.284600 17918 rtklib_pvt_gs.cc:628] Failed to save Galileo
> UTC model parameters, not valid data
> I0727 19:28:21.284601 17918 rtklib_pvt_gs.cc:658] Failed to save GPS
> ionospheric model parameters, not valid data
> I0727 19:28:21.284602 17918 rtklib_pvt_gs.cc:688] Failed to save GPS CNAV
> ionospheric model parameters, not valid data
> I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:718] Failed to save Galileo
> ionospheric model parameters, not valid data
> I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:748] Failed to save GPS
> almanac, map is empty
> I0727 19:28:21.284607 17918 rtklib_pvt_gs.cc:778] Failed to save Galileo
> almanac, not valid data
> I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:808] Failed to save GPS CNAV
> UTC model parameters, not valid data
> I0727 19:28:21.284610 17918 rtklib_pvt_gs.cc:838] Failed to save GLONASS
> GNAV ephemeris, map is empty
> I0727 19:28:21.284612 17918 rtklib_pvt_gs.cc:868] Failed to save GLONASS
> GNAV ephemeris, not valid data
> I0727 19:28:21.284613 17918 rtklib_pvt_gs.cc:898] Failed to save BeiDou
> DNAV Ephemeris, map is empty
> I0727 19:28:21.284615 17918 rtklib_pvt_gs.cc:928] Failed to save BeiDou
> DNAV ionospheric model parameters, not valid data
> I0727 19:28:21.284617 17918 rtklib_pvt_gs.cc:958] Failed to save BeiDou
> DNAV almanac, map is empty
> I0727 19:28:21.284618 17918 rtklib_pvt_gs.cc:988] Failed to save BeiDou
> DNAV UTC model parameters, not valid data


*I looked up the source code of gnss-sdr from GitHub and I found the codes
that output these warnings from line 412. I also tried to press CTRL+C to
interrupt the program and to see the intermediate files. But none of them
has valid data.*

*intermediate files list (also attached for your reference):*
> pvt.data_190727_144704.gpx
> pvt.data_190727_144704.geojson
> pvt.data_190727_144704.kml
> GSDR208o47.19B   0kB
> GSDR208o47.19P   0kB

GSDR208o47.19O   0kB
> GSDR208o47.19N   0kB
> GSDR208o47.19G   0kB
> GSDR208o47.19F    0kB
> GSDR208o47.19L    0kB


Sincerely,
Zhao Xu

Marcus M=C3=BCller <marcus.mueller@ettus.com> =E4=BA=8E2019=E5=B9=B47=E6=9C=
=8829=E6=97=A5=E5=91=A8=E4=B8=80 =E4=B8=8B=E5=8D=885:50=E5=86=99=E9=81=93=
=EF=BC=9A

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
> > Acquisition_1C.threshold =3D 0.01 (Usually I run at least 2 minutes and
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
> > > decimation =3D dsp_rate/samp_rate -> 25 =3D (100.000000 MHz)/(4.00000=
0
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
> > Acquisition_1C.threshold =3D 0.05
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
> > > decimation =3D dsp_rate/samp_rate -> 25 =3D (100.000000 MHz)/(4.00000=
0
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
> > > decimation =3D dsp_rate/samp_rate -> 25 =3D (100.000000 MHz)/(4.00000=
0
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
> > > GNSS-SDR.internal_fs_sps=3D4000000
> > > ;######### SIGNAL_SOURCE CONFIG ############
> > > SignalSource.implementation=3DUHD_Signal_Source
> > > SignalSource.device_address=3D192.168.10.4
> > > SignalSource.item_type=3Dcshort
> > > SignalSource.sampling_frequency=3D4000000
> > > SignalSource.freq=3D1575420000
> > > SignalSource.gain=3D15
> > > SignalSource.subdevice=3DA:0  ; <- Can be A:0 or B:0
> > > SignalSource.samples=3D0
> > > ;######### SIGNAL_CONDITIONER CONFIG ############
> > > SignalConditioner.implementation=3DSignal_Conditioner
> > > ;######### DATA_TYPE_ADAPTER CONFIG ############
> > > DataTypeAdapter.implementation=3DPass_Through
> > > DataTypeAdapter.item_type=3Dcshort
> > > ;######### INPUT_FILTER CONFIG ############
> > > InputFilter.implementation=3DFir_Filter
> > > InputFilter.input_item_type=3Dcshort
> > > InputFilter.output_item_type=3Dgr_complex
> > > InputFilter.taps_item_type=3Dfloat
> > > InputFilter.number_of_taps=3D11
> > > InputFilter.number_of_bands=3D2
> > > InputFilter.band1_begin=3D0.0
> > > InputFilter.band1_end=3D0.48
> > > InputFilter.band2_begin=3D0.52
> > > InputFilter.band2_end=3D1.0
> > > InputFilter.ampl1_begin=3D1.0
> > > InputFilter.ampl1_end=3D1.0
> > > InputFilter.ampl2_begin=3D0.0
> > > InputFilter.ampl2_end=3D0.0
> > > InputFilter.band1_error=3D1.0
> > > InputFilter.band2_error=3D1.0
> > > InputFilter.filter_type=3Dbandpass
> > > InputFilter.grid_density=3D16
> > > InputFilter.sampling_frequency=3D4000000
> > > InputFilter.IF=3D0
> > > ;######### RESAMPLER CONFIG ############
> > > Resampler.implementation=3DPass_Through
> > > ;######### CHANNELS GLOBAL CONFIG ############
> > > Channels_1C.count=3D8
> > > Channels.in_acquisition=3D1
> > > Channel.signal=3D1C
> > > ;######### ACQUISITION GLOBAL CONFIG ############
> > > Acquisition_1C.implementation=3DGPS_L1_CA_PCPS_Acquisition
> > > Acquisition_1C.threshold=3D0.05
> > > Acquisition_1C.doppler_max=3D8000
> > > Acquisition_1C.doppler_step=3D500
> > > ;######### TRACKING GLOBAL CONFIG ############
> > > Tracking_1C.implementation=3DGPS_L1_CA_DLL_PLL_Tracking
> > > Tracking_1C.pll_bw_hz=3D30.0
> > > Tracking_1C.dll_bw_hz=3D4.0
> > > Tracking_1C.early_late_space_chips=3D0.5
> > > ;######### TELEMETRY DECODER GPS CONFIG ############
> > > TelemetryDecoder_1C.implementation=3DGPS_L1_CA_Telemetry_Decoder
> > > ;######### OBSERVABLES CONFIG ############
> > > Observables.implementation=3DHybrid_Observables
> > > ;######### PVT CONFIG ############
> > > PVT.implementation=3DRTKLIB_PVT
> > > PVT.positioning_mode=3DSingle
> > > PVT.output_rate_ms=3D10
> > > PVT.display_rate_ms=3D500
> > > PVT.iono_model=3DBroadcast
> > > PVT.trop_model=3DSaastamoinen
> > > PVT.flag_rtcm_server=3Dtrue
> > > PVT.flag_rtcm_tty_port=3Dfalse
> > > PVT.rtcm_dump_devname=3D/dev/pts/1
> > > PVT.rtcm_tcp_port=3D2101
> > > PVT.rtcm_MT1019_rate_ms=3D5000
> > > PVT.rtcm_MT1077_rate_ms=3D1000
> > > PVT.rinex_version=3D2
> >
> > I also referenced this solution (
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/=
058147.html
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

--0000000000006b4ec5058ed93c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Dear Marcus,<div><br></div><div>Thank you=
 very much for your reply!</div><div><br></div><div><b>I agree with you but=
 my situation is a little different because my receiver (USRP N210) can&#39=
;t receive any data (even noise) and can&#39;t save file when I press q com=
mand. To be specific, every log of my experiment ends with warnings that it=
 failed to save data.=C2=A0</b></div><div><br></div><div>Here is a 2-minute=
 log for your=C2=A0reference:</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><br>Log file created at: 2019/07/27 19:26:15<br>Running on machi=
ne: yilin-Precision-3530<br>Log line format: [IWEF]mmdd hh:mm:ss.uuuuuu thr=
eadid file:line] msg<br>I0727 19:26:15.615741 17918 gnss_block_factory.cc:1=
95] Getting SignalSource with implementation UHD_Signal_Source<br>I0727 19:=
26:16.950304 17918 uhd_signal_source.cc:164] Sampling Rate for the USRP dev=
ice: 4000000.000000 [sps]...<br>I0727 19:26:16.950991 17918 uhd_signal_sour=
ce.cc:174] Actual USRP center freq. set to: 1575420000.010133 [Hz]...<br>I0=
727 19:26:16.951119 17918 uhd_signal_source.cc:178] PLL Frequency tune erro=
r 0.010133 [Hz]...<br>I0727 19:26:16.951756 17918 uhd_signal_source.cc:183]=
 Actual daughterboard gain set to: 15.000000 dB...<br>I0727 19:26:16.952322=
 17918 gnss_block_factory.cc:241] Getting SignalConditioner with DataTypeAd=
apter implementation: Pass_Through, InputFilter implementation: Fir_Filter,=
 and Resampler implementation: Pass_Through<br>I0727 19:26:16.953771 17918 =
gnss_block_factory.cc:271] Getting Observables with implementation Hybrid_O=
bservables<br>I0727 19:26:16.954036 17918 gnss_block_factory.cc:299] Gettin=
g PVT with implementation RTKLIB_PVT<br>I0727 19:26:16.958174 17918 gnss_bl=
ock_factory.cc:951] Getting 8 GPS L1 C/A channels<br>I0727 19:26:16.958238 =
17918 gnss_block_factory.cc:323] Instantiating Channel 0 with Acquisition I=
mplementation: GPS_L1_CA_PCPS_Acquisition, Tracking Implementation: GPS_L1_=
CA_DLL_PLL_Tracking, Telemetry Decoder implementation: GPS_L1_CA_Telemetry_=
Decoder<br>I0727 19:26:16.970176 17918 dll_pll_veml_tracking.cc:1526] Track=
ing Channel set to 0<br>I0727 19:26:16.974195 17918 gnss_block_factory.cc:3=
23] Instantiating Channel 1 with Acquisition Implementation: GPS_L1_CA_PCPS=
_Acquisition, Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetr=
y Decoder implementation: GPS_L1_CA_Telemetry_Decoder<br>I0727 19:26:16.995=
465 17918 dll_pll_veml_tracking.cc:1526] Tracking Channel set to 1<br>I0727=
 19:26:16.998857 17918 gnss_block_factory.cc:323] Instantiating Channel 2 w=
ith Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition, Tracking Implem=
entation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder implementation: GPS=
_L1_CA_Telemetry_Decoder<br>I0727 19:26:17.007000 17918 dll_pll_veml_tracki=
ng.cc:1526] Tracking Channel set to 2<br>I0727 19:26:17.009788 17918 gnss_b=
lock_factory.cc:323] Instantiating Channel 3 with Acquisition Implementatio=
n: GPS_L1_CA_PCPS_Acquisition, Tracking Implementation: GPS_L1_CA_DLL_PLL_T=
racking, Telemetry Decoder implementation: GPS_L1_CA_Telemetry_Decoder<br>I=
0727 19:26:17.014974 17918 dll_pll_veml_tracking.cc:1526] Tracking Channel =
set to 3<br>I0727 19:26:17.016788 17918 gnss_block_factory.cc:323] Instanti=
ating Channel 4 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition=
, Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder im=
plementation: GPS_L1_CA_Telemetry_Decoder<br>I0727 19:26:17.020576 17918 dl=
l_pll_veml_tracking.cc:1526] Tracking Channel set to 4<br>I0727 19:26:17.02=
2069 17918 gnss_block_factory.cc:323] Instantiating Channel 5 with Acquisit=
ion Implementation: GPS_L1_CA_PCPS_Acquisition, Tracking Implementation: GP=
S_L1_CA_DLL_PLL_Tracking, Telemetry Decoder implementation: GPS_L1_CA_Telem=
etry_Decoder<br>I0727 19:26:17.025209 17918 dll_pll_veml_tracking.cc:1526] =
Tracking Channel set to 5<br>I0727 19:26:17.026458 17918 gnss_block_factory=
.cc:323] Instantiating Channel 6 with Acquisition Implementation: GPS_L1_CA=
_PCPS_Acquisition, Tracking Implementation: GPS_L1_CA_DLL_PLL_Tracking, Tel=
emetry Decoder implementation: GPS_L1_CA_Telemetry_Decoder<br>I0727 19:26:1=
7.029266 17918 dll_pll_veml_tracking.cc:1526] Tracking Channel set to 6<br>=
I0727 19:26:17.030339 17918 gnss_block_factory.cc:323] Instantiating Channe=
l 7 with Acquisition Implementation: GPS_L1_CA_PCPS_Acquisition, Tracking I=
mplementation: GPS_L1_CA_DLL_PLL_Tracking, Telemetry Decoder implementation=
: GPS_L1_CA_Telemetry_Decoder<br>I0727 19:26:17.032866 17918 dll_pll_veml_t=
racking.cc:1526] Tracking Channel set to 7<br>I0727 19:26:17.033880 17918 g=
nss_block_factory.cc:981] Getting 0 GPS L2C (M) channels<br>I0727 19:26:17.=
033887 17918 gnss_block_factory.cc:1010] Getting 0 GPS L5 channels<br>I0727=
 19:26:17.033890 17918 gnss_block_factory.cc:1039] Getting 0 GALILEO E1 B (=
I/NAV OS) channels<br>I0727 19:26:17.033893 17918 gnss_block_factory.cc:106=
8] Getting 0 GALILEO E5a I (F/NAV OS) channels<br>I0727 19:26:17.033896 179=
18 gnss_block_factory.cc:1097] Getting 0 GLONASS L1 C/A channels<br>I0727 1=
9:26:17.033913 17918 gnss_block_factory.cc:1127] Getting 0 GLONASS L2 C/A c=
hannels<br>I0727 19:26:17.033916 17918 gnss_block_factory.cc:1157] Getting =
0 BEIDOU B1I channels<br>I0727 19:26:17.033919 17918 gnss_block_factory.cc:=
1187] Getting 0 BEIDOU B3I channels<br>I0727 19:26:17.034056 17918 gnss_flo=
wgraph.cc:131] Connecting flowgraph<br>I0727 19:26:17.034147 17918 gnss_flo=
wgraph.cc:264] connecting sig_source_ 0 stream 0 to conditioner 0<br>I0727 =
19:26:17.035058 17918 gnss_flowgraph.cc:723] Channel 0 assigned to GPS PRN =
01 (Block IIF) Signal 1C<br>I0727 19:26:17.035065 17918 gnss_flowgraph.cc:7=
27] Channel 0 connected to observables and ready for acquisition<br>I0727 1=
9:26:17.035068 17918 gnss_flowgraph.cc:723] Channel 1 assigned to GPS PRN 0=
2 (Block IIR) Signal 1C<br>I0727 19:26:17.035073 17918 gnss_flowgraph.cc:73=
1] Channel 1 connected to observables in standby mode<br>I0727 19:26:17.035=
073 17918 gnss_flowgraph.cc:723] Channel 2 assigned to GPS PRN 03 (Block II=
F) Signal 1C<br>I0727 19:26:17.035077 17918 gnss_flowgraph.cc:731] Channel =
2 connected to observables in standby mode<br>I0727 19:26:17.035079 17918 g=
nss_flowgraph.cc:723] Channel 3 assigned to GPS PRN 04 (Block Unknown) Sign=
al 1C<br>I0727 19:26:17.035084 17918 gnss_flowgraph.cc:731] Channel 3 conne=
cted to observables in standby mode<br>I0727 19:26:17.035085 17918 gnss_flo=
wgraph.cc:723] Channel 4 assigned to GPS PRN 05 (Block IIR-M) Signal 1C<br>=
I0727 19:26:17.035089 17918 gnss_flowgraph.cc:731] Channel 4 connected to o=
bservables in standby mode<br>I0727 19:26:17.035090 17918 gnss_flowgraph.cc=
:723] Channel 5 assigned to GPS PRN 06 (Block IIF) Signal 1C<br>I0727 19:26=
:17.035094 17918 gnss_flowgraph.cc:731] Channel 5 connected to observables =
in standby mode<br>I0727 19:26:17.035095 17918 gnss_flowgraph.cc:723] Chann=
el 6 assigned to GPS PRN 07 (Block IIR-M) Signal 1C<br>I0727 19:26:17.03509=
9 17918 gnss_flowgraph.cc:731] Channel 6 connected to observables in standb=
y mode<br>I0727 19:26:17.035101 17918 gnss_flowgraph.cc:723] Channel 7 assi=
gned to GPS PRN 08 (Block IIF) Signal 1C<br>I0727 19:26:17.035104 17918 gns=
s_flowgraph.cc:731] Channel 7 connected to observables in standby mode<br>I=
0727 19:26:17.035106 17918 gnss_flowgraph.cc:736] Flowgraph connected<br>I0=
727 19:26:17.035109 17918 control_thread.cc:307] Flowgraph connected<br>I07=
27 19:26:17.038399 17918 control_thread.cc:318] Flowgraph started<br><b>I07=
27 19:28:19.432575 17918 control_thread.cc:855] Received action STOP</b><br=
>I0727 19:28:19.433041 17918 gnss_flowgraph.cc:743] Disconnecting flowgraph=
<br>I0727 19:28:19.433264 17918 gnss_flowgraph.cc:1039] Flowgraph disconnec=
ted<br>I0727 19:28:19.933521 17918 control_thread.cc:370] Flowgraph stopped=
<br>I0727 19:28:21.284571 17918 file_configuration.cc:60] Destructor called=
<br>I0727 19:28:21.284590 17918 rtklib_pvt_gs.cc:482] Failed to save GPS L2=
CM or L5 Ephemeris, map is empty<br>I0727 19:28:21.284592 17918 rtklib_pvt_=
gs.cc:508] Failed to save GPS L1 CA Ephemeris, map is empty<br>I0727 19:28:=
21.284595 17918 rtklib_pvt_gs.cc:538] Failed to save Galileo E1 Ephemeris, =
map is empty<br>I0727 19:28:21.284596 17918 rtklib_pvt_gs.cc:568] Failed to=
 save GLONASS GNAV Ephemeris, map is empty<br>I0727 19:28:21.284597 17918 r=
tklib_pvt_gs.cc:598] Failed to save GPS UTC model parameters, not valid dat=
a<br>I0727 19:28:21.284600 17918 rtklib_pvt_gs.cc:628] Failed to save Galil=
eo UTC model parameters, not valid data<br>I0727 19:28:21.284601 17918 rtkl=
ib_pvt_gs.cc:658] Failed to save GPS ionospheric model parameters, not vali=
d data<br>I0727 19:28:21.284602 17918 rtklib_pvt_gs.cc:688] Failed to save =
GPS CNAV ionospheric model parameters, not valid data<br>I0727 19:28:21.284=
605 17918 rtklib_pvt_gs.cc:718] Failed to save Galileo ionospheric model pa=
rameters, not valid data<br>I0727 19:28:21.284605 17918 rtklib_pvt_gs.cc:74=
8] Failed to save GPS almanac, map is empty<br>I0727 19:28:21.284607 17918 =
rtklib_pvt_gs.cc:778] Failed to save Galileo almanac, not valid data<br>I07=
27 19:28:21.284610 17918 rtklib_pvt_gs.cc:808] Failed to save GPS CNAV UTC =
model parameters, not valid data<br>I0727 19:28:21.284610 17918 rtklib_pvt_=
gs.cc:838] Failed to save GLONASS GNAV ephemeris, map is empty<br>I0727 19:=
28:21.284612 17918 rtklib_pvt_gs.cc:868] Failed to save GLONASS GNAV epheme=
ris, not valid data<br>I0727 19:28:21.284613 17918 rtklib_pvt_gs.cc:898] Fa=
iled to save BeiDou DNAV Ephemeris, map is empty<br>I0727 19:28:21.284615 1=
7918 rtklib_pvt_gs.cc:928] Failed to save BeiDou DNAV ionospheric model par=
ameters, not valid data<br>I0727 19:28:21.284617 17918 rtklib_pvt_gs.cc:958=
] Failed to save BeiDou DNAV almanac, map is empty<br>I0727 19:28:21.284618=
 17918 rtklib_pvt_gs.cc:988] Failed to save BeiDou DNAV UTC model parameter=
s, not valid data</blockquote><div><b><br></b></div><div><b>I looked up the=
 source code of gnss-sdr from GitHub and I found the codes that output thes=
e warnings from line 412. I also tried to press CTRL+C to interrupt the pro=
gram and to see the intermediate files. But none of them has valid data.</b=
></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b>=
intermediate files list (also attached for your reference):</b><br>pvt.data=
_190727_144704.gpx<br>pvt.data_190727_144704.geojson=C2=A0<br>pvt.data_1907=
27_144704.kml<br>GSDR208o47.19B=C2=A0 =C2=A00kB<br>GSDR208o47.19P=C2=A0 =C2=
=A00kB=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
GSDR208o47.19O=C2=A0 =C2=A00kB=C2=A0=C2=A0<br>GSDR208o47.19N=C2=A0 =C2=A00k=
B=C2=A0=C2=A0<br>GSDR208o47.19G=C2=A0 =C2=A00kB=C2=A0=C2=A0<br>GSDR208o47.1=
9F=C2=A0 =C2=A0 0kB=C2=A0=C2=A0<br>GSDR208o47.19L=C2=A0 =C2=A0 0kB</blockqu=
ote><div>=C2=A0<br></div><div>Sincerely,</div><div>Zhao Xu</div></div><br><=
div class=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">Marcus M=C3=
=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettu=
s.com</a>&gt; =E4=BA=8E2019=E5=B9=B47=E6=9C=8829=E6=97=A5=E5=91=A8=E4=B8=80=
 =E4=B8=8B=E5=8D=885:50=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex" class=3D"gmail_quote">Dear Zhao,<br>
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
&gt; <a target=3D"_blank" rel=3D"noreferrer" href=3D"https://gnss-sdr.org/c=
onf/#setting-up-the-software-receiver">https://gnss-sdr.org/conf/#setting-u=
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
&gt; <a target=3D"_blank" rel=3D"noreferrer" href=3D"http://lists.ettus.com=
/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html">http://list=
s.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/058147.html</=
a><br>
&gt; ) and changed the gain as 15, but this made no sense.<br>
&gt; <br>
&gt; Sincerely,<br>
&gt; Zhao Xu<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a target=3D"_blank" rel=3D"noreferrer" href=3D"http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div></div>

--0000000000006b4ec5058ed93c68--
--0000000000006b4ec8058ed93c6a
Content-Type: application/octet-stream; name="gpstest.conf"
Content-Disposition: attachment; filename="gpstest.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_jyoy7xxy0>
X-Attachment-Id: f_jyoy7xxy0

W0dOU1MtU0RSXQoKOyMjIyMjIyMjIyBHTE9CQUwgT1BUSU9OUyAjIyMjIyMjIyMjIyMjIyMjIyMK
R05TUy1TRFIuaW50ZXJuYWxfZnNfc3BzPTQwMDAwMDAKCjsjIyMjIyMjIyMgU0lHTkFMX1NPVVJD
RSBDT05GSUcgIyMjIyMjIyMjIyMjClNpZ25hbFNvdXJjZS5pbXBsZW1lbnRhdGlvbj1VSERfU2ln
bmFsX1NvdXJjZQpTaWduYWxTb3VyY2UuZGV2aWNlX2FkZHJlc3M9MTkyLjE2OC4xMC40ClNpZ25h
bFNvdXJjZS5pdGVtX3R5cGU9Y3Nob3J0ClNpZ25hbFNvdXJjZS5zYW1wbGluZ19mcmVxdWVuY3k9
NDAwMDAwMApTaWduYWxTb3VyY2UuZnJlcT0xNTc1NDIwMDAwClNpZ25hbFNvdXJjZS5nYWluPTQw
ClNpZ25hbFNvdXJjZS5zdWJkZXZpY2U9QTowICA7IDwtIENhbiBiZSBBOjAgb3IgQjowClNpZ25h
bFNvdXJjZS5zYW1wbGVzPTAKCjsjIyMjIyMjIyMgU0lHTkFMX0NPTkRJVElPTkVSIENPTkZJRyAj
IyMjIyMjIyMjIyMKU2lnbmFsQ29uZGl0aW9uZXIuaW1wbGVtZW50YXRpb249U2lnbmFsX0NvbmRp
dGlvbmVyCgo7IyMjIyMjIyMjIERBVEFfVFlQRV9BREFQVEVSIENPTkZJRyAjIyMjIyMjIyMjIyMK
RGF0YVR5cGVBZGFwdGVyLmltcGxlbWVudGF0aW9uPVBhc3NfVGhyb3VnaApEYXRhVHlwZUFkYXB0
ZXIuaXRlbV90eXBlPWNzaG9ydAoKOyMjIyMjIyMjIyBJTlBVVF9GSUxURVIgQ09ORklHICMjIyMj
IyMjIyMjIwpJbnB1dEZpbHRlci5pbXBsZW1lbnRhdGlvbj1GaXJfRmlsdGVyCklucHV0RmlsdGVy
LmlucHV0X2l0ZW1fdHlwZT1jc2hvcnQKSW5wdXRGaWx0ZXIub3V0cHV0X2l0ZW1fdHlwZT1ncl9j
b21wbGV4CklucHV0RmlsdGVyLnRhcHNfaXRlbV90eXBlPWZsb2F0CklucHV0RmlsdGVyLm51bWJl
cl9vZl90YXBzPTExCklucHV0RmlsdGVyLm51bWJlcl9vZl9iYW5kcz0yCgpJbnB1dEZpbHRlci5i
YW5kMV9iZWdpbj0wLjAKSW5wdXRGaWx0ZXIuYmFuZDFfZW5kPTAuNDgKSW5wdXRGaWx0ZXIuYmFu
ZDJfYmVnaW49MC41MgpJbnB1dEZpbHRlci5iYW5kMl9lbmQ9MS4wCgpJbnB1dEZpbHRlci5hbXBs
MV9iZWdpbj0xLjAKSW5wdXRGaWx0ZXIuYW1wbDFfZW5kPTEuMApJbnB1dEZpbHRlci5hbXBsMl9i
ZWdpbj0wLjAKSW5wdXRGaWx0ZXIuYW1wbDJfZW5kPTAuMAoKSW5wdXRGaWx0ZXIuYmFuZDFfZXJy
b3I9MS4wCklucHV0RmlsdGVyLmJhbmQyX2Vycm9yPTEuMAoKSW5wdXRGaWx0ZXIuZmlsdGVyX3R5
cGU9YmFuZHBhc3MKSW5wdXRGaWx0ZXIuZ3JpZF9kZW5zaXR5PTE2CklucHV0RmlsdGVyLnNhbXBs
aW5nX2ZyZXF1ZW5jeT00MDAwMDAwCklucHV0RmlsdGVyLklGPTAKCjsjIyMjIyMjIyMgUkVTQU1Q
TEVSIENPTkZJRyAjIyMjIyMjIyMjIyMKUmVzYW1wbGVyLmltcGxlbWVudGF0aW9uPVBhc3NfVGhy
b3VnaAoKOyMjIyMjIyMjIyBDSEFOTkVMUyBHTE9CQUwgQ09ORklHICMjIyMjIyMjIyMjIwpDaGFu
bmVsc18xQy5jb3VudD04CkNoYW5uZWxzLmluX2FjcXVpc2l0aW9uPTEKQ2hhbm5lbC5zaWduYWw9
MUMKCjsjIyMjIyMjIyMgQUNRVUlTSVRJT04gR0xPQkFMIENPTkZJRyAjIyMjIyMjIyMjIyMKQWNx
dWlzaXRpb25fMUMuaW1wbGVtZW50YXRpb249R1BTX0wxX0NBX1BDUFNfQWNxdWlzaXRpb24KQWNx
dWlzaXRpb25fMUMudGhyZXNob2xkPTAuMDEKQWNxdWlzaXRpb25fMUMuZG9wcGxlcl9tYXg9ODAw
MApBY3F1aXNpdGlvbl8xQy5kb3BwbGVyX3N0ZXA9NTAwCgo7IyMjIyMjIyMjIFRSQUNLSU5HIEdM
T0JBTCBDT05GSUcgIyMjIyMjIyMjIyMjClRyYWNraW5nXzFDLmltcGxlbWVudGF0aW9uPUdQU19M
MV9DQV9ETExfUExMX1RyYWNraW5nClRyYWNraW5nXzFDLnBsbF9id19oej0zMC4wClRyYWNraW5n
XzFDLmRsbF9id19oej00LjAKVHJhY2tpbmdfMUMuZWFybHlfbGF0ZV9zcGFjZV9jaGlwcz0wLjUK
CjsjIyMjIyMjIyMgVEVMRU1FVFJZIERFQ09ERVIgR1BTIENPTkZJRyAjIyMjIyMjIyMjIyMKVGVs
ZW1ldHJ5RGVjb2Rlcl8xQy5pbXBsZW1lbnRhdGlvbj1HUFNfTDFfQ0FfVGVsZW1ldHJ5X0RlY29k
ZXIKCjsjIyMjIyMjIyMgT0JTRVJWQUJMRVMgQ09ORklHICMjIyMjIyMjIyMjIwpPYnNlcnZhYmxl
cy5pbXBsZW1lbnRhdGlvbj1IeWJyaWRfT2JzZXJ2YWJsZXMKCjsjIyMjIyMjIyMgUFZUIENPTkZJ
RyAjIyMjIyMjIyMjIyMKUFZULmltcGxlbWVudGF0aW9uPVJUS0xJQl9QVlQKUFZULnBvc2l0aW9u
aW5nX21vZGU9U2luZ2xlClBWVC5vdXRwdXRfcmF0ZV9tcz0xMApQVlQuZGlzcGxheV9yYXRlX21z
PTUwMApQVlQuaW9ub19tb2RlbD1Ccm9hZGNhc3QKUFZULnRyb3BfbW9kZWw9U2Fhc3RhbW9pbmVu
ClBWVC5mbGFnX3J0Y21fc2VydmVyPXRydWUKUFZULmZsYWdfcnRjbV90dHlfcG9ydD1mYWxzZQpQ
VlQucnRjbV9kdW1wX2Rldm5hbWU9L2Rldi9wdHMvMQpQVlQucnRjbV90Y3BfcG9ydD0yMTAxClBW
VC5ydGNtX01UMTAxOV9yYXRlX21zPTUwMDAKUFZULnJ0Y21fTVQxMDc3X3JhdGVfbXM9MTAwMApQ
VlQucmluZXhfdmVyc2lvbj0yCgo=
--0000000000006b4ec8058ed93c6a
Content-Type: application/octet-stream; name="pvt.dat_190727_144704.gpx"
Content-Disposition: attachment; filename="pvt.dat_190727_144704.gpx"
Content-Transfer-Encoding: base64
Content-ID: <f_jyoy7xyi2>
X-Attachment-Id: f_jyoy7xyi2

PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGdweCB2ZXJzaW9uPSIxLjEi
IGNyZWF0b3I9IkdOU1MtU0RSIgogIHhzaTpzY2hlbWFMb2NhdGlvbj0iaHR0cDovL3d3dy50b3Bv
Z3JhZml4LmNvbS9HUFgvMS8xIGh0dHA6Ly93d3cudG9wb2dyYWZpeC5jb20vR1BYLzEvMS9ncHgu
eHNkIGh0dHA6Ly93d3cuZ2FybWluLmNvbS94bWxzY2hlbWFzL0dweEV4dGVuc2lvbnMvdjMgaHR0
cDovL3d3dy5nYXJtaW4uY29tL3htbHNjaGVtYXMvR3B4RXh0ZW5zaW9uc3YzLnhzZCBodHRwOi8v
d3d3Lmdhcm1pbi5jb20veG1sc2NoZW1hcy9UcmFja1BvaW50RXh0ZW5zaW9uL3YyIGh0dHA6Ly93
d3cuZ2FybWluLmNvbS94bWxzY2hlbWFzL1RyYWNrUG9pbnRFeHRlbnNpb252Mi54c2QiCiAgeG1s
bnM9Imh0dHA6Ly93d3cudG9wb2dyYWZpeC5jb20vR1BYLzEvMSIKICB4bWxuczpncHh4PSJodHRw
Oi8vd3d3Lmdhcm1pbi5jb20veG1sc2NoZW1hcy9HcHhFeHRlbnNpb25zL3YzIgogIHhtbG5zOmdw
eHRweD0iaHR0cDovL3d3dy5nYXJtaW4uY29tL3htbHNjaGVtYXMvVHJhY2tQb2ludEV4dGVuc2lv
bi92MiIKICB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3Rh
bmNlIj4KICA8dHJrPgogICAgPG5hbWU+UG9zaXRpb24gZml4ZXMgY29tcHV0ZWQgYnkgR05TUy1T
RFIgdjAuMC4xMC5naXQtbmV4dC0wOGM1N2UyYzc8L25hbWU+CiAgICA8ZGVzYz5HTlNTLVNEUiBw
b3NpdGlvbiBsb2cgZ2VuZXJhdGVkIGF0IDIwMTktSnVsLTI3IDE0OjQ3OjA0IChsb2NhbCB0aW1l
KTwvZGVzYz4KICAgIDx0cmtzZWc+Cg==
--0000000000006b4ec8058ed93c6a
Content-Type: application/octet-stream; name="pvt.dat_190727_144704.geojson"
Content-Disposition: attachment; filename="pvt.dat_190727_144704.geojson"
Content-Transfer-Encoding: base64
Content-ID: <f_jyoy7xyd1>
X-Attachment-Id: f_jyoy7xyd1

ewogICJ0eXBlIjogICJGZWF0dXJlIiwKICAicHJvcGVydGllcyI6IHsKICAgICAgICJuYW1lIjog
IkxvY2F0aW9ucyBnZW5lcmF0ZWQgYnkgR05TUy1TRFIiIAogICB9LAogICJnZW9tZXRyeSI6IHsK
ICAgICAgInR5cGUiOiAiTXVsdGlQb2ludCIsCiAgICAgICJjb29yZGluYXRlcyI6IFsK
--0000000000006b4ec8058ed93c6a
Content-Type: application/octet-stream; name="pvt.dat_190727_144704.kml"
Content-Disposition: attachment; filename="pvt.dat_190727_144704.kml"
Content-Transfer-Encoding: base64
Content-ID: <f_jyoy7xyn3>
X-Attachment-Id: f_jyoy7xyn3

PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGttbCB4bWxucz0iaHR0cDov
L3d3dy5vcGVuZ2lzLm5ldC9rbWwvMi4yIiB4bWxuczpneD0iaHR0cDovL3d3dy5nb29nbGUuY29t
L2ttbC9leHQvMi4yIj4KICA8RG9jdW1lbnQ+CiAgICA8bmFtZT5HTlNTIFRyYWNrPC9uYW1lPgog
ICAgPGRlc2NyaXB0aW9uPjwhW0NEQVRBWwogICAgICA8dGFibGU+CiAgICAgICAgPHRyPjx0ZD5H
TlNTLVNEUiBSZWNlaXZlciBwb3NpdGlvbiBsb2cgZmlsZSBjcmVhdGVkIGF0IDIwMTktSnVsLTI3
IDE0OjQ3OjA0PC90ZD48L3RyPgogICAgICAgIDx0cj48dGQ+aHR0cHM6Ly9nbnNzLXNkci5vcmcv
PC90ZD48L3RyPgogICAgICA8L3RhYmxlPgogICAgXV0+PC9kZXNjcmlwdGlvbj4KICAgIDwhLS0g
Tm9ybWFsIHRyYWNrIHN0eWxlIC0tPgogICAgPFN0eWxlIGlkPSJ0cmFja19uIj4KICAgICAgPElj
b25TdHlsZT4KICAgICAgICA8Y29sb3I+ZmYwMGZmZmY8L2NvbG9yPgogICAgICAgIDxzY2FsZT4w
LjM8L3NjYWxlPgogICAgICAgIDxJY29uPgogICAgICAgICAgPGhyZWY+aHR0cDovL21hcHMuZ29v
Z2xlLmNvbS9tYXBmaWxlcy9rbWwvc2hhcGVzL3NoYWRlZF9kb3QucG5nPC9ocmVmPgogICAgICAg
IDwvSWNvbj4KICAgICAgPC9JY29uU3R5bGU+CiAgICAgIDxMYWJlbFN0eWxlPgogICAgICAgIDxz
Y2FsZT4wPC9zY2FsZT4KICAgICAgPC9MYWJlbFN0eWxlPgogICAgPC9TdHlsZT4KICAgIDwhLS0g
SGlnaGxpZ2h0ZWQgdHJhY2sgc3R5bGUgLS0+CiAgICA8U3R5bGUgaWQ9InRyYWNrX2giPgogICAg
ICA8SWNvblN0eWxlPgogICAgICAgIDxjb2xvcj5mZjAwZmZmZjwvY29sb3I+CiAgICAgICAgPHNj
YWxlPjE8L3NjYWxlPgogICAgICAgIDxJY29uPgogICAgICAgICAgPGhyZWY+aHR0cDovL21hcHMu
Z29vZ2xlLmNvbS9tYXBmaWxlcy9rbWwvc2hhcGVzL3NoYWRlZF9kb3QucG5nPC9ocmVmPgogICAg
ICAgIDwvSWNvbj4KICAgICAgPC9JY29uU3R5bGU+CiAgICA8L1N0eWxlPgogICAgPFN0eWxlTWFw
IGlkPSJ0cmFjayI+CiAgICAgIDxQYWlyPgogICAgICAgIDxrZXk+bm9ybWFsPC9rZXk+CiAgICAg
ICAgPHN0eWxlVXJsPiN0cmFja19uPC9zdHlsZVVybD4KICAgICAgPC9QYWlyPgogICAgICA8UGFp
cj4KICAgICAgICA8a2V5PmhpZ2hsaWdodDwva2V5PgogICAgICAgIDxzdHlsZVVybD4jdHJhY2tf
aDwvc3R5bGVVcmw+CiAgICAgIDwvUGFpcj4KICAgIDwvU3R5bGVNYXA+CiAgICA8U3R5bGUgaWQ9
InllbGxvd0xpbmVHcmVlblBvbHkiPgogICAgICA8TGluZVN0eWxlPgogICAgICAgIDxjb2xvcj43
ZjAwZmZmZjwvY29sb3I+CiAgICAgICAgPHdpZHRoPjE8L3dpZHRoPgogICAgICA8L0xpbmVTdHls
ZT4KICAgICAgPFBvbHlTdHlsZT4KICAgICAgICA8Y29sb3I+N2YwMGZmMDA8L2NvbG9yPgogICAg
ICA8L1BvbHlTdHlsZT4KICAgIDwvU3R5bGU+CiAgICA8Rm9sZGVyPgogICAgICA8bmFtZT5Qb2lu
dHM8L25hbWU+Cg==
--0000000000006b4ec8058ed93c6a
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000006b4ec8058ed93c6a--

