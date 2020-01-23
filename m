Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9906C146FC9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2020 18:33:19 +0100 (CET)
Received: from [::1] (port=38374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iugLs-0004zn-Of; Thu, 23 Jan 2020 12:33:08 -0500
Received: from mout.gmx.net ([212.227.17.22]:60089)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1iugLo-0004v5-8D
 for usrp-users@lists.ettus.com; Thu, 23 Jan 2020 12:33:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1579800743;
 bh=4O+Zp0rvYW4PZX3VyNMbqGG/S42HPb64y7jzOf9IJ8w=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=HE5wALSehqBDp2QUC/k2OY8W4Q7zyeb5zorwWFTD6hRxKsqZdfdVZBig6NYm8mG7J
 5Vs36JCwP1AgPrccMKYWtw2dcTbRUv1A79dj4C2e9Xm9dwzgV8Pnraa+ZIsYDDshjS
 lAw5WvART8Gct5pchARxD4g29bhbFOmDuQW8HfvQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap69.server.lan [172.19.172.69]) (via HTTP); Thu, 23 Jan 2020
 18:32:23 +0100
MIME-Version: 1.0
Message-ID: <trinity-3bada021-7869-4b7e-8a22-e1b797ca06c4-1579800743012@3c-app-gmx-bap69>
To: usrp-users@lists.ettus.com
Date: Thu, 23 Jan 2020 18:32:23 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:NaAYbEr1eB3nbitWimTeSrhWWtbkcP9VnRWtCBL7wHDkSF5mngT3LpgWDdDR8XEpWYMc6
 i9jv/lxZpL90dEX87o+XdZVaCFJsbxSnyUPIx/QLcx6/d9IaRQhND3wo1jRgF73Tu1YMbrfzaScG
 eznwpYhF3JVmeGKPLOv5zNOp606IkXButSREkgfpc7YZz2q6TE7gbs9ee39jhoYSu2fsSnLMuWeR
 YPRBvxwTpUG1Ovkv4JEwgFQZKebiASZbo95OEiJM6RXU/OMJKcFNbi3mddPzf1qkz75ISN4GyyXu
 3I=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mB72olTUVw0=:rawEbvLDrysr36uskrN1xG
 kURu0lHGhg4P8JwwaUphKk8+40vx6WaNy3vRAk3HOeoZsSBzl2nesnanDWHwGX7XydHSjbgPj
 IZH8OyRwW34qf1cXZMjbulpR3t3K7S1KdEcex1I59nM7SH8Nbt3l310izGfD3otLQN+sWJN+q
 MdBsLOTcTYBc1gWhmZA0UXJUnOXrPsKA9/gIDvYghsWaayp70jXPEvpOTfEeOx4QWSv2I0Zai
 IhWcP/7cEgENhNUCbuphWna+MV7fi9+9bFioBZhau14srRGvZiG5jMEhirYNFeJ3RRPKAdDKe
 4GeKcz9jfdITMgsijYSbFJuUBJLcVgUxqKvAkvQzxmWSJos5AHC34+7cWfewndI8NNpmSFk3A
 orgonSexh7KC+KohmaOY9m6fHGliQLI9PxdjjT1J9THc5ksWnogCBXkT8+RmERufoxdSQm4W+
 t+M2wNUwBGI5HKxNvAgCjT1ojP0OdsJk0z0HT9QEBMcB4y7KrKJu1YrVElm5UIMhIWQ8xjtz0
 FzQdp32qDLbBYCEi8+cj8iKcD3hRpsxcqn5vKBh9PuZkMlMTSJKXjO2b+ED+OHz+A9TvcHNlL
 TauzOq/qAajKwaN2NKUWtl8wdGKi8fLvcqV2s3bf03P+HbnwtPSIiic9PJiFue8aMEyiT7iZm
 wnm74qMQA3DtHtA6ez1wFMYPFk/smxRXaxzptd37lIartgNcoYq1uCIE44s1dsfebVeU=
Subject: [USRP-users] Exact alignment between gnuradio sample stream and
 USRP time
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

TO MY UNDERSTANDING, the USRP has an internal clock that is different from host clock when running gnuradio (which makes sense because there are buffers etc in between).
Example: I transmit a CW at f=1001, receive it at f=1000 and then use gnuradio to downconvert the remaining 1 MHz I run into trouble (tried it...).

For this reason, there exist timed commands and the tune_request object with which I can execute commands (LO tuning) at a precice time. For example, with these commands I can phase align tuning between TX/RX at different center frequencies:

  tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
  tune_req_rx = uhd.tune_request(2*fcenter)
  tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
  tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))

  now = self.uhd_usrp_sink_0.get_time_now()
  self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
  self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.1))

  self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
  self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)

  self.uhd_usrp_source_0.clear_command_time()
  self.uhd_usrp_sink_0.clear_command_time()

The commands execute execatly at get_time_now() plus 100ms. As far as I understand, these 100ms are to ensure that the host computer has enough time until the USRP processes the clear_command_time function. But it does not relate the exact point in time with anything that exists in gnuradio.

MY QUESTION: What I am unsure is how to align samples in gnuradio with the time on the USRP. For example, suppose I have an ideal clock signal in gnuradio and I want to perform a timed command EXACTLY at a particular sampling point (e.g. rising edge). How would I go about this?

The actions I want to execute exactly time aligned with gnuradio include: tuning requests, reading out sensors (PLL sensor when it settled), switching IO pins through the GPIO interface.
For example, I would like to switch a GPIO port exactly once per period of a signal in gnuradio and exactly at the same time (clearly there will be delays but that's OK as long as the delay is fixed).
As another example, I would like to re-tune exactly once in every period of a gnuradio signal. Then I would like to read out when the PLL has settled and generate a binary indicator signal out of it. Plotting the original signal and the indicator signal should tell me exactly (at least sample accuracy) how long the PLL took to settle *relative* to the signal in gnuradio.


Thank you very much,
Luke


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
