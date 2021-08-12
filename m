Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34F3E9B78
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 02:08:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E432C383BCE
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 20:08:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VbQwPQuD";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B4C8B383F01
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 20:07:49 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id m12so2179856qvt.1
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 17:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=S5Sielw8KjrNzSyW+GuNHodEKGVQrcy+zG1lF91iqhM=;
        b=VbQwPQuDgBYJJO/gKVDuahfOnP7i+lcszqCmNVvFTOs2d7Jq4j4c2TdpePfqWj9z4Z
         1tVvS2kw+dWrdZf1S++gGEoS9F8hOdcH+H1gf3dxfeBt04SlYhKzvu+aNs7NWiqT40D9
         lbvRIFHuZ1BycM55BAlh0FAHSkCtu9+EGye7lFbX+mplnYvjmfLs/k6nDN7t443cYSCN
         xE2Q7hZ7ZP1WZluVGTGCHNedzEjgGJVyRhqWcZRU+LjgYYSiMDQrCPpSMrABQgs+hXM3
         oL3hbIIH/mMX+ctwanGmo2ucOc0Kg+yayjDJaoUwSxS1hbrGrcu9R06qJveTktiL0Nhb
         HEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=S5Sielw8KjrNzSyW+GuNHodEKGVQrcy+zG1lF91iqhM=;
        b=N79lmBllysKWDHxMs2dEh6DHivmn+K7p91vPjlf8WAx4Bazav23KlrkNzDpffnlgxM
         oZXZwiYkIppnZdQrwgKkDtw0kGSMCFOBISnUJMn+3tdYyFmzcXOIB4kjRQcOhVF5Du6L
         HZpRKrZwM76BcQpFkR+ZkYuJj+DYvW+95a8uCfonHcInSDiFOg2OKbgLsrTsKS+Ug5ve
         oFApNm+ursF23lx5mHIXhWCH1I0tOPcWAA9Wa9yMmTITgtxanSrSzxS3skDczVX6V7q7
         269px+FnEVeIF6cHFFJKNPgpJSa37bav5b17P8BZq4jMkpuZ+wg0flJuOdcJ/8tSq0Vm
         +/qQ==
X-Gm-Message-State: AOAM532YxibFP0NAyWkGR/xXlGooYJbOm5f9WxsOzjXXBtvzOd9f5D9v
	BcAJPLgVOyZfSXB0LbiK6CASuqDXpK2YdA==
X-Google-Smtp-Source: ABdhPJwJA+jASGePvJjkXaeKpFgNM6FnqbEdrrcru5xoiLQSl6lXYg9u4t1uho4tmKN4kkIkRY/nIw==
X-Received: by 2002:a05:6214:19c4:: with SMTP id j4mr1252367qvc.13.1628726868765;
        Wed, 11 Aug 2021 17:07:48 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k4sm404286qkj.40.2021.08.11.17.07.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 17:07:48 -0700 (PDT)
Message-ID: <61146653.5060607@gmail.com>
Date: Wed, 11 Aug 2021 20:07:47 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABnzEf4cBntcTqQB=GNoNohvJAXPLrkcpVpu+O8WLRFX=MQp1A@mail.gmail.com>
In-Reply-To: <CABnzEf4cBntcTqQB=GNoNohvJAXPLrkcpVpu+O8WLRFX=MQp1A@mail.gmail.com>
Message-ID-Hash: 7GAVIYDQB62L2BV72TS7EWUBVH2I7DXS
X-Message-ID-Hash: 7GAVIYDQB62L2BV72TS7EWUBVH2I7DXS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7GAVIYDQB62L2BV72TS7EWUBVH2I7DXS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/11/2021 07:35 PM, Bobbi Taylor wrote:
> Hello,
>
> I have two N210s and an E312, and I'm not able to detect any of them 
> with uhd_find_devices.
>
> I have set a static IP address on my computer as well as on the radio. 
> I have a gigabit ethernet cable, as well as a gigabit port on my 
> laptop. For one of the N210s, I've hit the safe mode button (S2) to 
> boot into a safe image. This appeared to work (lights flashed after I 
> power cycled), but UHD is still not able to detect the device. On the 
> N210, the D and F lights on the front panel light up indicating that 
> the firmware is loaded and the CPLD is loaded, indicating that there 
> isn't a problem with the FPGA and that the device isn't bricked.
>
> I am able to ping the device, but uhd_find_devices or uhd_usrp_probe 
> doesn't detect anything, even if input arguments are given such as 
> serial, type, or IP address.
>
> For the E312, I was able to run the test example (rx_ascii_art_dft) 
> without any issues. Still wasn't detected by UHD.
>
> The version of UHD I have is 4.0.0, but I have also attempted this 
> with multiple previous versions. I used both N210s about 6 months ago 
> and didn't have any issues at all. The E312 hasn't been used before.
>
> Thanks in advance,
> Bobbi
>
What version of the E312 system image are you running?  You must run the 
network-mode software on the E312 for another UHD host to
   "see" it as a UHD device, and in recent versions of the system image, 
network-mode is deprecated, because performance of network-mode
   is necessarily exceedingly poor, and the device is intended really to 
be an embedded-only device.

Does the N210, when in safe mode, respond properly to pings at: 
192.168.10.2   ???

Is it the only device on its network stub?  Really you need one ethernet 
(1G) port per USRP device that you intend to stream samples from.

Once that has been established, then, while it is in safe mode, load new 
FPGA images:

https://files.ettus.com/manual/page_images.html


Then power-cycle the device.  Note that it will come up with whatever 
EEPROM IP address it previously had prior to safe-mode.  So you may need
   to program the IP address into the EEPROM *while it is in safe mode*.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
