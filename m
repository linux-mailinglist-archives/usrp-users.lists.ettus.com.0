Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 918AA1B3195
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 23:09:51 +0200 (CEST)
Received: from [::1] (port=45166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jR09O-0005Ou-Mt; Tue, 21 Apr 2020 17:09:50 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:46603)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jR09L-0005Hr-5v
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 17:09:47 -0400
Received: by mail-qk1-f177.google.com with SMTP id g74so189804qke.13
 for <usrp-users@lists.ettus.com>; Tue, 21 Apr 2020 14:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=yCjdW2Pe7CMdzGUwUv5XDmCM2XYrkAr9ebxcwExFcHI=;
 b=ZKaJTTqs4eNX3Xsv0ph32DOM0lMINfI7B0ksA9H92/cPfBmT5MTM7ztneJx5yWd7lr
 tdPr6KhlciBB01jI+muDyIhcwLvNw8M1tq0AbzKxHhA1yYUfSs/u/J+dwfcddnJo20f8
 ZNqi75a7j81B2csFwj6/YdqdQOVNCqPS+K1jLSbxoSj2+TlWFRjdlVSsIMNfvbFXqbav
 ZRFIVnmzD1F2s+jl2pUkEYnzBuMgIel9ALgW00VMnLbBpSUd0WaLDA65cRjJKMSuZS0j
 GbRL8QDc5VHbP+PjqVVQcjHv/GXoFFSqhiBBQW5L18pNZdKraWHUBl3I9oA8UycmagxB
 SeNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=yCjdW2Pe7CMdzGUwUv5XDmCM2XYrkAr9ebxcwExFcHI=;
 b=TeeVrNGgRx91VzAPKkbJ6DYy8dxLpdjYQW3TJ5k2phwXZqmsFHPG3Fd2NZyAJKYVxW
 P1QOCqXsyh0k6V2IAZj4H7LGJZtzRZ4K2XMqZ1y7IXnUvlvYOfssZV1+nIKP5WdKZBPN
 Es0mP/SajPbApLJ/gJU/q5r17Lxmdck1BFp6t9z1vmBNTcor13IcbZaLsY5xLEecGX2T
 OFTvbwpJGx6DCZF4dnnEhoTEsdZKRatINDTtXjuEfeYt9geo3l3QWa0BziLxs9DCqUEa
 go+GBFnxLsc29L40YGNuTryKO4nSpxLS7LgHdUIKeSovkdTXwvYu0ecS+gK3wj4hU1Sc
 msyQ==
X-Gm-Message-State: AGi0PuZwjgRghEA8+E+57kUS6vSc29oZeoYRZOSL/0dZAFAUJ1qE20jK
 udqmNGL0W61psy6qcJb+aqQKHsBfbqw=
X-Google-Smtp-Source: APiQypJ/J9hmXPzLsYF9owXI5qNY6LMTHPVquy6bsdLs2OyEg6k7ZgN4PVd4tr4pu9PdyCyFWkBYvQ==
X-Received: by 2002:a37:7ac1:: with SMTP id
 v184mr22454444qkc.245.1587503346470; 
 Tue, 21 Apr 2020 14:09:06 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id n13sm2610771qtf.15.2020.04.21.14.09.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 14:09:06 -0700 (PDT)
Message-ID: <5E9F60F1.9020008@gmail.com>
Date: Tue, 21 Apr 2020 17:09:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
 <5E9E4751.1090606@gmail.com>
 <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
In-Reply-To: <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
Cc: usrp-users@lists.ettus.com
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

On 04/21/2020 12:23 AM, Lukas Haase wrote:
> I wrote before my noise level should be -174+NF+10*log10(5e6). But 
> based on this, it should be more correctly -174+NF+10*log10(160e6) ... 
> is that correct? (I just receive the raw samples from the USRP via 
> USRP Source. There is no other digital filter?) 
Down-sampling inherently implies steep filtering at the band edges, 
using digital filtering mechanisms inside the X310.  The ADC operates at
   a fixed sampling rate (200Msps in the case of X310 by default), which 
samples a carefully-sculpted-by-analog-filters bandwidth from the UBX.
   Your final sample rate to the host is delivered through a DDC, which 
has one or more filter stages.  The end result is that typical out-of-band
   products in the final sample stream to the host are suppressed by 
80dB or better.

>>> Furthermore, I'd be interested if Question 5 is conceptually correct.
>> Conceptually, I don't see any problem with it, but it very-squarely
>> enters  "consider a spherical cow" territory.  You CANNOT use a purely
>>     arithmetic analysis, due to uncertainties.   I would, in fact,
>> encourage you to acquire a decent broad-band, calibrated, noise source for
>>     you lab so that you can do Y-factor analysis, if for no other reason
>> than to satisfy yourself that the noise equations work.
> The issue with the bandwidth calculation above would be one of them ;-)
>
>> I've used these on a budget-sensitive project just last year:
>> https://g8fek.com/precision-noise-sources.html
> Thanks for the pointer. I think I'll get one of these.
>
> For a proper use I would need a steep filter though, correct? (in order to have a well defined total input power Pin=-174+ENR+10*log10(FilterCuroff) dBm? )
The combination of analog and digital filtering implied by an SDR 
architecture (whether USRP or anything else) *implies* typically very steep
   filtering at the band edges, giving very-good out-of-band 
suppression.  When you ask for 5Msps from the USRP, you're getting 5MHz of
   bandwidth, with very good suppression of out-of-band products.


>
> Thanks,
> Lukas
>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
