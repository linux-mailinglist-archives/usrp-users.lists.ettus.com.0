Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D301F5FA3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 03:49:18 +0200 (CEST)
Received: from [::1] (port=36752 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjCLD-0004Et-8R; Wed, 10 Jun 2020 21:49:15 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:43673)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjCLA-0004AF-0C
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 21:49:12 -0400
Received: by mail-qt1-f180.google.com with SMTP id j32so3451853qte.10
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 18:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=fIDV/H8x0mgucpGinKf3xqaNmh5/gfWw1ihmQg7LkNA=;
 b=WRp60ThSRY5xs3F+v8RP7YDoTALogcYcKmdi6Q7THVNm+ULeNJo8lNYN3ezp+BFxB7
 6M6pHQ9QQHHee5T3OZFOht3kaRgDw5eWpwyZAG55WmF+lGOmI3eQrSo8/IvcSsDMUytO
 rT/Rm91/fsqkSdpacDr4XzPZNxBSfTiX6uIXHuZGS7sBw/2qN06WWqVY+dQahjVsnlmt
 04f2J0KApvjBi/nOP9Q8zIS106mThqjDmJDnTME0kt56O6rd6eDynXepCbGPlWEmAkn4
 E7ZspdikfyGkTbO3ubAnzjBISotrq+USsqjs0BIRDd1J65bf5l1Lmiz0pFjiglzPhZ3C
 TtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=fIDV/H8x0mgucpGinKf3xqaNmh5/gfWw1ihmQg7LkNA=;
 b=p0sCb1jxs6YWEfLUVLQqoM/x2CrHMuJx8QKhduppoyqRTlNkIj/A73JyBuTuHjyrec
 //kIgjFkcVn5lbiMJkEA4qdJ0IyjQmF9ZzlmuelcWz2/bdITIr2RhDdGscwakFSyVp8m
 HrwuxuxZQ92KDMJayRgPrIKLLVauYsTImexTYtry8u6RSG7MvKUZ4aJXI3/mGpD/1SZN
 TfQc8VmoYRgKhRTKEphy7UDU79fK+TBO/GFzGDYCQ2jZrQsWawFg1gexzcho/eqTN04M
 9FLjzvS7Icyfhu0mIpyfr8lsQSXJKebcowGWjivOyvyPfo9I58ZFuH4UX0FcpYMddwzS
 jaNA==
X-Gm-Message-State: AOAM533TndYx9tV/iDuqq0YhVZMLpAfsbBskT0dcR4eYbc3KGsSV7nOB
 iyKKjet/JreCVj4BCql0pXscBSEXIDk=
X-Google-Smtp-Source: ABdhPJyil4I9JE9qwGu8C6Xv3cUvtI9hGK6yHcOfHgE+GKvrk8b9UwEQrtNJY190Yj8WGzxiMy29ZA==
X-Received: by 2002:ac8:4558:: with SMTP id z24mr6214119qtn.329.1591840111102; 
 Wed, 10 Jun 2020 18:48:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id d9sm1299188qtq.56.2020.06.10.18.48.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 18:48:30 -0700 (PDT)
Message-ID: <5EE18D6D.1060809@gmail.com>
Date: Wed, 10 Jun 2020 21:48:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
 <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
 <CA+JMMq-WJu=uK8jetzZXQvkzMnxQPSf2SJ0p21iS+cNm8Zifhw@mail.gmail.com>
 <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
In-Reply-To: <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

On 06/10/2020 09:00 PM, Lukas Haase via USRP-users wrote:
> Hi Nick,
>
> Good point with Wireshark and coincidentially I tried exactly that today. Both captures were fairly identical. But what's worse, things started to become more unreproducible (for example, depending on which blocks I add).
>
> Again, what not works is that timed commands sometimes are not executed when they are supposed to be.
> I execute them periodically (e.g. every 100ms, 10ms, 1ms), then capture the response and slice them into equal blocks in MATLAB.
> The action of the timed commands (for example, retune or gain change) should always happen at the same time. Instead a few of them (maybe 3%) happen sometime in between and mess up verything.
>
> How would one go to debug this without having to acquire deep Verilog knowledge?
> I am 99.99% positive that the timed commands I issue via tx_command tag are correct.
>
> Are there definite answers to the questions:
>
> 1.) How many commands do the command queues have exactly on the X310? (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD says 5-8 but other sources say 16 or 32).
> 2.) What happens when the command queue is full? Is the command dropped, does USRP crash or anything else? (above link is unclear about that)
>      Can we change this behavior?
> 3.) How can we figure out what is the maximum speed to issue timed commands reliably?
>      What does this depend on and which parameters need to be tweaked?
>
> For example, what is the fastest rate I can issue timed commands (ignoring settling times etc) on a X310 over 10Gbe?
This is actually an ambiguous question.  Do you mean "what is the 
smallest scheduling interval for the commands that will be executed in
   the future?" or "how fast can I issue commands that will ultimately 
be scheduled at a later time?"  In the former, that depends on the
   exact nature of the commands, since they end up actually being 
executed by, for example, an SPI or I2C endpoint, which operates very
   very much slower than a 10GiGe interface.  In the latter, my guess is 
that the FPGA can swallow commands and place them on the queue
   pretty-much as fast as you can issue them over 10GiG. How fast you 
can do that depends very much on your host-side environment, network stack,
   kernel network drivers, kernel latencies, etc.


>
> I am thinking that maybe I am sending timed commands too fast such that the command queue overflows.
> However:
> a.) How can an overflowing command queue explain that timed commands not being executed on time?
> b.) I played around setting send_buff_size to different values, down to send_buff_size=10240 (10kB). If I understand correctly, that means that the USRP should never receive more than 10kB data at once (one chunk holds 10240/(10e6*2*2)=256us at 10MS/s which means the if each frame has one timed command that should support sending a timed command every 256us). Unfortunately nothing changes here.
>
> Using tx_command tag in USRP Source should ensure that the commands never arrive late on the FPGA (otherwise the data would also arrive late and I would get LLLLLLL's but I don't).
>
> I thought the most straight forward would be to debug the FPGA itself but that seems to open more issues that it solves.
>
> Thanks,
> Lukas
>
>   
>
> Gesendet: Mittwoch, 10. Juni 2020 um 19:18 Uhr
> Von: "Nick Foster" <bistromath@gmail.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?
>
> I'd start by using Wireshark. There's a dissector for CHDR packets included in UHD (uhd/tools/dissectors). Wireshark has excellent filtering and analysis tools. You should be able to see your C++-timestamped packet go out, and compare it to the Python generated version. This will take a couple of hours to set up, run, and analyze.
>   
> Following that, if you still can't find a difference, recompile an FPGA image which includes an ILA core, hooked up to some radio signals. Try to avoid having to do this, because it will take a long time, and you'll get very deep into the radio core. On the plus side, after a week or so of digging, you'll have a much better understanding of how RFNoC works under the hood. =)
>   
> Nick
>
> On Wed, Jun 10, 2020 at 1:47 PM Lukas Haase via USRP-users <usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Just some additional info: I enabled the maximum possible debug on the host (UHD_LOG_CONSOLE_LEVEL=trace and debug_level = debug in .gnuradio/config.conf) and sent both versions to a file.
> Again, the diff is identical!
> (This debug contains the debug messages from gr-uhd but uhd itself does not seem to generate any debug/trace messages for timed commands).
>
> Is there a way to somehow report back to the host when the command queue overflows or a timed command could not be processed at the planned time (late command)?
>
> According to https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD] "An overflow of the command queue will result in a system halt and often requires a physical reset of the FPGA.".  This does not sound something that should just be silently dropped!
>
> This works for data streams so shouldn't it work for timed commands too?
>
> The USRP feels like a black box ... commands are being sent but I have no idea what happens inside or if they are even executed (except, of course, things are "not working")
>
>
>> Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr
>> Von: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at]>
>> An: "USRP-userslists.ettus.com[http://USRP-userslists.ettus.com]" <usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]>
>> Betreff: How to debug timed commands on FPGA side?
>>
>> Hello,
>>
>> Is there any (somewhat straight forward) way to debug timed commands on the FPGA?
>> In particular, I want to know:
>> 1.) if any timed command is not executed as timed command but right away (because it had a timestamp but the command was late so it was executed right away)
>> 2.) if any command queue overruns
>> 3.) Any other sort of information that causes timed commands to misbehave
>>
>> I use "tx_command" for USRP Sink to send timed commands. The "tx_command" tags are injected with an embedded python block. I use "Tag Debug" and save all tags to a text file. Works.
>> Then, in exactly the same block diagram, I replace the embedded python block with my C++ implementation that generates tags.
>> Suddenly, some timed commands do not execute at the right moment any more (these are just few and consistent across re-runs and reboots).
>>
>> However, the tags generated by boths blocks are absolutely IDENTICAL! A diff between the "tx_command" outputs results in NO differences. Hence I need to know what the FPGA actually processes in both cases.
>>
>> Thanks
>> Lukas
>>
>>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
