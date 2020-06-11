Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E67C1F61CA
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 08:38:06 +0200 (CEST)
Received: from [::1] (port=51098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjGqh-000836-Ho; Thu, 11 Jun 2020 02:38:03 -0400
Received: from mout.gmx.net ([212.227.17.21]:57765)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jjGqd-0007zP-07
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 02:37:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591857437;
 bh=tjRZUaWFiPQRYKfzTHhMXFWcv8d+I7oWjeUNzrIEqUM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AgER9Lpdxso/VOTwNyNoGWXzOWdqBtO1jOkUR8NUptST3jX7A/KbNQX6OOoUa22r/
 tNwKMFNBJLEh8oiqrmkhbukuoXtcGVwyn/OKpdBj9eBwTZKapmxusvK6bvbH4EniT9
 fTL4KS8sT8Ir13XfygyyqHyQs/r4V50XiUPwm/tY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bap06.server.lan [172.19.172.76]) (via HTTP); Thu, 11 Jun 2020
 08:37:17 +0200
MIME-Version: 1.0
Message-ID: <trinity-2b6f3f5c-e1a8-477e-8951-ea74285478d5-1591857437779@3c-app-gmx-bap06>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 11 Jun 2020 08:37:17 +0200
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
X-Provags-ID: V03:K1:o/HlEFDWTpBKRD6IMRO3B8w+3OSKoVbKgZtVv5EVTjzbkVinz/8pqswHOvfiK/PgisPCs
 JWP3b/BIp3LkigOLkqimHhWTmpfS4yUkzKT0kbSI4l4Ey1k9qSftUai8gCje78aHKxmm6kBPdwCX
 P8FDNEVWQB0inNkxwOpsp7xZUPfiG07rnzlntxbPMXCoiV3D7wW1yGJ3AtVdYHe8hI+Ijym6vEud
 h6PAY4ZfFSjGekqoFN06KgkRvoqIqlSdAPyXIfTJ9UKddApcdbLt6sMAAYuB4tNIm8nYl4va84Ek
 nw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sk5bFA2tI/s=:JoNZqv/v5MA2u7Vq6kFybA
 dEQVoqLhfTZh7AOCCuBlFm4z7MBAZAVKIsu5OojpAt/enCbTC9zq1pcU9ITs8QrT8Q1ediWuS
 Z3LoVBgs9nFcJL2sqXTwEKkWdv0WPWX1wqQVbw7TY+BQ7h9TA6g6yuTwmTED9ISqBe/5knpnn
 U8NBGbu9b7QaIGzJRjI5uWI6W6B9WQoDX3VHGu1/pz0dkW+TpGynZG9EMY9jjm/qEe/7WgAc5
 jZoeyWR8xX6Pwn4jZ3pPrXko8TKlRlrXUo5XiJ7JUwYJbTxVvl6AP/CjgVrM3w1Mr5FGmSsA/
 U6CsI4kx5qBIEBeIJf71h6oBjhxYbQOAr/MmrHP6mD8yRQxIbD7yOh706PGwp5rfAy86kQGke
 BPVAtqBsDQyBj6EAy7RuJu7JTYIc2np+rjNtRdiOuQzCC4h5fxDIsAvkxCSYMv0gqU+DpcS8v
 9bbmT1dl2Z6Y7ptduVsnu208nNP7YYJWY6craea6qas9kUWXWXYPbUKIxleApPxu0OMzgR0HB
 ydlmz+S5iNs3LXHRWqEvjXqm46dkilVDQ3En8gH2jgOb7JaUxa1tiszYMPusfKc01GgKUN7Lo
 Mfz5z6REIBF9LOsHY1/e+nmDUPQZ1yDVPZfHSvX6OVXV7wtg12Reqhlh9XIIqwoJAqsrD8tBt
 tSH5/jHemzkhdHkyfKlHWban9kXXO5x2aKC2r0us44J9w9OEm/G98viMUSFa1YWrmpEcLPRLU
 plu+ELoXF+N8/qMJH3AtNv/QR649fF9hge5m2hKszkJy3UhYuo7YkijNyRPZHyAbPBa7HIplA
 E/hYXE6
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
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
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

Hi Jonathon,

This is extremely useful information, thank you!
One more facet I was not aware of:

On 2020-06-11 01:15, Jonathon Pendlum wrote:
> Hi Lukas,
>
>     2.) What happens when the command queue is full? Is the command
>     dropped, does USRP crash or anything else? (above link is unclear
>     about that)
>         Can we change this behavior?
>
>
> UHD is aware of the size of the command FIFOs in each RFNoC block. It
> keeps track of the number of commands in flight and uses the response
> packets to know when those commands have been consumed.

Wow, did not expect that.
So uhd knows which commands map to which register(s) and which RFNoC block?

Is there any pointer where this is implemented in uhd? I once tried to find the parts where the timed commands are actually sent out but gave up because things went too complicated.

I feel this would be the perfect place to add debug statements: each high-level timed command, in which register writes it translates, what the timestamp is, when command has been "marked" as consumed etc.

Before continuing the discussion let me remind what I am trying to debug: Timed commands are (seemingly) not executed as timed commands.

Example: This shows the case where everything works. I split the capture into T parts (in this case T=2000 or 20ms) and plot them on top. Everything aligns well:
https://snipboard.io/g40lDY.jpg

This shows the same example but not working:
https://snipboard.io/uqD31w.jpg

As can be seen the vast majority executes at the same time but there are some outliers that definitely do not execute at the given time.

When I send a data packet and it is too late I receive a string of LLL. So I know I was late. However, for timed commands it seems I do not get any feedback. The command is just executed "whenever", which screws up things.

So can I be sure that in my second example above, the timed command was *late* and hence did not execute synchronously?

If this is true, then the right question to ask is: Under which conditions can timed commands be late (but data packets not)?

Based on my experiments this seems to be very dependent on buffers in gnuradio. For example, if I combine transmitted and received data (and hence need large buffers) the timed commands are not executed properly.

Since UHD "keeps track of the number of commands in flight": Can it be that the timed commands are held back on the UHD side while the data is still send through the USRP and when the held back commands are finally reaching the USRP they are late?

This might also explain the relation with buffers and the rate of timed commands: If gnuradio has large buffers it could also accumulate lots of tx_command tags (=timed commands) which are then sent at once to UHD when the work function is called. UHD streams all the data (which arrives on time at USRP) but holds back timed commands because the command queues are full. Once they execute, they are late.

Does this sounds like a plausible explanation?
If yes, what is the way to tackle this properly?

> Therefore, the
> command FIFO should never get full (famous last words). Of course, it is
> always possible there is a bug. For example, maybe UHD doesn't properly
> track FIFO fullness when using timed versus untimed commands. Here is a
> FPGA code tweak worth trying that is quicker than chipscope:
>
> In cmd_pkt_proc.v, change line 70 from:
> axi_fifo #(.WIDTH(65), .SIZE(FIFO_SIZE)) axi_fifo (
> to
> axi_fifo #(.WIDTH(65), .SIZE(FIFO_SIZE+2)) axi_fifo (
>
> This change will quadruple the size of the command FIFOs without UHD
> being aware of it. If you still have the same issue, then it is very
> unlikely to be due to the command FIFO in the radio core overflowing
> since there is plenty of room for extra commands. If you want to be
> absolutely certain the command FIFO is not overflowing, then you'll need
> to use chipscope to look at the cmd_tvalid and cmd_tready signals in
> cmd_pkt_proc.v. If cmd_tvalid == 1 and cmd_tready == 0 ever occurs, that
> is an overflow.

Very great!
I am now more confident that the FIFO is actually not overflowing but I will still give this a shot.

> If somehow the command FIFO gets full, then a lockup might occur in the
> crossbar and that would be very obvious as you'd have to hard reset to
> clear it. Also, even if commands are late, they are still processed
> instead of being dropped.

Right, so I think this is what I am seeing, see above.

Best,
Lukas


> On Wed, Jun 10, 2020 at 9:00 PM Lukas Haase via USRP-users
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Nick,
>
>     Good point with Wireshark and coincidentially I tried exactly that
>     today. Both captures were fairly identical. But what's worse, things
>     started to become more unreproducible (for example, depending on
>     which blocks I add).
>
>     Again, what not works is that timed commands sometimes are not
>     executed when they are supposed to be.
>     I execute them periodically (e.g. every 100ms, 10ms, 1ms), then
>     capture the response and slice them into equal blocks in MATLAB.
>     The action of the timed commands (for example, retune or gain
>     change) should always happen at the same time. Instead a few of them
>     (maybe 3%) happen sometime in between and mess up verything.
>
>     How would one go to debug this without having to acquire deep
>     Verilog knowledge?
>     I am 99.99% positive that the timed commands I issue via tx_command
>     tag are correct.
>
>     Are there definite answers to the questions:
>
>     1.) How many commands do the command queues have exactly on the
>     X310?
>     (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
>     says 5-8 but other sources say 16 or 32).
>     2.) What happens when the command queue is full? Is the command
>     dropped, does USRP crash or anything else? (above link is unclear
>     about that)
>         Can we change this behavior?
>     3.) How can we figure out what is the maximum speed to issue timed
>     commands reliably?
>         What does this depend on and which parameters need to be tweaked?
>
>     For example, what is the fastest rate I can issue timed commands
>     (ignoring settling times etc) on a X310 over 10Gbe?
>
>     I am thinking that maybe I am sending timed commands too fast such
>     that the command queue overflows.
>     However:
>     a.) How can an overflowing command queue explain that timed commands
>     not being executed on time?
>     b.) I played around setting send_buff_size to different values, down
>     to send_buff_size=10240 (10kB). If I understand correctly, that
>     means that the USRP should never receive more than 10kB data at once
>     (one chunk holds 10240/(10e6*2*2)=256us at 10MS/s which means the if
>     each frame has one timed command that should support sending a timed
>     command every 256us). Unfortunately nothing changes here.
>
>     Using tx_command tag in USRP Source should ensure that the commands
>     never arrive late on the FPGA (otherwise the data would also arrive
>     late and I would get LLLLLLL's but I don't).
>
>     I thought the most straight forward would be to debug the FPGA
>     itself but that seems to open more issues that it solves.
>
>     Thanks,
>     Lukas
>
>
>
>     Gesendet: Mittwoch, 10. Juni 2020 um 19:18 Uhr
>     Von: "Nick Foster" <bistromath@gmail.com <mailto:bistromath@gmail.com>>
>     An: "Lukas Haase" <lukashaase@gmx.at <mailto:lukashaase@gmx.at>>
>     Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?
>
>     I'd start by using Wireshark. There's a dissector for CHDR packets
>     included in UHD (uhd/tools/dissectors). Wireshark has excellent
>     filtering and analysis tools. You should be able to see your
>     C++-timestamped packet go out, and compare it to the Python
>     generated version. This will take a couple of hours to set up, run,
>     and analyze.
>
>     Following that, if you still can't find a difference, recompile an
>     FPGA image which includes an ILA core, hooked up to some radio
>     signals. Try to avoid having to do this, because it will take a long
>     time, and you'll get very deep into the radio core. On the plus
>     side, after a week or so of digging, you'll have a much better
>     understanding of how RFNoC works under the hood. =)
>
>     Nick
>
>     On Wed, Jun 10, 2020 at 1:47 PM Lukas Haase via USRP-users
>     <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>[mailto:usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>]>
>     wrote:Just some additional info: I enabled the maximum possible
>     debug on the host (UHD_LOG_CONSOLE_LEVEL=trace and debug_level =
>     debug in .gnuradio/config.conf) and sent both versions to a file.
>     Again, the diff is identical!
>     (This debug contains the debug messages from gr-uhd but uhd itself
>     does not seem to generate any debug/trace messages for timed commands).
>
>     Is there a way to somehow report back to the host when the command
>     queue overflows or a timed command could not be processed at the
>     planned time (late command)?
>
>     According to
>     https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD]
>     <https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD%5Bhttps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD%5D>
>     "An overflow of the command queue will result in a system halt and
>     often requires a physical reset of the FPGA.".  This does not sound
>     something that should just be silently dropped!
>
>     This works for data streams so shouldn't it work for timed commands too?
>
>     The USRP feels like a black box ... commands are being sent but I
>     have no idea what happens inside or if they are even executed
>     (except, of course, things are "not working")
>
>
>     > Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr
>     > Von: "Lukas Haase" <lukashaase@gmx.at
>     <mailto:lukashaase@gmx.at>[mailto:lukashaase@gmx.at
>     <mailto:lukashaase@gmx.at>]>
>     > An: "USRP-userslists.ettus.com
>     <http://USRP-userslists.ettus.com>[http://USRP-userslists.ettus.com]" <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>[mailto:usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>]>
>     > Betreff: How to debug timed commands on FPGA side?
>     >
>     > Hello,
>     >
>     > Is there any (somewhat straight forward) way to debug timed
>     commands on the FPGA?
>     > In particular, I want to know:
>     > 1.) if any timed command is not executed as timed command but
>     right away (because it had a timestamp but the command was late so
>     it was executed right away)
>     > 2.) if any command queue overruns
>     > 3.) Any other sort of information that causes timed commands to
>     misbehave
>     >
>     > I use "tx_command" for USRP Sink to send timed commands. The
>     "tx_command" tags are injected with an embedded python block. I use
>     "Tag Debug" and save all tags to a text file. Works.
>     > Then, in exactly the same block diagram, I replace the embedded
>     python block with my C++ implementation that generates tags.
>     > Suddenly, some timed commands do not execute at the right moment
>     any more (these are just few and consistent across re-runs and reboots).
>     >
>     > However, the tags generated by boths blocks are absolutely
>     IDENTICAL! A diff between the "tx_command" outputs results in NO
>     differences. Hence I need to know what the FPGA actually processes
>     in both cases.
>     >
>     > Thanks
>     > Lukas
>     >
>     >
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
