Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 778791C79A5
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 20:47:09 +0200 (CEST)
Received: from [::1] (port=38254 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWP4U-00032U-Ll; Wed, 06 May 2020 14:47:06 -0400
Received: from mout.gmx.net ([212.227.17.21]:50679)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jWP4Q-0002vy-8f
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 14:47:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588790781;
 bh=Nor3eQGKroeVJPsSBQD42vIOP7L2RITSWUQH8sncUCk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=EEeLbJs6Gt/Zm+3rkR1MxDoUiEYGXFXE/7883l3yvIEIB6EgrivZqTolS0zuNmpEz
 oIOA3oWIJQ8k1RpP5q4a1YOLKcz5ZfyaIIG/VJ80NKTdrdDdXgTnxvWwjj1EzhPqPN
 4sM+z7UZS2i8Mla5s11XTKqh5qT01fsFA5FmRr3M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.49.189] ([67.216.49.189]) by web-mail.gmx.net
 (3c-app-gmx-bap49.server.lan [172.19.172.119]) (via HTTP); Wed, 6 May 2020
 20:46:21 +0200
MIME-Version: 1.0
Message-ID: <trinity-f8c8e99b-5df7-4b9f-8aee-d36d85baee73-1588790780965@3c-app-gmx-bap49>
To: "Rob Kossler" <rkossler@nd.edu>
Date: Wed, 6 May 2020 20:46:21 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAB__hTR_a9Mp1cKZO8zrBZPZik3cR_Z_U1sa5tdOnSG+y2-qLg@mail.gmail.com>
References: <trinity-a20a75c1-d648-476d-b9a3-d88b8484965c-1588731499457@3c-app-gmx-bap08>
 <trinity-13cff8cd-abe5-4de4-8e97-026745d9e269-1588740225402@3c-app-gmx-bap08>
 <CAB__hTR_a9Mp1cKZO8zrBZPZik3cR_Z_U1sa5tdOnSG+y2-qLg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:eUaYYFivVRjIESSSEAn/GJPB9LUZn8yMCxFBg6o2PsJOP8K9DM3qlI6I8H75ETrNxlo/9
 4tDfFAbdMWzPVNCuKlxMpbotFcGElnLWsvpt1MTV5R/9I6m+wzUlZQx9lmq138LiNWgtcE9Hl9J+
 s1L0D54AH9AEdlw/Db8XJKRfuha48emIQS1P2+q7mJe2fFSEN9lZaV/K+hc3mz/VcOOH8Bu9uB0X
 YvXhTp9azzSb8v0rXYYTef0YD3zVcJJAblBM1mh1OIiwPyuJyZ0t0dHzEzJN5Ah9f6tWwwWdQPdz
 qw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y1mfCqVuZ5w=:SzA9Ex51rY2FTAsjLEmcgn
 JetXhZOyJdi5VdrptJ0K2WQv8PcdBrGclyhXX6cSS2ON58iGYnaWOilXY2IOOkNcB6bxDb7RZ
 F+ghayB1+9GHO+7KU9zt44A8FYeKnU6711wI2cR7JmmoJCAT9/k31luoAYJPHakKWk25dPuhw
 770ncpBk3Z9tBPYZa7XFhUEyRL9nZD0oi0K70Bu+TPunZq7/qti3QjggyYk2jWpA8eqGeemuN
 mIqRkw/pLhhkz2wOFOgIp6J0sMSZP6lYrwhRUYI3+Hn3URrVzk682zoACl7Gqgoij3cX6wTQ4
 yCmDWEkejVEqbW7L2KF2MjI7npNxgWx3lUd7hDg9CzL3+opCxWzaSJrXK/aZbrAFsTcnw0n7v
 GyjRZ8bzXZ2eoHUjoK5Ymjio8WbKsdax3kHKeLnuW5mHPD4pECvNCHY2Un9Vuhk2mcwJK8X5U
 +3AGiV3R9A0IvjjlktmpDb3QkzH+yEfjxE7Ajg7g/Liyr35WfZPF3Z9K3R39qbFaxmeYxYglX
 hfN8Sj2CT14bVWmXes0FkzqlCX00gRsE2uRve5kc/jEezTURIdfzazRWAccA1/f6lXbQZXvqD
 00I5dGGa39C78PXEW2ZQWKxthvZy3+8/MNuunZo7aivzQ1jxAIQmJeiZZP4ohWKHEFCQFp6r6
 cjIDYt2gzfH6SMgHhAoDj7hJ23pI+s7VAi5s/OsyTphAdEsIwwnsWK/L5D1vu9VXutHo=
Subject: Re: [USRP-users] Unpredictable delays in loopback configuration
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

Hi Rob,

Thanks again for helping :)

> Gesendet: Mittwoch, 06. Mai 2020 um 10:11 Uhr
> Von: "Rob Kossler" <rkossler@nd.edu>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: Re: [USRP-users] Unpredictable delays in loopback configuration
>
> > After lot of debugging I have some progress:
> > 1.) Having multiple channels is not enough since it only sets _stream_now=FALSE but not _start_time. Consequently both Source+Sink use get_time_now()+0.1 which may be different
> I think that you need to call get_time_now()+0.1 just once (not
> separately for source and sink) and use the result for both.

What I meant is that gr-uhd calls them (in this default configuration). What happens is:

1.) usrp_source_impl::start() calls get_time_now()+0.1
2.) usrp_sink_impl::start() calls get_time_now()+0.15

Both are called automatically. This can (and must) be overwritten by explicitely calling set_start_time on each.

> > 2.) set_unknown_pps only sets the the time to zero at next pps
> I agree.

To make sure: Do you know if the flowgraph starts before the time is set on the next pps?
For example, if I have [Signal Source] --> [USRP Sink], does [Signal Source] start producing samples already which will be buffered (and potentially overflow) or will all of this start once time is acquired?

> > 4.) set_start_time *has* to be called on *both* USRP Source/Sink. This can't be done via grc and requires py edits.
> set_start_time is a gnuradio and/or gr-ettus function that has no
> equivalent in UHD.  So, I don't really have experience with this one.

Yes. Basically they just set state variables:

void usrp_sink_impl::set_start_time(const ::uhd::time_spec_t& time)
{
    _start_time = time;
    _start_time_set = true;
    _stream_now = false;
}

Those variables are used by the usrp_source_impl::start() and usrp_sink_impl::start() mentioned above. For example, within usrp_sink_impl::start():

_tx_stream = _dev->get_tx_stream(_stream_args);
_metadata.start_of_burst = true;
_metadata.end_of_burst = false;
// Bursty tx will need to send a tx_time to activate time spec
_metadata.has_time_spec = !_stream_now && pmt::is_null(_length_tag_key);
_nitems_to_send = 0;
if (_start_time_set) {
    _start_time_set = false; // cleared for next run
    _metadata.time_spec = _start_time;
} else {
    _metadata.time_spec = get_time_now() + ::uhd::time_spec_t(0.15);
}
_tx_stream->send(gr_vector_const_void_star(_nchan), 0, _metadata, 1.0);


And for usrp_source_impl::start():

_rx_stream = _dev->get_rx_stream(_stream_args);
static const double reasonable_delay = 0.1; // order of magnitude over RTT
::uhd::stream_cmd_t stream_cmd(::uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
stream_cmd.stream_now = _stream_now;
if (_start_time_set) {
    _start_time_set = false; // cleared for next run
    stream_cmd.time_spec = _start_time;
} else {
    stream_cmd.time_spec = get_time_now() + ::uhd::time_spec_t(reasonable_delay);
}
this->issue_stream_cmd(stream_cmd);

> > Now comes the part that I don't understand. When I use:
> >
> >         self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.0))
> >         self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))
> >
> > I always get a string of "L" and the flowgraph is stuck. No matter which number I put here. After long time I figured out that the start time for USRP Sink has to be at least 100ms later. This works:
> >
> >         self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.1))
> >         self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))
> >
> > 1.0001 does not work and neither does 1.001, 1.01 etc. But any number larger than 1.1 does.
> >
> > WHY is this the case?
> This sounds like a bug or quirk in gr-ettus.  In my own software (and
> in the Ettus UHD examples), setting a common start time for Tx and Rx
> is typical usage.

I did some more debugging and found out that this occurs when I have one signal that I send and receive back with through the USRP and then somehow combine again with the original signal. Combine can be plotting them in the same plot. Simple example (both USRP Source+Sink have set_start_time(1.2) set):


                                                            +---------+
+---------------+                                           |         |
| Cosine Source |---+-------------------------------------->| QT GUI  |
+---------------+   |    +-----------+  +-------------+     |  Freq   |
                    `--->| USRP Sink |  | USRP Source |---->|  Sink   |
                         +-----------+  +-------------+     |         |
                                                            +---------+

Instead of "QT GUI Freq Sink" we could have Multiply, Add. etc. If I break the top connection it works!

The other "fix" is what I described above: When I let the USRP Sink start *later* (set_start_time(1.3) it works too.

I am not exactly sure why and how and what I should let this time difference be.
There must be a more elegant way to solve this?


> > Also, why do we need to wait so long (100ms does not work, I get "WARN: USRP Source Block caught rx error code: 2" and "U")? What exactly has to happen within this one second and what are the cases when this one second may not be enough?
>
> Again, this is likely a question better answered by a
> gnuradio/gr-ettus person.

Probably.
Unfortunately I never had luck to receive response (neither here nor in the gnuradio mailing list, nor on github bug report).

> I typically use delays as short as 10-50 ms
> between get_time_now() and start of streaming.

How are you exactly determining these times? How long do they need to be?
I assume this time must be long enough for this command to reach the USRP? (i.e., total delays of OS (python -> gr-uhd -> uhd) -> Driver/kernel (TCP/IP+Ethernet) -> Link -> FPGA processing)

I do not understand WHY we need this exactly.

> For Tx streaming, you
> just need to make sure that the streaming data arrives at the radio
> prior to the motherboard clock exceeding the time indicated in the
> time stamp of the first streaming sample or else you get "Late (L)"
> messages.

Ok. Let me attempt to answer my previous question:

At t0, set_unknown_pps() will set the time on the mainboard to zero exactly at the next pps (even if no external PPS is connected as in my case).
The request goes through python, UHD, IP Stack, Ethernet, cable to FPGA and once it arrives there USRP clock starts at zero. Call this time t1.

On the host, some time t2 > t0 (but not necessarily t2 > t1 ??) after set_unknown_pps(), usrp_sink_impl::start() will be executed which sends an empty packet with
  .has_time_spec = true
  .time_spec = uhd.time_spec_t(X)

Again, this request takes some time to proagate to USRP and lands there at t3.

Now X has to be larger than t3-t1 ? That means it includes two packets to the USRP and an unknown processing delay on the host computer between set_unknown_pps and _tx_stream->send() ?

The communication to the USRP would be more straight forward to determine (e.g. ping divided by two). The processing delay on the host computer is more vague and depends on CPU load but I guess can still be reasonably well bounded with a second or so?

> For Rx streaming, the radio block will start sending
> streaming samples once the motherboard clock reaches the indicated
> time stamp.

I see. So similarly with the code snippets above, t0 and t1 will be the same.

At some time t2' (t2' > t0, but not necessarily t2' > t1?), usrp_source_impl::start() will be executed which calls issue_stream_cmd() with the given delay X.
This command reaches the USRP at t3'.

> I don't think that there is any warning if you tell the
> Rx streamer to start streaming at say time 10.123 when in fact the
> current motherboard time is already 12.2.  I think it will just start
> streaming immediately with no warning (but I'm not 100% sure on this
> case).

According to this, there would be no requirement on X, correct?
However, when X is too small for RX streaming, I get

    WARN: USRP Source Block caught rx error code: 2

So this is probably the case when X < (t3'-t1) ?

BTW, can the L message also be produced by RX (USRP Source)?

> The "Underrun (U)" warning indicates that the radio has already
> started streaming and has new samples to send (to put into the send
> FIFO) but the send FIFO is FULL (the samples are not being consumed
> fast enough downstream and so the radio has no place to put the newest
> samples).
>
> > > I am using USRP X310+UBX+gnuradio for an application where my transmitted signal (TX) is reflected and received (RX).
> > > For my tests I use the simple loopback config (TX -> 30dB Attn -> RX), transmit a pulse and plot both on the same plot (triggered in the TX pulse).
> > >
> > > The response comes around a whopping 38ms later!
> How do you measure this delay?  Does this include software delays,
> 10Gb delays, etc?

I plotted the transmitted pulse and the received pulse on the same plot.
Since the samples are time-discrete on the host, they only include analog delays.
But after all your explanations, I understand where this comes from: In the default config, stream start for RX is at 0.1 and for TX 0.15. That makes already 50ms difference. This is in addition to the difference due to the separate get_time_now calls made by gr-uhd and since my pulse repeats every 100ms, the 38ms may actually be the 62ms reply from the previous pulse.

> > > I added a delay block before plotting the TX signal but the delay is still random each time I restart the flowgraph (residual time delays up to 700us).
> > >
> > > I wonder if I can achieve sample-accurate alignment that is consistent across flowgraph runs (maybe even USRP power cycles).
> Assuming that I understand what you mean, this is possible - even with
> USRP power cycles.  When I simultaneously transmit and receive using
> timed samples, my receive signal always starts at the same sample
> within the Tx waveform (not sample 1, but that can be calibrated).

This this part is fixed and understood now.



Thanks,
Lukas




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
