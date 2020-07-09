Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 724F721A4AF
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 18:23:35 +0200 (CEST)
Received: from [::1] (port=55574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtZKa-0006s2-V1; Thu, 09 Jul 2020 12:23:28 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:33353)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1jtZKX-0006on-D2
 for usrp-users@lists.ettus.com; Thu, 09 Jul 2020 12:23:25 -0400
Received: by mail-lj1-f174.google.com with SMTP id e8so3102352ljb.0
 for <usrp-users@lists.ettus.com>; Thu, 09 Jul 2020 09:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CWzhk/qt+gzlwh4uEllBReYeeWvLRMB+ows0HCeVQg8=;
 b=vFsjS4zDRltAHC4pZB31EzlWckx8vyq1srk5xeoXtu5ORfZiU8EnyD/DCAyA4JR8hI
 Z9rXqBcjosoEYUli9HHHptc1CEn7V71gZqwAGE2C2rl1Xa1UyxvPcbXe2iWp/X2N3dr7
 nB4NPMSF//VOhUC9IChUoBI3suqNGCCC5v5MSzZIc6v9VYaBVdRltq1R282t1VaghFmi
 mJXQ0JswLpMok2+qCvBOuHGK07nzRFzPzTPsLHoBHEKAcASLqR0csNdgk9QZclGWGAT3
 jsZNa1AAHiG/57dA289ldYDY3agdEkKiibXEAYJ+8heLU17fMfXruAhGgiYAkDzmzaWX
 AX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CWzhk/qt+gzlwh4uEllBReYeeWvLRMB+ows0HCeVQg8=;
 b=j7OMg8MPz6Ef6aogzw/Igf1Oj/BIPZyfP4gAq5Fh84bof8VoVeuKCt4Ftwj1pV8ViE
 kHVtEmoo/nAnluglW63v5xsi+MErDyHDY7AAd/NfBVVxP1C6aFR2SJ50BCImJbVORaKS
 fbjs3gNW7+olPJ//0/9ENEVAAbIBdut3rZB5bCDZd/pAEwVvL7LiyQHJhb/KDbd5wb7X
 PoBDhkewFyUznIia6N9I1RLPk/ZIjCZ6507hmQWx+lLYn4h8i4TfEY+TThvGRK6y4Z5K
 SYWVDh0+4o9/743txJBqG2O7fxdU5/5cERgWIsDKHySVmabM4CLkx77OYLI1vENOJKBR
 7LYg==
X-Gm-Message-State: AOAM532RiEmTy993ImYEgWsOplCu+EBHByFwydnl0z+W9nJGJBZTzQby
 uaSrmz8p/GtwkdjM9lbnHybkvEXsK+lvOL2/eVs=
X-Google-Smtp-Source: ABdhPJw7+8ffpiuUCzWfYykruuRxhkAM6uAA6rSGzP7AGac5MeK1c91qkYfvBAqy7kQ5hfol218QXd+utASUF3klBPM=
X-Received: by 2002:a2e:99c6:: with SMTP id l6mr32337446ljj.220.1594311763824; 
 Thu, 09 Jul 2020 09:22:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAB50+dT4S9Q-uWfgP5-dar1A4=+DmzdjpwHuWpXH29Hq5cQSKQ@mail.gmail.com>
 <CAB50+dTUoA=ZzJGhh-bH9=MC=cNUazxvc9Spy-AM8gzun3++7g@mail.gmail.com>
 <CAL7q81sNmLhv6j+4AJdoEaE9GdvjQHyXtjNWJy3TgDu1Tnm+fg@mail.gmail.com>
In-Reply-To: <CAL7q81sNmLhv6j+4AJdoEaE9GdvjQHyXtjNWJy3TgDu1Tnm+fg@mail.gmail.com>
Date: Thu, 9 Jul 2020 12:22:36 -0400
Message-ID: <CAB50+dQyJYEvC4SoSq5=4Bh55scayWgChmXN5J8g-SPLP_+ayQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] e310, RFNOC, GNURadio Full Duplex,
 Custom RFNOC Block
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
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

Thank you, I will try this tweak first.

But in noc_block_keep_one_in_n.v, they have set the reset input of the
instantiated keep_one_in_n.v module to (ce_rst | tx_seqnum) with a
commented explanation for why.  I have my own custom code module
instantiated in my top noc block, and within there is a chain of
modules that are connected via the AXI stream interface, to include
keep_one_in_n.v as the last module in the chain.  What I can't
understand is whether I should I tie that (ce_rst | tx_seqnum) to the
reset input of every module including keep_one_in_n or just to the
reset input of keep_one_in_n?

On Wed, Jul 8, 2020 at 10:47 PM Jonathon Pendlum
<jonathon.pendlum@ettus.com> wrote:
>
> Hi Andrew,
>
> AXI Wrapper's SIMPLE_MODE can only be used with blocks that do not perform a rate change. Since you are using keep_one_in_n, your block is performing a decimation of sorts, so you cannot use SIMPLE_MODE. You should manually set up the header on tuser using noc_block_keep_one_in_n.v as an example. This may be the cause of your problem.
>
> Jonathon
>
> On Wed, Jul 8, 2020 at 7:26 PM Andrew Payne via USRP-users <usrp-users@lists.ettus.com> wrote:
>>
>> Actually I have found a clue! In
>> usrp3/lib/rfnoc/noc_block_keep_one_in_n.v, axi_wrapper simple_mode is
>> set to off, instead opting to use cvita_hdr_modify.  I opted to use
>> keep_one_in_n.v in my custom noc_block, BUT, I have set simple mode to
>> 1.  And if I go into usrp3/lib/rfnoc/axi_wrapper.v, at the top the
>> comments for SIMPLE_MODE say "Automatically handle header
>> (s_axis_data_tuser), packets must be consumed / produced 1-to-1".
>> What does this mean?  That the CEs installed at the crossbar are all
>> beholden to the rate of this CE?  Because remember with my issue, my
>> custom RFNOC block (which incorporates keep_one_in_n.v with simple
>> mode enabled) works well, the TX with DUC alone works well, but TX
>> with DUC and FIFO plus my custom RFNOC block seems to greatly
>> attenuate TX.  Could the TX stream be slowed down by my custom RFNOC
>> CE?
>>
>> On Wed, Jul 8, 2020 at 4:37 PM Andrew Payne <wandrewp@gmail.com> wrote:
>> >
>> > I have an issue with my setup I'm hoping to solve.
>> >
>> > I have an e310 running the UHD 3.15 LTS image.
>> >
>> > I have created one custom RFNOC block, which has 2 RX streams, and it
>> > is composed of the following chain: complex to magnitude ---> moving
>> > sum ---> keep one in n (n=2048) ---> FIFO with input parameter SIZE=5,
>> > so then I don't need the RFNOC FIFO block to save space when
>> > generating the FPGA image file.  The moving sum block generates a sum
>> > from a power of 2 samples, then I feed the keep one in n block with a
>> > resulting sum whose LSBs are truncated, effectively dividing by a
>> > power of 2 to effectively generate a moving average. I am using the
>> > AXI Wrapper with Simple Mode, noc shell, etc, all generated from the
>> > rfnoc mod tool.
>> >
>> > It works great, but I also have a TX output signal, just a sine wave,
>> > in my gnuradio flowgraph.  Its output, depending on the RF center
>> > frequency, is greatly attenuated (the greatest I can get it is like
>> > -39dBm, but it falls off to -55).  But if I just have the TX output
>> > alone without my RX RFNOC block, I can get the output over 0dBm or
>> > more, haven't tried going higher than that.
>> >
>> > My question is, how can I get the TX signal higher with my full duplex
>> > RFNOC setup?  Could anything about the RX chain be affecting my TX
>> > samples, like could it be somehow deleting samples?  Do I need to tag
>> > the streams in GNURadio so they don't interfere or something?
>> >
>> > Thanks,
>> > Andrew
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
