Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32123172D59
	for <lists+usrp-users@lfdr.de>; Fri, 28 Feb 2020 01:31:44 +0100 (CET)
Received: from [::1] (port=43662 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7TZ5-0002Le-2p; Thu, 27 Feb 2020 19:31:39 -0500
Received: from mout.gmx.net ([212.227.17.22]:56073)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1j7TZ1-0002HG-Ke
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 19:31:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582849854;
 bh=jfTYJOJsURk0AkvR1n2EGoFnfiD/ugD7PvO4AmwzNDU=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=QYzBFH2kPLMo0DuIkfGeKIRRPJP5i5/V5LWdBj730cjpdxxG/VoJE4lsIq7eN47OD
 QojJKDsFdZ94CVvEjgZhIONG6A5BwZeFIbpbg+Y5kAV97jFiXt2/iYQwWYUMH2NEpL
 AicYNUW94vW0B5nAKW/FU8Bav8Fcpt9BAYWolYZQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs05.server.lan [172.19.170.54]) (via HTTP); Fri, 28 Feb 2020
 01:30:54 +0100
MIME-Version: 1.0
Message-ID: <trinity-5b1cc46b-5622-4f42-8dcb-1c6d41c98fe3-1582849854366@3c-app-gmx-bs05>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 28 Feb 2020 01:30:54 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:ZX0Ie69bQdI/bcHHsV2gRX+MdAINxcBnSSUm+YRe3tepBBw0LjPeLLNNEpbexlWN3Zvoh
 um8z5J+s2lOzFC3sg+jjvAzdJjFFsN4hGd/PXZG5v4YEyssevj7r5I1nmn4S/cRCceJn6Bwh/Jxb
 pbT7worNJdBR/dJuZHiy/CgCltyrRgk4bqoQlZ9IqT1B8gNqElZmTOC00nEwUaT0mxgwfGg1g7G4
 uszVg7y3l1m94S5/7r6OqAwmOCfwtNyu9/C7d5x2Ahm1sd0a52IRNK1auPEYmJzKTXp3dm4LCNCF
 y0=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MMi4YSNUvGU=:E5mC16Wy8f+NZBipmblvf/
 3DqXfIF+amQWjDPWow9GKTOOxJ8TSI356TipiM3mukhO6K2VndNe2bQiazty5iZxxC0SIqx4V
 L+PaGAEjw7+t1tySYciJoA1PIn7IJHJIS/vCs/XmLZ08Jzf+II1YwyVic1gGW2rdebNmmcEPQ
 YMBg1NpjILKhKKGVEyoiZbLKHnxWFYOEsHOlDHc+X8cKGTbQBTrDw6JTmwW5+zgv9EeihLPg6
 /WUqz55APh/RtEYIjKunIJRmLjpwCIuXsBYLfrw5hpzeWKxPhoc0vMaRduCVDHzeAJZww2mY1
 djnuq62XLhHEDwg4pMDhS1MlCir399wQ34/L0corpMTFPnOVh6bMCNyLBeP+US6mbwHME12dl
 xqAtLqXFEubWsJjo6a0s6J6+RdFvRwAnpf11UmrC+qJCXdBNWgynTh3JV2znv+nQWWPeNHrKC
 igALjM0dTqDhL+2Uyn7nnU9hlFiP08crm4I+gm6QZ/sWomjRC9GlWyt/ahgKdwQQ4HkIhkpt1
 Qc7sLePoa6AiO/pwFVGmLUqmpu/Khu1ehLdbXUl3xNQyEV2zuAIEjI4GA3xHs0b3to/rF8KDQ
 ENJX6vr1AtK+sT1JXqybN8IYTUm//Xyp1ZAYKlSsG7XCzfnV/bF7PoOiZq3mxtJI31mQxRgeN
 m8fAC5Qg7C/Q3H4jAXRnH/ObTMsaNr3r408sYvmdHz4C0Pl6hkvn1+FhujXtgshBsdec=
Subject: Re: [USRP-users] How do timed commands work for two blocks (USRP
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

A quick update which may make things easier to debug: I am observing TX/RX on a spectrum analyzer and see if the frequency changes.
As soon as I enable timed command, the tune command is ignored!

For simplicity, I am completely removing the RX parts (uhd_usrp_source_0).

Now this works:

tune_req_tx = uhd.tune_request()
tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
tune_req_tx.rf_freq = 900e6
tune_req_tx.dsp_freq = -2e6

now = usrp_sink.get_time_now()
#usrp_sink.set_command_time(now + uhd.time_spec(1))
res1 = usrp_sink.set_center_freq(  tune_req_tx, 0)
usrp_sink.clear_command_time()

When this code is executed, the signal jumps by 2 MHz at the spectrum analyzer.

Now I only uncomment set_timed_command above:

usrp_sink.set_command_time(now + uhd.time_spec(1))

and repeat. NO frequency change any more!

That means as soon as I use timed command (set_command_time) for changing the DSP frequency on a TX it is just IGNORED!

This must be a bug ... or do I really do something fundamentally wrong?


USRP X310 with 2xUBX-160. TX/RX from dautherboard 1 is connected to spectrum analyzer.


Thank you!
Lukas



Lukas Haase wrote:
> How do these timed commands work exactly when using USRP Source together with USRP Sink? (I need to phase-align RX and TX hence use timed commands at the same time).
> Since they are both internally use the same hardware device (and board) I feel timed commands sent to both blocks result in some unpredictable results (at least for me).
>
> For simplicity, consider this simple test setup: Loopback configuration (TX into RX via 30dB attentuator); transmit a 1MHz baseband signal into USRP Sink. Then, use just retuning via DSP:
>
>     # dsp_freq changes every time this code is called:
>     #dsp_freq = 0
>     dsp_freq = 100e3
>     tune_req_tx = uhd.tune_request()
>     tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_tx.rf_freq = 900e6
>     tune_req_tx.dsp_freq = -dsp_freq
>
>     tune_req_rx = uhd.tune_request()
>     tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_rx.rf_freq = 900e6
>     tune_req_rx.dsp_freq = dsp_freq
>
>     res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>     res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>
> This code works exactly as expected ... my received baseband signal always stays at 1 MHz (the retuning is transparent to my baseband!) but the phase always changes.
> This makes sense because I do not use timed commands and hence the DUC/DDC is not aligned properly.
>
> Now I change to this code:
>
>     tune_req_tx = uhd.tune_request()
>     tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_tx.rf_freq = rf_freq
>     tune_req_tx.dsp_freq = -dsp_freq
>
>     tune_req_rx = uhd.tune_request()
>     tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>     tune_req_rx.rf_freq = rf_freq
>     tune_req_rx.dsp_freq = dsp_freq
>
>     # create timed command:
>     now = usrp_sink.get_time_now()
>     uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.2))
>     uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.2))
>     res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>     res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>     uhd_usrp_sink_0.clear_command_time()
>     uhd_usrp_source_0.clear_command_time()
>
> Suddenly my frequency is offset by 100kHz. This makes totally no sense!
>
> As I mentioned above, I assume the reason is that all these timed commands eventually arrive on the same hardware and maybe overwrite themselves in a way creating unpredictable behavior.
>
> So, what is the correct way to do it (with USRP Source/Sink blocks in gnuradio)??
>
> Thanks
> Lukas
>
>
> PS: If it's multiple receiver blocks I can use the same USRP Source block with Num Channels > 1. I guess that would make live easier. But I have TX+RX to phase align.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
