Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 309D9183707
	for <lists+usrp-users@lfdr.de>; Thu, 12 Mar 2020 18:13:52 +0100 (CET)
Received: from [::1] (port=47240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jCRP0-0005mQ-Hg; Thu, 12 Mar 2020 13:13:46 -0400
Received: from mout.gmx.net ([212.227.15.19]:57019)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jCROv-0005gY-P9
 for usrp-users@lists.ettus.com; Thu, 12 Mar 2020 13:13:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584033180;
 bh=Uv1Ut60lNdpbHYVVfFNRpwz2aYQHExMmS8jTuY7MXKU=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=SofHvMHNHcNDKMOxKJkwmFLxCTFCdC5KGq74w+6CPBvpxhxugoL3A+wsYDkOJ14/i
 4JK4GSddVeGFnFKEz9mLH8nEMRpIMkdTFPEiY8kevJ+pcK93C/Vj5aocQrN9TpDMTm
 gPjcX+lAD70MnOUi9zheUdh8Z0+6xc1HOIn3sR0U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs38.server.lan [172.19.170.90]) (via HTTP); Thu, 12 Mar 2020
 18:13:00 +0100
MIME-Version: 1.0
Message-ID: <trinity-5b10284f-32d3-4490-bb54-a0be4d201ad3-1584033180591@3c-app-gmx-bs38>
To: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 12 Mar 2020 18:13:00 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:PlCOkpxwqwiwDvtzUv5aUW/2SFIY73yRTLu2CrOPMkrGAZ79kohfxAxRusc22flL7d4Sq
 CJ1U0bs/Iy2rzci0WCy/clXBbdgmRuYREhs9uRbU9MQjg8C4Zp5iGvfeAos/vIfPJ28UWDdWq1cN
 F4JaVhPfb2m3UNRmIGmeUcyG+AKdtgfUt3/Wtz/lk9NAs8fmPLvD2mzs32vsV7Vto7RZT6DxRK9f
 yzjNg2XUny1A/jQK7EyP8BZi15zELxuWYCf0ezYAmdA6Mazhsh88DsUtv8CLB80rZEMEd2y34rWO
 r4=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TjZ1GsdCz0I=:cl6MvyYjWE8gNYwr+bUXJJ
 Q+hIl9VRy+EcNT0Z5sjiTA4DgU4dNcSSqk4/hhfB0m5Nsy1KHOMY3pZNmNTo/O16ZpuWX2QY2
 WZ3rJR1vUoIbVBFa1GaWavW4qoVngwr2++pjZOMc31tRNmtHYLhuIJlFqolpzlP/nwgDWpVXz
 UxCbsM6JPEOxnR2gmS+JyQOOcMAjP+Xpx8rgOD0q1+OmPi3wnmK/IuwgE+js0+ifgUy7QQIaO
 99WqJthnCRrUMg+PvwibP1KCrmEpLWvX7y52nFVqIr6Gk+bmQFfHn9Rm2CLQdxK3nRZcagrJ/
 WBNs79r+qoJrkHqD/qjTpQu50gu1W1sB49vthdUC2C4UHjwGlH3FQ8nd4xjtsQ7+nKvp/ND+o
 W7ZbL8i5QI8GveuF8kE156QZEoU0w53t36CWedJ3UB0Yt207X3dwegQ4+0fLJFNBxMoABRBkr
 vvWEZdJBS7YXPNRZqbd/MuW1np+TpX8kfIL+QFFIeGYGHZkHIPt/5yMMg+pGEyZO/JB5Htcao
 n5+O/qZ3rbwjSV9rjKmE/QCPlQckd0GpKS10Y0j3sk/LH2f1vWTgzNpcU0D2JxSn4rkHLhcpx
 nZP87iFKW4KSPodH3Kdt/cUviJfmUC9bmlfPQEib9R1au6d9+ePzk2/Ry7vx5oRNDQXf8+KgD
 SoG9drkt0979VGKfyl1TO4MzuxkRYnRn2zayHPaS8TDziZPbDL7QZH+T7s6YpP/QoUZs=
Subject: [USRP-users] Timed commands (still) not executed properly: command
 time is in the past
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

Hi,

After being able to tune RX and TX separately, I still do not get phase coherency.

To debug, I added the following debug statements to set_tx_freq and set_rx_freq in uhd/host/lib/usrp/multi_usrp.cpp:

    tune_result_t set_tx_freq(const tune_request_t &tune_request, size_t chan){
#if 1
        try {
            time_spec_t now  = _tree->access<time_spec_t>(mb_root(0) / "time/now").get();
            time_spec_t when = _tree->access<time_spec_t>(mb_root(0) / "time/cmd").get();
            UHD_LOGGER_WARNING("MULTI_USRP") << boost::format("Tune TX at %d:%f for %d:%f") % now.get_full_secs() % now.get_frac_secs() % when.get_full_secs() % when.get_frac_secs();
        } catch(...) {}
#endif

and for RX:

#if 1
        try
        {
            time_spec_t now  = _tree->access<time_spec_t>(mb_root(0) / "time/now").get();
            time_spec_t when = _tree->access<time_spec_t>(mb_root(0) / "time/cmd").get();
            UHD_LOGGER_WARNING("MULTI_USRP") << boost::format("Tune RX at %d:%f for %d:%f") % now.get_full_secs() % now.get_frac_secs() % when.get_full_secs() % when.get_frac_secs();
        } catch(...){}
#endif

I use the following python code to send the timed commands from within gnuradio:

  tune_req_rx = uhd.tune_request()
  tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE
  tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
  tune_req_rx.dsp_freq = -dsp_freq

  tune_req_tx = uhd.tune_request()
  tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE
  tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
  tune_req_tx.dsp_freq = dsp_freq

  exec_time = usrp_sink.get_time_now() + uhd.time_spec(1)
  usrp_sink.set_command_time(exec_time)
  usrp_source.set_command_time(exec_time)

  res1 = usrp_source.set_center_freq(tune_req_rx, 1)
  res2 = usrp_sink.set_center_freq(tune_req_tx)

  usrp_sink.clear_command_time()
  usrp_source.clear_command_time()

As can be seen, I request the commands to be executed 1s from now. I only have one MBoard but two channels (X310+2xUBX160).

Now when I execute this code I can see:

[WARNING] [MULTI_USRP] Tune RX at 16:0.423319 for 16:0.423318
[WARNING] [MULTI_USRP] Tune TX at 16:0.423493 for 16:0.423318

It can be seen that the command time (while being the same for RX+TX) is NOT in the future as compared to the current time. If this is true then it's no surprise I don't see phase coherence (=constant phase offset for one dsp_freq).


HOW ON EARTH can that be?


Lukas


PS: I tried adding larger time offsets but no change



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
