Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E310C1C7ADA
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 21:59:55 +0200 (CEST)
Received: from [::1] (port=60330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWQCv-0001C3-Lk; Wed, 06 May 2020 15:59:53 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:33885)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jWQCs-00015F-AS
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 15:59:50 -0400
Received: by mail-ot1-f42.google.com with SMTP id 72so2446087otu.1
 for <usrp-users@lists.ettus.com>; Wed, 06 May 2020 12:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MskJYr9jNOuBpJZKHWERtRhfacEy8ZCYd55KD/suzsc=;
 b=btqt1vyyjm1LyBlW6r/H9NRqde/NjHLpH4ILdYGkjnwhuaMMMBxY3Gh5DaK6HR3X2v
 yeLiAlJiI/i6Shix5ySeodtrlDUHahTlIv4rzI+N3BASsSZorsPN8jjpw8IJAFH9dNw+
 2HbqNJZwRYzDhbgWxBcEKoe4KRNgns62XU4nCW/5XgD9qoIzX8ZdexfbaT08Oft711sg
 ERgCIsLAdRF3aeWBcDntq4rJvGZcIx7J08sHNqGYkv/CHcbxTqkC4w1rVEBJvNyfjehe
 K2UnTQ6jUc9hfjnYn0WpcdK0G9KAs7Y30lkpZ6iLF4UKYF44mWIA6CMrjl1OzYKeUn++
 WbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MskJYr9jNOuBpJZKHWERtRhfacEy8ZCYd55KD/suzsc=;
 b=iiaIk1I2N2+1NesfO/p1AVp26LxTaSIvwVwGcSxYgG8E2xujcDt2m7MAcUVk+k/Syt
 J0T1X1hFTkxmNsan9HdimlupQ77RPgIuNujjHcgAq9RmT4+SmGPGLnGcHe0LC1tuCaSA
 owpW1lXGsyt3ZYpy96/5mx0oRwUykMjMrE1tRtX2ja7WC6LsBR7ZHXNOtFNQCWC8I0A3
 rakcld0vo4sQW+ZcWIxbjCgMcPfu9GpMDx0ED5yvyJa/wHKCE7OynMbJ20nOXYMqdlm9
 ewEYketP73QvBgG+Mg0M9VsY8DB21nZeZYAYRJd/rgFSOUKpcGfm4q/gDVWaIaC7zoew
 7PRw==
X-Gm-Message-State: AGi0PuaLvJ7WcXnsqXjAvEksvNPE7kKh2EtY9jr4LRIvTBGD8qgMLMbK
 KG+cXnhDQFwv2X9I1SUYdN3j/Uq5L4utIE1tvGYqsZdJ
X-Google-Smtp-Source: APiQypLdCJSVUf9fG2V7gKIBDr9WIZhrWcJjEa1Pg3AD2gIUHGJffldeJu9jJcgOazcC/KpmUVz0L2v8mvrulbRIViA=
X-Received: by 2002:a05:6830:1da1:: with SMTP id
 z1mr7773797oti.58.1588795149370; 
 Wed, 06 May 2020 12:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-a20a75c1-d648-476d-b9a3-d88b8484965c-1588731499457@3c-app-gmx-bap08>
 <trinity-13cff8cd-abe5-4de4-8e97-026745d9e269-1588740225402@3c-app-gmx-bap08>
 <CAB__hTR_a9Mp1cKZO8zrBZPZik3cR_Z_U1sa5tdOnSG+y2-qLg@mail.gmail.com>
 <trinity-f8c8e99b-5df7-4b9f-8aee-d36d85baee73-1588790780965@3c-app-gmx-bap49>
In-Reply-To: <trinity-f8c8e99b-5df7-4b9f-8aee-d36d85baee73-1588790780965@3c-app-gmx-bap49>
Date: Wed, 6 May 2020 15:58:58 -0400
Message-ID: <CAB__hTRwRntz47Gwz87wHJg5N8t-AkHwO4FUA_PzAy17nh0_BA@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

> > > 2.) set_unknown_pps only sets the the time to zero at next pps
> > I agree.
>
> To make sure: Do you know if the flowgraph starts before the time is set on the next pps?
> For example, if I have [Signal Source] --> [USRP Sink], does [Signal Source] start producing samples already which will be buffered (and potentially overflow) or will all of this start once time is acquired?

It seems to me that the signal source would produce samples
immediately, but since the USRP is not yet consuming them, it would
back-pressure such that the signal source would pause until a buffer
was ready for more samples. This should not produce an overflow.  Once
the USRP starts consuming the samples, then the signal source could
resume sending samples.  In contrast, a UHD overflow occurs because
the Radio cannot stop taking samples in the case where a downstream
consumer is too slow.  It has to keep taking samples at its own clock
rate and so it generates the overflow error since it has no place to
stuff the samples and it cannot pause.


> > > Also, why do we need to wait so long (100ms does not work, I get "WARN: USRP Source Block caught rx error code: 2" and "U")? What exactly has to happen within this one second and what are the cases when this one second may not be enough?
> >
> > Again, this is likely a question better answered by a
> > gnuradio/gr-ettus person.
>
> Probably.
> Unfortunately I never had luck to receive response (neither here nor in the gnuradio mailing list, nor on github bug report).
>
> > I typically use delays as short as 10-50 ms
> > between get_time_now() and start of streaming.
>
> How are you exactly determining these times? How long do they need to be?
> I assume this time must be long enough for this command to reach the USRP? (i.e., total delays of OS (python -> gr-uhd -> uhd) -> Driver/kernel (TCP/IP+Ethernet) -> Link -> FPGA processing)

Yes, just long enough for the command to reach the USRP before the
USRP clock reaches that time.  Determined by trial-and-error.


> > For Tx streaming, you
> > just need to make sure that the streaming data arrives at the radio
> > prior to the motherboard clock exceeding the time indicated in the
> > time stamp of the first streaming sample or else you get "Late (L)"
> > messages.
>
> Ok. Let me attempt to answer my previous question:
>
> At t0, set_unknown_pps() will set the time on the mainboard to zero exactly at the next pps (even if no external PPS is connected as in my case).

The device has an internal PPS, so it will still set the time to zero
at the PPS edge. Note that the primary use of the PPS is for the case
of multiple devices where each is connected externally to a common PPS
source.  In this case, you can query one device until a PPS occurs, at
which point you know that you have a full second to send commands that
will occur at the next PPS.  So, you can tell every device to set its
motherboard clock to zero at the next PPS and you can be confident
that all devices are now time-aligned because they will all set their
clock to zero at the same PPS edge (assuming same-length cables from
PPS source to each device).


> The request goes through python, UHD, IP Stack, Ethernet, cable to FPGA and once it arrives there USRP clock starts at zero. Call this time t1.

Not exactly, the USRP does not set the time to zero when the command
arrives, but rather when the next PPS edge occurs.


> On the host, some time t2 > t0 (but not necessarily t2 > t1 ??) after set_unknown_pps(), usrp_sink_impl::start() will be executed which sends an empty packet with
>   .has_time_spec = true
>   .time_spec = uhd.time_spec_t(X)
>
> Again, this request takes some time to proagate to USRP and lands there at t3.
>
> Now X has to be larger than t3-t1 ? That means it includes two packets to the USRP and an unknown processing delay on the host computer between set_unknown_pps and _tx_stream->send() ?
>
> The communication to the USRP would be more straight forward to determine (e.g. ping divided by two). The processing delay on the host computer is more vague and depends on CPU load but I guess can still be reasonably well bounded with a second or so?

I'm not quite following the times in your scenario, perhaps because
I'm thinking of them differently.  I always think of time on the
device (as opposed to CPU time).  After the device time is set to zero
(usually on a PPS edge, but not necessarily), you can send either
timed commands or streaming data with time stamps but in either case
the time stamp is related to device time.  As long as the command
reaches the device before the time indicated in the time stamp, the
command will be delayed until exactly that tick of the clock and then
executed immediately.



>
> > For Rx streaming, the radio block will start sending
> > streaming samples once the motherboard clock reaches the indicated
> > time stamp.
>
> I see. So similarly with the code snippets above, t0 and t1 will be the same.
>
> At some time t2' (t2' > t0, but not necessarily t2' > t1?), usrp_source_impl::start() will be executed which calls issue_stream_cmd() with the given delay X.
> This command reaches the USRP at t3'.
>
> > I don't think that there is any warning if you tell the
> > Rx streamer to start streaming at say time 10.123 when in fact the
> > current motherboard time is already 12.2.  I think it will just start
> > streaming immediately with no warning (but I'm not 100% sure on this
> > case).
>
> According to this, there would be no requirement on X, correct?

Right.


> However, when X is too small for RX streaming, I get
>
>     WARN: USRP Source Block caught rx error code: 2
>
> So this is probably the case when X < (t3'-t1) ?
>
> BTW, can the L message also be produced by RX (USRP Source)?

I don't think so.  By the way, I was wrong in my previous email.
Underrun(U) is a Tx radio issue where the D/A is ready for the next
sample, but the next sample has not yet arrived from the upstream
block.  Overrun(O) is the Rx equivalent where the radio has a new A/D
sample, but has not place to put it because the downstream block is
not emptying the FIFO fast enough.  Late (L) is a Tx error that occurs
when the streaming sample has a time stamp that is earlier in time
than the current clock tick.  So, this is really bizarre to me that
you are getting a U with an Rx stream???

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
