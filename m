Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2B03A43AF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 16:01:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1EE43847F2
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 10:01:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="laRIo7Kl";
	dkim-atps=neutral
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id F21CD384795
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:59:50 -0400 (EDT)
Received: by mail-wr1-f44.google.com with SMTP id r9so6180850wrz.10
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 06:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=EtRT3gAW8soviRJZJGsH1PiDgGOeHHtCFHEFG/LLsOI=;
        b=laRIo7Kl/iLmk517P35MGaNVsrVZd1T5jjvjTNsBByqDl1Vrk/BynuzZ7X4kLotDcu
         0WoHOuM1aDCo8Rlc6G9s+fbX8xWEPf39qlxz/bnGJFkaK2FkdUBNGknw9vFtF1E768IF
         vgXLZIwuQyo970H0Ly80ieeFD2va4G4ggXaRIjuoeDcTeO6aoRQwxxs4YXPeAki6NMEj
         IP/zrfI6aCN8dKp84Alfm3x3ODU51H7QnXZcuLQAUuA2jyDkezA1dGiHM9obk0EZT06e
         uXOhzdzCIbejIeboYs4+dEmL+Tms6mx6sEsGCK1Refgau5CS0Ieeek5+4ML8DnxBAZgB
         67eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EtRT3gAW8soviRJZJGsH1PiDgGOeHHtCFHEFG/LLsOI=;
        b=bCCyqeMik+XWAyHR1aVnQDMOoazuXVC9TELhUMYO4oUsKrENrs9KisoR/dsmi2uhas
         8Dngbd5Bwb4Nt38oXWXEeW/4/r4gci98G5tylq7o5sD8V6P/r1J2A5cbmOduHOsxmPn7
         /27Ky6+9LkXNw9vm+zCTRW2Uf3wlfdt9foYtd5zvdXsnW5ucuScHPrDB7OVn54i9tDwQ
         OaVbPrZLaKPByIleAgRLc4O74BRhmytpHZx7Qv7JLqYzMhEO4Oo/oIT8NXTZX9Wibty5
         MwNoKVg1HOVfuB9POrsfLPnxW4kOZ1hcYmwoHhEGA8tG25xHj64/6K/DyHFBFihCHAXN
         L3JA==
X-Gm-Message-State: AOAM531WpBt4JVm8ub6hICPAuDrQwprrRrf1IyLU5yoR4bI+iDBGfoTE
	yCLIm8Ordv9+yWGrIhmo1kPUb+M7EEwH6fqB
X-Google-Smtp-Source: ABdhPJzNl+g/d8GR2RYBz1fhOS51zvqgZOb2dlcXms7Hnl0+gsQEoX8wljyryoAinALayVc1oxeu+g==
X-Received: by 2002:adf:a284:: with SMTP id s4mr2708535wra.397.1623419989819;
        Fri, 11 Jun 2021 06:59:49 -0700 (PDT)
Received: from [192.168.1.141] (HSI-KBW-46-223-163-41.hsi.kabel-badenwuerttemberg.de. [46.223.163.41])
        by smtp.gmail.com with ESMTPSA id k42sm14996739wms.0.2021.06.11.06.59.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 06:59:49 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CA+SYr19-pbibWHFXFOC5h1gb=f1665h6nmgK9wrDTgomsY84OQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Message-ID: <75ca22c3-19d2-cd89-0e73-30fb9eac7f08@ettus.com>
Date: Fri, 11 Jun 2021 15:59:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CA+SYr19-pbibWHFXFOC5h1gb=f1665h6nmgK9wrDTgomsY84OQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 2DJU6OM4DDUM3T7AHRDWEOHHMI3GC6WC
X-Message-ID-Hash: 2DJU6OM4DDUM3T7AHRDWEOHHMI3GC6WC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using MPM with UHD 4 and E312
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2DJU6OM4DDUM3T7AHRDWEOHHMI3GC6WC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 18/05/2021 12:04, Margaux Bougeard wrote:
> I am using the USRP E312 with UHD 4.0.0.0.
> mpm_sw_version : 4.0.0.0-g90ce6062
> product: e310_sg3
> MPM Version: 3.0
> FPGA Version: 6.0
> 
> Normally I should have access to MPM but I don't. If I add the lines 
> concerning MPM in the multi_usrp.py file, then I have an error message 
> telling me that 'MultiUSRP' object has no attribute 'get_tree'.
> 
> Do I have to perform any manipulation to use MPM?


Margaux,

just a quick reminder that you very rarely have to access MPM in the 
first place. This considered a very advanced, low-level operation.

I assume that you are trying to do this:

import uhd
U = uhd.usrp.MultiUSRP("type=e3xx")
M = U.get_mpm_client()


...in that case, you're correctly set up, assuming you have a recent UHD 
version.

--M
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
