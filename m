Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EB12E8872
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jan 2021 21:18:55 +0100 (CET)
Received: from [::1] (port=50676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvnMS-0006gR-69; Sat, 02 Jan 2021 15:18:52 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:34256)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kvnMO-0006aM-1r
 for usrp-users@lists.ettus.com; Sat, 02 Jan 2021 15:18:48 -0500
Received: by mail-qk1-f172.google.com with SMTP id c7so20328794qke.1
 for <usrp-users@lists.ettus.com>; Sat, 02 Jan 2021 12:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=ZLgH309mSCN+unwYKpANuAhJfcNmfI6eM5k8i0L7u6g=;
 b=sp/UE2aclodXfICn6Nkv/t3mXObs9Voqu9bRmw9RLUjitEokGc2tcr9qnAeqK0WEIL
 58ev/l7NWT9pag/5jRNGAycCuvWZITEauBJBGE/jKuisMBh4YdT6QYrZqnEAN3cpk6ro
 gbH8BdGyCZp3vunYFGD/cZdeHv6VUCOdrNH6YgZLTVZa7BfLE38FQ5SF3yorOKWMELdt
 ejDHGEfZNONBd+kM1qkv4/rc8BJWgwtuo8qIGss9JwZMrYuTrrVtiC6Nk4mhC18guR2m
 bg2tA5+uuKur7W7gwAMj82UEetDOznZwRXYWhnz1HkcOHAbdTCTDegBTPFl25uHMW9Ld
 aWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=ZLgH309mSCN+unwYKpANuAhJfcNmfI6eM5k8i0L7u6g=;
 b=tRBPE1uQQxjkrXgVZ8tnNvKV2b/SlcLZUKKtK1Q5CuHN1/AkTQcEEV4ks9IA8UqgPA
 eB0yATrnYxo4df8A2Q2kHflN1bdZou9/fyXtoZBrt1gI5Sfu65dB1kY8g6rj85/v76sn
 R2d4fuVHp0EUxQdOxyTk7JQ5VCSt/o2fGCa3prgz41iPaV0s5JleG0pMjovtNyeF1saM
 xS9P4QhQGivKu6y9SBPI4x52u4aQY5CMt78JL+WRvBEwsslqXChEPIFs28XcduLsYtuP
 9kDfR7S59L0tu/WRkPGGEANbnCjSqRKd6XTfO0GdJSZUrew6LK6Wr10eoOo9pg1eud/R
 vjOw==
X-Gm-Message-State: AOAM53392XAJ+KvIZNTjwu0b4HZinZlGvPcahqO17OL91p49bAzejLc/
 MEQGb2cXdQtiJxRFpc9SMb9ivWeZkg0=
X-Google-Smtp-Source: ABdhPJwnH3QKsAtNUayaM+4qez82ydtFI8PWhsI9hGGE3KHXnurVilEWFXJjHUfqRJ9UOjoKNgz2fw==
X-Received: by 2002:a05:620a:2047:: with SMTP id
 d7mr64512269qka.255.1609618687234; 
 Sat, 02 Jan 2021 12:18:07 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 8sm35201550qkr.28.2021.01.02.12.18.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 Jan 2021 12:18:06 -0800 (PST)
Message-ID: <5FF0D4FE.9030307@gmail.com>
Date: Sat, 02 Jan 2021 15:18:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACDReSzhpEEKSn4hu-uwkrAFjQQ2Gu-17XZ+FFB7weFzH=nR4A@mail.gmail.com>
In-Reply-To: <CACDReSzhpEEKSn4hu-uwkrAFjQQ2Gu-17XZ+FFB7weFzH=nR4A@mail.gmail.com>
Subject: Re: [USRP-users] Hacking E310 units for synchronization
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

On 01/02/2021 02:44 AM, Ofer Saferman via USRP-users wrote:
> Hello,
>
> I must say that I am a bit frustrated.
> When I purchased multiple E310 units it was with the hope I will be 
> able to synchronize them mainly based on: 
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices, 
> it shows the E310 as MIMO capable and having a reference clock input.
> Of course, now I know that not to be true. At least the reference 
> clock part. It seems that the MIMO part might be incorrect as well.
>
> If I hack the clock and patch an external clock connector to be used 
> instead of the internal TCXO will I be able, using existing UHD 
> software and firmware, to synchronize multiple E310 units?
>
> I will be able to provide a common clock to multiple units and I will 
> be able to provide a 1-PPS signal through the SYNC pins of multiple 
> units that is generated from the same common clock.
> I need these E310 to transmit and have their base-band samples 
> perfectly time aligned.
>
> How is multi-chip synchronization of the AD9361 devices being done by 
> UHD? By using the SYNC pin and setting 
> usrp->set_time_source("external")? Is it enough? Do I need to handle 
> it on my own? How?
>
> I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide 
> an external clock of different frequency? Maybe 10 MHz? Or does it 
> require a major change in software or firmware?
>
> Does anybody have a different idea how to get E310 units synchronized 
> at sample level without voiding the warranty and hacking an external 
> clock?
>
> Please help.
>
> Regards,
> Ofer Saferman
>
>
The E310 was never designed for multi-unit MIMO, although it does 2x2 
MIMO just fine, and there are plenty of folks using it for that,
   including stacks for various wireless protocols.  The AD9361 
inherently supports 2x2 MIMO due to the shared LO architecture between
   the two TX and two RX channels.

The AD9361 SYNC_IN pin does get tied to the Zynq FPGA, but the UHD 
code-base doesn't use it.    I'll note that for most telecom-type
   MIMO implementations, zero-phase-offset is NOT a requirement, just 
ongoing phase coherence.

Similarly the B2xx series does 2x2 MIMO just fine, but it was never 
designed for multi-unit MIMO, although due to the clocking architecture,
   the B2xx could likely (no guarantees) be made to do a multi-unit MIMO 
implementation.

The SYNC input connector on the E310 is designed to:

   (A) Provide a higher longer-term quality than the on-board clock.
   (B) Allow for TDM synchronization on system deployments where that is 
important.

Due to the high residual phase-noise of the DPLL implementation on the 
SYNC input on the E310, it cannot be used to produce a working
   multi-unit MIMO (or any other kind of phase-coherent) application.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
