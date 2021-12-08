Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D05E146CAAE
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 02:58:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 850A0384194
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 20:58:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20210112.gappssmtp.com header.i=@vectalabs-com.20210112.gappssmtp.com header.b="YFybER/U";
	dkim-atps=neutral
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 135DE3844F2
	for <usrp-users@lists.ettus.com>; Tue,  7 Dec 2021 20:57:12 -0500 (EST)
Received: by mail-pf1-f172.google.com with SMTP id z6so1093705pfe.7
        for <usrp-users@lists.ettus.com>; Tue, 07 Dec 2021 17:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=EjS3aBBLyC7qmhk/yZp7uQAfko7qelXlHh4/3mcOKXo=;
        b=YFybER/UdKDHBeuO7SrjF2YTZRDLoteNbcJ5GXkyBGYOG+MhZeuvBhiLrsWpXH0LeA
         HNRfUFJZM/xfdnJ1awpY53BcdUhdGpgrevHALRBTVsjaf+YHEzMY24x2IxMGeXidkbJo
         miYLDbYnLVcpZOoXNYx7s/oC349mDtyLwPhgM5LQDkFfqhFMSDQBESeSw5iXhDpzJwyJ
         nSB/qPSbuI3m+0MFQ1LNXdqJB3ktyPFu9O7L/gxzdjEzxwYToRknmD6DEKN6tgVZfQDP
         ZgSZfH8iUHGf2dU8MWytpNMR6VEKICoLxQeijnKA0xr0KbzVxjsB0Y0Q3gLgjYMoTNZI
         01bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=EjS3aBBLyC7qmhk/yZp7uQAfko7qelXlHh4/3mcOKXo=;
        b=0E4k2CqYobC5x53h+H+Qk0UYI/FMXV2fTPL/Yy4jhjJl4ruD9QVW3Zuj9HqNWgwWlD
         elL77rkAvBS4YPOBPlhAFzjmV+YJaBaf405B0gDYhhTUeEcXZOCxY1aNw3ng8AvQKh40
         SzKdQssGyjV631SAZ7EER5vPuBBBCYKbvDQhbPngHiaX1+CStLEZLIJA4URolMqpYPCp
         0u1kepsciGnnnZQjHxm0WuIhUfciBkTgqNKqlFi7RhOm0AVHze92qNmCBJ+8XeOmEzMO
         8hs4iiji9ufd2jvIr4+q+A+/xepreplOUyJP2rOVwBDOfh/VV2sZDaPC8y+vrpoIXqwn
         bidQ==
X-Gm-Message-State: AOAM533PatfjcWrYBORLitCOFlUt/WgRk87f33ksU3w3l8W4V6tns+0Y
	sSdy/k3W5/7Ozep7O85737qOIeDn0pPaqg==
X-Google-Smtp-Source: ABdhPJwhAT5dSvBwWRv8qnnkFKRc9dnJZhq+M2DKb9PWPCTk3NRG1yAFV7L6WQgzioxKAxS2Rjnj6Q==
X-Received: by 2002:a63:be4e:: with SMTP id g14mr26814880pgo.194.1638928631894;
        Tue, 07 Dec 2021 17:57:11 -0800 (PST)
Received: from [192.168.10.228] (122-199-13-248.ip4.superloop.com. [122.199.13.248])
        by smtp.gmail.com with ESMTPSA id mq14sm4181816pjb.54.2021.12.07.17.57.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 17:57:11 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <3bad87fa-cd22-7b4d-a57d-26987fa59655@vectalabs.com>
 <391fee11-e4cc-a84b-3758-cd0281f29a09@gmail.com>
From: Jack Riley <jack.riley@vectalabs.com>
Message-ID: <8392b0a2-f23f-b933-eb95-cb3e1abf2b83@vectalabs.com>
Date: Wed, 8 Dec 2021 11:57:07 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <391fee11-e4cc-a84b-3758-cd0281f29a09@gmail.com>
Content-Language: en-US
Message-ID-Hash: EQAO37ZGC3NFQPF52XTGELDQZYECIJR6
X-Message-ID-Hash: EQAO37ZGC3NFQPF52XTGELDQZYECIJR6
X-MailFrom: jack.riley@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Compilation Windows - package directory does not exist
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQAO37ZGC3NFQPF52XTGELDQZYECIJR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Ryan,

Thank you, that was exactly what I needed.

Regards,
Jack Riley

On 8/12/21 2:18 am, Ryan Volz wrote:
> On 12/6/21 7:29 PM, Jack Riley wrote:
>> Hi,
>>
>> I'm attempting to build UHD on Windows from source so I can use the 
>> Python libraries but encountering the following error building usrp_mpm:
>>
>> package directory 
>> 'C:Users\Jack\uhd\host\build\python\simulator\usrp_mpm' does not exist
>>
>> Noting the lack of a backslash between C: and Users at the start of 
>> the problematic path, this appears to be the issue. For some reason 
>> the path within the build task is wrong for this project. What is the 
>> process for fixing this error?
>>
>> Regards,
>> Jack Riley
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Hi Jack,
>
> Does this patch fix your problem?
> https://github.com/conda-forge/uhd-feedstock/blob/master/recipe/0004-cmake-Don-t-set-package_dir-in-setup.py.in.patch 
>
>
> I seem to recall encountering this and fixing it for myself, but I'm 
> not sure if that was what did it.
>
> Cheers,
> Ryan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
