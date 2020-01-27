Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D2014AC18
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 23:35:11 +0100 (CET)
Received: from [::1] (port=52086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwCyL-0005Tt-0L; Mon, 27 Jan 2020 17:35:09 -0500
Received: from mout.gmx.net ([212.227.15.15]:42883)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1iwCyH-0005OJ-93
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 17:35:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1580164464;
 bh=qHezF+3NH7SaHA5GkXSjnAT/uU7AO6RBcvLbsJItvKU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CqblUYIRuFBXhjycJXcvM0blUH1Mzk1ltkuv0E56IDBPyU0A95mylg+Tq4pMxGTph
 gL/d79imORDgbBwQ5CLe8mGdrSLw6W7aSYm1Prlr9TJtSr0Gg3qehUOtHE1eX83MJo
 7FeyL5mot1P58/A+6sVJTm/Sif83oYxs10gbPw54=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs13.server.lan [172.19.170.65]) (via HTTP); Mon, 27 Jan 2020
 23:34:24 +0100
MIME-Version: 1.0
Message-ID: <trinity-be35829c-c69e-45b3-a686-731c6fec4502-1580164464056@3c-app-gmx-bs13>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 27 Jan 2020 23:34:24 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E2B210C.2060407@gmail.com>
References: <trinity-488760a4-6923-45b9-a737-f5062f70c125-1579852625874@3c-app-gmx-bs54>
 <5E2B210C.2060407@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:WJz1Rg4sBeXC/c4J0zfkDI8G+iTdHtzR5Tj+tHAhfJcx4drVqHKUWy8UgjW5oJgGwymVN
 dUlmQmAci9//RSHsUbz5ZpD2BmdnYMKCNVw8AKOERX2I7TXYDyJdJDx/5kKi4xlFpjKSBworbYx5
 OFnBjX+2UQadkx7UcxLuwY58DXc1EXc1c0VqXRwsxQF79pwgMY4iJzG4XO5DD1/Wd66RAmuP+ut9
 WupPblwGTcEALrmsdz6mL4GY0d6S3mcmXSGOhzvx6QBenSTKKjoNy7OAJWErlw4wrCKO8Ugz2szN
 vo=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wso/Dvo+628=:uBRtVVT2p1WqorxUDWHZhh
 XE8xNWdubx1D1zKYy+QkJ2KNab0K6u26XNev9Z55yIw3pNM3UhI/+u7PHwpuxBy9Vi8xFDc1s
 Z6I8EDLV22dLQe3vDbXLuffftHF1ZVm3WeBktg8kDfoAkNLP31jobGODvpOPauZ4bpku9zgZm
 QSV7y8KLgZrrYOfPFuS0a5mgp7Esu6U7e9Vu/WbV+U8V8VSKVxVBnZ82D1FxDz5dwL51ZQnck
 GOIOQd5Zs0qJRTaGdv1cpielF33jNqMdcp8R0XOSX8xALwQyujbisJ/LQ06hIVHAder1NQb3q
 BNEXF0xX47dy1UR0c9fNg3U7jL+QPG/ZlikvXNz0sgnmJ2Q/mPLI/sutlzGCqaJZXRAzZdGQh
 INZ9HwmvdYSSY6ChWjQHsMqxFX+ROs3nowPGIvWuOeVoLG/YlefimWJ35wYZm2QRpUv5qhdMn
 0yYew1yc4Kiw9ovRkK6Zpdx6X/4GtqbONUtnQOU5aaUoQoZYm15cc2Pv3cNwNUo7OiwB0YiuU
 b/J61qz7OJx5ewTvhD/9XX7HkGLNwZ8TL/H3ngs04KKbWPLGiHo2EUTeJV8nEg/+r/F53EzfW
 lQAeffQqyNhTb25Cq+iGS6olpRmVxsVFHscYQ+ugQ9DFiSF5CV7DaQ59iKOikVh1Kk+v/KFpW
 lxePHjrz79DeNvFrZMc9GmUTBkp1N1RI8Hz3wOMzswojddvXLQS3StM4YQ//+vCuIZxs=
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

> Gesendet: Freitag, 24. Januar 2020 um 11:53 Uhr
> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: usrp-users@lists.ettus.com
> Betreff: Re: [USRP-users] Exact alignment between gnuradio sample stream and USRP time
>
> On 01/24/2020 02:57 AM, Lukas Haase wrote:
> >> On 01/23/2020 12:32 PM, Lukas Haase via USRP-users wrote:
> >>> Hi,
> >>>
> >>> TO MY UNDERSTANDING, the USRP has an internal clock that is different from host clock when running gnuradio (which makes sense because there are buffers etc in between).
> >>> Example: I transmit a CW at f=1001, receive it at f=1000 and then use gnuradio to downconvert the remaining 1 MHz I run into trouble (tried it...).
> >>>
> >>> For this reason, there exist timed commands and the tune_request object with which I can execute commands (LO tuning) at a precice time. For example, with these commands I can phase align tuning between TX/RX at different center frequencies:
> >>>
> >>>     tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
> >>>     tune_req_rx = uhd.tune_request(2*fcenter)
> >>>     tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
> >>>     tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
> >>>
> >>>     now = self.uhd_usrp_sink_0.get_time_now()
> >>>     self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
> >>>     self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.1))
> >>>
> >>>     self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
> >>>     self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
> >>>
> >>>     self.uhd_usrp_source_0.clear_command_time()
> >>>     self.uhd_usrp_sink_0.clear_command_time()
> >>>
> >>> The commands execute execatly at get_time_now() plus 100ms. As far as I understand, these 100ms are to ensure that the host computer has enough time until the USRP processes the clear_command_time function. But it does not relate the exact point in time with anything that exists in gnuradio.
> >>>
> >>> MY QUESTION: What I am unsure is how to align samples in gnuradio with the time on the USRP. For example, suppose I have an ideal clock signal in gnuradio and I want to perform a timed command EXACTLY at a particular sampling point (e.g. rising edge). How would I go about this?
> >>>
> >>> The actions I want to execute exactly time aligned with gnuradio include: tuning requests, reading out sensors (PLL sensor when it settled), switching IO pins through the GPIO interface.
> >>> For example, I would like to switch a GPIO port exactly once per period of a signal in gnuradio and exactly at the same time (clearly there will be delays but that's OK as long as the delay is fixed).
> >>> As another example, I would like to re-tune exactly once in every period of a gnuradio signal. Then I would like to read out when the PLL has settled and generate a binary indicator signal out of it. Plotting the original signal and the indicator signal should tell me exactly (at least sample accuracy) how long the PLL took to settle *relative* to the signal in gnuradio.
> >>>
> >>>
> >>> Thank you very much,
> >>> Luke
> >> Whatever "dance" you're using to set the USRP time, (presumably
> >> something like set_time_unknown_pps), you need to have it derive the
> >>     USRP time register from the host time.  The normal code that is
> >> emitted in GRC for "unknown_pps" just resets the USRP time to zero.
> >>     But you can arrange for it to be the host time (+1 second or
> >> something) instead.
> >>
> >> You haven't indicated whether you're using GRC, or "naked" Gnu Radio
> >> programming.
> >>
> >> General synchronization "things" are discussed in the knowledge base, here:
> >>
> >> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
> > Hi Marcus,
> >
> > Thanks. I went through this page a few times and got synchronization between TX/RX (somewhat) running.
> >
> > I am using GRC but willing to go "naked" where necessary (my main application will still always be grc+GUI).
> >
> > I guess I still don't understand what exactly what the "USRP time" is and how it related to sample time.
> >
> > I do not think it makes sense to lock the USRP time to the host time because the host time is independent from the sample time on the host (in gnuradio). Samples are buffered and depending on CPU load, samples may occur earlier or later than expected by CPU time. Say I generate the signal x[n] and the sample rate is 1kS/s, then in a real-time system I can expect each sample to occur exactly every ms. But on my host with gnuradio this is certainly not the case! x[1000] does not necessarily occur 1 seconds (in CPU time) after x[0].
> >
> > Again, what I want is I generate x[n] in gnuradio. For every, say, (n mod 1000)==0 I want to execute something on the USRP, for example flipping a GPIO which increases the gain of an amplifier ... exactly at the time when the *USRP* processes this sample. Not the host! Because the USRP, to my understanding, is like a realtime system.
> >
> > Now say the output of the amplifier is fed again into the USRP RX port and I read it back as y[n] from USRP Source.
> >
> > I will see the effect of the gain change in y[n] ... many samples after I did the request due to latency. But I want that the relative sample difference between x[n] and y[n] is always constant!
> >
> > Example:
> >
> > At x[0]    --> change gain to 1 --> at y[523]  I see gain changes to 1
> > At x[1000] --> change gain to 2 --> at y[1523] I see gain changes to 2
> > At x[2000] --> change gain to 3 --> at y[2523] I see gain changes to 3
> >      ....
> >
> > I hope this example makes it more clear what I mean.
> >
> > This is just a toy example; in reality I would build x[n] in gnuradio to be a control signal that aligns all the actions in a predicable manner.
> >
> > Thanks,
> > Luke
> >
> Sample streams from the USRP are time-stamped.  In Gnu Radio, that
> generates a tag when the stream starts, and whenever there's an
>   overrun.
>
> In the absence of overruns, you know exactly the sample time from
> knowing the initial time-stamp, and simply counting samples, since
>    the sample-rate is known, and fixed.
>
> This is drifting squarely into "how do I do stuff in Gnu Radio", so
> there's a better audience for that on the discuss-gnuradio mailng list.
>
> If this were my problem, I'd probably write a custom block that
> "scheduled things", based on knowing the most recent time tag, and
>    the current sample count since the most recent time-tag.

Hi Marcus,

Thanks, that's very useful. I get the idea now. For example, for a frequency hopping system, I would queue the commands for the *next* period using timed commands (and hope that host->USRP is fast enough to process them before the time occurs).

But why does the USRP use seconds and fractional seconds (rather than integer cycles etc)? Can this really guarantee proper timing?

I can first set the USRP command time to zero (at startup in gnuradio). When I have a signal source going into a "USRP Sink" with samp_rate = 1 MHz and I want to execute a variety of of commands exactly at every 10000 samples, how does my timed command look like? For example, within the work() function of a block I can convert any sample to an absolute sample number from start on (with nitems_read etc.). Would something like

    def work(self, input_items, output_items):
        // check if "current" sample is within this processing block
        // is yes, set timed command for next period
        if self.curSamp >= nitems_read && self.curSamp < nitems_read() + len(input_items[0]):
           // Hope that 10000/samp_rate is enough time to successfully send commands
           // from gnuradio/host to USRP?
           set_command_time((self.curSamp+10000) / self.samp_rate)
           // tune different RXes to different frequencies
           // operate GPIO pins
           // ...
           clear_command_time()
           self.curSamp = self.curSamp + 10000
        return 0

be what you are thinking of?


Thanks,
Luke

















_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
