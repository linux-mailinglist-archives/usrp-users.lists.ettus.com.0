Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F721F5F6D
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 03:11:37 +0200 (CEST)
Received: from [::1] (port=59000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjBkk-00083W-8S; Wed, 10 Jun 2020 21:11:34 -0400
Received: from mail-qv1-f52.google.com ([209.85.219.52]:43402)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjBkg-0007qc-Cq
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 21:11:30 -0400
Received: by mail-qv1-f52.google.com with SMTP id dp10so1958413qvb.10
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 18:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=k0ZEl+/tRiqpfjLCb+lfe+hnkXUekYP5fTwoXOeK7Sc=;
 b=Q7byAda7xSHFMwo0xzFMug6zyNew49bnxxgOuLYqhR6rTyNMLZyfQ8WsosSYWTgpTQ
 r9tg+2AeTbl8KlnrRuEzEZNOaa0vqRlx+mvt89aL/tVV4ss9XKkR92mtpPQ5NWkilbY1
 Oc1oofPsmeh+oP5wAAFGmNkKjTP0SssSTiuoBy33AqxmIFmVTvAccn/qTm7IsMUBPo74
 9tdGCql8lgxdNlWkTYSftNE3F9qbHrcubSvwgbgiTQ0kbv2CJ4ItfH2aYWtTp20SJG/p
 HkWL45Wieq40k9Tg2EP8eop8LZpGeb3AWThornNq4HWvPpsKhmKdfrXTu5qaKUu8QDCe
 OQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=k0ZEl+/tRiqpfjLCb+lfe+hnkXUekYP5fTwoXOeK7Sc=;
 b=X4wjOpeu7xtS4BGGJYXEdlVvMQWJtJRTFJENNM9dcne/Vmv3zEf8FQDHJXHjw534DY
 hdmx3PcHF2Hr9Sa3Zm0cXkn7YhfrLwn2gkFvMV9ZNpDbD3YQvgIitkC/o9YKoi1A6N8P
 j7JRbogY0C2p89vePAv3id76K/L4imv8y4X9t9fZQ0J9p60igH/lBoGpgggX2xGoxqkb
 gkHYOFOABSP92A9PgJuQ28KlMslxHD3mjOuPgwAc0M5zQc+X35jsa6fH4CFlpvVsmECA
 gYChoNlMeWudvRaENTj0aShHmoLZfPQplPHew/sUFMnICvlhiuc3TqoNRArHrR1NXJnc
 yi1A==
X-Gm-Message-State: AOAM532ImeQyjsHQAVljp5WUqtDoj26XoxMBRmWaSopFhPTfoWciTcn6
 Y1RFBn3ncJ3w3bIRX3azrtcMfYL09xQ=
X-Google-Smtp-Source: ABdhPJwlPrD4433sqXZ0jkb8dL+evmAAw1ary7FwxnsLiKGVqUAq/CuVOMabFCky9yxiH5YB8/XrnA==
X-Received: by 2002:a0c:f991:: with SMTP id t17mr5891943qvn.123.1591837849466; 
 Wed, 10 Jun 2020 18:10:49 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id y129sm1207964qkc.1.2020.06.10.18.10.48
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 18:10:48 -0700 (PDT)
Message-ID: <5EE18498.1090507@gmail.com>
Date: Wed, 10 Jun 2020 21:10:48 -0400
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
Something to consider is that a tuning command is NOT, in general, a 
single register-set to the FPGA.  The FPGA has NO 'inherent' knowledge
   of the various types of peripherals involved in tuning.  So tuning 
will often involve more than one SPI or I2C interaction with whatever RF
   hardware is being used.  This invariably means more than one 
"command" from the FPGAs point-of-view.
> 3.) How can we figure out what is the maximum speed to issue timed commands reliably?
>      What does this depend on and which parameters need to be tweaked?
>
> For example, what is the fastest rate I can issue timed commands (ignoring settling times etc) on a X310 over 10Gbe?
That partially depends on things like which SPI/I2C peripherals are 
involved--those buses run at a fixed and not-steaming-fast rate.
   So even though the FPGA may be able to swallow commands "real fast", 
it won't necessarily be able to complete SPI/I2C bus transactions
   that fast.

My recollection is that the SPI on the X310 operates at perhaps 
1Mbit/sec, but maybe even as sluggish as 400kbit/s.

So, when UHD on the host side is tuning a hardware device it doesn't say 
to the FPGA "hey, could you tune the UBX card to <X> MHz, please?"
    It says "hey, here's an SPI transaction.  Oh, and another one. Oh, 
and maybe another one, too..."


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
