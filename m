Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA841F5D58
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jun 2020 22:47:25 +0200 (CEST)
Received: from [::1] (port=50710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jj7d4-0003If-CI; Wed, 10 Jun 2020 16:47:22 -0400
Received: from mout.gmx.net ([212.227.17.21]:44097)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jj7cz-0003ES-M5
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 16:47:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591821996;
 bh=TkDeASzl7kjtO4DaqR4JlVFaY+N9zSM5B5EPmj6F9Cc=;
 h=X-UI-Sender-Class:From:To:Subject:Date:References;
 b=c67B3XooDMtyDqjyBRUEpu9WNBh1d9uu2AJ1oVEWRVlzdtnDGK9W1woy+c3h7Y7ZR
 uFBHViRTTyo2nn/IxyJ9g46PR/H4Ihq1+RYsWMKpL5IjORwooZ0Vhdw2b7QMzpcSdT
 hUFUgou0V+k4IJsFaH9aYnfd4wRZt1hz3ebVmU9A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bap09.server.lan [172.19.172.79]) (via HTTP); Wed, 10 Jun 2020
 22:46:36 +0200
MIME-Version: 1.0
Message-ID: <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 10 Jun 2020 22:46:36 +0200
Importance: normal
Sensitivity: Normal
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:R23YSVrQfQG8Zoj8R1H3M7Rhwu3QtFMGABFY/ist+pcUJRFoU/ksIzrAXTtLFKFlaBfTR
 dZWN/k4DZ3aptx+D51R9naArbTZJiXxF7g25zl0JxkxoCKTNOx/5W7yqCOQKKLinKST8aNIZcsEI
 VYFOpZ1p+T6+HHXzxQkENvCuQT0c14XBZKpm3FuTjB9UCHo/O3eCvo9K3YLpkj7Il29R1mEzGhun
 q+s688r7cUR1ZcIOuJDb3hRurtZ6zdreZllkIfvd8MYNTvbekZzP4UF2PQzXLgQDCyHJLna6+zZS
 Co=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qnsvRx3eTjk=:44IP/AuxW9ASA7DWr+g2gx
 ZOMjIXv/DiCud/PFelBqmUG5sHcsV8BWdOEsTP3IHVjVSvNPCcdiH6lgf++9kWLwRNjvH6+HE
 3KLMLe/pLvMOKmtqkWK592CmUZJsOvnp8z+bkqIvXK2gWIUfyz2GeEHCq2NiibZNHMm9ujV/W
 xBmb1dqKXlV1ASrAtI3wkPDIsM6SsFzOPUIMhdEkHN79YbjYzk7KP9r0qKIamY3zOiKRir0mx
 FinuAL8D38hit4IvWV2wYYuojN0022hjHFJ4JqXwzCOMITjSejr+3RXuhlzYF0AjkUweNRfUz
 mLZgqGubHlTed/ITuXi/pXgTwyVwalfnckLe5VLDkb2Yu2XFZf3l7KrbwNOIpLMGjs1VhBEig
 UB3aHv4FTjM4jHWo2mLeT2xbcyGpPboVeJmDDko9pBcjo11id49ykTPPzlZkWPj1o4YTN0k6R
 jnwJBmIiUwpUU7/OqgUAKpkkY9FADuUObRnWKK3NLhjaKQE3p29Q9f6HAZSKyZKh0nAXm87jh
 gwkDIFdYtBpTD9MelzSRlCQyXZH+ZBb9dfhL6XA+W+rhUUg1KQiFv7R9n1M7RD2eVXqqagSEL
 pbIX9JF1f9CzGi7R6+SZ94lGaVeegpyX1k97Tc1A+FhBk+ZGi7ucCR5k3If7PRiLJ3HWrMIXU
 1f49t3zFlPD84lStParnWUFhYVQnMZx/JdZsWBBeeo/Xb6G22vbOX8NTNt1ao40IqhYk=
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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

Just some additional info: I enabled the maximum possible debug on the host (UHD_LOG_CONSOLE_LEVEL=trace and debug_level = debug in .gnuradio/config.conf) and sent both versions to a file.
Again, the diff is identical!
(This debug contains the debug messages from gr-uhd but uhd itself does not seem to generate any debug/trace messages for timed commands).

Is there a way to somehow report back to the host when the command queue overflows or a timed command could not be processed at the planned time (late command)?

According to https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD "An overflow of the command queue will result in a system halt and often requires a physical reset of the FPGA.".  This does not sound something that should just be silently dropped!

This works for data streams so shouldn't it work for timed commands too?

The USRP feels like a black box ... commands are being sent but I have no idea what happens inside or if they are even executed (except, of course, things are "not working")


> Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr
> Von: "Lukas Haase" <lukashaase@gmx.at>
> An: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: How to debug timed commands on FPGA side?
>
> Hello,
>
> Is there any (somewhat straight forward) way to debug timed commands on the FPGA?
> In particular, I want to know:
> 1.) if any timed command is not executed as timed command but right away (because it had a timestamp but the command was late so it was executed right away)
> 2.) if any command queue overruns
> 3.) Any other sort of information that causes timed commands to misbehave
>
> I use "tx_command" for USRP Sink to send timed commands. The "tx_command" tags are injected with an embedded python block. I use "Tag Debug" and save all tags to a text file. Works.
> Then, in exactly the same block diagram, I replace the embedded python block with my C++ implementation that generates tags.
> Suddenly, some timed commands do not execute at the right moment any more (these are just few and consistent across re-runs and reboots).
>
> However, the tags generated by boths blocks are absolutely IDENTICAL! A diff between the "tx_command" outputs results in NO differences. Hence I need to know what the FPGA actually processes in both cases.
>
> Thanks
> Lukas
>
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
