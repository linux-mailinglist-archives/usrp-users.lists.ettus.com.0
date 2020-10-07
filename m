Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A04EC286420
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 18:30:50 +0200 (CEST)
Received: from [::1] (port=39766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQCL1-0002PB-Sm; Wed, 07 Oct 2020 12:30:47 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:39690)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kQCKy-0002IR-4R
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 12:30:44 -0400
Received: by mail-qv1-f47.google.com with SMTP id b19so1472358qvm.6
 for <usrp-users@lists.ettus.com>; Wed, 07 Oct 2020 09:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=3uqhi0Jj66DuCDmDXy1IQpQKs0eYIL1mKht4wQIQFIc=;
 b=XobDLgOkZYpYuAXISqsdIrnX9c6fNTCj9OjEgg28qR7NPwdKXoyvcYS3zdA9+Aq0S9
 irdYIM3byiHiXj7m73pIfGZ9BGx3SG5/j7cFEgI1BS83ZtMd0ehCYA3wCwNZ7PK2rHYN
 ctE1fH+jF1/QYpJyyz95N2vgphLJLFZppT+UAPwflWKTTF97k7YFGcmZfOCDZhYi3flw
 UgwYN2wVChyW72e5KwaN4PX10Ht9bf/t5ZwrArFKmvqpNRidkeX0Z4pzCou4TIGgktv9
 g9UaFivTxUQTM4Ar0OTMMTWHnq1xBD0TB670HEEl66352vI/01jZkIjRde9tsRJkUSLw
 Ppzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=3uqhi0Jj66DuCDmDXy1IQpQKs0eYIL1mKht4wQIQFIc=;
 b=h+b7F/xqknrggtr6bOASdaDVqhJzHVh69eWh20SuAmT0e0fJChjr0xiq2rud8Zn2SG
 +FeGHTgnxrnjB+C3Dt3nkGitaVSZV3A9Yb+vdoHGxQaHR0gLMzIto3NDWCzf2+8fXYQ2
 H1p0Zbq9BH58JweXFnW0hEzuGKAxvDYYx5Ka1vnW2h/MpM70zTr1WIjfPa6jTdBC64hf
 mwHTxCSgKRpqkasv41Srl2g8LrEb9SAKGZQpkSw95jcXkBVNdF+cBeNuFG9KANNvfkRY
 r87J+8BSYKpXV3sPcCh17EE6LkK/Ph9VEbrPaO/6o7FC2vBMfGWQqNNER4fhrNSWm8OR
 XdVg==
X-Gm-Message-State: AOAM531Bd/u47G3uAw+dOLOVoftFyFhJdCbY9KUNzN3IT23JBrE0RNYO
 mqt87QRhCZhVcRQFG3RNZnezPwoOtCq8sw==
X-Google-Smtp-Source: ABdhPJyxqPXtZ133Xhp52avOP5zF2QTOkifYpDgf/loGa5A6Ipki3WtvQT5WSu/5jk8/KL8wIvoMGQ==
X-Received: by 2002:a05:6214:b0d:: with SMTP id
 u13mr4085323qvj.17.1602088203420; 
 Wed, 07 Oct 2020 09:30:03 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id
 s123sm1719002qkd.128.2020.10.07.09.30.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Oct 2020 09:30:02 -0700 (PDT)
Message-ID: <5F7DED0A.9050209@gmail.com>
Date: Wed, 07 Oct 2020 12:30:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>, Rob Kossler <rkossler@nd.edu>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
 <5F7D3ACA.1080406@gmail.com>
 <CAB__hTQT9fHyHF=48WJbR8O975BdvautgXYJXRTzbGLY6GsQWg@mail.gmail.com>
 <CAL0m=NYj=Xp+1dSchpfi0NxKv0MD2NkzL4T22OEb6VpaB3Xnvw@mail.gmail.com>
In-Reply-To: <CAL0m=NYj=Xp+1dSchpfi0NxKv0MD2NkzL4T22OEb6VpaB3Xnvw@mail.gmail.com>
Subject: Re: [USRP-users] Question about N310 Internal synchronization
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

On 10/07/2020 11:12 AM, Zeng, Huacheng wrote:
> Dear Rob and Marcus:
>
> Thank you for the prompt response. Based on my limited knowledge of 
> digital circuit, the 180 degree phase ambiguity may occur at the PLL 
> circuit initiation (power on) stage. After PLL is powered on, there is 
> no phase ambiguity. Is it right? My question actually comes to: When I 
> switch N310 from RX mode (in time slot 1) to TX mode (in time slot 2) 
> and then back to RX mode (in time slot 3), would there be a phase 
> ambiguity in those two RX modes (in time slots 1 & 3)?
>
> When I used USRP N210 with SBX, I did not observe such a phase 
> ambiguity in this case. But when I used USRP N210 with WBX, the phase 
> ambiguity does exist (based on my understanding).
>
> Thank you!
>
> Hua
Note that the shared-LO has to be at TWICE the desired center frequency.

This is because the AD9371 chips (and other chips) use something called 
a 2XLO phase-splitter to feed the mixers.  A 2XLO phase-splitter
   has *excellent* phase quality, but it is made from flip-flops, whose 
state cannot be predicted at power up.  So it's either in state 0 or
   1 on power-up, leading to a 180deg phase ambiguity in the phase-split 
signal going to the mixers.

My understanding on the AD9371 is that this is a power-up issue--once 
it's powered up, the phase-splitter is operational and so you only
   take the phase-ambiguity "hit" once on power up.

So if you're using shared-LO, and you've characterized your phase 
relationships, they should not change again.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
