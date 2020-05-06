Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71941C727F
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 16:12:05 +0200 (CEST)
Received: from [::1] (port=43990 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWKmE-0007Gz-Px; Wed, 06 May 2020 10:11:58 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:37801)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jWKmA-0007Cd-OK
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 10:11:54 -0400
Received: by mail-ot1-f54.google.com with SMTP id z17so1443925oto.4
 for <usrp-users@lists.ettus.com>; Wed, 06 May 2020 07:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2qzEWtG32zCDq5F1CZcl8Z0nNEIyIyspyrpsdrofavg=;
 b=eq4XTt9hu1xedHyspSyZkauz1orXDnfsoqC2X3uBTATPU1oINx2TiD6HaE6udXqOoI
 CEyrmrKBa+ObagkCq3S/tYC3nNIIIsJUJmse+7QcBpbgzvQIynuBrqXRyHl6eOMCFVjO
 BS2JXX8kbj5X+Qzz6japfXb4yS6TXBgUnftJclDA82qKnyVpYxgLpymlIobT1YEer2v3
 4agsZnR8Db+8soVFOlZAarxVZYWyMVXi39xd3xjokbTqB4r0hAqzlWB3nWAjuZi2fD5Q
 8YV9waT43QI7/cxkVoyg1/CQqxxY79+7O+5I+76megnPHk1H278b2mUfXLKDKtUn/33/
 POuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2qzEWtG32zCDq5F1CZcl8Z0nNEIyIyspyrpsdrofavg=;
 b=XvDm1bfmYJTAnG7rzzcNCZn27N3NTGZhkWesIFwYbnrD/qb6Lwh9gwLc+5gCNAIbj0
 4rIe0gKVL1kolEZYMg+dmVYMroo7i7ayRRp4SF50SZj0vRues3XzI2rsFySBSvRXjgdP
 QLjtg+Y330kUIr49HDAAPc4Hi/WHwgL3CuL5g2Ec173m4+lTMlFAMtq8OUNH4BmFsKNW
 16897swWXHtQ6iUbOVVYwzoJTvd1ApCd+KDLa0TREKyPAMsPTTstIaBJ1inV3dIxmteY
 XWnf6vxNGBkGxcGATTC1OgL84E6+jflFz8clbzckR3dO0Z6kXcJ10/cvcgrvGIuvq232
 yqHw==
X-Gm-Message-State: AGi0PuZjv5HECIKB81rbR8kSYFZu/D4hUakSVF56Nby2IOJCBqUFtHxy
 doL0b1AQNcxyUlLGx2BBo04vHef7dU0eHraiP9wIag==
X-Google-Smtp-Source: APiQypJ6H/IsfGLHnZzpC4iPFMxVbWhv8zEUj/fymo03NQlAg8yE1tTT38/FE8GqJIx8qlucuABSgtbs04RuyAYYGGY=
X-Received: by 2002:a05:6830:1da1:: with SMTP id
 z1mr6548960oti.58.1588774273027; 
 Wed, 06 May 2020 07:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-a20a75c1-d648-476d-b9a3-d88b8484965c-1588731499457@3c-app-gmx-bap08>
 <trinity-13cff8cd-abe5-4de4-8e97-026745d9e269-1588740225402@3c-app-gmx-bap08>
In-Reply-To: <trinity-13cff8cd-abe5-4de4-8e97-026745d9e269-1588740225402@3c-app-gmx-bap08>
Date: Wed, 6 May 2020 10:11:02 -0400
Message-ID: <CAB__hTR_a9Mp1cKZO8zrBZPZik3cR_Z_U1sa5tdOnSG+y2-qLg@mail.gmail.com>
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

> After lot of debugging I have some progress:
> 1.) Having multiple channels is not enough since it only sets _stream_now=FALSE but not _start_time. Consequently both Source+Sink use get_time_now()+0.1 which may be different
I think that you need to call get_time_now()+0.1 just once (not
separately for source and sink) and use the result for both.

> 2.) set_unknown_pps only sets the the time to zero at next pps
I agree.
> 3.) "Sync: Unknown PPS" (set_unknown_pps) has to be only set in either USRP Source or Sink since they share the common motherboard. (having it in both still seems to work but takes longer to start because setting time is done twice, I think)
I agree.

> 4.) set_start_time *has* to be called on *both* USRP Source/Sink. This can't be done via grc and requires py edits.
set_start_time is a gnuradio and/or gr-ettus function that has no
equivalent in UHD.  So, I don't really have experience with this one.

> Now comes the part that I don't understand. When I use:
>
>         self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.0))
>         self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))
>
> I always get a string of "L" and the flowgraph is stuck. No matter which number I put here. After long time I figured out that the start time for USRP Sink has to be at least 100ms later. This works:
>
>         self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.1))
>         self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))
>
> 1.0001 does not work and neither does 1.001, 1.01 etc. But any number larger than 1.1 does.
>
> WHY is this the case?
This sounds like a bug or quirk in gr-ettus.  In my own software (and
in the Ettus UHD examples), setting a common start time for Tx and Rx
is typical usage.

>
> Also, why do we need to wait so long (100ms does not work, I get "WARN: USRP Source Block caught rx error code: 2" and "U")? What exactly has to happen within this one second and what are the cases when this one second may not be enough?

Again, this is likely a question better answered by a
gnuradio/gr-ettus person.  I typically use delays as short as 10-50 ms
between get_time_now() and start of streaming. For Tx streaming, you
just need to make sure that the streaming data arrives at the radio
prior to the motherboard clock exceeding the time indicated in the
time stamp of the first streaming sample or else you get "Late (L)"
messages.  For Rx streaming, the radio block will start sending
streaming samples once the motherboard clock reaches the indicated
time stamp.  I don't think that there is any warning if you tell the
Rx streamer to start streaming at say time 10.123 when in fact the
current motherboard time is already 12.2.  I think it will just start
streaming immediately with no warning (but I'm not 100% sure on this
case). The "Underrun (U)" warning indicates that the radio has already
started streaming and has new samples to send (to put into the send
FIFO) but the send FIFO is FULL (the samples are not being consumed
fast enough downstream and so the radio has no place to put the newest
samples).



> > I am using USRP X310+UBX+gnuradio for an application where my transmitted signal (TX) is reflected and received (RX).
> > For my tests I use the simple loopback config (TX -> 30dB Attn -> RX), transmit a pulse and plot both on the same plot (triggered in the TX pulse).
> >
> > The response comes around a whopping 38ms later!
How do you measure this delay?  Does this include software delays,
10Gb delays, etc?

> > I added a delay block before plotting the TX signal but the delay is still random each time I restart the flowgraph (residual time delays up to 700us).
> >
> > I wonder if I can achieve sample-accurate alignment that is consistent across flowgraph runs (maybe even USRP power cycles).
Assuming that I understand what you mean, this is possible - even with
USRP power cycles.  When I simultaneously transmit and receive using
timed samples, my receive signal always starts at the same sample
within the Tx waveform (not sample 1, but that can be calibrated).

> > RX+TX Streaming starts at the same time to my understanding because both my USRP Source+Sink have two ports and I use the setting "Sync: Unknown PPS" as discussed some time on this list.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
