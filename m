Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D572274A9B
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 23:05:54 +0200 (CEST)
Received: from [::1] (port=59540 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKpU0-0005xT-2N; Tue, 22 Sep 2020 17:05:52 -0400
Received: from mail-qv1-f49.google.com ([209.85.219.49]:40077)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kKpTv-0005pP-MH
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 17:05:47 -0400
Received: by mail-qv1-f49.google.com with SMTP id j3so10277438qvi.7
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 14:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=Gh8D5CxD51rY/i+UZA59jD3QsxMI4srn0I51AhCl3KM=;
 b=DSMlyWGswaTTVUZlxfI9IrPcr1nYn6usp77E6Hpdv6nlF9glHVVM2Tu9O13ZroQsHs
 v8zgQiy3b75qx4GHvuH/kqxl95T7NfvVFscPLH/DBTgQga6FCwGvHsGMZGONE5WLtayY
 CEVWMgymKYAHB+3CaMS8LWSedz6PFusr96uUu+wsxPTX5dOTNRQA1NIO1lBg1rOe8xFu
 upPuSPso5spp2lX3y6sWmLsaU650wI4x6bCElXDEP5sQPOTfZxQjLolBw/QOtzjBPhQG
 o7QghOLh9TX4AZix1WkOvXbATzdI5r2v4NVOdKUkwq/51rNBiVEFABoERw/zEtMA4uaz
 xoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=Gh8D5CxD51rY/i+UZA59jD3QsxMI4srn0I51AhCl3KM=;
 b=SNckiBj3Edlv15d+BHXo+dgTiyshbxHN1d+3zmjxj3SlNq9Fc8HpTjkJJb0QIgRYDP
 2wvbolg2se8gn4Sh/c/YuTNMTcwBn9ZjDHWecNM+0Aeakxtwt2rGSyy/E97b5Wo9gOtk
 7NUsLrQx/AmhzWSR/B9p4dlz/lQpM+KH07NqNfzHc6ANcs3KfB6uOg4ETQB1PNbe1n+z
 ++h7E43Q0GKqbO8yZMSunk8s3x24BdkjmuIzVmyy8iesQ2AUbZ/73LesIcoQm6g4Zt14
 rFE6A5SSZAacQ46KH9Lm9Pr9UKMZVRkXcwePQ5nG1pmUjud81iPQpuT/mrxLwS+jFgue
 xWZQ==
X-Gm-Message-State: AOAM532tUmf8KI1YUlWY/O0TK/eq+Kp2oTXqeA7OYuMa9Gfl5SdEqUNl
 SuKImFWPUtIPL+0KzfjOXhHiGn1Q8MpUUg==
X-Google-Smtp-Source: ABdhPJzjJa2cnhxDe4r225B+fUrzANTSVcv+gEZQiP6rxhOMQN52vxhDZeOW+tH5YbkD+W2BU4vCbQ==
X-Received: by 2002:ad4:458f:: with SMTP id x15mr8143606qvu.33.1600808706976; 
 Tue, 22 Sep 2020 14:05:06 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id
 w194sm12302607qkb.130.2020.09.22.14.05.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Sep 2020 14:05:06 -0700 (PDT)
Message-ID: <5F6A6701.6030604@gmail.com>
Date: Tue, 22 Sep 2020 17:05:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
 <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
 <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
In-Reply-To: <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
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

On 09/22/2020 04:41 PM, Christopher Flood wrote:
> I agree with you there. I'm using a Rb external reference that I 
> believe the PLLs are locking to based on some signal transmission 
> tests and looking at signals on an oscilloscope. With the Rb ref I 
> would expect the frequency to be off by ~.001Hz (or smaller) out of 
> 10MHz.
>
> Some more details about the test I'm currently running, if that helps: 
> I am putting the 10MHz Rb ref into the external ref of the N310. I am 
> then generating a 10MHz signal on the TX port of the SDR and feeding 
> it right back into an RX port. Both the UHD Source and UHD Sink in GNU 
> radio are being told to use the external clock reference. I know 10MHz 
> is towards the low end of this device's capability, so I tried the 
> same test with 20 / 30 / 40MHz and got similar results.
>
> -Chris
Ah.  Knowing you were using an external Rb reference would have steered 
me in a different direction.

You're probably looking at residual resolution of the complex phase 
rotator in the DDC/DUC logic in the DSP portions of the FPGA.

The resolution of the AD9371 synthesizers is fairly coarse as I 
recall--in the kHz range (which is typical for synthesizers intended for
   deployment in telecom applicatons).

The DDC and DUC logic in the FPGA likely has a sub-Hz resolution--the 
number 0.38Hz sticks in my head but that was from an evaluation of
   the Gen 2 USRP FPGA from a number of years ago.  So you're probably 
looking at the aggregate error from the DDC and DUC combined.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
