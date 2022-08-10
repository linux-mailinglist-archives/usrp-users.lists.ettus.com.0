Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 371D658EDCF
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 16:03:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07BD3383EAF
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 10:03:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660140201; bh=ts1dkzidPHhLU/xZKhOexjBZbneEEO9c9ZA4a+jchhM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Clf2spayVuxoSPDXpsSOEyhN4RcMInYA8IZACJFg4hnhrlPNbRMm3lbDJ2AEI6Op7
	 P/WzZYxklw0zkVJyV3gEKjJzGdHq5zCMOiKvB9eXYWSdisJWbEFyVCrWMiIW7CZpRT
	 dlBG6UHF2Z/PNG5WEzkOYZqezkqRyqLX3DcuCqUywpAYNiS3/pmj7gNOA556E5OiVt
	 oBgFpBWEezYaCx/z6SVmjA/2Y4SUYxoTsYzs6ISv8x9cyhWIQIKgP2XQoskYkVbdjr
	 rJC69eLV1qKq2IbfketaReBdbSV9X/dUEqHUuBlGu20pODQQkmMU+lojDavSTVoWzl
	 S6SLCBKJ3V5PQ==
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C9163383BAE
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 10:00:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="if4bp8PZ";
	dkim-atps=neutral
Received: by mail-il1-f180.google.com with SMTP id z8so7022093ile.0
        for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 07:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=499W2sUNlaX6R1CoD5jzjalrdo3kVq5SEYxS06v1v18=;
        b=if4bp8PZ5gmp0Emi7WkVitz4B3Dt4l0BXZ7KBqD5MMc+rYCH3i92VLVvUBb1sKUR+V
         953GS3GVEUflqAiK3bw58uQkrE8iUsBH4g9Bey0kNibInTuBgHUFn7PnNQE3fnTwdTBm
         8eikN1+NjGD5O0ObuxN8bCaMdanWX5kUroYJc5h5lT7INyZn8Ipk2tCdIiK9AqqsRL80
         PYTy6Fcj4Ieo+3apHsiBhYti/XOnGJ5/NDiTJnM8FPd3+PoSRhMcNckNVt3AFQ+Tv353
         edqNAesokjYUDTzV9ufAumLFpf+xpi/u8SrjYKfOILX40Zp175XwAaBb/xIZcUoP6MIz
         Cwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=499W2sUNlaX6R1CoD5jzjalrdo3kVq5SEYxS06v1v18=;
        b=7EY6MoFEa6UavzyumEYZVGAFyOjXZGdHYMdWQYeaKj47rNzciBbihTYtxPjLjIORyu
         ImAwCn8BM9MzfHd0l8OIIapcOl3Qd0vTQgALFrlqXimfyrQefCYG0br/Omwq16tOIZgB
         DwQD3WXLmTQF+KQxxYyiMqzWLCniZ+utxcDBFGU5kKrGvEi6mcEer33TAj+W3fatnbYH
         fRJuKSSbqlxWLkdS2D/1XuRmpNP+oN7yELGy7u1kgaoOgvKcDFljmmDJpKBwGULuyIOX
         mSv+a17ri3hJAUM7Ujz1IGxq9qCohSZSS/3AduQPflY/Zb97z2wcX9eBJOtEc6C33P+P
         XnNg==
X-Gm-Message-State: ACgBeo1bTpr7X/OEfaCpaweGofoN1XXUWXVsaj98hdohG7D2N4pCUGG9
	fhaMG8fHBLojkviyf958CUHpHb0g+IU=
X-Google-Smtp-Source: AA6agR5KX8L3Fk+Yjt5vIuBI2KgLfUYwpwfOBavP5g62uSOFXCDwem9D7Tc3629NaS+tRp+dTzh8lw==
X-Received: by 2002:a05:6e02:1102:b0:2de:38d:933f with SMTP id u2-20020a056e02110200b002de038d933fmr13307877ilk.136.1660140055428;
        Wed, 10 Aug 2022 07:00:55 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id l26-20020a02ccfa000000b0034340aa5ecdsm634437jaq.23.2022.08.10.07.00.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 07:00:54 -0700 (PDT)
Message-ID: <8e3d9401-2ba1-c0d8-6a74-e00b65904e3b@gmail.com>
Date: Wed, 10 Aug 2022 10:00:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4@lists.ettus.com>
Message-ID-Hash: SMQEU7CTMGTOT64KAOXMXJGV7AXJ5ANM
X-Message-ID-Hash: SMQEU7CTMGTOT64KAOXMXJGV7AXJ5ANM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 with WBX-120 LO: unlocked
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SMQEU7CTMGTOT64KAOXMXJGV7AXJ5ANM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-08-10 08:14, horvlint@gmail.com wrote:
>
> Hello,
>
> I'm trying to create a simple loopback application (using the same DB 
> for TX and RX) with my X310, but I'm having problems. The setup is an 
> X310 with WBX120 (TX/RX for transmission and RX2 for receiving). I 
> traced the issue back to running the "txrx_loopback_to_file" uhd 
> example with following parameters:
>
> ./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 
> --rx-freq 1e9
>
> I get the following error:
>
> Creating the transmit usrp device with: ...
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.2.0.1-0-g321295fb
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Maximum frame size: 8000 bytes.
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
> Creating the receive usrp device with: ...
>
> Using TX Device: Single USRP:
>
> Device: X-Series Device
>
> Mboard 0: X310
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: WBX-120 RX+GDB
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: B
>
> RX Subdev: WBX-120 RX+GDB
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: WBX-120 TX+GDB
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: B
>
> TX Subdev: WBX-120 TX+GDB
>
> Using RX Device: Single USRP:
>
> Device: X-Series Device
>
> Mboard 0: X310
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: WBX-120 RX+GDB
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: B
>
> RX Subdev: WBX-120 RX+GDB
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: WBX-120 TX+GDB
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: B
>
> TX Subdev: WBX-120 TX+GDB
>
> Setting TX Rate: 1.000000 Msps...
>
> Actual TX Rate: 1.000000 Msps...
>
> Setting RX Rate: 1.000000 Msps...
>
> Actual RX Rate: 1.000000 Msps...
>
> Setting TX Freq: 1000.000000 MHz...
>
> Actual TX Freq: 1000.000000 MHz...
>
> Setting RX Freq: 1000.000000 MHz...
>
> Actual RX Freq: 1000.000000 MHz...
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Checking TX: LO: locked ...
>
> Checking RX: LO: unlocked ...
>
> Error: AssertionError: lo_locked.to_bool()
>
> in _main
>
> at /home/hp/uhd-4.2/host/examples/txrx_loopback_to_file.cpp:483
>
> I have another WBX120 in slot B which returns with the same error.
>
> However, if I transmit with the one in slot A and receive with the one 
> on slot B (or vice-versa) both TX and RX locks:
>
> ./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 
> --rx-freq 1e9 --tx-subdev A:0 --rx-subdev B:0 --rx-ant RX2
>
> ...
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Checking TX: LO: locked ...
>
> Checking RX: LO: locked ...
>
> Press Ctrl + C to stop streaming...
>
> Setting device timestamp to 0...
>
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>
> ^C
>
> Done!
>
> I also have an SBX for which the test with the same parameters work:
>
> ./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 
> --rx-freq 1e9
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Checking TX: LO: locked ...
>
> Checking RX: LO: locked ...
>
> Press Ctrl + C to stop streaming...
>
> Setting device timestamp to 0...
>
> UHD version is: UHD_4.2.0.1-0-g321295fb
>
> Any help to resolve the issue would be appreciated!
>
> Thanks,
>
> Balint
>
>
Can you try this with an older version of UHD?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
