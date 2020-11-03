Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4DF2A50D9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Nov 2020 21:28:35 +0100 (CET)
Received: from [::1] (port=55296 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ka2uv-0003iS-BB; Tue, 03 Nov 2020 15:28:33 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:46082)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1ka2ur-0003SM-2B
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 15:28:29 -0500
Received: by mail-qv1-f47.google.com with SMTP id s1so8532656qvm.13
 for <usrp-users@lists.ettus.com>; Tue, 03 Nov 2020 12:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=rDsK43p643+Aisa4/4bQ9bWRe0sJlH7JVvQoyp/LHSQ=;
 b=ZWF/abn28XoKy5rkjbox3SOUKDFeagKctTm6L/ZOGhteRukn/QYw9ypumkInB+ZM1m
 89ebSlnyWSGSdm2V8nQXDSawxIwkJ3dcpUncssmLKUxOW+HNkvg5ZQ4BGoIaoG6v1tZ6
 ZCKS8IEIiFrEf+axUP8ON2sCbqsJJdbVDKHNqzaKJbabqPf//J3QPfWQhAcIlszl/p+G
 cGutHsYKT1YB64CIvL3i6G71uoMJJ9u8zFalwgHOh01B33xtV2iwK7J6hI1nEfVpfv9G
 CZahiob4EqbxPDsgWBXRz7nhuFklMUSgFxqU6anZgYCNTjEIX5EabneELoM6wRReQU5U
 Bp8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=rDsK43p643+Aisa4/4bQ9bWRe0sJlH7JVvQoyp/LHSQ=;
 b=sq7AySkFAQIBeuyiAXHxmdo4qr7yMDCf/CDPfssJJ3vP/DTbm7tBLLQJGj0tk6zCUZ
 K1XJ4Ar1GhTcYp/E8UjDWgOr/NPp9dUnPHNqCC/aTYy3qwvxuOodTS/Ze9tZ3u1eQkDW
 3fUb/h0ANVHck9Q+KvKM3MYe7pDaFCfsfE5uZM882912fYCJcRWRIQWNTmSk1MaJtrkp
 d/RpIMjsUJxmUAKRE7eV/NiuP243mFA00WnPqS/nORLYdTpPVsjxrqdsiYRHQUyFSam0
 V66UIWeuiRWMSJsluuZ2PeKWuIgKamaneOStdwMDPIjHoNtQ7EZYZwLgR7xuf6MVycCk
 aviQ==
X-Gm-Message-State: AOAM532vBb1QIBR3pIKSqBpGDKwzk8lyDWMmiliMGJmsBVqYCcaAruxv
 H6IIHXhhOAOdDCE84rSWHJsNmYlGeBKX4w==
X-Google-Smtp-Source: ABdhPJwiG8risXHYo0EknIizxwjOIdhQXJHrG1H3arayVhZ9DbrOv3MUCxPC3BSXyY0/gcDF4sI+Lw==
X-Received: by 2002:a0c:c2ce:: with SMTP id c14mr29358134qvi.20.1604435268136; 
 Tue, 03 Nov 2020 12:27:48 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 v206sm4782303qkb.114.2020.11.03.12.27.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Nov 2020 12:27:47 -0800 (PST)
Message-ID: <5FA1BD42.50500@gmail.com>
Date: Tue, 03 Nov 2020 15:27:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <d37f331e-e5a0-6d4b-160a-b98c6cfbacdb@3db-labs.com>
 <5F87464B.4010002@gmail.com>
 <bfb4009a-e427-c9e0-8e1f-6e23b0d0f31b@3db-labs.com>
In-Reply-To: <bfb4009a-e427-c9e0-8e1f-6e23b0d0f31b@3db-labs.com>
Subject: Re: [USRP-users] N320 inverted spectrum when tuned below 450 MHz
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

On 11/03/2020 02:54 PM, Jason Roehm via USRP-users wrote:
>
> On 10/14/20 2:41 PM, Marcus D. Leech via USRP-users wrote:
>> On 10/14/2020 01:28 PM, Jason Roehm via USRP-users wrote:
>>> I have an N320 that I'm trying out for the first time. I'm using UHD 
>>> 4.0.0, and I loaded the corresponding root filesystem data for that 
>>> release to the N320. I find that when the receiver is tuned to 
>>> frequencies below 450 MHz, the spectrum is inverted. When you tune 
>>> to 450 MHz or above, the spectrum is upright as expected. See the 
>>> attached screenshots for example spectral plots.
>>>
>>> There are several ATSC signals visible in the spectrum. I simply 
>>> used an indoor antenna, so there is a lot of multipath on the 
>>> signals causing their spectra to be very non-flat, but the telltale 
>>> sign of spectral inversion here is where the pilot tone is appearing 
>>> on each one. In the first plot, tuned to 440 MHz, they appear on the 
>>> right of each signal; this is not where they should be. When you 
>>> tune to 450 MHz, the location of the signals flip to the right half 
>>> of the plot, and the pilot tone is on the left, where they belong.
>>>
>>> Is this a known issue?
>>>
>>> Thank you.
>>>
>>> Jason
>> I'm discussing this with R&D right now.  It's *conceivable*, because 
>> there's an extra mixer stage in the below-450-mhz pathway, and that
>>   mixer stage uses "high side" LO injection, which would produce an 
>> inverted spectrum, but the FPGA would "know" this and invert it back...
>>
> Marcus,
>
> Did you ever get any resolution on this issue?
>
> Jason
>
>
I've raised the issue with R&D, but not heard back.  I'm hampered by not 
having an N320 in my own lab to test this.

Presumably, the issue you see is version independent?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
