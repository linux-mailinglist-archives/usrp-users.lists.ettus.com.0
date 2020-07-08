Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4485A218D5E
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jul 2020 18:44:46 +0200 (CEST)
Received: from [::1] (port=44050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtDBU-0005kT-Ng; Wed, 08 Jul 2020 12:44:36 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:38049)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <andy@silverblocksystems.net>)
 id 1jtDBQ-0005Yz-Ik
 for usrp-users@lists.ettus.com; Wed, 08 Jul 2020 12:44:32 -0400
Received: by mail-qt1-f169.google.com with SMTP id a32so4771190qtb.5
 for <usrp-users@lists.ettus.com>; Wed, 08 Jul 2020 09:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silverblocksystems-net.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=w7N7s7l0SAM7oEKi/1FhOkoL4xlUe4UkBMsO35RBvBk=;
 b=hiV4IKQgJ9D37ClPR9MwxyBrl2YEIaiVzvyzBwU3LN75penrybxsOSmANmCP0Mmb1c
 e7NHvMSxZjc69EOwhNysIqJCAxCiCilKZaovq5zaXmJ5dTKCyyjbWEMcxOcW/dGkNHRy
 P6HoEQEGq2OaIUW/MPmkHvptsoKcPbG0LhedeMfQPikm34YN1uDT+0C6uT0AXYiCx8M+
 oSZcUBcZ7uXIixXDaphXg4AxahQ6cz8vVLn1AsIo6dQnCVBJP++4hcokqy/RN6ICZ0Na
 8xv+3Fk2MSWWvvpqehpyQqWYOEmhvf0FNOLwEgoorxez9oCAckNP7lrvPbXrMyAmbsjX
 YUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=w7N7s7l0SAM7oEKi/1FhOkoL4xlUe4UkBMsO35RBvBk=;
 b=mrdvBG0q4hH8VI7TakawygbfYKvKYGWGvxbXe3m+kdtXcxP6gdc0Ac/3A7mAfq1s6e
 smp8WjKUo6clkfgHhI36GREhXoHex0giKuLCBYtTP2kv5byXQeCuqS/NKMwkbX9EDhZT
 jH6HkxxTJz3ETIfcFtIvtGaOQaKQM0F9Szmc3PePHj44FLeNkbIEJrD/GtSOImXJCgw/
 zhsf+JwwiLrDjYCKidiIWI4dk5mAETzUtr6yxNEpVTq4ezRobamk2MpRY0qY7XsDYqD0
 6hop8O7CegmwVSjD893Lveq2pdZYqCLZcuAVolGbByYGnY2ap9x1gI5+xCbRHEk36o/E
 7rSw==
X-Gm-Message-State: AOAM531pV+yJUAqqbSmMKIHy9lGDu9oihIodVKXpI2dIQdzajpLsNLKv
 +vbTzfxKQRhWNXSiz2COcMw1g/e4iC5JzA==
X-Google-Smtp-Source: ABdhPJyqsbnqcg/Agm8wLYtjRePz/sZR4f+Za8AGolYcC4qe9jhffRfzMWvQUz01jvuGP6JhpGKE8g==
X-Received: by 2002:aed:2864:: with SMTP id r91mr16239095qtd.311.1594226631787; 
 Wed, 08 Jul 2020 09:43:51 -0700 (PDT)
Received: from localhost.localdomain (static-72-9-14-85.md.cpe.atlanticbb.net.
 [72.9.14.85])
 by smtp.gmail.com with ESMTPSA id k2sm348034qkf.127.2020.07.08.09.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 09:43:51 -0700 (PDT)
Message-ID: <a02a7a06e79f3a8ce991d2445148d0a74898d45b.camel@silverblocksystems.net>
To: usrp-users@lists.ettus.com
Cc: lelentukh@mitre.org
Date: Wed, 08 Jul 2020 12:43:50 -0400
In-Reply-To: <mailman.64.1594224003.23518.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.64.1594224003.23518.usrp-users_lists.ettus.com@lists.ettus.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] x300 Timeout errors on receiving continuous stream
 (w/ Redhawk SDR)
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
From: Andy Walls via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andy Walls <andy@silverblocksystems.net>
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

> Date: Tue, 7 Jul 2020 17:00:08 +0000
> From: Lawrence L Elentukh 
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] x300 Timeout errors on receiving continuous
> 	stream (w/ Redhawk SDR)
> 
> Hello,
> 
> Thank you for getting back to me. I implemented your suggestion;
> after stopping the stream I added a recv() to the service function
> that continues to receive while the usrp is stopped until it sees a
> timeout error. I can see that it stops, then tries to receive from
> the usrp and sees a single timeout error, as expected. Afterwards,
> issuing a start command works for a few runs, but again I encounter a
> series of timeout errors after a number of runs.
> 
> The stop command is issued as follows:
> > uhd::stream_cmd_t
> > stream_cmd_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
> > stream_cmd_stop.stream_now = false;
> > usrp_device_ptr->issue_stream_cmd(stream_cmd_stop,
> > frontend_tuner_status[tuner_id].tuner_number);
> 
> (The tuner id of all the start and stop commands, as well all timeout
> errors, is ?0?).
> 
> Is there anything else I can try?

When I had timeout problems with an X310, it was the Ethernet SFP
adapter that was the cause of the problem.  Low quality SFP adapters
can garble critical control packets.

Try using a Direct Attached Copper (DAC) cable, which eliminates the
SFPs as a potential problem, and see if the problem persists.

If the SFPs are indeed the problem, you should junk the ones you have
and buy better quality ones.

-Andy 


> Thanks,
> Lawrence
> Hello,
> 
> I am experiencing issues where the uhd::recv() function returns a
> series of unrecoverable timeout errors, I have seen similar questions
> on the mailing list but none that have been resolved or whose
> resolution helped me. The front end interfacing with the USRP
> connects to the device and runs using STREAM_MODE_START_CONTINUOUS,
> continually receiving samples. Then our codebase connects to it via
> redhawk's waveform connections and the redhawk usrp_uhd front-end
> pushes the samples received downstream to our receiver. The issue is
> that after a few runs of our code (which doesn't start or stop the
> stream from the redhawk frontend), I end up getting time-out errors
> from the uhd::recv() return code, and all subsequent attempts to
> receive samples see this error. Information about the system is as
> follows:
> 
> USRP: x310
> Interface: 10GigE, with appropriate MTU and network memory
> configurations
> Sampling Rate: 200e6/6 (33.33MHz)
> Single channel Rx
> UHD Version: 3.15.LTS
> 
> I am using the Redhawk SDR as a platform, with our own code base as a
> receiver, and am attempting to make changes to both my local copy of
> the redhawk-usrp_uhd front-end tuner component and our own code to
> resolve this issue, however all interactions with UHD are through the
> redhawk component (which can be found here: 
> https://github.com/RedhawkSDR/USRP_UHD/blob/master/cpp/USRP_UHD.cpp#L1582
> )
> 
> Things I have tried:
> * Starting/Stopping stream between receiver runs
> * Increasing receive timeout (up to 1 sec)
> * Resetting metadata between receives
> * Clearing buffers (dropping samples) when not running receiver
> 
> Note: I am able to run the receiver without issue on the first few
> runs (for durations up to 20 minutes), however after 3-5 runs, all
> further runs end up reporting timeout errors.
> 
> This seemed to happen to me if I don't explicitly shut down the
> stream and keep reading until I get timeouts or no samples received
> for all streams.
> 



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
