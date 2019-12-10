Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F240117FFF
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 06:52:45 +0100 (CET)
Received: from [::1] (port=47260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieYRt-000506-6t; Tue, 10 Dec 2019 00:52:41 -0500
Received: from mout.gmx.net ([212.227.17.22]:39101)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ieYRp-0004v7-44
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 00:52:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575957116;
 bh=M5lNfLSsq+xG+Tw1kJZ2KsAuoLS6pHiQczyXjoXDeEY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TYHAyk7dRQkmiDV6ej0r+6fIUplMeOIbV5U2HpOG1KdfGGZ/ZP9KP7/XmWcO5F6Ht
 wOTew92jh/jACY1tWTFTY26e8weLt9uTgL08ygH6WUPUKKSPXWpzp6uiKxINQmCNRD
 jScbyI8tWhHI2FciXJVetS/AH7/duPBem+hyKr/E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [66.220.197.150] ([66.220.197.150]) by web-mail.gmx.net
 (3c-app-gmx-bs45.server.lan [172.19.170.97]) (via HTTP); Tue, 10 Dec 2019
 06:51:56 +0100
MIME-Version: 1.0
Message-ID: <trinity-726773bd-716b-4ee4-8387-21af159ce08a-1575957115921@3c-app-gmx-bs45>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 10 Dec 2019 06:51:56 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5DEF2185.5010308@gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
 <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
 <5DEEB562.4030602@gmail.com>
 <trinity-459dbf7b-f04c-4912-9571-52b962a344fb-1575950607303@3c-app-gmx-bs45>
 <5DEF2185.5010308@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:lwxRDpajEi27pf41qy8BWGY5PNXstXqlATNKsNLDfugjk/HQdYPDfBCORZFs+R53f6cZo
 XchraZPz1OGnGAKzwsDgGujr5+Rsild56yChpmrYsc+7NJ07pVDP7x/tSNxbhwHaOHBMvhDh/zqy
 1egWPldjtNPV7HB6ZqVBt2PmzaSq8WpdtD94l6T7E7DX1ZOIm57i+FvOuDk97NG2QjY/IvW9t2xK
 oWnzlvsfiMaGm66DGY1zmIcatLClTSX44n9fNc7zcq74Pl5jIcYEZcDMMPFdmiEsPfmjrdqi8qEa
 cc=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jodnsTjEj0I=:wEtXhuopPy3RI0Hnzu9y36
 Dx1hSTXwHvzvehqiwbyPFy3Zjt7JCmwGPQoeqUYUsuoRSAN+lXoFFx+Skn+GxbuyN5Y8r/FCD
 lcRY17pF+I/6eV/Lwd8VZ6V37FUlFHk0JaVe0gf43DXbSdL54rIYXcJV/PdQ7yQMEr+wuFNvK
 jMkRf4oMIvsa7qnuFynQpFG+UKk/H7AGFHTEsSQvJc1SeMtDF6uODKLCoz+VTHhjTNRoZ3ztY
 nek6D7MHq0e7ZPvLbFceQ5CY8n6WifPTK+8N9cKgf2oOimZa5qfxmi2FfaOAHX4xzIejDfob/
 RVyvBMTx6qDC1urU5WTxiHyLqTSzRoBCr9+ogp4RdFRBbzsq3Xal869tlBEOFtHyiim8dnh6i
 0qmIOEULzrKTqsdwueahZWNd068cft3E9M6SJyrx/XsSZwaO4Zg41D8lX/IPsEkijlCVRhkeR
 jDA7gcbBKdIBOOxlj2NSnY0BMrAevD6aCMfKCdWSHYW5xhIXPCJcEZkZjoS5Cp5QOndVCHpaU
 a4Q1owXYbSfNIq4VbbQCSwDiPf3ujcuh1JoqAdNna4hzXK5JM588whVL3DqDKoFtgYmxHZXYe
 SAMyjkieqisHbKa9fsEFIXCefLN3zkzioRyLSE2S6+pX3TW3voff00yTDOhudJuOfdt3POiKM
 TZwypruJfxqoD8LaZagfIcMkY20+1qXHs7juq3OSYC0B0aw==
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


> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> [...]
> >
> You're using the MANUAL policy for BOTH DSP and RF.  Let the automatic
> "stuff" do its thing, with the only difference being integer-N tuning.

Wow, this is all so black magic.
After a long time I figured out that I also have to supply int_n_step (I use int_n_step=100e3), as I randomly stumbled across in http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.html.
The documentation does not even mention the existence of this parameter.

tune_req_tx = uhd.tune_request(target_freq=fcenter)
tune_req_rx = uhd.tune_request(target_freq=2*fcenter)
tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=100e3",]))
tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=100e3",]))
now = self.uhd_usrp_sink_0.get_time_now()
self.uhd_usrp_sink_0.set_command_time(  now + uhd.time_spec(1))
self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 1)
self.uhd_usrp_source_0.clear_command_time()
self.uhd_usrp_sink_0.clear_command_time()

So now my RX/TX tune again (i.e., I get a signal other than noise). Unfortunately I run into the same issue that I had already some time at the beginning: My signal is frequency offset (*) - by an odd 2.5 kHz.
I set my clock explicitely to 200 MHz. A step size of 100kHz should be able to synthesize my even numbers (900 MHz) without issues. On the other hand, the frequency offset stays at 2.5kHz for different values of int_n_step...

Thanks,
Luke





(*) What I mean by that: I send a signal at "f+fif" and downconvert "2*(f+fif)". In gnuradio I multiply with exp(i*2*pi*fif*t). I expect my signal to be a DC signal (which it is in absence of the mode_n=integer). With frequency shift I mean that I see a frequency of 2.5 kHz instead of 0Hz.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
