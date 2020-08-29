Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F25252569CF
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 20:52:47 +0200 (CEST)
Received: from [::1] (port=32822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kC5y0-0008WQ-ED; Sat, 29 Aug 2020 14:52:44 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:40194)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kC5xx-0008Ge-Fn
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 14:52:41 -0400
Received: by mail-qt1-f174.google.com with SMTP id v54so625943qtj.7
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 11:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=a2WidLrDQisHMswMK00I/Dz0ey+pWhdWyZLAb/vaGP8=;
 b=dRKm3iy/jOFiiJMVd+B072gqPGu+jZD6gYfJC4XaTSWpxZVs0XBZv25EpCHE+1tfUX
 BLkifkzvEWkMu116F1drY77BGlMuAE9j4braBno64Tqe6HZTJzlKWxeYV++y0EhfYKZ8
 nJlSew+ZTXcGuyr0wqqFYvndCT3kQgxq3dVyHXwwDQKsgoYB9OKEWE7ipzMggJmKftKO
 VOn/WE3uee1hOUVreHifK36nBBKKF41uVcBJ+kaituCVL3jQd12hRf4t4Tv8tJE88EI+
 L4h3qKTy9e3eHlaPcXf/foLRYMsk2Frepubr9hiz6ztFGpdoxLMifruODzmrqk0jypjd
 eTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=a2WidLrDQisHMswMK00I/Dz0ey+pWhdWyZLAb/vaGP8=;
 b=VUOhgWENgjJQAmaRavbMbzQAp7BEi6p36nUcj9vnHDxZd0ar65TiVg9X92yw/apG3r
 7qenWGoxsqCjC1jRVbcHFls29LIisXGZTGgsBGBnqa0HATo9vIryxRG8UVqHKE5bI00/
 dTTwsFdZTz6HAfwhAOHmlSdlMfAlarSGnptyIsvbqehcVrS1fgHCbkobt4vjQtQYK4A2
 DXXulC4CUrtlzV67M4oHlhQE6Ry9cGi4fkYdHgHLYvz8aNzp56PFToINHQRIuGLQZbcA
 eZ9QuC8seg8qH0YqDLWeKYdmo2KMoKtoYWtMj4gdSd5eb6L2nkyzuvD3EDh/Wu2Vgbet
 ONIA==
X-Gm-Message-State: AOAM532z545cNGjuYGPyNMx4qay/tp8qBlNofH50HlTw6t0mleyUbPPF
 WaWLVcqVVU4yeZxbEw20rA+Rf+/6YS1/ZA==
X-Google-Smtp-Source: ABdhPJzVmqAuHOOLOyqMSRG/EAv677Zqx1eF5E9xtlMDPZUAzQLoLn8OpAuYd26Dr45B0nXmH7i1Hw==
X-Received: by 2002:ac8:4757:: with SMTP id k23mr5913906qtp.105.1598727120597; 
 Sat, 29 Aug 2020 11:52:00 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id l19sm3640781qtu.16.2020.08.29.11.52.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Aug 2020 11:52:00 -0700 (PDT)
Message-ID: <5F4AA3CF.1010908@gmail.com>
Date: Sat, 29 Aug 2020 14:51:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com> <5F493640.4080504@gmail.com>
 <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com>
In-Reply-To: <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com>
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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

On 08/29/2020 03:35 AM, Nando Pellegrini wrote:
> Marcus,
> Attached you can find the results of the benchmark test.
> I have been also compared the behavior with 2 different CPU and 
> different USB type 3.0 for the older tower PC, USB 3.1 on the laptop, 
> very strange the case of the older CPU generating an overflow every 
> minute.
> The conditions were exactly the same in all test with no other visible 
> activity on the machines.
> Release 14.0 seems a bit better with the benchmark but,sadly, the 2 
> UHD release are not comparable because the 14.0 as soon as generates 
> an overflow indication drops in the timeout with no recovery but final 
> consideration is that fast sample rate became unusable for long signal 
> recording regardless to software release and PC.
> I really hope for a solution.
> nando
I played a bit with a B210 on a Fedora 31 system today, and was unable 
to achieve greater than 37MSPS without overruns.

I constructed a "degenerate-case" Gnu Radio flow graph that was just:

uhd-source-->null-sink

That's roughly equivalent to what benchmark_rate does, and I was forced 
to do that since F31 doesn't appear to package tools
   like benchmark_rate and some of the other UHD examples.

This was with UHD 3.14.0.1

The system was an AMD Phenom II X6 1090T.

What i noticed was that above 38Msps, you'd get continuous over-runs, 
and at 38Msps, you'd get a burst of overruns whenever you switched to
   a new window.  This is CLEARLY a system effect, unrelated to UHD at 
all.  Likely contention for memory access, interrupt latency, or PCI-e
   transaction contention.  The CPU consumption for the gr-uhd thread 
that was servicing the USB interface never rose above 38% CPU.
   Now the UHD transport code is single-threaded.  It's tempting to 
suggest "why not make it multi-threaded?".  That was tried, several times,
   a few years back, and performance was *worse* with UHD transport 
spread over multiple threads.   Probably due to resource contention
   at the kernel interface.

I'll note that no matter whether I specified sc8, sc12, or sc16 sample 
sizes I saw the same behavior.  This indicates to me that it isn't
   USB *bandwidth* so much as USB (and by implication PCIe) offered 
*TRANSACTION* load.    It is likely the case that different USB3 controllers
   make this better/worse, depending on their interrupt behavior, how 
they do DMA, etc, etc.  I did have to use num_recv_frames > 200 to
   achieve even this.

I'll make a general comment that achieving loss-free, "real time", 
high-bandwidth streaming using a general-purpose operating system is
   always going to require a lot of tuning, and not a small amount of 
good luck.    Other applications of high-speed streaming are somewhat
   tolerant if one end does a "hey stop sending for a bit" -- like disk 
drives and network interfaces, etc.   But when you're trying to sample
   the "real world", you cannot reasonably put it "on hold" while you 
"catch up".  Which is why throwing more buffering at this problem generally
   doesn't work that well.  If the offered load exceeds long-term 
capacity, even by a tiny bit, you will end up "losing".    It is clear 
that "capacity"
   is only loosely-coupled to CPU performance, and much-better 
represented by overall *system* performance.

Over the years, folks have pointed at UHD, hoping that some kind of 
performance-tuning exercise within UHD will get them the performance
   their application requires.  UHD has been, over the years (roughly 10 
years at this point) optimized quite a bit.  But UHD lives within an overall
   *system* and it can only do as well as that *system* can provide.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
