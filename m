Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB793190479
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 05:25:20 +0100 (CET)
Received: from [::1] (port=37892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGb7t-0000AQ-LG; Tue, 24 Mar 2020 00:25:17 -0400
Received: from mout.gmx.net ([212.227.17.20]:33719)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jGb7p-0008VF-D5
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 00:25:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585023872;
 bh=RwpApbHlbyF/OAomi3qFLbudKaBsIbgoRn3ZBWdYHwA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZDsSChYlveKgDoBxUbjRdZj5caSLinZQ8KPyyjj/vQOM7YR/MMxB5zN/1JAFFqHQe
 hMbiP6tyKsBUHjBn3E+9/hMz8iczd9pVpy1wHJnySR3tjL13cAxvbJGA6EFqWV/BM7
 2ByjhQ/o9uYFfNxjqp9G1jMRPL2kiql1lhOQKJ6s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bs25.server.lan [172.19.170.77]) (via HTTP); Tue, 24 Mar 2020
 05:24:32 +0100
MIME-Version: 1.0
Message-ID: <trinity-7c07112b-2119-4cd9-a79a-d3dc63ef7cbf-1585023872132@3c-app-gmx-bs25>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 24 Mar 2020 05:24:32 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E7986C3.7040406@gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <5E6BC2E8.20108@gmail.com>
 <trinity-d7f908f5-bedb-43b2-b687-8e8632475dc0-1585019285999@3c-app-gmx-bap77>
 <5E798004.4040903@gmail.com>
 <trinity-8a4afc9a-c9ff-426e-a6a7-ec6963a37102-1585022022604@3c-app-gmx-bs25>
 <5E7986C3.7040406@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:p5xGjfFKfK0PtpiGx9U8bFHpPusnXBkzKrQ1zdBaMIYmjC1mCd4nc/zac/byto0EHaaY3
 LAptAzPGS1kWPGMcUr5/P99swDi4y99EFPrZK+ln49vpuaSA/Sq/Y1RAjMzgFa+KbQqomo/hA1lL
 kUWnuZH3nfS2n+fK4j47HUTyBYTFlMoyXOr8+3t+vAzGz/t0KFXKHoH7JhWYGTWGDsfxvzgvtsnx
 euzJohx+GSBhK38DnbZ32wkOlHkriZev+yPS/PgA+/JgKLYLTWqR4t+TU2k9t471ctkPAdodFRkn
 fo=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M8qHuhAhITo=:imeqfrp/CqT+zZx+LWJhb5
 PDqYXLue+5gSZaKIat8F0rmZdD0N2guxVbVarAKdtElCNyIaNDxlAmowrs8gTEFh+MH1EYSJ1
 s09XLiAx3ORnbcj4rljOrM6k5efGG+asOMgF6y+rzj0uLVHmgE7b5AP5lQDhBdRH068ATV9Fo
 cszhi8rSCal8+xB1PYp37I1HMzuvNUv12AKqH0QZajS/kOp2er9/IC07ZmEfFq8v0HY8Ws/gL
 MMqHQgubiA8BkFRCwQiHNb4tZunAm8U13KZhkihMvOkGLes6BM/NTSRV1EZpDHv+ymZEADlYK
 y5GtAtPQadcq2s6gLwDiLH9DZj7cxAZtCnvQz+JdJn4ks3sSLacwRn52AMtD76w4PnCbeGzyw
 vWOMyJLfZQ/hGNkDzqsCHw5MZcRHzmTClABLc//KMGQZWiNiEzA1do6PjgXcp2dCXPrvo0o07
 eO4zG77NWZlgXwThvui0RRsVENON2cPM5C8tZfyfr+kmeVPajmpnkoMOb6pem9+ROTJ1uKyTg
 IHXINHfYUP/IauOLcc6PVEU3xqUF2RUyUjIZtFO/ArGF80keG6/HtDdcXLiYQbGILzcwg53Jc
 3k7T5BkauLxDo4qMldjtkPF0Slc9dUnwR8Ua/CGRc8IYxSWHQMCWmmFbv3dv7B0YEw2BxY9GI
 +rcYXuBMskdxWuTQMuqjSPjPUuZPib9FXbLDUiefWfCLtR+xF5S8O5EXg/cfbMsJ751E=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> On 03/23/2020 11:53 PM, Lukas Haase wrote:
> >> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> >> On 03/23/2020 11:08 PM, Lukas Haase wrote:
> >>> Hi Marcus,
> >>>> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> >>>> On 03/13/2020 10:52 AM, Lukas Haase wrote:
> >>>>> Hi again Rob,
> >>>>>
> >>>>> Yes, I confirm:
> >>>>>
> >>>>> 1.) Finally I get the commands to execute at the same time (TX and RX individually and both at the same time)
> >>>>> 2.) Yes, the phase is random after each retune, even when I retune back to the same frequency
> >>>>> 3.) (2) is only true if it includes *DSP* retuning. With naalog retuning (+integer-N retuning) I get phase coherence, as expected.
> >>>>>
> >>>>> I actually expected the PLL retuning much more challenging than the DSP retuning but for some reason it seems to be the opposite...
> >>>> It depends on whether the phase-accumulator in the DSP is reset to zero,
> >>>> or whether just the increment register is updated with the
> >>>>      new phase increment.   There are good arguments for both approaches.
> >>> I just wanted to check in again if you know how this is implemented and how your thoughts are regarding tuning in both cases. My take:
> >>>
> >>> Case #1: Phase accumulator and increment register is reset.
> >>>      - This results in transients when re-tuning frequency because the mixer LO always (re-)starts at zero phase.
> >>>      - Since this completely defines the state of the DDC/DUC, I imagine phase coherence must be preserved assuming the resets in TX and RX happen exactly at the same time (which is still not certain to me)
> >
> >
> >
> > I have actually always wondered HOW these magic timed commands actually work.
> >
> > The FPGA has a clock which to my knowledge is the system clock which is 200 MHz. Call this clock "clk".
> > But this is also the sample rate.
> > So everything that operates on a sample level accuracy must execute within one clock cycle which seems hard to me.
> >
> > If I queue 16 timed commands how can they really be executed at the same clock cycle?
> Well, you have to remember that FPGAs are inherently massively-parallel
> nano-computers.  But in THIS case, it looks to me like there's
>    a FIFO, and elements on it are processed one at a time.  In an FPGA,
> all kinds of "stuff" can happen at the same time, because it's
>    a whack of somewhat-independent logic cells (or, actually, LUTs, but
> that's an implementation issue).

I would have two possible solutions but both of them are non-trivial:

1. As you say, parallelism. For each of N supported timed commands, the decoding of the timed commands is cloned
2. If the timed commands are enough clock cycles in the future, they can be decoded immideately once they come in. For each type of register they set, they set the following: value of the register. Clock cycle at which it should occur. Then we would have something like:
  reg [31:0] cycle_number; //  how to handle overflow? commands can be a max of 1/200e6 * 2^32 seconds in advance
  always @(posedge clk) begin
    cycle_number <= cycle_number + 1;
    if cycle_number == when_to_set_phase_accumulator_register
      phase_accumulator <= data_for_phase_accumulator;
    if cycle_number == when_to_set_phase_increment_register
      phase_increment <= data_for_phase_increment;
  end


> >> According to my study of the FPGA code, the register sets are serialized
> >> within the timed-command FIFO, which is an AXI FIFO, which means
> >>     that said commands may be spread over several 10s of nanoseconds in
> > Is this an alternative way of saying "timed commands actually do NOT execute at the same time on the x310" or alternatively "The x310 does actually NOT support phase coherent operation"?
> I won't go that far, because I'm not an FPGA expert.  But the whole
> "synchronize the things" via timed commands was originally intended to
>    allow synchronizaton *across* multiple USRP units.  Which will work,
> according to my analysis, because those FIFOs will all be executed
>    in lock-step *across* the USRPs involved.  But within a USRP, I think
> things are a bit murkier.
> >
> > That would come pretty much to a shock.
> >
> > It would explain why phase coherence works with analog-only tuning (assuming one single register set is sufficient for analog tuning).
> >
> > On the other hand, it would not explain why RX-RX phase coherence (or TX-TX) works. In that case, only the two DDCs are used. But there are still several register sets which would equally break stuff.
> Like I said, I'm not an expert at FPGA stuff, and I'm hoping someone
> more priestly than me can comment.

That'd be amazing.

> Absolute phase coherence (with predictable/zero phase-offset) is, in
> practice, incredibly hard to achieve--PARTICULARLY PHASE OFFSET.
>    Which is why most fielded RF systems work just fine with "wobbly"
> phase-offset, with mechanisms to factor it out "at startup" (for whatever
>    definition of "start up" is appropriate).

I know it is hard to achieve and I know normal *comm* systems do not care.
BUT: There is a large class of practically relevent applications that require TX/RX phase coherence: Ranging and radar.
Everything that that needs to deduce time of flight (=range) via carrier phase shift.
If it's just one frequency we can again calibrate.
But to make systems robust, they use multiple frequencies and obtain phase shifts from diverse (hopped) frequencies.
Yes, it's hard to implement but these systems do exist, have been built and work.

(I am also aware that there are other options to implement these systems outside of USRP/SDR context: a single PLL for both TX/RX with potential freq dividers/multipliers, coupling transmitted signal harmonics back, bandpass filter and use as RX LO etc).

In other words: How would you implement such a ranging system with USRP?

Currently I only see two options that work but none of them are acceptable:
Option 1: Use analog only tuning. But this is not flexible because it only works with integer-N tuning (poor resolution) and has huge settling timed
Option 2: Do everything (=hopping) in software on the host computer, e.g. within gnuradio. But this requires unnecessary huge data rates (200MSsps)

> I hope that someone with better understanding of the timed-command FIFO
> can chime in and tell me that I'm completely wrong.

Indeed much appreciated.


Thanks,
Lukas


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
