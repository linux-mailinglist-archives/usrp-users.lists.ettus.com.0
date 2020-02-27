Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 369C4172970
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 21:28:37 +0100 (CET)
Received: from [::1] (port=33246 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7Plp-00063f-Mf; Thu, 27 Feb 2020 15:28:33 -0500
Received: from mout.gmx.net ([212.227.17.20]:43703)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1j7Pll-0005pt-9D
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 15:28:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582835268;
 bh=VgfA3AFOvuTs4q1R1Fz5JvjrXTshGOT8ZdmceSLpDO8=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=RSJlfsjj1ir3sxXlHz1b1pNMot4XFQj2C5EWZwRkqTKLloCODzunSiVGzZNsCsVHy
 wkcOob8BsyV8jIVOAUgCsC2fPnh7TbixNw+GW8eLF10/z3RwYSZVLGObtvlnzTzOXz
 yrbfuhFmLw6Z6vOrMVc5gBfZI6pL6wuZhlyFp0/E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap31.server.lan [172.19.172.101]) (via HTTP); Thu, 27 Feb 2020
 21:27:48 +0100
MIME-Version: 1.0
Message-ID: <trinity-da66474f-e02c-44ba-a6fb-4eb618308885-1582835268116@3c-app-gmx-bap31>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 27 Feb 2020 21:27:48 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:yDtGkIcyEGAoGHB1dDvTL2yl6RPVJo6pYRLxV/hezCT9G/Pj9ViOMDEDAj2C/uDP3tkrT
 Ihb4Kx1g7GUmwdFrKTwyGb7FXk+goiyjbMLgxcDUfWY1FwDv7gTYpjlJVfV2Quxn0oHmHagCglVk
 Pro/Yub2s6UadvloOl7KLK7CY5GNiQpe6fJvtMAzB6wz2b9lijQR971zOhU1SrhAyuwAtMY4zL4G
 7zkx1CAiEqryPs7zT/0TxvmV8R79OAE8yulqiXHGjVJpzIeVGutB8nsRInuSKSzzW+h1THMzND3i
 nk=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JMPASX9uq2U=:XVvGFqL3zDVNN6+Na1sVtn
 owji1lEUDVQiAdGRfUZOYRgw9Jr/vCaDRFC1m8cgeWj0BAgteXZc30KzWtQN4N8NxedenCpCn
 agcE3RBKEAIzrDdKefXD4PGI/I0eTPsI8A3Xog8f1WRD+U3JX9F2wcqT4RHR0LUgSZLzRJVvY
 hOr5RjmbecFVyr9EqxLpbBp5LjbqZa5U+iJQy3axoTMpDiek30TmMo5Yuu24BOqJEMAunSMNk
 Fkbz6MLQ8HzcExIT6O1efaA2ZkZDgzIyDO7YqSYK+pNMHiik6ScYpBC29yeeJvkeGmILBmuks
 +NXjygpad9A+PN9yL0S88ul3pGccXLMnpPG61ywBqVs3T5E/6GC0L57Ig4+HhPsdzhuB2r3wU
 MK/bYvwqw9WeDY/TibLLxfnlLmrbYURwjJBM1mQR5tFljU/TjizUwPTmmFvGg9guDaJbHCMUc
 qoto33G9J8Ei9dfnTYPiFhy7cqwbqbgtrIpNuoMxl8rNDF9BD6uBwlxoP9v5NJ5Q5GAr31RLO
 ISNh0Lo16HyZ4A2X3ueUviLCOQN5+On0QBMT5i4HdezlUA/aT/mUxQN8aLaTsWO5MbcjZ7kZs
 EXPjtz1xBVaAIa2MgfnZuB+etx36vVGsRNhpijamqcPA0F6DNrtMV9E3iumd+NzN1JyMIjaO+
 PQVcUPmRxmaShrKj/vHWKg1MgW8hAUG6dUSrBadta5k8mBXnhYpw2/FrY0YWYQ95BfVI=
Subject: [USRP-users] How do timed commands work for two blocks (USRP
 Sink+USRP Source)?
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

How do these timed commands work exactly when using USRP Source together with USRP Sink? (I need to phase-align RX and TX hence use timed commands at the same time).
Since they are both internally use the same hardware device (and board) I feel timed commands sent to both blocks result in some unpredictable results (at least for me).

For simplicity, consider this simple test setup: Loopback configuration (TX into RX via 30dB attentuator); transmit a 1MHz baseband signal into USRP Sink. Then, use just retuning via DSP:

    # dsp_freq changes every time this code is called:
    #dsp_freq = 0
    dsp_freq = 100e3
    tune_req_tx = uhd.tune_request()
    tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_tx.rf_freq = 900e6
    tune_req_tx.dsp_freq = -dsp_freq

    tune_req_rx = uhd.tune_request()
    tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_rx.rf_freq = 900e6
    tune_req_rx.dsp_freq = dsp_freq

    res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
    res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)

This code works exactly as expected ... my received baseband signal always stays at 1 MHz (the retuning is transparent to my baseband!) but the phase always changes.
This makes sense because I do not use timed commands and hence the DUC/DDC is not aligned properly.

Now I change to this code:

    tune_req_tx = uhd.tune_request()
    tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_tx.rf_freq = rf_freq
    tune_req_tx.dsp_freq = -dsp_freq

    tune_req_rx = uhd.tune_request()
    tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
    tune_req_rx.rf_freq = rf_freq
    tune_req_rx.dsp_freq = dsp_freq

    # create timed command:
    now = usrp_sink.get_time_now()
    uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.2))
    uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.2))
    res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
    res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
    uhd_usrp_sink_0.clear_command_time()
    uhd_usrp_source_0.clear_command_time()

Suddenly my frequency is offset by 100kHz. This makes totally no sense!

As I mentioned above, I assume the reason is that all these timed commands eventually arrive on the same hardware and maybe overwrite themselves in a way creating unpredictable behavior.

So, what is the correct way to do it (with USRP Source/Sink blocks in gnuradio)??

Thanks
Lukas


PS: If it's multiple receiver blocks I can use the same USRP Source block with Num Channels > 1. I guess that would make live easier. But I have TX+RX to phase align.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
