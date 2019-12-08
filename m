Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B99241163F7
	for <lists+usrp-users@lfdr.de>; Sun,  8 Dec 2019 23:19:55 +0100 (CET)
Received: from [::1] (port=48744 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ie4u8-0004S8-Vm; Sun, 08 Dec 2019 17:19:52 -0500
Received: from mout.gmx.net ([212.227.17.21]:50805)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ie4u5-0004N8-Ag
 for usrp-users@lists.ettus.com; Sun, 08 Dec 2019 17:19:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575843548;
 bh=59y+fZ6oBVZzp2UDBnXB6KKbgW54b5hkeSpgvK6d4bg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=P76WKNjlEU291lPQWMjYhx6Ji0KsRnxwwv1oH81fT9epfjIWOUOS/69vDocJN01rk
 z938OZTTZ5+QShczmTfbv4vLw+QiknfDOimIkJ5ecC4hv4JKMCg+Y/LdBHSiPn/RP6
 a+GLM0IDKa6XAWQDXqOVeC4DYAimEIgNZw3WH1Tg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs36.server.lan [172.19.170.88]) (via HTTP); Sun, 8 Dec 2019
 23:19:08 +0100
MIME-Version: 1.0
Message-ID: <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Sun, 8 Dec 2019 23:19:08 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:6DFPYijYEvIwNLiiM8EARpKgTmRdpiO4FKIiUle+nwee/QuwVdhEMbFxHmlWsEf3xqAwL
 4uu4sWG+fnSkVP3nDrPJnn+8RFs3x6jRXFM3tJ6mgRbEGtAs8igMy1nFdjlEVfIIUh0hvTRcJGAf
 ywnb7O+wa3QAMcxd+7ATfOu6aLCSarHKdMdmdrGgcPJjLP5VUCjD4neF6iWlsj93ZHkiGVLaVvbE
 1as8GBNxBWA4ZLSENecih3aXyp3tSkPEQw9aS11wnaYNNA2fAoElXrsOV1cy8jPN7B3xA+7z4woo
 Nc=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YKbqzU2mr7Q=:h36+FM/lywEGsyAYdct5rp
 qXrOaXVrVXbqOkZARt9oosRKUbE4KvaR5D4yqxxH7tMfmvWLGJBSOHGPF92IZwjN/M8p+eDF1
 sBQ2V3nz5l/W0FqrObXhnjHk1C30auYterGiisGZrBnLMEL/yZG1HNP3F11fFgxksMOxe9AHI
 2j4HWVU+MBCqwuNbjXmVrcGe1DHM7V5LbpXIGts1wVgb1WPLgVI/rtg3GE0/M5R8XWLYI7+mi
 HIVAz6v+UPv5JJmqp6mZZHr7a04Mdkg0c5e+0eHP2H7/OyyG9dPKw2/1DH76udYuKpYvAQJNh
 CxOD6o2PpGOmZu34hm3wPkaNXUStWy/J9vhYVsvmyH3sRKmWIKfk6m6EF8U3+Q6H5o4npkOSe
 49tYs4RLiCBMWBcL9jsTgJm7xcduH/bubKAIyT71c/9ZyJf1459J1iD+EA8mSDUMkUrRgqw0m
 BcGVJlM7e6cnyukAZBqxWbJLXpiqexHjehB4End9uN2N2sntSzi7gRG+F5IF5Rs/CdcMPJzJo
 ef4ltkD3G8Kwcd06XA6Oi0N/Ynv7DbkV4/ZOzaH9cejrHNbAAg/Id555SGAfaCS2fcoqRVbKs
 thcIuHnL+RRDN1gPxRKVDJK+gCr41otqED6IxhIMVSybEFPXj/NIokxoXgr7FUz6GmTcPhl/f
 DSD83rFPAVCDG52FdNVYX8rc4qZgdJyrL3k40qvKpuj2BJg==
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Hi Marcus,

> You'll need to look at the API here:
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5
>
> and here:
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a607aee766d21228a7aaabde2771eb46f
>
> Basically, GRC will generate python code where it calls the
> set_rx_freq() method (or set_tx_freq() method), and you need to modify this
>   code to have set_command_time() and clear_command_time() wrapped
> around those operations.

Thank you.

As I understand you referenced the USRP driver whereas GRC creates gnuradio objects (e.g.: usrp_source https://www.gnuradio.org/doc/doxygen-3.7.2/classgr_1_1uhd_1_1usrp__source.html )

My dilemma is that I need to set the center frequency of the TX to "fc" and the center frequency of the RX to "2*fc" and its phase relationship should be identical for each "fc" (at least as long the USRP does not power cycle).

The gnuradio API als exposes the USRP API you mentioned so I tried:

        now = self.uhd_usrp_sink_0.get_time_now()
        self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
        self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))

        self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
        self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
        self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)

        self.uhd_usrp_source_0.clear_command_time()
        self.uhd_usrp_sink_0.clear_command_time()

But this this the phase still jumps after a frequency change.
I also tried this (in order to perform the commands on a single USRP multi object):

        dev = self.usrp_source_0.get_device()
        # dev = self.uhd_usrp_sink_0.get_device() should be identical

        now = dev.get_time_now()
        dev.set_command_time(now + uhd.time_spec(1))
        dev.set_rx_freq(2*self.fcenter)
        dev.set_tx_freq(self.fcenter)
        dev.clear_command_time()

but it has no effect (it does not even change the center frequencies).

And I have also tried to modify Nate's suggestion to different RX/TX frequencies: http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-December/061114.html

And interestingly the received signal has a frequency shift (approximately 5kHz which is very weird).


Any further advice is highly appreciated.

Thanks,
Luke




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
