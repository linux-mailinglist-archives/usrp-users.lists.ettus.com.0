Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CAA19048D
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 05:44:00 +0100 (CET)
Received: from [::1] (port=40540 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGbPz-0000z2-7p; Tue, 24 Mar 2020 00:43:59 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:37507)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jGbPv-0000rt-PF
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 00:43:55 -0400
Received: by mail-qt1-f175.google.com with SMTP id d12so11534974qtj.4
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 21:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=jiR6ftoCGK89kkII7f7n/iVfoJzjhJJPqxXZPQTp9qU=;
 b=NdOnWgrlpNoGDc5rbjxYrtQBiNUepxg/xED74xApFvj347KmB0WzTpV6G8YG8j+oZP
 EOI2USbZZ4FCA50eHSHG3jIcY38FqdI74VQvS2oZToVpo36hxygIie7itEe3QSxvk+4C
 MnQTWgWbnQy+PZT6jcC8Z/TsGuuSFZexYjH7YbUYzPXgHJzTph6wvc3LWHzkxC4jQjhw
 67XpBMAvn2Slg1hcXF7xP1bWbJIMV+T0KEp9jGrPfECm/WLOdAk6M67uMLVgY+qP4dwl
 iiNOX7iVmTldF1dkMvvaPiIPeRXCHcJ63mV3BX/EZQb7frYQhfjILRP9DgLphUP3s8aJ
 3nMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=jiR6ftoCGK89kkII7f7n/iVfoJzjhJJPqxXZPQTp9qU=;
 b=RVrj1r4K+Ztj+/qvTYMqP9oG49LMHRWbadp7fqtvzpKfh5tGx2+7R9AwwrMf6OK1Az
 jpjZnfBiGfb5Zkfdt5GSVtcz/YZsBU2YhGvgn6Rxh97DgpBzxvo2qDiECsZA8BHcuQux
 TcOBRiJgBZpK1bJj/8OIm0Ey20Sx8kZvOqKp+EgHCyzbSvhtO8oEJbKynS033j8lN07r
 C9JUlgZ52H7SmKc7HoHtVaXuQEqoKtZDqV1MYb9GczwArZYQOwJNdewvXOkYwM8Mafoj
 bJkJK4F2ddzRQdsspj5wRaSpHiDvnCPrAgIl7kXtHUg5PvETpK04bECC3tEMzZTfqnhI
 KvVA==
X-Gm-Message-State: ANhLgQ0eV/YVqkBoLzjL7A7PNfZ0fdkFM/Lg4rdETYKJBI3TEmCSpvaO
 X4tsvkoqJpVAYvzOiQsuSGJa85As
X-Google-Smtp-Source: ADFU+vsfZxfSeDiSOPrxFm1lPv00qW6rRL4JoFfF3CPh6un9dLBeh1MYWtXJOaX3Z5sPGgYUazeOHQ==
X-Received: by 2002:ac8:6697:: with SMTP id d23mr15546408qtp.8.1585024993911; 
 Mon, 23 Mar 2020 21:43:13 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id v75sm12753179qkb.22.2020.03.23.21.43.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 21:43:12 -0700 (PDT)
Message-ID: <5E798FDF.8090403@gmail.com>
Date: Tue, 24 Mar 2020 00:43:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
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
 <trinity-7c07112b-2119-4cd9-a79a-d3dc63ef7cbf-1585023872132@3c-app-gmx-bs25>
In-Reply-To: <trinity-7c07112b-2119-4cd9-a79a-d3dc63ef7cbf-1585023872132@3c-app-gmx-bs25>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

On 03/24/2020 12:24 AM, Lukas Haase wrote:
> Hi Marcus,
>
> I would have two possible solutions but both of them are non-trivial:
>
> 1. As you say, parallelism. For each of N supported timed commands, the decoding of the timed commands is cloned
> 2. If the timed commands are enough clock cycles in the future, they can be decoded immideately once they come in. For each type of register they set, they set the following: value of the register. Clock cycle at which it should occur. Then we would have something like:
>    reg [31:0] cycle_number; //  how to handle overflow? commands can be a max of 1/200e6 * 2^32 seconds in advance
>    always @(posedge clk) begin
>      cycle_number <= cycle_number + 1;
>      if cycle_number == when_to_set_phase_accumulator_register
>        phase_accumulator <= data_for_phase_accumulator;
>      if cycle_number == when_to_set_phase_increment_register
>        phase_increment <= data_for_phase_increment;
>    end
Right, but the timed-command FIFO handler doesn't really *KNOW* anything 
about the semantics of the registers its setting, and indeed, given
   the large variety of daughter-cards, and other "things" it probably 
shouldn't *KNOW* too much about anything, because that, among other things,
   makes the code MUCH harder to maintain, and occupies more room in the 
limited-space FPGA.


>
>
>> Absolute phase coherence (with predictable/zero phase-offset) is, in
>> practice, incredibly hard to achieve--PARTICULARLY PHASE OFFSET.
>>     Which is why most fielded RF systems work just fine with "wobbly"
>> phase-offset, with mechanisms to factor it out "at startup" (for whatever
>>     definition of "start up" is appropriate).
> I know it is hard to achieve and I know normal *comm* systems do not care.
> BUT: There is a large class of practically relevent applications that require TX/RX phase coherence: Ranging and radar.
> Everything that that needs to deduce time of flight (=range) via carrier phase shift.
> If it's just one frequency we can again calibrate.
> But to make systems robust, they use multiple frequencies and obtain phase shifts from diverse (hopped) frequencies.
> Yes, it's hard to implement but these systems do exist, have been built and work.
Yup, those systems have hardware that "understands" all of the subtle 
semantics of the application at hand.

>
> (I am also aware that there are other options to implement these systems outside of USRP/SDR context: a single PLL for both TX/RX with potential freq dividers/multipliers, coupling transmitted signal harmonics back, bandpass filter and use as RX LO etc).
The problem with the "marvelous generality" of an SDR solution (whether 
it's USRP or something else) is that there are *specific* applications
   that don't necessarily slide easily into the model of "marvelous 
generality".

Your application seems to have two things that are sometimes hard to 
achieve in a generic SDR:

      o Rapid frequency hopping  (RF synthesizers for rapid 
frequency-hopping systems are often designed very differently than for
         more-general systems).

      o Predictable and reliable phase-offset across hops.  [That is, 
hop to X, hop to Y, come back to X, and have an expectation of the same 
systemic
         phase offset].


>
> In other words: How would you implement such a ranging system with USRP?
>
> Currently I only see two options that work but none of them are acceptable:
> Option 1: Use analog only tuning. But this is not flexible because it only works with integer-N tuning (poor resolution) and has huge settling timed
> Option 2: Do everything (=hopping) in software on the host computer, e.g. within gnuradio. But this requires unnecessary huge data rates (200MSsps)
Option 2 leaves you in a situation where the hardware isn't changing 
across hops.  I agree that it carries a heavy implementation burden on
   the software side.

There's a 3rd option you didn't mention:

Implement application-specific "stuff" in the FPGA, using either the 
RFNoC framework or "raw".  RFNoC and the whole open-source FPGA code
   were designed to allow that, and many Ettus customers do custom 
things in the FPGA specifically because the as-shipped architecture doesn't
   quite fit their application model.  That is, as I'll re-iterate, an 
attribute of highly-generalized systems--they have this natural tendency to
   not deal well speciic "edge cases".


>
>> I hope that someone with better understanding of the timed-command FIFO
>> can chime in and tell me that I'm completely wrong.
> Indeed much appreciated.
>
>
> Thanks,
> Lukas
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
