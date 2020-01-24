Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BE3147917
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 08:57:55 +0100 (CET)
Received: from [::1] (port=57330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iutqf-0001OU-Q8; Fri, 24 Jan 2020 02:57:49 -0500
Received: from mout.gmx.net ([212.227.15.19]:38355)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1iutqd-0001Kw-5M
 for usrp-users@lists.ettus.com; Fri, 24 Jan 2020 02:57:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1579852626;
 bh=tZjvWymYq68Dzfa44gbvvLUXLxszPlWz0gCYMcQ2oOA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=AwtkHK1cGQjCAJizfcBhH6v5lmiw4vMdiTztt9mft/GO4oRazTFPm8nUTAEnQLNAI
 08lC6pGKreLi+Fz8Gn8Uz5LGup8TPjVmmsWOc+MUkNOzY2VRaM0Tf/SA3/dy4Z5niO
 Ch3UQwhlxTozHNskjnMmVjtED48Gc9h/wpf1B120=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [135.12.130.49] ([135.12.130.49]) by web-mail.gmx.net
 (3c-app-gmx-bs54.server.lan [172.19.170.138]) (via HTTP); Fri, 24 Jan 2020
 08:57:05 +0100
MIME-Version: 1.0
Message-ID: <trinity-488760a4-6923-45b9-a737-f5062f70c125-1579852625874@3c-app-gmx-bs54>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Fri, 24 Jan 2020 08:57:05 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:0Fry1uMa9erGCY4Xm9Pdyu1/rcnUE2zgLKqN7HRk2L275vUn7GjVF5cTNbps9UpnZVapl
 J+r8LM246vV4AWAGIDvmkf2k1lZXvbeV/1vsR7K7sBKgodqVCEX4rt1J3MRH01RnnxDREwjjbU9z
 33PH9ls2pAroVLXlnBzKCYmaPU+WVcE7pP0okMfXEAhEPZVccZZqNnPN2XPOkKCeHywBiyaMson1
 XuHJg83LrktRc1PMPH8JRR2suGUUd1P92JIthrnPMgvikxqrsGAf6b/UjDnBeD/VgJWZ3pM4BXWe
 TA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vflNz14X1Ys=:L1hd+Wajj7MHRCsK7X0Mtn
 t+PHsPS3jJcXg4HVS6lM5RQk9nVm6TDF+Ar3I7QIGw955PX6ulZGZrkjF5gm5stg3De7RSw4l
 JHlsbJHj3r1aLVT6In6gq5/eS7xhhApfoMbPUpHeUOuJ8pChPtApnOo3CzLrRHx1BDMnBWmWz
 5+CJMCJ5IUarzrUW4cZwDp8qj6XSvac0al8qHZwak9CgNvdH+Z/fF7RULKQIX1kW1B2pnnUxM
 DKWvJN+HQYQ42T0wTS3dWk8D+r3VJr/GJshLOuKTN0n6bmc6TmFYNWxi3d/fiNFd3LnQBjKiI
 RLPwmyFDsoIYAL0vwBZiPeyx5OMFuIkF10a/tzGriLxefftF4qU4dFcpqdGBZdzDjKvRjp8hp
 F4TPI+leOJ78HY8K3TEFbgMNtW2MACH1YxlG2i+01XltZA0Vkm63DJkwReMWV18GaVLyAmjkq
 kBF8SCncKD3hVTa79qXwDS6rVzV3jwdXVb6HHjf8+YVnZyrn8EHFG+OZnYofaYCpv/jGHFwad
 qO49HwI6azCORk2AG2203fUmsrPwzvlswjXw6y6QDpq5/2CWQO48+dminUA3c8aIyOEFu8af0
 qTxtS5QM+FXazJ1lE9B3JWUDz1FkN4Nk2XroF2ewKbxiqy50kF21e2DKnF+mdF8bCOQ/EM/lT
 qlsU2k0K8PdA50pH9FXXkunIrv4RgofmPLePpkGBnFRKn6amppo4bC1/r8f/IwFlWcq4=
Subject: Re: [USRP-users] Exact alignment between gnuradio sample stream and
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
Cc: usrp-users@lists.ettus.com
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

> On 01/23/2020 12:32 PM, Lukas Haase via USRP-users wrote:
>> Hi,
>>
>> TO MY UNDERSTANDING, the USRP has an internal clock that is different from host clock when running gnuradio (which makes sense because there are buffers etc in between).
>> Example: I transmit a CW at f=1001, receive it at f=1000 and then use gnuradio to downconvert the remaining 1 MHz I run into trouble (tried it...).
>>
>> For this reason, there exist timed commands and the tune_request object with which I can execute commands (LO tuning) at a precice time. For example, with these commands I can phase align tuning between TX/RX at different center frequencies:
>>
>>    tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
>>    tune_req_rx = uhd.tune_request(2*fcenter)
>>    tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>>    tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>>
>>    now = self.uhd_usrp_sink_0.get_time_now()
>>    self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
>>    self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.1))
>>
>>    self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>>    self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>>
>>    self.uhd_usrp_source_0.clear_command_time()
>>    self.uhd_usrp_sink_0.clear_command_time()
>>
>> The commands execute execatly at get_time_now() plus 100ms. As far as I understand, these 100ms are to ensure that the host computer has enough time until the USRP processes the clear_command_time function. But it does not relate the exact point in time with anything that exists in gnuradio.
>>
>> MY QUESTION: What I am unsure is how to align samples in gnuradio with the time on the USRP. For example, suppose I have an ideal clock signal in gnuradio and I want to perform a timed command EXACTLY at a particular sampling point (e.g. rising edge). How would I go about this?
>>
>> The actions I want to execute exactly time aligned with gnuradio include: tuning requests, reading out sensors (PLL sensor when it settled), switching IO pins through the GPIO interface.
>> For example, I would like to switch a GPIO port exactly once per period of a signal in gnuradio and exactly at the same time (clearly there will be delays but that's OK as long as the delay is fixed).
>> As another example, I would like to re-tune exactly once in every period of a gnuradio signal. Then I would like to read out when the PLL has settled and generate a binary indicator signal out of it. Plotting the original signal and the indicator signal should tell me exactly (at least sample accuracy) how long the PLL took to settle *relative* to the signal in gnuradio.
>>
>>
>> Thank you very much,
>> Luke
>
> Whatever "dance" you're using to set the USRP time, (presumably
> something like set_time_unknown_pps), you need to have it derive the
>    USRP time register from the host time.  The normal code that is
> emitted in GRC for "unknown_pps" just resets the USRP time to zero.
>    But you can arrange for it to be the host time (+1 second or
> something) instead.
>
> You haven't indicated whether you're using GRC, or "naked" Gnu Radio
> programming.
>
> General synchronization "things" are discussed in the knowledge base, here:
>
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

Hi Marcus,

Thanks. I went through this page a few times and got synchronization between TX/RX (somewhat) running.

I am using GRC but willing to go "naked" where necessary (my main application will still always be grc+GUI).

I guess I still don't understand what exactly what the "USRP time" is and how it related to sample time.

I do not think it makes sense to lock the USRP time to the host time because the host time is independent from the sample time on the host (in gnuradio). Samples are buffered and depending on CPU load, samples may occur earlier or later than expected by CPU time. Say I generate the signal x[n] and the sample rate is 1kS/s, then in a real-time system I can expect each sample to occur exactly every ms. But on my host with gnuradio this is certainly not the case! x[1000] does not necessarily occur 1 seconds (in CPU time) after x[0].

Again, what I want is I generate x[n] in gnuradio. For every, say, (n mod 1000)==0 I want to execute something on the USRP, for example flipping a GPIO which increases the gain of an amplifier ... exactly at the time when the *USRP* processes this sample. Not the host! Because the USRP, to my understanding, is like a realtime system.

Now say the output of the amplifier is fed again into the USRP RX port and I read it back as y[n] from USRP Source.

I will see the effect of the gain change in y[n] ... many samples after I did the request due to latency. But I want that the relative sample difference between x[n] and y[n] is always constant!

Example:

At x[0]    --> change gain to 1 --> at y[523]  I see gain changes to 1
At x[1000] --> change gain to 2 --> at y[1523] I see gain changes to 2
At x[2000] --> change gain to 3 --> at y[2523] I see gain changes to 3
    ....

I hope this example makes it more clear what I mean.

This is just a toy example; in reality I would build x[n] in gnuradio to be a control signal that aligns all the actions in a predicable manner.

Thanks,
Luke








_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
