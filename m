Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C14F9148C8F
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 17:54:20 +0100 (CET)
Received: from [::1] (port=55040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iv2Dq-0005GY-RS; Fri, 24 Jan 2020 11:54:18 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:39139)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iv2Dn-0005CN-0b
 for usrp-users@lists.ettus.com; Fri, 24 Jan 2020 11:54:15 -0500
Received: by mail-qk1-f174.google.com with SMTP id w15so958635qkf.6
 for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2020 08:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=F82d7zZ79XULJcUiPCwmZUqCUd6TUXNHO2fQOC9cbHU=;
 b=ExiDv5C3sEYU2uxxLE1cVGC6mO94TZMJhxldfr8jgNiDUxVyYzKa0THxShBUUWlP+x
 VyKPbPVUXsRDi3/VDqcmWb2+axhAvvjmJIWhu/R1OshlI/0L1MP0VXzKTZ+3w34HdAlZ
 oWyfnCdyM8tIP9+IoEmqeaU6rjr7Q3TkMCDK5Bdr/c8fW/AK7IkHYHKWQorXIDDfWax4
 POmkJbE8f9uh9t6f3Civ/oXe8MpSuXoVxmcHG0UqWVAf+AtAo8wfp1dHWXpONdW0C8ZH
 I89lNFhot9tUzRAS5xCphDAjeLSH2U/NYngioxh57Iym0iUEwVvAmZ+FRr5ZMZSzZgZQ
 wgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=F82d7zZ79XULJcUiPCwmZUqCUd6TUXNHO2fQOC9cbHU=;
 b=rd7SIMlfpHujV4uKMyzdaSI7q6mmSUItLppusonNIZIntMQmhuYJ9VLmRNAWJBgDqG
 5aIbRjCi4QOnKe9WvZ7qsENvnXBlVqyPvMJytDdmu3XgHb/3216fn2ptAn1cueVnUFlr
 YHFHHjWMvjAe7BjOzAy97vuPlv16ZBH2CKWk5fuEDXOVWMQgqG1VrAVomimVWKKOSVnT
 DYSxNgukY4TD+Wpng6JtnD+piaCWvVwL5js+buC3LyDaRdlXtWsQBgOzD8zzDjEdHbqA
 hVu9J1HdG2Z1XEA+Uu9GHLBxse4lkKK50bJhEPIBo9ZI+Ck6UUiLdbvjkLb1FMRgPIkK
 /fHg==
X-Gm-Message-State: APjAAAUUEzaAU+TE2Y4gnzIYuh6ZdtdMpLwWupF0EosjtwugqSwRscaF
 c7W6G9+hTL9UeJ6VXOj+kL1km1a9quQ=
X-Google-Smtp-Source: APXvYqxA4BskAvvA3/9yGUYdE+HalpJalh+3/yEyYK4km95wA/TRGbDlUsUDWBTLVg2Rzcj8Iw9NHA==
X-Received: by 2002:a05:620a:1249:: with SMTP id
 a9mr3583286qkl.147.1579884814089; 
 Fri, 24 Jan 2020 08:53:34 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id f23sm3416392qke.104.2020.01.24.08.53.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:53:33 -0800 (PST)
Message-ID: <5E2B210C.2060407@gmail.com>
Date: Fri, 24 Jan 2020 11:53:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-488760a4-6923-45b9-a737-f5062f70c125-1579852625874@3c-app-gmx-bs54>
In-Reply-To: <trinity-488760a4-6923-45b9-a737-f5062f70c125-1579852625874@3c-app-gmx-bs54>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 01/24/2020 02:57 AM, Lukas Haase wrote:
>> On 01/23/2020 12:32 PM, Lukas Haase via USRP-users wrote:
>>> Hi,
>>>
>>> TO MY UNDERSTANDING, the USRP has an internal clock that is different from host clock when running gnuradio (which makes sense because there are buffers etc in between).
>>> Example: I transmit a CW at f=1001, receive it at f=1000 and then use gnuradio to downconvert the remaining 1 MHz I run into trouble (tried it...).
>>>
>>> For this reason, there exist timed commands and the tune_request object with which I can execute commands (LO tuning) at a precice time. For example, with these commands I can phase align tuning between TX/RX at different center frequencies:
>>>
>>>     tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
>>>     tune_req_rx = uhd.tune_request(2*fcenter)
>>>     tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>>>     tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>>>
>>>     now = self.uhd_usrp_sink_0.get_time_now()
>>>     self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
>>>     self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.1))
>>>
>>>     self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>>>     self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>>>
>>>     self.uhd_usrp_source_0.clear_command_time()
>>>     self.uhd_usrp_sink_0.clear_command_time()
>>>
>>> The commands execute execatly at get_time_now() plus 100ms. As far as I understand, these 100ms are to ensure that the host computer has enough time until the USRP processes the clear_command_time function. But it does not relate the exact point in time with anything that exists in gnuradio.
>>>
>>> MY QUESTION: What I am unsure is how to align samples in gnuradio with the time on the USRP. For example, suppose I have an ideal clock signal in gnuradio and I want to perform a timed command EXACTLY at a particular sampling point (e.g. rising edge). How would I go about this?
>>>
>>> The actions I want to execute exactly time aligned with gnuradio include: tuning requests, reading out sensors (PLL sensor when it settled), switching IO pins through the GPIO interface.
>>> For example, I would like to switch a GPIO port exactly once per period of a signal in gnuradio and exactly at the same time (clearly there will be delays but that's OK as long as the delay is fixed).
>>> As another example, I would like to re-tune exactly once in every period of a gnuradio signal. Then I would like to read out when the PLL has settled and generate a binary indicator signal out of it. Plotting the original signal and the indicator signal should tell me exactly (at least sample accuracy) how long the PLL took to settle *relative* to the signal in gnuradio.
>>>
>>>
>>> Thank you very much,
>>> Luke
>> Whatever "dance" you're using to set the USRP time, (presumably
>> something like set_time_unknown_pps), you need to have it derive the
>>     USRP time register from the host time.  The normal code that is
>> emitted in GRC for "unknown_pps" just resets the USRP time to zero.
>>     But you can arrange for it to be the host time (+1 second or
>> something) instead.
>>
>> You haven't indicated whether you're using GRC, or "naked" Gnu Radio
>> programming.
>>
>> General synchronization "things" are discussed in the knowledge base, here:
>>
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
> Hi Marcus,
>
> Thanks. I went through this page a few times and got synchronization between TX/RX (somewhat) running.
>
> I am using GRC but willing to go "naked" where necessary (my main application will still always be grc+GUI).
>
> I guess I still don't understand what exactly what the "USRP time" is and how it related to sample time.
>
> I do not think it makes sense to lock the USRP time to the host time because the host time is independent from the sample time on the host (in gnuradio). Samples are buffered and depending on CPU load, samples may occur earlier or later than expected by CPU time. Say I generate the signal x[n] and the sample rate is 1kS/s, then in a real-time system I can expect each sample to occur exactly every ms. But on my host with gnuradio this is certainly not the case! x[1000] does not necessarily occur 1 seconds (in CPU time) after x[0].
>
> Again, what I want is I generate x[n] in gnuradio. For every, say, (n mod 1000)==0 I want to execute something on the USRP, for example flipping a GPIO which increases the gain of an amplifier ... exactly at the time when the *USRP* processes this sample. Not the host! Because the USRP, to my understanding, is like a realtime system.
>
> Now say the output of the amplifier is fed again into the USRP RX port and I read it back as y[n] from USRP Source.
>
> I will see the effect of the gain change in y[n] ... many samples after I did the request due to latency. But I want that the relative sample difference between x[n] and y[n] is always constant!
>
> Example:
>
> At x[0]    --> change gain to 1 --> at y[523]  I see gain changes to 1
> At x[1000] --> change gain to 2 --> at y[1523] I see gain changes to 2
> At x[2000] --> change gain to 3 --> at y[2523] I see gain changes to 3
>      ....
>
> I hope this example makes it more clear what I mean.
>
> This is just a toy example; in reality I would build x[n] in gnuradio to be a control signal that aligns all the actions in a predicable manner.
>
> Thanks,
> Luke
>
>
>
>
>
>
>
Sample streams from the USRP are time-stamped.  In Gnu Radio, that 
generates a tag when the stream starts, and whenever there's an
  overrun.

In the absence of overruns, you know exactly the sample time from 
knowing the initial time-stamp, and simply counting samples, since
   the sample-rate is known, and fixed.

This is drifting squarely into "how do I do stuff in Gnu Radio", so 
there's a better audience for that on the discuss-gnuradio mailng list.

If this were my problem, I'd probably write a custom block that 
"scheduled things", based on knowing the most recent time tag, and
   the current sample count since the most recent time-tag.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
