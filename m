Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B836036E820
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 11:44:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81A42383EC1
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 05:44:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="GLw1lTIN";
	dkim-atps=neutral
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id B17A2383E94
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 05:44:03 -0400 (EDT)
Received: by mail-wm1-f52.google.com with SMTP id o21-20020a1c4d150000b029012e52898006so10413625wmh.0
        for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 02:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=f3Q5RfKLoaED8P3QQqyrQ3P5YvQ/esfhLqFthUzitD8=;
        b=GLw1lTIN1DfzfShNN5NIs2ZmxPXTSbMslVtcXRkuwjmwFpuJdhxYqH0bPJYe582fti
         qrwOUdWCffs0HcSS5Dc+wfFhEtHBiJrNMQclvOC8oL2uZMIiphQYsG43O2NMYS5IwVxQ
         cmjOeL6BKwNkkkBPAYU8pxPAevtDkXXr//58ML3UL6nhkDA2HnciFBESxUVIqnFkmGFs
         d8ugcmU00fduk0o1E3KoLDuc1NU5dIfPlab4RMShJg8Zjv6lOuhiZPw+YCy5vPwUjqno
         lufRYKRW1mUWjckx07BfsXD5OwLirm7om0C2pVgF44n+3zw+WEIf2LwTsq2xvCUCuIKY
         UylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=f3Q5RfKLoaED8P3QQqyrQ3P5YvQ/esfhLqFthUzitD8=;
        b=purvJ2HrAZVDgH6UCpv6JV+Eb7yEDa7wfr16KzihGd89DpSt0uHgLKVw7YihU+WnZd
         IjQ5xTX08lpscHDuQvCx9lO/kj1FSbtEKuILaZSbhjmTAvyY3QHCtbPcJbY7NIiEn3S2
         Yd7123x8qgK8BtUZAcblxf30lq/j41574Tz22rUsf4yDtwhR6whKiPZLJqrOPR3KlSzK
         sYL4F9pM7d5ld2wqF54/P/tp+Mi+TwrdgEKsXg+RL4xiOI0Vj6BWA2kg6lHQ3i3+0fod
         3YCnAFknyfsok+OziZN8T3FzuSCvLlpFXbbfMKoWYDIMY5HR8rCBjZ1ko52cL9bdXKEg
         1Qpw==
X-Gm-Message-State: AOAM5304z0IX8t4P6nbnIrkz0PvCJjZA4aNBfwHdGSAWSqJ0LOtFEOYD
	K9pZkSiHDzTXTQOjtS2seDmbjzzGKDQ+p3fR
X-Google-Smtp-Source: ABdhPJwRRYMzsQTr3SJTBhbOiFceHdufweL+6RvXEUqkhQYx4IYLAmJ05XjGSUHQ3HBZ2bbC+zZkPQ==
X-Received: by 2002:a05:600c:22c9:: with SMTP id 9mr18015713wmg.85.1619689442492;
        Thu, 29 Apr 2021 02:44:02 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id 200sm2729366wmb.19.2021.04.29.02.44.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 02:44:02 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
 <264ade49-8560-af18-2347-2ad00d770ba8@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <610c55ae-d57e-d9a8-1d36-3b748829a582@ettus.com>
Date: Thu, 29 Apr 2021 11:44:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <264ade49-8560-af18-2347-2ad00d770ba8@gmail.com>
Content-Language: en-US
Message-ID-Hash: DY63TON4CVGYE6VQ2MSIKWBJGOGVMH4D
X-Message-ID-Hash: DY63TON4CVGYE6VQ2MSIKWBJGOGVMH4D
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The operating system cannot be started when B200 is plugged into the computer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DY63TON4CVGYE6VQ2MSIKWBJGOGVMH4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hm, I can see that.

I've only observed the behaviour Damon describes with a single embedded system, and there
was no solution: It was the SBC's vendor firmware that simply waited for that USB bulk
device to do something. That's not standard, it was not fixable, and it's honestly nothing
the B200 can do about: it's not pretending to be e.g. a storage device.

Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 29.04.21 07:03, Nando Pellegrini wrote:
> To reset the B200 all most at every start, a very annoying inconvenient.
> Nando
>
> On 4/29/2021 06:11, Damon qiu wrote:
>> Hi all,
>>
>> In one of our applications, we need to integrate USRP B200 and computer into a
>> mechanical mechanism. So B200 is always connected to the USB port of the computer.
>> In this case, the computer may not start, or it may take a long time to enter the
>> operating system.
>>
>> Is there a solution? thank you.
>>
>> Best regards,
>> Damon
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
