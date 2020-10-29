Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBFB29E05A
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 02:21:44 +0100 (CET)
Received: from [::1] (port=39222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXwdK-0004sl-WD; Wed, 28 Oct 2020 21:21:43 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:45889)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXwdH-0004mT-Gf
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 21:21:39 -0400
Received: by mail-qk1-f181.google.com with SMTP id i21so61306qka.12
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 18:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=fviRPpOIL/X4mBPXdKVTT1kQmF12S/hkLndRT7cVehQ=;
 b=KkMCuhkJ/YvvMMpmLDDW+0O3ake9DMTWJLauMbgatAoGenuAe0DW2IwkMiJpIdUsRr
 aKLWe8tVuihLBCl5Z60vVhNevUSpNyHTw+98TMD0aIyj//hR5nXMuxOqJPPYqczMuft+
 NrZenMfyA7Sh/6IuhjElm+5bV4W7ueuPUl9shN29oBwJ4Q+cTseEItyYS6NHB5jXcaej
 SepKb2NghlvLL6xNhp/m2C1/tqRj1evp+zYxEmLWGFFRzqTOxbqHZITk9vPSAbrKcljd
 duZJTCixsKFKLJQBY/RFcKW7BV8zTOZfvlx2VgI2SifLOV4ymrjbt799Q6Qf0xpJhTUn
 uC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=fviRPpOIL/X4mBPXdKVTT1kQmF12S/hkLndRT7cVehQ=;
 b=lZRPOk17TNOOKFUZc9Uj8pjVHhE64IPcDgdFaA8mUe/CaXlMCcLGmvdSarV5skRjli
 LuAZT7TzX1lndg7ZwCs4kP9T244ddW3Uq8TXEt/5VmeVOXeEotQb/HEoHfQuqp0u59vS
 EOhb4o7gjKwMGE9ZUvp3L5uTgtF4Xe0B7UfYvSEal8D+CiojLUAzgxp9ynSXH2d+hkVd
 DNbJXfr6RnjJt6pI/olWGzIdMZ6BeHoHehCu8lZhJQlTRuubx/FZyOBbhGQ5q3wGsUFg
 U8yjs8qtkGPCieEz+oKURAtRu+HXCfe0Lh9Dors88FAJH3zMhLzBqK0yHk+dXfXRTBr1
 d8Xw==
X-Gm-Message-State: AOAM532XclwJKAu4hieZdM0yT1qLsrnx1Q57hOiiEYQdcIquG8Rb8y76
 KwGMy0KSorAsic1JfScYaxHfre4KeIMZsg==
X-Google-Smtp-Source: ABdhPJxI0Q0UDph+8OlkfsxNvxy3WcrL5cH1cRIoLQxg0vkgk3/dSDCSGIfLgmQkfNJkfPOn360g5Q==
X-Received: by 2002:a37:8d45:: with SMTP id p66mr1482560qkd.461.1603934458399; 
 Wed, 28 Oct 2020 18:20:58 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 64sm516252qtc.92.2020.10.28.18.20.57
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Oct 2020 18:20:58 -0700 (PDT)
Message-ID: <5F9A18F9.4060101@gmail.com>
Date: Wed, 28 Oct 2020 21:20:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <08a10fed-97db-5459-8470-7803fff24dfd@dcsmail.net>
 <CACaXmv86HdB9aKY9jGqCwL35cUK=U2bj_-Gox_qnaogYDdBttg@mail.gmail.com>
 <740f10e7-9cd4-fe62-2e0f-9c2720592a65@dcsmail.net>
In-Reply-To: <740f10e7-9cd4-fe62-2e0f-9c2720592a65@dcsmail.net>
Subject: Re: [USRP-users] B200mini questions
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

On 10/28/2020 09:07 PM, Barry Duggan via USRP-users wrote:
> Hi Neel,
>
> Thanks for the quick response! As a clarification:
>
> - for half-duplex operation, is the receiver muted (and protected) 
> during transmit?
The receiver is switched to the RX2 port whenever the ATR logic 
determines that transmission is occurring.  It's not clamped or anything,
   just switched to the RX2 port.  Which if that port has no antenna, or 
is terminated will protected the receiver.  The receiver WILL
   receive your own transmissions--because the RX/TX switch isolation is 
only about 30dB.

>
> - I could not find the sample rates on your website.
The master clock rate determines the allowable sample rates, and the 
master-clock rate can be a very large number of discrete
   values between something like 5Mhz and 61.44MHz.  The maximum 
decimation is, I believe, 512.

So, the to-the-host sample rate has to be a proper integer fraction of 
the master clock rate, and the master clock rate is programmable.
   So the answer to the question 'what sample rates does it support' is 
"geez, man, really a lot".

Now, having said that, I did at one point in the last few years see an 
equation that describes the allowable master clock rates.
   The allowable master clock rates aren't exactly "arbitrary", but 
pretty large.   My tendency is to pick a clock rate that is 4 times
   my desired sample rate.  Most of the time, that works.  Except when I 
choose a sample rate that happens to yield a required
   master clock rate that isn't allowed by the clock PLL.  For me, that 
is rare.  For others, that may not be.



>
> ---
> Barry Duggan KV4FV
> https://github.com/duggabe
>
> On 10/28/20 7:57 PM, Neel Pandeya wrote:
>> Hello Barry:
>>
>> On the B200mini, you can transmit (on the TX/RX port) and receive (on 
>> the RX2 port) at the same time.
>>
>> The minimum sample rate depends on the lowest master clock rate and 
>> the maximum decimation factor.  I don't recall these values off the 
>> top of my head, but I'll go double-check them.  The maximum sampling 
>> rate is 61.44 Msps.
>>
>> --Neel Pandeya
>>
>>
>>
>> On Wed, 28 Oct 2020 at 19:45, Barry Duggan via USRP-users 
>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>     Using a B200mini, I have the following questions:
>>
>>     - If I have one antenna connected to the TRX port, is the receiver
>>     blocked during a transmit?
>>
>>     - What are the maximum and minimum sample rates supported?
>>
>>     Thanks,
>>     ---
>>     Barry Duggan KV4FV
>>     https://github.com/duggabe
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
