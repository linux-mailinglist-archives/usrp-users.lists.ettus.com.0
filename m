Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0ED1F6DCC
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 21:13:04 +0200 (CEST)
Received: from [::1] (port=46248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjSdI-00048e-6n; Thu, 11 Jun 2020 15:13:00 -0400
Received: from mout.gmx.net ([212.227.17.21]:39733)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jjSdE-00044G-Kl
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 15:12:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591902735;
 bh=v30D5U6h/lhpNTuFsQ8M1vdw6MWi+3qO35RDZBojlP4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VsMDSKZfqvQ6/t3d6dukkEG5iuDe+t1R8ie/iRznSX4uSnBVxAdbWC0K25QyX0sXF
 sC2wmsSIsoYYyyDSXQ5PFBRuzSjYVFtzzJVH9bd8tq0+CduKdXgqs2EtRoYdH+fp5f
 6Cf0zDlmwl3WU6L4ZwGKFxmIm2D/ZYVM96AhVroU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bap40.server.lan [172.19.172.110]) (via HTTP); Thu, 11 Jun 2020
 21:12:15 +0200
MIME-Version: 1.0
Message-ID: <trinity-7cf7cd06-3f84-4908-b884-01aea4bb33fa-1591902735326@3c-app-gmx-bap40>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 11 Jun 2020 21:12:15 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAL7q81tN0ESxpuFsOdsRT_T2MgQnB3yy-=YvMoMi5c1wEe+OCQ@mail.gmail.com>
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
 <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
 <CA+JMMq-WJu=uK8jetzZXQvkzMnxQPSf2SJ0p21iS+cNm8Zifhw@mail.gmail.com>
 <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
 <CAL7q81tN0ESxpuFsOdsRT_T2MgQnB3yy-=YvMoMi5c1wEe+OCQ@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:qVILay7Qz3KdQ3HJ7z3DG72cP6ZcJFAuciAC3JrQL3p/Y9joyYUbgEhqZOYVinUbk/KL9
 UZ4qOVeEVA5NA520GHiZV9xCk7IJT06Fo+vP6Dq6Wfsndd5dBDBUy+dLfb+152f1bjgbegyewP1Q
 7mF+A67L6vGt1yHe+uazi1zXquwVVyZAblo9Yskejl6gMh6QeEuR+DO4RWwFM3Ucc18vLNRT+G1p
 MbjIIXxC4U3xRuH4GHTLrS8uaM+tNn/W8zPzJtf3XB6ZtCDZRZKzlHm7/FYhFXSX70EYQsFdMdVQ
 4s=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NvuUBj1Yuns=:CsyTDqNtxFRaNWN/jBdw9h
 HuwI51c/XbCDx8klyf45zNUqHWnXjJ0+BmFd8HYMKFEzjD0tb6GQ6OdkwLmpP414t2cMmQOAM
 hNiWKz3YmaNBFSRtCqliUIUHpw09Guo+3SP6Neo8MKZU4w6YSXGKgnqF3wPfMORdIzRKsOfbe
 aswarEdmEX1+BuyGp7020EKSeGWM0Efp71kRMTVlzgvA2UlL4JcxzCmh21pte1H6jts964aUh
 rRrhlfnEvi557J1gX2CCWHtp+Ly6oapa0ectPQT/M1v1EfKrJsA7iYmwYdtMrn0mPnKTMa4ef
 eyeEGdS2osOVBMJQ29Uy8IIzAgH3sRVmNee1rz3uNgYhL1bpbE7KUa+eaA36T4ftNMuo0zngS
 j4Hc/7BP8ctLnhaSdYwlR/shCMh0At6bSPWnHMt1ZueyiqXpFDzrtCC70d6Nu44dgv1jgcJTJ
 0I/6StmAEJMJDRfwQ6hPp8ku7Qg7SYWXth8Z6dHMZKCJRGXav4eVncj65vybDKg1OhE2sifKZ
 SQsm/bdpCi1ftSioYFLOZQtQyuURyPempYPXrjwfnb1WaTnz8mEDobH2gCpnv20ICf+y3Eo4V
 epB19010GvDuid+17awgHOdFPXSpsinjLImKSq24p2CwNTvXE/xirOwhY9n4SnKyMS1nBxeiJ
 M885z2YYMKcggBDA55Y9DZeAxKtAYI4H82oHYP9It8f+y1JhMeuJeAkvBTNkY0iJbu/4=
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

Hi Marcus,

> On 06/10/2020 09:00 PM, Lukas Haase via USRP-users wrote:
>> Hi Nick,
>>
>> Good point with Wireshark and coincidentially I tried exactly that
>> today. Both captures were fairly identical. But what's worse,
>> things started to become more unreproducible (for example,
>> depending on which blocks I add).
>>
>> Again, what not works is that timed commands sometimes are not
>> executed when they are supposed to be. I execute them periodically
>> (e.g. every 100ms, 10ms, 1ms), then capture the response and slice
>> them into equal blocks in MATLAB. The action of the timed commands
>> (for example, retune or gain change) should always happen at the
>> same time. Instead a few of them (maybe 3%) happen sometime in
>> between and mess up verything.
>>
>> How would one go to debug this without having to acquire deep
>> Verilog knowledge? I am 99.99% positive that the timed commands I
>> issue via tx_command tag are correct.
>>
>> Are there definite answers to the questions:
>>
>> 1.) How many commands do the command queues have exactly on the
>> X310?
>> (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
>> says 5-8 but other sources say 16 or 32). 2.) What happens when the
>> command queue is full? Is the command dropped, does USRP crash or
>> anything else? (above link is unclear about that) Can we change
>> this behavior?
> Something to consider is that a tuning command is NOT, in general, a
>  single register-set to the FPGA.  The FPGA has NO 'inherent'
> knowledge of the various types of peripherals involved in tuning.  So
> tuning will often involve more than one SPI or I2C interaction with
> whatever RF hardware is being used.  This invariably means more than
> one "command" from the FPGAs point-of-view.

Yes, I am aware of this.
I deduce from Jonathon's response that the mapping of "high level command" to "register writes" (which may eventually result in the SPI/I2C interactions) happens in uhd on the host.

I just can't find where this is happening.

Example: tuning requests eventually call tune_xx_subdev_and_dsp from multi_usrp and set values in dsp_subtree and rf_fe_subtree. But where are these fetched, translated to register addresses/values (chdr.cmd.addr, chdr.cmd.val) etc?

>> 3.) How can we figure out what is the maximum speed to issue timed
>> commands reliably? What does this depend on and which parameters
>> need to be tweaked?
>>
>> For example, what is the fastest rate I can issue timed commands
>> (ignoring settling times etc) on a X310 over 10Gbe?
> That partially depends on things like which SPI/I2C peripherals are
> involved--those buses run at a fixed and not-steaming-fast rate. So
> even though the FPGA may be able to swallow commands "real fast", it
> won't necessarily be able to complete SPI/I2C bus transactions that
> fast.
>
> My recollection is that the SPI on the X310 operates at perhaps
> 1Mbit/sec, but maybe even as sluggish as 400kbit/s.
>
> So, when UHD on the host side is tuning a hardware device it doesn't
> say to the FPGA "hey, could you tune the UBX card to <X> MHz,
> please?" It says "hey, here's an SPI transaction.  Oh, and another
> one. Oh, and maybe another one, too..."
As I have written in my original post "ignoring analog settlings etc". For now it's really about making sure that the *FPGA* actually executes stuff when it should and that seems to fail (even for a pure DSP retune).

Best,
Lukas

>> I am thinking that maybe I am sending timed commands too fast such
>> that the command queue overflows. However: a.) How can an
>> overflowing command queue explain that timed commands not being
>> executed on time? b.) I played around setting send_buff_size to
>> different values, down to send_buff_size=10240 (10kB). If I
>> understand correctly, that means that the USRP should never receive
>> more than 10kB data at once (one chunk holds 10240/(10e6*2*2)=256us
>> at 10MS/s which means the if each frame has one timed command that
>> should support sending a timed command every 256us). Unfortunately
>> nothing changes here.
>>
>> Using tx_command tag in USRP Source should ensure that the commands
>> never arrive late on the FPGA (otherwise the data would also arrive
>> late and I would get LLLLLLL's but I don't).
>>
>> I thought the most straight forward would be to debug the FPGA
>> itself but that seems to open more issues that it solves.
>>
>> Thanks, Lukas
>>
>>
>>
>> Gesendet: Mittwoch, 10. Juni 2020 um 19:18 Uhr Von: "Nick Foster"
>> <bistromath at gmail.com> An: "Lukas Haase" <lukashaase at gmx.at>
>> Betreff: Re: [USRP-users] How to debug timed commands on FPGA
>> side?
>>
>> I'd start by using Wireshark. There's a dissector for CHDR packets
>> included in UHD (uhd/tools/dissectors). Wireshark has excellent
>> filtering and analysis tools. You should be able to see your
>> C++-timestamped packet go out, and compare it to the Python
>> generated version. This will take a couple of hours to set up, run,
>> and analyze.
>>
>> Following that, if you still can't find a difference, recompile an
>> FPGA image which includes an ILA core, hooked up to some radio
>> signals. Try to avoid having to do this, because it will take a
>> long time, and you'll get very deep into the radio core. On the
>> plus side, after a week or so of digging, you'll have a much better
>> understanding of how RFNoC works under the hood. =)
>>
>> Nick
>>
>> On Wed, Jun 10, 2020 at 1:47 PM Lukas Haase via USRP-users
>> <usrp-users at lists.ettus.com[mailto:usrp-users at
>> lists.ettus.com]> wrote:Just some additional info: I enabled the
>> maximum possible debug on the host (UHD_LOG_CONSOLE_LEVEL=trace and
>> debug_level = debug in .gnuradio/config.conf) and sent both
>> versions to a file. Again, the diff is identical! (This debug
>> contains the debug messages from gr-uhd but uhd itself does not
>> seem to generate any debug/trace messages for timed commands).
>>
>> Is there a way to somehow report back to the host when the command
>> queue overflows or a timed command could not be processed at the
>> planned time (late command)?
>>
>> According to
>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD]
>> "An overflow of the command queue will result in a system halt and
>> often requires a physical reset of the FPGA.".  This does not sound
>> something that should just be silently dropped!
>>
>> This works for data streams so shouldn't it work for timed commands
>> too?
>>
>> The USRP feels like a black box ... commands are being sent but I
>> have no idea what happens inside or if they are even executed
>> (except, of course, things are "not working")
>>
>>
>>> Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr Von: "Lukas Haase"
>>> <lukashaase at gmx.at[mailto:lukashaase at gmx.at]> An:
>>> "USRP-userslists.ettus.com[http://USRP-userslists.ettus.com]"
>>> <usrp-users at lists.ettus.com[mailto:usrp-users at
>>> lists.ettus.com]> Betreff: How to debug timed commands on FPGA
>>> side?
>>>
>>> Hello,
>>>
>>> Is there any (somewhat straight forward) way to debug timed
>>> commands on the FPGA? In particular, I want to know: 1.) if any
>>> timed command is not executed as timed command but right away
>>> (because it had a timestamp but the command was late so it was
>>> executed right away) 2.) if any command queue overruns 3.) Any
>>> other sort of information that causes timed commands to
>>> misbehave
>>>
>>> I use "tx_command" for USRP Sink to send timed commands. The
>>> "tx_command" tags are injected with an embedded python block. I
>>> use "Tag Debug" and save all tags to a text file. Works. Then, in
>>> exactly the same block diagram, I replace the embedded python
>>> block with my C++ implementation that generates tags. Suddenly,
>>> some timed commands do not execute at the right moment any more
>>> (these are just few and consistent across re-runs and reboots).
>>>
>>> However, the tags generated by boths blocks are absolutely
>>> IDENTICAL! A diff between the "tx_command" outputs results in NO
>>> differences. Hence I need to know what the FPGA actually
>>> processes in both cases.
>>>
>>> Thanks Lukas
>>>
>>>
>>
>>
>> _______________________________________________ USRP-users mailing
>> list USRP-users at lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
